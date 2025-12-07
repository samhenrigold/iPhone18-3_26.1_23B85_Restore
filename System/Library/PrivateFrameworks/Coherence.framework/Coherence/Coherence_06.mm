id sub_1ADE513A4@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_1ADDEE524(0, &qword_1EB5BA0E8, 0x1E696AEC0);
  *a1 = v4;

  return v4;
}

unint64_t sub_1ADE51410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA060, &qword_1AE241840);
    v3 = sub_1AE23DCDC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1ADDD86D8(v5, v6);

      result = sub_1ADDDE7CC(v5, v6);
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

unint64_t sub_1ADE51518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0B0, &qword_1AE241890);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA0B8, &qword_1AE241898);
    v7 = sub_1AE23DCDC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v9, v5, &qword_1EB5BA0B0, &qword_1AE241890);
      result = sub_1ADDD8A6C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Replica(0);
      sub_1ADE5223C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for Replica);
      v16 = v7[7];
      v17 = sub_1AE23C12C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1ADE51758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA008, &qword_1AE2417F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA010, &qword_1AE2417F8);
    v7 = sub_1AE23DCDC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v9, v5, &qword_1EB5BA008, &qword_1AE2417F0);
      result = sub_1ADF4A4C0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1AE23DBCC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1ADDEE390(&v5[v8], (v7[7] + 32 * v13));
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

unint64_t sub_1ADE51944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA050, &qword_1AE241830);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA058, &qword_1AE241838);
    v7 = sub_1AE23DCDC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v9, v5, &qword_1EB5BA050, &qword_1AE241830);
      result = sub_1ADDDF300(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1AE23BFEC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
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

uint64_t sub_1ADE51B2C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

double sub_1ADE51B48(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1ADE51BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE51BF4(a1, a2, a3);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1ADE51BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9FF0;
  if (!qword_1EB5B9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9FF0);
  }

  return result;
}

unint64_t sub_1ADE51C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADE51C70(a1, a2, a3);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ADE51C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B9FF8;
  if (!qword_1EB5B9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B9FF8);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CRString.ObservableDifference.Edit(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRString.ObservableDifference.Edit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CRAsset(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for CRAsset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1ADE51EAC()
{
  result = qword_1EB5BA018;
  if (!qword_1EB5BA018)
  {
    sub_1AE23C32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA018);
  }

  return result;
}

void sub_1ADE51F04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    sub_1ADE51F18(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1ADE51F18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 3u)
  {
    if (a7 > 1u)
    {
      if (a7 != 2)
      {
        if (a7 != 3)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if (!a7)
    {
      goto LABEL_20;
    }

LABEL_13:
    sub_1ADDD86D8(a1, a2);

LABEL_17:

    return;
  }

  if (a7 <= 5u)
  {
    if (a7 != 4 && a7 != 5)
    {
      return;
    }

    goto LABEL_17;
  }

  if (a7 == 6)
  {
    goto LABEL_13;
  }

  if (a7 != 7)
  {
    if (a7 != 8)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_20:
}

double sub_1ADE52030(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_1ADE52044(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

double sub_1ADE52044(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 3u)
  {
    if (a7 > 1u)
    {
      if (a7 != 2)
      {
        if (a7 != 3)
        {
          return result;
        }

        goto LABEL_17;
      }
    }

    else if (!a7)
    {
      goto LABEL_20;
    }

LABEL_13:
    sub_1ADDCC35C(a1, a2);

LABEL_17:

    return result;
  }

  if (a7 <= 5u)
  {
    if (a7 != 4 && a7 != 5)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (a7 == 6)
  {
    goto LABEL_13;
  }

  if (a7 != 7)
  {
    if (a7 != 8)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_20:

  return result;
}

uint64_t sub_1ADE5215C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

double sub_1ADE52174(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1ADE5223C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CRKeyPath.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CRKeyPath.rawValue.getter()
{
  v1 = *v0;
  sub_1ADDD86D8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1ADE52308(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA208, &qword_1AE241BE0);
  if (swift_dynamicCast())
  {
    sub_1ADE23E6C(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1AE23BBDC();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1ADE570DC(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1AE23DADC();
  }

  sub_1ADE56784(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1ADE57144(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  sub_1ADE5684C(sub_1ADE571E4, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1AE23BE4C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1ADE56CA4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1AE23CDFC();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1AE23CE2C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1AE23DADC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1ADE56CA4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1AE23CE0C();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1AE23BE6C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1AE23BE6C();
    sub_1ADDE158C(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1ADDE158C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1ADDD86D8(*&__src[0], *(&__src[0] + 1));

  sub_1ADDCC35C(v32, *(&v32 + 1));
  return v32;
}

double CRKeyPath.init(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v10 = sub_1ADDCC6B4(&unk_1F23BBC58);
  *(&v10 + 1) = v4;
  v5 = sub_1ADDD8E0C(v10);
  v7 = v6;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v5, v7);
  v8 = sub_1AE23BFEC();
  (*(*(v8 - 8) + 8))(a1, v8);
  result = *&v10;
  *a2 = v10;
  return result;
}

void CRKeyPath.init(_:)(_OWORD *a3@<X8>)
{
  v4 = sub_1AE23CD5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = sub_1ADDCC6B4(&unk_1F23BBC80);
  *(&v12 + 1) = v8;
  sub_1AE23CD4C();
  v9 = sub_1AE23CD1C();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1AE23BEEC();
    sub_1ADDE158C(v9, v11);
    *a3 = v12;
  }
}

double CRKeyPath.init(_:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v8 = sub_1ADDCC6B4(&unk_1F23BBCA8);
  *(&v8 + 1) = v6;
  sub_1AE23BEEC();
  sub_1ADDCC35C(a1, a2);
  result = *&v8;
  *a3 = v8;
  return result;
}

double CRKeyPath.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a4@<X8>)
{
  v37 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v33 - v11;
  *&v46 = sub_1ADDCC6B4(&unk_1F23BBCD0);
  *(&v46 + 1) = v13;
  *__dst = 0;
  sub_1AE23CF2C();
  if (__OFADD__(v42, 1))
  {
    goto LABEL_30;
  }

  v33 = v10;
  sub_1AE23BE5C();
  v34 = v6;
  v35 = a1;
  (*(v6 + 16))(v8, a1, a2);
  sub_1AE23CE7C();
  v36 = a2;
  swift_getAssociatedConformanceWitness();
  v14 = AssociatedTypeWitness;
  sub_1AE23D80C();
  v15 = v43;
  if (v43 >> 60 != 15)
  {
    v17 = v42;
    v39 = xmmword_1AE2418F0;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA108, &qword_1AE241920);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = v39;
      v22 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v22 != 2)
        {
          LOBYTE(v23) = 0;
          goto LABEL_20;
        }

        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        v26 = __OFSUB__(v24, v25);
        v23 = v24 - v25;
        if (v26)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (!v22)
        {
          v23 = HIWORD(v15);
          goto LABEL_20;
        }

        LODWORD(v23) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_28;
        }

        v23 = v23;
      }

      if ((v23 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      if (v23 > 0xFF)
      {
        goto LABEL_27;
      }

LABEL_20:
      *(v20 + 32) = v23;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA110, &qword_1AE241928);
      v44 = v27;
      v45 = sub_1ADDCC7D4(&qword_1ED96AA40, &qword_1EB5BA110, &qword_1AE241928, MEMORY[0x1E6969E08]);
      v42 = v21;
      v28 = __swift_project_boxed_opaque_existential_1(&v42, v27);
      v29 = *v28;
      v30 = *(*v28 + 16);
      if (v30)
      {
        if (v30 <= 0xE)
        {
          memset(__dst, 0, sizeof(__dst));
          v41 = v30;
          memcpy(__dst, (v29 + 32), v30);
          v18 = *__dst;
          v19 = v38 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v41 << 16)) << 32);
          v38 = v19;
        }

        else
        {
          sub_1AE23BBCC();
          swift_allocObject();
          v31 = sub_1AE23BB6C();
          v32 = v31;
          if (v30 >= 0x7FFFFFFF)
          {
            sub_1AE23BE2C();
            v18 = swift_allocObject();
            *(v18 + 16) = 0;
            *(v18 + 24) = v30;
            v19 = v32 | 0x8000000000000000;
          }

          else
          {
            v18 = v30 << 32;
            v19 = v31 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v18 = 0;
        v19 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(&v42);
      sub_1AE23BEEC();
      sub_1ADDD86D8(v17, v15);
      sub_1AE23BEEC();
      sub_1ADDE158C(v17, v15);
      sub_1ADDCC35C(v18, v19);
      sub_1ADDE158C(v17, v15);
      sub_1AE23D80C();
      v17 = v42;
      v15 = v43;
    }

    while (v43 >> 60 != 15);
  }

  (*(v34 + 8))(v35, v36);
  (*(v33 + 8))(v12, v14);
  result = *&v46;
  *v37 = v46;
  return result;
}

void *sub_1ADE52F74@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = v4 + 16;
      v7 = *(v4 + 16);
      v8 = *(v9 + 8);
      v10 = __OFSUB__(v8, v7);
      v4 = v8 - v7;
      if (v10)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_12:
    v10 = __OFADD__(v3, v4);
    v11 = v3 + v4;
    if (!v10)
    {
      *a3 = v11;
      return result;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    v4 = BYTE6(v5);
    goto LABEL_12;
  }

LABEL_9:
  v10 = __OFSUB__(HIDWORD(v4), v4);
  LODWORD(v4) = HIDWORD(v4) - v4;
  if (!v10)
  {
    v4 = v4;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

void CRKeyPath.uuid.getter(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2 || *(v4 + 16) == *(v4 + 24))
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (v5)
  {
    if (v4 == v4 >> 32)
    {
      goto LABEL_20;
    }

LABEL_10:
    if (v5 == 2)
    {
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      v8 = __OFSUB__(v6, v7);
      v9 = v6 - v7;
      if (!v8)
      {
        if (v9 < 1)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!__OFSUB__(HIDWORD(v4), v4))
    {
      if (HIDWORD(v4) - v4 < 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_31;
  }

  if ((v3 & 0xFF000000000000) == 0 || !BYTE6(v3))
  {
    goto LABEL_20;
  }

LABEL_16:
  if (sub_1AE23BE8C() == 2)
  {
    if (v5)
    {
      if (v5 == 2)
      {
        v11 = *(v4 + 16);
        v10 = *(v4 + 24);
      }

      else
      {
        v11 = v4;
        v10 = v4 >> 32;
      }
    }

    else
    {
      v11 = 0;
      v10 = BYTE6(v3);
    }

    if (v10 >= 1 && v10 >= v11)
    {
      v15 = sub_1AE23BE7C();
      sub_1ADDFE348(v15, v16, v17);
      v12 = 0;
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
    return;
  }

LABEL_20:
  v12 = 1;
LABEL_21:
  v13 = sub_1AE23BFEC();
  v14 = *(*(v13 - 8) + 56);

  v14(a1, v12, 1, v13);
}

void CRKeyPath.string.getter()
{
  v1 = sub_1AE23CD5C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *v0;
  v2 = v0[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 < 1)
      {
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v4)
  {
    if (!BYTE6(v2))
    {
      return;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v3), v3))
  {
    goto LABEL_23;
  }

  if (HIDWORD(v3) - v3 < 1)
  {
    return;
  }

LABEL_11:
  if (sub_1AE23BE8C() != 1)
  {
    return;
  }

  if (v4)
  {
    if (v4 == 2)
    {
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
    }

    else
    {
      v10 = v3;
      v9 = v3 >> 32;
    }
  }

  else
  {
    v10 = 0;
    v9 = BYTE6(v2);
  }

  if (v9 < 1 || v9 < v10)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v11 = sub_1AE23BE7C();
  v13 = v12;
  sub_1AE23CD4C();
  sub_1AE23CD2C();
  v15 = v14;
  sub_1ADDCC35C(v11, v13);
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

uint64_t CRKeyPath.data.getter()
{
  v34[5] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return 0;
    }

    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 < 1)
      {
        return 0;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_46;
  }

  if (v3)
  {
    if (!__OFSUB__(HIDWORD(v1), v1))
    {
      if (HIDWORD(v1) - v1 >= 1)
      {
        goto LABEL_11;
      }

      return 0;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!BYTE6(v2))
  {
    return 0;
  }

LABEL_11:
  result = sub_1AE23BE8C();
  if (result)
  {
    return 0;
  }

  if (v3 == 2)
  {
    v9 = *(v1 + 16);
    v10 = *(v1 + 24);
  }

  else if (v3 == 1)
  {
    v9 = v1;
    v10 = v1 >> 32;
  }

  else
  {
    v9 = 0;
    v10 = BYTE6(v2);
  }

  if (v10 >= 1 && v10 >= v9)
  {
    v12 = sub_1AE23BE7C();
    v34[3] = MEMORY[0x1E6969080];
    v34[4] = MEMORY[0x1E6969078];
    v34[0] = v12;
    v34[1] = v13;
    v14 = __swift_project_boxed_opaque_existential_1(v34, MEMORY[0x1E6969080]);
    v15 = *v14;
    v16 = v14[1];
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 != 2)
      {
        memset(v32, 0, 14);
        v19 = v32;
        v18 = v32;
        goto LABEL_44;
      }

      v20 = *(v15 + 16);
      v21 = *(v15 + 24);
      v22 = sub_1AE23BB7C();
      if (v22)
      {
        v23 = sub_1AE23BBAC();
        v15 = v20 - v23;
        if (__OFSUB__(v20, v23))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v22 += v15;
      }

      v6 = __OFSUB__(v21, v20);
      v24 = v21 - v20;
      if (!v6)
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v32[0] = *v14;
      LOWORD(v32[1]) = v16;
      BYTE2(v32[1]) = BYTE2(v16);
      BYTE3(v32[1]) = BYTE3(v16);
      BYTE4(v32[1]) = BYTE4(v16);
      BYTE5(v32[1]) = BYTE5(v16);
      v18 = v32 + BYTE6(v16);
      v19 = v32;
LABEL_44:
      sub_1ADDCC920(v19, v18, &v33);
      v31 = v33;
      __swift_destroy_boxed_opaque_existential_1(v34);
      return v31;
    }

    v25 = v15;
    v26 = v15 >> 32;
    v24 = v26 - v25;
    if (v26 >= v25)
    {
      v22 = sub_1AE23BB7C();
      if (!v22)
      {
LABEL_36:
        v28 = sub_1AE23BB9C();
        if (v28 >= v24)
        {
          v29 = v24;
        }

        else
        {
          v29 = v28;
        }

        v30 = (v29 + v22);
        if (v22)
        {
          v18 = v30;
        }

        else
        {
          v18 = 0;
        }

        v19 = v22;
        goto LABEL_44;
      }

      v27 = sub_1AE23BBAC();
      if (!__OFSUB__(v25, v27))
      {
        v22 += v25 - v27;
        goto LABEL_36;
      }

LABEL_49:
      __break(1u);
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __break(1u);
  return result;
}

char *CRKeyPath.components.getter()
{
  v68 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (!v3)
    {
      if ((v2 & 0xFF000000000000) == 0 || !BYTE6(v2))
      {
        return 0;
      }

LABEL_16:
      if (sub_1AE23BE8C() != 3)
      {
        return 0;
      }

      if (v3 == 2)
      {
        v12 = *(v1 + 16);
        v11 = *(v1 + 24);
        v8 = v11 - v12;
        if (!__OFSUB__(v11, v12))
        {
          goto LABEL_27;
        }

        __break(1u);
      }

      else if (v3 == 1)
      {
        if (__OFSUB__(HIDWORD(v1), v1))
        {
          goto LABEL_116;
        }

        v8 = HIDWORD(v1) - v1;
        goto LABEL_27;
      }

      v8 = BYTE6(v2);
LABEL_27:
      v9 = MEMORY[0x1E69E7CC0];
      v13 = 1;
      v55 = v8;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
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
LABEL_116:
          __break(1u);
        }

        if (v8 < v14)
        {
          return v9;
        }

        if (v3 == 2)
        {
          break;
        }

        if (v3 == 1)
        {
          if (v13 < v1 || v13 >= v1 >> 32)
          {
            goto LABEL_106;
          }

          result = sub_1AE23BB7C();
          if (!result)
          {
            __break(1u);
LABEL_118:
            __break(1u);
            return result;
          }

          v15 = result;
          v16 = sub_1AE23BBAC();
          v17 = v13 - v16;
          if (__OFSUB__(v13, v16))
          {
            goto LABEL_108;
          }

          goto LABEL_42;
        }

        if (v13 >= BYTE6(v2))
        {
          goto LABEL_105;
        }

        v64 = v1;
        LOWORD(v65) = v2;
        BYTE2(v65) = BYTE2(v2);
        BYTE3(v65) = BYTE3(v2);
        BYTE4(v65) = BYTE4(v2);
        BYTE5(v65) = BYTE5(v2);
        v19 = *(&v64 + v13);
        v20 = v14 + v19;
        if (__OFADD__(v14, v19))
        {
          goto LABEL_101;
        }

LABEL_47:
        if (v8 < v20)
        {
          return v9;
        }

        if (v20 < v14)
        {
          goto LABEL_102;
        }

        v21 = sub_1AE23BE7C();
        v66 = MEMORY[0x1E6969080];
        v67 = MEMORY[0x1E6969078];
        v64 = v21;
        v65 = v22;
        v23 = __swift_project_boxed_opaque_existential_1(&v64, MEMORY[0x1E6969080]);
        v24 = *v23;
        v25 = v23[1];
        v26 = v25 >> 62;
        if ((v25 >> 62) > 1)
        {
          if (v26 == 2)
          {
            v28 = *(v24 + 16);
            v27 = *(v24 + 24);
            v29 = sub_1AE23BB7C();
            v54 = v19;
            if (v29)
            {
              v30 = v29;
              v31 = sub_1AE23BBAC();
              if (__OFSUB__(v28, v31))
              {
                goto LABEL_112;
              }

              v32 = (v28 - v31 + v30);
              v6 = __OFSUB__(v27, v28);
              v33 = v27 - v28;
              if (v6)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v32 = 0;
              v6 = __OFSUB__(v27, v28);
              v33 = v27 - v28;
              if (v6)
              {
                goto LABEL_111;
              }
            }

            v40 = sub_1AE23BB9C();
            v24 = 0;
            if (v40 >= v33)
            {
              v41 = v33;
            }

            else
            {
              v41 = v40;
            }

            v25 = 0xC000000000000000;
            if (v32)
            {
              LODWORD(v3) = v2 >> 62;
              if (v41)
              {
                if (v41 < 15)
                {
                  memset(__dst, 0, sizeof(__dst));
                  v63 = v41;
                  memcpy(__dst, v32, v41);
                  v24 = *__dst;
                  v25 = v51 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v63 << 16)) << 32);
                  v51 = v25;
                }

                else
                {
                  sub_1AE23BBCC();
                  swift_allocObject();
                  v42 = sub_1AE23BB6C();
                  v43 = v42;
                  if (v41 >= 0x7FFFFFFF)
                  {
                    sub_1AE23BE2C();
                    v24 = swift_allocObject();
                    *(v24 + 16) = 0;
                    *(v24 + 24) = v41;
                    v25 = v43 | 0x8000000000000000;
                  }

                  else
                  {
                    v24 = v41 << 32;
                    v25 = v42 | 0x4000000000000000;
                  }
                }
              }
            }

            else
            {
              LODWORD(v3) = v2 >> 62;
            }

            v19 = v54;
          }
        }

        else if (v26)
        {
          v34 = (v24 >> 32) - v24;
          if (v24 >> 32 < v24)
          {
            goto LABEL_110;
          }

          v35 = sub_1AE23BB7C();
          if (v35)
          {
            v36 = v35;
            v37 = sub_1AE23BBAC();
            if (__OFSUB__(v24, v37))
            {
              goto LABEL_113;
            }

            v38 = v19;
            v39 = (v24 - v37 + v36);
          }

          else
          {
            v38 = v19;
            v39 = 0;
          }

          v44 = sub_1AE23BB9C();
          v24 = 0;
          if (v44 >= v34)
          {
            v45 = v34;
          }

          else
          {
            v45 = v44;
          }

          v25 = 0xC000000000000000;
          if (v39)
          {
            LODWORD(v3) = v2 >> 62;
            if (v45)
            {
              if (v45 < 15)
              {
                memset(__dst, 0, sizeof(__dst));
                v63 = v45;
                memcpy(__dst, v39, v45);
                v24 = *__dst;
                v25 = v52 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v63 << 16)) << 32);
                v52 = v25;
                v19 = v38;
              }

              else
              {
                sub_1AE23BBCC();
                swift_allocObject();
                v46 = sub_1AE23BB6C();
                v47 = v46;
                if (v45 >= 0x7FFFFFFF)
                {
                  sub_1AE23BE2C();
                  v24 = swift_allocObject();
                  *(v24 + 16) = 0;
                  *(v24 + 24) = v45;
                  v25 = v47 | 0x8000000000000000;
                }

                else
                {
                  v24 = v45 << 32;
                  v25 = v46 | 0x4000000000000000;
                }

                v19 = v38;
              }
            }

            else
            {
              v19 = v38;
            }
          }

          else
          {
            LODWORD(v3) = v2 >> 62;
            v19 = v38;
          }
        }

        else
        {
          __src = *v23;
          v57 = v25;
          v58 = BYTE2(v25);
          v59 = BYTE3(v25);
          v60 = BYTE4(v25);
          v61 = BYTE5(v25);
          if (BYTE6(v25))
          {
            if (BYTE6(v25) <= 0xEuLL)
            {
              memset(__dst, 0, sizeof(__dst));
              v63 = BYTE6(v25);
              memcpy(__dst, &__src, BYTE6(v25));
              v24 = *__dst;
              v25 = v53 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v63 << 16)) << 32);
              v53 = v25;
            }

            else
            {
              sub_1AE23BBCC();
              swift_allocObject();
              v24 = BYTE6(v25) << 32;
              v25 = sub_1AE23BB6C() | 0x4000000000000000;
            }
          }

          else
          {
            v24 = 0;
            v25 = 0xC000000000000000;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1ADE5534C(0, *(v9 + 2) + 1, 1, v9);
        }

        v49 = *(v9 + 2);
        v48 = *(v9 + 3);
        if (v49 >= v48 >> 1)
        {
          v9 = sub_1ADE5534C((v48 > 1), v49 + 1, 1, v9);
        }

        *(v9 + 2) = v49 + 1;
        v50 = &v9[16 * v49];
        *(v50 + 4) = v24;
        *(v50 + 5) = v25;
        v6 = __OFADD__(v13, v19 + 1);
        v13 += v19 + 1;
        v8 = v55;
        if (v6)
        {
          goto LABEL_103;
        }
      }

      if (v13 < *(v1 + 16))
      {
        goto LABEL_104;
      }

      if (v13 >= *(v1 + 24))
      {
        goto LABEL_107;
      }

      result = sub_1AE23BB7C();
      if (!result)
      {
        goto LABEL_118;
      }

      v15 = result;
      v18 = sub_1AE23BBAC();
      v17 = v13 - v18;
      if (__OFSUB__(v13, v18))
      {
        goto LABEL_109;
      }

LABEL_42:
      v19 = *(v15 + v17);
      v20 = v14 + v19;
      if (__OFADD__(v14, v19))
      {
        goto LABEL_101;
      }

      goto LABEL_47;
    }

    if (v1 == v1 >> 32)
    {
      return 0;
    }
  }

  if (v3 == 2)
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
      goto LABEL_114;
    }

    if (v7 >= 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      goto LABEL_115;
    }

    if (HIDWORD(v1) - v1 >= 1)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

BOOL static CRKeyPath.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1ADDD86D8(*a1, v3);
  sub_1ADDD86D8(v4, v5);
  v6 = sub_1ADDD6F8C(v2, v3, v4, v5);
  sub_1ADDCC35C(v4, v5);
  sub_1ADDCC35C(v2, v3);
  return v6;
}

void sub_1ADE53D94()
{
  v1 = sub_1AE23BFEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AE23CD5C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = *v0;
  v6 = v0[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_20;
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 < 1)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_49;
  }

  if (!v8)
  {
    if (!BYTE6(v6))
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v7), v7))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

  if (HIDWORD(v7) - v7 < 1)
  {
    goto LABEL_20;
  }

LABEL_11:
  v13 = sub_1AE23BE8C();
  if (v13 <= 1)
  {
    if (!v13)
    {
      sub_1AE23BEAC();
      return;
    }

    *&v50 = 39;
    *(&v50 + 1) = 0xE100000000000000;
    if (v8)
    {
      if (v8 == 2)
      {
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
      }

      else
      {
        v15 = v7;
        v14 = v7 >> 32;
      }
    }

    else
    {
      v15 = 0;
      v14 = BYTE6(v6);
    }

    if (v14 < 1 || v14 < v15)
    {
      goto LABEL_52;
    }

    v42 = sub_1AE23BE7C();
    v44 = v43;
    sub_1AE23CD4C();
    v45 = sub_1AE23CD2C();
    v47 = v46;
    sub_1ADDCC35C(v42, v44);
    if (v47)
    {
      MEMORY[0x1B26FB670](v45, v47);

      MEMORY[0x1B26FB670](39, 0xE100000000000000);
      return;
    }

    goto LABEL_50;
  }

  if (v13 == 2)
  {
    if (v8)
    {
      if (v8 == 2)
      {
        v18 = *(v7 + 16);
        v17 = *(v7 + 24);
      }

      else
      {
        v18 = v7;
        v17 = v7 >> 32;
      }
    }

    else
    {
      v18 = 0;
      v17 = BYTE6(v6);
    }

    if (v17 >= 1 && v17 >= v18)
    {
      v34 = sub_1AE23BE7C();
      sub_1ADDFE348(v34, v35, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1AE241900;
      sub_1AE23BFCC();
      v38 = MEMORY[0x1E69E7508];
      v39 = MEMORY[0x1E69E7558];
      *(v37 + 56) = MEMORY[0x1E69E7508];
      *(v37 + 64) = v39;
      *(v37 + 32) = v40;
      sub_1AE23BFCC();
      *(v37 + 96) = v38;
      *(v37 + 104) = v39;
      *(v37 + 72) = v41;
      sub_1AE23CD3C();
      (*(v2 + 8))(v4, v1);
      return;
    }

    goto LABEL_51;
  }

  if (v13 == 3)
  {
    *&v50 = v7;
    *(&v50 + 1) = v6;
    v19 = CRKeyPath.components.getter();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = *(v20 + 2);
    if (v21)
    {
      v49 = MEMORY[0x1E69E7CC0];
      sub_1ADE0B11C(0, v21, 0);
      v22 = 32;
      v23 = v49;
      do
      {
        v50 = *&v20[v22];
        sub_1ADE53D94();
        v49 = v23;
        v27 = *(v23 + 16);
        v26 = *(v23 + 24);
        if (v27 >= v26 >> 1)
        {
          v29 = v24;
          v30 = v25;
          sub_1ADE0B11C((v26 > 1), v27 + 1, 1);
          v25 = v30;
          v24 = v29;
          v23 = v49;
        }

        *(v23 + 16) = v27 + 1;
        v28 = v23 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = v25;
        v22 += 16;
        --v21;
      }

      while (v21);
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    *&v50 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADDCC7D4(&qword_1EB5B8C10, &qword_1EB5BA250, &unk_1AE251E30, MEMORY[0x1E69E6310]);
    v31 = sub_1AE23CBFC();
    v33 = v32;

    *&v50 = 91;
    *(&v50 + 1) = 0xE100000000000000;
    MEMORY[0x1B26FB670](v31, v33);

    v16 = 93;
    goto LABEL_21;
  }

  if (v13 != 255)
  {
LABEL_20:
    v16 = sub_1AE23BEAC();
    *&v50 = 0x3A6E776F6E6B6E75;
    *(&v50 + 1) = 0xE900000000000020;
LABEL_21:
    MEMORY[0x1B26FB670](v16);
  }
}

uint64_t CRKeyPath.description.getter()
{
  sub_1ADE53D94();
  MEMORY[0x1B26FB670](v0, v1);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return 10278;
}

void CRKeyPath.init(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v60 - v9 + 40;

  v14 = sub_1ADF89BC8(v11, v12, v13);
  v17 = v2;
  if (!v2)
  {
    v27 = v14;
    v28 = v15;

    goto LABEL_5;
  }

  if (*(a1 + 72))
  {
    type metadata accessor for CRDecoder.CRValueContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    sub_1ADE02BFC(inited, v10, v19, v20);
    (*(v5 + 16))(v7, v10, v4);
    v61 = sub_1ADDCC6B4(&unk_1F23BBC08);
    v62 = v21;
    v22 = sub_1ADDD8E0C(v61);
    v59 = 0;
    v23 = v22;
    v25 = v24;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v23, v25);

    v26 = *(v5 + 8);
    v26(v10, v4);
    v26(v7, v4);
    v27 = v61;
    v28 = v62;
LABEL_5:
    v29 = v63;
    *v63 = v27;
    v29[1] = v28;
    return;
  }

  sub_1ADE42E40(v14, v15, v16);
  v30 = swift_allocError();
  *v31 = 0xD000000000000017;
  *(v31 + 8) = 0x80000001AE25FB70;
  *(v31 + 16) = 0;
  v32 = swift_willThrow();
  v35 = *(a1 + 72);
  if (v35)
  {
    v36 = *(v35 + 16);
    if ((~v36 & 0xF000000000000007) != 0 && ((v36 >> 59) & 0x1E | (v36 >> 2) & 1) == 7)
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v37 = &unk_1ED966F48;
    }

    v38 = swift_beginAccess();
    if (v37[8])
    {
      v41 = *(v35 + 16);
      v59 = v30;
      if ((~v41 & 0xF000000000000007) != 0 && ((v41 >> 59) & 0x1E | (v41 >> 2) & 1) == 7)
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v42 = &unk_1ED966F48;
      }

      swift_beginAccess();
      v44 = v42[8];
      v45 = v42[9];
      v46 = v42[10];
      if (v44)
      {
        v47 = v42[8];
      }

      else
      {
        v47 = MEMORY[0x1E69E7CC0];
      }

      if (v44)
      {
        v48 = v42[9];
      }

      else
      {
        v48 = 0;
      }

      if (v44)
      {
        v49 = v42[10];
      }

      else
      {
        v49 = 0xC000000000000000;
      }

      sub_1ADE56F74(v44, v45, v46);
      sub_1ADDE94BC(v47, v48, v49, v60);

      v27 = v60[0];
      v28 = v60[1];
      goto LABEL_5;
    }

    v50 = *(v35 + 16);
    if ((~v50 & 0xF000000000000007) != 0 && ((v51 = (v50 >> 59) & 0x1E | (v50 >> 2) & 1, v51 == 15) || v51 == 16))
    {
      v52 = *(a1 + 40);
      v53 = *(v52 + 16);
      if (v53)
      {
        v54 = *((v50 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        if (v54 < v53)
        {
          v55 = v52 + 16 * v54;
          v56 = v30;
          v27 = *(v55 + 32);
          v28 = *(v55 + 40);

          sub_1ADDD86D8(v27, v28);

          goto LABEL_5;
        }
      }

      sub_1ADE42E40(v38, v39, v40);
      swift_allocError();
      *v58 = 0xD000000000000013;
      *(v58 + 8) = 0x80000001AE25FC60;
      *(v58 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      sub_1ADE42E40(v38, v39, v40);
      swift_allocError();
      *v57 = 0xD00000000000001DLL;
      *(v57 + 8) = 0x80000001AE25FC40;
      *(v57 + 16) = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1ADE42E40(v32, v33, v34);
    swift_allocError();
    *v43 = 0xD000000000000017;
    *(v43 + 8) = 0x80000001AE25FB70;
    *(v43 + 16) = 0;
    swift_willThrow();
  }
}

double CRKeyPath.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    sub_1ADE6D26C(v5, v6);
  }

  return result;
}

uint64_t CRKeyPath.hashValue.getter()
{
  sub_1AE23E31C();
  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE5498C()
{
  sub_1AE23E31C();
  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE549E0(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADE54A28()
{
  sub_1ADE53D94();
  MEMORY[0x1B26FB670](v0, v1);

  MEMORY[0x1B26FB670](41, 0xE100000000000000);
  return 10278;
}

double sub_1ADE54ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  sub_1ADE71C08(a1, a2, a3);
  if (!v4)
  {

    sub_1ADE6D26C(v5, v6);
  }

  return result;
}

uint64_t sub_1ADE54BA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  __s2[2] = *MEMORY[0x1E69E9840];
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(__s2, 0, 14);
      if (!result)
      {
        goto LABEL_47;
      }

      v13 = a5;
      result = memcmp(result, __s2, (a2 - result) & ((a2 - result) >> 63));
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_46;
      }

      if (!result)
      {
        v41 = a6 >> 62;
        if ((a6 >> 62) <= 1)
        {
          if (!v41)
          {
            LOBYTE(v26) = 0;
            goto LABEL_95;
          }

          LODWORD(v46) = HIDWORD(v13) - v13;
          if (__OFSUB__(HIDWORD(v13), v13))
          {
            goto LABEL_103;
          }

          v46 = v46;
LABEL_79:
          v26 = v46 >> 63;
          goto LABEL_95;
        }

LABEL_62:
        if (v41 != 2)
        {
          LOBYTE(v26) = 0;
          goto LABEL_95;
        }

        v37 = *(v13 + 16);
        v45 = *(v13 + 24);
        v24 = __OFSUB__(v45, v37);
        v46 = v45 - v37;
        if (!v24)
        {
          goto LABEL_79;
        }

        __break(1u);
LABEL_66:
        v38 = v57;
        if (v37 != 2)
        {
          v39 = 0;
          goto LABEL_87;
        }

        v48 = *(v56 + 16);
        v47 = *(v56 + 24);
        v24 = __OFSUB__(v47, v48);
        v39 = v47 - v48;
        if (!v24)
        {
LABEL_87:
          v24 = __OFSUB__(HIDWORD(v38), v38);
          v51 = HIDWORD(v38) - v38;
          if (!v24)
          {
            v17 = v39 < v51;
            goto LABEL_92;
          }

          goto LABEL_100;
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_49:
      LOBYTE(v26) = 0;
      goto LABEL_95;
    }

    v57 = a3;
    v56 = a5;
    v19 = result;
    v21 = *(a3 + 16);
    v20 = *(a3 + 24);
    v22 = sub_1AE23BB7C();
    if (v22)
    {
      v23 = sub_1AE23BBAC();
      if (__OFSUB__(v21, v23))
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v22 += v21 - v23;
    }

    v24 = __OFSUB__(v20, v21);
    v25 = v20 - v21;
    if (!v24)
    {
      result = sub_1AE23BB9C();
      LOBYTE(v26) = 0;
      if (v19 && v22)
      {
        v13 = v7;
        if (result >= v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = result;
        }

        if (v27 >= a2 - v19)
        {
          v28 = a2 - v19;
        }

        else
        {
          v28 = v27;
        }

        result = memcmp(v19, v22, v28);
        if ((result & 0x80000000) != 0)
        {
          LOBYTE(v26) = 1;
          goto LABEL_95;
        }

        if (result)
        {
          LOBYTE(v26) = 0;
          goto LABEL_95;
        }

        v39 = a6 >> 62;
        if ((a6 >> 62) <= 1)
        {
          v42 = v57;
          if (v39)
          {
            LODWORD(v15) = HIDWORD(v56) - v56;
            if (__OFSUB__(HIDWORD(v56), v56))
            {
              goto LABEL_105;
            }

            v15 = v15;
          }

          else
          {
            v15 = BYTE6(a6);
          }

          goto LABEL_90;
        }

LABEL_70:
        v42 = v57;
        if (v39 == 2)
        {
          v50 = *(v56 + 16);
          v49 = *(v56 + 24);
          v24 = __OFSUB__(v49, v50);
          v15 = v49 - v50;
          if (v24)
          {
            __break(1u);
            goto LABEL_74;
          }
        }

        else
        {
          v15 = 0;
        }

LABEL_90:
        v54 = v42 + 16;
        v52 = *(v42 + 16);
        v53 = *(v54 + 8);
        v24 = __OFSUB__(v53, v52);
        v55 = v53 - v52;
        if (!v24)
        {
          v17 = v15 < v55;
LABEL_92:
          LOBYTE(v26) = v17;
          goto LABEL_95;
        }

LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      goto LABEL_95;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (!v10)
  {
    __s2[0] = a3;
    LOWORD(__s2[1]) = a4;
    BYTE2(__s2[1]) = BYTE2(a4);
    BYTE3(__s2[1]) = BYTE3(a4);
    BYTE4(__s2[1]) = BYTE4(a4);
    BYTE5(__s2[1]) = BYTE5(a4);
    if (!result)
    {
      goto LABEL_47;
    }

    v13 = BYTE6(a4);
    if (BYTE6(a4) >= a2 - result)
    {
      v14 = a2 - result;
    }

    else
    {
      v14 = BYTE6(a4);
    }

    result = memcmp(result, __s2, v14);
    if ((result & 0x80000000) == 0)
    {
      if (!result)
      {
        v15 = a5;
        v16 = a6 >> 62;
        if ((a6 >> 62) <= 1)
        {
          if (!v16)
          {
            v17 = BYTE6(a6) < BYTE6(a4);
            goto LABEL_92;
          }

LABEL_74:
          LODWORD(v41) = HIDWORD(v15) - v15;
          if (!__OFSUB__(HIDWORD(v15), v15))
          {
            v41 = v41;
LABEL_76:
            v17 = v41 < v13;
            goto LABEL_92;
          }

          goto LABEL_102;
        }

        if (v16 != 2)
        {
          v17 = BYTE6(a4) != 0;
          goto LABEL_92;
        }

        v44 = *(a5 + 16);
        v43 = *(a5 + 24);
        v24 = __OFSUB__(v43, v44);
        v41 = v43 - v44;
        if (!v24)
        {
          goto LABEL_76;
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_47:
      LOBYTE(v26) = 0;
      goto LABEL_95;
    }

LABEL_46:
    LOBYTE(v26) = 1;
    goto LABEL_95;
  }

  v29 = a3;
  v30 = (a3 >> 32) - a3;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_97;
  }

  v57 = a3;
  v56 = a5;
  v32 = result;
  v33 = sub_1AE23BB7C();
  if (v33)
  {
    v34 = sub_1AE23BBAC();
    if (!__OFSUB__(v29, v34))
    {
      v33 += v29 - v34;
      goto LABEL_31;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

LABEL_31:
  v13 = a4 & 0x3FFFFFFFFFFFFFFFLL;
  result = sub_1AE23BB9C();
  LOBYTE(v26) = 0;
  if (v32 && v33)
  {
    if (result >= v30)
    {
      v35 = v30;
    }

    else
    {
      v35 = result;
    }

    if (v35 >= a2 - v32)
    {
      v36 = a2 - v32;
    }

    else
    {
      v36 = v35;
    }

    result = memcmp(v32, v33, v36);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    if (!result)
    {
      v37 = a6 >> 62;
      if ((a6 >> 62) <= 1)
      {
        v38 = v57;
        if (v37)
        {
          LODWORD(v39) = HIDWORD(v56) - v56;
          if (__OFSUB__(HIDWORD(v56), v56))
          {
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
          }

          v39 = v39;
        }

        else
        {
          v39 = BYTE6(a6);
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

    goto LABEL_49;
  }

LABEL_95:
  *a7 = v26;
  return result;
}

uint64_t CRKeyPath.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E38C();
  if (!v2)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1ADE56FBC(v5, v6, v7);
    sub_1AE23E03C();
    __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CRKeyPath.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23E3BC();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1ADE57060(v4, v5, v6);
  sub_1AE23E06C();
  sub_1ADDCC35C(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void *sub_1ADE551C0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1ADE55240(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1ADE5534C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1ADE55498(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA178, &qword_1AE241B70);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1ADE555A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA158, &unk_1AE242220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE556CC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1ADE557D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA188, &unk_1AE242290);
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

char *sub_1ADE558CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA180, &qword_1AE241B78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1ADE559C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA260, &qword_1AE241C18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_1ADE55AE4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1B8, &qword_1AE241BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1C0, &qword_1AE241BA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE55C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA248, &qword_1AE241C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE55D60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1C8, &qword_1AE241BB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1ADE55E64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA220, &qword_1AE241BF8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1ADE55F84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1A8, &qword_1AE241B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1ADE56088(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1A0, &qword_1AE241B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE561AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA190, &qword_1AE241B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ADE562C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA198, &qword_1AE241B88);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1ADE563E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1ADE564E4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1E8, &unk_1AE2422E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F0, &qword_1AE241BD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ADE5662C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1D8, &qword_1AE241BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1E0, &qword_1AE241BC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_1ADE56784@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1ADDCC868(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1AE23BBCC();
      swift_allocObject();
      v8 = sub_1AE23BB6C();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1AE23BE2C();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_1ADE5684C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v17, 0, 15);
      a1(&v15, v17, v17);
      return;
    }

    sub_1ADDCC35C(v7, v6);
    v15 = v7;
    v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1AE241910;
    sub_1ADDCC35C(0, 0xC000000000000000);
    sub_1AE23BDEC();
    sub_1ADE56BF0(*(v15 + 16), *(v15 + 24), a1);
    v10 = v16 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v15;
      v4[1] = v10;
      return;
    }

    *v4 = v15;
    goto LABEL_18;
  }

  if (!v8)
  {
    sub_1ADDCC35C(v7, v6);
    v17[0] = v7;
    LOWORD(v17[1]) = v6;
    BYTE2(v17[1]) = BYTE2(v6);
    BYTE3(v17[1]) = BYTE3(v6);
    BYTE4(v17[1]) = BYTE4(v6);
    BYTE5(v17[1]) = BYTE5(v6);
    BYTE6(v17[1]) = BYTE6(v6);
    a1(&v15, v17, v17 + BYTE6(v6));
    v9 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
    *v4 = v17[0];
    v4[1] = v9;
    return;
  }

  v11 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1ADDCC35C(v7, v6);
  *v4 = xmmword_1AE241910;
  sub_1ADDCC35C(0, 0xC000000000000000);
  v12 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v12 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_1AE23BB7C() && __OFSUB__(v7, sub_1AE23BBAC()))
    {
LABEL_22:
      __break(1u);
    }

    sub_1AE23BBCC();
    swift_allocObject();
    v13 = sub_1AE23BB5C();

    v11 = v13;
  }

  if (v12 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_1ADE56BF0(v7, v7 >> 32, a1);

  v10 = v11 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v10;
    return;
  }

  *v4 = v7;
  v4[1] = v10;
}

char *sub_1ADE56BF0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1AE23BB7C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1AE23BBAC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1AE23BB9C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_1ADE56CA4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1AE23CE3C();
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
    v5 = MEMORY[0x1B26FB6C0](15, a1 >> 16);
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

uint64_t sub_1ADE56D20@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1AE23DA3C();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE56D70(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v16, 0, 14);
      v8 = a1;
      sub_1ADDD86D8(a3, a4);
      v9 = v16;
      goto LABEL_9;
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v16[0] = a1;
      LOWORD(v16[1]) = a2;
      BYTE2(v16[1]) = BYTE2(a2);
      BYTE3(v16[1]) = BYTE3(a2);
      BYTE4(v16[1]) = BYTE4(a2);
      BYTE5(v16[1]) = BYTE5(a2);
      v8 = a1;
      sub_1ADDD86D8(a3, a4);
      v9 = v16 + BYTE6(a2);
LABEL_9:
      sub_1ADE54BA0(v16, v9, a3, a4, v8, a2, &v15);
      sub_1ADDCC35C(a3, a4);
      sub_1ADDCC35C(v8, a2);
      v13 = v15;
      return v13 & 1;
    }

    v10 = a1;
    v11 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1ADDD86D8(a3, a4);
  sub_1ADDD86D8(a1, a2);
  v13 = sub_1ADECB664(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, a1, a2);
  sub_1ADDCC35C(a3, a4);
  sub_1ADDCC35C(a1, a2);
  return v13 & 1;
}

uint64_t sub_1ADE56F74(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_1ADDD86D8(a2, a3);
  }

  return result;
}

unint64_t sub_1ADE56FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA118;
  if (!qword_1EB5BA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA118);
  }

  return result;
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

unint64_t sub_1ADE57060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BA120;
  if (!qword_1EB5BA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BA120);
  }

  return result;
}

unint64_t sub_1ADE570B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADDDF200(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADE570DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA210, &qword_1AE241BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADE57144(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1AE1A3858(result);
    }

    else
    {
      sub_1AE23BBCC();
      swift_allocObject();
      sub_1AE23BB8C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1AE23BE2C();
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

void *sub_1ADE571E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1ADE551C0(sub_1ADE5724C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void *sub_1ADE5726C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *v3;
  swift_getWitnessTable();
  result = sub_1AE23D4FC();
  if ((v10 & 1) == 0)
  {
    sub_1AE23D0EC();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_1ADE57398(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3[1];
  v16[7] = *v3;
  v16[8] = v5;
  v6 = a3[3];
  v12 = a3[2];
  v13 = v6;
  v14 = a3[4];
  v15 = a1;
  v7 = type metadata accessor for TreeNode(255, v12, v6, v14);

  v16[0] = v12;
  v16[1] = v7;
  v16[2] = v6;
  v16[3] = v14;
  v16[4] = &off_1F23C93F8;
  v16[5] = swift_getWitnessTable();
  v8 = type metadata accessor for CROrderedDictionary(0, v16);
  v9 = CROrderedDictionary.index(where:)(sub_1ADE5E670, &v11, v8);
  LOBYTE(v5) = v10;

  if ((v5 & 1) == 0)
  {
    sub_1AE017788(a2, v9, v8);
  }
}

uint64_t sub_1ADE574C4(void (*a1)(void, void), uint64_t a2, int64_t a3, int a4, void *a5)
{
  v6 = v5;
  v162 = a4;
  v191 = a1;
  v10 = a5[2];
  v11 = a5[3];
  v12 = a5[4];
  v13 = type metadata accessor for TreeNode(255, v10, v11, v12);
  v164 = sub_1AE23D7CC();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v160 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v157 = &v156 - v16;
  v182 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v174 = (&v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v156 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v168 = &v156 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v169 = &v156 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v170 = &v156 - v27;
  v28 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v28);
  v161 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v158 = &v156 - v31;
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](&v156 - v33);
  v165 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v173 = &v156 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v175 = &v156 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v46 = MEMORY[0x1EEE9AC00](v40);
  v48 = &v156 - v47;
  v183 = a3;
  if (a3 < 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v172 = v42;
  v167 = v21;
  v49 = *(v45 + 16);
  v50 = v41;
  v189 = v44;
  v190 = a2;
  v51 = v43;
  v187 = v45 + 16;
  v181 = v49;
  v49(v46);
  v177 = v50;
  v178 = v11;
  sub_1ADE1E114(v50, v10, v48);
  v52 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  v188 = v52;
  v176 = WitnessTable;
  sub_1AE23CB7C();
  v171 = v51;
  v54 = *(v51 + 8);
  v185 = v51 + 8;
  v186 = v13;
  v184 = v54;
  v54(v48, v13);
  if (v194)
  {
    v55 = sub_1AE23D0AC();
  }

  else
  {
    v55 = 0;
  }

  if (v55 < v183)
  {
    goto LABEL_47;
  }

  v179 = v10;
  v56 = v12;
  v57 = *v6;
  v58 = v6[1];
  v59 = v6[2];
  v60 = v6[3];
  v166 = v6 + 3;
  v194 = v57;
  v195 = v58;
  v196 = v59;
  v197 = v60;

  v61 = v190;
  v62 = v191;
  LOBYTE(v58) = sub_1AE180290(v191, v190, a5);
  v63 = a5;

  if ((v58 & 1) == 0)
  {
LABEL_15:
    v87 = 0;
    v88 = 0;
    return sub_1ADDDCE80(v87, v88);
  }

  sub_1AE18065C(v62, a5);
  v64 = v177;
  (v181)(v177, v61, v189);
  v65 = v172;
  v66 = v179;
  sub_1ADE1E114(v64, v179, v172);
  v67 = v6;
  v68 = v186;
  sub_1AE23CB7C();
  v184(v65, v68);
  v69 = v194;
  v156 = v63;
  v180 = v6;
  v159 = v12;
  if (!v194)
  {
    goto LABEL_17;
  }

  v70 = sub_1AE23D0AC();
  if (v70 <= 0)
  {

LABEL_17:
    v89 = v12;
    v90 = v177;
    v91 = v190;
    v92 = v181;
    (v181)(v177, v190, v189);
    v93 = v175;
    v94 = v179;
    v95 = v178;
    sub_1ADE1E114(v90, v179, v175);
    v96 = swift_getWitnessTable();
    v194 = v94;
    v195 = v68;
    v196 = v95;
    v197 = v89;
    v198 = &off_1F23C93F8;
    v199 = v96;
    v97 = type metadata accessor for CROrderedDictionary(0, &v194);
    v98 = v191;
    v172 = v97;
    CROrderedDictionary.append(value:forKey:)(v93, v191, v97);
    v184(v93, v68);
    (v92)(v90, v91, v189);
    v99 = v90;
    v100 = v165;
    sub_1ADE1E114(v99, v94, v165);
    v101 = swift_allocObject();
    v101[2] = v94;
    v101[3] = v95;
    v101[4] = v89;
    v102 = *(v182 + 16);
    v177 = v182 + 16;
    v173 = v102;
    (v102)(v174, v98, v94);
    v88 = swift_allocObject();
    v88[2] = v94;
    v88[3] = v95;
    v88[4] = v89;
    v88[5] = sub_1ADE5E694;
    v183 = v101;
    v88[6] = v101;
    swift_isUniquelyReferenced_nonNull_native();
    v103 = v67[2];
    v194 = v103;
    v104 = v176;
    sub_1ADDFFB6C(v100, v68, v176);
    if (!__OFADD__(*(v103 + 16), (v105 & 1) == 0))
    {
      v106 = v105;
      sub_1AE23DC0C();
      v107 = sub_1AE23DBEC();
      if (v107)
      {
        v107 = sub_1ADDFFB6C(v100, v68, v104);
        if ((v106 & 1) != (v108 & 1))
        {
          goto LABEL_53;
        }
      }

      v180[2] = v194;
      if ((v106 & 1) == 0)
      {
        v194 = (v88[5])(v107);
        (*(v171 + 16))(v175, v100, v186);
        sub_1AE23DBFC();
      }

      sub_1AE23D0CC();
      v109 = v186;
      v184(v100, v186);
      v110 = v182;
      v111 = *(v182 + 48);
      v112 = v190;
      v113 = v179;
      if (v111(v190, 1, v179) == 1)
      {
        goto LABEL_25;
      }

      v114 = *v180;
      v115 = v180[1];
      v116 = v161;
      (v181)(v161, v112, v189);
      if (v111(v116, 1, v113) == 1)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v194 = v114;
      v195 = v115;
      v117 = v160;
      CROrderedDictionary.subscript.getter(v116, v172);
      v118 = (*(v171 + 48))(v117, 1, v109);
      (*(v163 + 8))(v117, v164);
      v110 = v182;
      (*(v182 + 8))(v116, v113);
      v87 = sub_1ADE5E6B4;
      if (v118 == 1)
      {
LABEL_25:
        v119 = v191;
        (v173)(v167, v191, v113);
        sub_1AE23D38C();
        v120 = v168;
        sub_1AE23D33C();
        (*(v110 + 8))(v120, v113);
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v87 = sub_1ADE5E6B4;
        v125 = sub_1ADE5E694;
      }

      else
      {
        v125 = sub_1ADE5E694;
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v119 = v191;
      }

      v154 = v183;
LABEL_44:
      sub_1AE180C48(v119, v156);
      sub_1ADDDCE80(v121, v122);
      sub_1ADDDCE80(v123, v124);
      sub_1ADDDCE80(v125, v154);
      return sub_1ADDDCE80(v87, v88);
    }

    goto LABEL_48;
  }

  v71 = v70;
  v72 = v183;
  v73 = v170;
  v172 = v69;
  sub_1AE23D15C();
  v74 = *v67;
  v75 = v67[1];
  v192 = v74;
  v193 = v75;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v178;
  *(&v156 - 4) = v66;
  *(&v156 - 3) = v76;
  *(&v156 - 2) = v56;
  *(&v156 - 1) = v73;

  v77 = swift_getWitnessTable();
  v194 = v66;
  v195 = v68;
  v78 = v76;
  v196 = v76;
  v197 = v56;
  v198 = &off_1F23C93F8;
  v199 = v77;
  v174 = type metadata accessor for CROrderedDictionary(0, &v194);
  v79 = CROrderedDictionary.index(where:)(sub_1ADE5E698, (&v156 - 6), v174);
  v81 = v80;

  if (v81)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v82 = v66;
  v84 = v190;
  v83 = v191;
  v85 = v177;
  if (v71 != v72)
  {
    v126 = v181;
    v127 = v175;
    goto LABEL_26;
  }

  v86 = __OFADD__(v79, 1);
  v79 = (v79 + 1);
  v126 = v181;
  v127 = v175;
  if (v86)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_26:
  v128 = v126;
  if (v162)
  {
    (v126)(v177, v190, v189);
    v129 = v159;
    sub_1ADE1E114(v85, v82, v127);
    CROrderedDictionary.moveOrInsert(value:forKey:to:)(v127, v83, v79, v174);
  }

  else
  {
    (v126)(v177, v190, v189);
    v129 = v159;
    sub_1ADE1E114(v85, v82, v127);
    CROrderedDictionary.insert(value:forKey:at:)(v127, v83, v79, v174);
  }

  v130 = v127;
  v131 = v186;
  v184(v130, v186);
  (v128)(v85, v84, v189);
  v132 = v173;
  sub_1ADE1E114(v85, v82, v173);
  v133 = swift_allocObject();
  v133[2] = v82;
  v133[3] = v78;
  v133[4] = v129;
  v134 = *(v182 + 16);
  v177 = v182 + 16;
  v165 = v134;
  (v134)(v169, v83, v82);
  v124 = swift_allocObject();
  v124[2] = v82;
  v124[3] = v78;
  v124[4] = v129;
  v124[5] = sub_1ADE5E694;
  v178 = v133;
  v124[6] = v133;
  v135 = v180;
  swift_isUniquelyReferenced_nonNull_native();
  v136 = v135[2];
  v137 = v131;
  v194 = v136;
  v138 = v176;
  sub_1ADDFFB6C(v132, v131, v176);
  if (__OFADD__(*(v136 + 16), (v139 & 1) == 0))
  {
    goto LABEL_49;
  }

  v140 = v139;
  sub_1AE23DC0C();
  v141 = sub_1AE23DBEC();
  if ((v141 & 1) == 0)
  {
    v143 = v182;
LABEL_34:
    v180[2] = v194;
    if ((v140 & 1) == 0)
    {
      v194 = (v124[5])(v141);
      (*(v171 + 16))(v175, v173, v186);
      sub_1AE23DBFC();
    }

    sub_1AE23D0DC();
    v184(v173, v186);
    v144 = *(v143 + 48);
    v145 = v190;
    if (v144(v190, 1, v82) == 1)
    {

      v122 = v178;
      goto LABEL_40;
    }

    v146 = *v180;
    v147 = v180[1];
    v148 = v158;
    (v181)(v158, v145, v189);
    v149 = v144(v148, 1, v82);
    v122 = v178;
    if (v149 != 1)
    {

      v194 = v146;
      v195 = v147;
      v150 = v157;
      CROrderedDictionary.subscript.getter(v148, v174);
      v151 = (*(v171 + 48))(v150, 1, v186);
      (*(v163 + 8))(v150, v164);
      v143 = v182;
      v152 = *(v182 + 8);
      v152(v148, v82);
      if (v151 != 1)
      {
LABEL_43:
        v152(v170, v82);
        v125 = 0;
        v154 = 0;
        v87 = 0;
        v88 = 0;
        v123 = sub_1ADE5E6B4;
        v121 = sub_1ADE5E694;
        v119 = v191;
        goto LABEL_44;
      }

LABEL_40:
      (v165)(v167, v191, v82);
      sub_1AE23D38C();
      v153 = v168;
      sub_1AE23D33C();
      v152 = *(v143 + 8);
      v152(v153, v82);
      goto LABEL_43;
    }

    goto LABEL_52;
  }

  v141 = sub_1ADDFFB6C(v173, v137, v138);
  v143 = v182;
  if ((v140 & 1) == (v142 & 1))
  {
    goto LABEL_34;
  }

LABEL_53:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t CROrderedTree.insert(_:toParent:at:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v140 = a2;
  v139 = a1;
  v6 = a4[2];
  v137 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v134 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v115 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v115 - v11;
  v13 = sub_1AE23D7CC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v115 - v17;
  v20 = a4[3];
  v19 = a4[4];
  v138 = a4;
  v21 = type metadata accessor for TreeNode(0, v6, v20, v19);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](&v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v31 = MEMORY[0x1EEE9AC00](v25);
  v33 = &v115 - v32;
  v142 = a3;
  if (a3 < 0)
  {
    goto LABEL_22;
  }

  v130 = v27;
  v120 = v26;
  v124 = v30;
  v125 = v12;
  v122 = v29;
  v123 = v14;
  v34 = *(v14 + 16);
  v129 = v13;
  v35 = v13;
  v36 = v28;
  v132 = v14 + 16;
  v128 = v34;
  (v34)(v18, v140, v35, v31);
  v127 = v18;
  v133 = v19;
  sub_1ADE1E114(v18, v6, v33);
  v37 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  v121 = v37;
  v126 = WitnessTable;
  sub_1AE23CB7C();
  v119 = v36;
  v40 = *(v36 + 8);
  v39 = (v36 + 8);
  v131 = v40;
  v40(v33, v21);
  v41 = v20;
  if (v143)
  {
    v42 = v6;
    v43 = sub_1AE23D0AC();

    if (v43 < v142)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v42 = v6;
    if (v142)
    {
LABEL_8:
      v56 = 0;
      v57 = 0;
      v58 = 0;
LABEL_23:
      sub_1ADDDCE80(v57, v58);
      return v56;
    }
  }

  v118 = v41;
  v117 = v21;
  v44 = v141;
  v45 = v141[1];
  v46 = v141[2];
  v47 = v141[3];
  v143 = *v141;
  v144 = v45;
  v145 = v46;
  v146 = v47;

  v116 = v46;

  v49 = v139;
  v48 = v140;
  LOBYTE(v45) = sub_1AE180290(v139, v140, v138);

  if ((v45 & 1) == 0)
  {
LABEL_22:
    v56 = 0;
    v57 = 0;
    v58 = 0;
    goto LABEL_23;
  }

  v50 = v44[1];
  v149 = *v44;
  v150 = v50;

  v51 = v117;
  v52 = swift_getWitnessTable();
  v53 = v42;
  v143 = v42;
  v144 = v51;
  v145 = v118;
  v146 = v133;
  v147 = &off_1F23C93F8;
  v148 = v52;
  v54 = type metadata accessor for CROrderedDictionary(0, &v143);
  LOBYTE(v50) = CROrderedDictionary.contains(_:)(v49, v54);

  v55 = v142;
  if (v50)
  {
    goto LABEL_8;
  }

  v59 = v51;
  v138 = v39;
  v60 = v127;
  v128(v127, v48, v129);
  v61 = v130;
  sub_1ADE1E114(v60, v53, v130);
  if (*(v116 + 16) && (sub_1ADDFFB6C(v61, v59, v126), (v62 & 1) != 0))
  {
  }

  else
  {
    sub_1AE23D05C();
  }

  v63 = v136;
  v64 = v123;
  v65 = v59;
  v131(v130, v59);
  v115 = v54;
  if (v55)
  {
    sub_1AE23D15C();

    v66 = v137;
    (*(v137 + 56))(v63, 0, 1, v53);
LABEL_20:
    v86 = v125;
    (*(v66 + 32))(v125, v63, v53);
    v87 = v141[1];
    v143 = *v141;
    v144 = v87;
    MEMORY[0x1EEE9AC00](v143);
    v88 = v53;
    v89 = v118;
    *(&v115 - 4) = v53;
    *(&v115 - 3) = v89;
    v90 = v133;
    *(&v115 - 2) = v133;
    *(&v115 - 1) = v86;

    v91 = v66;
    v92 = CROrderedDictionary.index(where:)(sub_1ADE5E698, (&v115 - 6), v115);
    v94 = v93;

    if (v94)
    {
      (*(v91 + 8))(v86, v53);
      goto LABEL_22;
    }

    v96 = v127;
    v97 = v140;
    v98 = v129;
    v99 = v128;
    v128(v127, v140, v129);
    v100 = v122;
    sub_1ADE1E114(v96, v88, v122);
    v101 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      __break(1u);
    }

    else
    {
      v102 = v139;
      v103 = v141;
      CROrderedDictionary.insert(value:forKey:at:)(v100, v139, v101, v115);
      v131(v100, v117);
      v99(v96, v97, v98);
      v104 = v124;
      sub_1ADE1E114(v96, v88, v124);
      v105 = swift_allocObject();
      v105[2] = v88;
      v105[3] = v89;
      v105[4] = v90;
      v106 = v102;
      v107 = v105;
      (*(v137 + 16))(v135, v106, v88);
      v108 = swift_allocObject();
      v140 = v88;
      v108[2] = v88;
      v108[3] = v89;
      v108[4] = v90;
      v108[5] = sub_1ADE5E694;
      v108[6] = v107;
      swift_isUniquelyReferenced_nonNull_native();
      v109 = v103[2];
      v143 = v109;
      v110 = v117;
      v111 = v126;
      sub_1ADDFFB6C(v104, v117, v126);
      if (!__OFADD__(*(v109 + 16), (v112 & 1) == 0))
      {
        v113 = v112;
        sub_1AE23DC0C();
        if ((sub_1AE23DBEC() & 1) == 0 || (sub_1ADDFFB6C(v124, v110, v111), (v113 & 1) == (v114 & 1)))
        {
          v141[2] = v143;
          if ((v113 & 1) == 0)
          {
            v143 = (v108[5])();
            (*(v119 + 16))(v122, v124, v110);
            sub_1AE23DBFC();
          }

          sub_1AE23D0DC();
          v131(v124, v110);
          (*(v137 + 8))(v125, v140);

          v57 = 0;
          v58 = 0;
          v56 = 1;
          goto LABEL_23;
        }

        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    sub_1AE23E27C();
    __break(1u);
    goto LABEL_39;
  }

  v67 = v128;
  v128(v63, v48, v129);
  v66 = v137;
  if ((*(v137 + 48))(v63, 1, v53) != 1)
  {
    goto LABEL_20;
  }

  v68 = v129;
  (*(v64 + 8))(v63, v129);
  v67(v60, v48, v68);
  v69 = v122;
  v70 = v60;
  v71 = v118;
  v72 = v60;
  v73 = v133;
  sub_1ADE1E114(v70, v53, v122);
  v74 = v53;
  v75 = v66;
  v76 = v141;
  CROrderedDictionary.insert(value:forKey:at:)(v69, v139, 0, v115);
  v131(v69, v65);
  v128(v72, v48, v68);
  v77 = v120;
  sub_1ADE1E114(v72, v74, v120);
  v78 = swift_allocObject();
  v78[2] = v74;
  v78[3] = v71;
  v78[4] = v73;
  (*(v75 + 16))(v134, v139, v74);
  v79 = swift_allocObject();
  v79[2] = v74;
  v79[3] = v71;
  v79[4] = v73;
  v79[5] = sub_1ADE5E694;
  v140 = v79;
  v79[6] = v78;
  swift_isUniquelyReferenced_nonNull_native();
  v80 = v76[2];
  v143 = v80;
  v81 = v126;
  sub_1ADDFFB6C(v77, v65, v126);
  if (__OFADD__(*(v80 + 16), (v82 & 1) == 0))
  {
    goto LABEL_37;
  }

  v83 = v82;
  sub_1AE23DC0C();
  if ((sub_1AE23DBEC() & 1) == 0)
  {
    v85 = v141;
LABEL_32:
    v85[2] = v143;
    if ((v83 & 1) == 0)
    {
      v143 = (v140[5])();
      (*(v119 + 16))(v122, v120, v65);
      sub_1AE23DBFC();
    }

    sub_1AE23D0DC();
    v131(v120, v65);

    v57 = sub_1ADE5DA58;
    v56 = 1;
    v58 = v140;
    goto LABEL_23;
  }

  sub_1ADDFFB6C(v120, v65, v81);
  v85 = v141;
  if ((v83 & 1) == (v84 & 1))
  {
    goto LABEL_32;
  }

LABEL_39:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t CROrderedTree.move(_:toParent:at:)(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v247 = a1;
  v248 = v8;
  MEMORY[0x1EEE9AC00](a1);
  v238 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v237 = &v198 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v229 = &v198 - v13;
  v14 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v236 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v231 = &v198 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v230 = &v198 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v235 = &v198 - v19;
  v21 = a4[3];
  v20 = a4[4];
  v245 = a4;
  v22 = type metadata accessor for TreeNode(255, v7, v21, v20);
  v240 = sub_1AE23D7CC();
  v239 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v246 = &v198 - v23;
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v233 = &v198 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v232 = (&v198 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v198 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v38 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](&v198 - v41);
  v234 = &v198 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v241 = &v198 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v58 = MEMORY[0x1EEE9AC00](v46);
  v60 = &v198 - v59;
  if (a3 < 0)
  {
    return 0;
  }

  v214 = v54;
  v218 = v52;
  v213 = v51;
  v215 = v50;
  v217 = v49;
  v212 = v48;
  v216 = v47;
  v220 = v57;
  v226 = v56;
  v249 = a3;
  v219 = v53;
  v61 = *(v53 + 16);
  v62 = v55;
  v242 = a2;
  v227 = v53 + 16;
  v228 = v61;
  (v61)(v55, a2, v14, v58);
  v224 = v62;
  v244 = v20;
  sub_1ADE1E114(v62, v7, v60);
  v221 = v250 + 2;
  v63 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  v222 = v63;
  v223 = WitnessTable;
  sub_1AE23CB7C();
  v65 = (v38 + 8);
  v66 = *(v38 + 8);
  v66(v60, v22);
  if (v252)
  {
    v67 = sub_1AE23D0AC();

    if (v67 < v249)
    {
      return 0;
    }
  }

  else if (v249)
  {
    return 0;
  }

  v225 = v21;
  v210 = v38;
  v209 = v66;
  v69 = v248 + 48;
  v70 = v242;
  v211 = *(v248 + 48);
  if (v211(v242, 1, v7) != 1)
  {
    v71 = v250[1];
    v258 = *v250;
    v259 = v71;
    v228(v36, v70, v14);
    if (v211(v36, 1, v7) == 1)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v72 = swift_getWitnessTable();
    v252 = v7;
    v253 = v22;
    v254 = v225;
    v255 = v244;
    v256 = &off_1F23C93F8;
    v257 = v72;
    v73 = type metadata accessor for CROrderedDictionary(0, &v252);
    v74 = CROrderedDictionary.contains(_:)(v36, v73);

    (*(v248 + 8))(v36, v7);
    if (!v74)
    {
      return 0;
    }
  }

  v206 = v69;
  v207 = v14;
  v75 = v7;
  v76 = v250;
  v77 = v250[1];
  v258 = *v250;
  v259 = v77;
  MEMORY[0x1EEE9AC00](v258);
  v78 = v225;
  *(&v198 - 4) = v75;
  *(&v198 - 3) = v78;
  v79 = v244;
  v80 = v247;
  *(&v198 - 2) = v244;
  *(&v198 - 1) = v80;

  v81 = swift_getWitnessTable();
  v252 = v75;
  v253 = v22;
  v208 = v22;
  v254 = v78;
  v255 = v79;
  v256 = &off_1F23C93F8;
  v257 = v81;
  v82 = type metadata accessor for CROrderedDictionary(0, &v252);
  v205 = CROrderedDictionary.index(where:)(sub_1ADE5E698, (&v198 - 6), v82);
  LOBYTE(v77) = v83;

  if (v77)
  {
    return 0;
  }

  v203 = 0;
  v204 = v82;
  v84 = v247;
  if (sub_1AE23D37C())
  {
    v85 = v224;
    (*(v248 + 56))(v224, 1, 1, v75);
    v86 = v75;
    v87 = v75;
    v88 = v246;
    sub_1ADE1E114(v85, v87, v246);
    v89 = v210;
    v90 = v208;
    (*(v210 + 56))(v88, 0, 1, v208);
    goto LABEL_15;
  }

  v86 = v75;
  v91 = v76[1];
  v252 = *v76;
  v253 = v91;
  v88 = v246;
  CROrderedDictionary.subscript.getter(v84, v204);
  v89 = v210;
  v90 = v208;
  if ((*(v210 + 48))(v88, 1, v208) == 1)
  {
    (*(v239 + 8))(v88, v240);
    return 0;
  }

LABEL_15:
  v240 = (v76 + 3);
  v246 = v65;
  v92 = v226;
  (*(v89 + 32))(v226, v88, v90);
  v93 = *v76;
  v94 = v76[1];
  v95 = v76[2];
  v96 = v76[3];
  v252 = v93;
  v253 = v94;
  v254 = v95;
  v255 = v96;

  v97 = v242;
  v98 = sub_1AE180290(v84, v242, v245);

  if ((v98 & 1) == 0)
  {
    v209(v92, v90);
    return 0;
  }

  v239 = v96;
  v99 = v224;
  v100 = v207;
  v228(v224, v97, v207);
  v101 = v241;
  v102 = v244;
  sub_1ADE1E114(v99, v86, v241);
  v103 = v249;
  if (*(v95 + 16) && (v104 = sub_1ADDFFB6C(v101, v90, v223), v102 = v244, (v105 & 1) != 0))
  {
    v245 = *(*(v95 + 56) + 8 * v104);
  }

  else
  {
    v245 = sub_1AE23D05C();
  }

  v106 = v209;
  v209(v101, v90);
  v107 = v226;
  sub_1AE23CB7C();
  if (!v258)
  {
    v106(v107, v90);
    goto LABEL_26;
  }

  v251 = v258;
  swift_getWitnessTable();
  v108 = *(v102 + 8);
  sub_1AE23D4FC();

  if (v253 == 1)
  {
    v209(v226, v90);
LABEL_26:

    return 0;
  }

  v200 = v108;
  v201 = v252;
  v109 = v232;
  sub_1ADE17570(v90, v232);
  v110 = *(TupleTypeMetadata2 + 48);
  v111 = v235;
  v112 = v228;
  v228(v235, v109, v100);
  v112(&v111[v110], v242, v100);
  v113 = v211;
  v114 = v211(v111, 1, v86);
  v202 = v86;
  if (v114 != 1)
  {
    v112(v233, v111, v207);
    if (v113(&v111[v110], 1, v86) != 1)
    {
      v120 = v111;
      v121 = v248;
      v122 = v229;
      (*(v248 + 32))(v229, &v120[v110], v86);
      v123 = v233;
      v124 = sub_1AE23CCBC();
      v125 = *(v121 + 8);
      v125(v122, v86);
      v115 = *(v219 + 8);
      v118 = v207;
      (v115)(v109, v207);
      v125(v123, v86);
      (v115)(v235, v118);
      v117 = v210;
      v119 = v234;
      if ((v124 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v115 = *(v219 + 8);
    v118 = v207;
    (v115)(v109, v207);
    (*(v248 + 8))(v233, v86);
    v117 = v210;
    v119 = v234;
LABEL_33:
    (*(v236 + 8))(v111, TupleTypeMetadata2);
    goto LABEL_37;
  }

  v115 = *(v219 + 8);
  (v115)(v109, v207);
  v116 = v113(&v111[v110], 1, v86);
  v117 = v210;
  if (v116 != 1)
  {
    v119 = v234;
    v118 = v207;
    goto LABEL_33;
  }

  v118 = v207;
  (v115)(v111, v207);
  v119 = v234;
LABEL_35:
  if (v201 == v103 || v201 == v103 - 1)
  {
    v209(v226, v90);

    return 1;
  }

LABEL_37:
  v241 = v115;
  v126 = *(v117 + 16);
  v210 = v117 + 16;
  v199 = v126;
  v126(v119, v226, v90);
  sub_1AE23CB1C();
  v127 = sub_1AE23CB6C();
  if (*v128)
  {
    v129 = v214;
    sub_1AE23D0EC();
    v127(&v252, 0);
    v130 = 0;
    v131 = v228;
  }

  else
  {
    v127(&v252, 0);
    v130 = 1;
    v131 = v228;
    v129 = v214;
  }

  v209(v119, v90);
  v132 = *(v248 + 56);
  v133 = v90;
  v134 = v202;
  v233 = (v248 + 56);
  v232 = v132;
  (v132)(v129, v130, 1, v202);
  v135 = (v219 + 8);
  (v241)(v129, v118);
  v136 = v218;
  sub_1ADE17570(v133, v218);
  v137 = *(TupleTypeMetadata2 + 48);
  v138 = v230;
  v131(v230, v136, v118);
  v234 = v137;
  v131(&v137[v138], v242, v118);
  v139 = v211;
  v140 = v211(v138, 1, v134);
  v235 = v135;
  if (v140 == 1)
  {
    (v241)(v136, v118);
    v141 = v202;
    v142 = v139(&v234[v138], 1);
    v143 = v204;
    v144 = v208;
    if (v142 == 1)
    {
      (v241)(v138, v118);
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  v145 = v213;
  v131(v213, v138, v118);
  v146 = v234;
  v147 = v202;
  if ((v139)(&v234[v138], 1, v202) == 1)
  {
    (v241)(v218, v118);
    v148 = v145;
    v141 = v147;
    (*(v248 + 8))(v148, v147);
    v143 = v204;
    v144 = v208;
LABEL_45:
    (*(v236 + 8))(v138, TupleTypeMetadata2);
LABEL_46:
    v149 = v224;
    v228(v224, v242, v118);
    v150 = v216;
    sub_1ADE1E114(v149, v141, v216);
    sub_1AE00D9DC(v247, v150, v143);
    v209(v150, v144);
    goto LABEL_47;
  }

  v171 = v248;
  v172 = &v146[v138];
  v173 = v118;
  v174 = v138;
  v175 = v229;
  (*(v248 + 32))(v229, v172, v147);
  v176 = sub_1AE23CCBC();
  v177 = *(v171 + 8);
  v177(v175, v147);
  v178 = v241;
  (v241)(v218, v173);
  v179 = v145;
  v141 = v147;
  v177(v179, v147);
  v103 = v249;
  v180 = v174;
  v118 = v173;
  (v178)(v180, v173);
  v143 = v204;
  v144 = v208;
  if ((v176 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (v103)
  {
    v151 = v215;
    v152 = v141;
    sub_1AE23D15C();
    (v232)(v151, 0, 1, v141);
  }

  else
  {
    v151 = v215;
    v228(v215, v242, v118);
    v152 = v141;
    if (v211(v151, 1, v141) == 1)
    {

      (v241)(v151, v118);
      v153 = 0;
      v154 = v231;
      goto LABEL_54;
    }
  }

  v155 = v237;
  (*(v248 + 32))(v237, v151, v152);
  v156 = v250[1];
  v252 = *v250;
  v253 = v156;
  MEMORY[0x1EEE9AC00](v252);
  v157 = v225;
  *(&v198 - 4) = v152;
  *(&v198 - 3) = v157;
  *(&v198 - 2) = v244;
  *(&v198 - 1) = v155;

  v158 = CROrderedDictionary.index(where:)(sub_1ADE5E698, (&v198 - 6), v204);
  v160 = v159;

  if (v160)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

  v153 = v158 + 1;
  v154 = v231;
  if (__OFADD__(v158, 1))
  {
    goto LABEL_76;
  }

  (*(v248 + 8))(v237, v152);
LABEL_54:
  CROrderedDictionary.move(from:to:)(v205, v153);
  v161 = v217;
  sub_1ADE17570(v144, v217);
  v162 = *(TupleTypeMetadata2 + 48);
  v163 = v228;
  v228(v154, v161, v118);
  v163(&v154[v162], v242, v118);
  v164 = v118;
  v165 = v211;
  if (v211(v154, 1, v152) == 1)
  {
    (v241)(v161, v164);
    v166 = v152;
    v167 = v165(&v154[v162], 1, v152);
    v168 = v244;
    if (v167 == 1)
    {
      (v241)(v154, v207);
      v169 = v247;
LABEL_67:
      v249 = v103 - (v201 < v103);
      goto LABEL_68;
    }

    goto LABEL_59;
  }

  v170 = v212;
  v163(v212, v154, v164);
  if (v165(&v154[v162], 1, v152) == 1)
  {
    (v241)(v217, v164);
    v166 = v152;
    (*(v248 + 8))(v170, v152);
    v168 = v244;
    v165 = v211;
LABEL_59:
    (*(v236 + 8))(v154, TupleTypeMetadata2);
    v169 = v247;
    goto LABEL_60;
  }

  v181 = v248;
  v182 = v229;
  (*(v248 + 32))(v229, &v154[v162], v152);
  LODWORD(v250) = sub_1AE23CCBC();
  v183 = *(v181 + 8);
  v183(v182, v152);
  v184 = v241;
  (v241)(v217, v164);
  v166 = v152;
  v183(v170, v152);
  v144 = v208;
  (v184)(v154, v164);
  v168 = v244;
  v165 = v211;
  v169 = v247;
  if (v250)
  {
    goto LABEL_67;
  }

LABEL_60:
  if ((sub_1AE23D37C() & 1) != 0 && v165(v242, 1, v166) == 1)
  {
    goto LABEL_67;
  }

LABEL_68:
  v185 = v224;
  v228(v224, v242, v207);
  v186 = v220;
  v187 = v225;
  sub_1ADE1E114(v185, v166, v220);
  v188 = swift_allocObject();
  v188[2] = v166;
  v188[3] = v187;
  v188[4] = v168;
  (*(v248 + 16))(v238, v169, v166);
  v189 = swift_allocObject();
  v189[2] = v166;
  v189[3] = v187;
  v189[4] = v168;
  v189[5] = sub_1ADE5E694;
  v189[6] = v188;
  v190 = v221;
  swift_isUniquelyReferenced_nonNull_native();
  v191 = *v190;
  v252 = v191;
  v192 = v223;
  sub_1ADDFFB6C(v186, v144, v223);
  if (__OFADD__(*(v191 + 16), (v193 & 1) == 0))
  {
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v194 = v193;
  sub_1AE23DC0C();
  if (sub_1AE23DBEC())
  {
    sub_1ADDFFB6C(v220, v144, v192);
    if ((v194 & 1) != (v195 & 1))
    {
      goto LABEL_79;
    }
  }

  *v221 = v252;
  if ((v194 & 1) == 0)
  {
    v252 = (v189[5])();
    v199(v216, v220, v144);
    sub_1AE23DBFC();
  }

  sub_1AE23D0DC();
  v196 = v209;
  v209(v220, v144);
  sub_1AE23D38C();
  v197 = v224;
  sub_1AE23D34C();
  (v241)(v197, v207);
  v196(v226, v144);

  return 1;
}

void CROrderedTree.append(_:inParent:)(void (*a1)(void, void), uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = a3[2];
  v9 = a3[4];
  v143 = a3[3];
  v141 = v9;
  v10 = type metadata accessor for TreeNode(255, v8, v143, v9);
  v125 = sub_1AE23D7CC();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v111 - v11;
  v140 = v10;
  v145 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v137 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v111 - v17;
  v139 = sub_1AE23D7CC();
  v136 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v126 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v128 = &v111 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v111 - v24;
  v146 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v131 = &v111 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v138 = &v111 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v120 = &v111 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v132 = &v111 - v35;
  v36 = *v3;
  v37 = v3[1];
  v38 = v3[2];
  v39 = v4[3];
  v129 = v4 + 3;
  v149 = v36;
  v150 = v37;
  v151 = v38;
  v152 = v39;

  v40 = a1;
  v41 = a1;
  v42 = a2;
  LOBYTE(v37) = sub_1AE180290(v41, a2, a3);

  if (v37)
  {
    v133 = v40;
    v121 = a3;
    sub_1AE18065C(v40, a3);
    v43 = v136;
    v44 = v136[2];
    v45 = a2;
    v46 = v139;
    v135 = v136 + 2;
    v44(v25, v42, v139);
    v47 = v146;
    v48 = v146[6];
    v119 = v146 + 6;
    v49 = v48(v25, 1, v8);
    v144 = v4;
    v50 = v47;
    v51 = v8;
    v122 = v45;
    v118 = v44;
    v117 = v48;
    if (v49 == 1)
    {
      v52 = v43;
      v53 = v25;
      v54 = v133;
      v55 = v141;
      v56 = v143;
      v57 = v134;
    }

    else
    {
      v58 = v132;
      v59 = v8;
      v60 = v50;
      v115 = v50[4];
      v114 = v50 + 4;
      v115(v132, v25, v59);
      v61 = v60[2];
      v57 = v134;
      v113 = v60 + 2;
      v112 = v61;
      v61(v134, v58, v51);
      v116 = v60[7];
      v116(v57, 0, 1, v51);
      v62 = v127;
      sub_1ADE1E114(v57, v51, v127);
      sub_1AE23D11C();
      v63 = v140;
      swift_getWitnessTable();
      sub_1AE23CB7C();
      v127 = *(v145 + 8);
      (v127)(v62, v63);
      if (v149)
      {
        v111 = v60 + 7;
        v147 = v149;
        swift_getWitnessTable();
        v53 = v128;
        sub_1AE23CBEC();

        if (v48(v53, 1, v51) != 1)
        {
          v97 = v120;
          v115(v120, v53, v51);
          v98 = v144[1];
          v147 = *v144;
          v148 = v98;
          MEMORY[0x1EEE9AC00](v147);
          v99 = v143;
          *(&v111 - 4) = v51;
          *(&v111 - 3) = v99;
          v100 = v141;
          *(&v111 - 2) = v141;
          *(&v111 - 1) = v97;

          v101 = v140;
          WitnessTable = swift_getWitnessTable();
          v149 = v51;
          v150 = v101;
          v151 = v99;
          v152 = v100;
          v153 = &off_1F23C93F8;
          v154 = WitnessTable;
          v103 = type metadata accessor for CROrderedDictionary(0, &v149);
          v104 = CROrderedDictionary.index(where:)(sub_1ADE5E698, (&v111 - 6), v103);
          LOBYTE(v101) = v105;

          if (v101)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v106 = v134;
          v107 = v132;
          v112(v134, v132, v51);
          v116(v106, 0, 1, v51);
          v108 = v137;
          sub_1ADE1E114(v106, v51, v137);
          v109 = v139;
          if (__OFADD__(v104, 1))
          {
            goto LABEL_26;
          }

          v54 = v133;
          CROrderedDictionary.moveOrInsert(value:forKey:to:)(v108, v133, v104 + 1, v103);
          v66 = v140;
          (v127)(v108, v140);
          v110 = v146[1];
          v110(v107, v51);
          v110(v120, v51);
          v70 = v143;
          v55 = v141;
          v69 = v51;
          v57 = v134;
          v118(v134, v122, v109);
LABEL_9:
          v71 = v142;
          sub_1ADE1E114(v57, v69, v142);
          v72 = swift_allocObject();
          v72[2] = v69;
          v72[3] = v70;
          v72[4] = v55;
          v73 = (v146 + 2);
          v134 = v146[2];
          (v134)(v138, v54, v69);
          v74 = swift_allocObject();
          v74[2] = v69;
          v74[3] = v70;
          v74[4] = v55;
          v74[5] = sub_1ADE5E694;
          v136 = v72;
          v74[6] = v72;
          v75 = v144;
          swift_isUniquelyReferenced_nonNull_native();
          v149 = v75[2];
          v76 = v149;
          v77 = swift_getWitnessTable();
          v128 = sub_1ADDFFB6C(v71, v66, v77);
          if (!__OFADD__(*(v76 + 16), (v78 & 1) == 0))
          {
            v79 = v78;
            v80 = v69;
            v132 = v73;
            sub_1AE23D11C();
            sub_1AE23DC0C();
            if (sub_1AE23DBEC())
            {
              sub_1ADDFFB6C(v142, v66, v77);
              v82 = v122;
              if ((v79 & 1) != (v81 & 1))
              {
LABEL_29:
                sub_1AE23E27C();
                __break(1u);
                return;
              }
            }

            else
            {
              v82 = v122;
            }

            v144[2] = v149;
            if ((v79 & 1) == 0)
            {
              v149 = (v74[5])();
              (*(v145 + 16))(v137, v142, v66);
              sub_1AE23DBFC();
            }

            sub_1AE23D0CC();
            (v127)(v142, v66);
            v83 = v117;
            v84 = v117(v82, 1, v69);
            v85 = v121;
            v86 = v133;
            v87 = v141;
            if (v84 == 1)
            {
              goto LABEL_19;
            }

            v88 = v82;
            v89 = *v144;
            v90 = v144[1];
            v91 = v126;
            v118(v126, v88, v139);
            if (v83(v91, 1, v80) != 1)
            {
              v147 = v89;
              v148 = v90;
              v92 = v140;
              v93 = swift_getWitnessTable();
              v149 = v80;
              v150 = v92;
              v151 = v143;
              v152 = v87;
              v153 = &off_1F23C93F8;
              v154 = v93;
              v94 = type metadata accessor for CROrderedDictionary(0, &v149);
              v95 = v123;
              CROrderedDictionary.subscript.getter(v91, v94);
              LODWORD(v92) = (*(v145 + 48))(v95, 1, v92);
              (*(v124 + 8))(v95, v125);
              (v146[1])(v91, v80);
              v85 = v121;
              if (v92 != 1)
              {
LABEL_20:
                sub_1AE180C48(v86, v85);

                return;
              }

LABEL_19:
              (v134)(v130, v86, v80);
              sub_1AE23D38C();
              v96 = v131;
              sub_1AE23D33C();
              (v146[1])(v96, v80);
              goto LABEL_20;
            }

            goto LABEL_27;
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        (v146[1])(v132, v51);
        v45 = v122;
        v46 = v139;
        v55 = v141;
        v44 = v118;
        v52 = v136;
        v56 = v143;
        v54 = v133;
      }

      else
      {
        (v60[1])(v58, v51);
        v53 = v128;
        v116(v128, 1, 1, v51);
        v54 = v133;
        v45 = v122;
        v46 = v139;
        v55 = v141;
        v44 = v118;
        v52 = v136;
        v56 = v143;
      }
    }

    (v52[1])(v53, v46);
    v44(v57, v45, v46);
    v64 = v137;
    sub_1ADE1E114(v57, v51, v137);
    v65 = v56;
    v66 = v140;
    v67 = swift_getWitnessTable();
    v149 = v51;
    v150 = v66;
    v151 = v65;
    v152 = v55;
    v153 = &off_1F23C93F8;
    v154 = v67;
    v68 = type metadata accessor for CROrderedDictionary(0, &v149);
    v69 = v51;
    CROrderedDictionary.moveOrAppend(value:forKey:)(v64, v54, v68);
    v127 = *(v145 + 8);
    (v127)(v64, v66);
    v70 = v143;
    v44(v57, v45, v46);
    goto LABEL_9;
  }
}

uint64_t sub_1ADE5C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v9 = type metadata accessor for TreeNode(255, a4, a5, a6);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v16 - v13;
  (*(*(v6 - 8) + 16))(&v16 - v13, a1, v6, v12);
  (*(*(v9 - 8) + 16))(&v14[*(TupleTypeMetadata2 + 48)], a2, v9);
  LOBYTE(v6) = sub_1AE23CCBC();
  (*(v11 + 8))(v14, TupleTypeMetadata2);
  return v6 & 1;
}

uint64_t CROrderedTree.append(_:toParent:)(uint64_t a1, void *a2, void *a3)
{

  CROrderedTree.children(of:)(a2, a3);

  v6 = sub_1AE23D0AC();

  return CROrderedTree.insert(_:toParent:at:)(a1, a2, v6, a3);
}

uint64_t CROrderedTree.init<A>(uniqueNodesAndParents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (**a6)(char *, char *, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v173 = a6;
  v145 = a1;
  v138 = a7;
  v182 = type metadata accessor for TreeNode(0, a2, a4, a5);
  v144 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v181 = &v135 - v11;
  v12 = sub_1AE23D7CC();
  i = sub_1AE23D11C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v163 = sub_1AE23D7CC();
  v141 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v170 = &v135 - v15;
  v140 = sub_1AE23D7CC();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v148 = &v135 - v16;
  v146 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v177 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v135 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v135 - v22;
  v183 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v186 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v180 = (&v135 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v179 = &v135 - v28;
  v136 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v172 = &v135 - v31;
  v164 = swift_getTupleTypeMetadata2();
  v32 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v135 - v33;
  v161 = a3;
  v35 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v142 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = (&v135 - v40);
  v184 = a4;
  CROrderedTree.init()(a2, a4, a5, &v187);
  v195 = v187;
  v196 = v188;
  v197 = v189;
  v42 = i;
  swift_getTupleTypeMetadata2();
  v43 = sub_1AE23D05C();
  v185 = a5;
  v193 = a5;
  WitnessTable = swift_getWitnessTable();
  v44 = sub_1ADDEAF38(v43, v12, v42, WitnessTable);

  v194 = v44;
  v45 = v34;
  v137 = v35;
  (*(v35 + 16))(v38, v145, v161);
  sub_1AE23CE7C();
  v46 = v143;
  v47 = v172;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v159 = v41;
  v160 = AssociatedTypeWitness;
  v158 = AssociatedConformanceWitness;
  sub_1AE23D80C();
  v49 = v164;
  v50 = *(v164 - 8);
  v157 = *(v50 + 48);
  v156 = (v50 + 48);
  v51 = v157(v45, 1, v164);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v176 = v12;
  if (v51 == 1)
  {
LABEL_2:
    v152 = v52;
    v167 = v54;
    v169 = v55;
    v166 = v53;
    (*(v142 + 8))(v159, v160);
    sub_1AE23DDAC();
    v56 = v146;
    v160 = *(v146 + 72);
    swift_allocObject();
    v57 = sub_1AE23CFFC();
    v58 = *(v183 + 56);
    v179 = (v183 + 56);
    v178 = v58;
    v58(v59, 1, 1, a2);
    v187 = v57;
    v60 = sub_1AE23D11C();
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v60);
    v61 = swift_getWitnessTable();
    v154 = v60;
    v153 = v61;
    v63 = sub_1ADE5E330(&v187, v12, v60, v61, v62);

    v192 = v63;
    v64 = sub_1AE23C26C();
    v65 = v148;
    v164 = v64;
    sub_1AE23C25C();
    v66 = *(v56 + 48);
    v159 = (v56 + 48);
    v158 = v66;
    v67 = v66(v65, 1, v12);
    v68 = TupleTypeMetadata2;
    v69 = v177;
    if (v67 != 1)
    {
      v156 = *(v146 + 32);
      v174 = (v183 + 16);
      v173 = (v146 + 16);
      v172 = (v144 + 8);
      v119 = (v183 + 8);
      v157 = (v146 + 32);
      v155 = (v146 + 8);
      v120 = v180;
      v156(v177, v65, v12);
      while (1)
      {
        sub_1AE23CB7C();
        v121 = v187;
        if (v187)
        {
          v187 = sub_1AE23DB9C();
          sub_1AE23C22C();

          sub_1AE23CB1C();
          sub_1AE23CA1C();

          if (sub_1AE23D0AC())
          {
            v122 = 0;
            do
            {
              v123 = sub_1AE23D08C();
              sub_1AE23D00C();
              if (v123)
              {
                (*(v183 + 16))(v180, v121 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v122, a2);
                v124 = v122 + 1;
                if (__OFADD__(v122, 1))
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v134 = sub_1AE23DAAC();
                if (v136 != 8)
                {
                  goto LABEL_59;
                }

                v187 = v134;
                (*v174)(v180, &v187, a2);
                swift_unknownObjectRelease();
                v124 = v122 + 1;
                if (__OFADD__(v122, 1))
                {
LABEL_55:
                  __break(1u);
                  goto LABEL_56;
                }
              }

              v125 = v175;
              (*v173)(v175, v69, v12);
              v126 = v181;
              v127 = v125;
              v129 = v184;
              v128 = v185;
              sub_1ADE1E114(v127, a2, v181);
              v130 = v182;
              v131 = swift_getWitnessTable();
              v187 = a2;
              *&v188 = v130;
              *(&v188 + 1) = v129;
              v189 = v128;
              v69 = v177;
              v190 = &off_1F23C93F8;
              v191 = v131;
              v132 = type metadata accessor for CROrderedDictionary(0, &v187);
              CROrderedDictionary.append(value:forKey:)(v126, v120, v132);
              v133 = v126;
              v12 = v176;
              (*v172)(v133, v130);
              (*v119)(v120, a2);
              ++v122;
            }

            while (v124 != sub_1AE23D0AC());
          }

          (*v155)(v69, v12);
          v68 = TupleTypeMetadata2;
        }

        else
        {
          (*v155)(v69, v12);
        }

        v65 = v148;
        sub_1AE23C25C();
        if (v158(v65, 1, v12) == 1)
        {
          break;
        }

        v156(v69, v65, v12);
      }
    }

    (*(v139 + 8))(v65, v140);
    v70 = v194 + 64;
    v71 = 1 << *(v194 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v174 = (v72 & *(v194 + 64));
    v157 = ((v71 + 63) >> 6);
    v172 = (v68 - 8);
    v159 = (v146 + 16);
    v158 = (v146 + 32);
    v173 = (v141 + 32);
    v180 = (v183 + 16);
    v177 = (v144 + 8);
    v73 = (v183 + 8);
    WitnessTable = (v146 + 8);
    v164 = v194;

    v74 = 0;
    for (i = v70; ; v70 = i)
    {
      v75 = v174;
      if (!v174)
      {
        break;
      }

      v76 = v74;
LABEL_17:
      v174 = ((v75 - 1) & v75);
      v79 = __clz(__rbit64(v75)) | (v76 << 6);
      v80 = v164;
      v81 = v175;
      v82 = v176;
      (*v159)(v175, *(v164 + 48) + v79 * v160, v176);
      v83 = *(*(v80 + 56) + 8 * v79);
      v84 = *(v68 + 48);
      v85 = v162;
      (*v158)(v162, v81, v82);
      *&v85[v84] = v83;
      v86 = *(v68 - 8);
      (*(v86 + 56))(v85, 0, 1, v68);

LABEL_18:
      v87 = v170;
      (*v173)(v170, v85, v163);
      if ((*(v86 + 48))(v87, 1, v68) == 1)
      {

        v98 = type metadata accessor for CROrderedTree(0, a2, v184, v185);
        sub_1ADE145CC(1, v98);
        (*(v137 + 8))(v145, v161);

        sub_1ADDDCE80(v152, v166);
        result = sub_1ADDDCE80(v167, v169);
        v100 = v197;
        v101 = v138;
        *v138 = v195;
        *(v101 + 1) = v196;
        v101[3] = v100;
        return result;
      }

      v88 = *&v87[*(v68 + 48)];
      if (sub_1AE23D0AC())
      {
        v89 = 0;
        do
        {
          v90 = sub_1AE23D08C();
          sub_1AE23D00C();
          if (v90)
          {
            (*(v183 + 16))(v186, v88 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v89, a2);
            v91 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              goto LABEL_54;
            }
          }

          else
          {
            v97 = sub_1AE23DAAC();
            if (v136 != 8)
            {
              goto LABEL_58;
            }

            v187 = v97;
            (*v180)(v186, &v187, a2);
            swift_unknownObjectRelease();
            v91 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }
          }

          v92 = v181;
          v178(v181, 1, 1, a2);
          v93 = v182;
          v94 = swift_getWitnessTable();
          v187 = a2;
          *&v188 = v93;
          *(&v188 + 1) = v184;
          v189 = v185;
          v190 = &off_1F23C93F8;
          v191 = v94;
          v95 = type metadata accessor for CROrderedDictionary(0, &v187);
          v96 = v186;
          CROrderedDictionary.append(value:forKey:)(v92, v186, v95);
          (*v177)(v92, v93);
          (*v73)(v96, a2);
          ++v89;
        }

        while (v91 != sub_1AE23D0AC());
      }

      (*WitnessTable)(v170, v176);
      v68 = TupleTypeMetadata2;
    }

    if (v157 <= v74 + 1)
    {
      v77 = (v74 + 1);
    }

    else
    {
      v77 = v157;
    }

    v78 = v77 - 1;
    while (1)
    {
      v76 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v76 >= v157)
      {
        v86 = *(v68 - 8);
        v85 = v162;
        (*(v86 + 56))(v162, 1, 1, v68);
        v174 = 0;
        v74 = v78;
        goto LABEL_18;
      }

      v75 = *(v70 + 8 * v76);
      ++v74;
      if (v75)
      {
        v74 = v76;
        goto LABEL_17;
      }
    }

LABEL_56:
    __break(1u);
  }

  else
  {
    v102 = 0;
    v54 = 0;
    v103 = 0;
    v52 = 0;
    v154 = *(v183 + 32);
    v153 = (v146 + 32);
    v152 = (v183 + 16);
    v147 = (v146 + 16);
    v150 = (v146 + 8);
    v155 = (v183 + 32);
    v149 = (v183 + 8);
    v151 = v45;
    while (1)
    {
      v174 = v103;
      v167 = v54;
      v178 = v102;
      v105 = *(v49 + 48);
      v106 = v52;
      (v154)(v47, v45, a2);
      (*v153)(v46, &v45[v105], v12);
      v107 = swift_allocObject();
      v108 = v161;
      v107[2] = a2;
      v107[3] = v108;
      v110 = v184;
      v109 = v185;
      v107[4] = v184;
      v107[5] = v109;
      v111 = v46;
      v112 = v173;
      v107[6] = v173;
      sub_1ADDDCE80(v106, v174);
      (*v152)(v179, v47, a2);
      v113 = swift_allocObject();
      *(v113 + 2) = a2;
      *(v113 + 3) = v108;
      *(v113 + 4) = v110;
      *(v113 + 5) = v109;
      *(v113 + 6) = v112;
      *(v113 + 7) = sub_1ADE176F4;
      v166 = v107;
      v169 = v113;
      *(v113 + 8) = v107;
      sub_1ADDDCE80(v167, v178);
      v114 = v194;
      swift_isUniquelyReferenced_nonNull_native();
      v187 = v114;
      v115 = WitnessTable;
      sub_1ADDFFB6C(v111, v12, WitnessTable);
      if (__OFADD__(*(v114 + 16), (v116 & 1) == 0))
      {
        break;
      }

      v117 = v116;
      sub_1AE23DC0C();
      if (sub_1AE23DBEC())
      {
        sub_1ADDFFB6C(v111, v12, v115);
        if ((v117 & 1) != (v118 & 1))
        {
          goto LABEL_60;
        }
      }

      v46 = v111;
      v194 = v187;
      if ((v117 & 1) == 0)
      {
        v187 = (*(v169 + 7))();
        (*v147)(v175, v111, v176);
        sub_1AE23DBFC();
      }

      sub_1AE23D0CC();
      v12 = v176;
      (*v150)(v111, v176);
      v47 = v172;
      (*v149)(v172, a2);
      v45 = v151;
      sub_1AE23D80C();
      v49 = v164;
      v104 = v157(v45, 1, v164);
      v54 = sub_1ADE5E4B8;
      v52 = sub_1ADE176F4;
      v55 = v169;
      v102 = v169;
      v53 = v166;
      v103 = v166;
      if (v104 == 1)
      {
        goto LABEL_2;
      }
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1ADE5D9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static CRDT.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1ADE5DA58@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

void sub_1ADE5DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(v13 - 8) + 80);
  v25 = __CFADD__(v23, v24 + 1);
  v26 = v23 + v24 + 1;
  if (v25)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14(v12 + v20, v12 + ((v26 - 1) & ~v24), v17, v15);
  if (v9)
  {
    (*(v11 + 32))(a9, v17, a6);
  }
}

uint64_t sub_1ADE5DC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23D7CC();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v24 - v13;
  v25 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v24 - v18;
  v27 = a2;
  v28 = a4;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a2;
  v36 = a3;
  sub_1AE23CEAC();
  if (v38 != 1)
  {
    return v37;
  }

  (*(v25 + 16))(v16, a1, a5);
  v20 = sub_1AE23CE8C();
  swift_getAssociatedConformanceWitness();
  v21 = v29;
  sub_1AE23D80C();
  (*(v26 + 8))(v19, AssociatedTypeWitness);
  v22 = (*(*(v28 - 8) + 48))(v21, 1);
  result = (*(v30 + 8))(v21, v31);
  if (v22 == 1)
  {
    return v20;
  }

  __break(1u);
  return result;
}

void *sub_1ADE5DF20(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    sub_1AE23C21C();
    v12 = sub_1AE23D7EC();
    v14 = v13;
    MEMORY[0x1EEE9AC00](v12);
    result = sub_1AE23CEAC();
    if (v16 == 1)
    {
      result = sub_1ADE5DC00(a4, v12, v14, a5, a6, a7);
    }

    v15[1] = a3;
  }

  return result;
}

uint64_t sub_1ADE5E050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[1] = a2;
  v11[0] = a1;
  v8 = sub_1AE23CCCC();
  WitnessTable = swift_getWitnessTable();
  return sub_1ADE5DC00(v11, a3, a4, a5, v8, WitnessTable);
}

void (*sub_1ADE5E0E4(uint64_t *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  *(v7 + 32) = sub_1ADE5E170(v7, *a2, *v3, *(a3 + 16));
  return sub_1ADDF195C;
}

uint64_t (*sub_1ADE5E170(uint64_t (**a1)(), uint64_t a2, uint64_t a3, uint64_t (*a4)()))()
{
  v8 = *(a4 - 1);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[3] = v11;
  v13 = sub_1AE23D08C();
  sub_1AE23D00C();
  if (v13)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return sub_1ADE5E2E4;
  }

  result = sub_1AE23DAAC();
  if (v10 == 8)
  {
    *a1 = result;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease();
    return sub_1ADE5E2E4;
  }

  __break(1u);
  return result;
}

void sub_1ADE5E2E4(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

uint64_t sub_1ADE5E330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = sub_1AE23D43C();
  if (v9 <= 0)
  {

    return MEMORY[0x1EEDF5A00](a2);
  }

  else
  {
    v10 = v9;
    v11 = sub_1AE23C23C();
    MEMORY[0x1EEE9AC00](v11);
    v16[8] = a2;
    v16[9] = a3;
    v16[10] = a4;
    v16[11] = v10;
    v16[12] = a1;
    MEMORY[0x1EEE9AC00](v12);
    v16[2] = a2;
    v16[3] = sub_1ADE5E588;
    v16[4] = v13;

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    sub_1ADE5DA88(sub_1ADE5E5AC, v16, v11, MEMORY[0x1E6995658], a2, v14, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v17);

    return v11;
  }
}

uint64_t sub_1ADE5E4B8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 56))();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ADE5E500(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1ADE5E548(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADE5E5AC(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 24))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1ADE5E608@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (*(v3 + 48) >= a2)
  {
    result = sub_1AE23D7AC();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADE5E6B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1ADE6F294(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1AE23D8EC();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 56) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1ADE6F294((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1ADDFFBC8(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1ADDFFBC8(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1ADE5E8D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1ADE6F294(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1AE23D8EC();
    v5 = 0;
    v26 = *(v2 + 36);
    v22 = v2 + 72;
    v23 = v1;
    v24 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v26 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v8 = *(v2 + 56);
      v9 = (*(v2 + 48) + 16 * v4);
      v10 = v2;
      v11 = *v9;
      v12 = v9[1];
      v25 = *(v8 + 16 * v4 + 8);
      sub_1ADDD86D8(*v9, v12);

      sub_1ADDCC35C(v11, v12);

      v14 = *(v27 + 16);
      v13 = *(v27 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1ADE6F294((v13 > 1), v14 + 1, 1);
      }

      *(v27 + 16) = v14 + 1;
      v3 = v24;
      *(v27 + 8 * v14 + 32) = v25;
      v6 = 1 << *(v10 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v15 = *(v24 + 8 * v7);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v10;
      if (v26 != *(v10 + 36))
      {
        goto LABEL_26;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v6 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v7 << 6;
        v18 = v7 + 1;
        v19 = (v22 + 8 * v7);
        while (v18 < (v6 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1ADDFFBC8(v4, v26, 0);
            v6 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_1ADDFFBC8(v4, v26, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v23)
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

uint64_t CREncoder.__allocating_init(_:version:fileSignature:)(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1ADE5EBF8(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *__return_ptr, uint64_t, uint64_t))
{
  LOBYTE(v13) = a2;
  type metadata accessor for CREncoder();
  swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(a1, &v13, 0, 0xF000000000000000);
  a5(v21, a3, a4);
  if (v5)
  {
  }

  else
  {
    v17 = v21[4];
    v18 = v21[5];
    v19 = v21[6];
    v20 = v21[7];
    v13 = v21[0];
    v14 = v21[1];
    v15 = v21[2];
    v16 = v21[3];
    sub_1ADE67778(&v13);
    v22[4] = v17;
    v22[5] = v18;
    v22[6] = v19;
    v22[7] = v20;
    v22[0] = v13;
    v22[1] = v14;
    v22[2] = v15;
    v22[3] = v16;
    sub_1ADE6B034(v22, 0);
    a4 = v11;

    v12[4] = v17;
    v12[5] = v18;
    v12[6] = v19;
    v12[7] = v20;
    v12[0] = v13;
    v12[1] = v14;
    v12[2] = v15;
    v12[3] = v16;
    sub_1ADE6AF00(v12);
  }

  return a4;
}

uint64_t sub_1ADE5ED74(void *a1, char a2, uint64_t a3)
{
  LOBYTE(v11) = a2;
  type metadata accessor for CREncoder();
  swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(a1, &v11, 0, 0xF000000000000000);
  sub_1ADE6AB58(a3, sub_1ADE73E50, v19);
  if (v3)
  {
  }

  else
  {
    v15 = v19[4];
    v16 = v19[5];
    v17 = v19[6];
    v18 = v19[7];
    v11 = v19[0];
    v12 = v19[1];
    v13 = v19[2];
    v14 = v19[3];
    v6 = sub_1ADE67778(&v11);
    v20[4] = v15;
    v20[5] = v16;
    v20[6] = v17;
    v20[7] = v18;
    v20[0] = v11;
    v20[1] = v12;
    v20[2] = v13;
    v20[3] = v14;
    v7 = (*(*a3 + 208))(v6);
    sub_1ADE6B034(v20, v7);
    a3 = v9;

    v10[4] = v15;
    v10[5] = v16;
    v10[6] = v17;
    v10[7] = v18;
    v10[0] = v11;
    v10[1] = v12;
    v10[2] = v13;
    v10[3] = v14;
    sub_1ADE6AF00(v10);
  }

  return a3;
}

uint64_t CRDT.serializedData(_:version:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  LOBYTE(v14) = *a2;
  type metadata accessor for CREncoder();
  swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(a1, &v14, 0, 0xF000000000000000);
  sub_1ADE6AD28(v6, a3, a4, v22);
  if (v5)
  {
  }

  else
  {
    v18 = v22[4];
    v19 = v22[5];
    v20 = v22[6];
    v21 = v22[7];
    v14 = v22[0];
    v15 = v22[1];
    v16 = v22[2];
    v17 = v22[3];
    sub_1ADE67778(&v14);
    v23[4] = v18;
    v23[5] = v19;
    v23[6] = v20;
    v23[7] = v21;
    v23[0] = v14;
    v23[1] = v15;
    v23[2] = v16;
    v23[3] = v17;
    v10 = (*(*(*(a4 + 16) + 8) + 32))(a3);
    sub_1ADE6B034(v23, v10);
    v6 = v12;

    v13[4] = v18;
    v13[5] = v19;
    v13[6] = v20;
    v13[7] = v21;
    v13[0] = v14;
    v13[1] = v15;
    v13[2] = v16;
    v13[3] = v17;
    sub_1ADE6AF00(v13);
  }

  return v6;
}

uint64_t sub_1ADE5F10C(uint64_t a1, unint64_t a2)
{
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v32, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v23);
  if (v2)
  {
    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v33[4] = v28;
    v33[5] = v29;
    v33[6] = v30;
    v33[7] = v31;
    v33[0] = v24;
    v33[1] = v25;
    v33[2] = v26;
    v33[3] = v27;
    v6 = v32;
    sub_1ADDCEE40(&v23, v22, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED96F2A8;
    v3 = type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v9 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v9;
    v10 = MEMORY[0x1E69E7CC8];
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 57) = v6;
    *(inited + 16) = 0;
    *(inited + 24) = v9;
    type metadata accessor for CRProtoDecodeContext();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v10;
    v11[4] = v7;
    v11[5] = v10;
    v12 = *(&v25 + 1);

    sub_1ADDCEE40(&v23, v22, &qword_1EB5BA278, &unk_1AE241D30);

    sub_1AE1B5950(v12);

    sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
    *(inited + 16) = v11;

    sub_1ADDD5D3C(v33);
    v13 = sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
    v16 = v24;
    if (v24 >> 62 || (v24 & 0xF000000000000007) == 0xF000000000000007)
    {
      sub_1ADE42E40(v13, v14, v15);
      swift_allocError();
      *v20 = 0xD000000000000014;
      *(v20 + 8) = 0x80000001AE260180;
      *(v20 + 16) = 0;
      swift_willThrow();
      sub_1ADDCC35C(a1, a2);
      sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
    }

    else
    {
      swift_initStackObject();
      sub_1ADE73AB0(v16);

      sub_1ADE73AB0(v16);
      v17 = sub_1ADDE77B4(v16, inited);

      v3 = sub_1ADFBA168(v17, v18, v19);
      sub_1ADDCC35C(a1, a2);
      sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
      sub_1ADE73AC8(v16);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
    }
  }

  return v3;
}

uint64_t sub_1ADE5F5C0(uint64_t a1, unint64_t a2)
{
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v32, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v23);
  if (v2)
  {
    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v33[4] = v28;
    v33[5] = v29;
    v33[6] = v30;
    v33[7] = v31;
    v33[0] = v24;
    v33[1] = v25;
    v33[2] = v26;
    v33[3] = v27;
    v6 = v32;
    sub_1ADDCEE40(&v23, v22, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED96F2A8;
    v3 = type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v9 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v9;
    v10 = MEMORY[0x1E69E7CC8];
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 57) = v6;
    *(inited + 16) = 0;
    *(inited + 24) = v9;
    type metadata accessor for CRProtoDecodeContext();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v10;
    v11[4] = v7;
    v11[5] = v10;
    v12 = *(&v25 + 1);

    sub_1ADDCEE40(&v23, v22, &qword_1EB5BA278, &unk_1AE241D30);

    sub_1AE1B5950(v12);

    sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
    *(inited + 16) = v11;

    sub_1ADDD5D3C(v33);
    v13 = sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
    v17 = v24;
    if (v24 >> 62 || (v24 & 0xF000000000000007) == 0xF000000000000007)
    {
      sub_1ADE42E40(v13, v14, v15);
      swift_allocError();
      *v21 = 0xD000000000000014;
      *(v21 + 8) = 0x80000001AE260180;
      *(v21 + 16) = 0;
      swift_willThrow();
      sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
      sub_1ADDCC35C(a1, a2);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
    }

    else
    {
      swift_initStackObject();
      sub_1ADE73AB0(v17);

      sub_1ADE73AB0(v17);
      v18 = sub_1ADDE77B4(v17, inited);

      v3 = sub_1AE1570D4(v18, v19, v20);
      sub_1ADE73AC8(v17);
      sub_1ADDCC35C(a1, a2);
      sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
    }
  }

  return v3;
}

void sub_1ADE5FA60(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __n128)@<X2>, void *a4@<X8>)
{
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v32, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v23);
  if (v4)
  {
    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v34 = a4;
    v33[4] = v28;
    v33[5] = v29;
    v33[6] = v30;
    v33[7] = v31;
    v33[0] = v24;
    v33[1] = v25;
    v33[2] = v26;
    v33[3] = v27;
    v9 = v32;
    sub_1ADDCEE40(&v23, v22, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED96F2A8;
    type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v12 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v12;
    v13 = MEMORY[0x1E69E7CC8];
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 57) = v9;
    *(inited + 16) = 0;
    *(inited + 24) = v12;
    type metadata accessor for CRProtoDecodeContext();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v13;
    v14[4] = v10;
    v14[5] = v13;
    v15 = *(&v25 + 1);

    sub_1ADDCEE40(&v23, v22, &qword_1EB5BA278, &unk_1AE241D30);

    sub_1AE1B5950(v15);

    sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
    *(inited + 16) = v14;

    sub_1ADDD5D3C(v33);
    v16 = sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
    v19 = v24;
    if (v24 >> 62 || (v24 & 0xF000000000000007) == 0xF000000000000007)
    {
      sub_1ADE42E40(v16, v17, v18);
      swift_allocError();
      *v21 = 0xD000000000000014;
      *(v21 + 8) = 0x80000001AE260180;
      *(v21 + 16) = 0;
      swift_willThrow();
      sub_1ADDCC35C(a1, a2);
      sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
    }

    else
    {
      swift_allocObject();
      sub_1ADE73AB0(v19);

      sub_1ADE73AB0(v19);
      v20 = sub_1ADDE77B4(v19, inited);

      (a3)(v22, v20);
      sub_1ADE73AC8(v19);
      sub_1ADDCC35C(a1, a2);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
      sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
      *v34 = v22[0];
    }
  }
}

void sub_1ADE60030()
{
  v0 = sub_1AE1FB7B8(1952739939, 0xE400000000000000);
  v1 = sub_1ADDCC6B4(v0);
  v3 = v2;

  qword_1ED96F240 = v1;
  *algn_1ED96F248 = v3;
}

uint64_t sub_1ADE60090(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_32;
    }

    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 < 8)
      {
        goto LABEL_32;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= 8)
      {
        goto LABEL_11;
      }

LABEL_32:
      sub_1ADE42E40(a1, a2, a3);
      swift_allocError();
      *v29 = 0;
      *(v29 + 8) = 0;
LABEL_33:
      *(v29 + 16) = 4;
      return swift_willThrow();
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (BYTE6(a3) < 8uLL)
  {
    goto LABEL_32;
  }

LABEL_11:
  v12 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_22;
    }

    v14 = *(a4 + 16);
    v13 = *(a4 + 24);
    v15 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v12)
  {
    goto LABEL_22;
  }

  if (__OFSUB__(HIDWORD(a4), a4))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v15 = HIDWORD(a4) - a4;
LABEL_20:
  if (v15 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v16 = a4;
  v18 = sub_1AE23BE7C();
  v20 = v19;
  LOBYTE(v16) = sub_1ADDD6F8C(v18, v19, v16, a5);
  sub_1ADDCC35C(v18, v20);
  if ((v16 & 1) == 0)
  {
    goto LABEL_32;
  }

  v21 = sub_1AE23BE8C();
  if (v21 > 7u || ((0xF1u >> v21) & 1) == 0)
  {
    sub_1ADE42E40(v21, v22, v23);
    swift_allocError();
    *v29 = xmmword_1AE241280;
    goto LABEL_33;
  }

  v24 = 0x302010000000000uLL >> (8 * (v21 & 0x1Fu));
  if (v7 == 2)
  {
    v31 = *(a2 + 16);
    v32 = sub_1AE23BB7C();
    if (v32)
    {
      v33 = v32;
      v34 = sub_1AE23BBAC();
      if (__OFSUB__(v31, v34))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v28 = v31 - v34 + v33;
      sub_1AE23BB9C();
      if (v28)
      {
LABEL_38:
        result = *(v28 + 6);
LABEL_40:
        *v6 = v24;
        return result;
      }
    }

    else
    {
      sub_1AE23BB9C();
    }

    __break(1u);
    goto LABEL_49;
  }

  if (v7 != 1)
  {
    result = HIWORD(a2);
    goto LABEL_40;
  }

  if (a2 > a2 >> 32)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v25 = sub_1AE23BB7C();
  if (v25)
  {
    v26 = v25;
    v27 = sub_1AE23BBAC();
    if (!__OFSUB__(a2, v27))
    {
      v28 = a2 - v27 + v26;
      a1 = sub_1AE23BB9C();
      if (!v28)
      {
        __break(1u);
        goto LABEL_32;
      }

      goto LABEL_38;
    }

LABEL_46:
    __break(1u);
  }

LABEL_49:
  result = sub_1AE23BB9C();
  __break(1u);
  return result;
}

void sub_1ADE6035C(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v14 = sub_1AE23C34C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 >> 62;
  v56 = a1;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_25;
    }

    v19 = *(a2 + 16);
    v18 = *(a2 + 24);
    v20 = __OFSUB__(v18, v19);
    v21 = v18 - v19;
    if (!v20)
    {
      if (v21 < 8)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (!v17)
  {
    if (BYTE6(a3) < 8uLL)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(a2) - a2 < 8)
  {
    goto LABEL_25;
  }

LABEL_11:
  v22 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_22;
    }

    v24 = *(a4 + 16);
    v23 = *(a4 + 24);
    v25 = v23 - v24;
    if (!__OFSUB__(v23, v24))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v22)
  {
    goto LABEL_22;
  }

  if (__OFSUB__(HIDWORD(a4), a4))
  {
LABEL_31:
    __break(1u);
    return;
  }

  v25 = HIDWORD(a4) - a4;
LABEL_20:
  if (v25 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v26 = sub_1AE23BE7C();
  v47[1] = v16;
  v27 = a6;
  v28 = v26;
  v30 = v29;
  v31 = sub_1ADDD6F8C(v26, v29, a4, a5);
  v32 = v28;
  a6 = v27;
  v33 = v30;
  v7 = v6;
  sub_1ADDCC35C(v32, v33);
  if (v31)
  {
    sub_1ADE60630(v56, a2, a3, a4, a5, 0, 0, v48);
    if (v6)
    {
      return;
    }

    v34 = *v48;
    v35 = *&v48[8];
    v36 = *v49;
    v37 = *&v49[8];
    v38 = *&v49[24];
    v39 = *v50;
    v40 = *&v50[8];
    v41 = *&v50[24];
    v42 = *&v50[40];
    v43 = *&v50[56];
    goto LABEL_27;
  }

LABEL_25:
  *v56 = 1;
  v54 = a2;
  v55 = a3;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  sub_1ADDD86D8(a2, a3);
  v44 = sub_1AE23C33C();
  sub_1ADE73BC8(v44, v45, v46);
  sub_1AE23C52C();
  if (v7)
  {
    return;
  }

  v34 = 0;
  v35 = *v48;
  v36 = *&v48[16];
  v37 = *v49;
  v38 = *&v49[16];
  v39 = *&v49[32];
  v40 = *v50;
  v41 = *&v50[16];
  v42 = *&v50[32];
  v43 = *&v50[48];
LABEL_27:
  *a6 = v34;
  *(a6 + 8) = v35;
  *(a6 + 24) = v36;
  *(a6 + 32) = v37;
  *(a6 + 48) = v38;
  *(a6 + 64) = v39;
  *(a6 + 72) = v40;
  *(a6 + 88) = v41;
  *(a6 + 104) = v42;
  *(a6 + 120) = v43;
}

void sub_1ADE60630(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v132 = *MEMORY[0x1E69E9840];
  v14 = sub_1AE23C34C();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v21 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v21 != 2)
    {
      goto LABEL_32;
    }

    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (!v24)
    {
      if (v25 < 8)
      {
        goto LABEL_32;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_62;
  }

  if (v21)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= 8)
      {
        goto LABEL_11;
      }

LABEL_32:
      sub_1ADE42E40(v16, v17, v18);
      swift_allocError();
      *v44 = 0;
      *(v44 + 8) = 0;
      *(v44 + 16) = 4;
LABEL_33:
      swift_willThrow();
      return;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (BYTE6(a3) < 8uLL)
  {
    goto LABEL_32;
  }

LABEL_11:
  v26 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v26 != 2)
    {
      goto LABEL_22;
    }

    v28 = *(a4 + 16);
    v27 = *(a4 + 24);
    v29 = v27 - v28;
    if (!__OFSUB__(v27, v28))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v26)
  {
    goto LABEL_22;
  }

  if (__OFSUB__(HIDWORD(a4), a4))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v29 = HIDWORD(a4) - a4;
LABEL_20:
  if (v29 < 0)
  {
    __break(1u);
  }

LABEL_22:
  v91 = v19;
  v92 = v16;
  v90 = v20;
  v93 = a8;
  v30 = sub_1AE23BE7C();
  v32 = v31;
  v33 = sub_1ADDD6F8C(v30, v31, a4, a5);
  v34 = v30;
  v35 = v8;
  sub_1ADDCC35C(v34, v32);
  if (!v33)
  {
    goto LABEL_32;
  }

  v36 = sub_1AE23BE8C();
  if (v36 > 7u || ((0xF1u >> v36) & 1) == 0)
  {
    sub_1ADE42E40(v36, v37, v38);
    swift_allocError();
    *v45 = xmmword_1AE241280;
    *(v45 + 16) = 4;
    goto LABEL_33;
  }

  v39 = 0x1Fu >> v36;
  v89 = 0x302010000000000uLL >> (8 * (v36 & 0x1Fu));
  if (v21 != 2)
  {
    if (v21 != 1)
    {
      v43 = HIWORD(a2);
      if (v39)
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (a2 <= a2 >> 32)
    {
      v40 = sub_1AE23BB7C();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1AE23BBAC();
        if (!__OFSUB__(a2, v42))
        {
          v43 = a2 - v42 + v41;
          sub_1AE23BB9C();
          v35 = v8;
          if (!v43)
          {
            goto LABEL_69;
          }

LABEL_38:
          LOWORD(v43) = *(v43 + 6);
          if (v39)
          {
LABEL_39:
            if (v21 == 2)
            {
              v50 = *(a2 + 16);
              v51 = *(a2 + 24);
            }

            else if (v21 == 1)
            {
              v50 = a2;
              v51 = a2 >> 32;
            }

            else
            {
              v50 = 0;
              v51 = BYTE6(a3);
            }

            if (v51 < 8 || v51 < v50)
            {
              goto LABEL_71;
            }

            *&v98 = sub_1AE23BE7C();
            *(&v98 + 1) = v56;
            *&v114[0] = 0;
            v112 = 0u;
            v113 = 0u;
            v57 = sub_1AE23C33C();
            sub_1ADE74344(v57, v58, v59);
            v60 = sub_1AE23C52C();
            if (v35)
            {
              sub_1ADE42E40(v60, v61, v62);
              swift_allocError();
              *v63 = xmmword_1AE241D10;
              *(v63 + 16) = 0;
              swift_willThrow();

              return;
            }

            v52 = v43;
            v64 = *(&v104 + 1);
            type metadata accessor for Upgrade4to5();
            v65 = swift_allocObject();
            v66 = MEMORY[0x1E69E7CC0];
            v67 = MEMORY[0x1E69E7CC8];
            v65[2] = MEMORY[0x1E69E7CC0];
            v65[3] = v67;
            v65[4] = v66;
            v65[5] = v67;
            v65[6] = 0;
            v65[7] = 0;
            *a1 = v89;

            sub_1AE1988E8(v68, v64, &v123);

            swift_bridgeObjectRelease_n();
            v70 = v130;
            v69 = v131;
            v72 = v128;
            v71 = v129;
            v73 = v126;
            v74 = v125;
            v75 = v127;
            v76 = v124;
            v77 = v123;
            v53 = v93;
LABEL_60:
            *v53 = v52;
            *(v53 + 8) = v77;
            *(v53 + 24) = v76;
            *(v53 + 32) = v74;
            *(v53 + 48) = v73;
            *(v53 + 64) = v75;
            *(v53 + 72) = v72;
            *(v53 + 88) = v71;
            *(v53 + 104) = v70;
            *(v53 + 120) = v69;
            return;
          }

LABEL_43:
          v52 = v43;
          *a1 = v89;
          if (v21 == 2)
          {
            v54 = *(a2 + 16);
            v55 = *(a2 + 24);
            v53 = v93;
          }

          else
          {
            v53 = v93;
            if (v21 == 1)
            {
              v54 = a2;
              v55 = a2 >> 32;
            }

            else
            {
              v54 = 0;
              v55 = BYTE6(a3);
            }
          }

          if (v55 < 8 || v55 < v54)
          {
            goto LABEL_72;
          }

          v78 = sub_1AE23BE7C();
          v80 = v79;
          v122 = 0;
          memset(v121, 0, sizeof(v121));
          sub_1AE23C33C();
          v119 = v78;
          v120 = v80;
          *(v114 + 8) = xmmword_1AE241910;
          *(&v113 + 1) = MEMORY[0x1E69E7CC0];
          *&v114[0] = MEMORY[0x1E69E7CC0];
          *(&v114[1] + 1) = MEMORY[0x1E69E7CC0];
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          *&v112 = 0xF000000000000007;
          *(&v112 + 1) = a6;
          *&v113 = a7;
          v81 = sub_1ADE74334(a6, a7);
          sub_1ADE73BC8(v81, v82, v83);
          sub_1AE23C55C();
          v84 = (v90 + 8);
          if (v35)
          {
            (*v84)(v91, v92);
            sub_1ADDCEDE0(v121, &qword_1EB5BA358, &qword_1AE242380);
            sub_1ADDCC35C(v119, v120);
            v108 = v115;
            v109 = v116;
            v110 = v117;
            v111 = v118;
            v104 = v112;
            v105 = v113;
            v106 = v114[0];
            v107 = v114[1];
            v85 = sub_1ADE6AF00(&v104);
            sub_1ADE42E40(v85, v86, v87);
            swift_allocError();
            *v88 = xmmword_1AE241D10;
            *(v88 + 16) = 0;
            swift_willThrow();

            return;
          }

          (*v84)(v91, v92);
          sub_1ADDCEDE0(v121, &qword_1EB5BA358, &qword_1AE242380);
          sub_1ADDCC35C(v119, v120);
          v100 = v115;
          v101 = v116;
          v102 = v117;
          v103 = v118;
          v98 = v112;
          v99[0] = v113;
          v99[1] = v114[0];
          v99[2] = v114[1];
          v104 = v112;
          v105 = v113;
          v106 = v114[0];
          v107 = v114[1];
          v108 = v115;
          v109 = v116;
          v110 = v117;
          v111 = v118;
          sub_1ADE73B00(&v98, &v97);
          sub_1ADE6AF00(&v104);
          v70 = v102;
          v69 = v103;
          v72 = v100;
          v71 = v101;
          v73 = *(&v99[1] + 8);
          v74 = *(v99 + 8);
          v75 = *(&v99[2] + 1);
          v76 = *&v99[0];
          v77 = v98;
          goto LABEL_60;
        }

LABEL_66:
        __break(1u);
      }

LABEL_68:
      sub_1AE23BB9C();
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    goto LABEL_64;
  }

  v46 = *(a2 + 16);
  v47 = sub_1AE23BB7C();
  if (!v47)
  {
    sub_1AE23BB9C();
    __break(1u);
    goto LABEL_68;
  }

  v48 = v47;
  v49 = sub_1AE23BBAC();
  if (__OFSUB__(v46, v49))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v43 = v46 - v49 + v48;
  sub_1AE23BB9C();
  v35 = v8;
  if (v43)
  {
    goto LABEL_38;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t CRCodableVersion.hashValue.getter()
{
  v1 = *v0;
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](v1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADE60EC4()
{
  v1 = *v0;
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](v1);
  return sub_1AE23E34C();
}

uint64_t sub_1ADE60F38(uint64_t a1)
{
  v2 = *v1;
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](v2);
  return sub_1AE23E34C();
}

uint64_t CRDT.serializedData(version:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = sub_1ADDCE2E4(0, v9);
  sub_1ADDCEDE0(v9, &qword_1EB5B9DB0, &qword_1AE240B80);
  LOBYTE(v9[0]) = v5;
  v7 = (*(*(a3 + 8) + 24))(v6, v9, a2);

  return v7;
}

uint64_t CRDT.serializedDataWithAssets(_:version:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 720) = v4;
  *(v5 + 712) = a4;
  *(v5 + 704) = a3;
  *(v5 + 696) = a1;
  *(v5 + 760) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1ADE6118C, 0, 0);
}

uint64_t sub_1ADE6118C()
{
  v23 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v22 = *(v0 + 760);
  type metadata accessor for CREncoder();
  v5 = swift_allocObject();
  *(v0 + 728) = v5;
  CREncoder.init(_:version:fileSignature:)(v4, &v22, 0, 0xF000000000000000);
  sub_1ADE6AD28(v1, v3, v2, (v0 + 144));
  v6 = *(v0 + 176);
  *(v0 + 736) = v6;
  swift_beginAccess();
  if (*(*(v5 + 88) + 16))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA280, &unk_1AE259B60);
    v8 = swift_task_alloc();
    *(v0 + 744) = v8;
    *v8 = v0;
    v8[1] = sub_1ADE614C8;
    v25 = v7;

    return MEMORY[0x1EEE6DD58](v0 + 688, &type metadata for Proto_Asset, v7, 0, 0, &unk_1AE241D50, v5, &type metadata for Proto_Asset);
  }

  else
  {
    v9 = *(v0 + 712);
    v10 = *(v0 + 704);
    *(*(v0 + 728) + 88) = MEMORY[0x1E69E7CC0];

    v11 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v11;
    *(v0 + 48) = v6;
    *(v0 + 88) = *(v0 + 216);
    *(v0 + 104) = *(v0 + 232);
    *(v0 + 120) = *(v0 + 248);
    *(v0 + 136) = *(v0 + 264);
    *(v0 + 56) = *(v0 + 184);
    *(v0 + 72) = *(v0 + 200);
    v12 = (*(*(*(v9 + 16) + 8) + 32))(v10);
    sub_1ADE6B034((v0 + 16), v12);
    v14 = v13;
    v16 = v15;

    v17 = *(v0 + 160);
    *(v0 + 528) = *(v0 + 144);
    *(v0 + 544) = v17;
    *(v0 + 560) = v6;
    v18 = *(v0 + 232);
    *(v0 + 600) = *(v0 + 216);
    *(v0 + 616) = v18;
    *(v0 + 632) = *(v0 + 248);
    *(v0 + 648) = *(v0 + 264);
    v19 = *(v0 + 200);
    *(v0 + 568) = *(v0 + 184);
    *(v0 + 584) = v19;
    sub_1ADE6AF00(v0 + 528);
    v20 = *(v0 + 8);

    return v20(v14, v16);
  }
}

uint64_t sub_1ADE614C8()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v3 = sub_1ADE617F4;
  }

  else
  {
    *(v2 + 680) = *(v2 + 736);
    v3 = sub_1ADE615E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1ADE615E4()
{
  sub_1ADDCEDE0(v0 + 680, &qword_1EB5BA280, &unk_1AE259B60);
  v1 = *(v0 + 688);
  v2 = *(v0 + 752);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  *(*(v0 + 728) + 88) = MEMORY[0x1E69E7CC0];

  v5 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v5;
  *(v0 + 48) = v1;
  *(v0 + 88) = *(v0 + 216);
  *(v0 + 104) = *(v0 + 232);
  *(v0 + 120) = *(v0 + 248);
  *(v0 + 136) = *(v0 + 264);
  *(v0 + 56) = *(v0 + 184);
  *(v0 + 72) = *(v0 + 200);
  v6 = (*(*(*(v3 + 16) + 8) + 32))(v4);
  sub_1ADE6B034((v0 + 16), v6);
  if (v2)
  {

    v9 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v9;
    *(v0 + 432) = v1;
    v10 = *(v0 + 232);
    *(v0 + 472) = *(v0 + 216);
    *(v0 + 488) = v10;
    *(v0 + 504) = *(v0 + 248);
    *(v0 + 520) = *(v0 + 264);
    v11 = *(v0 + 200);
    *(v0 + 440) = *(v0 + 184);
    *(v0 + 456) = v11;
    sub_1ADE6AF00(v0 + 400);
    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = v7;
    v15 = v8;

    v16 = *(v0 + 160);
    *(v0 + 528) = *(v0 + 144);
    *(v0 + 544) = v16;
    *(v0 + 560) = v1;
    v17 = *(v0 + 232);
    *(v0 + 600) = *(v0 + 216);
    *(v0 + 616) = v17;
    *(v0 + 632) = *(v0 + 248);
    *(v0 + 648) = *(v0 + 264);
    v18 = *(v0 + 200);
    *(v0 + 568) = *(v0 + 184);
    *(v0 + 584) = v18;
    sub_1ADE6AF00(v0 + 528);
    v19 = *(v0 + 8);

    return v19(v14, v15);
  }
}

uint64_t sub_1ADE617F4()
{
  v1 = *(v0 + 736);

  v2 = *(v0 + 160);
  *(v0 + 272) = *(v0 + 144);
  *(v0 + 288) = v2;
  *(v0 + 304) = v1;
  v3 = *(v0 + 232);
  *(v0 + 344) = *(v0 + 216);
  *(v0 + 360) = v3;
  *(v0 + 376) = *(v0 + 248);
  *(v0 + 392) = *(v0 + 264);
  v4 = *(v0 + 200);
  *(v0 + 312) = *(v0 + 184);
  *(v0 + 328) = v4;
  sub_1ADE6AF00(v0 + 272);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t CRValue.serializedData()(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = sub_1ADDCE2E4(0, v7);
  sub_1ADDCEDE0(v7, &qword_1EB5B9DB0, &qword_1AE240B80);
  LOBYTE(v7[0]) = 1;
  v5 = CRValue.serializedData(_:version:)(v4, v7, a1, a2);

  return v5;
}

uint64_t CRValue.serializedData(_:version:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = *a2;
  LOBYTE(v14[0]) = *a2;
  type metadata accessor for CREncoder();
  swift_allocObject();
  CREncoder.init(_:version:fileSignature:)(a1, v14, 0, 0xF000000000000000);
  sub_1ADE6A9AC(v23);
  if (v5)
  {
  }

  else
  {
    v19 = v23[4];
    v20 = v23[5];
    v21 = v23[6];
    v22 = v23[7];
    v15 = v23[0];
    v16 = v23[1];
    v17 = v23[2];
    v18 = v23[3];
    sub_1ADE67778(&v15);
    v11 = (*(*(*(a4 + 8) + 8) + 32))(a3);
    sub_1ADE675B8(&v15, (v10 + 4), v11);
    v6 = v13;

    v14[4] = v19;
    v14[5] = v20;
    v14[6] = v21;
    v14[7] = v22;
    v14[0] = v15;
    v14[1] = v16;
    v14[2] = v17;
    v14[3] = v18;
    sub_1ADE6AF00(v14);
  }

  return v6;
}

uint64_t CRValue.serializedDataWithAssets(_:version:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 720) = v4;
  *(v5 + 712) = a4;
  *(v5 + 704) = a3;
  *(v5 + 696) = a1;
  *(v5 + 760) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1ADE61B94, 0, 0);
}

uint64_t sub_1ADE61B94()
{
  v21 = v0;
  v1 = *(v0 + 696);
  v20[0] = *(v0 + 760);
  type metadata accessor for CREncoder();
  v2 = swift_allocObject();
  *(v0 + 728) = v2;
  CREncoder.init(_:version:fileSignature:)(v1, v20, 0, 0xF000000000000000);
  sub_1ADE6A9AC((v0 + 144));
  v3 = *(v0 + 176);
  *(v0 + 736) = v3;
  swift_beginAccess();
  if (*(*(v2 + 88) + 16))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA280, &unk_1AE259B60);
    v5 = swift_task_alloc();
    *(v0 + 744) = v5;
    *v5 = v0;
    v5[1] = sub_1ADE61EE8;
    v23 = v4;

    return MEMORY[0x1EEE6DD58](v0 + 688, &type metadata for Proto_Asset, v4, 0, 0, &unk_1AE241D68, v2, &type metadata for Proto_Asset);
  }

  else
  {
    v6 = *(v0 + 760);
    v7 = *(v0 + 712);
    v8 = *(v0 + 704);
    *(*(v0 + 728) + 88) = MEMORY[0x1E69E7CC0];

    v9 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v9;
    *(v0 + 48) = v3;
    *(v0 + 88) = *(v0 + 216);
    *(v0 + 104) = *(v0 + 232);
    *(v0 + 120) = *(v0 + 248);
    *(v0 + 136) = *(v0 + 264);
    *(v0 + 56) = *(v0 + 184);
    *(v0 + 72) = *(v0 + 200);
    v10 = (*(*(*(v7 + 8) + 8) + 32))(v8);
    sub_1ADE675B8((v0 + 16), (v6 + 4), v10);
    v12 = v11;
    v14 = v13;

    v15 = *(v0 + 160);
    *(v0 + 528) = *(v0 + 144);
    *(v0 + 544) = v15;
    *(v0 + 560) = v3;
    v16 = *(v0 + 232);
    *(v0 + 600) = *(v0 + 216);
    *(v0 + 616) = v16;
    *(v0 + 632) = *(v0 + 248);
    *(v0 + 648) = *(v0 + 264);
    v17 = *(v0 + 200);
    *(v0 + 568) = *(v0 + 184);
    *(v0 + 584) = v17;
    sub_1ADE6AF00(v0 + 528);
    v18 = *(v0 + 8);

    return v18(v12, v14);
  }
}

uint64_t sub_1ADE61EE8()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v3 = sub_1ADE7449C;
  }

  else
  {
    *(v2 + 680) = *(v2 + 736);
    v3 = sub_1ADE62004;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1ADE62004()
{
  sub_1ADDCEDE0(v0 + 680, &qword_1EB5BA280, &unk_1AE259B60);
  v1 = *(v0 + 688);
  v2 = *(v0 + 752);
  v3 = *(v0 + 760);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  *(*(v0 + 728) + 88) = MEMORY[0x1E69E7CC0];

  v6 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v6;
  *(v0 + 48) = v1;
  *(v0 + 88) = *(v0 + 216);
  *(v0 + 104) = *(v0 + 232);
  *(v0 + 120) = *(v0 + 248);
  *(v0 + 136) = *(v0 + 264);
  *(v0 + 56) = *(v0 + 184);
  *(v0 + 72) = *(v0 + 200);
  v7 = (*(*(*(v4 + 8) + 8) + 32))(v5);
  sub_1ADE675B8((v0 + 16), (v3 + 4), v7);
  if (v2)
  {

    v10 = *(v0 + 160);
    *(v0 + 400) = *(v0 + 144);
    *(v0 + 416) = v10;
    *(v0 + 432) = v1;
    v11 = *(v0 + 232);
    *(v0 + 472) = *(v0 + 216);
    *(v0 + 488) = v11;
    *(v0 + 504) = *(v0 + 248);
    *(v0 + 520) = *(v0 + 264);
    v12 = *(v0 + 200);
    *(v0 + 440) = *(v0 + 184);
    *(v0 + 456) = v12;
    sub_1ADE6AF00(v0 + 400);
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = v8;
    v16 = v9;

    v17 = *(v0 + 160);
    *(v0 + 528) = *(v0 + 144);
    *(v0 + 544) = v17;
    *(v0 + 560) = v1;
    v18 = *(v0 + 232);
    *(v0 + 600) = *(v0 + 216);
    *(v0 + 616) = v18;
    *(v0 + 632) = *(v0 + 248);
    *(v0 + 648) = *(v0 + 264);
    v19 = *(v0 + 200);
    *(v0 + 568) = *(v0 + 184);
    *(v0 + 584) = v19;
    sub_1ADE6AF00(v0 + 528);
    v20 = *(v0 + 8);

    return v20(v15, v16);
  }
}

void sub_1ADE62270(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v32, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v23);
  if (v3)
  {
    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v33[4] = v28;
    v33[5] = v29;
    v33[6] = v30;
    v33[7] = v31;
    v33[0] = v24;
    v33[1] = v25;
    v33[2] = v26;
    v33[3] = v27;
    v7 = v32;
    sub_1ADDCEE40(&v23, v22, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED96F2A8;
    type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v10 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v10;
    v11 = MEMORY[0x1E69E7CC8];
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 57) = v7;
    *(inited + 16) = 0;
    *(inited + 24) = v10;
    type metadata accessor for CRProtoDecodeContext();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v11;
    v12[4] = v8;
    v12[5] = v11;
    v13 = *(&v25 + 1);

    sub_1ADDCEE40(&v23, v22, &qword_1EB5BA278, &unk_1AE241D30);

    sub_1AE1B5950(v13);

    sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
    *(inited + 16) = v12;

    sub_1ADDD5D3C(v33);
    v14 = sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
    v17 = v24;
    if (v24 >> 62 || (v24 & 0xF000000000000007) == 0xF000000000000007)
    {
      sub_1ADE42E40(v14, v15, v16);
      swift_allocError();
      *v21 = 0xD000000000000014;
      *(v21 + 8) = 0x80000001AE260180;
      *(v21 + 16) = 0;
      swift_willThrow();
      sub_1ADDCC35C(a1, a2);
      sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
    }

    else
    {
      swift_initStackObject();
      sub_1ADE73AB0(v17);

      sub_1ADE73AB0(v17);
      v18 = sub_1ADDE77B4(v17, inited);

      CRCounter.init(from:)(v18, v19, v20, v22);
      sub_1ADE73AC8(v17);
      sub_1ADDCC35C(a1, a2);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
      sub_1ADDCEDE0(&v23, &qword_1EB5BA278, &unk_1AE241D30);
      *a3 = v22[0];
    }
  }
}

void CRDT<>.init(serializedData:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v34, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, v26);
  if (v5)
  {
    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v23 = a5;
    v24 = a4;
    v22 = v11;
    v36 = a3;
    v35[4] = v30;
    v35[5] = v31;
    v35[6] = v32;
    v35[7] = v33;
    v35[0] = *&v26[8];
    v35[1] = v27;
    v35[2] = v28;
    v35[3] = v29;
    v14 = v34;
    sub_1ADDCEE40(v26, v25, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED96F2A8;
    type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v17 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v17;
    v18 = MEMORY[0x1E69E7CC8];
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 57) = v14;
    *(inited + 16) = 0;
    *(inited + 24) = v17;
    type metadata accessor for CRProtoDecodeContext();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v18;
    v19[4] = v15;
    v19[5] = v18;
    v20 = *(&v27 + 1);

    sub_1ADDCEE40(v26, v25, &qword_1EB5BA278, &unk_1AE241D30);

    sub_1AE1B5950(v20);

    sub_1ADDCEDE0(v26, &qword_1EB5BA278, &unk_1AE241D30);
    *(inited + 16) = v19;

    sub_1ADDD5D3C(v35);
    sub_1ADDCEDE0(v26, &qword_1EB5BA278, &unk_1AE241D30);
    v21 = v36;
    sub_1ADDEF560(v36, v35, v36, v24);
    sub_1ADDCC35C(a1, a2);
    swift_setDeallocating();
    CRDecoder.deinit();
    swift_deallocClassInstance();
    sub_1ADDCEDE0(v26, &qword_1EB5BA278, &unk_1AE241D30);
    (*(v22 + 32))(v23, v13, v21);
  }
}

void PartialCRDT.init(serializedData:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ADDD86D8(a1, a2);
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED96F2A8;
  type metadata accessor for CRDecodeContext();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC8];
  v9[2] = MEMORY[0x1E69E7CC8];
  v9[3] = v10;
  v9[4] = v8;
  type metadata accessor for CRDecoder();
  v11 = swift_allocObject();

  sub_1ADE644B8(a1, a2, v9);
  if (!v4)
  {
    (*(*(a4 + 8) + 8))(v11, a3);
  }

  sub_1ADDCC35C(a1, a2);
}

void *PartialCRDT.deltaSerializedData(_:version:)(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v5 = v4;
    v8 = result;
    v11 = *a2;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v9 = v8;
    CREncoder.init(_:version:fileSignature:)(v9, &v11, 0, 0xF000000000000000);
    v10 = sub_1ADE6B2B0(v9, v5, a3, a4);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADE62E28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if ((~*a2 & 0xF000000000000007) != 0 && (*a2 & 0xC000000000000000) == 0x4000000000000000)
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();
    sub_1ADDCEE40(&v13, v12, &qword_1EB5BA300, &qword_1AE25A270);
    sub_1ADDCEE40(&v13, v12, &qword_1EB5BA300, &qword_1AE25A270);

    v11 = sub_1ADE0262C(v5 & 0x3FFFFFFFFFFFFFFFLL, v4);

    (*(*(*(a4 + 8) + 8) + 8))(v11, a3);
    return sub_1ADDCEDE0(&v13, &qword_1EB5BA300, &qword_1AE25A270);
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v7 = 0xD000000000000017;
    *(v7 + 8) = 0x80000001AE260320;
    *(v7 + 16) = 0;
    return swift_willThrow();
  }
}

void *sub_1ADE62FA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v9 = sub_1AE23C34C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1ADDD86D8(a1, a2);
  v10 = sub_1AE23C33C();
  sub_1ADE73BC8(v10, v11, v12);
  result = sub_1AE23C52C();
  if (!v4)
  {
    v27[4] = v23;
    v27[5] = v24;
    v27[6] = v25;
    v27[7] = v26;
    v27[0] = v19;
    v27[1] = v20;
    v27[2] = v21;
    v27[3] = v22;
    sub_1ADDD5D3C(v27);
    if ((~*&v27[0] & 0xF000000000000007) != 0 && (*&v27[0] & 0xC000000000000000) == 0x4000000000000000)
    {
      inited = *&v27[0] & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v15 = *(inited + 16);
    if ((~v15 & 0xF000000000000007) != 0 && ((v15 >> 59) & 0x1E | (v15 >> 2) & 1) == 6)
    {
      v16 = v15 & 0xFFFFFFFFFFFFFFBLL;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADDD6748(v17, v18, v5, a3);
    return sub_1ADE6AF00(v27);
  }

  return result;
}

double sub_1ADE631A8(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE6035C(&v30, a3, a4, qword_1ED96F240, *algn_1ED96F248, v24);
  if (!v5)
  {
    v14 = *&v28[0];
    v22 = *(v28 + 8);
    v29[4] = v28[0];
    v29[5] = v28[1];
    v29[6] = v28[2];
    v29[7] = v28[3];
    v29[0] = *&v24[8];
    v29[1] = v25;
    v29[2] = v26;
    v29[3] = v27;
    sub_1ADDD5D3C(v29);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    if (v14)
    {
      v16 = v22;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v14, v22);

    sub_1ADDD6748(v15, v16, v4, &v23);
    v22 = v23;
    v17 = *(&v26 + 1);
    v18 = v27;
    sub_1ADDD86D8(*(&v26 + 1), v27);
    sub_1ADDFE348(v17, v18, v19);
    sub_1ADDCEDE0(v24, &qword_1EB5BA278, &unk_1AE241D30);
    v20 = sub_1AE23BFEC();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v12, 0, 1, v20);
    (*(v21 + 32))(a2, v12, v20);
    result = *&v22;
    *a1 = v22;
  }

  return result;
}