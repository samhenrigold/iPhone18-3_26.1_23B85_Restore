void *sub_1D20E40B4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1D20E4110(0);
    *(v0 + 24) = v1;
  }

  return v1;
}

void *sub_1D20E4110(uint64_t a1)
{
  v1 = sub_1D21138BC();
  if (!v2)
  {
    v6 = MEMORY[0x1E69E7CC8];
LABEL_30:

    return v6;
  }

  v3 = v1;
  v4 = v2;
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    sub_1D20E4B5C();
    v10 = sub_1D211392C();
    v12 = v11;
    v13 = sub_1D211386C();
    if ((5 - v13 % 5) >= 5)
    {
      v14 = -(v13 % 5);
    }

    else
    {
      v14 = 5 - v13 % 5;
    }

    v42 = v9;
    v43 = v3;
    if (v14)
    {
      v15 = sub_1D21139FC();
      *(v15 + 16) = v14;
      v16 = (v15 + 32);
      if (v14 < 4)
      {
        v17 = 0;
LABEL_16:
        v20 = v14 - v17;
        do
        {
          *v16 = 48;
          v16[1] = 0xE100000000000000;
          v16 += 2;
          --v20;
        }

        while (v20);
        goto LABEL_18;
      }

      v17 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v16 += 2 * (v14 & 0xFFFFFFFFFFFFFFFCLL);
      v18 = (v15 + 64);
      v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v18 - 2) = xmmword_1D2116AE0;
        *(v18 - 1) = xmmword_1D2116AE0;
        *v18 = xmmword_1D2116AE0;
        v18[1] = xmmword_1D2116AE0;
        v18 += 4;
        v19 -= 4;
      }

      while (v19);
      if (v14 != v17)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
    sub_1D20DE7E4(&qword_1EE084418, &qword_1EC6C7320, &qword_1D2114A98, MEMORY[0x1E69E6310]);
    v21 = sub_1D211376C();
    v23 = v22;

    MEMORY[0x1D38961A0](v10, v12);

    v25 = v21;
    v24 = v23;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_1D20E45E0(v21, v24, MEMORY[0x1E69E60C8], sub_1D20B0A90);
    v29 = v6[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_32;
    }

    v32 = v27;
    if (v6[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = v43;
        if (v27)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D20E7B08();
        v35 = v43;
        if (v32)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1D20E6B7C(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1D20E45E0(v21, v24, MEMORY[0x1E69E60C8], sub_1D20B0A90);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_34;
      }

      v28 = v33;
      v35 = v43;
      if (v32)
      {
LABEL_3:

        v7 = (v6[7] + 16 * v28);
        *v7 = v35;
        v7[1] = v4;

        goto LABEL_4;
      }
    }

    v6[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v6[6] + 16 * v28);
    *v36 = v25;
    v36[1] = v24;
    v37 = (v6[7] + 16 * v28);
    *v37 = v35;
    v37[1] = v4;

    v38 = v6[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_33;
    }

    v6[2] = v40;
LABEL_4:
    v3 = sub_1D21138BC();
    v4 = v8;
    v5 = v42;
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

uint64_t Geohash.deinit()
{

  return v0;
}

uint64_t Geohash.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D20E459C(uint64_t a1)
{
  v2 = sub_1D2113BAC();

  return sub_1D20E4674(a1, v2);
}

uint64_t sub_1D20E45E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D2113ECC();
  a3(v10, a1, a2);
  v7 = sub_1D2113F1C();

  return a4(a1, a2, v7);
}

unint64_t sub_1D20E4674(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D20E49E0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D38964C0](v9, a1);
      sub_1D20BC128(v9);
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

uint64_t sub_1D20E4764(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1D21138BC();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1D20E482C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7408, &qword_1D2115430);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1D20E48B0()
{
  result = qword_1EC6C7800;
  if (!qword_1EC6C7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7800);
  }

  return result;
}

unint64_t sub_1D20E4908()
{
  result = qword_1EC6C7808;
  if (!qword_1EC6C7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7808);
  }

  return result;
}

uint64_t sub_1D20E4A3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D211387C();

    return sub_1D211395C();
  }

  return result;
}

uint64_t sub_1D20E4B04()
{
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](0);
  v0 = sub_1D2113F1C();

  return sub_1D20E4AD8(v0);
}

unint64_t sub_1D20E4B5C()
{
  result = qword_1EE0836B0;
  if (!qword_1EE0836B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0836B0);
  }

  return result;
}

uint64_t sub_1D20E4BB0()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE880);
  __swift_project_value_buffer(v0, qword_1EC6CE880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2116BF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "accessoryId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ekSiteId";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subscriptionId";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "usagePointRef";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "touRatePlan";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "signalIdentifier";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "utilityAccountIdentifier";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D20E4EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D21134CC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_11:
          sub_1D211350C();
        }
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_11;
      }

      result = sub_1D21134CC();
    }
  }

  return result;
}

uint64_t sub_1D20E4F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1D211359C(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1D211359C(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_1D211359C(), !v4))
      {
        v12 = v3[7];
        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = v3[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v13 || (result = sub_1D211359C(), !v4))
        {
          v14 = v3[9];
          v15 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v15 = v3[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v15 || (result = sub_1D211359C(), !v4))
          {
            v16 = v3[11];
            v17 = HIBYTE(v16) & 0xF;
            if ((v16 & 0x2000000000000000) == 0)
            {
              v17 = v3[10] & 0xFFFFFFFFFFFFLL;
            }

            if (!v17 || (result = sub_1D211359C(), !v4))
            {
              v18 = v3[13];
              v19 = HIBYTE(v18) & 0xF;
              if ((v18 & 0x2000000000000000) == 0)
              {
                v19 = v3[12] & 0xFFFFFFFFFFFFLL;
              }

              if (!v19 || (result = sub_1D211359C(), !v4))
              {
                type metadata accessor for Com_Apple_Wpc_Es_IdBundle(0);
                return sub_1D211346C();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D20E5154@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = 0;
  a1[11] = 0xE000000000000000;
  a1[12] = 0;
  a1[13] = 0xE000000000000000;
  return sub_1D211347C();
}

uint64_t sub_1D20E51B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D20E5224(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D20E52EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D20E58A4(&qword_1EC6C7830, type metadata accessor for Com_Apple_Wpc_Es_IdBundle, &unk_1D2116CB8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D20E5368@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6C7188 != -1)
  {
    swift_once();
  }

  v2 = sub_1D21135EC();
  v3 = __swift_project_value_buffer(v2, qword_1EC6CE880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D20E5410(uint64_t a1)
{
  v2 = sub_1D20E58A4(&qword_1EC6C7818, type metadata accessor for Com_Apple_Wpc_Es_IdBundle, &unk_1D2116CF0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D20E547C(uint64_t a1, uint64_t a2)
{
  sub_1D2113ECC();
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D20E54D4(uint64_t a1, uint64_t a2)
{
  sub_1D20E58A4(&qword_1EC6C7818, type metadata accessor for Com_Apple_Wpc_Es_IdBundle, &unk_1D2116CF0);

  return sub_1D211355C();
}

uint64_t sub_1D20E5550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D2113ECC();
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t type metadata accessor for Com_Apple_Wpc_Es_IdBundle(uint64_t a1)
{
  result = qword_1EC6C7850;
  if (!qword_1EC6C7850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D20E5710(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2113E2C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D2113E2C() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D2113E2C() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1D2113E2C() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_1D2113E2C() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_1D2113E2C() & 1) == 0 || (a1[12] != a2[12] || a1[13] != a2[13]) && (sub_1D2113E2C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Wpc_Es_IdBundle(0);
  sub_1D211348C();
  sub_1D20E58A4(&qword_1EC6C7848, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D21137AC() & 1;
}

uint64_t sub_1D20E58A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D20E5914(uint64_t a1)
{
  result = sub_1D211348C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D20E59A4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1D20E59BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1D20E59D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D20E6568();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void sub_1D20E5A34(uint64_t a1@<X8>)
{
  sub_1D20E6554();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1D20E5A68(uint64_t a2@<X8>)
{
  sub_1D20E6554();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_1D20E5AA0(uint64_t a1, uint64_t a2)
{
  sub_1D2113ECC();
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D20E5B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D20E65BC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D20E5B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D2113ECC();
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D20E5BEC()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE898);
  __swift_project_value_buffer(v0, qword_1EC6CE898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2116DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ES_FEEDBACK_EVENT_ATTRIBUTION_UNDEFINED";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ES_FEEDBACK_EVENT_ATTRIBUTION_USERCHANGED";
  *(v10 + 1) = 41;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ES_FEEDBACK_EVENT_ATTRIBUTION_SYSTEMCHANGED";
  *(v11 + 8) = 43;
  *(v11 + 16) = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D20E5E20()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE8B0);
  __swift_project_value_buffer(v0, qword_1EC6CE8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D2116DC0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "ES_FEEDBACK_EVENT_TYPE_UNDEFINED";
  *(v5 + 8) = 32;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D21135CC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ES_FEEDBACK_EVENT_TYPE_RUNNINGSTATUS";
  *(v9 + 8) = 36;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ES_FEEDBACK_EVENT_TYPE_TEMPERATURESAMPLE";
  *(v11 + 1) = 40;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ES_FEEDBACK_EVENT_TYPE_TARGETTEMPERATURECHANGED";
  *(v13 + 1) = 47;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ES_FEEDBACK_EVENT_TYPE_SYSTEMMODE";
  *(v15 + 1) = 33;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ES_FEEDBACK_EVENT_TYPE_ACTIVITYSTATE";
  *(v17 + 1) = 36;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ES_FEEDBACK_EVENT_TYPE_HOLDSET";
  *(v19 + 1) = 30;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ES_FEEDBACK_EVENT_TYPE_INTERVALREADING";
  *(v21 + 1) = 38;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ES_FEEDBACK_EVENT_TYPE_PRESETCHANGED";
  *(v22 + 8) = 36;
  *(v22 + 16) = 2;
  v8();
  return sub_1D21135DC();
}

uint64_t sub_1D20E61C0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D21135EC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1D20E62BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t sub_1D20E6348()
{
  result = qword_1EC6C7880;
  if (!qword_1EC6C7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7880);
  }

  return result;
}

unint64_t sub_1D20E63A0()
{
  result = qword_1EC6C7888;
  if (!qword_1EC6C7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7888);
  }

  return result;
}

unint64_t sub_1D20E63F8()
{
  result = qword_1EC6C7890;
  if (!qword_1EC6C7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7890);
  }

  return result;
}

unint64_t sub_1D20E6450()
{
  result = qword_1EC6C7898;
  if (!qword_1EC6C7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7898);
  }

  return result;
}

unint64_t sub_1D20E64A8()
{
  result = qword_1EC6C78A0;
  if (!qword_1EC6C78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C78A0);
  }

  return result;
}

unint64_t sub_1D20E6500()
{
  result = qword_1EC6C78A8;
  if (!qword_1EC6C78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C78A8);
  }

  return result;
}

unint64_t sub_1D20E6568()
{
  result = qword_1EC6C78B0;
  if (!qword_1EC6C78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C78B0);
  }

  return result;
}

unint64_t sub_1D20E65BC()
{
  result = qword_1EC6C78B8;
  if (!qword_1EC6C78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C78B8);
  }

  return result;
}

uint64_t HomeServicesFeatures.hashValue.getter()
{
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](0);
  return sub_1D2113F1C();
}

uint64_t sub_1D20E6710()
{
  result = os_variant_has_internal_diagnostics();
  byte_1EE087490 = result;
  return result;
}

uint64_t static HomeServicesFeatureCheck.setOverride(key:val:)(uint64_t a1, char a2)
{
  if (qword_1EE083D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = qword_1EE087498;
  qword_1EE087498 = 0x8000000000000000;
  sub_1D20E7828(a2 & 1, isUniquelyReferenced_nonNull_native);
  qword_1EE087498 = v5;
  return swift_endAccess();
}

uint64_t static HomeServicesFeatureCheck.removeOverride(key:)()
{
  if (qword_1EE083D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = sub_1D20E4B04();
  if (v1)
  {
    v2 = v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = qword_1EE087498;
    v6 = qword_1EE087498;
    qword_1EE087498 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D20E7DF8();
      v4 = v6;
    }

    sub_1D20E7518(v2, v4);
    qword_1EE087498 = v4;
  }

  return swift_endAccess();
}

uint64_t sub_1D20E68BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7618, &qword_1D2115F10);
  v37 = v4;
  result = sub_1D2113CEC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D2113ECC();
      sub_1D211375C();
      result = sub_1D2113F1C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D20E6B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78D8, &qword_1D21171F8);
  v37 = v4;
  result = sub_1D2113CEC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D2113ECC();
      sub_1D211375C();
      result = sub_1D2113F1C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D20E6E3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78D0, &qword_1D21171F0);
  v37 = v4;
  result = sub_1D2113CEC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D2113ECC();
      sub_1D211375C();
      result = sub_1D2113F1C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D20E70FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78C8, "Bd");
  result = sub_1D2113CEC();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
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
      v19 = *(*(v5 + 56) + (v16 | (v8 << 6)));
      sub_1D2113ECC();
      MEMORY[0x1D38967E0](0);
      result = sub_1D2113F1C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v28)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D20E7368(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2113B9C() + 1) & ~v5;
    do
    {
      sub_1D2113ECC();

      sub_1D211375C();
      v9 = sub_1D2113F1C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D20E7518(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2113B9C() + 1) & ~v5;
    do
    {
      sub_1D2113ECC();
      MEMORY[0x1D38967E0](0);
      result = sub_1D2113F1C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D20E76A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D20E4570(a3, a4);
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
      sub_1D20E68BC(v18, a5 & 1);
      v13 = sub_1D20E4570(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D2113E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D20E7990();
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

unint64_t sub_1D20E7828(char a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_1D20E4B04();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 >= v12 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v14 >= v12 && (a2 & 1) == 0)
  {
    v15 = result;
    sub_1D20E7DF8();
    result = v15;
    goto LABEL_8;
  }

  sub_1D20E70FC(v12, a2 & 1);
  result = sub_1D20E4B04();
  if ((v13 & 1) == (v16 & 1))
  {
LABEL_8:
    v17 = *v3;
    if (v13)
    {
      *(*(v17 + 56) + result) = a1 & 1;
      return result;
    }

    *(v17 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v17 + 56) + result) = a1 & 1;
    v18 = *(v17 + 16);
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v11)
    {
      *(v17 + 16) = v19;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

unint64_t sub_1D20E7940(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_1D20E7990()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7618, &qword_1D2115F10);
  v2 = *v0;
  v3 = sub_1D2113CDC();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1D20E7B08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78D8, &qword_1D21171F8);
  v2 = *v0;
  v3 = sub_1D2113CDC();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1D20E7C80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78D0, &qword_1D21171F0);
  v2 = *v0;
  v3 = sub_1D2113CDC();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1D20E7DF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78C8, "Bd");
  v2 = *v0;
  v3 = sub_1D2113CDC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = *(*(v2 + 56) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t _s12HomeServices0aB12FeatureCheckO9isEnabled3keySbAA0aB8FeaturesO_tFZ_0(uint64_t a1)
{
  if (qword_1EE083D68 != -1)
  {
    swift_once();
  }

  if (byte_1EE087490 != 1)
  {
    goto LABEL_10;
  }

  if (qword_1EE083D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EE087498;
  if (!*(qword_1EE087498 + 16) || (v2 = sub_1D20E4B04(), (v3 & 1) == 0))
  {
    swift_endAccess();
LABEL_10:
    v6[3] = &type metadata for HomeServicesFeatures;
    v6[4] = sub_1D20E80BC();
    v4 = sub_1D21133FC();
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v4 & 1;
  }

  v4 = *(*(v1 + 56) + v2);
  swift_endAccess();
  return v4 & 1;
}

unint64_t sub_1D20E8048()
{
  result = qword_1EC6C78C0;
  if (!qword_1EC6C78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C78C0);
  }

  return result;
}

unint64_t sub_1D20E80BC()
{
  result = qword_1EE083D58;
  if (!qword_1EE083D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083D58);
  }

  return result;
}

uint64_t sub_1D20E811C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000061746144;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0x80000001D211A1F0;
    v13 = 0xD00000000000001DLL;
    v14 = 0x80000001D211A210;
    if (a1 != 8)
    {
      v14 = 0x80000001D211A240;
    }

    if (a1 != 7)
    {
      v13 = 0xD000000000000022;
      v12 = v14;
    }

    v15 = 0x206E776F6E6B6E55;
    v16 = 0xEF6572756C696146;
    if (a1 != 5)
    {
      v15 = 0xD000000000000035;
      v16 = 0x80000001D211A1B0;
    }

    if (a1 <= 6u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v16;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x80000001D211A140;
    v5 = 0x80000001D211A160;
    v6 = 0xD000000000000017;
    if (a1 == 3)
    {
      v6 = 0xD00000000000001FLL;
    }

    else
    {
      v5 = 0x80000001D211A180;
    }

    if (a1 == 2)
    {
      v7 = 0xD00000000000001FLL;
    }

    else
    {
      v7 = v6;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    v8 = 0x80000001D211A120;
    v9 = 0xD00000000000001ELL;
    if (!a1)
    {
      v9 = 0x20676E697373694DLL;
      v8 = 0xEC00000061746144;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v3 <= 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF6572756C696146;
        if (v10 != 0x206E776F6E6B6E55)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v2 = 0x80000001D211A1B0;
        if (v10 != 0xD000000000000035)
        {
LABEL_60:
          v19 = sub_1D2113E2C();
          goto LABEL_61;
        }
      }
    }

    else if (a2 == 7)
    {
      v2 = 0x80000001D211A1F0;
      if (v10 != 0xD00000000000001DLL)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (a2 == 8)
      {
        v18 = "Error while creating geoHash tiles";
      }

      else
      {
        v18 = "Error while fetching geoHash tiles";
      }

      v2 = (v18 - 32) | 0x8000000000000000;
      if (v10 != 0xD000000000000022)
      {
        goto LABEL_60;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0x80000001D211A120;
      if (v10 != 0xD00000000000001ELL)
      {
        goto LABEL_60;
      }
    }

    else if (v10 != 0x20676E697373694DLL)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v17 = "Unable to process http response";
    }

    else
    {
      if (a2 != 3)
      {
        v2 = 0x80000001D211A180;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      v17 = "Unable to process response body";
    }

    v2 = (v17 - 32) | 0x8000000000000000;
    if (v10 != 0xD00000000000001FLL)
    {
      goto LABEL_60;
    }
  }

LABEL_58:
  if (v11 != v2)
  {
    goto LABEL_60;
  }

  v19 = 1;
LABEL_61:

  return v19 & 1;
}

uint64_t sub_1D20E8414(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1414743362;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x454355444552;
    }

    else
    {
      v4 = 0x5453524F57;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1146048327;
    }

    else
    {
      v4 = 1414743362;
    }

    v5 = 0xE400000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x454355444552;
  if (a2 != 2)
  {
    v7 = 0x5453524F57;
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1146048327;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D2113E2C();
  }

  return v10 & 1;
}

uint64_t sub_1D20E8530()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE8C8);
  __swift_project_value_buffer(v0, qword_1EC6CE8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D2117200;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "startTime";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D21135CC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "endTime";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "eventType";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "value";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "unit";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "metadata";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "attribution";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "ids";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "tag";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "secondaryValue";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  return sub_1D21135DC();
}

uint64_t sub_1D20E88FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D21134CC();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            goto LABEL_4;
          }

          v11 = v4;
          sub_1D20E6568();
          goto LABEL_23;
        }

        if (result == 8)
        {
          sub_1D20E8A84(a1, v5, a2, a3);
        }

        else if (result == 9 || result == 10)
        {
LABEL_4:
          sub_1D211350C();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            goto LABEL_4;
          }

          v11 = v4;
          sub_1D20E65BC();
LABEL_23:
          v4 = v11;
          sub_1D21134EC();
          goto LABEL_5;
        }

        if (result == 1 || result == 2)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      result = sub_1D21134CC();
    }
  }

  return result;
}

uint64_t sub_1D20E8A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent(0);
  type metadata accessor for Com_Apple_Wpc_Es_IdBundle(0);
  sub_1D20E9A84(&qword_1EC6C7818, type metadata accessor for Com_Apple_Wpc_Es_IdBundle, &unk_1D2116CF0);
  return sub_1D211352C();
}

uint64_t sub_1D20E8B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1D211359C(), !v4))
  {
    v11 = v3[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_1D211359C(), !v4))
    {
      if (!v3[4] || (sub_1D20E65BC(), result = sub_1D211357C(), !v4))
      {
        v13 = v3[7];
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = v3[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v14 || (result = sub_1D211359C(), !v4))
        {
          v15 = v3[9];
          v16 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v16 = v3[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v16 || (result = sub_1D211359C(), !v4))
          {
            v17 = v3[11];
            v18 = HIBYTE(v17) & 0xF;
            if ((v17 & 0x2000000000000000) == 0)
            {
              v18 = v3[10] & 0xFFFFFFFFFFFFLL;
            }

            if (!v18 || (result = sub_1D211359C(), !v4))
            {
              if (!v3[12] || (sub_1D20E6568(), result = sub_1D211357C(), !v4))
              {
                result = sub_1D20E8DA8(v3, a1, a2, a3);
                if (!v4)
                {
                  v19 = v3[15];
                  v20 = HIBYTE(v19) & 0xF;
                  if ((v19 & 0x2000000000000000) == 0)
                  {
                    v20 = v3[14] & 0xFFFFFFFFFFFFLL;
                  }

                  if (v20)
                  {
                    sub_1D211359C();
                  }

                  v21 = v3[17];
                  v22 = HIBYTE(v21) & 0xF;
                  if ((v21 & 0x2000000000000000) == 0)
                  {
                    v22 = v3[16] & 0xFFFFFFFFFFFFLL;
                  }

                  if (v22)
                  {
                    sub_1D211359C();
                  }

                  type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent(0);
                  return sub_1D211346C();
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

uint64_t sub_1D20E8DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7908, &qword_1D2117378);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Wpc_Es_IdBundle(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent(0);
  sub_1D20E9510(a1 + *(v12 + 56), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D20A862C(v7, &qword_1EC6C7908, &qword_1D2117378);
  }

  sub_1D20E9580(v7, v11);
  sub_1D20E9A84(&qword_1EC6C7818, type metadata accessor for Com_Apple_Wpc_Es_IdBundle, &unk_1D2116CF0);
  sub_1D21135BC();
  return sub_1D20E95E4(v11);
}

uint64_t sub_1D20E8F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0xE000000000000000;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0xE000000000000000;
  sub_1D211347C();
  v4 = *(a1 + 56);
  v5 = type metadata accessor for Com_Apple_Wpc_Es_IdBundle(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1D20E9058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D20E90CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D20E9194(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D20E9A84(&qword_1EC6C7900, type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent, &unk_1D21172C8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D20E9210@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6C71A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D21135EC();
  v3 = __swift_project_value_buffer(v2, qword_1EC6CE8C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D20E92B8(uint64_t a1)
{
  v2 = sub_1D20E9A84(&qword_1EC6C78E8, type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent, &unk_1D2117300);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D20E9324(uint64_t a1, uint64_t a2)
{
  sub_1D20E9A84(&qword_1EC6C78E8, type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent, &unk_1D2117300);

  return sub_1D211355C();
}

uint64_t type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent(uint64_t a1)
{
  result = qword_1EC6C7918;
  if (!qword_1EC6C7918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D20E9510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7908, &qword_1D2117378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20E9580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Wpc_Es_IdBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20E95E4(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Wpc_Es_IdBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20E9640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Wpc_Es_IdBundle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7908, &qword_1D2117378);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7910, qword_1D2117380);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2 && (sub_1D2113E2C() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D2113E2C() & 1) == 0 || !sub_1D20E8110(*(a1 + 32), *(a1 + 40), *(a2 + 32)) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D2113E2C() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_1D2113E2C() & 1) == 0 || (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v14 = *(a1 + 96);
  v15 = *(a2 + 96);
  if (*(a2 + 104) == 1)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        if (v14 != 1)
        {
          goto LABEL_32;
        }
      }

      else if (v14 != 2)
      {
        goto LABEL_32;
      }
    }

    else if (v14)
    {
      goto LABEL_32;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_32;
  }

  v16 = *(type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent(0) + 56);
  v17 = *(v11 + 48);
  sub_1D20E9510(a1 + v16, v13);
  sub_1D20E9510(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1D20E9510(v13, v10);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      sub_1D20E9580(&v13[v17], v7);
      v21 = sub_1D20E5150();
      sub_1D20E95E4(v7);
      sub_1D20E95E4(v10);
      sub_1D20A862C(v13, &qword_1EC6C7908, &qword_1D2117378);
      if ((v21 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    }

    sub_1D20E95E4(v10);
LABEL_31:
    sub_1D20A862C(v13, &qword_1EC6C7910, qword_1D2117380);
    goto LABEL_32;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_31;
  }

  sub_1D20A862C(v13, &qword_1EC6C7908, &qword_1D2117378);
LABEL_35:
  if (*(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120) || (sub_1D2113E2C()) && (*(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136) || (sub_1D2113E2C()))
  {
    sub_1D211348C();
    sub_1D20E9A84(&qword_1EC6C7848, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v19 = sub_1D21137AC();
    return v19 & 1;
  }

LABEL_32:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1D20E9A84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D20E9AF4(uint64_t a1)
{
  sub_1D211348C();
  if (v1 <= 0x3F)
  {
    sub_1D20E9BB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D20E9BB0(uint64_t a1)
{
  if (!qword_1EC6C7928)
  {
    type metadata accessor for Com_Apple_Wpc_Es_IdBundle(255);
    v1 = sub_1D2113B0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC6C7928);
    }
  }
}

uint64_t sub_1D20E9C08@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v64 = a1;
  v5 = sub_1D2112F0C();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v59 - v9;
  if (qword_1EE0836C8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v10 = sub_1D211362C();
  v63 = __swift_project_value_buffer(v10, qword_1EE087438);
  v11 = sub_1D21135FC();
  v12 = sub_1D2113A5C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D209F000, v11, v12, "Trying to locate geohash file in geohash-2 folder.", v13, 2u);
    MEMORY[0x1D3896EB0](v13, -1, -1);
  }

  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v15 = sub_1D20E2D48(8, a2, a3);
  v17 = v16;
  swift_setDeallocating();

  swift_bridgeObjectRetain_n();
  v18 = sub_1D20E4A3C(2, v15, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = MEMORY[0x1D3896140](v18, v20, v22, v24);
  v27 = v26;

  v28 = sub_1D211386C();

  if (v28 < 2)
  {
LABEL_17:

    v46 = sub_1D21135FC();
    v47 = sub_1D2113A7C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v65[0] = v49;
      *v48 = 136315138;
      v50 = sub_1D20B75F0(v25, v27, v65);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_1D209F000, v46, v47, "Unable to locate matching geohash in geohash-2 Folder for : %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1D3896EB0](v49, -1, -1);
      MEMORY[0x1D3896EB0](v48, -1, -1);
    }

    else
    {
    }

    v51 = sub_1D2112F9C();
    return (*(*(v51 - 8) + 56))(v64, 1, 1, v51);
  }

  else
  {
    v59 = v6;
    v60 = v5;
    while (1)
    {
      if (qword_1EE083D48 != -1)
      {
        swift_once();
      }

      v65[0] = qword_1EE087480;
      v65[1] = *algn_1EE087488;

      v29 = sub_1D20CF5BC();
      v30 = !v29;
      v31 = v29 ? 1685025392 : 24945;
      v32 = v30 ? 0xE200000000000000 : 0xE400000000000000;
      MEMORY[0x1D38961A0](v31, v32);

      MEMORY[0x1D38961A0](47, 0xE100000000000000);
      MEMORY[0x1D38961A0](v25, v27);
      MEMORY[0x1D38961A0](47, 0xE100000000000000);
      MEMORY[0x1D38961A0](v15, v17);
      MEMORY[0x1D38961A0](0x6E6F736A2ELL, 0xE500000000000000);
      v33 = [objc_opt_self() defaultManager];
      v5 = sub_1D21137BC();
      v6 = [v33 fileExistsAtPath_];

      if (v6)
      {
        break;
      }

      v34 = sub_1D211386C();
      v35 = __OFSUB__(v34, 1);
      v36 = v34 - 1;
      if (v35)
      {
        __break(1u);
        goto LABEL_25;
      }

      v37 = sub_1D20E4A3C(v36, v15, v17);
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v15 = MEMORY[0x1D3896140](v37, v39, v41, v43);
      v17 = v44;

      v45 = sub_1D211386C();

      if (v45 <= 1)
      {
        goto LABEL_17;
      }
    }

    v53 = sub_1D21135FC();
    v54 = sub_1D2113A9C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1D209F000, v53, v54, "Located geohash file in geohash-2 folder.", v55, 2u);
      MEMORY[0x1D3896EB0](v55, -1, -1);
    }

    v56 = sub_1D2112F9C();
    v57 = *(*(v56 - 8) + 56);
    v57(v61, 1, 1, v56);
    v59[13](v62, *MEMORY[0x1E6968F70], v60);
    v58 = v64;
    sub_1D2112F8C();
    return (v57)(v58, 0, 1, v56);
  }
}

uint64_t sub_1D20EA2B4()
{
  result = sub_1D20EA2D8();
  qword_1EE087480 = result;
  *algn_1EE087488 = v1;
  return result;
}

uint64_t sub_1D20EA2D8()
{
  v0 = sub_1D2112F9C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - v5;
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 URLsForDirectory:13 inDomains:1];
  v9 = sub_1D21139EC();

  if (*(v9 + 16))
  {
    (*(v1 + 16))(v4, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 32))(v6, v4, v0);
    v13[0] = sub_1D2112F4C();
    v13[1] = v10;
    MEMORY[0x1D38961A0](0xD000000000000029, 0x80000001D211AFA0);
    MEMORY[0x1D38961A0](47, 0xE100000000000000);

    v11 = v13[0];
    (*(v1 + 8))(v6, v0);
  }

  else
  {

    return 0;
  }

  return v11;
}

id sub_1D20EA4D8(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v32 = 1;
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_1D21137BC();
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v32];

  if (v4)
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D211362C();
    __swift_project_value_buffer(v5, qword_1EE087438);
    v6 = sub_1D21135FC();
    v7 = sub_1D2113A7C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D209F000, v6, v7, "Path exists", v8, 2u);
      MEMORY[0x1D3896EB0](v8, -1, -1);
    }

    v9 = sub_1D21135FC();
    v10 = sub_1D2113A7C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D209F000, v9, v10, "Deleting existing file", v11, 2u);
      MEMORY[0x1D3896EB0](v11, -1, -1);
    }

    v12 = sub_1D21137BC();
    v31 = 0;
    v13 = [v2 removeItemAtPath:v12 error:&v31];

    if (v13)
    {
      v14 = v31;
    }

    else
    {
      v15 = v31;
      v16 = sub_1D2112EFC();

      swift_willThrow();
    }
  }

  v17 = sub_1D21137BC();
  v31 = 0;
  v18 = [v2 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v31];

  if (v18)
  {
    v19 = v31;
  }

  else
  {
    v20 = v31;
    v21 = sub_1D2112EFC();

    swift_willThrow();
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D211362C();
    __swift_project_value_buffer(v22, qword_1EE087438);
    v23 = v21;
    v24 = sub_1D21135FC();
    v25 = sub_1D2113A7C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v21;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1D209F000, v24, v25, "Unable to create GeoHash Directory! %@", v26, 0xCu);
      sub_1D20A862C(v27, &qword_1EC6C7950, qword_1D21153D0);
      MEMORY[0x1D3896EB0](v27, -1, -1);
      MEMORY[0x1D3896EB0](v26, -1, -1);
    }

    else
    {
    }
  }

  return v18;
}

uint64_t sub_1D20EA8E0(uint64_t a1, unint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7930, &qword_1D21173C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7938, &qword_1D21173D0);
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7940, &qword_1D21173D8);
  v24 = *(v7 - 8);
  v8 = v24;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7948, &qword_1D21173E0);
  sub_1D211341C();
  sub_1D211395C();
  sub_1D20EAD9C();
  v26 = v13;
  sub_1D211340C();
  sub_1D211342C();
  v14 = *(v8 + 8);
  v14(v11, v7);

  v15 = v25;
  if ((*(v27 + 48))(v4, 1, v25) == 1)
  {
    sub_1D20A862C(v4, &qword_1EC6C7930, &qword_1D21173C8);
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D211362C();
    __swift_project_value_buffer(v16, qword_1EE087438);
    v17 = sub_1D21135FC();
    v18 = sub_1D2113A7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D209F000, v17, v18, "No Matching file name found in Geo Hash", v19, 2u);
      MEMORY[0x1D3896EB0](v19, -1, -1);
    }

    v14(v26, v7);
    return 0;
  }

  else
  {
    v21 = v27;
    (*(v27 + 32))(v6, v4, v15);
    swift_getKeyPath();
    sub_1D211344C();

    v22 = MEMORY[0x1D3896140](v28, v29, v30, v31);

    (*(v21 + 8))(v6, v15);
    v14(v26, v7);
    return v22;
  }
}

unint64_t sub_1D20EAD9C()
{
  result = qword_1EE0836D0;
  if (!qword_1EE0836D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7940, &qword_1D21173D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0836D0);
  }

  return result;
}

uint64_t sub_1D20EAE00(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v67[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1D211381C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1D3896910](v8);
  sub_1D20EB5B4(a1, v67);
  objc_autoreleasePoolPop(v11);
  v13 = v67[0];
  if (!v67[0])
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v48 = sub_1D211362C();
    __swift_project_value_buffer(v48, qword_1EE087438);
    v44 = sub_1D21135FC();
    v45 = sub_1D2113A7C();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_33;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Unable to retrieve geoJSONs from geohash tile";
LABEL_32:
    _os_log_impl(&dword_1D209F000, v44, v45, v47, v46, 2u);
    MEMORY[0x1D3896EB0](v46, -1, -1);
LABEL_33:

    return 0;
  }

  v14 = *(v67[0] + 2);
  if (!v14)
  {
LABEL_25:

    if (qword_1EE0836C8 != -1)
    {
LABEL_46:
      swift_once();
    }

    v43 = sub_1D211362C();
    __swift_project_value_buffer(v43, qword_1EE087438);
    v44 = sub_1D21135FC();
    v45 = sub_1D2113A9C();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_33;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "No matching grid polygon in geohash tile.";
    goto LABEL_32;
  }

  v15 = 0;
  v16 = (v7 + 8);
  *&v12 = 138412290;
  v65 = v12;
  v66 = (v7 + 8);
  while (1)
  {
    if (v15 >= v13[2])
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (*(v13[v15 + 4] + 16))
    {
      break;
    }

LABEL_5:
    if (v14 == ++v15)
    {
      goto LABEL_25;
    }
  }

  sub_1D20E4570(6516580, 0xE300000000000000);
  if ((v17 & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_1D211380C();
  v18 = sub_1D21137DC();
  v20 = v19;

  (*v16)(v10, v6);
  if (v20 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E696F208]) init];
  v22 = sub_1D2112FFC();
  v67[0] = 0;
  v23 = [v21 geoJSONObjectsWithData:v22 error:v67];

  v24 = v67[0];
  if (!v23)
  {
    v30 = v67[0];
    v31 = sub_1D2112EFC();

    swift_willThrow();
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D211362C();
    __swift_project_value_buffer(v32, qword_1EE0874C0);
    v33 = v31;
    v34 = sub_1D21135FC();
    v35 = sub_1D2113A7C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v63 = v18;
      v37 = v36;
      v38 = swift_slowAlloc();
      v64 = v6;
      v39 = v38;
      *v37 = v65;
      v40 = v31;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_1D209F000, v34, v35, "Error while decoding geoJSON File %@", v37, 0xCu);
      sub_1D20A862C(v39, &qword_1EC6C7950, qword_1D21153D0);
      v42 = v39;
      v6 = v64;
      MEMORY[0x1D3896EB0](v42, -1, -1);
      MEMORY[0x1D3896EB0](v37, -1, -1);
      sub_1D20DEC70(v63, v20);
    }

    else
    {
      sub_1D20DEC70(v18, v20);
    }

    v16 = v66;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7958, &qword_1D2117410);
  v25 = sub_1D21139EC();
  v26 = v24;

  if ((v25 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D3896550](0, v25);
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    sub_1D20DEC70(v18, v20);
    v16 = v66;
    goto LABEL_5;
  }

  v28 = v27;
  sub_1D20EBCA4(v27, a2, a3);
  if ((v29 & 1) == 0)
  {
    sub_1D20DEC70(v18, v20);
    swift_unknownObjectRelease();
    v16 = v66;
    goto LABEL_5;
  }

  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v50 = sub_1D211362C();
  __swift_project_value_buffer(v50, qword_1EE087438);
  v51 = sub_1D21135FC();
  v52 = sub_1D2113A9C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1D209F000, v51, v52, "Found matching Polygon", v53, 2u);
    MEMORY[0x1D3896EB0](v53, -1, -1);
  }

  v54 = sub_1D21135FC();
  v55 = sub_1D2113A5C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1D209F000, v54, v55, "Extracting Grid Info", v56, 2u);
    MEMORY[0x1D3896EB0](v56, -1, -1);
  }

  v57 = [v28 properties];
  if (v57)
  {
    v58 = v57;
    v59 = sub_1D211301C();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0xF000000000000000;
  }

  v62 = sub_1D20EC04C(v59, v61);
  sub_1D20DEC70(v59, v61);
  swift_unknownObjectRelease();
  sub_1D20DEC70(v18, v20);
  return v62;
}

void sub_1D20EB5B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1D20F9ACC(a1);
  v7 = v6;

  if (v7 >> 60 != 15)
  {
    v8 = objc_opt_self();
    v9 = sub_1D2112FFC();
    *&v19 = 0;
    v10 = [v8 JSONObjectWithData:v9 options:0 error:&v19];

    v11 = v19;
    if (v10)
    {
      sub_1D2113B7C();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      v13 = sub_1D2112EFC();

      swift_willThrow();
      memset(v21, 0, sizeof(v21));
    }

    sub_1D20ED25C(1935896420, 0xE400000000000000, &v19);
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7978, &unk_1D2117420);
      if (swift_dynamicCast())
      {
        sub_1D20A862C(v21, &qword_1EC6C7960, &qword_1D2116AD0);
        sub_1D20DEC70(v5, v7);
        *a2 = v18;
        return;
      }
    }

    else
    {
      sub_1D20A862C(&v19, &qword_1EC6C7960, &qword_1D2116AD0);
    }

    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v14 = sub_1D211362C();
    __swift_project_value_buffer(v14, qword_1EE0874C0);
    v15 = sub_1D21135FC();
    v16 = sub_1D2113A7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D209F000, v15, v16, "Unable to deserialize Geohash GeoJSON document", v17, 2u);
      MEMORY[0x1D3896EB0](v17, -1, -1);
    }

    sub_1D20DEC70(v5, v7);

    sub_1D20A862C(v21, &qword_1EC6C7960, &qword_1D2116AD0);
  }

  *a2 = 0;
}

uint64_t sub_1D20EB88C(unint64_t a1, void *a2)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D2113C8C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2113CCC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D3896550](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D2113C6C();
      sub_1D2113C9C();
      sub_1D2113CAC();
      sub_1D2113C7C();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D2113CCC();
    sub_1D2113C8C();
  }

  return v9;
}

uint64_t sub_1D20EB9F4(void *a1)
{
  v2 = [a1 geometry];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7968, &qword_1D2117418);
  v3 = sub_1D21139EC();

  v4 = sub_1D20EB88C(v3, 0x1E696F2E0);

  if (!v4)
  {
    goto LABEL_11;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D3896550](0, v4);
    goto LABEL_5;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
LABEL_5:
    v6 = v5;
    v7 = [v5 polygons];

    sub_1D20EC2BC();
    v8 = sub_1D21139EC();

    if (v8 >> 62)
    {
      v9 = sub_1D2113CCC();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3896550](0, v4);
      }

      else
      {
        v10 = *(v4 + 32);
      }

      v18 = v10;

      v19 = [v18 polygons];

      v13 = sub_1D21139EC();
      return v13;
    }

LABEL_11:
    v11 = [a1 geometry];
    v12 = sub_1D21139EC();

    v13 = sub_1D20EB88C(v12, 0x1E696F358);

    if (v13)
    {
      return v13;
    }

    if (qword_1EE0836C8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_13:
  v14 = sub_1D211362C();
  __swift_project_value_buffer(v14, qword_1EE087438);
  v15 = sub_1D21135FC();
  v16 = sub_1D2113A6C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D209F000, v15, v16, "Unable to locate Polygons in current GeoFeature", v17, 2u);
    MEMORY[0x1D3896EB0](v17, -1, -1);
  }

  return 0;
}

void sub_1D20EBCA4(void *a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v35 = sub_1D21133EC();
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D20EB9F4(a1);
  if (v8)
  {
    v9 = v8;
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
LABEL_23:
      v11 = sub_1D2113CCC();
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        v12 = 0;
        v36 = v9 & 0xC000000000000001;
        v33 = *MEMORY[0x1E695EEB8];
        v31 = (v6 + 8);
        v32 = (v6 + 104);
        v13 = 0x1E83F6000uLL;
        v30 = v11;
        do
        {
          if (v36)
          {
            v14 = MEMORY[0x1D3896550](v12, v9);
          }

          else
          {
            if (v12 >= *(v10 + 16))
            {
              goto LABEL_22;
            }

            v14 = *(v9 + 8 * v12 + 32);
          }

          v15 = v14;
          v16 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v6 = [objc_allocWithZone(MEMORY[0x1E696F360]) initWithPolygon_];
          v44.latitude = a2;
          v44.longitude = a3;
          v17 = MKMapPointForCoordinate(v44);
          [v6 pointForMapPoint_];
          v18 = v6;
          v19 = [v18 *(v13 + 2448)];
          if (v19)
          {
            v37 = v12 + 1;
            v20 = v9;
            v21 = v10;

            v22 = v13;
            v6 = [v18 *(v13 + 2448)];

            if (!v6)
            {
              __break(1u);
              return;
            }

            v24 = v34;
            v23 = v35;
            (*v32)(v34, v33, v35);
            v39 = 0;
            v40 = 0;
            v38 = 0x3FF0000000000000;
            v41 = 0x3FF0000000000000;
            v42 = 0;
            v43 = 0;
            v25 = sub_1D2113AEC();

            (*v31)(v24, v23);
            v10 = v21;
            v9 = v20;
            v11 = v30;
            v13 = v22;
            v16 = v37;
            if (v25)
            {
              break;
            }
          }

          else
          {
          }

          ++v12;
        }

        while (v16 != v11);
      }
    }

    return;
  }

  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v26 = sub_1D211362C();
  __swift_project_value_buffer(v26, qword_1EE087438);
  v27 = sub_1D21135FC();
  v28 = sub_1D2113A6C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D209F000, v27, v28, "No multiPolygons for the current Geofeature", v29, 2u);
    MEMORY[0x1D3896EB0](v29, -1, -1);
  }
}

uint64_t sub_1D20EC04C(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 == 15)
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D211362C();
    __swift_project_value_buffer(v2, qword_1EE0874C0);
    v3 = sub_1D21135FC();
    v4 = sub_1D2113A7C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D209F000, v3, v4, "Unable to find grid in matching Polygon", v5, 2u);
      MEMORY[0x1D3896EB0](v5, -1, -1);
    }

    return 0;
  }

  v8 = objc_opt_self();
  sub_1D20C7064(a1, a2);
  v9 = sub_1D2112FFC();
  *&v16 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:&v16];

  v11 = v16;
  if (v10)
  {
    sub_1D2113B7C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v11;
    v13 = sub_1D2112EFC();

    swift_willThrow();
    memset(v18, 0, sizeof(v18));
  }

  sub_1D20ED25C(1684632167, 0xE400000000000000, &v16);
  sub_1D20DEC70(a1, a2);
  sub_1D20A862C(v18, &qword_1EC6C7960, &qword_1D2116AD0);
  if (!v17)
  {
    sub_1D20A862C(&v16, &qword_1EC6C7960, &qword_1D2116AD0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D20EC2BC()
{
  result = qword_1EE083650;
  if (!qword_1EE083650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE083650);
  }

  return result;
}

uint64_t sub_1D20EC308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1D20EC3B0;

  return sub_1D20EF460(a1);
}

uint64_t sub_1D20EC3B0(char a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D20EC4B0, 0, 0);
}

uint64_t sub_1D20EC4B0()
{
  if (*(v0 + 64) == 1)
  {
    sub_1D20ED4B4(0x72756769666E6F63, 0xED00006E6F697461, (v0 + 16));
    if (*(v0 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440);
      if (swift_dynamicCast())
      {
        v1 = *(v0 + 48);
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D20A862C(v0 + 16, &qword_1EC6C7960, &qword_1D2116AD0);
    }
  }

  if (qword_1EE084480 != -1)
  {
    swift_once();
  }

  v2 = sub_1D211362C();
  __swift_project_value_buffer(v2, qword_1EE087548);
  v3 = sub_1D21135FC();
  v4 = sub_1D2113A7C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D209F000, v3, v4, "Using default configuration values hardcoded in Framework.", v5, 2u);
    MEMORY[0x1D3896EB0](v5, -1, -1);
  }

  if (qword_1EE083D80 != -1)
  {
    swift_once();
  }

LABEL_13:
  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_1D20EC694()
{
  sub_1D20ED4B4(0x72756769666E6F63, 0xED00006E6F697461, &v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440);
    if (swift_dynamicCast())
    {
      if (*(v16 + 16) && (v0 = sub_1D20E4570(0xD000000000000010, 0x80000001D211B7A0), (v1 & 1) != 0))
      {
        sub_1D20B7E10(*(v16 + 56) + 32 * v0, &v17);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
        if (swift_dynamicCast())
        {
          v2 = v16;
          if (qword_1EE084480 != -1)
          {
            swift_once();
          }

          v3 = sub_1D211362C();
          __swift_project_value_buffer(v3, qword_1EE087548);
          v4 = sub_1D21135FC();
          v5 = sub_1D2113A9C();
          if (os_log_type_enabled(v4, v5))
          {
            v6 = swift_slowAlloc();
            *v6 = 0;
            _os_log_impl(&dword_1D209F000, v4, v5, "Returning regions from server config", v6, 2u);
            MEMORY[0x1D3896EB0](v6, -1, -1);
          }

          goto LABEL_24;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1D20A862C(&v17, &qword_1EC6C7960, &qword_1D2116AD0);
  }

  if (qword_1EE084480 != -1)
  {
    swift_once();
  }

  v7 = sub_1D211362C();
  __swift_project_value_buffer(v7, qword_1EE087548);
  v8 = sub_1D21135FC();
  v9 = sub_1D2113A7C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D209F000, v8, v9, "    Returning regions from default config.\n    Ensure this invocation is from a client that needs this value during installation.", v10, 2u);
    MEMORY[0x1D3896EB0](v10, -1, -1);
  }

  if (qword_1EE083D80 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE0874A0;
  if (*(qword_1EE0874A0 + 16) && (v12 = sub_1D20E4570(0xD000000000000010, 0x80000001D211B7A0), (v13 & 1) != 0) && (sub_1D20B7E10(*(v11 + 56) + 32 * v12, &v17), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98), (swift_dynamicCast() & 1) != 0))
  {
    v2 = v16;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

LABEL_24:
  v14 = sub_1D20F02A8(v2);

  return v14;
}

void sub_1D20ECA00(__int128 *a1@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  sub_1D20ED4B4(0x68746150697061, 0xE700000000000000, &v28);
  if (!*(&v29 + 1))
  {
    sub_1D20A862C(&v28, &qword_1EC6C7960, &qword_1D2116AD0);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7988, &qword_1D2117448);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v9 = sub_1D211362C();
    __swift_project_value_buffer(v9, qword_1EE087548);
    v10 = sub_1D21135FC();
    v11 = sub_1D2113A7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D209F000, v10, v11, "No API Paths found in config", v12, 2u);
      MEMORY[0x1D3896EB0](v12, -1, -1);
    }

    goto LABEL_14;
  }

  v2 = objc_opt_self();
  v3 = sub_1D21136FC();

  *&v28 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:&v28];

  v5 = v28;
  if (!v4)
  {
    v13 = v5;
    v14 = sub_1D2112EFC();

    swift_willThrow();
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v15 = sub_1D211362C();
    __swift_project_value_buffer(v15, qword_1EE087548);
    v16 = v14;
    v10 = sub_1D21135FC();
    v17 = sub_1D2113A7C();

    if (!os_log_type_enabled(v10, v17))
    {

      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v14;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_1D209F000, v10, v17, "Unable to decode config's APIPath. %@", v18, 0xCu);
    sub_1D20A862C(v19, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v19, -1, -1);
    MEMORY[0x1D3896EB0](v18, -1, -1);

LABEL_14:
LABEL_15:
    v22 = xmmword_1D2117430;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    goto LABEL_16;
  }

  v6 = sub_1D211301C();
  v8 = v7;

  sub_1D2112B4C();
  swift_allocObject();
  sub_1D2112B3C();
  sub_1D20EE31C();
  sub_1D2112B2C();
  sub_1D20B98A4(v6, v8);

  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
LABEL_16:
  *a1 = v22;
  a1[1] = v23;
  a1[2] = v24;
  a1[3] = v25;
  a1[4] = v26;
  a1[5] = v27;
}

uint64_t sub_1D20ECE18()
{
  sub_1D20ED4B4(0x5255726576726573, 0xE90000000000004CLL, &v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1D20A862C(&v6, &qword_1EC6C7960, &qword_1D2116AD0);
  }

  if (qword_1EE084480 != -1)
  {
    swift_once();
  }

  v1 = sub_1D211362C();
  __swift_project_value_buffer(v1, qword_1EE087548);
  v2 = sub_1D21135FC();
  v3 = sub_1D2113A7C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D209F000, v2, v3, "No Server Base URL found in config", v4, 2u);
    MEMORY[0x1D3896EB0](v4, -1, -1);
  }

  return 0;
}

uint64_t sub_1D20ECF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D20A8580(a1, v10, &qword_1EC6C7960, &qword_1D2116AD0);
  if (v11)
  {
    sub_1D20A8580(v10, v9, &qword_1EC6C7960, &qword_1D2116AD0);
    sub_1D20EE2D4(0, &qword_1EE0843F8, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      [v8 objCType];
      if (sub_1D21138AC() == 99 && v4 == 0xE100000000000000)
      {
      }

      else
      {
        v5 = sub_1D2113E2C();

        if ((v5 & 1) == 0)
        {

          sub_1D20A8580(a1, a2, &qword_1EC6C7960, &qword_1D2116AD0);
          goto LABEL_13;
        }
      }

      v6 = [v8 BOOLValue];
      *(a2 + 24) = MEMORY[0x1E69E6370];

      *a2 = v6;
LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(v9);
      return sub_1D20A862C(v10, &qword_1EC6C7960, &qword_1D2116AD0);
    }

    sub_1D20EE2D4(0, &qword_1EE084400, 0x1E695DFB0);
    if (swift_dynamicCast())
    {

      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_13;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  sub_1D20A8580(a1, a2, &qword_1EC6C7960, &qword_1D2116AD0);
  return sub_1D20A862C(v10, &qword_1EC6C7960, &qword_1D2116AD0);
}

uint64_t sub_1D20ED160@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v9[0] = a3;
  if (a3 && (v5 = result, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440), result = swift_dynamicCast(), result))
  {
    if (*(v10 + 16) && (v7 = sub_1D20E4570(v5, a2), (v8 & 1) != 0))
    {
      sub_1D20B7E10(*(v10 + 56) + 32 * v7, v9);
    }

    else
    {

      memset(v9, 0, sizeof(v9));
    }

    sub_1D20ECF70(v9, a4);
    return sub_1D20A862C(v9, &qword_1EC6C7960, &qword_1D2116AD0);
  }

  else
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1D20ED25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1D20A8580(v3, &v11, &qword_1EC6C7960, &qword_1D2116AD0);
  if (!*(&v12 + 1))
  {
    result = sub_1D20A862C(&v11, &qword_1EC6C7960, &qword_1D2116AD0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  if (*(v10 + 16) && (v8 = sub_1D20E4570(a1, a2), (v9 & 1) != 0))
  {
    sub_1D20B7E10(*(v10 + 56) + 32 * v8, &v11);
  }

  else
  {

    v11 = 0u;
    v12 = 0u;
  }

  sub_1D20ECF70(&v11, a3);
  return sub_1D20A862C(&v11, &qword_1EC6C7960, &qword_1D2116AD0);
}

uint64_t sub_1D20ED3A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  v1 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0x80000001D211B7C0;
  *(inited + 48) = 3600;
  *(inited + 16) = xmmword_1D2115280;
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001D211B7A0;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
  *(inited + 96) = &unk_1F4D9E050;
  v2 = sub_1D20CE8BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
  result = swift_arrayDestroy();
  qword_1EE0874A0 = v2;
  return result;
}

uint64_t sub_1D20ED4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_1D20CF5BC())
  {
    sub_1D2113E2C();
  }

  v6 = sub_1D21137BC();

  v7 = sub_1D21137BC();
  v8 = CFPreferencesCopyAppValue(v6, v7);

  sub_1D20ED160(0x6553796772656E65, 0xEE00736563697672, v8, v10);
  sub_1D20ED25C(a1, a2, a3);
  swift_unknownObjectRelease();
  return sub_1D20A862C(v10, &qword_1EC6C7960, &qword_1D2116AD0);
}

uint64_t sub_1D20ED624(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79A0, &qword_1D2117528);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F0AF8();
  sub_1D2113F3C();
  v8[15] = 0;
  sub_1D2113D8C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1D2113D8C();
  v8[13] = 2;
  sub_1D2113D8C();
  v8[12] = 3;
  sub_1D2113D8C();
  v8[11] = 4;
  sub_1D2113D8C();
  v8[10] = 5;
  sub_1D2113D8C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D20ED824()
{
  v1 = *v0;
  v2 = 0x656C695464697267;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x694B796772656E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E49796772656E65;
  if (v1 != 1)
  {
    v5 = 0x6E67695364697267;
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

uint64_t sub_1D20ED90C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D20F0434(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D20ED934(uint64_t a1)
{
  v2 = sub_1D20F0AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20ED970(uint64_t a1)
{
  v2 = sub_1D20F0AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20ED9AC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D20F065C(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1D20EDA10(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D2113ECC();
  sub_1D211375C();
  v8 = sub_1D2113F1C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D2113E2C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D20EDDC0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D20EDB60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7990, &qword_1D2117458);
  result = sub_1D2113BEC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D2113ECC();
      sub_1D211375C();
      result = sub_1D2113F1C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D20EDDC0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D20EDB60(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D20EDF40();
      goto LABEL_16;
    }

    sub_1D20EE09C(v8 + 1);
  }

  v10 = *v4;
  sub_1D2113ECC();
  sub_1D211375C();
  result = sub_1D2113F1C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D2113E2C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D2113E4C();
  __break(1u);
  return result;
}

void *sub_1D20EDF40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7990, &qword_1D2117458);
  v2 = *v0;
  v3 = sub_1D2113BDC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1D20EE09C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7990, &qword_1D2117458);
  result = sub_1D2113BEC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D2113ECC();

      sub_1D211375C();
      result = sub_1D2113F1C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D20EE2D4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D20EE31C()
{
  result = qword_1EE084828;
  if (!qword_1EE084828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084828);
  }

  return result;
}

uint64_t sub_1D20EE370()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_1D211319C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  if (sub_1D20CF5BC())
  {
    sub_1D2113E2C();
  }

  v10 = sub_1D21137BC();

  v11 = sub_1D21137BC();
  v12 = CFPreferencesCopyAppValue(v10, v11);

  if (!v12)
  {
    return v12 & 1;
  }

  *&v34 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

  v13 = v33[0];
  v14 = *(v33[0] + 16);
  v30 = v4;
  if (v14 && (v15 = sub_1D20E4570(0x6553796772656E65, 0xEE00736563697672), (v16 & 1) != 0))
  {
    sub_1D20B7E10(*(v13 + 56) + 32 * v15, &v31);
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  sub_1D20ECF70(&v31, v33);
  sub_1D20A862C(&v31, &qword_1EC6C7960, &qword_1D2116AD0);
  sub_1D20ED25C(0x5255726576726573, 0xE90000000000004CLL, &v34);
  sub_1D20A862C(v33, &qword_1EC6C7960, &qword_1D2116AD0);
  if (!v35)
  {

LABEL_22:
    v19 = &qword_1EC6C7960;
    v20 = &qword_1D2116AD0;
    v21 = &v34;
LABEL_23:
    sub_1D20A862C(v21, v19, v20);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_24;
  }

  if (*(v13 + 16) && (v17 = sub_1D20E4570(0x6553796772656E65, 0xEE00736563697672), (v18 & 1) != 0))
  {
    sub_1D20B7E10(*(v13 + 56) + 32 * v17, &v31);
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  sub_1D20ECF70(&v31, v33);
  sub_1D20A862C(&v31, &qword_1EC6C7960, &qword_1D2116AD0);

  sub_1D20ED25C(0x68746150697061, 0xE700000000000000, &v34);
  sub_1D20A862C(v33, &qword_1EC6C7960, &qword_1D2116AD0);
  if (!v35)
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7988, &qword_1D2117448);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v12 = *(v31 + 16);

  if (v12)
  {
    if (sub_1D20CF5BC())
    {
      sub_1D2113E2C();
    }

    v23 = v30;
    v24 = sub_1D21137BC();

    v25 = sub_1D21137BC();
    v26 = CFPreferencesCopyAppValue(v24, v25);

    if (v26)
    {
      *&v34 = v26;
      v27 = swift_dynamicCast();
      (*(v23 + 56))(v2, v27 ^ 1u, 1, v3);
      if ((*(v23 + 48))(v2, 1, v3) != 1)
      {
        (*(v23 + 32))(v9, v2, v3);
        sub_1D211317C();
        LOBYTE(v12) = sub_1D21130FC();
        v28 = *(v23 + 8);
        v28(v7, v3);
        v28(v9, v3);
        return v12 & 1;
      }
    }

    else
    {
      (*(v23 + 56))(v2, 1, 1, v3);
    }

    v19 = &qword_1EC6C7248;
    v20 = &qword_1D2114A80;
    v21 = v2;
    goto LABEL_23;
  }

  return v12 & 1;
}

uint64_t sub_1D20EE980(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = sub_1D2112FFC();
  *&v18 = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:&v18];

  if (!v4)
  {
    v9 = v18;
    v10 = sub_1D2112EFC();

    swift_willThrow();
    return 0;
  }

  v5 = v18;
  sub_1D2113B7C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440);
  if (swift_dynamicCast())
  {
    v6 = v16;
    if (*(v16 + 16) && (v7 = sub_1D20E4570(0x6553796772656E65, 0xEE00736563697672), (v8 & 1) != 0))
    {
      sub_1D20B7E10(*(v16 + 56) + 32 * v7, &v16);
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    sub_1D20ED25C(0x5255726576726573, 0xE90000000000004CLL, &v18);
    sub_1D20A862C(&v16, &qword_1EC6C7960, &qword_1D2116AD0);
    if (v19)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      if (*(v6 + 16) && (v11 = sub_1D20E4570(0x6553796772656E65, 0xEE00736563697672), (v12 & 1) != 0))
      {
        sub_1D20B7E10(*(v6 + 56) + 32 * v11, &v16);
      }

      else
      {

        v16 = 0u;
        v17 = 0u;
      }

      sub_1D20ED25C(0x68746150697061, 0xE700000000000000, &v18);
      sub_1D20A862C(&v16, &qword_1EC6C7960, &qword_1D2116AD0);
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7988, &qword_1D2117448);
        if (swift_dynamicCast())
        {
          v13 = *(v15 + 16);

          if (v13)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
    }

    sub_1D20A862C(&v18, &qword_1EC6C7960, &qword_1D2116AD0);
  }

  return 0;
}

uint64_t sub_1D20EEC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54[4] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_1D211319C();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D20EE980(a1, a2) & 1) == 0)
  {
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v17 = sub_1D211362C();
    __swift_project_value_buffer(v17, qword_1EE087548);
    v18 = sub_1D21135FC();
    v19 = sub_1D2113A7C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D209F000, v18, v19, "Corrupt Config received from Server.", v20, 2u);
      MEMORY[0x1D3896EB0](v20, -1, -1);
    }

    v21 = sub_1D21135FC();
    v22 = sub_1D2113A7C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D209F000, v21, v22, "Unable to save config from server.", v23, 2u);
      MEMORY[0x1D3896EB0](v23, -1, -1);
    }

    v24 = sub_1D21135FC();
    v25 = sub_1D2113A7C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D209F000, v24, v25, "This will result in using old values fetched from server.", v26, 2u);
      MEMORY[0x1D3896EB0](v26, -1, -1);
    }

    return 0;
  }

  v13 = objc_opt_self();
  v14 = sub_1D2112FFC();
  v53[0] = 0;
  v15 = [v13 JSONObjectWithData:v14 options:0 error:v53];

  v16 = v53[0];
  if (!v15)
  {
    v28 = v16;
    v29 = sub_1D2112EFC();

    swift_willThrow();
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D211362C();
    __swift_project_value_buffer(v30, qword_1EE087438);
    v31 = v29;
    v32 = sub_1D21135FC();
    v33 = sub_1D2113A7C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1D209F000, v32, v33, "Error while trying to save Config to file %@", v34, 0xCu);
      sub_1D20A862C(v35, &qword_1EC6C7950, qword_1D21153D0);
      MEMORY[0x1D3896EB0](v35, -1, -1);
      MEMORY[0x1D3896EB0](v34, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v52 = v10;
  sub_1D2113B7C();
  swift_unknownObjectRelease();
  if (sub_1D20CF5BC())
  {
    sub_1D2113E2C();
  }

  sub_1D20B7E10(v54, v53);
  v38 = sub_1D21137BC();

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7960, &qword_1D2116AD0);
  v39 = sub_1D2113AFC();
  v40 = sub_1D21137BC();
  CFPreferencesSetAppValue(v38, v39, v40);

  swift_unknownObjectRelease();
  v41 = sub_1D21137BC();
  CFPreferencesAppSynchronize(v41);

  sub_1D20A862C(v53, &qword_1EC6C7960, &qword_1D2116AD0);
  sub_1D20A8580(a3, v8, &qword_1EC6C7248, &qword_1D2114A80);
  v42 = v52;
  if ((*(v52 + 48))(v8, 1, v9) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
    v43 = &qword_1EC6C7248;
    v44 = &qword_1D2114A80;
    v45 = v8;
  }

  else
  {
    (*(v42 + 32))(v12, v8, v9);
    if (sub_1D20CF5BC())
    {
      sub_1D2113E2C();
    }

    v53[3] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
    (*(v42 + 16))(boxed_opaque_existential_1, v12, v9);
    v47 = sub_1D21137BC();

    v48 = sub_1D2113AFC();
    v49 = sub_1D21137BC();
    CFPreferencesSetAppValue(v47, v48, v49);

    swift_unknownObjectRelease();
    v50 = sub_1D21137BC();
    CFPreferencesAppSynchronize(v50);

    (*(v42 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(v54);
    v43 = &qword_1EC6C7960;
    v44 = &qword_1D2116AD0;
    v45 = v53;
  }

  sub_1D20A862C(v45, v43, v44);
  return 1;
}

uint64_t sub_1D20EF460(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v1[3] = swift_task_alloc();
  v2 = sub_1D2112B1C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v1[7] = swift_task_alloc();
  v3 = sub_1D2112F9C();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20EF5F8, 0, 0);
}

uint64_t sub_1D20EF5F8()
{
  sub_1D20CFA90();
  v1 = sub_1D20EE370();
  if (v1)
  {
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v2 = sub_1D211362C();
    __swift_project_value_buffer(v2, qword_1EE087548);
    v3 = sub_1D21135FC();
    v4 = sub_1D2113A9C();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Config saved on disk is valid. Skipping reloading";
LABEL_11:
    _os_log_impl(&dword_1D209F000, v3, v4, v6, v5, 2u);
    MEMORY[0x1D3896EB0](v5, -1, -1);
LABEL_12:

    v11 = v0[1];

    return v11(v1 & 1);
  }

  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  sub_1D20CF5BC();
  sub_1D2112F7C();
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_1D20A862C(v0[7], &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v10 = sub_1D211362C();
    __swift_project_value_buffer(v10, qword_1EE087548);
    v3 = sub_1D21135FC();
    v4 = sub_1D2113A7C();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Unable to generate request URL for fetching config";
    goto LABEL_11;
  }

  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[9];
  (*(v16 + 32))(v14, v0[7], v15);
  (*(v16 + 16))(v13, v14, v15);
  sub_1D2112ACC();
  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  v17[1] = sub_1D20EF948;
  v18 = v0[6];

  return MEMORY[0x1EEDC6260](v18, 0);
}

uint64_t sub_1D20EF948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = a3;
  v5[16] = v3;

  if (v3)
  {
    v6 = sub_1D20EFF70;
  }

  else
  {
    v6 = sub_1D20EFA60;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D20EFA60()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v16 = sub_1D211362C();
    __swift_project_value_buffer(v16, qword_1EE087548);
    v17 = sub_1D21135FC();
    v18 = sub_1D2113A7C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 112);
    v21 = *(v0 + 104);
    v22 = *(v0 + 88);
    v23 = *(v0 + 72);
    v48 = *(v0 + 120);
    v51 = *(v0 + 64);
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    v26 = *(v0 + 32);
    if (v19)
    {
      v45 = *(v0 + 88);
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D209F000, v17, v18, "Unable to process Config Response.", v27, 2u);
      MEMORY[0x1D3896EB0](v27, -1, -1);
      sub_1D20B98A4(v21, v20);

      (*(v24 + 8))(v25, v26);
      (*(v23 + 8))(v45, v51);
    }

    else
    {
      sub_1D20B98A4(v21, v20);

      (*(v24 + 8))(v25, v26);
      (*(v23 + 8))(v22, v51);
    }

    goto LABEL_18;
  }

  v2 = v1;
  v3 = *(v0 + 120);
  if ([v2 statusCode] != 200)
  {
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 120);
    v29 = sub_1D211362C();
    __swift_project_value_buffer(v29, qword_1EE087548);
    v30 = v28;
    v31 = sub_1D21135FC();
    v32 = sub_1D2113A7C();
    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 112);
    v34 = *(v0 + 120);
    v36 = *(v0 + 104);
    v37 = *(v0 + 88);
    v38 = *(v0 + 72);
    v39 = *(v0 + 40);
    v49 = *(v0 + 48);
    v52 = *(v0 + 64);
    v46 = *(v0 + 32);
    if (v33)
    {
      v43 = *(v0 + 88);
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = [v2 statusCode];

      _os_log_impl(&dword_1D209F000, v31, v32, "Unhandled http response code %ld", v40, 0xCu);
      MEMORY[0x1D3896EB0](v40, -1, -1);
      sub_1D20B98A4(v36, v35);

      (*(v39 + 8))(v49, v46);
      (*(v38 + 8))(v43, v52);
    }

    else
    {
      sub_1D20B98A4(v36, v35);

      (*(v39 + 8))(v49, v46);
      (*(v38 + 8))(v37, v52);
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (qword_1EE084480 != -1)
  {
    swift_once();
  }

  v4 = sub_1D211362C();
  __swift_project_value_buffer(v4, qword_1EE087548);
  v5 = sub_1D21135FC();
  v6 = sub_1D2113A9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D209F000, v5, v6, "Saving fetched config to disk", v7, 2u);
    MEMORY[0x1D3896EB0](v7, -1, -1);
  }

  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  v11 = *(v0 + 72);
  v47 = *(v0 + 64);
  v50 = *(v0 + 88);
  v12 = *(v0 + 40);
  v44 = *(v0 + 48);
  v14 = *(v0 + 24);
  v13 = *(v0 + 32);

  sub_1D20BB444(v14);
  v15 = sub_1D20EEC90(v10, v8, v14);
  sub_1D20B98A4(v10, v8);

  sub_1D20A862C(v14, &qword_1EC6C7248, &qword_1D2114A80);
  (*(v12 + 8))(v44, v13);
  (*(v11 + 8))(v50, v47);
LABEL_19:

  v41 = *(v0 + 8);

  return v41(v15 & 1);
}

uint64_t sub_1D20EFF70()
{
  v35 = v0;
  if (qword_1EE084480 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_1D211362C();
  __swift_project_value_buffer(v2, qword_1EE087548);
  v3 = v1;
  v4 = sub_1D21135FC();
  v5 = sub_1D2113A7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D209F000, v4, v5, "Error while trying to fetch Config from Server %@", v7, 0xCu);
    sub_1D20A862C(v8, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v8, -1, -1);
    MEMORY[0x1D3896EB0](v7, -1, -1);
  }

  v11 = sub_1D21135FC();
  v12 = sub_1D2113A7C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[5];
  v19 = v0[6];
  v20 = v0[4];
  if (v13)
  {
    v33 = v0[6];
    v21 = swift_slowAlloc();
    v32 = v20;
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315138;
    v23 = sub_1D20CF5BC();
    v24 = !v23;
    if (v23)
    {
      v25 = 1685025392;
    }

    else
    {
      v25 = 24945;
    }

    v31 = v15;
    if (v24)
    {
      v26 = 0xE200000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v30 = v16;
    v27 = sub_1D20B75F0(v25, v26, &v34);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1D209F000, v11, v12, "Current Environment %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1D3896EB0](v22, -1, -1);
    MEMORY[0x1D3896EB0](v21, -1, -1);

    (*(v18 + 8))(v33, v32);
    (*(v17 + 8))(v31, v30);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v15, v16);
  }

  v28 = v0[1];

  return v28(0);
}

uint64_t sub_1D20F02A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3896330](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D20EDA10(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D20F035C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D20F03B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D20F0434(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C695464697267 && a2 == 0xEE0070756B6F6F4CLL;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E49796772656E65 && a2 == 0xEF736C6176726574 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E67695364697267 && a2 == 0xEA00000000006C61 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D211B7E0 == a2 || (sub_1D2113E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D211B800 == a2 || (sub_1D2113E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x694B796772656E65 && a2 == 0xEE00737461745374)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D2113E2C();

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

uint64_t sub_1D20F065C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7998, &qword_1D2117520);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F0AF8();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = sub_1D2113D1C();
  v11 = v10;
  LOBYTE(v43[0]) = 1;
  v34 = sub_1D2113D1C();
  v36 = v12;
  LOBYTE(v43[0]) = 2;
  v13 = sub_1D2113D1C();
  v35 = v14;
  v31 = v13;
  LOBYTE(v43[0]) = 3;
  v30 = sub_1D2113D1C();
  v33 = v15;
  LOBYTE(v43[0]) = 4;
  v29 = sub_1D2113D1C();
  v32 = v16;
  v44 = 5;
  v17 = sub_1D2113D1C();
  v18 = *(v6 + 8);
  v19 = v17;
  v28 = v20;
  v18(v8, v5);
  *&v37 = v9;
  *(&v37 + 1) = v11;
  *&v38 = v34;
  *(&v38 + 1) = v36;
  *&v39 = v31;
  *(&v39 + 1) = v35;
  *&v40 = v30;
  v21 = v33;
  *(&v40 + 1) = v33;
  *&v41 = v29;
  v22 = v32;
  *(&v41 + 1) = v32;
  *&v42 = v19;
  v23 = v28;
  *(&v42 + 1) = v28;
  sub_1D20F0B4C(&v37, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v9;
  v43[1] = v11;
  v43[2] = v34;
  v43[3] = v36;
  v43[4] = v31;
  v43[5] = v35;
  v43[6] = v30;
  v43[7] = v21;
  v43[8] = v29;
  v43[9] = v22;
  v43[10] = v19;
  v43[11] = v23;
  result = sub_1D20F0B84(v43);
  v25 = v40;
  a2[2] = v39;
  a2[3] = v25;
  v26 = v42;
  a2[4] = v41;
  a2[5] = v26;
  v27 = v38;
  *a2 = v37;
  a2[1] = v27;
  return result;
}

unint64_t sub_1D20F0AF8()
{
  result = qword_1EE084840[0];
  if (!qword_1EE084840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE084840);
  }

  return result;
}

unint64_t sub_1D20F0BC8()
{
  result = qword_1EC6C79A8;
  if (!qword_1EC6C79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C79A8);
  }

  return result;
}

unint64_t sub_1D20F0C20()
{
  result = qword_1EE084830;
  if (!qword_1EE084830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084830);
  }

  return result;
}

unint64_t sub_1D20F0C78()
{
  result = qword_1EE084838;
  if (!qword_1EE084838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084838);
  }

  return result;
}

uint64_t sub_1D20F0CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19[0] = a1;
  v19[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77E0, &qword_1D2116A40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D20DC7A4(0, v10, 0);
  v11 = v21;
  for (i = (a3 + 56); ; i += 4)
  {
    v13 = *(i - 2);
    v14 = *(i - 1);
    v15 = *i;
    v20[0] = *(i - 3);
    v20[1] = v13;
    v20[2] = v14;
    v20[3] = v15;

    (v19[0])(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v11;
    v17 = *(v11 + 16);
    v16 = *(v11 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1D20DC7A4((v16 > 1), v17 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v17 + 1;
    sub_1D20B7DA8(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, &qword_1EC6C77E0, &qword_1D2116A40);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20F0EB0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (!v6)
  {
LABEL_5:
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D211362C();
    __swift_project_value_buffer(v10, qword_1EE0874C0);
    v11 = sub_1D21135FC();
    v12 = sub_1D2113A8C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D209F000, v11, v12, "Unable to create valid URL", v13, 2u);
      MEMORY[0x1D3896EB0](v13, -1, -1);
    }

    abort();
  }

  sub_1D2112F7C();
  v7 = sub_1D2112F9C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_1D20A862C(v5, &qword_1EC6C7250, &qword_1D21149C0);
    goto LABEL_5;
  }

  return (*(v8 + 32))(a2, v5, v7);
}

uint64_t sub_1D20F108C@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  LODWORD(v49) = a3;
  v9 = sub_1D2112C6C();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77E0, &qword_1D2116A40);
  v48 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_1D2112D0C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112CCC();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D20A862C(v18, &unk_1EC6C7258, &qword_1D21149C8);
    v23 = sub_1D2112F9C();
    v24 = *(v23 - 8);
    (*(v24 + 16))(a4, v5, v23);
    return (*(v24 + 56))(a4, 0, 1, v23);
  }

  (*(v20 + 32))(v22, v18, v19);
  v26 = sub_1D2112CBC();
  if (!v26)
  {
    v46 = v20;
    v47 = v19;
    v49 = a4;
    MEMORY[0x1EEE9AC00](0);
    *(&v43 - 16) = a2 & 1;
    *(&v43 - 1) = v5;
    v30 = sub_1D20F0CCC(sub_1D20F2438, (&v43 - 4), a1);
    v31 = *(v30 + 16);
    if (v31)
    {
      v44 = v22;
      v45 = v30;
      v32 = v30 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v33 = *(v48 + 72);
      v34 = v51;
      v35 = (v50 + 48);
      v36 = (v50 + 32);
      v37 = MEMORY[0x1E69E7CC0];
      do
      {
        v38 = v52;
        sub_1D20F245C(v32, v52);
        sub_1D20B7DA8(v38, v14, &qword_1EC6C77E0, &qword_1D2116A40);
        if ((*v35)(v14, 1, v34) == 1)
        {
          sub_1D20A862C(v14, &qword_1EC6C77E0, &qword_1D2116A40);
        }

        else
        {
          v39 = *v36;
          (*v36)(v53, v14, v34);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_1D20B70B8(0, v37[2] + 1, 1, v37);
          }

          v41 = v37[2];
          v40 = v37[3];
          if (v41 >= v40 >> 1)
          {
            v37 = sub_1D20B70B8((v40 > 1), v41 + 1, 1, v37);
          }

          v37[2] = v41 + 1;
          v42 = v37 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41;
          v34 = v51;
          v39(v42, v53, v51);
        }

        v32 += v33;
        --v31;
      }

      while (v31);

      v22 = v44;
    }

    else
    {

      v37 = MEMORY[0x1E69E7CC0];
    }

    v20 = v46;
    v19 = v47;
    if (v37[2])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v27 = sub_1D20F17C8(v26, a1, a2 & 1, v49 & 1);

  if (!v27[2])
  {
LABEL_5:
  }

LABEL_6:
  v28 = sub_1D2112C8C();
  MEMORY[0x1D38955F0](v28);
  if (v29)
  {
    sub_1D2112CAC();
  }

  sub_1D2112CDC();
  return (*(v20 + 8))(v22, v19);
}

void sub_1D20F1614()
{
  v0 = sub_1D2112BBC();
  __swift_allocate_value_buffer(v0, qword_1EE087560);
  __swift_project_value_buffer(v0, qword_1EE087560);
  sub_1D20F1660();
}

void sub_1D20F1660()
{
  v0 = sub_1D2112BBC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112B8C();
  v4 = sub_1D2112B9C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_1D2112FFC();
  v8 = [objc_opt_self() characterSetWithBitmapRepresentation_];

  sub_1D20B98A4(v4, v6);
  v9 = sub_1D21137BC();
  [v8 removeCharactersInString_];

  sub_1D2112BAC();
}

void *sub_1D20F17C8(void *a1, uint64_t a2, int a3, int a4)
{
  v92 = a4;
  v97 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79B0, &qword_1D2117648);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v87 = &v85 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79B8, &qword_1D2117650);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v100 = (&v85 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79C0, &qword_1D2117658);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v85 - v19);
  v110 = sub_1D2112C6C();
  v21 = MEMORY[0x1EEE9AC00](v110);
  v88 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v86 = &v85 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v91 = &v85 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v109 = &v85 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v85 - v30;
  v113 = a1;
  v96 = *(a2 + 16);
  if (!v96)
  {

    return a1;
  }

  v95 = a2 + 32;
  v101 = v29;
  v102 = (v29 + 16);
  v106 = (v13 + 56);
  v107 = v20;
  v104 = (v29 + 32);
  v105 = (v13 + 48);
  v108 = (v29 + 8);

  v32 = 0;
  v103 = v18;
  v98 = v31;
  while (1)
  {
    v33 = (v95 + 32 * v32);
    v35 = *v33;
    v34 = v33[1];
    v36 = v33[3];
    if ((v97 & 1) == 0)
    {
      break;
    }

    v94 = v33[2];
    v111 = v35;
    v112 = v34;
    v37 = qword_1EE084498;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = sub_1D2112BBC();
    v39 = __swift_project_value_buffer(v38, qword_1EE087560);
    sub_1D20B99F0();
    v93 = v39;
    v35 = sub_1D2113B3C();
    v34 = v40;

    if (v34)
    {
      v99 = v32;
      v111 = v94;
      v112 = v36;
      sub_1D2113B3C();

      goto LABEL_11;
    }

LABEL_4:
    if (++v32 == v96)
    {
      return a1;
    }
  }

  v99 = v32;

LABEL_11:
  sub_1D2112C3C();

  v42 = 0;
  v43 = a1[2];
  while (1)
  {
    v44 = v107;
    if (v42 == v43)
    {
      v45 = 1;
      v42 = v43;
    }

    else
    {
      v46 = v101;
      if ((v42 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v42 >= a1[2])
      {
        goto LABEL_55;
      }

      v47 = a1 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v42;
      v48 = *(v12 + 48);
      v49 = v100;
      *v100 = v42;
      (*(v46 + 16))(v49 + v48, v47, v110);
      sub_1D20B7DA8(v49, v18, &qword_1EC6C79B8, &qword_1D2117650);
      v45 = 0;
      ++v42;
    }

    (*v106)(v18, v45, 1, v12);
    sub_1D20B7DA8(v18, v44, &qword_1EC6C79C0, &qword_1D2117658);
    if ((*v105)(v44, 1, v12) == 1)
    {

      v56 = *v102;
      if ((v92 & 1) == 0)
      {
        v73 = v98;
        v56(v88, v98, v110);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_1D20B70B8(0, a1[2] + 1, 1, a1);
        }

        v75 = a1[2];
        v74 = a1[3];
        v76 = v101;
        if (v75 >= v74 >> 1)
        {
          v84 = sub_1D20B70B8((v74 > 1), v75 + 1, 1, a1);
          v76 = v101;
          a1 = v84;
        }

        v77 = v73;
        v78 = v110;
        v79 = v76;
        (*(v76 + 8))(v77, v110);
        a1[2] = v75 + 1;
        (*(v79 + 32))(a1 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v75, v88, v78);
        v113 = a1;
LABEL_51:
        v32 = v99;
        goto LABEL_4;
      }

      v57 = v98;
      v56(v89, v98, v110);
      v58 = a1[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = a1;
      if (!isUniquelyReferenced_nonNull_native || v58 >= a1[3] >> 1)
      {
        a1 = sub_1D20B70B8(isUniquelyReferenced_nonNull_native, v58 + 1, 1, a1);
        v113 = a1;
      }

      v32 = v99;
      sub_1D20F25D4(0, 0, 1, v89);
      v113 = a1;
      (*v108)(v57, v110);
      goto LABEL_4;
    }

    v50 = *v44;
    v51 = v12;
    v52 = *(v12 + 48);
    v53 = *v104;
    (*v104)(v109, v44 + v52, v110);
    if (sub_1D2112C4C() == v35 && v54 == v34)
    {
      break;
    }

    v55 = sub_1D2113E2C();

    if (v55)
    {
      goto LABEL_28;
    }

    result = (*v108)(v109, v110);
    v12 = v51;
    v18 = v103;
  }

LABEL_28:

  v60 = v91;
  sub_1D20F24CC(v50, v91);
  v61 = *v108;
  v62 = v110;
  (*v108)(v60, v110);
  result = v61(v109, v62);
  a1 = v113;
  v63 = v113[2];
  v64 = v98;
  if (v50 >= v63)
  {
    v70 = *v102;
    if (v92)
    {
      v70(v87, v98, v110);
      v71 = a1[2];
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v113 = a1;
      if (!v72 || v71 >= a1[3] >> 1)
      {
        a1 = sub_1D20B70B8(v72, v71 + 1, 1, a1);
        v113 = a1;
      }

      v12 = v51;
      v32 = v99;
      v67 = 0;
      v68 = 0;
      v69 = &v114;
      goto LABEL_40;
    }

    v70(v86, v98, v110);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1D20B70B8(0, v63 + 1, 1, a1);
    }

    v81 = a1[2];
    v80 = a1[3];
    if (v81 >= v80 >> 1)
    {
      a1 = sub_1D20B70B8((v80 > 1), v81 + 1, 1, a1);
    }

    v82 = v64;
    v83 = v110;
    v61(v82, v110);
    a1[2] = v81 + 1;
    v53(a1 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v81, v86, v83);
    v113 = a1;
    v12 = v51;
    v18 = v103;
    goto LABEL_51;
  }

  if ((v50 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = (*v102)(v90, v98, v110);
  v65 = a1[2];
  if (v65 >= v50)
  {
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v113 = a1;
    if (!v66 || v65 >= a1[3] >> 1)
    {
      a1 = sub_1D20B70B8(v66, v65 + 1, 1, a1);
      v113 = a1;
    }

    v12 = v51;
    v32 = v99;
    v67 = v50;
    v68 = v50;
    v69 = &v115;
LABEL_40:
    sub_1D20F25D4(v67, v68, 1, *(v69 - 32));
    v113 = a1;
    v61(v64, v110);
    v18 = v103;
    goto LABEL_4;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1D20F2244@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 1) == 0)
  {

    goto LABEL_7;
  }

  v4 = qword_1EE084498;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_1D2112BBC();
  __swift_project_value_buffer(v5, qword_1EE087560);
  sub_1D20B99F0();
  sub_1D2113B3C();
  v7 = v6;

  if (v7)
  {
    sub_1D2113B3C();

LABEL_7:
    sub_1D2112C3C();

    v8 = sub_1D2112C6C();
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }

  v10 = sub_1D2112C6C();
  (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t sub_1D20F245C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77E0, &qword_1D2116A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20F24CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D20E4750(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_1D2112C6C();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1D20F25D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1D2112C6C();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1D20A862C(v25, &qword_1EC6C79B0, &qword_1D2117648);
  }

  if (v18 < 1)
  {
    return sub_1D20A862C(v25, &qword_1EC6C79B0, &qword_1D2117648);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1D20A862C(v25, &qword_1EC6C79B0, &qword_1D2117648);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1D20F2770(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D20F2818@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_1D2112F9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D20ECA00(v17);
  if (*(&v17[0] + 1) != 1)
  {
    v18 = v17[4];
    sub_1D20BD1B0(&v18, v16);
    v9 = sub_1D20A862C(v17, &qword_1EC6C7518, &unk_1D2116AB0);
    if (*(&v18 + 1))
    {
      sub_1D20F6890(v9);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_1D2112F3C();
        sub_1D20A862C(&v18, &qword_1EC6C7510, &unk_1D2115710);
        (*(v6 + 8))(v8, v5);
        v14 = 0;
        return (*(v6 + 56))(a1, v14, 1, v5);
      }

      sub_1D20A862C(&v18, &qword_1EC6C7510, &unk_1D2115710);
      sub_1D20A862C(v4, &qword_1EC6C7250, &qword_1D21149C0);
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D211362C();
  __swift_project_value_buffer(v10, qword_1EE0874C0);
  v11 = sub_1D21135FC();
  v12 = sub_1D2113A7C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D209F000, v11, v12, "Unable to compute API Path for EK historical signal.", v13, 2u);
    MEMORY[0x1D3896EB0](v13, -1, -1);
  }

  v14 = 1;
  return (*(v6 + 56))(a1, v14, 1, v5);
}

uint64_t sub_1D20F2B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v144 = &v132 - v5;
  v6 = sub_1D2112B1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v143 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v141 = &v132 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v147 = &v132 - v12;
  v151 = sub_1D211319C();
  v149 = *(v151 - 1);
  v13 = MEMORY[0x1EEE9AC00](v151);
  v148 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v132 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v140 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v150 = &v132 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v132 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v132 - v25;
  v27 = sub_1D2112F9C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v139 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v142 = &v132 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v145 = &v132 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v146 = &v132 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v132 - v37;
  sub_1D20F2818(v26);
  v154 = v28;
  v40 = *(v28 + 48);
  v39 = (v28 + 48);
  v153 = v40;
  if (v40(v26, 1, v27) == 1)
  {
    sub_1D20A862C(v26, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v41 = sub_1D211362C();
    __swift_project_value_buffer(v41, qword_1EE0874C0);

    v42 = sub_1D21135FC();
    v43 = sub_1D2113A7C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v2;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v156[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1D20B75F0(*(v44 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId), *(v44 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8), v156);
      _os_log_impl(&dword_1D209F000, v42, v43, "Request URL for EK Guidance History not found | requestId: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1D3896EB0](v46, -1, -1);
      MEMORY[0x1D3896EB0](v45, -1, -1);
    }

    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  v135 = v24;
  v137 = v7;
  v138 = v6;
  v136 = a1;
  v48 = *(v154 + 32);
  v134 = v154 + 32;
  v133 = v48;
  v48(v38, v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
  inited = swift_initStackObject();
  v152 = v38;
  v50 = inited;
  *(inited + 16) = xmmword_1D2116DB0;
  *(inited + 32) = 0x64692D64697267;
  *(inited + 40) = 0xE700000000000000;
  v51 = *(v2 + 24);
  v50[6] = *(v2 + 16);
  v50[7] = v51;
  v50[8] = 0x61642D7472617473;
  v50[9] = 0xEA00000000006574;

  sub_1D2112C0C();
  v52 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v52 setFormatOptions_];
  v53 = sub_1D21130EC();
  v54 = [v52 stringFromDate_];

  v55 = sub_1D21137CC();
  v57 = v56;

  v58 = v2;
  v59 = *(v149 + 8);
  v60 = v16;
  v61 = v151;
  v59(v60, v151);
  v50[10] = v55;
  v50[11] = v57;
  v50[12] = 0x657461642D646E65;
  v50[13] = 0xE800000000000000;
  v149 = v58;
  v62 = v148;
  sub_1D2112BDC();
  v63 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v63 setFormatOptions_];
  v64 = sub_1D21130EC();
  v65 = [v63 stringFromDate_];

  v66 = sub_1D21137CC();
  v68 = v67;

  v59(v62, v61);
  v50[14] = v66;
  v50[15] = v68;
  sub_1D2112F1C();
  v69 = v150;
  sub_1D2112F7C();
  v70 = v27;
  if (v153(v69, 1, v27) == 1)
  {

    sub_1D20A862C(v69, &qword_1EC6C7250, &qword_1D21149C0);
    v71 = v154;
    v72 = v135;
    (*(v154 + 56))(v135, 1, 1, v27);
LABEL_10:
    sub_1D20A862C(v72, &qword_1EC6C7250, &qword_1D21149C0);
    v80 = v136;
    v81 = v149;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v82 = sub_1D211362C();
    __swift_project_value_buffer(v82, qword_1EE0874C0);

    v83 = sub_1D21135FC();
    v84 = sub_1D2113A7C();

    v85 = os_log_type_enabled(v83, v84);
    v86 = v138;
    v87 = v137;
    if (v85)
    {
      v88 = v81;
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v156[0] = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_1D20B75F0(*(v88 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId), *(v88 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8), v156);
      _os_log_impl(&dword_1D209F000, v83, v84, "Unable to create EK Guidance History URL with required query parameters | requestId: %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x1D3896EB0](v90, -1, -1);
      MEMORY[0x1D3896EB0](v89, -1, -1);
    }

    (*(v71 + 8))(v152, v70);
    return (*(v87 + 56))(v80, 1, 1, v86);
  }

  v73 = v145;
  v74 = v133;
  v133(v145, v69, v27);
  v75 = v135;
  sub_1D20F108C(v50, 0, 0, v135);
  v72 = v75;

  v71 = v154;
  v77 = (v154 + 8);
  v76 = *(v154 + 8);
  v78 = v73;
  v79 = v153;
  v76(v78, v70);
  if (v79(v72, 1, v70) == 1)
  {
    goto LABEL_10;
  }

  v91 = v74;
  v148 = v39;
  v92 = v79;
  v151 = v76;
  v93 = v146;
  v91(v146, v72, v70);
  (*(v71 + 16))(v142, v93, v70);
  v94 = v147;
  sub_1D2112ACC();
  sub_1D2112A8C();
  if (qword_1EE083DD8 != -1)
  {
    swift_once();
  }

  v95 = sub_1D211362C();
  __swift_project_value_buffer(v95, qword_1EE0874A8);
  v96 = sub_1D21135FC();
  v97 = sub_1D2113A7C();
  v98 = os_log_type_enabled(v96, v97);
  v132 = v70;
  v150 = v77;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v155 = v100;
    *v99 = 136315138;
    swift_beginAccess();
    v101 = v140;
    sub_1D2112ADC();
    swift_endAccess();
    result = v92(v101, 1, v70);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v102 = v139;
    v133(v139, v101, v70);
    sub_1D20F5828();
    v103 = sub_1D2113E0C();
    v105 = v104;
    (v151)(v102, v70);
    v106 = sub_1D20B75F0(v103, v105, &v155);

    *(v99 + 4) = v106;
    _os_log_impl(&dword_1D209F000, v96, v97, "URL %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x1D3896EB0](v100, -1, -1);
    MEMORY[0x1D3896EB0](v99, -1, -1);

    v94 = v147;
  }

  else
  {
  }

  swift_beginAccess();
  v107 = v94;
  v108 = v137;
  v109 = *(v137 + 16);
  v110 = v143;
  v111 = v138;
  v109(v143, v107, v138);
  if (sub_1D20CF7E0())
  {
    v112 = &unk_1F4D9E0E0;
  }

  else
  {
    v112 = &unk_1F4D9E120;
  }

  v113 = sub_1D20BABD4(v112, &unk_1F4D9E080);
  v115 = v114;
  sub_1D20CF7E0();
  v116 = v144;
  sub_1D20D94F0(v113, v115, 49, 0xE100000000000000, v144);

  v117 = *(v108 + 8);
  v117(v110, v111);
  if ((*(v108 + 48))(v116, 1, v111) == 1)
  {
    sub_1D20A862C(v116, &qword_1EC6C7508, &unk_1D2116AA0);
    v118 = v149;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v95, qword_1EE0874C0);

    v119 = sub_1D21135FC();
    v120 = sub_1D2113A7C();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = v118;
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v155 = v123;
      *v122 = 136315138;
      *(v122 + 4) = sub_1D20B75F0(*(v121 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId), *(v121 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8), &v155);
      _os_log_impl(&dword_1D209F000, v119, v120, "Unable to create signed EK history request | requestId: %s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x1D3896EB0](v123, -1, -1);
      MEMORY[0x1D3896EB0](v122, -1, -1);
    }

    v124 = v132;
    v125 = v151;
    (v151)(v146, v132);
    v125(v152, v124);
    v126 = v147;
    v127 = v138;
    (*(v137 + 56))(v136, 1, 1, v138);
    return (v117)(v126, v127);
  }

  else
  {
    v128 = v141;
    v109(v141, v116, v111);
    sub_1D2112AEC();
    v117(v116, v111);
    v129 = v136;
    (*(v108 + 32))(v136, v128, v111);
    sub_1D2112B0C();
    v130 = v132;
    v131 = v151;
    (v151)(v146, v132);
    v131(v152, v130);
    (*(v108 + 56))(v129, 0, 1, v111);
    return (v117)(v147, v111);
  }
}

uint64_t sub_1D20F3C60()
{

  v1 = OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval;
  v2 = sub_1D2112C2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidanceHistoryRequestBuilder(uint64_t a1)
{
  result = qword_1EE0838E8;
  if (!qword_1EE0838E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D20F3D6C(uint64_t a1)
{
  result = sub_1D2112C2C();
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

uint64_t sub_1D20F3E18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A18, &qword_1D2117B30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5C74();
  sub_1D2113F3C();
  v8[15] = 0;
  sub_1D2113DBC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1D2113DBC();
  v8[13] = 2;
  sub_1D2113DCC();
  v8[12] = 3;
  sub_1D2113DCC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D20F3FD8(uint64_t a1)
{
  sub_1D211375C();
  sub_1D211375C();
  v2 = *(v1 + 32);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1D3896810](*&v2);
  v3 = *(v1 + 40);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x1D3896810](*&v3);
}

uint64_t sub_1D20F4044(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A20, &qword_1D2117B38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5B78();
  sub_1D2113F3C();
  LOBYTE(v11) = 0;
  sub_1D2113DBC();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1D2113DBC();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
    sub_1D20C0650(&qword_1EC6C7538, MEMORY[0x1E69E63C0], MEMORY[0x1E69E6300]);
    sub_1D2113DEC();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79F8, &qword_1D2117B18);
    sub_1D20F5CC8(&qword_1EC6C7A28, sub_1D20F5D40, MEMORY[0x1E69E6300]);
    sub_1D2113DEC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D20F42E0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A00, &qword_1D2117B20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5780();
  sub_1D2113F3C();
  v8 = v2[1];
  v10[0] = *v2;
  v10[1] = v8;
  v10[2] = v2[2];
  sub_1D20F5C20();
  sub_1D2113DEC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D20F4434()
{
  v1 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return 0x626163696C707061;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D20F44B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D20F4D2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D20F44DC(uint64_t a1)
{
  v2 = sub_1D20F5C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F4518(uint64_t a1)
{
  v2 = sub_1D20F5C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F4554@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D20F4EA0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F45B0()
{
  sub_1D2113ECC();
  sub_1D20F3FD8(v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D20F45F4(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D20F3FD8(v2);
  return sub_1D2113F1C();
}

BOOL sub_1D20F4630(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_1D2113E2C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v5 != v9)
    {
      return 0;
    }

    return v4 == v8;
  }

  v11 = sub_1D2113E2C();
  result = 0;
  if ((v11 & 1) != 0 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_1D20F46F8()
{
  v1 = 0x6D69547472617473;
  v2 = 0x7365756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6C6F687365726874;
  }

  if (*v0)
  {
    v1 = 0x636E657571657266;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D20F4778@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D20F5118(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D20F47A0(uint64_t a1)
{
  v2 = sub_1D20F5B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F47DC(uint64_t a1)
{
  v2 = sub_1D20F5B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F4818@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D20F528C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F4874(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D2113E2C() & 1) == 0 || (v2 != v5 || v4 != v6) && (sub_1D2113E2C() & 1) == 0 || (sub_1D20FC0FC(v3, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1D2109264();
}

uint64_t sub_1D20F4970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6164697567 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2113E2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D20F4A04(uint64_t a1)
{
  v2 = sub_1D20F5780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F4A40(uint64_t a1)
{
  v2 = sub_1D20F5780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F4A7C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D20F55E4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F4AD8()
{
  v1 = *(v0 + 32);
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(v3, v1);
  sub_1D20D9020();
  return sub_1D2113F1C();
}

uint64_t sub_1D20F4B64(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(a1, v3);

  return sub_1D20D9020();
}

uint64_t sub_1D20F4BD8(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(v4, v2);
  sub_1D20D9020();
  return sub_1D2113F1C();
}

BOOL sub_1D20F4C60(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  return (*a1 == *a2 && a1[1] == a2[1] || (sub_1D2113E2C() & 1) != 0) && (v2 == v5 && v4 == v6 || (sub_1D2113E2C() & 1) != 0) && (sub_1D20FC0FC(v3, v7) & 1) != 0 && (sub_1D2109264() & 1) != 0;
}

uint64_t sub_1D20F4D2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x626163696C707061 && a2 == 0xEE006D6F7246656CLL;
  if (v3 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x626163696C707061 && a2 == 0xEC0000006F54656CLL || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D211B8A0 == a2 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D211B8C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D20F4EA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A10, &qword_1D2117B28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5C74();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v9 = sub_1D2113D4C();
  v22 = v10;
  v25 = 1;
  v20 = sub_1D2113D4C();
  v21 = v11;
  v24 = 2;
  sub_1D2113D5C();
  v13 = v12;
  v23 = 3;
  sub_1D2113D5C();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v22;
  *a2 = v9;
  a2[1] = v17;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v15;
  return result;
}

uint64_t sub_1D20F5118(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D20F528C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79F0, &qword_1D2117B08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5B78();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v9 = sub_1D2113D4C();
  v21 = v10;
  LOBYTE(v23) = 1;
  v11 = sub_1D2113D4C();
  v20 = v12;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
  v22 = 2;
  sub_1D20C0650(&qword_1EE083DB8, MEMORY[0x1E69E63E8], MEMORY[0x1E69E6330]);
  sub_1D2113D7C();
  v18 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79F8, &qword_1D2117B18);
  v22 = 3;
  sub_1D20F5CC8(&qword_1EE083680, sub_1D20F5BCC, MEMORY[0x1E69E6330]);
  sub_1D2113D7C();
  (*(v6 + 8))(v8, v5);
  v13 = v23;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v15 = v21;
  *a2 = v9;
  a2[1] = v15;
  v16 = v20;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v13;
  return result;
}

uint64_t sub_1D20F55E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79C8, &unk_1D2117700);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5780();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D20F57D4();
  sub_1D2113D7C();
  (*(v6 + 8))(v8, v5);
  v9 = v16;
  v10 = v18;
  v13 = v17;
  v14 = v15;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v13;
  *a2 = v14;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 40) = v10;
  return result;
}

unint64_t sub_1D20F5780()
{
  result = qword_1EE0837D8;
  if (!qword_1EE0837D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837D8);
  }

  return result;
}

unint64_t sub_1D20F57D4()
{
  result = qword_1EE0837E0;
  if (!qword_1EE0837E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837E0);
  }

  return result;
}

unint64_t sub_1D20F5828()
{
  result = qword_1EE083DA8;
  if (!qword_1EE083DA8)
  {
    sub_1D2112F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083DA8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D20F58C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D20F590C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D20F596C()
{
  result = qword_1EC6C79D0;
  if (!qword_1EC6C79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C79D0);
  }

  return result;
}

unint64_t sub_1D20F59C4()
{
  result = qword_1EC6C79D8;
  if (!qword_1EC6C79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C79D8);
  }

  return result;
}

unint64_t sub_1D20F5A1C()
{
  result = qword_1EC6C79E0;
  if (!qword_1EC6C79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C79E0);
  }

  return result;
}

unint64_t sub_1D20F5A74()
{
  result = qword_1EC6C79E8;
  if (!qword_1EC6C79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C79E8);
  }

  return result;
}

unint64_t sub_1D20F5ACC()
{
  result = qword_1EE0837C8;
  if (!qword_1EE0837C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837C8);
  }

  return result;
}

unint64_t sub_1D20F5B24()
{
  result = qword_1EE0837D0;
  if (!qword_1EE0837D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837D0);
  }

  return result;
}

unint64_t sub_1D20F5B78()
{
  result = qword_1EE0837F8;
  if (!qword_1EE0837F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837F8);
  }

  return result;
}

unint64_t sub_1D20F5BCC()
{
  result = qword_1EE083800;
  if (!qword_1EE083800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083800);
  }

  return result;
}

unint64_t sub_1D20F5C20()
{
  result = qword_1EC6C7A08;
  if (!qword_1EC6C7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A08);
  }

  return result;
}

unint64_t sub_1D20F5C74()
{
  result = qword_1EE083818[0];
  if (!qword_1EE083818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE083818);
  }

  return result;
}

uint64_t sub_1D20F5CC8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C79F8, &qword_1D2117B18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D20F5D40()
{
  result = qword_1EC6C7A30;
  if (!qword_1EC6C7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A30);
  }

  return result;
}

unint64_t sub_1D20F5DB8()
{
  result = qword_1EC6C7A38;
  if (!qword_1EC6C7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A38);
  }

  return result;
}

unint64_t sub_1D20F5E10()
{
  result = qword_1EC6C7A40;
  if (!qword_1EC6C7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A40);
  }

  return result;
}

unint64_t sub_1D20F5E68()
{
  result = qword_1EE083808;
  if (!qword_1EE083808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083808);
  }

  return result;
}

unint64_t sub_1D20F5EC0()
{
  result = qword_1EE083810;
  if (!qword_1EE083810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083810);
  }

  return result;
}

unint64_t sub_1D20F5F18()
{
  result = qword_1EE0837E8;
  if (!qword_1EE0837E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837E8);
  }

  return result;
}

unint64_t sub_1D20F5F70()
{
  result = qword_1EE0837F0;
  if (!qword_1EE0837F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837F0);
  }

  return result;
}

uint64_t sub_1D20F5FDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D21133BC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A48, &unk_1D2117D50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54 - v12;
  v14 = sub_1D21133DC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v59 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - v18;
  v61 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v58 = a2;
    v22(v13, 0, 1, v14);
    v57 = v15;
    (*(v15 + 32))(v19, v13, v14);
    v23 = sub_1D20F6848(&qword_1EE0843C0, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1D2112ECC();
    sub_1D211338C();
    sub_1D20F6848(&qword_1EE0843C8, MEMORY[0x1E6969BF8], MEMORY[0x1E6969C08]);
    sub_1D211396C();
    sub_1D211396C();
    v24 = *(v5 + 8);
    v24(v8, v4);
    v24(v10, v4);
    if (v61 == v60)
    {
      if (qword_1EE084470 != -1)
      {
        swift_once();
      }

      v25 = sub_1D211362C();
      __swift_project_value_buffer(v25, qword_1EE087530);
      v26 = sub_1D21135FC();
      v27 = sub_1D2113A7C();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v57;
      if (v28)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1D209F000, v26, v27, "No Internet connection detected. Check your network connection.", v30, 2u);
        MEMORY[0x1D3896EB0](v30, -1, -1);
      }

      (*(v29 + 8))(v19, v14);
    }

    else
    {
      v56 = v23;
      sub_1D2112ECC();
      sub_1D211336C();
      sub_1D211396C();
      sub_1D211396C();
      v24(v8, v4);
      v24(v10, v4);
      v36 = v19;
      if (v61 == v60)
      {
        if (qword_1EE084470 != -1)
        {
          swift_once();
        }

        v37 = sub_1D211362C();
        __swift_project_value_buffer(v37, qword_1EE087530);
        v38 = sub_1D21135FC();
        v39 = sub_1D2113A7C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_1D209F000, v38, v39, "Unable to find Host. if this QA env, please check your VPN connection!", v40, 2u);
          MEMORY[0x1D3896EB0](v40, -1, -1);
        }

        (*(v57 + 8))(v19, v14);
      }

      else
      {
        if (qword_1EE084470 != -1)
        {
          swift_once();
        }

        v41 = sub_1D211362C();
        __swift_project_value_buffer(v41, qword_1EE087530);
        v42 = v57;
        v43 = v59;
        (*(v57 + 16))(v59, v36, v14);
        v44 = v36;
        v45 = sub_1D21135FC();
        v46 = sub_1D2113A7C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = v44;
          v49 = v43;
          v50 = v47;
          *v47 = 134217984;
          v54 = v45;
          v55 = v48;
          v51 = v49;
          sub_1D2112ECC();
          v52 = sub_1D21133AC();
          v24(v10, v4);
          v53 = *(v42 + 8);
          v53(v51, v14);
          *(v50 + 1) = v52;
          v45 = v54;
          v44 = v55;
          _os_log_impl(&dword_1D209F000, v54, v46, "URLError error : %ld", v50, 0xCu);
          MEMORY[0x1D3896EB0](v50, -1, -1);
        }

        else
        {
          v53 = *(v42 + 8);
          v53(v43, v14);
        }

        sub_1D2112ECC();
        v53(v44, v14);
      }
    }
  }

  else
  {
    v22(v13, 1, 1, v14);
    sub_1D20F67E0(v13);
    if (qword_1EE084470 != -1)
    {
      swift_once();
    }

    v31 = sub_1D211362C();
    __swift_project_value_buffer(v31, qword_1EE087530);
    v32 = sub_1D21135FC();
    v33 = sub_1D2113A7C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D209F000, v32, v33, "Unknown Error", v34, 2u);
      MEMORY[0x1D3896EB0](v34, -1, -1);
    }
  }

  type metadata accessor for NetworkError(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D20F67E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A48, &unk_1D2117D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20F6848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D20F6894@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D20ECE18();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (sub_1D211391C())
    {
      sub_1D20F0EB0(a1);
    }

    else
    {
      MEMORY[0x1D38961A0](v4, v5);
      sub_1D20F0EB0(a1);
    }

    v10 = 0;
  }

  else
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D211362C();
    __swift_project_value_buffer(v6, qword_1EE0874C0);
    v7 = sub_1D21135FC();
    v8 = sub_1D2113A7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D209F000, v7, v8, "No Server Base URL Found!!", v9, 2u);
      MEMORY[0x1D3896EB0](v9, -1, -1);
    }

    v10 = 1;
  }

  v11 = sub_1D2112F9C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t sub_1D20F6A60@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1D2112F9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D20ECA00(v16);
  if (*(&v16[0] + 1) != 1)
  {
    v17 = v16[3];
    sub_1D20A8580(&v17, v15, &qword_1EC6C7510, &unk_1D2115710);
    sub_1D20A862C(v16, &qword_1EC6C7518, &unk_1D2116AB0);
    if (*(&v17 + 1))
    {
      sub_1D20F6894(v4);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_1D2112F3C();
        sub_1D20A862C(&v17, &qword_1EC6C7510, &unk_1D2115710);
        (*(v6 + 8))(v8, v5);
        v13 = 0;
        return (*(v6 + 56))(a1, v13, 1, v5);
      }

      sub_1D20A862C(&v17, &qword_1EC6C7510, &unk_1D2115710);
      sub_1D20A862C(v4, &qword_1EC6C7250, &qword_1D21149C0);
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D211362C();
  __swift_project_value_buffer(v9, qword_1EE0874C0);
  v10 = sub_1D21135FC();
  v11 = sub_1D2113A7C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D209F000, v10, v11, "Unable to compute API Path for EK forecast signal.", v12, 2u);
    MEMORY[0x1D3896EB0](v12, -1, -1);
  }

  v13 = 1;
  return (*(v6 + 56))(a1, v13, 1, v5);
}

uint64_t sub_1D20F6D64@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v121[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v109 = &v102 - v3;
  v4 = sub_1D2112B1C();
  v119 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v107 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A8, &qword_1D2115B80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v102 - v9;
  v11 = type metadata accessor for HSRatePlan(0);
  v115 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v116 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v117 = &v102 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v102 - v19;
  v21 = sub_1D2112F9C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v108 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v112 = &v102 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v110 = &v102 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v102 - v29;
  sub_1D20F6A60(v20);
  v118 = *(v22 + 48);
  if (v118(v20, 1, v21) == 1)
  {
    v31 = v120;
    v32 = v1;
    sub_1D20A862C(v20, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D211362C();
    __swift_project_value_buffer(v33, qword_1EE0874C0);

    v34 = sub_1D21135FC();
    v35 = sub_1D2113A7C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v4;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v121[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1D20B75F0(*(v32 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId), *(v32 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8), v121);
      _os_log_impl(&dword_1D209F000, v34, v35, "Request URL for EK Guidance Forecast not found | requestId: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1D3896EB0](v38, -1, -1);
      v39 = v37;
      v4 = v36;
      MEMORY[0x1D3896EB0](v39, -1, -1);
    }

    return (*(v119 + 56))(v31, 1, 1, v4);
  }

  v106 = v4;
  v105 = v22;
  v41 = *(v22 + 32);
  v113 = v30;
  v114 = v21;
  v104 = v22 + 32;
  v103 = v41;
  v41(v30, v20, v21);
  if (*(v1 + 32))
  {
    v42 = 0x454355444552;
  }

  else
  {
    v42 = 0x5446494853;
  }

  if (*(v1 + 32))
  {
    v43 = 0xE600000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2115280;
  *(inited + 32) = 0x64692D64697267;
  *(inited + 40) = 0xE700000000000000;
  v45 = *(v1 + 24);
  *(inited + 48) = *(v1 + 16);
  *(inited + 56) = v45;
  *(inited + 64) = 1701080941;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v42;
  *(inited + 88) = v43;
  v46 = v1;
  sub_1D20A8580(v1 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, v10, &qword_1EC6C75A8, &qword_1D2115B80);
  if ((*(v115 + 48))(v10, 1, v11) == 1)
  {

    sub_1D20A862C(v10, &qword_1EC6C75A8, &qword_1D2115B80);
    v47 = v114;
    v48 = v118;
  }

  else
  {
    sub_1D20F9360(v10, v13);
    v49 = *v13;
    v50 = v13[1];

    inited = sub_1D20B7234(1, 3, 1, inited);
    *(inited + 16) = 3;
    *(inited + 96) = 0x2D7974696C697475;
    *(inited + 104) = 0xEA00000000006469;
    *(inited + 112) = v49;
    *(inited + 120) = v50;
    v52 = v13[2];
    v51 = v13[3];
    v53 = *(inited + 24);

    v48 = v118;
    if (v53 <= 7)
    {
      inited = sub_1D20B7234((v53 > 1), 4, 1, inited);
    }

    v47 = v114;
    *(inited + 16) = 4;
    *(inited + 128) = 0x692D666669726174;
    *(inited + 136) = 0xE900000000000064;
    *(inited + 144) = v52;
    *(inited + 152) = v51;
    v54 = sub_1D211330C();
    v56 = v55;
    v58 = *(inited + 16);
    v57 = *(inited + 24);
    if (v58 >= v57 >> 1)
    {
      inited = sub_1D20B7234((v57 > 1), v58 + 1, 1, inited);
    }

    sub_1D20F93C4(v13);
    *(inited + 16) = v58 + 1;
    v59 = (inited + 32 * v58);
    v59[4] = 0x656E6F7A656D6974;
    v59[5] = 0xE800000000000000;
    v59[6] = v54;
    v59[7] = v56;
  }

  v60 = v113;
  sub_1D2112F1C();
  v61 = v116;
  sub_1D2112F7C();
  v62 = v48(v61, 1, v47);
  v63 = v119;
  v64 = v46;
  if (v62 == 1)
  {

    sub_1D20A862C(v61, &qword_1EC6C7250, &qword_1D21149C0);
    v65 = v105;
    v66 = v117;
    (*(v105 + 56))(v117, 1, 1, v47);
LABEL_23:
    sub_1D20A862C(v66, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v73 = sub_1D211362C();
    __swift_project_value_buffer(v73, qword_1EE0874C0);

    v74 = sub_1D21135FC();
    v75 = sub_1D2113A7C();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = v60;
      v78 = swift_slowAlloc();
      v121[0] = v78;
      *v76 = 136315138;
      *(v76 + 4) = sub_1D20B75F0(*(v64 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId), *(v64 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8), v121);
      _os_log_impl(&dword_1D209F000, v74, v75, "Unable to create EK Guidance Forecast URL with required query parameters | requestId:%s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1D3896EB0](v78, -1, -1);
      MEMORY[0x1D3896EB0](v76, -1, -1);

      (*(v65 + 8))(v77, v114);
    }

    else
    {

      (*(v65 + 8))(v60, v114);
    }

    return (*(v63 + 56))(v120, 1, 1, v106);
  }

  v67 = v46;
  v68 = v119;
  v69 = v112;
  v103(v112, v61, v47);
  v70 = v117;
  sub_1D20F108C(inited, 1, 0, v117);
  v66 = v70;

  v65 = v105;
  v71 = *(v105 + 8);
  v72 = v69;
  v63 = v68;
  v64 = v67;
  v60 = v113;
  v71(v72, v47);
  if (v118(v70, 1, v47) == 1)
  {
    goto LABEL_23;
  }

  v118 = v71;
  v79 = v110;
  v103(v110, v66, v47);
  (*(v65 + 16))(v108, v79, v47);
  v80 = v111;
  sub_1D2112ACC();
  sub_1D2112A8C();
  if (sub_1D20CF7E0())
  {
    v81 = &unk_1F4D9E0E0;
  }

  else
  {
    v81 = &unk_1F4D9E120;
  }

  v82 = v47;
  v83 = sub_1D20BABD4(v81, &unk_1F4D9E080);
  v85 = v84;
  sub_1D20CF7E0();
  v86 = v109;
  sub_1D20D94F0(v83, v85, 49, 0xE100000000000000, v109);

  v87 = v106;
  if ((*(v63 + 48))(v86, 1, v106) == 1)
  {
    sub_1D20A862C(v86, &qword_1EC6C7508, &unk_1D2116AA0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v88 = sub_1D211362C();
    __swift_project_value_buffer(v88, qword_1EE0874C0);

    v89 = sub_1D21135FC();
    v90 = sub_1D2113A7C();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v121[0] = v92;
      *v91 = 136315138;
      *(v91 + 4) = sub_1D20B75F0(*(v64 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId), *(v64 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8), v121);
      _os_log_impl(&dword_1D209F000, v89, v90, "Unable to create signed EK forecast request | requestId: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x1D3896EB0](v92, -1, -1);
      v93 = v91;
      v87 = v106;
      MEMORY[0x1D3896EB0](v93, -1, -1);
    }

    (*(v63 + 8))(v80, v87);
    v94 = v114;
    v95 = v118;
    (v118)(v79, v114);
    v95(v113, v94);
    return (*(v63 + 56))(v120, 1, 1, v87);
  }

  else
  {
    v96 = v107;
    (*(v63 + 16))(v107, v86, v87);
    sub_1D2112AEC();
    v97 = v79;
    v98 = v87;
    v99 = *(v63 + 8);
    v99(v86, v98);
    v100 = v120;
    (*(v63 + 32))(v120, v96, v98);
    sub_1D2112B0C();
    v99(v80, v98);
    v101 = v118;
    (v118)(v97, v82);
    v101(v113, v82);
    return (*(v63 + 56))(v100, 0, 1, v98);
  }
}

uint64_t sub_1D20F7C28()
{

  sub_1D20A862C(v0 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidanceForecastRequestBuilder(uint64_t a1)
{
  result = qword_1EE083EC0;
  if (!qword_1EE083EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D20F7D0C(uint64_t a1)
{
  sub_1D20F7DC0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D20F7DC0(uint64_t a1)
{
  if (!qword_1EE084378[0])
  {
    type metadata accessor for HSRatePlan(255);
    v1 = sub_1D2113B0C();
    if (!v2)
    {
      atomic_store(v1, qword_1EE084378);
    }
  }
}

uint64_t sub_1D20F7E1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AA0, &qword_1D2118250);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F976C();
  sub_1D2113F3C();
  v8[15] = 0;
  sub_1D2113DBC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1D2113DBC();
  v8[13] = 2;
  sub_1D2113DCC();
  v8[12] = 3;
  sub_1D2113DCC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D20F7FDC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AA8, &qword_1D2118258);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F9670();
  sub_1D2113F3C();
  LOBYTE(v11) = 0;
  sub_1D2113DBC();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1D2113DBC();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
    sub_1D20C0650(&qword_1EC6C7538, MEMORY[0x1E69E63C0], MEMORY[0x1E69E6300]);
    sub_1D2113DEC();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A80, &qword_1D2118238);
    sub_1D20F97C0(&qword_1EC6C7AB0, sub_1D20F9838, MEMORY[0x1E69E6300]);
    sub_1D2113DAC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D20F8278(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A88, &qword_1D2118240);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F92B8();
  sub_1D2113F3C();
  v8 = v2[1];
  v10[0] = *v2;
  v10[1] = v8;
  v10[2] = v2[2];
  sub_1D20F9718();
  sub_1D2113DEC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D20F83CC(uint64_t a1)
{
  v2 = sub_1D20F976C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F8408(uint64_t a1)
{
  v2 = sub_1D20F976C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F8444@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D20F89D4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F84A0()
{
  v1 = 0x636E657571657266;
  v2 = 0x7365756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6C6F687365726874;
  }

  if (*v0)
  {
    v1 = 0x6D69547472617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D20F8520@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D20F8C4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D20F8548(uint64_t a1)
{
  v2 = sub_1D20F9670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F8584(uint64_t a1)
{
  v2 = sub_1D20F9670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F85C0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D20F8DC4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F861C(uint64_t a1)
{
  v2 = sub_1D20F92B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F8658(uint64_t a1)
{
  v2 = sub_1D20F92B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F8694@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D20F911C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F86F0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(v4, v2);
  sub_1D2113EEC();
  if (v1)
  {
    sub_1D20D9020();
  }

  return sub_1D2113F1C();
}

uint64_t sub_1D20F87A0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(a1, v4);
  if (!v3)
  {
    return sub_1D2113EEC();
  }

  sub_1D2113EEC();

  return sub_1D20D9020();
}

uint64_t sub_1D20F8844(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(v5, v3);
  sub_1D2113EEC();
  if (v2)
  {
    sub_1D20D9020();
  }

  return sub_1D2113F1C();
}

uint64_t sub_1D20F88F0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2113E2C() & 1) == 0)
  {
    return 0;
  }

  result = a1[2];
  if (result != a2[2] || a1[3] != a2[3])
  {
    result = sub_1D2113E2C();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v7 = a1[4];
  v8 = a2[4];
  v9 = *(v7 + 16);
  if (v9 != *(v8 + 16))
  {
    return 0;
  }

  if (v9)
  {
    v10 = v7 == v8;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
LABEL_20:
    v13 = a2[5];
    if (a1[5])
    {
      if (v13 && (sub_1D2109264() & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v13)
    {
      return 1;
    }

    return 0;
  }

  v11 = (v7 + 32);
  v12 = (v8 + 32);
  while (v9)
  {
    if (*v11 != *v12)
    {
      return 0;
    }

    ++v11;
    ++v12;
    if (!--v9)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20F89D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A98, &qword_1D2118248);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F976C();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v9 = sub_1D2113D4C();
  v22 = v10;
  v25 = 1;
  v20 = sub_1D2113D4C();
  v21 = v11;
  v24 = 2;
  sub_1D2113D5C();
  v13 = v12;
  v23 = 3;
  sub_1D2113D5C();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v22;
  *a2 = v9;
  a2[1] = v17;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v15;
  return result;
}

uint64_t sub_1D20F8C4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D2113E2C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D20F8DC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A78, &unk_1D2118228);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F9670();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v9 = sub_1D2113D4C();
  v21 = v10;
  LOBYTE(v23) = 1;
  v11 = sub_1D2113D4C();
  v20 = v12;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
  v22 = 2;
  sub_1D20C0650(&qword_1EE083DB8, MEMORY[0x1E69E63E8], MEMORY[0x1E69E6330]);
  sub_1D2113D7C();
  v18 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A80, &qword_1D2118238);
  v22 = 3;
  sub_1D20F97C0(&qword_1EE083DC0, sub_1D20F96C4, MEMORY[0x1E69E6330]);
  sub_1D2113D3C();
  (*(v6 + 8))(v8, v5);
  v13 = v23;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v15 = v21;
  *a2 = v9;
  a2[1] = v15;
  v16 = v20;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v13;
  return result;
}

uint64_t sub_1D20F911C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A50, &qword_1D2117E28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F92B8();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D20F930C();
  sub_1D2113D7C();
  (*(v6 + 8))(v8, v5);
  v9 = v16;
  v10 = v18;
  v13 = v17;
  v14 = v15;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v13;
  *a2 = v14;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 40) = v10;
  return result;
}

unint64_t sub_1D20F92B8()
{
  result = qword_1EE083EF8;
  if (!qword_1EE083EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083EF8);
  }

  return result;
}

unint64_t sub_1D20F930C()
{
  result = qword_1EE083F00;
  if (!qword_1EE083F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F00);
  }

  return result;
}

uint64_t sub_1D20F9360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HSRatePlan(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20F93C4(uint64_t a1)
{
  v2 = type metadata accessor for HSRatePlan(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D20F9464()
{
  result = qword_1EC6C7A58;
  if (!qword_1EC6C7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A58);
  }

  return result;
}

unint64_t sub_1D20F94BC()
{
  result = qword_1EC6C7A60;
  if (!qword_1EC6C7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A60);
  }

  return result;
}

unint64_t sub_1D20F9514()
{
  result = qword_1EC6C7A68;
  if (!qword_1EC6C7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A68);
  }

  return result;
}

unint64_t sub_1D20F956C()
{
  result = qword_1EC6C7A70;
  if (!qword_1EC6C7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A70);
  }

  return result;
}

unint64_t sub_1D20F95C4()
{
  result = qword_1EE083EE8;
  if (!qword_1EE083EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083EE8);
  }

  return result;
}

unint64_t sub_1D20F961C()
{
  result = qword_1EE083EF0;
  if (!qword_1EE083EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083EF0);
  }

  return result;
}

unint64_t sub_1D20F9670()
{
  result = qword_1EE083F18;
  if (!qword_1EE083F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F18);
  }

  return result;
}

unint64_t sub_1D20F96C4()
{
  result = qword_1EE083F20;
  if (!qword_1EE083F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F20);
  }

  return result;
}

unint64_t sub_1D20F9718()
{
  result = qword_1EC6C7A90;
  if (!qword_1EC6C7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A90);
  }

  return result;
}

unint64_t sub_1D20F976C()
{
  result = qword_1EE083F38;
  if (!qword_1EE083F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F38);
  }

  return result;
}

uint64_t sub_1D20F97C0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7A80, &qword_1D2118238);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D20F9838()
{
  result = qword_1EC6C7AB8;
  if (!qword_1EC6C7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7AB8);
  }

  return result;
}

unint64_t sub_1D20F98B0()
{
  result = qword_1EC6C7AC0;
  if (!qword_1EC6C7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7AC0);
  }

  return result;
}

unint64_t sub_1D20F9908()
{
  result = qword_1EC6C7AC8;
  if (!qword_1EC6C7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7AC8);
  }

  return result;
}

unint64_t sub_1D20F9960()
{
  result = qword_1EE083F28;
  if (!qword_1EE083F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F28);
  }

  return result;
}

unint64_t sub_1D20F99B8()
{
  result = qword_1EE083F30;
  if (!qword_1EE083F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F30);
  }

  return result;
}

unint64_t sub_1D20F9A10()
{
  result = qword_1EE083F08;
  if (!qword_1EE083F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F08);
  }

  return result;
}

unint64_t sub_1D20F9A68()
{
  result = qword_1EE083F10;
  if (!qword_1EE083F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F10);
  }

  return result;
}