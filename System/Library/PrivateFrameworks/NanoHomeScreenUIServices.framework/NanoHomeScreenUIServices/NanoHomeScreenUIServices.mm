__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25B17C2C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B17C2E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_25B17C324()
{
  v1 = *v0;
  sub_25B17D770();
  MEMORY[0x25F863200](v1);
  return sub_25B17D790();
}

uint64_t sub_25B17C398(uint64_t a1)
{
  v2 = *v1;
  sub_25B17D770();
  MEMORY[0x25F863200](v2);
  return sub_25B17D790();
}

void *sub_25B17C3F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25B17C418(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B17C438(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_25B17C488(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_25B17C4D8()
{
  result = qword_27FA3E970;
  if (!qword_27FA3E970)
  {
    type metadata accessor for CLKDeviceSizeClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA3E970);
  }

  return result;
}

void sub_25B17C5A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  v4 = objc_allocWithZone(MEMORY[0x277CBBAF8]);
  v5 = a1;
  v6 = [v4 initWithDevice:v5 identitySizeClass:4];
  [v6 setRoundingBehavior_];
  sub_25B17D42C(&unk_286C62DE8);
  sub_25B17D720();
  v8 = v7;

  *(a2 + 96) = v8;
  sub_25B17D42C(&unk_286C62E78);
  sub_25B17D720();
  v10 = v9;

  *(a2 + 88) = v10;
  sub_25B17D42C(&unk_286C62F08);
  sub_25B17D720();
  v12 = v11;

  *(a2 + 120) = v12;
  sub_25B17D42C(&unk_286C62F98);
  sub_25B17D720();
  v14 = v13;

  *(a2 + 128) = v14;
  [v5 screenBounds];
  *(a2 + 104) = CGRectGetWidth(v28) - (v14 + v14);
  *(a2 + 112) = v8 * 3.0 + v12 + v12;
  [v6 scaledValue_];
  *(a2 + 80) = v15;
  sub_25B17D42C(&unk_286C63018);
  sub_25B17D720();
  v17 = v16;

  *(a2 + 48) = v17 + -4.0;
  *(a2 + 56) = v17;
  *(a2 + 64) = v17 + -4.0;
  *(a2 + 72) = v17 + -4.0;
  sub_25B17D42C(&unk_286C630B8);
  sub_25B17D720();
  v19 = v18;

  *(a2 + 8) = v19;
  sub_25B17D42C(&unk_286C63148);
  sub_25B17D720();
  v21 = v20;

  *(a2 + 16) = v21;
  sub_25B17D42C(&unk_286C631D8);
  sub_25B17D720();
  v23 = v22;

  *(a2 + 24) = v23;
  sub_25B17D42C(&unk_286C63268);
  sub_25B17D720();
  v25 = v24;

  *(a2 + 32) = v25;
  sub_25B17D42C(&unk_286C632F8);
  sub_25B17D720();
  v27 = v26;

  *(a2 + 40) = v27;
}

uint64_t sub_25B17C828()
{
  v0 = sub_25B17D50C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E990, &qword_25B17DB08);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_27FA3E978 = result;
  return result;
}

void static WidgetMetricsConstants.shared(for:)(uint64_t a1@<X8>)
{
  if (qword_27FA3E950 != -1)
  {
    swift_once();
  }

  v2 = qword_27FA3E978;
  MEMORY[0x28223BE20]();
  os_unfair_lock_lock((v2 + 24));
  sub_25B17CAA8((v2 + 16), a1);
  os_unfair_lock_unlock((v2 + 24));
}

__n128 sub_25B17C93C@<Q0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 sizeClass];
  v7 = *a2;
  if (*(*a2 + 16) && (v8 = sub_25B17CBB0(v6), (v9 & 1) != 0))
  {
    v10 = *(v7 + 56) + 136 * v8;
    v29 = *v10;
    v11 = *(v10 + 48);
    v12 = *(v10 + 64);
    v13 = *(v10 + 32);
    v30 = *(v10 + 16);
    v31 = v13;
    v32 = v11;
    v33 = v12;
    v14 = *(v10 + 80);
    v15 = *(v10 + 96);
    v16 = *(v10 + 112);
    v37 = *(v10 + 128);
    v35 = v15;
    v36 = v16;
    v34 = v14;
    v17 = *(v10 + 112);
    *(a3 + 96) = *(v10 + 96);
    *(a3 + 112) = v17;
    *(a3 + 128) = *(v10 + 128);
    v18 = *(v10 + 48);
    *(a3 + 32) = *(v10 + 32);
    *(a3 + 48) = v18;
    v19 = *(v10 + 80);
    *(a3 + 64) = *(v10 + 64);
    *(a3 + 80) = v19;
    v20 = *(v10 + 16);
    *a3 = *v10;
    *(a3 + 16) = v20;
    sub_25B17CC1C(&v29, v28);
  }

  else
  {
    v22 = a1;
    sub_25B17C5A0(v22, &v29);
    v23 = [v22 sizeClass];
    sub_25B17CC1C(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = *a2;
    sub_25B17D04C(&v29, v23, isUniquelyReferenced_nonNull_native);
    *a2 = v28[0];
    v25 = v36;
    *(a3 + 96) = v35;
    *(a3 + 112) = v25;
    *(a3 + 128) = v37;
    v26 = v32;
    *(a3 + 32) = v31;
    *(a3 + 48) = v26;
    v27 = v34;
    *(a3 + 64) = v33;
    *(a3 + 80) = v27;
    result = v30;
    *a3 = v29;
    *(a3 + 16) = result;
  }

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

uint64_t sub_25B17CAF8(uint64_t *a1, int a2)
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

uint64_t sub_25B17CB40(uint64_t result, int a2, int a3)
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

unint64_t sub_25B17CBB0(uint64_t a1)
{
  sub_25B17D770();
  MEMORY[0x25F863200](a1);
  v2 = sub_25B17D790();

  return sub_25B17CC54(a1, v2);
}

unint64_t sub_25B17CC54(uint64_t a1, uint64_t a2)
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

uint64_t sub_25B17CCC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E980, &qword_25B17DAF8);
  result = sub_25B17D740();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v8 << 6);
      if (v4)
      {
LABEL_10:
        v19 = *(*(v5 + 48) + 8 * v18);
        v20 = *(v5 + 56) + 136 * v18;
        v52 = *(v20 + 80);
        v53 = *(v20 + 96);
        v54 = *(v20 + 112);
        v55 = *(v20 + 128);
        v48 = *(v20 + 16);
        v49 = *(v20 + 32);
        v50 = *(v20 + 48);
        v51 = *(v20 + 64);
        v47 = *v20;
      }

      else
      {
LABEL_16:
        v19 = *(*(v5 + 48) + 8 * v18);
        v23 = *(v5 + 56) + 136 * v18;
        v38 = *v23;
        v24 = *(v23 + 64);
        v26 = *(v23 + 16);
        v25 = *(v23 + 32);
        v41 = *(v23 + 48);
        v42 = v24;
        v39 = v26;
        v40 = v25;
        v28 = *(v23 + 96);
        v27 = *(v23 + 112);
        v29 = *(v23 + 80);
        v46 = *(v23 + 128);
        v44 = v28;
        v45 = v27;
        v43 = v29;
        sub_25B17CC1C(&v38, &v47);
        v53 = v44;
        v54 = v45;
        v55 = v46;
        v49 = v40;
        v50 = v41;
        v51 = v42;
        v52 = v43;
        v47 = v38;
        v48 = v39;
      }

      sub_25B17D770();
      MEMORY[0x25F863200](v19);
      result = sub_25B17D790();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      v16 = *(v7 + 56) + 136 * v15;
      *(v16 + 80) = v52;
      *(v16 + 96) = v53;
      *(v16 + 112) = v54;
      *(v16 + 128) = v55;
      *(v16 + 16) = v48;
      *(v16 + 32) = v49;
      *(v16 + 48) = v50;
      *(v16 + 64) = v51;
      *v16 = v47;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v12 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_25B17D04C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25B17CBB0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25B17CCC0(v14, a3 & 1);
      result = sub_25B17CBB0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        type metadata accessor for CLKDeviceSizeClass(0);
        result = sub_25B17D760();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25B17D1CC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v21 = v19[7] + 136 * result;
    *v21 = *a1;
    v22 = *(a1 + 16);
    v23 = *(a1 + 32);
    v24 = *(a1 + 64);
    *(v21 + 48) = *(a1 + 48);
    *(v21 + 64) = v24;
    *(v21 + 16) = v22;
    *(v21 + 32) = v23;
    v25 = *(a1 + 80);
    v26 = *(a1 + 96);
    v27 = *(a1 + 112);
    *(v21 + 128) = *(a1 + 128);
    *(v21 + 96) = v26;
    *(v21 + 112) = v27;
    *(v21 + 80) = v25;
    v28 = v19[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v19[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 136 * result;

  return sub_25B17D3AC(a1, v20);
}

void *sub_25B17D1CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E980, &qword_25B17DAF8);
  v2 = *v0;
  v3 = sub_25B17D730();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_25B17CC1C(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = *(v2 + 56) + 136 * v16;
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v21 = *(v18 + 64);
      v36 = *(v18 + 48);
      v37 = v21;
      v23 = *(v18 + 96);
      v22 = *(v18 + 112);
      v24 = *(v18 + 80);
      v41 = *(v18 + 128);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v33 = *v18;
      v34 = v20;
      v35 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v25 = *(v4 + 56) + 136 * v16;
      *v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v37;
      *(v25 + 48) = v36;
      *(v25 + 64) = v28;
      *(v25 + 16) = v26;
      *(v25 + 32) = v27;
      v29 = v38;
      v30 = v39;
      v31 = v40;
      *(v25 + 128) = v41;
      *(v25 + 96) = v30;
      *(v25 + 112) = v31;
      *(v25 + 80) = v29;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25B17D42C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E988, &qword_25B17DB00);
    v3 = sub_25B17D750();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25B17CBB0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_25B17D50C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E980, &qword_25B17DAF8);
  v3 = sub_25B17D750();
  v4 = *(a1 + 144);
  *&v28[96] = *(a1 + 128);
  *&v28[112] = v4;
  *&v28[128] = *(a1 + 160);
  v5 = *(a1 + 48);
  *v28 = *(a1 + 32);
  *&v28[16] = v5;
  v6 = *(a1 + 80);
  *&v28[32] = *(a1 + 64);
  *&v28[48] = v6;
  v7 = *(a1 + 112);
  *&v28[64] = *(a1 + 96);
  *&v28[80] = v7;
  v8 = *v28;
  result = sub_25B17CBB0(*v28);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_25B17D6B0(v28, v27);
    return v3;
  }

  v11 = (a1 + 176);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v8;
    v12 = v3[7] + 136 * result;
    *v12 = *&v28[8];
    v13 = *&v28[24];
    v14 = *&v28[40];
    v15 = *&v28[72];
    *(v12 + 48) = *&v28[56];
    *(v12 + 64) = v15;
    *(v12 + 16) = v13;
    *(v12 + 32) = v14;
    v16 = *&v28[88];
    v17 = *&v28[104];
    v18 = *&v28[120];
    *(v12 + 128) = *&v28[136];
    *(v12 + 96) = v17;
    *(v12 + 112) = v18;
    *(v12 + 80) = v16;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v3[2] = v21;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_25B17D6B0(v28, v27);
    v22 = v11[7];
    *&v28[96] = v11[6];
    *&v28[112] = v22;
    *&v28[128] = v11[8];
    v23 = v11[1];
    *v28 = *v11;
    *&v28[16] = v23;
    v24 = v11[3];
    *&v28[32] = v11[2];
    *&v28[48] = v24;
    v25 = v11[5];
    *&v28[64] = v11[4];
    *&v28[80] = v25;
    v8 = *v28;
    result = sub_25B17CBB0(*v28);
    v11 += 9;
    if (v26)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B17D6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA3E998, &qword_25B17DB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}