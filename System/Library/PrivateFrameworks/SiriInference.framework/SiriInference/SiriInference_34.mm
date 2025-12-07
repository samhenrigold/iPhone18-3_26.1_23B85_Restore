uint64_t sub_1DD600008()
{
  v1 = v0;
  v2 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE16F0C0;
  v6 = &v4[*(v2 + 20)];
  *v6 = "RefreshTrialManager";
  *(v6 + 1) = 19;
  v6[16] = 2;
  v7 = v5;
  sub_1DD63F9B8();
  *&v4[*(v2 + 24)] = v7;
  v8 = v7;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DD643F90;
  v10 = sub_1DD6408F8();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1DD392BD8();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v39 = v9;
  v38 = 2;
  v37 = 22;
  v44 = v8;
  sub_1DD63F998();

  v13 = v0[7];
  v14 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v13);
  (*(v14 + 16))(v13, v14);
  v15 = v0[7];
  v16 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v15);
  v17 = v0[2];
  v18 = v0[3];
  v19 = (*(v16 + 24))(v17, v18, v15, v16);
  v20 = v19;
  if (v19)
  {
    v21 = [v19 treatmentId];
    v42 = sub_1DD63FDD8();
    v43 = v22;

    v23 = [v20 experimentId];
    v24 = sub_1DD63FDD8();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v42 = 0;
    v43 = 0;
  }

  v28 = v1[7];
  v27 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v28);
  v29 = (*(v27 + 32))(v17, v18, v28, v27);
  v30 = v29;
  if (v29)
  {
    v31 = [v29 rolloutId];

    v30 = sub_1DD63FDD8();
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v45[0] = v42;
  v45[1] = v43;
  v45[2] = v24;
  v45[3] = v26;
  v45[4] = v30;
  v45[5] = v33;
  v34 = sub_1DD6004CC();
  MEMORY[0x1EEE9AC00](v34);
  v39 = v45;
  v40 = v35;
  sub_1DD5FF7CC(sub_1DD6015B4, &v37);
  sub_1DD600798(v45, v34);

  sub_1DD6404C8();
  sub_1DD63F9A8();

  return sub_1DD41BFFC(v4);
}

uint64_t sub_1DD6003E8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *a2;
  v11 = a2[1];
  v12 = v6;
  v10 = a2[2];
  sub_1DD3CDD14(&v12, v9, &unk_1ECCDFDF0, &unk_1DD644950);
  sub_1DD3CDD14(&v11, v9, &unk_1ECCDFDF0, &unk_1DD644950);
  sub_1DD3CDD14(&v10, v9, &unk_1ECCDFDF0, &unk_1DD644950);

  v7 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 24) = v7;
  *(a1 + 40) = a2[2];

  *a1 = a3;
  return result;
}

void *sub_1DD6004CC()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  v3 = (*(v2 + 40))(v0[2], v0[3], v1, v2);
  sub_1DD39638C(0, &qword_1EE160140, 0x1E69DB540);
  v4 = sub_1DD63FC88();
  v5 = sub_1DD3CC020();
  v6 = 0;
LABEL_2:
  for (i = v6; ; ++i)
  {
    if (v5 == i)
    {

      return v4;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12B2C10](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v8 = *(v3 + 8 * i + 32);
    }

    v9 = v8;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = [v8 factor];
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = sub_1DD520E2C(v10, &selRef_name);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = [v9 level];
      if (v15)
      {
        v29 = v15;
        swift_isUniquelyReferenced_nonNull_native();
        v27 = sub_1DD3978DC();
        if (__OFADD__(v4[2], (v16 & 1) == 0))
        {
          goto LABEL_25;
        }

        v28 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFDE8, &qword_1DD664390);
        if (sub_1DD640A08())
        {
          v17 = sub_1DD3978DC();
          if ((v28 & 1) != (v18 & 1))
          {
            goto LABEL_28;
          }

          v19 = v17;
          if ((v28 & 1) == 0)
          {
LABEL_18:
            v4[(v19 >> 6) + 8] |= 1 << v19;
            v20 = (v4[6] + 16 * v19);
            *v20 = v13;
            v20[1] = v14;
            *(v4[7] + 8 * v19) = v29;

            v21 = v4[2];
            v22 = __OFADD__(v21, 1);
            v23 = v21 + 1;
            if (!v22)
            {
              v4[2] = v23;
              goto LABEL_2;
            }

            goto LABEL_26;
          }
        }

        else
        {
          v19 = v27;
          if ((v28 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v24 = v4[7];
        v25 = *(v24 + 8 * v19);
        *(v24 + 8 * v19) = v29;

        goto LABEL_2;
      }
    }
  }

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
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

void sub_1DD600798(uint64_t *a1, uint64_t a2)
{
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000024, 0x80000001DD674B30);
  if (a1[1])
  {
    v4 = *a1;
    v5 = a1[1];
  }

  else
  {
    v5 = 0xE100000000000000;
    v4 = 45;
  }

  MEMORY[0x1E12B2260](v4, v5);

  MEMORY[0x1E12B2260](0xD000000000000011, 0x80000001DD674B60);
  if (a1[3])
  {
    v6 = a1[2];
    v7 = a1[3];
  }

  else
  {
    v7 = 0xE100000000000000;
    v6 = 45;
  }

  MEMORY[0x1E12B2260](v6, v7);

  MEMORY[0x1E12B2260](0x6F6C6C6F7220200ALL, 0xEE00203A64497475);
  if (a1[5])
  {
    v8 = a1[4];
    v9 = a1[5];
  }

  else
  {
    v9 = 0xE100000000000000;
    v8 = 45;
  }

  MEMORY[0x1E12B2260](v8, v9);

  MEMORY[0x1E12B2260](0x6F7463616620200ALL, 0xEC0000000A3A7372);
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_18:
      v16 = __clz(__rbit64(v12)) | (v15 << 6);
      v17 = (*(a2 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(a2 + 56) + 8 * v16);
      v12 &= v12 - 1;
      v34[0] = 538976288;
      v34[1] = 0xE400000000000000;

      v21 = v20;
      MEMORY[0x1E12B2260](v18, v19);

      MEMORY[0x1E12B2260](8250, 0xE200000000000000);
      v22 = [v21 description];
      v23 = sub_1DD63FDD8();
      v25 = v24;

      MEMORY[0x1E12B2260](v23, v25);

      MEMORY[0x1E12B2260](10, 0xE100000000000000);
      MEMORY[0x1E12B2260](538976288, 0xE400000000000000);

      if (!v12)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(a2 + 64 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_18;
    }
  }

  if (qword_1EE160540 == -1)
  {
    goto LABEL_21;
  }

LABEL_28:
  OUTLINED_FUNCTION_6_1(&qword_1EE160540);
LABEL_21:
  v26 = sub_1DD63F9F8();
  v27 = __swift_project_value_buffer(v26, qword_1EE16EF00);
  v29 = v35;
  v28 = v36;

  oslog = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_15_2();

  if (os_log_type_enabled(oslog, v27))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34[0] = v31;
    *v30 = 136446210;
    v32 = sub_1DD39565C(v29, v28, v34);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_1DD38D000, oslog, v27, "%{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1E12B3DA0](v31, -1, -1);
    MEMORY[0x1E12B3DA0](v30, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD600BBC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1DD600BF4()
{
  sub_1DD600BBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD600C28(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[2] == a2[2] && v7 == v8;
    if (!v9 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (v10)
  {
    if (v11)
    {
      v12 = a1[4] == a2[4] && v10 == v11;
      if (v12 || (sub_1DD640CD8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DD600CFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D7461657274 && a2 == 0xEB00000000644974;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4974756F6C6C6F72 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD600E1C(char a1)
{
  if (!a1)
  {
    return 0x6E656D7461657274;
  }

  if (a1 == 1)
  {
    return 0x656D697265707865;
  }

  return 0x4974756F6C6C6F72;
}

uint64_t sub_1DD600E88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDD8, &qword_1DD664388);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD6014E8();
  sub_1DD640EF8();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  OUTLINED_FUNCTION_11_55(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    OUTLINED_FUNCTION_11_55(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    OUTLINED_FUNCTION_11_55(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD600FE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDC8, &qword_1DD664380);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD6014E8();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1DD640AD8();
  v24 = v12;
  v26 = 1;
  v22 = sub_1DD640AD8();
  v23 = v13;
  v25 = 2;
  v14 = sub_1DD640AD8();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

uint64_t sub_1DD601214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD600CFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD60123C(uint64_t a1)
{
  v2 = sub_1DD6014E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD601278(uint64_t a1)
{
  v2 = sub_1DD6014E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD6012B8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DD600FE4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

id sub_1DD6013A0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_1DD63FDA8();
  v6 = [v3 *a3];

  return v6;
}

uint64_t sub_1DD60143C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DD60147C(uint64_t result, int a2, int a3)
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

unint64_t sub_1DD6014E8()
{
  result = qword_1EE1655C0[0];
  if (!qword_1EE1655C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1655C0);
  }

  return result;
}

uint64_t sub_1DD60153C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD63FDA8();
  v4 = [v2 factorLevelsWithNamespaceName_];

  sub_1DD39638C(0, &qword_1EE1601F8, 0x1E69DB538);
  v5 = sub_1DD640118();

  return v5;
}

double block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialEnrollment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD601730()
{
  result = qword_1ECCDFE00;
  if (!qword_1ECCDFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFE00);
  }

  return result;
}

unint64_t sub_1DD601788()
{
  result = qword_1EE1655A8;
  if (!qword_1EE1655A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1655A8);
  }

  return result;
}

unint64_t sub_1DD6017E0()
{
  result = qword_1EE1655B0;
  if (!qword_1EE1655B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1655B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_102(uint64_t a1, uint64_t a2)
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_11_55(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD640BC8();
}

uint64_t OUTLINED_FUNCTION_14_48(uint64_t a1)
{

  return swift_allocObject();
}

_OWORD *sub_1DD6018FC(char a1)
{
  v1 = &unk_1F58AF788;
  switch(a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      v1[1] = xmmword_1DD643F90;
      *(v1 + 4) = sub_1DD63EF48();
      *(v1 + 5) = v2;
      break;
    case 2:
      v1 = &unk_1F58AF7B8;
      break;
    case 3:
      v1 = &unk_1F58AF7E8;
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_1DD601998(char a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1(&qword_1EE160540);
  }

  v9 = sub_1DD63F9F8();
  __swift_project_value_buffer(v9, qword_1EE16EF00);
  OUTLINED_FUNCTION_15_2();

  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = "92-A728-FDC9D43DEDB6";
    switch(a1)
    {
      case 1:
        v14 = "23B24C08-F87F-4992-A728-FDC9D43DEDB6";
        goto LABEL_8;
      case 2:
        v14 = "28AD56FC-E9DA-11ED-A05B-0242AC120003";
        goto LABEL_8;
      case 3:
        v14 = "920A9A12-BBD0-42FB-A11C-7B1AE2C709B4";
LABEL_8:
        v13 = (v14 - 32);
        break;
      default:
        break;
    }

    v15 = sub_1DD39565C(0xD000000000000024, v13 | 0x8000000000000000, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    if (a3)
    {
      v16 = a2;
    }

    else
    {
      v16 = 0x3E6C696E3CLL;
    }

    if (a3)
    {
      v17 = a3;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v18 = sub_1DD39565C(v16, v17, &v23);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_1DD38D000, v10, v11, "Enqueuing codepath trigger on a background task: %s requestId: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_8_2();
  }

  sub_1DD6401D8();
  v19 = sub_1DD6401F8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;

  sub_1DD4B0E18();
}

uint64_t sub_1DD601C54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 104) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD601C78, 0, 0);
}

uint64_t sub_1DD601C78()
{
  OUTLINED_FUNCTION_34_0();
  *(v0 + 64) = [objc_allocWithZone(sub_1DD63F878()) init];
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1DD601D28;

  return sub_1DD6022C4();
}

uint64_t sub_1DD601D28()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v3 = v2;
  OUTLINED_FUNCTION_19_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_74();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 88) = v10;
    *v10 = v5;
    v10[1] = sub_1DD601E88;

    return sub_1DD6029C4();
  }
}

uint64_t sub_1DD601E88()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_19_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_8_74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD601F84()
{
  OUTLINED_FUNCTION_34_0();

  OUTLINED_FUNCTION_26();

  return v1();
}

uint64_t sub_1DD601FDC()
{
  v18 = v0;
  v1 = *(v0 + 80);
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1(&qword_1EE160540);
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EF00);
  v3 = OUTLINED_FUNCTION_15_2();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_54();
    v9 = OUTLINED_FUNCTION_62();
    v17 = v9;
    OUTLINED_FUNCTION_17_42(4.8149e-34);
    v10 = sub_1DD640D88();
    v12 = sub_1DD39565C(v10, v11, &v17);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_15_54(&dword_1DD38D000, v13, v14, "Error emitting codepath trigger: %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_8_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return v15();
}

uint64_t sub_1DD602150()
{
  v18 = v0;
  v1 = *(v0 + 96);
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1(&qword_1EE160540);
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EF00);
  v3 = OUTLINED_FUNCTION_15_2();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_54();
    v9 = OUTLINED_FUNCTION_62();
    v17 = v9;
    OUTLINED_FUNCTION_17_42(4.8149e-34);
    v10 = sub_1DD640D88();
    v12 = sub_1DD39565C(v10, v11, &v17);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_15_54(&dword_1DD38D000, v13, v14, "Error emitting codepath trigger: %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_8_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return v15();
}

uint64_t sub_1DD6022C4()
{
  OUTLINED_FUNCTION_34_0();
  *(v1 + 16) = v0;
  *(v1 + 88) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  *(v1 + 24) = swift_task_alloc();
  v3 = sub_1DD63D0F8();
  *(v1 + 32) = v3;
  *(v1 + 40) = *(v3 - 8);
  *(v1 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_8_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DD6023B8()
{
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1(&qword_1EE160540);
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16EF00);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = OUTLINED_FUNCTION_54();
    v6 = OUTLINED_FUNCTION_62();
    *v5 = 136315138;
    v11 = "92-A728-FDC9D43DEDB6";
    v12 = v6;
    switch(v4)
    {
      case 1:
        v13 = "23B24C08-F87F-4992-A728-FDC9D43DEDB6";
        goto LABEL_8;
      case 2:
        v13 = "28AD56FC-E9DA-11ED-A05B-0242AC120003";
LABEL_8:
        v11 = (v13 - 32);
        break;
      case 3:
        v11 = "ning";
        break;
      default:
        break;
    }

    v14 = OUTLINED_FUNCTION_7_73(v6, v11 | 0x8000000000000000, v7, v8, v9, v10);

    *(v5 + 4) = v14;
    _os_log_impl(&dword_1DD38D000, v2, v3, "Caching trial experiment with codepath: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  v15 = "92-A728-FDC9D43DEDB6";
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  sub_1DD63D088();

  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    sub_1DD3C34AC(*(v0 + 24));
    v18 = sub_1DD63F9D8();
    v19 = sub_1DD640388();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 88);
      v21 = OUTLINED_FUNCTION_54();
      v22 = OUTLINED_FUNCTION_62();
      *v21 = 136315138;
      v27 = v22;
      switch(v20)
      {
        case 1:
          v15 = "ED-A05B-0242AC120003";
          break;
        case 2:
          v15 = "FB-A11C-7B1AE2C709B4";
          break;
        case 3:
          v15 = "ning";
          break;
        default:
          break;
      }

      v32 = OUTLINED_FUNCTION_7_73(v22, v15 | 0x8000000000000000, v23, v24, v25, v26);

      *(v21 + 4) = v32;
      OUTLINED_FUNCTION_16_53(&dword_1DD38D000, v33, v34, "Invalid codepath UUID string: %s");
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_9_63();

    __asm { BRAA            X1, X16 }
  }

  v28 = *(v0 + 88);
  (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
  *(v0 + 56) = sub_1DD63D0B8();
  *(v0 + 64) = sub_1DD6018FC(v28);
  v29 = OUTLINED_FUNCTION_18_41();
  *(v0 + 72) = v29;
  *v29 = v0;
  v29[1] = sub_1DD602788;
  OUTLINED_FUNCTION_14_49();
  OUTLINED_FUNCTION_9_63();

  __asm { BR              X2 }
}

uint64_t sub_1DD602788()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_19_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_8_74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD6028C4()
{
  OUTLINED_FUNCTION_34_0();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_26();

  return v1();
}

uint64_t sub_1DD602944()
{
  OUTLINED_FUNCTION_34_0();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_26();

  return v1();
}

uint64_t sub_1DD6029C4()
{
  OUTLINED_FUNCTION_34_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 128) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  v5 = sub_1DD63D0F8();
  *(v1 + 64) = v5;
  *(v1 + 72) = *(v5 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  OUTLINED_FUNCTION_8_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DD602AE0()
{
  v1 = "92-A728-FDC9D43DEDB6";
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1DD63D088();

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1DD3C34AC(*(v0 + 56));
    if (qword_1EE160540 != -1)
    {
      OUTLINED_FUNCTION_6_1(&qword_1EE160540);
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1EE16EF00);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640388();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 128);
      v8 = OUTLINED_FUNCTION_54();
      v9 = OUTLINED_FUNCTION_62();
      v51 = v9;
      *v8 = 136315138;
      v14 = v9;
      switch(v7)
      {
        case 1:
          v1 = "ED-A05B-0242AC120003";
          break;
        case 2:
          v1 = "FB-A11C-7B1AE2C709B4";
          break;
        case 3:
          v1 = "ning";
          break;
        default:
          break;
      }

      v28 = OUTLINED_FUNCTION_7_73(v9, v1 | 0x8000000000000000, v10, v11, v12, v13);

      *(v8 + 4) = v28;
      OUTLINED_FUNCTION_16_53(&dword_1DD38D000, v29, v30, "Invalid codepath UUID string: %s");
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_9_63();

    __asm { BRAA            X1, X16 }
  }

  v15 = *(*(v0 + 72) + 32);
  v15(*(v0 + 88), *(v0 + 56), *(v0 + 64));
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1(&qword_1EE160540);
  }

  v16 = *(v0 + 24);
  v17 = sub_1DD63F9F8();
  __swift_project_value_buffer(v17, qword_1EE16EF00);
  OUTLINED_FUNCTION_15_2();

  v18 = sub_1DD63F9D8();
  v19 = sub_1DD640368();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 128);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v51 = v22;
    *v21 = 136315394;
    v49 = v15;
    switch(v20)
    {
      case 1:
        v27 = "23B24C08-F87F-4992-A728-FDC9D43DEDB6";
        goto LABEL_15;
      case 2:
        v27 = "28AD56FC-E9DA-11ED-A05B-0242AC120003";
LABEL_15:
        v1 = (v27 - 32);
        break;
      case 3:
        v1 = "ning";
        break;
      default:
        break;
    }

    v33 = *(v0 + 16);
    v34 = *(v0 + 24);
    v35 = OUTLINED_FUNCTION_7_73(v22, v1 | 0x8000000000000000, v23, v24, v25, v26, v49);

    *(v21 + 4) = v35;
    *(v21 + 12) = 2080;
    if (v34)
    {
      v36 = v33;
    }

    else
    {
      v36 = 0x3E6C696E3CLL;
    }

    if (v34)
    {
      v37 = v16;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    v38 = sub_1DD39565C(v36, v37, &v51);

    *(v21 + 14) = v38;
    _os_log_impl(&dword_1DD38D000, v18, v19, "Emitting codepath trigger: %s requestId: %s", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_0_1();

    v15 = v50;
  }

  else
  {
  }

  if (*(v0 + 24))
  {
    sub_1DD63D088();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 48), 1, 1, *(v0 + 64));
  }

  v39 = *(v0 + 64);
  v40 = *(v0 + 40);
  sub_1DD3BB660(*(v0 + 48), v40);
  if (__swift_getEnumTagSinglePayload(v40, 1, v39) == 1)
  {
    sub_1DD3C34AC(*(v0 + 48));
    v41 = 0;
  }

  else
  {
    v43 = *(v0 + 72);
    v42 = *(v0 + 80);
    v44 = *(v0 + 64);
    v45 = *(v0 + 48);
    v15(v42, *(v0 + 40), v44);
    v41 = sub_1DD63D0B8();
    (*(v43 + 8))(v42, v44);
    sub_1DD3C34AC(v45);
  }

  *(v0 + 96) = v41;
  *(v0 + 104) = sub_1DD63D0B8();
  v46 = OUTLINED_FUNCTION_18_41();
  *(v0 + 112) = v46;
  *v46 = v0;
  v46[1] = sub_1DD60300C;
  OUTLINED_FUNCTION_14_49();
  OUTLINED_FUNCTION_9_63();

  __asm { BR              X2 }
}

uint64_t sub_1DD60300C()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_19_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_8_74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD603120()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_26();

  return v4();
}

uint64_t sub_1DD6031D4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_26();

  return v4();
}

uint64_t sub_1DD6032BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD4B66D4;

  return sub_1DD601C54(a1, v4, v5, v8, v6, v7);
}

uint64_t storeEnumTagSinglePayload for UCGTrialFactors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD603474(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = a2;
  v4 = sub_1DD63FDA8();
  v5 = [v3 objectForKey_];

  if (!v5)
  {

    memset(v16, 0, sizeof(v16));
    sub_1DD4E82AC(v16);
LABEL_6:
    v9 = sub_1DD59B690(0xD000000000000023, 0x80000001DD674C60, a1);
    if (v9)
    {
      v10 = v9;
      v8 = [v9 BOOLeanValue];
    }

    else
    {
      v8 = 0;
    }

    v11 = sub_1DD59B690(0xD00000000000001ALL, 0x80000001DD674C90, a1);
    if (v11)
    {
      v12 = v11;
      v13 = [v11 BOOLeanValue];

      if (v13)
      {
        goto LABEL_11;
      }
    }

LABEL_13:
    v14 = 0;
    return v14 | v8;
  }

  sub_1DD6406F8();
  swift_unknownObjectRelease();
  sub_1DD4E82AC(v16);
  v6 = sub_1DD63FDA8();
  v7 = [v3 BOOLForKey:v6 withDefault:0];

  if ((v7 & 1) == 0)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v8 = 1;
LABEL_11:
  v14 = 256;
  return v14 | v8;
}

unint64_t sub_1DD603614(__int16 a1)
{
  sub_1DD6408D8();

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v2, v3);

  MEMORY[0x1E12B2260](32, 0xE100000000000000);
  sub_1DD6408D8();

  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v4, v5);

  MEMORY[0x1E12B2260](32, 0xE100000000000000);

  MEMORY[0x1E12B2260](0xD000000000000022, 0x80000001DD674C30);

  return 0xD00000000000002ALL;
}

uint64_t sub_1DD60378C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000029 && 0x80000001DD674CB0 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DD674CE0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1DD603864(char a1)
{
  if (a1)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t sub_1DD60389C(void *a1, unsigned int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFE18, &qword_1DD664610);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD603CF4();
  sub_1DD640EF8();
  v11[15] = 0;
  sub_1DD640C28();
  if (!v2)
  {
    v11[14] = 1;
    sub_1DD640C28();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1DD6039F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFE08, &qword_1DD664608);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD603CF4();
  sub_1DD640ED8();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13[15] = 0;
  v9 = sub_1DD640B38();
  v13[14] = 1;
  v10 = sub_1DD640B38();
  (*(v5 + 8))(v8, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v10)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFFFE | v9 & 1;
}

uint64_t sub_1DD603BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD60378C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD603BC8(uint64_t a1)
{
  v2 = sub_1DD603CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD603C04(uint64_t a1)
{
  v2 = sub_1DD603CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD603C40@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD6039F4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1DD603C78(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1DD60389C(a1, v2 | *v1);
}

BOOL sub_1DD603CA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1DD603778(v2 | *a1, v3 | *a2);
}

unint64_t sub_1DD603CD8()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1DD603614(v1 | *v0);
}

unint64_t sub_1DD603CF4()
{
  result = qword_1ECCDFE10;
  if (!qword_1ECCDFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFE10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UCGTrialFactors.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD603E28()
{
  result = qword_1ECCDFE20;
  if (!qword_1ECCDFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFE20);
  }

  return result;
}

unint64_t sub_1DD603E80()
{
  result = qword_1ECCDFE28;
  if (!qword_1ECCDFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFE28);
  }

  return result;
}

unint64_t sub_1DD603ED8()
{
  result = qword_1ECCDFE30;
  if (!qword_1ECCDFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFE30);
  }

  return result;
}

uint64_t sub_1DD603F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a4)
  {

    MEMORY[0x1E12B2260](64, 0xE100000000000000);
    MEMORY[0x1E12B2260](a3, a4);

    return a1;
  }

  else
  {
  }

  return v4;
}

void sub_1DD603FC0(uint64_t result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4)
{
  v31 = a4;
  v6 = 0;
  v7 = *(result + 16);
  v8 = result + 40;
  v30 = MEMORY[0x1E69E7CC0];
  v28 = result + 40;
LABEL_2:
  for (i = (v8 + 16 * v6); ; i += 2)
  {
    if (v7 == v6)
    {

      return;
    }

    if (v6 >= *(result + 16))
    {
      break;
    }

    v10 = *(i - 1);
    v11 = *i;
    v35 = v10;
    v36 = v11;

    a3(&v32, &v35);
    v17 = sub_1DD56CE00(v34, v32, v33, v12, v13, v14, v15, v16, v28, v29, v30, v31, v32, v33, v34[0], v34[1], v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, vars0, vars8);

    if (v17)
    {
      v18 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42A2D4(0, *(v30 + 16) + 1, 1, v20, v21, v22, v23);
        v18 = v38;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        sub_1DD42A2D4(v24 > 1, v25 + 1, 1, v20, v21, v22, v23);
        v26 = v25 + 1;
        v18 = v38;
      }

      ++v6;
      *(v18 + 16) = v26;
      v30 = v18;
      v27 = v18 + 16 * v25;
      *(v27 + 32) = v10;
      *(v27 + 40) = v11;
      v8 = v28;
      goto LABEL_2;
    }

    ++v6;
  }

  __break(1u);
}

uint64_t sub_1DD604138(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = a3;
    v56 = MEMORY[0x1E69E7CC0];
    v8 = OUTLINED_FUNCTION_56_10();
    sub_1DD42B3E4(v8, v9, v10);
    v12 = sub_1DD55B198();
    result = v56;
    v14 = v13;
    v15 = 0;
    v16 = v7 + 56;
    v47 = v7 + 64;
    v48 = v5;
    v49 = v7;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(v7 + 32))
      {
        v17 = v12 >> 6;
        v18 = 1 << v12;
        if ((*(v16 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v7 + 36) != v11)
        {
          goto LABEL_26;
        }

        v52 = v12;
        v53 = v11;
        v19 = v16;
        v51 = v15;
        v20 = result;
        v21 = (*(v7 + 48) + 16 * v12);
        v22 = v21[1];
        v54[0] = *v21;
        v54[1] = v22;

        a1(v55, v54);
        if (v4)
        {
          goto LABEL_30;
        }

        v4 = 0;

        v23 = v55[0];
        v24 = v55[1];
        v25 = v55[2];
        result = v20;
        v56 = v20;
        v26 = *(v20 + 16);
        if (v26 >= *(v20 + 24) >> 1)
        {
          OUTLINED_FUNCTION_90();
          v45 = v39;
          v46 = v38;
          v41 = v40;
          sub_1DD42B3E4(v42, v43, v44);
          v25 = v45;
          v23 = v46;
          v24 = v41;
          result = v56;
        }

        *(result + 16) = v26 + 1;
        v27 = (result + 24 * v26);
        v27[4] = v23;
        v27[5] = v24;
        v27[6] = v25;
        if (v14)
        {
          goto LABEL_31;
        }

        v16 = v19;
        v7 = v49;
        v28 = 1 << *(v49 + 32);
        if (v52 >= v28)
        {
          goto LABEL_27;
        }

        v29 = *(v19 + 8 * v17);
        if ((v29 & v18) == 0)
        {
          goto LABEL_28;
        }

        if (*(v49 + 36) != v53)
        {
          goto LABEL_29;
        }

        v30 = v29 & (-2 << (v52 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v52 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v17 << 6;
          v32 = v17 + 1;
          v33 = (v47 + 8 * v17);
          while (v32 < (v28 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              v36 = result;
              sub_1DD3AA558(v52, v53, 0);
              result = v36;
              v28 = __clz(__rbit64(v34)) + v31;
              goto LABEL_20;
            }
          }

          v37 = result;
          sub_1DD3AA558(v52, v53, 0);
          result = v37;
        }

LABEL_20:
        v15 = v51 + 1;
        if (v51 + 1 == v48)
        {
          return result;
        }

        v14 = 0;
        v11 = *(v49 + 36);
        v12 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD6043E4(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v32 = MEMORY[0x1E69E7CC0];
  v8 = OUTLINED_FUNCTION_56_10();
  sub_1DD42A2D4(v8, v9, v10, v11, v12, v13, v14);
  v6 = v32;
  for (i = (a3 + 40); ; i += 2)
  {
    v16 = *i;
    v30[0] = *(i - 1);
    v30[1] = v16;

    a1(v31, v30);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v18 = v31[0];
    v17 = v31[1];
    v32 = v6;
    v19 = *(v6 + 16);
    if (v19 >= *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90_1();
      sub_1DD42A2D4(v21, v22, v23, v24, v25, v26, v27);
      v6 = v32;
    }

    *(v6 + 16) = v19 + 1;
    v20 = v6 + 16 * v19;
    *(v20 + 32) = v18;
    *(v20 + 40) = v17;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD604500()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v22 = v5;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v7 = OUTLINED_FUNCTION_51(matched);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  v10 = *(v4 + 16);
  if (v10)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v11 = OUTLINED_FUNCTION_54_10();
    sub_1DD42B564(v11, v12, v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
    OUTLINED_FUNCTION_51(v14);
    v16 = v4 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v17 + 72);
    while (1)
    {
      v22(v16);
      if (v2)
      {
        break;
      }

      v2 = 0;
      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DD42B564(v18 > 1, v19 + 1, 1);
      }

      *(v23 + 16) = v19 + 1;
      OUTLINED_FUNCTION_24_0();
      sub_1DD627288(v1, v23 + v20 + *(v9 + 72) * v19);
      v16 += v21;
      if (!--v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_1DD6046CC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v22 = MEMORY[0x1E69E7CC0];
  v9 = OUTLINED_FUNCTION_56_10();
  sub_1DD42B644(v9, v10, v11);
  v6 = v22;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v20[0] = *(i - 1);
    v20[1] = v13;

    a1(&v21, v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v14 = v21;
    v22 = v6;
    v15 = *(v6 + 16);
    if (v15 >= *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90_1();
      sub_1DD42B644(v16, v17, v18);
      v6 = v22;
    }

    *(v6 + 16) = v15 + 1;
    *(v6 + 8 * v15 + 32) = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD604820(uint64_t a1, __int128 *a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v22 = a4;
  v21 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1DD42B5CC(0, v12, 0);
    v13 = v26;
    v14 = (a1 + 32);
    for (i = v12 - 1; ; --i)
    {
      memcpy(__dst, v14, 0x4AuLL);
      memcpy(__src, v14, 0x4AuLL);
      sub_1DD3C6A40(__dst, v23);
      v16 = a2;
      sub_1DD62034C(__src, a2, v21, v22, v11);
      if (v5)
      {
        break;
      }

      v5 = 0;
      memcpy(v23, __src, 0x4AuLL);
      sub_1DD3C6A9C(v23);
      v26 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1DD42B5CC((v17 > 1), v18 + 1, 1);
        v13 = v26;
      }

      *(v13 + 16) = v18 + 1;
      sub_1DD3EB4B8(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, &qword_1ECCDBBD8, &unk_1DD645A90);
      if (!i)
      {
        sub_1DD390754(v16, &qword_1ECCDFED8, &unk_1DD664B90);
        return v13;
      }

      v14 += 80;
      a2 = v16;
    }

    memcpy(v23, __src, 0x4AuLL);
    sub_1DD3C6A9C(v23);

    result = sub_1DD390754(a2, &qword_1ECCDFED8, &unk_1DD664B90);
    __break(1u);
  }

  else
  {
    sub_1DD390754(a2, &qword_1ECCDFED8, &unk_1DD664B90);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD604AC8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  v9 = OUTLINED_FUNCTION_55_9();
  v16 = v10;
  (v10)(v9);
  v6 = v19;
  for (i = (a3 + 32); ; ++i)
  {
    v17 = *i;

    a1(&v18, &v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v18;
    v19 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v16(v13 > 1, v14 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + 8 * v14 + 32) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD604BFC()
{
  OUTLINED_FUNCTION_93();
  v3 = v0;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2;
    v6 = v1;
    v18 = MEMORY[0x1E69E7CC0];
    v7 = OUTLINED_FUNCTION_55_9();
    sub_1DD42B95C(v7, v8, v9);
    v10 = v5 + 32;
    while (1)
    {
      OUTLINED_FUNCTION_133(v17);
      OUTLINED_FUNCTION_133(__src);
      sub_1DD3C9478(v17, __dst);
      v6(&v16, __src);
      if (v3)
      {
        break;
      }

      v3 = 0;
      memcpy(__dst, __src, sizeof(__dst));
      sub_1DD3C9580(__dst);
      v11 = v16;
      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1DD42B95C(v12 > 1, v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      *(v18 + 8 * v13 + 32) = v11;
      v10 += 264;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_1DD3C9580(__dst);

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_86();
  }
}

void sub_1DD604D3C()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v21 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  OUTLINED_FUNCTION_51(v6);
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_65_7();
  v10 = *(v4 + 16);
  if (v10)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v11 = OUTLINED_FUNCTION_54_10();
    sub_1DD42BA08(v11, v12, v13);
    v14 = (v4 + 40);
    while (1)
    {
      v15 = *v14;
      v22[0] = *(v14 - 1);
      v22[1] = v15;

      v21(v22);
      if (v2)
      {
        break;
      }

      v2 = 0;

      v16 = *(v23 + 16);
      if (v16 >= *(v23 + 24) >> 1)
      {
        OUTLINED_FUNCTION_113_0();
        sub_1DD42BA08(v18, v19, v20);
      }

      *(v23 + 16) = v16 + 1;
      OUTLINED_FUNCTION_24_0();
      sub_1DD3EB4B8(v1, v23 + v17 + *(v8 + 72) * v16, &qword_1ECCDBC18, &unk_1DD6459A0);
      v14 += 2;
      if (!--v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_86();
  }
}

void sub_1DD604ECC()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v37 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_3();
  v40 = v6;
  v7 = *(v2 + 16);
  if (v7)
  {
    v42 = MEMORY[0x1E69E7CC0];
    v8 = OUTLINED_FUNCTION_60_7();
    sub_1DD42BA08(v8, v7, 0);
    v9 = v42;
    v11 = sub_1DD55B198();
    v13 = v12;
    v14 = 0;
    v38 = v2;
    v39 = v2 + 56;
    v35 = v2 + 64;
    v36 = v7;
    v15 = v2;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v15 + 32))
      {
        v16 = v11 >> 6;
        if ((*(v39 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v15 + 36) != v10)
        {
          goto LABEL_26;
        }

        v17 = v10;
        v18 = (*(v15 + 48) + 16 * v11);
        v19 = v18[1];
        v41[0] = *v18;
        v41[1] = v19;

        v37(v41);
        if (v0)
        {
          goto LABEL_30;
        }

        v20 = v9;
        v43 = v9;
        v21 = *(v9 + 16);
        v22 = *(v20 + 24);
        if (v21 >= v22 >> 1)
        {
          sub_1DD42BA08((v22 > 1), v21 + 1, 1);
          v20 = v43;
        }

        *(v20 + 16) = v21 + 1;
        OUTLINED_FUNCTION_18_3();
        v24 = v23;
        sub_1DD3EB4B8(v40, v23 + v25 + *(v26 + 72) * v21, &qword_1ECCDBC18, &unk_1DD6459A0);
        if (v13)
        {
          goto LABEL_31;
        }

        v15 = v38;
        v27 = 1 << *(v38 + 32);
        if (v11 >= v27)
        {
          goto LABEL_27;
        }

        v28 = *(v39 + 8 * v16);
        if ((v28 & (1 << v11)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v38 + 36) != v17)
        {
          goto LABEL_29;
        }

        v29 = v28 & (-2 << (v11 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v30 = v16 << 6;
          v31 = v16 + 1;
          v32 = (v35 + 8 * v16);
          while (v31 < (v27 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              sub_1DD3AA558(v11, v17, 0);
              v15 = v38;
              v27 = __clz(__rbit64(v33)) + v30;
              goto LABEL_20;
            }
          }

          sub_1DD3AA558(v11, v17, 0);
          v15 = v38;
        }

LABEL_20:
        if (++v14 == v36)
        {
          goto LABEL_23;
        }

        v13 = 0;
        v10 = *(v15 + 36);
        v11 = v27;
        v9 = v24;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_1DD6051E4(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v22 = MEMORY[0x1E69E7CC0];
    v9 = OUTLINED_FUNCTION_56_10();
    sub_1DD42B404(v9, v10, v11);
    v6 = v22;
    for (i = (a3 + 32); ; ++i)
    {
      v20 = *i;

      a1(&v21, &v20, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v13 = v21;
      v22 = v6;
      v14 = *(v6 + 16);
      if (v14 >= *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_90_1();
        sub_1DD42B404(v15, v16, v17);
        v6 = v22;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 8 * v14 + 32) = v13;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_1DD605308(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DD6407B8())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v7;
    }

    v25 = MEMORY[0x1E69E7CC0];
    v8 = OUTLINED_FUNCTION_60_7();
    sub_1DD42BBE8(v8, v9, 0);
    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    v10 = 0;
    v7 = v25;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    v20 = v5 & 0xC000000000000001;
    v11 = v5;
    while (v10 < i)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_18;
      }

      if (v20)
      {
        v13 = MEMORY[0x1E12B2C10](v10, v5);
      }

      else
      {
        if (v10 >= *(v19 + 16))
        {
          goto LABEL_19;
        }

        v13 = *(v5 + 8 * v10 + 32);
      }

      v23 = v13;
      a1(__src, &v23);
      if (v4)
      {
        goto LABEL_22;
      }

      v4 = 0;

      memcpy(__dst, __src, sizeof(__dst));
      v25 = v7;
      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        OUTLINED_FUNCTION_113_0();
        sub_1DD42BBE8(v15, v16, v17);
        v7 = v25;
      }

      *(v7 + 16) = v14 + 1;
      memcpy((v7 + 80 * v14 + 32), __dst, 0x49uLL);
      ++v10;
      v5 = v11;
      if (v12 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void sub_1DD6054D0()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v28 = v4;
  v29 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_51(v6);
  v27 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DD6407B8())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_86();
      return;
    }

    v31 = MEMORY[0x1E69E7CC0];
    v12 = OUTLINED_FUNCTION_60_7();
    sub_1DD42B4F8(v12, v13, 0);
    if (i < 0)
    {
      break;
    }

    v14 = 0;
    v25 = i;
    v26 = v3 & 0xC000000000000001;
    v24 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v26)
      {
        v16 = MEMORY[0x1E12B2C10](v14, v3);
      }

      else
      {
        if (v14 >= *(v24 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v3 + 8 * v14 + 32);
      }

      i = v16;
      v30 = v16;
      v28(&v30);
      if (v1)
      {
        goto LABEL_20;
      }

      v1 = 0;

      v17 = *(v31 + 16);
      if (v17 >= *(v31 + 24) >> 1)
      {
        OUTLINED_FUNCTION_90();
        sub_1DD42B4F8(v20, v21, v22);
      }

      *(v31 + 16) = v17 + 1;
      OUTLINED_FUNCTION_18_3();
      sub_1DD3EB4B8(v10, v31 + v18 + *(v19 + 72) * v17, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v14;
      if (v15 == v25)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t sub_1DD6056DC(uint64_t a1, void (*a2)(void *, void *), uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v40 = v3;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1DD42B4F8(0, v8, 0);
    v50 = v53;
    result = sub_1DD5FAA4C();
    v12 = result;
    v13 = 0;
    v49 = a1 + 64;
    v42 = v10;
    v41 = a1 + 72;
    v43 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v14 = v12 >> 6;
      if ((*(v49 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_24;
      }

      v48 = v10;
      v47 = v11;
      v15 = (*(a1 + 48) + 32 * v12);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      v20 = (*(a1 + 56) + 40 * v12);
      v21 = a1;
      v22 = *v20;
      v23 = v20[1];
      v25 = v20[2];
      v24 = v20[3];
      v26 = v20[4];
      __src[0] = v16;
      __src[1] = v17;
      __src[2] = v18;
      __src[3] = v19;
      __src[4] = v22;
      __src[5] = v23;
      __src[6] = v25;
      __src[7] = v24;
      __src[8] = v26;

      v45(__src, &__src[4]);
      memcpy(__dst, __src, 0x48uLL);
      sub_1DD390754(__dst, &qword_1ECCDFF08, &unk_1DD664C00);
      v27 = v50;
      v53 = v50;
      v29 = *(v50 + 16);
      v28 = *(v50 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1DD42B4F8(v28 > 1, v29 + 1, 1);
        v27 = v53;
      }

      *(v27 + 16) = v29 + 1;
      v30 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v50 = v27;
      result = sub_1DD3EB4B8(v7, v27 + v30 + *(v44 + 72) * v29, &qword_1ECCDBBE8, &qword_1DD644470);
      v31 = 1 << *(v21 + 32);
      if (v12 >= v31)
      {
        goto LABEL_25;
      }

      v32 = *(v49 + 8 * v14);
      if ((v32 & (1 << v12)) == 0)
      {
        goto LABEL_26;
      }

      a1 = v21;
      if (*(v21 + 36) != v48)
      {
        goto LABEL_27;
      }

      v33 = v32 & (-2 << (v12 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v34 = v43;
      }

      else
      {
        v35 = v14 << 6;
        v36 = v14 + 1;
        v37 = (v41 + 8 * v14);
        v34 = v43;
        while (v36 < (v31 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_1DD3AA558(v12, v48, v47 & 1);
            v31 = __clz(__rbit64(v38)) + v35;
            goto LABEL_19;
          }
        }

        result = sub_1DD3AA558(v12, v48, v47 & 1);
      }

LABEL_19:
      v11 = 0;
      ++v13;
      v12 = v31;
      v10 = v42;
      if (v13 == v34)
      {
        return v50;
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
  }

  return result;
}

uint64_t sub_1DD605AC0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1DD42B4F8(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1DD42B4F8(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1DD3EB4B8(v9, v11 + v18 + v15 * v13, &qword_1ECCDBBE8, &qword_1DD644470);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD605C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1DD55B198();
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v7;
    v35 = v8 + 56;
    v36 = v8;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v8 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v8 + 36) != v9)
        {
          goto LABEL_25;
        }

        v38 = v10;
        v37 = v9;
        v19 = sub_1DD538ED0(*(*(v8 + 48) + 2 * v11));
        v21 = v20;
        v23 = *(v39 + 16);
        v22 = *(v39 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1DD42A2D4(v22 > 1, v23 + 1, 1, v15, v16, v17, v18);
        }

        *(v39 + 16) = v23 + 1;
        v24 = v39 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v35;
        v8 = v36;
        v25 = 1 << *(v36 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v35 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v36 + 36) != v37)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v33 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_1DD3AA558(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_1DD3AA558(v11, v37, 0);
        }

LABEL_19:
        if (++v12 == v34)
        {
          return;
        }

        v10 = 0;
        v9 = *(v36 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

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
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1DD605EA4(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = a3;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4(0, v9, 0, a4, a5, a6, a7);
    v13 = sub_1DD55B198();
    result = v53;
    v15 = v14;
    v16 = 0;
    v17 = v11 + 56;
    v44 = v11 + 64;
    v45 = v9;
    v46 = v11 + 56;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v11 + 32))
      {
        v18 = 1 << v13;
        if ((*(v17 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v11 + 36) != v12)
        {
          goto LABEL_26;
        }

        v49 = v12;
        v50 = v13 >> 6;
        v48 = v16;
        v19 = result;
        v20 = v11;
        v21 = v13;
        v22 = (*(v11 + 48) + 16 * v13);
        v23 = v22[1];
        v51[0] = *v22;
        v51[1] = v23;

        a1(v52, v51);
        if (v8)
        {
          goto LABEL_30;
        }

        v8 = 0;

        v28 = v52[0];
        v29 = v52[1];
        result = v19;
        v53 = v19;
        v30 = *(v19 + 16);
        v31 = *(result + 24);
        if (v30 >= v31 >> 1)
        {
          v43 = v52[0];
          sub_1DD42A2D4(v31 > 1, v30 + 1, 1, v24, v25, v26, v27);
          v28 = v43;
          result = v53;
        }

        *(result + 16) = v30 + 1;
        v32 = result + 16 * v30;
        *(v32 + 32) = v28;
        *(v32 + 40) = v29;
        if (v15)
        {
          goto LABEL_31;
        }

        v33 = 1 << *(v20 + 32);
        v17 = v46;
        if (v21 >= v33)
        {
          goto LABEL_27;
        }

        v34 = *(v46 + 8 * v50);
        if ((v34 & v18) == 0)
        {
          goto LABEL_28;
        }

        v11 = v20;
        if (*(v20 + 36) != v49)
        {
          goto LABEL_29;
        }

        v35 = v34 & (-2 << (v21 & 0x3F));
        if (v35)
        {
          v33 = __clz(__rbit64(v35)) | v21 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v36 = v50 << 6;
          v37 = v50 + 1;
          v38 = (v44 + 8 * v50);
          while (v37 < (v33 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              v41 = result;
              sub_1DD3AA558(v21, v49, 0);
              result = v41;
              v33 = __clz(__rbit64(v39)) + v36;
              goto LABEL_20;
            }
          }

          v42 = result;
          sub_1DD3AA558(v21, v49, 0);
          result = v42;
        }

LABEL_20:
        v16 = v48 + 1;
        if (v48 + 1 == v45)
        {
          return result;
        }

        v15 = 0;
        v12 = *(v11 + 36);
        v13 = v33;
        if (v33 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD606158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1DD42C1B8(0, v5, 0);
    v7 = v36;
    result = sub_1DD55B198();
    v11 = result;
    v12 = 0;
    v13 = v6 + 56;
    v28 = v6 + 64;
    v29 = v5;
    v30 = v6 + 56;
    v31 = v6;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v6 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v6 + 36) != v9)
        {
          goto LABEL_27;
        }

        v35 = v10;
        v15 = (*(v6 + 48) + 16 * v11);
        v16 = v15[1];
        v33 = v9;
        v34 = *v15;
        v18 = *(v36 + 16);
        v17 = *(v36 + 24);

        if (v18 >= v17 >> 1)
        {
          result = sub_1DD42C1B8(v17 > 1, v18 + 1, 1);
        }

        *(v36 + 16) = v18 + 1;
        v19 = (v36 + 32 * v18);
        v19[4] = a3;
        v19[5] = a4;
        v19[6] = v34;
        v19[7] = v16;
        if (v35)
        {
          goto LABEL_31;
        }

        v13 = v30;
        v6 = v31;
        v20 = 1 << *(v31 + 32);
        if (v11 >= v20)
        {
          goto LABEL_28;
        }

        v21 = *(v30 + 8 * v14);
        if ((v21 & (1 << v11)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v31 + 36) != v33)
        {
          goto LABEL_30;
        }

        v22 = v21 & (-2 << (v11 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v14 << 6;
          v24 = v14 + 1;
          v25 = (v28 + 8 * v14);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              result = sub_1DD3AA558(v11, v33, 0);
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_19;
            }
          }

          result = sub_1DD3AA558(v11, v33, 0);
        }

LABEL_19:
        if (++v12 == v29)
        {

          return v7;
        }

        v10 = 0;
        v9 = *(v31 + 36);
        v11 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
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

void sub_1DD6063E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1DD42C14C(0, v1, 0);
    v5 = sub_1DD5FAA4C();
    v6 = 0;
    v7 = v2 + 64;
    v25 = v3;
    v26 = v1;
    v24 = v2 + 72;
    v27 = v2 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v3)
      {
        goto LABEL_23;
      }

      v29 = v6;
      v30 = v3;
      v28 = v4;
      v9 = (*(v2 + 48) + 32 * v5);
      v10 = v9[1];
      v11 = v9[3];
      v32 = v9[2];
      v33 = *v9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v31 = sub_1DD419018();

      v12 = v2;
      v14 = *(v34 + 16);
      v13 = *(v34 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DD42C14C(v13 > 1, v14 + 1, 1);
      }

      *(v34 + 16) = v14 + 1;
      v15 = (v34 + 40 * v14);
      v15[4] = v33;
      v15[5] = v10;
      v15[6] = v32;
      v15[7] = v11;
      v15[8] = v31;
      v16 = 1 << *(v12 + 32);
      if (v5 >= v16)
      {
        goto LABEL_24;
      }

      v7 = v27;
      v17 = *(v27 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v12;
      if (*(v12 + 36) != v30)
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1DD3AA558(v5, v30, v28 & 1);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_1DD3AA558(v5, v30, v28 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v29 + 1;
      v5 = v16;
      v3 = v25;
      if (v29 + 1 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1DD60667C()
{
  sub_1DD5D3268(0);
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD5D2E58();
    if (v0)
    {
      break;
    }

    if (!v1)
    {
      return v15;
    }

    if (!*(v1 + 16))
    {
      __break(1u);
      break;
    }

    sub_1DD3EB3D0(v1 + 32, v11, &qword_1ECCDCF98, &qword_1DD6547F0);
    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
      if (swift_dynamicCast())
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1DD390754(v11, &qword_1ECCDCF98, &qword_1DD6547F0);
    }

    v13 = 0;
    v14 = 0;
LABEL_10:

    v2 = v14;
    if (v14)
    {
      v10 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BE2A4();
        v15 = v7;
      }

      v3 = *(v15 + 16);
      v4 = v3 + 1;
      if (v3 >= *(v15 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v4 = v3 + 1;
        v15 = v8;
      }

      v5 = v15;
      *(v15 + 16) = v4;
      v6 = v5 + 16 * v3;
      *(v6 + 32) = v10;
      *(v6 + 40) = v2;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DD606844(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a3 + 16) > 1uLL)
  {
    v9 = MEMORY[0x1E12B2590]();

    sub_1DD603FC0(v6, &v9, a1, a2);
    v3 = v7;
  }

  else
  {
  }

  return v3;
}

void sub_1DD6068D8(void (*a1)(void *__return_ptr, unint64_t, __n128), uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v28 - v12;
  v34 = a5;
  v14 = *(a5 + 16);

  v15 = MEMORY[0x1E69E7CC0];
  v16 = sub_1DD63FC88();

  v17 = sub_1DD606B60(v16, 0, v14, a1, a2, a5, &v34, a3, a4);
  v18 = sub_1DD606F80(v17);

  v19 = v18[2];
  if (v19)
  {
    v28 = v13;
    v33 = v15;
    sub_1DD42B4F8(0, v19, 0);
    v20 = v33;
    v31 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v32 = v34;
    v29 = v18;
    v30 = v34 + v31;
    v21 = 4;
    while (1)
    {
      v22 = v18[v21];
      if ((v22 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v22 >= *(v32 + 16))
      {
        goto LABEL_10;
      }

      v23 = v11;
      v24 = *(v11 + 72);
      v25 = v28;
      sub_1DD3EB3D0(v30 + v24 * v22, v28, &qword_1ECCDBBE8, &qword_1DD644470);
      v33 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1DD42B4F8(v26 > 1, v27 + 1, 1);
        v20 = v33;
      }

      *(v20 + 16) = v27 + 1;
      sub_1DD3EB4B8(v25, v20 + v31 + v27 * v24, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v21;
      --v19;
      v11 = v23;
      v18 = v29;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
  }
}

void *sub_1DD606B60(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, unint64_t, __n128), uint64_t a5, uint64_t a6, uint64_t *a7, void (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v63 = a7;
  v68 = a4;
  v69 = a5;
  v57 = a9;
  v58 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v67 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v55 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v62 = &v55 - v19;
  v20 = a2;
  v65 = a3;
  v66 = a6;
  for (i = a2; ; a2 = i)
  {
    if (a3 == v20)
    {

      return a1;
    }

    if (a3 < a2)
    {
      break;
    }

    if (v20 >= a3)
    {
      goto LABEL_27;
    }

    if (a2 < 0)
    {
      goto LABEL_28;
    }

    if (v20 >= *(a6 + 16))
    {
      goto LABEL_29;
    }

    v21 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v22 = *(v67 + 72);
    v70 = v20;
    v23 = v22 * v20;
    v68(v71, a6 + v21 + v22 * v20, v18);
    v24 = v71[0];
    v25 = v71[1];
    if (a1[2] && (v26 = sub_1DD3978DC(), (v27 & 1) != 0))
    {
      v61 = v25;
      v28 = *(a1[7] + 8 * v26);
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v29 = *v63;
      v30 = *(*v63 + 16);
      if (v28 >= v30)
      {
        goto LABEL_33;
      }

      v31 = v29 + v21;
      v60 = v28 * v22;
      v32 = v29 + v21 + v28 * v22;
      v33 = v59;
      sub_1DD3EB3D0(v32, v59, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v70 >= v30)
      {
        goto LABEL_34;
      }

      v34 = v56;
      sub_1DD3EB3D0(v31 + v23, v56, &qword_1ECCDBBE8, &qword_1DD644470);
      v58(v33, v34);
      sub_1DD390754(v34, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v33, &qword_1ECCDBBE8, &qword_1DD644470);
      v35 = v63;
      v36 = *v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD586A18();
        v36 = v53;
        *v63 = v53;
      }

      v38 = *(v36 + 16);

      if (v28 >= v38)
      {
        goto LABEL_35;
      }

      sub_1DD627334(v62, v36 + v21 + v60, &qword_1ECCDBBE8, &qword_1DD644470);
      v39 = v70;
    }

    else
    {
      swift_isUniquelyReferenced_nonNull_native();
      v72 = a1;
      v40 = v25;
      v41 = sub_1DD3978DC();
      if (__OFADD__(a1[2], (v42 & 1) == 0))
      {
        goto LABEL_30;
      }

      v43 = v41;
      v44 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
      if (sub_1DD640A08())
      {
        v45 = sub_1DD3978DC();
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_36;
        }

        v43 = v45;
      }

      a1 = v72;
      if (v44)
      {
        v47 = v70;
        *(v72[7] + 8 * v43) = v70;
        v39 = v47;
      }

      else
      {
        v72[(v43 >> 6) + 8] |= 1 << v43;
        v48 = (a1[6] + 16 * v43);
        *v48 = v24;
        v48[1] = v40;
        v49 = v70;
        *(a1[7] + 8 * v43) = v70;
        v50 = a1[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_31;
        }

        v39 = v49;
        a1[2] = v52;
      }
    }

    v20 = v39 + 1;
    a3 = v65;
    a6 = v66;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
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
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

void *sub_1DD606F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1DD3C16A8(*(a1 + 16), 0);
  sub_1DD5D57EC();
  v4 = v3;

  sub_1DD3AA5A4(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x1E69E7CC0];
  }

  v6 = v2;
  sub_1DD6081D4(&v6);
  return v6;
}

unint64_t sub_1DD607064(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD6070B0(char a1)
{
  if (a1)
  {
    v1 = sub_1DD640CD8();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_1DD607168(unint64_t a1, unint64_t a2)
{
  v5 = a2;
  v6 = a1;
  v7 = sub_1DD625EBC(a1, a2);
  v8 = *(*v3 + 16);
  if (__OFADD__(v8, v7))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1DD6223C4(v8 + v7, 1, sub_1DD3BE9E4);
  v2 = *v3;
  v9 = *(*v3 + 16);
  v10 = (*(*v3 + 24) >> 1) - v9;
  v11 = sub_1DD6260F4(&v33, *v3 + 4 * v9 + 32, v10, v6, v5);
  if (v11 < v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= 1)
  {
    v12 = *(v2 + 16);
    v13 = __OFADD__(v12, v11);
    v14 = v12 + v11;
    if (v13)
    {
      __break(1u);
      goto LABEL_18;
    }

    *(v2 + 16) = v14;
  }

  if (v11 == v10)
  {
LABEL_10:
    v4 = v35;
    v7 = v36;
    if (v35 >= v36)
    {
      goto LABEL_7;
    }

    v10 = *(v2 + 16);
    v5 = v33;
    v6 = v34;
    if ((v34 & 0x1000000000000000) != 0)
    {
      v19 = sub_1DD6408C8();
      v20 = (v6 & 0x2000000000000000) == 0;
      goto LABEL_21;
    }

    if ((v34 & 0x2000000000000000) == 0)
    {
      if ((v33 & 0x1000000000000000) != 0)
      {
        v16 = (v34 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v16 = sub_1DD640948();
      }

      v17 = (v16 + v4);
      v18 = *(v16 + v4);
      v19 = *(v16 + v4);
      if (v18 < 0)
      {
        switch(__clz(v19 ^ 0xFF))
        {
          case 0x1Au:
            v20 = 1;
            v21 = 2;
            v19 = v17[1] & 0x3F | ((v19 & 0x1F) << 6);
            break;
          case 0x1Bu:
            v19 = ((v19 & 0xF) << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3F;
            v20 = 1;
            v21 = 3;
            break;
          case 0x1Cu:
            v19 = ((v19 & 0xF) << 18) | ((v17[1] & 0x3F) << 12) | ((v17[2] & 0x3F) << 6) | v17[3] & 0x3F;
            v20 = 1;
            v21 = 4;
            break;
          default:
            goto LABEL_16;
        }
      }

      else
      {
LABEL_16:
        v20 = 1;
        v21 = 1;
      }

      goto LABEL_21;
    }

LABEL_18:
    v31 = v5;
    v32 = v6 & 0xFFFFFFFFFFFFFFLL;
    v22 = &v31 + v4;
    v19 = *(&v31 + v4);
    if (*(&v31 + v4) < 0)
    {
      switch(__clz(v19 ^ 0xFF))
      {
        case 0x1Au:
          v21 = 2;
          v19 = v22[1] & 0x3F | ((v19 & 0x1F) << 6);
          break;
        case 0x1Bu:
          v19 = ((v19 & 0xF) << 12) | ((v22[1] & 0x3F) << 6) | v22[2] & 0x3F;
          v21 = 3;
          break;
        case 0x1Cu:
          v19 = ((v19 & 0xF) << 18) | ((v22[1] & 0x3F) << 12) | ((v22[2] & 0x3F) << 6) | v22[3] & 0x3F;
          v21 = 4;
          break;
        default:
          goto LABEL_19;
      }
    }

    else
    {
LABEL_19:
      v21 = 1;
    }

    v20 = 0;
LABEL_21:
    v23 = v21 + v4;
LABEL_22:
    v24 = *(v2 + 24) >> 1;
    if (v24 < v10 + 1)
    {
      v29 = v19;
      sub_1DD3BE9E4();
      v2 = v30;
      v19 = v29;
      v24 = *(v2 + 24) >> 1;
    }

    while (1)
    {
      if (v10 >= v24)
      {
        *(v2 + 16) = v10;
        goto LABEL_22;
      }

      *(v2 + 4 * v10 + 32) = v19;
      if (v23 >= v7)
      {
        *(v2 + 16) = v10 + 1;
        goto LABEL_7;
      }

      if ((v6 & 0x1000000000000000) != 0)
      {
        v19 = sub_1DD6408C8();
        goto LABEL_35;
      }

      if (v20)
      {
        break;
      }

      v31 = v5;
      v32 = v6 & 0xFFFFFFFFFFFFFFLL;
      v26 = &v31 + v23;
      v19 = *(&v31 + v23);
      if ((*(&v31 + v23) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      switch(__clz(v19 ^ 0xFF))
      {
        case 0x1Au:
LABEL_37:
          v19 = v26[1] & 0x3F | ((v19 & 0x1F) << 6);
          v28 = 2;
          break;
        case 0x1Bu:
LABEL_38:
          v19 = ((v19 & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
          v28 = 3;
          break;
        case 0x1Cu:
LABEL_39:
          v19 = ((v19 & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
          v28 = 4;
          break;
        default:
          goto LABEL_34;
      }

LABEL_35:
      v23 += v28;
      ++v10;
    }

    v25 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if ((v5 & 0x1000000000000000) == 0)
    {
      v25 = sub_1DD640948();
    }

    v26 = (v25 + v23);
    v27 = *(v25 + v23);
    v19 = *(v25 + v23);
    if (v27 < 0)
    {
      switch(__clz(v19 ^ 0xFF))
      {
        case 0x1Au:
          goto LABEL_37;
        case 0x1Bu:
          goto LABEL_38;
        case 0x1Cu:
          goto LABEL_39;
        default:
          break;
      }
    }

LABEL_34:
    v28 = 1;
    goto LABEL_35;
  }

LABEL_7:

  *v3 = v2;
  return result;
}

void sub_1DD6075D8(uint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD6223C4(v5 + v4, 1, sub_1DD3BEC68);
  v1 = *v2;
  v6 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  sub_1DD5D4AF0();
  if (v7 < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v7);
    v13 = v11 + v7;
    if (v12)
    {
      __break(1u);
      goto LABEL_15;
    }

    *(v1 + 16) = v13;
  }

  if (v7 == v6)
  {
LABEL_12:
    v3 = *(v1 + 16);
    v7 = v32;
    v8 = v33;
    v9 = v34;
    v10 = v35;
    if (v36)
    {
      v14 = (v36 - 1) & v36;
      v15 = __clz(__rbit64(v36)) | (v35 << 6);
      v16 = (v34 + 64) >> 6;
LABEL_20:
      v20 = *(*(v7 + 48) + 8 * v15);
      while (1)
      {
        v21 = *(v1 + 24) >> 1;
        if (v21 < v3 + 1)
        {
          v30 = v14;
          v31 = v7;
          v28 = v9;
          v29 = v8;
          v25 = v10;
          v26 = v20;
          sub_1DD3BEC68();
          v20 = v26;
          v8 = v29;
          v14 = v30;
          v10 = v25;
          v9 = v28;
          v1 = v27;
          v7 = v31;
          v21 = *(v1 + 24) >> 1;
        }

        if (v3 < v21)
        {
          break;
        }

        v22 = v10;
LABEL_34:
        *(v1 + 16) = v3;
        v10 = v22;
      }

      while (1)
      {
        *(v1 + 32 + 8 * v3++) = v20;
        if (!v14)
        {
          break;
        }

        v22 = v10;
LABEL_31:
        v24 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v20 = *(*(v7 + 48) + ((v22 << 9) | (8 * v24)));
        if (v3 >= v21)
        {
          goto LABEL_34;
        }
      }

      v23 = v10;
      while (1)
      {
        v22 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v22 >= v16)
        {
          sub_1DD3AA5A4(v7);
          *(v1 + 16) = v3;
          goto LABEL_9;
        }

        v14 = *(v8 + 8 * v22);
        ++v23;
        if (v14)
        {
          v10 = v22;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

LABEL_15:
    v16 = (v9 + 64) >> 6;
    v17 = v10;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_38;
      }

      if (v18 >= v16)
      {
        goto LABEL_8;
      }

      v19 = *(v8 + 8 * v18);
      ++v17;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v15 = __clz(__rbit64(v19)) | (v18 << 6);
        v10 = v18;
        goto LABEL_20;
      }
    }
  }

  v7 = v32;
LABEL_8:
  sub_1DD3AA5A4(v7);
LABEL_9:
  *v2 = v1;
}

void sub_1DD607854(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_64(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD6223C4(v4, 1, sub_1DD3BEE1C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_47_12();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DD60793C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_64(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_131(result, v7);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v4);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v8 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v8)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1DD607A60(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_64(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD6223C4(v4, 1, sub_1DD3C0504);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_47_12();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DD607B48(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_9_64(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_131(v6, v7);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_51_10();
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v4);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v11 = *(v9 + 16);
  v8 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v8)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DD607C0C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_64(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_1DD6223C4(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD607D10(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DD6223C4(result, 1, sub_1DD3C129C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCA8, qword_1DD649E40);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD607E00(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DD6223C4(result, 1, sub_1DD3C1380);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB8, &unk_1DD649E50);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD607EEC(unint64_t a1)
{
  v3 = sub_1DD3CC020();
  v4 = sub_1DD3CC020();
  v6 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1DD62243C(result, 1, v5);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DD4D4134(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DD607F98(char a1)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_127_0();
    goto LABEL_5;
  }

  if (a1 != 1)
  {
LABEL_5:
    v1 = sub_1DD640CD8();
    goto LABEL_6;
  }

  v1 = 1;
LABEL_6:

  return v1 & 1;
}

uint64_t sub_1DD60801C(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v1 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_127_0();
  }

  v1 = sub_1DD640CD8();
LABEL_7:

  return v1 & 1;
}

uint64_t sub_1DD6080E8(uint64_t *a1, unint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC70C();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;

  sub_1DD6224DC(v9, a2);
  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DD6081D4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC810();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD622668(v6);
  *a1 = v2;
  return result;
}

void sub_1DD608240()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v19 = v5;
  v6 = type metadata accessor for StitchableInteraction(0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = 0;
  v14 = *(v2 + 16);
  while (1)
  {
    if (v14 == v13)
    {
      v17 = 1;
      v18 = v19;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_24_0();
    sub_1DD6271B8(v2 + v15 + *(v8 + 72) * v13, v12);
    v16 = v4(v12);
    if (v0)
    {
      sub_1DD627210(v12, type metadata accessor for StitchableInteraction);
      goto LABEL_10;
    }

    if (v16)
    {
      break;
    }

    sub_1DD627210(v12, type metadata accessor for StitchableInteraction);
    ++v13;
  }

  v18 = v19;
  sub_1DD627288(v12, v19);
  v17 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v18, v17, 1, v6);
LABEL_10:
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_86();
}

uint64_t (*sub_1DD6083CC@<X0>(uint64_t (*result)(_BYTE *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>))(_BYTE *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = (a2 + 32);
  if (v6)
  {
    while (1)
    {
      memcpy(__dst, v7, sizeof(__dst));
      memcpy(__src, v7, sizeof(__src));
      sub_1DD3E6404(__dst, v9);
      v8 = v4(__src);
      if (v3)
      {
        memcpy(v9, __src, sizeof(v9));
        return sub_1DD3E6460(v9);
      }

      if (v8)
      {
        return memcpy(a3, __src, 0x50uLL);
      }

      memcpy(v9, __src, sizeof(v9));
      result = sub_1DD3E6460(v9);
      v7 += 80;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1DD6084D4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - v7;
  v9 = 0;
  v10 = *(a2 + 16);
  while (1)
  {
    if (v10 == v9)
    {
      v12 = 1;
      v13 = v17;
      return __swift_storeEnumTagSinglePayload(v13, v12, 1, v16);
    }

    sub_1DD3EB3D0(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v8, &qword_1ECCDBBE8, &qword_1DD644470);
    v11 = a1(v8);
    if (v3)
    {
      return sub_1DD390754(v8, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    if (v11)
    {
      break;
    }

    sub_1DD390754(v8, &qword_1ECCDBBE8, &qword_1DD644470);
    ++v9;
  }

  v13 = v17;
  sub_1DD3EB4B8(v8, v17, &qword_1ECCDBBE8, &qword_1DD644470);
  v12 = 0;
  return __swift_storeEnumTagSinglePayload(v13, v12, 1, v16);
}

void sub_1DD608684(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  OUTLINED_FUNCTION_4_1();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_7:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1DD56CECC(&v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1DD608B88(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v18 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 48 * (v11 | (v10 << 6)));
      v13 = *(v12 + 25);
      v14 = v12[1];
      v19 = *v12;
      v20[0] = v14;
      *(v20 + 9) = v13;
      sub_1DD41B16C(&v19, v16);
      sub_1DD56EF28(v16, &v19, v15);
      result = sub_1DD41B1C8(v16[0], v16[1], v16[2], v16[3], v16[4], v17);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v18;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD608CD0(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-1] - v8;
  v10 = qword_1EE165D80;
  v11 = sub_1DD63CE68();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = *(*v2 + 104);
  *(v2 + v15) = 0;
  v16 = *(v11 - 8);
  (*(v16 + 16))(v9, a1, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  swift_beginAccess();
  sub_1DD627334(v9, v2 + v10, &qword_1ECCDBF78, &unk_1DD644440);
  swift_endAccess();
  a2(v19, a1);
  if (v3)
  {

    (*(v16 + 8))(a1, v11);
  }

  else
  {
    (*(v16 + 8))(a1, v11);
    *(v2 + v15) = v19[0];
  }

  return OUTLINED_FUNCTION_128_0();
}

uint64_t sub_1DD608E98(uint64_t a1)
{
  sub_1DD63CE68();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *(v1 + *(*v1 + 104)) = a1;
  return v1;
}

void sub_1DD608EFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6504B0;
  *(inited + 32) = sub_1DD63FDD8();
  *(inited + 40) = v1;
  *(inited + 48) = sub_1DD63FDD8();
  *(inited + 56) = v2;
  *(inited + 64) = sub_1DD63FDD8();
  *(inited + 72) = v3;
  *(inited + 80) = sub_1DD63FDD8();
  *(inited + 88) = v4;
  *(inited + 96) = sub_1DD63FDD8();
  *(inited + 104) = v5;
  *(inited + 112) = sub_1DD63FDD8();
  *(inited + 120) = v6;
  *(inited + 128) = sub_1DD63FDD8();
  *(inited + 136) = v7;
  sub_1DD56C2F4(inited, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, vars0, vars8);
  qword_1ECD0DE40 = v14;
}

uint64_t sub_1DD608FE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StringTokenizer(0) + 20);
  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void sub_1DD60905C()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v83 = sub_1DD63C7F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v82 = v12;
  v13 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v8, v6, v4, v2);
  v14 = type metadata accessor for StringTokenizer(0);
  if (sub_1DD4F9BB8(v14) & 1) != 0 || (sub_1DD63D118(), sub_1DD3B52B8(), sub_1DD3B530C(), v15 = sub_1DD63FD48(), , (v15))
  {
    v16 = 0;
    v85 = MEMORY[0x1E69E7CC0];
    v17 = *(v13 + 16);
    v18 = v13 + 40;
    while (v17 != v16)
    {
      if (v16 >= *(v13 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      ++v16;

      v19 = OUTLINED_FUNCTION_73();
      sub_1DD607168(v19, v20);
      v18 += 16;
    }

    v21 = *(v85 + 16);
    if (v21)
    {
      v86 = MEMORY[0x1E69E7CC0];
      v22 = OUTLINED_FUNCTION_55_9();
      sub_1DD42A2D4(v22, v23, v24, v25, v26, v27, v28);
      v29 = 32;
      v30 = v86;
      do
      {
        sub_1DD63FED8();
        OUTLINED_FUNCTION_95_1();
        v31 = *(v86 + 16);
        if (v31 >= *(v86 + 24) >> 1)
        {
          OUTLINED_FUNCTION_113_0();
          sub_1DD42A2D4(v33, v34, v35, v36, v37, v38, v39);
        }

        *(v86 + 16) = v31 + 1;
        v32 = v86 + 16 * v31;
        *(v32 + 32) = v18;
        *(v32 + 40) = v0;
        v29 += 4;
        --v21;
      }

      while (v21);
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    v40 = *(v30 + 16);
    if (v40)
    {
      v84 = MEMORY[0x1E69E7CC0];
      v41 = OUTLINED_FUNCTION_55_9();
      sub_1DD42A2D4(v41, v42, v43, v44, v45, v46, v47);
      v48 = v84;
      v49 = (v10 + 8);
      v50 = v30 + 40;
      do
      {

        sub_1DD63C7E8();
        sub_1DD3B7F10();
        sub_1DD640668();
        OUTLINED_FUNCTION_95_1();
        (*v49)(v82, v83);

        v51 = *(v84 + 16);
        if (v51 >= *(v84 + 24) >> 1)
        {
          OUTLINED_FUNCTION_113_0();
          sub_1DD42A2D4(v53, v54, v55, v56, v57, v58, v59);
        }

        *(v84 + 16) = v51 + 1;
        v52 = v84 + 16 * v51;
        *(v52 + 32) = v18;
        *(v52 + 40) = v0;
        v50 += 16;
        --v40;
      }

      while (v40);
    }

    else
    {

      v48 = MEMORY[0x1E69E7CC0];
    }

    v60 = 0;
    v61 = *(v48 + 16);
    v62 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v63 = (v48 + 40 + 16 * v60);
    while (v61 != v60)
    {
      if (v60 >= *(v48 + 16))
      {
        goto LABEL_36;
      }

      ++v60;
      v65 = *(v63 - 1);
      v64 = *v63;
      v63 += 2;
      v66 = HIBYTE(v64) & 0xF;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v66 = v65 & 0xFFFFFFFFFFFFLL;
      }

      if (v66)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = OUTLINED_FUNCTION_26_2();
          sub_1DD42A2D4(v67, v68, v69, v70, v71, v72, v73);
        }

        v75 = *(v62 + 16);
        v74 = *(v62 + 24);
        if (v75 >= v74 >> 1)
        {
          v77 = OUTLINED_FUNCTION_1_0(v74);
          sub_1DD42A2D4(v77, v75 + 1, 1, v78, v79, v80, v81);
        }

        *(v62 + 16) = v75 + 1;
        v76 = v62 + 16 * v75;
        *(v76 + 32) = v65;
        *(v76 + 40) = v64;
        goto LABEL_22;
      }
    }
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD6099CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v9 = sub_1DD63F9F8();
  __swift_project_value_buffer(v9, qword_1EE16F068);

  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_17_0();
    v12 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_1DD39565C(a5, a6, v35);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1DD39565C(a3, a4, v35);
    *(v12 + 22) = 2080;
    v13 = OUTLINED_FUNCTION_118_0();
    *(v12 + 24) = sub_1DD39565C(v13, v14, v15);
    _os_log_impl(&dword_1DD38D000, v10, v11, "[UCG] Relationship alias lookup: locale='%s' normalizedLabel='%s' label='%s'", v12, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    v16 = OUTLINED_FUNCTION_10_2();
    MEMORY[0x1E12B3DA0](v16);
  }

  v17 = OUTLINED_FUNCTION_118_0();
  v19 = sub_1DD609E20(v17, v18, a5, a6);
  if ((v20 & 1) == 0)
  {
    return v19;
  }

  v19 = sub_1DD609E20(a3, a4, a5, a6);
  if ((v21 & 1) == 0)
  {
    return v19;
  }

  v22 = OUTLINED_FUNCTION_118_0();
  v24 = sub_1DD609D10(v22, v23);
  if (v25)
  {

    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640368();

    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_58_9();
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_64_6();
      v35[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = OUTLINED_FUNCTION_118_0();
      *(v28 + 4) = sub_1DD39565C(v29, v30, v31);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1DD39565C(a5, a6, v35);
      _os_log_impl(&dword_1DD38D000, v26, v27, "[UCG] Label '%s' does not map to a valid relationship in locale '%s'", v28, 0x16u);
      swift_arrayDestroy();
      v32 = OUTLINED_FUNCTION_12_49();
      MEMORY[0x1E12B3DA0](v32);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }
  }

  return v24;
}

uint64_t sub_1DD609D10(uint64_t a1, uint64_t a2)
{
  if (!sub_1DD582448())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_73();
  v5 = sub_1DD63FE58();
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v7 = OUTLINED_FUNCTION_42_11(51);
  v10 = sub_1DD5804E4(v7, v8, v9);
  if (!v2)
  {
    a2 = v10;
  }

  swift_setDeallocating();
  sub_1DD46CB4C();
  return a2;
}

uint64_t sub_1DD609E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1DD582448())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  v10 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  *(inited + 96) = v10;
  *(inited + 104) = &off_1F58C4E78;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  v11 = OUTLINED_FUNCTION_42_11(124);
  v14 = sub_1DD5804E4(v11, v12, v13);
  if (!v4)
  {
    a2 = v14;
  }

  swift_setDeallocating();
  sub_1DD46CB4C();
  return a2;
}

uint64_t sub_1DD609F50(uint64_t a1)
{
  if (!sub_1DD582448())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  v4 = MEMORY[0x1E69E7360];
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 56) = v4;
  *(inited + 64) = &off_1F58C4E70;
  *(inited + 32) = a1;
  v5 = sub_1DD5805F0(0xD000000000000033, 0x80000001DD673320, inited);
  if (!v1)
  {
    a1 = v5;
  }

  swift_setDeallocating();
  sub_1DD46CB4C();
  return a1;
}

uint64_t sub_1DD60A060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1DD582448())
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  v8 = MEMORY[0x1E69E6158];
  *(inited + 16) = xmmword_1DD643F80;
  *(inited + 56) = v8;
  *(inited + 64) = &off_1F58C4E78;
  v9 = MEMORY[0x1E69E7360];
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 96) = v9;
  *(inited + 104) = &off_1F58C4E70;
  *(inited + 72) = a1;

  v10 = OUTLINED_FUNCTION_42_11(124);
  sub_1DD4061B8(v10, v11, v12);
  if (v3)
  {

    swift_setDeallocating();
    v13 = inited;
    sub_1DD46CB4C();
  }

  else
  {
    swift_setDeallocating();
    sub_1DD46CB4C();
    v14 = sub_1DD60667C();
    v13 = sub_1DD41859C(v14);
  }

  return v13;
}

uint64_t sub_1DD60A1C0()
{

  OUTLINED_FUNCTION_57();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD60A1F4(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = (&unk_1F58AA8C0 + 24 * v2 + 48);
  while (++v2 != 3)
  {
    v5 = v4 + 3;
    v6 = *v4;
    v4 += 3;
    if ((v6 & ~a1) == 0)
    {
      v8 = *(v5 - 5);
      v7 = *(v5 - 4);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BE2A4();
        v3 = v11;
      }

      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v3 = v12;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      goto LABEL_2;
    }
  }

  return v3;
}

void sub_1DD60A2F0(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = (&unk_1F58AA7E0 + 24 * v2 + 48);
  while (v2 != 8)
  {
    if (v2 > 7)
    {
      __break(1u);
      return;
    }

    ++v2;
    v5 = v4 + 3;
    v6 = *v4;
    v4 += 3;
    if ((v6 & ~a1) == 0)
    {
      v8 = *(v5 - 5);
      v7 = *(v5 - 4);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BE2A4();
        v3 = v11;
      }

      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v3 = v12;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      goto LABEL_2;
    }
  }
}

uint64_t sub_1DD60A428(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_52_11(a1);
  result = sub_1DD587164(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1DD60A450(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_52_11(a1);
  result = sub_1DD455C58(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1DD60A478(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1DD640CD8()) && a1[2] == a2[2])
  {
    v5 = a1[4];
    v6 = a2[4];
    if (v5)
    {
      if (v6)
      {
        v7 = a1[3] == a2[3] && v5 == v6;
        if (v7 || (sub_1DD640CD8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD60A510(uint64_t a1)
{
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](*(v1 + 16));
  if (!*(v1 + 32))
  {
    return sub_1DD640E48();
  }

  sub_1DD640E48();
  OUTLINED_FUNCTION_68_4();

  return sub_1DD63FD28();
}

uint64_t sub_1DD60A590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](v1);
  sub_1DD640E48();
  if (v2)
  {
    OUTLINED_FUNCTION_68_4();
    sub_1DD63FD28();
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD60A624(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  sub_1DD640E28();
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](v2);
  sub_1DD640E48();
  if (v3)
  {
    sub_1DD63FD28();
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD60A6C0(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  v2 = MEMORY[0x1E12B2430]();

  return v2;
}

BOOL sub_1DD60A714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_1DD640CD8();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1DD60A798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_79();
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](a3);
  return sub_1DD640E78();
}

uint64_t sub_1DD60A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1DD640CD8(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1DD640CD8();
    }
  }

  return result;
}

uint64_t sub_1DD60A898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DD63FD28();

  return sub_1DD63FD28();
}

uint64_t sub_1DD60A8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_79();
  sub_1DD63FD28();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD60A998(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1DD640E28();
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD60AA2C(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD60AAAC()
{
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
    }

    else
    {
      v2 = v0[1];
      v5 = *v0;
      v6 = v2;
      sub_1DD406EC4(&v5, v4);
      sub_1DD406EC4(&v6, v4);
    }
  }

  else
  {
    v1 = *(v0 + 24);
    v5 = *v0;
    v6 = v1;
    sub_1DD406EC4(&v5, v4);
    sub_1DD3EB3D0(&v6, v4, &unk_1ECCDFDF0, &unk_1DD644950);
  }

  return sub_1DD63FE38();
}

BOOL sub_1DD60AB78(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  if (*(a1 + 40))
  {
    if (*(a1 + 40) == 1)
    {
      if (*(a2 + 40) != 1)
      {
        return 0;
      }

      v11 = v4 == v8 && v5 == v9;
      return (v11 || (sub_1DD640CD8() & 1) != 0) && v6 == v10;
    }

    if (*(a2 + 40) != 2)
    {
      return 0;
    }

    v17 = a2[3];
    v18 = v4 == v8 && v5 == v9;
    if (!v18 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }

    if (v6 == v10 && v7 == v17)
    {
      return 1;
    }

    OUTLINED_FUNCTION_15_0();
  }

  else
  {
    if (*(a2 + 40))
    {
      return 0;
    }

    v12 = a1[4];
    v14 = a2[3];
    v13 = a2[4];
    v15 = v4 == v8 && v5 == v9;
    if (!v15 && (sub_1DD640CD8() & 1) == 0 || v6 != v10)
    {
      return 0;
    }

    if (!v12)
    {
      return !v13;
    }

    if (!v13)
    {
      return 0;
    }

    if (v7 == v14 && v12 == v13)
    {
      return 1;
    }
  }

  return (sub_1DD640CD8() & 1) != 0;
}

uint64_t sub_1DD60ACB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 40))
  {
    if (*(v1 + 40) == 1)
    {
      MEMORY[0x1E12B3140](1);
      OUTLINED_FUNCTION_101_1();
      return MEMORY[0x1E12B3140](v2);
    }

    MEMORY[0x1E12B3140](2);
    OUTLINED_FUNCTION_101_1();
    OUTLINED_FUNCTION_68_4();
  }

  else
  {
    v4 = *(v1 + 32);
    MEMORY[0x1E12B3140](0);
    OUTLINED_FUNCTION_101_1();
    MEMORY[0x1E12B3140](v2);
    if (!v4)
    {
      return sub_1DD640E48();
    }

    sub_1DD640E48();
  }

  return sub_1DD63FD28();
}

uint64_t sub_1DD60ADA4()
{
  OUTLINED_FUNCTION_79();
  sub_1DD60ACB0(v1);
  return sub_1DD640E78();
}

uint64_t sub_1DD60ADE4(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD60ACB0(v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD60AE28()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v5 = *v0;

    MEMORY[0x1E12B2260](64, 0xE100000000000000);
    MEMORY[0x1E12B2260](v3, v2);
    return v5;
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1DD60AEB0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = 0, (sub_1DD640CD8() & 1) != 0))
  {
    v10[0] = v2;
    v10[1] = v3;
    v9[0] = v5;
    v9[1] = v4;

    v7 = static ContactSource.== infix(_:_:)(v10, v9);
  }

  return v7 & 1;
}

uint64_t sub_1DD60AF58(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1DD63FD28();
  if (!v2)
  {
    return MEMORY[0x1E12B3140](0);
  }

  MEMORY[0x1E12B3140](1);
  OUTLINED_FUNCTION_68_4();

  return sub_1DD63FD28();
}

uint64_t sub_1DD60AFD0()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  sub_1DD63FD28();
  if (v1)
  {
    MEMORY[0x1E12B3140](1);
    OUTLINED_FUNCTION_68_4();
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD60B054(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1DD640E28();
  OUTLINED_FUNCTION_28_2();
  sub_1DD63FD28();
  if (v2)
  {
    MEMORY[0x1E12B3140](1);
    OUTLINED_FUNCTION_68_4();
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD60B0DC()
{
  sub_1DD41B22C();
  *(v0 + 16) = sub_1DD63FC88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF10, &qword_1DD664C18);
  *(v0 + 24) = sub_1DD63FC88();
  return v0;
}

uint64_t sub_1DD60B15C(uint64_t *a1)
{
  v44 = *a1;
  v46 = a1[1];
  v2 = a1[3];
  v1 = a1[4];
  v3 = v1 + 56;
  v41 = a1[2];
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 56);
  v7 = (v4 + 63) >> 6;

  v39 = 0;
  v8 = 0;
  v42 = v1;
  v43 = v2;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = (*(v1 + 48) + 48 * (__clz(__rbit64(v6)) | (v8 << 6)));
    v11 = *(v10 + 25);
    v12 = v10[1];
    v53 = *v10;
    *v54 = v12;
    *&v54[9] = v11;
    sub_1DD41B16C(&v53, &v49);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16F068);
    sub_1DD41B16C(&v53, &v49);

    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640368();

    sub_1DD57ADE4(&v53);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v16 = 136315394;
      if (v2)
      {
        *&v49 = v44;
        *(&v49 + 1) = v46;
        swift_bridgeObjectRetain_n();

        MEMORY[0x1E12B2260](64, 0xE100000000000000);
        MEMORY[0x1E12B2260](v41, v2);

        v18 = *(&v49 + 1);
        v17 = v49;
      }

      else
      {
        v18 = v46;

        v17 = v44;
      }

      v19 = sub_1DD39565C(v17, v18, &v47);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      if (v54[24])
      {
        if (v54[24] == 1)
        {
          v49 = v53;
          *&v50 = *v54;
        }

        else
        {
          v55 = v53;
          v56 = *v54;
          v49 = v53;
          v50 = *v54;
          sub_1DD406EC4(&v55, v48);
          sub_1DD406EC4(&v56, v48);
        }
      }

      else
      {
        v57 = v53;
        v58 = *&v54[8];
        v49 = v53;
        v50 = *v54;
        v51 = *&v54[16];
        sub_1DD406EC4(&v57, v48);
        sub_1DD3EB3D0(&v58, v48, &unk_1ECCDFDF0, &unk_1DD644950);
      }

      v20 = sub_1DD63FE38();
      v22 = sub_1DD39565C(v20, v21, &v47);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_1DD38D000, v14, v15, "[UCG] Adding new match type for candidate[%s]: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v45, -1, -1);
      MEMORY[0x1E12B3DA0](v16, -1, -1);

      v1 = v42;
      v2 = v43;
    }

    else
    {
    }

    v6 &= v6 - 1;
    if (v54[24] == 2)
    {
      sub_1DD57ADE4(&v53);
    }

    else
    {
      v23 = v53;

      swift_beginAccess();
      sub_1DD39E698(v39, 0);
      swift_isUniquelyReferenced_nonNull_native();
      *&v49 = *(v40 + 24);
      v24 = v49;
      *(v40 + 24) = 0x8000000000000000;
      v25 = sub_1DD3978DC();
      if (__OFADD__(*(v24 + 16), (v26 & 1) == 0))
      {
        goto LABEL_34;
      }

      v27 = v25;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF18, &qword_1DD664C20);
      v29 = sub_1DD640A08();
      v31 = v49;
      if (v29)
      {
        v32 = sub_1DD3978DC();
        v2 = v43;
        if ((v28 & 1) != (v33 & 1))
        {
          goto LABEL_36;
        }

        v27 = v32;
      }

      else
      {
        v2 = v43;
      }

      *(v40 + 24) = v31;
      if ((v28 & 1) == 0)
      {
        v31[(v27 >> 6) + 8] |= 1 << v27;
        *(v31[6] + 16 * v27) = v23;
        *(v31[7] + 8 * v27) = MEMORY[0x1E69E7CD0];
        v34 = v31[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_35;
        }

        v31[2] = v36;
      }

      sub_1DD56EF28(&v49, &v53, v30);
      swift_endAccess();

      sub_1DD41B1C8(v49, *(&v49 + 1), v50, *(&v50 + 1), v51, v52);
      v39 = sub_1DD60B7B0;
      v1 = v42;
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF20, &qword_1DD664C28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD643F90;
      *(inited + 32) = v44;
      *(inited + 40) = v46;
      *(inited + 48) = v41;
      *(inited + 56) = v2;
      *(inited + 64) = v44;
      *(inited + 72) = v46;
      *(inited + 80) = v41;
      *(inited + 88) = v2;
      *(inited + 96) = v1;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      sub_1DD6257C8(inited, (v40 + 16));
      swift_endAccess();
      return sub_1DD39E698(v39, 0);
    }

    v6 = *(v3 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD60B7C0(void *__src)
{
  v2 = v1;
  memcpy(v110, __src, 0x108uLL);
  swift_beginAccess();
  v3 = *(v1 + 16);
  v109 = v3;
  v4 = qword_1EE165FB0;

  if (v4 == -1)
  {
    goto LABEL_2;
  }

  while (2)
  {
    swift_once();
LABEL_2:
    v5 = sub_1DD63F9F8();
    v96[4] = __swift_project_value_buffer(v5, qword_1EE16F068);
    v6 = sub_1DD63F9D8();
    v7 = sub_1DD640368();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = *(v3 + 16);
      _os_log_impl(&dword_1DD38D000, v6, v7, "[UCG] Beginning merge and filter stage for %ld match records...", v8, 0xCu);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
    }

    memcpy(v108, v110, 0x108uLL);
    if (!sub_1DD41E198() && ((v110[20] & 0x2000000000000000) != 0 ? (v9 = HIBYTE(v110[20]) & 0xFLL) : (v9 = v110[19] & 0xFFFFFFFFFFFFLL), !v9) || !v110[23] || ((v110[23] & 0x2000000000000000) != 0 ? (v10 = HIBYTE(v110[23]) & 0xFLL) : (v10 = v110[22] & 0xFFFFFFFFFFFFLL), !v10))
    {
      v101 = 0;
LABEL_19:
      v12 = v3;
      goto LABEL_20;
    }

    v12 = sub_1DD621710(v11);
    v101 = 0;

    v13 = v12[2];
    if (!v13)
    {

      goto LABEL_19;
    }

    v14 = v2;
    v15 = *(v3 + 16);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v15 - v13;
      _os_log_impl(&dword_1DD38D000, v16, v17, "[UCG] We have at least one candidate that was specified with a name AND relationship. Discarding %ld other candidates", v18, 0xCu);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    swift_beginAccess();
    v109 = v12;

    v2 = v14;
LABEL_20:
    memcpy(v108, v110, 0x108uLL);
    if (!sub_1DD41E198() && !((v110[20] & 0x2000000000000000) != 0 ? HIBYTE(v110[20]) & 0xFLL : v110[19] & 0xFFFFFFFFFFFFLL))
    {
      if (!v110[23])
      {
        goto LABEL_71;
      }

      if (!((v110[23] & 0x2000000000000000) != 0 ? HIBYTE(v110[23]) & 0xFLL : v110[22] & 0xFFFFFFFFFFFFLL))
      {
        goto LABEL_71;
      }
    }

    v97 = v12;
    swift_beginAccess();
    v99 = v2;
    v20 = *(v2 + 24);
    v21 = v20 + 64;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 64);
    v2 = (v22 + 63) >> 6;
    v102 = v20;
    swift_bridgeObjectRetain_n();
    v3 = 0;
    v100 = MEMORY[0x1E69E7CC0];
    while (v24)
    {
LABEL_33:
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v27 = v26 | (v3 << 6);
      v28 = (v102[6] + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v102[7] + 8 * v27);

      v32 = sub_1DD60C2D8(v29, v30, v31);
      v34 = v33;

      if (v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3BE2A4();
          v100 = v38;
        }

        v35 = v100[2];
        if (v35 >= v100[3] >> 1)
        {
          sub_1DD3BE2A4();
          v100 = v39;
        }

        v36 = v100;
        v100[2] = v35 + 1;
        v37 = &v36[2 * v35];
        v37[4] = v32;
        v37[5] = v34;
      }
    }

    while (1)
    {
      v25 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if (v25 >= v2)
      {
        break;
      }

      v24 = *(v21 + 8 * v25);
      ++v3;
      if (v24)
      {
        v3 = v25;
        goto LABEL_33;
      }
    }

    v98 = sub_1DD41859C(v100);
    v40 = *(v99 + 16);
    v42 = *(v40 + 64);
    v2 = v40 + 64;
    v41 = v42;
    v43 = 1 << *(*(v99 + 16) + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & v41;
    v3 = (v43 + 63) >> 6;
    v100 = *(v99 + 16);
    swift_bridgeObjectRetain_n();
    v46 = 0;
    v102 = MEMORY[0x1E69E7CC0];
    if (v45)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_82;
      }

      if (v47 >= v3)
      {
        break;
      }

      v45 = *(v2 + 8 * v47);
      ++v46;
      if (v45)
      {
        v46 = v47;
        do
        {
LABEL_46:
          v48 = __clz(__rbit64(v45)) | (v46 << 6);
          v49 = (v100[6] + 32 * v48);
          v50 = *v49;
          v51 = v49[1];
          v52 = v49[2];
          v53 = v49[3];
          v54 = (v100[7] + 40 * v48);
          v55 = *v54;
          v56 = v54[1];
          v58 = v54[2];
          v57 = v54[3];
          v59 = v54[4];
          v107[0] = v50;
          v107[1] = v51;
          v107[2] = v52;
          v107[3] = v53;
          v107[4] = v55;
          v107[5] = v56;
          v107[6] = v58;
          v107[7] = v57;
          v107[8] = v59;

          sub_1DD60C3A8(v107, &v107[4], &v103);
          memcpy(v108, v107, 0x48uLL);
          sub_1DD390754(v108, &qword_1ECCDFF08, &unk_1DD664C00);
          v61 = v103;
          v60 = v104;
          v62 = v105;
          if (v104)
          {
            v99 = v106;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DD3C1038();
              v102 = v67;
            }

            v63 = v102[2];
            if (v63 >= v102[3] >> 1)
            {
              sub_1DD3C1038();
              v102 = v68;
            }

            v64 = v102;
            v102[2] = v63 + 1;
            v65 = &v64[4 * v63];
            v65[4] = v61;
            v65[5] = v60;
            v66 = v99;
            v65[6] = v62;
            v65[7] = v66;
          }

          else
          {
            sub_1DD3AD738(v103, 0, v105, v106);
          }

          v45 &= v45 - 1;
        }

        while (v45);
      }
    }

    v69 = sub_1DD418F30();
    if (*(v98 + 16))
    {

      v70 = sub_1DD63F9D8();
      v71 = sub_1DD640368();

      v72 = v97;
      if (os_log_type_enabled(v70, v71))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v108[0] = v74;
        *v73 = 136315138;
        v75 = sub_1DD640278();
        v77 = sub_1DD39565C(v75, v76, v108);

        *(v73 + 4) = v77;
        _os_log_impl(&dword_1DD38D000, v70, v71, "[UCG] We have MeCard relationship matches, will filter out partial name matches: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        MEMORY[0x1E12B3DA0](v74, -1, -1);
        MEMORY[0x1E12B3DA0](v73, -1, -1);
      }

      v107[0] = MEMORY[0x1E69E7CC8];
      v2 = (v72 + 8);
      v78 = 1 << *(v72 + 32);
      v79 = -1;
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      v80 = v79 & v72[8];
      v3 = (v78 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v81 = 0;
      if (v80)
      {
        while (1)
        {
          v82 = v81;
LABEL_65:
          v83 = (v72[7] + 40 * (__clz(__rbit64(v80)) | (v82 << 6)));
          v84 = v83[1];
          v86 = v83[2];
          v85 = v83[3];
          v87 = v83[4];
          *&v108[0] = *v83;
          *(&v108[0] + 1) = v84;
          *&v108[1] = v86;
          *(&v108[1] + 1) = v85;
          *&v108[2] = v87;

          sub_1DD60C4A0(v107, v108, v98, v69);
          if (v101)
          {
            break;
          }

          v80 &= v80 - 1;

          v81 = v82;
          v72 = v97;
          if (!v80)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
        return result;
      }

LABEL_62:
      while (1)
      {
        v82 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v82 >= v3)
        {

          v12 = v107[0];
          swift_beginAccess();
          v109 = v12;
          goto LABEL_70;
        }

        v80 = *(v2 + 8 * v82);
        ++v81;
        if (v80)
        {
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
      continue;
    }

    break;
  }

  v12 = v97;
LABEL_70:

LABEL_71:
  v88 = sub_1DD63F9D8();
  v89 = sub_1DD640368();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 134217984;
    *(v90 + 4) = v12[2];
    _os_log_impl(&dword_1DD38D000, v88, v89, "[UCG] Consolidating %ld filtered match records into candidates...", v90, 0xCu);
    MEMORY[0x1E12B3DA0](v90, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v91);
  v96[2] = v110;

  v93 = sub_1DD6056DC(v92, sub_1DD626C50, v96);
  swift_bridgeObjectRelease_n();
  return v93;
}

uint64_t sub_1DD60C1AC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v3 + 56;
  v7 = v5 & *(v3 + 56);
  v8 = (v4 + 63) >> 6;
  while (v7)
  {
    v9 = v2;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if (!*(*(v3 + 48) + 48 * (v10 | (v9 << 6)) + 40))
    {
      v11 = 0;
      v12 = 1 << *(v3 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v3 + 56);
      v15 = (v12 + 63) >> 6;
      result = 1;
      while (v14)
      {
        v17 = v11;
LABEL_20:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        if (*(*(v3 + 48) + 48 * (v18 | (v17 << 6)) + 40) == 1)
        {
          return result;
        }
      }

      while (1)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_24;
        }

        if (v17 >= v15)
        {
          return 0;
        }

        v14 = *(v6 + 8 * v17);
        ++v11;
        if (v14)
        {
          v11 = v17;
          goto LABEL_20;
        }
      }
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 0;
    }

    v7 = *(v6 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DD60C2D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  while (v7)
  {
    v8 = v4;
LABEL_10:
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if (*(*(a3 + 48) + 48 * (v9 | (v8 << 6)) + 40) == 1)
    {

      return v3;
    }
  }

  while (1)
  {
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v8 >= ((v5 + 63) >> 6))
    {
      return 0;
    }

    v7 = *(a3 + 56 + 8 * v8);
    ++v4;
    if (v7)
    {
      v4 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1DD60C3A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = 0;
  v6 = *result;
  v5 = result[1];
  v8 = result[2];
  v7 = result[3];
  v9 = *(a2 + 32);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = v4;
LABEL_10:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    if (*(*(v9 + 48) + 48 * (v15 | (v14 << 6)) + 40) == 1)
    {

LABEL_13:
      *a3 = v6;
      a3[1] = v5;
      a3[2] = v8;
      a3[3] = v7;
      return result;
    }
  }

  while (1)
  {
    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
      v6 = 0;
      v5 = 0;
      v8 = 0;
      v7 = 0;
      goto LABEL_13;
    }

    v12 = *(v9 + 56 + 8 * v14);
    ++v4;
    if (v12)
    {
      v4 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD60C4A0(uint64_t *a1, __int128 *a2, uint64_t a3, void *a4)
{
  v7 = a2[1];
  v29 = *a2;
  v30 = v7;
  v8 = *(a2 + 4);
  v31 = v8;
  v32 = v8;

  sub_1DD626C58(&v29, &v26);

  sub_1DD3EB3D0(&v32, &v26, &qword_1ECCDFF10, &qword_1DD664C18);
  v9 = sub_1DD6248A8(v8, a3, &v29, a4);
  if (v9[2])
  {
    v10 = v29;
    v11 = v30;
    v26 = v29;
    v27 = v30;
    v28 = v9;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DD400444(&v26, v10, *(&v10 + 1), v11, *(&v11 + 1), isUniquelyReferenced_nonNull_native, v13, v14, *a1, v26, *(&v26 + 1), v27);

    *a1 = v25;
  }

  else
  {

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1EE16F068);
    sub_1DD626C58(&v29, &v26);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    sub_1DD626C90(&v29);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v26 = v19;
      *v18 = 136315138;
      v20 = v29;
      v21 = v30;

      v22 = sub_1DD603F2C(v20, *(&v20 + 1), v21, *(&v21 + 1));
      v24 = sub_1DD39565C(v22, v23, &v26);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_1DD38D000, v16, v17, "[UCG] Discarding match [%s] after relationship filtering - looks like this was a partial name match containing a relationship label", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }
  }
}

uint64_t sub_1DD60C724@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, const void *a3@<X2>, unint64_t a4@<X8>)
{
  v178 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v195 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  i = &v164 - v10;
  v196 = sub_1DD63D0F8();
  v179 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v170 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v174 = &v164 - v13;
  v194 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v194);
  v189 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v183);
  v16 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[3];
  v172 = a1[2];
  v173 = v17;
  v20 = *a2;
  v21 = a2[1];
  v22 = a2[3];
  v192 = a2[2];
  v193 = v20;
  v23 = a2[4];
  if (qword_1EE165FB0 == -1)
  {
    goto LABEL_2;
  }

LABEL_160:
  swift_once();
LABEL_2:
  v169 = a4;
  v24 = sub_1DD63F9F8();
  v25 = __swift_project_value_buffer(v24, qword_1EE16F068);

  v165 = v25;
  v26 = sub_1DD63F9D8();
  v27 = sub_1DD640368();
  v190 = v23;

  v175 = v18;

  a4 = v27;
  v28 = os_log_type_enabled(v26, v27);
  v180 = v19;
  if (v28)
  {
    v18 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v203[0] = v188;
    *v18 = 136315394;
    if (v19)
    {
      v204[0] = v173;
      v204[1] = v175;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1E12B2260](64, 0xE100000000000000);
      MEMORY[0x1E12B2260](v172, v19);

      v29 = v204[0];
      v30 = v204[1];
    }

    else
    {
      v30 = v175;

      v29 = v173;
    }

    v31 = sub_1DD39565C(v29, v30, v203);

    *(v18 + 4) = v31;
    *(v18 + 12) = 2080;
    v204[0] = v193;
    v204[1] = v21;
    v204[2] = v192;
    v204[3] = v22;
    v23 = v190;
    v204[4] = v190;

    v32 = sub_1DD63FE38();
    v22 = sub_1DD39565C(v32, v33, v203);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_1DD38D000, v26, a4, "[UCG] Peeking at matches for [%s]: %s", v18, 0x16u);
    v34 = v188;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v34, -1, -1);
    MEMORY[0x1E12B3DA0](v18, -1, -1);
  }

  else
  {

    v23 = v190;
  }

  v35 = 0;
  v36 = 1 << *(v23 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v23 + 56);
  v181 = v23 + 56;
  do
  {
    if (!v38)
    {
      while (1)
      {
        v39 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v39 >= ((v36 + 63) >> 6))
        {
          HIDWORD(v171) = 0;
          goto LABEL_20;
        }

        v38 = *(v23 + 56 + 8 * v39);
        ++v35;
        if (v38)
        {
          v35 = v39;
          goto LABEL_17;
        }
      }

LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v39 = v35;
LABEL_17:
    v40 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
  }

  while (*(*(v23 + 48) + 48 * (v40 | (v39 << 6)) + 40) == 2);
  HIDWORD(v171) = 1;
LABEL_20:
  swift_bridgeObjectRetain_n();
  v41 = sub_1DD624FE4(v23);
  v42 = v178;
  memcpy(v204, v178, sizeof(v204));
  sub_1DD3C9478(v178, v203);
  sub_1DD40ED6C(v204, v16);
  v43 = v175;

  *v16 = v173;
  *(v16 + 8) = v43;
  v44 = (v16 + *(v183 + 88));
  v45 = v180;

  *v44 = v172;
  v44[1] = v45;
  v46 = v189;
  sub_1DD43038C(v189);
  v46[v194[57]] = 1;
  memcpy(v204, v46 + 8, sizeof(v204));
  memcpy(v46 + 8, v42, 0x108uLL);
  sub_1DD3C9478(v42, v203);
  sub_1DD3C9580(v204);
  v22 = 0;
  v47 = 1 << *(v23 + 32);
  v202 = MEMORY[0x1E69E7CD0];
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v21 = v48 & *(v23 + 56);
  v49 = (v47 + 63) >> 6;
  v188 = v41;
  v176 = v41 + 56;
  v19 = v16;
  v184 = (v179 + 32);
  v166 = xmmword_1DD643F90;
  v191 = v16;
  v182 = v49;
  while (v21)
  {
LABEL_30:
    v52 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v53 = *(v23 + 48) + 48 * (v52 | (v22 << 6));
    v54 = *v53;
    v16 = *(v53 + 8);
    a4 = *(v53 + 16);
    v55 = *(v53 + 24);
    v56 = *(v53 + 32);
    v57 = *(v53 + 40);
    if (v57)
    {
      if (v57 == 1)
      {
        if (!*(*(v19 + 216) + 16))
        {
          v58 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC48, &qword_1DD664C10);
          v59 = swift_allocObject();
          *(v59 + 16) = v166;
          *(v59 + 64) = 0;
          *(v59 + 72) = 0xE000000000000000;
          *(v59 + 32) = 0;
          *(v59 + 40) = 0xE000000000000000;
          *(v59 + 48) = v58;
          *(v59 + 56) = v16;
          v19 = v191;

          v49 = v182;
          *(v19 + 216) = v59;
          v46 = v189;
        }

        v60 = v194;
        v46[v194[35]] = 1;
        v46[v60[36]] = a4 & 1;
        v46[v60[37]] = (a4 & 2) != 0;
        v46[338] = 1;
      }

      else if ((v171 & 0x100000000) == 0)
      {
        v65 = v194;
        *(v19 + *(v183 + 92)) = (v46[v194[53]] & 1) == 0;
        v46[v65[51]] = 1;
        *(v46 + 169) = 0;
        v66 = v188;
        v67 = 1 << *(v188 + 32);
        if (v67 < 64)
        {
          v68 = ~(-1 << v67);
        }

        else
        {
          v68 = -1;
        }

        v19 = v68 & *(v188 + 56);
        v192 = v55;
        v193 = v54;
        v185 = v56;
        v186 = v16;
        v177 = a4;
        sub_1DD57AE38(v54, v16, a4, v55, v56, 2);
        v16 = (v67 + 63) >> 6;

        v23 = 0;
        v69 = MEMORY[0x1E69E7CC0];
        while (v19)
        {
LABEL_48:
          v71 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v72 = *(v66 + 48) + 48 * (v71 | (v23 << 6));
          if (*(v72 + 40) == 2)
          {
            v73 = *(v72 + 24);
            v187 = *(v72 + 16);
            v18 = v73;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DD3BE2A4();
              v69 = v75;
            }

            a4 = *(v69 + 16);
            if (a4 >= *(v69 + 24) >> 1)
            {
              sub_1DD3BE2A4();
              v69 = v76;
            }

            *(v69 + 16) = a4 + 1;
            v74 = v69 + 16 * a4;
            v66 = v188;
            *(v74 + 32) = v187;
            *(v74 + 40) = v18;
          }
        }

        while (1)
        {
          v70 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_157;
          }

          if (v70 >= v16)
          {

            v16 = 0;
            v19 = *(v69 + 16);
            v77 = v69 + 40;
            v187 = MEMORY[0x1E69E7CC0];
            v168 = v69 + 40;
LABEL_55:
            a4 = v77 + 16 * v16;
            while (v19 != v16)
            {
              if (v16 >= *(v69 + 16))
              {
                goto LABEL_158;
              }

              v23 = v195;
              sub_1DD63D088();

              if (__swift_getEnumTagSinglePayload(v23, 1, v196) != 1)
              {
                v78 = v23;
                v23 = *v184;
                (*v184)(v170, v78, v196);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1DD3BED30();
                  v187 = v81;
                }

                v79 = *(v187 + 16);
                if (v79 >= *(v187 + 24) >> 1)
                {
                  sub_1DD3BED30();
                  v187 = v82;
                }

                ++v16;
                v80 = v187;
                *(v187 + 16) = v79 + 1;
                (v23)(v80 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v79, v170, v196);
                v77 = v168;
                goto LABEL_55;
              }

              sub_1DD390754(v23, &qword_1ECCDBAC8, &qword_1DD643E60);
              a4 += 16;
              ++v16;
            }

            v46 = v189;
            sub_1DD607C0C(v187);
            sub_1DD41B1C8(v193, v186, v177, v192, v185, 2);
            v23 = v190;
            v19 = v191;
            goto LABEL_103;
          }

          v19 = *(v176 + 8 * v70);
          ++v23;
          if (v19)
          {
            v23 = v70;
            goto LABEL_48;
          }
        }
      }
    }

    else
    {
      v192 = v55;
      v193 = v54;
      v61 = v46;
      if (!v180)
      {
        v64 = v56;

        goto LABEL_67;
      }

      if (v56)
      {
        v62 = v55;
        v63 = v19;
        v64 = v56;
        sub_1DD57AE38(v54, v16, a4, v55, v56, 0);

        v63[5] = v62;
        v63[6] = v64;

        v63[9] = 0;
        v63[10] = 0xE000000000000000;

        v63[7] = 0;
        v63[8] = 0xE000000000000000;

        v63[15] = 0;
        v63[16] = 0xE000000000000000;
LABEL_67:
        v18 = v64;
        goto LABEL_69;
      }

      v64 = 0;

      v18 = 0;
LABEL_69:
      v83 = (a4 & 0x20) != 0;
      v46 = v61;
      v61[333] = v83;
      v84 = &v61[v194[33]];
      v84[8] = v83;
      v84[10] = a4 & 1;
      v84[12] = (a4 & 2) != 0;
      v84[11] = (a4 & 4) != 0;
      v84[13] = (a4 & 8) != 0;
      v84[15] = (a4 & 0x10) != 0;

      v186 = v16;
      sub_1DD56CE00(v203, v193, v16, v85, v86, v87, v88, v89, v164, v165, v166, *(&v166 + 1), v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);

      *(v84 + 5) = v192;
      *(v84 + 6) = v64;
      v185 = v64;

      v46[338] = 1;
      if ((a4 & 0x40) != 0)
      {
        v46[336] = 1;
        v84[10] = 0;
      }

      v19 = v191;
      if ((a4 & 0x80) != 0)
      {
        v46[335] = 1;
      }

      v90 = v188;
      if (*(v188 + 16))
      {
        v177 = a4;
        v91 = v194;
        *(v19 + *(v183 + 92)) = (v46[v194[53]] & 1) == 0;
        v46[v91[51]] = 1;
        v46[339] = 0;
        v92 = 1 << *(v90 + 32);
        if (v92 < 64)
        {
          v93 = ~(-1 << v92);
        }

        else
        {
          v93 = -1;
        }

        v19 = v93 & *(v90 + 56);
        v16 = (v92 + 63) >> 6;

        v23 = 0;
        v95 = MEMORY[0x1E69E7CC0];
        while (v19)
        {
LABEL_83:
          v97 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v98 = *(v94 + 48) + 48 * (v97 | (v23 << 6));
          if (*(v98 + 40) == 2)
          {
            v18 = *(v98 + 16);
            v99 = *(v98 + 24);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v187 = v99;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1DD3BE2A4();
              v95 = v103;
            }

            a4 = *(v95 + 16);
            if (a4 >= *(v95 + 24) >> 1)
            {
              sub_1DD3BE2A4();
              v95 = v104;
            }

            *(v95 + 16) = a4 + 1;
            v101 = v95 + 16 * a4;
            v102 = v187;
            v94 = v188;
            *(v101 + 32) = v18;
            *(v101 + 40) = v102;
          }
        }

        while (1)
        {
          v96 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_154;
          }

          if (v96 >= v16)
          {

            v16 = 0;
            v19 = *(v95 + 16);
            v105 = v95 + 40;
            v187 = MEMORY[0x1E69E7CC0];
            v168 = v95 + 40;
LABEL_90:
            a4 = v105 + 16 * v16;
            while (v19 != v16)
            {
              if (v16 >= *(v95 + 16))
              {
                goto LABEL_156;
              }

              v23 = i;
              sub_1DD63D088();

              if (__swift_getEnumTagSinglePayload(v23, 1, v196) != 1)
              {
                v106 = v23;
                v23 = *v184;
                (*v184)(v174, v106, v196);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1DD3BED30();
                  v187 = v109;
                }

                v107 = *(v187 + 16);
                if (v107 >= *(v187 + 24) >> 1)
                {
                  sub_1DD3BED30();
                  v187 = v110;
                }

                ++v16;
                v108 = v187;
                *(v187 + 16) = v107 + 1;
                (v23)(v108 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v107, v174, v196);
                v105 = v168;
                goto LABEL_90;
              }

              sub_1DD390754(v23, &qword_1ECCDBAC8, &qword_1DD643E60);
              a4 += 16;
              ++v16;
            }

            v111 = v194;
            v46 = v189;
            sub_1DD607C0C(v187);
            sub_1DD41B1C8(v193, v186, v177, v192, v185, 0);
            v46[v111[54]] = 1;
            v19 = v191;
            goto LABEL_102;
          }

          v19 = *(v176 + 8 * v96);
          ++v23;
          if (v19)
          {
            v23 = v96;
            goto LABEL_83;
          }
        }
      }

      sub_1DD41B1C8(v193, v186, a4, v192, v185, 0);
LABEL_102:
      v23 = v190;
LABEL_103:
      v49 = v182;
    }
  }

  v50 = v181;
  while (1)
  {
    v51 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_153;
    }

    if (v51 >= v49)
    {
      break;
    }

    v21 = *(v181 + 8 * v51);
    ++v22;
    if (v21)
    {
      v22 = v51;
      goto LABEL_30;
    }
  }

  if (!*(v202 + 16))
  {
    goto LABEL_119;
  }

  v23 = v202 + 56;
  v112 = 1 << *(v202 + 32);
  v113 = -1;
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  a4 = v113 & *(v202 + 56);
  v16 = (v112 + 63) >> 6;

  v19 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  for (i = v114; a4; v114 = i)
  {
LABEL_112:
    v116 = (*(v114 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(a4)))));
    v18 = *v116;
    v117 = v116[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BE2A4();
      v22 = v120;
    }

    v118 = *(v22 + 16);
    v21 = v118 + 1;
    if (v118 >= *(v22 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v22 = v121;
    }

    a4 &= a4 - 1;
    *(v22 + 16) = v21;
    v119 = v22 + 16 * v118;
    *(v119 + 32) = v18;
    *(v119 + 40) = v117;
  }

  while (2)
  {
    v115 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_159;
    }

    if (v115 < v16)
    {
      a4 = *(v23 + 8 * v115);
      ++v19;
      if (!a4)
      {
        continue;
      }

      v19 = v115;
      goto LABEL_112;
    }

    break;
  }

  v203[0] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v122 = sub_1DD63FD58();
  v21 = v123;

  v22 = v189;
  v124 = &v189[v194[33]];

  *(v124 + 3) = v122;
  *(v124 + 4) = v21;
  v46 = v22;
  v23 = v190;
  v19 = v191;
  v50 = v181;
LABEL_119:
  v125 = &v46[v194[33]];
  if (v125[13] != 1 || (v125[9] & 1) != 0 || (v125[10] & 1) != 0 || (v125[11] & 1) != 0 || (v125[12] & 1) != 0)
  {
    v126 = 0;
  }

  else
  {
    v126 = v125[15] ^ 1;
  }

  v127 = 0;
  v125[14] = v126 & 1;
  v128 = 1 << *(v23 + 32);
  v129 = -1;
  if (v128 < 64)
  {
    v129 = ~(-1 << v128);
  }

  v130 = v129 & *(v23 + 56);
  v131 = (v128 + 63) >> 6;
  while (v130)
  {
    v132 = v127;
LABEL_134:
    v133 = __clz(__rbit64(v130));
    v130 &= v130 - 1;
    if (*(*(v23 + 48) + 48 * (v133 | (v132 << 6)) + 40) == 1)
    {
      v134 = v19;

      v135 = v169;
      goto LABEL_143;
    }
  }

  while (1)
  {
    v132 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
      goto LABEL_155;
    }

    if (v132 >= v131)
    {
      break;
    }

    v130 = *(v50 + 8 * v132);
    ++v127;
    if (v130)
    {
      v127 = v132;
      goto LABEL_134;
    }
  }

  v134 = v19;
  v136 = v46;

  v137 = v178;
  memcpy(v203, v178, 0x108uLL);
  if (sub_1DD41E198())
  {
    v135 = v169;
LABEL_138:
    v46 = v136;
    goto LABEL_143;
  }

  v138 = v137[20];
  v135 = v169;
  if ((v138 & 0x2000000000000000) != 0)
  {
    v139 = HIBYTE(v138) & 0xF;
  }

  else
  {
    v139 = v137[19] & 0xFFFFFFFFFFFFLL;
  }

  v46 = v136;
  if (!v139)
  {
    v142 = *(v178 + 23);
    if (v142)
    {
      v143 = v178;
      v144 = *(v178 + 22);
      memcpy(v203, v136 + 8, 0x108uLL);
      sub_1DD3C9580(v203);
      *(v136 + 1) = 0;
      *(v136 + 2) = 0xE000000000000000;
      v136[24] = 0;
      *(v136 + 6) = 0;
      *(v136 + 7) = 0xE000000000000000;
      *(v136 + 8) = 0;
      *(v136 + 9) = 0xE000000000000000;
      *(v136 + 10) = 0;
      *(v136 + 11) = 0xE000000000000000;
      *(v136 + 12) = 0;
      *(v136 + 13) = 0xE000000000000000;
      *(v136 + 14) = 0;
      *(v136 + 15) = 0xE000000000000000;
      *(v136 + 16) = 0;
      *(v136 + 17) = 0xE000000000000000;
      *(v136 + 18) = 0;
      *(v136 + 19) = 0xE000000000000000;
      *(v136 + 20) = 0;
      *(v136 + 21) = 0xE000000000000000;
      *(v136 + 13) = 0u;
      *(v136 + 14) = 0u;
      *(v136 + 11) = 0u;
      *(v136 + 12) = 0u;
      *(v136 + 30) = 0;
      *(v136 + 31) = MEMORY[0x1E69E7CC0];
      v136[256] = 1;
      *(v136 + 33) = 0;
      *(v136 + 4) = v144;
      *(v136 + 5) = v142;

      v136[336] = 0;
      v145 = v143[13];
      v205[0] = v143[12];
      v205[1] = v145;
      v206 = v143[14];
      v146 = v206;
      v147 = *(v136 + 25);
      v148 = *(v136 + 26);
      v149 = *(v136 + 27);
      *(v136 + 200) = v205[0];
      *(v136 + 216) = v145;
      *(v136 + 232) = v146;
      sub_1DD3EB3D0(v205, v200, &qword_1ECCDFED8, &unk_1DD664B90);
      v150 = v148;
      v151 = v175;
      sub_1DD3FAA54(v147, v150, v149);

      v152 = v180;

      v153 = sub_1DD63F9D8();
      v154 = sub_1DD640368();

      if (!os_log_type_enabled(v153, v154))
      {

        v134 = v191;
        goto LABEL_138;
      }

      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v201 = v156;
      *v155 = 136315394;
      if (v152)
      {
        v200[0] = v173;
        v200[1] = v151;
        swift_bridgeObjectRetain_n();

        MEMORY[0x1E12B2260](64, 0xE100000000000000);
        MEMORY[0x1E12B2260](v172, v152);

        v157 = v200[0];
        v151 = v200[1];
      }

      else
      {

        v157 = v173;
      }

      v158 = sub_1DD39565C(v157, v151, &v201);

      *(v155 + 4) = v158;
      *(v155 + 12) = 2080;
      swift_beginAccess();
      memcpy(v199, v136 + 8, sizeof(v199));
      memcpy(v198, v136 + 8, sizeof(v198));
      v159 = sub_1DD3C9478(v199, v200);
      v160 = ContactQuery.description.getter(v159);
      v162 = v161;
      memcpy(v200, v198, sizeof(v200));
      sub_1DD3C9580(v200);
      v163 = sub_1DD39565C(v160, v162, &v201);

      *(v155 + 14) = v163;
      _os_log_impl(&dword_1DD38D000, v153, v154, "[UCG] Note: we've re-written the originalQuery of the signals for %s to be a name query instead of a relationship one: %s", v155, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v156, -1, -1);
      MEMORY[0x1E12B3DA0](v155, -1, -1);

      v46 = v136;
      v134 = v191;
    }
  }

LABEL_143:
  sub_1DD6271B8(v134, v135);
  swift_beginAccess();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  sub_1DD6271B8(v46, v135 + *(v140 + 36));
  sub_1DD627210(v46, type metadata accessor for ContactResolver.SignalSet);
  return sub_1DD627210(v134, type metadata accessor for Contact);
}

uint64_t sub_1DD60DD28(char a1)
{
  if (!a1)
  {
    return 0x737961776C61;
  }

  if (a1 == 1)
  {
    return 0x6E49646E61436F6ELL;
  }

  return 1701736302;
}

unint64_t sub_1DD60DDA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD607064(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD60DDD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD60DD28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void static ContactRecall.search(config:locale:stringQuery:)()
{
  OUTLINED_FUNCTION_93();
  v54 = v2;
  v55 = v3;
  v49 = v4;
  v94 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF38, &unk_1DD664750);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_6_2();
  v8 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_82_3();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_123_0();
  v14 = type metadata accessor for StringTokenizer(v13);
  v15 = OUTLINED_FUNCTION_3(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v50 = v16;
  v17 = OUTLINED_FUNCTION_6_2();
  v18 = type metadata accessor for ContactResolverConfig(v17);
  v19 = OUTLINED_FUNCTION_3(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v23 setUseOutOfProcessMapperExclusively_];
  v53 = v23;
  v24 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  v92[3] = sub_1DD39638C(0, &qword_1EE1638B8, 0x1E695CE18);
  v92[4] = &off_1F58B1EB8;
  v92[0] = v24;
  v52 = sub_1DD60E488(0x64726143654DLL, 0xE600000000000000, sub_1DD60E90C);
  v25 = sub_1DD60E67C();
  v26 = [objc_opt_self() indexMatcher];
  v91[3] = sub_1DD39638C(0, &qword_1ECCDCFC0, 0x1E69CE410);
  v91[4] = &off_1F58C0818;
  v91[0] = v26;
  OUTLINED_FUNCTION_33_18();
  sub_1DD6271B8(v94, v22);
  v27 = *(v10 + 16);
  v27(v0, v49, v8);
  v28 = (v27)(v1, v0, v8);
  v29 = 1;
  if ((sub_1DD4F9BB8(v28) & 1) == 0)
  {
    v81[0] = sub_1DD63D118();
    v81[1] = v30;
    v56 = 24938;
    v57 = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    v29 = sub_1DD63FD48();
  }

  v31 = v29 & 1;
  v32 = v50;
  sub_1DD5E8D74(v1, v31, v50);
  (*(v10 + 8))(v0, v8);
  v89 = type metadata accessor for UCGStringTokenizer(0);
  v90 = &off_1F58C4140;
  __swift_allocate_boxed_opaque_existential_1(v88);
  v33 = OUTLINED_FUNCTION_8_75();
  sub_1DD627288(v33, v34);
  sub_1DD3C2388(v92, v87);
  memset(v85, 0, sizeof(v85));
  v86 = xmmword_1DD644510;
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  if (v25)
  {
    v35 = type metadata accessor for RelationshipLocalizer();
    v36 = &off_1F58C4130;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v82[2] = 0;
    v82[1] = 0;
  }

  v82[0] = v25;
  v82[3] = v35;
  v82[4] = v36;
  type metadata accessor for UnifiedContactGenerator(0);
  v37 = OUTLINED_FUNCTION_14();
  type metadata accessor for AsrPhoneticSequenceFetcher(v37);
  memset(v93, 0, 57);
  OUTLINED_FUNCTION_89_2();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = v89;
  v43 = v90;
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  (*(v45 + 16))(v8);
  v51 = v52;

  *&v48 = v85;
  *(&v48 + 1) = v83;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1DD62652C(v91, MEMORY[0x1E69E7CC0], v22, 0, v8, v93, v87, v52, v48, v82, 0, 0, 2, v0, v32, v42, v43);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
  *(swift_allocObject() + 16) = xmmword_1DD643F90;
  v81[0] = 0;
  v81[1] = 0xE000000000000000;
  LOBYTE(v81[2]) = 0;
  v81[3] = v54;
  v81[4] = v55;
  v81[5] = 0;
  v81[6] = 0xE000000000000000;
  v81[7] = 0;
  v81[8] = 0xE000000000000000;
  v81[9] = 0;
  v81[10] = 0xE000000000000000;
  v81[11] = 0;
  v81[12] = 0xE000000000000000;
  v81[13] = 0;
  v81[14] = 0xE000000000000000;
  v81[15] = 0;
  v81[16] = 0xE000000000000000;
  v81[17] = 0;
  v81[18] = 0xE000000000000000;
  v81[19] = 0;
  v81[20] = 0xE000000000000000;
  OUTLINED_FUNCTION_86_3(v81);
  v81[29] = 0;
  v81[30] = v46;
  LOBYTE(v81[31]) = 1;
  v81[32] = 0;
  memcpy((v47 + 32), v81, 0x108uLL);

  sub_1DD3C9478(v81, &v56);
  sub_1DD60FB88();

  swift_setDeallocating();
  sub_1DD46CBB4();
  v56 = 0;
  v57 = 0xE000000000000000;
  v58 = 0;
  v59 = v54;
  v60 = v55;
  v61 = 0;
  v62 = 0xE000000000000000;
  v63 = 0;
  v64 = 0xE000000000000000;
  v65 = 0;
  v66 = 0xE000000000000000;
  v67 = 0;
  v68 = 0xE000000000000000;
  v69 = 0;
  v70 = 0xE000000000000000;
  v71 = 0;
  v72 = 0xE000000000000000;
  v73 = 0;
  v74 = 0xE000000000000000;
  v75 = 0;
  v76 = 0xE000000000000000;
  OUTLINED_FUNCTION_86_3(&v56);
  v77 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  v79 = 1;
  v80 = 0;
  sub_1DD3C9580(&v56);
  __swift_destroy_boxed_opaque_existential_1(v92);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD60E868@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if (qword_1EE1660F0 != -1)
  {
    swift_once();
  }

  result = (*(v5 + 16))(qword_1EE16F080, v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD60E968@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v17 - v4);
  v6 = sub_1DD63CE68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (qword_1EE1659B8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_1EE16F038);
  sub_1DD3EB3D0(v13, v5, &qword_1ECCDCCA0, &qword_1DD64AED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    return swift_willThrowTypedImpl();
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC258, &qword_1DD645B18);
    swift_allocObject();
    sub_1DD608CD0(v9, sub_1DD582430);
    if (v1)
    {
      return (*(v7 + 8))(v12, v6);
    }

    else
    {
      (*(v7 + 8))(v12, v6);
      sub_1DD58244C(&v18);

      v15 = v18;
      if (v18)
      {
        type metadata accessor for RelationshipLocalizer();
        v16 = swift_allocObject();
        swift_allocObject();
        result = sub_1DD608E98(v15);
        *(v16 + 16) = result;
      }

      else
      {
        v16 = 0;
      }

      *a1 = v16;
    }
  }

  return result;
}

uint64_t sub_1DD60EC70()
{
  v1 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping;
  if (*(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping);
  }

  else
  {
    v2 = sub_1DD60ECD8(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DD60ECD8(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v4 = *MEMORY[0x1E695C3A8];
    v5 = v2;
    v6 = [v5 contactRelations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
    v7 = sub_1DD640118();

    v13 = MEMORY[0x1E69E7CC8];
    v8 = sub_1DD3CC020();
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        return v13;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E12B2C10](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      v1 = v10;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v12 = v10;
      sub_1DD60EEA4(&v13, &v12, a1);
    }

    __break(1u);
LABEL_15:
    __break(1u);

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);

    return sub_1DD63FC88();
  }

  return result;
}

id sub_1DD60EEA4(uint64_t *a1, id *a2, uint64_t a3)
{
  v73 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  *&v7 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v9 = v67 - v8;
  v10 = *a2;
  result = [*a2 label];
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = sub_1DD63FDD8();
  v15 = v14;

  v16 = [v10 value];
  v17 = [v16 name];

  v18 = sub_1DD63FDD8();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
  }

  v67[2] = v3;
  v71 = v13;
  v72 = v15;
  v22 = a3 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config;
  v23 = *(type metadata accessor for ContactResolverConfig(0) + 32);
  v24 = sub_1DD63D168();
  (*(*(v24 - 8) + 16))(v9, v22 + v23, v24);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v24);
  sub_1DD3B7F10();
  v25 = sub_1DD640648();
  v69 = v26;
  v70 = v25;
  sub_1DD390754(v9, &qword_1ECCDC3F0, &unk_1DD64AF50);
  v27 = [v10 value];
  v28 = [v27 name];

  v29 = sub_1DD63FDD8();
  v68 = v30;

  v31 = v73;
  swift_isUniquelyReferenced_nonNull_native();
  v71 = *v31;
  v32 = v71;
  v33 = sub_1DD3978DC();
  if (__OFADD__(*(v32 + 16), (v34 & 1) == 0))
  {
    __break(1u);
    goto LABEL_30;
  }

  v35 = v33;
  v36 = v34;
  v67[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC310, &qword_1DD646158);
  if (sub_1DD640A08())
  {
    v37 = sub_1DD3978DC();
    v39 = &selRef_setUnderlyingQueue_;
    if ((v36 & 1) != (v38 & 1))
    {
      goto LABEL_31;
    }

    v35 = v37;
  }

  else
  {
    v39 = &selRef_setUnderlyingQueue_;
  }

  v40 = v71;
  *v73 = v71;
  if ((v36 & 1) == 0)
  {
    sub_1DD400884(v35, v13, v15, MEMORY[0x1E69E7CC0], v40);
  }

  v41 = *(v40 + 56) + 8 * v35;
  sub_1DD3BDF34();
  v42 = *(*v41 + 16);
  sub_1DD3BE0F8(v42);
  v43 = *v41;
  *(v43 + 16) = v42 + 1;
  v44 = v43 + 16 * v42;
  v45 = v68;
  v46 = v69;
  *(v44 + 32) = v29;
  *(v44 + 40) = v45;
  if (v13 == v70 && v15 == v46)
  {
  }

  v48 = sub_1DD640CD8();

  if (v48)
  {
  }

  v49 = [v10 v39[24]];
  v50 = [v49 name];

  v51 = sub_1DD63FDD8();
  v53 = v52;

  v54 = v73;
  swift_isUniquelyReferenced_nonNull_native();
  v55 = *v54;
  v71 = v55;
  v56 = sub_1DD3978DC();
  v58 = v57;
  if (__OFADD__(*(v55 + 16), (v57 & 1) == 0))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v59 = v56;
  if (sub_1DD640A08())
  {
    v60 = sub_1DD3978DC();
    if ((v58 & 1) == (v61 & 1))
    {
      v59 = v60;
      goto LABEL_24;
    }

LABEL_31:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

LABEL_24:
  v62 = v71;
  *v73 = v71;
  if (v58)
  {
  }

  else
  {
    sub_1DD400884(v59, v70, v46, MEMORY[0x1E69E7CC0], v62);
  }

  v63 = *(v62 + 56) + 8 * v59;
  sub_1DD3BDF34();
  v64 = *(*v63 + 16);
  result = sub_1DD3BE0F8(v64);
  v65 = *v63;
  *(v65 + 16) = v64 + 1;
  v66 = v65 + 16 * v64;
  *(v66 + 32) = v51;
  *(v66 + 40) = v53;
  return result;
}

void sub_1DD60F388()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v89 = type metadata accessor for AsrPhoneticSequenceFetcher(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v86 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF38, &unk_1DD664750);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_2(v10);
  v90 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v91 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v85 = v13;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_0();
  v80 = v15;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  v19 = type metadata accessor for StringTokenizer(0);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v22 = OUTLINED_FUNCTION_14_2(v21);
  v23 = type metadata accessor for ContactResolverCache(v22);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v27 = v26 - v25;
  v28 = type metadata accessor for ContactResolverConfig(0);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  v32 = (v31 - v30);
  v84 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator;
  *(v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator) = 0;
  *(v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping) = 0;
  v33 = [objc_opt_self() indexMatcher];
  v1[5] = sub_1DD39638C(0, &qword_1ECCDCFC0, 0x1E69CE410);
  v1[6] = &off_1F58C0818;
  v1[2] = v33;
  sub_1DD3C2388(v5 + v23[8], (v1 + 7));
  sub_1DD6271B8(v3, v32);
  sub_1DD6271B8(v5, v27);
  v1[12] = sub_1DD3FB504(v32, v27);
  v34 = *(v5 + v23[11]);
  v1[13] = v34;
  sub_1DD6271B8(v3, v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config);
  sub_1DD3FA84C(v5 + v23[25], v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusSuggestionHandler);
  v35 = v5 + v23[29];
  v36 = *v35;
  LOBYTE(v35) = v35[1];
  v37 = v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_ucgTrialFactors;
  *v37 = v36;
  v37[1] = v35;
  *(v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusTrialFactors) = *(v5 + v23[26]);
  v38 = (v5 + v23[27]);
  v39 = v38[1];
  v97[0] = *v38;
  v97[1] = v39;
  v41 = *v38;
  v40 = v38[1];
  *v98 = v38[2];
  *&v98[9] = *(v38 + 41);
  v42 = (v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors);
  *v42 = v41;
  v42[1] = v40;
  v42[2] = v38[2];
  *(v42 + 41) = *(v38 + 41);
  v43 = *(v29 + 40);
  v44 = v91 + 16;
  v45 = *(v91 + 16);
  v88 = v3;
  v45(v18, v3 + v43, v90);
  v46 = v80;
  v83 = v44;
  v82 = v45;
  (v45)();
  v47 = v34;
  v48 = sub_1DD3FAD78(v97, &v94);
  if (sub_1DD4F9BB8(v48))
  {
    v49 = 1;
  }

  else
  {
    *&v94 = sub_1DD63D118();
    *(&v94 + 1) = v50;
    v92 = 24938;
    v93 = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    v49 = sub_1DD63FD48();
  }

  sub_1DD5E8D74(v46, v49 & 1, v81);
  v52 = v91 + 8;
  v51 = *(v91 + 8);
  v53 = OUTLINED_FUNCTION_73();
  v91 = v52;
  v51(v53);
  v95 = type metadata accessor for UCGStringTokenizer(0);
  v96 = &off_1F58C4140;
  __swift_allocate_boxed_opaque_existential_1(&v94);
  v54 = OUTLINED_FUNCTION_8_75();
  sub_1DD627288(v54, v55);
  sub_1DD3AA4A8(&v94, v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer);
  sub_1DD3EB3D0(v5 + v23[30], v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_triggerLogger, &qword_1ECCDC250, &qword_1DD645B10);
  if (*v5)
  {
    sub_1DD58244C(&v94);
    v56 = v84;
    if (v94)
    {
      v57 = type metadata accessor for RelationshipLocalizer();
      OUTLINED_FUNCTION_57();
      v59 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC258, &qword_1DD645B18);
      swift_allocObject();

      *(v59 + 16) = sub_1DD608E98(v60);

      v58 = &off_1F58C4130;
    }

    else
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
    }
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v56 = v84;
  }

  v61 = (v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_relationshipLocalizer);
  *v61 = v59;
  v61[1] = 0;
  v61[2] = 0;
  v61[3] = v57;
  v61[4] = v58;
  v62 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3VectorDbApi;
  *(v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3VectorDbApi) = *(v5 + v23[22]);
  v63 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3EmbedderApi;
  *(v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3EmbedderApi) = *(v5 + v23[21]);
  *(v1 + v56) = 0;

  if (*v42 == 1)
  {
    v64 = *(v1 + v62);
    if (v64 && (v65 = *(v1 + v63)) != 0)
    {
      type metadata accessor for E3Orchestrator();
      OUTLINED_FUNCTION_18_9();
      v66 = swift_allocObject();
      *(v66 + 16) = v64;
      *(v66 + 24) = v65;
      *(v1 + v56) = v66;
    }

    else
    {
      type metadata accessor for EuclidVectorDb();
      OUTLINED_FUNCTION_18_9();
      swift_allocObject();
      v67 = sub_1DD4B97D4();
      type metadata accessor for EuclidEmbeddingApi();
      OUTLINED_FUNCTION_57();
      v68 = swift_allocObject();
      sub_1DD4BA174();
      OUTLINED_FUNCTION_14();
      type metadata accessor for E3Orchestrator();
      OUTLINED_FUNCTION_18_9();
      v69 = swift_allocObject();
      *(v69 + 16) = v67;
      *(v69 + 24) = v68;
      *(v1 + v56) = v69;
    }
  }

  v70 = v85;
  v71 = v90;
  v72 = v82;
  v82(v85, v5 + v23[18], v90);
  v73 = v86;
  v72(v86, v70, v71);
  sub_1DD63F488();
  v74 = sub_1DD63F468();
  if (v74)
  {
    sub_1DD63F448();

    v74 = sub_1DD63F748();
  }

  v75 = OUTLINED_FUNCTION_73();
  v51(v75);
  v76 = v89;
  *(v73 + *(v89 + 20)) = v74;
  OUTLINED_FUNCTION_34_19();
  v77 = v87;
  sub_1DD627288(v73, v87);
  OUTLINED_FUNCTION_13_50();
  sub_1DD627210(v88, v78);
  sub_1DD627210(v5, type metadata accessor for ContactResolverCache);
  __swift_storeEnumTagSinglePayload(v77, 0, 1, v76);
  sub_1DD3EB4B8(v77, v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_phoneSequenceFetcher, &qword_1ECCDCF38, &unk_1DD664750);
  OUTLINED_FUNCTION_17();
}

void sub_1DD60FB88()
{
  OUTLINED_FUNCTION_93();
  v204 = v4;
  v188 = v5;
  v189 = v0;
  sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v183 = v7;
  v184 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v181 = v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_3();
  v178 = v10;
  v11 = OUTLINED_FUNCTION_6_2();
  v176 = type metadata accessor for StringTokenizer(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v177 = v13;
  v14 = OUTLINED_FUNCTION_6_2();
  v175 = type metadata accessor for ContactResolverConfig(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v182 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_3();
  v186 = v19;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v200 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  v190 = v22;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_0();
  v185 = v24;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_0();
  v194 = v26;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_0();
  v197 = v28;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_16_3();
  v196 = v30;
  v31 = OUTLINED_FUNCTION_6_2();
  v32 = type metadata accessor for Signpost(v31);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  if (qword_1EE166460 != -1)
  {
LABEL_78:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v34 = qword_1EE16F0C0;
  v35 = v1 + v32[5];
  *v35 = "UCG.GenerateCandidateGroups";
  *(v35 + 1) = 27;
  v35[16] = 2;
  v36 = v34;
  sub_1DD63F9B8();
  *(v1 + v32[6]) = v36;
  v37 = v36;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1DD643F90;
  sub_1DD6408F8();
  OUTLINED_FUNCTION_95_1();
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1DD392BD8();
  *(v38 + 32) = v2;
  *(v38 + 40) = v3;
  OUTLINED_FUNCTION_22();
  v179 = v37;
  v180 = v1;
  OUTLINED_FUNCTION_70_3();
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v39 = sub_1DD63F9F8();
  v40 = __swift_project_value_buffer(v39, qword_1EE16F068);
  v41 = v204;

  v187 = v40;
  v42 = sub_1DD63F9D8();
  sub_1DD640368();
  v43 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v43, v44))
  {
    OUTLINED_FUNCTION_18_1();
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = v41[2];

    OUTLINED_FUNCTION_78_3();
    _os_log_impl(v46, v47, v48, v49, v50, v51);
    v52 = OUTLINED_FUNCTION_12_49();
    MEMORY[0x1E12B3DA0](v52);
  }

  else
  {
  }

  v32 = &unk_1DD664BF0;
  sub_1DD3EB3D0(v189 + 56, v207, &qword_1ECCDCF48, &unk_1DD664BF0);
  v53 = *(&v207[1] + 1);
  sub_1DD390754(v207, &qword_1ECCDCF48, &unk_1DD664BF0);
  if (!v53)
  {
    v54 = sub_1DD63F9D8();
    v32 = sub_1DD640368();
    v55 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_28();
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1DD38D000, v54, v32, "[UCG] Warning: ContactStore is nil, will not be able to hydrate matches", v57, 2u);
      v58 = OUTLINED_FUNCTION_12_49();
      MEMORY[0x1E12B3DA0](v58);
    }
  }

  v59 = v41[2];
  v60 = MEMORY[0x1E69E7CC0];
  if (v59)
  {
    v209 = MEMORY[0x1E69E7CC0];
    v61 = OUTLINED_FUNCTION_60_7();
    sub_1DD42B404(v61, v59, 0);
    v62 = 0;
    v60 = v209;
    v63 = v41 + 4;
    v64 = v196;
    while (1)
    {
      v65 = v60;
      OUTLINED_FUNCTION_133(v208);
      OUTLINED_FUNCTION_133(v207 + 8);
      *&v207[0] = v62;
      sub_1DD3C9478(v208, v206);
      v66 = v205;
      v67 = sub_1DD610AE8(v62, v207 + 8, v188, v189);
      v205 = v66;
      if (v66)
      {
        break;
      }

      v68 = v67;
      memcpy(v206, v207, sizeof(v206));
      sub_1DD390754(v206, &qword_1ECCDFF40, &qword_1DD664C58);
      v60 = v65;
      v210 = v65;
      v70 = *(v65 + 16);
      v69 = *(v65 + 24);
      v32 = (v70 + 1);
      if (v70 >= v69 >> 1)
      {
        v71 = OUTLINED_FUNCTION_1_0(v69);
        sub_1DD42B404(v71, v70 + 1, 1);
        v64 = v196;
        v60 = v210;
      }

      ++v62;
      *(v60 + 16) = v32;
      *(v60 + 8 * v70 + 32) = v68;
      v63 += 33;
      if (v59 == v62)
      {
        goto LABEL_19;
      }
    }

    memcpy(v206, v207, sizeof(v206));
    sub_1DD390754(v206, &qword_1ECCDFF40, &qword_1DD664C58);

    sub_1DD6404C8();
    v157 = v180;
    OUTLINED_FUNCTION_70_3();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_1_133();
    sub_1DD627210(v157, v158);
  }

  else
  {
    v64 = v196;
LABEL_19:
    v72 = 0;
    v193 = *(v60 + 16);
    v2 = MEMORY[0x1E69E7CC0];
    v191 = v60;
    v192 = v60 + 32;
    v1 = &qword_1ECCDBBE8;
    v3 = &qword_1DD644470;
    v203 = MEMORY[0x1E69E7CC0];
    while (v72 != v193)
    {
      if (v72 >= *(v60 + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v73 = *(v192 + 8 * v72);
      *&v198 = v72 + 1;
      v202 = *(v73 + 16);

      v74 = 0;
      v199 = MEMORY[0x1E69E7CC0];
      v201 = v73;
      while (v202 != v74)
      {
        if (v74 >= *(v73 + 16))
        {
          __break(1u);
          goto LABEL_66;
        }

        v75 = (*(v200 + 80) + 32) & ~*(v200 + 80);
        v76 = *(v200 + 72);
        v77 = sub_1DD3EB3D0(v73 + v75 + v76 * v74, v64, &qword_1ECCDBBE8, &qword_1DD644470);
        v204 = &v174;
        MEMORY[0x1EEE9AC00](v77);

        v78 = v205;
        v2 = sub_1DD450800();
        v205 = v78;

        if (v2)
        {
          sub_1DD390754(v64, &qword_1ECCDBBE8, &qword_1DD644470);
          ++v74;
          v73 = v201;
        }

        else
        {
          sub_1DD3EB4B8(v64, v197, &qword_1ECCDBBE8, &qword_1DD644470);
          v2 = v199;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v207[0] = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v80 = OUTLINED_FUNCTION_26_2();
            sub_1DD42B4F8(v80, v81, v82);
            v64 = v196;
            v2 = *&v207[0];
          }

          v73 = v201;
          v84 = *(v2 + 16);
          v83 = *(v2 + 24);
          v85 = v84 + 1;
          if (v84 >= v83 >> 1)
          {
            v86 = OUTLINED_FUNCTION_1_0(v83);
            v88 = v87;
            v204 = v89;
            sub_1DD42B4F8(v86, v87, 1);
            v85 = v88;
            v84 = v204;
            v64 = v196;
            v2 = *&v207[0];
          }

          ++v74;
          *(v2 + 16) = v85;
          v199 = v2;
          sub_1DD3EB4B8(v197, v2 + v75 + v84 * v76, &qword_1ECCDBBE8, &qword_1DD644470);
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = OUTLINED_FUNCTION_26_2();
        sub_1DD3BF6DC(v93, v94, v95, v96);
        v203 = v97;
      }

      v32 = v199;
      v91 = *(v203 + 16);
      v90 = *(v203 + 24);
      if (v91 >= v90 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v90);
        OUTLINED_FUNCTION_90();
        sub_1DD3BF6DC(v98, v99, v100, v203);
        v203 = v101;
      }

      v92 = v203;
      *(v203 + 16) = v91 + 1;
      *(v92 + 8 * v91 + 32) = v32;
      v64 = v196;
      v60 = v191;
      v72 = v198;
    }

    v3 = sub_1DD3FC100(v203, *(v189 + 96));

    v102 = 0;
    v103 = v3[2];
    v104 = MEMORY[0x1E69E7CC0];
    while (v103 != v102)
    {
      if (v102 >= v3[2])
      {
        goto LABEL_73;
      }

      v32 = v3[v102 + 4];
      v105 = *(v32 + 2);
      v1 = *(v104 + 16);
      v2 = v1 + v105;
      if (__OFADD__(v1, v105))
      {
        goto LABEL_74;
      }

      v106 = swift_isUniquelyReferenced_nonNull_native();
      if (!v106 || v2 > *(v104 + 24) >> 1)
      {
        if (v1 <= v2)
        {
          v107 = v1 + v105;
        }

        else
        {
          v107 = v1;
        }

        sub_1DD3BEC44(v106, v107, 1, v104);
        v104 = v108;
      }

      if (*(v32 + 2))
      {
        OUTLINED_FUNCTION_51_10();
        if (v110 < v105)
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_72_3(v109);
        swift_arrayInitWithCopy();

        if (v105)
        {
          v111 = *(v104 + 16);
          v112 = __OFADD__(v111, v105);
          v113 = v111 + v105;
          if (v112)
          {
            goto LABEL_77;
          }

          *(v104 + 16) = v113;
        }
      }

      else
      {

        if (v105)
        {
          goto LABEL_75;
        }
      }

      ++v102;
    }

    v114 = *(v104 + 16);
    if (v114)
    {
      v196 = v104;
      v197 = v3;
      OUTLINED_FUNCTION_18_3();
      v116 = v104 + v115;
      v202 = *(v117 + 72);
      v199 = (v190 + 368);
      v118 = &qword_1ECCDBBE8;
      v119 = &qword_1DD644470;
      *&v120 = 136315650;
      v198 = v120;
      v121 = v194;
      do
      {
        v204 = v116;
        v122 = v118;
        v123 = v119;
        sub_1DD3EB3D0(v116, v121, v118, v119);
        type metadata accessor for ContactResolver.SignalSet(0);
        v124 = v186;
        OUTLINED_FUNCTION_22_19();
        sub_1DD3EB3D0(v125, v126, v127, v128);
        sub_1DD63F148();
        v129 = OUTLINED_FUNCTION_115_0();
        if (__swift_getEnumTagSinglePayload(v129, 1, v103) == 1)
        {
          OUTLINED_FUNCTION_28_2();
          sub_1DD390754(v130, v131, v132);
          v133 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v133 = sub_1DD63F0E8();
          (*(*(v103 - 8) + 8))(v124, v103);
        }

        v134 = v185;
        v135 = v194;
        v136 = OUTLINED_FUNCTION_96_1();
        sub_1DD3EB3D0(v136, v137, v122, v123);
        v103 = v190;
        sub_1DD3EB3D0(v135, v190, v122, v123);

        v138 = sub_1DD63F9D8();
        LODWORD(v135) = sub_1DD640368();

        LODWORD(v203) = v135;
        v139 = v135;
        v140 = v138;
        if (os_log_type_enabled(v138, v139))
        {
          OUTLINED_FUNCTION_17_0();
          v103 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_6();
          v200 = swift_slowAlloc();
          v201 = v114;
          *&v207[0] = v200;
          *v103 = v198;
          v141 = v123;
          v143 = *v134;
          v142 = v134[1];

          sub_1DD390754(v134, v122, v141);
          v144 = sub_1DD39565C(v143, v142, v207);

          *(v103 + 4) = v144;
          *(v103 + 12) = 2048;
          v145 = *(v199 + *(v195 + 36));
          sub_1DD390754(v190, v122, v141);
          *(v103 + 14) = v145;
          *(v103 + 22) = 2080;
          v146 = MEMORY[0x1E12B2430](v133, MEMORY[0x1E69E7290]);
          v148 = v147;

          v149 = v146;
          v114 = v201;
          v150 = sub_1DD39565C(v149, v148, v207);

          *(v103 + 24) = v150;
          _os_log_impl(&dword_1DD38D000, v140, v203, "[UCG] History for candidate [%s]: recencyRank=%ld history=%s", v103, 0x20u);
          swift_arrayDestroy();
          v151 = OUTLINED_FUNCTION_8_6();
          MEMORY[0x1E12B3DA0](v151);
          v152 = OUTLINED_FUNCTION_12_49();
          MEMORY[0x1E12B3DA0](v152);

          v121 = v194;
          v153 = OUTLINED_FUNCTION_19();
          sub_1DD390754(v153, v154, &qword_1DD644470);
          v118 = v122;
          v119 = &qword_1DD644470;
        }

        else
        {
          sub_1DD390754(v103, v122, v123);

          sub_1DD390754(v134, v122, v123);
          v121 = v194;
          v155 = OUTLINED_FUNCTION_19();
          sub_1DD390754(v155, v156, v123);
          v118 = v122;
          v119 = v123;
        }

        v116 = v204 + v202;
        --v114;
      }

      while (v114);

      v3 = v197;
    }

    else
    {
LABEL_66:
    }

    OUTLINED_FUNCTION_33_18();
    v159 = v188;
    sub_1DD6271B8(v188, v182);
    v160 = *(v183 + 16);
    v161 = v159 + *(v175 + 32);
    v162 = v178;
    v163 = v184;
    v160(v178, v161, v184);
    v164 = (v160)(v181, v162, v163);
    if (sub_1DD4F9BB8(v164))
    {
      v165 = 1;
    }

    else
    {
      *&v207[0] = sub_1DD63D118();
      *(&v207[0] + 1) = v166;
      v206[0] = 24938;
      v206[1] = 0xE200000000000000;
      sub_1DD3B52B8();
      sub_1DD3B530C();
      v165 = sub_1DD63FD48();
    }

    sub_1DD5E8D74(v181, v165 & 1, v177);
    (*(v183 + 8))(v162, v184);
    *(&v207[1] + 1) = v176;
    *&v207[2] = &off_1F58C2FE8;
    __swift_allocate_boxed_opaque_existential_1(v207);
    v167 = OUTLINED_FUNCTION_8_75();
    sub_1DD627288(v167, v168);
    type metadata accessor for CandidateContactDeduplicator(0);
    v169 = swift_allocObject();
    sub_1DD627288(v182, v169 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_config);
    sub_1DD3AA4A8(v207, v169 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_tokenizer);
    sub_1DD3E831C(v3);
    OUTLINED_FUNCTION_124();

    swift_setDeallocating();
    OUTLINED_FUNCTION_13_50();
    sub_1DD627210(v169 + v170, v171);
    __swift_destroy_boxed_opaque_existential_1((v169 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_tokenizer));
    swift_deallocClassInstance();
    sub_1DD6404C8();
    v172 = v180;
    OUTLINED_FUNCTION_70_3();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_1_133();
    sub_1DD627210(v172, v173);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD610AE8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v637 = a4;
  v638 = a3;
  v647 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  MEMORY[0x1EEE9AC00](v5);
  v642 = (&v619 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v650 = &v619 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v619 - v10;
  v641 = sub_1DD63CD18();
  v633 = *(v641 - 8);
  MEMORY[0x1EEE9AC00](v641);
  v640 = &v619 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v626 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v626);
  v629 = (&v619 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v659 = *(v657 - 8);
  MEMORY[0x1EEE9AC00](v657);
  v645 = &v619 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v644 = &v619 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v643 = &v619 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v635 = &v619 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v656 = &v619 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v632 = &v619 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v631 = (&v619 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v624 = &v619 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v619 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v628 = &v619 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v623 = &v619 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v625 = (&v619 - v37);
  MEMORY[0x1EEE9AC00](v38);
  *&v639 = &v619 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v648 = (&v619 - v41);
  MEMORY[0x1EEE9AC00](v42);
  *&v627 = &v619 - v43;
  MEMORY[0x1EEE9AC00](v44);
  *&v630 = &v619 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v619 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v655 = (&v619 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v636 = &v619 - v52;
  MEMORY[0x1EEE9AC00](v53);
  *&v653 = &v619 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v646 = &v619 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v634 = &v619 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v654 = &v619 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v619 - v62;
  memcpy(v665, a2, 0x108uLL);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v64 = sub_1DD63F9F8();
  v65 = __swift_project_value_buffer(v64, qword_1EE16F068);
  sub_1DD3C9478(v665, v664);
  v652 = v65;
  v66 = sub_1DD63F9D8();
  LOBYTE(v65) = sub_1DD640368();
  sub_1DD3C9580(v665);
  v67 = v65;
  v68 = os_log_type_enabled(v66, v65);
  v651 = v5;
  v649 = v11;
  v622 = v31;
  if (v68)
  {
    v69 = v48;
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v663[0] = v71;
    *v70 = 134218242;
    *(v70 + 4) = v647;
    *(v70 + 12) = 2080;
    memcpy(v660, v665, sizeof(v660));
    v72 = sub_1DD3C9478(v665, v664);
    v73 = ContactQuery.description.getter(v72);
    v75 = v74;
    memcpy(v664, v660, sizeof(v664));
    sub_1DD3C9580(v664);
    v76 = sub_1DD39565C(v73, v75, v663);

    *(v70 + 14) = v76;
    _os_log_impl(&dword_1DD38D000, v66, v67, "[UCG] Beginning search for query [%ld]: %s", v70, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x1E12B3DA0](v71, -1, -1);
    v77 = v70;
    v48 = v69;
    MEMORY[0x1E12B3DA0](v77, -1, -1);
  }

  v78 = swift_allocObject();
  memcpy(v664, v665, sizeof(v664));
  sub_1DD614FFC();
  MEMORY[0x1EEE9AC00](v79);
  v80 = v637;
  v81 = v658;
  v82 = sub_1DD5834F8();
  v658 = v81;
  if (v81)
  {

    swift_deallocUninitializedObject();
    return v80;
  }

  v83 = v82;

  *(v78 + 16) = v83;
  memcpy(v664, v665, sizeof(v664));

  sub_1DD61E944();
  v85 = v84;

  *(v78 + 16) = v85;

  sub_1DD6068D8(sub_1DD6178EC, 0, sub_1DD6178F8, 0, v85);
  v87 = v86;

  v647 = v78;
  *(v78 + 16) = v87;

  v88 = 0;
  v89 = *(v87 + 16);
  v621 = v48;
  while (v89 != v88)
  {
    v90 = *(v87 + 16);
    if (v88 >= v90)
    {
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    sub_1DD3EB3D0(v87 + ((*(v659 + 80) + 32) & ~*(v659 + 80)) + *(v659 + 72) * v88++, v63, &qword_1ECCDBBE8, &qword_1DD644470);
    v91 = &v63[*(v657 + 36)];
    LODWORD(v91) = v91[*(type metadata accessor for ContactResolver.SignalSet(0) + 140)];
    sub_1DD390754(v63, &qword_1ECCDBBE8, &qword_1DD644470);
    if (v91 == 1)
    {

      v92 = v647;
      goto LABEL_24;
    }
  }

  v93 = *(v647 + 16);
  v94 = *(v93 + 16);

  v95 = 0;
  v620 = MEMORY[0x1E69E7CC0];
  while (v94 != v95)
  {
    v90 = *(v93 + 16);
    if (v95 >= v90)
    {
      goto LABEL_188;
    }

    v96 = (*(v659 + 80) + 32) & ~*(v659 + 80);
    v97 = *(v659 + 72);
    v98 = v654;
    sub_1DD3EB3D0(v93 + v96 + v97 * v95, v654, &qword_1ECCDBBE8, &qword_1DD644470);
    v99 = v658;
    v100 = sub_1DD618094(v98);
    if (v99)
    {

      sub_1DD390754(v654, &qword_1ECCDBBE8, &qword_1DD644470);

      __break(1u);
      return result;
    }

    v658 = 0;
    if (v100)
    {
      sub_1DD3EB4B8(v654, v634, &qword_1ECCDBBE8, &qword_1DD644470);
      v101 = v620;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v664[0] = v101;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42B4F8(0, *(v101 + 16) + 1, 1);
        v101 = v664[0];
      }

      v104 = *(v101 + 16);
      v103 = *(v101 + 24);
      v105 = v104 + 1;
      if (v104 >= v103 >> 1)
      {
        v619 = *(v101 + 16);
        v620 = v104 + 1;
        sub_1DD42B4F8(v103 > 1, v104 + 1, 1);
        v104 = v619;
        v105 = v620;
        v101 = v664[0];
      }

      ++v95;
      *(v101 + 16) = v105;
      v620 = v101;
      sub_1DD3EB4B8(v634, v101 + v96 + v104 * v97, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    else
    {
      sub_1DD390754(v654, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v95;
    }
  }

  v92 = v647;
  *(v647 + 16) = v620;

  v48 = v621;
LABEL_24:
  v106 = *(v92 + 16);
  v107 = *(v106 + 16);

  v108 = 0;
  while (v107 != v108)
  {
    v90 = *(v106 + 16);
    if (v108 >= v90)
    {
      goto LABEL_189;
    }

    v109 = v646;
    sub_1DD3EB3D0(v106 + ((*(v659 + 80) + 32) & ~*(v659 + 80)) + *(v659 + 72) * v108++, v646, &qword_1ECCDBBE8, &qword_1DD644470);
    v110 = v109 + *(v657 + 36);
    LODWORD(v110) = *(v110 + *(type metadata accessor for ContactResolver.SignalSet(0) + 140));
    sub_1DD390754(v109, &qword_1ECCDBBE8, &qword_1DD644470);
    if (v110 == 1)
    {

      v111 = v647;
      goto LABEL_58;
    }
  }

  v112 = *(v647 + 16);
  v113 = *(v112 + 16);

  v114 = 0;
  v646 = MEMORY[0x1E69E7CC0];
  while (v113 != v114)
  {
    v90 = *(v112 + 16);
    if (v114 >= v90)
    {
      goto LABEL_190;
    }

    v115 = (*(v659 + 80) + 32) & ~*(v659 + 80);
    v116 = *(v659 + 72);
    v117 = v653;
    sub_1DD3EB3D0(v112 + v115 + v116 * v114, v653, &qword_1ECCDBBE8, &qword_1DD644470);
    v118 = v117 + *(v657 + 36);
    if (*(v118 + 336) != 1 || *(v118 + *(type metadata accessor for ContactResolver.SignalSet(0) + 204)) == 1)
    {
      sub_1DD3EB4B8(v653, v636, &qword_1ECCDBBE8, &qword_1DD644470);
      v119 = v646;
      v120 = swift_isUniquelyReferenced_nonNull_native();
      v664[0] = v119;
      if ((v120 & 1) == 0)
      {
        sub_1DD42B4F8(0, *(v119 + 16) + 1, 1);
        v119 = v664[0];
      }

      v122 = *(v119 + 16);
      v121 = *(v119 + 24);
      v123 = (v122 + 1);
      if (v122 >= v121 >> 1)
      {
        v654 = v122 + 1;
        v646 = v122;
        sub_1DD42B4F8(v121 > 1, v122 + 1, 1);
        v123 = v654;
        v122 = v646;
        v119 = v664[0];
      }

      ++v114;
      *(v119 + 16) = v123;
      v646 = v119;
      sub_1DD3EB4B8(v636, v119 + v115 + v122 * v116, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    else
    {
      sub_1DD390754(v653, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v114;
    }
  }

  if (*(v646 + 16))
  {
    v124 = *(v647 + 16);
    v125 = *(v124 + 16);
    v126 = MEMORY[0x1E69E7CC0];
    if (v125)
    {
      v664[0] = MEMORY[0x1E69E7CC0];

      sub_1DD42A2D4(0, v125, 0, v127, v128, v129, v130);
      v126 = v664[0];
      v131 = *(v659 + 80);
      *&v653 = v124;
      v132 = v124 + ((v131 + 32) & ~v131);
      v654 = *(v659 + 72);
      do
      {
        v133 = v655;
        sub_1DD3EB3D0(v132, v655, &qword_1ECCDBBE8, &qword_1DD644470);
        isa = v133->isa;
        v135 = v133[1].isa;

        sub_1DD390754(v133, &qword_1ECCDBBE8, &qword_1DD644470);
        v664[0] = v126;
        v141 = *(v126 + 16);
        v140 = *(v126 + 24);
        if (v141 >= v140 >> 1)
        {
          sub_1DD42A2D4(v140 > 1, v141 + 1, 1, v136, v137, v138, v139);
          v126 = v664[0];
        }

        *(v126 + 16) = v141 + 1;
        v142 = v126 + 16 * v141;
        *(v142 + 32) = isa;
        *(v142 + 40) = v135;
        v132 += v654;
        --v125;
      }

      while (v125);
    }

    v143 = sub_1DD41859C(v126);
    v148 = v143;
    v149 = v646;
    v150 = *(v646 + 16);
    v151 = MEMORY[0x1E69E7CC0];
    if (v150)
    {
      *&v653 = v143;
      v664[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v150, 0, v144, v145, v146, v147);
      v151 = v664[0];
      v152 = v149 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
      v654 = *(v659 + 72);
      do
      {
        v153 = v655;
        sub_1DD3EB3D0(v152, v655, &qword_1ECCDBBE8, &qword_1DD644470);
        v154 = v153->isa;
        v155 = v153[1].isa;

        sub_1DD390754(v153, &qword_1ECCDBBE8, &qword_1DD644470);
        v664[0] = v151;
        v161 = *(v151 + 16);
        v160 = *(v151 + 24);
        if (v161 >= v160 >> 1)
        {
          sub_1DD42A2D4(v160 > 1, v161 + 1, 1, v156, v157, v158, v159);
          v151 = v664[0];
        }

        *(v151 + 16) = v161 + 1;
        v162 = v151 + 16 * v161;
        *(v162 + 32) = v154;
        *(v162 + 40) = v155;
        v152 += v654;
        --v150;
      }

      while (v150);
      v148 = v653;
    }

    v163 = sub_1DD625880(v151, v148);

    v164 = swift_allocObject();
    *(v164 + 16) = v163;
    v165 = swift_allocObject();
    *(v165 + 16) = sub_1DD627328;
    *(v165 + 24) = v164;

    v166 = sub_1DD63F9D8();
    v167 = sub_1DD640368();
    v168 = swift_allocObject();
    *(v168 + 16) = 32;
    v169 = swift_allocObject();
    *(v169 + 16) = 8;
    v170 = swift_allocObject();
    *(v170 + 16) = sub_1DD627AD8;
    *(v170 + 24) = v165;
    v171 = swift_allocObject();
    *(v171 + 16) = sub_1DD3FAEA4;
    *(v171 + 24) = v170;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v172 = swift_allocObject();
    sub_1DD3AE030(v172, 3);
    *v173 = sub_1DD3FAEC8;
    v173[1] = v168;
    v173[2] = sub_1DD3FAEC8;
    v173[3] = v169;
    v173[4] = sub_1DD3FAE9C;
    v173[5] = v171;

    v174 = os_log_type_enabled(v166, v167);
    v48 = v621;
    if (v174)
    {
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v664[0] = v176;
      *v175 = 136315138;
      v177 = sub_1DD640278();
      v179 = v178;

      v180 = sub_1DD39565C(v177, v179, v664);

      *(v175 + 4) = v180;
      _os_log_impl(&dword_1DD38D000, v166, v167, "[UCG] There are non-hypocorism matches. Discarding hypocorism candidate(s): %s", v175, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v176);
      MEMORY[0x1E12B3DA0](v176, -1, -1);
      MEMORY[0x1E12B3DA0](v175, -1, -1);
    }

    else
    {
    }

    v111 = v647;
    *(v647 + 16) = v646;
  }

  else
  {

    v111 = v647;
    v48 = v621;
  }

LABEL_58:
  v181 = v111;
  v182 = *(v111 + 16);
  v183 = *(v182 + 16);

  v184 = 0;
  while (v183 != v184)
  {
    v90 = *(v182 + 16);
    if (v184 >= v90)
    {
      goto LABEL_191;
    }

    sub_1DD3EB3D0(v182 + ((*(v659 + 80) + 32) & ~*(v659 + 80)) + *(v659 + 72) * v184++, v48, &qword_1ECCDBBE8, &qword_1DD644470);
    v185 = &v48[*(v657 + 36)];
    LODWORD(v185) = v185[*(type metadata accessor for ContactResolver.SignalSet(0) + 140)];
    sub_1DD390754(v48, &qword_1ECCDBBE8, &qword_1DD644470);
    if (v185 == 1)
    {
      goto LABEL_127;
    }
  }

  v186 = *(v181 + 16);
  v187 = *(v186 + 16);

  v188 = 0;
  *&v653 = MEMORY[0x1E69E7CC0];
  v189 = v630;
  while (v187 != v188)
  {
    v90 = *(v186 + 16);
    if (v188 >= v90)
    {
      goto LABEL_192;
    }

    v190 = (*(v659 + 80) + 32) & ~*(v659 + 80);
    v191 = *(v659 + 72);
    sub_1DD3EB3D0(v186 + v190 + v191 * v188, v189, &qword_1ECCDBBE8, &qword_1DD644470);
    v192 = v189 + *(v657 + 36);
    if (*(v192 + 333) == 1 && *(v192 + 334) == 1)
    {
      sub_1DD3EB4B8(v189, v627, &qword_1ECCDBBE8, &qword_1DD644470);
      v193 = swift_isUniquelyReferenced_nonNull_native();
      v194 = v653;
      v664[0] = v653;
      if ((v193 & 1) == 0)
      {
        sub_1DD42B4F8(0, *(v653 + 16) + 1, 1);
        v189 = v630;
        v194 = v664[0];
      }

      v196 = *(v194 + 16);
      v195 = *(v194 + 24);
      v197 = (v196 + 1);
      if (v196 >= v195 >> 1)
      {
        v654 = v196 + 1;
        *&v653 = v196;
        sub_1DD42B4F8(v195 > 1, v196 + 1, 1);
        v197 = v654;
        v196 = v653;
        v189 = v630;
        v194 = v664[0];
      }

      ++v188;
      *(v194 + 16) = v197;
      *&v653 = v194;
      sub_1DD3EB4B8(v627, v194 + v190 + v196 * v191, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    else
    {
      sub_1DD390754(v189, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v188;
    }
  }

  v198 = v653;
  v199 = *(v653 + 16);
  if (v199)
  {
    v664[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42A174(v199);
    v200 = v198 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
    v654 = *(v659 + 72);
    do
    {
      v201 = v655;
      sub_1DD3EB3D0(v200, v655, &qword_1ECCDBBE8, &qword_1DD644470);
      v202 = v201->isa;
      v203 = v201[1].isa;

      sub_1DD390754(v201, &qword_1ECCDBBE8, &qword_1DD644470);
      v204 = v664[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD42A2D4(0, *(v204 + 16) + 1, 1, v205, v206, v207, v208);
        v204 = v664[0];
      }

      v210 = *(v204 + 16);
      v209 = *(v204 + 24);
      if (v210 >= v209 >> 1)
      {
        sub_1DD42A2D4(v209 > 1, v210 + 1, 1, v205, v206, v207, v208);
        v204 = v664[0];
      }

      *(v204 + 16) = v210 + 1;
      v211 = v204 + 16 * v210;
      *(v211 + 32) = v202;
      *(v211 + 40) = v203;
      v200 += v654;
      --v199;
    }

    while (v199);
  }

  else
  {

    v204 = MEMORY[0x1E69E7CC0];
  }

  v212 = sub_1DD41859C(v204);
  v181 = v647;
  if (!*(v212 + 16))
  {
LABEL_127:

    v289 = *(v181 + 16);

    sub_1DD6205E0();
    v291 = v290;

    *(v181 + 16) = v291;

    if (*(v637 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors) != 1)
    {
      goto LABEL_251;
    }

    v292 = *(v637 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator);
    if (!v292)
    {
      goto LABEL_251;
    }

    v654 = v637 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors;
    v293 = qword_1EE166460;
    *&v653 = v292;

    if (v293 != -1)
    {
      goto LABEL_312;
    }

    while (1)
    {
      v294 = qword_1EE16F0C0;
      v295 = v626;
      v296 = v629;
      v297 = v629 + *(v626 + 20);
      *v297 = "ContactResolver.UCG.ASRE3";
      *(v297 + 1) = 25;
      v297[16] = 2;
      v298 = v294;
      sub_1DD63F9B8();
      *(v296 + *(v295 + 24)) = v298;
      v299 = v298;
      sub_1DD6404D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
      v300 = swift_allocObject();
      *(v300 + 16) = xmmword_1DD643F90;
      v301 = sub_1DD6408F8();
      v303 = v302;
      *(v300 + 56) = MEMORY[0x1E69E6158];
      *(v300 + 64) = sub_1DD392BD8();
      *(v300 + 32) = v301;
      *(v300 + 40) = v303;
      v636 = v299;
      sub_1DD63F998();

      v304 = v665[3];
      v305 = v665[4];
      v306 = v665[4] & 0x2000000000000000;
      v307 = HIBYTE(v665[4]) & 0xFLL;
      v308 = v665[3] & 0xFFFFFFFFFFFFLL;
      if ((v665[4] & 0x2000000000000000) != 0)
      {
        v309 = HIBYTE(v665[4]) & 0xFLL;
      }

      else
      {
        v309 = v665[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v309)
      {
        v304 = v665[7];
        v305 = v665[8];
        v306 = v665[8] & 0x2000000000000000;
        v307 = HIBYTE(v665[8]) & 0xFLL;
        v308 = v665[7] & 0xFFFFFFFFFFFFLL;
        if (!((v665[8] & 0x2000000000000000) != 0 ? HIBYTE(v665[8]) & 0xFLL : v665[7] & 0xFFFFFFFFFFFFLL))
        {
          v304 = v665[11];
          v305 = v665[12];
          v306 = v665[12] & 0x2000000000000000;
          v307 = HIBYTE(v665[12]) & 0xFLL;
          v308 = v665[11] & 0xFFFFFFFFFFFFLL;
        }
      }

      v181 = v647;

      if (v306)
      {
        v311 = v307;
      }

      else
      {
        v311 = v308;
      }

      if (!v311)
      {
        goto LABEL_249;
      }

      v664[0] = v304;
      v664[1] = v305;
      v660[0] = 31868;
      v660[1] = 0xE200000000000000;
      sub_1DD3B7F10();
      if (sub_1DD6406D8())
      {
        v664[0] = v304;
        v664[1] = v305;
        v312 = sub_1DD6406E8();

        v313 = v312[2];
        if (v313)
        {
          v664[0] = MEMORY[0x1E69E7CC0];
          sub_1DD42A174(v313);
          v314 = v664[0];
          v648 = v312;
          v315 = v312 + 7;
          do
          {
            v317 = *(v315 - 3);
            v316 = *(v315 - 2);
            v318 = *(v315 - 1);
            v319 = *v315;

            v320 = MEMORY[0x1E12B2190](v317, v316, v318, v319);
            v322 = v321;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DD42A2D4(0, *(v314 + 16) + 1, 1, v323, v324, v325, v326);
              v314 = v664[0];
            }

            v328 = *(v314 + 16);
            v327 = *(v314 + 24);
            if (v328 >= v327 >> 1)
            {
              sub_1DD42A2D4(v327 > 1, v328 + 1, 1, v323, v324, v325, v326);
              v314 = v664[0];
            }

            *(v314 + 16) = v328 + 1;
            v329 = v314 + 16 * v328;
            *(v329 + 32) = v320;
            *(v329 + 40) = v322;
            v315 += 4;
            --v313;
          }

          while (v313);

          v181 = v647;
        }

        else
        {

          v314 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
        v330 = swift_allocObject();
        v314 = sub_1DD3AE030(v330, 1);
        *v331 = v304;
        v331[1] = v305;
      }

      v332 = *(v654 + 8);

      v333 = sub_1DD607064(v332);
      if (v333 == 3)
      {
        goto LABEL_249;
      }

      v334 = v333;
      if ((sub_1DD6070B0(v333) & 1) == 0)
      {
        break;
      }

      v80 = v637;
      v335 = sub_1DD61884C(v314);

      memcpy(v664, v665, sizeof(v664));
      v336 = v658;
      v337 = sub_1DD618B58(v335, v664);
      v658 = v336;
      if (v336)
      {

        goto LABEL_159;
      }

      v349 = v337;
      *&v639 = v335;
      v350 = sub_1DD63F9D8();
      v351 = sub_1DD640368();
      if (os_log_type_enabled(v350, v351))
      {
        v352 = swift_slowAlloc();
        *v352 = 0;
        _os_log_impl(&dword_1DD38D000, v350, v351, "[UCG][ASR-E3] Candidates:", v352, 2u);
        MEMORY[0x1E12B3DA0](v352, -1, -1);
      }

      v648 = v349;
      v354 = v628;
      v646 = v349[2];
      if (v646)
      {
        v355 = v648 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
        v356 = *(v659 + 72);
        *&v630 = v633 + 1;
        *&v353 = 136315138;
        v627 = v353;
        v357 = v646;
        v634 = v356;
        do
        {
          sub_1DD3EB3D0(v355, v354, &qword_1ECCDBBE8, &qword_1DD644470);
          v358 = sub_1DD63F9D8();
          v359 = sub_1DD640368();
          if (os_log_type_enabled(v358, v359))
          {
            v360 = swift_slowAlloc();
            v361 = swift_slowAlloc();
            v654 = v361;
            v664[0] = v361;
            *v360 = v627;
            v362 = v640;
            Contact.nameComponents.getter(v361);
            v363 = sub_1DD63CCF8();
            v365 = v364;
            (*v630)(v362, v641);
            sub_1DD390754(v628, &qword_1ECCDBBE8, &qword_1DD644470);
            v366 = sub_1DD39565C(v363, v365, v664);
            v356 = v634;

            *(v360 + 4) = v366;
            _os_log_impl(&dword_1DD38D000, v358, v359, "%s", v360, 0xCu);
            v367 = v654;
            __swift_destroy_boxed_opaque_existential_1(v654);
            MEMORY[0x1E12B3DA0](v367, -1, -1);
            v368 = v360;
            v354 = v628;
            MEMORY[0x1E12B3DA0](v368, -1, -1);
          }

          else
          {

            sub_1DD390754(v354, &qword_1ECCDBBE8, &qword_1DD644470);
          }

          v355 += v356;
          --v357;
        }

        while (v357);
      }

      v369 = *(v647 + 16);
      v370 = *(v369 + 16);
      v90 = MEMORY[0x1E69E7CC0];
      if (v370)
      {
        v664[0] = MEMORY[0x1E69E7CC0];

        sub_1DD42A174(v370);
        v371 = *(v659 + 80);
        *&v630 = v369;
        v372 = v369 + ((v371 + 32) & ~v371);
        v634 = *(v659 + 72);
        v373 = v664[0];
        v374 = v625;
        do
        {
          v375 = v655;
          sub_1DD3EB3D0(v372, v655, &qword_1ECCDBBE8, &qword_1DD644470);
          v376 = v375[1];
          v654 = *v375;

          sub_1DD390754(v375, &qword_1ECCDBBE8, &qword_1DD644470);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD42A2D4(0, *(v373 + 16) + 1, 1, v377, v378, v379, v380);
            v374 = v625;
            v373 = v664[0];
          }

          v382 = *(v373 + 16);
          v381 = *(v373 + 24);
          v383 = v373;
          if (v382 >= v381 >> 1)
          {
            sub_1DD42A2D4(v381 > 1, v382 + 1, 1, v377, v378, v379, v380);
            v374 = v625;
            v383 = v664[0];
          }

          v383[2].isa = (v382 + 1);
          v384 = &v383[2 * v382];
          v384[4].isa = v654;
          v384[5].isa = v376;
          v372 += v634;
          --v370;
          v373 = v383;
        }

        while (v370);
        v655 = v383;
      }

      else
      {
LABEL_193:
        v655 = v90;
        v374 = v625;
      }

      v389 = 0;
      v634 = MEMORY[0x1E69E7CC0];
      while (v646 != v389)
      {
        v390 = v648;
        sub_1DD408C00();
        v391 = (*(v659 + 80) + 32) & ~*(v659 + 80);
        v392 = *(v659 + 72);
        v393 = sub_1DD3EB3D0(v390 + v391 + v392 * v389, v374, &qword_1ECCDBBE8, &qword_1DD644470);
        v394 = v374[1];
        v664[0] = *v374;
        v664[1] = v394;
        MEMORY[0x1EEE9AC00](v393);
        v395 = v658;
        v396 = sub_1DD450388();
        v658 = v395;
        if (v396)
        {
          sub_1DD390754(v374, &qword_1ECCDBBE8, &qword_1DD644470);
          ++v389;
        }

        else
        {
          sub_1DD3EB4B8(v374, v623, &qword_1ECCDBBE8, &qword_1DD644470);
          v397 = v634;
          v398 = swift_isUniquelyReferenced_nonNull_native();
          v660[0] = v397;
          if ((v398 & 1) == 0)
          {
            sub_1DD42B4F8(0, *(v397 + 16) + 1, 1);
            v374 = v625;
            v397 = v660[0];
          }

          v400 = *(v397 + 16);
          v399 = *(v397 + 24);
          v401 = (v400 + 1);
          if (v400 >= v399 >> 1)
          {
            v402 = (v400 + 1);
            v654 = v400;
            sub_1DD42B4F8(v399 > 1, v400 + 1, 1);
            v401 = v402;
            v400 = v654;
            v374 = v625;
            v397 = v660[0];
          }

          ++v389;
          *(v397 + 16) = v401;
          v634 = v397;
          sub_1DD3EB4B8(v623, v397 + v391 + v400 * v392, &qword_1ECCDBBE8, &qword_1DD644470);
        }
      }

      v403 = 0;
      v654 = *(v639 + 16);
      v404 = v639 + 64;
      v648 = MEMORY[0x1E69E7CC0];
      v646 = v639 + 64;
LABEL_204:
      v405 = (v404 + 40 * v403);
      for (i = v403; ; i = (i + 1))
      {
        if (v654 == i)
        {

          v419 = v634;

          sub_1DD60793C(v420);
          v421 = swift_allocObject();
          *(v421 + 16) = v419;

          v422 = sub_1DD63F9D8();
          v423 = sub_1DD640368();
          v424 = swift_allocObject();
          *(v424 + 16) = 0;
          v425 = swift_allocObject();
          *(v425 + 16) = 8;
          v426 = swift_allocObject();
          *(v426 + 16) = sub_1DD627314;
          *(v426 + 24) = v421;
          v427 = swift_allocObject();
          *(v427 + 16) = sub_1DD627AFC;
          *(v427 + 24) = v426;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
          v428 = swift_allocObject();
          sub_1DD3AE030(v428, 3);
          *v429 = sub_1DD3FAEC8;
          v429[1] = v424;
          v429[2] = sub_1DD3FAEC8;
          v429[3] = v425;
          v429[4] = sub_1DD627A7C;
          v429[5] = v427;

          if (os_log_type_enabled(v422, v423))
          {
            v430 = swift_slowAlloc();
            *v430 = 134217984;
            v431 = v423;
            v432 = *(v419 + 16);

            *(v430 + 4) = v432;

            _os_log_impl(&dword_1DD38D000, v422, v431, "[UCG][ASR-E3] Generated new (%ld) candidates from Euclid match and appending it in CRR since triggering condition is set to always", v430, 0xCu);
            MEMORY[0x1E12B3DA0](v430, -1, -1);
          }

          else
          {
          }

          sub_1DD618464();

          goto LABEL_218;
        }

        v407 = sub_1DD408C00();
        v403 = (&i->isa + 1);
        if (__OFADD__(i, 1))
        {
          break;
        }

        v409 = *(v405 - 3);
        v408 = *(v405 - 2);
        v410 = *v405;
        v411 = *(v405 - 2);
        v412 = *(v405 - 4);
        v664[0] = v409;
        v664[1] = v408;
        MEMORY[0x1EEE9AC00](v407);

        v413 = v658;
        v414 = sub_1DD450388();
        v658 = v413;
        if (!v414)
        {
          v415 = v648;
          v416 = swift_isUniquelyReferenced_nonNull_native();
          v660[0] = v415;
          if ((v416 & 1) == 0)
          {
            sub_1DD42B4BC();
            v415 = v660[0];
          }

          v417 = v415[2];
          if (v417 >= v415[3] >> 1)
          {
            sub_1DD42B4BC();
            v415 = v660[0];
          }

          v415[2] = v417 + 1;
          v648 = v415;
          v418 = &v415[5 * v417];
          v418[4] = v412;
          v418[5] = v409;
          v418[6] = v408;
          *(v418 + 14) = v411;
          v418[8] = v410;
          v404 = v646;
          goto LABEL_204;
        }

        v405 += 5;
      }

      __break(1u);
LABEL_312:
      swift_once();
    }

    if (sub_1DD607F98(v334))
    {
      swift_retain_n();
      v338 = sub_1DD63F9D8();
      v339 = sub_1DD640368();
      v340 = swift_allocObject();
      *(v340 + 16) = 0;
      v341 = swift_allocObject();
      *(v341 + 16) = 8;
      v342 = swift_allocObject();
      *(v342 + 16) = sub_1DD62730C;
      *(v342 + 24) = v181;
      v343 = swift_allocObject();
      *(v343 + 16) = sub_1DD627AFC;
      *(v343 + 24) = v342;
      v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
      v344 = swift_allocObject();
      sub_1DD3AE030(v344, 3);
      *v345 = sub_1DD3FAEC8;
      v345[1] = v340;
      v345[2] = sub_1DD3FAEC8;
      v345[3] = v341;
      v345[4] = sub_1DD627A7C;
      v345[5] = v343;
      v181 = v647;

      if (os_log_type_enabled(v338, v339))
      {
        v346 = swift_slowAlloc();
        *v346 = 134217984;
        swift_beginAccess();
        v347 = *(*(v181 + 16) + 16);

        *(v346 + 4) = v347;

        _os_log_impl(&dword_1DD38D000, v338, v339, "[UCG][ASR-E3] Candidate count to CRR pre ASR-E3: %ld", v346, 0xCu);
        MEMORY[0x1E12B3DA0](v346, -1, -1);
      }

      else
      {
      }

      v385 = v622;
      swift_beginAccess();
      if (*(*(v181 + 16) + 16))
      {
        goto LABEL_249;
      }

      v80 = v637;
      v386 = sub_1DD61884C(v314);

      memcpy(v664, v665, sizeof(v664));
      v387 = v658;
      v388 = sub_1DD618B58(v386, v664);
      v658 = v387;
      if (!v387)
      {
        v465 = v388;
        v626 = v386;
        v466 = sub_1DD63F9D8();
        v467 = sub_1DD640368();
        if (os_log_type_enabled(v466, v467))
        {
          v468 = swift_slowAlloc();
          *v468 = 0;
          _os_log_impl(&dword_1DD38D000, v466, v467, "[UCG][ASR-E3] Candidates:", v468, 2u);
          MEMORY[0x1E12B3DA0](v468, -1, -1);
        }

        *&v627 = v465;
        v470 = *(v465 + 16);
        if (v470)
        {
          v471 = v627 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
          v472 = *(v659 + 72);
          v634 = &v633[1];
          *&v469 = 136315138;
          v630 = v469;
          *&v639 = v472;
          do
          {
            sub_1DD3EB3D0(v471, v385, &qword_1ECCDBBE8, &qword_1DD644470);
            v473 = sub_1DD63F9D8();
            v474 = sub_1DD640368();
            if (os_log_type_enabled(v473, v474))
            {
              v475 = swift_slowAlloc();
              v648 = v475;
              v476 = swift_slowAlloc();
              v654 = v473;
              v655 = v476;
              v664[0] = v476;
              *v475 = v630;
              v477 = v640;
              Contact.nameComponents.getter(v476);
              v478 = sub_1DD63CCF8();
              LODWORD(v646) = v474;
              v479 = v385;
              v481 = v480;
              v482 = v477;
              v472 = v639;
              (*v634)(v482, v641);
              sub_1DD390754(v479, &qword_1ECCDBBE8, &qword_1DD644470);
              v483 = sub_1DD39565C(v478, v481, v664);

              v484 = v648;
              *(v648 + 4) = v483;
              v485 = v654;
              v486 = v484;
              _os_log_impl(&dword_1DD38D000, v654, v646, "%s", v484, 0xCu);
              v487 = v655;
              __swift_destroy_boxed_opaque_existential_1(v655);
              v488 = v487;
              v385 = v479;
              MEMORY[0x1E12B3DA0](v488, -1, -1);
              MEMORY[0x1E12B3DA0](v486, -1, -1);
            }

            else
            {

              sub_1DD390754(v385, &qword_1ECCDBBE8, &qword_1DD644470);
            }

            v471 += v472;
            --v470;
          }

          while (v470);
        }

        v489 = v627;
        *(v647 + 16) = v627;

        v490 = swift_allocObject();
        *(v490 + 16) = v489;

        v289 = sub_1DD63F9D8();
        v491 = sub_1DD640368();
        v492 = swift_allocObject();
        *(v492 + 16) = 0;
        v493 = swift_allocObject();
        *(v493 + 16) = 8;
        v494 = swift_allocObject();
        *(v494 + 16) = sub_1DD627AB0;
        *(v494 + 24) = v490;
        v495 = swift_allocObject();
        *(v495 + 16) = sub_1DD627AFC;
        *(v495 + 24) = v494;
        v496 = swift_allocObject();
        sub_1DD3AE030(v496, 3);
        *v497 = sub_1DD3FAEC8;
        v497[1] = v492;
        v497[2] = sub_1DD3FAEC8;
        v497[3] = v493;
        v497[4] = sub_1DD627A7C;
        v497[5] = v495;

        if (os_log_type_enabled(v289, v491))
        {
          v498 = swift_slowAlloc();
          *v498 = 134217984;
          v499 = *(v489 + 16);

          *(v498 + 4) = v499;

          _os_log_impl(&dword_1DD38D000, v289, v491, "[UCG][ASR-E3] Generated (%ld) candidates from Euclid match and appending it in CRR since triggering condition is set to noCandidatesInCrr", v498, 0xCu);
          MEMORY[0x1E12B3DA0](v498, -1, -1);

          goto LABEL_310;
        }

        goto LABEL_309;
      }

      sub_1DD627210(v629, type metadata accessor for Signpost);
    }

    else
    {
      if ((sub_1DD60801C(v334) & 1) == 0)
      {
        goto LABEL_249;
      }

      v80 = v637;
      v213 = sub_1DD61884C(v314);

      memcpy(v664, v665, sizeof(v664));
      v348 = v658;
      v214 = sub_1DD618B58(v213, v664);
      v658 = v348;
      if (!v348)
      {
        goto LABEL_220;
      }

LABEL_159:
      sub_1DD627210(v629, type metadata accessor for Signpost);
    }

    return v80;
  }

  v213 = *(v647 + 16);
  *&v653 = *(v213 + 16);

  v215 = 0;
  v646 = MEMORY[0x1E69E7CC0];
  v636 = v213;
LABEL_85:
  v216 = v215;
  while (1)
  {
    if (v216 == v653)
    {

      v234 = *(v181 + 16);
      v235 = *(v234 + 16);
      v236 = MEMORY[0x1E69E7CC0];
      if (v235)
      {
        v664[0] = MEMORY[0x1E69E7CC0];

        sub_1DD42A174(v235);
        v237 = *(v659 + 80);
        *&v653 = v234;
        v238 = v234 + ((v237 + 32) & ~v237);
        v654 = *(v659 + 72);
        v236 = v664[0];
        do
        {
          v239 = v655;
          sub_1DD3EB3D0(v238, v655, &qword_1ECCDBBE8, &qword_1DD644470);
          v240 = v239->isa;
          v241 = v239[1].isa;

          sub_1DD390754(v239, &qword_1ECCDBBE8, &qword_1DD644470);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD42A2D4(0, *(v236 + 16) + 1, 1, v242, v243, v244, v245);
            v236 = v664[0];
          }

          v247 = *(v236 + 16);
          v246 = *(v236 + 24);
          if (v247 >= v246 >> 1)
          {
            sub_1DD42A2D4(v246 > 1, v247 + 1, 1, v242, v243, v244, v245);
            v236 = v664[0];
          }

          *(v236 + 16) = v247 + 1;
          v248 = v236 + 16 * v247;
          *(v248 + 32) = v240;
          *(v248 + 40) = v241;
          v238 += v654;
          --v235;
        }

        while (v235);
      }

      v249 = sub_1DD41859C(v236);
      v250 = v249;
      v251 = v646;
      v252 = *(v646 + 16);
      v253 = MEMORY[0x1E69E7CC0];
      if (v252)
      {
        *&v653 = v249;
        v664[0] = MEMORY[0x1E69E7CC0];
        sub_1DD42A174(v252);
        v254 = v251 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
        v654 = *(v659 + 72);
        do
        {
          v255 = v655;
          sub_1DD3EB3D0(v254, v655, &qword_1ECCDBBE8, &qword_1DD644470);
          v256 = v255->isa;
          v257 = v255[1].isa;

          sub_1DD390754(v255, &qword_1ECCDBBE8, &qword_1DD644470);
          v253 = v664[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD42A2D4(0, *(v253 + 16) + 1, 1, v258, v259, v260, v261);
            v253 = v664[0];
          }

          v263 = *(v253 + 16);
          v262 = *(v253 + 24);
          if (v263 >= v262 >> 1)
          {
            sub_1DD42A2D4(v262 > 1, v263 + 1, 1, v258, v259, v260, v261);
            v253 = v664[0];
          }

          *(v253 + 16) = v263 + 1;
          v264 = v253 + 16 * v263;
          *(v264 + 32) = v256;
          *(v264 + 40) = v257;
          v254 += v654;
          --v252;
        }

        while (v252);
        v250 = v653;
      }

      v265 = sub_1DD625880(v253, v250);

      v266 = swift_allocObject();
      v267 = v646;
      *(v266 + 16) = v646;
      v268 = swift_allocObject();
      *(v268 + 16) = v265;
      v269 = swift_allocObject();
      *(v269 + 16) = sub_1DD627AAC;
      *(v269 + 24) = v268;
      v646 = v267;
      swift_retain_n();
      *&v653 = v265;

      v648 = sub_1DD63F9D8();
      LODWORD(v654) = sub_1DD640368();
      *&v639 = swift_allocObject();
      *(v639 + 16) = 0;
      v270 = swift_allocObject();
      *(v270 + 16) = 8;
      v271 = swift_allocObject();
      *(v271 + 16) = sub_1DD627AB0;
      *(v271 + 24) = v266;
      v272 = swift_allocObject();
      *(v272 + 16) = sub_1DD627AFC;
      *(v272 + 24) = v271;
      v273 = swift_allocObject();
      *(v273 + 16) = 32;
      v274 = swift_allocObject();
      *(v274 + 16) = 8;
      v275 = swift_allocObject();
      *(v275 + 16) = sub_1DD627320;
      *(v275 + 24) = v269;
      v276 = swift_allocObject();
      *(v276 + 16) = sub_1DD3FAEA4;
      *(v276 + 24) = v275;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
      v277 = swift_allocObject();
      sub_1DD3AE030(v277, 6);
      v278 = v639;
      *v279 = sub_1DD3FAEC8;
      v279[1] = v278;
      v279[2] = sub_1DD3FAEC8;
      v279[3] = v270;
      v279[4] = sub_1DD627A7C;
      v279[5] = v272;
      v280 = v648;
      v279[6] = sub_1DD3FAEC8;
      v279[7] = v273;
      v279[8] = sub_1DD3FAEC8;
      v279[9] = v274;
      v279[10] = sub_1DD3FAE9C;
      v279[11] = v276;

      if (os_log_type_enabled(v280, v654))
      {
        v281 = swift_slowAlloc();
        v282 = swift_slowAlloc();
        v664[0] = v282;
        *v281 = 134218242;
        v283 = v646;
        v284 = *(v646 + 16);

        *(v281 + 4) = v284;

        *(v281 + 12) = 2080;
        v285 = sub_1DD640278();
        v287 = v286;

        v288 = sub_1DD39565C(v285, v287, v664);

        *(v281 + 14) = v288;
        _os_log_impl(&dword_1DD38D000, v280, v654, "[UCG] We have %ld candidate(s) with exact name matches or from PICS. Discarding other non-exact candidate(s): %s", v281, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v282);
        MEMORY[0x1E12B3DA0](v282, -1, -1);
        MEMORY[0x1E12B3DA0](v281, -1, -1);
      }

      else
      {

        v283 = v646;
      }

      v181 = v647;
      *(v647 + 16) = v283;
      goto LABEL_127;
    }

    if (v216 >= *(v213 + 16))
    {
      break;
    }

    v217 = (*(v659 + 80) + 32) & ~*(v659 + 80);
    v218 = *(v659 + 72);
    v654 = v216 + 1;
    v219 = v648;
    sub_1DD3EB3D0(v213 + v217 + v218 * v216, v648, &qword_1ECCDBBE8, &qword_1DD644470);
    v220 = v219 + *(v657 + 36);
    v221 = type metadata accessor for ContactResolver.SignalSet(0);
    if (v220[*(v221 + 204)] & 1) != 0 || (v220[*(v221 + 140)])
    {
LABEL_101:
      sub_1DD3EB4B8(v648, v639, &qword_1ECCDBBE8, &qword_1DD644470);
      v230 = v646;
      v231 = swift_isUniquelyReferenced_nonNull_native();
      v660[0] = v230;
      if ((v231 & 1) == 0)
      {
        sub_1DD42B4F8(0, *(v230 + 16) + 1, 1);
        v230 = v660[0];
      }

      v233 = *(v230 + 16);
      v232 = *(v230 + 24);
      if (v233 >= v232 >> 1)
      {
        sub_1DD42B4F8(v232 > 1, v233 + 1, 1);
        v230 = v660[0];
      }

      *(v230 + 16) = v233 + 1;
      v646 = v230;
      v214 = sub_1DD3EB4B8(v639, v230 + v217 + v233 * v218, &qword_1ECCDBBE8, &qword_1DD644470);
      v181 = v647;
      v213 = v636;
      v215 = v654;
      goto LABEL_85;
    }

    if (*(v212 + 16))
    {
      v222.isa = *v648;
      v223 = v648[1];
      sub_1DD640E28();
      sub_1DD63FD28();
      v224 = sub_1DD640E78();
      v225 = ~(-1 << *(v212 + 32));
      while (1)
      {
        v226 = v224 & v225;
        if (((*(v212 + 56 + (((v224 & v225) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v224 & v225)) & 1) == 0)
        {
          break;
        }

        v227 = (*(v212 + 48) + 16 * v226);
        if (*v227 != v222.isa || v227[1] != v223)
        {
          v229 = sub_1DD640CD8();
          v224 = v226 + 1;
          if ((v229 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_101;
      }

      v213 = v636;
    }

    v214 = sub_1DD390754(v648, &qword_1ECCDBBE8, &qword_1DD644470);
    v216 = v654;
    v181 = v647;
  }

  __break(1u);
LABEL_220:
  v433 = v214;
  v434 = sub_1DD63F9D8();
  v435 = sub_1DD640368();
  if (os_log_type_enabled(v434, v435))
  {
    v436 = swift_slowAlloc();
    *v436 = 0;
    _os_log_impl(&dword_1DD38D000, v434, v435, "[UCG][ASR-E3] Candidates:", v436, 2u);
    MEMORY[0x1E12B3DA0](v436, -1, -1);
  }

  *&v630 = v213;

  v634 = v433;
  v438 = *(v433 + 16);
  v439 = v624;
  if (v438)
  {
    v440 = v634 + ((*(v659 + 80) + 32) & ~*(v659 + 80));
    v441 = *(v659 + 72);
    v646 = &v633[1];
    *&v437 = 136315138;
    v639 = v437;
    v648 = v441;
    do
    {
      sub_1DD3EB3D0(v440, v439, &qword_1ECCDBBE8, &qword_1DD644470);
      v442 = sub_1DD63F9D8();
      v443 = sub_1DD640368();
      if (os_log_type_enabled(v442, v443))
      {
        v444 = swift_slowAlloc();
        v445 = swift_slowAlloc();
        v655 = v445;
        v664[0] = v445;
        *v444 = v639;
        v446 = v640;
        Contact.nameComponents.getter(v445);
        v447 = sub_1DD63CCF8();
        v449 = v448;
        (*v646)(v446, v641);
        sub_1DD390754(v624, &qword_1ECCDBBE8, &qword_1DD644470);
        v450 = sub_1DD39565C(v447, v449, v664);
        v439 = v624;

        *(v444 + 4) = v450;
        _os_log_impl(&dword_1DD38D000, v442, v443, "%s", v444, 0xCu);
        v451 = v655;
        __swift_destroy_boxed_opaque_existential_1(v655);
        MEMORY[0x1E12B3DA0](v451, -1, -1);
        v452 = v444;
        v441 = v648;
        MEMORY[0x1E12B3DA0](v452, -1, -1);
      }

      else
      {

        sub_1DD390754(v439, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      v440 += v441;
      --v438;
    }

    while (v438);
  }

  v453 = swift_allocObject();
  v454 = v634;
  *(v453 + 16) = v634;

  v455 = sub_1DD63F9D8();
  v456 = sub_1DD640368();
  v457 = swift_allocObject();
  *(v457 + 16) = 0;
  v458 = swift_allocObject();
  *(v458 + 16) = 8;
  v459 = swift_allocObject();
  *(v459 + 16) = sub_1DD627AB0;
  *(v459 + 24) = v453;
  v460 = swift_allocObject();
  *(v460 + 16) = sub_1DD627AFC;
  *(v460 + 24) = v459;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
  v461 = swift_allocObject();
  sub_1DD3AE030(v461, 3);
  *v462 = sub_1DD3FAEC8;
  v462[1] = v457;
  v462[2] = sub_1DD3FAEC8;
  v462[3] = v458;
  v462[4] = sub_1DD627A7C;
  v462[5] = v460;

  if (os_log_type_enabled(v455, v456))
  {
    v463 = swift_slowAlloc();
    *v463 = 134217984;
    v464 = *(v454 + 16);

    *(v463 + 4) = v464;

    _os_log_impl(&dword_1DD38D000, v455, v456, "[UCG][ASR-E3] Generated (%ld) candidates from Euclid match and not passing any to CRR since triggering condition is set to None", v463, 0xCu);
    MEMORY[0x1E12B3DA0](v463, -1, -1);
  }

  else
  {
  }

  v181 = v647;
  if (*(v654 + 56) == 1)
  {
    sub_1DD3BEE08(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v501 = v500;
    v503 = *(v500 + 16);
    v502 = *(v500 + 24);
    v504 = v503 + 1;
    if (v503 >= v502 >> 1)
    {
      sub_1DD3BEE08(v502 > 1, v503 + 1, 1, v500);
      v501 = v617;
    }

    *(v501 + 16) = v504;
    *(v501 + v503 + 32) = 0;
    if (!*(*(v181 + 16) + 16))
    {
      v505 = *(v501 + 24);
      v506 = v503 + 2;
      if (v506 > (v505 >> 1))
      {
        sub_1DD3BEE08(v505 > 1, v506, 1, v501);
        v501 = v618;
      }

      *(v501 + 16) = v506;
      *(v501 + v504 + 32) = 1;
    }
  }

  sub_1DD618464();

LABEL_249:

  while (1)
  {
    sub_1DD6404C8();
    v289 = v629;
    sub_1DD63F9A8();

    sub_1DD627210(v289, type metadata accessor for Signpost);
LABEL_251:
    v507 = type metadata accessor for ContactResolverConfig(0);
    v508 = v638;
    if (*(v638 + *(v507 + 12)))
    {
      break;
    }

    v648 = v507;
    v509 = sub_1DD63F9D8();
    v510 = sub_1DD640368();
    if (os_log_type_enabled(v509, v510))
    {
      v511 = swift_slowAlloc();
      *v511 = 0;
      _os_log_impl(&dword_1DD38D000, v509, v510, "[UCG] Filtering out contacts that are first party based on config...", v511, 2u);
      MEMORY[0x1E12B3DA0](v511, -1, -1);
    }

    swift_beginAccess();
    v512 = *(v181 + 16);
    v513 = *(v512 + 16);
    v289 = v631;
    v654 = &v631[1];
    v655 = v513;

    v514 = 0;
    *&v653 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v655 == v514)
      {

        *(v647 + 16) = v653;

        v508 = v638;
        v507 = v648;
        goto LABEL_265;
      }

      if (v514 >= *(v512 + 16))
      {
        break;
      }

      v515 = (*(v659 + 80) + 32) & ~*(v659 + 80);
      v516 = *(v659 + 72);
      sub_1DD3EB3D0(v512 + v515 + v516 * v514, v289, &qword_1ECCDBBE8, &qword_1DD644470);
      v517 = *(v654 + *(type metadata accessor for Contact(0) + 88));

      if (v517)
      {
        sub_1DD3EB4B8(v289, v632, &qword_1ECCDBBE8, &qword_1DD644470);
        v518 = v653;
        v519 = swift_isUniquelyReferenced_nonNull_native();
        v520 = v518;
        v664[0] = v518;
        if ((v519 & 1) == 0)
        {
          sub_1DD42B4F8(0, *(v518 + 16) + 1, 1);
          v289 = v631;
          v520 = v664[0];
        }

        v522 = *(v520 + 16);
        v521 = *(v520 + 24);
        v523 = v522 + 1;
        if (v522 >= v521 >> 1)
        {
          *&v653 = v522 + 1;
          sub_1DD42B4F8(v521 > 1, v522 + 1, 1);
          v523 = v653;
          v289 = v631;
          v520 = v664[0];
        }

        ++v514;
        *(v520 + 16) = v523;
        *&v653 = v520;
        sub_1DD3EB4B8(v632, v520 + v515 + v522 * v516, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      else
      {

        sub_1DD390754(v289, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v514;
      }
    }

LABEL_306:
    __break(1u);
LABEL_307:
    __break(1u);
LABEL_308:
    __break(1u);
LABEL_309:

LABEL_310:
    sub_1DD618464();

LABEL_218:
    v181 = v647;
  }

LABEL_265:
  v524 = 0;
  v525 = *(v508 + *(v507 + 11));
  v654 = *(v525 + 16);
  v526 = v525 + 40;
  v655 = MEMORY[0x1E69E7CC0];
  *&v653 = v525 + 40;
LABEL_266:
  v527 = (v526 + 16 * v524);
  while (v654 != v524)
  {
    if (v524 >= *(v525 + 16))
    {
      __break(1u);
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v528 = *(v527 - 1);
    v529 = *v527;
    v664[0] = v528;
    v664[1] = v529;
    v660[0] = 0x6C7070612E6D6F63;
    v660[1] = 0xEA00000000002E65;
    sub_1DD3B52B8();
    sub_1DD3B530C();

    v289 = v664;
    if ((sub_1DD63FD48() & 1) == 0)
    {
      v289 = v655;
      v530 = swift_isUniquelyReferenced_nonNull_native();
      v662 = v289;
      if ((v530 & 1) == 0)
      {
        sub_1DD42A2D4(0, v289[2].isa + 1, 1, v531, v532, v533, v534);
        v289 = v662;
      }

      v536 = v289[2].isa;
      v535 = v289[3].isa;
      if (v536 >= v535 >> 1)
      {
        sub_1DD42A2D4(v535 > 1, v536 + 1, 1, v531, v532, v533, v534);
        v289 = v662;
      }

      ++v524;
      v289[2].isa = (v536 + 1);
      v655 = v289;
      v537 = &v289[2 * v536];
      v537[4].isa = v528;
      v537[5].isa = v529;
      v526 = v653;
      goto LABEL_266;
    }

    v527 += 2;
    ++v524;
  }

  v289 = v647;
  swift_beginAccess();
  v538 = v289[2].isa;
  v539 = *(v538 + 2);

  v540 = 0;
  v654 = MEMORY[0x1E69E7CC0];
  while (v539 != v540)
  {
    if (v540 >= *(v538 + 2))
    {
      goto LABEL_305;
    }

    v541 = (*(v659 + 80) + 32) & ~*(v659 + 80);
    v542 = *(v659 + 72);
    v543 = v656;
    sub_1DD3EB3D0(v538 + v541 + v542 * v540, v656, &qword_1ECCDBBE8, &qword_1DD644470);
    v544 = type metadata accessor for Contact(0);
    v545 = (v543 + *(v544 + 88));
    v546 = v545[1];
    if (!v546 || (v289 = &v619, v664[0] = *v545, v664[1] = v546, MEMORY[0x1EEE9AC00](v544), v547 = v658, v548 = sub_1DD450388(), v658 = v547, v548))
    {
      sub_1DD3EB4B8(v656, v635, &qword_1ECCDBBE8, &qword_1DD644470);
      v289 = v654;
      v549 = swift_isUniquelyReferenced_nonNull_native();
      v660[0] = v289;
      if ((v549 & 1) == 0)
      {
        sub_1DD42B4F8(0, v289[2].isa + 1, 1);
        v289 = v660[0];
      }

      v551 = v289[2].isa;
      v550 = v289[3].isa;
      v552 = (v551 + 1);
      if (v551 >= v550 >> 1)
      {
        v654 = v551 + 1;
        *&v653 = v551;
        sub_1DD42B4F8(v550 > 1, v551 + 1, 1);
        v552 = v654;
        v551 = v653;
        v289 = v660[0];
      }

      ++v540;
      v289[2].isa = v552;
      v654 = v289;
      sub_1DD3EB4B8(v635, v289 + v541 + v551 * v542, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    else
    {
      sub_1DD390754(v656, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v540;
    }
  }

  v553 = v647;
  v554 = v654;
  *(v647 + 16) = v654;

  if (v554[2].isa == 1)
  {
    swift_beginAccess();
    sub_1DD586904();
    v555 = *(v553 + 16);
    sub_1DD587178();
    v556 = v555 + *(v657 + 36) + ((*(v659 + 80) + 32) & ~*(v659 + 80));
    *(v556 + *(type metadata accessor for ContactResolver.SignalSet(0) + 224)) = 1;
    *(v553 + 16) = v555;
    swift_endAccess();
  }

  v557 = swift_allocObject();
  memcpy((v557 + 16), v665, 0x108uLL);
  v558 = swift_allocObject();
  *(v558 + 16) = sub_1DD6272FC;
  *(v558 + 24) = v557;

  sub_1DD3C9478(v665, v664);

  v657 = sub_1DD63F9D8();
  LODWORD(v656) = sub_1DD640368();
  v559 = swift_allocObject();
  *(v559 + 16) = 0;
  v560 = swift_allocObject();
  *(v560 + 16) = 8;
  v561 = swift_allocObject();
  *(v561 + 16) = sub_1DD627B00;
  *(v561 + 24) = v553;
  v562 = swift_allocObject();
  *(v562 + 16) = sub_1DD49C24C;
  *(v562 + 24) = v561;
  v563 = swift_allocObject();
  *(v563 + 16) = 32;
  v564 = swift_allocObject();
  *(v564 + 16) = 8;
  v565 = swift_allocObject();
  *(v565 + 16) = sub_1DD627304;
  *(v565 + 24) = v558;
  v566 = swift_allocObject();
  *(v566 + 16) = sub_1DD3FA514;
  *(v566 + 24) = v565;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
  v567 = swift_allocObject();
  sub_1DD3AE030(v567, 6);
  *v568 = sub_1DD3FA50C;
  v568[1] = v559;
  v568[2] = sub_1DD3FAEC8;
  v568[3] = v560;
  v569 = v656;
  v568[4] = sub_1DD49C254;
  v568[5] = v562;
  v570 = v647;
  v568[6] = sub_1DD3FAEC8;
  v568[7] = v563;
  v568[8] = sub_1DD3FAEC8;
  v568[9] = v564;
  v571 = v657;
  v568[10] = sub_1DD3FA51C;
  v568[11] = v566;

  if (os_log_type_enabled(v571, v569))
  {
    v572 = swift_slowAlloc();
    v573 = swift_slowAlloc();
    v661 = v573;
    *v572 = 134218242;
    v574 = *(*(v570 + 16) + 16);

    *(v572 + 4) = v574;

    *(v572 + 12) = 2080;
    memcpy(v660, v665, sizeof(v660));
    v575 = sub_1DD3C9478(v665, v664);
    v576 = ContactQuery.description.getter(v575);
    v578 = v577;
    memcpy(v664, v660, sizeof(v664));
    sub_1DD3C9580(v664);
    v579 = sub_1DD39565C(v576, v578, &v661);

    *(v572 + 14) = v579;
    _os_log_impl(&dword_1DD38D000, v571, v569, "[UCG] Final candidates (%ld) before signal generation for query: %s", v572, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v573);
    MEMORY[0x1E12B3DA0](v573, -1, -1);
    MEMORY[0x1E12B3DA0](v572, -1, -1);
  }

  else
  {
  }

  v580 = v650;
  v581 = v651;
  v582 = v649;
  v584 = v644;
  v583 = v645;
  v585 = v570;
  v586 = v643;
  v587 = *(v585 + 16);
  v588 = v587[2].isa;
  v654 = &v633[1];
  v655 = v587;

  v589 = 0;
  v289 = &qword_1DD644470;
  *&v590 = 134218498;
  v653 = v590;
  v656 = v588;
  while (1)
  {
    if (v589 == v588)
    {
      v591 = 1;
      v657 = v588;
    }

    else
    {
      if ((v589 & 0x8000000000000000) != 0)
      {
        goto LABEL_307;
      }

      if (v589 >= v655[2].isa)
      {
        goto LABEL_308;
      }

      v592 = v589 + 1;
      v593 = v655 + ((*(v659 + 80) + 32) & ~*(v659 + 80)) + *(v659 + 72) * v589;
      v594 = *(v581 + 48);
      v595 = v580;
      v596 = v642;
      *v642 = v589;
      sub_1DD3EB3D0(v593, v596 + v594, &qword_1ECCDBBE8, &qword_1DD644470);
      v597 = v596;
      v580 = v595;
      sub_1DD3EB4B8(v597, v595, &qword_1ECCDC238, &unk_1DD654E40);
      v591 = 0;
      v657 = v592;
    }

    __swift_storeEnumTagSinglePayload(v580, v591, 1, v581);
    sub_1DD3EB4B8(v580, v582, &qword_1ECCDC240, &qword_1DD645AA0);
    if (__swift_getEnumTagSinglePayload(v582, 1, v581) == 1)
    {
      break;
    }

    v598 = *v582;
    sub_1DD3EB4B8(v582 + *(v581 + 48), v586, &qword_1ECCDBBE8, &qword_1DD644470);
    sub_1DD3EB3D0(v586, v584, &qword_1ECCDBBE8, &qword_1DD644470);
    sub_1DD3EB3D0(v586, v583, &qword_1ECCDBBE8, &qword_1DD644470);
    v599 = v586;
    v600 = sub_1DD63F9D8();
    v601 = sub_1DD640368();
    if (os_log_type_enabled(v600, v601))
    {
      v602 = swift_slowAlloc();
      v603 = swift_slowAlloc();
      v664[0] = v603;
      *v602 = v653;
      *(v602 + 4) = v598;
      *(v602 + 12) = 2080;
      v604 = v584;
      v605 = v640;
      v606 = v604;
      Contact.nameComponents.getter(v603);
      v607 = sub_1DD63CCF8();
      v609 = v608;
      (*v654)(v605, v641);
      sub_1DD390754(v606, &qword_1ECCDBBE8, &qword_1DD644470);
      v610 = sub_1DD39565C(v607, v609, v664);

      *(v602 + 14) = v610;
      *(v602 + 22) = 2080;
      v583 = v645;
      v611 = sub_1DD5590A8();
      v613 = v612;
      sub_1DD390754(v583, &qword_1ECCDBBE8, &qword_1DD644470);
      v614 = sub_1DD39565C(v611, v613, v664);

      *(v602 + 24) = v614;
      _os_log_impl(&dword_1DD38D000, v600, v601, "[UCG] Candidate [%ld] (%s): %s", v602, 0x20u);
      swift_arrayDestroy();
      v615 = v603;
      v581 = v651;
      MEMORY[0x1E12B3DA0](v615, -1, -1);
      v580 = v650;
      MEMORY[0x1E12B3DA0](v602, -1, -1);

      v586 = v643;
      v289 = &qword_1DD644470;
      sub_1DD390754(v643, &qword_1ECCDBBE8, &qword_1DD644470);
      v582 = v649;
      v584 = v644;
      v588 = v656;
      v589 = v657;
    }

    else
    {

      v289 = &qword_1DD644470;
      sub_1DD390754(v583, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v584, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v599, &qword_1ECCDBBE8, &qword_1DD644470);
      v582 = v649;
      v580 = v650;
      v586 = v599;
      v588 = v656;
      v589 = v657;
      v581 = v651;
    }
  }

  v80 = *(v647 + 16);

  return v80;
}

void sub_1DD614FFC()
{
  OUTLINED_FUNCTION_18_4();
  memcpy(__dst, v0, 0x108uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DD643F90;
  memcpy((v2 + 32), v0, 0x108uLL);
  sub_1DD3C9478(__dst, __src);
  v3 = MEMORY[0x1E69E7CC0];
  memcpy(__src, (v2 + 32), sizeof(__src));
  memcpy(v41, (v2 + 32), sizeof(v41));
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_102_0(KeyPath, v5);
  v6 = sub_1DD621400(v1);

  sub_1DD3C9580(__src);
  v7 = *(v6 + 16);
  v8 = *(v3 + 16);
  if (__OFADD__(v8, v7))
  {
    __break(1u);
    goto LABEL_41;
  }

  if (!swift_isUniquelyReferenced_nonNull_native() || (v9 = *(v3 + 24) >> 1, v9 < v8 + v7))
  {
    sub_1DD3BFD44();
    v3 = v10;
    v9 = *(v10 + 24) >> 1;
  }

  if (*(v6 + 16))
  {
    v11 = *(v3 + 16);
    if (v9 - v11 >= v7)
    {
      OUTLINED_FUNCTION_76_3(v3 + 264 * v11);
      swift_arrayInitWithCopy();

      if (!v7)
      {
        goto LABEL_11;
      }

      v12 = *(v3 + 16);
      v13 = __OFADD__(v12, v7);
      v14 = v12 + v7;
      if (!v13)
      {
        *(v3 + 16) = v14;
        goto LABEL_11;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v7)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_11:
  swift_setDeallocating();
  sub_1DD46CBB4();
  v15 = 0;
  v16 = *(v3 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v18 = 32;
  while (v16 != v15)
  {
    if (v15 >= *(v3 + 16))
    {
      goto LABEL_42;
    }

    memcpy(__src, (v3 + v18), sizeof(__src));
    memcpy(v41, __src, sizeof(v41));
    v19 = swift_getKeyPath();
    OUTLINED_FUNCTION_102_0(v19, v20);
    v21 = sub_1DD621400(v8);

    sub_1DD3C9580(__src);
    v22 = *(v21 + 16);
    v8 = *(v17 + 16);
    if (__OFADD__(v8, v22))
    {
      goto LABEL_43;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v23 = *(v17 + 24) >> 1, v23 < v8 + v22))
    {
      OUTLINED_FUNCTION_21_21();
      sub_1DD3BFD44();
      v17 = v24;
      v23 = *(v24 + 24) >> 1;
    }

    if (*(v21 + 16))
    {
      v25 = *(v17 + 16);
      if (v23 - v25 < v22)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_76_3(v17 + 264 * v25);
      swift_arrayInitWithCopy();

      if (v22)
      {
        v26 = *(v17 + 16);
        v13 = __OFADD__(v26, v22);
        v27 = v26 + v22;
        if (v13)
        {
          goto LABEL_52;
        }

        *(v17 + 16) = v27;
      }
    }

    else
    {

      if (v22)
      {
        goto LABEL_44;
      }
    }

    v18 += 264;
    ++v15;
  }

  v28 = 0;
  v29 = *(v17 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  v31 = 32;
  while (v29 != v28)
  {
    if (v28 >= *(v17 + 16))
    {
      goto LABEL_45;
    }

    memcpy(__src, (v17 + v31), sizeof(__src));
    memcpy(v41, __src, sizeof(v41));
    v32 = swift_getKeyPath();
    OUTLINED_FUNCTION_102_0(v32, v33);
    v34 = sub_1DD621400(v8);

    sub_1DD3C9580(__src);
    v35 = *(v34 + 16);
    v8 = *(v30 + 16);
    if (__OFADD__(v8, v35))
    {
      goto LABEL_46;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v36 = *(v30 + 24) >> 1, v36 < v8 + v35))
    {
      sub_1DD3BFD44();
      v30 = v37;
      v36 = *(v37 + 24) >> 1;
    }

    if (*(v34 + 16))
    {
      v38 = *(v30 + 16);
      if (v36 - v38 < v35)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_76_3(v30 + 264 * v38);
      swift_arrayInitWithCopy();

      if (v35)
      {
        v39 = *(v30 + 16);
        v13 = __OFADD__(v39, v35);
        v40 = v39 + v35;
        if (v13)
        {
          goto LABEL_53;
        }

        *(v30 + 16) = v40;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_47;
      }
    }

    v31 += 264;
    ++v28;
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD61545C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v177 = a3;
  v169 = a2;
  v163 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v175 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v176 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v178 = &v160 - v8;
  v9 = sub_1DD63F9C8();
  v164 = *(v9 - 8);
  v165 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v166 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v182, a1, 0x108uLL);
  if (qword_1EE166460 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v14 = qword_1EE16F0C0;
    v15 = v13 + *(v11 + 20);
    *v15 = "UCG.GenerateCandidatesForQuery";
    *(v15 + 1) = 30;
    v15[16] = 2;
    v16 = v14;
    sub_1DD63F9B8();
    *(v13 + *(v11 + 24)) = v16;
    v17 = v16;
    sub_1DD6404D8();
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v18 = swift_allocObject();
    v172 = xmmword_1DD643F90;
    *(v18 + 16) = xmmword_1DD643F90;
    v19 = sub_1DD6408F8();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v171 = sub_1DD392BD8();
    *(v18 + 64) = v171;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v158 = v18;
    v157 = 2;
    v156 = 22;
    v167 = v13;
    v168 = v17;
    sub_1DD63F998();

    type metadata accessor for ContactSearchResultCollector();
    swift_allocObject();
    v22 = sub_1DD60B0DC();
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD63F9F8();
    v24 = __swift_project_value_buffer(v23, qword_1EE16F068);
    sub_1DD3C9478(v182, v181);
    v174 = v24;
    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640368();
    sub_1DD3C9580(v182);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v183 = v28;
      *v27 = 136315138;
      memcpy(v180, v182, sizeof(v180));
      v29 = sub_1DD3C9478(v182, v181);
      v30 = ContactQuery.description.getter(v29);
      v32 = v31;
      memcpy(v181, v180, sizeof(v181));
      sub_1DD3C9580(v181);
      v33 = sub_1DD39565C(v30, v32, &v183);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_1DD38D000, v25, v26, "[UCG] Looking at ASR candidate: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12B3DA0](v28, -1, -1);
      MEMORY[0x1E12B3DA0](v27, -1, -1);
    }

    v34 = v169;
    memcpy(v181, v182, sizeof(v181));
    v35 = sub_1DD41E198();
    v170 = v22;
    if (v35)
    {
      goto LABEL_10;
    }

    v36 = v182[19] & 0xFFFFFFFFFFFFLL;
    if ((v182[20] & 0x2000000000000000) != 0)
    {
      v36 = HIBYTE(v182[20]) & 0xFLL;
    }

    if (v36)
    {
LABEL_10:
      memcpy(v181, v182, sizeof(v181));
      sub_1DD41E258();
      v38 = v37;
      MEMORY[0x1EEE9AC00](v37);
      v158 = v34;
      v39 = sub_1DD606844(sub_1DD6273A0, &v156, v38);
      v181[0] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
      sub_1DD4477A4();
      v40 = sub_1DD63FD58();
      v42 = v41;

      v43 = sub_1DD63F9D8();
      v44 = sub_1DD640368();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v181[0] = v161;
        *v45 = 136315394;
        v46 = MEMORY[0x1E12B2430](v39, MEMORY[0x1E69E6158]);
        v162 = v42;
        v47 = v38;
        v48 = v46;
        v49 = v40;
        v51 = v50;

        v52 = sub_1DD39565C(v48, v51, v181);

        *(v45 + 4) = v52;
        v38 = v47;
        v53 = v162;
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_1DD39565C(v49, v53, v181);
        _os_log_impl(&dword_1DD38D000, v43, v44, "[UCG] Searching for contacts by name tokens: %s (%s)", v45, 0x16u);
        v54 = v161;
        swift_arrayDestroy();
        MEMORY[0x1E12B3DA0](v54, -1, -1);
        MEMORY[0x1E12B3DA0](v45, -1, -1);
      }

      else
      {
      }

      v55 = v179;
      sub_1DD61962C();
      if (v55)
      {

LABEL_15:
        sub_1DD6404C8();
        goto LABEL_16;
      }

      v59 = v56;
      v162 = v38;
      v179 = 0;

      v60 = *(v59 + 16);
      if (v60)
      {
        v61 = (v59 + 64);
        do
        {
          v62 = *(v61 - 4);
          v63 = *(v61 - 3);
          v64 = *(v61 - 2);
          v65 = *(v61 - 1);
          v66 = *v61;
          v61 += 5;
          v181[0] = v62;
          v181[1] = v63;
          v181[2] = v64;
          v181[3] = v65;
          v181[4] = v66;

          sub_1DD60B15C(v181);

          --v60;
        }

        while (v60);
      }

      v67 = v162[2];
      if (!v67)
      {
        goto LABEL_26;
      }

      v69 = v162[4];
      v68 = v162[5];

      v34 = v169;
      if (v67 == 1)
      {

        v70 = sub_1DD63F9D8();
        v71 = sub_1DD640368();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v181[0] = v73;
          *v72 = 136315138;
          *(v72 + 4) = sub_1DD39565C(v69, v68, v181);
          _os_log_impl(&dword_1DD38D000, v70, v71, "[UCG] Searching for contacts by relationship using name field as relationship label: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v73);
          v74 = v73;
          v34 = v169;
          MEMORY[0x1E12B3DA0](v74, -1, -1);
          MEMORY[0x1E12B3DA0](v72, -1, -1);
        }

        v181[0] = v69;
        v181[1] = v68;
        v75 = sub_1DD640048();
        v181[0] = 0;
        v181[1] = v75;
        v181[2] = v76;
        v77 = type metadata accessor for ContactResolverConfig(0);
        v78 = v179;
        sub_1DD61B8D4(v181, v34 + *(v77 + 32), v79, v80, v81, v82, v83, v84, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
        v179 = v78;
        if (v78)
        {

          goto LABEL_15;
        }

        v125 = *(v85 + 16);
        if (v125)
        {
          v126 = (v85 + 64);
          do
          {
            v127 = *(v126 - 4);
            v128 = *(v126 - 3);
            v129 = *(v126 - 2);
            v130 = *(v126 - 1);
            v131 = *v126;
            v126 += 5;
            v181[0] = v127;
            v181[1] = v128;
            v181[2] = v129;
            v181[3] = v130;
            v181[4] = v131;

            sub_1DD60B15C(v181);

            --v125;
          }

          while (v125);

LABEL_26:

          v34 = v169;
          goto LABEL_28;
        }
      }
    }

LABEL_28:
    v86 = v182[23];
    if (v182[23])
    {
      v87 = v182[22];
      v88 = HIBYTE(v182[23]) & 0xFLL;
      if ((v182[23] & 0x2000000000000000) == 0)
      {
        v88 = v182[22] & 0xFFFFFFFFFFFFLL;
      }

      if (!v88)
      {
        v108 = v177;
        goto LABEL_53;
      }

      v89 = v182[21];
      sub_1DD41D254(v182[21], v182[22], v182[23]);

      v90 = sub_1DD63F9D8();
      v91 = sub_1DD640368();
      sub_1DD4178B4(v89, v87, v86);
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v162 = v89;
        v93 = v92;
        v94 = swift_slowAlloc();
        LODWORD(v161) = v91;
        v95 = v94;
        v181[0] = v94;
        *v93 = 136315138;

        v96 = v87;
        v97 = sub_1DD39565C(v87, v86, v181);

        *(v93 + 4) = v97;
        v87 = v96;
        _os_log_impl(&dword_1DD38D000, v90, v161, "[UCG] Searching for contacts by relationship label: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x1E12B3DA0](v95, -1, -1);
        v98 = v93;
        v89 = v162;
        MEMORY[0x1E12B3DA0](v98, -1, -1);
      }

      v99 = v179;
      v181[0] = v89;
      v181[1] = v87;
      v181[2] = v86;
      v100 = type metadata accessor for ContactResolverConfig(0);
      sub_1DD61B8D4(v181, v34 + *(v100 + 32), v101, v102, v103, v104, v105, v106, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
      if (v99)
      {

        sub_1DD4178B4(v89, v87, v86);
        goto LABEL_15;
      }

      v161 = v87;
      v162 = v89;
      v179 = 0;
      v109 = *(v107 + 16);
      if (v109)
      {
        v110 = (v107 + 64);
        do
        {
          v111 = *(v110 - 4);
          v112 = *(v110 - 3);
          v113 = *(v110 - 2);
          v114 = *(v110 - 1);
          v115 = *v110;
          v110 += 5;
          v181[0] = v111;
          v181[1] = v112;
          v181[2] = v113;
          v181[3] = v114;
          v181[4] = v115;

          sub_1DD60B15C(v181);

          --v109;
        }

        while (v109);
      }

      v117 = v161;
      v116 = v162;
      sub_1DD41D254(v162, v161, v86);
      v118 = sub_1DD63F9D8();
      v119 = sub_1DD640368();
      sub_1DD4178B4(v116, v117, v86);
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v181[0] = v121;
        *v120 = 136315138;

        v122 = sub_1DD39565C(v117, v86, v181);

        *(v120 + 4) = v122;
        v117 = v161;
        _os_log_impl(&dword_1DD38D000, v118, v119, "[UCG] Searching for contacts by name using the relationship label as a search term: %s", v120, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v121);
        MEMORY[0x1E12B3DA0](v121, -1, -1);
        MEMORY[0x1E12B3DA0](v120, -1, -1);
      }

      v123 = v179;
      sub_1DD61962C();
      if (v123)
      {
        sub_1DD4178B4(v162, v117, v86);

        goto LABEL_15;
      }

      v179 = 0;
      v132 = *(v124 + 16);
      if (v132)
      {
        v133 = (v124 + 64);
        do
        {
          v134 = *(v133 - 4);
          v135 = *(v133 - 3);
          v136 = *(v133 - 2);
          v137 = *(v133 - 1);
          v138 = *v133;
          v133 += 5;
          v181[0] = v134;
          v181[1] = v135;
          v181[2] = v136;
          v181[3] = v137;
          v181[4] = v138;

          sub_1DD60B15C(v181);

          --v132;
        }

        while (v132);
      }

      sub_1DD4178B4(v162, v161, v86);
    }

    v108 = v177;
LABEL_53:
    v139 = v168;
    sub_1DD63F9B8();
    sub_1DD6404D8();
    v140 = swift_allocObject();
    *(v140 + 16) = v172;
    v141 = sub_1DD6408F8();
    v142 = v171;
    *(v140 + 56) = MEMORY[0x1E69E6158];
    *(v140 + 64) = v142;
    *(v140 + 32) = v141;
    *(v140 + 40) = v143;
    v158 = v140;
    v157 = 2;
    v156 = 22;
    sub_1DD63F998();

    memcpy(v181, v182, sizeof(v181));
    v11 = sub_1DD60B7C0(v181);
    v144 = *(v11 + 16);
    v145 = v176;
    if (!v144)
    {
      break;
    }

    v162 = v139;
    v181[0] = MEMORY[0x1E69E7CC0];
    *&v172 = v144;
    sub_1DD42B4F8(0, v144, 0);
    v146 = 0;
    v147 = v181[0];
    v171 = (*(v175 + 80) + 32) & ~*(v175 + 80);
    v173 = v11;
    v174 = v11 + v171;
    v13 = &qword_1DD644470;
    v148 = v179;
    while (v146 < *(v11 + 16))
    {
      v149 = *(v175 + 72);
      sub_1DD3EB3D0(v174 + v149 * v146, v145, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD6166B4(v145, v108, v180, v178);
      if (v148)
      {

        sub_1DD390754(v145, &qword_1ECCDBBE8, &qword_1DD644470);

        sub_1DD6404C8();
        v152 = v166;
        sub_1DD63F9A8();

        (*(v164 + 8))(v152, v165);
        goto LABEL_15;
      }

      v179 = 0;
      sub_1DD390754(v145, &qword_1ECCDBBE8, &qword_1DD644470);
      v181[0] = v147;
      v151 = *(v147 + 16);
      v150 = *(v147 + 24);
      if (v151 >= v150 >> 1)
      {
        sub_1DD42B4F8(v150 > 1, v151 + 1, 1);
        v147 = v181[0];
      }

      ++v146;
      *(v147 + 16) = v151 + 1;
      sub_1DD3EB4B8(v178, v147 + v171 + v151 * v149, &qword_1ECCDBBE8, &qword_1DD644470);
      v148 = v179;
      v145 = v176;
      v108 = v177;
      v11 = v173;
      if (v172 == v146)
      {

        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_66:
    swift_once();
  }

  v147 = MEMORY[0x1E69E7CC0];
LABEL_63:
  MEMORY[0x1EEE9AC00](v153);
  v158 = v108;
  v159 = v169;
  v154 = sub_1DD605AC0(sub_1DD627A80, &v156, v147);

  sub_1DD6404C8();
  v155 = v166;
  sub_1DD63F9A8();

  (*(v164 + 8))(v155, v165);
  *v163 = v154;
  sub_1DD6404C8();
LABEL_16:
  v57 = v167;
  sub_1DD63F9A8();
  return sub_1DD627210(v57, type metadata accessor for Signpost);
}

uint64_t sub_1DD616578@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - v7;
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v10 = *(type metadata accessor for ContactResolverConfig(0) + 32);
  v11 = sub_1DD63D168();
  (*(*(v11 - 8) + 16))(v8, a2 + v10, v11);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
  sub_1DD3B7F10();
  v12 = sub_1DD640648();
  v14 = v13;
  result = sub_1DD390754(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);
  *a3 = v12;
  a3[1] = v14;
  return result;
}

uint64_t sub_1DD6166B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v192 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  MEMORY[0x1EEE9AC00](v8);
  v188 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v186 = (&v176 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v189 = (&v176 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v187 = (&v176 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v190 = &v176 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v176 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC10, &unk_1DD664BA0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v176 - v25;
  v191 = a2;
  sub_1DD3EB3D0(a2 + 56, &v197, &qword_1ECCDCF48, &unk_1DD664BF0);
  if (!v198)
  {
    sub_1DD390754(&v197, &qword_1ECCDCF48, &unk_1DD664BF0);
    return sub_1DD3EB3D0(a1, a4, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  v184 = v26;
  v185 = v8;
  sub_1DD3AA4A8(&v197, v199);
  v193 = a1;
  v27 = *a1;
  v28 = a1[1];
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v199);
    a1 = v193;
    return sub_1DD3EB3D0(a1, a4, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  v183 = a4;
  v31 = v200;
  v30 = v201;
  __swift_project_boxed_opaque_existential_1(v199, v200);
  v32 = (*(v30 + 24))(v27, v28, v31, v30);
  if (v4)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v199);
    *v192 = v4;
    return result;
  }

  if (v32)
  {
    sub_1DD40B108();
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = v190;
  v36 = type metadata accessor for Contact(0);
  v37 = __swift_storeEnumTagSinglePayload(v20, v34, 1, v36);
  MEMORY[0x1EEE9AC00](v37);
  *(&v176 - 2) = v193;
  v38 = v184;
  sub_1DD3ECA40(sub_1DD6273A8, (&v176 - 4), v203, v39, v40, v41, v42, v43, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
  sub_1DD390754(v20, &qword_1ECCDC268, &qword_1DD64CE00);
  sub_1DD3EB3D0(v38, v23, &qword_1ECCDFC10, &unk_1DD664BA0);
  v44 = v185;
  if (__swift_getEnumTagSinglePayload(v23, 1, v185) == 1)
  {
    sub_1DD390754(v23, &qword_1ECCDFC10, &unk_1DD664BA0);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v45 = sub_1DD63F9F8();
    __swift_project_value_buffer(v45, qword_1EE16F068);
    a1 = v193;
    v46 = v188;
    sub_1DD3EB3D0(v193, v188, &qword_1ECCDBBE8, &qword_1DD644470);
    v47 = sub_1DD63F9D8();
    v48 = sub_1DD640368();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v197 = v50;
      *v49 = 136315138;
      v51 = v46;
      v52 = *v46;
      v53 = *(v51 + 8);

      sub_1DD390754(v51, &qword_1ECCDBBE8, &qword_1DD644470);
      v54 = sub_1DD39565C(v52, v53, &v197);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_1DD38D000, v47, v48, "[UCG] Unable to find candidate %s in the contact store. Skipping hydration of it...", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1E12B3DA0](v50, -1, -1);
      MEMORY[0x1E12B3DA0](v49, -1, -1);
    }

    else
    {

      sub_1DD390754(v46, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    sub_1DD390754(v184, &qword_1ECCDFC10, &unk_1DD664BA0);
    a4 = v183;
    __swift_destroy_boxed_opaque_existential_1(v199);
    return sub_1DD3EB3D0(a1, a4, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  sub_1DD3EB4B8(v23, v35, &qword_1ECCDBBE8, &qword_1DD644470);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v55 = sub_1DD63F9F8();
  v56 = __swift_project_value_buffer(v55, qword_1EE16F068);
  v57 = v187;
  sub_1DD3EB3D0(v193, v187, &qword_1ECCDBBE8, &qword_1DD644470);
  v182 = v56;
  v58 = sub_1DD63F9D8();
  v59 = sub_1DD640368();
  v60 = os_log_type_enabled(v58, v59);
  v181 = 0;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v197 = v62;
    *v61 = 136315394;
    v63 = v57;
    v64 = *v57;
    v65 = v57[1];

    sub_1DD390754(v63, &qword_1ECCDBBE8, &qword_1DD644470);
    v66 = sub_1DD39565C(v64, v65, &v197);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2080;
    swift_beginAccess();
    v67 = Contact.description.getter();
    v69 = sub_1DD39565C(v67, v68, &v197);

    *(v61 + 14) = v69;
    _os_log_impl(&dword_1DD38D000, v58, v59, "[UCG] Found candidate %s in address book: %s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v62, -1, -1);
    MEMORY[0x1E12B3DA0](v61, -1, -1);
  }

  else
  {

    sub_1DD390754(v57, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  v70 = v193;
  v71 = v193 + *(v44 + 36);
  memcpy(v202, (v71 + 8), 0x108uLL);
  v72 = (v191 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer);
  v73 = *(v191 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer + 24);
  v74 = *(v191 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer + 32);
  v75 = __swift_project_boxed_opaque_existential_1((v191 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer), v73);
  v190 = sub_1DD4179C4(v75, 0, v202, v73, v74);
  v188 = type metadata accessor for ContactResolver.SignalSet(0);
  v76 = *(v188 + 132);
  v178 = v71;
  v77 = (v71 + v76);
  v78 = *(v71 + v76 + 32);
  if (v78)
  {
    v79 = v77[3];
    v80 = v72[3];
    v81 = v72[4];
    __swift_project_boxed_opaque_existential_1(v72, v80);
    v82 = sub_1DD5E8CD4(v79, v78, v80, v81);
    v83 = sub_1DD41859C(v82);
  }

  else
  {
    v84 = v72[3];
    v85 = v72[4];
    v86 = __swift_project_boxed_opaque_existential_1(v72, v84);
    v83 = sub_1DD417B78(v86, 0, v70, v84, v85);
  }

  v192 = v83;
  swift_beginAccess();
  v87 = v72[3];
  v88 = v72[4];
  v89 = __swift_project_boxed_opaque_existential_1(v72, v87);
  v90 = sub_1DD417B78(v89, 0, v35, v87, v88);
  v91 = v77[6];
  v179 = v72;
  if (v91)
  {
    v92 = v77[5];
    v93 = v72[3];
    v94 = v72[4];
    __swift_project_boxed_opaque_existential_1(v72, v93);
    v95 = sub_1DD5E8CD4(v92, v91, v93, v94);
    v96 = sub_1DD41859C(v95);
    v97 = v193;
  }

  else
  {
    v98 = v72[3];
    v99 = v72[4];
    v100 = __swift_project_boxed_opaque_existential_1(v72, v98);
    v97 = v193;
    v96 = sub_1DD417B78(v100, 0, v193, v98, v99);
  }

  v187 = v96;
  v101 = v97;
  v102 = v189;
  sub_1DD3EB3D0(v101, v189, &qword_1ECCDBBE8, &qword_1DD644470);
  v103 = v190;

  v104 = sub_1DD63F9D8();
  v105 = sub_1DD640368();

  v180 = v90;

  HIDWORD(v177) = v105;
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v196[0] = v176;
    *v106 = 136316162;
    v107 = *v102;
    v108 = v102[1];

    sub_1DD390754(v102, &qword_1ECCDBBE8, &qword_1DD644470);
    v109 = sub_1DD39565C(v107, v108, v196);

    *(v106 + 4) = v109;
    *(v106 + 12) = 2080;
    v110 = sub_1DD640278();
    v112 = sub_1DD39565C(v110, v111, v196);

    *(v106 + 14) = v112;
    *(v106 + 22) = 2080;
    v113 = sub_1DD640278();
    v115 = sub_1DD39565C(v113, v114, v196);

    *(v106 + 24) = v115;
    *(v106 + 32) = 2080;
    v116 = v180;
    v117 = sub_1DD640278();
    v119 = sub_1DD39565C(v117, v118, v196);

    *(v106 + 34) = v119;
    *(v106 + 42) = 2080;
    v120 = v185;
    v121 = sub_1DD640278();
    v123 = sub_1DD39565C(v121, v122, v196);

    *(v106 + 44) = v123;
    _os_log_impl(&dword_1DD38D000, v104, BYTE4(v177), "[UCG] Candidate %s match:\n  queryTokens=%s matchedQueryTokens=%s\n  contactTokens=%s matchedContactTokens=%s", v106, 0x34u);
    v124 = v176;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v124, -1, -1);
    v125 = v106;
    v103 = v190;
    MEMORY[0x1E12B3DA0](v125, -1, -1);

    v126 = v188;
    v127 = v116;
  }

  else
  {

    sub_1DD390754(v102, &qword_1ECCDBBE8, &qword_1DD644470);
    v126 = v188;
    v120 = v185;
    v127 = v180;
  }

  v128 = sub_1DD5839F8(v187, v127);

  v129 = v179;
  if (v128)
  {
    v130 = *(v178 + 335) ^ 1;
  }

  else
  {
    v130 = 0;
  }

  v131 = v192;
  swift_beginAccess();
  v132 = v35 + *(v120 + 36);
  *(v132 + 334) = v130 & 1;
  v133 = v132 + v126[33];
  *(v133 + 9) = v130 & 1;
  *v133 = *(v127 + 16);

  v134 = sub_1DD5839F8(v131, v103);

  swift_beginAccess();
  v135 = v35 + *(v120 + 36);
  *(v135 + 333) = v134 & 1;
  *(v135 + v126[33] + 8) = v134 & 1;
  v136 = v103;
  v137 = *(v35 + 120);
  v138 = *(v35 + 128);
  v139 = HIBYTE(v138) & 0xF;
  if ((v138 & 0x2000000000000000) == 0)
  {
    v139 = v137 & 0xFFFFFFFFFFFFLL;
  }

  if (v139)
  {
    v140 = v129[3];
    v141 = v129[4];
    __swift_project_boxed_opaque_existential_1(v129, v140);

    v142 = sub_1DD5E8CD4(v137, v138, v140, v141);

    v143 = sub_1DD41859C(v142);
    v144 = sub_1DD5839F8(v143, v136);

    v145 = v185;
    if (v144)
    {
      v146 = v186;
      sub_1DD3EB3D0(v193, v186, &qword_1ECCDBBE8, &qword_1DD644470);
      v147 = sub_1DD63F9D8();
      v148 = sub_1DD640368();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v195[0] = v150;
        *v149 = 136315138;
        v151 = v146;
        v152 = *v146;
        v153 = *(v151 + 8);

        sub_1DD390754(v151, &qword_1ECCDBBE8, &qword_1DD644470);
        v154 = sub_1DD39565C(v152, v153, v195);
        v126 = v188;

        *(v149 + 4) = v154;
        _os_log_impl(&dword_1DD38D000, v147, v148, "[UCG] Candidate %s is an exact nickname match. Overriding exact match signals...", v149, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v150);
        MEMORY[0x1E12B3DA0](v150, -1, -1);
        MEMORY[0x1E12B3DA0](v149, -1, -1);
      }

      else
      {

        sub_1DD390754(v146, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      swift_beginAccess();
      v155 = v35 + *(v145 + 36);
      *(v155 + 333) = 1;
      *(v155 + v126[33] + 8) = 1;
    }
  }

  else
  {

    v145 = v185;
  }

  swift_beginAccess();
  *(v35 + *(v145 + 36) + v126[59]) = 1;
  *(v35 + 216) = v193[27];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD664730;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  sub_1DD408BFC();
  sub_1DD408BFC();
  v157 = 0;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B2C10](v157, inited);
    }

    else
    {
    }

    swift_beginAccess();
    swift_getAtKeyPath();
    v158 = v194;
    swift_endAccess();
    if (v158)
    {
      v159 = 1;
    }

    else
    {
      v159 = *(v35 + *(v145 + 36) + v126[36]);
    }

    ++v157;
    swift_beginAccess();
    v194 = v159;
    swift_setAtWritableKeyPath();
    swift_endAccess();
  }

  while (v157 != 3);
  swift_setDeallocating();
  sub_1DD46CABC();
  v160 = *(v191 + 104);
  if (!v160)
  {
    sub_1DD390754(v184, &qword_1ECCDFC10, &unk_1DD664BA0);
    goto LABEL_67;
  }

  v162 = *v35;
  v161 = *(v35 + 8);
  v163 = v160;

  v164 = [v163 identifier];
  v165 = sub_1DD63FDD8();
  v167 = v166;

  if (v162 == v165 && v161 == v167)
  {

    v170 = v188;
    goto LABEL_63;
  }

  v169 = sub_1DD640CD8();

  v170 = v188;
  if (v169)
  {
LABEL_63:
    v171 = [v163 identifier];
    v172 = sub_1DD63FDD8();
    v174 = v173;

    sub_1DD390754(v184, &qword_1ECCDFC10, &unk_1DD664BA0);

    v175 = HIBYTE(v174) & 0xF;
    if ((v174 & 0x2000000000000000) == 0)
    {
      v175 = v172 & 0xFFFFFFFFFFFFLL;
    }

    if (v175)
    {
      swift_beginAccess();
      *(v35 + 16) = 1;
      *(v35 + *(v185 + 36) + *(v170 + 136)) = 1;
    }

    goto LABEL_67;
  }

  sub_1DD390754(v184, &qword_1ECCDFC10, &unk_1DD664BA0);

LABEL_67:
  sub_1DD3EB3D0(v35, v183, &qword_1ECCDBBE8, &qword_1DD644470);
  sub_1DD390754(v35, &qword_1ECCDBBE8, &qword_1DD644470);
  return __swift_destroy_boxed_opaque_existential_1(v199);
}

uint64_t sub_1DD617864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DD6271B8(a1, a3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  return sub_1DD6271B8(a2 + *(v5 + 36), a3 + *(v5 + 36));
}

uint64_t sub_1DD6178EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1DD6178F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v47 - v10);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD63F9F8();
  v13 = __swift_project_value_buffer(v12, qword_1EE16F068);
  sub_1DD3EB3D0(a1, v11, &qword_1ECCDBBE8, &qword_1DD644470);
  v53 = v13;
  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();
  v16 = os_log_type_enabled(v14, v15);
  v50 = v7;
  v51 = v5;
  v49 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54 = v18;
    *v17 = 136315138;
    v19 = a1;
    v20 = a2;
    v22 = *v11;
    v21 = v11[1];

    sub_1DD390754(v11, &qword_1ECCDBBE8, &qword_1DD644470);
    v23 = sub_1DD39565C(v22, v21, &v54);

    *(v17 + 4) = v23;
    a2 = v20;
    a1 = v19;
    _os_log_impl(&dword_1DD38D000, v14, v15, "[UCG] We found candidate %s multiple ways - attempting to de-duplicate it...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E12B3DA0](v18, -1, -1);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
  }

  else
  {

    sub_1DD390754(v11, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB38, &qword_1DD664C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 10;
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = 10;
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
  v25 = *(v9 + 72);
  v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DD643F80;
  sub_1DD3EB3D0(a1, v27 + v26, &qword_1ECCDBBE8, &qword_1DD644470);
  sub_1DD3EB3D0(a2, v27 + v26 + v25, &qword_1ECCDBBE8, &qword_1DD644470);
  v54 = v27;

  sub_1DD6080E8(&v54, inited);
  swift_setDeallocating();
  sub_1DD46CC94();

  v28 = v54;

  v29 = sub_1DD63F9D8();
  v30 = sub_1DD640368();

  if (!os_log_type_enabled(v29, v30))
  {

    goto LABEL_11;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v54 = v32;
  *v31 = 136315650;
  if (!v28[2])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v47 = v32;
  v48 = v30;
  v53 = v26;
  v33 = v28 + v26;
  v34 = *(v28 + v26);
  v35 = *(v28 + v26 + 8);

  v36 = sub_1DD39565C(v34, v35, &v54);

  *(v31 + 4) = v36;
  *(v31 + 12) = 2080;
  v37 = v49;
  v38 = v50;
  sub_1DD6271B8(&v33[*(v49 + 36)], v50);
  v39 = sub_1DD63FE38();
  v41 = sub_1DD39565C(v39, v40, &v54);

  *(v31 + 14) = v41;
  *(v31 + 22) = 2080;
  if (v28[2] >= 2uLL)
  {
    sub_1DD6271B8(&v33[v25 + *(v37 + 36)], v38);
    v42 = sub_1DD63FE38();
    v44 = sub_1DD39565C(v42, v43, &v54);

    *(v31 + 24) = v44;
    _os_log_impl(&dword_1DD38D000, v29, v48, "[UCG] Picking match [a] over [b] in de-dup for %s:\n  [a] %s\n  [b] %s", v31, 0x20u);
    v45 = v47;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v45, -1, -1);
    MEMORY[0x1E12B3DA0](v31, -1, -1);

    v26 = v53;
LABEL_11:
    if (v28[2])
    {
      sub_1DD3EB3D0(v28 + v26, v52, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DD617EDC()
{

  sub_1DD3EC3B8();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DD42B97C(0, v2, 0);
    v3 = v14;
    v4 = *(v14 + 16);
    v5 = 40;
    do
    {
      v6 = *(v1 + v5);
      v7 = *(v14 + 24);
      if (v4 >= v7 >> 1)
      {
        sub_1DD42B97C(v7 > 1, v4 + 1, 1);
      }

      *(v14 + 16) = v4 + 1;
      *(v14 + 8 * v4 + 32) = v6;
      v5 += 16;
      ++v4;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 32);
    while (1)
    {
      v12 = *v11++;
      v13 = __OFADD__(v10, v12);
      v10 += v12;
      if (v13)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
LABEL_14:

    return v10;
  }

  return result;
}

uint64_t sub_1DD618034(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  swift_getAtKeyPath();
  return v3;
}

uint64_t sub_1DD618094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v28 - v6);
  v9 = (a1 + *(v8 + 44));
  v10 = type metadata accessor for ContactResolver.SignalSet(0);
  if (v9[*(v10 + 204)])
  {
    v11 = 1;
  }

  else
  {
    v11 = v9[*(v10 + 236)] ^ 1;
  }

  memcpy(v28, v9 + 8, 0x108uLL);
  sub_1DD41E024();
  v13 = *(v12 + 16);

  v14 = *(sub_1DD40FB18() + 16);

  result = 1;
  if (v13 && v14 && (v11 & 1) == 0 && (v9[333] & 1) == 0 && (v9[334] & 1) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    __swift_project_value_buffer(v16, qword_1EE16F068);
    sub_1DD3EB3D0(a1, v7, &qword_1ECCDBBE8, &qword_1DD644470);
    sub_1DD3EB3D0(a1, v4, &qword_1ECCDBBE8, &qword_1DD644470);
    v17 = sub_1DD63F9D8();
    v18 = sub_1DD640368();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v28[0] = v29;
      *v19 = 136315394;
      v20 = *v7;
      v21 = v7[1];

      sub_1DD390754(v7, &qword_1ECCDBBE8, &qword_1DD644470);
      v22 = sub_1DD39565C(v20, v21, v28);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = sub_1DD5590A8();
      v25 = v24;
      sub_1DD390754(v4, &qword_1ECCDBBE8, &qword_1DD644470);
      v26 = sub_1DD39565C(v23, v25, v28);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1DD38D000, v17, v18, "[UCG] Discarding overmatched candidate %s (queryOvermatch && nameOvermatch): %s", v19, 0x16u);
      v27 = v29;
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v27, -1, -1);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
    }

    else
    {

      sub_1DD390754(v4, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v7, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    return 0;
  }

  return result;
}

BOOL sub_1DD618420(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4[2] = a2;
  return sub_1DD450638(sub_1DD45D6DC, v4, v2);
}

void sub_1DD618464()
{
  OUTLINED_FUNCTION_18_4();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_14();
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v50 = v9;
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v52 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v12 = OUTLINED_FUNCTION_3(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_82_3();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_3();
  v47 = v15;
  v16 = OUTLINED_FUNCTION_6_2();
  v17 = type metadata accessor for InferenceEuclidLog(v16);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  sub_1DD4B8C28(v7, v1);
  v48 = v1;
  v19 = v1 + *(v18 + 28);
  v45 = type metadata accessor for InferenceEuclidDebugMetrics(0);
  v20 = v19 + *(v45 + 28);
  if (*(v20 + 8) != 1)
  {
    v21 = *(v3 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 48);
    *(v20 + 16) = v21;
    *(v20 + 20) = 0;
  }

  v46 = v19;
  v49 = v3;
  v22 = *(v5 + 16);
  if (v22)
  {
    v23 = v5 + 32;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = v51;
    v26 = (v50 + 32);
    do
    {
      ++v23;
      sub_1DD63D088();
      OUTLINED_FUNCTION_8(v2, 1, v25);
      if (v27)
      {
        sub_1DD390754(v2, &qword_1ECCDBAC8, &qword_1DD643E60);
      }

      else
      {
        v28 = *v26;
        (*v26)(v52, v2, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_26_2();
          sub_1DD3BED30();
          v24 = v35;
        }

        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        if (v31 >= v30 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v30);
          OUTLINED_FUNCTION_21_21();
          sub_1DD3BED30();
          v24 = v36;
        }

        *(v24 + 16) = v31 + 1;
        v25 = v51;
        OUTLINED_FUNCTION_18_3();
        v34 = v24 + v32 + *(v33 + 72) * v31;
        v26 = (v50 + 32);
        v28(v34, v52, v51);
      }

      --v22;
    }

    while (v22);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v37 = *(v45 + 20);

  *(v46 + v37) = v24;
  v38 = *(v49 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 8);

  if (sub_1DD607064(v38) == 3)
  {
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v51);
  }

  else
  {
    sub_1DD6080A0();
  }

  sub_1DD627334(v47, v46, &qword_1ECCDBAC8, &qword_1DD643E60);
  sub_1DD5AC168();
  sub_1DD5AC8AC();
  OUTLINED_FUNCTION_68_4();
  sub_1DD390754(v42, v43, v44);
  sub_1DD627210(v48, type metadata accessor for InferenceEuclidLog);
  OUTLINED_FUNCTION_17();
}

unint64_t sub_1DD61884C(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16F068);

  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_18_1();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1E12B2430](a1, MEMORY[0x1E69E6158]);
    v11 = sub_1DD39565C(v9, v10, &v27);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_78_3();
    _os_log_impl(v12, v13, v14, v15, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v18 = OUTLINED_FUNCTION_10_2();
    MEMORY[0x1E12B3DA0](v18);
    v19 = OUTLINED_FUNCTION_12_49();
    MEMORY[0x1E12B3DA0](v19);
  }

  if (!*(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = *(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 40);
  v20 = *(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 48);
  v23 = *(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 24);
  v22 = *(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 32);
  v24 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer;

  v25 = sub_1DD4B822C(a1, v22, v23, (v2 + v24), v20, v21);

  return v25;
}

uint64_t sub_1DD618B58(uint64_t a1, const void *a2)
{
  memcpy(v12, a2, sizeof(v12));
  sub_1DD3EB3D0(v2 + 56, &v9, &qword_1ECCDCF48, &unk_1DD664BF0);
  if (v10)
  {
    v5 = sub_1DD3AA4A8(&v9, v11);
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_31_0();
    *(v6 - 16) = v11;
    *(v6 - 8) = v12;
    sub_1DD5E7B34(sub_1DD626C34, v7, a1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v3)
    {
      return OUTLINED_FUNCTION_128_0();
    }
  }

  else
  {
    sub_1DD390754(&v9, &qword_1ECCDCF48, &unk_1DD664BF0);
  }

  sub_1DD619204();

  return OUTLINED_FUNCTION_128_0();
}

void *sub_1DD618C84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v58 = a3;
  v57 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD63CD18();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = *(a1 + 8);
  v60 = *a1;
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v20 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v21 = v62;
  result = (*(v19 + 24))(v16, v17, v20, v19);
  if (!v21)
  {
    v54 = v9;
    v62 = v15;
    v23 = v61;
    if (result)
    {
      v24 = result;
      v25 = v62;
      v53 = v24;
      sub_1DD40B108();
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v26 = sub_1DD63F9F8();
      __swift_project_value_buffer(v26, qword_1EE16F068);
      sub_1DD6271B8(v25, v12);
      v27 = v60;

      v28 = sub_1DD63F9D8();
      v29 = sub_1DD640368();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v52 = v29;
        v32 = v31;
        v64[0] = v31;
        *v30 = 136315394;
        v33 = v23;
        v34 = v12;
        v35 = v54;
        v51 = v28;
        Contact.nameComponents.getter(v31);
        v36 = sub_1DD63CCF8();
        v38 = v37;
        (*(v55 + 8))(v35, v56);
        v39 = v34;
        v23 = v33;
        sub_1DD627210(v39, type metadata accessor for Contact);
        v40 = sub_1DD39565C(v36, v38, v64);
        v27 = v60;

        *(v30 + 4) = v40;
        *(v30 + 12) = 2048;
        *(v30 + 14) = v18;
        v41 = v51;
        _os_log_impl(&dword_1DD38D000, v51, v52, "[UCG][ASR-E3] Euclid candidate found: %s, with score: %f", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v32);
        v25 = v62;
        MEMORY[0x1E12B3DA0](v32, -1, -1);
        MEMORY[0x1E12B3DA0](v30, -1, -1);
      }

      else
      {

        sub_1DD627210(v12, type metadata accessor for Contact);
      }

      v43 = v58;
      v44 = v59;
      v45 = v57;
      sub_1DD43038C(v59);
      memcpy(v64, (v44 + 8), 0x108uLL);
      sub_1DD3C9478(v43, &v63);
      sub_1DD3C9580(v64);
      memcpy((v44 + 8), v43, 0x108uLL);
      *(v44 + *(v45 + 232)) = 1;
      v46 = sub_1DD47F270(1, v27);
      v47 = v27;
      v48 = (v44 + *(v45 + 132));
      v48[10] = v46 & 1;
      v48[11] = sub_1DD47F270(4, v47) & 1;
      v48[12] = sub_1DD47F270(2, v47) & 1;
      v48[15] = sub_1DD47F270(16, v47) & 1;
      LOBYTE(v47) = sub_1DD47F270(32, v47);

      v48[8] = v47 & 1;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD6271B8(v44, v23 + *(v49 + 36));
      sub_1DD627288(v25, v23);
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v49);
      return sub_1DD627210(v44, type metadata accessor for ContactResolver.SignalSet);
    }

    else
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      return __swift_storeEnumTagSinglePayload(v23, 1, 1, v42);
    }
  }

  return result;
}

void sub_1DD619204()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_82_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_3();
  v15 = *(v3 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v83 = MEMORY[0x1E69E7CC0];
    v17 = OUTLINED_FUNCTION_54_10();
    sub_1DD42B4F8(v17, v18, v19);
    v16 = v83;
    v79 = (v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer);
    v74 = v0;
    OUTLINED_FUNCTION_24_0();
    v78 = v20;
    v22 = v3 + v21;
    v77 = *(v7 + 72);
    v75 = v11;
    while (1)
    {
      v82 = v15;
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_22_19();
      sub_1DD3EB3D0(v23, v24, v25, v26);
      OUTLINED_FUNCTION_22_19();
      sub_1DD3EB3D0(v27, v28, v29, v30);
      v31 = v79[3];
      v32 = v79[4];
      v33 = __swift_project_boxed_opaque_existential_1(v79, v31);
      v34 = *(sub_1DD417B78(v33, 0, v11, v31, v32) + 16);

      v35 = v11 + *(v80 + 36);
      v36 = type metadata accessor for ContactResolver.SignalSet(0);
      *&v35[*(v36 + 132)] = v34;
      v35[*(v36 + 236)] = 1;
      if (v78)
      {
        v37 = v36;
        v76 = v35;
        v81 = v16;
        v39 = *v11;
        v38 = v11[1];
        v40 = v78;
        v41 = [v40 identifier];
        v42 = sub_1DD63FDD8();
        v44 = v43;

        if (v39 == v42 && v38 == v44)
        {

LABEL_12:
          v53 = [v40 identifier];
          v54 = sub_1DD63FDD8();
          v56 = v55;

          OUTLINED_FUNCTION_28_2();
          sub_1DD390754(v57, v58, v59);

          v60 = HIBYTE(v56) & 0xF;
          if ((v56 & 0x2000000000000000) == 0)
          {
            v60 = v54 & 0xFFFFFFFFFFFFLL;
          }

          v11 = v75;
          v16 = v81;
          if (v60)
          {
            *(v75 + 16) = 1;
            v76[*(v37 + 136)] = 1;
          }

          goto LABEL_16;
        }

        v46 = sub_1DD640CD8();

        if (v46)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_28_2();
        sub_1DD390754(v47, v48, v49);

        v11 = v75;
        v16 = v81;
      }

      else
      {
        OUTLINED_FUNCTION_28_2();
        sub_1DD390754(v50, v51, v52);
      }

LABEL_16:
      OUTLINED_FUNCTION_22_19();
      sub_1DD3EB4B8(v61, v62, v63, v64);
      v66 = *(v16 + 16);
      v65 = *(v16 + 24);
      if (v66 >= v65 >> 1)
      {
        v71 = OUTLINED_FUNCTION_1_0(v65);
        sub_1DD42B4F8(v71, v66 + 1, 1);
      }

      *(v16 + 16) = v66 + 1;
      OUTLINED_FUNCTION_22_19();
      v14 = sub_1DD3EB4B8(v67, v68, v69, v70);
      v22 += v77;
      v15 = v82 - 1;
      if (v82 == 1)
      {
        v1 = v74;
        break;
      }
    }
  }

  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_0();
  *(v72 - 16) = v1;
  *(v72 - 8) = v5;
  sub_1DD605AC0(sub_1DD626C14, v73, v16);

  OUTLINED_FUNCTION_17();
}

void sub_1DD61962C()
{
  OUTLINED_FUNCTION_93();
  v127 = v1;
  v129 = v0;
  v131 = v3;
  v132 = v2;
  v134 = sub_1DD63DE08();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v130 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF38, &unk_1DD664750);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v123 - v8;
  v128 = type metadata accessor for AsrPhoneticSequenceFetcher(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v133 = v11;
  v12 = OUTLINED_FUNCTION_6_2();
  v13 = type metadata accessor for Signpost(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  i = v16 - v15;
  if (qword_1EE166460 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v18 = qword_1EE16F0C0;
    v19 = (i + *(v13 + 20));
    *v19 = "UCG.SearchForCandidatesByName";
    *(v19 + 1) = 29;
    v19[16] = 2;
    v20 = v18;
    sub_1DD63F9B8();
    *(i + *(v13 + 24)) = v20;
    v21 = v20;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    OUTLINED_FUNCTION_23_5();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DD643F90;
    v23 = sub_1DD6408F8();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1DD392BD8();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    OUTLINED_FUNCTION_22();
    v125 = v21;
    sub_1DD63F998();

    v26 = v129;
    sub_1DD3EB3D0(v129 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_phoneSequenceFetcher, v9, &qword_1ECCDCF38, &unk_1DD664750);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v128);
    v28 = v26;
    v126 = i;
    if (EnumTagSinglePayload == 1)
    {
      sub_1DD390754(v9, &qword_1ECCDCF38, &unk_1DD664750);
      v29 = 0;
      v30 = v131;
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_34_19();
    sub_1DD627288(v9, v133);
    v30 = v131;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v31 = sub_1DD63F9F8();
    v32 = __swift_project_value_buffer(v31, qword_1EE16F068);

    v33 = sub_1DD63F9D8();
    sub_1DD640368();

    if (OUTLINED_FUNCTION_103_0())
    {
      OUTLINED_FUNCTION_18_1();
      v34 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v35 = swift_slowAlloc();
      v135 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1DD39565C(v132, v30, &v135);
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v41 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v41);
      v42 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v42);
    }

    v43 = [objc_allocWithZone(MEMORY[0x1E69D1140]) init];
    if (!v43)
    {
      break;
    }

    v29 = v43;
    v44 = sub_1DD3C98E4(v132, v30);
    if (!v44)
    {
LABEL_15:
      v49 = v29;
      v50 = sub_1DD63F9D8();
      sub_1DD640368();
      v51 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v51, v52))
      {
        OUTLINED_FUNCTION_18_1();
        v53 = swift_slowAlloc();
        *v53 = 134217984;
        *(v53 + 4) = [v49 asrTokensCount];

        OUTLINED_FUNCTION_38_8();
        _os_log_impl(v54, v55, v56, v57, v53, 0xCu);
        v58 = OUTLINED_FUNCTION_15_10();
        MEMORY[0x1E12B3DA0](v58);
      }

      else
      {
      }

      OUTLINED_FUNCTION_38_16();
      goto LABEL_22;
    }

    v13 = v44;
    v128 = v32;
    v45 = 0;
    v9 = *(v44 + 16);
    for (i = v44 + 40; ; i += 16)
    {
      if (v9 == v45)
      {

        v30 = v131;
        v28 = v129;
        goto LABEL_15;
      }

      if (v45 >= *(v13 + 16))
      {
        break;
      }

      ++v45;
      v46 = *(i - 8);
      v47 = *i;
      sub_1DD39638C(0, &qword_1ECCDFEF0, 0x1E69D1148);
      swift_bridgeObjectRetain_n();
      v48 = sub_1DD3CA34C(v46, v47);
      [v29 addAsrTokens_];
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v59 = sub_1DD63F9D8();
  sub_1DD640368();
  v60 = OUTLINED_FUNCTION_5_32();
  if (os_log_type_enabled(v60, v61))
  {
    OUTLINED_FUNCTION_28();
    v62 = swift_slowAlloc();
    *v62 = 0;
    OUTLINED_FUNCTION_38_8();
    _os_log_impl(v63, v64, v65, v66, v62, 2u);
    v67 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x1E12B3DA0](v67);
  }

  OUTLINED_FUNCTION_38_16();
  v29 = 0;
LABEL_22:
  v68 = v127;
  v69 = v28[5];
  v13 = v28[6];
  __swift_project_boxed_opaque_existential_1(v28 + 2, v69);
  v70 = v28 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config;
  v71 = type metadata accessor for ContactResolverConfig(0);
  v72 = (*(v13 + 8))(v132, v30, &v70[*(v71 + 32)], v29, v69, v13);
  if (v68)
  {

    sub_1DD6404C8();
    v73 = v126;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_1_133();
    sub_1DD627210(v73, v74);
  }

  else
  {
    i = v72;
    v123[1] = 0;
    v124 = v29;
    v9 = sub_1DD3CC020();
    v75 = 0;
    v133 = i & 0xC000000000000001;
    v76 = MEMORY[0x1E69E7CC0];
    while (v9 != v75)
    {
      if (v133)
      {
        v13 = MEMORY[0x1E12B2C10](v75, i);
      }

      else
      {
        if (v75 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v13 = *(i + 8 * v75 + 32);
      }

      if (__OFADD__(v75, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      sub_1DD63E6B8();
      OUTLINED_FUNCTION_132();
      if (v135 || (sub_1DD63E958(), OUTLINED_FUNCTION_132(), v135))
      {
        v77 = sub_1DD63E308();

        if (v77)
        {
          v78 = v77;
        }

        else
        {
          v78 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {

        v78 = MEMORY[0x1E69E7CC0];
      }

      v13 = *(v78 + 16);
      v79 = *(v76 + 16);
      if (__OFADD__(v79, v13))
      {
        goto LABEL_70;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v79 + v13 > *(v76 + 24) >> 1)
      {
        sub_1DD3C11C4();
        v76 = v80;
      }

      if (*(v78 + 16))
      {
        OUTLINED_FUNCTION_51_10();
        if (v82 < v13)
        {
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_72_3(v81);
        swift_arrayInitWithCopy();

        if (v13)
        {
          v83 = *(v76 + 16);
          v84 = __OFADD__(v83, v13);
          v85 = v83 + v13;
          if (v84)
          {
            goto LABEL_74;
          }

          *(v76 + 16) = v85;
        }
      }

      else
      {

        if (v13)
        {
          goto LABEL_71;
        }
      }

      ++v75;
    }

    v86 = *(v76 + 16);
    if (v86)
    {
      OUTLINED_FUNCTION_24_0();
      v88 = v76 + v87;
      v128 = *(v89 + 56);
      v129 = v90;
      v127 = v89 - 8;
      v91 = MEMORY[0x1E69E7CC0];
      do
      {
        (v129)(v130, v88, v134);
        sub_1DD61A0C8();
        v92 = OUTLINED_FUNCTION_96_1();
        v93(v92);
        v95 = v135;
        v94 = v136;
        v97 = v137;
        v96 = v138;
        if (v136)
        {
          v133 = v139;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_26_2();
            sub_1DD3C10F4();
            v91 = v103;
          }

          v99 = *(v91 + 16);
          v98 = *(v91 + 24);
          v100 = v91;
          if (v99 >= v98 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v98);
            sub_1DD3C10F4();
            v100 = v104;
          }

          *(v100 + 16) = v99 + 1;
          v91 = v100;
          v101 = (v100 + 40 * v99);
          v101[4] = v95;
          v101[5] = v94;
          v101[6] = v97;
          v101[7] = v96;
          v101[8] = v133;
        }

        else
        {
          sub_1DD626BC4(v135, 0);
        }

        v88 += v128;
        --v86;
        v102 = v132;
      }

      while (v86);
    }

    else
    {

      v91 = MEMORY[0x1E69E7CC0];
      v102 = v132;
    }

    v105 = *(v91 + 16);
    v106 = v126;
    v107 = v131;
    v108 = v124;
    if (!v105)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v109 = sub_1DD63F9F8();
      __swift_project_value_buffer(v109, qword_1EE16F068);

      v110 = sub_1DD63F9D8();
      v111 = sub_1DD640368();

      if (os_log_type_enabled(v110, v111))
      {
        OUTLINED_FUNCTION_18_1();
        v112 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v113 = swift_slowAlloc();
        v114 = v102;
        v115 = v113;
        v135 = v113;
        *v112 = 136315138;
        *(v112 + 4) = sub_1DD39565C(v114, v107, &v135);
        OUTLINED_FUNCTION_38_8();
        _os_log_impl(v116, v117, v118, v119, v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v115);
        v120 = OUTLINED_FUNCTION_15_10();
        MEMORY[0x1E12B3DA0](v120);
        v121 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v121);
      }
    }

    sub_1DD6404C8();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_1_133();
    sub_1DD627210(v106, v122);
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD61A0C8()
{
  OUTLINED_FUNCTION_18_4();
  v258 = v2;
  v259 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFEF8, &qword_1DD664BD8);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_2(v8);
  v257 = sub_1DD63E448();
  OUTLINED_FUNCTION_0();
  v244 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v11);
  v249 = sub_1DD63EE88();
  OUTLINED_FUNCTION_0();
  v250 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v248 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF00, &unk_1DD664BE0);
  OUTLINED_FUNCTION_3(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_2(v17);
  v247 = sub_1DD63EEB8();
  OUTLINED_FUNCTION_0();
  v246 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v20);
  v260 = sub_1DD63DD88();
  OUTLINED_FUNCTION_0();
  v256 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  v252 = v23;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v237 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v29);
  v30 = sub_1DD63DE08();
  OUTLINED_FUNCTION_0();
  v255 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1_4();
  v35 = (v33 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v237 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v237 - v40;
  v42 = sub_1DD63DDC8();
  if (!v43)
  {
    goto LABEL_23;
  }

  v44 = v42;
  v45 = v43;
  v46 = sub_1DD63DD98();
  v251 = v47;
  if (!v47)
  {

LABEL_23:
    v5[4] = 0;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    goto LABEL_33;
  }

  v241 = v46;
  v243 = v5;
  v242 = v0;
  v48 = sub_1DD63DDD8();
  if (!v49)
  {
    goto LABEL_9;
  }

  v50 = v48 == 0x50646574616C6552 && v49 == 0xED00006E6F737265;
  if (v50)
  {

    goto LABEL_26;
  }

  v51 = sub_1DD640CD8();

  if (v51)
  {
LABEL_26:

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v71 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v71, qword_1EE16F068);
    v72 = v251;

    v73 = sub_1DD63F9D8();
    v74 = sub_1DD640368();

    v75 = os_log_type_enabled(v73, v74);
    v76 = v243;
    if (v75)
    {
      OUTLINED_FUNCTION_18_1();
      v77 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v78 = swift_slowAlloc();
      v263 = v78;
      *v77 = 136315138;
      v79 = sub_1DD39565C(v241, v72, &v263);

      *(v77 + 4) = v79;
      OUTLINED_FUNCTION_38_8();
      _os_log_impl(v80, v81, v82, v83, v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      v84 = OUTLINED_FUNCTION_8_6();
      MEMORY[0x1E12B3DA0](v84);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

    goto LABEL_32;
  }

LABEL_9:
  if (qword_1ECCDB150 != -1)
  {
    swift_once();
  }

  v52 = OUTLINED_FUNCTION_94_1();
  if (sub_1DD47EEBC(v52, v53, v54) || (v55 = sub_1DD63DDB8(), (v55 & 0x100000000) != 0) || (v56 = v55, v57 = sub_1DD63DDE8(), (v57 & 0x100000000) != 0))
  {

    v70 = v243;
    v243[4] = 0;
    *v70 = 0u;
    v70[1] = 0u;
    goto LABEL_33;
  }

  v58 = v56;
  v238 = v56;
  v239 = v57;
  v59 = v259;
  v60 = v258;
  sub_1DD6211E4(v259, v258, v58, v57);
  v263 = v59;
  v264 = v60;
  v240 = sub_1DD3B7F10();

  v238 = sub_1DD63FEF8();
  v263 = v59;
  v264 = v60;

  v61 = sub_1DD63FEF8() >> 14;
  if (v61 <= v238 >> 14)
  {
    goto LABEL_18;
  }

  v62 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v62 = v259 & 0xFFFFFFFFFFFFLL;
  }

  if (v61 > 4 * v62)
  {
LABEL_18:

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v63 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v63, qword_1EE16F068);
    v64 = v255;
    (*(v255 + 16))(v35, v242, v30);
    v65 = v258;

    v66 = sub_1DD63F9D8();
    v67 = sub_1DD640378();

    v68 = os_log_type_enabled(v66, v67);
    v5 = v243;
    if (v68)
    {
      OUTLINED_FUNCTION_58_9();
      v69 = swift_slowAlloc();
      OUTLINED_FUNCTION_64_6();
      v263 = swift_slowAlloc();
      *v69 = 136315394;
      *(v69 + 4) = sub_1DD39565C(v259, v65, &v263);
      *(v69 + 12) = 2080;
      v95 = sub_1DD632D2C();
      v97 = v96;
      (*(v255 + 8))(v35, v30);
      v98 = sub_1DD39565C(v95, v97, &v263);

      *(v69 + 14) = v98;
      _os_log_impl(&dword_1DD38D000, v66, v67, "[UCG] Indexes look wrong for query string '%s': %s", v69, 0x16u);
      swift_arrayDestroy();
      v99 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v99);
      v100 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v100);
    }

    else
    {

      (*(v64 + 8))(v35, v30);
    }

    goto LABEL_23;
  }

  v85 = sub_1DD640058();
  v238 = MEMORY[0x1E12B2190](v85);
  v239 = v86;

  if (v44 == sub_1DD63FDD8() && v45 == v87)
  {

    v93 = 0;
    v94 = 0;
    OUTLINED_FUNCTION_48_16();
  }

  else
  {
    OUTLINED_FUNCTION_94_1();
    v89 = sub_1DD640CD8();

    OUTLINED_FUNCTION_48_16();
    if (v89 & 1) != 0 || ((OUTLINED_FUNCTION_122_0(), v44 == v91 + 9) ? (v92 = v45 == v90) : (v92 = 0), v92 || (OUTLINED_FUNCTION_94_1(), (sub_1DD640CD8())))
    {
      v93 = 0;
      v94 = 0;
    }

    else
    {

      v93 = v44;
      v94 = v45;
    }
  }

  OUTLINED_FUNCTION_122_0();
  v103 = v44 == v102 + 2 && v45 == v101;
  if (v103 || (OUTLINED_FUNCTION_94_1(), (sub_1DD640CD8() & 1) != 0))
  {

    if (qword_1EE165FB0 == -1)
    {
LABEL_53:
      v104 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v104, qword_1EE16F068);
      v105 = v255;
      v106 = *(v255 + 16);
      OUTLINED_FUNCTION_73_2();
      v106();
      v257 = v94;
      v107 = sub_1DD63F9D8();
      sub_1DD640368();
      v108 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v108, v109))
      {
        OUTLINED_FUNCTION_18_1();
        v110 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v35 = swift_slowAlloc();
        v263 = v35;
        *v110 = 136315138;
        (v106)(v38, v41, v30);
        v111 = sub_1DD63FE38();
        v113 = v112;
        v115 = *(v105 + 8);
        v114 = v105 + 8;
        v115(v41, v30);
        v116 = sub_1DD39565C(v111, v113, &v263);

        *(v110 + 4) = v116;
        OUTLINED_FUNCTION_78_3();
        _os_log_impl(v117, v118, v119, v120, v121, v122);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_48_16();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_73_2();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {

        v123 = *(v105 + 8);
        v114 = v105 + 8;
        v123(v41, v30);
      }

      v124 = v243;
      sub_1DD63DDD8();
      OUTLINED_FUNCTION_106_0();
      if (!v126)
      {
        goto LABEL_62;
      }

      if (v125 == 0x4364656E7261656CLL && v126 == 0xEE00746361746E6FLL)
      {
      }

      else
      {
        v128 = sub_1DD640CD8();

        if ((v128 & 1) == 0)
        {
LABEL_62:

          v124[4] = 0;
          *v124 = 0u;
          *(v124 + 1) = 0u;
          goto LABEL_33;
        }
      }

      v135 = *(sub_1DD63DDA8() + 16);
      if (v135)
      {
        v136 = v256 + 16;
        v259 = *(v256 + 16);
        OUTLINED_FUNCTION_24_0();
        v255 = v137;
        v139 = v137 + v138;
        v258 = *(v136 + 56);
        v35 = (v136 - 8);
        v140 = MEMORY[0x1E69E7CC0];
        v256 = v136;
        while (1)
        {
          OUTLINED_FUNCTION_112_0();
          (v259)();
          if (sub_1DD63DD78() == 0xD000000000000012 && 0x80000001DD674FC0 == v141)
          {
            break;
          }

          v143 = sub_1DD640CD8();

          if (v143)
          {
            goto LABEL_82;
          }

          (*v35)(v261, v114);
LABEL_92:
          v139 += v258;
          if (!--v135)
          {

            OUTLINED_FUNCTION_48_16();
            goto LABEL_95;
          }
        }

LABEL_82:
        v144 = v261;
        v145 = sub_1DD63DD58();
        v147 = v146;
        (*v35)(v144, v114);
        if (v147)
        {
          v148 = HIBYTE(v147) & 0xF;
          if ((v147 & 0x2000000000000000) == 0)
          {
            v148 = v145 & 0xFFFFFFFFFFFFLL;
          }

          if (v148)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_26_2();
              sub_1DD3BE2A4();
              v140 = v152;
            }

            v150 = v140[2];
            v149 = v140[3];
            v114 = v150 + 1;
            if (v150 >= v149 >> 1)
            {
              OUTLINED_FUNCTION_1_0(v149);
              OUTLINED_FUNCTION_21_21();
              sub_1DD3BE2A4();
              v140 = v153;
            }

            v140[2] = v114;
            v151 = &v140[2 * v150];
            v151[4] = v145;
            v151[5] = v147;
            OUTLINED_FUNCTION_106_0();
          }

          else
          {
          }
        }

        goto LABEL_92;
      }

      v140 = MEMORY[0x1E69E7CC0];
LABEL_95:
      v76 = v243;
      if (v140[2] == 1)
      {
        v155 = v140[4];
        v154 = v140[5];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC98, &qword_1DD644078);
        *(swift_initStackObject() + 16) = xmmword_1DD643F90;
        OUTLINED_FUNCTION_43_16();
        *(v156 + 32) = v158;
        *(v156 + 40) = v157;
        *(v156 + 48) = v241;
        *(v156 + 56) = v35;
        *(v156 + 64) = 0;
        *(v156 + 72) = 2;
        sub_1DD56C80C(v156);
        *v76 = v155;
        v76[1] = v154;
        v76[2] = 0;
        v76[3] = 0;
        v76[4] = v159;
        goto LABEL_33;
      }

      v160 = sub_1DD63F9D8();
      sub_1DD640368();
      v161 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v161, v162))
      {
        OUTLINED_FUNCTION_18_1();
        v164 = swift_slowAlloc();
        *v164 = 134217984;
        v165 = v140[2];

        *(v164 + 4) = v165;

        OUTLINED_FUNCTION_41_14();
        _os_log_impl(v166, v167, v168, v169, v170, 0xCu);
        v171 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v171);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

LABEL_32:
      v76[4] = 0;
      *v76 = 0u;
      *(v76 + 1) = 0u;
      goto LABEL_33;
    }

LABEL_155:
    OUTLINED_FUNCTION_0_2();
    swift_once();
    goto LABEL_53;
  }

  v237 = v93;
  v30 = 0xEE0065756C61765FLL;
  v38 = 0x6369746E616D6573;
  v255 = v94;

  v94 = v242;
  v41 = sub_1DD63DDA8();
  v129 = 0;
  v35 = *(v41 + 2);
  v261 = v256 + 16;
  v259 = v256 + 8;
  OUTLINED_FUNCTION_106_0();
  while (1)
  {
    if (v35 == v129)
    {

      v172 = 0;
      v173 = 0;
      v174 = 0;
      OUTLINED_FUNCTION_48_16();
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_8_68();
      goto LABEL_109;
    }

    if (v129 >= *(v41 + 2))
    {
      __break(1u);
      goto LABEL_155;
    }

    OUTLINED_FUNCTION_18_3();
    (*(v131 + 16))(v26, &v41[v130 + *(v131 + 72) * v129], v44);
    v132 = sub_1DD63DD78();
    v94 = v133;
    if (v132 == 0x6369746E616D6573 && v133 == 0xEE0065756C61765FLL)
    {

      goto LABEL_104;
    }

    v44 = sub_1DD640CD8();

    if (v44)
    {
      break;
    }

    v44 = v260;
    (*v259)(v26, v260);
    ++v129;
  }

  OUTLINED_FUNCTION_106_0();
LABEL_104:

  v175 = v256 + 32;
  (*(v256 + 32))(v1, v26, v44);
  v173 = sub_1DD63DD58();
  v176 = *(v175 - 24);
  v174 = v177;
  v176(v1, v44);
  OUTLINED_FUNCTION_48_16();
  OUTLINED_FUNCTION_8_68();
  if (v174)
  {

    v172 = v173;
  }

  else
  {
    v172 = 0;
  }

  OUTLINED_FUNCTION_117_0();
LABEL_109:
  v178 = v245;
  sub_1DD63DDF8();
  OUTLINED_FUNCTION_8(v178, 1, v1);
  if (v50)
  {

    sub_1DD390754(v178, &qword_1ECCDFF00, &unk_1DD664BE0);
    v179 = 0;
    OUTLINED_FUNCTION_73_2();
  }

  else
  {
    (*(v246 + 32))(v44, v178, v1);
    v180 = v248;
    sub_1DD63EE68();
    v181 = sub_1DD63EE38();
    v182 = *(v250 + 8);
    v250 += 8;
    (v182)(v180, v249);
    if (v181)
    {
      v183 = 32;
    }

    else
    {
      v183 = 0;
    }

    if (v174)
    {
      v263 = v173;
      v264 = v174;
      OUTLINED_FUNCTION_43_16();
      v262[0] = v185;
      v262[1] = v184;

      v186 = sub_1DD640688();
      swift_bridgeObjectRelease_n();

      LODWORD(v258) = v186 == 0;
    }

    else
    {

      LODWORD(v258) = 0;
    }

    v187 = v248;
    sub_1DD63EE48();
    v188 = sub_1DD63EE38();
    OUTLINED_FUNCTION_45_12();
    v182();
    OUTLINED_FUNCTION_73_2();
    if ((v188 & 1) != 0 || (v35 = v41, sub_1DD63EE78(), v189 = sub_1DD63EE38(), OUTLINED_FUNCTION_48_16(), OUTLINED_FUNCTION_45_12(), v182(), !(v258 & 1 | ((v189 & 1) == 0))))
    {
      v183 |= 0x80uLL;
    }

    v258 = v183;
    sub_1DD63EE58();
    v190 = sub_1DD63EE38();
    OUTLINED_FUNCTION_45_12();
    v182();
    if ((v190 & 1) == 0)
    {
      OUTLINED_FUNCTION_39_14();
      OUTLINED_FUNCTION_105_1();
      v203();
      goto LABEL_131;
    }

    v191 = sub_1DD63EE98();
    v192 = v258;
    if ((v191 & 0x100000000) != 0 || (v193 = v191, v194 = sub_1DD63EEA8(), (v194 & 0x100000000) != 0) || v193 >= v194)
    {
      OUTLINED_FUNCTION_39_14();
      OUTLINED_FUNCTION_105_1();
      v204();
      v179 = v192 | 0x40;
    }

    else
    {
      v195 = v174;
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v196 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v196, qword_1EE16F068);

      v197 = sub_1DD63F9D8();
      v198 = sub_1DD640368();

      if (os_log_type_enabled(v197, v198))
      {
        OUTLINED_FUNCTION_18_1();
        v199 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v200 = swift_slowAlloc();
        v262[0] = v200;
        *v199 = 136315138;
        if (v41)
        {
          v187 = v251;
          v263 = v241;
          v264 = v251;
          swift_bridgeObjectRetain_n();
          OUTLINED_FUNCTION_8_68();

          MEMORY[0x1E12B2260](64, 0xE100000000000000);
          MEMORY[0x1E12B2260](v237, v41);

          v201 = v263;
          v202 = v264;
        }

        else
        {
          v202 = v251;

          v201 = v241;
        }

        sub_1DD39565C(v201, v202, v262);
        OUTLINED_FUNCTION_115_0();

        *(v199 + 4) = v187;
        _os_log_impl(&dword_1DD38D000, v197, v198, "[UCG] Skipping hypocorism annotation of match for %s because there are also non-alias token matches", v199, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v200);
        v234 = OUTLINED_FUNCTION_15_10();
        MEMORY[0x1E12B3DA0](v234);
        v235 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v235);

        OUTLINED_FUNCTION_39_14();
        OUTLINED_FUNCTION_105_1();
        v236();
        OUTLINED_FUNCTION_48_16();
        OUTLINED_FUNCTION_73_2();
        OUTLINED_FUNCTION_8_68();
      }

      else
      {

        OUTLINED_FUNCTION_39_14();
        OUTLINED_FUNCTION_105_1();
        v233();
        OUTLINED_FUNCTION_73_2();
      }

      v174 = v195;
LABEL_131:
      v179 = v258;
    }
  }

  v205 = sub_1DD63FC88();
  v206 = sub_1DD63DDA8();
  v207 = *(v206 + 16);
  if (v207)
  {
    v258 = v179;
    v249 = v172;
    v250 = v174;
    OUTLINED_FUNCTION_18_3();
    v248 = v206;
    v209 = v206 + v208;
    v211 = *(v210 + 72);
    v212 = *(v210 + 16);
    v213 = (v244 + 32);
    v35 = (v244 + 8);
    do
    {
      v214 = v252;
      v215 = OUTLINED_FUNCTION_96_1();
      v41 = v260;
      v212(v215);
      v216 = v254;
      sub_1DD63DD68();
      v217 = v214;
      v218 = v216;
      (*v259)(v217, v41);
      v219 = v216;
      v220 = v257;
      OUTLINED_FUNCTION_8(v219, 1, v257);
      if (v50)
      {
        sub_1DD390754(v218, &qword_1ECCDFEF8, &qword_1DD664BD8);
      }

      else
      {
        (*v213)(v253, v218, v220);
        sub_1DD63E438();
        v41 = v221;
        if (*(v205 + 16))
        {
          v222 = sub_1DD3978DC();
          v224 = v223;

          v225 = *v35;
          if (v224)
          {
            v226 = *(*(v205 + 56) + 8 * v222);
            v225(v253, v257);
            if ((v226 & ~v258) != 0)
            {
              v227 = v226;
            }

            else
            {
              v227 = 0;
            }

            v258 |= v227;
          }

          else
          {
            v225(v253, v257);
          }
        }

        else
        {

          (*v35)(v253, v220);
        }
      }

      v209 += v211;
      --v207;
    }

    while (v207);

    OUTLINED_FUNCTION_48_16();
    OUTLINED_FUNCTION_8_68();
    v174 = v250;
    v172 = v249;
    v179 = v258;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC98, &qword_1DD644078);
  *(swift_initStackObject() + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_43_16();
  *(v228 + 32) = v230;
  *(v228 + 40) = v229;
  *(v228 + 48) = v179;
  *(v228 + 56) = v172;
  *(v228 + 64) = v174;
  *(v228 + 72) = 0;
  sub_1DD56C80C(v228);
  v231 = v243;
  *v243 = v241;
  v231[1] = v35;
  v231[2] = v237;
  v231[3] = v41;
  v231[4] = v232;
LABEL_33:
  OUTLINED_FUNCTION_17();
}

void sub_1DD61B8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  v308 = v21;
  v309 = v20;
  v297 = v22;
  v23 = OUTLINED_FUNCTION_14();
  v24 = type metadata accessor for Signpost(v23);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  v28 = (v27 - v26);
  v29 = v20[1];
  v294 = *v20;
  v299 = v29;
  v30 = v20[2];
  if (qword_1EE166460 != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    v31 = qword_1EE16F0C0;
    v32 = v28 + *(v24 + 20);
    *v32 = "UCG.SearchForCandidatesByRelationship";
    *(v32 + 1) = 37;
    v32[16] = 2;
    v33 = v31;
    sub_1DD63F9B8();
    *(v28 + *(v24 + 24)) = v33;
    v34 = v33;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    OUTLINED_FUNCTION_23_5();
    v35 = swift_allocObject();
    v307 = xmmword_1DD643F90;
    *(v35 + 16) = xmmword_1DD643F90;
    v36 = sub_1DD6408F8();
    v38 = v37;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1DD392BD8();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v289 = v35;
    LOBYTE(v288) = 2;
    OUTLINED_FUNCTION_22();
    v295 = v34;
    v296 = v28;
    sub_1DD63F998();

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
    v40 = swift_allocObject();
    *(v40 + 16) = v307;
    *(v40 + 32) = v299;
    *(v40 + 40) = v30;

    MEMORY[0x1EEE9AC00](v41);
    v28 = v309;
    v289 = v309;
    v290 = v297;
    swift_bridgeObjectRetain_n();
    v42 = v308;
    v43 = sub_1DD471094(MEMORY[0x1E69E7CD0], sub_1DD626B68, &v287, v40);
    if (v42)
    {
      break;
    }

    v24 = v43;
    v298 = v39;
    v305 = 0;
    v302 = v30;
    swift_setDeallocating();
    sub_1DD46CAFC();
    v46 = v24 + 56;
    OUTLINED_FUNCTION_4_1();
    v30 = v48 & v47;
    v50 = (v49 + 63) >> 6;

    v51 = 0;
    v52 = qword_1EE16F068;
    *&v53 = 136315394;
    v292 = v53;
    *&v303 = v24;
    v304 = v24 + 56;
    if (!v30)
    {
      goto LABEL_8;
    }

    do
    {
      v54 = v51;
LABEL_11:
      v38 = *(*(v24 + 48) + ((v54 << 7) | (2 * __clz(__rbit64(v30)))));
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v30 &= v30 - 1;
      v55 = sub_1DD63F9F8();
      __swift_project_value_buffer(v55, qword_1EE16F068);
      v56 = sub_1DD63F9D8();
      LODWORD(v308) = sub_1DD640368();
      v57 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v57, v58))
      {
        OUTLINED_FUNCTION_58_9();
        v59 = swift_slowAlloc();
        OUTLINED_FUNCTION_64_6();
        *&v307 = swift_slowAlloc();
        *v316 = v307;
        *v59 = v292;
        v60 = sub_1DD538ED0(v38);
        v62 = sub_1DD39565C(v60, v61, v316);

        *(v59 + 4) = v62;
        *(v59 + 12) = 2080;
        sub_1DD534E3C(v38);
        v63 = MEMORY[0x1E12B2430]();
        v65 = v64;

        v66 = sub_1DD39565C(v63, v65, v316);
        v28 = v309;

        *(v59 + 14) = v66;
        v52 = qword_1EE16F068;
        _os_log_impl(&dword_1DD38D000, v56, v308, "[UCG] CN relationship keys for: '%s': %s", v59, 0x16u);
        v38 = v307;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v24 = v303;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      v51 = v54;
      v46 = v304;
    }

    while (v30);
    while (1)
    {
LABEL_8:
      v54 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_175;
      }

      if (v54 >= v50)
      {
        break;
      }

      v30 = *(v46 + 8 * v54);
      ++v51;
      if (v30)
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_35_17(MEMORY[0x1E69E7CC0]);
    v67 = 0;
    v68 = v298;
    v69 = MEMORY[0x1E69E7CD0];
    v293 = v46;
LABEL_18:
    v30 = v302;
    if (v52)
    {
LABEL_22:
      v71 = OUTLINED_FUNCTION_37_18();
      v30 = sub_1DD534E3C(v71);
      v24 = 0;
      v308 = *(v30 + 16);
      v28 = (v30 + 40);
      v72 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v308 == v24)
        {

          v38 = *(v72 + 16);
          if (v38)
          {
            v315[0] = MEMORY[0x1E69E7CC0];
            v83 = OUTLINED_FUNCTION_54_10();
            sub_1DD42C1B8(v83, v84, v85);
            v86 = v315[0];
            v87 = v72 + 40;
            do
            {
              v308 = sub_1DD538ED0(v306);
              *&v307 = v88;
              v315[0] = v86;
              v90 = *(v86 + 16);
              v89 = *(v86 + 24);

              if (v90 >= v89 >> 1)
              {
                sub_1DD42C1B8(v89 > 1, v90 + 1, 1);
                v86 = v315[0];
              }

              *(v86 + 16) = v90 + 1;
              OUTLINED_FUNCTION_121_0((v86 + 32 * v90));
              v87 += 16;
              --v38;
            }

            while (v38);
          }

          else
          {

            v86 = MEMORY[0x1E69E7CC0];
          }

          sub_1DD607E00(v86);
          v28 = v309;
          v24 = v303;
          v68 = v298;
          v69 = MEMORY[0x1E69E7CD0];
          v46 = v293;
          v52 = v300;
          v67 = v301;
          goto LABEL_18;
        }

        if (v24 >= *(v30 + 16))
        {
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v73 = sub_1DD60EC70();
        if (*(v73 + 16) && (v74 = sub_1DD3978DC(), (v75 & 1) != 0))
        {
          v76 = *(*(v73 + 56) + 8 * v74);
        }

        else
        {
          v76 = MEMORY[0x1E69E7CC0];
        }

        v38 = *(v76 + 16);
        v77 = *(v72 + 16);
        if (__OFADD__(v77, v38))
        {
          goto LABEL_167;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v77 + v38 > *(v72 + 24) >> 1)
        {
          sub_1DD3BE2A4();
          v72 = v78;
        }

        if (*(v76 + 16))
        {
          OUTLINED_FUNCTION_51_10();
          if (v79 < v38)
          {
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          swift_arrayInitWithCopy();

          if (v38)
          {
            v80 = *(v72 + 16);
            v81 = __OFADD__(v80, v38);
            v82 = v80 + v38;
            if (v81)
            {
              goto LABEL_174;
            }

            *(v72 + 16) = v82;
          }
        }

        else
        {

          if (v38)
          {
            goto LABEL_168;
          }
        }

        v28 += 2;
        ++v24;
      }
    }

    while (1)
    {
      v70 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_179;
      }

      if (v70 >= v46)
      {
        break;
      }

      v52 = *(v304 + 8 * v70);
      ++v67;
      if (v52)
      {
        goto LABEL_22;
      }
    }

    v318 = *v316;
    if (*(*v316 + 16))
    {
      goto LABEL_81;
    }

    v291 = *v316;
    OUTLINED_FUNCTION_35_17(MEMORY[0x1E69E7CC0]);
    v91 = 0;
    v293 = v46;
LABEL_50:
    if (!v52)
    {
      while (1)
      {
        v92 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          goto LABEL_185;
        }

        if (v92 >= v46)
        {
          break;
        }

        v52 = *(v304 + 8 * v92);
        ++v91;
        if (v52)
        {
          goto LABEL_54;
        }
      }

      v318 = *v316;
      if (*(*v316 + 16))
      {
LABEL_81:

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v317 = v69;
        v209 = swift_allocObject();
        *(v209 + 16) = xmmword_1DD652040;
        v28 = v299;
        *(v209 + 32) = v299;
        *(v209 + 40) = v30;
        *v316 = v28;
        *&v316[8] = v30;
        v315[0] = 32;
        v315[1] = 0xE100000000000000;
        v311 = 0;
        v312 = 0xE000000000000000;
        v210 = sub_1DD3B7F10();
        v289 = v210;
        v290 = v210;
        OUTLINED_FUNCTION_80_2();
        v288 = v210;
        v211 = MEMORY[0x1E69E6158];
        v287 = MEMORY[0x1E69E6158];
        OUTLINED_FUNCTION_21_36();
        sub_1DD640678();
        OUTLINED_FUNCTION_79_3();

        *(v209 + 48) = v68;
        *(v209 + 56) = v52;
        *v316 = v28;
        *&v316[8] = v30;
        v315[0] = 32;
        v315[1] = 0xE100000000000000;
        v311 = 45;
        v312 = 0xE100000000000000;
        v286[0] = v210;
        v286[1] = v210;
        OUTLINED_FUNCTION_80_2();
        v285[0] = v211;
        v285[1] = v210;
        OUTLINED_FUNCTION_21_36();
        sub_1DD640678();
        OUTLINED_FUNCTION_79_3();

        *(v209 + 64) = v68;
        *(v209 + 72) = v52;
        *v316 = v28;
        *&v316[8] = v30;
        v315[0] = 32;
        v315[1] = 0xE100000000000000;
        v311 = 95;
        v312 = 0xE100000000000000;
        v283 = v210;
        v284 = v210;
        OUTLINED_FUNCTION_80_2();
        v282[0] = v211;
        v282[1] = v210;
        OUTLINED_FUNCTION_21_36();
        v212 = sub_1DD640678();
        v214 = v213;

        *(v209 + 80) = v212;
        *(v209 + 88) = v214;
        v215 = *(v309 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer + 24);
        v216 = *(v309 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer + 32);
        __swift_project_boxed_opaque_existential_1((v309 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer), v215);
        v217 = OUTLINED_FUNCTION_19();
        *v316 = sub_1DD5E8CD4(v217, v218, v215, v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
        sub_1DD4477A4();
        v219 = sub_1DD63FD58();
        v221 = v220;

        *(v209 + 96) = v219;
        *(v209 + 104) = v221;
        sub_1DD6089D4(v209);
        v222 = v305;
        sub_1DD605C6C(v303, v223, v224, v225, v226, v227, v228);
        v230 = v229;

        v231 = sub_1DD6089D4(v230);
        v232 = v285;
        v233 = v317;
        MEMORY[0x1EEE9AC00](v231);
        v283 = v297;

        v238 = sub_1DD605EA4(sub_1DD626BA4, v282, v233, v234, v235, v236, v237);
        v239 = v222;

        sub_1DD41859C(v238);
        OUTLINED_FUNCTION_115_0();

        v317 = v285;
        if (qword_1EE165FB0 != -1)
        {
LABEL_192:
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v240 = sub_1DD63F9F8();
        v241 = __swift_project_value_buffer(v240, qword_1EE16F068);
        OUTLINED_FUNCTION_89_2();

        v242 = sub_1DD63F9D8();
        v243 = sub_1DD640368();

        v244 = OUTLINED_FUNCTION_103_0();
        v308 = v232;
        v305 = v241;
        v306 = v239;
        if (v244)
        {
          OUTLINED_FUNCTION_58_9();
          v245 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_6();
          v246 = swift_slowAlloc();
          v247 = v30;
          v30 = v246;
          *v316 = v246;
          *v245 = v292;
          *(v245 + 4) = sub_1DD39565C(v299, v247, v316);
          *(v245 + 12) = 2080;

          v248 = sub_1DD640278();
          v28 = v249;

          v250 = sub_1DD39565C(v248, v28, v316);

          *(v245 + 14) = v250;
          v232 = v308;
          _os_log_impl(&dword_1DD38D000, v242, v243, "[UCG] No semantic CN relationship found for '%s'. Will search for it as a custom relationship using these potential labels: %s", v245, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        *&v307 = v232 + 7;
        OUTLINED_FUNCTION_4_1();
        v24 = v252 & v251;
        v239 = (v253 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v254 = 0;
        v255 = MEMORY[0x1E69E7CC0];
        while (v24)
        {
LABEL_148:

          v257 = sub_1DD60EC70();
          if (*(v257 + 16) && (v258 = sub_1DD3978DC(), (v259 & 1) != 0))
          {
            v232 = *(*(v257 + 56) + 8 * v258);
          }

          else
          {
            v232 = MEMORY[0x1E69E7CC0];
          }

          v30 = v232[2];
          v260 = *(v255 + 16);
          v28 = (v260 + v30);
          if (__OFADD__(v260, v30))
          {
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
            goto LABEL_192;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v28 > *(v255 + 24) >> 1)
          {
            sub_1DD3BE2A4();
            v255 = v261;
          }

          v24 &= v24 - 1;
          if (v232[2])
          {
            OUTLINED_FUNCTION_47_12();
            if (v262 < v30)
            {
              goto LABEL_190;
            }

            swift_arrayInitWithCopy();

            v232 = v308;
            if (v30)
            {
              v263 = *(v255 + 16);
              v81 = __OFADD__(v263, v30);
              v264 = v263 + v30;
              if (v81)
              {
                goto LABEL_191;
              }

              *(v255 + 16) = v264;
            }
          }

          else
          {

            v232 = v308;
            if (v30)
            {
              __break(1u);
              goto LABEL_163;
            }
          }
        }

        while (1)
        {
          v256 = v254 + 1;
          if (__OFADD__(v254, 1))
          {
            goto LABEL_187;
          }

          if (v256 >= v239)
          {
            break;
          }

          v24 = *(v307 + 8 * v256);
          ++v254;
          if (v24)
          {
            v254 = v256;
            goto LABEL_148;
          }
        }

LABEL_163:

        v265 = sub_1DD41859C(v255);
        v266 = sub_1DD63F9D8();
        v38 = sub_1DD640368();
        v267 = OUTLINED_FUNCTION_27_5();
        if (os_log_type_enabled(v267, v268))
        {
          OUTLINED_FUNCTION_18_1();
          v269 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v270 = swift_slowAlloc();
          OUTLINED_FUNCTION_116(v270);
          *v269 = 136315138;
          v271 = sub_1DD640278();
          v273 = sub_1DD39565C(v271, v272, v316);

          *(v269 + 4) = v273;
          _os_log_impl(&dword_1DD38D000, v266, v38, "[UCG] MeCard related names matching custom relationship: %s", v269, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v232);
          v274 = OUTLINED_FUNCTION_12_49();
          MEMORY[0x1E12B3DA0](v274);
          v275 = OUTLINED_FUNCTION_10_2();
          MEMORY[0x1E12B3DA0](v275);
        }

        v30 = v302;
        v28 = v309;
        v276 = v306;
        v277 = v294;

        v278 = sub_1DD606158(v265, v277, v299, v30);
        v305 = v276;

        sub_1DD607E00(v278);
      }

      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v110 = sub_1DD63F9F8();
      v111 = __swift_project_value_buffer(v110, qword_1EE16F068);
      OUTLINED_FUNCTION_89_2();

      *&v307 = v111;
      v112 = sub_1DD63F9D8();
      sub_1DD640368();

      if (OUTLINED_FUNCTION_103_0())
      {
        OUTLINED_FUNCTION_58_9();
        v24 = swift_slowAlloc();
        OUTLINED_FUNCTION_64_6();
        v113 = swift_slowAlloc();
        OUTLINED_FUNCTION_116(v113);
        *v24 = v292;
        *(v24 + 4) = sub_1DD39565C(v299, v30, v316);
        *(v24 + 12) = 2080;
        swift_beginAccess();

        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB8, &unk_1DD649E50);
        MEMORY[0x1E12B2430](v318, v114);
        OUTLINED_FUNCTION_95_1();

        v115 = sub_1DD39565C(v38, v30, v316);

        *(v24 + 14) = v115;
        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v116, v117, v118, v119, v120, 0x16u);
        swift_arrayDestroy();
        v121 = OUTLINED_FUNCTION_12_49();
        MEMORY[0x1E12B3DA0](v121);
        v122 = OUTLINED_FUNCTION_15_10();
        MEMORY[0x1E12B3DA0](v122);
      }

      swift_beginAccess();
      v30 = v318;
      v123 = *(v318 + 16);
      v301 = v318;
      if (!v123)
      {

        v124 = sub_1DD63F9D8();
        v24 = sub_1DD640368();

        if (os_log_type_enabled(v124, v24))
        {
          OUTLINED_FUNCTION_18_1();
          v125 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v126 = swift_slowAlloc();
          *v316 = v126;
          *v125 = 136315138;
          v127 = sub_1DD60EC70();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
          sub_1DD63FC68();
          OUTLINED_FUNCTION_95_1();

          sub_1DD39565C(v38, v318, v316);
          OUTLINED_FUNCTION_124();
          v30 = v301;

          *(v125 + 4) = v127;
          _os_log_impl(&dword_1DD38D000, v124, v24, "[UCG] Couldn't find any MeCard relationships matching query. Here's what's in the MeCard: %s", v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v126);
          v128 = OUTLINED_FUNCTION_10_2();
          MEMORY[0x1E12B3DA0](v128);
          v129 = OUTLINED_FUNCTION_12_49();
          MEMORY[0x1E12B3DA0](v129);
        }
      }

      *v316 = MEMORY[0x1E69E7CC0];
      v130 = *(v30 + 16);

      v131 = 0;
      v132 = (v30 + 56);
      while (v130 != v131)
      {
        if (v131 >= *(v30 + 16))
        {
          goto LABEL_182;
        }

        v133 = *(v132 - 1);
        v134 = *v132;
        v136 = *(v132 - 3);
        v135 = *(v132 - 2);

        v137 = v133;
        v138 = v305;
        sub_1DD61DC7C(v136, v135, v137, v134);
        v305 = v138;
        if (v138)
        {

          goto LABEL_4;
        }

        v24 = v139;

        ++v131;
        sub_1DD607D10(v24);
        v132 += 4;
      }

      v308 = *v316;

      v24 = 0;
      v140 = 32;
      *&v141 = 134219010;
      v303 = v141;
      while (1)
      {
        v142 = *(v308 + 16);
        if (v24 == v142)
        {
          break;
        }

        if (v24 >= v142)
        {
          goto LABEL_183;
        }

        memcpy(v315, (v308 + v140), sizeof(v315));
        memmove(v316, (v308 + v140), 0x68uLL);
        OUTLINED_FUNCTION_36_17();
        OUTLINED_FUNCTION_36_17();
        OUTLINED_FUNCTION_36_17();
        OUTLINED_FUNCTION_36_17();
        sub_1DD3EB3D0(v315, &v311, &qword_1ECCDBCA8, qword_1DD649E40);
        v143 = sub_1DD63F9D8();
        v30 = sub_1DD640368();
        OUTLINED_FUNCTION_44_15();
        OUTLINED_FUNCTION_44_15();
        OUTLINED_FUNCTION_44_15();
        OUTLINED_FUNCTION_44_15();
        if (os_log_type_enabled(v143, v30))
        {
          v144 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          v310 = v304;
          *v144 = v303;
          *(v144 + 4) = v24;
          *(v144 + 12) = 2080;
          v145 = *&v316[72];
          v146 = *&v316[80];

          v147 = sub_1DD39565C(v145, v146, &v310);
          v306 = v24;
          v148 = v147;

          *(v144 + 14) = v148;
          *(v144 + 22) = 2080;
          v311 = *v316;
          v312 = *&v316[8];
          v313 = *&v316[16];

          v149 = sub_1DD63FE38();
          v151 = sub_1DD39565C(v149, v150, &v310);

          *(v144 + 24) = v151;
          *(v144 + 32) = 2080;
          v311 = *&v316[32];
          v312 = *&v316[40];
          v313 = *&v316[48];
          v314 = *&v316[64];

          v152 = sub_1DD63FE38();
          v154 = sub_1DD39565C(v152, v153, &v310);

          *(v144 + 34) = v154;
          *(v144 + 42) = 2080;
          v155 = *&v316[88];
          v156 = *&v316[96];

          OUTLINED_FUNCTION_44_15();
          v157 = sub_1DD39565C(v155, v156, &v310);
          v28 = v309;

          *(v144 + 44) = v157;
          v24 = v306;
          _os_log_impl(&dword_1DD38D000, v143, v30, "[UCG] Relationship lookup [%ld] for '%s': %s => %s based on search term %s", v144, 0x34u);
          v30 = v304;
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          v158 = OUTLINED_FUNCTION_12_49();
          MEMORY[0x1E12B3DA0](v158);
        }

        else
        {

          OUTLINED_FUNCTION_44_15();
        }

        v140 += 104;
        ++v24;
      }

      v38 = v308;

      v24 = 0;
      v30 = *(v38 + 16);
      v304 = MEMORY[0x1E69E7CC0];
      v159 = 32;
      v160 = qword_1DD649E40;
      v300 = 32;
LABEL_103:
      v161 = v159 + 104 * v24;
      while (v30 != v24)
      {
        if (v24 >= *(v38 + 16))
        {
          goto LABEL_184;
        }

        memcpy(v316, (v38 + v161), sizeof(v316));
        if ((v316[48] & 0x20) != 0)
        {
          v162 = *&v316[32] == *&v316[88] && *&v316[40] == *&v316[96];
          if (v162 || (sub_1DD640CD8() & 1) != 0)
          {
            sub_1DD3EB3D0(v316, v315, &qword_1ECCDBCA8, qword_1DD649E40);
            v163 = v304;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v311 = v163;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_36_2();
              v165 = OUTLINED_FUNCTION_26_2();
              sub_1DD42C198(v165, v166, v167);
              v163 = v311;
            }

            v169 = *(v163 + 16);
            v168 = *(v163 + 24);
            if (v169 >= v168 >> 1)
            {
              OUTLINED_FUNCTION_1_0(v168);
              OUTLINED_FUNCTION_90_1();
              sub_1DD42C198(v170, v171, v172);
              v163 = v311;
            }

            ++v24;
            *(v163 + 16) = v169 + 1;
            v304 = v163;
            memcpy((v163 + 104 * v169 + 32), v316, 0x68uLL);
            v38 = v308;
            v28 = v309;
            v159 = v300;
            goto LABEL_103;
          }
        }

        v161 += 104;
        ++v24;
      }

      if (*(v304 + 16))
      {

        OUTLINED_FUNCTION_89_2();

        v173 = v302;

        v174 = sub_1DD63F9D8();
        sub_1DD640368();

        if (OUTLINED_FUNCTION_103_0())
        {
          OUTLINED_FUNCTION_18_1();
          v175 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v176 = swift_slowAlloc();
          OUTLINED_FUNCTION_116(v176);
          *(v175 + 4) = OUTLINED_FUNCTION_99_1(4.8149e-34);
          OUTLINED_FUNCTION_35_6();
          _os_log_impl(v177, v178, v179, v180, v181, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(qword_1DD649E40);
          v182 = OUTLINED_FUNCTION_12_49();
          MEMORY[0x1E12B3DA0](v182);
          v183 = OUTLINED_FUNCTION_15_10();
          MEMORY[0x1E12B3DA0](v183);

LABEL_171:
          MEMORY[0x1EEE9AC00](v184);
          v287 = v294;
          v288 = v38;
          v289 = v173;
          v290 = v297;
          v279 = sub_1DD46D53C(MEMORY[0x1E69E7CC8], sub_1DD626B84, v286, v304);
          sub_1DD6063E4(v279);

          sub_1DD6404C8();
          v280 = v296;
          sub_1DD63F9A8();
          OUTLINED_FUNCTION_1_133();
          sub_1DD627210(v280, v281);
          goto LABEL_5;
        }
      }

      else
      {
        v306 = v30;

        v24 = 0;
        v304 = MEMORY[0x1E69E7CC0];
        *&v303 = v28 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer;
        v30 = &qword_1ECCDBCA8;
        v28 = qword_1DD649E40;
LABEL_123:
        v185 = v300 + 104 * v24;
        while (v306 != v24)
        {
          if (v24 >= *(v38 + 16))
          {
            goto LABEL_186;
          }

          memcpy(v316, (v38 + v185), sizeof(v316));
          if ((~v316[48] & 3) == 0)
          {
            v186 = *&v316[32];
            v309 = *&v316[40];
            v160 = *(v303 + 24);
            v187 = *(v303 + 32);
            __swift_project_boxed_opaque_existential_1(v303, v160);
            sub_1DD3EB3D0(v316, v315, &qword_1ECCDBCA8, qword_1DD649E40);
            v188 = *(sub_1DD5E8CD4(v186, v309, v160, v187) + 16);

            if (v188 > 1)
            {
              v189 = v304;
              v190 = swift_isUniquelyReferenced_nonNull_native();
              v311 = v189;
              if ((v190 & 1) == 0)
              {
                OUTLINED_FUNCTION_36_2();
                v191 = OUTLINED_FUNCTION_26_2();
                sub_1DD42C198(v191, v192, v193);
                v189 = v311;
              }

              v38 = v308;
              v195 = *(v189 + 16);
              v194 = *(v189 + 24);
              v160 = (v195 + 1);
              if (v195 >= v194 >> 1)
              {
                OUTLINED_FUNCTION_1_0(v194);
                OUTLINED_FUNCTION_90();
                sub_1DD42C198(v196, v197, v198);
                v189 = v311;
              }

              ++v24;
              *(v189 + 16) = v160;
              v304 = v189;
              memcpy((v189 + 104 * v195 + 32), v316, 0x68uLL);
              goto LABEL_123;
            }

            sub_1DD390754(v316, &qword_1ECCDBCA8, qword_1DD649E40);
            v38 = v308;
          }

          v185 += 104;
          ++v24;
        }

        if (*(v304 + 16))
        {

          OUTLINED_FUNCTION_89_2();

          v173 = v302;

          v199 = sub_1DD63F9D8();
          sub_1DD640368();

          if (OUTLINED_FUNCTION_103_0())
          {
            OUTLINED_FUNCTION_18_1();
            v200 = swift_slowAlloc();
            OUTLINED_FUNCTION_17_0();
            v201 = swift_slowAlloc();
            OUTLINED_FUNCTION_116(v201);
            *(v200 + 4) = OUTLINED_FUNCTION_99_1(4.8149e-34);
            OUTLINED_FUNCTION_35_6();
            _os_log_impl(v202, v203, v204, v205, v206, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v160);
            v207 = OUTLINED_FUNCTION_12_49();
            MEMORY[0x1E12B3DA0](v207);
            v208 = OUTLINED_FUNCTION_15_10();
            MEMORY[0x1E12B3DA0](v208);
          }

          else
          {

            v38 = v299;
          }

          goto LABEL_171;
        }

LABEL_169:

        v304 = v38;
        v173 = v302;
      }

      v38 = v299;
      goto LABEL_171;
    }

LABEL_54:
    v93 = OUTLINED_FUNCTION_37_18();
    v24 = sub_1DD538AD0(v93);
    v94 = 0;
    v308 = *(v24 + 16);
    v28 = (v24 + 40);
    v30 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v308 == v94)
      {

        v105 = *(v30 + 16);
        if (v105)
        {
          v315[0] = MEMORY[0x1E69E7CC0];
          sub_1DD42C1B8(0, v105, 0);
          v38 = v315[0];
          v106 = v30 + 40;
          do
          {
            v308 = sub_1DD538ED0(v306);
            *&v307 = v107;
            v315[0] = v38;
            v109 = *(v38 + 16);
            v108 = *(v38 + 24);

            if (v109 >= v108 >> 1)
            {
              sub_1DD42C1B8(v108 > 1, v109 + 1, 1);
              v38 = v315[0];
            }

            *(v38 + 16) = v109 + 1;
            OUTLINED_FUNCTION_121_0((v38 + 32 * v109));
            v106 += 16;
            --v105;
          }

          while (v105);
        }

        else
        {

          v38 = MEMORY[0x1E69E7CC0];
        }

        sub_1DD607E00(v38);
        v30 = v302;
        v24 = v303;
        v28 = v309;
        v68 = v298;
        v69 = MEMORY[0x1E69E7CD0];
        v46 = v293;
        v52 = v300;
        v91 = v301;
        goto LABEL_50;
      }

      if (v94 >= *(v24 + 16))
      {
        goto LABEL_176;
      }

      v95 = sub_1DD60EC70();
      if (*(v95 + 16) && (v96 = sub_1DD3978DC(), (v97 & 1) != 0))
      {
        v98 = *(*(v95 + 56) + 8 * v96);
      }

      else
      {
        v98 = MEMORY[0x1E69E7CC0];
      }

      v99 = *(v98 + 16);
      v100 = *(v30 + 16);
      if (__OFADD__(v100, v99))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v100 + v99 > *(v30 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v30 = v101;
      }

      if (*(v98 + 16))
      {
        OUTLINED_FUNCTION_51_10();
        if (v102 < v99)
        {
          goto LABEL_180;
        }

        swift_arrayInitWithCopy();

        if (v99)
        {
          v103 = *(v30 + 16);
          v81 = __OFADD__(v103, v99);
          v104 = v103 + v99;
          if (v81)
          {
            goto LABEL_181;
          }

          *(v30 + 16) = v104;
        }
      }

      else
      {

        if (v99)
        {
          goto LABEL_178;
        }
      }

      v28 += 2;
      ++v94;
    }

LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  swift_bridgeObjectRelease_n();
  swift_setDeallocating();
  sub_1DD46CAFC();
LABEL_4:
  sub_1DD6404C8();
  v44 = v296;
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_1_133();
  sub_1DD627210(v44, v45);
LABEL_5:
  OUTLINED_FUNCTION_128_0();
  OUTLINED_FUNCTION_86();
}

void sub_1DD61D490(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2[1];
  v72 = *a2;
  v9 = sub_1DD538D38(v72, v8);
  v16 = &unk_1EE165000;
  if (v9 == 376)
  {
    if (qword_1EE165FB0 != -1)
    {
LABEL_38:
      swift_once();
    }

    v17 = sub_1DD63F9F8();
    __swift_project_value_buffer(v17, qword_1EE16F068);

    v18 = sub_1DD63F9D8();
    v19 = sub_1DD640368();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v68[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1DD39565C(v72, v8, v68);
      _os_log_impl(&dword_1DD38D000, v18, v19, "[UCG] Spoken relationship label '%s' is not a semantic relationship label", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12B3DA0](v21, -1, -1);
      v22 = v20;
      v16 = 0x1EE165000;
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }
  }

  else
  {
    sub_1DD56F38C(v68, v9, v10, v11, v12, v13, v14, v15, v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, v67, v68[0], v68[1], v68[2], v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
  }

  sub_1DD3EB3D0(a3 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_relationshipLocalizer, &v64, &qword_1ECCDCF50, &qword_1DD664BD0);
  if (v66)
  {
    sub_1DD3AA4A8(&v64, v68);
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v23 = v72;
    v24 = sub_1DD6094FC(v72, v8, a4);
    if (!v5)
    {
      a4 = v24;
      if (*(v16 + 4016) != -1)
      {
        swift_once();
      }

      v25 = sub_1DD63F9F8();
      __swift_project_value_buffer(v25, qword_1EE16F068);

      v26 = sub_1DD63F9D8();
      v27 = sub_1DD640368();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v64 = v29;
        *v28 = 136315394;
        *(v28 + 4) = sub_1DD39565C(v23, v8, &v64);
        *(v28 + 12) = 2080;
        v30 = sub_1DD640278();
        v32 = sub_1DD39565C(v30, v31, &v64);

        *(v28 + 14) = v32;
        _os_log_impl(&dword_1DD38D000, v26, v27, "[UCG] Relationship aliases for: '%s': %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12B3DA0](v29, -1, -1);
        MEMORY[0x1E12B3DA0](v28, -1, -1);
      }

      v5 = a4 + 56;
      v33 = 1 << *(a4 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      a3 = v34 & *(a4 + 56);
      v35 = (v33 + 63) >> 6;

      v16 = 0;
      v36 = MEMORY[0x1E69E7CC0];
LABEL_16:
      v37 = &qword_1DD643000;
      while (a3)
      {
LABEL_22:
        v39 = __clz(__rbit64(a3));
        a3 &= a3 - 1;
        v40 = *(*(a4 + 48) + ((v16 << 10) | (16 * v39)));

        v41 = sub_1DD532D04(v40);
        v37 = &qword_1DD643000;
        if (v41 != 376)
        {
          v42 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3C145C(0, *(v36 + 16) + 1, 1, v36);
            v36 = v46;
          }

          v44 = *(v36 + 16);
          v43 = *(v36 + 24);
          v45 = v44 + 1;
          if (v44 >= v43 >> 1)
          {
            sub_1DD3C145C(v43 > 1, v44 + 1, 1, v36);
            v45 = v44 + 1;
            v36 = v47;
          }

          *(v36 + 16) = v45;
          *(v36 + 2 * v44 + 32) = v42;
          goto LABEL_16;
        }
      }

      while (1)
      {
        v38 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v38 >= v35)
        {
          break;
        }

        a3 = *(v5 + 8 * v38);
        ++v16;
        if (a3)
        {
          v16 = v38;
          goto LABEL_22;
        }
      }

      v52 = v36;

      v53 = sub_1DD63F9D8();
      v54 = sub_1DD640368();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v64 = v56;
        *v55 = v37[507];
        *(v55 + 4) = sub_1DD39565C(v72, v8, &v64);
        *(v55 + 12) = 2080;
        v57 = MEMORY[0x1E12B2430](v52, &type metadata for NLSemanticRelationLabel);
        v59 = sub_1DD39565C(v57, v58, &v64);

        *(v55 + 14) = v59;
        _os_log_impl(&dword_1DD38D000, v53, v54, "[UCG] Semantic labels for all aliases of: '%s': %s", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12B3DA0](v56, -1, -1);
        MEMORY[0x1E12B3DA0](v55, -1, -1);
      }

      sub_1DD608A7C(v52);
    }

    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  else
  {
    sub_1DD390754(&v64, &qword_1ECCDCF50, &qword_1DD664BD0);
    if (*(v16 + 4016) != -1)
    {
      swift_once();
    }

    v48 = sub_1DD63F9F8();
    __swift_project_value_buffer(v48, qword_1EE16F068);
    v49 = sub_1DD63F9D8();
    v50 = sub_1DD640378();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1DD38D000, v49, v50, "[UCG] No relationship localizer available. This will hurt search results...", v51, 2u);
      MEMORY[0x1E12B3DA0](v51, -1, -1);
    }
  }
}

uint64_t sub_1DD61DB44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  v9 = a1[1];
  v15[0] = *a1;
  v15[1] = v9;
  v10 = sub_1DD63D168();
  (*(*(v10 - 8) + 16))(v8, a2, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  sub_1DD3B7F10();
  v11 = sub_1DD640648();
  v13 = v12;
  result = sub_1DD390754(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);
  *a3 = v11;
  a3[1] = v13;
  return result;
}

void sub_1DD61DC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD61962C();
  v10 = v9;
  if (v4)
  {
    return;
  }

  v56 = a1;
  v57 = a3;
  v11 = 0;
  v78[3] = MEMORY[0x1E69E7CC0];
  v61 = v9 + 32;
  v62 = *(v9 + 16);
  v58 = a2;
  v59 = a4;
  v60 = v9;
LABEL_3:
  if (v11 == v62)
  {

    return;
  }

  if (v11 >= *(v10 + 16))
  {
    goto LABEL_43;
  }

  v12 = (v61 + 40 * v11);
  v69 = *v12;
  v13 = v12[3];
  v65 = v12[2];
  v14 = v12[4];
  v63 = v11 + 1;
  v15 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 56);
  v19 = (v16 + 63) >> 6;
  v72 = v12[1];

  swift_bridgeObjectRetain_n();
  v20 = 0;
  v64 = MEMORY[0x1E69E7CC0];
  v70 = v14;
  v71 = v19;
  while (v18)
  {
LABEL_14:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(v14 + 48) + 48 * (v22 | (v20 << 6));
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
    v28 = *(v23 + 32);
    v29 = *(v23 + 40);
    v74 = v27;
    v75 = v28;
    v73 = v26;
    v76 = *v23;
    v77 = v25;
    if (v29)
    {
      sub_1DD57AE38(v24, v25, v26, v27, v28, v29);
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v30 = sub_1DD63F9F8();
      __swift_project_value_buffer(v30, qword_1EE16F068);

      v31 = sub_1DD63F9D8();
      v32 = sub_1DD640368();

      if (os_log_type_enabled(v31, v32))
      {
        v67 = v32;
        v33 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v78[0] = v66;
        *v33 = 136315138;
        if (v13)
        {
          swift_bridgeObjectRetain_n();

          MEMORY[0x1E12B2260](64, 0xE100000000000000);
          MEMORY[0x1E12B2260](v65, v13);

          v34 = v69;
          v35 = v72;
        }

        else
        {
          v35 = v72;

          v34 = v69;
        }

        v19 = v71;
        v42 = sub_1DD39565C(v34, v35, v78);

        *(v33 + 4) = v42;
        _os_log_impl(&dword_1DD38D000, v31, v67, "[UCG] Filtering out relationship match for '%s' since it was not a name based match", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x1E12B3DA0](v66, -1, -1);
        MEMORY[0x1E12B3DA0](v33, -1, -1);

        v43 = v76;
        v44 = v77;
        v45 = v73;
        v46 = v74;
        v47 = v75;
        v48 = v29;
        goto LABEL_33;
      }

      sub_1DD41B1C8(v76, v77, v73, v74, v28, v29);
      v19 = v71;
    }

    else
    {
      sub_1DD57AE38(v24, v25, v26, v27, v28, 0);
      if ((v26 & 8) == 0 || (v26 & 3) == 3)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3C129C();
          v64 = v54;
        }

        v50 = *(v64 + 16);
        v52 = v56;
        v51 = v57;
        if (v50 >= *(v64 + 24) >> 1)
        {
          sub_1DD3C129C();
          v52 = v56;
          v51 = v57;
          v64 = v55;
        }

        *(v64 + 16) = v50 + 1;
        v53 = (v64 + 104 * v50);
        v53[4] = v69;
        v53[5] = v72;
        v53[6] = v65;
        v53[7] = v13;
        v53[8] = v76;
        v53[9] = v77;
        v53[10] = v26;
        v53[11] = v27;
        v53[12] = v28;
        v53[13] = v52;
        v53[14] = v58;
        v53[15] = v51;
        v53[16] = v59;
        v14 = v70;
      }

      else
      {
        if (qword_1EE165FB0 != -1)
        {
          swift_once();
        }

        v36 = sub_1DD63F9F8();
        __swift_project_value_buffer(v36, qword_1EE16F068);

        v37 = sub_1DD63F9D8();
        v38 = sub_1DD640368();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v78[0] = v68;
          *v39 = 136315138;
          if (v13)
          {
            swift_bridgeObjectRetain_n();

            MEMORY[0x1E12B2260](64, 0xE100000000000000);
            MEMORY[0x1E12B2260](v65, v13);

            v40 = v69;
            v41 = v72;
          }

          else
          {
            v41 = v72;

            v40 = v69;
          }

          v19 = v71;
          v49 = sub_1DD39565C(v40, v41, v78);

          *(v39 + 4) = v49;
          _os_log_impl(&dword_1DD38D000, v37, v38, "[UCG] Filtering out relationship match for '%s' since it was an organization match", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v68);
          MEMORY[0x1E12B3DA0](v68, -1, -1);
          MEMORY[0x1E12B3DA0](v39, -1, -1);

          v43 = v76;
          v44 = v77;
          v45 = v73;
          v46 = v74;
          v47 = v75;
          v48 = 0;
LABEL_33:
          sub_1DD41B1C8(v43, v44, v45, v46, v47, v48);
          v14 = v70;
        }

        else
        {

          sub_1DD41B1C8(v76, v77, v26, v74, v28, 0);
          v14 = v70;
          v19 = v71;
        }
      }
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      sub_1DD607D10(v64);
      v10 = v60;
      v11 = v63;
      goto LABEL_3;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_1DD61E368(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a1;
  v54 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v47 - v10);
  v12 = *(a2 + 8);
  v59 = *a2;
  v13 = *(a2 + 24);
  v55 = *(a2 + 16);
  v14 = *(a2 + 80);
  v51 = *(a2 + 72);
  v52 = v12;
  if ((*(a2 + 48) & 0x20) != 0)
  {
    v50 = a6;
    v16 = *(a2 + 88);
    v17 = *(a2 + 96);
    if (*(a2 + 32) == v16 && *(a2 + 40) == v17)
    {

      swift_bridgeObjectRetain_n();
    }

    else
    {
      v19 = sub_1DD640CD8();

      swift_bridgeObjectRetain_n();

      if ((v19 & 1) == 0)
      {

        v15 = 0;
        v16 = v12;
        goto LABEL_18;
      }
    }

    if (qword_1EE165FB0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

  swift_bridgeObjectRetain_n();

  v15 = 0;
  v16 = v12;
  while (1)
  {
    v57 = v51;
    v58 = v14;
    v56[0] = v54;
    v56[1] = a5;
    v29 = sub_1DD63D168();
    (*(*(v29 - 8) + 16))(v11, a6, v29);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v29);
    sub_1DD3B7F10();
    v17 = sub_1DD6406B8();
    sub_1DD390754(v11, &qword_1ECCDC3F0, &unk_1DD64AF50);

    v14 = a5;

    v11 = v53;
    swift_isUniquelyReferenced_nonNull_native();
    v57 = *v11;
    v30 = v57;
    v31 = sub_1DD3FEDF8(v59, v16, v55, v13);
    v33 = *(v30 + 16);
    v34 = (v32 & 1) == 0;
    a5 = v33 + v34;
    if (!__OFADD__(v33, v34))
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_11:
    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);

    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640358();

    if (os_log_type_enabled(v21, v22))
    {
      v48 = v22;
      v23 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56[0] = v47;
      *v23 = 136315394;
      v49 = a5;
      if (v13)
      {
        v57 = v59;
        v58 = v52;
        swift_bridgeObjectRetain_n();

        MEMORY[0x1E12B2260](64, 0xE100000000000000);
        MEMORY[0x1E12B2260](v55, v13);

        v24 = v57;
        v25 = v58;
      }

      else
      {
        v25 = v52;

        v24 = v59;
      }

      v26 = sub_1DD39565C(v24, v25, v56);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = sub_1DD39565C(v16, v17, v56);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_1DD38D000, v21, v48, "[UCG] relationship based match %s is based on person name %s and is an exact match", v23, 0x16u);
      v28 = v47;
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v28, -1, -1);
      MEMORY[0x1E12B3DA0](v23, -1, -1);

      v15 = 1;
      a5 = v49;
    }

    else
    {

      v15 = 1;
    }

    v16 = v52;
LABEL_18:
    a6 = v50;
  }

  v35 = v31;
  v36 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFEE8, &qword_1DD664BC8);
  v37 = sub_1DD640A08();
  v38 = v57;
  if (v37)
  {
    v39 = v52;
    v40 = sub_1DD3FEDF8(v59, v52, v55, v13);
    if ((v36 & 1) != (v41 & 1))
    {
      result = sub_1DD640D58();
      __break(1u);
      return result;
    }

    v35 = v40;
  }

  else
  {
    v39 = v52;
  }

  *v53 = v38;
  if (v36)
  {
  }

  else
  {
    sub_1DD400A2C(v35, v59, v39, v55, v13, MEMORY[0x1E69E7CC0], v38);
  }

  if (v17)
  {
    v15 |= 2uLL;
  }

  v42 = *(v38 + 56) + 8 * v35;
  sub_1DD3BE084();
  v43 = *(*v42 + 16);
  result = sub_1DD3BE244(v43);
  v45 = *v42;
  *(v45 + 16) = v43 + 1;
  v46 = v45 + 48 * v43;
  *(v46 + 32) = v54;
  *(v46 + 40) = v14;
  *(v46 + 56) = 0;
  *(v46 + 64) = 0;
  *(v46 + 48) = v15;
  *(v46 + 72) = 1;
  return result;
}

void sub_1DD61E944()
{
  OUTLINED_FUNCTION_18_4();
  v231 = v0;
  v244 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC10, &unk_1DD664BA0);
  OUTLINED_FUNCTION_3(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_3();
  v222 = v9;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v223 = v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_0();
  v217 = v13;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_0();
  v219 = v15;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_0();
  v224 = v17;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_0();
  v221 = v19;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16_3();
  v227 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFEE0, &unk_1DD664BB0);
  v23 = OUTLINED_FUNCTION_3(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v226 = v24;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16_3();
  v229 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v27);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7_3();
  v225 = v29;
  OUTLINED_FUNCTION_6_2();
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v233 = v31;
  v234 = v30;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v232 = v32;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  v216 = v36;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_0();
  v218 = v38;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_0();
  v220 = v40;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_0();
  v236 = v42;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_0();
  v235 = v44;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_18_0();
  v241 = v46;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_18_0();
  v238 = v48;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_18_0();
  v237 = v51;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v52);
  v53 = OUTLINED_FUNCTION_123_0();
  v54 = type metadata accessor for Signpost(v53);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  memcpy(v254, v6, sizeof(v254));
  if (qword_1EE166460 != -1)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v56 = qword_1EE16F0C0;
    v57 = v3 + *(v54 + 20);
    *v57 = "UCG.FilterPICSCandidates";
    *(v57 + 8) = 24;
    *(v57 + 16) = 2;
    v58 = v56;
    sub_1DD63F9B8();
    *(v3 + *(v54 + 24)) = v58;
    v58;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    OUTLINED_FUNCTION_23_5();
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1DD643F90;
    v60 = sub_1DD6408F8();
    v62 = v61;
    *(v59 + 56) = MEMORY[0x1E69E6158];
    *(v59 + 64) = sub_1DD392BD8();
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    OUTLINED_FUNCTION_22();
    v230 = v3;
    sub_1DD63F998();

    v63 = 0;
    v64 = v244;
    v248 = *(v244 + 16);
    v239 = MEMORY[0x1E69E7CC0];
    v242 = v34;
    while (v248 != v63)
    {
      v65 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v66 = v34[9];
      OUTLINED_FUNCTION_112_0();
      sub_1DD3EB3D0(v67, v68, v69, &qword_1DD644470);
      v70 = v2 + *(v243 + 36);
      if (v70[*(type metadata accessor for ContactResolver.SignalSet(0) + 204)])
      {
        sub_1DD390754(v2, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v63;
      }

      else
      {
        sub_1DD3EB4B8(v2, v237, &qword_1ECCDBBE8, &qword_1DD644470);
        v71 = v239;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v251 = v239;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_36_2();
          v73 = OUTLINED_FUNCTION_26_2();
          sub_1DD42B4F8(v73, v74, v75);
          v71 = *v251;
        }

        v77 = *(v71 + 16);
        v76 = *(v71 + 24);
        v78 = v77 + 1;
        if (v77 >= v76 >> 1)
        {
          v79 = OUTLINED_FUNCTION_1_0(v76);
          v240 = v80;
          sub_1DD42B4F8(v79, v80, 1);
          v78 = v240;
          v71 = *v251;
        }

        ++v63;
        *(v71 + 16) = v78;
        v239 = v71;
        sub_1DD3EB4B8(v237, v71 + v65 + v77 * v66, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      v34 = v242;
      v64 = v244;
    }

    v81 = 0;
    v237 = MEMORY[0x1E69E7CC0];
    v2 = &qword_1ECCDBBE8;
    while (v248 != v81)
    {
      v82 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v83 = v34[9];
      OUTLINED_FUNCTION_28_2();
      sub_1DD3EB3D0(v84, v85, v86, &qword_1DD644470);
      v87 = v1 + *(v243 + 36);
      if (*(v87 + *(type metadata accessor for ContactResolver.SignalSet(0) + 216)) == 1)
      {
        sub_1DD3EB4B8(v1, v238, &qword_1ECCDBBE8, &qword_1DD644470);
        v91 = v237;
        v92 = swift_isUniquelyReferenced_nonNull_native();
        *v251 = v237;
        if ((v92 & 1) == 0)
        {
          OUTLINED_FUNCTION_36_2();
          v93 = OUTLINED_FUNCTION_26_2();
          sub_1DD42B4F8(v93, v94, v95);
          v91 = *v251;
        }

        v97 = *(v91 + 16);
        v96 = *(v91 + 24);
        if (v97 >= v96 >> 1)
        {
          v98 = OUTLINED_FUNCTION_1_0(v96);
          sub_1DD42B4F8(v98, v97 + 1, 1);
          v91 = *v251;
        }

        ++v81;
        *(v91 + 16) = v97 + 1;
        v237 = v91;
        sub_1DD3EB4B8(v238, v91 + v82 + v97 * v83, &qword_1ECCDBBE8, &qword_1DD644470);
        v34 = v242;
        v64 = v244;
      }

      else
      {
        OUTLINED_FUNCTION_112_0();
        sub_1DD390754(v88, v89, v90);
        ++v81;
        v64 = v244;
      }
    }

    v99 = 0;
    v238 = MEMORY[0x1E69E7CC0];
    v100 = &qword_1ECCDBBE8;
    v101 = v243;
    while (v248 != v99)
    {
      v2 = ((*(v34 + 80) + 32) & ~*(v34 + 80));
      v102 = v34[9];
      sub_1DD3EB3D0(v2 + v64 + v102 * v99, v241, v100, &qword_1DD644470);
      v103 = v100;
      v104 = v241 + *(v101 + 36);
      if (*(v104 + *(type metadata accessor for ContactResolver.SignalSet(0) + 204)) == 1)
      {
        sub_1DD3EB4B8(v241, v235, v103, &qword_1DD644470);
        v105 = v238;
        v106 = swift_isUniquelyReferenced_nonNull_native();
        *v251 = v238;
        if ((v106 & 1) == 0)
        {
          OUTLINED_FUNCTION_36_2();
          v107 = OUTLINED_FUNCTION_26_2();
          sub_1DD42B4F8(v107, v108, v109);
          v105 = *v251;
        }

        v111 = *(v105 + 16);
        v110 = *(v105 + 24);
        if (v111 >= v110 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v110);
          OUTLINED_FUNCTION_90();
          sub_1DD42B4F8(v113, v114, v115);
          v105 = *v251;
        }

        ++v99;
        *(v105 + 16) = v111 + 1;
        v238 = v105;
        v112 = v2 + v105 + v111 * v102;
        v100 = v103;
        sub_1DD3EB4B8(v235, v112, v103, &qword_1DD644470);
        v34 = v242;
        v101 = v243;
        v64 = v244;
      }

      else
      {
        sub_1DD390754(v241, v103, &qword_1DD644470);
        ++v99;
        v64 = v244;
        v100 = v103;
      }
    }

    v116 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config;
    v117 = sub_1DD553818(v231 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config);
    if ((sub_1DD554570(*(v231 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusTrialFactors), v117) & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_1DD3EB3D0(v231 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusSuggestionHandler, v251, &qword_1ECCDCF40, &qword_1DD64CBF0);
    if (*&v251[24] == 1)
    {

      sub_1DD390754(v251, &qword_1ECCDCF40, &qword_1DD64CBF0);
      goto LABEL_36;
    }

    v252[0] = *v251;
    v252[1] = *&v251[16];
    v253 = *&v251[32];
    if (v117 == 2)
    {
      sub_1DD44FDCC(v252);
LABEL_35:

LABEL_36:
      v1 = *(v239 + 16);
      if (qword_1EE165FB0 != -1)
      {
        goto LABEL_97;
      }

      goto LABEL_37;
    }

    v215 = v116;
    v3 = *(v238 + 16);
    v1 = MEMORY[0x1E69E7CC0];
    LODWORD(v235) = v117;
    if (v3)
    {
      break;
    }

LABEL_55:
    sub_1DD55858C(v231 + v215, v225);
    OUTLINED_FUNCTION_8(v225, 1, v234);
    if (v144)
    {
      v54 = v232;
      sub_1DD63D0E8();
      OUTLINED_FUNCTION_8(v225, 1, v234);
      v145 = v242;
      v3 = v237;
      if (!v144)
      {
        sub_1DD390754(v225, &qword_1ECCDBAC8, &qword_1DD643E60);
      }
    }

    else
    {
      v54 = v232;
      (*(v233 + 32))(v232, v225, v234);
      v145 = v242;
      v3 = v237;
    }

    memcpy(v251, v254, sizeof(v251));
    sub_1DD55A32C(v251, v1, v54, v235, v229);

    sub_1DD3EB3D0(v229, v226, &qword_1ECCDFEE0, &unk_1DD664BB0);
    OUTLINED_FUNCTION_8(v226, 1, v228);
    if (!v144)
    {
      v155 = v227;
      sub_1DD3EB4B8(v226, v227, &qword_1ECCDEB40, &qword_1DD65B2B8);
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v156 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v156, qword_1EE16F068);
      sub_1DD3EB3D0(v227, v221, &qword_1ECCDEB40, &qword_1DD65B2B8);
      v157 = sub_1DD63F9D8();
      v158 = sub_1DD640368();
      if (os_log_type_enabled(v157, v158))
      {
        OUTLINED_FUNCTION_18_1();
        v159 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v245 = swift_slowAlloc();
        *v251 = v245;
        *v159 = 136315138;
        v160 = v221[1];
        v161 = *(v228 + 64);
        v162 = *(v221 + v161);
        v163 = *(v228 + 48);
        *v224 = *v221;
        *(v224 + 1) = v160;
        (*(v233 + 16))(&v224[v163], v221 + v163, v234);
        v224[v161] = v162;
        sub_1DD3EB3D0(v224, v219, &qword_1ECCDEB40, &qword_1DD65B2B8);

        v164 = sub_1DD63FE38();
        v166 = v165;
        sub_1DD390754(v224, &qword_1ECCDEB40, &qword_1DD65B2B8);
        sub_1DD390754(v221, &qword_1ECCDEB40, &qword_1DD65B2B8);
        sub_1DD39565C(v164, v166, v251);
        OUTLINED_FUNCTION_115_0();

        *(v159 + 4) = v164;
        v155 = v227;
        _os_log_impl(&dword_1DD38D000, v157, v158, "[UCG] Found a valid PICS candidate: %s", v159, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v245);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {

        v167 = sub_1DD390754(v221, &qword_1ECCDEB40, &qword_1DD65B2B8);
      }

      MEMORY[0x1EEE9AC00](v167);
      OUTLINED_FUNCTION_31_0();
      *(v178 - 16) = v155;
      sub_1DD6084D4(sub_1DD626B28, v238, v222);

      OUTLINED_FUNCTION_8(v222, 1, v243);
      if (v144)
      {
        sub_1DD390754(v222, &qword_1ECCDFC10, &unk_1DD664BA0);
        sub_1DD3EB3D0(v155, v223, &qword_1ECCDEB40, &qword_1DD65B2B8);
        v179 = sub_1DD63F9D8();
        v180 = sub_1DD640368();
        if (os_log_type_enabled(v179, v180))
        {
          OUTLINED_FUNCTION_18_1();
          v181 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v249 = swift_slowAlloc();
          *v251 = v249;
          *v181 = 136315138;
          sub_1DD3EB3D0(v223, v224, &qword_1ECCDEB40, &qword_1DD65B2B8);

          v183 = *(v228 + 48);
          v184 = MEMORY[0x1E12AF3B0](v182);
          v186 = v185;
          sub_1DD390754(v223, &qword_1ECCDEB40, &qword_1DD65B2B8);
          v187 = *(v233 + 8);
          v187(&v224[v183], v234);
          sub_1DD39565C(v184, v186, v251);
          OUTLINED_FUNCTION_124();

          *(v181 + 4) = v184;
          _os_log_impl(&dword_1DD38D000, v179, v180, "[UCG] PLUS Candidate was not a valid PICs match for this request. Removing... (plusId was %s", v181, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v249);
          v155 = v227;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          v188 = OUTLINED_FUNCTION_8_6();
          MEMORY[0x1E12B3DA0](v188);

          sub_1DD390754(v229, &qword_1ECCDFEE0, &unk_1DD664BB0);
          v187(v232, v234);
        }

        else
        {

          sub_1DD390754(v223, &qword_1ECCDEB40, &qword_1DD65B2B8);
          sub_1DD390754(v229, &qword_1ECCDFEE0, &unk_1DD664BB0);
          (*(v233 + 8))(v232, v234);
        }

        sub_1DD44FDCC(v252);
      }

      else
      {
        sub_1DD3EB4B8(v222, v220, &qword_1ECCDBBE8, &qword_1DD644470);
        v189 = v220 + *(v243 + 36);
        v190 = type metadata accessor for ContactResolver.SignalSet(0);
        if (*(v189 + *(v190 + 236)) == 1)
        {
          v191 = v190;
          v246 = *(*(v189 + *(v190 + 208)) + 16) > 1uLL;
          sub_1DD3EB3D0(v220, v218, &qword_1ECCDBBE8, &qword_1DD644470);
          v192 = (*(v155 + *(v228 + 64)) & 1) == 0;
          *(v218 + *(type metadata accessor for Contact(0) + 92)) = v192;
          v193 = v218 + *(v243 + 36);
          *(v193 + v191[51]) = 1;
          sub_1DD3EB3D0(v155, v224, &qword_1ECCDEB40, &qword_1DD65B2B8);

          v194 = *(v228 + 48);
          *(v193 + v191[53]) = v224[*(v228 + 64)];
          v250 = *(v233 + 8);
          v250(&v224[v194], v234);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC60, &qword_1DD664BC0);
          v195 = (*(v233 + 80) + 32) & ~*(v233 + 80);
          v196 = swift_allocObject();
          *(v196 + 16) = xmmword_1DD643F90;
          sub_1DD3EB3D0(v155, v224, &qword_1ECCDEB40, &qword_1DD65B2B8);

          (*(v233 + 32))(v196 + v195, &v224[*(v228 + 48)], v234);
          v197 = v191[52];

          *(v193 + v197) = v196;
          *(v193 + v191[55]) = v246;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
          v198 = (*(v242 + 80) + 32) & ~*(v242 + 80);
          v199 = swift_allocObject();
          *(v199 + 16) = xmmword_1DD643F90;
          sub_1DD3EB3D0(v218, v199 + v198, &qword_1ECCDBBE8, &qword_1DD644470);
          *v251 = v239;
          OUTLINED_FUNCTION_15_55();
          sub_1DD60793C(v199);
          sub_1DD390754(v229, &qword_1ECCDFEE0, &unk_1DD664BB0);
          v250(v232, v234);
          sub_1DD44FDCC(v252);
          sub_1DD390754(v220, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v218, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v227, &qword_1ECCDEB40, &qword_1DD65B2B8);
          goto LABEL_40;
        }

        sub_1DD3EB3D0(v220, v216, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD3EB3D0(v155, v217, &qword_1ECCDEB40, &qword_1DD65B2B8);
        v200 = sub_1DD63F9D8();
        v201 = sub_1DD640368();
        if (os_log_type_enabled(v200, v201))
        {
          OUTLINED_FUNCTION_58_9();
          v202 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_6();
          *v251 = swift_slowAlloc();
          *v202 = 136315394;
          v247 = v201;
          v203 = *v216;
          v204 = v216[1];

          sub_1DD390754(v216, &qword_1ECCDBBE8, &qword_1DD644470);
          v205 = sub_1DD39565C(v203, v204, v251);

          *(v202 + 4) = v205;
          *(v202 + 12) = 2080;
          sub_1DD3EB3D0(v217, v224, &qword_1ECCDEB40, &qword_1DD65B2B8);

          v207 = *(v228 + 48);
          v208 = MEMORY[0x1E12AF3B0](v206);
          v210 = v209;
          v211 = OUTLINED_FUNCTION_94_1();
          sub_1DD390754(v211, v212, &qword_1DD65B2B8);
          v213 = *(v233 + 8);
          v213(&v224[v207], v234);
          sub_1DD39565C(v208, v210, v251);
          OUTLINED_FUNCTION_124();

          *(v202 + 14) = v208;
          _os_log_impl(&dword_1DD38D000, v200, v247, "[UCG] PLUS Candidate %s no longer exists in the address book. Ignoring... (plusId was %s)", v202, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          v214 = OUTLINED_FUNCTION_8_6();
          MEMORY[0x1E12B3DA0](v214);

          sub_1DD390754(v229, &qword_1ECCDFEE0, &unk_1DD664BB0);
          v213(v232, v234);
          v155 = v227;
        }

        else
        {

          sub_1DD390754(v217, &qword_1ECCDEB40, &qword_1DD65B2B8);
          sub_1DD390754(v216, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v229, &qword_1ECCDFEE0, &unk_1DD664BB0);
          (*(v233 + 8))(v232, v234);
        }

        sub_1DD44FDCC(v252);
        sub_1DD390754(v220, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      sub_1DD390754(v155, &qword_1ECCDEB40, &qword_1DD65B2B8);
      v130 = v230;
      goto LABEL_41;
    }

    sub_1DD390754(v226, &qword_1ECCDFEE0, &unk_1DD664BB0);
    v146 = *(v3 + 16);
    if (!v146)
    {
LABEL_72:
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v168 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v168, qword_1EE16F068);
      v169 = sub_1DD63F9D8();
      sub_1DD640368();
      v170 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v170, v171))
      {
        OUTLINED_FUNCTION_28();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_41_14();
        _os_log_impl(v172, v173, v174, v175, v176, 2u);
        v177 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v177);
      }

      *v251 = v239;
      OUTLINED_FUNCTION_15_55();
      sub_1DD60793C(v3);
      sub_1DD390754(v229, &qword_1ECCDFEE0, &unk_1DD664BB0);
      (*(v233 + 8))(v54, v234);
      sub_1DD44FDCC(v252);
      goto LABEL_40;
    }

    v147 = 0;
    v1 = 2;
    v34 = v243;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD586A18();
        v3 = v154;
      }

      if (v147 >= *(v3 + 16))
      {
        break;
      }

      v2 = (v147 + 1);
      OUTLINED_FUNCTION_24_0();
      v149 = v3 + v148 + v145[9] * v147;
      v150 = v3;
      v151 = v149 + *(v243 + 36);
      v152 = type metadata accessor for ContactResolver.SignalSet(0);
      *(v151 + v152[51]) = 0;
      *(v149 + *(v243 + 36) + v152[53]) = 0;
      *(v149 + *(type metadata accessor for Contact(0) + 92)) = 2;
      v3 = v150;
      v153 = v149 + *(v243 + 36);
      v54 = v232;
      *(v153 + v152[52]) = MEMORY[0x1E69E7CC0];

      v147 = v2;
      if (v146 == v2)
      {
        goto LABEL_72;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v248 = v236 + *(v101 + 36);
  v244 = *(type metadata accessor for ContactResolver.SignalSet(0) + 208);
  OUTLINED_FUNCTION_24_0();
  v133 = v238 + v132;
  v241 = v34[9];
  v34 = &qword_1DD644470;
  while (1)
  {
    OUTLINED_FUNCTION_112_0();
    sub_1DD3EB3D0(v134, v135, v136, &qword_1DD644470);
    v137 = *(v248 + v244);

    sub_1DD390754(v236, &qword_1ECCDBBE8, &qword_1DD644470);
    v54 = *(v137 + 16);
    v138 = *(v1 + 16);
    v2 = (v138 + v54);
    if (__OFADD__(v138, v54))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v2 > *(v1 + 24) >> 1)
    {
      sub_1DD3BED30();
      v1 = v139;
    }

    if (*(v137 + 16))
    {
      break;
    }

    if (v54)
    {
      goto LABEL_92;
    }

LABEL_54:
    v133 += v241;
    if (!--v3)
    {
      goto LABEL_55;
    }
  }

  OUTLINED_FUNCTION_47_12();
  if (v140 < v54)
  {
    goto LABEL_93;
  }

  swift_arrayInitWithCopy();

  if (!v54)
  {
    goto LABEL_54;
  }

  v141 = *(v1 + 16);
  v142 = __OFADD__(v141, v54);
  v143 = v141 + v54;
  if (!v142)
  {
    *(v1 + 16) = v143;
    goto LABEL_54;
  }

  __break(1u);
LABEL_97:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_37:
  v118 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v118, qword_1EE16F068);
  v119 = sub_1DD63F9D8();
  sub_1DD640368();
  v120 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = v248 - v1;
    OUTLINED_FUNCTION_18_1();
    v123 = swift_slowAlloc();
    *v123 = 134217984;
    *(v123 + 4) = v122;
    OUTLINED_FUNCTION_41_14();
    _os_log_impl(v124, v125, v126, v127, v128, 0xCu);
    v129 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x1E12B3DA0](v129);
  }

LABEL_40:
  v130 = v230;
LABEL_41:
  sub_1DD6404C8();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_1_133();
  sub_1DD627210(v130, v131);
  OUTLINED_FUNCTION_17();
}

BOOL sub_1DD6201A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
  v4 = *(v3 + *(type metadata accessor for ContactResolver.SignalSet(0) + 208));
  v6[2] = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8) + 48);
  return sub_1DD4508A8(sub_1DD626B48, v6, v4);
}

uint64_t sub_1DD620254@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1DD3EB3D0(a1, a3, &qword_1ECCDBBE8, &qword_1DD644470);
  type metadata accessor for Contact(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v6 = a3 + *(v5 + 36);
  v7 = *(v6 + 232);
  v8 = *(v6 + 216);
  v19[0] = *(v6 + 200);
  v19[1] = v8;
  v19[2] = v7;
  v12 = OUTLINED_FUNCTION_130_0(v5, v9, v10, v11);
  OUTLINED_FUNCTION_130_0(v12, v13, v14, v15);

  v17 = sub_1DD604820(v16, v19, v4, a3);
  sub_1DD390754(v19, &qword_1ECCDFED8, &unk_1DD664B90);

  *(v6 + 272) = v17;
  return result;
}

uint64_t sub_1DD62034C@<X0>(const void *a1@<X0>, __int128 *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x4AuLL);
  *(v12 + 1) = 0;
  v13 = v10[9];
  v14 = sub_1DD63F148();
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v14);
  v12[v10[10]] = 0;
  v15 = v10[12];
  v12[v15] = 0;
  v12[v10[13]] = 0;
  v12[v10[14]] = 0;
  *v12 = __dst[72];
  v16 = *(a2 + 2);
  if (v16)
  {
    v25 = *a2;
    v27 = *(a2 + 24);
    v28 = *(a2 + 5);
    memcpy(v29, __dst, 0x4AuLL);
    v26 = v16;
    sub_1DD40B80C(&v25);
    v12[3] = v17 != 0;
    v12[2] = v17 == 2;
    v12[4] = v17 == 1;
  }

  v18 = HIBYTE(a3);
  if (a3 == 2)
  {
    v19 = 3;
  }

  else
  {
    v19 = HIBYTE(a3);
  }

  v20 = __dst[16];
  if (__dst[16] != 3)
  {
    if (__dst[16] != v19)
    {
      goto LABEL_8;
    }

LABEL_12:
    v12[v15] = 1;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
    v22 = type metadata accessor for ContactResolver.SignalSet(0);
    *(a4 + v21 + *(v22 + 188)) = 1;
    goto LABEL_13;
  }

  if (v19 == 3)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (a3 == 2 || (a3 & 1) == 0)
  {
    v12[v15] = 1;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
    v22 = type metadata accessor for ContactResolver.SignalSet(0);
LABEL_13:
    *(a4 + v21 + *(v22 + 192)) = 1;
    v18 = v19;
  }

  v12[v10[11]] = v18 == v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  sub_1DD627288(v12, &a5[*(v23 + 36)]);
  memcpy(a5, __dst, 0x4AuLL);
  return sub_1DD3C6A40(__dst, v29);
}

void sub_1DD6205E0()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v67 - v8;
  v10 = *(v2 + 16);
  if (!v10 || (v11 = v2 + *(v5 + 36), v78 = (*(v7 + 80) + 32) & ~*(v7 + 80), v12 = (v11 + v78), (v13 = v12[27]) == 0))
  {
LABEL_24:

    goto LABEL_26;
  }

  v69 = v7;
  v14 = v12[25];
  v15 = v12[26];
  v17 = v12[28];
  v16 = v12[29];
  v18 = v12[30];
  v76 = v6;
  v77 = v14;
  LOBYTE(v83) = v14;
  *(&v83 + 1) = v15;
  *&v84 = v13;
  *(&v84 + 1) = v17;
  *&v85 = v16;
  *(&v85 + 1) = v18;
  v19 = qword_1EE165FB0;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v20 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v20, qword_1EE16F068);

  v70 = v0;
  v21 = sub_1DD63F9D8();
  v22 = sub_1DD640368();
  sub_1DD3FAA54(v77, v15, v13);
  v23 = os_log_type_enabled(v21, v22);
  v74 = v15;
  v75 = v13;
  v73 = v17;
  v72 = v16;
  v71 = v18;
  if (v23)
  {
    OUTLINED_FUNCTION_18_1();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v67 = swift_slowAlloc();
    v82 = v67;
    *v24 = 136315138;
    v79 = v83;
    v80 = v84;
    v81 = v85;

    v25 = v22;
    v26 = ContactHandleQuery.description.getter();
    v28 = v27;
    v29 = v21;

    v30 = sub_1DD39565C(v26, v28, &v82);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1DD38D000, v29, v25, "[UCG] There's a handle in the query - attempting to filter handles: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {
  }

  v31 = 0;
  v32 = *(v69 + 72);
  v33 = v2 + v78;
  v34 = MEMORY[0x1E69E7CC0];
  v69 = v2 + v78;
LABEL_9:
  v35 = v33 + v32 * v31;
  while (v10 != v31)
  {
    v36 = OUTLINED_FUNCTION_96_1();
    sub_1DD3EB3D0(v36, v37, &qword_1ECCDBBE8, &qword_1DD644470);
    if (sub_1DD620B8C(v9, &v83))
    {
      v38 = v76;
      sub_1DD3EB4B8(v9, v76, &qword_1ECCDBBE8, &qword_1DD644470);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v79 = v34;
      v68 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_26_2();
        sub_1DD42B4F8(v40, v41, v42);
        v38 = v76;
        v34 = v79;
      }

      v44 = *(v34 + 16);
      v43 = *(v34 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v46 = OUTLINED_FUNCTION_1_0(v43);
        v48 = v47;
        sub_1DD42B4F8(v46, v47, 1);
        v45 = v48;
        v38 = v76;
        v34 = v79;
      }

      ++v31;
      *(v34 + 16) = v45;
      sub_1DD3EB4B8(v38, v34 + v78 + v44 * v32, &qword_1ECCDBBE8, &qword_1DD644470);
      v2 = v68;
      v33 = v69;
      goto LABEL_9;
    }

    sub_1DD390754(v9, &qword_1ECCDBBE8, &qword_1DD644470);
    v35 += v32;
    ++v31;
  }

  sub_1DD3FAA54(v77, v74, v75);
  if (!*(v34 + 16))
  {

    v59 = sub_1DD63F9D8();
    sub_1DD640368();
    v60 = OUTLINED_FUNCTION_5_32();
    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_28();
      v62 = swift_slowAlloc();
      *v62 = 0;
      OUTLINED_FUNCTION_38_8();
      _os_log_impl(v63, v64, v65, v66, v62, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    goto LABEL_24;
  }

  v49 = sub_1DD63F9D8();
  sub_1DD640368();
  v50 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v50, v51))
  {
    OUTLINED_FUNCTION_58_9();
    v52 = swift_slowAlloc();
    *v52 = 134218240;
    *(v52 + 4) = v10;

    *(v52 + 12) = 2048;
    *(v52 + 14) = *(v34 + 16);

    OUTLINED_FUNCTION_41_14();
    _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
    v58 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x1E12B3DA0](v58);
  }

  else
  {
  }

LABEL_26:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD620B8C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + *(type metadata accessor for Contact(0) + 80));
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *MEMORY[0x1E69964B0];
  v45 = *MEMORY[0x1E69964B0] + 16;
  v7 = 32;
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    memcpy(__dst, (v3 + v7), 0x4AuLL);
    v8 = *a2;
    if (*a2 && v8 != LOBYTE(__dst[1]))
    {
      goto LABEL_32;
    }

    v9 = *(a2 + 5);
    if (*a2)
    {
      if (v8 != 1)
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
        sub_1DD3C6A40(__dst, v41);
LABEL_15:

        v16 = sub_1DD40B8E0();
        v17 = sub_1DD415480(v16);
        if (v18)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }

        if (v18)
        {
          v15 = v18;
        }

        else
        {
          v15 = 0xE000000000000000;
        }

        goto LABEL_21;
      }

      sub_1DD3C6A40(__dst, v41);
      v10 = sub_1DD63FDA8();
      v11 = (*(v6 + 16))(v6, v10);
    }

    else
    {
      *&v40[0] = *(a2 + 4);
      *(&v40[0] + 1) = v9;
      v42 = 64;
      v43 = 0xE100000000000000;
      sub_1DD3C6A40(__dst, v41);
      sub_1DD3B7F10();
      if ((sub_1DD6406D8() & 1) == 0)
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
        goto LABEL_15;
      }

      v10 = sub_1DD63FDA8();
      v11 = (*(v6 + 16))(v6, v10);
    }

    v12 = v11;

    v13 = sub_1DD63FDD8();
    v15 = v14;

LABEL_21:
    v19 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v19 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19 || (v13 == *(&__dst[3] + 1) ? (v20 = v15 == *&__dst[4]) : (v20 = 0), v20))
    {
    }

    else
    {
      v21 = sub_1DD640CD8();

      if ((v21 & 1) == 0)
      {
        sub_1DD3C6A9C(__dst);
        goto LABEL_32;
      }
    }

    memcpy(v41, __dst, 0x4AuLL);
    v22 = *(a2 + 1);
    v40[0] = *a2;
    v40[1] = v22;
    v40[2] = *(a2 + 2);
    sub_1DD412278();
    v24 = v23;
    sub_1DD3C6A9C(__dst);
    if (v24)
    {
      return 1;
    }

LABEL_32:
    v7 += 80;
    ++v5;
  }

  if (qword_1EE165FB0 == -1)
  {
    goto LABEL_34;
  }

LABEL_41:
  swift_once();
LABEL_34:
  v25 = sub_1DD63F9F8();
  __swift_project_value_buffer(v25, qword_1EE16F068);

  sub_1DD3FAAA4(a2, __dst);
  v26 = sub_1DD63F9D8();
  v27 = sub_1DD640368();
  sub_1DD3FAB00(a2);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v40[0] = v29;
    *v28 = 136315394;
    v30 = MEMORY[0x1E12B2430](v3, &type metadata for ContactHandle);
    v32 = v31;

    v33 = sub_1DD39565C(v30, v32, v40);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = *(a2 + 1);
    __dst[0] = *a2;
    __dst[1] = v34;
    __dst[2] = *(a2 + 2);
    sub_1DD3FAAA4(a2, v41);
    v35 = ContactHandleQuery.description.getter();
    v37 = v36;

    v38 = sub_1DD39565C(v35, v37, v40);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_1DD38D000, v26, v27, "[UCG] Nominating contact with %s for removal because it doesn't match the query for %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v29, -1, -1);
    MEMORY[0x1E12B3DA0](v28, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1DD621028()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DD390754(v0 + 56, &qword_1ECCDCF48, &unk_1DD664BF0);

  OUTLINED_FUNCTION_13_50();
  sub_1DD627210(v0 + v1, v2);

  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusSuggestionHandler, &qword_1ECCDCF40, &qword_1DD64CBF0);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer));
  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_triggerLogger, &qword_1ECCDC250, &qword_1DD645B10);
  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_relationshipLocalizer, &qword_1ECCDCF50, &qword_1DD664BD0);

  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_phoneSequenceFetcher, &qword_1ECCDCF38, &unk_1DD664750);

  return v0;
}

uint64_t sub_1DD621168()
{
  sub_1DD621028();

  return swift_deallocClassInstance();
}

void sub_1DD6211E4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1;
  }

  v9 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  v10 = v9 | (v8 << 16);
  v26[0] = a3;
  v26[1] = a4;
  v11 = &unk_1EE165000;
  do
  {
    v12 = v6;
    v13 = v26[v7];
    sub_1DD63FFE8();
    if (v14)
    {
      if (v11[502] != -1)
      {
        swift_once();
      }

      v15 = sub_1DD63F9F8();
      __swift_project_value_buffer(v15, qword_1EE16F068);

      v16 = sub_1DD63F9D8();
      v17 = sub_1DD640388();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = v10;
        v20 = v11;
        v21 = swift_slowAlloc();
        v25 = v21;
        *v18 = 136315906;
        *(v18 + 4) = sub_1DD39565C(a1, a2, &v25);
        *(v18 + 12) = 2048;
        *(v18 + 14) = v13;
        *(v18 + 22) = 2048;
        *(v18 + 24) = a3;
        *(v18 + 32) = 2048;
        *(v18 + 34) = a4;
        _os_log_impl(&dword_1DD38D000, v16, v17, "[UCG] Invalid UTF-16 offset: string=%s offset=%ld range=%ld:%ld", v18, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v21);
        v22 = v21;
        v11 = v20;
        v10 = v19;
        MEMORY[0x1E12B3DA0](v22, -1, -1);
        MEMORY[0x1E12B3DA0](v18, -1, -1);
      }
    }

    v6 = 1;
    v7 = 1;
  }

  while ((v12 & 1) == 0);
}

uint64_t sub_1DD621400(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(__src, v1, sizeof(__src));
  sub_1DD3C9478(__dst, v21);
  swift_getAtKeyPath();
  memcpy(v21, __src, 0x108uLL);
  sub_1DD3C9580(v21);
  v15 = v17[0];
  v16 = v17[1];
  sub_1DD3B7F10();
  v2 = sub_1DD6406E8();

  v3 = *(v2 + 16);
  if (v3)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DD42BAD8(0, v3, 0);
    v4 = v18;
    v5 = v3 - 1;
    for (i = (v2 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      memcpy(v17, __dst, sizeof(v17));
      sub_1DD3C9478(__dst, &v15);

      v15 = MEMORY[0x1E12B2190](v7, v8, v9, v10);
      v16 = v11;
      swift_setAtWritableKeyPath();

      memcpy(__src, v17, sizeof(__src));
      v18 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1DD42BAD8(v12 > 1, v13 + 1, 1);
        v4 = v18;
      }

      *(v4 + 16) = v13 + 1;
      memcpy((v4 + 264 * v13 + 32), __src, 0x108uLL);
      if (!v5)
      {
        break;
      }

      --v5;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

__n128 sub_1DD6215F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1DD640E28();
  sub_1DD63FD28();
  if (a4)
  {
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  sub_1DD640E78();
  v12 = sub_1DD640758();
  *(a6 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
  v13 = (a6[6] + 32 * v12);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v14 = a6[7] + 40 * v12;
  *(v14 + 32) = *(a5 + 32);
  result = *(a5 + 16);
  *v14 = *a5;
  *(v14 + 16) = result;
  ++a6[2];
  return result;
}

void *sub_1DD621710(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1DD621B5C(v8, v4, v2, sub_1DD621888);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1DD57634C(0, v4, v5);
  sub_1DD621888(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_1DD621888(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 56);
    v15 = (*(a3 + 48) + 32 * v13);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v28[0] = *v15;
    v28[1] = v16;
    v28[2] = v17;
    v28[3] = v18;
    v19 = (v14 + 40 * v13);
    v20 = v19[1];
    v22 = v19[2];
    v21 = v19[3];
    v23 = v19[4];
    v27[0] = *v19;
    v27[1] = v20;
    v27[2] = v22;
    v27[3] = v21;
    v27[4] = v23;

    LOBYTE(v18) = sub_1DD60C1AC(v28, v27);

    if (v18)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DD621F54(result, a2, v29, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1DD621A4C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DD626C58(a5, v13);

    sub_1DD626C58(a5, v13);

    v12 = sub_1DD625210(v11, a2, a3, a4, a5, a6);

    sub_1DD626C90(a5);

    sub_1DD626C90(a5);

    return v12;
  }

  return result;
}

void *sub_1DD621B5C(void *result, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a4(v7, a2, a3);

    return OUTLINED_FUNCTION_128_0();
  }

  return result;
}

void sub_1DD621BE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF38, &unk_1DD664C48);
      v7 = sub_1DD640A78();
      if (a2 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = *a1;
      }

      v9 = 0;
      v30 = v4;
      while (v8)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_16:
        v14 = v10 | (v9 << 6);
        v15 = *(v4 + 56);
        v16 = (*(v4 + 48) + 16 * v14);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v15 + 8 * v14);
        sub_1DD640E28();

        sub_1DD63FD28();
        sub_1DD640E78();
        OUTLINED_FUNCTION_57_13();
        if (v20)
        {
          OUTLINED_FUNCTION_4_3();
          while (++v22 != v24 || (v23 & 1) == 0)
          {
            v25 = v22 == v24;
            if (v22 == v24)
            {
              v22 = 0;
            }

            v23 |= v25;
            if (*(v7 + 64 + 8 * v22) != -1)
            {
              OUTLINED_FUNCTION_8_41();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_25:
        OUTLINED_FUNCTION_40_12(v21);
        *v26 = v17;
        v26[1] = v18;
        OUTLINED_FUNCTION_63_4(v27, v29, v30, v19);
        if (v28)
        {
          goto LABEL_30;
        }

        v4 = v30;
      }

      v11 = v9;
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= a2)
        {
          return;
        }

        ++v11;
        if (a1[v9])
        {
          OUTLINED_FUNCTION_14_3();
          v8 = v13 & v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1DD621D9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF30, &unk_1DD664C38);
      v7 = sub_1DD640A78();
      if (a2 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = *a1;
      }

      v9 = 0;
      v30 = v4;
      while (v8)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_16:
        v14 = v10 | (v9 << 6);
        v15 = *(v4 + 56);
        v16 = (*(v4 + 48) + 16 * v14);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v15 + 8 * v14);
        sub_1DD640E28();

        v31 = v19;
        sub_1DD63FD28();
        sub_1DD640E78();
        OUTLINED_FUNCTION_57_13();
        if (v20)
        {
          OUTLINED_FUNCTION_4_3();
          while (++v22 != v24 || (v23 & 1) == 0)
          {
            v25 = v22 == v24;
            if (v22 == v24)
            {
              v22 = 0;
            }

            v23 |= v25;
            if (*(v7 + 64 + 8 * v22) != -1)
            {
              OUTLINED_FUNCTION_8_41();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_25:
        OUTLINED_FUNCTION_40_12(v21);
        *v26 = v17;
        v26[1] = v18;
        OUTLINED_FUNCTION_63_4(v27, v29, v30, v31);
        if (v28)
        {
          goto LABEL_30;
        }

        v4 = v30;
      }

      v11 = v9;
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= a2)
        {
          return;
        }

        ++v11;
        if (a1[v9])
        {
          OUTLINED_FUNCTION_14_3();
          v8 = v13 & v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1DD621F54(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    if (a4[2] == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD98, &unk_1DD654CF0);
      v23 = sub_1DD640A78();
      if (a2 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = *a1;
      }

      v9 = 0;
      while (v8)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_16:
        v13 = v10 | (v9 << 6);
        v14 = (a4[6] + 32 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = v14[2];
        v18 = v14[3];
        v19 = a4[7] + 40 * v13;
        v20 = *(v19 + 32);
        v21 = *(v19 + 16);
        v25[0] = *v19;
        v25[1] = v21;
        v26 = v20;

        sub_1DD626C58(v25, v24);
        sub_1DD6215F8(v15, v16, v17, v18, v25, v23);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_20;
        }

        if (!v5)
        {
          return;
        }
      }

      v11 = v9;
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= a2)
        {
          return;
        }

        v12 = a1[v9];
        ++v11;
        if (v12)
        {
          v10 = __clz(__rbit64(v12));
          v8 = (v12 - 1) & v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }
  }
}

uint64_t sub_1DD6220D4(uint64_t a1, char a2, void *a3)
{
  v47 = a3;
  v3 = a1;
  v4 = 0;
  v37 = *(a1 + 16);
  v5 = 32;
  while (1)
  {
    if (v37 == v4)
    {
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    memcpy(__dst, (v3 + v5), 0x48uLL);
    v6 = __dst[8];
    v38 = __dst[6];
    v41 = __dst[5];
    v42 = __dst[7];
    v8 = __dst[3];
    v7 = __dst[4];
    v9 = __dst[1];
    v10 = __dst[2];
    v11 = __dst[0];
    sub_1DD3EB3D0(__dst, v45, &qword_1ECCDFF28, &qword_1DD664C30);
    if (!v9)
    {
    }

    v39 = v5;
    v40 = v4;
    v12 = *v47;
    v14 = sub_1DD3FEDF8(v11, v9, v10, v8);
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_18;
    }

    v18 = v13;
    if (v12[3] >= v17)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC320, &qword_1DD646168);
        sub_1DD640A18();
      }
    }

    else
    {
      sub_1DD4E6DCC(v17, a2 & 1);
      v19 = sub_1DD3FEDF8(v11, v9, v10, v8);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_20;
      }

      v14 = v19;
    }

    v21 = *v47;
    if (v18)
    {
      v22 = 5 * v14;
      v23 = (v21[7] + 40 * v14);
      v25 = *v23;
      v24 = v23[1];
      v26 = v23[3];
      v44 = v23[2];
      v27 = v23[4];

      v28 = sub_1DD608B88(v6, v27);

      v29 = (v21[7] + 8 * v22);
      *v29 = v25;
      v29[1] = v24;
      v29[2] = v44;
      v29[3] = v26;
      v29[4] = v28;
    }

    else
    {
      v21[(v14 >> 6) + 8] |= 1 << v14;
      v30 = (v21[6] + 32 * v14);
      *v30 = v11;
      v30[1] = v9;
      v30[2] = v10;
      v30[3] = v8;
      v31 = (v21[7] + 40 * v14);
      *v31 = v7;
      v31[1] = v41;
      v31[2] = v38;
      v31[3] = v42;
      v31[4] = v6;
      v32 = v21[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_19;
      }

      v21[2] = v34;
    }

    v5 = v39 + 72;
    v4 = v40 + 1;
    a2 = 1;
    v3 = a1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD6223C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1DD62243C(uint64_t a1, char a2, __n128 a3)
{
  v5 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v3 = v5;
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1DD6407B8();
LABEL_9:
  result = sub_1DD640918();
  *v3 = result;
  return result;
}

uint64_t sub_1DD6224DC(unint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1DD640CA8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
        v8 = sub_1DD640158();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_1DD622CA4(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1DD62275C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DD622668(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD623C74(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DD622C48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD62275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v58 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - v16;
  v54 = a2;
  if (a3 != a2)
  {
    v65 = *a4;
    v66 = v5;
    v60 = *(v15 + 72);
    v61 = v13;
    v62 = a5;
    v59 = &v53 - v16;
LABEL_4:
    v55 = a3;
    v19 = a3;
    while (1)
    {
      v20 = v19 - 1;
      v21 = v65;
      v22 = v60;
      v63 = v65 + v60 * v19;
      sub_1DD3EB3D0(v63, v17, &qword_1ECCDBBE8, &qword_1DD644470);
      v64 = v20;
      v23 = v21 + v20 * v22;
      v24 = sub_1DD3EB3D0(v23, v13, &qword_1ECCDBBE8, &qword_1DD644470);
      MEMORY[0x1EEE9AC00](v24);
      *(&v53 - 2) = v17;

      v25 = v66;
      sub_1DD3EC3B8();
      v27 = v26;
      v28 = *(v26 + 16);
      if (v28)
      {
        v67 = MEMORY[0x1E69E7CC0];
        sub_1DD42B97C(0, v28, 0);
        v29 = v67;
        v30 = v67[2];
        v31 = 40;
        do
        {
          v32 = *(v27 + v31);
          v67 = v29;
          v33 = v29[3];
          if (v30 >= v33 >> 1)
          {
            sub_1DD42B97C(v33 > 1, v30 + 1, 1);
            v29 = v67;
          }

          v29[2] = v30 + 1;
          v29[v30 + 4] = v32;
          v31 += 16;
          ++v30;
          --v28;
        }

        while (v28);

        v13 = v61;
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
      }

      v34 = v29[2];
      if (v34)
      {
        break;
      }

      v35 = 0;
LABEL_18:

      MEMORY[0x1EEE9AC00](v39);
      *(&v53 - 2) = v13;

      sub_1DD3EC3B8();
      v41 = v40;
      v66 = v25;
      v42 = *(v40 + 16);
      if (v42)
      {
        v67 = MEMORY[0x1E69E7CC0];
        sub_1DD42B97C(0, v42, 0);
        v43 = v67;
        v44 = v67[2];
        v45 = 40;
        do
        {
          v46 = *(v41 + v45);
          v67 = v43;
          v47 = v43[3];
          if (v44 >= v47 >> 1)
          {
            sub_1DD42B97C(v47 > 1, v44 + 1, 1);
            v43 = v67;
          }

          v43[2] = v44 + 1;
          v43[v44 + 4] = v46;
          v45 += 16;
          ++v44;
          --v42;
        }

        while (v42);

        v13 = v61;
      }

      else
      {

        v43 = MEMORY[0x1E69E7CC0];
      }

      v48 = v43[2];
      v17 = v59;
      v49 = 0;
      if (v48)
      {
        v50 = v43 + 4;
        while (1)
        {
          v51 = *v50++;
          v38 = __OFADD__(v49, v51);
          v49 += v51;
          if (v38)
          {
            break;
          }

          if (!--v48)
          {
            goto LABEL_29;
          }
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

LABEL_29:

      sub_1DD390754(v13, &qword_1ECCDBBE8, &qword_1DD644470);
      result = sub_1DD390754(v17, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v49 >= v35)
      {
        goto LABEL_32;
      }

      if (!v65)
      {
        goto LABEL_36;
      }

      v52 = v56;
      sub_1DD3EB4B8(v63, v56, &qword_1ECCDBBE8, &qword_1DD644470);
      swift_arrayInitWithTakeFrontToBack();
      sub_1DD3EB4B8(v52, v23, &qword_1ECCDBBE8, &qword_1DD644470);
      v19 = v64;
      if (v64 == v58)
      {
LABEL_32:
        a3 = v55 + 1;
        if (v55 + 1 != v54)
        {
          goto LABEL_4;
        }
      }
    }

    v35 = 0;
    v36 = v29 + 4;
    while (1)
    {
      v37 = *v36++;
      v38 = __OFADD__(v35, v37);
      v35 += v37;
      if (v38)
      {
        break;
      }

      if (!--v34)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_35;
  }
}

uint64_t sub_1DD622C48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DD622CA4(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  v188 = a1;
  v189 = a4;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v201 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v190 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v191 = &v186 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v205 = &v186 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v200 = &v186 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v206 = &v186 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v203 = &v186 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v187 = &v186 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v186 = &v186 - v21;
  v204 = a3;
  v22 = a3[1];
  v207 = a5;
  if (v22 >= 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();
    v24 = 0;
    v25 = v23;
    v26 = &qword_1DD644470;
    while (1)
    {
      v27 = v24 + 1;
      v196 = v24;
      i = v25;
      if (v24 + 1 >= v22)
      {
        v69 = v189;
      }

      else
      {
        v28 = *v204;
        v29 = *(v201 + 72);
        v30 = v186;
        sub_1DD3EB3D0(*v204 + v29 * v27, v186, &qword_1ECCDBBE8, &qword_1DD644470);
        v199 = v29;
        v193 = v28;
        v31 = v187;
        sub_1DD3EB3D0(v28 + v29 * v24, v187, &qword_1ECCDBBE8, &qword_1DD644470);
        v198 = sub_1DD617EDC();
        v195 = sub_1DD617EDC();
        v32 = v31;
        v33 = v24 + 1;
        sub_1DD390754(v32, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD390754(v30, &qword_1ECCDBBE8, &qword_1DD644470);
        v34 = v24 + 2;
        v192 = v22;
        while (1)
        {
          v35 = v34;
          v36 = v33 + 1;
          if (v33 + 1 >= v22)
          {
            break;
          }

          v202 = v34;
          v37 = v199;
          v38 = v193;
          v39 = v203;
          sub_1DD3EB3D0(v193 + v36 * v199, v203, &qword_1ECCDBBE8, &qword_1DD644470);
          v40 = sub_1DD3EB3D0(v38 + v33 * v37, v206, &qword_1ECCDBBE8, &qword_1DD644470);
          MEMORY[0x1EEE9AC00](v40);
          *(&v186 - 2) = v39;

          v41 = v208;
          sub_1DD3EC3B8();
          v43 = v42;
          v44 = *(v42 + 16);
          if (v44)
          {
            v209 = MEMORY[0x1E69E7CC0];
            sub_1DD42B97C(0, v44, 0);
            v45 = v209;
            v46 = v209[2];
            v47 = 40;
            do
            {
              v48 = *(v43 + v47);
              v209 = v45;
              v49 = v45[3];
              if (v46 >= v49 >> 1)
              {
                sub_1DD42B97C(v49 > 1, v46 + 1, 1);
                v45 = v209;
              }

              v45[2] = v46 + 1;
              v45[v46 + 4] = v48;
              v47 += 16;
              ++v46;
              --v44;
            }

            while (v44);

            v26 = &qword_1DD644470;
          }

          else
          {

            v45 = MEMORY[0x1E69E7CC0];
          }

          v50 = v45[2];
          if (v50)
          {
            v51 = 0;
            v52 = v45 + 4;
            while (1)
            {
              v53 = *v52++;
              v99 = __OFADD__(v51, v53);
              v51 += v53;
              if (v99)
              {
                break;
              }

              if (!--v50)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          v51 = 0;
LABEL_19:

          MEMORY[0x1EEE9AC00](v54);
          *(&v186 - 2) = v206;

          sub_1DD3EC3B8();
          v56 = v55;
          v208 = v41;
          v57 = *(v55 + 16);
          if (v57)
          {
            v209 = MEMORY[0x1E69E7CC0];
            sub_1DD42B97C(0, v57, 0);
            v58 = v209;
            v59 = v209[2];
            v60 = 40;
            do
            {
              v61 = *(v56 + v60);
              v209 = v58;
              v62 = v58[3];
              if (v59 >= v62 >> 1)
              {
                sub_1DD42B97C(v62 > 1, v59 + 1, 1);
                v58 = v209;
              }

              v58[2] = v59 + 1;
              v58[v59 + 4] = v61;
              v60 += 16;
              ++v59;
              --v57;
            }

            while (v57);

            v26 = &qword_1DD644470;
          }

          else
          {

            v58 = MEMORY[0x1E69E7CC0];
          }

          v63 = v58[2];
          if (v63)
          {
            v64 = 0;
            v65 = v58 + 4;
            while (1)
            {
              v66 = *v65++;
              v99 = __OFADD__(v64, v66);
              v64 += v66;
              if (v99)
              {
                goto LABEL_166;
              }

              if (!--v63)
              {
                goto LABEL_32;
              }
            }
          }

          v64 = 0;
LABEL_32:
          v67 = v195 < v198;

          sub_1DD390754(v206, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v203, &qword_1ECCDBBE8, &qword_1DD644470);
          v68 = v67 ^ (v64 >= v51);
          v35 = v202;
          v34 = v202 + 1;
          v33 = v36;
          v22 = v192;
          if ((v68 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v36 = v22;
LABEL_36:
        v69 = v189;
        if (v195 >= v198)
        {
          goto LABEL_56;
        }

        v70 = v196;
        if (v36 < v196)
        {
          goto LABEL_193;
        }

        if (v196 >= v36)
        {
LABEL_56:
          v27 = v36;
        }

        else
        {
          v71 = v22 >= v35 ? v35 : v22;
          v72 = v199 * (v71 - 1);
          v73 = v199 * v71;
          v74 = v196 * v199;
          v75 = v36;
          do
          {
            if (v70 != --v75)
            {
              v76 = *v204;
              if (!*v204)
              {
                goto LABEL_197;
              }

              sub_1DD3EB4B8(v76 + v74, v190, &qword_1ECCDBBE8, &qword_1DD644470);
              if (v74 < v72 || v76 + v74 >= v76 + v73)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v74 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1DD3EB4B8(v190, v76 + v72, &qword_1ECCDBBE8, &qword_1DD644470);
              v69 = v189;
            }

            ++v70;
            v72 -= v199;
            v73 -= v199;
            v74 += v199;
          }

          while (v70 < v75);
          v27 = v36;
          v26 = &qword_1DD644470;
        }
      }

      v78 = v204[1];
      if (v27 >= v78)
      {
        goto LABEL_65;
      }

      if (__OFSUB__(v27, v196))
      {
        goto LABEL_189;
      }

      if (v27 - v196 >= v69)
      {
        goto LABEL_65;
      }

      v79 = v196 + v69;
      if (__OFADD__(v196, v69))
      {
        break;
      }

      if (v79 >= v78)
      {
        v79 = v204[1];
      }

      if (v79 < v196)
      {
        goto LABEL_192;
      }

      if (v27 == v79)
      {
        goto LABEL_65;
      }

      v202 = *v204;
      v195 = *(v201 + 72);
      v192 = v79;
      do
      {
        v193 = v27;
        v133 = v27;
        do
        {
          v134 = v133 - 1;
          v135 = v202;
          v136 = v195;
          v198 = v202 + v195 * v133;
          v137 = v200;
          sub_1DD3EB3D0(v198, v200, &qword_1ECCDBBE8, &qword_1DD644470);
          v199 = v134;
          v138 = v135 + v134 * v136;
          v139 = sub_1DD3EB3D0(v138, v205, &qword_1ECCDBBE8, &qword_1DD644470);
          MEMORY[0x1EEE9AC00](v139);
          *(&v186 - 2) = v137;

          v140 = v208;
          sub_1DD3EC3B8();
          v142 = v141;
          v26 = *(v141 + 16);
          if (v26)
          {
            v209 = MEMORY[0x1E69E7CC0];
            sub_1DD42B97C(0, v26, 0);
            v143 = v209;
            v144 = v209[2];
            v145 = 40;
            do
            {
              v146 = *(v142 + v145);
              v209 = v143;
              v147 = v143[3];
              if (v144 >= v147 >> 1)
              {
                sub_1DD42B97C(v147 > 1, v144 + 1, 1);
                v143 = v209;
              }

              v143[2] = v144 + 1;
              v143[v144 + 4] = v146;
              v145 += 16;
              ++v144;
              v26 = (v26 - 1);
            }

            while (v26);
          }

          else
          {

            v143 = MEMORY[0x1E69E7CC0];
          }

          v148 = v143[2];
          if (v148)
          {
            v149 = 0;
            v150 = v143 + 4;
            while (1)
            {
              v151 = *v150++;
              v99 = __OFADD__(v149, v151);
              v149 += v151;
              if (v99)
              {
                goto LABEL_167;
              }

              if (!--v148)
              {
                goto LABEL_132;
              }
            }
          }

          v149 = 0;
LABEL_132:

          MEMORY[0x1EEE9AC00](v152);
          *(&v186 - 2) = v205;

          sub_1DD3EC3B8();
          v154 = v153;
          v208 = v140;
          v155 = *(v153 + 16);
          if (v155)
          {
            v209 = MEMORY[0x1E69E7CC0];
            sub_1DD42B97C(0, v155, 0);
            v156 = v209;
            v157 = v209[2];
            v158 = 40;
            do
            {
              v159 = *(v154 + v158);
              v209 = v156;
              v160 = v156[3];
              if (v157 >= v160 >> 1)
              {
                sub_1DD42B97C(v160 > 1, v157 + 1, 1);
                v156 = v209;
              }

              v156[2] = v157 + 1;
              v156[v157 + 4] = v159;
              v158 += 16;
              ++v157;
              --v155;
            }

            while (v155);
          }

          else
          {

            v156 = MEMORY[0x1E69E7CC0];
          }

          v161 = v156[2];
          v26 = &qword_1DD644470;
          v162 = 0;
          if (v161)
          {
            v163 = v156 + 4;
            while (1)
            {
              v164 = *v163++;
              v99 = __OFADD__(v162, v164);
              v162 += v164;
              if (v99)
              {
                break;
              }

              if (!--v161)
              {
                goto LABEL_143;
              }
            }

LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            v170 = sub_1DD4EC2B8();
            goto LABEL_153;
          }

LABEL_143:

          sub_1DD390754(v205, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v200, &qword_1ECCDBBE8, &qword_1DD644470);
          if (v162 >= v149)
          {
            break;
          }

          if (!v202)
          {
            goto LABEL_195;
          }

          v165 = v191;
          sub_1DD3EB4B8(v198, v191, &qword_1ECCDBBE8, &qword_1DD644470);
          swift_arrayInitWithTakeFrontToBack();
          sub_1DD3EB4B8(v165, v138, &qword_1ECCDBBE8, &qword_1DD644470);
          v133 = v199;
        }

        while (v199 != v196);
        v27 = v193 + 1;
      }

      while (v193 + 1 != v192);
      v27 = v192;
LABEL_65:
      if (v27 < v196)
      {
        goto LABEL_188;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v193 = v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = i;
      }

      else
      {
        sub_1DD3BEB7C();
        v25 = v166;
      }

      v81 = *(v25 + 2);
      v82 = v81 + 1;
      if (v81 >= *(v25 + 3) >> 1)
      {
        sub_1DD3BEB7C();
        v25 = v167;
      }

      *(v25 + 2) = v82;
      v83 = v25 + 32;
      v84 = &v25[16 * v81 + 32];
      v85 = v193;
      *v84 = v196;
      v84[1] = v85;
      v202 = *v188;
      if (!v202)
      {
        goto LABEL_198;
      }

      if (v81)
      {
        v199 = (v25 + 32);
        while (1)
        {
          v86 = v82 - 1;
          v87 = &v83[2 * v82 - 2];
          v88 = &v25[16 * v82];
          if (v82 >= 4)
          {
            break;
          }

          if (v82 == 3)
          {
            v89 = *(v25 + 4);
            v90 = *(v25 + 5);
            v99 = __OFSUB__(v90, v89);
            v91 = v90 - v89;
            v92 = v99;
LABEL_86:
            if (v92)
            {
              goto LABEL_178;
            }

            v104 = *v88;
            v103 = *(v88 + 1);
            v105 = __OFSUB__(v103, v104);
            v106 = v103 - v104;
            v107 = v105;
            if (v105)
            {
              goto LABEL_181;
            }

            v108 = v87[1];
            v109 = v108 - *v87;
            if (__OFSUB__(v108, *v87))
            {
              goto LABEL_184;
            }

            if (__OFADD__(v106, v109))
            {
              goto LABEL_186;
            }

            if (v106 + v109 >= v91)
            {
              if (v91 < v109)
              {
                v86 = v82 - 2;
              }

              goto LABEL_108;
            }

            goto LABEL_101;
          }

          if (v82 < 2)
          {
            goto LABEL_180;
          }

          v111 = *v88;
          v110 = *(v88 + 1);
          v99 = __OFSUB__(v110, v111);
          v106 = v110 - v111;
          v107 = v99;
LABEL_101:
          if (v107)
          {
            goto LABEL_183;
          }

          v113 = *v87;
          v112 = v87[1];
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_185;
          }

          if (v114 < v106)
          {
            goto LABEL_115;
          }

LABEL_108:
          if (v86 - 1 >= v82)
          {
            goto LABEL_169;
          }

          v118 = *v204;
          if (!*v204)
          {
            goto LABEL_194;
          }

          v119 = v25;
          v120 = &v83[2 * v86 - 2];
          v121 = *v120;
          v122 = v86;
          v123 = &v83[2 * v86];
          v124 = *(v123 + 1);
          v125 = *(v201 + 72);
          v126 = v118 + v125 * *v120;
          v127 = v118 + v125 * *v123;
          v128 = v118 + v125 * v124;
          v129 = v207;

          v130 = v126;
          v131 = v208;
          sub_1DD624240(v130, v127, v128, v202, v129);
          v26 = v131;
          if (v131)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v124 < v121)
          {
            goto LABEL_170;
          }

          v208 = 0;
          v26 = *(v119 + 2);
          if (v122 > v26)
          {
            goto LABEL_171;
          }

          *v120 = v121;
          v120[1] = v124;
          if (v122 >= v26)
          {
            goto LABEL_172;
          }

          v82 = v26 - 1;
          sub_1DD4EC4E4(v123 + 16, v26 - v122 - 1, v123);
          v25 = v119;
          *(v119 + 2) = v26 - 1;
          v132 = v26 > 2;
          v26 = &qword_1DD644470;
          v83 = v199;
          if (!v132)
          {
            goto LABEL_115;
          }
        }

        v93 = &v83[2 * v82];
        v94 = *(v93 - 8);
        v95 = *(v93 - 7);
        v99 = __OFSUB__(v95, v94);
        v96 = v95 - v94;
        if (v99)
        {
          goto LABEL_176;
        }

        v98 = *(v93 - 6);
        v97 = *(v93 - 5);
        v99 = __OFSUB__(v97, v98);
        v91 = v97 - v98;
        v92 = v99;
        if (v99)
        {
          goto LABEL_177;
        }

        v100 = *(v88 + 1);
        v101 = v100 - *v88;
        if (__OFSUB__(v100, *v88))
        {
          goto LABEL_179;
        }

        v99 = __OFADD__(v91, v101);
        v102 = v91 + v101;
        if (v99)
        {
          goto LABEL_182;
        }

        if (v102 >= v96)
        {
          v116 = *v87;
          v115 = v87[1];
          v99 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v99)
          {
            goto LABEL_187;
          }

          if (v91 < v117)
          {
            v86 = v82 - 2;
          }

          goto LABEL_108;
        }

        goto LABEL_86;
      }

LABEL_115:
      v22 = v204[1];
      v24 = v193;
      if (v193 >= v22)
      {
        goto LABEL_150;
      }
    }

    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_195:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_196:

    __break(1u);
LABEL_197:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_198:
    swift_bridgeObjectRelease_n();
    __break(1u);
    goto LABEL_199;
  }

  swift_bridgeObjectRetain_n();
  v25 = MEMORY[0x1E69E7CC0];
LABEL_150:
  v205 = *v188;
  if (!v205)
  {
LABEL_199:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  v168 = v25;
  swift_bridgeObjectRetain_n();
  v169 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v208;
  if ((v169 & 1) == 0)
  {
    goto LABEL_190;
  }

  v170 = v168;
LABEL_153:
  v171 = v170 + 16;
  v172 = *(v170 + 2);
  for (i = v170; ; v170 = i)
  {
    if (v172 < 2)
    {

      return swift_bridgeObjectRelease_n();
    }

    v173 = *v204;
    if (!*v204)
    {
      goto LABEL_196;
    }

    v174 = v26;
    v175 = &v170[16 * v172];
    v176 = *v175;
    v177 = v171;
    v178 = &v171[16 * v172];
    v179 = *v178;
    v180 = *(v178 + 1);
    v181 = *(v201 + 72);
    v208 = (v173 + v181 * *v175);
    v206 = v173 + v181 * v179;
    v182 = v173 + v181 * v180;
    v183 = v207;

    sub_1DD624240(v208, v206, v182, v205, v183);
    v26 = v174;
    if (v174)
    {
      break;
    }

    if (v180 < v176)
    {
      goto LABEL_173;
    }

    if (v172 - 2 >= *v177)
    {
      goto LABEL_174;
    }

    v171 = v177;
    *v175 = v176;
    *(v175 + 1) = v180;
    v184 = *v177 - v172;
    if (*v177 < v172)
    {
      goto LABEL_175;
    }

    v172 = *v177 - 1;
    sub_1DD4EC4E4(v178 + 16, v184, v178);
    *v177 = v172;
  }

  swift_bridgeObjectRelease_n();
}

void sub_1DD623C74(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEB7C();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1DD3BEB7C();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
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
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1DD624734((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DD624114(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1DD624114(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DD624734((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

void sub_1DD624240(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v58 = a5;
  v59 = a4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v49 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v13)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v12;
  v62 = a1;
  v61 = v59;
  v17 = v14 / v12;
  if (v16 >= v14 / v12)
  {
    v29 = v59;
    sub_1DD3C1BE8(a2, v14 / v12, v59);
    v30 = v29 + v17 * v12;
    v31 = -v12;
    v32 = v30;
    v51 = a1;
    v52 = -v12;
LABEL_36:
    v33 = a2 + v31;
    v34 = a3;
    v49 = v32;
    v35 = v32;
    v53 = a2 + v31;
    while (1)
    {
      if (v30 <= v59)
      {
        v62 = a2;
        v60 = v35;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v35;
      a3 = v34 + v31;
      v36 = v30 + v31;
      v37 = v30 + v31;
      v38 = v56;
      v39 = v30;
      v40 = v34;
      sub_1DD3EB3D0(v37, v56, &qword_1ECCDBBE8, &qword_1DD644470);
      v41 = v33;
      v42 = v57;
      sub_1DD3EB3D0(v41, v57, &qword_1ECCDBBE8, &qword_1DD644470);
      v54 = sub_1DD617EDC();
      v43 = sub_1DD617EDC();
      sub_1DD390754(v42, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v38, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v43 < v54)
      {
        v45 = v39;
        if (v40 < a2 || a3 >= a2)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v50;
          a1 = v51;
          v31 = v52;
          v30 = v45;
        }

        else
        {
          v47 = v50;
          a1 = v51;
          v32 = v50;
          v13 = v40 == a2;
          v31 = v52;
          v48 = v53;
          a2 = v53;
          v30 = v45;
          if (!v13)
          {
            swift_arrayInitWithTakeBackToFront();
            v30 = v45;
            a2 = v48;
            v32 = v47;
          }
        }

        goto LABEL_36;
      }

      if (v40 < v39 || a3 >= v39)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = a3;
        v30 = v36;
        v35 = v36;
        a1 = v51;
        v31 = v52;
        v33 = v53;
      }

      else
      {
        v35 = v36;
        v13 = v39 == v40;
        v34 = a3;
        v30 = v36;
        a1 = v51;
        v31 = v52;
        v33 = v53;
        if (!v13)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = a3;
          v30 = v36;
          v35 = v36;
        }
      }
    }

    v62 = a2;
    v60 = v49;
  }

  else
  {
    v18 = v59;
    sub_1DD3C1BE8(a1, (a2 - a1) / v12, v59);
    v53 = a3;
    v54 = v18 + v16 * v12;
    v60 = v54;
    while (v59 < v54 && a2 < a3)
    {
      v20 = v12;
      v21 = v56;
      sub_1DD3EB3D0(a2, v56, &qword_1ECCDBBE8, &qword_1DD644470);
      v22 = a2;
      v23 = v57;
      sub_1DD3EB3D0(v59, v57, &qword_1ECCDBBE8, &qword_1DD644470);
      v24 = sub_1DD617EDC();
      v25 = sub_1DD617EDC();
      sub_1DD390754(v23, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v21, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v25 >= v24)
      {
        v12 = v20;
        v27 = v59 + v20;
        if (a1 < v59 || a1 >= v27)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v22;
        }

        else
        {
          a2 = v22;
          if (a1 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v61 = v27;
        v59 = v27;
      }

      else
      {
        v12 = v20;
        a2 = v22 + v20;
        if (a1 < v22 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 += v12;
      v62 = a1;
      a3 = v53;
    }
  }

LABEL_58:
  sub_1DD4EC2FC(&v62, &v61, &v60);
}

uint64_t sub_1DD624734(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1DD3AA4C0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1DD3AA4C0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

unint64_t *sub_1DD6248A8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = v4;
  v9 = a1;
  v82 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  v71 = a3;
  v65 = v5;
  v75 = a2;
  v14 = v79;
  if (v11 > 0xD)
  {
    goto LABEL_47;
  }

  sub_1DD626C58(a3, v79);

  while (2)
  {
    v63 = &v56;
    MEMORY[0x1EEE9AC00](v15);
    v64 = v12;
    v66 = (&v56 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v12, v66);
    v67 = 0;
    a2 = 0;
    v17 = v9 + 56;
    v18 = 1 << *(v9 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v76 = v19 & *(v9 + 56);
    a3 = ((v18 + 63) >> 6);
    v74 = v75 + 56;
    *&v16 = 136315138;
    v62 = v16;
    v69 = a4;
    v68 = v9;
    while (v76)
    {
      v20 = __clz(__rbit64(v76));
      v76 &= v76 - 1;
LABEL_14:
      v23 = v20 | (a2 << 6);
      v24 = *(v9 + 48);
      v70 = v23;
      v25 = v24 + 48 * v23;
      if (*(v25 + 40))
      {
        goto LABEL_41;
      }

      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);
      v13 = *(v25 + 32);
      v73 = v27;
      v72 = v26;
      if (!v13)
      {
        v30 = 0;
LABEL_31:
        sub_1DD57AE38(v26, v27, v28, v29, v30, 0);
        goto LABEL_32;
      }

      v30 = v13;
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      v30 = v13;
      if (!*(v75 + 16))
      {
        goto LABEL_31;
      }

      v31 = v75;
      v12 = v26;
      sub_1DD640E28();
      sub_1DD57AE38(v12, v27, v28, v29, v13, 0);
      sub_1DD63FD28();
      v32 = sub_1DD640E78();
      v33 = ~(-1 << *(v31 + 32));
      while (1)
      {
        v34 = v32 & v33;
        if (((*(v74 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
        {
          break;
        }

        v35 = (*(v75 + 48) + 16 * v34);
        if (*v35 != v29 || v13 != v35[1])
        {
          v37 = sub_1DD640CD8();
          v32 = v34 + 1;
          if ((v37 & 1) == 0)
          {
            continue;
          }
        }

        if (qword_1EE165FB0 != -1)
        {
          swift_once();
        }

        v38 = sub_1DD63F9F8();
        __swift_project_value_buffer(v38, qword_1EE16F068);
        v12 = v71;
        sub_1DD626C58(v71, v79);
        v39 = sub_1DD63F9D8();
        v40 = sub_1DD640368();
        sub_1DD626C90(v12);
        v61 = v40;
        v41 = os_log_type_enabled(v39, v40);
        a4 = v69;
        if (v41)
        {
          v59 = v39;
          v42 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v78 = v58;
          v60 = v42;
          *v42 = v62;
          v43 = *(v71 + 1);
          v80 = *v71;
          v81 = v43;
          v44 = *(&v80 + 1);
          v45 = v80;
          v46 = *(&v43 + 1);
          if (*(&v43 + 1))
          {
            v57 = v81;
            v77 = v80;
            sub_1DD626CC0(&v80, v79);

            MEMORY[0x1E12B2260](64, 0xE100000000000000);
            MEMORY[0x1E12B2260](v57, v46);
            sub_1DD626CF8(&v80);
            v44 = *(&v77 + 1);
            v45 = v77;
          }

          else
          {
          }

          v48 = sub_1DD39565C(v45, v44, &v78);

          v49 = v60;
          *(v60 + 1) = v48;
          v12 = v59;
          _os_log_impl(&dword_1DD38D000, v59, v61, "[UCG] Relationship match [%s] is getting treated as an exact nickname-based relationship match.", v49, 0xCu);
          v50 = v58;
          __swift_destroy_boxed_opaque_existential_1(v58);
          MEMORY[0x1E12B3DA0](v50, -1, -1);
          MEMORY[0x1E12B3DA0](v60, -1, -1);
        }

        else
        {
        }

        sub_1DD41B1C8(v72, v73, v28, v29, v13, 0);
        goto LABEL_40;
      }

LABEL_32:
      if ((v28 & 0x20) != 0)
      {
        sub_1DD41B1C8(v72, v73, v28, v29, v13, 0);
        a4 = v69;
LABEL_40:
        v9 = v68;
        goto LABEL_41;
      }

      a4 = v69;
      v47 = sub_1DD47F0E4(*v71, v71[1], v71[2], v71[3], v69);
      sub_1DD41B1C8(v72, v73, v28, v29, v13, 0);
      v9 = v68;
      if (v47)
      {
LABEL_41:
        *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
        if (__OFADD__(v67++, 1))
        {
          __break(1u);
          goto LABEL_49;
        }
      }
    }

    v21 = a2;
    while (1)
    {
      a2 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (a2 >= a3)
      {
        sub_1DD516230(v66, v64, v67, v9);
        v53 = v52;
        a3 = v71;
        goto LABEL_45;
      }

      v22 = *(v17 + 8 * a2);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v76 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_47:
    sub_1DD626C58(a3, v14);

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

LABEL_49:
  v55 = swift_slowAlloc();

  sub_1DD626C58(a3, v79);

  v53 = sub_1DD621A4C(v55, v12, v9, a2, a3, a4);

  MEMORY[0x1E12B3DA0](v55, -1, -1);
LABEL_45:

  sub_1DD626C90(a3);

  sub_1DD626C90(a3);

  return v53;
}

void *sub_1DD624FE4(uint64_t a1)
{
  v1 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  v4 = (8 * v3);
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = (v19 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v3, v4);
    v5 = 0;
    v6 = 0;
    v7 = 1 << *(v1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v1 + 56);
    while (v9)
    {
      v10 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v11 = v10 | (v6 << 6);
LABEL_12:
      if (*(*(v1 + 48) + 48 * v11 + 40) == 2)
      {
        *(v4 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1DD516230(v4, v3, v5, v1);
          return v15;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= ((v7 + 63) >> 6))
      {
        goto LABEL_16;
      }

      v13 = *(v1 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v9 = (v13 - 1) & v13;
        v11 = __clz(__rbit64(v13)) | (v6 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v18 = swift_slowAlloc();
  v16 = sub_1DD621B5C(v18, v3, v1, sub_1DD6256AC);

  MEMORY[0x1E12B3DA0](v18, -1, -1);
  return v16;
}

unint64_t *sub_1DD625210(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v6 = a5;
  v49 = result;
  v50 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v57 = a4 + 56;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v52 = v13 | (v7 << 6);
    v16 = *(a3 + 48) + 48 * v52;
    if (*(v16 + 40))
    {
      goto LABEL_38;
    }

    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    v20 = *(v16 + 32);
    v55 = *v16;
    v56 = v17;
    if (v20)
    {
      v21 = *(v16 + 32);
      if ((v19 & 0x10) != 0)
      {
        v21 = *(v16 + 32);
        if (*(a4 + 16))
        {
          v22 = v11;
          v23 = *v16;
          sub_1DD640E28();
          v24 = v23;
          v11 = v22;
          sub_1DD57AE38(v24, v17, v19, v18, v20, 0);
          sub_1DD63FD28();
          v25 = sub_1DD640E78();
          v26 = ~(-1 << *(a4 + 32));
          while (1)
          {
            v27 = v25 & v26;
            if (((*(v57 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
            {
              goto LABEL_30;
            }

            v28 = (*(a4 + 48) + 16 * v27);
            if (*v28 != v18 || v20 != v28[1])
            {
              v30 = sub_1DD640CD8();
              v25 = v27 + 1;
              if ((v30 & 1) == 0)
              {
                continue;
              }
            }

            if (qword_1EE165FB0 != -1)
            {
              swift_once();
            }

            v31 = sub_1DD63F9F8();
            __swift_project_value_buffer(v31, qword_1EE16F068);
            v6 = a5;
            sub_1DD626C58(a5, v60);
            oslog = sub_1DD63F9D8();
            v32 = sub_1DD640368();
            sub_1DD626C90(a5);
            v46 = v32;
            if (os_log_type_enabled(oslog, v32))
            {
              v33 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              buf = v33;
              v63 = v44;
              *v33 = 136315138;
              v34 = *(a5 + 1);
              v61 = *a5;
              v62 = v34;
              v35 = *(&v61 + 1);
              v36 = v61;
              if (*(&v34 + 1))
              {
                v41 = *(&v62 + 1);
                v42 = v62;
                v59 = v61;
                sub_1DD626CC0(&v61, v60);

                MEMORY[0x1E12B2260](64, 0xE100000000000000);
                MEMORY[0x1E12B2260](v42, v41);
                sub_1DD626CF8(&v61);
                v35 = *(&v59 + 1);
                v36 = v59;
              }

              else
              {
              }

              v43 = sub_1DD39565C(v36, v35, &v63);

              *(buf + 4) = v43;
              _os_log_impl(&dword_1DD38D000, oslog, v46, "[UCG] Relationship match [%s] is getting treated as an exact nickname-based relationship match.", buf, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v44);
              MEMORY[0x1E12B3DA0](v44, -1, -1);
              MEMORY[0x1E12B3DA0](buf, -1, -1);
            }

            else
            {
            }

            result = sub_1DD41B1C8(v55, v56, v19, v18, v20, 0);
            goto LABEL_38;
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

    sub_1DD57AE38(*v16, v17, v19, v18, v21, 0);
LABEL_30:
    if ((v19 & 0x20) != 0)
    {
      result = sub_1DD41B1C8(v55, v56, v19, v18, v20, 0);
      v6 = a5;
LABEL_38:
      *(v49 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      if (__OFADD__(v50++, 1))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v6 = a5;
      v37 = sub_1DD47F0E4(*a5, a5[1], a5[2], a5[3], a6);
      result = sub_1DD41B1C8(v55, v56, v19, v18, v20, 0);
      if (v37)
      {
        goto LABEL_38;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      sub_1DD516230(v49, a2, v50, a3);
      v40 = v39;

      sub_1DD626C90(v6);

      return v40;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_1DD6256AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 48 * v12 + 40) == 2)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1DD516230(a1, a2, v6, a3);
        return;
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 56 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DD6257C8(uint64_t a1, uint64_t *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  result = sub_1DD6220D4(a1, isUniquelyReferenced_nonNull_native, &v6);
  *a2 = v6;
  return result;
}

uint64_t sub_1DD625824(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1DD63FFF8();
    OUTLINED_FUNCTION_85_3(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1E12B22C0](15, a1 >> 16);
    OUTLINED_FUNCTION_85_3(v3);
    return v4 | 8;
  }
}

uint64_t sub_1DD625880(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v44[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v44[0] = a1;
    v3 = *(a1 + 16);
    v42 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v41 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v42 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_1DD640E28();

      sub_1DD63FD28();
      v9 = sub_1DD640E78();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v41;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_1DD640CD8() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v44[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v35 = swift_slowAlloc();
          v36 = sub_1DD625E34(v35, v19, (v2 + 56), v19, v2, v11, v44);

          MEMORY[0x1E12B3DA0](v35, -1, -1);

          return v36;
        }
      }

      v37[0] = v19;
      v37[1] = v37;
      MEMORY[0x1EEE9AC00](v17);
      v21 = v37 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v39 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v43;
      v41 = *(v43 + 16);
      v19 = v16;
      while (1)
      {
        v38 = v23;
        v40 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v41)
          {
            sub_1DD515BB8(v39, v37[0], v38, v2);
            v2 = v33;
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v42 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          sub_1DD640E28();

          sub_1DD63FD28();
          v25 = sub_1DD640E78();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v43;
              v16 = v40;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = sub_1DD640CD8();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v39[v27];
          v39[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v43;
          v16 = v40;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v38 - 1;
        if (__OFSUB__(v38, 1))
        {
          break;
        }

        v16 = v19;
        if (v38 == 1)
        {

          v2 = MEMORY[0x1E69E7CD0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1DD625C88(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      sub_1DD515BB8(a1, a2, v24, a3);
      return;
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_1DD640E28();

    sub_1DD63FD28();
    v14 = sub_1DD640E78();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_1DD640CD8();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = a1[v17];
    a1[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1DD625E34(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1DD625C88(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

unint64_t sub_1DD625EBC(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_1DD626310(0xFuLL, a1, a2);
  result = sub_1DD626310(v6, a1, a2);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1DD63FEB8();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_1DD640948();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1DD63FEC8();
        v7 = result;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_1DD640948();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_42;
  }

  return 0;
}

void *sub_1DD6260F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v8 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v12 = 0;
    v9 = 0;
    goto LABEL_27;
  }

  v9 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_29;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v19 = v7;
      v17 = sub_1DD6408C8();
      v7 = v19;
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v21[0] = a4;
        v21[1] = a5 & 0xFFFFFFFFFFFFFFLL;
        v15 = v21 + v12;
        v17 = *(v21 + v12);
        if (*(v21 + v12) < 0)
        {
          switch(__clz(v17 ^ 0xFF))
          {
            case 0x1Au:
LABEL_21:
              v17 = v15[1] & 0x3F | ((v17 & 0x1F) << 6);
              v18 = 2;
              break;
            case 0x1Bu:
LABEL_22:
              v17 = ((v17 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3F;
              v18 = 3;
              break;
            case 0x1Cu:
LABEL_23:
              v17 = ((v17 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3F;
              v18 = 4;
              break;
            default:
              goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v14 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v20 = v7;
          v14 = sub_1DD640948();
          v7 = v20;
        }

        v15 = (v14 + v12);
        v16 = *(v14 + v12);
        v17 = *(v14 + v12);
        if (v16 < 0)
        {
          switch(__clz(v17 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_21;
            case 0x1Bu:
              goto LABEL_22;
            case 0x1Cu:
              goto LABEL_23;
            default:
              break;
          }
        }
      }

LABEL_17:
      v18 = 1;
    }

LABEL_18:
    v12 += v18;
    *(a2 + 4 * v11++) = v17;
    if (v13 == v9)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  v9 = v11;
LABEL_27:
  *v7 = a4;
  v7[1] = a5;
  v7[2] = v12;
  v7[3] = v8;
  return v9;
}

unint64_t sub_1DD626310(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1DD6263B0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1DD626420(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1DD6263B0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1DD625824(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DD626420(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x1EEE6A340]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1DD640948();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

uint64_t sub_1DD62652C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, char *a6, uint64_t a7, void *a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, __int16 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v35 = a7;
  v36 = a8;
  v34 = a6;
  v33 = a4;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v28 = a10;
  v29 = a9;
  v17 = *(a16 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v28 - v22;
  (*(v17 + 32))(&v28 - v22, v24, a16, v21);
  type metadata accessor for UnifiedContactGenerator(0);
  v25 = swift_allocObject();
  (*(v17 + 16))(v19, v23, a16);
  v26 = sub_1DD626D28(v30, v31, v32, v33, v19, v34, v35, v36, v29, *(&v29 + 1), v28, *(&v28 + 1), a11, a12, a13, SHIBYTE(a13), a14, v25, a16, a17);
  (*(v17 + 8))(v23, a16);
  return v26;
}

_BYTE *storeEnumTagSinglePayload for ContactRecall(_BYTE *result, int a2, int a3)
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

void sub_1DD6267E0(uint64_t a1)
{
  type metadata accessor for ContactResolverConfig(319);
  if (v1 <= 0x3F)
  {
    sub_1DD626910(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DD626910(uint64_t a1)
{
  if (!qword_1ECCDFEB0)
  {
    type metadata accessor for AsrPhoneticSequenceFetcher(255);
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCDFEB0);
    }
  }
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

uint64_t sub_1DD626988(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD6269C8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1DD626A7C()
{
  result = qword_1ECCDFEC8;
  if (!qword_1ECCDFEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFEC8);
  }

  return result;
}

unint64_t sub_1DD626AD4()
{
  result = qword_1ECCDFED0;
  if (!qword_1ECCDFED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFED0);
  }

  return result;
}

uint64_t sub_1DD626BC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DD626D28(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v43[3] = a19;
  v43[4] = a20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(a19 - 8) + 32))(boxed_opaque_existential_1, a5, a19);
  v29 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator;
  *(a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator) = 0;
  *(a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping) = 0;
  sub_1DD3C2388(a1, a18 + 16);
  sub_1DD3EB3D0(a7, a18 + 56, &qword_1ECCDCF48, &unk_1DD664BF0);
  *(a18 + 104) = a8;
  sub_1DD6271B8(a3, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config);
  *(a18 + 96) = a2;
  *(a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusTrialFactors) = a4;
  v30 = *(a6 + 2);
  if (v30)
  {
    v31 = *a6;
    v32 = a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors;
    *v32 = *a6;
    *(v32 + 1) = *(a6 + 1);
    *(v32 + 8) = *(a6 + 1);
    *(v32 + 16) = v30;
    *(v32 + 24) = *(a6 + 24);
    *(v32 + 40) = *(a6 + 40);
    *(v32 + 56) = a6[56];
    v33 = v31 ^ 1;
  }

  else
  {
    v34 = a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors;
    *v34 = 0;
    *(v34 + 8) = 1701736302;
    *(v34 + 16) = 0xE400000000000000;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 40) = xmmword_1DD64CBD0;
    *(v34 + 56) = 0;
    v33 = 1;
  }

  sub_1DD3EB3D0(a9, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusSuggestionHandler, &qword_1ECCDCF40, &qword_1DD64CBF0);
  sub_1DD3C2388(v43, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer);
  sub_1DD3EB3D0(a10, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_triggerLogger, &qword_1ECCDC250, &qword_1DD645B10);
  sub_1DD3EB3D0(a11, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_relationshipLocalizer, &qword_1ECCDCF50, &qword_1DD664BD0);
  *(a18 + v29) = a12;
  if (a12 || (v33 & 1) != 0)
  {
    sub_1DD390754(a11, &qword_1ECCDCF50, &qword_1DD664BD0);
    sub_1DD390754(a10, &qword_1ECCDC250, &qword_1DD645B10);
    sub_1DD390754(a9, &qword_1ECCDCF40, &qword_1DD64CBF0);
    sub_1DD390754(a7, &qword_1ECCDCF48, &unk_1DD664BF0);
    sub_1DD627210(a3, type metadata accessor for ContactResolverConfig);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    type metadata accessor for EuclidVectorDb();
    swift_allocObject();
    v42 = a1;
    v35 = a8;
    v36 = a3;
    v37 = sub_1DD4B97D4();
    type metadata accessor for EuclidEmbeddingApi();
    swift_allocObject();
    v38 = sub_1DD4BA174();

    sub_1DD390754(a11, &qword_1ECCDCF50, &qword_1DD664BD0);
    sub_1DD390754(a10, &qword_1ECCDC250, &qword_1DD645B10);
    sub_1DD390754(a9, &qword_1ECCDCF40, &qword_1DD64CBF0);
    sub_1DD390754(a7, &qword_1ECCDCF48, &unk_1DD664BF0);
    sub_1DD627210(v36, type metadata accessor for ContactResolverConfig);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v43);
    type metadata accessor for E3Orchestrator();
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = v38;
    *(a18 + v29) = v39;
  }

  *(a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3VectorDbApi) = a13;
  *(a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3EmbedderApi) = a14;
  v40 = a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_ucgTrialFactors;
  if (a15 == 2)
  {
    *v40 = 0;
  }

  else
  {
    *v40 = a15 & 1;
    *(v40 + 1) = a16 & 1;
  }

  sub_1DD3EB4B8(a17, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_phoneSequenceFetcher, &qword_1ECCDCF38, &unk_1DD664750);
  return a18;
}

uint64_t sub_1DD6271B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v4(v3);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return a2;
}

uint64_t sub_1DD627210(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD627288(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v4(v3);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return a2;
}

uint64_t sub_1DD627334(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for TriggeringCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD6274B4(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_100_1(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_100_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DD62750C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_100_1(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_100_1(result, a2);
    }
  }

  return result;
}

unint64_t sub_1DD627560()
{
  result = qword_1ECCDFF48;
  if (!qword_1ECCDFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF48);
  }

  return result;
}

unint64_t sub_1DD6275B8()
{
  result = qword_1ECCDFF50;
  if (!qword_1ECCDFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF50);
  }

  return result;
}

unint64_t sub_1DD627610()
{
  result = qword_1ECCDFF58;
  if (!qword_1ECCDFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF58);
  }

  return result;
}

unint64_t sub_1DD627668()
{
  result = qword_1ECCDFF60;
  if (!qword_1ECCDFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF60);
  }

  return result;
}

unint64_t sub_1DD6276BC()
{
  result = qword_1ECCDFF68;
  if (!qword_1ECCDFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF68);
  }

  return result;
}

unint64_t sub_1DD627714()
{
  result = qword_1ECCDFF70;
  if (!qword_1ECCDFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF70);
  }

  return result;
}

unint64_t sub_1DD627768(uint64_t a1)
{
  result = sub_1DD627790();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD627790()
{
  result = qword_1ECCDFF78;
  if (!qword_1ECCDFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF78);
  }

  return result;
}

unint64_t sub_1DD6277E8()
{
  result = qword_1ECCDFF80;
  if (!qword_1ECCDFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF80);
  }

  return result;
}

unint64_t sub_1DD627840()
{
  result = qword_1ECCDFF88;
  if (!qword_1ECCDFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF88);
  }

  return result;
}

unint64_t sub_1DD6278A4()
{
  result = qword_1ECCDFF90;
  if (!qword_1ECCDFF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF90);
  }

  return result;
}

unint64_t sub_1DD6278FC()
{
  result = qword_1ECCDFF98;
  if (!qword_1ECCDFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF98);
  }

  return result;
}

unint64_t sub_1DD627950(uint64_t a1)
{
  result = sub_1DD627978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD627978()
{
  result = qword_1ECCDFFA0;
  if (!qword_1ECCDFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFFA0);
  }

  return result;
}

unint64_t sub_1DD6279D0()
{
  result = qword_1ECCDFFA8;
  if (!qword_1ECCDFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFFA8);
  }

  return result;
}

unint64_t sub_1DD627A28()
{
  result = qword_1ECCDFFB0;
  if (!qword_1ECCDFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFFB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_17@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 216) = a1;
}

uint64_t OUTLINED_FUNCTION_36_17()
{

  return sub_1DD3EB3D0(v3 - 216, v0 + 232, v2, v1);
}

uint64_t OUTLINED_FUNCTION_37_18()
{
  *(v1 + 88) = (v3 - 1) & v3;
  *(v1 + 96) = v0;
  result = *(*(v2 + 48) + ((v0 << 7) | (2 * __clz(__rbit64(v3)))));
  *(v1 + 152) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_16()
{
  v2 = *(v0 - 136);

  return sub_1DD627210(v2, type metadata accessor for AsrPhoneticSequenceFetcher);
}

uint64_t OUTLINED_FUNCTION_44_15()
{

  return sub_1DD390754(v2 - 216, v1, v0);
}

double OUTLINED_FUNCTION_86_3@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  return result;
}

unint64_t OUTLINED_FUNCTION_99_1(float a1)
{
  *v2 = a1;
  v6 = *(v1 + 80);

  return sub_1DD39565C(v6, v3, (v4 - 216));
}

uint64_t OUTLINED_FUNCTION_101_1()
{

  return sub_1DD63FD28();
}

uint64_t OUTLINED_FUNCTION_102_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DD3C9478(&STACK[0x218], va);
}

BOOL OUTLINED_FUNCTION_103_0()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_121_0(void *a1@<X8>)
{
  v4 = *(v1 + 160);
  a1[4] = *(v1 + 184);
  a1[5] = v4;
  a1[6] = v2;
  a1[7] = v3;
}

uint64_t OUTLINED_FUNCTION_130_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_1DD3EB3D0(va1, va, v4, v5);
}

uint64_t OUTLINED_FUNCTION_131(uint64_t a1, uint64_t (*a2)(void))
{

  return sub_1DD6223C4(a1, 1, a2);
}

uint64_t OUTLINED_FUNCTION_132()
{

  return sub_1DD63E7D8();
}

void *OUTLINED_FUNCTION_133(void *a1)
{

  return memcpy(a1, v1, 0x108uLL);
}

uint64_t sub_1DD628068@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23 = a1;
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = [objc_opt_self() defaultManager];
  v24[0] = 0;
  v16 = [v15 URLForDirectory:5 inDomain:8 appropriateForURL:0 create:0 error:v24];

  v17 = v24[0];
  if (v16)
  {
    sub_1DD63CE48();
    v18 = v17;

    sub_1DD63CE28();
    sub_1DD63CE28();
    v19 = *(v5 + 8);
    v19(v8, v3);
    sub_1DD63CE28();

    v19(v11, v3);
    return (v19)(v14, v3);
  }

  else
  {
    v21 = v24[0];

    sub_1DD63CD98();

    return swift_willThrow();
  }
}

uint64_t sub_1DD6282D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1DD63CDF8();
  sub_1DD63CE28();
  sub_1DD63CE28();

  v11 = *(v4 + 8);
  v11(v7, v2);
  return (v11)(v10, v2);
}

uint64_t sub_1DD628448()
{
  v13[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63CE38();
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_1DD63CE08();
  v13[0] = 0;
  v8 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:v13];

  if (v8)
  {
    v9 = *(v2 + 8);
    v10 = v13[0];
    return v9(v5, v0);
  }

  else
  {
    v12 = v13[0];
    sub_1DD63CD98();

    swift_willThrow();
    return (*(v2 + 8))(v5, v0);
  }
}

void sub_1DD6285EC()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  sub_1DD63CE58();
  v1 = sub_1DD63FDA8();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    v3 = sub_1DD63CE08();
    v18[0] = 0;
    v4 = [v0 removeItemAtURL:v3 error:v18];

    if (v4)
    {
      v5 = v18[0];
    }

    else
    {
      v6 = v18[0];
      v7 = sub_1DD63CD98();

      swift_willThrow();
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v8 = sub_1DD63F9F8();
      __swift_project_value_buffer(v8, qword_1EE16F0C8);
      v9 = v7;
      v10 = sub_1DD63F9D8();
      v11 = sub_1DD640388();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18[0] = v13;
        *v12 = 136315138;
        v14 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
        v15 = sub_1DD63FE38();
        v17 = sub_1DD39565C(v15, v16, v18);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_1DD38D000, v10, v11, "error when deleting file: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1E12B3DA0](v13, -1, -1);
        MEMORY[0x1E12B3DA0](v12, -1, -1);
      }

      swift_willThrow();
    }
  }
}

uint64_t sub_1DD62886C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v4 = sub_1DD63FE58();
  v6 = v5;
  v7 = a3 + 40;
  v8 = *(a3 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 16;

    v10 = sub_1DD640008();

    v7 = v9;
    if (v10)
    {

      return 1;
    }
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
  }

  v12 = sub_1DD63F9F8();
  __swift_project_value_buffer(v12, qword_1ECD0DDF0);

  v13 = sub_1DD63F9D8();
  v14 = sub_1DD640368();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_1DD39565C(v4, v6, &v20);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v17 = sub_1DD63FD58();
    v19 = sub_1DD39565C(v17, v18, &v20);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_1DD38D000, v13, v14, "PervasiveEntityResolution rejected use case %s, allowed=%s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  return 0;
}

BOOL sub_1DD628ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DD63FE58();
  v7 = v6;
  v8 = a4 + 40;
  v9 = *(a4 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 16;

    v11 = sub_1DD640008();

    v8 = v10;
    if (v11)
    {

      return v9 != 0;
    }
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
  }

  v12 = sub_1DD63F9F8();
  __swift_project_value_buffer(v12, qword_1ECD0DDF0);

  v13 = sub_1DD63F9D8();
  v14 = sub_1DD640368();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    v17 = sub_1DD39565C(v5, v7, &v19);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_1DD38D000, v13, v14, "PervasiveEntityResolution will log for use case %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  return v9 != 0;
}

uint64_t sub_1DD628C6C(uint64_t a1)
{
  if (!a1)
  {
    return 5000257;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  return sub_1DD63FD58();
}

uint64_t sub_1DD628CE8()
{
  v89 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_6_41();
  v2 = sub_1DD63FDA8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1DD6406F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  v88[0] = v86;
  v88[1] = v87;
  if (!*(&v87 + 1))
  {
    sub_1DD4E82AC(v88);
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_4_95(&v84, v4, v5, MEMORY[0x1E6969080], v6, v7, v8, v9, v80, v82, v84, v85) & 1) == 0)
  {
LABEL_13:
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v46 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v46, qword_1EE16F0C8);
    v47 = sub_1DD63F9D8();
    v48 = sub_1DD640368();
    if (os_log_type_enabled(v47, v48))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v49, v50, "Was not able to unarchive BMBookmark: no data");
      OUTLINED_FUNCTION_0_1();
    }

    return 0;
  }

  objc_opt_self();
  v10 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
  OUTLINED_FUNCTION_48_1();
  sub_1DD640268();

  OUTLINED_FUNCTION_48_1();
  v11 = sub_1DD640258();

  OUTLINED_FUNCTION_15();
  v12 = sub_1DD63CF08();
  *&v88[0] = 0;
  v13 = OUTLINED_FUNCTION_8_76();
  v15 = [v13 v14];

  if (!v15)
  {
    v52 = *&v88[0];
    v53 = sub_1DD63CD98();

    swift_willThrow();
    goto LABEL_21;
  }

  v16 = *&v88[0];
  sub_1DD6406F8();
  swift_unknownObjectRelease();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFFD0, &unk_1DD665588);
  if ((OUTLINED_FUNCTION_4_95(&v86, v18, v19, v17, v20, v21, v22, v23, v81, v83, v84, v85) & 1) == 0)
  {
LABEL_21:
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v54 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v54, qword_1EE16F0C8);
    v55 = OUTLINED_FUNCTION_15();
    sub_1DD3D01B4(v55, v56);
    v57 = sub_1DD63F9D8();
    sub_1DD640368();
    v58 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v58, v59);
    if (OUTLINED_FUNCTION_16_54())
    {
      v60 = OUTLINED_FUNCTION_54();
      v61 = OUTLINED_FUNCTION_62();
      *&v88[0] = v61;
      *v60 = 136315138;
      v62 = OUTLINED_FUNCTION_15();
      sub_1DD3D01B4(v62, v63);
      OUTLINED_FUNCTION_15();
      v64 = sub_1DD63CEB8();
      v66 = v65;
      v67 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v67, v68);
      v69 = sub_1DD39565C(v64, v66, v88);

      *(v60 + 4) = v69;
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v70, v71, v72, v73, v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
      v74 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v74, v75);
    }

    else
    {

      v76 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v76, v77);
    }

    return 0;
  }

  v24 = v86;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v25 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v25, qword_1EE16F0C8);
  v26 = OUTLINED_FUNCTION_15();
  sub_1DD3D01B4(v26, v27);
  v28 = sub_1DD63F9D8();
  v29 = sub_1DD640368();
  v30 = OUTLINED_FUNCTION_15();
  sub_1DD3AD790(v30, v31);
  if (os_log_type_enabled(v28, v29))
  {
    v32 = OUTLINED_FUNCTION_54();
    v33 = OUTLINED_FUNCTION_62();
    *&v88[0] = v33;
    *v32 = 136315138;
    v34 = OUTLINED_FUNCTION_15();
    sub_1DD3D01B4(v34, v35);
    OUTLINED_FUNCTION_15();
    v36 = sub_1DD63CEB8();
    v38 = v37;
    v39 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v39, v40);
    v41 = sub_1DD39565C(v36, v38, v88);

    *(v32 + 4) = v41;
    OUTLINED_FUNCTION_14_50(&dword_1DD38D000, v42, v43, "returning BMBookmark bookmark: %s");
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    v44 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v44, v45);
  }

  else
  {

    v78 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v78, v79);
  }

  return v24;
}

void sub_1DD6291C4(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    objc_opt_self();
    *v50 = 0;
    v1 = swift_unknownObjectRetain();
    v8 = OUTLINED_FUNCTION_13_51(v1, sel_archivedDataWithRootObject_requiringSecureCoding_error_, v2, v3, v4, v5, v6, v7, v48, v49);
    v9 = 0;
    if (v8)
    {
      swift_unknownObjectRelease();
      sub_1DD63CF28();

      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EE166510);
      }

      v10 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v10, qword_1EE16F0C8);
      v11 = OUTLINED_FUNCTION_25_3();
      sub_1DD3D01B4(v11, v12);
      v13 = sub_1DD63F9D8();
      v14 = sub_1DD640368();
      v15 = OUTLINED_FUNCTION_25_3();
      sub_1DD3AD790(v15, v16);
      if (os_log_type_enabled(v13, v14))
      {
        v17 = OUTLINED_FUNCTION_54();
        v18 = OUTLINED_FUNCTION_62();
        *v50 = v18;
        *v17 = 136315138;
        v19 = OUTLINED_FUNCTION_25_3();
        sub_1DD3D01B4(v19, v20);
        OUTLINED_FUNCTION_25_3();
        v21 = sub_1DD63CEB8();
        v23 = v22;
        v24 = OUTLINED_FUNCTION_25_3();
        sub_1DD3AD790(v24, v25);
        v26 = sub_1DD39565C(v21, v23, v50);

        *(v17 + 4) = v26;
        OUTLINED_FUNCTION_15_56(&dword_1DD38D000, v27, v28, "setting BMBookmark bookmark: %s");
        __swift_destroy_boxed_opaque_existential_1(v18);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_25_3();
      v29 = sub_1DD63CF08();
      OUTLINED_FUNCTION_6_41();
      v30 = sub_1DD63FDA8();
      v31 = OUTLINED_FUNCTION_8_76();
      [v31 v32];

      v33 = OUTLINED_FUNCTION_25_3();
      sub_1DD3AD790(v33, v34);
      goto LABEL_13;
    }

    v35 = v9;
    v36 = sub_1DD63CD98();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v37 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v37, qword_1EE16F0C8);
  swift_unknownObjectRetain();
  v38 = sub_1DD63F9D8();
  sub_1DD640368();
  swift_unknownObjectRelease();
  if (OUTLINED_FUNCTION_16_54())
  {
    v39 = OUTLINED_FUNCTION_54();
    v40 = OUTLINED_FUNCTION_62();
    *v50 = v40;
    *v39 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFFC0, &unk_1DD665578);
    v41 = sub_1DD63FE38();
    v43 = sub_1DD39565C(v41, v42, v50);

    *(v39 + 4) = v43;
    OUTLINED_FUNCTION_37_0();
    _os_log_impl(v44, v45, v46, v47, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();

LABEL_13:
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1DD629520()
{
  v89 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_6_41();
  v2 = sub_1DD63FDA8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1DD6406F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  v88[0] = v86;
  v88[1] = v87;
  if (!*(&v87 + 1))
  {
    sub_1DD4E82AC(v88);
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_4_95(&v84, v4, v5, MEMORY[0x1E6969080], v6, v7, v8, v9, v80, v82, v84, v85) & 1) == 0)
  {
LABEL_13:
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v46 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v46, qword_1EE16F0C8);
    v47 = sub_1DD63F9D8();
    v48 = sub_1DD640368();
    if (os_log_type_enabled(v47, v48))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v49, v50, "Was not able to unarchive appIntentTranscriptCodingKey BMBookmark: no data");
      OUTLINED_FUNCTION_0_1();
    }

    return 0;
  }

  objc_opt_self();
  v10 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
  OUTLINED_FUNCTION_48_1();
  sub_1DD640268();

  OUTLINED_FUNCTION_48_1();
  v11 = sub_1DD640258();

  OUTLINED_FUNCTION_15();
  v12 = sub_1DD63CF08();
  *&v88[0] = 0;
  v13 = OUTLINED_FUNCTION_8_76();
  v15 = [v13 v14];

  if (!v15)
  {
    v52 = *&v88[0];
    v53 = sub_1DD63CD98();

    swift_willThrow();
    goto LABEL_21;
  }

  v16 = *&v88[0];
  sub_1DD6406F8();
  swift_unknownObjectRelease();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFFD0, &unk_1DD665588);
  if ((OUTLINED_FUNCTION_4_95(&v86, v18, v19, v17, v20, v21, v22, v23, v81, v83, v84, v85) & 1) == 0)
  {
LABEL_21:
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v54 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v54, qword_1EE16F0C8);
    v55 = OUTLINED_FUNCTION_15();
    sub_1DD3D01B4(v55, v56);
    v57 = sub_1DD63F9D8();
    sub_1DD640368();
    v58 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v58, v59);
    if (OUTLINED_FUNCTION_16_54())
    {
      v60 = OUTLINED_FUNCTION_54();
      v61 = OUTLINED_FUNCTION_62();
      *&v88[0] = v61;
      *v60 = 136315138;
      v62 = OUTLINED_FUNCTION_15();
      sub_1DD3D01B4(v62, v63);
      OUTLINED_FUNCTION_15();
      v64 = sub_1DD63CEB8();
      v66 = v65;
      v67 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v67, v68);
      v69 = sub_1DD39565C(v64, v66, v88);

      *(v60 + 4) = v69;
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v70, v71, v72, v73, v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
      v74 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v74, v75);
    }

    else
    {

      v76 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v76, v77);
    }

    return 0;
  }

  v24 = v86;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v25 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v25, qword_1EE16F0C8);
  v26 = OUTLINED_FUNCTION_15();
  sub_1DD3D01B4(v26, v27);
  v28 = sub_1DD63F9D8();
  v29 = sub_1DD640368();
  v30 = OUTLINED_FUNCTION_15();
  sub_1DD3AD790(v30, v31);
  if (os_log_type_enabled(v28, v29))
  {
    v32 = OUTLINED_FUNCTION_54();
    v33 = OUTLINED_FUNCTION_62();
    *&v88[0] = v33;
    *v32 = 136315138;
    v34 = OUTLINED_FUNCTION_15();
    sub_1DD3D01B4(v34, v35);
    OUTLINED_FUNCTION_15();
    v36 = sub_1DD63CEB8();
    v38 = v37;
    v39 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v39, v40);
    v41 = sub_1DD39565C(v36, v38, v88);

    *(v32 + 4) = v41;
    OUTLINED_FUNCTION_14_50(&dword_1DD38D000, v42, v43, "returning appIntentTranscriptCodingKey BMBookmark bookmark: %s");
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    v44 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v44, v45);
  }

  else
  {

    v78 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v78, v79);
  }

  return v24;
}

void sub_1DD6299FC(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    objc_opt_self();
    *v50 = 0;
    v1 = swift_unknownObjectRetain();
    v8 = OUTLINED_FUNCTION_13_51(v1, sel_archivedDataWithRootObject_requiringSecureCoding_error_, v2, v3, v4, v5, v6, v7, v48, v49);
    v9 = 0;
    if (v8)
    {
      swift_unknownObjectRelease();
      sub_1DD63CF28();

      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EE166510);
      }

      v10 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v10, qword_1EE16F0C8);
      v11 = OUTLINED_FUNCTION_25_3();
      sub_1DD3D01B4(v11, v12);
      v13 = sub_1DD63F9D8();
      v14 = sub_1DD640368();
      v15 = OUTLINED_FUNCTION_25_3();
      sub_1DD3AD790(v15, v16);
      if (os_log_type_enabled(v13, v14))
      {
        v17 = OUTLINED_FUNCTION_54();
        v18 = OUTLINED_FUNCTION_62();
        *v50 = v18;
        *v17 = 136315138;
        v19 = OUTLINED_FUNCTION_25_3();
        sub_1DD3D01B4(v19, v20);
        OUTLINED_FUNCTION_25_3();
        v21 = sub_1DD63CEB8();
        v23 = v22;
        v24 = OUTLINED_FUNCTION_25_3();
        sub_1DD3AD790(v24, v25);
        v26 = sub_1DD39565C(v21, v23, v50);

        *(v17 + 4) = v26;
        OUTLINED_FUNCTION_15_56(&dword_1DD38D000, v27, v28, "setting BMBookmark bookmark: %s");
        __swift_destroy_boxed_opaque_existential_1(v18);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_25_3();
      v29 = sub_1DD63CF08();
      OUTLINED_FUNCTION_6_41();
      v30 = sub_1DD63FDA8();
      v31 = OUTLINED_FUNCTION_8_76();
      [v31 v32];

      v33 = OUTLINED_FUNCTION_25_3();
      sub_1DD3AD790(v33, v34);
      goto LABEL_13;
    }

    v35 = v9;
    v36 = sub_1DD63CD98();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v37 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v37, qword_1EE16F0C8);
  swift_unknownObjectRetain();
  v38 = sub_1DD63F9D8();
  sub_1DD640368();
  swift_unknownObjectRelease();
  if (OUTLINED_FUNCTION_16_54())
  {
    v39 = OUTLINED_FUNCTION_54();
    v40 = OUTLINED_FUNCTION_62();
    *v50 = v40;
    *v39 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFFC0, &unk_1DD665578);
    v41 = sub_1DD63FE38();
    v43 = sub_1DD39565C(v41, v42, v50);

    *(v39 + 4) = v43;
    OUTLINED_FUNCTION_37_0();
    _os_log_impl(v44, v45, v46, v47, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();

LABEL_13:
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
}

id OUTLINED_FUNCTION_13_51(int a1, const char *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return [v11 a2];
}

void OUTLINED_FUNCTION_14_50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1DD629DBC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 publisher];
  v9 = sub_1DD629520();
  OUTLINED_FUNCTION_14_51();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v24 = sub_1DD62A190;
  v25 = v10;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1DD62A19C;
  v23 = &block_descriptor_25;
  v11 = _Block_copy(&v20);
  v12 = a1;
  v13 = a2;
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_14_51();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = a3;
  v14[5] = a4;
  v24 = sub_1DD62A300;
  v25 = v14;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1DD47E600;
  v23 = &block_descriptor_6_0;
  v15 = _Block_copy(&v20);
  v16 = v12;
  v17 = v13;
  swift_unknownObjectRetain();

  v18 = [v8 sinkWithBookmark:v9 completion:v11 receiveInput:v15];
  _Block_release(v15);
  _Block_release(v11);

  return swift_unknownObjectRelease();
}

void sub_1DD629FA8(void *a1, uint64_t a2)
{
  if ([a1 state] == 1)
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v2 = sub_1DD63F9F8();
    __swift_project_value_buffer(v2, qword_1EE16F0C8);
    oslog = sub_1DD63F9D8();
    v3 = sub_1DD640368();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DD38D000, oslog, v3, "UserEngagementSignalPublisher completion failure", v4, 2u);
      MEMORY[0x1E12B3DA0](v4, -1, -1);
    }
  }

  else
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD63F9F8();
    __swift_project_value_buffer(v5, qword_1EE16F0C8);
    v6 = sub_1DD63F9D8();
    v7 = sub_1DD640368();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DD38D000, v6, v7, "UserEngagementSignalPublisher completion", v8, 2u);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
    }

    v9 = swift_unknownObjectRetain();
    sub_1DD6299FC(v9);
  }
}

void sub_1DD62A19C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

double block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1DD62A23C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E12B3350]();
  sub_1DD62A30C(a1, a2, a3);

  objc_autoreleasePoolPop(v8);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_51();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1DD62A30C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v100 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v92 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v92 - v10;
  v12 = sub_1DD63D078();
  v101 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DD63D0F8();
  v15 = *(v14 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 eventBody];
  if (!v19)
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v36 = sub_1DD63F9F8();
    __swift_project_value_buffer(v36, qword_1EE16F0C8);
    v37 = a1;
    v38 = sub_1DD63F9D8();
    v39 = sub_1DD640368();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v104 = v41;
      *v40 = 136315138;
      v42 = v37;
      v43 = [v42 description];
      v44 = sub_1DD63FDD8();
      v46 = v45;

      v47 = sub_1DD39565C(v44, v46, &v104);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_1DD38D000, v38, v39, "UserEngagementSignalPublisher: %s is incorrect event", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1E12B3DA0](v41, -1, -1);
      MEMORY[0x1E12B3DA0](v40, -1, -1);
    }

LABEL_18:

    return;
  }

  v20 = v19;
  v21 = [v19 executionUUID];
  if (!v21)
  {
LABEL_14:
    if (qword_1EE166510 != -1)
    {
LABEL_47:
      swift_once();
    }

    v48 = sub_1DD63F9F8();
    __swift_project_value_buffer(v48, qword_1EE16F0C8);
    v49 = v20;
    v38 = sub_1DD63F9D8();
    v50 = sub_1DD640368();

    if (os_log_type_enabled(v38, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v104 = v52;
      *v51 = 136315138;
      v53 = v49;
      v54 = [v53 description];
      v55 = sub_1DD63FDD8();
      v57 = v56;

      v58 = sub_1DD39565C(v55, v57, &v104);

      *(v51 + 4) = v58;
      _os_log_impl(&dword_1DD38D000, v38, v50, "UserEngagementSignalPublisher: %s is incorrect event", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1E12B3DA0](v52, -1, -1);
      MEMORY[0x1E12B3DA0](v51, -1, -1);

      return;
    }

    goto LABEL_18;
  }

  v22 = v21;
  sub_1DD63D0D8();

  v23 = [v20 executionDate];
  if (!v23)
  {
    (*(v15 + 8))(v18, v14);
    goto LABEL_14;
  }

  v24 = v23;
  v96 = v15;
  v97 = v12;
  sub_1DD63D048();

  v25 = [v20 source];
  switch(v25)
  {
    case 0u:
    case 2u:
    case 5u:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v26 = sub_1DD63F9F8();
      __swift_project_value_buffer(v26, qword_1EE16F0C8);
      v27 = sub_1DD63F9D8();
      v28 = sub_1DD640368();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v95 = v14;
        v30 = v29;
        v31 = swift_slowAlloc();
        v104 = v31;
        *v30 = 136315138;
        v103 = v25;
        type metadata accessor for BMAppIntentInvocationSource(0);
        v32 = sub_1DD63FE38();
        v34 = v18;
        v35 = sub_1DD39565C(v32, v33, &v104);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_1DD38D000, v27, v28, "UserEngagementSignalPublisher: Skip the source: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1E12B3DA0](v31, -1, -1);
        MEMORY[0x1E12B3DA0](v30, -1, -1);

        (*(v101 + 8))(v102, v97);
        (*(v96 + 8))(v34, v95);
      }

      else
      {

        (*(v101 + 8))(v102, v97);
        (*(v96 + 8))(v18, v14);
      }

      return;
    case 3u:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v59 = sub_1DD63F9F8();
      __swift_project_value_buffer(v59, qword_1EE16F0C8);
      v60 = sub_1DD63F9D8();
      v61 = sub_1DD640368();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v96;
      if (v62)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1DD38D000, v60, v61, "UserEngagementSignalPublisher: Skip the siri sources", v64, 2u);
        MEMORY[0x1E12B3DA0](v64, -1, -1);
      }

      goto LABEL_44;
    default:
      v65 = sub_1DD62AEA4(v20);
      v66 = sub_1DD3CC020();
      v98 = v65;
      v99 = v18;
      v95 = v14;
      v93 = v20;
      if (v66 < 1)
      {
        v74 = 0;
      }

      else
      {
        v94 = v3;
        v92 = MEMORY[0x1E69E7CC0];
        v104 = MEMORY[0x1E69E7CC0];
        v67 = sub_1DD3CC020();
        v68 = 0;
        v69 = v65 & 0xC000000000000001;
        v70 = v65 & 0xFFFFFFFFFFFFFF8;
        while (v67 != v68)
        {
          if (v69)
          {
            v71 = MEMORY[0x1E12B2C10](v68, v98);
          }

          else
          {
            if (v68 >= *(v70 + 16))
            {
              goto LABEL_46;
            }

            v71 = *(v98 + 8 * v68 + 32);
          }

          v72 = v71;
          v20 = (v68 + 1);
          if (__OFADD__(v68, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v73 = [v71 candidateId];

          ++v68;
          v18 = v99;
          if (v73)
          {
            MEMORY[0x1E12B23F0]();
            if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DD640138();
            }

            sub_1DD640168();
            v92 = v104;
            v68 = v20;
            v18 = v99;
          }
        }

        sub_1DD39638C(0, &qword_1EE160250, 0x1E698EC48);
        v74 = sub_1DD62B2A4(v92, 3);
        v4 = v94;
        v14 = v95;
        v20 = v93;
      }

      v75 = v97;
      (*(v101 + 16))(v11, v102, v97);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v75);
      v63 = v96;
      (*(v96 + 16))(v8, v18, v14);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
      objc_allocWithZone(MEMORY[0x1E698EBF8]);
      v92 = v74;
      v76 = sub_1DD62DBA0(v11, 0, v8, 0, 0, 3u, v74, v98);
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v77 = sub_1DD63F9F8();
      __swift_project_value_buffer(v77, qword_1EE16F0C8);
      v78 = v76;
      v79 = sub_1DD63F9D8();
      v80 = sub_1DD640368();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v94 = v4;
        v82 = v81;
        v83 = swift_slowAlloc();
        v104 = v83;
        *v82 = 136315138;
        v84 = v80;
        v85 = v78;
        v86 = [v85 description];
        v87 = sub_1DD63FDD8();
        v89 = v88;

        v18 = v99;
        v90 = sub_1DD39565C(v87, v89, &v104);
        v63 = v96;

        *(v82 + 4) = v90;
        _os_log_impl(&dword_1DD38D000, v79, v84, "UserEngagementSignalPublisher: Send biomeEvent sent: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v83);
        MEMORY[0x1E12B3DA0](v83, -1, -1);
        v14 = v95;
        v20 = v93;
        MEMORY[0x1E12B3DA0](v82, -1, -1);
      }

      v91 = [v100 source];
      [v91 sendEvent_];

LABEL_44:
      (*(v101 + 8))(v102, v97);
      (*(v63 + 8))(v18, v14);
      break;
  }
}

uint64_t sub_1DD62AEA4(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v3 = &selRef_setIsFamilyNameMatch_;
  v4 = [a1 resolvedAction];
  if (v4)
  {
    sub_1DD582C90(v4);
    if (v5)
    {
      v6 = sub_1DD3CA460(v1, &selRef_bundleID);
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        v10 = objc_allocWithZone(MEMORY[0x1E698EC40]);
        sub_1DD62DD6C(v8, v9);
        v11 = objc_allocWithZone(MEMORY[0x1E698EC18]);
        OUTLINED_FUNCTION_5_90();
        OUTLINED_FUNCTION_7_74();
        v20 = sub_1DD62DDD0(v12, v13, v14, v15, v16, v17, v18, v19, 0, 0);
        objc_allocWithZone(MEMORY[0x1E698EC08]);
        v21 = v20;
        OUTLINED_FUNCTION_5_90();
        v27 = sub_1DD62DE9C(v22, v23, v24, v25, v26);
        [objc_allocWithZone(MEMORY[0x1E698EC10]) initWithCandidateId:v27 userAlignment:3];

        MEMORY[0x1E12B23F0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_33:
          sub_1DD640138();
        }

        sub_1DD640168();
        v2 = v45;
      }

      else
      {

        v2 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  v28 = [v1 v3[159]];
  if (!v28)
  {
    return v2;
  }

  v29 = v28;
  v30 = [v28 parameters];

  sub_1DD39638C(0, &qword_1EE160188, 0x1E698EAE0);
  v31 = sub_1DD640118();

  v3 = sub_1DD3CC020();
  v44 = v1;
  v21 = 0;
  v1 = 0;
  while (2)
  {
    for (i = v21; ; i = (i + 1))
    {
      if (v3 == i)
      {

        return v2;
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1E12B2C10](i, v31);
      }

      else
      {
        if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v33 = *(v31 + 8 * i + 32);
      }

      v34 = v33;
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v35 = sub_1DD3CA460(v44, &selRef_bundleID);
      v37 = sub_1DD62B334(v35, v36);

      if (v37 >> 62)
      {
        break;
      }

      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_20;
      }

LABEL_17:
    }

    result = sub_1DD6407B8();
    v39 = result;
    if (!result)
    {
      goto LABEL_17;
    }

LABEL_20:
    v43 = v3;
    if (v39 >= 1)
    {
      for (j = 0; j != v39; ++j)
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x1E12B2C10](j, v37);
        }

        else
        {
          v41 = *(v37 + 8 * j + 32);
        }

        v42 = v41;
        [objc_allocWithZone(MEMORY[0x1E698EC10]) initWithCandidateId:v41 userAlignment:3];
        MEMORY[0x1E12B23F0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        sub_1DD640168();
      }

      v2 = v45;

      v3 = v43;
      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

id sub_1DD62B2A4(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1DD39638C(0, &qword_1EE160168, 0x1E698EC08);
  v4 = sub_1DD6400F8();

  v5 = [v3 initWithCandidateIds:v4 userAlignment:a2];

  return v5;
}

uint64_t sub_1DD62B334(uint64_t a1, void *a2)
{
  v5 = [v2 value];
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = [v5 valueType];
  if (!v7)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  sub_1DD62DFE8(v6);
  if (v9 >> 60 == 15)
  {

    return MEMORY[0x1E69E7CC0];
  }

  switch([v8 containerType])
  {
    case 1u:
      v17 = OUTLINED_FUNCTION_73();
      v12 = sub_1DD62BAB4(v17, v18, a1, a2);
      v19 = OUTLINED_FUNCTION_73();
      sub_1DD3AD77C(v19, v20);

      return v12;
    case 2u:
      v14 = OUTLINED_FUNCTION_73();
      v16 = sub_1DD62BD54(v14, v15);
      goto LABEL_15;
    case 3u:
      v24 = OUTLINED_FUNCTION_73();
      v16 = sub_1DD62B6E4(v24, v25, a1, a2);
      goto LABEL_15;
    case 4u:
      [v8 legacyIntent];
      v26 = OUTLINED_FUNCTION_73();
      v16 = sub_1DD62BFAC(v26, v27, v28);
      goto LABEL_15;
    case 7u:
      [v8 primitive];
      v21 = OUTLINED_FUNCTION_73();
      v16 = sub_1DD62B4F8(v21, v22, v23);
LABEL_15:
      v12 = v16;
      v29 = OUTLINED_FUNCTION_73();
      sub_1DD3AD77C(v29, v30);

      break;
    default:

      v10 = OUTLINED_FUNCTION_73();
      sub_1DD3AD77C(v10, v11);
      return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1DD62B4F8(uint64_t a1, unint64_t a2, int a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1;
      v6 = a1 >> 32;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_7:
      if (v5 == v6 || a3 != 11)
      {
        return v4;
      }

      goto LABEL_12;
    case 3uLL:
      return v4;
    default:
      if ((a2 & 0xFF000000000000) == 0 || a3 != 11)
      {
        return v4;
      }

LABEL_12:
      v4 = sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
      v8 = sub_1DD39638C(0, &qword_1ECCDB4E0, 0x1E695FC20);
      v9 = OUTLINED_FUNCTION_3_103(v8);
      if (!v3)
      {
        v10 = v9;
        if (v9)
        {
          sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
          OUTLINED_FUNCTION_9_65();
          v11 = sub_1DD640588();
          v12 = [objc_allocWithZone(MEMORY[0x1E698EC38]) initWithExists_];

          v13 = objc_allocWithZone(MEMORY[0x1E698EC18]);
          OUTLINED_FUNCTION_0_147();
          OUTLINED_FUNCTION_7_74();
          v22 = sub_1DD62DDD0(v14, v15, v16, v17, v18, v19, v20, v21, v12, 0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
          OUTLINED_FUNCTION_10_1();
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_1DD643B80;
          v23 = sub_1DD640328();
          v25 = v24;
          objc_allocWithZone(MEMORY[0x1E698EC08]);
          v26 = v22;
          *(v4 + 32) = sub_1DD62DE9C(v23, v25, 0, 0, v22);
        }

        else
        {
          return MEMORY[0x1E69E7CC0];
        }
      }

      return v4;
  }
}

uint64_t sub_1DD62B6E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
LABEL_6:
      if (v8 != v9)
      {
        goto LABEL_7;
      }

      return v5;
    case 3uLL:
      return v5;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        return v5;
      }

LABEL_7:
      v5 = sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
      sub_1DD39638C(0, &qword_1EE160158, 0x1E69AC7C8);
      v10 = sub_1DD6403D8();
      if (!v4)
      {
        v11 = v10;
        if (v10)
        {
          if (qword_1EE166510 != -1)
          {
            OUTLINED_FUNCTION_0_17();
            swift_once();
          }

          v12 = sub_1DD63F9F8();
          __swift_project_value_buffer(v12, qword_1EE16F0C8);
          v13 = v11;
          v14 = sub_1DD63F9D8();
          v15 = sub_1DD640368();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v53 = v49;
            *v16 = 136315138;
            v17 = v13;
            v51 = v13;
            v18 = [v17 description];
            v19 = sub_1DD63FDD8();
            v48 = v15;
            v21 = v20;

            v22 = sub_1DD39565C(v19, v21, &v53);

            *(v16 + 4) = v22;
            v13 = v51;
            _os_log_impl(&dword_1DD38D000, v14, v48, "UserEngagementSignalPublisher: the entity candidate is %s", v16, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v49);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          v23 = [v13 identifier];
          v24 = v13;
          v25 = [v23 instanceIdentifier];

          v26 = sub_1DD63FDD8();
          v50 = v27;
          v52 = v26;

          v28 = [v24 identifier];
          v29 = [v28 typeIdentifier];

          v30 = sub_1DD63FDD8();
          v32 = v31;

          v33 = objc_allocWithZone(MEMORY[0x1E698EC20]);

          v34 = sub_1DD62DF48(a3, a4, v30, v32);
          v35 = objc_allocWithZone(MEMORY[0x1E698EC18]);
          v36 = v34;
          OUTLINED_FUNCTION_0_147();
          OUTLINED_FUNCTION_7_74();
          v45 = sub_1DD62DDD0(v37, v38, v39, v40, v41, v42, v43, v44, 0, v34);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
          OUTLINED_FUNCTION_10_1();
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_1DD643B80;
          objc_allocWithZone(MEMORY[0x1E698EC08]);
          v46 = v45;
          *(v5 + 32) = sub_1DD62DE9C(v52, v50, v30, v32, v45);
        }

        else
        {
          return MEMORY[0x1E69E7CC0];
        }
      }

      return v5;
  }
}

uint64_t sub_1DD62BAB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFFE0, &unk_1DD665598);
  OUTLINED_FUNCTION_14_51();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD643F80;
  *(v6 + 32) = sub_1DD39638C(0, &qword_1ECCDFFE8, 0x1E695DEC8);
  v7 = sub_1DD39638C(0, &qword_1ECCDFFF0, 0x1E69ACA88);
  *(v6 + 40) = v7;
  sub_1DD6403E8();

  if (!v20[3])
  {
    sub_1DD4E82AC(v20);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFFF8, &qword_1DD6655A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v10 = sub_1DD63F9F8();
  __swift_project_value_buffer(v10, qword_1EE16F0C8);

  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640368();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x1E12B2430](v19, v7);
    v17 = sub_1DD39565C(v15, v16, v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1DD38D000, v11, v12, "UserEngagementSignalPublisher: the array candidate is %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v8 = sub_1DD62C058(v19, a3, a4, v18);

  return v8;
}

uint64_t sub_1DD62BD54(uint64_t a1, unint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = a1;
      v5 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      return v3;
    case 3uLL:
      return v3;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        return v3;
      }

LABEL_7:
      v3 = sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
      v6 = sub_1DD39638C(0, &qword_1ECCE0018, 0x1E69AC7E0);
      v7 = OUTLINED_FUNCTION_3_103(v6);
      if (!v2)
      {
        v8 = v7;
        if (v7)
        {

          v9 = [v8 typeIdentifier];
          v10 = sub_1DD63FDD8();
          v12 = v11;

          v13 = objc_allocWithZone(MEMORY[0x1E698EC20]);
          v14 = OUTLINED_FUNCTION_73();
          v16 = sub_1DD62DF48(v14, v15, v10, v12);
          v17 = objc_allocWithZone(MEMORY[0x1E698EC18]);
          v37 = v16;
          OUTLINED_FUNCTION_0_147();
          OUTLINED_FUNCTION_7_74();
          v26 = sub_1DD62DDD0(v18, v19, v20, v21, v22, v23, v24, v25, 0, v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
          OUTLINED_FUNCTION_10_1();
          v3 = swift_allocObject();
          *(v3 + 16) = xmmword_1DD643B80;
          v27 = [v8 instanceIdentifier];
          v28 = sub_1DD63FDD8();
          v36 = v29;

          v30 = [v8 typeIdentifier];
          v31 = sub_1DD63FDD8();
          v33 = v32;

          objc_allocWithZone(MEMORY[0x1E698EC08]);
          v34 = v26;
          *(v3 + 32) = sub_1DD62DE9C(v28, v36, v31, v33, v26);
        }

        else
        {
          return MEMORY[0x1E69E7CC0];
        }
      }

      return v3;
  }
}

uint64_t sub_1DD62BFAC(uint64_t a1, unint64_t a2, int a3)
{
  result = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1;
      v6 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_6:
      if (v5 != v6)
      {
        goto LABEL_7;
      }

      return result;
    case 3uLL:
      return result;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        return result;
      }

LABEL_7:
      switch(a3)
      {
        case 13:
          return sub_1DD62D4D8();
        case 4:
          return sub_1DD62D344();
        case 1:
          return sub_1DD62D1A8();
      }

      return result;
  }
}

uint64_t sub_1DD62C058(uint64_t result, uint64_t a2, id a3, __n128 a4)
{
  v7 = result;
  if (result >> 62)
  {
LABEL_90:
    result = sub_1DD6407B8();
    v8 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v8 < 1)
  {
    goto LABEL_96;
  }

  v9 = 0;
  v74 = v7 & 0xC000000000000001;
  v71 = v7 + 32;
  v75 = MEMORY[0x1E69E7CC0];
  a4.n128_u64[0] = 136315138;
  v61 = a4;
  v63 = a3;
  v64 = v4;
  v65 = a2;
  v72 = v7;
  v73 = v8;
  while (1)
  {
    v10 = v74 ? MEMORY[0x1E12B2C10](v9, v7) : *(v71 + 8 * v9);
    v11 = v10;
    v12 = [v10 valueType];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();

    v14 = v75 >> 62;
    if (!v13)
    {
      break;
    }

    v15 = [v11 value];
    sub_1DD6406F8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFFF8, &qword_1DD6655A8);
    if (swift_dynamicCast())
    {
      v7 = sub_1DD62C058(v76, a2, a3, v16);

      if (v7 >> 62)
      {
        if (sub_1DD6407B8() < 1)
        {
LABEL_75:

          v7 = v72;
          v8 = v73;
          goto LABEL_76;
        }

        v17 = sub_1DD6407B8();
      }

      else
      {
        v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_75;
        }
      }

      v69 = v11;
      if (v14)
      {
        v18 = sub_1DD6407B8();
      }

      else
      {
        v18 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v66 = v17;
      v19 = __OFADD__(v18, v17);
      v20 = v18 + v17;
      if (v19)
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
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

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v14)
        {
          v21 = v75 & 0xFFFFFFFFFFFFFF8;
          if (v20 > *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_38;
          }

LABEL_39:
          v35 = *(v21 + 16);
          a2 = (*(v21 + 24) >> 1) - v35;
          v36 = v21 + 8 * v35;
          if (v7 >> 62)
          {
            v39 = sub_1DD6407B8();
            if (!v39)
            {
              goto LABEL_53;
            }

            v40 = v39;
            v62 = sub_1DD6407B8();
            if (a2 < v62)
            {
              goto LABEL_87;
            }

            if (v40 < 1)
            {
              goto LABEL_88;
            }

            v41 = v36 + 32;
            sub_1DD62E04C();
            for (i = 0; i != v40; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0000, qword_1DD6655B0);
              v43 = sub_1DD5B5E98(v77, i, v7);
              v45 = *v44;
              v43(v77, 0);
              *(v41 + 8 * i) = v45;
            }

            a3 = v63;
            v4 = v64;
            v8 = v73;
            v37 = v62;
LABEL_49:

            a2 = v65;
            v7 = v72;
            v46 = v69;
            if (v37 < v66)
            {
              goto LABEL_82;
            }

            if (v37 > 0)
            {
              v47 = *(v21 + 16);
              v19 = __OFADD__(v47, v37);
              v48 = v47 + v37;
              if (v19)
              {
                goto LABEL_85;
              }

              *(v21 + 16) = v48;
            }
          }

          else
          {
            v37 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v37)
            {
              v8 = v73;
              if (a2 < v37)
              {
                goto LABEL_86;
              }

              v38 = sub_1DD39638C(0, &qword_1EE160168, 0x1E698EC08);
              OUTLINED_FUNCTION_15_57(v38);
              goto LABEL_49;
            }

LABEL_53:

            a2 = v65;
            v7 = v72;
            v8 = v73;
            v46 = v69;
            if (v66 > 0)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_76;
        }
      }

      else if (!v14)
      {
LABEL_38:
        v75 = sub_1DD640918();
        v21 = v75 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_39;
      }

      sub_1DD6407B8();
      goto LABEL_38;
    }

LABEL_76:
    if (++v9 == v8)
    {
      return v75;
    }
  }

  v22 = sub_1DD62C878(v11);
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v23 = sub_1DD63F9F8();
  __swift_project_value_buffer(v23, qword_1EE16F0C8);
  a3 = v11;
  v4 = sub_1DD63F9D8();
  v24 = sub_1DD640368();

  if (os_log_type_enabled(v4, v24))
  {
    v7 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v77[0] = v67;
    *v7 = v61.n128_u32[0];
    v25 = a3;
    v26 = [v25 description];
    v27 = sub_1DD63FDD8();
    v70 = a3;
    v29 = v28;

    v30 = v27;
    a2 = v65;
    v31 = sub_1DD39565C(v30, v29, v77);
    a3 = v70;

    *(v7 + 4) = v31;
    _os_log_impl(&dword_1DD38D000, v4, v24, "UserEngagementSignalPublisher: the LNValue candidate is %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  if (v22 >> 62)
  {
    v32 = sub_1DD6407B8();
    if (v14)
    {
      goto LABEL_80;
    }

LABEL_27:
    v33 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v32 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_27;
    }

LABEL_80:
    v33 = sub_1DD6407B8();
  }

  v34 = v33 + v32;
  if (__OFADD__(v33, v32))
  {
    goto LABEL_83;
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if (!v14)
    {
LABEL_56:
      result = sub_1DD640918();
      v75 = result;
      v7 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_57;
    }

LABEL_55:
    sub_1DD6407B8();
    goto LABEL_56;
  }

  if (v14)
  {
    goto LABEL_55;
  }

  v7 = v75 & 0xFFFFFFFFFFFFFF8;
  if (v34 > *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_56;
  }

LABEL_57:
  v49 = *(v7 + 16);
  v4 = ((*(v7 + 24) >> 1) - v49);
  v50 = (v7 + 8 * v49);
  if (v22 >> 62)
  {
    v53 = sub_1DD6407B8();
    if (v53)
    {
      v54 = v53;
      result = sub_1DD6407B8();
      v68 = result;
      if (v4 < result)
      {
        goto LABEL_94;
      }

      if (v54 < 1)
      {
        goto LABEL_95;
      }

      v4 = v50 + 4;
      sub_1DD62E04C();
      for (j = 0; j != v54; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0000, qword_1DD6655B0);
        v56 = sub_1DD5B5E98(v77, j, v22);
        v58 = *v57;
        v56(v77, 0);
        v4[j].isa = v58;
      }

      a2 = v65;
      v51 = v68;
LABEL_67:

      v8 = v73;
      if (v51 < v32)
      {
        goto LABEL_84;
      }

      if (v51 > 0)
      {
        v59 = *(v7 + 16);
        v19 = __OFADD__(v59, v51);
        v60 = v59 + v51;
        if (v19)
        {
          goto LABEL_89;
        }

        *(v7 + 16) = v60;
      }

LABEL_72:

      a3 = v63;
      v4 = v64;
      v7 = v72;
      goto LABEL_76;
    }

LABEL_71:

    v8 = v73;
    if (v32 > 0)
    {
      goto LABEL_84;
    }

    goto LABEL_72;
  }

  v51 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v51)
  {
    goto LABEL_71;
  }

  if (v4 >= v51)
  {
    v52 = sub_1DD39638C(0, &qword_1EE160168, 0x1E698EC08);
    OUTLINED_FUNCTION_15_57(v52);
    goto LABEL_67;
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1DD62C878(void *a1)
{
  v2 = [a1 valueType];
  v3 = objc_opt_self();
  v4 = OUTLINED_FUNCTION_16_55(v3);
  if (v4)
  {
    v5 = v4;
    v6 = v2;
    v7 = sub_1DD62C9B4(a1, v5);

    return v7;
  }

  v9 = objc_opt_self();
  if (OUTLINED_FUNCTION_16_55(v9))
  {
    v10 = OUTLINED_FUNCTION_13_52();
    v13 = sub_1DD62CCE8(v10, v11, v12);
  }

  else
  {
    v14 = objc_opt_self();
    if (!OUTLINED_FUNCTION_16_55(v14))
    {
      v19 = objc_opt_self();
      v20 = OUTLINED_FUNCTION_16_55(v19);
      if (v20)
      {
        v21 = v20;
        v22 = v2;
        v18 = sub_1DD62D134(a1, v21);
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }

      return v18;
    }

    v15 = OUTLINED_FUNCTION_13_52();
    v13 = sub_1DD62CF10(v15, v16, v17);
  }

  v18 = v13;

  return v18;
}

uint64_t sub_1DD62C9B4(void *a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = [v3 placemarkValueType];
  sub_1DD39638C(0, &qword_1ECCE0010, 0x1E69AC940);
  v5 = sub_1DD6405B8();

  if ((v5 & 1) == 0)
  {
    v24 = OUTLINED_FUNCTION_12_50([v3 stringValueType]);

    if ((v24 & 1) == 0)
    {
      v25 = OUTLINED_FUNCTION_12_50([v3 BOOLValueType]);

      if ((v25 & 1) == 0)
      {
        v26 = OUTLINED_FUNCTION_12_50([v3 intValueType]);

        if ((v26 & 1) == 0)
        {
          v27 = OUTLINED_FUNCTION_12_50([v3 doubleValueType]);

          if ((v27 & 1) == 0)
          {
            v28 = OUTLINED_FUNCTION_12_50([v3 dateValueType]);

            if ((v28 & 1) == 0)
            {
              v29 = OUTLINED_FUNCTION_12_50([v3 dateComponentsValueType]);

              if ((v29 & 1) == 0)
              {
                v30 = OUTLINED_FUNCTION_12_50([v3 URLValueType]);

                if ((v30 & 1) == 0)
                {
                  v31 = [v3 attributedStringValueType];
                  sub_1DD6405B8();
                }
              }
            }
          }
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  v6 = [a1 value];
  OUTLINED_FUNCTION_17_43();
  swift_unknownObjectRelease();
  sub_1DD39638C(0, &qword_1ECCDB4E0, 0x1E695FC20);
  OUTLINED_FUNCTION_4_96();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  OUTLINED_FUNCTION_9_65();
  v7 = sub_1DD640588();
  v8 = [objc_allocWithZone(MEMORY[0x1E698EC38]) initWithExists_];

  v9 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  OUTLINED_FUNCTION_0_147();
  OUTLINED_FUNCTION_7_74();
  v18 = sub_1DD62DDD0(v10, v11, v12, v13, v14, v15, v16, v17, v8, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD643B80;
  v20 = sub_1DD640328();
  v22 = v21;
  objc_allocWithZone(MEMORY[0x1E698EC08]);
  v23 = v18;
  *(v19 + 32) = sub_1DD62DE9C(v20, v22, 0, 0, v18);

  return v19;
}

uint64_t sub_1DD62CCE8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 value];
  sub_1DD6406F8();
  swift_unknownObjectRelease();
  sub_1DD39638C(0, &qword_1EE160158, 0x1E69AC7C8);
  OUTLINED_FUNCTION_4_96();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = [v33 identifier];
  v7 = [v6 instanceIdentifier];

  v8 = sub_1DD63FDD8();
  v31 = v9;
  v32 = v8;

  v10 = [v33 identifier];
  v11 = [v10 typeIdentifier];

  v12 = sub_1DD63FDD8();
  v14 = v13;

  objc_allocWithZone(MEMORY[0x1E698EC20]);

  v15 = sub_1DD62DF48(a2, a3, v12, v14);
  v16 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  v17 = v15;
  OUTLINED_FUNCTION_0_147();
  OUTLINED_FUNCTION_7_74();
  v26 = sub_1DD62DDD0(v18, v19, v20, v21, v22, v23, v24, v25, 0, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DD643B80;
  v28 = objc_allocWithZone(MEMORY[0x1E698EC08]);
  v29 = v26;
  *(v27 + 32) = sub_1DD62DE9C(v32, v31, v12, v14, v26);

  return v27;
}

uint64_t sub_1DD62CF10(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 value];
  sub_1DD6406F8();
  swift_unknownObjectRelease();
  sub_1DD39638C(0, &qword_1ECCE0018, 0x1E69AC7E0);
  OUTLINED_FUNCTION_4_96();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = [v34 typeIdentifier];
  v7 = sub_1DD63FDD8();
  v9 = v8;

  v10 = objc_allocWithZone(MEMORY[0x1E698EC20]);
  v11 = sub_1DD62DF48(a2, a3, v7, v9);
  v12 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  v33 = v11;
  OUTLINED_FUNCTION_0_147();
  OUTLINED_FUNCTION_7_74();
  v21 = sub_1DD62DDD0(v13, v14, v15, v16, v17, v18, v19, v20, 0, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DD643B80;
  v23 = [v34 instanceIdentifier];
  v24 = sub_1DD63FDD8();
  v26 = v25;

  v27 = [v34 typeIdentifier];
  v28 = sub_1DD63FDD8();
  v30 = v29;

  objc_allocWithZone(MEMORY[0x1E698EC08]);
  v31 = v21;
  *(v22 + 32) = sub_1DD62DE9C(v24, v26, v28, v30, v21);

  return v22;
}

uint64_t sub_1DD62D134(void *a1, id a2)
{
  v3 = [a2 typeIdentifier];
  if (v3 == 12)
  {
    return sub_1DD62D958(a1);
  }

  if (v3 == 3)
  {
    return sub_1DD62D7C8(a1);
  }

  if (v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return sub_1DD62D660(a1);
}

uint64_t sub_1DD62D1A8()
{
  OUTLINED_FUNCTION_20_9();
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  v2 = sub_1DD39638C(0, &qword_1EE160148, 0x1E696AEC0);
  v3 = OUTLINED_FUNCTION_3_103(v2);
  if (!v0)
  {
    v4 = v3;
    if (v3)
    {
      sub_1DD63FDC8();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1DD62D344()
{
  OUTLINED_FUNCTION_20_9();
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  v2 = sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
  v3 = OUTLINED_FUNCTION_3_103(v2);
  if (!v0)
  {
    v4 = v3;
    if (v3)
    {
      sub_1DD62DAE8();
      if (v5)
      {
        sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
        OUTLINED_FUNCTION_9_65();
        v6 = sub_1DD640588();
        v7 = [objc_allocWithZone(MEMORY[0x1E698EC30]) initWithExists_];

        v8 = objc_allocWithZone(MEMORY[0x1E698EC18]);
        v9 = OUTLINED_FUNCTION_0_147();
        v15 = sub_1DD62DDD0(v9, v10, v11, v12, v13, v14, 0, v7, 0, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
        OUTLINED_FUNCTION_10_1();
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_1DD643B80;
        objc_allocWithZone(MEMORY[0x1E698EC08]);
        v16 = v15;
        OUTLINED_FUNCTION_5_90();
        *(v1 + 32) = sub_1DD62DE9C(v17, v18, v19, v20, v21);

        v4 = v16;
      }

      else
      {
        v1 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v1;
}

uint64_t sub_1DD62D4D8()
{
  OUTLINED_FUNCTION_20_9();
  v1 = sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  v2 = sub_1DD39638C(0, &qword_1ECCE0020, 0x1E696E840);
  v3 = OUTLINED_FUNCTION_3_103(v2);
  if (!v0)
  {
    v4 = v3;
    if (v3)
    {
      sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
      OUTLINED_FUNCTION_9_65();
      v5 = sub_1DD640588();
      v6 = [objc_allocWithZone(MEMORY[0x1E698EC28]) initWithExists_];

      v7 = objc_allocWithZone(MEMORY[0x1E698EC18]);
      v8 = OUTLINED_FUNCTION_0_147();
      v14 = sub_1DD62DDD0(v8, v9, v10, v11, v12, v13, v6, 0, 0, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      OUTLINED_FUNCTION_10_1();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD643B80;
      sub_1DD3CA460(v4, &selRef_typeIdentifier);
      objc_allocWithZone(MEMORY[0x1E698EC08]);
      v15 = v14;
      OUTLINED_FUNCTION_5_90();
      *(v1 + 32) = sub_1DD62DE9C(v16, v17, v18, v19, v20);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v1;
}

uint64_t sub_1DD62D660(void *a1)
{
  v1 = [a1 value];
  OUTLINED_FUNCTION_17_43();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4_96();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  OUTLINED_FUNCTION_9_65();
  v2 = sub_1DD640588();
  [objc_allocWithZone(MEMORY[0x1E698EC00]) initWithExists_];

  v3 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  OUTLINED_FUNCTION_1_134();
  OUTLINED_FUNCTION_7_74();
  v12 = sub_1DD62DDD0(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD643B80;
  objc_allocWithZone(MEMORY[0x1E698EC08]);

  v14 = v12;
  *(v13 + 32) = sub_1DD62DE9C(v16, v17, v16, v17, v12);

  return v13;
}

uint64_t sub_1DD62D7C8(void *a1)
{
  v1 = [a1 value];
  OUTLINED_FUNCTION_17_43();
  swift_unknownObjectRelease();
  sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
  OUTLINED_FUNCTION_4_96();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD62DAE8();
  if (!v2)
  {

    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  OUTLINED_FUNCTION_9_65();
  v3 = sub_1DD640588();
  v4 = [objc_allocWithZone(MEMORY[0x1E698EC30]) initWithExists_];

  v5 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  v6 = OUTLINED_FUNCTION_0_147();
  v12 = sub_1DD62DDD0(v6, v7, v8, v9, v10, v11, 0, v4, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD643B80;
  objc_allocWithZone(MEMORY[0x1E698EC08]);
  v14 = v12;
  OUTLINED_FUNCTION_5_90();
  *(v13 + 32) = sub_1DD62DE9C(v15, v16, v17, v18, v19);

  return v13;
}

uint64_t sub_1DD62D958(void *a1)
{
  v1 = [a1 value];
  OUTLINED_FUNCTION_17_43();
  swift_unknownObjectRelease();
  sub_1DD39638C(0, &qword_1ECCE0020, 0x1E696E840);
  OUTLINED_FUNCTION_4_96();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  OUTLINED_FUNCTION_9_65();
  v2 = sub_1DD640588();
  v3 = [objc_allocWithZone(MEMORY[0x1E698EC28]) initWithExists_];

  v4 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  v5 = OUTLINED_FUNCTION_0_147();
  v11 = sub_1DD62DDD0(v5, v6, v7, v8, v9, v10, v3, 0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD643B80;
  sub_1DD3CA460(v20, &selRef_typeIdentifier);
  objc_allocWithZone(MEMORY[0x1E698EC08]);
  v13 = v11;
  OUTLINED_FUNCTION_5_90();
  *(v12 + 32) = sub_1DD62DE9C(v14, v15, v16, v17, v18);

  return v12;
}

uint64_t sub_1DD62DAE8()
{
  v1 = [v0 personHandle];
  if (!v1)
  {
    return sub_1DD640568();
  }

  v2 = v1;
  v4 = sub_1DD6403A8();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return sub_1DD640568();
  }

  return v4;
}

id sub_1DD62DBA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v15 = sub_1DD63D078();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v15) != 1)
  {
    v16 = sub_1DD63CFA8();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v17 = sub_1DD63D0F8();
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v17) != 1)
  {
    v18 = sub_1DD63D0B8();
    (*(*(v17 - 8) + 8))(a3, v17);
  }

  if (a5)
  {
    v19 = sub_1DD63FDA8();
  }

  else
  {
    v19 = 0;
  }

  sub_1DD39638C(0, &qword_1EE160248, 0x1E698EC10);
  v20 = sub_1DD6400F8();

  v21 = [v9 initWithAbsoluteTimestamp:v16 transcriptStatementId:a2 appIntentInvocationUUID:v18 sirikitIntentItemId:v19 trigger:a6 tupleInteraction:a7 candidateInteractions:v20];

  return v21;
}

id sub_1DD62DD6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD63FDA8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleId_];

  return v4;
}

id sub_1DD62DDD0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v11 = v10;
  v21 = [v11 initWithUnknown:a1 primitive:a2 device:a3 schema:a4 tool:a5 app:a6 file:a7 person:a8 placemark:a9 custom:a10];

  return v21;
}

id sub_1DD62DE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1DD63FDA8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1DD63FDA8();

LABEL_6:
  v10 = [v5 initWithIdentifier:v8 bundleId:v9 type:a5];

  return v10;
}

id sub_1DD62DF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_1DD63FDA8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_1DD63FDA8();

LABEL_6:
  v8 = [v4 initWithBundleId:v6 typeName:v7];

  return v8;
}

uint64_t sub_1DD62DFE8(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63CF28();

  return v3;
}

unint64_t sub_1DD62E04C()
{
  result = qword_1ECCE0008;
  if (!qword_1ECCE0008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCE0000, qword_1DD6655B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0008);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_103(uint64_t a1)
{

  return sub_1DD6403D8();
}

uint64_t OUTLINED_FUNCTION_12_50(uint64_t a1)
{

  return sub_1DD6405B8();
}

uint64_t UserSelection.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1DD4B69A0(v2, v3, v4);
}

uint64_t UserSelection.encodedPayload.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

__n128 UserSelection.init(type:encodedPayload:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

uint64_t sub_1DD62E17C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DD62E1BC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t UsoEntity_common_Agent.toContactQuery()@<X0>(void *a1@<X8>)
{
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD38D000, v3, v4, "converting USO Agent to ContactQuery", v5, 2u);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  *v31 = 0;
  *&v31[8] = 0xE000000000000000;
  v31[16] = 0;
  *&v31[24] = 0;
  *&v31[32] = 0xE000000000000000;
  *&v31[40] = 0;
  *&v31[48] = 0xE000000000000000;
  *&v31[56] = 0;
  *&v31[64] = 0xE000000000000000;
  *&v31[72] = 0;
  *&v31[80] = 0xE000000000000000;
  *&v31[88] = 0;
  *&v31[96] = 0xE000000000000000;
  *&v31[104] = 0;
  *&v31[112] = 0xE000000000000000;
  *&v31[120] = 0;
  *&v31[128] = 0xE000000000000000;
  *&v31[136] = 0;
  *&v31[144] = 0xE000000000000000;
  *&v31[152] = 0;
  *&v31[160] = 0xE000000000000000;
  memset(&v31[168], 0, 72);
  *&v31[240] = MEMORY[0x1E69E7CC0];
  *&v31[256] = 0;
  v31[248] = 2;
  v6 = sub_1DD63E5B8();
  if (v7)
  {
    *&v31[24] = v6;
    *&v31[32] = v7;
  }

  if (sub_1DD63E5A8())
  {
    if (sub_1DD63396C(v8))
    {
    }

    else
    {
      sub_1DD63E6B8();
      sub_1DD6339D4(__dst);

      v9 = LOBYTE(__dst[0]);
      *v25 = *&__dst[3];
      v26 = *&__dst[1];
      v10 = __dst[5];
      sub_1DD3FAA54(*&v31[192], *&v31[200], *&v31[208]);
      *&v31[200] = v26;
      *&v31[216] = *v25;
      *&v31[192] = v9;
      *&v31[232] = v10;
    }
  }

  v11 = sub_1DD63E318();
  if (v11)
  {
    v12 = v11;
    sub_1DD63E6B8();
    sub_1DD633F10(v12);
    v14 = v13;

    *&v31[240] = v14;
  }

  v15 = sub_1DD63F9D8();
  v16 = sub_1DD640368();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136315138;
    swift_beginAccess();
    OUTLINED_FUNCTION_0_148(v29);
    OUTLINED_FUNCTION_0_148(__src);
    v19 = sub_1DD3C9478(v29, __dst);
    v20 = ContactQuery.description.getter(v19);
    v22 = v21;
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DD3C9580(__dst);
    v23 = sub_1DD39565C(v20, v22, v28);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1DD38D000, v15, v16, "converted UsoEntity_common_Agent to ContactQuery %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E12B3DA0](v18, -1, -1);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
  }

  swift_beginAccess();
  OUTLINED_FUNCTION_0_148(v29);
  memcpy(a1, v31, 0x108uLL);
  OUTLINED_FUNCTION_0_148(__dst);
  sub_1DD3C9478(v29, __src);
  return sub_1DD3C9580(__dst);
}

uint64_t UsoEntity_common_Date.toDate()()
{
  v1 = sub_1DD63E508();
  OUTLINED_FUNCTION_0();
  v84 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v85 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0028, &qword_1DD665738);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v83 - v6;
  sub_1DD63DEA8();
  OUTLINED_FUNCTION_0();
  v93 = v9;
  v94 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v95 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v83 - v12;
  if (sub_1DD63E4D8())
  {
    sub_1DD631D0C(&v100);
  }

  else
  {
    v100 = 12;
  }

  v14 = sub_1DD63E4B8();
  if (v14)
  {
    v15 = sub_1DD6317A0(v14);
    v91 = v16;
  }

  else
  {
    v15 = 0;
    v91 = 1;
  }

  v17 = sub_1DD63E4A8();
  if (v17)
  {
    v18 = sub_1DD6317A0(v17);
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 1;
  }

  v21 = sub_1DD63E2F8();
  v92 = v7;
  v89 = v1;
  v90 = v15;
  v88 = v18;
  v87 = v20;
  if (v21)
  {
    sub_1DD6317C0(&v97);
    v22 = v97;
    if (v97 == 20)
    {

      goto LABEL_13;
    }

    if (sub_1DD63E528())
    {

      v27 = sub_1DD63E528();
      if (!v27 || (sub_1DD6317A0(v27), OUTLINED_FUNCTION_3_104(), (v18 & 1) != 0))
      {

        v28 = 11;
LABEL_80:
        LOBYTE(v97) = v28;
        LOBYTE(v96) = v22;
        goto LABEL_81;
      }
    }

    if (sub_1DD63E4D8())
    {

      if (!sub_1DD63E4D8() || (OUTLINED_FUNCTION_0_149(), sub_1DD631D0C(v32), , v97 == 12))
      {

        v28 = 9;
        goto LABEL_80;
      }
    }

    if (sub_1DD63E4B8())
    {

      v28 = 10;
      goto LABEL_80;
    }

    if (sub_1DD63E538())
    {

      if (!sub_1DD63E538())
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_0_149();
      sub_1DD630E00(v39);

      if (v97 == 7)
      {
        goto LABEL_69;
      }
    }

    if (!sub_1DD63E4A8())
    {

LABEL_79:
      v28 = 38;
      goto LABEL_80;
    }

    v40 = sub_1DD63E4A8();
    if (!v40)
    {
LABEL_69:
    }

    else
    {
      sub_1DD6317A0(v40);
      OUTLINED_FUNCTION_3_104();

      if ((v18 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    v28 = 8;
    goto LABEL_80;
  }

LABEL_13:
  if (sub_1DD63E528())
  {
    OUTLINED_FUNCTION_0_149();
    sub_1DD63108C(v23);

    v24 = v97;
    if (v97 != 20)
    {
      v29 = sub_1DD63E528();
      v30 = 11;
      if (!v29)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

  if (!sub_1DD63E4D8())
  {
    v7 = v92;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_0_149();
  sub_1DD63108C(v25);

  v26 = v97;
  v7 = v92;
  if (v97 == 20)
  {
LABEL_36:
    if (!sub_1DD63E4B8() || (OUTLINED_FUNCTION_0_149(), sub_1DD63108C(v33), , v26 = v97, v97 == 20))
    {
      if (!sub_1DD63E4A8() || (OUTLINED_FUNCTION_0_149(), sub_1DD63108C(v34), , v24 = v97, v97 == 20))
      {
        if (!sub_1DD63E538() || (OUTLINED_FUNCTION_0_149(), sub_1DD63108C(v35), , v24 = v97, v97 == 20))
        {
          if (sub_1DD63E4E8())
          {
            v31 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
          }

          else
          {
            v31 = 0;
          }

          goto LABEL_30;
        }

        if (sub_1DD63E538())
        {
          OUTLINED_FUNCTION_0_149();
          sub_1DD630E00(v37);

          if (v97 == 7)
          {
            v38 = 10;
          }

          else
          {
            v38 = 38;
          }
        }

        else
        {
          v38 = 10;
        }

        LOBYTE(v97) = v38;
LABEL_29:
        LOBYTE(v96) = v24;
        type metadata accessor for DateTime.DateTimeRange();
        swift_allocObject();
        v31 = OUTLINED_FUNCTION_1_135();
LABEL_30:
        v7 = v92;
        goto LABEL_82;
      }

      v29 = sub_1DD63E4A8();
      v30 = 9;
      if (!v29)
      {
LABEL_28:
        LOBYTE(v97) = v30;
        goto LABEL_29;
      }

LABEL_26:
      sub_1DD6317A0(v29);
      OUTLINED_FUNCTION_3_104();
      if ((v18 & 1) == 0)
      {
        v30 = 38;
      }

      goto LABEL_28;
    }

    if (v91)
    {
      if (v97 == 2)
      {
        v91 = 0;
        v26 = 20;
        v36 = 1;
      }

      else
      {
        if (v97 != 3)
        {
          v91 = 1;
          goto LABEL_76;
        }

        v91 = 0;
        v26 = 20;
        v36 = 52;
      }

      v90 = v36;
    }

    else
    {
      v91 = 0;
    }

LABEL_76:
    v41 = 10;
    goto LABEL_77;
  }

  if (v100 == 12)
  {
    if (v97 == 3)
    {
      v100 = 11;
    }

    else
    {
      if (v97 != 2)
      {
        v41 = 9;
        goto LABEL_77;
      }

      v100 = 0;
    }

    v26 = 20;
  }

  v41 = 38;
LABEL_77:
  LOBYTE(v97) = v41;
  LOBYTE(v96) = v26;
LABEL_81:
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v31 = OUTLINED_FUNCTION_1_135();
LABEL_82:
  v86 = v31;

  result = sub_1DD63E318();
  if (result)
  {
    v43 = result;
    v83[0] = v13;
    v83[1] = v0;
    v44 = 0;
    v45 = *(result + 16);
    v46 = (v93 + 8);
    while (1)
    {
      if (v45 == v44)
      {

        v57 = 0;
        v58 = 0;
        goto LABEL_109;
      }

      if (v44 >= *(v43 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v93 + 16))(v95, v43 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v44, v94);
      if (sub_1DD63DE18() == 0xD000000000000013 && 0x80000001DD675200 == v47)
      {
LABEL_106:

LABEL_107:

        v59 = v94;
        v60 = v93 + 32;
        v61 = v83[0];
        (*(v93 + 32))(v83[0], v95, v94);
        v57 = sub_1DD63DE88();
        v58 = v62;
        (*(v60 - 24))(v61, v59);
LABEL_109:
        v7 = v92;
        goto LABEL_110;
      }

      v49 = sub_1DD640CD8();

      if (v49)
      {
        goto LABEL_107;
      }

      if (sub_1DD63DE18() == 0xD000000000000015 && 0x80000001DD675220 == v50)
      {
      }

      else
      {
        v52 = sub_1DD640CD8();

        if ((v52 & 1) == 0)
        {
          goto LABEL_104;
        }
      }

      v53 = sub_1DD63DE98();
      if (v54)
      {
        if (v53 == 0x4E796164696C6F68 && v54 == 0xEB00000000656D61)
        {
          goto LABEL_106;
        }

        v56 = sub_1DD640CD8();

        if (v56)
        {
          goto LABEL_107;
        }
      }

LABEL_104:
      result = (*v46)(v95, v94);
      ++v44;
    }
  }

  v57 = 0;
  v58 = 0;
LABEL_110:
  v63 = sub_1DD63E518();
  if (v64 && (v65 = v64, v58))
  {
    v66 = v63;
    LOBYTE(v97) = 12;
    type metadata accessor for DateTime.Date.Holiday();
    swift_allocObject();
    v67 = DateTime.Date.Holiday.init(with:name:calendarSystem:)(v57, v58, v66, v65, &v97);
  }

  else
  {

    v67 = 0;
  }

  v68 = sub_1DD63E528();
  if (v68)
  {
    v69 = sub_1DD6317A0(v68);
    OUTLINED_FUNCTION_3_104();
    if ((v58 & 1) == 0)
    {
      v97 = v69;
      sub_1DD62F1CC(&v97, &v96);
      v70 = 0;
      v69 = v96;
      goto LABEL_119;
    }
  }

  else
  {
    v69 = 0;
  }

  v70 = 1;
LABEL_119:
  if (sub_1DD63E4D8() && (v71 = sub_1DD63E8E8(), v72 = , v71))
  {
    v73 = sub_1DD6317A0(v72);
    v75 = v74;
  }

  else
  {
    v73 = 0;
    v75 = 1;
  }

  v76 = v89;
  sub_1DD63E4F8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v76) == 1)
  {
    sub_1DD62F164(v7);
    v77 = 7;
  }

  else
  {
    v78 = v84;
    v79 = v85;
    (*(v84 + 16))(v85, v7, v76);
    v80 = (*(v78 + 88))(v79, v76);
    if (v80 == *MEMORY[0x1E69D1BA0])
    {
      v77 = 1;
    }

    else if (v80 == *MEMORY[0x1E69D1B90])
    {
      v77 = 3;
    }

    else if (v80 == *MEMORY[0x1E69D1B88])
    {
      v77 = 5;
    }

    else if (v80 == *MEMORY[0x1E69D1B98])
    {
      v77 = 0;
    }

    else if (v80 == *MEMORY[0x1E69D1B80])
    {
      v77 = 2;
    }

    else
    {
      (*(v78 + 8))(v85, v76);
      v77 = 7;
    }

    (*(v78 + 8))(v92, v76);
  }

  LOBYTE(v97) = v77;
  LOBYTE(v96) = v100;
  if (sub_1DD63E538())
  {
    sub_1DD630E00(&v99);

    v81 = v99;
  }

  else
  {
    v81 = 7;
  }

  v99 = v81;
  sub_1DD63E4C8();
  v82 = v86;

  v98 = 7;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  return DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v88, v87 & 1, v73, v75 & 1, v69, v70, &v97, v67, &v96, v90, v91 & 1, &v99, 0, 1, &v98, v82);
}

uint64_t sub_1DD62F164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0028, &qword_1DD665738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DD62F1CC(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1 <= 0x31)
  {
    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD63F9F8();
    __swift_project_value_buffer(v9, qword_1ECD0DDC0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (!os_log_type_enabled(v5, v6))
    {

      v3 += 2000;
      goto LABEL_14;
    }

    v7 = swift_slowAlloc();
    v8 = v7;
    *v7 = 134218240;
    *(v7 + 4) = v3;
    *(v7 + 12) = 2048;
    v3 += 2000;
    goto LABEL_11;
  }

  if (v3 - 100 >= 0xFFFFFFFFFFFFFFCELL)
  {
    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1ECD0DDC0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (!os_log_type_enabled(v5, v6))
    {

      v3 += 1900;
      goto LABEL_14;
    }

    v7 = swift_slowAlloc();
    v8 = v7;
    *v7 = 134218240;
    *(v7 + 4) = v3;
    *(v7 + 12) = 2048;
    v3 += 1900;
LABEL_11:
    *(v7 + 14) = v3;
    _os_log_impl(&dword_1DD38D000, v5, v6, "Mapping a 2 digit year from %ld to %ld", v8, 0x16u);
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

LABEL_14:
  *a2 = v3;
}

uint64_t OUTLINED_FUNCTION_3_104()
{
}

uint64_t UsoEntity_common_DateTime.toDateTime(recurrencePattern:)(uint64_t a1)
{
  v2 = sub_1DD62F484(a1);
  if (qword_1ECCDB0C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD63F9F8();
  __swift_project_value_buffer(v3, qword_1ECD0DDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  Logger.asyncBackground(_:)(sub_1DD62FB10, v4);

  return v2;
}

uint64_t sub_1DD62F484(uint64_t a1)
{
  v32 = a1;
  v1 = sub_1DD63E728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0030, &qword_1DD665740);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  if (!sub_1DD63E738() || (v13 = sub_1DD63E758(), , !v13))
  {
    if (!sub_1DD63E758())
    {
      v15 = 0;
      goto LABEL_11;
    }
  }

  sub_1DD63DD48();
  sub_1DD63EB08();
  OUTLINED_FUNCTION_0_150();

  if (v33)
  {

    v14 = _s12SiriOntology32UsoEntity_common_Time12HourClockC0A9InferenceE02toaI4TimeAD04DateK0C0K0CSgyF_0();
  }

  else
  {
    sub_1DD63DD48();

    sub_1DD63EB58();
    OUTLINED_FUNCTION_0_150();

    if (!v33)
    {
      v15 = _s12SiriOntology21UsoEntity_common_TimeC0A9InferenceE02toagF0AD04DateF0C0F0CSgyF_0();
      goto LABEL_9;
    }

    v14 = _s12SiriOntology32UsoEntity_common_Time24HourClockC0A9InferenceE02toaI4TimeAD04DateK0C0K0CSgyF_0();
  }

  v15 = v14;

LABEL_9:

LABEL_11:
  if (sub_1DD63E708() && (v16 = sub_1DD63E768(), v17 = UsoEntity_common_Duration.toInterval(offsetDirection:)(v16), , , v17))
  {
    type metadata accessor for DateTime.DateTimeRange();
    swift_allocObject();
    v18 = DateTime.DateTimeRange.init(withInterval:)(v17);
  }

  else if (!sub_1DD63E738() || (v19 = sub_1DD63E6F8(), , !v19) || (v18 = UsoEntity_common_DateTimeRange.toDateTimeRange()(), , !v18))
  {
    if (sub_1DD63E6F8())
    {
      v18 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
    }

    else
    {
      v18 = 0;
    }
  }

  if (!sub_1DD63E738() || (v20 = sub_1DD63E748(), , !v20) || (v21 = UsoEntity_common_Date.toDate()(), , !v21))
  {
    if (sub_1DD63E748())
    {
      v21 = UsoEntity_common_Date.toDate()();
    }

    else
    {
      v21 = 0;
    }
  }

  if (sub_1DD63E738())
  {
    sub_1DD63E718();

    if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
    {
      sub_1DD62FB18(v12);
    }

    else
    {
      (*(v2 + 16))(v6, v12, v1);
      v22 = (*(v2 + 88))(v6, v1);
      v23 = v6;
      v24 = *(v2 + 8);
      if (v22 == *MEMORY[0x1E69D1C00])
      {
        v24(v12, v1);
        v25 = 0;
        goto LABEL_37;
      }

      v24(v23, v1);
      v24(v12, v1);
    }
  }

  sub_1DD63E718();
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    sub_1DD62FB18(v9);
    v25 = 1;
  }

  else
  {
    v26 = v31;
    (*(v2 + 16))(v31, v9, v1);
    v27 = (*(v2 + 88))(v26, v1);
    v28 = *(v2 + 8);
    v25 = v27 != *MEMORY[0x1E69D1C00];
    if (v27 != *MEMORY[0x1E69D1C00])
    {
      v28(v26, v1);
    }

    v28(v9, v1);
  }

LABEL_37:
  LOBYTE(v33) = v25;
  v34 = 4;
  type metadata accessor for DateTime();
  swift_allocObject();
  v29 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(v21, v15, &v33, v32, &v34, v18);

  return v29;
}

uint64_t sub_1DD62FA24()
{
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000049, 0x80000001DD675240);
  sub_1DD63DD48();
  v0 = sub_1DD63EEC8();
  v2 = v1;

  MEMORY[0x1E12B2260](v0, v2);

  MEMORY[0x1E12B2260](0xD000000000000016, 0x80000001DD675290);
  v3 = sub_1DD48A1FC();
  MEMORY[0x1E12B2260](v3);

  return 0;
}

uint64_t sub_1DD62FB18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0030, &qword_1DD665740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UsoEntity_common_DateTimeRange.toDateTimeRange()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0038, &qword_1DD665748);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  if (!sub_1DD63EA58() || (sub_1DD630AF8(&v36), , v6 = v36, v36 == 20))
  {
    if (sub_1DD63E2F8())
    {
      sub_1DD6317C0(&v36);

      v6 = v36;
    }

    else
    {
      v6 = 20;
    }
  }

  if (sub_1DD63EA48() && (v7 = OUTLINED_FUNCTION_14(), v1 = UsoEntity_common_Duration.toInterval(offsetDirection:)(v7), , v1))
  {
    v8 = *(v1 + 16);
    v9 = *(v1 + 24);
    v10 = *(v1 + 25);

    LOBYTE(v36) = v10;
    v35 = v6;
    type metadata accessor for DateTime.Interval();
    swift_allocObject();
    v34 = DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v8, v9, &v36, &v35);
  }

  else
  {
    v34 = 0;
  }

  if (sub_1DD63EA18())
  {
    v11 = OUTLINED_FUNCTION_14();
    v12 = sub_1DD62F484(v11);
  }

  else
  {
    v12 = 0;
  }

  if (sub_1DD63EA38())
  {
    v13 = OUTLINED_FUNCTION_14();
    v14 = sub_1DD62F484(v13);
  }

  else
  {
    v14 = 0;
  }

  v33 = v6;
  if (sub_1DD63EA28())
  {
    v15 = OUTLINED_FUNCTION_14();
    v16 = sub_1DD62F484(v15);
  }

  else
  {
    v16 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0040, &qword_1DD665750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  if (v12)
  {
  }

  else
  {
    v18 = 0;
  }

  *(inited + 32) = v18;
  if (v14)
  {
  }

  else
  {
    v19 = 0;
  }

  *(inited + 40) = v19;
  if (v16)
  {
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  *(inited + 48) = v20;
  v36 = MEMORY[0x1E69E7CC0];
  while (v21 != 3)
  {
    if (v21 > 2)
    {
      __break(1u);
LABEL_49:
      swift_once();
      goto LABEL_47;
    }

    v1 = *(inited + 8 * v21++ + 32);
    if (v1)
    {

      MEMORY[0x1E12B23F0](v22);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD640138();
      }

      sub_1DD640168();
    }
  }

  swift_setDeallocating();
  sub_1DD46CCA8();
  if (v12)
  {
    v23 = sub_1DD6304EC();
    if (v14)
    {
LABEL_37:
      v24 = sub_1DD6304EC();
      goto LABEL_40;
    }
  }

  else
  {
    v23 = 0;
    if (v14)
    {
      goto LABEL_37;
    }
  }

  v24 = 0;
LABEL_40:
  v32 = v12;
  if (v16)
  {
    v25 = sub_1DD6304EC();
  }

  else
  {
    v25 = 0;
  }

  sub_1DD63E9F8();
  v26 = sub_1DD63EA08();
  if (__swift_getEnumTagSinglePayload(v5, 1, v26) == 1)
  {
    sub_1DD6306E0(v5);
    v27 = 38;
  }

  else
  {
    sub_1DD630750(&v36);
    (*(*(v26 - 8) + 8))(v5, v26);
    v27 = v36;
  }

  LOBYTE(v36) = v27;
  v35 = v33;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(v23, v24, v25, v34, 0, &v36, &v35);

  sub_1DD63008C();
  v1 = v28;

  if (qword_1ECCDB0C0 != -1)
  {
    goto LABEL_49;
  }

LABEL_47:
  v29 = sub_1DD63F9F8();
  __swift_project_value_buffer(v29, qword_1ECD0DDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = v2;
  *(v30 + 24) = v1;

  Logger.asyncBackground(_:)(sub_1DD630748, v30);

  return v1;
}

void sub_1DD63008C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643B80;
  *(inited + 32) = v0;
  v29 = inited;

  sub_1DD607EEC(v2);
  v3 = v29;
  v4 = sub_1DD3CC020();
  v5 = 0;
  v6 = v29 & 0xC000000000000001;
  while (1)
  {
    if (v4 == v5)
    {
      v8 = 0;
      goto LABEL_12;
    }

    if (v6)
    {
      v7 = MEMORY[0x1E12B2C10](v5, v29);
    }

    else
    {
      if (v5 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v7 = *(v29 + 8 * v5 + 32);
    }

    if (__OFADD__(v5, 1))
    {
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
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      return;
    }

    v8 = *(v7 + 16);
    if (v8)
    {
      break;
    }

    ++v5;
  }

LABEL_12:
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      v11 = 0;
      goto LABEL_23;
    }

    if (v6)
    {
      v10 = MEMORY[0x1E12B2C10](i, v29);
    }

    else
    {
      if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v10 = *(v29 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_80;
    }

    v11 = *(v10 + 24);
    if (v11)
    {
      break;
    }
  }

LABEL_23:
  for (j = 0; ; ++j)
  {
    if (v4 == j)
    {
      v14 = 0;
      goto LABEL_34;
    }

    if (v6)
    {
      v13 = MEMORY[0x1E12B2C10](j, v29);
    }

    else
    {
      if (j >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v13 = *(v29 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_82;
    }

    v14 = *(v13 + 32);
    if (v14)
    {
      break;
    }
  }

LABEL_34:
  v15 = 0;
  v27 = v8;
  while (1)
  {
    if (v4 == v15)
    {
      v17 = 0;
      goto LABEL_45;
    }

    if (v6)
    {
      v16 = MEMORY[0x1E12B2C10](v15, v29);
    }

    else
    {
      if (v15 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v16 = *(v29 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      goto LABEL_84;
    }

    v17 = *(v16 + 40);
    if (v17)
    {
      break;
    }

    ++v15;
  }

LABEL_45:
  for (k = 0; ; ++k)
  {
    if (v4 == k)
    {
      v20 = 0;
      goto LABEL_56;
    }

    if (v6)
    {
      v19 = MEMORY[0x1E12B2C10](k, v29);
    }

    else
    {
      if (k >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v19 = *(v29 + 8 * k + 32);
    }

    if (__OFADD__(k, 1))
    {
      goto LABEL_86;
    }

    v20 = *(v19 + 48);
    if (v20)
    {
      break;
    }
  }

LABEL_56:
  v21 = 0;
  while (v4 != v21)
  {
    if (v6)
    {
      v22 = MEMORY[0x1E12B2C10](v21, v29);
    }

    else
    {
      if (v21 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }
    }

    if (__OFADD__(v21, 1))
    {
      goto LABEL_88;
    }

    v23 = *(v22 + 56);

    ++v21;
    if (v23 != 38)
    {
      goto LABEL_66;
    }
  }

  LOBYTE(v23) = 38;
LABEL_66:
  v24 = 0;
  LOBYTE(v29) = v23;
  while (1)
  {
    if (v4 == v24)
    {

      v26 = 20;
      goto LABEL_77;
    }

    if (v6)
    {
      v25 = MEMORY[0x1E12B2C10](v24, v3);
    }

    else
    {
      if (v24 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_91;
      }

      v25 = *(v3 + 8 * v24 + 32);
    }

    if (__OFADD__(v24, 1))
    {
      goto LABEL_90;
    }

    if (*(v25 + 57) != 20)
    {
      break;
    }

    ++v24;
  }

  v26 = *(v25 + 57);

LABEL_77:
  v28 = v26;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(v27, v11, v14, v17, v20, &v29, &v28);
}

uint64_t sub_1DD6304EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v7 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 48);
  type metadata accessor for DateTime();
  swift_allocObject();
  v4 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(v1, v2, &v7, v3, &v6, 0);

  return v4;
}

uint64_t sub_1DD630584()
{
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000004ELL, 0x80000001DD6752B0);
  sub_1DD63DD48();
  v0 = sub_1DD63EEC8();
  v2 = v1;

  MEMORY[0x1E12B2260](v0, v2);

  MEMORY[0x1E12B2260](0xD000000000000016, 0x80000001DD675290);
  v3 = sub_1DD49D2E4();
  MEMORY[0x1E12B2260](v3);

  return 0;
}

uint64_t UsoEntity_common_DateTimeRange.toDateTime()()
{
  v3 = 1;
  v2 = 4;
  v0 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
  type metadata accessor for DateTime();
  swift_allocObject();
  return DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(0, 0, &v3, 0, &v2, v0);
}

uint64_t sub_1DD6306E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0038, &qword_1DD665748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD630750@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD63EA08();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69D1F18])
  {
    v10 = 10;
LABEL_5:
    *a1 = v10;
    return result;
  }

  if (result == *MEMORY[0x1E69D1F68])
  {
    v10 = 18;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F08])
  {
    *a1 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D1F60])
  {
    v10 = 17;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F58])
  {
    v10 = 1;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1FA0])
  {
    v10 = 21;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1FC0])
  {
    v10 = 6;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F50])
  {
    v10 = 16;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1FB0])
  {
    v10 = 14;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F80])
  {
    v10 = 12;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F70])
  {
    v10 = 20;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F48])
  {
    v10 = 7;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F98])
  {
    v10 = 13;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F90])
  {
    v10 = 19;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F20])
  {
    v10 = 11;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F28])
  {
    v10 = 9;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1FB8])
  {
    v10 = 3;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F88])
  {
    v10 = 15;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F10])
  {
    v10 = 8;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F40])
  {
    v10 = 4;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1FA8])
  {
    v10 = 2;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F38])
  {
    v10 = 38;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F78])
  {
    v10 = 5;
    goto LABEL_5;
  }

  v11 = *MEMORY[0x1E69D1F30];
  *a1 = 38;
  if (result != v11)
  {
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1DD630AF8@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0048, &qword_1DD665758);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1DD63ED98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1DD63ED88();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    result = sub_1DD630D98(v4);
LABEL_3:
    v13 = 20;
    goto LABEL_14;
  }

  v14 = *(v6 + 32);
  v14(v11, v4, v5);
  v14(v8, v11, v5);
  result = (*(v6 + 88))(v8, v5);
  if (result == *MEMORY[0x1E69D2268])
  {
    v13 = 6;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69D2270])
  {
    v13 = 7;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69D2248])
  {
    v13 = 1;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69D2258])
  {
    v13 = 3;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69D2240])
  {
    v13 = 4;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69D2260])
  {
    goto LABEL_3;
  }

  if (result == *MEMORY[0x1E69D2250])
  {
    *a1 = 0;
    return result;
  }

  if (result != *MEMORY[0x1E69D2278])
  {
    *a1 = 20;
    return (*(v6 + 8))(v8, v5);
  }

  v13 = 5;
LABEL_14:
  *a1 = v13;
  return result;
}

uint64_t sub_1DD630D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0048, &qword_1DD665758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD630E00@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0050, &qword_1DD665760);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1DD63E7F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1DD63E7E8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    result = sub_1DD6310E8(v4);
    v13 = 7;
  }

  else
  {
    v14 = *(v6 + 32);
    v14(v11, v4, v5);
    v14(v8, v11, v5);
    result = (*(v6 + 88))(v8, v5);
    if (result == *MEMORY[0x1E69D1CC0])
    {
      v13 = 3;
    }

    else if (result == *MEMORY[0x1E69D1C90])
    {
      v13 = 2;
    }

    else if (result == *MEMORY[0x1E69D1CB8])
    {
      v13 = 5;
    }

    else if (result == *MEMORY[0x1E69D1C98])
    {
      v13 = 4;
    }

    else
    {
      if (result == *MEMORY[0x1E69D1CA0])
      {
        *a1 = 0;
        return result;
      }

      if (result == *MEMORY[0x1E69D1CB0])
      {
        v13 = 1;
      }

      else
      {
        if (result != *MEMORY[0x1E69D1CA8])
        {
          *a1 = 7;
          return (*(v6 + 8))(v8, v5);
        }

        v13 = 6;
      }
    }
  }

  *a1 = v13;
  return result;
}

uint64_t sub_1DD63108C@<X0>(char *a2@<X8>)
{
  result = sub_1DD63E2F8();
  if (result)
  {
    sub_1DD6317C0(a2);
  }

  else
  {
    *a2 = 20;
  }

  return result;
}

uint64_t sub_1DD6310E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0050, &qword_1DD665760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UsoEntity_common_Duration.toInterval(offsetDirection:)(uint64_t a1)
{
  result = sub_1DD63E778();
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (sub_1DD3CC020() != 1)
  {
    v25 = a1;
    v9 = sub_1DD3CC020();
    v10 = 0;
    a1 = v3 & 0xFFFFFFFFFFFFFF8;
    v11 = 0.0;
    while (1)
    {
      if (v9 == v10)
      {

        v27[0] = 10;
        if (!v25 || (sub_1DD6322F4(&v28), v23 = v28, v28 == 20))
        {
          if (sub_1DD63E788())
          {
            sub_1DD63208C(&v28);

            v23 = v28;
          }

          else
          {
            v23 = 20;
          }
        }

        v24 = *&v11;
        v26 = v23;
        goto LABEL_44;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12B2C10](v10, v3);
      }

      else
      {
        if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }
      }

      if (__OFADD__(v10, 1))
      {
        break;
      }

      v12 = sub_1DD6314B4();
      if (v13)
      {

LABEL_35:

        return 0;
      }

      v14 = *&v12;
      sub_1DD63E1C8();
      if (*v27 && (v15 = sub_1DD63EBE8(), , v15))
      {
        sub_1DD636738(&v28);

        v16 = v28;
      }

      else
      {
        v16 = 13;
      }

      v27[0] = v16;
      if (sub_1DD63E788())
      {
        sub_1DD63208C(&v28);

        v17 = v28;
      }

      else
      {
        v17 = 20;
      }

      v28 = v17;
      sub_1DD631594(v27, &v28, v14);
      v19 = v18;
      v21 = v20;

      if (v21)
      {
        goto LABEL_35;
      }

      v11 = v11 + v19;
      ++v10;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_1DD408BFC();
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_48:
    MEMORY[0x1E12B2C10](0, v3);
    goto LABEL_5;
  }

LABEL_5:

  v4 = sub_1DD6314B4();
  v6 = v5;
  sub_1DD63E1C8();
  if (*v27 && (v7 = sub_1DD63EBE8(), , v7))
  {
    sub_1DD636738(&v28);

    v8 = v28;
  }

  else
  {
    v8 = 13;
  }

  v27[0] = v8;
  if (a1 && (sub_1DD6322F4(&v28), v22 = v28, v28 != 20))
  {
  }

  else if (sub_1DD63E788())
  {
    sub_1DD63208C(&v28);

    v22 = v28;
  }

  else
  {

    v22 = 20;
  }

  if (v6)
  {
    v24 = 0x3FF0000000000000;
  }

  else
  {
    v24 = v4;
  }

  v26 = v22;
LABEL_44:
  type metadata accessor for DateTime.Interval();
  swift_allocObject();
  return DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v24, 0, v27, &v26);
}

uint64_t sub_1DD6314B4()
{
  sub_1DD63E1C8();
  if (v5 && (v0 = sub_1DD63EBF8(), , v0) && (, sub_1DD63DD48(), , sub_1DD63E6D8(), sub_1DD63E7D8(), , v1 = sub_1DD63E6C8(), v3 = v2, , , (v3 & 1) == 0))
  {
    *&result = v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

double sub_1DD631594(_BYTE *a1, _BYTE *a2, double a3)
{
  if (*a1 == 13)
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v3 = sub_1DD63F9F8();
    __swift_project_value_buffer(v3, qword_1EE16F0C8);
    v4 = sub_1DD63F9D8();
    v5 = sub_1DD640368();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "timeUnit is not present, not normalizing and returning nil";
LABEL_6:
      _os_log_impl(&dword_1DD38D000, v4, v5, v7, v6, 2u);
      MEMORY[0x1E12B3DA0](v6, -1, -1);
    }

LABEL_7:
  }

  else
  {
    v9 = 1.0;
    if (*a2 == 9)
    {
      v9 = -1.0;
    }

    switch(*a1)
    {
      case 4:
        a3 = a3 * 60.0;
        goto LABEL_12;
      case 5:
        v10 = a3 / 1000.0;
        goto LABEL_14;
      case 6:
LABEL_12:
        v10 = a3 * 60.0;
LABEL_14:
        result = v10 * v9;
        break;
      case 0xA:
        result = v9 * a3;
        break;
      default:
        if (qword_1EE166510 != -1)
        {
          swift_once();
        }

        v11 = sub_1DD63F9F8();
        __swift_project_value_buffer(v11, qword_1EE16F0C8);
        v4 = sub_1DD63F9D8();
        v5 = sub_1DD640368();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_7;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "normalization only supported for grains time less than or equal to 'hour'";
        goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_1DD6317A0(uint64_t a1)
{
  result = sub_1DD63E6C8();
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1DD6317C0@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0058, &qword_1DD665768);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  sub_1DD63E928();
  v8 = sub_1DD63E938();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_1DD631A28(v7, v4);
    v10 = *(v8 - 8);
    v11 = (*(v10 + 88))(v4, v8);
    if (v11 == *MEMORY[0x1E69D1DE0])
    {
      v9 = 2;
      goto LABEL_17;
    }

    if (v11 == *MEMORY[0x1E69D1E60] || v11 == *MEMORY[0x1E69D1E68])
    {
      v9 = 3;
      goto LABEL_17;
    }

    if (v11 == *MEMORY[0x1E69D1EE0])
    {
      v9 = 19;
      goto LABEL_17;
    }

    if (v11 == *MEMORY[0x1E69D1EC0])
    {
      v9 = 16;
      goto LABEL_17;
    }

    if (v11 == *MEMORY[0x1E69D1E70])
    {
      v9 = 17;
      goto LABEL_17;
    }

    (*(v10 + 8))(v4, v8);
  }

  v9 = 20;
LABEL_17:
  *a1 = v9;
  return sub_1DD6319C0(v7);
}

uint64_t sub_1DD6319C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0058, &qword_1DD665768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD631A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0058, &qword_1DD665768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD631A98@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0060, &qword_1DD665770);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  sub_1DD63E798();
  v8 = sub_1DD63E7A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    sub_1DD631C9C(v7, v4);
    v10 = *(v8 - 8);
    v11 = (*(v10 + 88))(v4, v8);
    if (v11 == *MEMORY[0x1E69D1C20])
    {
      v9 = 1;
      goto LABEL_7;
    }

    if (v11 == *MEMORY[0x1E69D1C18])
    {
      v9 = 0;
      goto LABEL_7;
    }

    (*(v10 + 8))(v4, v8);
  }

  v9 = 2;
LABEL_7:
  *a1 = v9;
  return sub_1DD631C34(v7);
}

uint64_t sub_1DD631C34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0060, &qword_1DD665770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD631C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0060, &qword_1DD665770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD631D0C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0068, &qword_1DD665778);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1DD63E8F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1DD63E8D8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    result = sub_1DD632024(v4);
    v13 = 12;
  }

  else
  {
    v14 = *(v6 + 32);
    v14(v11, v4, v5);
    v14(v8, v11, v5);
    result = (*(v6 + 88))(v8, v5);
    if (result == *MEMORY[0x1E69D1D80])
    {
      v13 = 3;
    }

    else if (result == *MEMORY[0x1E69D1DA8])
    {
      v13 = 11;
    }

    else
    {
      if (result == *MEMORY[0x1E69D1D98])
      {
        *a1 = 0;
        return result;
      }

      if (result == *MEMORY[0x1E69D1DB8])
      {
        v13 = 10;
      }

      else if (result == *MEMORY[0x1E69D1D78])
      {
        v13 = 5;
      }

      else if (result == *MEMORY[0x1E69D1DB0])
      {
        v13 = 1;
      }

      else if (result == *MEMORY[0x1E69D1D60])
      {
        v13 = 8;
      }

      else if (result == *MEMORY[0x1E69D1D88])
      {
        v13 = 2;
      }

      else if (result == *MEMORY[0x1E69D1D70])
      {
        v13 = 6;
      }

      else if (result == *MEMORY[0x1E69D1D68])
      {
        v13 = 4;
      }

      else if (result == *MEMORY[0x1E69D1D90])
      {
        v13 = 7;
      }

      else
      {
        if (result != *MEMORY[0x1E69D1DA0])
        {
          *a1 = 12;
          return (*(v6 + 8))(v8, v5);
        }

        v13 = 9;
      }
    }
  }

  *a1 = v13;
  return result;
}

uint64_t sub_1DD632024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0068, &qword_1DD665778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD63208C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0070, &qword_1DD665780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1DD63E818();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1DD63E808();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    result = sub_1DD63228C(v4);
    v13 = 20;
  }

  else
  {
    v14 = *(v6 + 32);
    v14(v11, v4, v5);
    v14(v8, v11, v5);
    result = (*(v6 + 88))(v8, v5);
    if (result == *MEMORY[0x1E69D1CF0])
    {
      v13 = 9;
    }

    else
    {
      if (result != *MEMORY[0x1E69D1CF8])
      {
        *a1 = 20;
        return (*(v6 + 8))(v8, v5);
      }

      v13 = 8;
    }
  }

  *a1 = v13;
  return result;
}

uint64_t sub_1DD63228C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0070, &qword_1DD665780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD6322F4@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0078, &qword_1DD665788);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1DD63EAA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1DD63EA98();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    result = sub_1DD6324F4(v4);
    v13 = 20;
  }

  else
  {
    v14 = *(v6 + 32);
    v14(v11, v4, v5);
    v14(v8, v11, v5);
    result = (*(v6 + 88))(v8, v5);
    if (result == *MEMORY[0x1E69D2138])
    {
      v13 = 8;
    }

    else
    {
      if (result != *MEMORY[0x1E69D2140])
      {
        *a1 = 20;
        return (*(v6 + 8))(v8, v5);
      }

      v13 = 9;
    }
  }

  *a1 = v13;
  return result;
}

uint64_t sub_1DD6324F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0078, &qword_1DD665788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD63255C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2;
  v6 = sub_1DD63FE28();
  v7 = OUTLINED_FUNCTION_3(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_117();
  v21 = v4;
  v8 = sub_1DD63C7D8();
  OUTLINED_FUNCTION_20_36(v8);
  v9 = sub_1DD63C7C8();
  sub_1DD45A898();
  sub_1DD63C7B8();
  OUTLINED_FUNCTION_7_75();

  if (!v9)
  {
    sub_1DD63FE18();
    OUTLINED_FUNCTION_15();
    sub_1DD63FDF8();
    if (!v10)
    {
      v14 = OUTLINED_FUNCTION_21_37();
      OUTLINED_FUNCTION_13_53(v14);
      OUTLINED_FUNCTION_3_105();
      v15 = OUTLINED_FUNCTION_1_136(MEMORY[0x1E69E7CC0], a1, v21);
      OUTLINED_FUNCTION_9_66(v15);
      OUTLINED_FUNCTION_0_151();
      v18 = sub_1DD6350D0(v16, v17, &protocol conformance descriptor for InferenceError);
      v19 = OUTLINED_FUNCTION_8_77(v18);
      OUTLINED_FUNCTION_12_51(v19, v20);
    }

    v11 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v11, v12);
  }

  return OUTLINED_FUNCTION_5_91();
}

uint64_t sub_1DD63270C()
{
  v1 = sub_1DD63FE28();
  v2 = OUTLINED_FUNCTION_3(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_117();
  v18 = v0;
  v3 = sub_1DD63C7D8();
  OUTLINED_FUNCTION_20_36(v3);
  sub_1DD63C7C8();
  v4 = sub_1DD63E6B8();
  v5 = sub_1DD6350D0(&qword_1EE163788, MEMORY[0x1E69D1BF8], MEMORY[0x1E69D16D8]);
  OUTLINED_FUNCTION_18_42(v5);
  OUTLINED_FUNCTION_7_75();

  if (!v4)
  {
    sub_1DD63FE18();
    OUTLINED_FUNCTION_15();
    sub_1DD63FDF8();
    if (!v6)
    {
      v10 = OUTLINED_FUNCTION_21_37();
      OUTLINED_FUNCTION_13_53(v10);
      OUTLINED_FUNCTION_3_105();
      v11 = OUTLINED_FUNCTION_1_136(MEMORY[0x1E69E7CC0], v17, v18);
      OUTLINED_FUNCTION_9_66(v11);
      OUTLINED_FUNCTION_0_151();
      v14 = sub_1DD6350D0(v12, v13, &protocol conformance descriptor for InferenceError);
      v15 = OUTLINED_FUNCTION_8_77(v14);
      OUTLINED_FUNCTION_12_51(v15, v16);
    }

    v7 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v7, v8);
  }

  return OUTLINED_FUNCTION_5_91();
}

uint64_t sub_1DD6328C8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = sub_1DD63FE28();
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_117();
  v11 = sub_1DD63C7D8();
  OUTLINED_FUNCTION_20_36(v11);
  v12 = sub_1DD63C7C8();
  a1(0);
  sub_1DD6350D0(a2, a3, a4);
  sub_1DD63C7B8();
  OUTLINED_FUNCTION_7_75();

  if (!v12)
  {
    sub_1DD63FE18();
    OUTLINED_FUNCTION_15();
    v13 = sub_1DD63FDF8();
    if (v14)
    {
      v4 = v13;
    }

    else
    {
      v18 = OUTLINED_FUNCTION_21_37();
      OUTLINED_FUNCTION_13_53(v18);
      OUTLINED_FUNCTION_3_105();
      v19 = OUTLINED_FUNCTION_1_136(MEMORY[0x1E69E7CC0], v25, v26);
      OUTLINED_FUNCTION_9_66(v19);
      OUTLINED_FUNCTION_0_151();
      v22 = sub_1DD6350D0(v20, v21, &protocol conformance descriptor for InferenceError);
      v23 = OUTLINED_FUNCTION_8_77(v22);
      OUTLINED_FUNCTION_12_51(v23, v24);
    }

    v15 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v15, v16);
  }

  return v4;
}

uint64_t sub_1DD632A44(char a1)
{
  v2 = sub_1DD63FE28();
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_117();
  v19 = a1;
  v4 = sub_1DD63C7D8();
  OUTLINED_FUNCTION_20_36(v4);
  sub_1DD63C7C8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00A0, &qword_1DD6657B0);
  v6 = sub_1DD63501C();
  OUTLINED_FUNCTION_18_42(v6);
  OUTLINED_FUNCTION_7_75();

  if (!v5)
  {
    sub_1DD63FE18();
    OUTLINED_FUNCTION_15();
    sub_1DD63FDF8();
    if (!v7)
    {
      v11 = OUTLINED_FUNCTION_21_37();
      OUTLINED_FUNCTION_13_53(v11);
      OUTLINED_FUNCTION_3_105();
      v12 = OUTLINED_FUNCTION_1_136(MEMORY[0x1E69E7CC0], v18, v19);
      OUTLINED_FUNCTION_9_66(v12);
      OUTLINED_FUNCTION_0_151();
      v15 = sub_1DD6350D0(v13, v14, &protocol conformance descriptor for InferenceError);
      v16 = OUTLINED_FUNCTION_8_77(v15);
      OUTLINED_FUNCTION_12_51(v16, v17);
    }

    v8 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v8, v9);
  }

  return OUTLINED_FUNCTION_5_91();
}

uint64_t sub_1DD632BE0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1;
  v4 = sub_1DD63FE28();
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_117();
  v20 = v3;
  v6 = sub_1DD63C7D8();
  OUTLINED_FUNCTION_20_36(v6);
  v7 = sub_1DD63C7C8();
  sub_1DD635118();
  sub_1DD63C7B8();
  OUTLINED_FUNCTION_7_75();

  if (!v7)
  {
    sub_1DD63FE18();
    OUTLINED_FUNCTION_15();
    sub_1DD63FDF8();
    if (!v8)
    {
      v12 = OUTLINED_FUNCTION_21_37();
      OUTLINED_FUNCTION_13_53(v12);
      OUTLINED_FUNCTION_3_105();
      v13 = OUTLINED_FUNCTION_1_136(MEMORY[0x1E69E7CC0], v19, v20);
      OUTLINED_FUNCTION_9_66(v13);
      OUTLINED_FUNCTION_0_151();
      v16 = sub_1DD6350D0(v14, v15, &protocol conformance descriptor for InferenceError);
      v17 = OUTLINED_FUNCTION_8_77(v16);
      OUTLINED_FUNCTION_12_51(v17, v18);
    }

    v9 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v9, v10);
  }

  return OUTLINED_FUNCTION_5_91();
}

_BYTE *sub_1DD632D88()
{
  v2 = sub_1DD63FE28();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(v14, v0, sizeof(v14));
  sub_1DD63C7D8();
  swift_allocObject();
  sub_1DD63C7C8();
  sub_1DD4236C0();
  v5 = sub_1DD63C7B8();
  v7 = v6;

  if (!v1)
  {
    sub_1DD63FE18();
    v8 = sub_1DD63FDF8();
    if (v9)
    {
      v4 = v8;
    }

    else
    {
      v4 = type metadata accessor for InferenceError();
      swift_allocObject();
      v11 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000077, 0x80000001DD675300, 0x697274536E6F736ALL, 0xEC0000002928676ELL, 14, MEMORY[0x1E69E7CC0], 2);
      *(v11 + 24) = 0;
      *(v11 + 32) = 0xE000000000000000;

      sub_1DD6350D0(&qword_1EE1663F0, type metadata accessor for InferenceError, &protocol conformance descriptor for InferenceError);
      swift_allocError();
      *v12 = v11;
      swift_willThrow();
    }

    sub_1DD3AD790(v5, v7);
  }

  return v4;
}

uint64_t UsoEntity_common_Person.toContactQuery()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v3 = sub_1DD63E658();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0080, &qword_1DD665790);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0088, &qword_1DD665798);
  v11 = OUTLINED_FUNCTION_3(v10);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v88 - v17;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1DD63F9F8();
  v20 = __swift_project_value_buffer(v19, qword_1EE16F068);

  v96 = v20;
  v21 = sub_1DD63F9D8();
  v22 = sub_1DD640368();

  v23 = os_log_type_enabled(v21, v22);
  v97 = v15;
  v94 = v5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v89 = v18;
    v26 = v25;
    v102[0] = v25;
    v27.n128_u64[0] = 136315138;
    *v24 = 136315138;
    v28 = sub_1DD634088(v27);
    v30 = sub_1DD39565C(v28, v29, v102);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1DD38D000, v21, v22, "[USO Extension] Converting UsoEntity_common_Person to ContactQuery: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v18 = v89;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v31 = 0xE000000000000000;
  v101[0] = 0;
  v101[1] = 0xE000000000000000;
  LOBYTE(v101[2]) = 0;
  v101[5] = 0;
  v101[6] = 0xE000000000000000;
  v101[7] = 0;
  v101[8] = 0xE000000000000000;
  v101[9] = 0;
  v101[10] = 0xE000000000000000;
  v101[11] = 0;
  v101[12] = 0xE000000000000000;
  v101[13] = 0;
  v101[14] = 0xE000000000000000;
  v101[15] = 0;
  v101[16] = 0xE000000000000000;
  v101[17] = 0;
  v101[18] = 0xE000000000000000;
  memset(&v101[21], 0, 72);
  v101[30] = MEMORY[0x1E69E7CC0];
  sub_1DD63E6A8();
  OUTLINED_FUNCTION_5_5();
  if (v73)
  {
    v34 = 0xE000000000000000;
  }

  else
  {
    v34 = v32;
  }

  v101[3] = v33;
  v101[4] = v34;
  v35 = sub_1DD63E678();
  v36 = v95;
  if (v35)
  {
    v37 = sub_1DD63E948();
    v39 = v38;

    if (v39)
    {
      v40 = v37;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v31 = v39;
    }
  }

  else
  {
    v40 = 0;
  }

  v101[19] = v40;
  v101[20] = v31;
  LOBYTE(v101[31]) = 3;
  if (sub_1DD63E668())
  {
    sub_1DD63E868();
    OUTLINED_FUNCTION_5_5();
    if (v73)
    {
      v43 = 0xE000000000000000;
    }

    else
    {
      v43 = v41;
    }

    v101[5] = v42;
    v101[6] = v43;
    sub_1DD63E838();
    OUTLINED_FUNCTION_5_5();
    if (v73)
    {
      v46 = 0xE000000000000000;
    }

    else
    {
      v46 = v44;
    }

    v101[7] = v45;
    v101[8] = v46;
    sub_1DD63E858();
    OUTLINED_FUNCTION_5_5();
    if (v73)
    {
      v49 = 0xE000000000000000;
    }

    else
    {
      v49 = v47;
    }

    v101[9] = v48;
    v101[10] = v49;
    sub_1DD63E848();
    OUTLINED_FUNCTION_5_5();
    if (v73)
    {
      v52 = 0xE000000000000000;
    }

    else
    {
      v52 = v50;
    }

    v101[11] = v51;
    v101[12] = v52;
    sub_1DD63E878();
    OUTLINED_FUNCTION_5_5();
    if (v73)
    {
      v55 = 0xE000000000000000;
    }

    else
    {
      v55 = v53;
    }

    v101[15] = v54;
    v101[16] = v55;
    v56 = sub_1DD63E828();
    v58 = v57;

    if (v58)
    {
      v59 = v56;
    }

    else
    {
      v59 = 0;
    }

    if (v58)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0xE000000000000000;
    }

    v101[17] = v59;
    v101[18] = v60;
  }

  if (sub_1DD63E688())
  {
    v61 = sub_1DD63ECC8();
    v63 = v62;
    if (v62)
    {
      v64 = v61;
    }

    else
    {
      v64 = 0;
    }

    if (sub_1DD63ECB8())
    {
      UsoEntity_common_Person.toContactQuery()(v100);

      nullsub_1();
      memcpy(v102, v100, 0x108uLL);
    }

    else
    {

      sub_1DD447694(v102);
    }

    memcpy(v100, v102, sizeof(v100));
    if (sub_1DD3C94D4(v100) == 1)
    {
      v65 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC760, &qword_1DD648250);
      v65 = swift_allocObject();
      memcpy((v65 + 16), v102, 0x108uLL);
    }

    if (!v63)
    {
      v63 = 0xE000000000000000;
    }

    sub_1DD4178B4(v101[21], v101[22], v101[23]);
    v101[21] = v65;
    v101[22] = v64;
    v101[23] = v63;
  }

  v66 = sub_1DD63E698();
  v68 = v94;
  if (v66)
  {
    if (sub_1DD63396C(v67))
    {
    }

    else
    {
      sub_1DD6339D4(v102);

      v69 = LOBYTE(v102[0]);
      v88 = *&v102[3];
      v89 = *&v102[1];
      v70 = v102[5];
      sub_1DD3FAA54(v101[24], v101[25], v101[26]);
      *&v101[25] = v89;
      *&v101[27] = v88;
      v101[24] = v69;
      v101[29] = v70;
    }
  }

  sub_1DD63E648();
  v71 = v97;
  (*(v68 + 104))(v97, *MEMORY[0x1E69D1BE0], v3);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v3);
  v72 = *(v91 + 48);
  sub_1DD3DD9B4(v18, v36, &qword_1ECCE0088, &qword_1DD665798);
  sub_1DD3DD9B4(v71, v36 + v72, &qword_1ECCE0088, &qword_1DD665798);
  OUTLINED_FUNCTION_11_5(v36);
  if (v73)
  {
    OUTLINED_FUNCTION_28_14(v71);
    OUTLINED_FUNCTION_28_14(v18);
    OUTLINED_FUNCTION_11_5(v36 + v72);
    if (v73)
    {
      sub_1DD390754(v36, &qword_1ECCE0088, &qword_1DD665798);
LABEL_66:
      LOBYTE(v101[2]) = 1;
      goto LABEL_67;
    }

LABEL_64:
    sub_1DD390754(v36, &qword_1ECCE0080, &qword_1DD665790);
    goto LABEL_67;
  }

  sub_1DD3DD9B4(v36, v92, &qword_1ECCE0088, &qword_1DD665798);
  OUTLINED_FUNCTION_11_5(v36 + v72);
  if (v73)
  {
    OUTLINED_FUNCTION_28_14(v97);
    OUTLINED_FUNCTION_28_14(v18);
    (*(v68 + 8))(v92, v3);
    goto LABEL_64;
  }

  v74 = v90;
  (*(v68 + 32))(v90, v36 + v72, v3);
  sub_1DD6350D0(&qword_1ECCE0090, MEMORY[0x1E69D1BE8], MEMORY[0x1E69D1BF0]);
  v75 = v92;
  LODWORD(v91) = sub_1DD63FD98();
  v76 = *(v68 + 8);
  v76(v74, v3);
  sub_1DD390754(v97, &qword_1ECCE0088, &qword_1DD665798);
  sub_1DD390754(v18, &qword_1ECCE0088, &qword_1DD665798);
  v76(v75, v3);
  sub_1DD390754(v36, &qword_1ECCE0088, &qword_1DD665798);
  if (v91)
  {
    goto LABEL_66;
  }

LABEL_67:
  v101[32] = v2;

  v77 = sub_1DD63E318();
  if (v77)
  {
    sub_1DD633F10(v77);
    v79 = v78;

    v101[30] = v79;
  }

  memcpy(v102, v101, 0x108uLL);
  sub_1DD3C9478(v102, v100);
  v80 = sub_1DD63F9D8();
  v81 = sub_1DD640368();
  sub_1DD3C9580(v102);
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v100[0] = v83;
    *v82 = 136315138;
    v84 = sub_1DD632D88();
    v86 = sub_1DD39565C(v84, v85, v100);

    *(v82 + 4) = v86;
    _os_log_impl(&dword_1DD38D000, v80, v81, "[USO Extension] Converted UsoEntity_common_person to ContactQuery %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  swift_beginAccess();
  memcpy(v99, v101, sizeof(v99));
  memcpy(v93, v101, 0x108uLL);
  memcpy(v100, v101, sizeof(v100));
  sub_1DD3C9478(v99, &v98);
  return sub_1DD3C9580(v100);
}

BOOL sub_1DD63396C(__n128 a1)
{
  sub_1DD63DD48();
  sub_1DD63EA68();
  sub_1DD63E7D8();

  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_1DD6339D4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1DD63DEA8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD63EA88();
  v11 = 0xE000000000000000;
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

LABEL_7:
    v13 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_8;
  }

  v13 = sub_1DD40B5BC();
  v15 = v14;

LABEL_8:
  sub_1DD6340F8(&v104);
  LODWORD(v16) = v104;
  sub_1DD63EA78();
  OUTLINED_FUNCTION_5_5();
  v100 = v18;
  if (!v27)
  {
    v11 = v17;
  }

  result = sub_1DD63E318();
  if (!result)
  {
    v82 = MEMORY[0x1E69E7CC0];
    goto LABEL_58;
  }

  v95 = v16;
  v96 = v15;
  v97 = v13;
  v98 = a2;
  v106 = MEMORY[0x1E69E7CD0];
  v107 = MEMORY[0x1E69E7CD0];
  v20 = *(result + 16);
  if (!v20)
  {

    v81 = MEMORY[0x1E69E7CD0];
    goto LABEL_50;
  }

  v99 = v11;
  OUTLINED_FUNCTION_4_97();
  OUTLINED_FUNCTION_16_56();
  v21 = *(v5 + 16);
  v22 = *(v5 + 80);
  v93 = v23;
  v24 = v23 + ((v22 + 32) & ~v22);
  v102 = *(v5 + 72);
  v103 = v21;
  v101 = v5 + 16;
  do
  {
    v103(v8, v24, v3);
    v25 = sub_1DD63DE98();
    if (!v26)
    {
      goto LABEL_23;
    }

    v27 = v25 == v13 && v26 == 0xEB00000000657079;
    if (v27)
    {
    }

    else
    {
      v28 = sub_1DD640CD8();

      if ((v28 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v29 = sub_1DD63DE88();
    v31 = v30;
    OUTLINED_FUNCTION_24_26();
    if (sub_1DD640018())
    {
      OUTLINED_FUNCTION_24_26();
      v32 = sub_1DD63FF08();
      v33 = sub_1DD6341B0(v32, v29, v31);
      MEMORY[0x1E12B2190](v33);
      v34 = OUTLINED_FUNCTION_19_40();
      OUTLINED_FUNCTION_10_57(v34, v35, v36, v37, v38, v39, v40, v41, v93, v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);

      v42 = OUTLINED_FUNCTION_22_33();
      sub_1DD56ECB8(v42, 2);
LABEL_23:
      v43 = OUTLINED_FUNCTION_11_56();
      v44(v43);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_24_26();
    if (sub_1DD640018())
    {
      OUTLINED_FUNCTION_24_26();
      v45 = sub_1DD63FF08();
      v46 = sub_1DD6341B0(v45, v29, v31);
      MEMORY[0x1E12B2190](v46);
      v47 = OUTLINED_FUNCTION_19_40();
      OUTLINED_FUNCTION_10_57(v47, v48, v49, v50, v51, v52, v53, v54, v93, v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);

      v55 = OUTLINED_FUNCTION_22_33();
      sub_1DD56ECB8(v55, 1);
      v56 = OUTLINED_FUNCTION_11_56();
      v57(v56);
LABEL_30:
      OUTLINED_FUNCTION_16_56();
      goto LABEL_24;
    }

    v13 = 0x7373657264646120;
    v58 = sub_1DD640018();
    if (v58)
    {
      v60 = sub_1DD63FF08();
      v61 = sub_1DD6341B0(v60, v29, v31);
      MEMORY[0x1E12B2190](v61);
      v62 = OUTLINED_FUNCTION_19_40();
      OUTLINED_FUNCTION_10_57(v62, v63, v64, v65, v66, v67, v68, v69, v93, v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);

      v70 = OUTLINED_FUNCTION_11_56();
      v71(v70);
      OUTLINED_FUNCTION_4_97();
      goto LABEL_30;
    }

    if (v29 == 0x656E6F6870 && v31 == 0xE500000000000000)
    {

      OUTLINED_FUNCTION_4_97();
    }

    else
    {
      OUTLINED_FUNCTION_25_26(v58, v59, 0x656E6F6870);
      OUTLINED_FUNCTION_4_97();
      if ((v73 & 1) == 0)
      {
        if (v29 == 0x6C69616D65 && v31 == 0xE500000000000000)
        {
        }

        else
        {
          v80 = OUTLINED_FUNCTION_25_26(v73, v74, 0x6C69616D65);

          if ((v80 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v75 = OUTLINED_FUNCTION_22_33();
        v76 = 1;
        goto LABEL_39;
      }
    }

    OUTLINED_FUNCTION_16_56();

    v75 = OUTLINED_FUNCTION_22_33();
    v76 = 2;
LABEL_39:
    sub_1DD56ECB8(v75, v76);
    v77 = OUTLINED_FUNCTION_11_56();
    v78(v77);
    v99 = 0xE000000000000000;
    v100 = 0;
LABEL_24:
    v24 += v102;
    --v20;
  }

  while (v20);

  v81 = v106;
  v11 = v99;
LABEL_50:
  sub_1DD581CB8(0, 0xE000000000000000);

  v82 = sub_1DD594058(v107);
  v83 = sub_1DD55B198();
  v85 = v84;
  v87 = v86;
  result = sub_1DD55ADE0(v81);
  if (v87 & 1) != 0 || (v89)
  {
    goto LABEL_60;
  }

  v13 = v97;
  a2 = v98;
  v15 = v96;
  if (v85 != v88)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (v83 == result)
  {

    LOBYTE(v16) = v95;
  }

  else
  {
    sub_1DD55B050(v83, v85, v81, &v104);
    v90 = v11;
    v91 = v104;
    v16 = *(v81 + 16);

    v27 = v16 == 1;
    LOBYTE(v16) = v95;
    if (v27)
    {
      LOBYTE(v16) = v91;
    }

    v11 = v90;
  }

LABEL_58:
  v92 = v100;
  *a2 = v16;
  *(a2 + 8) = v92;
  *(a2 + 16) = v11;
  *(a2 + 24) = v82;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  return result;
}

void sub_1DD633F10(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v5 = *(sub_1DD63DEA8() - 8);
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_13;
    }

    sub_1DD634270(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2, &v17);
    v7 = v18;
    ++v2;
    if (v18)
    {
      v9 = v17;
      v8 = *(&v17 + 1);
      v15 = v20;
      v16 = v19;
      v10 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3C0BE0();
        v4 = v13;
      }

      v11 = *(v4 + 16);
      if (v11 >= *(v4 + 24) >> 1)
      {
        sub_1DD3C0BE0();
        v4 = v14;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 48 * v11;
      *(v12 + 32) = v9 & 1;
      *(v12 + 40) = v8;
      *(v12 + 48) = v7;
      *(v12 + 56) = v16;
      *(v12 + 64) = v15;
      *(v12 + 72) = v10;
      v2 = v6;
    }
  }
}

uint64_t sub_1DD634088(__n128 a1)
{
  sub_1DD63DD48();
  v1 = sub_1DD63EEC8();
  v3 = v2;

  MEMORY[0x1E12B2260](v1, v3);

  return 10;
}

uint64_t sub_1DD6340F8@<X0>(char *a1@<X8>)
{
  sub_1DD63DD48();
  sub_1DD63E908();
  sub_1DD63E7D8();
  if (v5)
  {

    v4 = 2;
  }

  else
  {
    sub_1DD63E918();
    sub_1DD63E7D8();

    result = 0;
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DD6341B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DD63FF28();
    v3 = sub_1DD640058();

    return v3;
  }

  return result;
}

uint64_t sub_1DD634270@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v108 = a2;
  v4 = sub_1DD63E428();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v87[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v87[-v7];
  v101 = sub_1DD63E448();
  v106 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v91 = &v87[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00A8, &qword_1DD6657B8);
  MEMORY[0x1EEE9AC00](v105);
  v98 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v87[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFEF8, &qword_1DD664BD8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v90 = &v87[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v87[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v87[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v87[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v87[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v87[-v23];
  v24 = sub_1DD63DE38();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v87[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00B0, &qword_1DD6657C0);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v87[-v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00B8, &qword_1DD6657C8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v100 = &v87[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v87[-v34];
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v87[-v37];
  v107 = a1;
  sub_1DD63DE48();
  (*(v25 + 104))(v35, *MEMORY[0x1E69D1758], v24);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v24);
  v39 = *(v28 + 56);
  sub_1DD3DD9B4(v38, v30, &qword_1ECCE00B8, &qword_1DD6657C8);
  sub_1DD3DD9B4(v35, &v30[v39], &qword_1ECCE00B8, &qword_1DD6657C8);
  if (__swift_getEnumTagSinglePayload(v30, 1, v24) == 1)
  {
    sub_1DD390754(v35, &qword_1ECCE00B8, &qword_1DD6657C8);
    sub_1DD390754(v38, &qword_1ECCE00B8, &qword_1DD6657C8);
    if (__swift_getEnumTagSinglePayload(&v30[v39], 1, v24) == 1)
    {
      sub_1DD390754(v30, &qword_1ECCE00B8, &qword_1DD6657C8);
      goto LABEL_10;
    }

LABEL_6:
    result = sub_1DD390754(v30, &qword_1ECCE00B0, &qword_1DD6657C0);
    goto LABEL_7;
  }

  v40 = v100;
  sub_1DD3DD9B4(v30, v100, &qword_1ECCE00B8, &qword_1DD6657C8);
  if (__swift_getEnumTagSinglePayload(&v30[v39], 1, v24) == 1)
  {
    sub_1DD390754(v35, &qword_1ECCE00B8, &qword_1DD6657C8);
    sub_1DD390754(v38, &qword_1ECCE00B8, &qword_1DD6657C8);
    (*(v25 + 8))(v40, v24);
    goto LABEL_6;
  }

  v43 = &v30[v39];
  v44 = v92;
  (*(v25 + 32))(v92, v43, v24);
  sub_1DD6350D0(&qword_1EE1637A0, MEMORY[0x1E69D1778], MEMORY[0x1E69D1780]);
  v88 = sub_1DD63FD98();
  v45 = *(v25 + 8);
  v45(v44, v24);
  sub_1DD390754(v35, &qword_1ECCE00B8, &qword_1DD6657C8);
  sub_1DD390754(v38, &qword_1ECCE00B8, &qword_1DD6657C8);
  v45(v40, v24);
  result = sub_1DD390754(v30, &qword_1ECCE00B8, &qword_1DD6657C8);
  if ((v88 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v46 = v103;
  sub_1DD63DE68();
  v47 = *(v106 + 104);
  v48 = v101;
  v49 = v102;
  v47(v102, *MEMORY[0x1E69D1B30], v101);
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v48);
  v50 = *(v105 + 48);
  v51 = v97;
  sub_1DD3DD9B4(v46, v97, &qword_1ECCDFEF8, &qword_1DD664BD8);
  sub_1DD3DD9B4(v49, v51 + v50, &qword_1ECCDFEF8, &qword_1DD664BD8);
  if (__swift_getEnumTagSinglePayload(v51, 1, v48) == 1)
  {
    sub_1DD390754(v49, &qword_1ECCDFEF8, &qword_1DD664BD8);
    sub_1DD390754(v46, &qword_1ECCDFEF8, &qword_1DD664BD8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51 + v50, 1, v48);
    v53 = v99;
    if (EnumTagSinglePayload == 1)
    {
      sub_1DD390754(v51, &qword_1ECCDFEF8, &qword_1DD664BD8);
      goto LABEL_17;
    }

LABEL_15:
    sub_1DD390754(v51, &qword_1ECCE00A8, &qword_1DD6657B8);
    LODWORD(v51) = 0;
    goto LABEL_20;
  }

  v54 = v89;
  sub_1DD3DD9B4(v51, v89, &qword_1ECCDFEF8, &qword_1DD664BD8);
  if (__swift_getEnumTagSinglePayload(v51 + v50, 1, v48) == 1)
  {
    sub_1DD390754(v102, &qword_1ECCDFEF8, &qword_1DD664BD8);
    sub_1DD390754(v103, &qword_1ECCDFEF8, &qword_1DD664BD8);
    (*(v106 + 8))(v54, v48);
    v53 = v99;
    goto LABEL_15;
  }

  v55 = v106;
  v56 = v51 + v50;
  v57 = v91;
  (*(v106 + 32))(v91, v56, v48);
  sub_1DD6350D0(&qword_1EE163790, MEMORY[0x1E69D1B40], MEMORY[0x1E69D1B48]);
  LODWORD(v100) = sub_1DD63FD98();
  v58 = *(v55 + 8);
  v58(v57, v48);
  sub_1DD390754(v102, &qword_1ECCDFEF8, &qword_1DD664BD8);
  sub_1DD390754(v103, &qword_1ECCDFEF8, &qword_1DD664BD8);
  v58(v54, v48);
  sub_1DD390754(v51, &qword_1ECCDFEF8, &qword_1DD664BD8);
  if ((v100 & 1) == 0)
  {
    LODWORD(v51) = 0;
    goto LABEL_19;
  }

LABEL_17:
  v59 = v93;
  sub_1DD63DE58();
  v51 = v94;
  v60 = v95;
  v61 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x1E69D1AE8], v96);
  v62 = MEMORY[0x1E12B0710](v59, v51);
  v63 = *(v60 + 8);
  v64 = v51;
  LODWORD(v51) = v62;
  v63(v64, v61);
  v65 = v59;
  v48 = v101;
  v63(v65, v61);
LABEL_19:
  v53 = v99;
LABEL_20:
  v66 = v104;
  sub_1DD63DE68();
  v47(v53, *MEMORY[0x1E69D1B10], v48);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v48);
  v67 = *(v105 + 48);
  v68 = v98;
  sub_1DD3DD9B4(v66, v98, &qword_1ECCDFEF8, &qword_1DD664BD8);
  sub_1DD3DD9B4(v53, &v68[v67], &qword_1ECCDFEF8, &qword_1DD664BD8);
  if (__swift_getEnumTagSinglePayload(v68, 1, v48) == 1)
  {
    sub_1DD390754(v53, &qword_1ECCDFEF8, &qword_1DD664BD8);
    sub_1DD390754(v66, &qword_1ECCDFEF8, &qword_1DD664BD8);
    if (__swift_getEnumTagSinglePayload(&v68[v67], 1, v48) == 1)
    {
      sub_1DD390754(v68, &qword_1ECCDFEF8, &qword_1DD664BD8);
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v69 = v90;
  sub_1DD3DD9B4(v68, v90, &qword_1ECCDFEF8, &qword_1DD664BD8);
  if (__swift_getEnumTagSinglePayload(&v68[v67], 1, v48) == 1)
  {
    sub_1DD390754(v53, &qword_1ECCDFEF8, &qword_1DD664BD8);
    sub_1DD390754(v104, &qword_1ECCDFEF8, &qword_1DD664BD8);
    (*(v106 + 8))(v69, v48);
LABEL_25:
    result = sub_1DD390754(v68, &qword_1ECCE00A8, &qword_1DD6657B8);
    goto LABEL_26;
  }

  LODWORD(v105) = v51;
  v51 = v106;
  v70 = v91;
  (*(v106 + 32))(v91, &v68[v67], v48);
  sub_1DD6350D0(&qword_1EE163790, MEMORY[0x1E69D1B40], MEMORY[0x1E69D1B48]);
  LODWORD(v103) = sub_1DD63FD98();
  v71 = *(v51 + 8);
  v71(v70, v48);
  sub_1DD390754(v53, &qword_1ECCDFEF8, &qword_1DD664BD8);
  sub_1DD390754(v104, &qword_1ECCDFEF8, &qword_1DD664BD8);
  v71(v69, v48);
  LOBYTE(v51) = v105;
  result = sub_1DD390754(v68, &qword_1ECCDFEF8, &qword_1DD664BD8);
  if ((v103 & 1) == 0)
  {
LABEL_26:
    if (v51)
    {
      goto LABEL_30;
    }

LABEL_7:
    v42 = v108;
    v108[1] = 0u;
    v42[2] = 0u;
    *v42 = 0u;
    return result;
  }

LABEL_29:
  v72 = v93;
  sub_1DD63DE58();
  v74 = v94;
  v73 = v95;
  v75 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x1E69D1AE8], v96);
  sub_1DD6350D0(&qword_1EE163798, MEMORY[0x1E69D1AF8], MEMORY[0x1E69D1B00]);
  v76 = sub_1DD63FD98();
  v77 = *(v73 + 8);
  v77(v74, v75);
  result = (v77)(v72, v75);
  if (!(v51 & 1 | ((v76 & 1) == 0)))
  {
    goto LABEL_7;
  }

LABEL_30:
  v78 = sub_1DD63DE18();
  v80 = v79;
  v81 = sub_1DD63DE88();
  v83 = v82;
  result = sub_1DD63DE28();
  v85 = v108;
  *v108 = 0;
  v85[1] = v78;
  if (v84)
  {
    v86 = 0;
  }

  else
  {
    v86 = result;
  }

  v85[2] = v80;
  v85[3] = v81;
  v85[4] = v83;
  v85[5] = v86;
  return result;
}

unint64_t sub_1DD63501C()
{
  result = qword_1EE163780;
  if (!qword_1EE163780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCE00A0, &qword_1DD6657B0);
    sub_1DD6350D0(&qword_1EE163788, MEMORY[0x1E69D1BF8], MEMORY[0x1E69D16D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163780);
  }

  return result;
}

uint64_t sub_1DD6350D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD635118()
{
  result = qword_1EE163480;
  if (!qword_1EE163480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163480);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  return sub_1DD56CE00(v32 - 112, v30, v31, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t OUTLINED_FUNCTION_12_51(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_13_53(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_40()
{
}

uint64_t OUTLINED_FUNCTION_28_14(uint64_t a1)
{

  return sub_1DD390754(a1, v1, v2);
}

void UsoEntity_common_RecurringDateTime.toDateTime()()
{
  v28 = sub_1DD63EC58();
  v25 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v24 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00C0, &qword_1DD6657E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v26 = &v24 - v2;
  v29 = sub_1DD635698();
  v27 = v3;
  v4 = sub_1DD63EC08();
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v31 = MEMORY[0x1E69E7CC0];
  v7 = sub_1DD3CC020();
  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B2C10](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }
    }

    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    sub_1DD63E1C8();
    if (v30)
    {
      UsoEntity_common_DateTime.toDateTime(recurrencePattern:)(0);

      MEMORY[0x1E12B23F0](v9);
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD640138();
      }

      sub_1DD640168();
      v5 = v31;
      ++v8;
    }

    else
    {

      ++v8;
    }
  }

  if (sub_1DD63EC18())
  {
    v10 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
  }

  else
  {
    v10 = 0;
  }

  v11 = v28;
  v12 = v29;
  v13 = v27;
  sub_1DD418CA4(v5);
  v15 = v14;
  if (sub_1DD63EC38())
  {
    v16 = UsoEntity_common_DateTime.toDateTime(recurrencePattern:)(0);
  }

  else
  {
    v16 = 0;
  }

  if (sub_1DD63EC28())
  {
    v17 = UsoEntity_common_DateTime.toDateTime(recurrencePattern:)(0);
  }

  else
  {
    v17 = 0;
  }

  v18 = v26;
  sub_1DD63EC48();
  if (__swift_getEnumTagSinglePayload(v18, 1, v11) == 1)
  {
    sub_1DD3ADFD0(v18, &qword_1ECCE00C0, &qword_1DD6657E0);
    v19 = 3;
  }

  else
  {
    v20 = v24;
    v21 = v25;
    (*(v25 + 16))(v24, v18, v11);
    v22 = (*(v21 + 88))(v20, v11);
    if (v22 == *MEMORY[0x1E69D2168])
    {
      v19 = 2;
    }

    else if (v22 == *MEMORY[0x1E69D2158])
    {
      v19 = 0;
    }

    else if (v22 == *MEMORY[0x1E69D2160])
    {
      v19 = 1;
    }

    else
    {
      (*(v21 + 8))(v20, v11);
      v19 = 3;
    }

    (*(v21 + 8))(v18, v11);
  }

  LOBYTE(v31) = v19;
  type metadata accessor for DateTime.RecurrencePattern();
  swift_allocObject();
  v23 = DateTime.RecurrencePattern.init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:definedValue:)(v10, v13, 0, 1, v15, v16, v17, &v31);
  LOBYTE(v31) = 1;
  LOBYTE(v30) = 4;
  type metadata accessor for DateTime();
  swift_allocObject();
  DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(0, 0, &v31, v23, &v30, v12);
}

uint64_t sub_1DD635698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0038, &qword_1DD665748);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28 - v1;
  v3 = sub_1DD63EA08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0030, &qword_1DD665740);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  if (sub_1DD63EC68())
  {
    v10 = UsoEntity_common_Duration.toInterval(offsetDirection:)(0);

    if (v10)
    {
      type metadata accessor for DateTime.DateTimeRange();
      swift_allocObject();
      v11 = DateTime.DateTimeRange.init(withInterval:)(v10);

      return v11;
    }
  }

  v12 = sub_1DD63EC08();
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v29 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00C8, &qword_1DD6657E8);
  v14 = *(v4 + 72);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD6657D0;
  v17 = v16 + v15;
  v18 = *(v4 + 104);
  v18(v17, *MEMORY[0x1E69D1F40], v3);
  v18(v17 + v14, *MEMORY[0x1E69D1F48], v3);
  v18(v17 + 2 * v14, *MEMORY[0x1E69D1F88], v3);
  v18(v17 + 3 * v14, *MEMORY[0x1E69D1F98], v3);
  v18(v17 + 4 * v14, *MEMORY[0x1E69D1F08], v3);
  v18(v17 + 5 * v14, *MEMORY[0x1E69D1F80], v3);
  v18(v17 + 6 * v14, *MEMORY[0x1E69D1F78], v3);
  v18(v17 + 7 * v14, *MEMORY[0x1E69D1F50], v3);
  v18(v17 + 8 * v14, *MEMORY[0x1E69D1FA8], v3);
  v18(v17 + 9 * v14, *MEMORY[0x1E69D1FB8], v3);
  v18(v17 + 10 * v14, *MEMORY[0x1E69D1FB0], v3);
  v18(v17 + 11 * v14, *MEMORY[0x1E69D1FC0], v3);
  v18(v17 + 12 * v14, *MEMORY[0x1E69D1F10], v3);
  v18(v17 + 13 * v14, *MEMORY[0x1E69D1F30], v3);
  v18(v17 + 14 * v14, *MEMORY[0x1E69D1F38], v3);
  sub_1DD56CC18();
  v19 = sub_1DD3CC020();
  if (!v19)
  {
    LODWORD(v20) = 0;
    goto LABEL_14;
  }

  sub_1DD408BFC();
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12B2C10](0, v13);
  }

  else
  {
  }

  sub_1DD63E1C8();

  if (!v31)
  {
    goto LABEL_12;
  }

  v20 = sub_1DD63E6F8();

  if (v20)
  {

    v21 = sub_1DD63E748();

    if (!v21)
    {

      sub_1DD63E718();

      v24 = sub_1DD63E728();
      LODWORD(v20) = __swift_getEnumTagSinglePayload(v9, 1, v24) == 1;
      sub_1DD3ADFD0(v9, &qword_1ECCE0030, &qword_1DD665740);
      goto LABEL_14;
    }

LABEL_12:
    LODWORD(v20) = 0;
  }

LABEL_14:
  if (sub_1DD3CC020() != 1 || !v20 || !v19)
  {

LABEL_24:

LABEL_25:

    return 0;
  }

  sub_1DD408BFC();
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12B2C10](0, v13);
  }

  else
  {
  }

  sub_1DD63E1C8();

  if (!v31)
  {
    goto LABEL_24;
  }

  v22 = sub_1DD63E6F8();

  if (!v22)
  {
    goto LABEL_24;
  }

  sub_1DD63E9F8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {

    sub_1DD3ADFD0(v2, &qword_1ECCE0038, &qword_1DD665748);
    return 0;
  }

  v25 = v29;
  (*(v4 + 32))(v29, v2, v3);
  v26 = sub_1DD47F31C();

  if ((v26 & 1) == 0)
  {
    (*(v4 + 8))(v25, v3);

    goto LABEL_25;
  }

  if (sub_1DD63EA48() || sub_1DD63EA18() || sub_1DD63EA28() || sub_1DD63EA38())
  {

    (*(v4 + 8))(v25, v3);
    return 0;
  }

  sub_1DD630750(&v31);

  (*(v4 + 8))(v25, v3);
  v27 = v31;
  if (v31 == 38)
  {
    v27 = 8;
  }

  LOBYTE(v31) = v27;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v11 = DateTime.DateTimeRange.init(withDefinedValue:)(&v31);
  LOBYTE(v31) = 1;
  v30 = 20;
  type metadata accessor for DateTime.Interval();
  swift_allocObject();
  DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(0x3FF0000000000000, 0, &v31, &v30);
  return v11;
}

uint64_t UsoEntity_common_RecurringDateTime.toRecurrencePattern()()
{
  UsoEntity_common_RecurringDateTime.toDateTime()();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t _s12SiriOntology21UsoEntity_common_TimeC0A9InferenceE02toagF0AD04DateF0C0F0CSgyF_0()
{
  v1 = sub_1DD63E568();
  v2 = *(v1 - 8);
  v46 = v1;
  v47 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00D0, &qword_1DD6657F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43[-v5];
  if (sub_1DD63E2F8() && (sub_1DD6317C0(&v50), , v50 != 20))
  {
    v49 = 38;
    v48 = v50;
    v11 = type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_0_152(v11);
    v12 = &v49;
    v13 = &v48;
  }

  else if (sub_1DD63E578() && (sub_1DD63108C(&v61), , v7 = v61, v61 != 20))
  {
    v14 = sub_1DD63E578();
    v15 = 31;
    if (v14)
    {
      sub_1DD6317A0(v14);
      OUTLINED_FUNCTION_1_137();
      if (v0)
      {
        v15 = 31;
      }

      else
      {
        v15 = 38;
      }
    }

    v52 = v15;
    v51 = v7;
    v16 = type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_0_152(v16);
    v12 = &v52;
    v13 = &v51;
  }

  else if (sub_1DD63E588() && (sub_1DD63108C(&v60), , v8 = v60, v60 != 20))
  {
    v17 = sub_1DD63E588();
    v18 = 32;
    if (v17)
    {
      sub_1DD6317A0(v17);
      OUTLINED_FUNCTION_1_137();
      if (v0)
      {
        v18 = 32;
      }

      else
      {
        v18 = 38;
      }
    }

    v54 = v18;
    v53 = v8;
    v19 = type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_0_152(v19);
    v12 = &v54;
    v13 = &v53;
  }

  else
  {
    if (!sub_1DD63E598() || (sub_1DD63108C(&v59), , v9 = v59, v59 == 20))
    {
      if (sub_1DD63E548())
      {
        v10 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_28;
    }

    v20 = sub_1DD63E598();
    v21 = 33;
    if (v20)
    {
      sub_1DD6317A0(v20);
      OUTLINED_FUNCTION_1_137();
      if (v0)
      {
        v21 = 33;
      }

      else
      {
        v21 = 38;
      }
    }

    v56 = v21;
    v55 = v9;
    v22 = type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_0_152(v22);
    v12 = &v56;
    v13 = &v55;
  }

  v10 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, 0, 0, 0, 0, v12, v13);
LABEL_28:

  v23 = sub_1DD63E578();
  if (v23)
  {
    v24 = sub_1DD6317A0(v23);
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 1;
  }

  v27 = sub_1DD63E588();
  if (v27)
  {
    v28 = sub_1DD6317A0(v27);
    LODWORD(v30) = v29;
  }

  else
  {
    v28 = 0;
    LODWORD(v30) = 1;
  }

  v31 = sub_1DD63E598();
  if (v31)
  {
    v32 = sub_1DD6317A0(v31);
    OUTLINED_FUNCTION_1_137();
  }

  else
  {
    v32 = 0;
    v0 = 1;
  }

  v58 = 2;
  sub_1DD63E558();

  v33 = v46;
  if (__swift_getEnumTagSinglePayload(v6, 1, v46) != 1)
  {
    v44 = v30;
    v30 = v28;
    v35 = v6;
    v36 = v26;
    v37 = v24;
    v38 = v47;
    v39 = v45;
    v40 = v35;
    (*(v47 + 16))(v45);
    v41 = (*(v38 + 88))(v39, v33);
    if (v41 == *MEMORY[0x1E69D1BB8])
    {
      v34 = 2;
      v24 = v37;
    }

    else
    {
      v24 = v37;
      if (v41 != *MEMORY[0x1E69D1BC0])
      {
        v26 = v36;
        if (v41 == *MEMORY[0x1E69D1BC8])
        {
          v34 = 0;
        }

        else
        {
          (*(v47 + 8))(v45, v33);
          v34 = 3;
        }

        goto LABEL_44;
      }

      v34 = 1;
    }

    v26 = v36;
LABEL_44:
    (*(v47 + 8))(v40, v33);
    v28 = v30;
    LOBYTE(v30) = v44;
    goto LABEL_45;
  }

  sub_1DD6363D4(v6);
  v34 = 3;
LABEL_45:
  v57 = v34;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  return DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v24, v26 & 1, v28, v30 & 1, v32, v0 & 1, &v58, &v57, v10, 1);
}

uint64_t sub_1DD6363D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00D0, &qword_1DD6657F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s12SiriOntology32UsoEntity_common_Time12HourClockC0A9InferenceE02toaI4TimeAD04DateK0C0K0CSgyF_0()
{
  v0 = sub_1DD63EAC8();
  if (v0)
  {
    v1 = sub_1DD6317A0(v0);
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 1;
  }

  v4 = sub_1DD63EAD8();
  if (v4)
  {
    v5 = sub_1DD6317A0(v4);
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 1;
  }

  v8 = sub_1DD63EAE8();
  if (v8)
  {
    v9 = sub_1DD6317A0(v8);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 1;
  }

  if (sub_1DD63EAF8())
  {
    sub_1DD631A98(&v17);

    v12 = v17;
  }

  else
  {
    v12 = 2;
  }

  v16 = v12;
  v15 = 3;
  if (sub_1DD63EAB8())
  {
    v13 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
  }

  else
  {
    v13 = 0;
  }

  type metadata accessor for DateTime.Time();
  swift_allocObject();
  return DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v1, v3 & 1, v5, v7 & 1, v9, v11 & 1, &v16, &v15, v13, 1);
}

uint64_t _s12SiriOntology32UsoEntity_common_Time24HourClockC0A9InferenceE02toaI4TimeAD04DateK0C0K0CSgyF_0()
{
  v0 = sub_1DD63EB28();
  if (v0)
  {
    v1 = sub_1DD6317A0(v0);
    v3 = v2;

    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = v1 > 11;
    }

    v5 = (v3 & 1) != 0;
  }

  else
  {
    v1 = 0;
    v5 = 1;
    v4 = 2;
  }

  v6 = sub_1DD63EB38();
  if (v6)
  {
    v7 = sub_1DD6317A0(v6);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 1;
  }

  v10 = sub_1DD63EB48();
  if (v10)
  {
    v11 = sub_1DD6317A0(v10);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 1;
  }

  v17 = v4;
  v16 = 3;
  if (sub_1DD63EB18())
  {
    v14 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
  }

  else
  {
    v14 = 0;
  }

  type metadata accessor for DateTime.Time();
  swift_allocObject();
  return DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v1, v5, v7, v9 & 1, v11, v13 & 1, &v17, &v16, v14, 1);
}

uint64_t sub_1DD636738@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCE00D8, &qword_1DD6657F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1DD63E7C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1DD63E7B8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    result = sub_1DD636A6C(v4);
    v13 = 13;
  }

  else
  {
    v14 = *(v6 + 32);
    v14(v11, v4, v5);
    v14(v8, v11, v5);
    result = (*(v6 + 88))(v8, v5);
    if (result == *MEMORY[0x1E69D1C38])
    {
      v13 = 9;
    }

    else if (result == *MEMORY[0x1E69D1C28])
    {
      v13 = 3;
    }

    else if (result == *MEMORY[0x1E69D1C60])
    {
      v13 = 12;
    }

    else
    {
      if (result == *MEMORY[0x1E69D1C88])
      {
        *a1 = 0;
        return result;
      }

      if (result == *MEMORY[0x1E69D1C80])
      {
        v13 = 10;
      }

      else if (result == *MEMORY[0x1E69D1C40])
      {
        v13 = 8;
      }

      else if (result == *MEMORY[0x1E69D1C78])
      {
        v13 = 6;
      }

      else if (result == *MEMORY[0x1E69D1C48])
      {
        v13 = 1;
      }

      else if (result == *MEMORY[0x1E69D1C50])
      {
        v13 = 4;
      }

      else if (result == *MEMORY[0x1E69D1C30])
      {
        v13 = 5;
      }

      else if (result == *MEMORY[0x1E69D1C68])
      {
        v13 = 7;
      }

      else if (result == *MEMORY[0x1E69D1C70])
      {
        v13 = 2;
      }

      else
      {
        if (result != *MEMORY[0x1E69D1C58])
        {
          *a1 = 13;
          return (*(v6 + 8))(v8, v5);
        }

        v13 = 11;
      }
    }
  }

  *a1 = v13;
  return result;
}

uint64_t sub_1DD636A6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCE00D8, &qword_1DD6657F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD636AD4(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1DD63FE38();
}

uint64_t sub_1DD636B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_57();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_1_41();
  v19[0] = v8;
  v19[1] = v7;
  MEMORY[0x1E12B2260](a1, a2);
  sub_1DD63FE68();

  v9 = os_transaction_create();

  *(v6 + 16) = v9;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v10 = sub_1DD63F9F8();
  __swift_project_value_buffer(v10, qword_1EE16F0C8);
  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640368();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19[0] = v18;
    *v13 = 136315138;
    v19[3] = v9;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00E8, qword_1DD665828);
    v14 = sub_1DD63FE38();
    v16 = sub_1DD39565C(v14, v15, v19);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_1DD38D000, v11, v12, "opening transaction %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4D7508(a3);
  sub_1DD39A63C(v6);
}

uint64_t sub_1DD636E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  OUTLINED_FUNCTION_57();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_1_41();
  OUTLINED_FUNCTION_4_98();
  sub_1DD63FE68();

  v10 = os_transaction_create();

  *(v9 + 16) = v10;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v11 = sub_1DD63F9F8();
  __swift_project_value_buffer(v11, qword_1EE16F0C8);
  v12 = sub_1DD63F9D8();
  v13 = sub_1DD640368();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25[0] = v23;
    *v14 = 136315138;
    v25[3] = v10;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00E8, qword_1DD665828);
    v15 = sub_1DD63FE38();
    v17 = v9;
    v18 = a4;
    v19 = a6;
    v20 = a5;
    v21 = sub_1DD39565C(v15, v16, v25);

    *(v14 + 4) = v21;
    a5 = v20;
    a6 = v19;
    a4 = v18;
    v9 = v17;
    _os_log_impl(&dword_1DD38D000, v12, v13, "opening transaction %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD5AB7C0(a3, a4, a5, a6);
  sub_1DD39A63C(v9);
}

uint64_t sub_1DD6370BC(uint64_t a1)
{
  v2 = sub_1DD637248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD6370F8(uint64_t a1)
{
  v2 = sub_1DD637248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Empty.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00F0, &qword_1DD665970);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD637248();
  sub_1DD640EF8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DD637248()
{
  result = qword_1ECCE00F8;
  if (!qword_1ECCE00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE00F8);
  }

  return result;
}

uint64_t sub_1DD6372F4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE6BE70](a4, a3, AssociatedTypeWitness, &protocol requirements base descriptor for ValueResolver, &associated conformance descriptor for ValueResolver.ValueResolver.Output: Decodable);
}

uint64_t sub_1DD63736C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE6BE70](a4, a3, AssociatedTypeWitness, &protocol requirements base descriptor for ValueResolver, &associated conformance descriptor for ValueResolver.ValueResolver.Output: Encodable);
}

_BYTE *storeEnumTagSinglePayload for Empty(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD637558()
{
  result = qword_1ECCE0100;
  if (!qword_1ECCE0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0100);
  }

  return result;
}

unint64_t sub_1DD6375B0()
{
  result = qword_1ECCE0108;
  if (!qword_1ECCE0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0108);
  }

  return result;
}

uint64_t sub_1DD637604()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v17 = 5;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 0;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(0, 0, 0, 0, 0, 0, v1, v2, v13, v15);
  type metadata accessor for DateTime();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_1_62();
  DateTime.init(withDate:time:)(v3, v4);
  v17 = 6;
  v5 = swift_allocObject();
  v6 = DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 1;
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(11, 0, 59, 0, 59, 0, v7, v8, v14, v16);
  OUTLINED_FUNCTION_1_11();
  v9 = DateTime.init(withDate:time:)(v6, v5);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_1_62();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v10, v11);
  OUTLINED_FUNCTION_1_11();
  *(inited + 56) = DateTime.init(occurringIn:)(v9);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD6377E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = xmmword_1DD644500;
  *(inited + 48) = 0;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(1, 6);
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_34();
  v2 = DateTime.init(withDate:)(v1);
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(31, 8);
  OUTLINED_FUNCTION_1_11();
  v3 = OUTLINED_FUNCTION_34();
  v4 = DateTime.init(withDate:)(v3);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v2, v4);
  OUTLINED_FUNCTION_1_11();
  v5 = OUTLINED_FUNCTION_34();
  *(inited + 56) = DateTime.init(occurringIn:)(v5);
  *(inited + 64) = xmmword_1DD644510;
  *(inited + 80) = 1;
  v34 = 2;
  type metadata accessor for DateTime.Date.Holiday();
  swift_allocObject();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x736C6F73656E756ALL, 0xEC00000065636974, 0x6C6F5320656E754ALL, 0xED00006563697473, &v34);
  OUTLINED_FUNCTION_2_10();
  v6 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v6);
  OUTLINED_FUNCTION_1_11();
  v7 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v7);
  v8 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v8, 0x80000001DD668D10, 0xD000000000000011, 0x80000001DD66A460, v9, v10, v11, v12, v28, *v30, *&v30[4], v30[6], v34);
  OUTLINED_FUNCTION_2_10();
  v13 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v13);
  OUTLINED_FUNCTION_1_11();
  v14 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v14);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v15 = OUTLINED_FUNCTION_34();
  v16 = DateTime.init(occurringIn:)(v15);
  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 88) = v16;
  *(inited + 112) = 1;
  v17 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v17, 0x80000001DD668D30, 0xD000000000000011, 0x80000001DD66A480, v18, v19, v20, v21, v29, v31, v32, v33, v34);
  OUTLINED_FUNCTION_2_10();
  v22 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v22);
  OUTLINED_FUNCTION_1_11();
  v23 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v23);
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x757165686372616DLL, 0xEC000000786F6E69, 0x714520686372614DLL, 0xED0000786F6E6975, &v34);
  OUTLINED_FUNCTION_2_10();
  v24 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v24);
  OUTLINED_FUNCTION_1_11();
  v25 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v25);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v26 = OUTLINED_FUNCTION_34();
  *(inited + 120) = DateTime.init(occurringIn:)(v26);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD637B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v2 = 0;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(0, 0, 0, &v2 + 1, 3, 0, 0, &v2);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD637BCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v17 = 0;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 0;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(0, 0, 0, 0, 0, 0, v1, v2, v13, v15);
  type metadata accessor for DateTime();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_1_62();
  DateTime.init(withDate:time:)(v3, v4);
  v17 = 4;
  v5 = swift_allocObject();
  v6 = DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 1;
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(11, 0, 59, 0, 59, 0, v7, v8, v14, v16);
  OUTLINED_FUNCTION_1_11();
  v9 = DateTime.init(withDate:time:)(v6, v5);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_1_62();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v10, v11);
  OUTLINED_FUNCTION_1_11();
  *(inited + 56) = DateTime.init(occurringIn:)(v9);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

dispatch_semaphore_t sub_1DD637DA8()
{
  result = dispatch_semaphore_create(1);
  qword_1EE166270 = result;
  return result;
}

uint64_t static XPCActivity.register(name:repeatInterval:isPrivacyCritical:makeOperation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_41();
  MEMORY[0x1E12B2260]();

  sub_1DD637E84();
}

void sub_1DD637E84()
{
  v1 = v0[1];
  v30 = *v0;
  v31 = v1;
  v32 = *(v0 + 4);
  if (qword_1EE166268 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE166270;
  sub_1DD6404F8();

  if (qword_1EE166280 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE166288;
  v4 = v30;

  v5 = sub_1DD47EEBC(v30, *(&v30 + 1), v3);

  if (v5)
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v6 = sub_1DD63F9F8();
    __swift_project_value_buffer(v6, qword_1EE16F0C8);
    sub_1DD6393E0(&v30, aBlock);
    v7 = sub_1DD63F9D8();
    v8 = sub_1DD640368();
    sub_1DD639418(&v30);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1DD39565C(v4, *(&v4 + 1), aBlock);
      _os_log_impl(&dword_1DD38D000, v7, v8, "XPC activity is already registered. id=%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12B3DA0](v10, -1, -1);
      MEMORY[0x1E12B3DA0](v9, -1, -1);
    }
  }

  else
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD63F9F8();
    __swift_project_value_buffer(v11, qword_1EE16F0C8);
    sub_1DD6393E0(&v30, aBlock);
    sub_1DD6393E0(&v30, aBlock);
    sub_1DD6393E0(&v30, aBlock);
    sub_1DD6393E0(&v30, aBlock);
    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640368();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_1DD39565C(v4, *(&v4 + 1), aBlock);
      *(v14 + 12) = 2080;
      LOBYTE(v27) = v31;
      v16 = sub_1DD63FE38();
      v18 = sub_1DD39565C(v16, v17, aBlock);

      *(v14 + 14) = v18;
      *(v14 + 22) = 1024;
      sub_1DD639418(&v30);
      *(v14 + 24) = BYTE1(v31) & 1;
      sub_1DD639418(&v30);
      *(v14 + 28) = 1024;
      sub_1DD639418(&v30);
      *(v14 + 30) = BYTE2(v31) & 1;
      sub_1DD639418(&v30);
      _os_log_impl(&dword_1DD38D000, v12, v13, "registering XPC activity\nid=%s\nrepeatInterval=%s\nrequireScreenSleep=%{BOOL}d\nallowBattery=%{BOOL}d", v14, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v15, -1, -1);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
    }

    else
    {
      sub_1DD639418(&v30);
      sub_1DD639418(&v30);
      sub_1DD639418(&v30);
      sub_1DD639418(&v30);
    }

    v27 = v30;
    v28 = v31;
    v29 = v32;
    v19 = sub_1DD638CE8();
    v20 = swift_allocObject();
    v21 = v31;
    *(v20 + 16) = v30;
    *(v20 + 32) = v21;
    *(v20 + 48) = v32;
    aBlock[4] = sub_1DD639448;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD54F324;
    aBlock[3] = &block_descriptor_13_1;
    v22 = _Block_copy(aBlock);
    sub_1DD6393E0(&v30, v25);

    v23 = sub_1DD63FE68();
    xpc_activity_register((v23 + 32), v19, v22);

    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  v24 = qword_1EE166270;
  sub_1DD640508();
}

uint64_t static XPCActivity.unregister(name:)()
{
  OUTLINED_FUNCTION_1_41();
  MEMORY[0x1E12B2260](v0, v1);
  v2 = sub_1DD63FE68();

  xpc_activity_unregister((v2 + 32));
}

uint64_t static XPCActivity.registerFirstBoot()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0110, &qword_1DD665B18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = *MEMORY[0x1E69E9D88];
  v1 = xpc_BOOL_create(0);
  v2 = *MEMORY[0x1E69E9D68];
  *(inited + 40) = v1;
  *(inited + 48) = v2;
  v3 = xpc_string_create(*MEMORY[0x1E69E9D78]);
  v4 = *MEMORY[0x1E69E9C68];
  *(inited + 56) = v3;
  *(inited + 64) = v4;
  v5 = xpc_int64_create(0);
  v6 = *MEMORY[0x1E69E9C98];
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  *(inited + 88) = xpc_int64_create(120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0118, &qword_1DD665B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC380, &qword_1DD646178);
  sub_1DD6385B4();
  v7 = sub_1DD63FC88();

  v9 = sub_1DD5940F0(v8);

  v11 = sub_1DD594148(v10);
  v12 = sub_1DD3FE498(v11);

  v13 = *(v7 + 16);

  v14 = xpc_dictionary_create((v9 + 32), (v12 + 32), v13);

  v18[4] = sub_1DD638618;
  v18[5] = 0;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_1_138();
  v18[2] = v15;
  v18[3] = &block_descriptor_26;
  v16 = _Block_copy(v18);
  xpc_activity_register("com.apple.siri.inference.FirstBoot", v14, v16);
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

unint64_t sub_1DD6385B4()
{
  result = qword_1EE160328;
  if (!qword_1EE160328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCE0118, &qword_1DD665B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160328);
  }

  return result;
}

void sub_1DD638618(_xpc_activity_s *a1)
{
  if (qword_1EE166108 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F088);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD38D000, v3, v4, "received FirstBoot XPC Activity", v5, 2u);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  if (!xpc_activity_set_state(a1, 5))
  {
    oslog = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DD38D000, oslog, v6, "failed to set FirstBoot to DONE", v7, 2u);
      MEMORY[0x1E12B3DA0](v7, -1, -1);
    }
  }
}

double block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

xpc_activity_state_t sub_1DD6387F0(_xpc_activity_s *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for TaskSuccessMetricsPublisher(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    sub_1DD39638C(0, &qword_1EE160230, 0x1E698F2B0);
    sub_1DD63DA28();
    sub_1DD39638C(0, &qword_1EE160240, 0x1E698F248);
    sub_1DD63DA28();
    v9 = &v7[v5[6]];
    *(v9 + 3) = &type metadata for SELFTaskSuccessLogger;
    *(v9 + 4) = &off_1F58BF870;
    type metadata accessor for SystemUserDefaultsProvider();
    v10 = swift_allocObject();
    *(v10 + 16) = [objc_opt_self() standardUserDefaults];
    v11 = &v7[v5[8]];
    *v11 = v10;
    v11[1] = &off_1F58C4BC8;
    v12 = &v7[v5[7]];
    *v12 = 0;
    *(v12 + 1) = 0;

    v13 = sub_1DD63D078();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v13);
    sub_1DD63F6D8();
    swift_allocObject();
    swift_unknownObjectRetain();
    v14 = sub_1DD63F6B8();
    v15[0] = a1;
    v15[1] = v14;
    sub_1DD55CD08(v15);

    swift_unknownObjectRelease();
    return sub_1DD639384(v7);
  }

  return result;
}

uint64_t sub_1DD638A64(int64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0110, &qword_1DD665B18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = *MEMORY[0x1E69E9D88];
  v9 = xpc_BOOL_create(1);
  v10 = *MEMORY[0x1E69E9D68];
  *(inited + 40) = v9;
  *(inited + 48) = v10;
  v11 = xpc_string_create(*MEMORY[0x1E69E9D78]);
  v12 = *MEMORY[0x1E69E9C68];
  *(inited + 56) = v11;
  *(inited + 64) = v12;
  v13 = xpc_int64_create(a1);
  v14 = *MEMORY[0x1E69E9C40];
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  *(inited + 88) = xpc_BOOL_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0118, &qword_1DD665B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC380, &qword_1DD646178);
  sub_1DD6385B4();
  v15 = sub_1DD63FC88();

  v17 = sub_1DD5940F0(v16);

  v19 = sub_1DD594148(v18);
  v20 = sub_1DD3FE498(v19);

  v21 = *(v15 + 16);

  v22 = xpc_dictionary_create((v17 + 32), (v20 + 32), v21);

  v26[4] = a2;
  v26[5] = 0;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_1_138();
  v26[2] = v23;
  v26[3] = a3;
  v24 = _Block_copy(v26);
  xpc_activity_register(a4, v22, v24);
  _Block_release(v24);
  return swift_unknownObjectRelease();
}

void sub_1DD638C34(_xpc_activity_s *a1)
{
  if (xpc_activity_get_state(a1) == 2)
  {
    type metadata accessor for SystemUserDefaultsProvider();
    v1 = swift_allocObject();
    *(v1 + 16) = [objc_opt_self() standardUserDefaults];
    v7 = sub_1DD639258(v2);
    v4 = v3;
    sub_1DD629DBC(v7, v3, v5, v6);
    swift_unknownObjectRelease();
  }
}

xpc_object_t sub_1DD638CE8()
{
  v1 = v0[16];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCE0130, qword_1DD665BF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD652040;
  *(inited + 32) = *MEMORY[0x1E69E9CB0];
  v6 = MEMORY[0x1E69E9CC8];
  v7 = inited;
  switch(v2)
  {
    case 1uLL:
      goto LABEL_5;
    case 2uLL:
      v6 = MEMORY[0x1E69E9CE0];
      goto LABEL_5;
    case 3uLL:
      v6 = MEMORY[0x1E69E9CF8];
      goto LABEL_5;
    case 4uLL:
      v6 = MEMORY[0x1E69E9CC0];
LABEL_5:
      v2 = xpc_int64_create(*v6);
      break;
    default:
      break;
  }

  v8 = *MEMORY[0x1E69E9D88];
  v7[5] = v2;
  v7[6] = v8;
  v9 = xpc_BOOL_create(v1 != 0);
  v10 = *MEMORY[0x1E69E9D68];
  v7[7] = v9;
  v7[8] = v10;
  v11 = xpc_string_create(*MEMORY[0x1E69E9D78]);
  v12 = *MEMORY[0x1E69E9DC0];
  v7[9] = v11;
  v7[10] = v12;
  v13 = xpc_BOOL_create(v3);
  v14 = *MEMORY[0x1E69E9C40];
  v7[11] = v13;
  v7[12] = v14;
  v7[13] = xpc_BOOL_create(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0118, &qword_1DD665B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC388, &qword_1DD646180);
  sub_1DD6385B4();
  v15 = sub_1DD63FC88();

  v17 = sub_1DD5940F0(v16);

  v19 = sub_1DD59411C(v18);
  v20 = *(v15 + 16);

  v21 = xpc_dictionary_create((v17 + 32), (v19 + 32), v20);

  return v21;
}

void sub_1DD638ECC(_xpc_activity_s *a1, uint64_t a2)
{
  if (xpc_activity_get_state(a1) == 2)
  {
    v4 = (*(a2 + 24))(a1);
    if (qword_1EE166628 != -1)
    {
      swift_once();
    }

    [qword_1EE166630 addOperation_];
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD63F9F8();
    __swift_project_value_buffer(v5, qword_1EE16F0C8);
    sub_1DD6393E0(a2, v10);
    v6 = sub_1DD63F9D8();
    v7 = sub_1DD640368();
    sub_1DD639418(a2);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1DD39565C(*a2, *(a2 + 8), v10);
      _os_log_impl(&dword_1DD38D000, v6, v7, "queued XPC activity. id=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1E12B3DA0](v9, -1, -1);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
    }
  }
}

uint64_t XPCActivity.RepeatInterval.hashValue.getter()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

unint64_t sub_1DD639118()
{
  result = qword_1ECCE0120;
  if (!qword_1ECCE0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0120);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCActivity.RepeatInterval(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

id sub_1DD639258(__n128 a1)
{
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 Intents];
  swift_unknownObjectRelease();
  v3 = [v2 Transcript];
  swift_unknownObjectRelease();
  v4 = [BiomeLibrary() IntelligenceEngine];
  swift_unknownObjectRelease();
  v5 = [v4 Interaction];
  swift_unknownObjectRelease();
  v6 = [v5 Donation];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1DD639384(uint64_t a1)
{
  v2 = type metadata accessor for TaskSuccessMetricsPublisher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *XPCActivityOperation.init(activity:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity] = 0;
  *&v1[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_completionKVObservation] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for XPCActivityOperation();
  v3 = objc_msgSendSuper2(&v9, sel_init);
  *&v3[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity] = a1;
  v4 = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  swift_unknownObjectRetain();
  v6 = sub_1DD63CDB8();

  swift_unknownObjectRelease();
  v7 = *&v4[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_completionKVObservation];
  *&v4[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_completionKVObservation] = v6;

  return v4;
}

uint64_t sub_1DD6395C4()
{
  if ([v0 isCancelled])
  {
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v1 = sub_1DD63F9F8();
    __swift_project_value_buffer(v1, qword_1EE16F0C8);
    v2 = sub_1DD63F9D8();
    v3 = sub_1DD640368();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DD38D000, v2, v3, "XPC activity has been cancelled", v4, 2u);
      MEMORY[0x1E12B3DA0](v4, -1, -1);
    }

    return 1;
  }

  if (*&v0[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity])
  {
    v5 = swift_unknownObjectRetain();
    if (xpc_activity_should_defer(v5))
    {
      [v0 cancel];
      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EE166510);
      }

      v6 = sub_1DD63F9F8();
      __swift_project_value_buffer(v6, qword_1EE16F0C8);
      v7 = sub_1DD63F9D8();
      v8 = sub_1DD640368();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1DD38D000, v7, v8, "XPC activity has been deferred", v9, 2u);
        MEMORY[0x1E12B3DA0](v9, -1, -1);
      }

      swift_unknownObjectRelease();
      return 1;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id XPCActivityOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCActivityOperation.init()()
{
  v1 = OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity;
  *&v0[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity] = 0;
  *&v0[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_completionKVObservation] = 0;
  *&v0[v1] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for XPCActivityOperation();
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_1DD639870(uint64_t a1, uint64_t a2, uint64_t a3, _xpc_activity_s *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0158, &qword_1DD665C68);
  result = sub_1DD63CDA8();
  if (v7 != 2 && (v7 & 1) != 0)
  {
    if (sub_1DD6395C4())
    {
      v6 = 3;
    }

    else
    {
      v6 = 5;
    }

    return xpc_activity_set_state(a4, v6);
  }

  return result;
}

id XPCActivityOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCActivityOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

SiriInference::Zipcode __swiftcall Zipcode.init(value:prefix:)(SiriInference::Zipcode value, SiriInference::Zipcode::Prefix_optional prefix)
{
  v3 = *prefix.value;
  *(v2 + 8) = *&value.prefix.value;
  *v2 = v3;
  LOBYTE(value.value._object) = prefix;
  return value;
}

SiriInference::Zipcode::Prefix_optional __swiftcall Zipcode.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Zipcode.Prefix.rawValue.getter()
{
  v1 = 28265;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65646F6370697ALL;
  }
}

uint64_t sub_1DD639A8C@<X0>(uint64_t *a1@<X8>)
{
  result = Zipcode.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Zipcode.value.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static Zipcode.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 3 && (v2 == 3);
    if (v2 != 3 && v3 != 3)
    {

      return sub_1DD3AE554(v2, v3);
    }
  }

  return result;
}

uint64_t sub_1DD639C3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD639CFC(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x786966657270;
  }
}

uint64_t sub_1DD639D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD639C3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD639D5C(uint64_t a1)
{
  v2 = sub_1DD63A138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD639D98(uint64_t a1)
{
  v2 = sub_1DD63A138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Zipcode.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0160, &qword_1DD665C70);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD63A138();
  sub_1DD640EF8();
  v16 = v10;
  v15 = 0;
  sub_1DD63A18C();
  sub_1DD640C08();
  if (!v2)
  {
    v14 = 1;
    sub_1DD640C18();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t Zipcode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0178, &qword_1DD665C78);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD63A138();
  sub_1DD640ED8();
  if (!v2)
  {
    v18 = 0;
    sub_1DD63A1E0();
    sub_1DD640B18();
    v11 = v19;
    v17 = 1;
    v13 = sub_1DD640B28();
    v15 = v14;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD63A138()
{
  result = qword_1ECCE0168;
  if (!qword_1ECCE0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0168);
  }

  return result;
}

unint64_t sub_1DD63A18C()
{
  result = qword_1ECCE0170;
  if (!qword_1ECCE0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0170);
  }

  return result;
}

unint64_t sub_1DD63A1E0()
{
  result = qword_1ECCE0180;
  if (!qword_1ECCE0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0180);
  }

  return result;
}

unint64_t sub_1DD63A238()
{
  result = qword_1ECCE0188;
  if (!qword_1ECCE0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0188);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Zipcode.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Zipcode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD63A458()
{
  result = qword_1ECCE0190;
  if (!qword_1ECCE0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0190);
  }

  return result;
}

unint64_t sub_1DD63A4B0()
{
  result = qword_1ECCE0198;
  if (!qword_1ECCE0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0198);
  }

  return result;
}

unint64_t sub_1DD63A508()
{
  result = qword_1ECCE01A0;
  if (!qword_1ECCE01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE01A0);
  }

  return result;
}

unint64_t sub_1DD63A55C()
{
  result = qword_1ECCE01A8;
  if (!qword_1ECCE01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE01A8);
  }

  return result;
}

id sub_1DD63A628(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x737475706E69 && a2 == 0xE600000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD63A748()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_1DD640268();

  return v2;
}

id sub_1DD63A7A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1DD63FDA8();
  v5 = [v3 featureValueForName_];

  return v5;
}

id sub_1DD63A808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_1DD63A884()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1DD63A9EC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1DD63FDA8();
  v5 = [v3 featureValueForName_];

  if (!v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = [v5 multiArrayValue];

  if (!v6)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1DD63AA6C()
{
  v1 = *(v0 + 16);
  v2 = sub_1DD63FDA8();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

id sub_1DD63AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_1DD63AC28(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1DD63AC94(a1, v2);

  return v3;
}

uint64_t sub_1DD63AC94(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for ContactInference_v3_24_0_enlifeOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1DD63AD90(void *a1)
{
  v3 = sub_1DD63CE68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1DD63B208();
  sub_1DD51FA60();
  (*(v4 + 16))(v6, v9, v3);
  v10 = sub_1DD551650(v6, a1);
  if (v1)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v12 = v10;
  (*(v4 + 8))(v9, v3);
  type metadata accessor for MessageAppPredictorPeopleCentric();
  OUTLINED_FUNCTION_57();
  result = swift_allocObject();
  *(result + 16) = v12;
  return result;
}

id sub_1DD63AFC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 88 && a2 == 0xE100000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

id sub_1DD63B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_1DD63B1B0()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_57();

  return swift_deallocClassInstance();
}

void sub_1DD63B208()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1DD63C6B4(0xD000000000000020, 0x80000001DD666100, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1DD63CE48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD63B2C4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1DD63B330(a1, v2);

  return v3;
}

uint64_t sub_1DD63B330(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MessageAppPredictorPeopleCentricOutput();
    OUTLINED_FUNCTION_57();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1DD63B404(void *a1)
{
  type metadata accessor for MessageAppPredictorPeopleCentricInput();
  OUTLINED_FUNCTION_57();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = sub_1DD63B2C4(v2);

  return v4;
}

uint64_t sub_1DD63B46C()
{
  OUTLINED_FUNCTION_57();

  return swift_deallocClassInstance();
}

id sub_1DD63B540(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E695F6C65646F6DLL && a2 == 0xEB00000000747570;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

void sub_1DD63B5FC()
{
  v1 = *(v0 + 16);
  v2 = sub_1DD63FDA8();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

id sub_1DD63B718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

void sub_1DD63B7B8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1DD63C6B4(0xD000000000000019, 0x80000001DD6661A0, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1DD63CE48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD63B874(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1DD63B8E0(a1, v2);

  return v3;
}

uint64_t sub_1DD63B8E0(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for PervasiveEntityResolutionOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1DD63B9DC(void *a1)
{
  v3 = sub_1DD63CE68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1DD63BE48();
  sub_1DD51FA60();
  (*(v4 + 16))(v6, v9, v3);
  v10 = sub_1DD551650(v6, a1);
  if (v1)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v12 = v10;
  (*(v4 + 8))(v9, v3);
  type metadata accessor for PhoneAppPredictor();
  OUTLINED_FUNCTION_57();
  result = swift_allocObject();
  *(result + 16) = v12;
  return result;
}

id sub_1DD63BBC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 88 && a2 == 0xE100000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {
    v6 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v8 = a1 == 0x745F6E69616D6F64 && a2 == 0xEB00000000657079;
  if (v8 || (sub_1DD640CD8() & 1) != 0)
  {
    v6 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_1DD63BCCC()
{
  sub_1DD63BCA4();

  return swift_deallocClassInstance();
}

id sub_1DD63BDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

void sub_1DD63BE48()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1DD63C6B4(0xD000000000000011, 0x80000001DD666220, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1DD63CE48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD63BF04(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1DD63BF70(a1, v2);

  return v3;
}

uint64_t sub_1DD63BF70(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for PhoneAppPredictorOutput();
    OUTLINED_FUNCTION_57();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1DD63C044(void *a1, void *a2)
{
  type metadata accessor for PhoneAppPredictorInput();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  v6 = a2;
  v7 = sub_1DD63BF04(v4);

  return v7;
}

uint64_t sub_1DD63C0E4(void *a1)
{
  v3 = sub_1DD63CE68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1DD63C42C();
  sub_1DD51FA60();
  (*(v4 + 16))(v6, v9, v3);
  v10 = sub_1DD551650(v6, a1);
  if (v1)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v12 = v10;
  (*(v4 + 8))(v9, v3);
  type metadata accessor for PhoneAppPredictorPeopleCentric();
  OUTLINED_FUNCTION_57();
  result = swift_allocObject();
  *(result + 16) = v12;
  return result;
}

id sub_1DD63C38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

void sub_1DD63C42C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1DD63C6B4(0xD00000000000001ELL, 0x80000001DD6662C0, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1DD63CE48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD63C4E8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1DD63C554(a1, v2);

  return v3;
}

uint64_t sub_1DD63C554(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for PhoneAppPredictorPeopleCentricOutput();
    OUTLINED_FUNCTION_57();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1DD63C628(void *a1)
{
  type metadata accessor for PhoneAppPredictorPeopleCentricInput();
  OUTLINED_FUNCTION_57();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = sub_1DD63C4E8(v2);

  return v4;
}

id sub_1DD63C6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1DD63FDA8();

  v7 = sub_1DD63FDA8();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x1EEDCCB60](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}