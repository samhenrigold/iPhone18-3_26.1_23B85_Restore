id NewsSupplementalContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewsSupplementalContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1AE3C64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

id sub_1C1AE3CD0@<X0>(void *a1@<X2>, char *a2@<X8>)
{
  result = *(v2 + *a1);
  if (result)
  {
    result = [result BOOLValue];
    if (result)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

id sub_1C1AE3D70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for NewsSupplementalContext());
  result = NewsSupplementalContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C1AE3DE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C1AE3EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C1AA7C14(a3, a4);
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
      sub_1C1AD917C(v18, a5 & 1);
      v13 = sub_1C1AA7C14(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C1ADA50C();
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

unint64_t sub_1C1AE4068(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C1AD8AE8(a2);
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
      sub_1C1AD943C(v14, a3 & 1);
      result = sub_1C1AD8AE8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1C1ADA820();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_1C1AE41E0(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v5 = v4;
  v29 = a2;
  v9 = sub_1C1B944A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1C1AD8BA0(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1C1ADA990();
      goto LABEL_9;
    }

    sub_1C1AD9978(v18, a4 & 1);
    v21 = sub_1C1AD8BA0(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    sub_1C1B958E8();
    __break(1u);
    return;
  }

LABEL_9:
  v23 = v29;
  v24 = *v5;
  if (v19)
  {
    v25 = v24[7] + 16 * v15;
    v26 = *v25;
    v27 = *(v25 + 8);
    *v25 = a1;
    *(v25 + 8) = v23 & 1;

    sub_1C1AD4AEC(v26, v27);
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    sub_1C1AE4624(v15, v12, a1, v23 & 1, v24);
  }
}

uint64_t sub_1C1AE43F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C1AA7C14(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1C1AA7C14(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

_OWORD *sub_1C1AE45B8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C1AA7E98(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1C1AE4624(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1C1B944A8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1C1AE46EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C1AB9CA0;

  return sub_1C1AE3224();
}

unint64_t sub_1C1AE4798()
{
  result = qword_1EBF08570;
  if (!qword_1EBF08570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08570);
  }

  return result;
}

unint64_t sub_1C1AE47EC()
{
  result = qword_1EDE6A760;
  if (!qword_1EDE6A760)
  {
    sub_1C1AC3404(&unk_1EBF08578, &qword_1C1B9AFB0);
    sub_1C1AC34C8(&qword_1EDE6BB98, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A760);
  }

  return result;
}

unint64_t sub_1C1AE4898()
{
  result = qword_1EDE6C390;
  if (!qword_1EDE6C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C390);
  }

  return result;
}

unint64_t sub_1C1AE48EC()
{
  result = qword_1EBF08588;
  if (!qword_1EBF08588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08588);
  }

  return result;
}

uint64_t sub_1C1AE4940()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C1AB9A98;

  return sub_1C1AE3224();
}

uint64_t sub_1C1AE49EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C1AE4A00(result, a2);
  }

  return result;
}

uint64_t sub_1C1AE4A00(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1C1AE4A54()
{
  result = qword_1EDE6A768;
  if (!qword_1EDE6A768)
  {
    sub_1C1AC3404(&unk_1EBF08578, &qword_1C1B9AFB0);
    sub_1C1AC34C8(&unk_1EDE6BBA0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A768);
  }

  return result;
}

unint64_t sub_1C1AE4B00()
{
  result = qword_1EBF08598;
  if (!qword_1EBF08598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08598);
  }

  return result;
}

unint64_t sub_1C1AE4B54()
{
  result = qword_1EDE6B850;
  if (!qword_1EDE6B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B850);
  }

  return result;
}

unint64_t sub_1C1AE4BAC()
{
  result = qword_1EBF085A8;
  if (!qword_1EBF085A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085A8);
  }

  return result;
}

id sub_1C1AE4C00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t sub_1C1AE4C64@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

id sub_1C1AE4CB8@<X0>(void *a1@<X0>, void *a2@<X3>, char *a3@<X8>)
{
  result = *(*a1 + *a2);
  if (result)
  {
    result = [result BOOLValue];
    if (result)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for NewsSupplementalContext.AppleNewsFormatComponentMetadataKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewsSupplementalContext.AppleNewsFormatComponentMetadataKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NewsSupplementalContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC1)
  {
    goto LABEL_17;
  }

  if (a2 + 63 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 63) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 63;
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

      return (*a1 | (v4 << 8)) - 63;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 63;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x40;
  v8 = v6 - 64;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsSupplementalContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 63) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC1)
  {
    v4 = 0;
  }

  if (a2 > 0xC0)
  {
    v5 = ((a2 - 193) >> 8) + 1;
    *result = a2 + 63;
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
    *result = a2 + 63;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AE7B24()
{
  result = qword_1EBF085B8;
  if (!qword_1EBF085B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085B8);
  }

  return result;
}

unint64_t sub_1C1AE7B7C()
{
  result = qword_1EBF085C0;
  if (!qword_1EBF085C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085C0);
  }

  return result;
}

unint64_t sub_1C1AE7BD4()
{
  result = qword_1EBF085C8;
  if (!qword_1EBF085C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085C8);
  }

  return result;
}

unint64_t sub_1C1AE7C28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B958A8();

  if (v2 >= 0x40)
  {
    return 64;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1AE7C7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1AB9A98;

  return sub_1C1AB96F0(a1, v4);
}

uint64_t sub_1C1AE7D3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = NewsRequestedAdType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == NewsRequestedAdType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1AE7DC4()
{
  v1 = *v0;
  sub_1C1B95958();
  NewsRequestedAdType.rawValue.getter(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AE7E28(uint64_t a1)
{
  NewsRequestedAdType.rawValue.getter(*v1);
  sub_1C1B94DE8();
}

uint64_t sub_1C1AE7E7C(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  NewsRequestedAdType.rawValue.getter(v2);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AE7EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C1AE7F10@<X0>(uint64_t *a1@<X8>)
{
  result = NewsRequestedAdType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C1AE7FF0()
{
  result = qword_1EBF085D8;
  if (!qword_1EBF085D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085D8);
  }

  return result;
}

unint64_t sub_1C1AE8054()
{
  result = qword_1EBF085E0;
  if (!qword_1EBF085E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF085E0);
  }

  return result;
}

uint64_t sub_1C1AE80BC(uint64_t a1)
{
  v2 = sub_1C1AE904C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE80F8(uint64_t a1)
{
  v2 = sub_1C1AE904C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE8134()
{
  v1 = *v0;
  v2 = 7959906;
  v3 = 0x6E776F6E6B6E75;
  if (v1 != 6)
  {
    v3 = 2003134838;
  }

  v4 = 0x6269726373627573;
  if (v1 != 4)
  {
    v4 = 0x6572467449797274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E7261656CLL;
  if (v1 != 2)
  {
    v5 = 0x65726F4D64616572;
  }

  if (*v0)
  {
    v2 = 0x64616F6C6E776F64;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1AE8220@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1AEAC6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1AE8248(uint64_t a1)
{
  v2 = sub_1C1AE8DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE8284(uint64_t a1)
{
  v2 = sub_1C1AE8DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE82C0(uint64_t a1)
{
  v2 = sub_1C1AE8FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE82FC(uint64_t a1)
{
  v2 = sub_1C1AE8FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE8338(uint64_t a1)
{
  v2 = sub_1C1AE8FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE8374(uint64_t a1)
{
  v2 = sub_1C1AE8FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE83B0(uint64_t a1)
{
  v2 = sub_1C1AE8F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE83EC(uint64_t a1)
{
  v2 = sub_1C1AE8F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE8428(uint64_t a1)
{
  v2 = sub_1C1AE8EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE8464(uint64_t a1)
{
  v2 = sub_1C1AE8EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE84A0(uint64_t a1)
{
  v2 = sub_1C1AE8EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE84DC(uint64_t a1)
{
  v2 = sub_1C1AE8EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE8518(uint64_t a1)
{
  v2 = sub_1C1AE8E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE8554(uint64_t a1)
{
  v2 = sub_1C1AE8E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AE8590(uint64_t a1)
{
  v2 = sub_1C1AE8E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE85CC(uint64_t a1)
{
  v2 = sub_1C1AE8E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientLayoutButton.ButtonType.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF085E8, &qword_1C1B9B3F0);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v33 - v4;
  v5 = sub_1C1AC1F08(&qword_1EBF085F0, &qword_1C1B9B3F8);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v33 - v6;
  v7 = sub_1C1AC1F08(&qword_1EBF085F8, &qword_1C1B9B400);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v33 - v8;
  v9 = sub_1C1AC1F08(&qword_1EBF08600, &qword_1C1B9B408);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v33 - v10;
  v11 = sub_1C1AC1F08(&qword_1EBF08608, &qword_1C1B9B410);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v33 - v12;
  v13 = sub_1C1AC1F08(&qword_1EBF08610, &qword_1C1B9B418);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v33 - v14;
  v35 = sub_1C1AC1F08(&qword_1EBF08618, &qword_1C1B9B420);
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v33 - v15;
  v17 = sub_1C1AC1F08(&qword_1EBF08620, &qword_1C1B9B428);
  v33 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v54 = sub_1C1AC1F08(&qword_1EBF08628, &qword_1C1B9B430);
  v20 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v21 = *v1;
  v22 = a1[3];
  v23 = a1;
  v25 = &v33 - v24;
  sub_1C1AAABE0(v23, v22);
  sub_1C1AE8DAC();
  sub_1C1B95A18();
  v26 = (v20 + 8);
  if (v21 > 3)
  {
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v61 = 6;
        sub_1C1AE8E54();
        v28 = v48;
        v27 = v54;
        sub_1C1B95728();
        v30 = v49;
        v29 = v50;
      }

      else
      {
        v62 = 7;
        sub_1C1AE8E00();
        v28 = v51;
        v27 = v54;
        sub_1C1B95728();
        v30 = v52;
        v29 = v53;
      }
    }

    else if (v21 == 4)
    {
      v59 = 4;
      sub_1C1AE8EFC();
      v28 = v42;
      v27 = v54;
      sub_1C1B95728();
      v30 = v43;
      v29 = v44;
    }

    else
    {
      v60 = 5;
      sub_1C1AE8EA8();
      v28 = v45;
      v27 = v54;
      sub_1C1B95728();
      v30 = v46;
      v29 = v47;
    }

    goto LABEL_16;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v57 = 2;
      sub_1C1AE8FA4();
      v28 = v36;
      v27 = v54;
      sub_1C1B95728();
      v30 = v37;
      v29 = v38;
    }

    else
    {
      v58 = 3;
      sub_1C1AE8F50();
      v28 = v39;
      v27 = v54;
      sub_1C1B95728();
      v30 = v40;
      v29 = v41;
    }

LABEL_16:
    (*(v30 + 8))(v28, v29);
    return (*v26)(v25, v27);
  }

  if (v21)
  {
    v56 = 1;
    sub_1C1AE8FF8();
    v31 = v54;
    sub_1C1B95728();
    (*(v34 + 8))(v16, v35);
    return (*v26)(v25, v31);
  }

  v55 = 0;
  sub_1C1AE904C();
  v27 = v54;
  sub_1C1B95728();
  (*(v33 + 8))(v19, v17);
  return (*v26)(v25, v27);
}

unint64_t sub_1C1AE8DAC()
{
  result = qword_1EBF08630;
  if (!qword_1EBF08630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08630);
  }

  return result;
}

unint64_t sub_1C1AE8E00()
{
  result = qword_1EBF08638;
  if (!qword_1EBF08638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08638);
  }

  return result;
}

unint64_t sub_1C1AE8E54()
{
  result = qword_1EBF08640;
  if (!qword_1EBF08640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08640);
  }

  return result;
}

unint64_t sub_1C1AE8EA8()
{
  result = qword_1EBF08648;
  if (!qword_1EBF08648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08648);
  }

  return result;
}

unint64_t sub_1C1AE8EFC()
{
  result = qword_1EBF08650;
  if (!qword_1EBF08650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08650);
  }

  return result;
}

unint64_t sub_1C1AE8F50()
{
  result = qword_1EBF08658;
  if (!qword_1EBF08658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08658);
  }

  return result;
}

unint64_t sub_1C1AE8FA4()
{
  result = qword_1EBF08660;
  if (!qword_1EBF08660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08660);
  }

  return result;
}

unint64_t sub_1C1AE8FF8()
{
  result = qword_1EBF08668;
  if (!qword_1EBF08668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08668);
  }

  return result;
}

unint64_t sub_1C1AE904C()
{
  result = qword_1EBF08670;
  if (!qword_1EBF08670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08670);
  }

  return result;
}

uint64_t ClientLayoutButton.ButtonType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t ClientLayoutButton.ButtonType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v83 = a2;
  v3 = sub_1C1AC1F08(&qword_1EBF08678, &qword_1C1B9B438);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v57 - v4;
  v5 = sub_1C1AC1F08(&qword_1EBF08680, &qword_1C1B9B440);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v57 - v6;
  v7 = sub_1C1AC1F08(&qword_1EBF08688, &qword_1C1B9B448);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v57 - v8;
  v9 = sub_1C1AC1F08(&qword_1EBF08690, &qword_1C1B9B450);
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v57 - v11;
  v68 = sub_1C1AC1F08(&qword_1EBF08698, &qword_1C1B9B458);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v79 = &v57 - v12;
  v66 = sub_1C1AC1F08(&qword_1EBF086A0, &qword_1C1B9B460);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v77 = &v57 - v13;
  v64 = sub_1C1AC1F08(&qword_1EBF086A8, &qword_1C1B9B468);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v15 = &v57 - v14;
  v16 = sub_1C1AC1F08(&qword_1EBF086B0, &qword_1C1B9B470);
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = sub_1C1AC1F08(&qword_1EBF086B8, &unk_1C1B9B478);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - v21;
  v23 = a1[3];
  v85 = a1;
  sub_1C1AAABE0(a1, v23);
  sub_1C1AE8DAC();
  v24 = v84;
  sub_1C1B95A08();
  if (!v24)
  {
    v58 = v18;
    v57 = v16;
    v59 = v15;
    v26 = v79;
    v25 = v80;
    v28 = v81;
    v27 = v82;
    v84 = v20;
    v29 = v83;
    v61 = v19;
    v60 = v22;
    v30 = sub_1C1B95718();
    v31 = (2 * *(v30 + 16)) | 1;
    v86 = v30;
    v87 = v30 + 32;
    v88 = 0;
    v89 = v31;
    v32 = sub_1C1ACC710();
    if (v32 != 8 && v88 == v89 >> 1)
    {
      v90 = v32;
      if (v32 > 3u)
      {
        v43 = v61;
        v44 = v60;
        if (v32 > 5u)
        {
          v52 = v84;
          if (v32 == 6)
          {
            v91 = 6;
            sub_1C1AE8E54();
            sub_1C1B95608();
            (*(v73 + 8))(v27, v74);
          }

          else
          {
            v91 = 7;
            sub_1C1AE8E00();
            v56 = v78;
            sub_1C1B95608();
            (*(v75 + 8))(v56, v76);
          }

          (*(v52 + 8))(v44, v43);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        v45 = v84;
        if (v32 == 4)
        {
          v91 = 4;
          sub_1C1AE8EFC();
          sub_1C1B95608();
          v46 = v69;
          v47 = v70;
        }

        else
        {
          v91 = 5;
          sub_1C1AE8EA8();
          v25 = v28;
          sub_1C1B95608();
          v47 = v71;
          v46 = v72;
        }

        (*(v47 + 8))(v25, v46);
        (*(v45 + 8))(v44, v43);
      }

      else
      {
        if (v32 > 1u)
        {
          v48 = v84;
          if (v32 == 2)
          {
            v91 = 2;
            sub_1C1AE8FA4();
            v49 = v77;
            v50 = v61;
            v51 = v60;
            sub_1C1B95608();
            (*(v65 + 8))(v49, v66);
          }

          else
          {
            v91 = 3;
            sub_1C1AE8F50();
            v50 = v61;
            v51 = v60;
            sub_1C1B95608();
            (*(v67 + 8))(v26, v68);
          }

          (*(v48 + 8))(v51, v50);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        if (v32)
        {
          v91 = 1;
          sub_1C1AE8FF8();
          v53 = v59;
          v54 = v61;
          v55 = v60;
          sub_1C1B95608();
          (*(v63 + 8))(v53, v64);
          (*(v84 + 8))(v55, v54);
        }

        else
        {
          v91 = 0;
          sub_1C1AE904C();
          v34 = v58;
          v35 = v61;
          v36 = v60;
          sub_1C1B95608();
          (*(v62 + 8))(v34, v57);
          (*(v84 + 8))(v36, v35);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v33 = v90;
      return sub_1C1AA86F8(v85);
    }

    v37 = sub_1C1B954C8();
    swift_allocError();
    v39 = v38;
    sub_1C1AC1F08(&qword_1EBF07CC0, &qword_1C1B99190);
    *v39 = &type metadata for ClientLayoutButton.ButtonType;
    v40 = v61;
    v41 = v60;
    sub_1C1B95618();
    sub_1C1B954B8();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v84 + 8))(v41, v40);
    swift_unknownObjectRelease();
  }

  return sub_1C1AA86F8(v85);
}

uint64_t ClientLayoutButton.text.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ClientLayoutButton.accessibilityText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

unint64_t sub_1C1AE9CC4()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C1AE9D14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1AEAF0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1AE9D3C(uint64_t a1)
{
  v2 = sub_1C1AE9F88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AE9D78(uint64_t a1)
{
  v2 = sub_1C1AE9F88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientLayoutButton.encode(to:)(void *a1)
{
  v4 = sub_1C1AC1F08(&qword_1EBF086C0, &qword_1C1B9B488);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12[2] = *(v1 + 2);
  v12[3] = v9;
  v10 = *(v1 + 3);
  v12[0] = *(v1 + 4);
  v12[1] = v10;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AE9F88();
  sub_1C1B95A18();
  v16 = v8;
  v15 = 0;
  sub_1C1AE9FDC();
  sub_1C1B95808();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_1C1B95748();
  v13 = 2;
  sub_1C1B95748();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C1AE9F88()
{
  result = qword_1EBF086C8;
  if (!qword_1EBF086C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086C8);
  }

  return result;
}

unint64_t sub_1C1AE9FDC()
{
  result = qword_1EBF086D0;
  if (!qword_1EBF086D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086D0);
  }

  return result;
}

uint64_t ClientLayoutButton.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF086D8, &qword_1C1B9B490);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AE9F88();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v23 = 0;
  sub_1C1AEA274();
  sub_1C1B956F8();
  v9 = v24;
  v22 = 1;
  v10 = sub_1C1B95638();
  v12 = v11;
  v20 = v10;
  v21 = 2;
  v13 = sub_1C1B95638();
  v15 = v14;
  v16 = *(v6 + 8);
  v19 = v13;
  v16(v8, v5);
  *a2 = v9;
  v17 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v12;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;

  sub_1C1AA86F8(a1);
}

unint64_t sub_1C1AEA274()
{
  result = qword_1EBF086E0;
  if (!qword_1EBF086E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086E0);
  }

  return result;
}

unint64_t sub_1C1AEA2CC()
{
  result = qword_1EBF086E8;
  if (!qword_1EBF086E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086E8);
  }

  return result;
}

__n128 sub_1C1AEA350(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1AEA364(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1C1AEA3C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1C1AEA4E0()
{
  result = qword_1EBF086F0;
  if (!qword_1EBF086F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086F0);
  }

  return result;
}

unint64_t sub_1C1AEA538()
{
  result = qword_1EBF086F8;
  if (!qword_1EBF086F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF086F8);
  }

  return result;
}

unint64_t sub_1C1AEA590()
{
  result = qword_1EBF08700;
  if (!qword_1EBF08700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08700);
  }

  return result;
}

unint64_t sub_1C1AEA5E8()
{
  result = qword_1EBF08708;
  if (!qword_1EBF08708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08708);
  }

  return result;
}

unint64_t sub_1C1AEA640()
{
  result = qword_1EBF08710;
  if (!qword_1EBF08710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08710);
  }

  return result;
}

unint64_t sub_1C1AEA698()
{
  result = qword_1EBF08718;
  if (!qword_1EBF08718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08718);
  }

  return result;
}

unint64_t sub_1C1AEA6F0()
{
  result = qword_1EBF08720;
  if (!qword_1EBF08720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08720);
  }

  return result;
}

unint64_t sub_1C1AEA748()
{
  result = qword_1EBF08728;
  if (!qword_1EBF08728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08728);
  }

  return result;
}

unint64_t sub_1C1AEA7A0()
{
  result = qword_1EBF08730;
  if (!qword_1EBF08730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08730);
  }

  return result;
}

unint64_t sub_1C1AEA7F8()
{
  result = qword_1EBF08738;
  if (!qword_1EBF08738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08738);
  }

  return result;
}

unint64_t sub_1C1AEA850()
{
  result = qword_1EBF08740;
  if (!qword_1EBF08740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08740);
  }

  return result;
}

unint64_t sub_1C1AEA8A8()
{
  result = qword_1EBF08748;
  if (!qword_1EBF08748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08748);
  }

  return result;
}

unint64_t sub_1C1AEA900()
{
  result = qword_1EBF08750;
  if (!qword_1EBF08750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08750);
  }

  return result;
}

unint64_t sub_1C1AEA958()
{
  result = qword_1EBF08758;
  if (!qword_1EBF08758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08758);
  }

  return result;
}

unint64_t sub_1C1AEA9B0()
{
  result = qword_1EBF08760;
  if (!qword_1EBF08760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08760);
  }

  return result;
}

unint64_t sub_1C1AEAA08()
{
  result = qword_1EBF08768;
  if (!qword_1EBF08768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08768);
  }

  return result;
}

unint64_t sub_1C1AEAA60()
{
  result = qword_1EBF08770;
  if (!qword_1EBF08770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08770);
  }

  return result;
}

unint64_t sub_1C1AEAAB8()
{
  result = qword_1EBF08778;
  if (!qword_1EBF08778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08778);
  }

  return result;
}

unint64_t sub_1C1AEAB10()
{
  result = qword_1EBF08780;
  if (!qword_1EBF08780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08780);
  }

  return result;
}

unint64_t sub_1C1AEAB68()
{
  result = qword_1EBF08788;
  if (!qword_1EBF08788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08788);
  }

  return result;
}

unint64_t sub_1C1AEABC0()
{
  result = qword_1EBF08790;
  if (!qword_1EBF08790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08790);
  }

  return result;
}

unint64_t sub_1C1AEAC18()
{
  result = qword_1EBF08798;
  if (!qword_1EBF08798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08798);
  }

  return result;
}

uint64_t sub_1C1AEAC6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7959906 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7261656CLL && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F4D64616572 && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xE900000000000065 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572467449797274 && a2 == 0xE900000000000065 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 2003134838 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1C1AEAF0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BA8000 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL sub_1C1AEB034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 8;
    v6 = sub_1C1B94978();
  }

  while (v6 != sub_1C1B94978());
  return v4 != 0;
}

uint64_t FrequencyCapEventManager.__allocating_init(using:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  sub_1C1AC0580(a1, v2 + 16);
  return v2;
}

uint64_t FrequencyCapEventManager.init(using:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  sub_1C1AC0580(a1, v1 + 16);
  return v1;
}

void sub_1C1AEB108()
{
  v1 = v0;
  if (v0[7])
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C1B94BE8();
    sub_1C1AB4454(v2, qword_1EDE6D058);

    oslog = sub_1C1B94BC8();
    v3 = sub_1C1B95108();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      type metadata accessor for FrequencyCapEventManager();

      v6 = sub_1C1B94D98();
      v8 = sub_1C1AC7650(v6, v7, &v15);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1C1AA2000, oslog, v3, "[%s] Journey Placed and Interacted Event Listeners already launched, skipping", v4, 0xCu);
      sub_1C1AA86F8(v5);
      MEMORY[0x1C6908230](v5, -1, -1);
      MEMORY[0x1C6908230](v4, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v9 = *v0;
    *(v1 + 56) = 1;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;

    _s15PromotedContent21EventRegistrarHandlerC010addJourneyC8Listener3for7closureSiSo15APJourneyMetricV_ySo16APMetricProtocol_pctFZ_0(1408, sub_1C1AEB3EC, v11);

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v9;

    _s15PromotedContent21EventRegistrarHandlerC010addJourneyC8Listener3for7closureSiSo15APJourneyMetricV_ySo16APMetricProtocol_pctFZ_0(1403, sub_1C1AEC8A0, v13);
  }
}

id sub_1C1AEB41C(void *a1, void *a2)
{
  v3 = v2;
  result = [a1 handle];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = sub_1C1B94D88();
  v10 = v9;

  v11 = sub_1C1AEBA6C(v8, v10);

  if (!v11)
  {
    return result;
  }

  v12 = *(v11 + 96);
  if (v12)
  {
    v13 = *(v11 + 88);

    v14 = [a1 properties];
    if (v14)
    {
      v15 = v14;
      sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
      v16 = sub_1C1B94CB8();

      if (*(v16 + 16))
      {
        v17 = sub_1C1AA7C14(1701869940, 0xE400000000000000);
        if (v18)
        {
          v19 = *(*(v16 + 56) + 8 * v17);
          swift_unknownObjectRetain();

          v38[0] = v19;
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_22;
          }

          v20 = sub_1C1B94968();
          if (v21)
          {
            goto LABEL_22;
          }

          v33 = v20;
          v22 = sub_1C1B94978();
          if (v22 == sub_1C1B94978())
          {
            goto LABEL_22;
          }

          swift_beginAccess();
          if ((*(v11 + 130) & 1) == 0)
          {
            *(v11 + 130) = 1;
            v23 = a2[4];
            v32 = a2[3];
            sub_1C1AAABE0(a2, v32);
            v39 = type metadata accessor for NativeAdTrackingInstance();
            v40 = &protocol witness table for NativeAdTrackingInstance;
            v38[0] = v11;
            v36 = 0;
            v37 = 1;
            v24 = swift_allocObject();
            swift_weakInit();
            v25 = swift_allocObject();
            v25[2] = v24;
            v25[3] = v3;
            v25[4] = v13;
            v25[5] = v12;
            v31 = *(v23 + 8);

            v31(v38, &v36, sub_1C1AEC9C0, v25, v32, v23);

            sub_1C1AA86F8(v38);
          }

          swift_beginAccess();
          if ((*(v11 + 129) & 1) != 0 || !sub_1C1AEB034(v33, &unk_1F414D148))
          {
LABEL_22:
          }

          else
          {
            *(v11 + 129) = 1;
            v26 = a2[3];
            v27 = a2[4];
            sub_1C1AAABE0(a2, v26);
            v39 = type metadata accessor for NativeAdTrackingInstance();
            v40 = &protocol witness table for NativeAdTrackingInstance;
            v38[0] = v11;
            v34 = 1;
            v35 = 0;
            v28 = swift_allocObject();
            swift_weakInit();
            v29 = swift_allocObject();
            v29[2] = v28;
            v29[3] = v3;
            v29[4] = v13;
            v29[5] = v12;
            v30 = *(v27 + 8);

            v30(v38, &v34, sub_1C1AECA0C, v29, v26, v27);

            return sub_1C1AA86F8(v38);
          }
        }
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1C1AEB85C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a1, result + 16);
  }

  return result;
}

id sub_1C1AEB8D4(void *a1, uint64_t a2)
{
  v3 = v2;
  result = [a1 handle];
  if (result)
  {
    v6 = result;
    v7 = sub_1C1B94D88();
    v9 = v8;

    v10 = sub_1C1AEBA6C(v7, v9);

    if (v10)
    {
      v11 = *(v10 + 96);
      if (v11)
      {
        v12 = *(v10 + 88);

        v13 = sub_1C1B4D6BC();
        v14 = swift_allocObject();
        swift_weakInit();

        sub_1C1AAD2FC(a2, v18);
        v15 = swift_allocObject();
        v15[2] = v14;
        sub_1C1AC0580(v18, (v15 + 3));
        v15[8] = v3;
        v15[9] = v12;
        v15[10] = v11;
        swift_beginAccess();
        v16 = *(v13 + 16);
        v17 = *(v13 + 24);
        *(v13 + 16) = sub_1C1AEC944;
        *(v13 + 24) = v15;

        sub_1C1AC0530(v16, v17);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1C1AEBA6C(uint64_t a1, unint64_t a2)
{
  if (qword_1EDE6BD38 != -1)
  {
    swift_once();
  }

  result = NativeAdTrackingInstanceStorage.get(for:)(a1, a2);
  if (!result)
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C1B94BE8();
    sub_1C1AB4454(v5, qword_1EDE6D058);

    v6 = sub_1C1B94BC8();
    v7 = sub_1C1B95128();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315394;
      sub_1C1AC1F08(&qword_1EBF087A0, &unk_1C1B9BE60);
      v10 = sub_1C1B94D98();
      v12 = sub_1C1AC7650(v10, v11, &v13);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1C1AC7650(a1, a2, &v13);
      _os_log_impl(&dword_1C1AA2000, v6, v7, "[%s] Unable to look up tracking instance for identifier %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v9, -1, -1);
      MEMORY[0x1C6908230](v8, -1, -1);
    }

    return 0;
  }

  return result;
}

void sub_1C1AEBC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v7 = sub_1C1B94448();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v10 = sub_1C1B94BE8();
      sub_1C1AB4454(v10, qword_1EDE6D058);

      v11 = v7;
      v12 = sub_1C1B94BC8();
      v13 = sub_1C1B95128();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24[0] = v15;
        *v14 = 136315650;
        sub_1C1AC1F08(&qword_1EBF087A0, &unk_1C1B9BE60);
        v16 = sub_1C1B94D98();
        v18 = sub_1C1AC7650(v16, v17, v24);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_1C1AC7650(a4, a5, v24);
        *(v14 + 22) = 2080;
        v19 = [v11 localizedDescription];
        v20 = sub_1C1B94D88();
        v22 = v21;

        v23 = sub_1C1AC7650(v20, v22, v24);

        *(v14 + 24) = v23;
        _os_log_impl(&dword_1C1AA2000, v12, v13, "[%s] Error updating click cap data with identifier %s, %s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C6908230](v15, -1, -1);
        MEMORY[0x1C6908230](v14, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      *(v9 + 130) = 0;
    }

    else
    {
    }
  }
}

void sub_1C1AEBEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v7 = sub_1C1B94448();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v10 = sub_1C1B94BE8();
      sub_1C1AB4454(v10, qword_1EDE6D058);

      v11 = v7;
      v12 = sub_1C1B94BC8();
      v13 = sub_1C1B95128();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v24[0] = v15;
        *v14 = 136315650;
        sub_1C1AC1F08(&qword_1EBF087A0, &unk_1C1B9BE60);
        v16 = sub_1C1B94D98();
        v18 = sub_1C1AC7650(v16, v17, v24);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_1C1AC7650(a4, a5, v24);
        *(v14 + 22) = 2080;
        v19 = [v11 localizedDescription];
        v20 = sub_1C1B94D88();
        v22 = v21;

        v23 = sub_1C1AC7650(v20, v22, v24);

        *(v14 + 24) = v23;
        _os_log_impl(&dword_1C1AA2000, v12, v13, "[%s] Error updating download cap data for Identifier %s, %s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C6908230](v15, -1, -1);
        MEMORY[0x1C6908230](v14, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      *(v9 + 129) = 0;
    }

    else
    {
    }
  }
}

void *sub_1C1AEC16C(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, double a6)
{
  v42 = a3;
  v9 = sub_1C1B94768();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1B949A8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v38 = a4;
    v18 = result;
    v19 = sub_1C1B4D6BC();
    swift_beginAccess();
    v36 = *(v19 + 16);
    v37 = a5;
    v20 = *(v19 + 24);
    sub_1C1AC0598(v36);

    sub_1C1B95048();
    v41 = v10;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C1B01524(MEMORY[0x1E69E7CC0]);
    v39 = v16;
    sub_1C1B94998();

    sub_1C1AA7D00(v21);
    sub_1C1AEC958();
    v40 = v14;
    sub_1C1B94948();

    v34 = v9;
    sub_1C1AAABE0(v18 + 5, v18[8]);
    sub_1C1B94738();
    v35 = v13;
    v23 = a2[3];
    v22 = a2[4];
    v33 = sub_1C1AAABE0(a2, v23);
    v45[3] = type metadata accessor for NativeAdTrackingInstance();
    v45[4] = &protocol witness table for NativeAdTrackingInstance;
    v45[0] = v18;
    v43 = 1;
    v44 = 1;
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v26 = v42;
    v25[2] = v24;
    v25[3] = v26;
    v27 = v37;
    v25[4] = v38;
    v25[5] = v27;
    v28 = v36;
    v25[6] = v36;
    v25[7] = v20;
    v42 = v12;
    v29 = *(v22 + 8);
    sub_1C1AC0598(v28);

    v29(v45, &v43, sub_1C1AEC9B0, v25, v23, v22);
    sub_1C1AC0530(v28, v20);

    sub_1C1AA86F8(v45);
    v30 = v18[15];

    (*(v41 + 8))(v42, v34);
    (*(v40 + 8))(v39, v35);
    swift_beginAccess();
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    sub_1C1AC0530(v31, v32);
  }

  return result;
}

void sub_1C1AEC598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v11 = sub_1C1B94448();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v12 = sub_1C1B94BE8();
      sub_1C1AB4454(v12, qword_1EDE6D058);

      v13 = v11;
      v14 = sub_1C1B94BC8();
      v15 = sub_1C1B95128();

      if (os_log_type_enabled(v14, v15))
      {
        v30 = a7;
        v16 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31[0] = v29;
        *v16 = 136315650;
        sub_1C1AC1F08(&qword_1EBF087A0, &unk_1C1B9BE60);
        v17 = sub_1C1B94D98();
        v19 = sub_1C1AC7650(v17, v18, v31);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_1C1AC7650(a4, a5, v31);
        *(v16 + 22) = 2080;
        v20 = [v13 localizedDescription];
        v21 = sub_1C1B94D88();
        v23 = v22;

        v24 = sub_1C1AC7650(v21, v23, v31);

        *(v16 + 24) = v24;
        _os_log_impl(&dword_1C1AA2000, v14, v15, "[%s] Error updating impression cap data for Identifier %s, %s", v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1C6908230](v29, -1, -1);
        v25 = v16;
        a7 = v30;
        MEMORY[0x1C6908230](v25, -1, -1);
      }

      v26 = sub_1C1B4D6BC();

      swift_beginAccess();
      v27 = *(v26 + 16);
      v28 = *(v26 + 24);
      *(v26 + 16) = a6;
      *(v26 + 24) = a7;
      sub_1C1AC0530(v27, v28);
      sub_1C1AC0598(a6);
    }

    else
    {
    }
  }
}

uint64_t FrequencyCapEventManager.__deallocating_deinit()
{
  sub_1C1AA86F8((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

unint64_t sub_1C1AEC958()
{
  result = qword_1EDE6A798;
  if (!qword_1EDE6A798)
  {
    sub_1C1B94768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A798);
  }

  return result;
}

uint64_t sub_1C1AEC9CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *initializeBufferWithCopyOfBuffer for MetricEventsTrackingDTO(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for MetricEventsTrackingDTO(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for MetricEventsTrackingDTO(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for MetricEventsTrackingDTO(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MetricEventsTrackingDTO(uint64_t result, int a2, int a3)
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

uint64_t sub_1C1AECB60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 0x79654B65707974;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 0x79654B65707974;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1AECC04()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AECC84(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1AECCF0(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AECD6C@<X0>(char *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1C1AECDCC(uint64_t *a1@<X8>)
{
  v2 = 0x79654B65707974;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C1AECE08()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x79654B65707974;
  }
}

uint64_t sub_1C1AECE40@<X0>(char *a3@<X8>)
{
  v4 = sub_1C1B955F8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C1AECEA4(uint64_t a1)
{
  v2 = sub_1C1AED518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AECEE0(uint64_t a1)
{
  v2 = sub_1C1AED518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AECF1C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1AECF98(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1AECFF0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  *a2 = v3 != 0;
  return result;
}

void sub_1C1AED044(uint64_t a1@<X8>)
{
  strcpy(a1, "metricEvents");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1C1AED118(void *a1, uint64_t a2)
{
  v5 = sub_1C1AC1F08(&qword_1EBF087B0, &qword_1C1B9BF10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AED518();
  sub_1C1B95A18();
  v12 = 0;
  sub_1C1AED5C0();
  sub_1C1B95808();
  if (!v2)
  {
    sub_1C1AED614(&unk_1EDE6C0B0, &unk_1C1B9CAF8);
    sub_1C1AED614(&qword_1EDE6C0C0, &unk_1C1B9CAD0);
    swift_getObjectType();
    v11 = a2;
    v10[15] = 1;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_1C1AED2E0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C1AED328(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1C1AED328(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF087A8, &qword_1C1B9BF08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AED518();
  sub_1C1B95A08();
  if (!v1)
  {
    v11 = 0;
    sub_1C1AED56C();
    sub_1C1B956F8();
    type metadata accessor for MetricEventsTracker(0);
    v9[15] = 1;
    sub_1C1AED614(&unk_1EDE6C0B0, &unk_1C1B9CAF8);
    sub_1C1B956F8();
    (*(v4 + 8))(v6, v3);
    v7 = v10;
  }

  sub_1C1AA86F8(a1);
  return v7;
}

unint64_t sub_1C1AED518()
{
  result = qword_1EDE6BEE0;
  if (!qword_1EDE6BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEE0);
  }

  return result;
}

unint64_t sub_1C1AED56C()
{
  result = qword_1EDE6BEB8;
  if (!qword_1EDE6BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEB8);
  }

  return result;
}

unint64_t sub_1C1AED5C0()
{
  result = qword_1EDE6BEC8;
  if (!qword_1EDE6BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEC8);
  }

  return result;
}

uint64_t sub_1C1AED614(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MetricEventsTracker(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1AED67C()
{
  result = qword_1EBF087B8;
  if (!qword_1EBF087B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087B8);
  }

  return result;
}

unint64_t sub_1C1AED6D4()
{
  result = qword_1EBF087C0;
  if (!qword_1EBF087C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087C0);
  }

  return result;
}

unint64_t sub_1C1AED72C()
{
  result = qword_1EDE6BED0;
  if (!qword_1EDE6BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BED0);
  }

  return result;
}

unint64_t sub_1C1AED784()
{
  result = qword_1EDE6BED8;
  if (!qword_1EDE6BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BED8);
  }

  return result;
}

unint64_t sub_1C1AED7D8()
{
  result = qword_1EDE6BEC0;
  if (!qword_1EDE6BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEC0);
  }

  return result;
}

uint64_t sub_1C1AED82C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = [a1 inclusionCriteria];
  sub_1C1AEDCB4();
  v5 = sub_1C1B94EC8();

  if (v5 >> 62)
  {
    v6 = sub_1C1B953A8();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  v47 = a2;
  v48 = v2;
  if (v6)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1C1AC7C5C(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v8 = 0;
    v9 = v51;
    v10 = v5;
    v49 = v5 & 0xC000000000000001;
    v11 = v5;
    do
    {
      if (v49)
      {
        v12 = MEMORY[0x1C6907490](v8, v10);
      }

      else
      {
        v12 = *(v10 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = [v12 identifier];
      v15 = sub_1C1B94D88();
      v17 = v16;

      v18 = [v13 values];
      v19 = sub_1C1B94EC8();

      v51 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C1AC7C5C((v20 > 1), v21 + 1, 1);
        v9 = v51;
      }

      ++v8;
      *(v9 + 16) = v21 + 1;
      v22 = (v9 + 24 * v21);
      v22[4] = v15;
      v22[5] = v17;
      v22[6] = v19;
      v10 = v11;
    }

    while (v6 != v8);

    v2 = v48;
    v7 = MEMORY[0x1E69E7CC0];
    if (*(v9 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      sub_1C1AC1F08(&qword_1EBF080E8, qword_1C1B9A6B8);
      v23 = sub_1C1B955C8();
      goto LABEL_16;
    }
  }

  v23 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v51 = v23;
  sub_1C1AEDD00(v9, 1, &v51);

  a2 = v51;
  v24 = [v2 exclusionCriteria];
  v25 = sub_1C1B94EC8();

  if (v25 >> 62)
  {
    v26 = sub_1C1B953A8();
    v46 = a2;
    if (v26)
    {
LABEL_18:
      v51 = v7;
      sub_1C1AC7C5C(0, v26 & ~(v26 >> 63), 0);
      if ((v26 & 0x8000000000000000) == 0)
      {
        v27 = 0;
        v28 = v51;
        v29 = v25;
        v50 = v25 & 0xC000000000000001;
        v30 = v25;
        v31 = v26;
        do
        {
          if (v50)
          {
            v32 = MEMORY[0x1C6907490](v27, v29);
          }

          else
          {
            v32 = *(v29 + 8 * v27 + 32);
          }

          v33 = v32;
          v34 = [v32 identifier];
          v35 = sub_1C1B94D88();
          v37 = v36;

          v38 = [v33 values];
          v39 = sub_1C1B94EC8();

          v51 = v28;
          v41 = *(v28 + 16);
          v40 = *(v28 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1C1AC7C5C((v40 > 1), v41 + 1, 1);
            v28 = v51;
          }

          ++v27;
          *(v28 + 16) = v41 + 1;
          v42 = (v28 + 24 * v41);
          v42[4] = v35;
          v42[5] = v37;
          v42[6] = v39;
          v29 = v30;
        }

        while (v31 != v27);

        v2 = v48;
        goto LABEL_30;
      }

LABEL_35:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = a2;
    if (v26)
    {
      goto LABEL_18;
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_30:
  if (*(v28 + 16))
  {
    sub_1C1AC1F08(&qword_1EBF080E8, qword_1C1B9A6B8);
    v43 = sub_1C1B955C8();
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC8];
  }

  v51 = v43;
  sub_1C1AEDD00(v28, 1, &v51);

  v45 = v51;
  *v47 = v46;
  v47[1] = v45;
  return result;
}

unint64_t sub_1C1AEDCB4()
{
  result = qword_1EDE6A640;
  if (!qword_1EDE6A640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6A640);
  }

  return result;
}

unint64_t sub_1C1AEDD00(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *v4;

    result = sub_1C1AA7C14(v8, v7);
    v12 = v10[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      sub_1C1AD8ED4(v15, a2 & 1);
      result = sub_1C1AA7C14(v8, v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v18 = *v4;
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v28 = result;
    sub_1C1ADA39C();
    result = v28;
    v4 = a3;
    v18 = *a3;
    if ((v16 & 1) == 0)
    {
LABEL_25:
      v18[(result >> 6) + 8] |= 1 << result;
      v29 = (v18[6] + 16 * result);
      *v29 = v8;
      v29[1] = v7;
      *(v18[7] + 8 * result) = v9;
      v30 = v18[2];
      v14 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v14)
      {
        goto LABEL_30;
      }

      v18[2] = v31;
      goto LABEL_5;
    }

LABEL_12:
    v19 = *(v18[7] + 8 * result);
    v20 = *(v9 + 16);
    v21 = *(v19 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_29;
    }

    v33 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v24 = *(v19 + 3) >> 1, v24 < v22))
    {
      if (v21 <= v22)
      {
        v25 = v21 + v20;
      }

      else
      {
        v25 = v21;
      }

      v19 = sub_1C1ACDF80(isUniquelyReferenced_nonNull_native, v25, 1, v19);
      v24 = *(v19 + 3) >> 1;
    }

    v4 = a3;
    if (*(v9 + 16))
    {
      if (v24 - *(v19 + 2) < v20)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v26 = *(v19 + 2);
        v14 = __OFADD__(v26, v20);
        v27 = v26 + v20;
        if (v14)
        {
          goto LABEL_33;
        }

        *(v19 + 2) = v27;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_31;
      }
    }

    *(v18[7] + 8 * v33) = v19;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

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
  result = sub_1C1B958E8();
  __break(1u);
  return result;
}

uint64_t CachePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

unint64_t sub_1C1AEDFF8()
{
  result = qword_1EBF087C8;
  if (!qword_1EBF087C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087C8);
  }

  return result;
}

uint64_t dispatch thunk of ContentPipelineTransformer.fetch(using:adType:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C1AEE19C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1C1AEE19C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void *sub_1C1AEE2C0(void *a1)
{
  v1 = [a1 policyValue];
  sub_1C1AEE4FC();
  v2 = sub_1C1B94CB8();

  sub_1C1AC1F08(&unk_1EBF07FA0, &unk_1C1B9A620);
  result = sub_1C1B955A8();
  v4 = result;
  v5 = 0;
  v7 = v2 + 64;
  v6 = *(v2 + 64);
  v33 = v2;
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v32 = result + 8;
  if ((v9 & v6) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v5 << 6);
      v16 = (*(v33 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v33 + 56) + 8 * v15);

      result = [v19 integerValue];
      *(v32 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v4[6] + 16 * v15);
      *v20 = v17;
      v20[1] = v18;
      *(v4[7] + 8 * v15) = result;
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v4[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {

        v24 = [a1 creativeIdentifier];
        v25 = sub_1C1B94D88();
        v27 = v26;

        v28 = type metadata accessor for PolicyData();
        v29 = objc_allocWithZone(v28);
        v30 = &v29[OBJC_IVAR____TtC15PromotedContent10PolicyData_creativeIdentifier];
        *v30 = v25;
        v30[1] = v27;
        *&v29[OBJC_IVAR____TtC15PromotedContent10PolicyData_policyValues] = v4;
        v34.receiver = v29;
        v34.super_class = v28;
        return objc_msgSendSuper2(&v34, sel_init);
      }

      v14 = *(v7 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1AEE4FC()
{
  result = qword_1EDE6C9F0;
  if (!qword_1EDE6C9F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6C9F0);
  }

  return result;
}

uint64_t sub_1C1AEE55C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1AEE5E0(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1AEE63C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1C1AEE6DC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C1B955F8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C1AEE734(uint64_t a1)
{
  v2 = sub_1C1AEEDE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AEE770(uint64_t a1)
{
  v2 = sub_1C1AEEDE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SafariTapAction.__allocating_init(destinationURL:actionType:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1C1AC5430(a1, &v7[OBJC_IVAR____TtC15PromotedContent15SafariTapAction_destinationURL]);
  *&v7[OBJC_IVAR___APPCTapAction_actionType] = a2;
  *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for TapAction();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_1C1AC54A0(a1);
  return v8;
}

id SafariTapAction.init(destinationURL:actionType:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C1AC5430(a1, &v3[OBJC_IVAR____TtC15PromotedContent15SafariTapAction_destinationURL]);
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = a2;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for TapAction();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1C1AC54A0(a1);
  return v7;
}

void *sub_1C1AEE938(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - v6;
  v17 = sub_1C1AC1F08(&qword_1EBF087F8, &qword_1C1B9C388);
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = v15 - v9;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AEEDE8();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for SafariTapAction(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v8;
    v12 = sub_1C1B944A8();
    sub_1C1AEF214(&unk_1EDE6C3A0, MEMORY[0x1E6968FD0]);
    v13 = v17;
    sub_1C1B956F8();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    sub_1C1AEF258(v7, v1 + OBJC_IVAR____TtC15PromotedContent15SafariTapAction_destinationURL);
    sub_1C1B95628();
    sub_1C1AAD2FC(v16, v15);
    v3 = TapAction.init(from:)(v15);
    sub_1C1AA86F8(v16);
    (*(v11 + 8))(v10, v13);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1AEEC58(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF087D0, &qword_1C1B9C210);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-1] - v5;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AEEDE8();
  sub_1C1B95A18();
  sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  sub_1C1AEEE3C();
  sub_1C1B95808();
  if (!v1)
  {
    sub_1C1B95738();
    sub_1C1B3BBE0(v9);
    sub_1C1AA86F8(v9);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C1AEEDE8()
{
  result = qword_1EBF087D8;
  if (!qword_1EBF087D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087D8);
  }

  return result;
}

unint64_t sub_1C1AEEE3C()
{
  result = qword_1EDE6C398;
  if (!qword_1EDE6C398)
  {
    sub_1C1AC3404(&qword_1EBF07AC8, &qword_1C1B9CED0);
    sub_1C1AEF214(&unk_1EDE6C3B0, MEMORY[0x1E6968FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C398);
  }

  return result;
}

id SafariTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafariTapAction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SafariTapAction(uint64_t a1)
{
  result = qword_1EDE6C220;
  if (!qword_1EDE6C220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1AEEFE8(uint64_t a1)
{
  sub_1C1AEF0A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C1AEF0A4(uint64_t a1)
{
  if (!qword_1EDE6CD38)
  {
    sub_1C1B944A8();
    v1 = sub_1C1B952D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE6CD38);
    }
  }
}

unint64_t sub_1C1AEF110()
{
  result = qword_1EBF087E0;
  if (!qword_1EBF087E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087E0);
  }

  return result;
}

unint64_t sub_1C1AEF168()
{
  result = qword_1EBF087E8;
  if (!qword_1EBF087E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087E8);
  }

  return result;
}

unint64_t sub_1C1AEF1C0()
{
  result = qword_1EBF087F0;
  if (!qword_1EBF087F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF087F0);
  }

  return result;
}

uint64_t sub_1C1AEF214(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1B944A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1AEF258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Placement.apPlacement.getter(uint64_t result)
{
  if ((result - 100) >= 6 && (result - 7005) >= 4 && result != 0)
  {
    result = sub_1C1B958C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1AEF350()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1AEF398(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v2);
  return sub_1C1B959A8();
}

uint64_t sub_1C1AEF3DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1AEF4C0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1AEF4C0(uint64_t result)
{
  if ((result - 7005) < 4 || result == 0)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  if ((result - 100) >= 6)
  {
    return v2;
  }

  return result;
}

unint64_t sub_1C1AEF4F4()
{
  result = qword_1EBF08800;
  if (!qword_1EBF08800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08800);
  }

  return result;
}

unint64_t sub_1C1AEF558()
{
  result = qword_1EDE6BC40;
  if (!qword_1EDE6BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC40);
  }

  return result;
}

uint64_t sub_1C1AEF5AC(uint64_t a1)
{
  if ((*(a1 + 8) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1C1AEF5C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 9))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1AEF610(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1AEF654(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t AdContentSessionCancelReason.hashValue.getter()
{
  sub_1C1B95958();
  MEMORY[0x1C6907960](0);
  return sub_1C1B959A8();
}

uint64_t AdContentSessionUnfilledReason.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x7373694D616C73;
    if (v1 != 1)
    {
      v2 = 0x64417963696C6F70;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0x616974696E696E75;
    }
  }

  else
  {
    MEMORY[0x1C6906DF0](0x20726568746FLL, 0xE600000000000000);
    type metadata accessor for APAdFillFailureReasonCode(0);
    sub_1C1B95558();
    return 0;
  }
}

BOOL static AdContentSessionUnfilledReason.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v7 = *(a2 + 8);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = *(a2 + 8);
      }

      if (v6)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

BOOL sub_1C1AEF880(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_1C1AEF8E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v5 = sub_1C1B945F8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1AEF974(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_1C1AEFA8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v4 = sub_1C1B945F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1AEFB84(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C1AEFBF0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C1AEFC90;
}

void sub_1C1AEFC90(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t AdContentSession.__allocating_init(context:placement:commandManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1B94578();
  v8 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_completionLock;
  *(v7 + v8) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v9 = (v7 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  *v9 = 0;
  v9[1] = 0;
  *(v7 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError) = 0;
  *(v7 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_missedOpportunityDueToSLA) = 0;
  v10 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v11 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  v12 = sub_1C1B945F8();
  (*(*(v12 - 8) + 16))(v7 + v11, a1 + v10, v12);
  *(v7 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_context) = a1;
  *(v7 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_placement) = a2;
  *(v7 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager + 8) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t AdContentSession.init(context:placement:commandManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1B94578();
  v8 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_completionLock;
  *(v4 + v8) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v9 = (v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  *v9 = 0;
  v9[1] = 0;
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError) = 0;
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_missedOpportunityDueToSLA) = 0;
  v10 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v11 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  v12 = sub_1C1B945F8();
  (*(*(v12 - 8) + 16))(v4 + v11, a1 + v10, v12);
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_context) = a1;
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_placement) = a2;
  *(v4 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager + 8) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t static AdContentSession.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, a1 + v11, v4);
  v13 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v12(v8, a2 + v13, v4);
  LOBYTE(a2) = sub_1C1B945C8();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  return a2 & 1;
}

uint64_t sub_1C1AF01B0()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C1B94588();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B94568();
  sub_1C1B94528();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  v12 = sub_1C1B95138();
  sub_1C1AC53E4();
  v13 = sub_1C1B95298();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315650;
    v16 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v16, v2);
    v17 = sub_1C1B945A8();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    v20 = sub_1C1AC7650(v17, v19, &v25);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_1C1AC7650(0x7373696D20414C53, 0xE800000000000000, &v25);
    _os_log_impl(&dword_1C1AA2000, v13, v12, "Task (%s was canceled after %f. Reason: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v15, -1, -1);
    MEMORY[0x1C6908230](v14, -1, -1);
  }

  v21 = v1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(v21 + 8);
    swift_getObjectType();
    (*(v23 + 32))(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C1AF0518(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v4 = *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v5 = *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_1C1AC0598(a1);

  return sub_1C1AC0530(v4, v5);
}

uint64_t sub_1C1AF0564(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager;
  swift_unknownObjectWeakLoadStrong();
  *(a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager + 8) = *(v3 + 8);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v4 = *(v1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v5 = *(v1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion + 8);
  v6 = (a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v7 = *(a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v8 = *(a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion + 8);
  *v6 = v4;
  v6[1] = v5;
  sub_1C1AC0598(v4);
  sub_1C1AC0530(v7, v8);
  v9 = v1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v10 = *(v9 + 8);
  v11 = a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  *(v11 + 8) = v10;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_1C1AF0664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v55 = sub_1C1B945F8();
  v6 = *(v55 - 8);
  v7 = MEMORY[0x1EEE9AC00](v55);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v47[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v47[-v13];
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 9);
  v54 = v15;
  v56 = v15;
  v52 = v16;
  v57 = v16;
  v58 = v17;
  sub_1C1AF0B8C(&v56, v4);
  v53 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_completionLock;
  [*(v3 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completionLock) lock];
  v18 = (v3 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  v19 = *(v3 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion);
  if (v19)
  {
    v20 = v18[1];
    v51 = v17;
    v50 = v20;
    if (v17)
    {
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1C1AC0598(v19);
      if (Strong)
      {
        v24 = v54;
        v25 = v52;
        sub_1C1AF11E8(v54, v52, 0);
        v26 = [Strong identifier];
        v49 = v19;
        v27 = v26;
        swift_unknownObjectRelease();
        sub_1C1B945D8();
        sub_1C1AF11F4(v24, v25, 0);

        v28 = *(v6 + 32);
        v29 = v55;
        v28(v14, v12, v55);
        v28(v9, v14, v29);
        v19 = v49;
        v30 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
        swift_beginAccess();
        (*(v6 + 40))(v3 + v30, v9, v29);
        swift_endAccess();
      }
    }

    v31 = sub_1C1B95138();
    sub_1C1AC53E4();
    v32 = sub_1C1B95298();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v19;
      v35 = v34;
      v56 = v34;
      *v33 = 136315138;
      v36 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
      swift_beginAccess();
      (*(v6 + 16))(v9, v3 + v36, v55);
      v37 = sub_1C1B945A8();
      v48 = v31;
      v39 = v38;
      (*(v6 + 8))(v9, v55);
      v40 = sub_1C1AC7650(v37, v39, &v56);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_1C1AA2000, v32, v48, "Task (%s is resolving", v33, 0xCu);
      sub_1C1AA86F8(v35);
      v41 = v35;
      v19 = v49;
      MEMORY[0x1C6908230](v41, -1, -1);
      MEMORY[0x1C6908230](v33, -1, -1);
    }

    v59 = v54;
    v60 = v52;
    v61 = v51;
    v42 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
    swift_beginAccess();
    v43 = v55;
    (*(v6 + 16))(v9, v3 + v42, v55);
    v44 = v50;
    v19(&v59, v9);
    sub_1C1AC0530(v19, v44);
    (*(v6 + 8))(v9, v43);
    v45 = *v18;
    v46 = v18[1];
    *v18 = 0;
    v18[1] = 0;
    sub_1C1AC0530(v45, v46);
    return [*(v3 + v53) unlock];
  }

  else
  {
    v21 = *(v3 + v53);

    return [v21 unlock];
  }
}

uint64_t sub_1C1AF0B8C(uint64_t a1, char a2)
{
  if (*(a1 + 9) == 1)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
    if ((v4 & 1) != 0 && v3 == 1)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v7 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        (*(v7 + 24))(15, *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError), ObjectType, v7);
        result = swift_unknownObjectRelease();
      }

      *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError) = 1;
      v9 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_missedOpportunityDueToSLA;
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v5 + 8);
        v15 = swift_getObjectType();
        (*(v14 + 8))(v15, v14);
        swift_unknownObjectRelease();
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        if (v4)
        {
          v16 = 2 * v3 + 13;
        }

        else
        {
          v16 = v3;
        }

        v17 = *(v5 + 8);
        v18 = swift_getObjectType();
        (*(v17 + 24))(v16, *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError), v18, v17);
        result = swift_unknownObjectRelease();
      }

      v9 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError;
    }

LABEL_24:
    *(v2 + v9) = 1;
    return result;
  }

  v11 = v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v11 + 8);
    v13 = swift_getObjectType();
    (*(v12 + 8))(v13, v12);
    result = swift_unknownObjectRelease();
  }

  if (a2)
  {
    if (!*(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_missedOpportunityDueToSLA))
    {
      return result;
    }

    goto LABEL_21;
  }

  if (*(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_missedOpportunityDueToSLA))
  {
LABEL_21:
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = *(v11 + 8);
      v20 = swift_getObjectType();
      (*(v19 + 24))(16, *(v2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError), v20, v19);
      result = swift_unknownObjectRelease();
    }

    v9 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_completedWithError;
    goto LABEL_24;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v11 + 8);
    v22 = swift_getObjectType();
    (*(v21 + 16))(v22, v21);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AdContentSession.deinit()
{
  v1 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  v2 = sub_1C1B945F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1C1ABD038(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate);
  sub_1C1ABD038(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager);
  v3 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_sessionBegan;
  v4 = sub_1C1B94588();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1C1AC0530(*(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion), *(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion + 8));
  return v0;
}

uint64_t AdContentSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  v2 = sub_1C1B945F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1C1ABD038(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate);
  sub_1C1ABD038(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_commandManager);
  v3 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_sessionBegan;
  v4 = sub_1C1B94588();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1C1AC0530(*(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion), *(v0 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_completion + 8));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1C1AF1050(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-v9];
  v11 = *a1;
  v12 = *a2;
  v13 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v10, v11 + v13, v4);
  v15 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v14(v8, v12 + v15, v4);
  LOBYTE(v12) = sub_1C1B945C8();
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v10, v4);
  return v12 & 1;
}

id sub_1C1AF11E8(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_1C1AF11F4(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

unint64_t sub_1C1AF1204()
{
  result = qword_1EBF08808;
  if (!qword_1EBF08808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08808);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdContentSessionUnfilledReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AdContentSessionUnfilledReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C1AF12B8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1AF12D4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for AdContentSession(uint64_t a1)
{
  result = qword_1EDE6B538;
  if (!qword_1EDE6B538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1AF1394(uint64_t a1)
{
  result = sub_1C1B945F8();
  if (v2 <= 0x3F)
  {
    result = sub_1C1B94588();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

id sub_1C1AF1608(id a1)
{
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  if ([a1 actionType] == 3)
  {
    v9 = [a1 actionURL];
    if (v9)
    {
      v10 = v9;
      sub_1C1B94488();

      v11 = *(v3 + 16);
      v11(v6, v8, v2);
      [a1 confirmedClickInterval];
      v13 = v12;
      v14 = objc_allocWithZone(type metadata accessor for DeepLinkTapAction(0));
      v11(&v14[OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url], v6, v2);
      *&v14[OBJC_IVAR___APPCTapAction_actionType] = 3;
      *&v14[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v13;
      v15 = type metadata accessor for TapAction();
      v30.receiver = v14;
      v30.super_class = v15;
      v16 = objc_msgSendSuper2(&v30, sel_init);

      v17 = *(v3 + 8);
      v17(v6, v2);
      v17(v8, v2);
      return v16;
    }

    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v28 = sub_1C1B94BE8();
    sub_1C1AB4454(v28, qword_1EDE6D058);
    v20 = sub_1C1B94BC8();
    v29 = sub_1C1B95128();
    if (!os_log_type_enabled(v20, v29))
    {
      goto LABEL_14;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Attempting to initialize a DeepLinkTapAction without a URL.";
    v24 = v29;
    v25 = v20;
    v26 = v22;
    v27 = 2;
LABEL_13:
    _os_log_impl(&dword_1C1AA2000, v25, v24, v23, v26, v27);
    MEMORY[0x1C6908230](v22, -1, -1);
LABEL_14:

    goto LABEL_15;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1C1B94BE8();
  sub_1C1AB4454(v19, qword_1EDE6D058);
  a1 = a1;
  v20 = sub_1C1B94BC8();
  v21 = sub_1C1B95128();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = [a1 actionType];

    v23 = "Attempting to initialize a WebTapAction with an invalid tap action type %ld.";
    v24 = v21;
    v25 = v20;
    v26 = v22;
    v27 = 12;
    goto LABEL_13;
  }

LABEL_15:
  return 0;
}

uint64_t PromotedContent.dataIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___APPCPromotedContent_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C1AF19F8()
{
  v1 = (*v0 + OBJC_IVAR___APPCPromotedContent_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C1AF1A58(uint64_t a1)
{
  *(a1 + 8) = sub_1C1AF1AC0(&qword_1EDE6BC08, &protocol conformance descriptor for PromotedContent);
  result = sub_1C1AF1AC0(&qword_1EDE6BC10, &protocol conformance descriptor for PromotedContent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1AF1AC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PromotedContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ActionStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1AF1B1C()
{
  result = qword_1EBF08810;
  if (!qword_1EBF08810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08810);
  }

  return result;
}

unint64_t *sub_1C1AF1B70@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static AppAdTemplateType.translateTemplateType(tapActionTemplateType:)(uint64_t a1)
{
  result = sub_1C1AF1CC0(a1);
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C1AF1BDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1AF1CC0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1AF1CC0(uint64_t result)
{
  if ((result - 4780) >= 0xB && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1AF1CE4()
{
  result = qword_1EBF08818;
  if (!qword_1EBF08818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08818);
  }

  return result;
}

unint64_t sub_1C1AF1D48()
{
  result = qword_1EBF08820;
  if (!qword_1EBF08820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08820);
  }

  return result;
}

uint64_t sub_1C1AF1D9C@<X0>(void *a1@<X0>, _BYTE *a3@<X8>)
{
  v104 = a3;
  v120 = sub_1C1B944A8();
  v105 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v106 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v110 = &v102 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v119 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v102 - v12;
  v14 = sub_1C1B945F8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C1B945E8();
  v109 = sub_1C1B945A8();
  v112 = v18;
  (*(v15 + 8))(v17, v14);
  v19 = MEMORY[0x1E69E7CC0];
  v130 = MEMORY[0x1E69E7CC0];
  v113 = a1;
  v20 = [a1 asset];
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 assetInformation];
  if (v22)
  {
    v23 = v22;
    sub_1C1AF2854();
    v24 = sub_1C1B94EC8();

    if (v24 >> 62)
    {
      result = sub_1C1B953A8();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        v103 = v21;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v26 = 0;
        v115 = (v24 & 0xC000000000000001);
        v27 = (v105 + 56);
        v114 = (v105 + 48);
        v108 = (v105 + 32);
        v107 = (v105 + 8);
        v117 = v24;
        v118 = v13;
        v116 = result;
        v28 = v120;
        do
        {
          if (v115)
          {
            v29 = MEMORY[0x1C6907490](v26, v24);
          }

          else
          {
            v29 = *(v24 + 8 * v26 + 32);
          }

          v30 = v29;
          v31 = [v29 contentType];
          v32 = [v30 width];
          v33 = [v30 height];
          v34 = [v30 url];
          if (v34)
          {
            v35 = v34;
            sub_1C1B94488();

            v36 = 0;
          }

          else
          {
            v36 = 1;
          }

          v122 = *v27;
          (v122)(v13, v36, 1, v28);
          v37 = [v30 length];
          [v30 bitrate];
          v39 = v38;
          v40 = [v30 autoloop];
          v121 = type metadata accessor for ClientLayoutAssetInfo(0);
          v41 = objc_allocWithZone(v121);
          *&v41[OBJC_IVAR___APPCClientLayoutAssetInfo_contentType] = v31;
          *&v41[OBJC_IVAR___APPCClientLayoutAssetInfo_width] = v32;
          *&v41[OBJC_IVAR___APPCClientLayoutAssetInfo_height] = v33;
          sub_1C1AC5430(v13, &v41[OBJC_IVAR___APPCClientLayoutAssetInfo_url]);
          *&v41[OBJC_IVAR___APPCClientLayoutAssetInfo_length] = v37;
          *&v41[OBJC_IVAR___APPCClientLayoutAssetInfo_bitrate] = v39;
          v41[OBJC_IVAR___APPCClientLayoutAssetInfo_autoloop] = v40;
          v42 = v119;
          sub_1C1AC5430(v13, v119);
          if ((*v114)(v42, 1, v28) == 1)
          {
            sub_1C1AC54A0(v42);
            (v122)(&v41[OBJC_IVAR___APPCClientLayoutAssetInfo_proxyUrl], 1, 1, v28);
          }

          else
          {
            v43 = v111;
            (*v108)(v111, v42, v28);
            v44 = objc_opt_self();
            v45 = sub_1C1B94478();
            v46 = sub_1C1B94D78();
            v47 = [v44 proxyURLForURL:v45 adIdentifier:v46];

            v48 = v110;
            sub_1C1B94488();

            (*v107)(v43, v28);
            (v122)(v48, 0, 1, v28);
            sub_1C1AEF258(v48, &v41[OBJC_IVAR___APPCClientLayoutAssetInfo_proxyUrl]);
          }

          v123.receiver = v41;
          v123.super_class = v121;
          v49 = objc_msgSendSuper2(&v123, sel_init);
          v13 = v118;
          sub_1C1AC54A0(v118);
          v50 = v49;
          MEMORY[0x1C6906EA0]();
          if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C1B94F08();
          }

          v26 = v26 + 1;
          sub_1C1B94F48();

          v24 = v117;
        }

        while (v116 != v26);
        v19 = v130;
        v21 = v103;
      }
    }
  }

LABEL_22:

  v51 = [v113 asset];
  if (v51 && (v52 = v51, v53 = [v51 name], v52, v53))
  {
    v54 = sub_1C1B94D88();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v57 = [v113 asset];
  v58 = v57;
  if (v57)
  {
    v59 = [v57 adamID];
  }

  else
  {
    v59 = 0;
  }

  v60 = [v113 aHh];
  if (v60 && (v61 = v60, v62 = [v60 treatment], v61, v62))
  {
    v63 = sub_1C1B94D88();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  v66 = type metadata accessor for ClientLayoutAsset();
  v67 = objc_allocWithZone(v66);
  v68 = &v67[OBJC_IVAR___APPCClientLayoutAsset_name];
  *v68 = v54;
  v68[1] = v56;
  *&v67[OBJC_IVAR___APPCClientLayoutAsset_assetInfoArray] = v19;
  v69 = &v67[OBJC_IVAR___APPCClientLayoutAsset_adamId];
  *v69 = v59;
  v69[8] = v58 == 0;
  v70 = &v67[OBJC_IVAR___APPCClientLayoutAsset_treatment];
  *v70 = v63;
  v70[1] = v65;
  v129.receiver = v67;
  v129.super_class = v66;
  v71 = objc_msgSendSuper2(&v129, sel_init);
  v72 = v113;
  v73 = [v113 button];
  if (v73)
  {
    sub_1C1B21D50(v73, &v124);
    v122 = v124;
    v121 = v125;
    v118 = v126;
    v119 = v127;
    v117 = v128;
  }

  else
  {
    v121 = 0;
    v122 = 0;
    v117 = 0;
    v118 = 1;
    v119 = 0;
  }

  v74 = v106;
  v115 = [v72 elementID];
  v75 = [v72 tapAction];
  if (v75)
  {
    v76 = v75;
    v116 = _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(v75);
  }

  else
  {
    v116 = 0;
  }

  v77 = [v72 style];
  if (v77)
  {
    sub_1C1AFAC60(v77, &v124);
    v79 = v124;
    v78 = v125;
  }

  else
  {
    v79 = 0;
    v78 = 0;
  }

  v80 = [v113 caption];
  if (v80)
  {
    v81 = v80;
    v82 = sub_1C1B94D88();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0;
  }

  v85 = [v113 caption];
  if (v85)
  {
    v86 = v85;
    v87 = sub_1C1B94D88();
    v89 = v88;
  }

  else
  {
    v87 = 0;
    v89 = 0;
  }

  v90 = v113;
  v91 = [v113 actionURL];
  if (v91)
  {
    v92 = v91;
    sub_1C1B94488();

    v93 = 0;
    v90 = v92;
    v74 = v106;
  }

  else
  {
    v93 = 1;
  }

  (*(v105 + 56))(v74, v93, 1, v120);
  v94 = v104;
  *v104 = v115;
  v94[1] = v71;
  v94[2] = v82;
  v94[3] = v84;
  v94[4] = v87;
  v96 = v121;
  v95 = v122;
  v94[5] = v89;
  v94[6] = v95;
  v97 = v118;
  v98 = v119;
  v94[7] = v96;
  v94[8] = v97;
  v99 = v117;
  v94[9] = v98;
  v94[10] = v99;
  v100 = type metadata accessor for ClientLayoutElement(0);
  result = sub_1C1AEF258(v74, v94 + v100[9]);
  *(v94 + v100[10]) = v116;
  v101 = (v94 + v100[11]);
  *v101 = v79;
  v101[1] = v78;
  return result;
}

unint64_t sub_1C1AF2854()
{
  result = qword_1EDE6BB48;
  if (!qword_1EDE6BB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6BB48);
  }

  return result;
}

uint64_t sub_1C1AF28C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1AF4604(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1C1AF2960(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  sub_1C1ABB0C4(a1 + v8, v7);
  v9 = sub_1C1B94588();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1C1B94538();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_1C1AF2AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    sub_1C1B94558();
    v10 = sub_1C1B94588();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1C1B94588();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();

  sub_1C1AABE90(v9, a1 + v12);
  swift_endAccess();
}

uint64_t sub_1C1AF2C28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;

  sub_1C1B94578();
  v8 = sub_1C1B94588();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = *a3;
  swift_beginAccess();
  sub_1C1AABE90(v7, a1 + v9);
  swift_endAccess();
}

void sub_1C1AF2D2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  sub_1C1AC1F08(&qword_1EBF090B0, &unk_1C1B9F3A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9C9C0;
  v12 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey + 8);
  *(inited + 32) = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey);
  *(inited + 40) = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 48) = [v13 initWithDouble_];
  v14 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey + 8);
  *(inited + 56) = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey);
  *(inited + 64) = v14;
  v15 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 72) = [v15 initWithInteger_];
  v16 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey + 8);
  *(inited + 80) = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey);
  *(inited + 88) = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 96) = [v17 initWithUnsignedInteger_];
  v18 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey + 8);
  *(inited + 104) = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey);
  *(inited + 112) = v18;
  v19 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 120) = [v19 initWithUnsignedInteger_];
  v20 = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey + 8);
  *(inited + 128) = *(v5 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey);
  *(inited + 136) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  *(inited + 144) = [v21 initWithBool_];
  v22 = sub_1C1AD46B4(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08840, &qword_1C1B9CB40);
  swift_arrayDestroy();
  v23 = objc_opt_self();
  v24 = sub_1C1B94D78();
  sub_1C1B1A914(v22);

  sub_1C1AF4720();
  v25 = sub_1C1B94CA8();

  [v23 sendEvent:v24 customPayload:v25];
}

unint64_t sub_1C1AF3044(char a1)
{
  result = 0x6C61767265746E69;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
    case 9:
      return result;
    case 10:
      result = 0x546B726F7774656ELL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x654B64656C696166;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1C1AF31E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1AF49C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1AF3214(uint64_t a1)
{
  v2 = sub_1C1AF4688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AF3250(uint64_t a1)
{
  v2 = sub_1C1AF4688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AF328C()
{
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_finalPromotedContent);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placeholderPlacedTimestamp);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_replacedPlaceholderTimestamp);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adRequestTimestamp);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adResponseTimestamp);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdRequestTimestamp);
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdResponseTimestamp);

  return v0;
}

uint64_t sub_1C1AF338C()
{
  sub_1C1AF328C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1AF33E4(void *a1)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v47 = &v45 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = &v45 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v45 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v20 = sub_1C1AC1F08(&qword_1EBF08838, &unk_1C1B9CB30);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - v22;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AF4688();
  sub_1C1B95A18();
  v24 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_finalPromotedContent;
  swift_beginAccess();
  v50 = v2;
  sub_1C1ABB0C4(v2 + v24, v19);
  v58 = 0;
  sub_1C1B94588();
  sub_1C1AF46DC(&unk_1EDE6C380, MEMORY[0x1E6969538]);
  v52 = v20;
  v25 = v23;
  v26 = v51;
  sub_1C1B95788();
  if (v26)
  {
    sub_1C1ABBAF4(v19);
    return (*(v21 + 8))(v23, v52);
  }

  else
  {
    v28 = v49;
    v51 = v21;
    sub_1C1ABBAF4(v19);
    v29 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placeholderPlacedTimestamp;
    v30 = v50;
    swift_beginAccess();
    sub_1C1ABB0C4(v30 + v29, v17);
    v57 = 1;
    sub_1C1B95788();
    sub_1C1ABBAF4(v17);
    v31 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_replacedPlaceholderTimestamp;
    swift_beginAccess();
    sub_1C1ABB0C4(v30 + v31, v28);
    v56 = 2;
    sub_1C1B95788();
    sub_1C1ABBAF4(v28);
    v32 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adRequestTimestamp;
    swift_beginAccess();
    v33 = v30 + v32;
    v34 = v48;
    sub_1C1ABB0C4(v33, v48);
    v55 = 3;
    sub_1C1B95788();
    sub_1C1ABBAF4(v34);
    v35 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adResponseTimestamp;
    swift_beginAccess();
    v36 = v30 + v35;
    v37 = v47;
    sub_1C1ABB0C4(v36, v47);
    v54 = 4;
    sub_1C1B95788();
    sub_1C1ABBAF4(v37);
    v38 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdRequestTimestamp;
    swift_beginAccess();
    v39 = v30 + v38;
    v40 = v46;
    sub_1C1ABB0C4(v39, v46);
    v53 = 5;
    sub_1C1B95788();
    sub_1C1ABBAF4(v40);
    v41 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdResponseTimestamp;
    swift_beginAccess();
    v42 = v30 + v41;
    v43 = v45;
    sub_1C1ABB0C4(v42, v45);
    v59 = 6;
    sub_1C1B95788();
    sub_1C1ABBAF4(v43);
    v59 = 7;
    sub_1C1B957A8();
    v59 = 8;
    sub_1C1B957A8();
    v59 = 9;
    sub_1C1B957A8();
    v59 = 10;
    sub_1C1B957A8();
    v59 = 11;
    sub_1C1B957A8();
    v59 = 12;
    v44 = v52;
    sub_1C1B957A8();
    return (*(v51 + 8))(v25, v44);
  }
}

uint64_t sub_1C1AF3B20(void *a1)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v63 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v66 = &v63 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v63 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v63 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v63 - v19;
  v20 = sub_1C1AC1F08(&qword_1EBF08830, &qword_1C1B9CB28);
  v68 = *(v20 - 8);
  v69 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_finalPromotedContent;
  v24 = sub_1C1B94588();
  v25 = *(*(v24 - 8) + 56);
  v75 = v23;
  v25(v2 + v23, 1, 1, v24);
  v74 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placeholderPlacedTimestamp;
  v25(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placeholderPlacedTimestamp, 1, 1, v24);
  v81 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_replacedPlaceholderTimestamp;
  v25(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_replacedPlaceholderTimestamp, 1, 1, v24);
  v79 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adRequestTimestamp;
  v25(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adRequestTimestamp, 1, 1, v24);
  v78 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adResponseTimestamp;
  v25(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_adResponseTimestamp, 1, 1, v24);
  v77 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdRequestTimestamp;
  v25(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdRequestTimestamp, 1, 1, v24);
  v76 = OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdResponseTimestamp;
  v25(v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_prerollAdResponseTimestamp, 1, 1, v24);
  v26 = a1[3];
  v73 = a1;
  sub_1C1AAABE0(a1, v26);
  sub_1C1AF4688();
  v70 = v22;
  v27 = v72;
  sub_1C1B95A08();
  if (v27)
  {
    v30 = v74;
    sub_1C1ABBAF4(v2 + v75);
    sub_1C1ABBAF4(v2 + v30);
    sub_1C1ABBAF4(v2 + v81);
    sub_1C1ABBAF4(v2 + v79);
    sub_1C1ABBAF4(v2 + v78);
    sub_1C1ABBAF4(v2 + v77);
    sub_1C1ABBAF4(v2 + v76);
    type metadata accessor for MetricEventsTracker(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v18;
    v80 = 0;
    v29 = sub_1C1AF46DC(&unk_1EDE6C370, MEMORY[0x1E6969558]);
    sub_1C1B95678();
    v32 = v75;
    swift_beginAccess();
    sub_1C1AABE90(v71, v2 + v32);
    swift_endAccess();
    v80 = 1;
    sub_1C1B95678();
    v72 = v29;
    v33 = v74;
    swift_beginAccess();
    sub_1C1AABE90(v28, v2 + v33);
    swift_endAccess();
    v80 = 2;
    sub_1C1B95678();
    v34 = v15;
    v35 = v81;
    swift_beginAccess();
    sub_1C1AABE90(v34, v2 + v35);
    swift_endAccess();
    v80 = 3;
    v36 = v67;
    sub_1C1B95678();
    v37 = v79;
    swift_beginAccess();
    sub_1C1AABE90(v36, v2 + v37);
    swift_endAccess();
    v80 = 4;
    v38 = v66;
    sub_1C1B95678();
    v39 = v78;
    swift_beginAccess();
    sub_1C1AABE90(v38, v2 + v39);
    swift_endAccess();
    v80 = 5;
    v40 = v65;
    sub_1C1B95678();
    v41 = v77;
    swift_beginAccess();
    sub_1C1AABE90(v40, v2 + v41);
    swift_endAccess();
    v80 = 6;
    v42 = v64;
    sub_1C1B95678();
    v43 = v76;
    swift_beginAccess();
    sub_1C1AABE90(v42, v2 + v43);
    swift_endAccess();
    v80 = 7;
    v44 = sub_1C1B95698();
    v45 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_analyticsEventName);
    *v45 = v44;
    v45[1] = v46;
    v80 = 8;
    v47 = sub_1C1B95698();
    v48 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalKey);
    *v48 = v47;
    v48[1] = v49;
    v80 = 9;
    v50 = sub_1C1B95698();
    v51 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_intervalTypeKey);
    *v51 = v50;
    v51[1] = v52;
    v80 = 10;
    v53 = sub_1C1B95698();
    v54 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_networkTypeKey);
    *v54 = v53;
    v54[1] = v55;
    v80 = 11;
    v56 = sub_1C1B95698();
    v57 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_placementTypeKey);
    *v57 = v56;
    v57[1] = v58;
    v80 = 12;
    v59 = sub_1C1B95698();
    v61 = v60;
    (*(v68 + 8))(v70, v69);
    v62 = (v2 + OBJC_IVAR____TtC15PromotedContent19MetricEventsTracker_failedKey);
    *v62 = v59;
    v62[1] = v61;
  }

  sub_1C1AA86F8(v73);
  return v2;
}

uint64_t sub_1C1AF4584@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MetricEventsTracker(0);
  v5 = swift_allocObject();
  result = sub_1C1AF3B20(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1C1AF4604(uint64_t result)
{
  if ((result - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1AF461C()
{
  result = qword_1EBF08828;
  if (!qword_1EBF08828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08828);
  }

  return result;
}

unint64_t sub_1C1AF4688()
{
  result = qword_1EDE6C0D8;
  if (!qword_1EDE6C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C0D8);
  }

  return result;
}

uint64_t sub_1C1AF46DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1B94588();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1AF4720()
{
  result = qword_1EDE6C9D0;
  if (!qword_1EDE6C9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6C9D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricEventsTracker.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricEventsTracker.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AF48C0()
{
  result = qword_1EBF08848;
  if (!qword_1EBF08848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08848);
  }

  return result;
}

unint64_t sub_1C1AF4918()
{
  result = qword_1EDE6C0C8;
  if (!qword_1EDE6C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C0C8);
  }

  return result;
}

unint64_t sub_1C1AF4970()
{
  result = qword_1EDE6C0D0;
  if (!qword_1EDE6C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C0D0);
  }

  return result;
}

uint64_t sub_1C1AF49C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001C1BA81C0 == a2;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C1BA64E0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C1BA6500 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C1BA81E0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C1BA6520 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C1BA6540 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C1BA6560 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C1BA8200 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xEB0000000079654BLL || (sub_1C1B95888() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xEF79654B65707954 || (sub_1C1B95888() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x546B726F7774656ELL && a2 == 0xEE0079654B657079 || (sub_1C1B95888() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C1BA8240 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x654B64656C696166 && a2 == 0xE900000000000079)
  {

    return 12;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void NSUserDefaults.set(_:for:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1C1B944C8();
  }

  v6 = sub_1C1B94D78();
  [v4 setValue:v5 forKey:v6];
  swift_unknownObjectRelease();
}

uint64_t NSUserDefaults.get(for:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1B94D78();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1C1B952F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C1AF4F4C(v9);
    return 0;
  }
}

uint64_t sub_1C1AF4F4C(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08850, &qword_1C1B9CC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1AF4FB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1C1B944C8();
  }

  v7 = sub_1C1B94D78();
  [v5 setValue:v6 forKey:v7];
  swift_unknownObjectRelease();
}

uint64_t DefaultsPersistenceManager.__allocating_init()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1B94D78();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v5 = sub_1C1AA576C(0, &unk_1EDE6BB68, 0x1E695E000);
  v6 = &protocol witness table for NSUserDefaults;
  *&v4 = v2;
  return DefaultsPersistenceManager.__allocating_init(backing:)(&v4);
}

uint64_t DefaultsPersistenceManager.__allocating_init(backing:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1AC0580(a1, v2 + 16);
  return v2;
}

uint64_t DefaultsPersistenceManager.init(backing:)(__int128 *a1)
{
  *(v1 + 56) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1AC0580(a1, v1 + 16);
  return v1;
}

id sub_1C1AF51F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v28 = *v3;
  [v3[7] lock];
  v7 = v3[5];
  v8 = v3[6];
  sub_1C1AAABE0(v3 + 2, v7);
  v27 = a2;
  v9 = (*(v8 + 16))(a1, a2, v7, v8);
  v11 = v10;
  v12 = sub_1C1B95108();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v13 = sub_1C1B95298();
  v14 = os_log_type_enabled(v13, v12);
  if (v11 >> 60 == 15)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1C1AC7650(a1, v27, v30);
      _os_log_impl(&dword_1C1AA2000, v13, v12, "Unable to retrieve data for identifier: %{public}s", v15, 0xCu);
      sub_1C1AA86F8(v16);
      MEMORY[0x1C6908230](v16, -1, -1);
      MEMORY[0x1C6908230](v15, -1, -1);
    }

    (*(*(*(v28 + 80) - 8) + 56))(a3, 1, 1);
  }

  else
  {
    if (v14)
    {
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30[0] = v26;
      *v19 = 136315138;
      sub_1C1AF5DAC(v9, v11);
      v20 = sub_1C1B944B8();
      v25 = v12;
      v22 = v21;
      sub_1C1AE49EC(v9, v11);
      v23 = sub_1C1AC7650(v20, v22, v30);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1C1AA2000, v13, v25, "Returning fetch result from storage %s", v19, 0xCu);
      sub_1C1AA86F8(v26);
      MEMORY[0x1C6908230](v26, -1, -1);
      MEMORY[0x1C6908230](v19, -1, -1);
    }

    sub_1C1B943E8();
    swift_allocObject();
    sub_1C1B943D8();
    v24 = *(v28 + 80);
    sub_1C1B943C8();
    sub_1C1AE49EC(v9, v11);

    (*(*(v24 - 8) + 56))(a3, 0, 1);
  }

  v17 = v4[7];

  return [v17 unlock];
}

uint64_t sub_1C1AF5720(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v19 - v7;
  [v1[7] lock];
  sub_1C1B94418();
  swift_allocObject();
  sub_1C1B94408();
  v9 = *(v4 + 88);
  v10 = sub_1C1B943F8();
  v12 = v11;
  v19[2] = v8;
  v19[3] = v6;

  v20 = v1[5];
  v13 = a1;
  v14 = v2[6];
  v19[4] = sub_1C1AAABE0(v2 + 2, v20);
  v15 = *(v9 + 24);
  sub_1C1AF5DAC(v10, v12);
  v19[0] = v9;
  v19[1] = v13;
  v16 = v15(v5, v9);
  (*(v14 + 8))(v10, v12, v16, v17, v20, v14);
  sub_1C1AE4A00(v10, v12);

  sub_1C1AE4A00(v10, v12);
  [v2[7] unlock];
  return 1;
}

uint64_t sub_1C1AF5B08(uint64_t a1, uint64_t a2)
{
  [*(v2 + 56) lock];
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  sub_1C1AAABE0((v2 + 16), v5);
  (*(v6 + 8))(0, 0xF000000000000000, a1, a2, v5, v6);
  [*(v2 + 56) unlock];
  return 1;
}

uint64_t DefaultsPersistenceManager.deinit()
{
  sub_1C1AA86F8((v0 + 16));

  return v0;
}

uint64_t DefaultsPersistenceManager.__deallocating_deinit()
{
  sub_1C1AA86F8((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1C1AF5DAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C1AF5F70(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
    v15 = v8;
LABEL_11:
    v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    sub_1C1B94DE8();

    MEMORY[0x1C6907960](*(v11 + 16));
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v11 + 40;
      do
      {

        sub_1C1B94DE8();

        v13 += 16;
        --v12;
      }

      while (v12);
    }

    v5 &= v5 - 1;

    result = sub_1C1B959A8();
    v8 = result ^ v15;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1C6907960](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v15 = v8;
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t NativeAdTrackingInstanceStorage.get(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16) && (v7 = sub_1C1AA7C14(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(v5 + 4);
  return v9;
}

unint64_t sub_1C1AF61B0()
{
  type metadata accessor for NativeAdTrackingInstanceStorage();
  v0 = swift_allocObject();
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = sub_1C1AD44C4(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  qword_1EDE6BD40 = v0;
  return result;
}

uint64_t static NativeAdTrackingInstanceStorage.shared.getter()
{
  if (qword_1EDE6BD38 != -1)
  {
    swift_once();
  }
}

void NativeAdTrackingInstanceStorage.set(instance:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_1C1AE41B4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v9;
  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
}

Swift::Void __swiftcall NativeAdTrackingInstanceStorage.delete(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  sub_1C1AF657C(countAndFlagsBits, object);
  swift_endAccess();

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t NativeAdTrackingInstanceStorage.deinit()
{

  return v0;
}

uint64_t NativeAdTrackingInstanceStorage.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C1AF6428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C1AA7C14(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C1ADA50C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_1C1AD356C(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_1C1AF64D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C1AA7C14(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C1AAA964();
      v10 = v12;
    }

    sub_1C1AA7E98((*(v10 + 56) + 32 * v8), a3);
    sub_1C1AD388C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C1AF657C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C1AA7C14(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C1ADA97C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1C1AD3A3C(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1C1AF6614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C1AA7C14(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C1ADADAC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_1C1AD3EB4(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1C1AF6820@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCContextBuilder_identifier;
  swift_beginAccess();
  v4 = sub_1C1B945F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1AF69BC(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCContextBuilder_identifier;
  swift_beginAccess();
  v4 = sub_1C1B945F8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C1AF6A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContextBuilder_identifier;
  swift_beginAccess();
  v5 = sub_1C1B945F8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1AF6AD8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR___APPCContextBuilder_identifier;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

double sub_1C1AF6C98()
{
  v1 = v0 + OBJC_IVAR___APPCContextBuilder_maxSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C1AF6D38(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___APPCContextBuilder_maxSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1C1AF6EF4(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCContextBuilder_current;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = *(v1 + v3);
  if (!v4 || [v4 adjacentPosition])
  {
    v5 = sub_1C1B94D78();
    APSimulateCrash();
  }

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1C1AF6FAC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___APPCContextBuilder_current;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C1AF7034;
}

void sub_1C1AF7034(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    if (!v4 || [v4 adjacentPosition])
    {
      v5 = sub_1C1B94D78();
      APSimulateCrash();
    }
  }

  free(v3);
}

uint64_t sub_1C1AF7220(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1C1AF7278(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1C1AF7414()
{
  v1 = *(v0 + OBJC_IVAR___APPCContextBuilder_resourceLock);
  [v1 lock];
  v2 = OBJC_IVAR___APPCContextBuilder_adjacentInternal;
  swift_beginAccess();
  v3 = *(v0 + v2);

  [v1 unlock];
  return v3;
}

uint64_t sub_1C1AF7524()
{
  v1 = (v0 + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C1AF75F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C1AF7658(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

void *sub_1C1AF7770()
{
  v1 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1AF781C(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1C1AF7874(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id ContextBuilder.__allocating_init(maxSize:current:next:newsContext:requestedAd:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = objc_allocWithZone(v7);
  sub_1C1B945E8();
  v15 = OBJC_IVAR___APPCContextBuilder_current;
  *&v14[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v16 = &v14[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v14[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v18 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v14[v18] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v14[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v19 = &v14[OBJC_IVAR___APPCContextBuilder_maxSize];
  *v19 = a6;
  v19[1] = a7;
  swift_beginAccess();
  *&v14[v15] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v14[OBJC_IVAR___APPCContextBuilder_next] = a2;
  swift_beginAccess();
  v20 = *&v14[v17];
  *&v14[v17] = a3;
  v21 = a3;

  swift_beginAccess();
  *v16 = a4;
  *(v16 + 1) = a5;

  v25.receiver = v14;
  v25.super_class = v7;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  swift_unknownObjectRelease();

  return v22;
}

id ContextBuilder.init(maxSize:current:next:newsContext:requestedAd:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v8 = sub_1C1AF8784(a1, a2, a3, a4, a5, a6, a7);

  swift_unknownObjectRelease();
  return v8;
}

id ContextBuilder.__allocating_init(maxSize:current:newsContext:requestedAd:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = objc_allocWithZone(v6);
  sub_1C1B945E8();
  v13 = OBJC_IVAR___APPCContextBuilder_current;
  *&v12[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v14 = &v12[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v12[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v16 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v12[v16] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v17 = MEMORY[0x1E69E7CC0];
  *&v12[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v18 = &v12[OBJC_IVAR___APPCContextBuilder_maxSize];
  *v18 = a5;
  v18[1] = a6;
  swift_beginAccess();
  *&v12[v13] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v12[OBJC_IVAR___APPCContextBuilder_next] = v17;
  swift_beginAccess();
  v19 = *&v12[v15];
  *&v12[v15] = a2;
  v20 = a2;

  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;

  v24.receiver = v12;
  v24.super_class = v6;
  v21 = objc_msgSendSuper2(&v24, sel_init);
  swift_unknownObjectRelease();

  return v21;
}

id sub_1C1AF7E8C(void *a1)
{
  v3 = &property descriptor for VideoRepresentation.unbranded;
  if ([a1 adjacentPosition])
  {
    v22 = a1;
    v20 = *(v1 + OBJC_IVAR___APPCContextBuilder_resourceLock);
    [v20 lock];
    v4 = OBJC_IVAR___APPCContextBuilder_adjacentInternal;
    swift_beginAccess();
    v19 = v4;
    v5 = *(v1 + v4);
    v21 = v1;
    if (v5 >> 62)
    {
LABEL_20:
      v6 = sub_1C1B953A8();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v8 = v3;
    while (v6 != v7)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C6907490](v7, v5);
        if (__OFADD__(v7, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v9 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v7, 1))
        {
          goto LABEL_13;
        }
      }

      v10 = [v9 v8 + 870];
      v3 = [v22 v8 + 870];
      swift_unknownObjectRelease();
      ++v7;
      if (v10 == v3)
      {

        v16 = sub_1C1B95138();
        sub_1C1AC53E4();
        v17 = sub_1C1B95298();
        sub_1C1B94BA8(v16, &dword_1C1AA2000, v17, "You are adding a duplicate adjacent.", 36, 2, MEMORY[0x1E69E7CC0]);

        goto LABEL_16;
      }
    }

LABEL_16:
    swift_beginAccess();
    v18 = swift_unknownObjectRetain();
    MEMORY[0x1C6906EA0](v18);
    if (*((*(v21 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v21 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C1B94F08();
    }

    sub_1C1B94F48();
    swift_endAccess();
    return [v20 unlock];
  }

  else
  {
LABEL_14:
    sub_1C1AC53E4();
    v11 = sub_1C1B95298();
    v12 = sub_1C1B95128();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C1B98E60;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1C1AA5E7C();
    *(v13 + 32) = 0xD000000000000030;
    *(v13 + 40) = 0x80000001C1BA83C0;
    sub_1C1B94B98("%{public}@", 10, 2, &dword_1C1AA2000, v11, v12, v13);

    sub_1C1AF8908();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }
}

id sub_1C1AF82D8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___APPCContextBuilder_resourceLock);
  [v3 lock];
  v4 = OBJC_IVAR___APPCContextBuilder_adjacentInternal;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = sub_1C1AF895C((v1 + v4), a1);
  result = swift_unknownObjectRelease();
  v7 = *(v1 + v4);
  if (v7 >> 62)
  {
    result = sub_1C1B953A8();
    v8 = result;
    if (result >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= v5)
    {
LABEL_3:
      sub_1C1AF8D8C(v5, v8);
      swift_endAccess();
      return [v3 unlock];
    }
  }

  __break(1u);
  return result;
}

id ContextBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextBuilder(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1AF85AC(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_1C1B953A8();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v19 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6907490](v3, a1);
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
      swift_unknownObjectRetain();
    }

    v5 = [v4 identifier];
    v6 = sub_1C1B94D88();
    v8 = v7;

    v9 = [a2 identifier];
    v10 = sub_1C1B94D88();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      break;
    }

    v14 = sub_1C1B95888();
    swift_unknownObjectRelease();

    if (v14)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  swift_unknownObjectRelease();

  return v3;
}

id sub_1C1AF8784(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  sub_1C1B945E8();
  v15 = OBJC_IVAR___APPCContextBuilder_current;
  *&v7[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v16 = &v7[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v7[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v18 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v7[v18] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v7[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v19 = &v7[OBJC_IVAR___APPCContextBuilder_maxSize];
  *v19 = a6;
  v19[1] = a7;
  swift_beginAccess();
  *&v7[v15] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v7[OBJC_IVAR___APPCContextBuilder_next] = a2;
  swift_beginAccess();
  v20 = *&v7[v17];
  *&v7[v17] = a3;
  v21 = a3;

  swift_beginAccess();
  *v16 = a4;
  *(v16 + 1) = a5;

  v23.receiver = v7;
  v23.super_class = type metadata accessor for ContextBuilder(0);
  return objc_msgSendSuper2(&v23, sel_init);
}

unint64_t sub_1C1AF8908()
{
  result = qword_1EBF08868;
  if (!qword_1EBF08868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08868);
  }

  return result;
}

unint64_t sub_1C1AF895C(unint64_t *a1, void *a2)
{
  v4 = a2;
  v6 = *a1;
  result = sub_1C1AF85AC(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1C1B953A8();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = a1;
  v27 = result;
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v9 == sub_1C1B953A8())
      {
        return v27;
      }
    }

    else if (v9 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v27;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1C6907490](v9, v6);
      goto LABEL_17;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v11 = *(v6 + 8 * v9 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    v12 = [v11 identifier];
    v13 = sub_1C1B94D88();
    v15 = v14;

    v3 = v4;
    v16 = [v4 identifier];
    v17 = sub_1C1B94D88();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {
LABEL_8:
      swift_unknownObjectRelease();

LABEL_9:
      v4 = v3;
      goto LABEL_10;
    }

    v20 = sub_1C1B95888();
    swift_unknownObjectRelease();

    if (v20)
    {
      goto LABEL_9;
    }

    v4 = v3;
    if (v27 != v9)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1C6907490](v27, v6);
        v22 = MEMORY[0x1C6907490](v9, v6);
      }

      else
      {
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27 >= v23)
        {
          goto LABEL_53;
        }

        if (v9 >= v23)
        {
          goto LABEL_54;
        }

        v21 = *(v6 + 32 + 8 * v27);
        v22 = *(v6 + 32 + 8 * v9);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
      {
        v6 = sub_1C1B91B54(v6);
        v24 = (v6 >> 62) & 1;
      }

      else
      {
        LODWORD(v24) = 0;
      }

      v25 = v6 & 0xFFFFFFFFFFFFFF8;
      *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v27 + 0x20) = v22;
      swift_unknownObjectRelease();
      if ((v6 & 0x8000000000000000) != 0 || v24)
      {
        v6 = sub_1C1B91B54(v6);
        v25 = v6 & 0xFFFFFFFFFFFFFF8;
        if ((v9 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v27;
        }
      }

      else if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v9 >= *(v25 + 16))
      {
        goto LABEL_51;
      }

      *(v25 + 8 * v9 + 32) = v21;
      swift_unknownObjectRelease();
      *v26 = v6;
    }

    v10 = __OFADD__(v27++, 1);
    if (v10)
    {
      goto LABEL_50;
    }

LABEL_10:
    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_1C1B953A8();
}

uint64_t sub_1C1AF8C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C1B953A8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C1B953A8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1AF8D8C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1B953A8();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1C1B953A8();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1C1AB6C30(result, 1);

  return sub_1C1AF8C80(v5, v3, 0);
}

unint64_t sub_1C1AF9350()
{
  result = qword_1EBF08870;
  if (!qword_1EBF08870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08870);
  }

  return result;
}

unint64_t sub_1C1AF93A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for PlaceholderRequest(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1C1AF94EC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1C1ACE1A4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1C1AF93A4(v6, a2, 0);
  *v2 = v4;
  return result;
}

void *MobileRichAdInterfaceDefinitionTapAction.adamIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier);
  v2 = v1;
  return v1;
}

uint64_t sub_1C1AF961C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AF96F4(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1AF97B8(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1AF988C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1AFAC14(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1AF98BC(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7107189;
  v4 = 0xEE00726569666974;
  v5 = 0x6E6564496D616461;
  if (*v1 != 2)
  {
    v5 = 0x654D73656E755469;
    v4 = 0xEE00617461646174;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001C1BA56E0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1C1AF9950()
{
  v1 = 7107189;
  v2 = 0x6E6564496D616461;
  if (*v0 != 2)
  {
    v2 = 0x654D73656E755469;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

unint64_t sub_1C1AF99E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1AFAC14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1AF9A08(uint64_t a1)
{
  v2 = sub_1C1AFA88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AF9A44(uint64_t a1)
{
  v2 = sub_1C1AFA88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id MobileRichAdInterfaceDefinitionTapAction.__allocating_init(actionType:confirmedClickInterval:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v5 = sub_1C1B944A8();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = 0;
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = 0;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a1;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v7, sel_init);
}

id MobileRichAdInterfaceDefinitionTapAction.init(actionType:confirmedClickInterval:)(double a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v4 = sub_1C1B944A8();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
  *&v1[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = 0;
  *&v1[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = 0;
  *&v1[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v1[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v6, sel_init);
}

id MobileRichAdInterfaceDefinitionTapAction.__allocating_init(url:opensInstalledApp:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return MobileRichAdInterfaceDefinitionTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(a1, v5, a3);
}

id MobileRichAdInterfaceDefinitionTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(uint64_t a1, char a2, double a3)
{
  v7 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v8 = sub_1C1B944A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  (*(v9 + 56))(&v3[v7], 0, 1, v8);
  v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = a2;
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = 0;
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = 0;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for TapAction();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

id MobileRichAdInterfaceDefinitionTapAction.__allocating_init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = a1;
  *&v7[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = a2;
  v8 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v9 = sub_1C1B944A8();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  v7[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
  *&v7[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v11.receiver = v7;
  v11.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v11, sel_init);
}

id MobileRichAdInterfaceDefinitionTapAction.init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = a1;
  *&v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = a2;
  v5 = OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url;
  v6 = sub_1C1B944A8();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v3[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v8, sel_init);
}

void *sub_1C1AFA0F4(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1C1AC1F08(&qword_1EBF088A0, &unk_1C1B9D0A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AFA88C();
  sub_1C1B95A08();
  if (v1)
  {
    v11 = v18;
    sub_1C1AA86F8(a1);
    type metadata accessor for MobileRichAdInterfaceDefinitionTapAction(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v7;
    sub_1C1B944A8();
    LOBYTE(v20[0]) = 0;
    sub_1C1AEF214(&unk_1EDE6C3A0, MEMORY[0x1E6968FD0]);
    sub_1C1B95678();
    v13 = v18;
    sub_1C1AEF258(v5, v18 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url);
    LOBYTE(v20[0]) = 1;
    *(v13 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp) = sub_1C1B95648();
    LOBYTE(v20[0]) = 2;
    v14 = sub_1C1B95658();
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    }

    *(v13 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier) = v16;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    LOBYTE(v19[0]) = 3;
    sub_1C1AD0C9C(&unk_1EDE6BBF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1C1B95678();
    *(v13 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata) = v20[0];
    sub_1C1B95628();
    sub_1C1AAD2FC(v20, v19);
    v11 = TapAction.init(from:)(v19);
    sub_1C1AA86F8(v20);
    (*(v10 + 8))(v9, v6);
    sub_1C1AA86F8(a1);
  }

  return v11;
}

uint64_t sub_1C1AFA5A0(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08878, &qword_1C1B9CED8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AFA88C();
  sub_1C1B95A18();
  LOBYTE(v10[0]) = 0;
  sub_1C1B944A8();
  sub_1C1AEF214(&unk_1EDE6C3B0, MEMORY[0x1E6968FB8]);
  sub_1C1B95788();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v10[0]) = 1;
  sub_1C1B95758();
  if (*(v3 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier))
  {
    [*(v3 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier) doubleValue];
  }

  LOBYTE(v10[0]) = 2;
  sub_1C1B95768();
  v10[0] = *(v3 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata);
  v11 = 3;
  sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
  sub_1C1AD0C9C(&qword_1EDE6BC00, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1C1B95788();
  sub_1C1B95738();
  sub_1C1B3BBE0(v10);
  sub_1C1AA86F8(v10);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1AFA88C()
{
  result = qword_1EBF08880;
  if (!qword_1EBF08880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08880);
  }

  return result;
}

uint64_t sub_1C1AFA8E0()
{
  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url);
}

id MobileRichAdInterfaceDefinitionTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MobileRichAdInterfaceDefinitionTapAction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MobileRichAdInterfaceDefinitionTapAction(uint64_t a1)
{
  result = qword_1EDE6BC68;
  if (!qword_1EDE6BC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1AFAA18(uint64_t a1)
{
  sub_1C1AEF0A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1AFAB10()
{
  result = qword_1EBF08888;
  if (!qword_1EBF08888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08888);
  }

  return result;
}

unint64_t sub_1C1AFAB68()
{
  result = qword_1EBF08890;
  if (!qword_1EBF08890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08890);
  }

  return result;
}

unint64_t sub_1C1AFABC0()
{
  result = qword_1EBF08898;
  if (!qword_1EBF08898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08898);
  }

  return result;
}

unint64_t sub_1C1AFAC14(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_1C1AFAC60(void *a1@<X0>, char **a2@<X8>)
{
  v2 = a1;
  v4 = [a1 backgroundColor];
  v38 = a2;
  if (v4 && (v5 = v4, v6 = [v4 lightModeColors], v5, v6))
  {
    sub_1C1AFB0AC();
    v7 = sub_1C1B94EC8();

    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v8; i = v2)
    {
      v9 = 0;
      v42 = v7 & 0xFFFFFFFFFFFFFF8;
      v44 = v7 & 0xC000000000000001;
      v10 = MEMORY[0x1E69E7CC0];
      v40 = v8;
      v11 = v7;
      while (1)
      {
        if (v44)
        {
          v12 = MEMORY[0x1C6907490](v9, v7);
        }

        else
        {
          if (v9 >= *(v42 + 16))
          {
            goto LABEL_19;
          }

          v12 = *(v7 + 8 * v9 + 32);
        }

        v13 = v12;
        v2 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v14 = [v12 red];
        v15 = [v13 blue];
        v16 = [v13 green];
        v17 = [v13 alpha];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C1ACDD20(0, *(v10 + 2) + 1, 1, v10);
        }

        v19 = *(v10 + 2);
        v18 = *(v10 + 3);
        if (v19 >= v18 >> 1)
        {
          v10 = sub_1C1ACDD20((v18 > 1), v19 + 1, 1, v10);
        }

        *(v10 + 2) = v19 + 1;
        v20 = &v10[16 * v19];
        v20[8] = v14;
        v20[9] = v15;
        v20[10] = v16;
        v20[11] = v17;
        ++v9;
        v7 = v11;
        if (v2 == v40)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v8 = sub_1C1B953A8();
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v2 = i;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v21 = [v2 backgroundColor];
  if (v21 && (v22 = v21, v23 = [v21 darkModeColors], v22, v23))
  {
    sub_1C1AFB0AC();
    v24 = sub_1C1B94EC8();

    if (v24 >> 62)
    {
      goto LABEL_42;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (j = v2; v25; j = v2)
    {
      v26 = 0;
      v43 = v24 & 0xFFFFFFFFFFFFFF8;
      v45 = v24 & 0xC000000000000001;
      v27 = MEMORY[0x1E69E7CC0];
      v39 = v25;
      v41 = v24;
      while (1)
      {
        if (v45)
        {
          v28 = MEMORY[0x1C6907490](v26, v24);
        }

        else
        {
          if (v26 >= *(v43 + 16))
          {
            goto LABEL_41;
          }

          v28 = *(v24 + 8 * v26 + 32);
        }

        v24 = v28;
        v2 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v29 = [v28 red];
        v30 = [v24 blue];
        v31 = [v24 green];
        v32 = [v24 alpha];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1C1ACDD20(0, *(v27 + 2) + 1, 1, v27);
        }

        v34 = *(v27 + 2);
        v33 = *(v27 + 3);
        if (v34 >= v33 >> 1)
        {
          v27 = sub_1C1ACDD20((v33 > 1), v34 + 1, 1, v27);
        }

        *(v27 + 2) = v34 + 1;
        v35 = &v27[16 * v34];
        v35[8] = v29;
        v35[9] = v30;
        v35[10] = v31;
        v35[11] = v32;
        ++v26;
        v24 = v41;
        if (v2 == v39)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v25 = sub_1C1B953A8();
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_44:
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  *v38 = v10;
  v38[1] = v27;
}

unint64_t sub_1C1AFB0AC()
{
  result = qword_1EBF088A8;
  if (!qword_1EBF088A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF088A8);
  }

  return result;
}

id sub_1C1AFB0F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C1AA7C14(0xD00000000000001ELL, 0x80000001C1BA86D0);
    if (*(a1 + 16))
    {
      sub_1C1AA7C14(0xD00000000000001CLL, 0x80000001C1BA86F0);
      if (*(a1 + 16))
      {
        sub_1C1AA7C14(0xD00000000000001ELL, 0x80000001C1BA8710);
        if (*(a1 + 16))
        {
          sub_1C1AA7C14(0xD00000000000001CLL, 0x80000001C1BA8730);
        }
      }
    }
  }

  v2 = type metadata accessor for DenylistReasonCharacteristic();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories;
  v5 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords;
  *&v3[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords] = v5;
  v7 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories;
  *&v3[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories] = v5;
  v8 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords;
  *&v3[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords] = v5;
  swift_beginAccess();
  *&v3[v4] = v5;
  swift_beginAccess();
  *&v3[v6] = v5;
  swift_beginAccess();
  *&v3[v7] = v5;

  swift_beginAccess();
  *&v3[v8] = v5;

  v10.receiver = v3;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t Context.registerDenylistEvaluator(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___APPCContext_denylistEvaluator);
  v4 = *(v2 + OBJC_IVAR___APPCContext_denylistEvaluator);
  v5 = *(v2 + OBJC_IVAR___APPCContext_denylistEvaluator + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_1C1AC0530(v4, v5);
}

uint64_t sub_1C1AFB3B4(unint64_t a1)
{
  v2 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_29:
    v3 = sub_1C1B953A8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = v1 + OBJC_IVAR___APPCContext_denylistEvaluator;
      v6 = v2 & 0xC000000000000001;
      v22 = v2;
      v23 = v2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v7 = MEMORY[0x1C6907490](v4, v2);
        }

        else
        {
          if (v4 >= *(v23 + 16))
          {
            goto LABEL_28;
          }

          v7 = *(v2 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v10 = OBJC_IVAR___APPCPromotedContent_metaData;
        swift_beginAccess();
        if (*&v8[v10])
        {

          v12 = sub_1C1AFB0F8(v11);

          v13 = *v5;
          if (*v5)
          {
            v14 = v3;
            v15 = v6;
            v16 = v5;
            v17 = *(v5 + 1);

            v18 = v13(v12);
            sub_1C1AC0530(v13, v17);
            if (v18 > 1)
            {
              if (v18 == 4)
              {
                v19 = 2604;
                v5 = v16;
              }

              else
              {
                v5 = v16;
                if (v18 != 3)
                {
                  v6 = v15;
                  v3 = v14;
                  v2 = v22;
                  if (v18 != 2)
                  {
LABEL_32:
                    result = sub_1C1B958C8();
                    __break(1u);
                    return result;
                  }

                  v19 = 2602;
                  goto LABEL_24;
                }

                v19 = 2603;
              }

              v6 = v15;
              v3 = v14;
              v2 = v22;
LABEL_24:
              swift_beginAccess();
              [swift_unknownObjectRetain() discardedWithCode_];
              swift_unknownObjectRelease();

              v20 = &v8[OBJC_IVAR___APPCPromotedContent_discardReason];
              swift_beginAccess();
              *v20 = v19;
              v20[8] = 0;
              v1 = OBJC_IVAR___APPCPromotedContent_discarded;
              swift_beginAccess();
              *(v1 + v8) = 1;

              goto LABEL_6;
            }

            v5 = v16;
            v6 = v15;
            v3 = v14;
            v2 = v22;
            if (v18)
            {
              if (v18 != 1)
              {
                goto LABEL_32;
              }

              v19 = 2601;
              goto LABEL_24;
            }
          }
        }

        v1 = &v24;
        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
LABEL_6:
        ++v4;
        if (v9 == v3)
        {
          return v24;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1AFB6A4(void *a1)
{
  v2 = [a1 frequencyCapData];
  v3 = sub_1C1B3A42C([v2 relevantIdentifier]);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  result = [v2 value];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  result = [v2 duration];
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = objc_allocWithZone(type metadata accessor for FrequencyCapData());
  v10 = sub_1C1B391FC(v5, v7, v8);

  v11 = [a1 policyData];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C1AEE2C0(v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 rawAdType];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1C1B94D88();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [a1 rawAdFormatType];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1C1B94D88();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = type metadata accessor for AdPolicyData();
  v25 = objc_allocWithZone(v24);
  v26 = &v25[OBJC_IVAR___APPCAdPolicyData_rawAdType];
  *v26 = v16;
  v26[1] = v18;
  v27 = &v25[OBJC_IVAR___APPCAdPolicyData_rawAdFormatType];
  *v27 = v21;
  v27[1] = v23;
  *&v25[OBJC_IVAR___APPCAdPolicyData_frequencyCapData] = v10;
  *&v25[OBJC_IVAR___APPCAdPolicyData_policyData] = v13;
  v31.receiver = v25;
  v31.super_class = v24;
  v28 = v10;
  v29 = v13;
  v30 = objc_msgSendSuper2(&v31, sel_init);

  return v30;
}

uint64_t VideoQuality.description.getter(uint64_t a1)
{
  if (a1 > 80001)
  {
    if (a1 != 80002)
    {
      if (a1 == 80003)
      {
        return 1919905648;
      }

      return 0x6E776F6E6B6E75;
    }

    return 7827308;
  }

  else
  {
    if (a1 != 80000)
    {
      if (a1 == 80001)
      {
        return 6580589;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1751607656;
  }
}

uint64_t sub_1C1AFB980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1AFBA64(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1AFBA64(uint64_t result)
{
  if ((result - 80000) >= 4 && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1AFBA88()
{
  result = qword_1EBF088B0;
  if (!qword_1EBF088B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF088B0);
  }

  return result;
}

unint64_t sub_1C1AFBAEC()
{
  result = qword_1EBF088B8;
  if (!qword_1EBF088B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF088B8);
  }

  return result;
}

uint64_t sub_1C1AFBB40(double a1)
{
  if (a1 >= 2200.0)
  {
    v1 = 80000;
  }

  else
  {
    v1 = 0;
  }

  if (a1 < 2200.0)
  {
    v2 = 80001;
  }

  else
  {
    v2 = v1;
  }

  if (a1 < 1200.0)
  {
    v2 = 80002;
  }

  if (a1 >= 600.0)
  {
    return v2;
  }

  else
  {
    return 80003;
  }
}

uint64_t APContentData.promotedContentUnfilledReason.getter()
{
  result = sub_1C1B87B74([v0 serverUnfilledReason]);
  if (v2)
  {
    return 1049;
  }

  return result;
}

uint64_t sub_1C1AFBC08()
{
  result = sub_1C1B87B74([*v0 serverUnfilledReason]);
  if (v2)
  {
    return 1049;
  }

  return result;
}

unint64_t sub_1C1AFBC84()
{
  result = qword_1EBF088C0;
  if (!qword_1EBF088C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF088C0);
  }

  return result;
}

uint64_t sub_1C1AFBCD8()
{
  sub_1C1B95958();
  MEMORY[0x1C6907960](5442);
  return sub_1C1B959A8();
}

uint64_t sub_1C1AFBD44(uint64_t a1)
{
  sub_1C1B95958();
  MEMORY[0x1C6907960](5442);
  return sub_1C1B959A8();
}

void *PromotableContent.hasSuitableRepresentation(type:size:placeholderIdentifier:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, double a5, double a6)
{
  v44 = sub_1C1B95138();
  sub_1C1AC53E4();
  v11 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1B9C9C0;
  v13 = [v6 identifier];
  v14 = sub_1C1B94D88();
  v16 = v15;

  v17 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1C1AA5E7C();
  v19 = v18;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  *(v12 + 96) = v17;
  *(v12 + 104) = v18;
  if (a3)
  {
    v20 = a2;
  }

  else
  {
    v20 = 1701736270;
  }

  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  *(v12 + 64) = v18;
  *(v12 + 72) = v20;
  *(v12 + 80) = v21;
  v22 = v6;

  v23 = PlacementType.stringValue.getter(a1);
  *(v12 + 136) = v17;
  *(v12 + 144) = v19;
  *(v12 + 112) = v23;
  *(v12 + 120) = v24;
  v25 = MEMORY[0x1E69E7DE0];
  *(v12 + 176) = MEMORY[0x1E69E7DE0];
  v26 = sub_1C1AFC370();
  *(v12 + 184) = v26;
  *(v12 + 152) = a5;
  *(v12 + 216) = v25;
  *(v12 + 224) = v26;
  *(v12 + 192) = a6;
  sub_1C1B94BA8(v44, &dword_1C1AA2000, v11, "[PC] PC: (%{public}@) Trying to find a rep to replace placeholder with id: %{public}@ with type %{public}@, width %{public}g, height %{public}g", 143, 2, v12);

  v27 = a1;
  if (PlacementType.isSuitableReplacement(for:)(a1, [v6 adType]))
  {
    return sub_1C1AFC3C4(a4, a5, a6);
  }

  v45 = sub_1C1B95138();
  v42 = sub_1C1B95298();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C1B9D2F0;
  v30 = [v6 identifier];
  v31 = v20;
  v32 = sub_1C1B94D88();
  v33 = v21;
  v35 = v34;

  v36 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = v19;
  *(v29 + 32) = v32;
  *(v29 + 40) = v35;
  v37 = PlacementType.stringValue.getter(v27);
  *(v29 + 96) = v36;
  *(v29 + 104) = v19;
  *(v29 + 72) = v37;
  *(v29 + 80) = v38;
  v39 = PlacementType.stringValue.getter([v22 &selRef_context + 1]);
  *(v29 + 136) = v36;
  *(v29 + 144) = v19;
  *(v29 + 112) = v39;
  *(v29 + 120) = v40;
  *(v29 + 176) = v36;
  *(v29 + 184) = v19;
  *(v29 + 152) = v31;
  *(v29 + 160) = v33;

  sub_1C1B94BA8(v45, &dword_1C1AA2000, v42, "[PC] PC: (%{public}@) Ad Type (%{public}@) doesn't match requested type (%{public}@) when trying to replace placeholder with id (%{public}@)", 140, 2, v29);

  return 0;
}

unint64_t sub_1C1AFC370()
{
  result = qword_1EDE6C888;
  if (!qword_1EDE6C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C888);
  }

  return result;
}

void *sub_1C1AFC3C4(unint64_t a1, double a2, double a3)
{
  v7 = v3;
  v11 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v61 - v12;
  v14 = &selRef_hash;
  if ([v3 serverUnfilledReason] != 200)
  {
LABEL_4:
    v16 = [v3 representations];
    sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    a1 = sub_1C1B94EC8();

    if (a1 >> 62)
    {
      if (sub_1C1B953A8())
      {
        goto LABEL_6;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1C6907490](0, a1);
        goto LABEL_9;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(a1 + 32);
        swift_unknownObjectRetain();
LABEL_9:

LABEL_46:
        [v7 serverUnfilledReason];
        return v17;
      }

      __break(1u);
LABEL_50:
      if (!sub_1C1B953A8())
      {
        goto LABEL_51;
      }

LABEL_34:
      if ((v16 & 0xC000000000000001) != 0)
      {
        goto LABEL_91;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v16 + 32);
        swift_unknownObjectRetain();
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_93;
    }

    v17 = 0;
    goto LABEL_46;
  }

  v15 = [v3 error];
  if (v15)
  {

    goto LABEL_4;
  }

  v18 = [v3 adType];
  if (v18 > 3)
  {
    if (v18 <= 5)
    {
      if (v18 != 4)
      {
LABEL_31:
        if (v18 != 5)
        {
          goto LABEL_119;
        }

        goto LABEL_32;
      }
    }

    else if (v18 != 6)
    {
      if (v18 != 7)
      {
        if (v18 == 8)
        {
          v19 = sub_1C1B95128();
          sub_1C1AC53E4();
          v20 = sub_1C1B95298();
          sub_1C1B94BA8(v19, &dword_1C1AA2000, v20, "Trying to compute representation for SRP wich is not supported.", 63, 2, MEMORY[0x1E69E7CC0]);

          return 0;
        }

        goto LABEL_119;
      }

      goto LABEL_32;
    }

    v24 = [v3 representations];
    sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    v7 = sub_1C1B94EC8();

    if (v7 >> 62)
    {
      v18 = sub_1C1B953A8();
      if (!v18)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_99;
      }
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_95;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      v17 = *(v7 + 32);
      swift_unknownObjectRetain();
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v18 >= 3)
  {
    if (v18 != 3)
    {
      goto LABEL_119;
    }

    v4 = &selRef_hash;
    v13 = [v3 representations];
    v16 = sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    v14 = sub_1C1B94EC8();

    if (!(v14 >> 62))
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_105:

        goto LABEL_106;
      }

LABEL_20:
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6907490](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_109;
        }

        swift_unknownObjectRetain();
      }

      v65 = &unk_1F415F4B8;
      v21 = swift_dynamicCastObjCProtocolConditional();
      swift_unknownObjectRelease();
      if (v21)
      {
        v22 = [v7 v4[23]];
        v23 = sub_1C1B94EC8();

        v17 = sub_1C1AFD12C(v23, a1);
LABEL_43:

        return v17;
      }

LABEL_106:
      v58 = sub_1C1B95128();
      sub_1C1AC53E4();
      v59 = sub_1C1B95298();
      sub_1C1B94BA8(v58, &dword_1C1AA2000, v59, "Error: Video representation must conform to PromotableVideoRepresentation protocol.", 83, 2, MEMORY[0x1E69E7CC0]);

      return 0;
    }

LABEL_104:
    if (!sub_1C1B953A8())
    {
      goto LABEL_105;
    }

    goto LABEL_20;
  }

LABEL_32:
  v5 = &selRef_hash;
  v4 = [v7 representations];
  v14 = sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
  v16 = sub_1C1B94EC8();

  if (v16 >> 62)
  {
    goto LABEL_50;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_51:

  do
  {
    v27 = [v7 *(v5 + 184)];
    v4 = sub_1C1B94EC8();

    v16 = sub_1C1AFDB5C(v4, a1, a2, a3);

    if (v16 >> 62)
    {
LABEL_93:
      v5 = sub_1C1B953A8();
      if (!v5)
      {
LABEL_94:

        v51 = sub_1C1B95138();
        sub_1C1AC53E4();
        v52 = sub_1C1B95298();
        sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1C1B98E60;
        v54 = [v7 identifier];
        v55 = sub_1C1B94D88();
        v57 = v56;

        *(v53 + 56) = MEMORY[0x1E69E6158];
        *(v53 + 64) = sub_1C1AA5E7C();
        *(v53 + 32) = v55;
        *(v53 + 40) = v57;
        sub_1C1B94BA8(v51, &dword_1C1AA2000, v52, "[PC] No representations had a vaild size for %{public}@", 55, 2, v53);

        return 0;
      }
    }

    else
    {
      v5 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_94;
      }
    }

    v6 = v16 & 0xC000000000000001;
    v63 = v14;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1C6907490](0, v16);
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v28 = *(v16 + 32);
      swift_unknownObjectRetain();
    }

    v62 = a1;
    if (v5 == 1)
    {
LABEL_58:
      v29 = v28;
LABEL_59:
      v5 = sub_1C1AF5F58(v16);

      if (v5)
      {
        if ([v7 isOutstreamVideoAd])
        {
          LODWORD(v64) = sub_1C1B95108();
          sub_1C1AC53E4();
          a1 = sub_1C1B95298();
          sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_1C1B9AF30;
          v30 = [v7 identifier];
          v31 = sub_1C1B94D88();
          v33 = v32;

          *(v6 + 56) = MEMORY[0x1E69E6158];
          v14 = sub_1C1AA5E7C();
          *(v6 + 64) = v14;
          *(v6 + 32) = v31;
          *(v6 + 40) = v33;
          v34 = [v7 representations];
          v16 = sub_1C1B94EC8();

          if (!(v16 >> 62))
          {
            v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v18)
            {
LABEL_63:
              if ((v16 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1C6907490](0, v16);
LABEL_66:
                v35 = a1;

                type metadata accessor for BannerRepresentation(0);
                v36 = swift_dynamicCastClass();
                if (v36)
                {
                  v37 = *(v36 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
                  v38 = v37;
                  swift_unknownObjectRelease();
                  if (v37)
                  {
                    sub_1C1AC5430(v38 + OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL, v13);

                    v39 = sub_1C1B944A8();
                    v40 = *(v39 - 8);
                    if ((*(v40 + 48))(v13, 1, v39) != 1)
                    {
                      v61 = sub_1C1B94468();
                      v47 = v46;
                      (*(v40 + 8))(v13, v39);
                      v48 = (v6 + 72);
                      *(v6 + 96) = MEMORY[0x1E69E6158];
                      *(v6 + 104) = v14;
                      if (v47)
                      {
                        v49 = v62;
                        *v48 = v61;
                        v50 = v64;
LABEL_113:
                        *(v6 + 80) = v47;
                        sub_1C1B94BA8(v50, &dword_1C1AA2000, v35, "%{public}@ is an outstream video ad with asset URL %{public}@.", 62, 2, v6);

                        if (v5 >> 62)
                        {
                          v60 = sub_1C1B95578();
                        }

                        else
                        {
                          sub_1C1B95898();
                          v60 = v5;
                        }

                        v17 = sub_1C1AFD12C(v60, v49);

                        swift_unknownObjectRelease();
                        return v17;
                      }

LABEL_112:
                      v49 = v62;
                      v50 = v64;
                      *v48 = 4271950;
                      v47 = 0xE300000000000000;
                      goto LABEL_113;
                    }

                    sub_1C1AA7C8C(v13, &qword_1EBF07AC8, &qword_1C1B9CED0);
                  }
                }

                else
                {
                  swift_unknownObjectRelease();
                }

LABEL_111:
                v48 = (v6 + 72);
                *(v6 + 96) = MEMORY[0x1E69E6158];
                *(v6 + 104) = v14;
                goto LABEL_112;
              }

              if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                swift_unknownObjectRetain();
                goto LABEL_66;
              }

              __break(1u);
LABEL_119:
              v66 = v18;
              result = sub_1C1B958C8();
              __break(1u);
              return result;
            }

LABEL_110:
            v35 = a1;

            goto LABEL_111;
          }

LABEL_109:
          v18 = sub_1C1B953A8();
          if (v18)
          {
            goto LABEL_63;
          }

          goto LABEL_110;
        }
      }

      return v29;
    }

    v64 = v16 & 0xFFFFFFFFFFFFFF8;
    v41 = 1;
    a1 = &selRef_hash;
    while (v6)
    {
      v29 = MEMORY[0x1C6907490](v41, v16);
      v14 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_88;
      }

LABEL_79:
      [v28 adSize];
      a3 = v42;
      [v29 adSize];
      if (a3 > v43 || ([v28 adSize], a3 = v44, objc_msgSend(v29, sel_adSize), a3 > v45))
      {
        swift_unknownObjectRelease();
        ++v41;
        if (v14 == v5)
        {
          goto LABEL_58;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v28 = v29;
        v41 = v14;
        if (v14 == v5)
        {
          goto LABEL_59;
        }
      }
    }

    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_89;
    }

    if (v41 >= *(v64 + 16))
    {
      goto LABEL_90;
    }

    v29 = *(v16 + 8 * v41 + 32);
    swift_unknownObjectRetain();
    v14 = v41 + 1;
    if (!__OFADD__(v41, 1))
    {
      goto LABEL_79;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    v4 = MEMORY[0x1C6907490](0, v16);
LABEL_37:

    type metadata accessor for ClientLayoutRepresentation(0);
    v25 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
  }

  while (!v25);
  v16 = [v7 *(v5 + 184)];
  v7 = sub_1C1B94EC8();

  if (v7 >> 62)
  {
    if (!sub_1C1B953A8())
    {
      goto LABEL_99;
    }

LABEL_40:
    if ((v7 & 0xC000000000000001) == 0)
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      goto LABEL_103;
    }

LABEL_95:
    v17 = MEMORY[0x1C6907490](0, v7);
    goto LABEL_43;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_99:

  return 0;
}