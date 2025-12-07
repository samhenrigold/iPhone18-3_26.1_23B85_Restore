BOOL sub_1B0BAE058(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v18 = a2[7];
  if (v10)
  {
    v19 = 0x100000000000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v9 & 1) == 0;
  v21 = 0x1000000000000;
  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x1000000000000;
  }

  v20 = (v8 & 1) == 0;
  v23 = 0x10000000000;
  if (v20)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0x10000000000;
  }

  v20 = (v7 & 1) == 0;
  v25 = 0x100000000;
  if (v20)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0x100000000;
  }

  v20 = (v6 & 1) == 0;
  v27 = 0x1000000;
  if (v20)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0x1000000;
  }

  v29 = v3 & 1;
  v30 = ((v4 << 8) | (v5 << 16) | v28 | v26 | v24 | v22) + v19;
  if (v18)
  {
    v31 = 0x100000000000000;
  }

  else
  {
    v31 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v21 = 0;
  }

  if ((v16 & 1) == 0)
  {
    v23 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v25 = 0;
  }

  if ((v14 & 1) == 0)
  {
    v27 = 0;
  }

  v32 = (v12 << 8) | (v13 << 16) | v27 | v25;

  return sub_1B03A5B78(v30 | v29, ((v32 | v23 | v21) + v31) | v11 & 1);
}

uint64_t sub_1B0BAE164()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1B0BAE1A4(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(result + 48) + (v7 | (v6 << 6))) - 2 >= 3)
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0BAE254()
{
  result = qword_1EB6E51C0;
  if (!qword_1EB6E51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0BAE3AC()
{
  result = qword_1EB6E51C8;
  if (!qword_1EB6E51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51C8);
  }

  return result;
}

unint64_t sub_1B0BAE404()
{
  result = qword_1EB6E51D0;
  if (!qword_1EB6E51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51D0);
  }

  return result;
}

unint64_t sub_1B0BAE48C()
{
  result = qword_1EB6E51E8;
  if (!qword_1EB6E51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51E8);
  }

  return result;
}

unint64_t sub_1B0BAE4E4()
{
  result = qword_1EB6E51F0;
  if (!qword_1EB6E51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51F0);
  }

  return result;
}

unint64_t sub_1B0BAE53C()
{
  result = qword_1EB6E51F8;
  if (!qword_1EB6E51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E51F8);
  }

  return result;
}

uint64_t sub_1B0BAE5C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B0BAE618()
{
  result = qword_1EB6E5210;
  if (!qword_1EB6E5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5210);
  }

  return result;
}

uint64_t sub_1B0BAE67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_1B0E460B8();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_1B0BAEDAC(*(*(a1 + 48) + v5));
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_1B041D32C((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1B0425168(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
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

char *sub_1B0BAE8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v5 = 0;
  v6 = a1 + 56;
  v7 = a2 + 56;
  v8 = a3 + 56;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = byte_1F2710570[v5 + 32];
    if (*(v4 + 16) && (sub_1B0E46C28(), MEMORY[0x1B2728D70](v10), v11 = sub_1B0E46CB8(), v12 = -1 << *(v4 + 32), v13 = v11 & ~v12, ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
    {
      v14 = ~v12;
      while (*(*(v4 + 48) + v13) != v10)
      {
        v13 = (v13 + 1) & v14;
        if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
LABEL_9:
      v15 = sub_1B0AFF0E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1B0AFF0E8((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v18 = &v15[16 * v17];
      strcpy(v18 + 32, "not-completed");
      *(v18 + 23) = -4864;
      v3 = a3;
    }

    if (!*(a2 + 16))
    {
      v4 = a1;
      if (!*(v3 + 16))
      {
        goto LABEL_39;
      }

LABEL_22:
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v10);
      v23 = sub_1B0E46CB8();
      v24 = -1 << *(v3 + 32);
      v25 = v23 & ~v24;
      if ((*(v8 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        while (*(*(v3 + 48) + v25) != v10)
        {
          v25 = (v25 + 1) & v26;
          if (((*(v8 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1B0AFF0E8(0, *(v15 + 2) + 1, 1, v15);
        }

        v31 = *(v15 + 2);
        v30 = *(v15 + 3);
        if (v31 >= v30 >> 1)
        {
          v15 = sub_1B0AFF0E8((v30 > 1), v31 + 1, 1, v15);
        }

        *(v15 + 2) = v31 + 1;
        v32 = &v15[16 * v31];
        *(v32 + 4) = 0x6E65646E65706564;
        *(v32 + 5) = 0xEA00000000007963;
        v3 = a3;
      }

      goto LABEL_39;
    }

    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v10);
    v19 = sub_1B0E46CB8();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if ((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      v4 = a1;
      while (*(*(a2 + 48) + v21) != v10)
      {
        v21 = (v21 + 1) & v22;
        if (((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1B0AFF0E8(0, *(v15 + 2) + 1, 1, v15);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_1B0AFF0E8((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[16 * v28];
      *(v29 + 4) = 0x74726174736572;
      *(v29 + 5) = 0xE700000000000000;
      v3 = a3;
      if (*(a3 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = a1;
LABEL_21:
      if (*(v3 + 16))
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    if (*(v15 + 2))
    {
      v44 = sub_1B0BAEDAC(v10);
      v45 = v33;
      MEMORY[0x1B2726E80](8250, 0xE200000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
      v34 = sub_1B0E448E8();
      v36 = v35;

      MEMORY[0x1B2726E80](v34, v36);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1B0AFF0E8(0, *(v9 + 2) + 1, 1, v9);
      }

      v38 = *(v9 + 2);
      v37 = *(v9 + 3);
      if (v38 >= v37 >> 1)
      {
        v9 = sub_1B0AFF0E8((v37 > 1), v38 + 1, 1, v9);
      }

      *(v9 + 2) = v38 + 1;
      v39 = &v9[16 * v38];
      *(v39 + 4) = v44;
      *(v39 + 5) = v45;
      v3 = a3;
    }

    else
    {
    }

    ++v5;
  }

  while (v5 != 15);
  return v9;
}

unint64_t sub_1B0BAEDAC(char a1)
{
  result = 0x636E79736552;
  switch(a1)
  {
    case 1:
      result = 0x73654D6863746546;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 7:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x654D64616F6C7055;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0BAEF70(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B03D1C2C(*a1, *a2) & 1) == 0 || (sub_1B03D1C2C(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1B03D1C2C(v3, v5);
}

uint64_t sub_1B0BAEFF8(uint64_t a1, uint64_t a2)
{
  sub_1B0E46298();

  strcpy(v11, "completed: {");
  sub_1B0BAE67C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
  v4 = sub_1B0E448E8();
  v6 = v5;

  MEMORY[0x1B2726E80](v4, v6);

  MEMORY[0x1B2726E80](0x6174736572202C7DLL, 0xED00007B203A7472);
  sub_1B0BAE67C(a2);
  v7 = sub_1B0E448E8();
  v9 = v8;

  MEMORY[0x1B2726E80](v7, v9);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return v11[0];
}

uint64_t sub_1B0BAF1A4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 56;
LABEL_3:
  if (v3 <= 0xF)
  {
    v5 = 15;
  }

  else
  {
    v5 = v3;
  }

  while (v3 != v5)
  {
    v6 = v3++;
    if (*(v1 + 16))
    {
      v7 = byte_1F2710570[v6 + 32];
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v7);
      result = sub_1B0E46CB8();
      v8 = -1 << *(v1 + 32);
      v9 = result & ~v8;
      if ((*(v4 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v10 = ~v8;
        while (*(*(v1 + 48) + v9) != v7)
        {
          v9 = (v9 + 1) & v10;
          if (((*(v4 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v2 = (1 << v6) | v2;
        if (v3 == 15)
        {
          return v2;
        }

        goto LABEL_3;
      }
    }

LABEL_6:
    if (v3 == 15)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SyncStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B0BAF464@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  sub_1B0B7ABE4(a1, v29);
  if (v30)
  {
    sub_1B0450C74(v29, v26);
    sub_1B0E43998();
    v6 = v27;
    v7 = v28;
    __swift_project_boxed_opaque_existential_0(v26, v27);
    v8 = (*(v7 + 72))(v6, v7);
    v10 = v9;
    v11 = v27;
    v12 = v28;
    __swift_project_boxed_opaque_existential_0(v26, v27);
    (*(v12 + 32))(&v31, v11, v12);
    v13 = v32;
    v41 = v31;
    sub_1B039E440(&v41);
    v39 = v33;
    v40 = v34;
    sub_1B039E440(&v39);
    v14 = v27;
    v15 = v28;
    __swift_project_boxed_opaque_existential_0(v26, v27);
    (*(v15 + 32))(&v35, v14, v15);
    sub_1B0B7AC40(a1);
    v16 = v36;
    v17 = v37;
    v38 = v35;
    sub_1B039E440(&v38);
    v18 = a3 + *(type metadata accessor for Task.Logger(0) + 20);
    *v18 = a2;
    *(v18 + 8) = v8;
    *(v18 + 16) = v10;
    *(v18 + 24) = v13 | 0x8000000000000000;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
  }

  else
  {
    sub_1B0450C74(v29, v26);
    sub_1B0E43998();
    v19 = v27;
    v20 = v28;
    __swift_project_boxed_opaque_existential_0(v26, v27);
    v21 = (*(v20 + 32))(v19, v20);
    v23 = v22;
    sub_1B0B7AC40(a1);
    v24 = a3 + *(type metadata accessor for Task.Logger(0) + 20);
    *v24 = a2;
    *(v24 + 8) = v21;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 16) = v23;
    *(v24 + 40) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t sub_1B0BAF6BC(uint64_t a1)
{
  sub_1B0B7ABE4(v1, v11);
  if (v12)
  {
    sub_1B0450C74(v11, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    (*(v4 + 64))(a1, v3, v4);
  }

  else
  {
    sub_1B0450C74(v11, v8);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    (*(v6 + 24))(a1, v5, v6);
  }

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t TaskID.debugDescription.getter()
{
  v2 = sub_1B0E46FF8();
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v0 = sub_1B0E461A8();
  MEMORY[0x1B2726E80](v0);

  return v2;
}

uint64_t static TaskID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x1B27282E0);
  }

  return 0;
}

uint64_t TaskID.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E461D8();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BAF888()
{
  sub_1B0E46C28();
  sub_1B0E461D8();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BAF8F0(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E461D8();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BAF930()
{
  v2 = sub_1B0E46FF8();
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v0 = sub_1B0E461A8();
  MEMORY[0x1B2726E80](v0);

  return v2;
}

uint64_t sub_1B0BAF998(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x1B27282E0);
  }

  return 0;
}

uint64_t sub_1B0BAF9BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B0BAFA04(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

ValueMetadata *type metadata accessor for TaskID()
{
  return &type metadata for TaskID;
}

{
  return &type metadata for TaskID;
}

uint64_t sub_1B0BAFA88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0BAFAD4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 44) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned __int8 *sub_1B0BAFB44(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(result + 12) | (a2 << 63);
  *result = *result;
  *(result + 3) = v2;
  return result;
}

uint64_t sub_1B0BAFBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B0E439A8();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BAFC50@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B03D0E54(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 176 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 13, 176 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

char *sub_1B0BAFD0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B8C89C(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[24 * a1];
    v9 = *(v7 + 8);
    v7 += 32;
    v8 = v9;
    v10 = v7[4];
    memmove(v7, v7 + 24, 24 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    v11 = 0x100000000;
    if (!v10)
    {
      v11 = 0;
    }

    return (v11 | v8);
  }

  return result;
}

uint64_t sub_1B0BAFE18@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B8C900(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + 240 * a1);
    v10 = v9[15];
    a2[12] = v9[14];
    a2[13] = v10;
    *(a2 + 217) = *(v9 + 249);
    v11 = v9[11];
    a2[8] = v9[10];
    a2[9] = v11;
    v12 = v9[13];
    a2[10] = v9[12];
    a2[11] = v12;
    v13 = v9[7];
    a2[4] = v9[6];
    a2[5] = v13;
    v14 = v9[9];
    a2[6] = v9[8];
    a2[7] = v14;
    v15 = v9[3];
    *a2 = v9[2];
    a2[1] = v15;
    v16 = v9[5];
    a2[2] = v9[4];
    a2[3] = v16;
    result = memmove(v9 + 2, v9 + 17, 240 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0BAFEE8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B8C928(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 192 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    *(a2 + 169) = *(v8 + 201);
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 14, 192 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1B0BAFFF0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1B0B8C9A0(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

char *sub_1B0BB0080(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B8CA04(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[24 * a1];
    v7 = *(v6 + 8);
    v8 = v5 - 1;
    memmove(v6 + 32, v6 + 56, 24 * (v5 - 1 - a1));
    *(v3 + 2) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1B0BB0124@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = *(a3(0) - 8);
    v16 = *(v15 + 72);
    v17 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * a1;
    result = sub_1B0423CE8(v17, a5, a4);
    if (v16 > 0 || v17 >= v17 + v16 + v16 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

uint64_t sub_1B0BB0264()
{
  v1 = v0;
  v2 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03903A8(v1, v7, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;
  v10 = *(v7 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 1);
    v24 = *v7;
    v25 = sub_1B0E469C8();
    v26 = v12;
    MEMORY[0x1B2726E80](2304032, 0xE300000000000000);
    v24 = v10;
    v13 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v13);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    v14 = Action.kind.getter(v11);
    v15 = Action.Kind.description.getter(v14);
    MEMORY[0x1B2726E80](v15);

    sub_1B03E1BE8(v11);
    return v25;
  }

  else
  {
    v17 = *(v7 + 2);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    sub_1B0423CE8(&v7[*(v18 + 64)], v4, type metadata accessor for ClientCommand);
    LOBYTE(v25) = v9;
    HIDWORD(v25) = v10;
    v25 = sub_1B0E44B88();
    v26 = v19;
    MEMORY[0x1B2726E80](2304032, 0xE300000000000000);
    v24 = v17;
    v20 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v20);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    v21 = ClientCommand.logIdentifier.getter();
    MEMORY[0x1B2726E80](v21);

    v16 = v25;
    sub_1B0453ED8(v4, type metadata accessor for ClientCommand);
  }

  return v16;
}

void sub_1B0BB04F0(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v39 = a1;
  v36 = a2;
  v3 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v32 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v35 = v2;
  v14 = *v2;
  v15 = *(*v2 + 16);
  if (!v15)
  {
LABEL_12:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BE8, &qword_1B0EC9340);
    (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
    return;
  }

  v16 = 0;
  v37 = HIDWORD(v39);
  v17 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  while (1)
  {
    if (v16 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    sub_1B03903A8(v17 + *(v6 + 72) * v16, v13, type metadata accessor for TaskHistory.Running);
    sub_1B0423CE8(v13, v10, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0453ED8(v10, type metadata accessor for TaskHistory.Running);
LABEL_4:
    if (v15 == ++v16)
    {
      goto LABEL_12;
    }
  }

  v18 = v14;
  v19 = v15;
  v20 = v6;
  v21 = v5;
  v23 = *v10;
  v22 = v10[1];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0453ED8(v10 + *(v38 + 64), type metadata accessor for ClientCommand);
  v24 = v23 == v39;
  v5 = v21;
  v6 = v20;
  v15 = v19;
  v14 = v18;
  if (!v24 || v22 != v37)
  {
    goto LABEL_4;
  }

  v25 = v34;
  sub_1B0BB0124(v16, sub_1B0B8CA18, type metadata accessor for TaskHistory.Running, type metadata accessor for TaskHistory.Running, v34);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0453ED8(v25, type metadata accessor for TaskHistory.Running);
    goto LABEL_12;
  }

  v27 = *(v25 + 8);
  v28 = v33;
  sub_1B0423CE8(v25 + *(v38 + 64), v33, type metadata accessor for ClientCommand);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BE8, &qword_1B0EC9340);
  v30 = *(v29 + 48);
  v31 = v36;
  *v36 = v27;
  sub_1B0423CE8(v28, v31 + v30, type metadata accessor for ClientCommand);
  (*(*(v29 - 8) + 56))(v31, 0, 1, v29);
}

void sub_1B0BB08D8(int a1)
{
  v3 = type metadata accessor for TaskHistory.Running(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *v1;
  v13 = *(*v1 + 16);
  if (v13)
  {
    v19 = v1;
    v20 = v9;
    v14 = 0;
    v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = a1;
    do
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        return;
      }

      sub_1B03903A8(v15 + *(v4 + 72) * v14, v11, type metadata accessor for TaskHistory.Running);
      sub_1B0423CE8(v11, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = *v7;
        sub_1B03E1BE8(*(v7 + 1));
        if (v17 == v16)
        {
          v18 = v20;
          sub_1B0BB0124(v14, sub_1B0B8CA18, type metadata accessor for TaskHistory.Running, type metadata accessor for TaskHistory.Running, v20);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1B0453ED8(v18, type metadata accessor for TaskHistory.Running);
          }

          return;
        }
      }

      else
      {
        sub_1B0453ED8(v7, type metadata accessor for TaskHistory.Running);
      }

      ++v14;
    }

    while (v13 != v14);
  }
}

uint64_t sub_1B0BB0B38(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TaskHistory.Running(0);
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v17 = type metadata accessor for ClientCommand(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BB24B8(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_1B0398EFC(v16, &qword_1EB6E4BC8, &qword_1B0EC92F8);
  }

  sub_1B0423CE8(v16, v20, type metadata accessor for ClientCommand);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0) + 64);
  *v13 = a2;
  *(v13 + 2) = a3;
  sub_1B03903A8(v20, &v13[v22], type metadata accessor for ClientCommand);
  swift_storeEnumTagMultiPayload();
  v23 = v31;
  v24 = *v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1B0B00ED4(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1B0B00ED4((v25 > 1), v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  sub_1B0423CE8(v13, v24 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, type metadata accessor for TaskHistory.Running);
  *v23 = v24;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48);
  sub_1B03903A8(v20, v10, type metadata accessor for ClientCommand);
  *&v10[v27] = a3;
  swift_storeEnumTagMultiPayload();
  v28 = v23[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1B0B00EFC(0, v28[2] + 1, 1, v28);
  }

  v30 = v28[2];
  v29 = v28[3];
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1B0B00EFC((v29 > 1), v30 + 1, 1, v28);
  }

  sub_1B0453ED8(v20, type metadata accessor for ClientCommand);
  v28[2] = v30 + 1;
  result = sub_1B0423CE8(v10, v28 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v30, type metadata accessor for TaskHistory.Previous);
  v23[1] = v28;
  return result;
}

uint64_t sub_1B0BB0FA8(unint64_t a1, int a2, int a3, double a4)
{
  v8 = type metadata accessor for TaskHistory.Previous(0);
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TaskHistory.Running(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = a2;
  *(v14 + 1) = a3;
  *(v14 + 1) = a1;
  swift_storeEnumTagMultiPayload();
  v15 = *v4;
  sub_1B03E14B4(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1B0B00ED4(0, v15[2] + 1, 1, v15);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1B0B00ED4((v16 > 1), v17 + 1, 1, v15);
  }

  v15[2] = v17 + 1;
  sub_1B0423CE8(v14, v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v17, type metadata accessor for TaskHistory.Running);
  *v4 = v15;
  *v10 = a1;
  *(v10 + 2) = a3;
  swift_storeEnumTagMultiPayload();
  v18 = *(v4 + 8);
  sub_1B03E14B4(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1B0B00EFC(0, v18[2] + 1, 1, v18);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1B0B00EFC((v19 > 1), v20 + 1, 1, v18);
  }

  v18[2] = v20 + 1;
  result = sub_1B0423CE8(v10, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, type metadata accessor for TaskHistory.Previous);
  *(v4 + 8) = v18;
  return result;
}

uint64_t sub_1B0BB1260()
{
  v1 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B03903A8(v0, v3, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *v3;
    sub_1B03E1BE8(v3[1]);
  }

  else
  {
    v4 = *v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    sub_1B0453ED8(v3 + *(v5 + 64), type metadata accessor for ClientCommand);
  }

  return v4;
}

uint64_t sub_1B0BB1368(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B0B64DA4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0B64F5C(v2, v3);
}

uint64_t sub_1B0BB13C4(uint64_t a1, uint64_t a2, double a3)
{
  v52 = type metadata accessor for TaskHistory.Previous(0);
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v46 - v8;
  v49 = type metadata accessor for TaskHistory.Running(0);
  v9 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1B0E46298();

  v54 = 0x20676E696E6E7572;
  v55 = 0xE900000000000028;
  v53 = *(a1 + 16);
  v15 = v53;
  v16 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v16);

  MEMORY[0x1B2726E80](2065709609, 0xE400000000000000);
  v17 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v46 = v5;
    v47 = a2;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v15, 0);
    v17 = v53;
    v18 = v9;
    v19 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v48 = *(v18 + 72);
    do
    {
      sub_1B03903A8(v19, v14, type metadata accessor for TaskHistory.Running);
      sub_1B03903A8(v14, v11, type metadata accessor for TaskHistory.Running);
      v20 = sub_1B0E44BA8();
      v22 = v21;
      sub_1B0453ED8(v14, type metadata accessor for TaskHistory.Running);
      v53 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B041D32C((v23 > 1), v24 + 1, 1);
        v17 = v53;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v19 += v48;
      --v15;
    }

    while (v15);
    v5 = v46;
    a2 = v47;
  }

  v53 = v17;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v27 = sub_1B0E448E8();
  v29 = v28;

  MEMORY[0x1B2726E80](v27, v29);

  MEMORY[0x1B2726E80](0x6976657270202C7DLL, 0xEE0028203A73756FLL);
  v53 = *(a2 + 16);
  v30 = v53;
  v31 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v31);

  MEMORY[0x1B2726E80](2065709609, 0xE400000000000000);
  v32 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v49 = v26;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v30, 0);
    v32 = v53;
    v33 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v34 = *(v5 + 72);
    do
    {
      v35 = v50;
      sub_1B03903A8(v33, v50, type metadata accessor for TaskHistory.Previous);
      sub_1B03903A8(v35, v51, type metadata accessor for TaskHistory.Previous);
      v36 = sub_1B0E44BA8();
      v38 = v37;
      sub_1B0453ED8(v35, type metadata accessor for TaskHistory.Previous);
      v53 = v32;
      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1B041D32C((v39 > 1), v40 + 1, 1);
        v32 = v53;
      }

      *(v32 + 16) = v40 + 1;
      v41 = v32 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v33 += v34;
      --v30;
    }

    while (v30);
  }

  v53 = v32;
  v42 = sub_1B0E448E8();
  v44 = v43;

  MEMORY[0x1B2726E80](v42, v44);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return v54;
}

unint64_t sub_1B0BB18D4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B03903A8(v2, v8, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v10 = Action.kind.getter(*v8);
    v11 = Action.Kind.description.getter(v10);
    sub_1B03E1BE8(v9);
  }

  else
  {
    sub_1B0423CE8(v8, v5, type metadata accessor for ClientCommand);
    v11 = ClientCommand.logIdentifier.getter();
    sub_1B0453ED8(v5, type metadata accessor for ClientCommand);
  }

  return v11;
}

BOOL sub_1B0BB1A50(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (!*(a2 + 8))
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {
    return v2;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 8);
  }
}

uint64_t sub_1B0BB1A88(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03903A8(a1, v7, type metadata accessor for TaskHistory.Running);
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B0B00ED4(0, v8[2] + 1, 1, v8);
    *a2 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1B0B00ED4((v10 > 1), v11 + 1, 1, v8);
    *a2 = v8;
  }

  v8[2] = v11 + 1;
  return sub_1B0423CE8(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, type metadata accessor for TaskHistory.Running);
}

uint64_t sub_1B0BB1BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B03903A8(a1, v6, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *v6;
    sub_1B03E1BE8(v6[1]);
  }

  else
  {
    v8 = *v6;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    sub_1B0453ED8(v6 + *(v9 + 64), type metadata accessor for ClientCommand);
  }

  v10 = *(a2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v10;
  if ((result & 1) == 0)
  {
    result = sub_1B0B018C8(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *(a2 + 8) = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_1B0B018C8((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
    *(a2 + 8) = result;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 12 * v13;
  *(v14 + 32) = v8;
  *(v14 + 40) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t sub_1B0BB1D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33[-v8];
  v10 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E5228, &qword_1B0ECCE88);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v33[-v17];
  v20 = &v33[*(v19 + 56) - v17];
  sub_1B03903A8(a1, &v33[-v17], type metadata accessor for TaskHistory.Running);
  sub_1B03903A8(a2, v20, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B03903A8(v18, v15, type metadata accessor for TaskHistory.Running);
    v25 = v15[2];
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0) + 64);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = *v15;
      v27 = v15[1];
      v35 = v25;
      v36 = v27;
      v29 = *v20;
      v30 = *(v20 + 1);
      v34 = *(v20 + 2);
      sub_1B0423CE8(v15 + v26, v9, type metadata accessor for ClientCommand);
      sub_1B0423CE8(&v20[v26], v6, type metadata accessor for ClientCommand);
      v31 = v28 == v29 && v36 == v30;
      if (v31 && v35 == v34)
      {
        v24 = static ClientCommand.__derived_enum_equals(_:_:)(v9, v6);
        sub_1B0453ED8(v6, type metadata accessor for ClientCommand);
        sub_1B0453ED8(v9, type metadata accessor for ClientCommand);
        goto LABEL_17;
      }

      sub_1B0453ED8(v6, type metadata accessor for ClientCommand);
      sub_1B0453ED8(v9, type metadata accessor for ClientCommand);
      goto LABEL_20;
    }

    sub_1B0453ED8(v15 + v26, type metadata accessor for ClientCommand);
LABEL_9:
    sub_1B0398EFC(v18, qword_1EB6E5228, &qword_1B0ECCE88);
LABEL_21:
    v24 = 0;
    return v24 & 1;
  }

  sub_1B03903A8(v18, v12, type metadata accessor for TaskHistory.Running);
  v21 = *(v12 + 1);
  v22 = *(v12 + 1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B03E1BE8(v22);
    goto LABEL_9;
  }

  if (*v12 != *v20 || v21 != *(v20 + 1))
  {
    sub_1B03E1BE8(*(v20 + 1));
    sub_1B03E1BE8(v22);
LABEL_20:
    sub_1B0453ED8(v18, type metadata accessor for TaskHistory.Running);
    goto LABEL_21;
  }

  v23 = *(v20 + 1);
  v24 = static Action.__derived_enum_equals(_:_:)(v22, v23);
  sub_1B03E1BE8(v23);
  sub_1B03E1BE8(v22);
LABEL_17:
  sub_1B0453ED8(v18, type metadata accessor for TaskHistory.Running);
  return v24 & 1;
}

uint64_t sub_1B0BB2170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TaskHistory.Previous(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A30, &qword_1B0EC7698);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v17 = &v30 + *(v16 + 56) - v14;
  sub_1B03903A8(a1, &v30 - v14, type metadata accessor for TaskHistory.Previous);
  sub_1B03903A8(a2, v17, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B03903A8(v15, v12, type metadata accessor for TaskHistory.Previous);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48);
    v25 = *&v12[v24];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = *&v17[v24];
      sub_1B0423CE8(v17, v6, type metadata accessor for ClientCommand);
      v27 = static ClientCommand.__derived_enum_equals(_:_:)(v12, v6);
      sub_1B0453ED8(v6, type metadata accessor for ClientCommand);
      sub_1B0453ED8(v12, type metadata accessor for ClientCommand);
      if (v27)
      {
        v23 = v25 == v26;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    sub_1B0453ED8(v12, type metadata accessor for ClientCommand);
LABEL_8:
    sub_1B0398EFC(v15, &qword_1EB6E4A30, &qword_1B0EC7698);
    return 0;
  }

  sub_1B03903A8(v15, v9, type metadata accessor for TaskHistory.Previous);
  v18 = *v9;
  v19 = *(v9 + 2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B03E1BE8(v18);
    goto LABEL_8;
  }

  v20 = *v17;
  v21 = *(v17 + 2);
  v22 = static Action.__derived_enum_equals(_:_:)(v18, v20);
  sub_1B03E1BE8(v20);
  sub_1B03E1BE8(v18);
  if ((v22 & 1) == 0)
  {
LABEL_15:
    sub_1B0453ED8(v15, type metadata accessor for TaskHistory.Previous);
    return 0;
  }

  v23 = v19 == v21;
LABEL_11:
  v28 = v23;
  sub_1B0453ED8(v15, type metadata accessor for TaskHistory.Previous);
  return v28;
}

uint64_t sub_1B0BB24B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BB2528(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 60 != 3)
  {
    return 1;
  }

  v14 = swift_projectBox();
  sub_1B03903A8(v14, v13, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1B0453ED8(v13, type metadata accessor for UntaggedResponse);
    return 1;
  }

  v42 = a2;
  v15 = *v13;
  v16 = *(v13 + 1);
  v17 = *(v13 + 3);
  v18 = v13[32];
  v19 = *(v13 + 5);
  if (!v16)
  {
    v24 = *v13;
    v25 = 0;
    goto LABEL_8;
  }

  v40 = *(v13 + 2);
  v41 = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21 = Tag.init(_:)(v15, v16, v20);
  v22 = v15;
  if (v23)
  {
    v24 = v15;
    v25 = v16;
LABEL_8:
    sub_1B0AEF11C(v24, v25);
LABEL_24:

    return 0;
  }

  v27 = v21;
  v37 = v22;
  v38 = v18;
  v39 = v19;
  v28 = *(v42 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v28)
  {
LABEL_23:

    sub_1B0AEF11C(v37, v16);
    goto LABEL_24;
  }

  v44 = v27;
  v43 = HIDWORD(v27);
  v29 = v42 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v30 = *(v5 + 72);
  while (1)
  {
    sub_1B03903A8(v29, v10, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0453ED8(v10, type metadata accessor for TaskHistory.Running);
LABEL_12:
    v29 += v30;
    if (!--v28)
    {
      goto LABEL_23;
    }
  }

  v31 = *v10;
  v32 = *(v10 + 1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0453ED8(&v10[*(v33 + 64)], type metadata accessor for ClientCommand);
  if (v31 != v44 || v32 != v43)
  {
    goto LABEL_12;
  }

  sub_1B03903A8(v29, v7, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = *v7;
    v36 = *(v7 + 1);
    sub_1B0453ED8(&v7[*(v33 + 64)], type metadata accessor for ClientCommand);

    sub_1B0AEF11C(v37, v16);

    if (v35 == v44)
    {
      if (v36 == v43)
      {
        return 1;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_1B0453ED8(v7, type metadata accessor for TaskHistory.Running);
  __break(1u);
  return result;
}

void sub_1B0BB2948(uint64_t a1)
{
  if (!qword_1EB6DD138)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DD138);
    }
  }
}

void sub_1B0BB29B0()
{
  if (!qword_1EB6DCA00)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6DCA00);
    }
  }
}

uint64_t sub_1B0BB2A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B0BB2ABC(uint64_t a1)
{
  if (!qword_1EB6DCD00)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB6DCD00);
    }
  }
}

uint64_t sub_1B0BB2B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v9 + 40);
  v11.i64[0] = v5;
  v19 = *(v9 + 24);
  *&v12 = vdupq_laneq_s64(v19, 1).u64[0];
  *(&v12 + 1) = v10;
  *v20 = vzip1q_s64(v11, v19);
  *&v20[16] = v12;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command(0, v20);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19.i8[-v15];
  (*(v6 + 16))(v8, a2, v5, v14);
  *v16 = v4;
  *v20 = v5;
  *&v20[8] = v19;
  *&v20[24] = v10;
  v17 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command(0, v20);
  (*(v6 + 32))(&v16[*(v17 + 52)], v8, v5);
  sub_1B0E45358();
  return sub_1B0E452E8();
}

uint64_t sub_1B0BB2CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  *&v11 = v10;
  *(&v11 + 1) = v5;
  v18 = *(v9 + 32);
  v19 = v11;
  v20 = v18;
  v12 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action(0, &v19);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  (*(v6 + 16))(v8, a2, v5, v13);
  *v15 = v4;
  *&v19 = v10;
  *(&v19 + 1) = v5;
  v20 = v18;
  v16 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action(0, &v19);
  (*(v6 + 32))(&v15[*(v16 + 52)], v8, v5);
  sub_1B0E45358();
  return sub_1B0E452E8();
}

uint64_t sub_1B0BB2E6C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a7;
  v31[0] = a3;
  v31[1] = a4;
  v31[2] = a5;
  v31[3] = a6;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command(255, v31);
  v14 = sub_1B0E45D88();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v31[0] = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a1;
  sub_1B0E45358();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_getWitnessTable();
  sub_1B0E44FB8();

  v18 = *(v13 - 8);
  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v19 = *(a3 - 8);
    v20 = 1;
    v21 = v25;
  }

  else
  {
    v19 = *(a3 - 8);
    v22 = v25;
    (*(v19 + 16))(v25, &v17[*(v13 + 52)], a3);
    (*(v18 + 8))(v17, v13);
    v20 = 0;
    v21 = v22;
  }

  return (*(v19 + 56))(v21, v20, 1, a3);
}

uint64_t sub_1B0BB3114@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a7;
  v31[0] = a3;
  v31[1] = a4;
  v31[2] = a5;
  v31[3] = a6;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action(255, v31);
  v14 = sub_1B0E45D88();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v31[0] = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a1;
  sub_1B0E45358();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_getWitnessTable();
  sub_1B0E44FB8();

  v18 = *(v13 - 8);
  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v19 = *(a4 - 8);
    v20 = 1;
    v21 = v25;
  }

  else
  {
    v19 = *(a4 - 8);
    v22 = v25;
    (*(v19 + 16))(v25, &v17[*(v13 + 52)], a4);
    (*(v18 + 8))(v17, v13);
    v20 = 0;
    v21 = v22;
  }

  return (*(v19 + 56))(v21, v20, 1, a4);
}

uint64_t sub_1B0BB33BC(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v9[8] = v6;
  v9[9] = v7;
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command(0, v9);
  return sub_1B0E44A28() & 1;
}

uint64_t sub_1B0BB3444(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v9[8] = v6;
  v9[9] = v7;
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action(0, v9);
  return sub_1B0E44A28() & 1;
}

uint64_t sub_1B0BB34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command(0, &v14);
  swift_getWitnessTable();
  if (sub_1B0E45368())
  {
    v14 = a5;
    v15 = a6;
    v16 = a7;
    v17 = a8;
    type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action(0, &v14);
    swift_getWitnessTable();
    v12 = sub_1B0E45368();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1B0BB3610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v44 = v9;
  if (v9)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v9, 0);
    v12 = a8;
    v10 = v55;
    v13 = *(type metadata accessor for TaskHistory.Running(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    v16 = v9;
    do
    {
      sub_1B0BB3A44(v14, a3, a4, a5, a6, a7, &v53, v12);
      v17 = v53;
      v18 = v54;
      v55 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B041D32C((v19 > 1), v20 + 1, 1);
        v12 = a8;
        v10 = v55;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v14 += v15;
      --v16;
      v8 = a2;
    }

    while (v16);
    v9 = v44;
  }

  v22 = *(v8 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v55 = MEMORY[0x1E69E7CC0];
    v24 = v8;
    sub_1B041D32C(0, v22, 0);
    v25 = a8;
    v23 = v55;
    v26 = *(type metadata accessor for TaskHistory.Previous(0) - 8);
    v27 = v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v46 = *(v26 + 72);
    v43 = v22;
    v28 = v22;
    do
    {
      sub_1B0BB3F24(v27, a3, a4, a5, a6, a7, &v53, v25);
      v29 = v53;
      v30 = v54;
      v55 = v23;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1B041D32C((v31 > 1), v32 + 1, 1);
        v25 = a8;
        v23 = v55;
      }

      *(v23 + 16) = v32 + 1;
      v33 = v23 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v27 += v46;
      --v28;
    }

    while (v28);
    v22 = v43;
    v9 = v44;
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1B0E46298();

  v53 = 0x20676E696E6E7572;
  v54 = 0xE900000000000028;
  v55 = v9;
  v34 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v34);

  MEMORY[0x1B2726E80](2065709609, 0xE400000000000000);
  v55 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v35 = sub_1B0E448E8();
  v37 = v36;

  MEMORY[0x1B2726E80](v35, v37);

  MEMORY[0x1B2726E80](0x7472617473202C7DLL, 0xED000028203A6465);
  v55 = v22;
  v38 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v38);

  MEMORY[0x1B2726E80](2065709609, 0xE400000000000000);
  v55 = v23;
  v39 = sub_1B0E448E8();
  v41 = v40;

  MEMORY[0x1B2726E80](v39, v41);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return v53;
}

uint64_t sub_1B0BB3A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v50 = a6;
  v45 = a2;
  v46 = a3;
  v51 = a7;
  v49 = a8;
  v11 = sub_1B0E45D88();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = sub_1B0E45D88();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BB443C(a1, v20, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *v20;
  v22 = *(v20 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B03E1BE8(*(v20 + 1));
    v25 = v49;
    v24 = v50;
    v26 = sub_1B0BB3114(v22, v46, a4, a5, v50, v49, v13);
    MEMORY[0x1EEE9AC00](v26);
    *(&v45 - 4) = a4;
    *(&v45 - 3) = a5;
    *(&v45 - 2) = v24;
    *(&v45 - 1) = v25;
    v27 = v48;
    sub_1B03F1A20(sub_1B0BB44A4, (&v45 - 6), v48, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v28, &v52);
    (*(v47 + 8))(v13, v27);
    if (v53)
    {
      v29 = v52;
    }

    else
    {
      v29 = 15932;
    }

    if (v53)
    {
      v30 = v53;
    }

    else
    {
      v30 = 0xE200000000000000;
    }

    v54 = v23;
    v52 = sub_1B0E469C8();
    v53 = v31;
    MEMORY[0x1B2726E80](2304032, 0xE300000000000000);
    v54 = v22;
    v32 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v32);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    MEMORY[0x1B2726E80](v29, v30);

    v34 = v52;
    v35 = v53;
  }

  else
  {
    LODWORD(v47) = *(v20 + 1);
    LODWORD(v48) = *(v20 + 2);
    LODWORD(v46) = v23;
    v36 = v49;
    v37 = v50;
    v38 = sub_1B0BB2E6C(v48, v45, a4, a5, v50, v49, v17);
    MEMORY[0x1EEE9AC00](v38);
    *(&v45 - 4) = a4;
    *(&v45 - 3) = a5;
    *(&v45 - 2) = v37;
    *(&v45 - 1) = v36;
    sub_1B03F1A20(sub_1B0BB4510, (&v45 - 6), v14, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v39, &v52);
    (*(v15 + 8))(v17, v14);
    if (v53)
    {
      v40 = v52;
    }

    else
    {
      v40 = 15932;
    }

    if (v53)
    {
      v41 = v53;
    }

    else
    {
      v41 = 0xE200000000000000;
    }

    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0) + 64);
    v52 = 0;
    v53 = 0xE000000000000000;
    LOBYTE(v54) = v46;
    v55 = v47;
    sub_1B0E46508();
    MEMORY[0x1B2726E80](2304032, 0xE300000000000000);
    v54 = v48;
    v43 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v43);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    MEMORY[0x1B2726E80](v40, v41);

    v34 = v52;
    v35 = v53;
    result = sub_1B0BB439C(&v20[v42]);
  }

  v44 = v51;
  *v51 = v34;
  v44[1] = v35;
  return result;
}

uint64_t sub_1B0BB3F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v45 = a6;
  v40 = a3;
  v41 = a2;
  v46 = a7;
  v44 = a8;
  v11 = sub_1B0E45D88();
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = sub_1B0E45D88();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for TaskHistory.Previous(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BB443C(a1, v19, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(v19 + 2);
    sub_1B03E1BE8(*v19);
    v22 = v44;
    v21 = v45;
    v23 = sub_1B0BB3114(v20, v40, a4, a5, v45, v44, v13);
    MEMORY[0x1EEE9AC00](v23);
    *(&v40 - 4) = a4;
    *(&v40 - 3) = a5;
    *(&v40 - 2) = v21;
    *(&v40 - 1) = v22;
    sub_1B03F1A20(sub_1B0BB4E2C, (&v40 - 6), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v24, &v47);
    (*(v43 + 8))(v13, v11);
    if (v48)
    {
      v25 = v47;
    }

    else
    {
      v25 = 15932;
    }

    if (v48)
    {
      v26 = v48;
    }

    else
    {
      v26 = 0xE200000000000000;
    }

    v47 = 9000;
    v48 = 0xE200000000000000;
    v49 = v20;
    v27 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v27);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    MEMORY[0x1B2726E80](v25, v26);

    v29 = v47;
    v30 = v48;
  }

  else
  {
    v31 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
    v33 = v44;
    v32 = v45;
    v34 = sub_1B0BB2E6C(v31, v41, a4, a5, v45, v44, v16);
    MEMORY[0x1EEE9AC00](v34);
    *(&v40 - 4) = a4;
    *(&v40 - 3) = a5;
    *(&v40 - 2) = v32;
    *(&v40 - 1) = v33;
    sub_1B03F1A20(sub_1B0BB4E44, (&v40 - 6), v14, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v35, &v47);
    (*(v42 + 8))(v16, v14);
    if (v48)
    {
      v36 = v47;
    }

    else
    {
      v36 = 15932;
    }

    if (v48)
    {
      v37 = v48;
    }

    else
    {
      v37 = 0xE200000000000000;
    }

    v47 = 9000;
    v48 = 0xE200000000000000;
    v49 = v31;
    v38 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v38);

    MEMORY[0x1B2726E80](8233, 0xE200000000000000);
    MEMORY[0x1B2726E80](v36, v37);

    v29 = v47;
    v30 = v48;
    result = sub_1B0BB439C(v19);
  }

  v39 = v46;
  *v46 = v29;
  v39[1] = v30;
  return result;
}

uint64_t sub_1B0BB439C(uint64_t a1)
{
  v2 = type metadata accessor for ClientCommand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0BB443C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0BB44BC@<X0>(void *a2@<X8>)
{
  result = sub_1B0E469E8();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1B0BB4528@<X0>(void *a2@<X8>)
{
  result = sub_1B0E469E8();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1B0BB457C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0BB45D0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BB4650(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1B0BB47B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_1B0BB49D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BB4A54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1B0BB4BB4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_1B0BB4DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0BB4EAC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1B2728DB0](*&v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0BB4F18()
{
  v1 = *(v0 + 8);
  MEMORY[0x1B2728D70](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1B2728DB0](*&v2);
}

uint64_t sub_1B0BB4F64(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*&v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x1B2728DB0](*&v4);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0BB4FFC()
{
  result = qword_1EB6E52B0;
  if (!qword_1EB6E52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E52B0);
  }

  return result;
}

uint64_t Update.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0BB50E8()
{
  result = qword_1EB6E52B8;
  if (!qword_1EB6E52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E52B8);
  }

  return result;
}

uint64_t sub_1B0BB513C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0BB5198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B0BB51F8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B0BB5244()
{
  v1 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B7EAA4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 12;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1B0B7EB08(v3);
      result = 2;
      break;
    case 2:
      sub_1B0B7EB08(v3);
      result = 3;
      break;
    case 3:
      sub_1B0B7EB08(v3);
      result = 4;
      break;
    case 4:
      sub_1B0B7EB08(v3);
      result = 5;
      break;
    case 5:
      sub_1B0B7EB08(v3);
      result = 6;
      break;
    case 6:
      sub_1B0B7EB08(v3);
      result = 20;
      break;
    case 7:
      sub_1B0B7EB08(v3);
      result = 7;
      break;
    case 8:
      sub_1B0B7EB08(v3);
      result = 8;
      break;
    case 9:
      sub_1B0B7EB08(v3);
      result = 9;
      break;
    case 10:
      sub_1B0B7EB08(v3);
      result = 19;
      break;
    case 11:
      sub_1B0B7EB08(v3);
      result = 10;
      break;
    case 12:
      sub_1B0B7EB08(v3);
      result = 18;
      break;
    case 13:
      sub_1B0B7EB08(v3);
      result = 11;
      break;
    case 14:
      sub_1B0B7EB08(v3);
      result = 23;
      break;
    case 15:
      return result;
    case 16:
      result = 13;
      break;
    case 17:
      result = 14;
      break;
    case 18:
      sub_1B0B7EB08(v3);
      result = 21;
      break;
    case 19:
      sub_1B0B7EB08(v3);
      result = 22;
      break;
    case 20:
      sub_1B0B7EB08(v3);
      result = 15;
      break;
    case 21:
      sub_1B0B7EB08(v3);
      result = 16;
      break;
    case 22:
      sub_1B0B7EB08(v3);
      result = 17;
      break;
    default:
      sub_1B0B7EB08(v3);
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_1B0BB5448(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v62 = a1;
  v58 = a7;
  v56 = a3;
  v57 = a6;
  v60 = a5;
  v61 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50[-v15];
  v17 = sub_1B0E43868();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = tracingSignposter.unsafeMutableAddressor();
  (*(v18 + 16))(v20, v21, v17);
  sub_1B03B5C80(a8, v16, &unk_1EB6E2990, &qword_1B0E9B060);
  sub_1B03B2000(a9, a10);
  sub_1B03B2000(a9, a10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = sub_1B0E43858();
  v23 = sub_1B0E45AE8();

  if ((sub_1B0E45D38() & 1) == 0)
  {
    sub_1B0391D50(a9, a10);

    sub_1B0391D50(a9, a10);
    sub_1B0398EFC(v16, &unk_1EB6E2990, &qword_1B0E9B060);
    return (*(v18 + 8))(v20, v17);
  }

  v52 = v20;
  v53 = v22;
  v54 = v17;
  v55 = v16;
  v51 = v23;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v65 = v26;
  *v24 = 141559555;
  *(v24 + 4) = 0x786F626C69616DLL;
  *(v24 + 12) = 2085;
  v63 = a4;
  v64 = v60;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = sub_1B0E44BA8();
  v29 = sub_1B0399D64(v27, v28, &v65);

  *(v24 + 14) = v29;
  *(v24 + 22) = 1040;
  v30 = v62;
  v31 = v61 - v62;
  if (!v62)
  {
    v31 = 0;
  }

  if (v31 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v31 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v61 = v26;
  *(v24 + 24) = v31;
  *(v24 + 28) = 2096;
  if (v30)
  {
    *(v24 + 30) = v30;
    *(v24 + 38) = 2112;
    v32 = sub_1B0BB5A1C(v57 & 0xFFFF010101010101, v58 & 1);
    *(v24 + 40) = v32;
    v33 = v25;
    *v25 = v32;
    *(v24 + 48) = 2048;
    v34 = v55;
    v35 = v59;
    sub_1B03B5C80(v55, v59, &unk_1EB6E2990, &qword_1B0E9B060);
    v36 = sub_1B0E43108();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_1B0398EFC(v34, &unk_1EB6E2990, &qword_1B0E9B060);
      sub_1B0398EFC(v35, &unk_1EB6E2990, &qword_1B0E9B060);
      v38 = 0;
    }

    else
    {
      sub_1B0E43028();
      v38 = v40;
      sub_1B0398EFC(v34, &unk_1EB6E2990, &qword_1B0E9B060);
      (*(v37 + 8))(v35, v36);
    }

    v41 = v18;
    *(v24 + 50) = v38;
    *(v24 + 58) = 2048;
    v42 = a10 >> 62;
    v44 = v53;
    v43 = v54;
    if ((a10 >> 62) > 1)
    {
      if (v42 != 2)
      {
        sub_1B0391D50(a9, a10);
        v45 = 0;
        goto LABEL_21;
      }

      v47 = *(a9 + 16);
      v46 = *(a9 + 24);
      sub_1B0391D50(a9, a10);
      v45 = v46 - v47;
      if (!__OFSUB__(v46, v47))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v42)
    {
      sub_1B0391D50(a9, a10);
      v45 = BYTE6(a10);
LABEL_21:
      *(v24 + 60) = v45;
      sub_1B0391D50(a9, a10);
      v48 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v44, v51, v48, "PersistenceEvent.update.messageDataForUpload", "mailbox %{sensitive,mask.mailbox}s, id %.*P, flags: %@, date %f, data %ld", v24, 0x44u);
      sub_1B0398EFC(v33, &unk_1EB6E2630, &qword_1B0E97970);
      MEMORY[0x1B272C230](v33, -1, -1);
      v49 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x1B272C230](v49, -1, -1);
      MEMORY[0x1B272C230](v24, -1, -1);

      return (*(v41 + 8))(v52, v43);
    }

    sub_1B0391D50(a9, a10);
    LODWORD(v45) = HIDWORD(a9) - a9;
    if (!__OFSUB__(HIDWORD(a9), a9))
    {
      v45 = v45;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

LABEL_25:
  sub_1B0391D50(a9, a10);
  sub_1B0391D50(a9, a10);
  result = sub_1B0398EFC(v55, &unk_1EB6E2990, &qword_1B0E9B060);
  __break(1u);
  return result;
}

uint64_t sub_1B0BB5A1C(unint64_t a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = sub_1B0AFF0E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1B0AFF0E8((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 0x646165726E75;
  *(v7 + 5) = 0xE600000000000000;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
    }

    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1B0AFF0E8((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    v10 = &v4[16 * v9];
    *(v10 + 4) = 0x646574656C6564;
    *(v10 + 5) = 0xE700000000000000;
  }

LABEL_12:
  if ((a1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_1B0AFF0E8((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    *(v13 + 4) = 0x6465726577736E61;
    *(v13 + 5) = 0xE800000000000000;
    if ((a1 & 0x1000000) == 0)
    {
LABEL_14:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
  }

  v15 = *(v4 + 2);
  v14 = *(v4 + 3);
  if (v15 >= v14 >> 1)
  {
    v4 = sub_1B0AFF0E8((v14 > 1), v15 + 1, 1, v4);
  }

  *(v4 + 2) = v15 + 1;
  v16 = &v4[16 * v15];
  *(v16 + 4) = 0x7466617264;
  *(v16 + 5) = 0xE500000000000000;
  if ((a1 & 0x100000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x10000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
  }

  v18 = *(v4 + 2);
  v17 = *(v4 + 3);
  if (v18 >= v17 >> 1)
  {
    v4 = sub_1B0AFF0E8((v17 > 1), v18 + 1, 1, v4);
  }

  *(v4 + 2) = v18 + 1;
  v19 = &v4[16 * v18];
  *(v19 + 4) = 0x6564726177726F66;
  *(v19 + 5) = 0xE900000000000064;
  if ((a1 & 0x10000000000) == 0)
  {
LABEL_16:
    if ((a1 & 0xFF000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
  }

  v21 = *(v4 + 2);
  v20 = *(v4 + 3);
  if (v21 >= v20 >> 1)
  {
    v4 = sub_1B0AFF0E8((v20 > 1), v21 + 1, 1, v4);
  }

  *(v4 + 2) = v21 + 1;
  v22 = &v4[16 * v21];
  *(v22 + 4) = 0x7463657269646572;
  *(v22 + 5) = 0xEA00000000006465;
  if ((a1 & 0xFF000000000000) == 0)
  {
LABEL_17:
    if (!HIBYTE(a1))
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_40:
  v23 = sub_1B0E44B88();
  v25 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
  }

  v27 = *(v4 + 2);
  v26 = *(v4 + 3);
  if (v27 >= v26 >> 1)
  {
    v4 = sub_1B0AFF0E8((v26 > 1), v27 + 1, 1, v4);
  }

  *(v4 + 2) = v27 + 1;
  v28 = &v4[16 * v27];
  *(v28 + 4) = v23;
  *(v28 + 5) = v25;
  if (!HIBYTE(a1))
  {
LABEL_18:
    if ((a2 & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_45:
  v29 = sub_1B0E44B88();
  v31 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
  }

  v33 = *(v4 + 2);
  v32 = *(v4 + 3);
  if (v33 >= v32 >> 1)
  {
    v4 = sub_1B0AFF0E8((v32 > 1), v33 + 1, 1, v4);
  }

  *(v4 + 2) = v33 + 1;
  v34 = &v4[16 * v33];
  *(v34 + 4) = v29;
  *(v34 + 5) = v31;
  if (a2)
  {
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B0AFF0E8(0, *(v4 + 2) + 1, 1, v4);
    }

    v36 = *(v4 + 2);
    v35 = *(v4 + 3);
    if (v36 >= v35 >> 1)
    {
      v4 = sub_1B0AFF0E8((v35 > 1), v36 + 1, 1, v4);
    }

    *(v4 + 2) = v36 + 1;
    v37 = &v4[16 * v36];
    strcpy(v37 + 32, "iCloudCleanup");
    *(v37 + 23) = -4864;
  }

LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  sub_1B0E448E8();

  v38 = sub_1B0E44AC8();

  return v38;
}

uint64_t sub_1B0BB5F90(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_1B0BB60C8(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_1B0BB60C8(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_1B0BB60C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1B0E42A98();
  v7 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1B0E42AB8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_1B0BB6170(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v133 - v8;
  v143 = sub_1B0E43868();
  v140 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v137 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v133 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v133 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v133 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v134 = &v133 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v133 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v139 = &v133 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v133 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v133 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v133 - v34;
  v36 = sub_1B0E43828();
  v37 = *(v36 - 8);
  v141 = v36;
  v142 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E43838();
  v40 = a3 >> 60;
  if ((a3 >> 60) > 3)
  {
    if (v40 > 5)
    {
      v41 = v140;
      v42 = v143;
      if (v40 == 6)
      {
        v91 = tracingSignposter.unsafeMutableAddressor();
        v92 = v136;
        (*(v41 + 16))(v136, v91, v42);
        v93 = sub_1B0E43858();
        v94 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          v96 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v93, v94, v96, "ConnectionEvent.pathAttributesDidChange", "", v95, 2u);
          MEMORY[0x1B272C230](v95, -1, -1);
        }

        v50 = *(v41 + 8);
        v51 = v92;
        goto LABEL_48;
      }

      if (v40 == 7)
      {
        v43 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v44 = tracingSignposter.unsafeMutableAddressor();
        v45 = v137;
        (*(v41 + 16))(v137, v44, v42);
        v46 = sub_1B0E43858();
        v47 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v48 = swift_slowAlloc();
          *v48 = 16777472;
          v48[4] = v43;
          v49 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v46, v47, v49, "ConnectionEvent.betterPathDidChange", "%hhu", v48, 5u);
          MEMORY[0x1B272C230](v48, -1, -1);
        }

        v50 = *(v41 + 8);
        v51 = v45;
        goto LABEL_48;
      }

      v113 = v138;
      if (a3 == 0x8000000000000000)
      {
        v126 = tracingSignposter.unsafeMutableAddressor();
        v127 = v134;
        (*(v41 + 16))(v134, v126, v42);
        v128 = sub_1B0E43858();
        v129 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          v131 = sub_1B0E43818();
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v128, v129, v131, "ConnectionEvent.mailboxSelected", "no mailbox", v130, 2u);
          MEMORY[0x1B272C230](v130, -1, -1);
        }

        v50 = *(v41 + 8);
        v51 = v127;
        goto LABEL_48;
      }

      if (a3 == 0x8000000000000008)
      {
        v114 = tracingSignposter.unsafeMutableAddressor();
        v113 = v135;
        (*(v41 + 16))(v135, v114, v42);
        v115 = sub_1B0E43858();
        v116 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          v118 = sub_1B0E43818();
          v119 = "ConnectionEvent.empty";
LABEL_46:
          _os_signpost_emit_with_name_impl(&dword_1B0389000, v115, v116, v118, v119, "", v117, 2u);
          MEMORY[0x1B272C230](v117, -1, -1);
        }
      }

      else
      {
        v132 = tracingSignposter.unsafeMutableAddressor();
        (*(v41 + 16))(v113, v132, v42);
        v115 = sub_1B0E43858();
        v116 = sub_1B0E45AE8();
        if (sub_1B0E45D38())
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          v118 = sub_1B0E43818();
          v119 = "ConnectionEvent.stateDidChange";
          goto LABEL_46;
        }
      }

      v50 = *(v41 + 8);
      v51 = v113;
      goto LABEL_48;
    }

    v74 = v143;
    if (v40 != 4)
    {
      v120 = tracingSignposter.unsafeMutableAddressor();
      v121 = v140;
      (*(v140 + 16))(v24, v120, v74);
      v122 = sub_1B0E43858();
      v123 = sub_1B0E45AE8();
      if (sub_1B0E45D38())
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        v125 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v122, v123, v125, "ConnectionEvent.mailboxSelectFailed", "", v124, 2u);
        MEMORY[0x1B272C230](v124, -1, -1);
      }

      (*(v121 + 8))(v24, v74);
      return (*(v142 + 8))(v39, v141);
    }

    v138 = v39;
    v136 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v75 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
    v77 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v76 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v78 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v79 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v80 = tracingSignposter.unsafeMutableAddressor();
    v81 = v139;
    v82 = v140;
    (*(v140 + 16))(v139, v80, v74);
    sub_1B0A91FD0(v77, v76, v78, v79);
    sub_1B0A91FD0(v77, v76, v78, v79);
    v83 = sub_1B0E43858();
    LODWORD(v137) = sub_1B0E45AE8();
    if (sub_1B0E45D38())
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v144 = v85;
      *v84 = 136446466;
      v86 = Tag.debugDescription.getter(v136 | (v75 << 32));
      v88 = sub_1B0399D64(v86, v87, &v144);

      *(v84 + 4) = v88;
      *(v84 + 12) = 256;
      sub_1B0BB6FE0(v77, v76, v78, v79);
      *(v84 + 14) = v79 + 1;
      sub_1B0BB6FE0(v77, v76, v78, v79);
      v72 = v138;
      v89 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v83, v137, v89, "ConnectionEvent.commandDidComplete", "tag: %{public}s response: %hhu", v84, 0xFu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x1B272C230](v85, -1, -1);
      MEMORY[0x1B272C230](v84, -1, -1);

      (*(v82 + 8))(v139, v143);
      return (*(v142 + 8))(v72, v141);
    }

    sub_1B0BB6FE0(v77, v76, v78, v79);

    sub_1B0BB6FE0(v77, v76, v78, v79);
    (*(v82 + 8))(v81, v74);
    return (*(v142 + 8))(v138, v141);
  }

  if (v40 > 1)
  {
    v58 = v140;
    if (v40 != 2)
    {
      v103 = swift_projectBox();
      v104 = v9;
      sub_1B0B7EAA4(v103, v9);
      v105 = tracingSignposter.unsafeMutableAddressor();
      v106 = v143;
      (*(v58 + 16))(v29, v105, v143);
      v107 = v6;
      sub_1B0B7EAA4(v9, v6);
      v108 = sub_1B0E43858();
      v109 = sub_1B0E45AE8();
      if (sub_1B0E45D38())
      {
        v110 = swift_slowAlloc();
        *v110 = 16777472;
        v111 = sub_1B0BB5244();
        sub_1B0B7EB08(v107);
        v110[4] = v111;
        v112 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v108, v109, v112, "ConnectionEvent.untagged", "response: %hhu", v110, 5u);
        MEMORY[0x1B272C230](v110, -1, -1);
      }

      else
      {
        sub_1B0B7EB08(v107);
      }

      (*(v58 + 8))(v29, v106);
      sub_1B0B7EB08(v104);
      return (*(v142 + 8))(v39, v141);
    }

    v138 = v39;
    v59 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v60 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v61 = tracingSignposter.unsafeMutableAddressor();
    v62 = v143;
    (*(v58 + 16))(v21, v61, v143);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v63 = sub_1B0E43858();
    v64 = sub_1B0E45AE8();

    if (sub_1B0E45D38())
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v139 = v21;
      v67 = v58;
      v68 = v66;
      v146 = v66;
      *v65 = 141558275;
      *(v65 + 4) = 0x786F626C69616DLL;
      *(v65 + 12) = 2085;

      v144 = v59;
      v145 = v60;
      v69 = sub_1B0E44BA8();
      v71 = sub_1B0399D64(v69, v70, &v146);

      *(v65 + 14) = v71;
      v72 = v138;
      v73 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v63, v64, v73, "ConnectionEvent.mailboxSelected", "mailbox %{sensitive,mask.mailbox}s", v65, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x1B272C230](v68, -1, -1);
      MEMORY[0x1B272C230](v65, -1, -1);

      (*(v67 + 8))(v139, v143);
      return (*(v142 + 8))(v72, v141);
    }

    (*(v58 + 8))(v21, v62);
    return (*(v142 + 8))(v138, v141);
  }

  v52 = v140;
  if (v40)
  {
    v97 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v98 = tracingSignposter.unsafeMutableAddressor();
    (*(v52 + 16))(v32, v98, v143);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v99 = sub_1B0E43858();
    v100 = sub_1B0E45AE8();
    if (sub_1B0E45D38())
    {
      v101 = swift_slowAlloc();
      *v101 = 16777472;
      v101[4] = !CommandConnection.RecentErrors.isEmpty.getter(v97);

      v102 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v99, v100, v102, "ConnectionEvent.connectionDidFail", "error: %hhu", v101, 5u);
      MEMORY[0x1B272C230](v101, -1, -1);
    }

    else
    {
    }

    (*(v52 + 8))(v32, v143);
    return (*(v142 + 8))(v39, v141);
  }

  v53 = tracingSignposter.unsafeMutableAddressor();
  v42 = v143;
  (*(v52 + 16))(v35, v53, v143);
  v54 = sub_1B0E43858();
  v55 = sub_1B0E45AE8();
  if (sub_1B0E45D38())
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v54, v55, v57, "ConnectionEvent.connectionDidAuthenticate", "", v56, 2u);
    MEMORY[0x1B272C230](v56, -1, -1);
  }

  v50 = *(v52 + 8);
  v51 = v35;
LABEL_48:
  v50(v51, v42);
  return (*(v142 + 8))(v39, v141);
}

uint64_t sub_1B0BB6FE0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    sub_1B0447F00(result);
  }

  return result;
}

uint64_t sub_1B0BB7028(uint64_t a1, void *a2)
{
  v3 = 256;
  if (!*(v2 + 37))
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 36);
  v5 = 0x10000;
  if (!*(v2 + 38))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v2 + 39))
  {
    v6 = 0;
  }

  v7 = v4 | v5 | v6;
  v8 = 0x100000000;
  if (!*(v2 + 40))
  {
    v8 = 0;
  }

  v9 = 0x10000000000;
  if (!*(v2 + 41))
  {
    v9 = 0;
  }

  return sub_1B0BB5448(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v7 | v8 | v9 | (*(v2 + 42) << 48) | (*(v2 + 43) << 56), *(v2 + 44), *(v2 + 48), *(v2 + 56), *(v2 + 64));
}

uint64_t sub_1B0BB70E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1B0BB714C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

uint64_t sub_1B0BB71A8()
{
  result = sub_1B03D0770(&unk_1F2710FC0);
  qword_1EB737D98 = result;
  return result;
}

void sub_1B0BB71D0(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  if (*(v1 + 112) == 1)
  {
    sub_1B0A92638(a1, &v42 - v13);
    sub_1B0A92638(a1, v11);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v15 = sub_1B0E43988();
    v16 = sub_1B0E45908();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v45 = v18;
      *v17 = 68159235;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      v19 = &v11[*(v3 + 20)];
      *(v17 + 10) = *v19;
      *(v17 + 11) = 2082;
      v20 = &v14[*(v3 + 20)];
      *(v17 + 13) = sub_1B0399D64(*(v20 + 1), *(v20 + 2), &v45);
      *(v17 + 21) = 1040;
      *(v17 + 23) = 2;
      *(v17 + 27) = 512;
      v21 = *(v19 + 12);
      sub_1B0A9269C(v11);
      *(v17 + 29) = v21;
      *(v17 + 31) = 2160;
      *(v17 + 33) = 0x786F626C69616DLL;
      *(v17 + 41) = 2085;
      v22 = *(v20 + 4);
      v23 = *(v20 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v14);
      v43 = v22;
      v44 = v23;
      v24 = sub_1B0E44BA8();
      v26 = sub_1B0399D64(v24, v25, &v45);

      *(v17 + 43) = v26;
      _os_log_impl(&dword_1B0389000, v15, v16, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v17, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v18, -1, -1);
      v27 = v17;
LABEL_6:
      MEMORY[0x1B272C230](v27, -1, -1);

      return;
    }

    sub_1B0A9269C(v11);

    v41 = v14;
  }

  else
  {
    v28 = *(v1 + 104);
    sub_1B0A92638(a1, v8);
    sub_1B0A92638(a1, v5);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v15 = sub_1B0E43988();
    v29 = sub_1B0E45908();
    if (os_log_type_enabled(v15, v29))
    {
      v30 = swift_slowAlloc();
      v42 = v28;
      v31 = v30;
      v32 = swift_slowAlloc();
      v45 = v32;
      *v31 = 68159491;
      *(v31 + 4) = 2;
      *(v31 + 8) = 256;
      v33 = &v5[*(v3 + 20)];
      *(v31 + 10) = *v33;
      *(v31 + 11) = 2082;
      v34 = &v8[*(v3 + 20)];
      *(v31 + 13) = sub_1B0399D64(*(v34 + 1), *(v34 + 2), &v45);
      *(v31 + 21) = 1040;
      *(v31 + 23) = 2;
      *(v31 + 27) = 512;
      v35 = *(v33 + 12);
      sub_1B0A9269C(v5);
      *(v31 + 29) = v35;
      *(v31 + 31) = 2160;
      *(v31 + 33) = 0x786F626C69616DLL;
      *(v31 + 41) = 2085;
      v36 = *(v34 + 4);
      v37 = *(v34 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v8);
      v43 = v36;
      v44 = v37;
      v38 = sub_1B0E44BA8();
      v40 = sub_1B0399D64(v38, v39, &v45);

      *(v31 + 43) = v40;
      *(v31 + 51) = 2048;
      *(v31 + 53) = v42;
      _os_log_impl(&dword_1B0389000, v15, v29, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task (XYHIGHESTMODSEQ %llu).", v31, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v32, -1, -1);
      v27 = v31;
      goto LABEL_6;
    }

    sub_1B0A9269C(v5);

    v41 = v8;
  }

  sub_1B0A9269C(v41);
}

void sub_1B0BB7678(uint64_t a1, uint64_t a2)
{
  v97 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v97);
  v6 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v89[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v89[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v89[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v89[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v89[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v89[-v21];
  v108 = 0;
  v109 = 1;
  v99 = *(v2 + 40);
  v98 = *(v2 + 48);
  v100 = &v108;
  v101 = v2;
  if (*(a1 + 192) == 1)
  {
    v24 = v6;
    v26 = *(a1 + 176);
    v25 = *(a1 + 184);
    v105 = *(a1 + 168);
    v23 = v105;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v105, v99, v98, 0, sub_1B0BB84B0);
    v27 = v26;
    v6 = v24;
    sub_1B03BB638(v23, v27, v25, 1);
    v28 = v105;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v28;
    *(a1 + 192) = 1;
  }

  if (*(*(v2 + 120) + 16))
  {
    sub_1B0A92638(a2, v22);
    sub_1B0A92638(a2, v19);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0B23CFC(v2, &v105);
    v29 = sub_1B0E43988();
    v30 = sub_1B0E45908();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v104 = v91;
      *v31 = 68159491;
      *(v31 + 4) = 2;
      *(v31 + 8) = 256;
      v32 = v97;
      v33 = &v19[*(v97 + 20)];
      *(v31 + 10) = *v33;
      *(v31 + 11) = 2082;
      v34 = *(v32 + 20);
      v90 = v30;
      v35 = &v22[v34];
      *(v31 + 13) = sub_1B0399D64(*&v22[v34 + 8], *&v22[v34 + 16], &v104);
      *(v31 + 21) = 1040;
      *(v31 + 23) = 2;
      *(v31 + 27) = 512;
      v36 = *(v33 + 12);
      sub_1B0A9269C(v19);
      *(v31 + 29) = v36;
      *(v31 + 31) = 2160;
      *(v31 + 33) = 0x786F626C69616DLL;
      *(v31 + 41) = 2085;
      v37 = *(v35 + 4);
      LODWORD(v35) = *(v35 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v22);
      v102 = v37;
      v103 = v35;
      v38 = sub_1B0E44BA8();
      v40 = sub_1B0399D64(v38, v39, &v104);

      *(v31 + 43) = v40;
      *(v31 + 51) = 2048;
      v41 = *(v107 + 16);
      sub_1B0B23D58(&v105);
      *(v31 + 53) = v41;
      _os_log_impl(&dword_1B0389000, v29, v90, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent %ld changes to the persistence.", v31, 0x3Du);
      v42 = v91;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v42, -1, -1);
      MEMORY[0x1B272C230](v31, -1, -1);
    }

    else
    {
      sub_1B0B23D58(&v105);
      sub_1B0A9269C(v19);

      sub_1B0A9269C(v22);
    }
  }

  v43 = v108;
  if (v109 != 1)
  {
    v59 = v96;
    sub_1B0A92638(a2, v96);
    sub_1B0A92638(a2, v6);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v60 = sub_1B0E43988();
    v61 = sub_1B0E45908();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v102 = v95;
      *v62 = 68159491;
      *(v62 + 4) = 2;
      *(v62 + 8) = 256;
      v63 = v97;
      v64 = &v6[*(v97 + 20)];
      *(v62 + 10) = *v64;
      *(v62 + 11) = 2082;
      v65 = &v59[*(v63 + 20)];
      *(v62 + 13) = sub_1B0399D64(*(v65 + 1), *(v65 + 2), &v102);
      *(v62 + 21) = 1040;
      *(v62 + 23) = 2;
      *(v62 + 27) = 512;
      v66 = *(v64 + 12);
      sub_1B0A9269C(v6);
      *(v62 + 29) = v66;
      *(v62 + 31) = 2160;
      *(v62 + 33) = 0x786F626C69616DLL;
      *(v62 + 41) = 2085;
      v67 = *(v65 + 4);
      v68 = *(v65 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v59);
      v105 = v67;
      v106 = v68;
      v69 = sub_1B0E44BA8();
      v71 = sub_1B0399D64(v69, v70, &v102);

      *(v62 + 43) = v71;
      *(v62 + 51) = 2048;
      *(v62 + 53) = v43;
      _os_log_impl(&dword_1B0389000, v60, v61, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating local HIGHESTMODSEQ to %llu.", v62, 0x3Du);
      v72 = v95;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v72, -1, -1);
      MEMORY[0x1B272C230](v62, -1, -1);
    }

    else
    {
      sub_1B0A9269C(v6);

      sub_1B0A9269C(v59);
    }

    v73 = v43;
    v74 = 0;
    goto LABEL_19;
  }

  if (v108)
  {
    v44 = v95;
    sub_1B0A92638(a2, v95);
    v45 = v94;
    sub_1B0A92638(a2, v94);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v46 = sub_1B0E43988();
    v47 = sub_1B0E45908();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v102 = v49;
      *v48 = 68159235;
      *(v48 + 4) = 2;
      *(v48 + 8) = 256;
      v50 = v97;
      v51 = &v45[*(v97 + 20)];
      *(v48 + 10) = *v51;
      *(v48 + 11) = 2082;
      v52 = &v44[*(v50 + 20)];
      *(v48 + 13) = sub_1B0399D64(*(v52 + 1), *(v52 + 2), &v102);
      *(v48 + 21) = 1040;
      *(v48 + 23) = 2;
      *(v48 + 27) = 512;
      v53 = *(v51 + 12);
      sub_1B0A9269C(v45);
      *(v48 + 29) = v53;
      *(v48 + 31) = 2160;
      *(v48 + 33) = 0x786F626C69616DLL;
      *(v48 + 41) = 2085;
      v54 = *(v52 + 4);
      v55 = *(v52 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v44);
      v105 = v54;
      v106 = v55;
      v56 = sub_1B0E44BA8();
      v58 = sub_1B0399D64(v56, v57, &v102);

      *(v48 + 43) = v58;
      _os_log_impl(&dword_1B0389000, v46, v47, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Clearing local HIGHESTMODSEQ.", v48, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v49, -1, -1);
      MEMORY[0x1B272C230](v48, -1, -1);
    }

    else
    {
      sub_1B0A9269C(v45);

      sub_1B0A9269C(v44);
    }

    v73 = 0;
    v74 = 1;
LABEL_19:
    sub_1B0B2C120(v73, v74, v99, v98);
    return;
  }

  v75 = v93;
  sub_1B0A92638(a2, v93);
  v76 = v92;
  sub_1B0A92638(a2, v92);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v77 = sub_1B0E43988();
  v78 = sub_1B0E45908();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v102 = v80;
    *v79 = 68159235;
    *(v79 + 4) = 2;
    *(v79 + 8) = 256;
    v81 = v97;
    v82 = &v76[*(v97 + 20)];
    *(v79 + 10) = *v82;
    *(v79 + 11) = 2082;
    v83 = &v75[*(v81 + 20)];
    *(v79 + 13) = sub_1B0399D64(*(v83 + 1), *(v83 + 2), &v102);
    *(v79 + 21) = 1040;
    *(v79 + 23) = 2;
    *(v79 + 27) = 512;
    v84 = *(v82 + 12);
    sub_1B0A9269C(v76);
    *(v79 + 29) = v84;
    *(v79 + 31) = 2160;
    *(v79 + 33) = 0x786F626C69616DLL;
    *(v79 + 41) = 2085;
    v85 = *(v83 + 4);
    LODWORD(v82) = *(v83 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v75);
    v105 = v85;
    v106 = v82;
    v86 = sub_1B0E44BA8();
    v88 = sub_1B0399D64(v86, v87, &v102);

    *(v79 + 43) = v88;
    _os_log_impl(&dword_1B0389000, v77, v78, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No change to local HIGHESTMODSEQ.", v79, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v80, -1, -1);
    MEMORY[0x1B272C230](v79, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v76);

    sub_1B0A9269C(v75);
  }
}

uint64_t sub_1B0BB8134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 112))
  {
    v5 = (a1 + *(type metadata accessor for MailboxSyncState(0) + 48));
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v8 = (*(v7 + 72))(v6, v7);
  }

  else
  {
    v9 = 0;
    v8 = *(a3 + 104);
  }

  *a2 = v8;
  *(a2 + 8) = v9 & 1;
  v10 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  (*(v12 + 48))(v11, v12);
  v13 = *(v10 + 24);
  v14 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v13);
  return (*(v14 + 80))(v13, v14);
}

double sub_1B0BB8234()
{
  if (qword_1EB6DDB00 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0BB8294@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  result = sub_1B0BB84B8(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B0BB8324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1B0BB836C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0BB83E0()
{
  result = qword_1EB6DDAF8;
  if (!qword_1EB6DDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDAF8);
  }

  return result;
}

unint64_t sub_1B0BB8434(uint64_t a1)
{
  result = sub_1B0BB845C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0BB845C()
{
  result = qword_1EB6DDAF0;
  if (!qword_1EB6DDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDAF0);
  }

  return result;
}

uint64_t sub_1B0BB84B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v105 = a4;
  v108 = a1;
  v109 = a2;
  v104 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v104);
  v8 = &v101[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v101[-v10];
  v118 = 0;
  v119 = MEMORY[0x1E69E7CC0];
  v120 = MEMORY[0x1E69E7CC0];
  v11 = (a3 + *(type metadata accessor for MailboxSyncState(0) + 48));
  v12 = v11[3];
  v13 = v11[4];
  v103 = v11;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  v107 = (*(v13 + 40))(v12, v13);
  v113 = v15;
  v114 = v14;
  v16 = *(v15 + 16);

  v115 = v5;
  v112 = v16;
  if (v16)
  {
    v17 = 0;
    v110 = v8;
    v111 = v114 + 32;
    for (i = (v113 + 48); ; i += 3)
    {
      if (v17 >= *(v114 + 16))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }

      if (v17 >= *(v113 + 16))
      {
        goto LABEL_76;
      }

      v19 = *(v111 + 4 * v17);
      v20 = *(i - 2);
      v21 = *(i - 8);
      v22 = *i;
      v23 = (v17 + 1);
      v24 = *(v5 + 120);
      if (!*(v24 + 16) || (v25 = sub_1B03FE284(*(v111 + 4 * v17)), (v26 & 1) == 0))
      {
        v29 = 0;
        v28 = 0;
        if (v22 == 1)
        {
LABEL_16:
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0429C7C(v28, v29, 1);
          v8 = v110;
          if (v23 >= v112)
          {
            break;
          }

          goto LABEL_41;
        }

        goto LABEL_9;
      }

      v116 = (v17 + 1);
      v27 = *(v24 + 56) + 24 * v25;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v30 == 1)
      {
        v23 = v116;
        if (v22 == 1)
        {
          goto LABEL_16;
        }

LABEL_9:
        v116 = v23;
        v30 = 1;
LABEL_10:
        swift_bridgeObjectRetain_n();
        sub_1B0429C7C(v28, v29, v30);
        sub_1B0429C7C(v20, v21, v22);
        goto LABEL_11;
      }

      if (v22 == 1)
      {
        goto LABEL_10;
      }

      if (v28 == 2)
      {
        if (v20 != 2)
        {
          goto LABEL_32;
        }
      }

      else if (v20 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v28 & 0xFFFFFFFF01010101, v29, v20 & 0xFFFFFFFF01010101, v21) & 1) == 0)
      {
        goto LABEL_32;
      }

      if (v30)
      {
        if (v22)
        {
          swift_bridgeObjectRetain_n();
          sub_1B0BB8F60(v28, v29, v30);
          sub_1B0BB8F60(v20, v21, v22);
          v102 = sub_1B0AFDF14(v30, v22);
          sub_1B0429C7C(v20, v21, v22);
          sub_1B0429C7C(v28, v29, v30);
          sub_1B0429C7C(v20, v21, v22);
          if (v102)
          {
LABEL_34:
            sub_1B0429C7C(v28, v29, v30);

            v5 = v115;
            goto LABEL_40;
          }
        }

        goto LABEL_33;
      }

      if (!v22)
      {
        goto LABEL_34;
      }

LABEL_32:
      swift_bridgeObjectRetain_n();
      sub_1B0429C7C(v20, v21, v22);
LABEL_33:
      sub_1B0429C7C(v28, v29, v30);
LABEL_11:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v5 = v115;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = *(v5 + 120);
      v32 = v117;
      v33 = sub_1B03FE284(v19);
      v35 = *(v32 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_79;
      }

      v39 = v34;
      if (*(v32 + 24) < v38)
      {
        sub_1B0B34D80(v38, isUniquelyReferenced_nonNull_native);
        v33 = sub_1B03FE284(v19);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_82;
        }

LABEL_19:
        v41 = v117;
        if ((v39 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v43 = v33;
      sub_1B0B8F95C();
      v33 = v43;
      v41 = v117;
      if ((v39 & 1) == 0)
      {
LABEL_37:
        *&v41[8 * (v33 >> 6) + 64] |= 1 << v33;
        *(*(v41 + 6) + 4 * v33) = v19;
        v44 = *(v41 + 7) + 24 * v33;
        *v44 = v20;
        *(v44 + 8) = v21;
        *(v44 + 16) = v22;
        v45 = *(v41 + 2);
        v37 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v37)
        {
          goto LABEL_80;
        }

        *(v41 + 2) = v46;
        goto LABEL_39;
      }

LABEL_20:
      v42 = *(v41 + 7) + 24 * v33;
      *v42 = v20;
      *(v42 + 8) = v21;
      *(v42 + 16) = v22;

LABEL_39:
      *(v5 + 120) = v41;
      sub_1B0BC8FC4(v20, v21, v22, v19);
LABEL_40:
      v8 = v110;
      if (v116 >= v112)
      {
        break;
      }

LABEL_41:
      ++v17;
    }
  }

  v48 = v118;
  v49 = v119;
  v50 = v120;
  if (!*(v120 + 16))
  {
    v70 = *(v5 + 128);
    if (sub_1B0A9F538(v70, 0, v108, v109, v47))
    {

      return 0;
    }

    if (*(v5 + 112) == 1)
    {
      v93 = v103[3];
      v94 = v103[4];
      __swift_project_boxed_opaque_existential_0(v103, v93);
      v95 = (*(v94 + 72))(v93, v94);
      LOBYTE(v93) = v96;

      if (v93)
      {
        if (!v95)
        {
          return 0;
        }

        v97 = swift_allocObject();
        v98 = *(v5 + 48);
        *(v97 + 16) = *(v5 + 40);
        *(v97 + 24) = v98;
        *(v97 + 32) = 0;
        *(v97 + 40) = 1;
LABEL_74:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return v70;
      }
    }

    else
    {
      v95 = *(v5 + 104);
    }

    v99 = swift_allocObject();
    v100 = *(v5 + 48);
    *(v99 + 16) = *(v5 + 40);
    *(v99 + 24) = v100;
    *(v99 + 32) = v95;
    *(v99 + 40) = 0;
    goto LABEL_74;
  }

  v51 = v105;
  v52 = v106;
  sub_1B0A92638(v105, v106);
  sub_1B0A92638(v51, v8);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v53 = sub_1B0E43988();
  v54 = sub_1B0E45908();
  v55 = os_log_type_enabled(v53, v54);
  v114 = v48;
  if (v55)
  {
    v56 = v52;
    v57 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v117 = v116;
    *v57 = 68159491;
    *(v57 + 4) = 2;
    *(v57 + 8) = 256;
    v58 = v104;
    v59 = &v8[*(v104 + 20)];
    *(v57 + 10) = *v59;
    *(v57 + 11) = 2082;
    v60 = v56 + *(v58 + 20);
    *(v57 + 13) = sub_1B0399D64(*(v60 + 8), *(v60 + 16), &v117);
    *(v57 + 21) = 1040;
    *(v57 + 23) = 2;
    *(v57 + 27) = 512;
    v61 = *(v59 + 12);
    sub_1B0A9269C(v8);
    *(v57 + 29) = v61;
    *(v57 + 31) = 2160;
    *(v57 + 33) = 0x786F626C69616DLL;
    *(v57 + 41) = 2085;
    v62 = *(v60 + 32);
    v63 = *(v60 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v56);
    v118 = v62;
    LODWORD(v119) = v63;
    v64 = sub_1B0E44BA8();
    v66 = sub_1B0399D64(v64, v65, &v117);
    v5 = v115;

    *(v57 + 43) = v66;
    *(v57 + 51) = 2048;
    v67 = *(v50 + 16);

    *(v57 + 53) = v67;

    _os_log_impl(&dword_1B0389000, v53, v54, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Got %ld flag/label changes.", v57, 0x3Du);
    v68 = v116;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v68, -1, -1);
    MEMORY[0x1B272C230](v57, -1, -1);
  }

  else
  {

    sub_1B0A9269C(v8);

    sub_1B0A9269C(v52);
  }

  v72 = *(v5 + 128);
  if (sub_1B0A9F538(v72, 0, v108, v109, v69))
  {
    if (__OFADD__(v72, 1))
    {
      goto LABEL_81;
    }

    *(v5 + 128) = v72 + 1;
  }

  v73 = *(v50 + 16);

  if (v73)
  {
    v74 = 0;
    v75 = v50 + 48;
    v116 = MEMORY[0x1E69E7CC0];
    v113 = v50 + 48;
LABEL_54:
    v76 = (v75 + 24 * v74);
    while (v74 < *(v49 + 16))
    {
      if (v74 >= *(v50 + 16))
      {
        goto LABEL_78;
      }

      v77 = *(v49 + 32 + 4 * v74);
      v78 = *(v76 - 2);
      v79 = *v76;
      ++v74;
      v80 = *(v76 - 8);
      swift_bridgeObjectRetain_n();
      v81 = MessageFlagUpdate.init(message:flags:gmailLabels:)(v77, v78, v80, v79);
      v83 = v82;
      v85 = v84;

      if (v85 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_1B0B0095C(0, *(v116 + 2) + 1, 1, v116);
        }

        v87 = *(v116 + 2);
        v86 = *(v116 + 3);
        if (v87 >= v86 >> 1)
        {
          v116 = sub_1B0B0095C((v86 > 1), v87 + 1, 1, v116);
        }

        *(&v88 + 1) = v83;
        *&v88 = v81;
        v89 = v116;
        *(v116 + 2) = v87 + 1;
        v90 = &v89[24 * v87];
        *(v90 + 8) = v81;
        *(v90 + 36) = v88 >> 32;
        v90[44] = BYTE4(v83);
        *(v90 + 6) = v85;
        v5 = v115;
        v75 = v113;
        if (v74 < v73)
        {
          goto LABEL_54;
        }

        goto LABEL_67;
      }

      v76 += 3;
      v5 = v115;
      if (v74 >= v73)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_77;
  }

  v116 = MEMORY[0x1E69E7CC0];
LABEL_67:

  v91 = swift_allocObject();
  v92 = *(v5 + 24);
  v91[2] = *(v5 + 16);
  v91[3] = v92;
  v91[4] = v116;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return 0;
}

double sub_1B0BB8F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0BB8FA4(uint64_t *a1, uint64_t *a2)
{
  if (a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  return sub_1B04520BC(*a1, *a2) & (v3 == v2);
}

void sub_1B0BB8FFC(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-1] - v7;
  sub_1B0B3DA68(a1, &v21[-1] - v7);
  sub_1B0B3DA68(a1, v5);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B94E24(v1, v21);
  v9 = sub_1B0E43988();
  v10 = sub_1B0E45908();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 68158466;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v13 = *&v5[*(v3 + 20)];
    sub_1B0B63664(v5);
    *(v11 + 10) = v13;
    *(v11 + 11) = 2082;
    v14 = &v8[*(v3 + 20)];
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    sub_1B0A982D8(*v14, v15, v16, v17);
    sub_1B0B63664(v8);
    if (v17 < 0)
    {
    }

    v18 = sub_1B0399D64(v15, v16, &v20);

    *(v11 + 13) = v18;
    *(v11 + 21) = 2048;
    v19 = *(v21[0] + 16);
    sub_1B0B94E80(v21);
    *(v11 + 23) = v19;
    _os_log_impl(&dword_1B0389000, v9, v10, "[%.*hhx-%{public}s] Updating local server unread count for %ld mailboxes.", v11, 0x1Fu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B272C230](v12, -1, -1);
    MEMORY[0x1B272C230](v11, -1, -1);
  }

  else
  {
    sub_1B0B94E80(v21);
    sub_1B0B63664(v5);

    sub_1B0B63664(v8);
  }
}

void sub_1B0BB924C(uint64_t a1, uint64_t a2)
{
  v95 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v95);
  v87 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v85 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v85 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v85 - v12;
  v90 = a1;
  v14 = *(a1 + 176);
  a1 += 176;
  v15 = *(a1 - 8);
  v101 = *(a1 + 8);
  v102 = v14;
  v89 = a1;
  v106 = *(a1 + 16);
  v86 = v7;
  if (v106 == 1 && (v16 = *(v15 + 16)) != 0)
  {
    v17 = (v15 + 32);
    while (1)
    {
      v18 = *v17;
      v19 = v17[2];
      v112 = v17[1];
      v113 = v19;
      v111 = v18;
      v20 = v17[3];
      v21 = v17[4];
      v22 = v17[6];
      v116 = v17[5];
      v117 = v22;
      v114 = v20;
      v115 = v21;
      v23 = v17[7];
      v24 = v17[8];
      v25 = v17[10];
      v120 = v17[9];
      v121 = v25;
      v118 = v23;
      v119 = v24;
      v27 = *(&v111 + 1);
      v26 = v111;
      v28 = DWORD2(v112);
      sub_1B03A35B8(&v111, v110);
      v29 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v28) = MailboxName.isInbox.getter(v29, v28);

      if (v28)
      {
        break;
      }

      sub_1B03A3614(&v111);
      v17 += 11;
      if (!--v16)
      {
        v30 = 0;
        v27 = 0;
        goto LABEL_9;
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A3614(&v111);
    v30 = v26;
LABEL_9:
    v7 = v86;
  }

  else
  {
    v30 = 0;
    v27 = 0;
  }

  v31 = *v88;
  v105 = *(*v88 + 16);
  if (v105)
  {
    v94 = v27;
    v32 = 0;
    v33 = 0;
    v104 = v31 + 32;
    *&v11 = 68158722;
    v91 = v11;
    v100 = v30;
    v34 = v31;
    v92 = v31;
    v93 = a2;
    while (1)
    {
      if (v33 >= *(v34 + 16))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }

      v35 = (v104 + 24 * v33);
      v37 = *v35;
      v36 = v35[1];
      v108 = v35[2];
      v109 = v36;
      if (v106 && (v38 = *(v15 + 16)) != 0)
      {
        v39 = 0;
        while (1)
        {
          v40 = (v15 + 32 + 176 * v39);
          if (v40[1] == v36)
          {
            v41 = *v40;
            v42 = *(*v40 + 16);
            if (v42 == *(v37 + 16))
            {
              break;
            }
          }

LABEL_18:
          if (++v39 == v38)
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v30 = v100;
            goto LABEL_37;
          }
        }

        if (v42)
        {
          v43 = v41 == v37;
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          v44 = (v41 + 32);
          v45 = (v37 + 32);
          while (v42)
          {
            if (*v44 != *v45)
            {
              goto LABEL_18;
            }

            ++v44;
            ++v45;
            if (!--v42)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
          goto LABEL_67;
        }

LABEL_29:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B9A2C(v15, v102, v101, 1);
        v46 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1B03D0E54(v15);
        }

        if (v39 >= *(v46 + 2))
        {
          goto LABEL_69;
        }

        v47 = &v46[176 * v39];
        if (!v47[200] && v108 == *(v47 + 24))
        {
          v47[200] = 1;
        }

        sub_1B03BB638(v15, v102, v101, 1);
        v101 = 0;
        v102 = 0;
        v49 = v89;
        v48 = v90;
        *(v90 + 168) = v46;
        *v49 = 0;
        v49[1] = 0;
        v15 = v46;
        *(v48 + 192) = 1;
        v30 = v100;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

LABEL_37:
      if (v32 >= 5)
      {
        if (!v30)
        {
          goto LABEL_12;
        }

        if (v109 != v94)
        {
          goto LABEL_12;
        }

        v66 = *(v37 + 16);
        if (v66 != *(v30 + 16))
        {
          goto LABEL_12;
        }

        if (v66 && v37 != v30)
        {
          break;
        }
      }

LABEL_38:
      v107 = v15;
      sub_1B0B3DA68(a2, v13);
      v50 = v99;
      sub_1B0B3DA68(a2, v99);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      swift_bridgeObjectRetain_n();
      v51 = sub_1B0E43988();
      v103 = sub_1B0E45908();
      if (os_log_type_enabled(v51, v103))
      {
        v97 = v51;
        v98 = v32;
        v52 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v111 = v96;
        *v52 = v91;
        *(v52 + 4) = 2;
        *(v52 + 8) = 256;
        v53 = v95;
        v54 = *(v50 + *(v95 + 20));
        sub_1B0B63664(v50);
        *(v52 + 10) = v54;
        *(v52 + 11) = 2082;
        v55 = &v13[*(v53 + 20)];
        v56 = v55[1];
        v57 = v55[2];
        v58 = v55[3];
        sub_1B0A982D8(*v55, v56, v57, v58);
        sub_1B0B63664(v13);
        if (v58 < 0)
        {
        }

        v59 = sub_1B0399D64(v56, v57, &v111);

        *(v52 + 13) = v59;
        *(v52 + 21) = 2048;

        *(v52 + 23) = v108;

        *(v52 + 31) = 2080;
        v60 = OpaqueMailboxID.description.getter(v37);
        v62 = v61;

        v63 = sub_1B0399D64(v60, v62, &v111);

        *(v52 + 33) = v63;
        v64 = v97;
        _os_log_impl(&dword_1B0389000, v97, v103, "[%.*hhx-%{public}s] Did store server unread count %ld (aka. UNSEEN) for %s.", v52, 0x29u);
        v65 = v96;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v65, -1, -1);
        MEMORY[0x1B272C230](v52, -1, -1);

        v34 = v92;
        a2 = v93;
        v32 = v98;
        v30 = v100;
      }

      else
      {

        sub_1B0B63664(v50);

        swift_bridgeObjectRelease_n();
        sub_1B0B63664(v13);
      }

      v68 = __OFADD__(v32++, 1);
      v15 = v107;
      if (v68)
      {
        goto LABEL_68;
      }

LABEL_13:
      if (++v33 == v105)
      {
        v7 = v86;
        goto LABEL_58;
      }
    }

    v67 = 32;
    while (*(v37 + v67) == *(v30 + v67))
    {
      ++v67;
      if (!--v66)
      {
        goto LABEL_38;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v32 = 0;
  v34 = v31;
LABEL_58:

  v69 = *(v34 + 16);
  v70 = v87;
  if (v32 < v69)
  {
    sub_1B0B3DA68(a2, v7);
    sub_1B0B3DA68(a2, v70);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0B94E24(v88, &v111);
    v71 = sub_1B0E43988();
    v72 = sub_1B0E45908();
    if (os_log_type_enabled(v71, v72))
    {
      v98 = v32;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v110[0] = v74;
      *v73 = 68158466;
      *(v73 + 4) = 2;
      *(v73 + 8) = 256;
      v75 = v95;
      v76 = *(v70 + *(v95 + 20));
      sub_1B0B63664(v70);
      *(v73 + 10) = v76;
      *(v73 + 11) = 2082;
      v77 = &v7[*(v75 + 20)];
      v78 = v7;
      v79 = v77[1];
      v80 = v77[2];
      v81 = v77[3];
      sub_1B0A982D8(*v77, v79, v80, v81);
      sub_1B0B63664(v78);
      if (v81 < 0)
      {
      }

      v82 = sub_1B0399D64(v79, v80, v110);

      *(v73 + 13) = v82;
      *(v73 + 21) = 2048;
      v83 = *(v111 + 16);
      v84 = v83 - v98;
      if (__OFSUB__(v83, v98))
      {
        goto LABEL_70;
      }

      sub_1B0B94E80(&v111);
      *(v73 + 23) = v84;
      _os_log_impl(&dword_1B0389000, v71, v72, "[%.*hhx-%{public}s] Did store server unread counts for %ld more mailboxes.", v73, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x1B272C230](v74, -1, -1);
      MEMORY[0x1B272C230](v73, -1, -1);
    }

    else
    {
      sub_1B0B94E80(&v111);
      sub_1B0B63664(v70);

      sub_1B0B63664(v7);
    }
  }
}

uint64_t sub_1B0BB9AA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>, double a4@<D0>)
{
  result = sub_1B0BB9E48(a1, a2, a4);
  *a3 = result;
  return result;
}

uint64_t sub_1B0BB9AD8()
{
  v1 = *(v0 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

unint64_t sub_1B0BB9B08()
{
  result = qword_1EB6DD728;
  if (!qword_1EB6DD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD728);
  }

  return result;
}

unint64_t sub_1B0BB9B5C(uint64_t a1)
{
  result = sub_1B0BB9B84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0BB9B84()
{
  result = qword_1EB6DD720;
  if (!qword_1EB6DD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD720);
  }

  return result;
}

void sub_1B0BB9BD8(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (v3)
  {
    v7 = a1[4];
    v8 = a1[5];
    v45 = a1[6];
    v9 = *a3;
    v10 = sub_1B03B8A9C(v7, v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v17 < v14)
    {
      sub_1B0B2F400(v14, a2 & 1);
      v18 = sub_1B03B8A9C(v7, v8);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_27:
        sub_1B0E46BA8();
        __break(1u);
        return;
      }

      v15 = v18;
      v20 = *a3;
      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:

      *(v20[7] + 8 * v15) = v45;
      v21 = v3 - 1;
      if (v3 == 1)
      {
        return;
      }

LABEL_15:
      for (i = a1 + 9; ; i += 3)
      {
        v27 = *(i - 2);
        v28 = *(i - 1);
        v29 = *i;
        v30 = *a3;
        v31 = sub_1B03B8A9C(v27, v28);
        v33 = v30[2];
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          break;
        }

        v36 = v31;
        v37 = v32;
        v38 = v30[3];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v38 < v35)
        {
          sub_1B0B2F400(v35, 1);
          v39 = sub_1B03B8A9C(v27, v28);
          if ((v37 & 1) != (v40 & 1))
          {
            goto LABEL_27;
          }

          v36 = v39;
        }

        v41 = *a3;
        if (v37)
        {

          *(v41[7] + 8 * v36) = v29;
        }

        else
        {
          v41[(v36 >> 6) + 8] |= 1 << v36;
          v42 = (v41[6] + 16 * v36);
          *v42 = v27;
          v42[1] = v28;
          *(v41[7] + 8 * v36) = v29;
          v43 = v41[2];
          v24 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v24)
          {
            goto LABEL_26;
          }

          v41[2] = v44;
        }

        if (!--v21)
        {
          return;
        }
      }

      goto LABEL_25;
    }

    if (a2)
    {
      v20 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1B0B8D1C8();
      v20 = *a3;
      if (v16)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20[(v15 >> 6) + 8] |= 1 << v15;
    v22 = (v20[6] + 16 * v15);
    *v22 = v7;
    v22[1] = v8;
    *(v20[7] + 8 * v15) = v45;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20[2] = v25;
    v21 = v3 - 1;
    if (v3 == 1)
    {
      return;
    }

    goto LABEL_15;
  }
}

uint64_t sub_1B0BB9E48(uint64_t a1, uint64_t a2, double a3)
{
  if (sub_1B0A9D754(a1, a2, a3))
  {
    return 0xF000000000000007;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B0B09E24(0, v6, 0);
    v7 = v18;
    v8 = (v5 + 48);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v18 = v7;
      v13 = v7[2];
      v12 = v7[3];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v13 >= v12 >> 1)
      {
        sub_1B0B09E24((v12 > 1), v13 + 1, 1);
        v7 = v18;
      }

      v8 += 3;
      v7[2] = v13 + 1;
      v14 = &v7[3 * v13];
      v14[4] = v9;
      v14[5] = v10;
      v14[6] = v11;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      v15 = MEMORY[0x1E69E7CC8];
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47F8, &qword_1B0EC5F90);
  v15 = sub_1B0E466A8();
LABEL_11:
  v18 = v15;
  sub_1B0BB9BD8(v7, 1, &v18);

  v16 = v18;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  return v17 | 0x4000000000000000;
}

uint64_t sub_1B0BB9FE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = sub_1B0451E64(&unk_1F2711178);
  *(a3 + 48) = 0;
  v6 = type metadata accessor for UploadFlagChanges(0);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v8;
  *(a3 + 32) = v7;
  *(a3 + 56) = v6;
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v6[9]) = a2;
  return result;
}

void sub_1B0BBA0FC(void *a1)
{
  v2 = *(type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B0B94704(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1B0BBF958(v5);
  *a1 = v3;
}

uint64_t sub_1B0BBA1A4()
{
  result = sub_1B03D0770(&unk_1F2711150);
  qword_1EB737D90 = result;
  return result;
}

uint64_t sub_1B0BBA1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, 1, 1, v7);
  v16 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BBA0FC(&v16);

  v9 = *(v4 + 24);
  v10 = v16;
  *&v6[*(v4 + 20)] = v16;
  v11 = &v6[v9];
  v12 = v10 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = (2 * *(v10 + 16)) | 1;
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = 0;
  *(v11 + 3) = v13;
  sub_1B0BC24A0(v6, a2, type metadata accessor for UploadFlagChanges.EncodedFlags);
}

uint64_t sub_1B0BBA33C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v1 = MessageIdentifierSet.startIndex.getter(v0);
  v3 = v2;
  v5 = v1 == MessageIdentifierSet.endIndex.getter(v0) && v3 == v4;
  v6 = v5;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    MessageIdentifierSet.subscript.getter(v3, v0, &v18);
    v7 = v18;
  }

  v8 = MessageIdentifierSet.startIndex.getter(v0);
  v10 = v9;
  v12 = v8 == MessageIdentifierSet.endIndex.getter(v0) && v10 == v11;
  v13 = !v12;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    MessageIdentifierSet.subscript.getter(v10, v0, &v17);
    v14 = v17;
  }

  if (v7 < v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v6)
  {
    return v13;
  }

  else
  {
    return v15;
  }
}

void sub_1B0BBA448(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  sub_1B0BC23D8(a1, v20 - v6, type metadata accessor for MailboxTaskLogger);
  sub_1B0BC23D8(a1, v4, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v8 = sub_1B0E43988();
  v9 = sub_1B0E45908();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 68159235;
    *(v10 + 4) = 2;
    *(v10 + 8) = 256;
    v12 = &v4[*(v2 + 20)];
    *(v10 + 10) = *v12;
    *(v10 + 11) = 2082;
    v13 = &v7[*(v2 + 20)];
    *(v10 + 13) = sub_1B0399D64(*(v13 + 1), *(v13 + 2), &v22);
    *(v10 + 21) = 1040;
    *(v10 + 23) = 2;
    *(v10 + 27) = 512;
    v14 = *(v12 + 12);
    sub_1B0BC2440(v4, type metadata accessor for MailboxTaskLogger);
    *(v10 + 29) = v14;
    *(v10 + 31) = 2160;
    *(v10 + 33) = 0x786F626C69616DLL;
    *(v10 + 41) = 2085;
    v15 = *(v13 + 4);
    v16 = *(v13 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BC2440(v7, type metadata accessor for MailboxTaskLogger);
    v20[1] = v15;
    v21 = v16;
    v17 = sub_1B0E44BA8();
    v19 = sub_1B0399D64(v17, v18, &v22);

    *(v10 + 43) = v19;
    _os_log_impl(&dword_1B0389000, v8, v9, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v10, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v11, -1, -1);
    MEMORY[0x1B272C230](v10, -1, -1);
  }

  else
  {
    sub_1B0BC2440(v4, type metadata accessor for MailboxTaskLogger);

    sub_1B0BC2440(v7, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1B0BBA71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  v7 = v6;
  v47 = a3;
  v48 = a5;
  v45 = a1;
  v46 = a2;
  v49 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52D8, &qword_1B0ECD750);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v44 - v17;
  v19 = *(a4 + 88);
  v20 = *(a4 + 120);
  v50[4] = *(a4 + 104);
  v50[5] = v20;
  v51 = *(a4 + 136);
  v21 = *(a4 + 56);
  v50[0] = *(a4 + 40);
  v50[1] = v21;
  v50[2] = *(a4 + 72);
  v50[3] = v19;
  v22 = type metadata accessor for UploadFlagChanges(0);
  sub_1B0BBAC44(v50, v48, v15);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
  if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
  {
    v24 = v49;
    sub_1B0398EFC(v15, &qword_1EB6E52D8, &qword_1B0ECD750);
    v25 = sub_1B0E46E98();
    v28 = v46;
    v27 = v47;
    if (v25 & 1) != 0 || (sub_1B0B718A4(2, v46, v47, v26))
    {
      if (sub_1B0B718A4(1, v28, v27, v26))
      {
        goto LABEL_6;
      }

      v29 = *(v22 + 40);
      if (sub_1B0E46E98())
      {
        goto LABEL_6;
      }

      v40 = *(v7 + *(v22 + 36));
      if (v40 == 2)
      {
        goto LABEL_12;
      }

      if (sub_1B0AD4EFC(0, v45, v28, v27))
      {
LABEL_6:
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E8, &unk_1B0ECD760);
        return (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
      }

      if (v40)
      {
LABEL_12:
        v41 = &unk_1F27114B8;
      }

      else
      {
        v41 = &unk_1F2711420;
      }

      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E8, &unk_1B0ECD760);
      v42 = &v24[*(v39 + 48)];
      *v24 = 1;
      v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
      sub_1B03B5C80(v7 + v29, v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v43 = v41;
      *(v43 + 8) = 0;
      *(v43 + 16) = 1;
      type metadata accessor for ClientCommand(0);
    }

    else
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E8, &unk_1B0ECD760);
      *v24 = 2;
      type metadata accessor for ClientCommand(0);
    }

    swift_storeEnumTagMultiPayload();
    return (*(*(v39 - 8) + 56))(v24, 0, 1, v39);
  }

  else
  {
    v32 = &v15[*(v23 + 48)];
    v33 = *v32;
    v34 = v32[1];
    v48 = *(v32 + 1);
    sub_1B03C60A4(v15, v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(v10 + 16))(v12, v18, v9);
    sub_1B0E46ED8();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E8, &unk_1B0ECD760);
    v36 = v49;
    v37 = &v49[*(v35 + 48)];
    *v49 = 0;
    v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48);
    sub_1B03C60A4(v18, v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *v38 = v33;
    *(v38 + 1) = v34;
    *(v38 + 8) = v48;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v35 - 8) + 56))(v36, 0, 1, v35);
  }
}

uint64_t sub_1B0BBAC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v45 = a3;
  v7 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BC23D8(v4, v15, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
      return (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
    }

    sub_1B0BC2440(v4, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v20 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52D0, &unk_1B0ECD740) + 48));
    sub_1B0BC24A0(v15, v18, type metadata accessor for UploadFlagChanges.EncodedFlags);
  }

  else
  {
    sub_1B0BC2440(v4, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v21 = *v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0D4C8(a1, &v47);
    v44 = v21;
    sub_1B0BBE4A0(v21, a1, v18);
    v22 = *&v18[*(v16 + 20)];
    if (*(v22 + 16) || sub_1B0BBE9BC())
    {
      sub_1B0BC23D8(a2, v12, type metadata accessor for MailboxTaskLogger);
      sub_1B0BC23D8(a2, v9, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v23 = sub_1B0E43988();
      v24 = sub_1B0E45908();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v42 = v23;
        v26 = v25;
        v43 = swift_slowAlloc();
        v46 = v43;
        *v26 = 68159747;
        v41 = v24;
        *(v26 + 4) = 2;
        *(v26 + 8) = 256;
        v27 = *(v7 + 20);
        v40 = v22;
        v28 = &v9[v27];
        *(v26 + 10) = v9[v27];
        *(v26 + 11) = 2082;
        v29 = &v12[*(v7 + 20)];
        *(v26 + 13) = sub_1B0399D64(*(v29 + 1), *(v29 + 2), &v46);
        *(v26 + 21) = 1040;
        *(v26 + 23) = 2;
        *(v26 + 27) = 512;
        LOWORD(v28) = *(v28 + 12);
        sub_1B0BC2440(v9, type metadata accessor for MailboxTaskLogger);
        *(v26 + 29) = v28;
        *(v26 + 31) = 2160;
        *(v26 + 33) = 0x786F626C69616DLL;
        *(v26 + 41) = 2085;
        v30 = *(v29 + 4);
        v31 = *(v29 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC2440(v12, type metadata accessor for MailboxTaskLogger);
        v47 = v30;
        v48 = v31;
        v32 = sub_1B0E44BA8();
        v34 = sub_1B0399D64(v32, v33, &v46);

        *(v26 + 43) = v34;
        *(v26 + 51) = 2048;
        *(v26 + 53) = *(v40 + 16);
        *(v26 + 61) = 2048;
        swift_beginAccess();
        *(v26 + 63) = sub_1B0BBE9BC();
        v35 = v42;
        _os_log_impl(&dword_1B0389000, v42, v41, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Grouped the local flag changes into %ld message sets. Expecting %ld commands.", v26, 0x47u);
        v36 = v43;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v36, -1, -1);
        MEMORY[0x1B272C230](v26, -1, -1);
      }

      else
      {
        sub_1B0BC2440(v9, type metadata accessor for MailboxTaskLogger);

        sub_1B0BC2440(v12, type metadata accessor for MailboxTaskLogger);
      }
    }

    v20 = v44;
  }

  swift_beginAccess();
  sub_1B0BBEB28(a2, v45);
  swift_endAccess();
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52D0, &unk_1B0ECD740) + 48);
  sub_1B0BC23D8(v18, v4, type metadata accessor for UploadFlagChanges.EncodedFlags);
  *(v4 + v39) = v20;
  swift_storeEnumTagMultiPayload();
  return sub_1B0BC2440(v18, type metadata accessor for UploadFlagChanges.EncodedFlags);
}

uint64_t sub_1B0BBB1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v255 = a6;
  v260 = a3;
  v261 = a1;
  v241 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  MEMORY[0x1EEE9AC00](v241);
  v242 = &v232 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v251);
  v234 = &v232 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v235 = &v232 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v244 = &v232 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v246 = &v232 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v236 = &v232 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v237 = &v232 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v248 = &v232 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v249 = &v232 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v239 = &v232 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v240 = &v232 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v257 = &v232 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v254 = &v232 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v232 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v258 = *(v36 - 8);
  v259 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v232 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v252 = &v232 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v245 = &v232 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v232 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v247 = &v232 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v253 = &v232 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v243 = &v232 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v238 = &v232 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v232 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v250 = &v232 - v58;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v262);
  v60 = &v232 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v232 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v263 = &v232 - v65;
  v66 = type metadata accessor for UploadFlagChanges(0);
  v68 = *(v66 + 52);
  if (!*(v6 + v68))
  {
    *(v6 + v68) = 1;
    v74 = swift_allocObject();
    v75 = v6[1];
    v74[2] = *v6;
    v74[3] = v75;
    v74[4] = 1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 0;
  }

  v69 = v66;
  v232 = v38;
  v70 = a4;
  if ((sub_1B0A9F738(1, a2, a4, v67) & 1) == 0)
  {
    v77 = swift_allocObject();
    v78 = v6[1];
    v77[2] = *v6;
    v77[3] = v78;
    v77[4] = 733;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 1;
  }

  v233 = *(v69 + 40);
  v256 = v6;
  MessageIdentifierSet.subtracting(_:)(v6 + v233, v263);
  v71 = v260;
  if ((sub_1B0A99994(1, v261, a2, v260) & 1) != 0 && (sub_1B0A9F738(3, a2, v70, v72) & 1) == 0)
  {
    sub_1B03B5C80(v263, v63, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v63, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v73 = 1;
    }

    else
    {
      sub_1B03C60A4(v63, v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v56, v35, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v73 = 0;
    }

    v80 = v258;
    v79 = v259;
    (*(v258 + 56))(v35, v73, 1, v259);
    if ((*(v80 + 48))(v35, 1, v79) == 1)
    {
      sub_1B0398EFC(v35, &unk_1EB6E3670, &unk_1B0E9B260);
      goto LABEL_12;
    }

    v89 = v250;
    sub_1B03C60A4(v35, v250, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v90 = v257;
    MessageIdentifierSet.ranges.getter(v257);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v91 = sub_1B0E46E18();
    v92 = sub_1B0E46E28();
    v93 = sub_1B0E46E18();
    v94 = sub_1B0E46E28();
    if (v91 < v93 || v94 < v91)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v95 = sub_1B0E46E18();
    v96 = sub_1B0E46E28();
    sub_1B0398EFC(v90, &unk_1EB6E2780, &unk_1B0E9C5E0);
    v97 = v92 < v95;
    v98 = v248;
    v99 = v249;
    if (v97 || v96 < v92)
    {
      goto LABEL_91;
    }

    v100 = v92 - v91;
    if (__OFSUB__(v92, v91))
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      result = sub_1B0E46BA8();
      __break(1u);
      return result;
    }

    v101 = v253;
    if (v100 > 19)
    {
      v181 = v255;
      sub_1B0BC23D8(v255, v249, type metadata accessor for MailboxTaskLogger);
      sub_1B0BC23D8(v181, v98, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v89, v101, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v107 = sub_1B0E43988();
      v182 = sub_1B0E45908();
      if (os_log_type_enabled(v107, v182))
      {
        v109 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v266 = v261;
        *v109 = 68159491;
        *(v109 + 4) = 2;
        *(v109 + 8) = 256;
        v183 = v251;
        v184 = v98 + *(v251 + 20);
        *(v109 + 10) = *v184;
        *(v109 + 11) = 2082;
        v185 = v99 + *(v183 + 20);
        *(v109 + 13) = sub_1B0399D64(*(v185 + 8), *(v185 + 16), &v266);
        *(v109 + 21) = 1040;
        *(v109 + 23) = 2;
        *(v109 + 27) = 512;
        LOWORD(v184) = *(v184 + 24);
        sub_1B0BC2440(v98, type metadata accessor for MailboxTaskLogger);
        *(v109 + 29) = v184;
        *(v109 + 31) = 2160;
        *(v109 + 33) = 0x786F626C69616DLL;
        *(v109 + 41) = 2085;
        v186 = *(v185 + 32);
        LODWORD(v185) = *(v185 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC2440(v99, type metadata accessor for MailboxTaskLogger);
        v264 = v186;
        v265 = v185;
        v187 = sub_1B0E44BA8();
        v189 = sub_1B0399D64(v187, v188, &v266);

        *(v109 + 43) = v189;
        *(v109 + 51) = 2048;
        v190 = v253;
        v191 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v190, &unk_1EB6E26C0, &unk_1B0E9DE10);
        *(v109 + 53) = v191;
        _os_log_impl(&dword_1B0389000, v107, v182, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to delete %ld messages after uploading flag changes", v109, 0x3Du);
        v123 = v261;
        goto LABEL_68;
      }

      sub_1B0398EFC(v101, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0BC2440(v98, type metadata accessor for MailboxTaskLogger);

      v206 = v99;
    }

    else
    {
      v102 = v255;
      v103 = v240;
      sub_1B0BC23D8(v255, v240, type metadata accessor for MailboxTaskLogger);
      v104 = v239;
      sub_1B0BC23D8(v102, v239, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v105 = v238;
      sub_1B03B5C80(v89, v238, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v106 = v243;
      sub_1B03B5C80(v89, v243, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v107 = sub_1B0E43988();
      v108 = sub_1B0E45908();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v266 = v261;
        *v109 = 68159747;
        *(v109 + 4) = 2;
        *(v109 + 8) = 256;
        v110 = v251;
        v111 = v104 + *(v251 + 20);
        *(v109 + 10) = *v111;
        *(v109 + 11) = 2082;
        v112 = v103 + *(v110 + 20);
        *(v109 + 13) = sub_1B0399D64(*(v112 + 8), *(v112 + 16), &v266);
        *(v109 + 21) = 1040;
        *(v109 + 23) = 2;
        *(v109 + 27) = 512;
        LOWORD(v111) = *(v111 + 24);
        sub_1B0BC2440(v104, type metadata accessor for MailboxTaskLogger);
        *(v109 + 29) = v111;
        *(v109 + 31) = 2160;
        *(v109 + 33) = 0x786F626C69616DLL;
        *(v109 + 41) = 2085;
        v113 = *(v112 + 32);
        LODWORD(v112) = *(v112 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC2440(v103, type metadata accessor for MailboxTaskLogger);
        v264 = v113;
        v265 = v112;
        v114 = sub_1B0E44BA8();
        v116 = sub_1B0399D64(v114, v115, &v266);

        *(v109 + 43) = v116;
        *(v109 + 51) = 2048;
        v117 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v105, &unk_1EB6E26C0, &unk_1B0E9DE10);
        *(v109 + 53) = v117;
        *(v109 + 61) = 2082;
        v118 = v243;
        v119 = MessageIdentifierSet.debugDescription.getter();
        v121 = v120;
        sub_1B0398EFC(v118, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v122 = sub_1B0399D64(v119, v121, &v266);

        *(v109 + 63) = v122;
        _os_log_impl(&dword_1B0389000, v107, v108, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to delete %ld messages with UIDs %{public}s after uploading flag changes", v109, 0x47u);
        v123 = v261;
LABEL_68:
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v123, -1, -1);
        MEMORY[0x1B272C230](v109, -1, -1);

LABEL_76:
        sub_1B0398EFC(v263, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390);
        swift_allocBox();
        v208 = *(v207 + 48);
        v209 = v256[1];
        *v210 = *v256;
        v210[1] = v209;
        sub_1B03C60A4(v89, v210 + v208, &unk_1EB6E26C0, &unk_1B0E9DE10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return 3;
      }

      sub_1B0398EFC(v105, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0BC2440(v104, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v106, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v206 = v103;
    }

    sub_1B0BC2440(v206, type metadata accessor for MailboxTaskLogger);
    goto LABEL_76;
  }

LABEL_12:
  v81 = v261;
  v82 = sub_1B0A99994(1, v261, a2, v71);
  v84 = v256;
  v85 = v70;
  if ((v82 & 1) != 0 && (sub_1B0A9F738(4, a2, v70, v83) & 1) == 0)
  {
    sub_1B03B5C80(v84 + v233, v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v87 = 1;
      v88 = v257;
      v86 = v254;
    }

    else
    {
      sub_1B03C60A4(v60, v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v86 = v254;
      sub_1B03C60A4(v45, v254, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v87 = 0;
      v88 = v257;
    }

    v125 = v258;
    v124 = v259;
    (*(v258 + 56))(v86, v87, 1, v259);
    if ((*(v125 + 48))(v86, 1, v124) == 1)
    {
      sub_1B0398EFC(v86, &unk_1EB6E3670, &unk_1B0E9B260);
      goto LABEL_27;
    }

    v129 = v247;
    sub_1B03C60A4(v86, v247, &unk_1EB6E26C0, &unk_1B0E9DE10);
    MessageIdentifierSet.ranges.getter(v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v130 = sub_1B0E46E18();
    v131 = sub_1B0E46E28();
    v132 = sub_1B0E46E18();
    v133 = sub_1B0E46E28();
    if (v130 < v132 || v133 < v130)
    {
      goto LABEL_93;
    }

    v134 = sub_1B0E46E18();
    v135 = sub_1B0E46E28();
    sub_1B0398EFC(v88, &unk_1EB6E2780, &unk_1B0E9C5E0);
    v136 = v246;
    v137 = v245;
    if (v131 < v134 || v135 < v131)
    {
      goto LABEL_94;
    }

    v138 = v131 - v130;
    v139 = v252;
    if (__OFSUB__(v131, v130))
    {
      goto LABEL_95;
    }

    v140 = v244;
    if (v138 <= 19)
    {
      v141 = v255;
      v142 = v237;
      sub_1B0BC23D8(v255, v237, type metadata accessor for MailboxTaskLogger);
      v143 = v236;
      sub_1B0BC23D8(v141, v236, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v129, v137, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03B5C80(v129, v139, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v194 = sub_1B0E43988();
      v144 = sub_1B0E45908();
      if (os_log_type_enabled(v194, v144))
      {
        v145 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v266 = v261;
        *v145 = 68159747;
        *(v145 + 4) = 2;
        *(v145 + 8) = 256;
        v146 = v251;
        v147 = v143 + *(v251 + 20);
        *(v145 + 10) = *v147;
        v148 = v142;
        *(v145 + 11) = 2082;
        v149 = v142 + *(v146 + 20);
        *(v145 + 13) = sub_1B0399D64(*(v149 + 8), *(v149 + 16), &v266);
        *(v145 + 21) = 1040;
        *(v145 + 23) = 2;
        *(v145 + 27) = 512;
        LOWORD(v147) = *(v147 + 24);
        sub_1B0BC2440(v143, type metadata accessor for MailboxTaskLogger);
        *(v145 + 29) = v147;
        *(v145 + 31) = 2160;
        *(v145 + 33) = 0x786F626C69616DLL;
        *(v145 + 41) = 2085;
        v150 = *(v149 + 32);
        LODWORD(v149) = *(v149 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC2440(v148, type metadata accessor for MailboxTaskLogger);
        v264 = v150;
        v265 = v149;
        v151 = sub_1B0E44BA8();
        v153 = sub_1B0399D64(v151, v152, &v266);

        *(v145 + 43) = v153;
        *(v145 + 51) = 2048;
        v154 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v137, &unk_1EB6E26C0, &unk_1B0E9DE10);
        *(v145 + 53) = v154;
        *(v145 + 61) = 2082;
        v155 = v252;
        v156 = MessageIdentifierSet.debugDescription.getter();
        v158 = v157;
        sub_1B0398EFC(v155, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v159 = sub_1B0399D64(v156, v158, &v266);

        *(v145 + 63) = v159;
        _os_log_impl(&dword_1B0389000, v194, v144, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing %ld deleted messages with UIDs %{public}s after uploading flag changes", v145, 0x47u);
        v160 = v261;
LABEL_71:
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v160, -1, -1);
        MEMORY[0x1B272C230](v145, -1, -1);

LABEL_80:
        sub_1B0398EFC(v263, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3610, &unk_1B0EC7390);
        swift_allocBox();
        v213 = *(v212 + 48);
        v214 = v256[1];
        *v215 = *v256;
        v215[1] = v214;
        sub_1B03C60A4(v129, v215 + v213, &unk_1EB6E26C0, &unk_1B0E9DE10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        return 4;
      }

      sub_1B0398EFC(v137, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0BC2440(v143, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v139, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v211 = v142;
    }

    else
    {
      v192 = v255;
      sub_1B0BC23D8(v255, v246, type metadata accessor for MailboxTaskLogger);
      sub_1B0BC23D8(v192, v140, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v193 = v232;
      sub_1B03B5C80(v129, v232, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v194 = sub_1B0E43988();
      v195 = sub_1B0E45908();
      if (os_log_type_enabled(v194, v195))
      {
        v197 = v140;
        v145 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v266 = v261;
        *v145 = 68159491;
        *(v145 + 4) = 2;
        *(v145 + 8) = 256;
        v198 = v251;
        v199 = v197 + *(v251 + 20);
        *(v145 + 10) = *v199;
        *(v145 + 11) = 2082;
        v200 = v136 + *(v198 + 20);
        *(v145 + 13) = sub_1B0399D64(*(v200 + 8), *(v200 + 16), &v266);
        *(v145 + 21) = 1040;
        *(v145 + 23) = 2;
        *(v145 + 27) = 512;
        LOWORD(v199) = *(v199 + 24);
        sub_1B0BC2440(v197, type metadata accessor for MailboxTaskLogger);
        *(v145 + 29) = v199;
        *(v145 + 31) = 2160;
        *(v145 + 33) = 0x786F626C69616DLL;
        *(v145 + 41) = 2085;
        v201 = *(v200 + 32);
        LODWORD(v200) = *(v200 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BC2440(v136, type metadata accessor for MailboxTaskLogger);
        v264 = v201;
        v265 = v200;
        v202 = sub_1B0E44BA8();
        v204 = sub_1B0399D64(v202, v203, &v266);

        *(v145 + 43) = v204;
        *(v145 + 51) = 2048;
        v205 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v193, &unk_1EB6E26C0, &unk_1B0E9DE10);
        *(v145 + 53) = v205;
        _os_log_impl(&dword_1B0389000, v194, v195, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removing %ld deleted messages after uploading flag changes", v145, 0x3Du);
        v160 = v261;
        goto LABEL_71;
      }

      sub_1B0398EFC(v193, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0BC2440(v140, type metadata accessor for MailboxTaskLogger);

      v211 = v136;
    }

    sub_1B0BC2440(v211, type metadata accessor for MailboxTaskLogger);
    goto LABEL_80;
  }

LABEL_27:
  if ((sub_1B0B718A4(0, a2, v71, v83) & 1) != 0 && (sub_1B0A99994(0, v81, a2, v71) & 1) == 0)
  {
    if (sub_1B0A99994(1, v81, a2, v71))
    {
LABEL_38:
      sub_1B0398EFC(v263, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return 5;
    }

    v126 = 0;
    goto LABEL_34;
  }

  v126 = sub_1B0BBCF50();
  if ((sub_1B0A99994(1, v81, a2, v71) & 1) == 0)
  {
LABEL_34:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v127 = sub_1B0E46E98();
    if (!v126 || (v127 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (!v126)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (sub_1B0AD4EFC(1, v81, a2, v71) & 1) != 0 || (sub_1B0A9F738(2, a2, v85, v128))
  {
    goto LABEL_38;
  }

  v161 = v242;
  sub_1B0BC23D8(v256 + *(v69 + 32), v242, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0398EFC(v263, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0BC2440(v161, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    return 5;
  }

  v162 = *(v161 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52D0, &unk_1B0ECD740) + 48));
  sub_1B0BC2440(v161, type metadata accessor for UploadFlagChanges.EncodedFlags);
  v163 = sub_1B0BACC44(MEMORY[0x1E69E7CC0]);
  v164 = *(v162 + 16);
  if (v164)
  {
    v165 = 0;
    v166 = 0;
    v167 = (v162 + 56);
    v168 = v262;
    while (v166 < *(v162 + 16))
    {
      v169 = *(v167 - 6);
      v170 = *v167;
      LODWORD(v264) = *(v167 - 6);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (MessageIdentifierSet.contains(_:)(&v264, v168) & 1) != 0 || (LODWORD(v264) = v169, (MessageIdentifierSet.contains(_:)(&v264, v168)))
      {
      }

      else
      {
        sub_1B03B1AF0(v165, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v264 = v163;
        v172 = sub_1B03FE284(v169);
        v174 = v163[2];
        v175 = (v173 & 1) == 0;
        v176 = __OFADD__(v174, v175);
        v177 = v174 + v175;
        if (v176)
        {
          goto LABEL_89;
        }

        v178 = v173;
        if (v163[3] >= v177)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v180 = v172;
            sub_1B0B8EB40();
            v172 = v180;
          }
        }

        else
        {
          sub_1B0B32E60(v177, isUniquelyReferenced_nonNull_native);
          v172 = sub_1B03FE284(v169);
          if ((v178 & 1) != (v179 & 1))
          {
            goto LABEL_96;
          }
        }

        v168 = v262;
        v163 = v264;
        if ((v178 & 1) == 0)
        {
          sub_1B0A9BD80(v172, v169, MEMORY[0x1E69E7CD0], v264);
        }

        sub_1B0AFBCE4(v170);
        v165 = sub_1B0B6EA2C;
      }

      ++v166;
      v167 += 4;
      if (v164 == v166)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v165 = 0;
LABEL_82:

  if (!v163[2])
  {
    sub_1B0398EFC(v263, &unk_1EB6E1AF0, &unk_1B0E9AF40);

    sub_1B03B1AF0(v165, 0);
    return 5;
  }

  v216 = v255;
  v217 = v235;
  sub_1B0BC23D8(v255, v235, type metadata accessor for MailboxTaskLogger);
  v218 = v234;
  sub_1B0BC23D8(v216, v234, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v219 = sub_1B0E43988();
  v220 = sub_1B0E45908();
  if (os_log_type_enabled(v219, v220))
  {
    v221 = swift_slowAlloc();
    v262 = swift_slowAlloc();
    v266 = v262;
    *v221 = 68159491;
    *(v221 + 4) = 2;
    *(v221 + 8) = 256;
    v222 = v251;
    v223 = v218 + *(v251 + 20);
    *(v221 + 10) = *v223;
    *(v221 + 11) = 2082;
    v224 = v217 + *(v222 + 20);
    *(v221 + 13) = sub_1B0399D64(*(v224 + 8), *(v224 + 16), &v266);
    *(v221 + 21) = 1040;
    *(v221 + 23) = 2;
    *(v221 + 27) = 512;
    LOWORD(v223) = *(v223 + 24);
    sub_1B0BC2440(v218, type metadata accessor for MailboxTaskLogger);
    *(v221 + 29) = v223;
    *(v221 + 31) = 2160;
    *(v221 + 33) = 0x786F626C69616DLL;
    *(v221 + 41) = 2085;
    v225 = *(v224 + 32);
    LODWORD(v224) = *(v224 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BC2440(v217, type metadata accessor for MailboxTaskLogger);
    v264 = v225;
    v265 = v224;
    v226 = sub_1B0E44BA8();
    v228 = sub_1B0399D64(v226, v227, &v266);

    *(v221 + 43) = v228;
    *(v221 + 51) = 2048;
    *(v221 + 53) = v163[2];
    _os_log_impl(&dword_1B0389000, v219, v220, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did upload flags for %ld messages", v221, 0x3Du);
    v229 = v262;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v229, -1, -1);
    MEMORY[0x1B272C230](v221, -1, -1);
  }

  else
  {
    sub_1B0BC2440(v218, type metadata accessor for MailboxTaskLogger);

    sub_1B0BC2440(v217, type metadata accessor for MailboxTaskLogger);
  }

  sub_1B0398EFC(v263, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v230 = swift_allocObject();
  v231 = v256[1];
  v230[2] = *v256;
  v230[3] = v231;
  v230[4] = v163;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1AF0(v165, 0);
  return 2;
}

BOOL sub_1B0BBCF50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52C0, &qword_1B0ECD5D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BC23D8(v1, v10, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B0BC2440(v10, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52D0, &unk_1B0ECD740);

  sub_1B0BC24A0(v10, v7, type metadata accessor for UploadFlagChanges.EncodedFlags);
  sub_1B03B5C80(v7, v4, &qword_1EB6E52C0, &qword_1B0ECD5D8);
  v12 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v13 = (*(*(v12 - 8) + 48))(v4, 1, v12);
  sub_1B0398EFC(v4, &qword_1EB6E52C0, &qword_1B0ECD5D8);
  v14 = v13 == 1 && *&v7[*(v5 + 24) + 16] == *&v7[*(v5 + 24) + 24] >> 1;
  sub_1B0BC2440(v7, type metadata accessor for UploadFlagChanges.EncodedFlags);
  return v14;
}

void sub_1B0BBD1BC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a1;
  v76 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v67 - v7;
  v8 = type metadata accessor for UploadFlagChanges.FlagsToUpload(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v80);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  v16 = type metadata accessor for UploadFlagChanges(0);
  v69 = *(v16 + 44);
  sub_1B03B5C80(v3 + v69, v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v17 = *(v16 + 32);
  sub_1B0BC23D8(v3 + v17, v10, type metadata accessor for UploadFlagChanges.FlagsToUpload);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B0BC2440(v10, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    v78 = MEMORY[0x1E69E7CC0];
    v19 = v79;
    v20 = v15;
LABEL_8:
    v26 = v81;
    v27 = *(v82 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = v82 + 32;
      *&v18 = 68159491;
      v73 = v18;
      v72 = v3;
      v71 = v8;
      v75 = a2;
      v74 = v20;
      v70 = v17;
      v77 = v27;
      v68 = v82 + 32;
      while (2)
      {
        v30 = (v29 + 32 * v28);
        v31 = v28;
        v32 = v80;
        while (1)
        {
          if (v31 >= v27)
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v33 = v30[1];
          *v85 = *v30;
          *&v85[16] = v33;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_47;
          }

          v82 = v31 + 1;
          sub_1B074EC14(v85, v84);
          if (MessageIdentifierSet.count.getter() > 732)
          {
            sub_1B03F5C58(v85);
LABEL_44:
            v3 = v72;
            v17 = v70;
            goto LABEL_45;
          }

          v34 = *v85;
          *v84 = *v85;
          if ((MessageIdentifierSet.contains(_:)(v84, v32) & 1) == 0)
          {
            break;
          }

          sub_1B0BC23D8(a2, v26, type metadata accessor for MailboxTaskLogger);
          sub_1B0BC23D8(a2, v19, type metadata accessor for MailboxTaskLogger);
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B074EC14(v85, v84);
          v35 = sub_1B0E43988();
          v36 = sub_1B0E458E8();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v83 = v38;
            *v37 = v73;
            *(v37 + 4) = 2;
            *(v37 + 8) = 256;
            v39 = v76;
            v40 = v19 + *(v76 + 20);
            *(v37 + 10) = *v40;
            *(v37 + 11) = 2082;
            v41 = v81 + *(v39 + 20);
            *(v37 + 13) = sub_1B0399D64(*(v41 + 8), *(v41 + 16), &v83);
            *(v37 + 21) = 1040;
            *(v37 + 23) = 2;
            *(v37 + 27) = 512;
            LOWORD(v40) = *(v40 + 24);
            sub_1B0BC2440(v79, type metadata accessor for MailboxTaskLogger);
            *(v37 + 29) = v40;
            *(v37 + 31) = 2160;
            *(v37 + 33) = 0x786F626C69616DLL;
            *(v37 + 41) = 2085;
            v42 = *(v41 + 32);
            LODWORD(v41) = *(v41 + 40);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0BC2440(v81, type metadata accessor for MailboxTaskLogger);
            *v84 = v42;
            *&v84[8] = v41;
            a2 = v75;
            v43 = sub_1B0E44BA8();
            v45 = sub_1B0399D64(v43, v44, &v83);
            v32 = v80;

            *(v37 + 43) = v45;
            v19 = v79;
            *(v37 + 51) = 1024;
            sub_1B03F5C58(v85);
            *(v37 + 53) = v34;
            sub_1B03F5C58(v85);
            _os_log_impl(&dword_1B0389000, v35, v36, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Ignoring duplicate updates for UID %u.", v37, 0x39u);
            swift_arrayDestroy();
            v46 = v38;
            v20 = v74;
            MEMORY[0x1B272C230](v46, -1, -1);
            v47 = v37;
            v26 = v81;
            MEMORY[0x1B272C230](v47, -1, -1);
          }

          else
          {
            sub_1B03F5C58(v85);
            sub_1B0BC2440(v19, type metadata accessor for MailboxTaskLogger);
            sub_1B03F5C58(v85);

            sub_1B0BC2440(v26, type metadata accessor for MailboxTaskLogger);
          }

          ++v31;
          v30 += 2;
          v27 = v77;
          if (v82 == v77)
          {
            goto LABEL_44;
          }
        }

        LODWORD(v83) = v34;
        MessageIdentifierSet.insert(_:)(v84, &v83, v32);
        v48 = 256;
        if (!v85[5])
        {
          v48 = 0;
        }

        v49 = v48 | v85[4];
        v50 = 0x10000;
        if (!v85[6])
        {
          v50 = 0;
        }

        v51 = 0x1000000;
        if (!v85[7])
        {
          v51 = 0;
        }

        v52 = v49 | v50 | v51;
        v53 = 0x100000000;
        if (!v85[8])
        {
          v53 = 0;
        }

        v54 = 0x10000000000;
        if (!v85[9])
        {
          v54 = 0;
        }

        v84[0] = v85[12];
        *&v84[1] = *&v85[13];
        v84[9] = v85[21];
        v55 = FlagsWithModifications.locallyModified.getter(v52 | v53 | v54 | (v85[10] << 48) | (v85[11] << 56), *v84, *&v84[8]);
        if (*(v55 + 16))
        {
          v56 = v55;
          sub_1B0E46C28();
          MEMORY[0x1B2728D70](1);
          v57 = sub_1B0E46CB8();
          v58 = -1 << *(v56 + 32);
          v59 = v57 & ~v58;
          v3 = v72;
          v17 = v70;
          if ((*(v56 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
          {
            v60 = ~v58;
            while (*(*(v56 + 48) + v59) != 1)
            {
              v59 = (v59 + 1) & v60;
              if (((*(v56 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            LODWORD(v83) = v34;
            MessageIdentifierSet.insert(_:)(v84, &v83, v80);
          }

          else
          {
LABEL_34:
          }
        }

        else
        {

          v3 = v72;
          v17 = v70;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v78 = sub_1B0B00DC8(0, *(v78 + 2) + 1, 1, v78);
        }

        v63 = *(v78 + 2);
        v62 = *(v78 + 3);
        if (v63 >= v62 >> 1)
        {
          v78 = sub_1B0B00DC8((v62 > 1), v63 + 1, 1, v78);
        }

        v64 = v78;
        *(v78 + 2) = v63 + 1;
        v65 = &v64[32 * v63];
        v66 = *&v85[16];
        *(v65 + 2) = *v85;
        *(v65 + 3) = v66;
        v28 = v82;
        v29 = v68;
        if (v82 != v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:
    sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0BC2440(v3 + v17, type metadata accessor for UploadFlagChanges.FlagsToUpload);
    *(v3 + v17) = v78;
    swift_storeEnumTagMultiPayload();
    return;
  }

  v21 = *v10;
  sub_1B03B5C80(v15, v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v22 = *(v21 + 16);
  v78 = v21;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = v79;
  v20 = v15;
  if (!v22)
  {
LABEL_7:

    sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v12, v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_8;
  }

  v23 = 0;
  v24 = v78 + 32;
  while (v23 < *(v78 + 2))
  {
    ++v23;
    v25 = *v24;
    v24 += 32;
    *v85 = v25;
    MessageIdentifierSet.insert(_:)(v84, v85, v80);
    if (v22 == v23)
    {
      goto LABEL_7;
    }
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_1B0BBDAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v69);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v70 = type metadata accessor for UploadFlagChanges(0);
  if (*(a2 + *(v70 + 48)))
  {
    sub_1B0BC23D8(a3, v16, type metadata accessor for MailboxTaskLogger);
    sub_1B0BC23D8(a3, v13, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v23 = sub_1B0E43988();
    v24 = sub_1B0E45908();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v73 = v65;
      *v25 = 68159235;
      v66 = a2;
      v67 = v7;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      v26 = v69;
      v27 = *(v69 + 20);
      v68 = v10;
      v28 = &v13[v27];
      *(v25 + 10) = v13[v27];
      *(v25 + 11) = 2082;
      v29 = &v16[*(v26 + 20)];
      *(v25 + 13) = sub_1B0399D64(*(v29 + 1), *(v29 + 2), &v73);
      *(v25 + 21) = 1040;
      *(v25 + 23) = 2;
      *(v25 + 27) = 512;
      v30 = *(v28 + 12);
      sub_1B0BC2440(v13, type metadata accessor for MailboxTaskLogger);
      *(v25 + 29) = v30;
      *(v25 + 31) = 2160;
      *(v25 + 33) = 0x786F626C69616DLL;
      *(v25 + 41) = 2085;
      v31 = *(v29 + 4);
      v32 = *(v29 + 10);
      v7 = v67;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC2440(v16, type metadata accessor for MailboxTaskLogger);
      v71 = v31;
      v72 = v32;
      a2 = v66;
      v33 = sub_1B0E44BA8();
      v35 = sub_1B0399D64(v33, v34, &v73);

      *(v25 + 43) = v35;
      v10 = v68;
      _os_log_impl(&dword_1B0389000, v23, v24, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more flag changes to upload. Will mark as needing to re-run.", v25, 0x33u);
      v36 = v65;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v36, -1, -1);
      MEMORY[0x1B272C230](v25, -1, -1);
    }

    else
    {
      sub_1B0BC2440(v13, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC2440(v16, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B03BDE74(7u);
    result = sub_1B03BDD7C(&v71, 7);
  }

  else
  {
    sub_1B0BC23D8(a3, v22, type metadata accessor for MailboxTaskLogger);
    sub_1B0BC23D8(a3, v19, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v37 = sub_1B0E43988();
    v38 = sub_1B0E45908();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v73 = v65;
      *v39 = 68159235;
      v67 = v7;
      v68 = v10;
      *(v39 + 4) = 2;
      *(v39 + 8) = 256;
      v40 = v69;
      v41 = *(v69 + 20);
      v66 = a2;
      v42 = &v19[v41];
      *(v39 + 10) = v19[v41];
      *(v39 + 11) = 2082;
      v43 = a1;
      v44 = &v22[*(v40 + 20)];
      *(v39 + 13) = sub_1B0399D64(*(v44 + 1), *(v44 + 2), &v73);
      *(v39 + 21) = 1040;
      *(v39 + 23) = 2;
      *(v39 + 27) = 512;
      LOWORD(v42) = *(v42 + 12);
      sub_1B0BC2440(v19, type metadata accessor for MailboxTaskLogger);
      *(v39 + 29) = v42;
      *(v39 + 31) = 2160;
      *(v39 + 33) = 0x786F626C69616DLL;
      *(v39 + 41) = 2085;
      v45 = *(v44 + 4);
      LODWORD(v42) = *(v44 + 10);
      a1 = v43;
      v7 = v67;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC2440(v22, type metadata accessor for MailboxTaskLogger);
      v71 = v45;
      v72 = v42;
      a2 = v66;
      v46 = sub_1B0E44BA8();
      v48 = sub_1B0399D64(v46, v47, &v73);

      *(v39 + 43) = v48;
      v10 = v68;
      _os_log_impl(&dword_1B0389000, v37, v38, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking no more flag changes pending upload.", v39, 0x33u);
      v49 = v65;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v49, -1, -1);
      MEMORY[0x1B272C230](v39, -1, -1);
    }

    else
    {
      sub_1B0BC2440(v19, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC2440(v22, type metadata accessor for MailboxTaskLogger);
    }

    result = type metadata accessor for MailboxSyncState(0);
    *(a1 + *(result + 52) + 1) = 0;
  }

  if (*(a2 + *(v70 + 52)) == 3)
  {
    sub_1B0BC23D8(a3, v10, type metadata accessor for MailboxTaskLogger);
    sub_1B0BC23D8(a3, v7, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v51 = sub_1B0E43988();
    v52 = sub_1B0E45908();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = v7;
      v55 = swift_slowAlloc();
      v73 = v55;
      *v53 = 68159235;
      *(v53 + 4) = 2;
      *(v53 + 8) = 256;
      v56 = v69;
      v57 = v54 + *(v69 + 20);
      *(v53 + 10) = *v57;
      *(v53 + 11) = 2082;
      v58 = v10;
      v59 = &v10[*(v56 + 20)];
      *(v53 + 13) = sub_1B0399D64(*(v59 + 1), *(v59 + 2), &v73);
      *(v53 + 21) = 1040;
      *(v53 + 23) = 2;
      *(v53 + 27) = 512;
      LOWORD(v57) = *(v57 + 24);
      sub_1B0BC2440(v54, type metadata accessor for MailboxTaskLogger);
      *(v53 + 29) = v57;
      *(v53 + 31) = 2160;
      *(v53 + 33) = 0x786F626C69616DLL;
      *(v53 + 41) = 2085;
      v60 = *(v59 + 4);
      LODWORD(v59) = *(v59 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC2440(v58, type metadata accessor for MailboxTaskLogger);
      v71 = v60;
      v72 = v59;
      v61 = sub_1B0E44BA8();
      v63 = sub_1B0399D64(v61, v62, &v73);

      *(v53 + 43) = v63;
      _os_log_impl(&dword_1B0389000, v51, v52, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking flag changes upload as “has dependencies”.", v53, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v55, -1, -1);
      MEMORY[0x1B272C230](v53, -1, -1);
    }

    else
    {
      sub_1B0BC2440(v7, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC2440(v10, type metadata accessor for MailboxTaskLogger);
    }

    return sub_1B03BDD7C(&v71, 7);
  }

  return result;
}

double sub_1B0BBE314()
{
  if (qword_1EB6DDA80 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0BBE38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_1B0BBB1F4(a1, a2, a3, a4, a5, a6);
  *a7 = result;
  a7[1] = v9;
  return result;
}

uint64_t sub_1B0BBE3CC(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(result + 192) == 1)
  {
    v5 = *(result + 176);
    v4 = *(result + 184);
    v9 = *(result + 168);
    v6 = v9;
    v7 = result;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v9, v2, v3, 0, sub_1B0BC1974);
    result = sub_1B03BB638(v6, v5, v4, 1);
    v8 = v9;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    *(v7 + 168) = v8;
    *(v7 + 192) = 1;
  }

  return result;
}

uint64_t sub_1B0BBE4A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52F0, &qword_1B0ECD778);
  MEMORY[0x1EEE9AC00](v50);
  v49 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v48 = v40 - v8;
  v47 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  v57 = sub_1B0BACA44(MEMORY[0x1E69E7CC0]);
  sub_1B0B0D4C8(a2, v56);
  sub_1B0BC197C(a1, a2, &v57);
  sub_1B0B0D500(a2);
  sub_1B0B0D500(a2);
  v12 = v57;
  v13 = *(v57 + 16);
  if (v13)
  {
    v40[1] = a1;
    v41 = a3;
    v56[0] = v11;
    sub_1B0B0A444(0, v13, 0);
    v11 = v56[0];
    v14 = v12 + 64;
    result = sub_1B0E460B8();
    v16 = result;
    v17 = 0;
    v54 = *(v12 + 36);
    v42 = v12 + 72;
    v43 = v13;
    v45 = v12 + 64;
    v44 = v12;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v12 + 32))
    {
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_24;
      }

      if (v54 != *(v12 + 36))
      {
        goto LABEL_25;
      }

      v52 = 1 << v16;
      v53 = v16 >> 6;
      v51 = v17;
      v20 = v10;
      v21 = v50;
      v22 = *(v50 + 48);
      v23 = *(v12 + 48);
      v24 = *(v12 + 56);
      v25 = v24 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 72) * v16;
      v55 = *(v23 + 16 * v16);
      v26 = v11;
      v27 = v48;
      sub_1B03B5C80(v25, &v48[v22], &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v28 = v49;
      *v49 = v55;
      v29 = *(v21 + 48);
      v10 = v20;
      v30 = &v27[v22];
      v11 = v26;
      sub_1B03C60A4(v30, v28 + v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03B5C80(v28 + v29, v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *(v20 + *(v47 + 20)) = v55;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0398EFC(v28, &qword_1EB6E52F0, &qword_1B0ECD778);
      v56[0] = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1B0B0A444((v31 > 1), v32 + 1, 1);
        v11 = v56[0];
      }

      *(v11 + 16) = v32 + 1;
      result = sub_1B0BC24A0(v20, v11 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v32, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v12 = v44;
      v18 = 1 << *(v44 + 32);
      v14 = v45;
      if (v16 >= v18)
      {
        goto LABEL_26;
      }

      v33 = *(v45 + 8 * v53);
      if ((v33 & v52) == 0)
      {
        goto LABEL_27;
      }

      if (v54 != *(v44 + 36))
      {
        goto LABEL_28;
      }

      v34 = v33 & (-2 << (v16 & 0x3F));
      if (v34)
      {
        v18 = __clz(__rbit64(v34)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v43;
      }

      else
      {
        v35 = v53 << 6;
        v36 = v53 + 1;
        v37 = (v42 + 8 * v53);
        v19 = v43;
        while (v36 < (v18 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_1B0425168(v16, v54, 0);
            v18 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_1B0425168(v16, v54, 0);
      }

LABEL_4:
      v17 = v51 + 1;
      v16 = v18;
      if (v51 + 1 == v19)
      {

        a3 = v41;
        goto LABEL_22;
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
  }

  else
  {

LABEL_22:
    sub_1B0BBA1CC(v11, a3);
  }

  return result;
}

uint64_t sub_1B0BBE9BC()
{
  v1 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for UploadFlagChanges.EncodedFlags(0) + 20));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = &v4[*(v1 + 20)];
    v9 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    while (1)
    {
      result = sub_1B0BC23D8(v9, v4, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v12 = *(*v8 + 16) != 0;
      v13 = __OFADD__(v7, v12);
      v14 = v7 + v12;
      if (v13)
      {
        break;
      }

      v15 = *(*(v8 + 1) + 16) != 0;
      v7 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_10;
      }

      sub_1B0BC2440(v4, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
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
    return 0;
  }

  return result;
}

uint64_t sub_1B0BBEB28@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v92 = a1;
  v82 = a2;
  v84 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v84);
  v96 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52C0, &qword_1B0ECD5D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v81 - v11;
  v13 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  v85 = v20;
  v86 = v12 + 8;
  v93 = (v20 + 48);
  v94 = (v20 + 56);
  *&v21 = 68159491;
  v83 = v21;
  v88 = &v81 - v18;
  v90 = v9;
  for (i = v12; ; v12 = i)
  {
    sub_1B03B5C80(v3, v9, &qword_1EB6E52C0, &qword_1B0ECD5D8);
    if ((*v93)(v9, 1, v13) == 1)
    {
      sub_1B0398EFC(v9, &qword_1EB6E52C0, &qword_1B0ECD5D8);
      result = type metadata accessor for UploadFlagChanges.EncodedFlags(0);
      v23 = (v3 + *(result + 24));
      v25 = v23[2];
      v24 = v23[3];
      if (v25 == v24 >> 1)
      {
        (*v94)(v12, 1, 1, v13);
        sub_1B0398EFC(v12, &qword_1EB6E52C0, &qword_1B0ECD5D8);
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
        v70 = *(*(v69 - 8) + 56);
        v71 = v82;
        v72 = 1;
        return v70(v71, v72, 1, v69);
      }

      if (v25 >= (v24 >> 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v26 = v23[1];
      v27 = v85;
      sub_1B0BC23D8(v26 + *(v85 + 72) * v25, v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v23[1] = v26;
      v23[2] = v25 + 1;
      v23[3] = v24;
      v28 = *(v27 + 56);
      v28(v12, 0, 1, v13);
    }

    else
    {
      v29 = v87;
      sub_1B0BC24A0(v9, v87, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_1B0398EFC(v3, &qword_1EB6E52C0, &qword_1B0ECD5D8);
      v28 = *v94;
      (*v94)(v3, 1, 1, v13);
      sub_1B0BC24A0(v29, v12, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v30 = *(v13 + 20);
      v31 = v86;

      *&v31[v30] = MEMORY[0x1E69E7CD0];
      v28(v12, 0, 1, v13);
    }

    sub_1B0BC24A0(v12, v19, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v32 = &v19[*(v13 + 20)];
    v34 = *v32;
    v33 = v32[1];
    v35 = *(*v32 + 16);
    v36 = *(v33 + 16);
    if (v35)
    {
      if (v36)
      {
        sub_1B0398EFC(v3, &qword_1EB6E52C0, &qword_1B0ECD5D8);
        sub_1B0BC23D8(v19, v3, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v28(v3, 0, 1, v13);
        v56 = v19;
        v57 = v82;
        sub_1B03B5C80(v56, v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v58 = *(v33 + 16);
        if (v58)
        {
          v59 = sub_1B0B88FB4(*(v33 + 16), 0);
          v60 = sub_1B0B8C5CC(&v98, v59 + 4, v58, v33);
          v61 = v98;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = sub_1B03D91F8(v61);
          if (v60 != v58)
          {
            goto LABEL_28;
          }

          v57 = v82;
        }

        else
        {
          v59 = MEMORY[0x1E69E7CC0];
        }

        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
        v80 = v57 + *(v79 + 48);
        sub_1B0BC2440(v88, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        *v80 = 257;
        *(v80 + 8) = v59;
        v70 = *(*(v79 - 8) + 56);
        v71 = v57;
        v72 = 0;
        v69 = v79;
      }

      else
      {
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
        v95 = *(v73 + 48);
        v96 = v73;
        v74 = v19;
        v64 = v82;
        sub_1B03B5C80(v74, v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v75 = sub_1B0B88FB4(v35, 0);
        v76 = sub_1B0B8C5CC(&v98, v75 + 4, v35, v34);
        v77 = v98;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = sub_1B03D91F8(v77);
        if (v76 != v35)
        {
          goto LABEL_29;
        }

        v78 = v64 + v95;
        sub_1B0BC2440(v88, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        *v78 = 256;
        *(v78 + 8) = v75;
LABEL_23:
        v69 = v96;
        v70 = *(*(v96 - 8) + 56);
        v71 = v64;
        v72 = 0;
      }

      return v70(v71, v72, 1, v69);
    }

    if (v36)
    {
      break;
    }

    v37 = v92;
    v38 = v95;
    sub_1B0BC23D8(v92, v95, type metadata accessor for MailboxTaskLogger);
    v39 = v96;
    sub_1B0BC23D8(v37, v96, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v40 = v89;
    sub_1B0BC23D8(v19, v89, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v41 = sub_1B0E43988();
    v42 = sub_1B0E45908();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v97 = v44;
      *v43 = v83;
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v45 = v84;
      v46 = v96 + *(v84 + 20);
      *(v43 + 10) = *v46;
      *(v43 + 11) = 2082;
      v47 = v95 + *(v45 + 20);
      *(v43 + 13) = sub_1B0399D64(*(v47 + 8), *(v47 + 16), &v97);
      *(v43 + 21) = 1040;
      *(v43 + 23) = 2;
      *(v43 + 27) = 512;
      LOWORD(v46) = *(v46 + 24);
      sub_1B0BC2440(v96, type metadata accessor for MailboxTaskLogger);
      *(v43 + 29) = v46;
      *(v43 + 31) = 2160;
      *(v43 + 33) = 0x786F626C69616DLL;
      *(v43 + 41) = 2085;
      v48 = *(v47 + 32);
      LODWORD(v47) = *(v47 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BC2440(v95, type metadata accessor for MailboxTaskLogger);
      v98 = v48;
      LODWORD(v99) = v47;
      v19 = v88;
      v49 = sub_1B0E44BA8();
      v51 = sub_1B0399D64(v49, v50, &v97);

      *(v43 + 43) = v51;
      *(v43 + 51) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v52 = MessageIdentifierSet.debugDescription.getter();
      v54 = v53;
      sub_1B0BC2440(v40, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v55 = sub_1B0399D64(v52, v54, &v97);

      *(v43 + 53) = v55;
      _os_log_impl(&dword_1B0389000, v41, v42, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] No flag changes for messages %s", v43, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v44, -1, -1);
      MEMORY[0x1B272C230](v43, -1, -1);
    }

    else
    {
      sub_1B0BC2440(v39, type metadata accessor for MailboxTaskLogger);

      sub_1B0BC2440(v40, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_1B0BC2440(v38, type metadata accessor for MailboxTaskLogger);
    }

    sub_1B0BC2440(v19, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v9 = v90;
  }

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E52E0, &qword_1B0ECD758);
  v95 = *(v62 + 48);
  v96 = v62;
  v63 = v19;
  v64 = v82;
  sub_1B03B5C80(v63, v82, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v65 = sub_1B0B88FB4(v36, 0);
  v66 = sub_1B0B8C5CC(&v98, v65 + 4, v36, v33);
  v67 = v98;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B03D91F8(v67);
  if (v66 == v36)
  {
    v68 = v64 + v95;
    sub_1B0BC2440(v88, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    *v68 = 257;
    *(v68 + 8) = v65;
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B0BBF5EC(int *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v40[1] = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v40 - v6;
  v8 = *a1;
  v9 = *(a1 + 13);
  v10 = *(a1 + 21);
  v11 = 256;
  if ((*(a1 + 5) & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((*(a1 + 6) & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((*(a1 + 7) & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x100000000;
  if ((a1[2] & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 0x10000000000;
  if ((*(a1 + 9) & 1) == 0)
  {
    v15 = 0;
  }

  v16 = a1[1] & 1 | (*(a1 + 10) << 48) | v11 | v12 | v13 | v14 | v15 | (*(a1 + 11) << 56);
  v42[0] = a1[3] & 1;
  *&v42[1] = v9;
  v42[9] = v10;
  v17 = FlagEncoder.encode(_:)(v16, *v42, *&v42[8]);
  v19 = v18;
  v20 = Flag.deleted.unsafeMutableAddressor();
  v21 = *v20;
  v22 = v20[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = sub_1B0A92834(v21, v22, v17);

  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC1E70;
    v25 = v20[1];
    *(inited + 32) = *v20;
    LOBYTE(v20) = inited + 32;
    *(inited + 40) = v25;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = sub_1B0B0B038(inited);
    swift_setDeallocating();
    sub_1B0B0B218(inited + 32);

    v27 = MEMORY[0x1E69E7CD0];
    v17 = v26;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v27 = v19;
  }

  v43 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v42 = *a3;
  v29 = *v42;
  *a3 = 0x8000000000000000;
  v31 = sub_1B0AE01D0(v17, v27);
  v32 = *(v29 + 16);
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v20) = v30;
  if (*(v29 + 24) >= v34)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

LABEL_24:
    sub_1B0B8FAD8();
    goto LABEL_19;
  }

  sub_1B0B3503C(v34, isUniquelyReferenced_nonNull_native);
  v35 = sub_1B0AE01D0(v17, v27);
  if ((v20 & 1) != (v36 & 1))
  {
    result = sub_1B0E46BA8();
    __break(1u);
    return result;
  }

  v31 = v35;
LABEL_19:
  v37 = v41;
  *a3 = *v42;

  v38 = *a3;
  if (v20)
  {
  }

  else
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    sub_1B0A9BEB8(v31, v17, v27, v7, v38);
  }

  return MessageIdentifierSet.insert(_:)(v42, &v43, v37);
}

void sub_1B0BBF958(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B0E469A8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
        v6 = sub_1B0E45278();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B0BBFDF4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B0BBFA84(0, v2, 1, a1);
  }
}

void sub_1B0BBFA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v38 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v43 = -v17;
    v44 = v16;
    v19 = a1 - a3;
    v37 = v17;
    v20 = v16 + v17 * a3;
    v47 = &v36 - v14;
LABEL_6:
    v41 = v18;
    v42 = a3;
    v39 = v20;
    v40 = v19;
    v21 = v18;
    while (1)
    {
      sub_1B0BC23D8(v20, v15, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_1B0BC23D8(v21, v11, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v23 = MessageIdentifierSet.startIndex.getter(v22);
      v25 = v24;
      v27 = v23 == MessageIdentifierSet.endIndex.getter(v22) && v25 == v26;
      v28 = v27;
      if (v27)
      {
        v48 = 0;
      }

      else
      {
        MessageIdentifierSet.subscript.getter(v25, v22, &v50);
        v48 = v50;
      }

      v29 = MessageIdentifierSet.startIndex.getter(v22);
      v31 = v30;
      if (v29 == MessageIdentifierSet.endIndex.getter(v22) && v31 == v32)
      {
        sub_1B0BC2440(v11, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v15 = v47;
        sub_1B0BC2440(v47, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
LABEL_5:
        a3 = v42 + 1;
        v18 = v41 + v37;
        v19 = v40 - 1;
        v20 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_6;
      }

      MessageIdentifierSet.subscript.getter(v31, v22, &v49);
      if (v28)
      {
        sub_1B0BC2440(v11, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v15 = v47;
        sub_1B0BC2440(v47, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      }

      else
      {
        v33 = v49;
        sub_1B0BC2440(v11, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v15 = v47;
        sub_1B0BC2440(v47, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        if (v48 >= v33)
        {
          goto LABEL_5;
        }
      }

      if (!v44)
      {
        break;
      }

      v34 = v45;
      sub_1B0BC24A0(v20, v45, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B0BC24A0(v34, v21, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v21 += v43;
      v20 += v43;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1B0BBFDF4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v155 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element(0);
  v148 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v142 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v154 = &v134 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v157 = &v134 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v134 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v149 = a3;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_131:
    a3 = *v139;
    if (!*v139)
    {
      goto LABEL_171;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_133;
    }

    goto LABEL_165;
  }

  v136 = &v134 - v22;
  v137 = v24;
  v150 = v23;
  v135 = a4;
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v156 = v15;
  while (1)
  {
    v28 = v26;
    if (v26 + 1 >= v25)
    {
      v40 = v26 + 1;
    }

    else
    {
      v151 = v25;
      v29 = *v149;
      v30 = *(v148 + 72);
      v31 = *v149 + v30 * (v26 + 1);
      v32 = v136;
      sub_1B0BC23D8(v31, v136, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v153 = v29;
      v33 = v29 + v30 * v26;
      v34 = v137;
      sub_1B0BC23D8(v33, v137, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      LODWORD(v147) = sub_1B0BBA33C();
      if (v5)
      {
        sub_1B0BC2440(v34, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        sub_1B0BC2440(v32, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
LABEL_143:

        return;
      }

      sub_1B0BC2440(v34, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      sub_1B0BC2440(v32, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v138 = v26;
      v35 = v26 + 2;
      a3 = v153 + v30 * (v26 + 2);
      v36 = v30;
      v152 = v30;
      v145 = v27;
      v146 = 0;
      while (1)
      {
        v40 = v151;
        if (v151 == v35)
        {
          break;
        }

        sub_1B0BC23D8(a3, v150, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v41 = v18;
        sub_1B0BC23D8(v31, v18, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
        v43 = MessageIdentifierSet.startIndex.getter(v42);
        v45 = v44;
        v47 = v43 == MessageIdentifierSet.endIndex.getter(v42) && v45 == v46;
        v48 = v47;
        LODWORD(v153) = v48;
        if (v47)
        {
          v49 = 0;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v45, v42, &v158);
          v49 = v158;
        }

        v50 = MessageIdentifierSet.startIndex.getter(v42);
        v52 = v51;
        v54 = v50 == MessageIdentifierSet.endIndex.getter(v42) && v52 == v53;
        v55 = !v54;
        if (v54)
        {
          v37 = 0;
        }

        else
        {
          MessageIdentifierSet.subscript.getter(v52, v42, &v158);
          v37 = v158;
        }

        if (v49 < v37)
        {
          v38 = v55;
        }

        else
        {
          v38 = 0;
        }

        if (v153)
        {
          v39 = v55;
        }

        else
        {
          v39 = v38;
        }

        sub_1B0BC2440(v41, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        sub_1B0BC2440(v150, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
        ++v35;
        v36 = v152;
        a3 += v152;
        v31 += v152;
        v27 = v145;
        v5 = v146;
        v18 = v41;
        if ((v147 ^ v39))
        {
          v40 = v35 - 1;
          break;
        }
      }

      v15 = v156;
      v28 = v138;
      if (v147)
      {
        if (v40 < v138)
        {
          goto LABEL_164;
        }

        if (v138 < v40)
        {
          v134 = v18;
          v56 = v36 * (v40 - 1);
          v57 = v40 * v36;
          v151 = v40;
          v58 = v138;
          v59 = v138 * v36;
          do
          {
            if (v58 != --v40)
            {
              v60 = *v149;
              if (!*v149)
              {
                goto LABEL_168;
              }

              a3 = v60 + v59;
              sub_1B0BC24A0(v60 + v59, v142, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
              if (v59 < v56 || a3 >= v60 + v57)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v59 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1B0BC24A0(v142, v60 + v56, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
              v36 = v152;
            }

            ++v58;
            v56 -= v36;
            v57 -= v36;
            v59 += v36;
          }

          while (v58 < v40);
          v15 = v156;
          v18 = v134;
          v28 = v138;
          v40 = v151;
        }
      }
    }

    v61 = v149[1];
    if (v40 < v61)
    {
      if (__OFSUB__(v40, v28))
      {
        goto LABEL_161;
      }

      if (v40 - v28 < v135)
      {
        break;
      }
    }

LABEL_80:
    if (v40 < v28)
    {
      goto LABEL_160;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1B0AFF300(0, *(v27 + 2) + 1, 1, v27);
    }

    a3 = *(v27 + 2);
    v85 = *(v27 + 3);
    v86 = a3 + 1;
    if (a3 >= v85 >> 1)
    {
      v27 = sub_1B0AFF300((v85 > 1), a3 + 1, 1, v27);
    }

    *(v27 + 2) = v86;
    v87 = &v27[16 * a3];
    *(v87 + 4) = v28;
    *(v87 + 5) = v40;
    v26 = v40;
    v88 = *v139;
    if (!*v139)
    {
      goto LABEL_170;
    }

    if (a3)
    {
      while (1)
      {
        v89 = v86 - 1;
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v90 = *(v27 + 4);
          v91 = *(v27 + 5);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_100:
          if (v93)
          {
            goto LABEL_149;
          }

          v106 = &v27[16 * v86];
          v108 = *v106;
          v107 = *(v106 + 1);
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_152;
          }

          v112 = &v27[16 * v89 + 32];
          v114 = *v112;
          v113 = *(v112 + 1);
          v100 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v100)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v110, v115))
          {
            goto LABEL_156;
          }

          if (v110 + v115 >= v92)
          {
            if (v92 < v115)
            {
              v89 = v86 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v116 = &v27[16 * v86];
        v118 = *v116;
        v117 = *(v116 + 1);
        v100 = __OFSUB__(v117, v118);
        v110 = v117 - v118;
        v111 = v100;
LABEL_114:
        if (v111)
        {
          goto LABEL_151;
        }

        v119 = &v27[16 * v89];
        v121 = *(v119 + 4);
        v120 = *(v119 + 5);
        v100 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v100)
        {
          goto LABEL_154;
        }

        if (v122 < v110)
        {
          goto LABEL_3;
        }

LABEL_121:
        a3 = v89 - 1;
        if (v89 - 1 >= v86)
        {
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
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
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (!*v149)
        {
          goto LABEL_167;
        }

        v127 = *&v27[16 * a3 + 32];
        v128 = *&v27[16 * v89 + 40];
        sub_1B0BC09E4(*v149 + *(v148 + 72) * v127, *v149 + *(v148 + 72) * *&v27[16 * v89 + 32], *v149 + *(v148 + 72) * v128, v88);
        if (v5)
        {
          goto LABEL_143;
        }

        if (v128 < v127)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1B0B9443C(v27);
        }

        if (a3 >= *(v27 + 2))
        {
          goto LABEL_146;
        }

        v129 = &v27[16 * a3];
        *(v129 + 4) = v127;
        *(v129 + 5) = v128;
        v159 = v27;
        sub_1B0B943B0(v89);
        v27 = v159;
        v86 = *(v159 + 2);
        v15 = v156;
        if (v86 <= 1)
        {
          goto LABEL_3;
        }
      }

      v94 = &v27[16 * v86 + 32];
      v95 = *(v94 - 64);
      v96 = *(v94 - 56);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_147;
      }

      v99 = *(v94 - 48);
      v98 = *(v94 - 40);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_148;
      }

      v101 = &v27[16 * v86];
      v103 = *v101;
      v102 = *(v101 + 1);
      v100 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v100)
      {
        goto LABEL_150;
      }

      v100 = __OFADD__(v92, v104);
      v105 = v92 + v104;
      if (v100)
      {
        goto LABEL_153;
      }

      if (v105 >= v97)
      {
        v123 = &v27[16 * v89 + 32];
        v125 = *v123;
        v124 = *(v123 + 1);
        v100 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v100)
        {
          goto LABEL_157;
        }

        if (v92 < v126)
        {
          v89 = v86 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

LABEL_3:
    v25 = v149[1];
    if (v26 >= v25)
    {
      goto LABEL_131;
    }
  }

  if (__OFADD__(v28, v135))
  {
    goto LABEL_162;
  }

  if (v28 + v135 < v61)
  {
    v61 = v28 + v135;
  }

  if (v61 < v28)
  {
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v27 = sub_1B0B9443C(v27);
LABEL_133:
    v159 = v27;
    v130 = *(v27 + 2);
    if (v130 >= 2)
    {
      while (*v149)
      {
        v131 = *&v27[16 * v130];
        v132 = *&v27[16 * v130 + 24];
        sub_1B0BC09E4(*v149 + *(v148 + 72) * v131, *v149 + *(v148 + 72) * *&v27[16 * v130 + 16], *v149 + *(v148 + 72) * v132, a3);
        if (v5)
        {
          goto LABEL_143;
        }

        if (v132 < v131)
        {
          goto LABEL_158;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1B0B9443C(v27);
        }

        if (v130 - 2 >= *(v27 + 2))
        {
          goto LABEL_159;
        }

        v133 = &v27[16 * v130];
        *v133 = v131;
        *(v133 + 1) = v132;
        v159 = v27;
        sub_1B0B943B0(v130 - 1);
        v27 = v159;
        v130 = *(v159 + 2);
        if (v130 <= 1)
        {
          goto LABEL_143;
        }
      }

      goto LABEL_169;
    }

    goto LABEL_143;
  }

  v141 = v61;
  if (v40 == v61)
  {
    goto LABEL_80;
  }

  v134 = v18;
  v145 = v27;
  v146 = v5;
  v62 = *v149;
  v63 = *(v148 + 72);
  v64 = *v149 + v63 * (v40 - 1);
  v152 = -v63;
  v153 = v62;
  v138 = v28;
  v65 = v28 - v40;
  v140 = v63;
  v66 = v62 + v40 * v63;
  v67 = v157;
LABEL_60:
  v151 = v40;
  v143 = v66;
  v144 = v65;
  v147 = v64;
  v68 = v64;
  while (1)
  {
    sub_1B0BC23D8(v66, v15, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    sub_1B0BC23D8(v68, v67, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v70 = MessageIdentifierSet.startIndex.getter(v69);
    v72 = v71;
    v74 = v70 == MessageIdentifierSet.endIndex.getter(v69) && v72 == v73;
    v75 = v74;
    if (v74)
    {
      v76 = 0;
    }

    else
    {
      MessageIdentifierSet.subscript.getter(v72, v69, &v158);
      v76 = v158;
    }

    v77 = MessageIdentifierSet.startIndex.getter(v69);
    v79 = v78;
    if (v77 == MessageIdentifierSet.endIndex.getter(v69) && v79 == v80)
    {
      a3 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element;
      v67 = v157;
      sub_1B0BC2440(v157, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v15 = v156;
      sub_1B0BC2440(v156, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
LABEL_59:
      v40 = v151 + 1;
      v64 = v147 + v140;
      v65 = v144 - 1;
      v66 = v143 + v140;
      if (v151 + 1 == v141)
      {
        v27 = v145;
        v5 = v146;
        v18 = v134;
        v28 = v138;
        v40 = v141;
        goto LABEL_80;
      }

      goto LABEL_60;
    }

    v81 = v79;
    v67 = v157;
    MessageIdentifierSet.subscript.getter(v81, v69, &v158);
    if (v75)
    {
      sub_1B0BC2440(v67, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v15 = v156;
      sub_1B0BC2440(v156, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    }

    else
    {
      v82 = v158;
      a3 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element;
      sub_1B0BC2440(v67, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      v15 = v156;
      sub_1B0BC2440(v156, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
      if (v76 >= v82)
      {
        goto LABEL_59;
      }
    }

    if (!v153)
    {
      break;
    }

    a3 = type metadata accessor for UploadFlagChanges.EncodedFlags.Element;
    v83 = v154;
    sub_1B0BC24A0(v66, v154, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B0BC24A0(v83, v68, type metadata accessor for UploadFlagChanges.EncodedFlags.Element);
    v68 += v152;
    v66 += v152;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
}