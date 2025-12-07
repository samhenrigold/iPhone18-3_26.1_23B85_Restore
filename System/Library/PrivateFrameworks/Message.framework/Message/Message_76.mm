uint64_t getEnumTagSinglePayload for Action.UnreadCountOutsideWindowOfInterest(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 26))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Action.UnreadCountOutsideWindowOfInterest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 26) = v3;
  return result;
}

uint64_t sub_1B0CBE4AC(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0CBE4C8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 25) = 1;
  }

  else
  {
    *(result + 25) = 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Action.FetchedWindowUpdate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B0CBE54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CBE5B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Activity.MailboxStatus.Info.fetch.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t Activity.MailboxStatus.Info.FetchProgress.total.getter(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t static Activity.MailboxStatus.Info.__derived_struct_equals(_:_:)(int a1, uint64_t a2, uint64_t a3, __int16 a4, int a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if ((a1 ^ a5))
  {
    return 0;
  }

  if (a4)
  {
    if ((a8 & 1) == 0)
    {
      return 0;
    }

    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  result = 0;
  if ((a8 & 1) == 0 && a2 == a6 && a3 == a7)
  {
    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_1B0CBE7A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[25];
  if (a1[24])
  {
    if (!a2[24])
    {
      return 0;
    }

    return v3 ^ a2[25] ^ 1u;
  }

  result = 0;
  if ((a2[24] & 1) == 0)
  {
    v5 = *(a1 + 1);
    v6 = *(a1 + 2);
    if (v5 == *(a2 + 1) && v6 == *(a2 + 2))
    {
      return v3 ^ a2[25] ^ 1u;
    }
  }

  return result;
}

uint64_t Activity.MailboxStatus.isSelectedAndInSync.getter()
{
  v1 = type metadata accessor for Activity.MailboxStatus(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B04166B0(v0, v3, type metadata accessor for Activity.MailboxStatus);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B0416AA0(v3, type metadata accessor for Activity.MailboxStatus);
  }

  else if ((*v3 & 1) == 0)
  {
    v4 = (v3[24] | (*(v3 + 1) == 0)) & (v3[25] ^ 1);
    return v4 & 1;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t Activity.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ConnectionStatus.Error(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Activity.MailboxStatus(0);
  v12 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = v3;
  v19 = *v3;
  if (*(v19 + 16))
  {
    v20 = sub_1B03B8A9C(a1, v32);
    if (v21)
    {
      sub_1B04166B0(*(v19 + 56) + *(v12 + 72) * v20, v14, type metadata accessor for Activity.MailboxStatus);
      sub_1B0CC0084(v14, v17, type metadata accessor for Activity.MailboxStatus);
      v22 = v31;
      sub_1B0CC0084(v17, v31, type metadata accessor for Activity.MailboxStatus);
      v23 = 0;
LABEL_10:
      v27 = v30;
      return (*(v12 + 56))(v22, v23, 1, v27);
    }
  }

  v24 = v32;
  v25 = type metadata accessor for Activity(0);
  sub_1B03B5C80(v18 + *(v25 + 24), v7, &qword_1EB6E35A0, &qword_1B0E99850);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B0398EFC(v7, &qword_1EB6E35A0, &qword_1B0E99850);
    v26 = sub_1B0A93330(a1, v24, v18[1]);
    v22 = v31;
    if ((v26 & 1) == 0)
    {
      v23 = 1;
      goto LABEL_10;
    }

    v27 = v30;
  }

  else
  {
    sub_1B0CC0084(v7, v11, type metadata accessor for ConnectionStatus.Error);
    v22 = v31;
    sub_1B0CC0084(v11, v31, type metadata accessor for ConnectionStatus.Error);
    v27 = v30;
  }

  swift_storeEnumTagMultiPayload();
  v23 = 0;
  return (*(v12 + 56))(v22, v23, 1, v27);
}

uint64_t Activity.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for Activity.MailboxStatus(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03B5C80(a1, v10, &qword_1EB6E1668, &qword_1B0E99858);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B0398EFC(v10, &qword_1EB6E1668, &qword_1B0E99858);
    (*(v12 + 56))(v7, 1, 1, v11);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = v18;
    sub_1B0CBEEE8(v7, a2, v18);
    sub_1B0B9397C(a2, v15);

    return sub_1B0398EFC(a1, &qword_1EB6E1668, &qword_1B0E99858);
  }

  else
  {
    sub_1B0CC0084(v10, v14, type metadata accessor for Activity.MailboxStatus);
    sub_1B04166B0(v14, v7, type metadata accessor for Activity.MailboxStatus);
    (*(v12 + 56))(v7, 0, 1, v11);
    sub_1B0CBEEE8(v7, a2, v18);
    sub_1B0398EFC(a1, &qword_1EB6E1668, &qword_1B0E99858);
    return sub_1B0416AA0(v14, type metadata accessor for Activity.MailboxStatus);
  }
}

uint64_t sub_1B0CBEEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Activity.MailboxStatus(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1B0398EFC(a1, &qword_1EB6E1668, &qword_1B0E99858);
    sub_1B0CBF56C(a2, a3, v9);

    return sub_1B0398EFC(v9, &qword_1EB6E1668, &qword_1B0E99858);
  }

  else
  {
    sub_1B0CC0084(a1, v13, type metadata accessor for Activity.MailboxStatus);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1B0CBFC1C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

void (*Activity.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858) - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[4] = v11;
  Activity.subscript.getter(a2, a3, v11);
  return sub_1B0CBF1BC;
}

void sub_1B0CBF1BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = **a1;
  if (a2)
  {
    sub_1B03B5C80((*a1)[4], v3, &qword_1EB6E1668, &qword_1B0E99858);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    Activity.subscript.setter(v3, v6, v5);
    sub_1B0398EFC(v4, &qword_1EB6E1668, &qword_1B0E99858);
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    Activity.subscript.setter(v4, v6, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B0CBF290(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B019E4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CBF394(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v13 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(v2 + 48) + ((v9 << 9) | (8 * v10)));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CC91C4(&v12, v11);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v13;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0CBF490(uint64_t a1)
{
  v1 = a1;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  v2 = sub_1B0E46CB8();

  return sub_1B0CBF4FC(v1, v2);
}

unint64_t sub_1B0CBF4FC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B0CBF56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B03B8A9C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B0CBFE2C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Activity.MailboxStatus(0);
    v19 = *(v12 - 8);
    sub_1B0CC0084(v11 + *(v19 + 72) * v8, a3, type metadata accessor for Activity.MailboxStatus);
    sub_1B0CBFA48(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Activity.MailboxStatus(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1B0CBF6D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Activity.MailboxStatus(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60C0, &qword_1B0EE0F88);
  v40 = v4;
  result = sub_1B0E46698();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1B0CC0084(v28, v41, type metadata accessor for Activity.MailboxStatus);
      }

      else
      {
        sub_1B04166B0(v28, v41, type metadata accessor for Activity.MailboxStatus);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v26);
      result = sub_1B0E46CB8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1B0CC0084(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Activity.MailboxStatus);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_1B0CBFA48(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B0E460C8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v9);
      result = sub_1B0E46CB8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Activity.MailboxStatus(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B0CBFC1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B03B8A9C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1B0CBFE2C();
      goto LABEL_7;
    }

    sub_1B0CBF6D8(v15, a4 & 1);
    v21 = sub_1B03B8A9C(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1B0E46BA8();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for Activity.MailboxStatus(0) - 8) + 72) * v12;

    sub_1B0CC0454(a1, v20);
    return;
  }

LABEL_13:
  sub_1B0CBFD80(v12, a2, a3, a1, v18);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0CBFD80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Activity.MailboxStatus(0);
  result = sub_1B0CC0084(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Activity.MailboxStatus);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1B0CBFE2C()
{
  v1 = v0;
  v2 = type metadata accessor for Activity.MailboxStatus(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E60C0, &qword_1B0EE0F88);
  v4 = *v0;
  v5 = sub_1B0E46688();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v24 = *v22;
        v23 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1B04166B0(*(v4 + 56) + v26, v30, type metadata accessor for Activity.MailboxStatus);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v24;
        v28[1] = v23;
        sub_1B0CC0084(v25, *(v27 + 56) + v26, type metadata accessor for Activity.MailboxStatus);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

uint64_t sub_1B0CC0084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B0CC00EC(uint64_t a1)
{
  sub_1B0CC0188(319);
  if (v1 <= 0x3F)
  {
    sub_1B0CC01F4(319);
    if (v2 <= 0x3F)
    {
      sub_1B0CC0250(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0CC0188(uint64_t a1)
{
  if (!qword_1EB6DB768)
  {
    type metadata accessor for Activity.MailboxStatus(255);
    sub_1B03B8BD8();
    v1 = sub_1B0E44708();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB768);
    }
  }
}

void sub_1B0CC01F4(uint64_t a1)
{
  if (!qword_1EB6DAD48)
  {
    sub_1B03B8BD8();
    v1 = sub_1B0E45588();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DAD48);
    }
  }
}

void sub_1B0CC0250(uint64_t a1)
{
  if (!qword_1EB6DCAC8)
  {
    type metadata accessor for ConnectionStatus.Error(255);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DCAC8);
    }
  }
}

uint64_t sub_1B0CC02A8(uint64_t a1)
{
  result = type metadata accessor for ConnectionStatus.Error(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0CC0314(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[26])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0CC0368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B0CC03D0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      v5 = *(v3 - 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(&v7, v5, v4);

      v3 += 4;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1B0CC0454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity.MailboxStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Configuration.logName.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t Configuration.logName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Configuration.connection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Configuration(0) + 20);

  return sub_1B06D9758(v3, a1);
}

uint64_t type metadata accessor for Configuration(uint64_t a1)
{
  result = qword_1EB6DCC88;
  if (!qword_1EB6DCC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Configuration.connection.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Configuration(0) + 20);

  return sub_1B0CC0674(a1, v3);
}

uint64_t sub_1B0CC0674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Configuration.mailboxFilter.setter(char a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 24)) = a1 & 1;
  return result;
}

uint64_t Configuration.fetchedMessageMetadata.setter(char a1)
{
  result = type metadata accessor for Configuration(0);
  *(v1 + *(result + 28)) = a1 & 1;
  return result;
}

void Configuration.init(logName:connection:mailboxFilter:fetchedMessageMetadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for Configuration(0);
  sub_1B06D95C4(a3, a6 + v10[5]);
  *(a6 + v10[6]) = a4 & 1;
  *(a6 + v10[7]) = a5 & 1;
}

unint64_t sub_1B0CC0914()
{
  result = qword_1EB6E60F0;
  if (!qword_1EB6E60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E60F0);
  }

  return result;
}

unint64_t sub_1B0CC096C()
{
  result = qword_1EB6E60F8;
  if (!qword_1EB6E60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E60F8);
  }

  return result;
}

uint64_t sub_1B0CC09E8(uint64_t a1)
{
  result = type metadata accessor for ConnectionConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ConnectionConfiguration.sourceApplicationKind.setter(char a1)
{
  result = type metadata accessor for ConnectionConfiguration(0);
  *(v1 + *(result + 36)) = a1 & 1;
  return result;
}

uint64_t ConnectionConfiguration.init(transportLayerSecurity:transportLayerSecurityOptions:endpoint:prohibitConstrainedPaths:prohibitedInterfaceTypes:sourceApplicationBundleIdentifier:sourceApplicationKind:networkAccountIdentifier:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{

  v15 = type metadata accessor for ConnectionConfiguration(0);
  v16 = (a8 + v15[8]);
  v17 = (a8 + v15[10]);
  v18 = v15[6];
  *(a8 + v15[7]) = a1;
  v19 = sub_1B0E43BC8();
  result = (*(*(v19 - 8) + 32))(a8, a2, v19);
  *(a8 + v15[5]) = a3;
  *(a8 + v18) = a4;
  *v16 = a5;
  v16[1] = a6;
  *(a8 + v15[9]) = a7 & 1;
  *v17 = a9;
  v17[1] = a10;
  return result;
}

uint64_t CertificateTrust.Policy.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

unint64_t CertificateTrust.Policy.description.getter(unsigned __int8 a1)
{
  result = 0xD000000000000013;
  if (a1 >= 2u)
  {
    return 0xD000000000000011;
  }

  return result;
}

unint64_t sub_1B0CC1288()
{
  result = qword_1EB6E6100;
  if (!qword_1EB6E6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6100);
  }

  return result;
}

unint64_t sub_1B0CC12E0()
{
  result = qword_1EB6E6108;
  if (!qword_1EB6E6108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6108);
  }

  return result;
}

void sub_1B0CC1364(uint64_t a1)
{
  sub_1B0E43BC8();
  if (v1 <= 0x3F)
  {
    sub_1B0BEBCCC(319);
    if (v2 <= 0x3F)
    {
      sub_1B07CEB70(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B0CC1470(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s16IMAP2Persistence11CredentialsO21__derived_enum_equalsySbAC_ACtFZ_0(v8, v9) & 1;
}

uint64_t CredentialsRequestID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t _s16IMAP2Persistence11CredentialsO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[7];
  v8 = a1[9];
  v9 = (v8 >> 59) & 6 | ((v7 & 0x2000000000000000) != 0);
  if (v9 <= 1)
  {
    if (v9)
    {
      v21 = a2[7];
      v22 = a2[9];
      if (((v22 >> 59) & 6 | ((v21 & 0x2000000000000000) != 0)) != 1)
      {
        return 0;
      }

      v31 = a1[5];
      v32 = a1[4];
      v23 = a2[2];
      v24 = a2[3];
      v25 = a2[4];
      v26 = a2[5];
      v29 = a2[6];
      v30 = a1[6];
      v27 = a2[8];
      v28 = a1[8];
      if (!sub_1B0AB8858(v3, v4, *a2, a2[1]) || !sub_1B0AB8858(v5, v6, v23, v24) || !sub_1B0AB8858(v32, v31, v25, v26) || !sub_1B0AB8858(v30, v7 & 0xDFFFFFFFFFFFFFFFLL, v29, v21 & 0xDFFFFFFFFFFFFFFFLL))
      {
        return 0;
      }

      v15 = v8 & 0xCFFFFFFFFFFFFFFFLL;
      v17 = v22 & 0xCFFFFFFFFFFFFFFFLL;
      v16 = v27;
      v3 = v28;
    }

    else
    {
      if ((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0))
      {
        return 0;
      }

      v13 = a2[2];
      v14 = a2[3];
      if (!sub_1B0AB8858(v3, v4, *a2, a2[1]))
      {
        return 0;
      }

      v3 = v5;
      v15 = v6;
      v16 = v13;
      v17 = v14;
    }
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) == 3)
        {
          if (v10 = a2[2], v11 = a2[3], v3 == *a2) && v4 == a2[1] || (sub_1B0E46A78())
          {
            if (v5 != v10 || v6 != v11)
            {

              return sub_1B0E46A78();
            }

            return 1;
          }
        }
      }

      else
      {
        v18 = a2[7];
        v19 = a2[9];
        if (((v19 >> 59) & 6 | ((v18 & 0x2000000000000000) != 0)) == 4 && v19 == 0x2000000000000000)
        {
          v20 = vorrq_s8(*(a2 + 3), *(a2 + 5));
          if (!(*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | a2[8] | a2[2] | a2[1] | *a2 | v18))
          {
            return 1;
          }
        }
      }

      return 0;
    }

    if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 2)
    {
      return 0;
    }

    v16 = *a2;
    v17 = a2[1];
    v15 = a1[1];
  }

  return sub_1B0AB8858(v3, v15, v16, v17);
}

unint64_t sub_1B0CC1830()
{
  result = qword_1EB6E6110;
  if (!qword_1EB6E6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6110);
  }

  return result;
}

uint64_t sub_1B0CC1884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 80))
  {
    return (*a1 + 60);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x3B)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1B0CC18F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1B0CC1978(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v3 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 60);
    *(result + 40) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 56) = v2;
    *(result + 72) = v3;
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0x2000000000000000;
  }

  return result;
}

ValueMetadata *type metadata accessor for Credentials()
{
  return &type metadata for Credentials;
}

{
  return &type metadata for Credentials;
}

IMAP2Persistence::DownloadPass_optional __swiftcall DownloadPass.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1B0E467E8();

  if (v1 == 1)
  {
    v2.value = IMAP2Persistence_DownloadPass_second;
  }

  else
  {
    v2.value = IMAP2Persistence_DownloadPass_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t DownloadPass.rawValue.getter(char a1)
{
  if (a1)
  {
    return 6581810;
  }

  else
  {
    return 7631665;
  }
}

uint64_t sub_1B0CC1AFC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6581810;
  }

  else
  {
    v2 = 7631665;
  }

  if (*a2)
  {
    v3 = 6581810;
  }

  else
  {
    v3 = 7631665;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B0E46A78();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1B0CC1B78()
{
  result = qword_1EB6E6118;
  if (!qword_1EB6E6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6118);
  }

  return result;
}

uint64_t sub_1B0CC1BCC()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC1C34(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0CC1C80(uint64_t a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC1CE4@<X0>(char *a2@<X8>)
{
  v3 = sub_1B0E467E8();

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

void sub_1B0CC1D44(uint64_t *a1@<X8>)
{
  v2 = 7631665;
  if (*v1)
  {
    v2 = 6581810;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

unint64_t sub_1B0CC1D70()
{
  result = qword_1EB6E6120;
  if (!qword_1EB6E6120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6128, &qword_1B0EE2370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6120);
  }

  return result;
}

uint64_t DownloadRequest.mailbox.setter(uint64_t a1, int a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t DownloadRequest.message.getter()
{
  v1 = *(v0 + 24);
  sub_1B03B2000(v1, *(v0 + 32));
  return v1;
}

uint64_t DownloadRequest.message.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B0391D50(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DownloadRequest.kind.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t DownloadRequest.init(id:mailbox:message:kind:qos:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t static DownloadRequest.Kind.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(a1, a2);
    }

    return 0;
  }

  return !a2;
}

BOOL sub_1B0CC2018(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s16IMAP2Persistence15DownloadRequestV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t sub_1B0CC2074(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t DownloadRequest.QoS.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t static DownloadRequest.QoS.current()()
{
  HIDWORD(v0) = qos_class_self() - 9;
  LODWORD(v0) = HIDWORD(v0);
  v1 = 0x4020302010200uLL >> (8 * (v0 >> 2));
  if ((v0 >> 2) >= 7)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

IMAP2Persistence::DownloadRequest::QoS_optional __swiftcall DownloadRequest.QoS.init(_:)(qos_class_t a1)
{
  HIDWORD(v1) = a1 - 9;
  LODWORD(v1) = a1 - 9;
  v2 = 0x4050302010500uLL >> (8 * (v1 >> 2));
  if ((v1 >> 2) >= 7)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t DownloadRequest.ID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

BOOL _s16IMAP2Persistence15DownloadRequestV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (*(a1 + 16) | (*(a1 + 16) << 32)) != (*(a2 + 16) | (*(a2 + 16) << 32)))
  {
    return 0;
  }

  if ((sub_1B04520BC(*(a1 + 8), *(a2 + 8)) & 1) != 0 && sub_1B0AB8858(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
  {
    v4 = *(a1 + 40);
    v5 = *(a2 + 40);
    if (v4)
    {
      if (v5)
      {
        v6 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v4, v5);
        v7 = a2;
        v8 = a1;
        if (v6)
        {
          return *(v8 + 48) == *(v7 + 48);
        }
      }
    }

    else
    {
      v8 = a1;
      v7 = a2;
      if (!v5)
      {
        return *(v8 + 48) == *(v7 + 48);
      }
    }
  }

  return 0;
}

unint64_t sub_1B0CC2418()
{
  result = qword_1EB6E6130;
  if (!qword_1EB6E6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6130);
  }

  return result;
}

unint64_t sub_1B0CC2470()
{
  result = qword_1EB6DCC40;
  if (!qword_1EB6DCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCC40);
  }

  return result;
}

uint64_t sub_1B0CC24C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1B0CC250C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0CC256C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0CC25BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_1B0CC2784(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *a1;
  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *a2;
  if (a2[2])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_1B0392830(v3 | v4, *(a1 + 1), a1[16], *(a1 + 3), v6 | v7, *(a2 + 1), a2[16], *(a2 + 3));
}

uint64_t Environment.AppState.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t Environment.AppState.description.getter(char a1)
{
  if (a1)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x656C6269736976;
  }
}

uint64_t sub_1B0CC28C0()
{
  if (*v0)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x656C6269736976;
  }
}

uint64_t Environment.Power.description.getter(char a1)
{
  if (!a1)
  {
    return 0x7265776F50776F6CLL;
  }

  if (a1 == 1)
  {
    return 0x7265747461426E6FLL;
  }

  return 0x4964656767756C70;
}

uint64_t sub_1B0CC2968()
{
  v1 = 0x7265747461426E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x4964656767756C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265776F50776F6CLL;
  }
}

unint64_t Environment.AvailableFileSystemSpace.description.getter(unsigned __int8 a1)
{
  v1 = 7827308;
  v2 = 0x746E61646E756261;
  if (a1 == 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (a1)
  {
    v1 = 0xD000000000000022;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0CC2A74()
{
  v1 = 7827308;
  v2 = 0x746E61646E756261;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000022;
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

uint64_t Environment.capturedValue.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = 0x7265747461426E6FLL;
    }

    else
    {
      v9 = 0x4964656767756C70;
    }

    if (v8 == 1)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v10 = 0xE90000000000006ELL;
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    v9 = 0x7265776F50776F6CLL;
  }

  MEMORY[0x1B2726E80](v9, v10);

  if ((a1 & 0x100) != 0)
  {
    v11 = 0x756F72676B636162;
  }

  else
  {
    v11 = 0x656C6269736976;
  }

  v12 = 0xE700000000000000;
  if ((a1 & 0x100) != 0)
  {
    v13 = 0xEC0000006465646ELL;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  MEMORY[0x1B2726E80](v11, v13);

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v12 = 0xE800000000000000;
        result = 0x6C61636974697263;
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    result = 0x73756F69726573;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE400000000000000;
        result = 1919508838;
        goto LABEL_25;
      }

LABEL_22:
      result = sub_1B0E469C8();
      v12 = v15;
      goto LABEL_25;
    }

    result = 0x6C616E696D6F6ELL;
  }

LABEL_25:
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v17 = 0xD00000000000001DLL;
      v16 = 0x80000001B0F2F040;
    }

    else
    {
      v16 = 0xE800000000000000;
      v17 = 0x746E61646E756261;
    }
  }

  else
  {
    v16 = 0xE300000000000000;
    if (a3)
    {
      v17 = 0xD000000000000022;
    }

    else
    {
      v17 = 7827308;
    }

    if (a3)
    {
      v16 = 0x80000001B0F2F060;
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  *(a4 + 32) = BYTE2(a1) & 1;
  *(a4 + 40) = result;
  *(a4 + 48) = v12;
  *(a4 + 56) = v17;
  *(a4 + 64) = v16;
  return result;
}

uint64_t sub_1B0CC2D40()
{
  v1 = *v0;
  v2 = 0x7265776F70;
  v3 = 0x64656B636F4C7369;
  v4 = 0x536C616D72656874;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574617453707061;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0CC2DE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0CC3430(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0CC2E0C(uint64_t a1)
{
  sub_1B0CC307C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0CC2E48(uint64_t a1)
{
  sub_1B0CC307C();

  return sub_1B0E46F38();
}

uint64_t Environment.CapturedValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6138, &qword_1B0EE2710);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0CC307C();
  sub_1B0E46D48();
  v8[15] = 0;
  sub_1B0E46928();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1B0E46928();
  v8[13] = 2;
  sub_1B0E46938();
  v8[12] = 3;
  sub_1B0E46928();
  v8[11] = 4;
  sub_1B0E46928();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B0CC307C()
{
  result = qword_1EB6DCCE8;
  if (!qword_1EB6DCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCE8);
  }

  return result;
}

unint64_t sub_1B0CC30D4()
{
  result = qword_1EB6E6140;
  if (!qword_1EB6E6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6140);
  }

  return result;
}

unint64_t sub_1B0CC312C()
{
  result = qword_1EB6E6148;
  if (!qword_1EB6E6148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6150, &qword_1B0EE27A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6148);
  }

  return result;
}

unint64_t sub_1B0CC3194()
{
  result = qword_1EB6E6158;
  if (!qword_1EB6E6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6158);
  }

  return result;
}

unint64_t sub_1B0CC31EC()
{
  result = qword_1EB6E6160;
  if (!qword_1EB6E6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6160);
  }

  return result;
}

uint64_t sub_1B0CC3240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0CC3284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B0CC332C()
{
  result = qword_1EB6E6168;
  if (!qword_1EB6E6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6168);
  }

  return result;
}

unint64_t sub_1B0CC3384()
{
  result = qword_1EB6DCCD8;
  if (!qword_1EB6DCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCD8);
  }

  return result;
}

unint64_t sub_1B0CC33DC()
{
  result = qword_1EB6DCCE0;
  if (!qword_1EB6DCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCE0);
  }

  return result;
}

uint64_t sub_1B0CC3430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265776F70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617453707061 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656B636F4C7369 && a2 == 0xE800000000000000 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x536C616D72656874 && a2 == 0xEC00000065746174 || (sub_1B0E46A78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B0F2F0B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t FlagsChange.flags.getter(uint64_t a1, uint64_t a2)
{
  v2 = 0x100000000;
  if ((a2 & 1) == 0)
  {
    v2 = 0;
  }

  *(&v3 + 1) = a2;
  *&v3 = a1;
  return (v3 >> 32) & 0xFF000001010101 | v2 | (a2 << 32) & 0xFF00010000000000;
}

uint64_t FlagsChange.flags.setter(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 4) = result;
  *(v3 + 12) = a2;
  *(v3 + 20) = a3;
  return result;
}

uint64_t FlagsChange.changeIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static FlagsChange.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v22) = HIDWORD(a2);
  *(&v22 + 4) = a3;
  v8 = *(&v22 + 1);
  *v23 = HIDWORD(a6);
  *&v23[4] = a7;
  if (a5 != a1)
  {
    return 0;
  }

  v11 = *&v23[1];
  v12 = (a2 & 1) != 0 ? 0x100000000 : 0;
  *(&v13 + 1) = a2;
  *&v13 = a1;
  v14 = (v13 >> 32) & 0x1010101 | v12;
  LOBYTE(v20) = BYTE4(a2) & 1;
  *(&v20 + 1) = v8;
  BYTE9(v20) = BYTE5(a3);
  v15 = v20;
  v16 = WORD4(v20);
  v17 = (a6 & 1) != 0 ? 0x100000000 : 0;
  *(&v18 + 1) = a6;
  *&v18 = a5;
  LOBYTE(v21) = BYTE4(a6) & 1;
  *(&v21 + 1) = v11;
  BYTE9(v21) = BYTE5(a7);
  if ((sub_1B0CC99DC(v14 | (a2 << 32) & 0xFF00010000000000, v15, v16, (v18 >> 32) & 0x1010101 | v17 | (a6 << 32) & 0xFF00010000000000, v21, WORD4(v21)) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0BE9028(a4, a8);
}

uint64_t sub_1B0CC3848(uint64_t a1, uint64_t a2)
{
  if (*a2 != *a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a2 + 12);
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  v7 = *(a2 + 7);
  v8 = *(a2 + 6);
  v9 = *(a2 + 5);
  v10 = *(a2 + 4);
  v11 = *(a1 + 12);
  v12 = *(a1 + 9);
  v13 = *(a1 + 8);
  v14 = *(a1 + 7);
  v15 = *(a2 + 10);
  v16 = *(a1 + 21);
  v17 = *(a1 + 13);
  v18 = *(a1 + 10);
  v19 = *(a1 + 4) & 1;
  v20 = *(a2 + 21);
  v21 = *(a2 + 13);
  v22 = (*(a1 + 5) & 1) != 0 ? 256 : 0;
  v23 = (*(a1 + 6) & 1) == 0;
  v24 = *(a1 + 11);
  v25 = *(a2 + 11);
  v26 = v23 ? 0 : 0x10000;
  v27 = (v14 & 1) != 0 ? 0x1000000 : 0;
  v28 = (v13 & 1) != 0 ? 0x100000000 : 0;
  v29 = (v12 & 1) != 0 ? 0x10000000000 : 0;
  v30 = v19 | (v18 << 48) | v22 | v26 | v27 | v28 | v29 | (v24 << 56);
  LOBYTE(v40) = v11 & 1;
  *(&v40 + 1) = v17;
  BYTE9(v40) = v16;
  v31 = v40;
  v32 = WORD4(v40);
  v33 = v10 & 1;
  v34 = (v9 & 1) != 0 ? 256 : 0;
  v35 = (v8 & 1) != 0 ? 0x10000 : 0;
  v36 = (v7 & 1) != 0 ? 0x1000000 : 0;
  v37 = (v6 & 1) != 0 ? 0x100000000 : 0;
  v38 = (v5 & 1) != 0 ? 0x10000000000 : 0;
  LOBYTE(v41) = v4 & 1;
  *(&v41 + 1) = v21;
  BYTE9(v41) = v20;
  if ((sub_1B0CC99DC(v30, v31, v32, v33 | (v15 << 48) | v34 | v35 | v36 | v37 | v38 | (v25 << 56), v41, WORD4(v41)) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0BE9028(v2, v3);
}

uint64_t MailboxToRename.mailbox.setter(uint64_t a1, int a2)
{

  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MailboxToRename.newName.setter(uint64_t a1, int a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MailboxToRename.hashValue.getter(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2 | (a2 << 32));
  MEMORY[0x1B2728D70](a4 | (a4 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC3BC4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC3C24()
{
  v1 = *(v0 + 24);
  MEMORY[0x1B2728D70](*(v0 + 8) | (*(v0 + 8) << 32));
  return MEMORY[0x1B2728D70](v1 | (v1 << 32));
}

uint64_t sub_1B0CC3C68(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  MEMORY[0x1B2728D70](v3 | (v3 << 32));
  return sub_1B0E46CB8();
}

BOOL _s16IMAP2Persistence15MailboxToRenameV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (a2 != a6)
  {
    return 0;
  }

  v8 = *(result + 16);
  if (v8 != *(a5 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = result == a5;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return a4 == a8 && (sub_1B04520BC(a3, a7) & 1) != 0;
  }

  v10 = (result + 32);
  v11 = (a5 + 32);
  while (v8)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v8)
    {
      return a4 == a8 && (sub_1B04520BC(a3, a7) & 1) != 0;
    }
  }

  __break(1u);
  return result;
}

void _s16IMAP2Persistence5EventO6UpdateO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, unint64_t a2)
{
  v200 = a2;
  v196 = sub_1B0E43108();
  v194 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v191 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  MEMORY[0x1EEE9AC00](v193);
  v195 = &v168 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v192 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v197 = &v168 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v198 = &v168 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v199 = &v168 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v168 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v168 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v168 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v168 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v168 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v168 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v168 - v38;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 1 && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        v117 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v118 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        sub_1B0CCAE6C(v117, v118);
      }

      return;
    case 2uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) != 2 || *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        return;
      }

      v70 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v71 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v72 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v73 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      switch(v70)
      {
        case 2:
          if (v72 != 2)
          {
            return;
          }

          break;
        case 3:
          if (v72 != 3)
          {
            return;
          }

          break;
        case 4:
          if (v72 != 4)
          {
            return;
          }

          break;
        default:
          if (v72 - 2) < 3 || ((v72 ^ v70))
          {
            return;
          }

          break;
      }

      if (v71 && v73)
      {
        sub_1B03DDD84(v71, v73);
      }

      return;
    case 4uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 4)
      {
        v53 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v54 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        sub_1B0CCCB7C(v53, v54);
      }

      return;
    case 5uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 5)
      {
        v131 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v132 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if (sub_1B03DDD84(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
        {
          sub_1B0CCDE80(v131, v132);
        }
      }

      return;
    case 6uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 6 && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_114;
      }

      return;
    case 7uLL:
      v113 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v202[0] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v202[1] = v113;
      v114 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v202[2] = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v202[3] = v114;
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 7)
      {
        v115 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v203[0] = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v203[1] = v115;
        v116 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        v203[2] = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v203[3] = v116;
        sub_1B0A1C2CC(v203, v201);
        static PushRegistrationInfo.__derived_struct_equals(_:_:)(v202, v203);
        sub_1B0A1C37C();
      }

      return;
    case 8uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 8 && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
LABEL_114:
        _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      }

      return;
    case 9uLL:
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3630, &unk_1B0EC2AE0);
      v62 = swift_projectBox();
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 9)
      {
        v63 = *(v61 + 64);
        v198 = *(v62 + v63);
        v64 = v62[1];
        v199 = *v62;
        v65 = *(v61 + 48);
        v66 = v62;
        v67 = swift_projectBox();
        v69 = *v67;
        v68 = v67[1];
        v200 = *(v67 + v63);
        sub_1B03B5C80(v66 + v65, v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03B5C80(v67 + v65, v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v64 != v68 || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v199, v69) & 1) == 0)
        {
          v159 = &unk_1EB6E1AF0;
          v160 = &unk_1B0E9AF40;
          sub_1B0398EFC(v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v156 = v39;
          goto LABEL_137;
        }

        sub_1B03D06F8();
        sub_1B0E46E08();
        sub_1B0398EFC(v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      return;
    case 0xAuLL:
      v145 = swift_projectBox();
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 0xA)
      {
        v146 = v145[1];
        v197 = *v145;
        v198 = v146;
        v147 = v145;
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
        v149 = *(v148 + 48);
        v150 = *(v148 + 64);
        v151 = swift_projectBox();
        v152 = v151[1];
        v200 = *v151;
        sub_1B03B5C80(v147 + v149, v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03B5C80(v147 + v150, v199, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B03B5C80(v151 + v149, v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03B5C80(v151 + v150, v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
        if (v198 != v152 || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v197, v200) & 1) == 0 || (sub_1B03D06F8(), (sub_1B0E46E08() & 1) == 0))
        {
          sub_1B0398EFC(v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
          sub_1B0398EFC(v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B0398EFC(v199, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v156 = v33;
          v157 = &unk_1EB6E1AF0;
          v158 = &unk_1B0E9AF40;
          goto LABEL_138;
        }

        v153 = v199;
        sub_1B0E46E08();
        sub_1B0398EFC(v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B0398EFC(v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v153, &unk_1EB6E26C0, &unk_1B0E9DE10);
        sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      return;
    case 0xBuLL:
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35F0, &unk_1B0EA2050);
      v45 = swift_projectBox();
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 0xB)
      {
        v46 = *(v44 + 64);
        v198 = *(v45 + v46);
        v47 = v45[1];
        v199 = *v45;
        v48 = *(v44 + 48);
        v49 = v45;
        v50 = swift_projectBox();
        v52 = *v50;
        v51 = v50[1];
        v200 = *(v50 + v46);
        sub_1B03B5C80(v49 + v48, v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03B5C80(v50 + v48, v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        if (v47 != v51 || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v199, v52) & 1) == 0)
        {
          sub_1B0398EFC(v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v156 = v27;
          v157 = &unk_1EB6E1AF0;
          v158 = &unk_1B0E9AF40;
          goto LABEL_138;
        }

        sub_1B03D06F8();
        sub_1B0E46E08();
        sub_1B0398EFC(v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      return;
    case 0xCuLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) != 0xC)
      {
        return;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) != *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        return;
      }

      v55 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v56 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v57 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v58 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        return;
      }

      if (v55)
      {
        v59 = 6581810;
      }

      else
      {
        v59 = 7631665;
      }

      if (v57)
      {
        v60 = 6581810;
      }

      else
      {
        v60 = 7631665;
      }

      if (v59 == v60)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v162 = sub_1B0E46A78();
        swift_bridgeObjectRelease_n();
        if ((v162 & 1) == 0)
        {
          return;
        }
      }

      sub_1B0CCCE50(v56, v58);
      return;
    case 0xDuLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) != 0xD)
      {
        return;
      }

      if ((*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) != (*((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        return;
      }

      v135 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
      v136 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v137 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v138 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
      v139 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v140 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      if ((sub_1B04520BC(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10)) & 1) == 0)
      {
        return;
      }

      if (v135)
      {
        v141 = 6581810;
      }

      else
      {
        v141 = 7631665;
      }

      if (v138)
      {
        v142 = 6581810;
      }

      else
      {
        v142 = 7631665;
      }

      if (v141 == v142)
      {
        swift_bridgeObjectRelease_n();
        if (v139 != v136)
        {
          return;
        }

        goto LABEL_155;
      }

      v163 = sub_1B0E46A78();
      swift_bridgeObjectRelease_n();
      if ((v163 & 1) != 0 && v139 == v136)
      {
LABEL_155:
        sub_1B0CCCF10(v137, v140);
        return;
      }

      return;
    case 0xEuLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 0xE && (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) == (*((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        v42 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v43 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        if (sub_1B04520BC(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
        {
          sub_1B0CCCFC8(v42, v43);
        }
      }

      return;
    case 0xFuLL:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35E0, &unk_1B0EE3170);
      v75 = swift_projectBox();
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) != 0xF)
      {
        return;
      }

      v76 = *v75;
      v77 = *(v75 + 24);
      v189 = *(v75 + 16);
      v188 = v77;
      v171 = *(v75 + 32);
      v170 = *(v75 + 33);
      v177 = *(v75 + 34);
      v180 = *(v75 + 35);
      v181 = *(v75 + 36);
      v183 = *(v75 + 37);
      v184 = *(v75 + 38);
      v186 = *(v75 + 39);
      v187 = *(v75 + 40);
      v78 = *(v74 + 96);
      v79 = *(v75 + v78 + 8);
      v169 = *(v75 + v78);
      v168 = v79;
      v80 = *(v75 + 8);
      v81 = *(v74 + 80);
      v82 = v75;
      v83 = swift_projectBox();
      v84 = *v83;
      v85 = *(v83 + 8);
      v86 = *(v83 + 24);
      v190 = *(v83 + 16);
      v173 = *(v83 + 32);
      v172 = *(v83 + 33);
      v174 = *(v83 + 34);
      v175 = *(v83 + 35);
      v176 = *(v83 + 36);
      v178 = *(v83 + 37);
      v179 = *(v83 + 38);
      v182 = *(v83 + 39);
      v185 = *(v83 + 40);
      v87 = *(v83 + v78 + 8);
      v199 = *(v83 + v78);
      v200 = v87;
      v88 = v82 + v81;
      v89 = v198;
      sub_1B03B5C80(v88, v198, &unk_1EB6E2990, &qword_1B0E9B060);
      v90 = v83 + v81;
      v91 = v197;
      sub_1B03B5C80(v90, v197, &unk_1EB6E2990, &qword_1B0E9B060);
      if ((v80 | (v80 << 32)) != (v85 | (v85 << 32)) || (sub_1B04520BC(v76, v84) & 1) == 0)
      {
        goto LABEL_136;
      }

      v92 = v190;
      v93 = v86;
      sub_1B03B2000(v190, v86);
      v94 = v199;
      v95 = v200;
      sub_1B03B2000(v199, v200);
      if (!sub_1B0AB8858(v189, v188, v92, v86))
      {
        goto LABEL_134;
      }

      v96 = 256;
      if (v170)
      {
        v97 = 256;
      }

      else
      {
        v97 = 0;
      }

      if (v177)
      {
        v98 = 0x10000;
      }

      else
      {
        v98 = 0;
      }

      if (v180)
      {
        v99 = 0x1000000;
      }

      else
      {
        v99 = 0;
      }

      if (v181)
      {
        v100 = 0x100000000;
      }

      else
      {
        v100 = 0;
      }

      if (v183)
      {
        v101 = 0x10000000000;
      }

      else
      {
        v101 = 0;
      }

      v102 = v171 & 1 | (v184 << 48) | v97 | v98 | v99 | v100 | v101 | (v186 << 56);
      if ((v172 & 1) == 0)
      {
        v96 = 0;
      }

      v103 = (v174 & 1) != 0 ? 0x10000 : 0;
      v104 = (v175 & 1) != 0 ? 0x1000000 : 0;
      v105 = (v176 & 1) != 0 ? 0x100000000 : 0;
      v106 = (v178 & 1) != 0 ? 0x10000000000 : 0;
      if ((sub_1B0CC9968(v102, v187 & 1, v173 & 1 | (v179 << 48) | v96 | v103 | v104 | v105 | v106 | (v182 << 56), v185 & 1) & 1) == 0)
      {
LABEL_134:
        v161 = v94;
LABEL_135:
        sub_1B0391D50(v161, v95);
        sub_1B0391D50(v92, v93);
LABEL_136:
        v159 = &unk_1EB6E2990;
        v160 = &qword_1B0E9B060;
        sub_1B0398EFC(v91, &unk_1EB6E2990, &qword_1B0E9B060);
        v156 = v89;
        goto LABEL_137;
      }

      v107 = *(v193 + 48);
      v108 = v195;
      sub_1B03B5C80(v89, v195, &unk_1EB6E2990, &qword_1B0E9B060);
      sub_1B03B5C80(v91, v108 + v107, &unk_1EB6E2990, &qword_1B0E9B060);
      v109 = v194;
      v110 = *(v194 + 48);
      v111 = v196;
      if (v110(v108, 1, v196) == 1)
      {
        if (v110(v108 + v107, 1, v111) == 1)
        {
          sub_1B0398EFC(v108, &unk_1EB6E2990, &qword_1B0E9B060);
          v95 = v200;
          v112 = v199;
          goto LABEL_162;
        }

        sub_1B0391D50(v199, v200);
        sub_1B0391D50(v92, v93);
        goto LABEL_160;
      }

      v164 = v192;
      sub_1B03B5C80(v108, v192, &unk_1EB6E2990, &qword_1B0E9B060);
      if (v110(v108 + v107, 1, v111) == 1)
      {
        sub_1B0391D50(v199, v200);
        sub_1B0391D50(v190, v93);
        (*(v109 + 8))(v164, v111);
LABEL_160:
        sub_1B0398EFC(v108, &qword_1EB6E1720, &qword_1B0E99908);
        goto LABEL_136;
      }

      v165 = v191;
      (*(v109 + 32))(v191, v108 + v107, v111);
      sub_1B06BC63C();
      v166 = sub_1B0E44A28();
      v167 = *(v109 + 8);
      v167(v165, v111);
      v167(v164, v111);
      sub_1B0398EFC(v108, &unk_1EB6E2990, &qword_1B0E9B060);
      v92 = v190;
      v95 = v200;
      v112 = v199;
      if ((v166 & 1) == 0)
      {
        v161 = v199;
        goto LABEL_135;
      }

LABEL_162:
      sub_1B0AB8858(v169, v168, v112, v95);
      sub_1B0391D50(v112, v95);
      sub_1B0391D50(v92, v93);
      v126 = &unk_1EB6E2990;
      v127 = &qword_1B0E9B060;
      sub_1B0398EFC(v91, &unk_1EB6E2990, &qword_1B0E9B060);
      v128 = v89;
LABEL_88:
      sub_1B0398EFC(v128, v126, v127);
      return;
    case 0x10uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 0x10 && *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        v40 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v41 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        if (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
        {
          sub_1B0CCD6F8(v40, v41);
        }
      }

      return;
    case 0x11uLL:
      v119 = swift_projectBox();
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) != 0x11)
      {
        return;
      }

      v120 = v119[1];
      v199 = *v119;
      v121 = v119;
      v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A8, &unk_1B0ECD730) + 48);
      v123 = swift_projectBox();
      v125 = *v123;
      v124 = v123[1];
      sub_1B03B5C80(v121 + v122, v21, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03B5C80(v123 + v122, v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (v120 == v124 && (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v199, v125) & 1) != 0)
      {
        sub_1B03D06F8();
        sub_1B0E46E08();
        v126 = &unk_1EB6E1AF0;
        v127 = &unk_1B0E9AF40;
        sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v128 = v21;
        goto LABEL_88;
      }

      v159 = &unk_1EB6E1AF0;
      v160 = &unk_1B0E9AF40;
      sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v156 = v21;
LABEL_137:
      v157 = v159;
      v158 = v160;
LABEL_138:
      sub_1B0398EFC(v156, v157, v158);
      return;
    case 0x12uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 0x12 && (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) == (*((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        v143 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v144 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        if (sub_1B04520BC(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
        {
          sub_1B0CCD8D8(v143, v144);
        }
      }

      return;
    case 0x13uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) != 0x13)
      {
        return;
      }

      v154 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v155 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B63A04(v154, v155);
      goto LABEL_129;
    case 0x14uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) != 0x14)
      {
        return;
      }

      v129 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v130 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B63AFC(v129, v130);
LABEL_129:

      return;
    case 0x15uLL:
      if (((v200 >> 59) & 0x1E | (v200 >> 2) & 1) == 0x15 && (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)) == (*((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
      {
        v133 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v134 = *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        if (sub_1B04520BC(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((v200 & 0xFFFFFFFFFFFFFFBLL) + 0x10)))
        {

          sub_1B03D3304(v133, v134);
        }
      }

      return;
    default:
      return;
  }
}

unint64_t sub_1B0CC56BC()
{
  result = qword_1EB6E6170;
  if (!qword_1EB6E6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6170);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence5EventO6UpdateO(void *a1)
{
  if (*a1 >> 60 <= 0xAuLL)
  {
    return (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  }

  else
  {
    return (*a1 >> 3) + 22;
  }
}

uint64_t sub_1B0CC5754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6A && *(a1 + 8))
  {
    return (*a1 + 106);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x69)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0CC57B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x69)
  {
    *result = a2 - 106;
    if (a3 >= 0x6A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1B0CC5814(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x16)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 22)) | 0xB000000000000000;
  }

  return result;
}

uint64_t sub_1B0CC5870(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1B0CC58B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static FlagsWithModifications.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  *&v11 = a2;
  WORD4(v11) = a3;
  v6 = *(&v11 + 1);
  *&v11 = a5;
  BYTE8(v11) = a6;
  v7 = *(&v11 + 1);
  LOBYTE(v11) = a2 & 1;
  *(&v11 + 1) = v6;
  v8 = v11;
  v9 = WORD4(v11);
  LOBYTE(v11) = a5 & 1;
  *(&v11 + 1) = v7;
  BYTE9(v11) = HIBYTE(a6);
  return sub_1B0CC99DC(a1 & 0xFFFF010101010101, v8, v9, a4 & 0xFFFF010101010101, v11, WORD4(v11));
}

IMAP2Persistence::Flags __swiftcall Flags.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)(Swift::Bool unread, Swift::Bool deleted, Swift::Bool answered, Swift::Bool draft, Swift::Bool forwarded, Swift::Bool redirected, IMAP2Persistence::Flags::JunkStatus junk, IMAP2Persistence::Flags::Label label, Swift::Bool iCloudCleanup)
{
  v9 = 256;
  if (!deleted)
  {
    v9 = 0;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFFELL | unread;
  v11 = 0x10000;
  if (!answered)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if (!draft)
  {
    v12 = 0;
  }

  v13 = v10 | v11 | v12;
  v14 = 0x100000000;
  if (!forwarded)
  {
    v14 = 0;
  }

  v15 = 0x10000000000;
  if (!redirected)
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15 | (junk << 48) | (label << 56);
  v17 = iCloudCleanup;
  result.unread = v16;
  result.deleted = BYTE1(v16);
  result.answered = BYTE2(v16);
  result.draft = BYTE3(v16);
  result.forwarded = BYTE4(v16);
  result.redirected = BYTE5(v16);
  result.junk = BYTE6(v16);
  result.label = HIBYTE(v16);
  result.iCloudCleanup = v17;
  return result;
}

uint64_t Flags.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  v3 = BYTE6(a2);
  v4 = HIBYTE(a2);
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  MEMORY[0x1B2728D70](v3);
  MEMORY[0x1B2728D70](v4);
  return sub_1B0E46C68();
}

uint64_t Flags.hashValue.getter(uint64_t a1, char a2)
{
  sub_1B0E46C28();
  Flags.hash(into:)(v5, a1 & 0xFFFF010101010101, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC5CFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1B0E46C28();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if ((v5 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x10000000000;
  if ((v6 & 1) == 0)
  {
    v14 = 0;
  }

  Flags.hash(into:)(v16, v1 & 1 | (v7 << 48) | v10 | v11 | v12 | v13 | v14 | (v8 << 56), v9 & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC5DE0(uint64_t a1)
{
  v2 = 256;
  if ((v1[1] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if ((v1[4] & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if ((v1[5] & 1) == 0)
  {
    v6 = 0;
  }

  return Flags.hash(into:)(a1, *v1 & 1 | (v1[6] << 48) | v2 | v3 | v4 | v5 | v6 | (v1[7] << 56), v1[8] & 1);
}

uint64_t sub_1B0CC5E68(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  sub_1B0E46C28();
  v11 = 256;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x100000000;
  if ((v6 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 0x10000000000;
  if ((v7 & 1) == 0)
  {
    v15 = 0;
  }

  Flags.hash(into:)(v17, v2 & 1 | (v8 << 48) | v11 | v12 | v13 | v14 | v15 | (v9 << 56), v10 & 1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0CC5F48(_BYTE *a1, _BYTE *a2)
{
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (a1[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0x100000000;
  if (a1[4])
  {
    v10 = 0x100000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if (a1[5])
  {
    v12 = 0x10000000000;
  }

  else
  {
    v12 = 0;
  }

  if ((a2[1] & 1) == 0)
  {
    v3 = 0;
  }

  if ((a2[2] & 1) == 0)
  {
    v5 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = 0;
  }

  if ((a2[4] & 1) == 0)
  {
    v9 = 0;
  }

  if ((a2[5] & 1) == 0)
  {
    v11 = 0;
  }

  v13 = *a2 & 1 | (a2[6] << 48) | v3 | v5 | v7 | v9 | v11 | (a2[7] << 56);
  v14 = a2[8];
  v15 = a1[8] & 1;
  v16 = *a1 & 1 | (a1[6] << 48) | v4 | v6 | v8 | v10 | v12 | (a1[7] << 56);

  return sub_1B0CC9968(v16, v15, v13, v14 & 1);
}

uint64_t Flags.description.getter(unint64_t a1, char a2)
{
  v2 = HIWORD(a1);
  v39 = HIBYTE(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6178, &qword_1B0EE31E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC42E0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x646165726E75;
  *(inited + 48) = 0xE600000000000000;
  v4 = inited + 48;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x646574656C6564;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0x6465726577736E61;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x7466617264;
  *(inited + 120) = 0xE500000000000000;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6564726177726F66;
  *(inited + 144) = 0xE900000000000064;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0x7463657269646572;
  *(inited + 168) = 0xEA00000000006465;
  v5 = 0;
  *(inited + 176) = swift_getKeyPath();
  strcpy((inited + 184), "iCloudCleanup");
  *(inited + 198) = -4864;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v38 = v6;
    v7 = 7;
    if (v5 > 7)
    {
      v7 = v5;
    }

    v6 = -v7;
    v8 = (v4 + 24 * v5++);
    while (1)
    {
      if (&v6[v5] == 1)
      {
        __break(1u);
LABEL_71:
        v6 = sub_1B0AFF0E8(0, *(v6 + 2) + 1, 1, v6);
LABEL_17:
        v14 = v39;
        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v6 = sub_1B0AFF0E8((v15 > 1), v16 + 1, 1, v6);
        }

        v18 = 0xE400000000000000;
        v19 = 1802401130;
        goto LABEL_33;
      }

      v10 = *(v8 - 1);
      v9 = *v8;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_getAtKeyPath();

      if (v40)
      {
        break;
      }

      ++v5;
      v8 += 3;
      if (v5 == 8)
      {
        v6 = v38;
        goto LABEL_14;
      }
    }

    v6 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1B0AFF0E8(0, *(v38 + 2) + 1, 1, v38);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_1B0AFF0E8((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    v13 = &v6[16 * v12];
    *(v13 + 4) = v10;
    *(v13 + 5) = v9;
    v4 = inited + 48;
  }

  while (v5 != 7);
LABEL_14:

  if (!v2)
  {
    v14 = v39;
    if (v39 <= 3)
    {
      goto LABEL_34;
    }

LABEL_21:
    if (v14 > 5)
    {
      if (v14 == 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1B0AFF0E8(0, *(v6 + 2) + 1, 1, v6);
        }

        v21 = *(v6 + 2);
        v28 = *(v6 + 3);
        v22 = v21 + 1;
        if (v21 >= v28 >> 1)
        {
          v6 = sub_1B0AFF0E8((v28 > 1), v21 + 1, 1, v6);
        }

        v23 = 0xE600000000000000;
        v24 = 0x656C70727570;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1B0AFF0E8(0, *(v6 + 2) + 1, 1, v6);
        }

        v21 = *(v6 + 2);
        v31 = *(v6 + 3);
        v22 = v21 + 1;
        if (v21 >= v31 >> 1)
        {
          v6 = sub_1B0AFF0E8((v31 > 1), v21 + 1, 1, v6);
        }

        v23 = 0xE400000000000000;
        v24 = 2036429415;
      }
    }

    else if (v14 == 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B0AFF0E8(0, *(v6 + 2) + 1, 1, v6);
      }

      v21 = *(v6 + 2);
      v20 = *(v6 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v6 = sub_1B0AFF0E8((v20 > 1), v21 + 1, 1, v6);
      }

      v23 = 0xE500000000000000;
      v24 = 0x6E65657267;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B0AFF0E8(0, *(v6 + 2) + 1, 1, v6);
      }

      v21 = *(v6 + 2);
      v30 = *(v6 + 3);
      v22 = v21 + 1;
      if (v21 >= v30 >> 1)
      {
        v6 = sub_1B0AFF0E8((v30 > 1), v21 + 1, 1, v6);
      }

      v23 = 0xE400000000000000;
      v24 = 1702194274;
    }

    goto LABEL_68;
  }

  if (v2 == 1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1B0AFF0E8(0, *(v6 + 2) + 1, 1, v6);
  }

  v14 = v39;
  v16 = *(v6 + 2);
  v25 = *(v6 + 3);
  v17 = v16 + 1;
  if (v16 >= v25 >> 1)
  {
    v6 = sub_1B0AFF0E8((v25 > 1), v16 + 1, 1, v6);
  }

  v18 = 0xE700000000000000;
  v19 = 0x6B6E754A746F6ELL;
LABEL_33:
  *(v6 + 2) = v17;
  v26 = &v6[16 * v16];
  *(v26 + 4) = v19;
  *(v26 + 5) = v18;
  if (v14 > 3)
  {
    goto LABEL_21;
  }

LABEL_34:
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B0AFF0E8(0, *(v6 + 2) + 1, 1, v6);
      }

      v21 = *(v6 + 2);
      v29 = *(v6 + 3);
      v22 = v21 + 1;
      if (v21 >= v29 >> 1)
      {
        v6 = sub_1B0AFF0E8((v29 > 1), v21 + 1, 1, v6);
      }

      v23 = 0xE600000000000000;
      v24 = 0x65676E61726FLL;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B0AFF0E8(0, *(v6 + 2) + 1, 1, v6);
      }

      v21 = *(v6 + 2);
      v32 = *(v6 + 3);
      v22 = v21 + 1;
      if (v21 >= v32 >> 1)
      {
        v6 = sub_1B0AFF0E8((v32 > 1), v21 + 1, 1, v6);
      }

      v23 = 0xE600000000000000;
      v24 = 0x776F6C6C6579;
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_69;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1B0AFF0E8(0, *(v6 + 2) + 1, 1, v6);
    }

    v21 = *(v6 + 2);
    v27 = *(v6 + 3);
    v22 = v21 + 1;
    if (v21 >= v27 >> 1)
    {
      v6 = sub_1B0AFF0E8((v27 > 1), v21 + 1, 1, v6);
    }

    v23 = 0xE300000000000000;
    v24 = 6579570;
  }

LABEL_68:
  *(v6 + 2) = v22;
  v33 = &v6[16 * v21];
  *(v33 + 4) = v24;
  *(v33 + 5) = v23;
LABEL_69:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
  v34 = sub_1B0E448E8();
  v36 = v35;

  MEMORY[0x1B2726E80](v34, v36);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](41, 0xE100000000000000);

  return 0x287367616C46;
}

uint64_t sub_1B0CC6850()
{
  v1 = 256;
  if ((v0[1] & 1) == 0)
  {
    v1 = 0;
  }

  v2 = 0x10000;
  if ((v0[2] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if ((v0[3] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if ((v0[4] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000000000;
  if ((v0[5] & 1) == 0)
  {
    v5 = 0;
  }

  return Flags.description.getter(*v0 & 1 | (v0[6] << 48) | v1 | v2 | v3 | v4 | v5 | (v0[7] << 56), v0[8] & 1);
}

uint64_t FlagsWithModifications.flags.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  return result;
}

uint64_t FlagsWithModifications.originalFlags.getter(uint64_t a1, uint64_t a2, char a3)
{
  *&v4 = a2;
  BYTE8(v4) = a3;
  return *(&v4 + 1);
}

uint64_t FlagsWithModifications.hasLocalChanges.getter(unint64_t a1, unint64_t a2, __int16 a3)
{
  *v5 = a2;
  v5[8] = a3;
  if (BYTE1(a2) == 2)
  {
    LOBYTE(v3) = a1 != 2;
  }

  else if (a1 == 2 || (((a2 >> 8) ^ a1) & 1) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = (*&v5[1] >> 8) & 1 ^ (a1 >> 8) & 1 | (*&v5[1] >> 16) & 1 ^ (a1 >> 16) & 1 | (*&v5[1] >> 24) & 1 ^ (a1 >> 24) & 1 | v5[5] & 1 ^ BYTE4(a1) & 1 | (*&v5[1] >> 40) & 1 ^ (a1 >> 40) & 1 | ((*&v5[1] ^ a1) >> 48 != 0) | a2 ^ ((a3 & 0x100) >> 8);
  }

  return v3 & 1;
}

uint64_t FlagsWithModifications.locallyModified.getter(unint64_t a1, uint64_t a2, __int16 a3)
{
  *v10 = a2;
  *&v10[8] = a3;
  v3 = *&v10[1];
  *v10 = MEMORY[0x1E69E7CD0];
  if (v3 == 2)
  {

    return sub_1B0CC9AD0(&unk_1F27268C8);
  }

  else
  {
    v6 = a2;
    v8 = v3 ^ a1;
    if ((v3 ^ a1))
    {
      sub_1B0CC90CC(&v9, 0);
    }

    if (((v3 & 0x100) == 0) == ((a1 >> 8) & 1))
    {
      sub_1B0CC90CC(&v9, 1);
    }

    if (((v3 & 0x10000) == 0) == ((a1 >> 16) & 1))
    {
      sub_1B0CC90CC(&v9, 2);
    }

    if (((v3 & 0x1000000) == 0) == ((a1 >> 24) & 1))
    {
      sub_1B0CC90CC(&v9, 3);
    }

    if (((v3 & 0x100000000) == 0) == (BYTE4(a1) & 1))
    {
      sub_1B0CC90CC(&v9, 4);
    }

    if (((v3 & 0x10000000000) == 0) == ((a1 >> 40) & 1))
    {
      sub_1B0CC90CC(&v9, 5);
    }

    if ((v8 & 0xFF000000000000) != 0)
    {
      sub_1B0CC90CC(&v9, 6);
    }

    if (HIBYTE(v8))
    {
      sub_1B0CC90CC(&v9, 7);
    }

    if ((v6 & 1) != (a3 & 0x100) >> 8)
    {
      sub_1B0CC90CC(&v9, 8);
    }

    return *v10;
  }
}

uint64_t FlagsWithModifications.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = HIBYTE(a4);
  *v7 = a3;
  v7[8] = a4;
  Flags.hash(into:)(a1, a2 & 0xFFFF010101010101, a3 & 1);
  if (v7[1] == 2)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();

  return Flags.hash(into:)(a1, *&v7[1] & 0xFFFF010101010101, v4 & 1);
}

uint64_t FlagsWithModifications.hashValue.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  v4 = a2;
  *v8 = a2;
  *&v8[8] = a3;
  v6 = *&v8[1];
  sub_1B0E46C28();
  Flags.hash(into:)(v8, a1 & 0xFFFF010101010101, v4 & 1);
  sub_1B0E46C68();
  if (v6 != 2)
  {
    Flags.hash(into:)(v8, v6 & 0xFFFF010101010101, v3 & 1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC6D14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[9];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[13];
  v26 = v0[14];
  v27 = v0[15];
  v28 = v0[16];
  v29 = v0[17];
  v9 = v0[7];
  v10 = v0[8];
  sub_1B0E46C28();
  v11 = 256;
  if ((v2 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  if (v5)
  {
    v14 = 0x100000000;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = 0x10000000000;
  }

  else
  {
    v15 = 0;
  }

  Flags.hash(into:)(v30, v1 & 1 | (v7 << 48) | v11 | v12 | v13 | v14 | v15 | (v9 << 56), v10 & 1);
  if (v8 == 2)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    v16 = 256;
    if ((v22 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = 0x10000;
    if ((v23 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 0x1000000;
    if ((v24 & 1) == 0)
    {
      v18 = 0;
    }

    if (v25)
    {
      v19 = 0x100000000;
    }

    else
    {
      v19 = 0;
    }

    if (v26)
    {
      v20 = 0x10000000000;
    }

    else
    {
      v20 = 0;
    }

    Flags.hash(into:)(v30, v8 & 1 | (v27 << 48) | v16 | v17 | v18 | v19 | v20 | (v28 << 56), v29 & 1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC6ECC(uint64_t a1)
{
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v20 = v1[15];
  v21 = v1[16];
  v22 = v1[17];
  v9 = 256;
  if ((v1[1] & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v11 = 0;
  }

  if (v1[4])
  {
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
  }

  if (v1[5])
  {
    v13 = 0x10000000000;
  }

  else
  {
    v13 = 0;
  }

  Flags.hash(into:)(a1, *v1 & 1 | (v1[6] << 48) | v9 | v10 | v11 | v12 | v13 | (v1[7] << 56), v1[8] & 1);
  if (v3 == 2)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  v15 = 256;
  if ((v4 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = 0x10000;
  if ((v5 & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 0x1000000;
  if ((v6 & 1) == 0)
  {
    v17 = 0;
  }

  if (v7)
  {
    v18 = 0x100000000;
  }

  else
  {
    v18 = 0;
  }

  if (v8)
  {
    v19 = 0x10000000000;
  }

  else
  {
    v19 = 0;
  }

  return Flags.hash(into:)(a1, v3 & 1 | (v20 << 48) | v15 | v16 | v17 | v18 | v19 | (v21 << 56), v22 & 1);
}

uint64_t sub_1B0CC7084(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[9];
  v23 = v1[10];
  v24 = v1[11];
  v25 = v1[12];
  v26 = v1[13];
  v27 = v1[14];
  v28 = v1[15];
  v29 = v1[16];
  v30 = v1[17];
  v10 = v1[7];
  v11 = v1[8];
  sub_1B0E46C28();
  v12 = 256;
  if ((v3 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x10000;
  if ((v4 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = 0x100000000;
  }

  else
  {
    v15 = 0;
  }

  if (v7)
  {
    v16 = 0x10000000000;
  }

  else
  {
    v16 = 0;
  }

  Flags.hash(into:)(v31, v2 & 1 | (v8 << 48) | v12 | v13 | v14 | v15 | v16 | (v10 << 56), v11 & 1);
  if (v9 == 2)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    v17 = 256;
    if ((v23 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 0x10000;
    if ((v24 & 1) == 0)
    {
      v18 = 0;
    }

    v19 = 0x1000000;
    if ((v25 & 1) == 0)
    {
      v19 = 0;
    }

    if (v26)
    {
      v20 = 0x100000000;
    }

    else
    {
      v20 = 0;
    }

    if (v27)
    {
      v21 = 0x10000000000;
    }

    else
    {
      v21 = 0;
    }

    Flags.hash(into:)(v31, v9 & 1 | (v28 << 48) | v17 | v18 | v19 | v20 | v21 | (v29 << 56), v30 & 1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC7238(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[8];
  v11 = *(a1 + 9);
  v12 = a1[17];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = a2[6];
  v20 = a2[8];
  v21 = *(a2 + 9);
  v22 = a2[17];
  v23 = a1[7];
  v24 = a2[7];
  v25 = v3 & 1;
  v26 = (v4 & 1) == 0;
  v27 = 256;
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = 256;
  }

  v26 = (v5 & 1) == 0;
  v29 = 0x10000;
  if (v26)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x10000;
  }

  v26 = (v6 & 1) == 0;
  v31 = 0x1000000;
  if (v26)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0x1000000;
  }

  v26 = (v7 & 1) == 0;
  v33 = 0x100000000;
  if (v26)
  {
    v34 = 0;
  }

  else
  {
    v34 = 0x100000000;
  }

  v26 = (v8 & 1) == 0;
  v35 = 0x10000000000;
  if (v26)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0x10000000000;
  }

  v37 = v25 | (v9 << 48) | v28 | v30 | v32 | v34 | v36 | (v23 << 56);
  LOBYTE(v41) = v10 & 1;
  *(&v41 + 1) = v11;
  BYTE9(v41) = v12;
  v38 = v41;
  v39 = WORD4(v41);
  if ((v14 & 1) == 0)
  {
    v27 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v29 = 0;
  }

  if ((v16 & 1) == 0)
  {
    v31 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v33 = 0;
  }

  if ((v18 & 1) == 0)
  {
    v35 = 0;
  }

  v42[0] = v20 & 1;
  *&v42[1] = v21;
  v42[9] = v22;

  return sub_1B0CC99DC(v37, v38, v39, v13 & 1 | (v19 << 48) | v27 | v29 | v31 | v33 | v35 | (v24 << 56), *v42, *&v42[8]);
}

char *FlagsWithModifications.description.getter(uint64_t a1, char *a2, __int16 a3)
{
  v3 = a2;
  v12 = a2;
  LOWORD(v13) = a3;
  LOBYTE(v12) = a2 & 1;
  v5 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, v12, a3);
  v6 = sub_1B0CC75AC(v5);

  v12 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C2A0EC(&v12);

  if (*(v12 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
    v7 = sub_1B0E448E8();
    v9 = v8;
  }

  else
  {

    v9 = 0xE400000000000000;
    v7 = 1701736302;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1B0E46298();

  v12 = 0xD000000000000013;
  v13 = 0x80000001B0F2F0D0;
  v10 = Flags.description.getter(a1 & 0xFFFF010101010101, v3 & 1);
  MEMORY[0x1B2726E80](v10);

  MEMORY[0x1B2726E80](0x696669646F6D202CLL, 0xEC000000203A6465);
  MEMORY[0x1B2726E80](v7, v9);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return v12;
}

uint64_t sub_1B0CC75AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v27 = *(a1 + 16);
  sub_1B041D32C(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = sub_1B0E460B8();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_38;
    }

    v11 = *(*(a1 + 48) + result);
    if (v11 <= 3)
    {
      if (*(*(a1 + 48) + result) > 1u)
      {
        if (v11 == 2)
        {
          v12 = 0xE800000000000000;
          v13 = 0x6465726577736E61;
        }

        else
        {
          v12 = 0xE500000000000000;
          v13 = 0x7466617264;
        }
      }

      else if (*(*(a1 + 48) + result))
      {
        v12 = 0xE700000000000000;
        v13 = 0x646574656C6564;
      }

      else
      {
        v12 = 0xE600000000000000;
        v13 = 0x646165726E75;
      }
    }

    else if (*(*(a1 + 48) + result) <= 5u)
    {
      if (v11 == 4)
      {
        v12 = 0xE900000000000064;
        v13 = 0x6564726177726F66;
      }

      else
      {
        v12 = 0xEA00000000006465;
        v13 = 0x7463657269646572;
      }
    }

    else if (v11 == 6)
    {
      v12 = 0xE400000000000000;
      v13 = 1802401130;
    }

    else if (v11 == 7)
    {
      v12 = 0xE500000000000000;
      v13 = 0x6C6562616CLL;
    }

    else
    {
      v13 = 0x6C4364756F6C4369;
      v12 = 0xED000070756E6165;
    }

    v14 = *(a1 + 36);
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_1B041D32C((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v14 = v25;
      result = v26;
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_39;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_40;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_41;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1B0425168(result, v14, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1B0425168(result, v14, 0);
      v6 = v27;
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
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

char *sub_1B0CC78E0()
{
  v1 = 256;
  if ((*(v0 + 1) & 1) == 0)
  {
    v1 = 0;
  }

  v2 = 0x10000;
  if ((*(v0 + 2) & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if ((*(v0 + 3) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if ((*(v0 + 4) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000000000;
  if ((*(v0 + 5) & 1) == 0)
  {
    v5 = 0;
  }

  *&v7[1] = *(v0 + 9);
  v7[9] = *(v0 + 17);
  return FlagsWithModifications.description.getter(*v0 & 1 | (*(v0 + 6) << 48) | v1 | v2 | v3 | v4 | v5 | (*(v0 + 7) << 56), *v7, *&v7[8]);
}

BOOL static FlagsUpdate.Label.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1 == 8)
  {
    return a2 == 8;
  }

  if (a2 == 8)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t FlagsUpdate.Label.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 8)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
    v2 = a2;
  }

  return MEMORY[0x1B2728D70](v2);
}

uint64_t FlagsUpdate.Label.hashValue.getter(unsigned __int8 a1)
{
  v2 = a1;
  sub_1B0E46C28();
  v3 = 0;
  if (v2 != 8)
  {
    MEMORY[0x1B2728D70](1);
    v3 = a1;
  }

  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC7C3C()
{
  v1 = *v0;
  sub_1B0E46C28();
  v2 = 0;
  if (v1 != 8)
  {
    MEMORY[0x1B2728D70](1);
    v2 = v1;
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC7C9C()
{
  v1 = *v0;
  if (v1 == 8)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0CC7CE4(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  if (v2 == 8)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0CC7D44(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    return v3 == 8;
  }

  if (v3 == 8)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t FlagsUpdate.init(unread:deleted:answered:draft:forwarded:redirected:junk:label:iCloudCleanup:)(char a1, char a2, char a3, char a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, uint64_t a8)
{
  v8 = 256;
  if ((a2 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  v10 = 0x10000;
  if ((a3 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((a4 & 1) == 0)
  {
    v11 = 0;
  }

  return v9 | v10 | v11 | (a5 << 32) | (a6 << 40) | (a7 << 48) | (a8 << 56);
}

uint64_t FlagsUpdate.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  if ((a2 & 0xFF00000000) != 0x200000000)
  {
    sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if ((a2 & 0xFF0000000000) != 0x20000000000)
  {
    sub_1B0E46C68();
  }

  v5 = HIBYTE(a2);
  sub_1B0E46C68();
  if ((a2 & 0xFF000000000000) == 0x3000000000000)
  {
    sub_1B0E46C68();
    if (v5 != 8)
    {
LABEL_7:
      MEMORY[0x1B2728D70](1);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](BYTE6(a2));
    if (v5 != 8)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_10:
  MEMORY[0x1B2728D70](v5);
  if (a3 != 2)
  {
    sub_1B0E46C68();
  }

  return sub_1B0E46C68();
}

uint64_t FlagsUpdate.hashValue.getter(uint64_t a1, char a2)
{
  sub_1B0E46C28();
  FlagsUpdate.hash(into:)(v5, a1 & 0xFFFFFFFF01010101, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC7F58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_1B0E46C28();
  v10 = 256;
  if ((v2 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  FlagsUpdate.hash(into:)(v14, (v5 << 32) | (v6 << 40) | (v7 << 48) | v1 & 1 | v10 | v11 | v12 | (v8 << 56), v9);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC8024(uint64_t a1)
{
  v2 = 256;
  if ((v1[1] & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if ((v1[2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if ((v1[3] & 1) == 0)
  {
    v4 = 0;
  }

  return FlagsUpdate.hash(into:)(a1, (v1[4] << 32) | (v1[5] << 40) | (v1[6] << 48) | *v1 & 1 | v2 | v3 | v4 | (v1[7] << 56), v1[8]);
}

uint64_t sub_1B0CC8090(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  sub_1B0E46C28();
  v11 = 256;
  if ((v3 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v13 = 0;
  }

  FlagsUpdate.hash(into:)(v15, (v6 << 32) | (v7 << 40) | (v8 << 48) | v2 & 1 | v11 | v12 | v13 | (v9 << 56), v10);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CC8158(_BYTE *a1, _BYTE *a2)
{
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (a1[2])
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (a1[3])
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a1[4] << 32) | (a1[5] << 40) | (a1[6] << 48) | *a1 & 1 | v4 | v6 | v8 | (a1[7] << 56);
  if ((a2[1] & 1) == 0)
  {
    v3 = 0;
  }

  if ((a2[2] & 1) == 0)
  {
    v5 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = 0;
  }

  v10 = (a2[4] << 32) | (a2[5] << 40) | (a2[6] << 48) | *a2 & 1 | v3 | v5 | v7 | (a2[7] << 56);
  v11 = a2[8];
  v12 = a1[8];

  return sub_1B0CC9810(v9, v12, v10, v11);
}

unint64_t Flags.init(_:)(uint64_t a1)
{
  v1 = a1 & 0xFF000000000000;
  if ((a1 & 0xFF000000000000) == 0x3000000000000)
  {
    v1 = 0;
  }

  v2 = a1 & 0xFF00000000000000;
  if ((a1 & 0xFF00000000000000) == 0x800000000000000)
  {
    v2 = 0x100000000000000;
  }

  return v1 | a1 & 0x10100000000 | v2 | a1 & 0x1010101;
}

IMAP2Persistence::FlagsWithModifications __swiftcall FlagsWithModifications.init(flags:)(IMAP2Persistence::Flags flags)
{
  LOBYTE(v3) = flags.iCloudCleanup;
  *(&v3 + 1) = flags;
  *&flags.iCloudCleanup = v3;
  v2 = WORD4(v3);
  result.flags = flags;
  *&result.originalFlags.value.unread = *(&v1 + 1);
  *&result.originalFlags.value.forwarded = *(&v1 + 5);
  result.originalFlags.value.junk = HIBYTE(v1);
  *&result.originalFlags.value.label = v2;
  return result;
}

unint64_t FlagsWithModifications.update(with:)(unint64_t result, char a2)
{
  v3 = *(v2 + 9);
  if (v3 != 2)
  {
    v4 = v3 & 1;
    v5 = result & 1;
    if (*v2 == v4)
    {
      *v2 = v5;
    }

    v2[9] = v5;
    v3 = *(v2 + 9);
    if (v3 != 2)
    {
      v6 = v2[1] ^ (v3 >> 8) & 1;
      v7 = (result >> 8) & 1;
      if ((v6 & 1) == 0)
      {
        v2[1] = v7;
      }

      v2[10] = v7;
      v3 = *(v2 + 9);
      if (v3 != 2)
      {
        if (((v2[2] ^ (v3 >> 16) & 1) & 1) == 0)
        {
          v2[2] = BYTE2(result) & 1;
        }

        v2[11] = BYTE2(result) & 1;
        v3 = *(v2 + 9);
        if (v3 != 2)
        {
          v8 = v2[3] ^ (v3 >> 24) & 1;
          v9 = BYTE3(result) & 1;
          if ((v8 & 1) == 0)
          {
            v2[3] = v9;
          }

          v2[12] = v9;
          v3 = *(v2 + 9);
        }
      }
    }
  }

  if ((result & 0xFF00000000) != 0x200000000 && v3 != 2)
  {
    if (((v2[4] ^ BYTE4(v3) & 1) & 1) == 0)
    {
      v2[4] = BYTE4(result) & 1;
    }

    v2[13] = BYTE4(result) & 1;
    v3 = *(v2 + 9);
  }

  if ((result & 0xFF0000000000) != 0x20000000000 && v3 != 2)
  {
    v10 = v2[5] ^ (v3 >> 40) & 1;
    v11 = (result >> 40) & 1;
    if ((v10 & 1) == 0)
    {
      v2[5] = v11;
    }

    v2[14] = v11;
    v3 = *(v2 + 9);
  }

  v12 = HIBYTE(result);
  if (BYTE6(result) != 3 && v3 != 2)
  {
    if (v2[6] == BYTE6(v3))
    {
      v2[6] = BYTE6(result);
    }

    v2[15] = BYTE6(result);
    v3 = *(v2 + 9);
  }

  if (v12 == 8)
  {
    if (v3 != 2 && !HIBYTE(v3))
    {
      if (v2[7] <= 1u)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = v2[7];
      }

      if (v2[7])
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if (v3 != 2)
  {
    if (v2[7] != HIBYTE(v3))
    {
LABEL_40:
      v2[16] = v12;
      goto LABEL_41;
    }

LABEL_39:
    v2[7] = v12;
    goto LABEL_40;
  }

LABEL_41:
  if (a2 != 2 && v2[9] != 2)
  {
    v13 = a2 & 1;
    if (v2[8] == v2[17])
    {
      v2[8] = v13;
    }

    v2[17] = v13;
  }

  return result;
}

void *sub_1B0CC8554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61E0, &qword_1B0EE36F8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1B0CC8694()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61C8, &qword_1B0EE36E8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
}

uint64_t sub_1B0CC87E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61E0, &qword_1B0EE36F8);
  result = sub_1B0E46208();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v16);
      result = sub_1B0E46CB8();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_1B0CC8A04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61C8, &qword_1B0EE36E8);
  result = sub_1B0E46208();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      SectionSpecifier.Part.hash(into:)(v24, v16);
      result = sub_1B0E46CB8();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_1B0CC8C2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61E0, &qword_1B0EE36F8);
  result = sub_1B0E46208();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v17);
      result = sub_1B0E46CB8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B0CC8E7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61C8, &qword_1B0EE36E8);
  result = sub_1B0E46208();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1B0E46C28();
      SectionSpecifier.Part.hash(into:)(v26, v17);
      result = sub_1B0E46CB8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B0CC90CC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v6 = sub_1B0E46CB8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1B0CC9304(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B0CC91C4(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B0E46C28();
  SectionSpecifier.Part.hash(into:)(v15, a2);
  v6 = sub_1B0E46CB8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v11 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *v2;
    v13 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CC9450(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1B0CC9304(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0CC8C2C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B0CC8554();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B0CC87E4(v5 + 1);
  }

  v8 = *v3;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v4);
  result = sub_1B0E46CB8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void sub_1B0CC9450(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0CC8E7C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B0CC8694();
      goto LABEL_12;
    }

    sub_1B0CC8A04(v6 + 1);
  }

  v8 = *v3;
  sub_1B0E46C28();
  SectionSpecifier.Part.hash(into:)(v18, a1);
  v9 = sub_1B0E46CB8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v13 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v12, a1);

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B0E46B98();
  __break(1u);
}

void *sub_1B0CC95C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61D0, &qword_1B0EE36F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61D8, &qword_1B0EE4750);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0CC96F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61C0, &qword_1B0EE36E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B0CC9810(unint64_t a1, int a2, unint64_t a3, int a4)
{
  v4 = 0;
  if (((a1 >> 8) & 1) != ((a3 >> 8) & 1) || ((a1 ^ a3) & 1) != 0 || ((a1 >> 16) & 1) != ((a3 >> 16) & 1) || ((a1 >> 24) & 1) != ((a3 >> 24) & 1))
  {
    return v4;
  }

  if ((a1 & 0xFF00000000) == 0x200000000)
  {
    if (BYTE4(a3) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE4(a3) == 2 || ((((a1 & 0x100000000) == 0) ^ HIDWORD(a3)) & 1) == 0)
    {
      return v4;
    }
  }

  if ((a1 & 0xFF0000000000) == 0x20000000000)
  {
    if (BYTE5(a3) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE5(a3) == 2 || ((((a1 & 0x10000000000) == 0) ^ (a3 >> 40)) & 1) == 0)
    {
      return v4;
    }
  }

  if ((a1 & 0xFF000000000000) == 0x3000000000000)
  {
    if (BYTE6(a3) != 3)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (BYTE6(a3) == 3 || ((a1 ^ a3) & 0xFF000000000000) != 0)
    {
      return v4;
    }
  }

  v5 = HIBYTE(a3);
  if (HIBYTE(a1) == 8)
  {
    if (v5 != 8)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (HIBYTE(a1) == v5)
  {
LABEL_24:
    if (a2 == 2)
    {
      if (a4 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 2 || ((a4 ^ a2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1B0CC99DC(unint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  result = 0;
  *&v9 = a2;
  BYTE8(v9) = a3;
  v8 = *(&v9 + 1);
  *v10 = a5;
  v10[8] = a6;
  if (((a1 ^ a4) & 1) == 0 && ((a1 >> 8) & 1) == ((a4 >> 8) & 1) && ((a1 >> 16) & 1) == ((a4 >> 16) & 1) && ((a1 >> 24) & 1) == ((a4 >> 24) & 1) && (BYTE4(a1) & 1) == (BYTE4(a4) & 1) && ((a1 >> 40) & 1) == ((a4 >> 40) & 1) && !((a1 ^ a4) >> 48) && ((a2 ^ a5) & 1) == 0)
  {
    if (v8 == 2)
    {
      if (BYTE1(a5) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a5) == 2 || (sub_1B0CC9968(v8 & 0xFFFF010101010101, (a3 >> 8) & 1, *&v10[1] & 0xFFFF010101010101, (a6 >> 8) & 1) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1B0CC9AD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B0CCA270();
  result = MEMORY[0x1B2727570](v2, &type metadata for FlagKind, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B0CC90CC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1B0CC9B48()
{
  result = qword_1EB6E6180;
  if (!qword_1EB6E6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6180);
  }

  return result;
}

unint64_t sub_1B0CC9BA0()
{
  result = qword_1EB6E6188;
  if (!qword_1EB6E6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6188);
  }

  return result;
}

unint64_t sub_1B0CC9BF8()
{
  result = qword_1EB6E6190;
  if (!qword_1EB6E6190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6190);
  }

  return result;
}

unint64_t sub_1B0CC9C50()
{
  result = qword_1EB6E6198;
  if (!qword_1EB6E6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6198);
  }

  return result;
}

unint64_t sub_1B0CC9CA8()
{
  result = qword_1EB6E61A0;
  if (!qword_1EB6E61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E61A0);
  }

  return result;
}

unint64_t sub_1B0CC9D00()
{
  result = qword_1EB6E61A8;
  if (!qword_1EB6E61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E61A8);
  }

  return result;
}

unint64_t sub_1B0CC9D58()
{
  result = qword_1EB6DC960;
  if (!qword_1EB6DC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC960);
  }

  return result;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 __swift_memcpy18_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FlagsWithModifications(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FlagsWithModifications(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B0CC9EF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0CC9F44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlagsUpdate.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 8;
  v9 = v7 - 8;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlagsUpdate.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B0CCA0EC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B0CCA100(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MailboxAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MailboxAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0CCA270()
{
  result = qword_1EB6DC968;
  if (!qword_1EB6DC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DC968);
  }

  return result;
}

uint64_t MessageHeader.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageHeader.data.setter(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MessageHeader.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B0CCA4D8(uint64_t a1)
{
  result = sub_1B0E443C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MailboxOfInterest.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MailboxOfInterest.name.setter(uint64_t a1, int a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void MailboxOfInterest.metadata.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 36);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

__n128 MailboxOfInterest.metadata.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  *(v1 + 64) = *(a1 + 32);
  return result;
}

unint64_t MailboxOfInterest.localModification.getter()
{
  v1 = *(v0 + 72);
  sub_1B07C9330(v1);
  return v1;
}

unint64_t MailboxOfInterest.localModification.setter(uint64_t a1, int a2)
{
  result = sub_1B07C936C(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t MailboxOfInterest.latestLocalChange.setter(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 88) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxOfInterest.init(id:name:uidValidity:fetchedWindow:highestModificationSequenceValue:localModification:latestLocalChange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, int a12, int a13, int a14, char a15)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 84) = a14;
  *(a9 + 88) = a15 & 1;
  return result;
}

uint64_t sub_1B0CCA82C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s16IMAP2Persistence17MailboxOfInterestV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t MailboxOfInterest.uidValidity.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t *(*MailboxOfInterest.uidValidity.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 12) = *(v1 + 36);
  return sub_1B0CCA8DC;
}

uint64_t *sub_1B0CCA8DC(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 12);
  *(v1 + 32) = *(result + 2);
  *(v1 + 36) = v2;
  return result;
}

uint64_t MailboxOfInterest.highestModificationSequenceValue.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t (*MailboxOfInterest.highestModificationSequenceValue.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  return sub_1B0CCA948;
}

uint64_t sub_1B0CCA948(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t MailboxOfInterest.hashValue.getter()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*(v0 + 24) | (*(v0 + 24) << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CCA9D8()
{
  v1 = *(v0 + 24);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CCAA50(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

double sub_1B0CCAA94@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

unint64_t sub_1B0CCAAA4()
{
  result = qword_1EB6E61E8;
  if (!qword_1EB6E61E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E61E8);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B0CCAB20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1B0CCAB68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0CCABD0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 12))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0CCAC2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B0CCAC80(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1B0CCACB0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v20 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v21 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      SectionSpecifier.Part.hash(into:)(v22, v13);
      v14 = sub_1B0E46CB8();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v18, v13);

        if (v19)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = v20;
      v7 = v21;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0CCAE6C(uint64_t a1, uint64_t a2)
{
  v183 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = v3[3];
      v177 = v3[2];
      v178 = v6;
      v7 = v3[1];
      v175 = *v3;
      v176 = v7;
      v8 = v4[2];
      v9 = v4[3];
      v10 = *v4;
      *v181 = v4[1];
      *&v181[16] = v8;
      v11 = v4[4];
      *&v181[32] = v9;
      v182 = v11;
      v179 = v3[4];
      v180 = v10;
      v12 = *(&v176 + 1);
      v13 = v176;
      v14 = *(&v178 + 1);
      v15 = (*(&v179 + 1) >> 59) & 6 | ((*(&v178 + 1) & 0x2000000000000000) != 0);
      if (v15 <= 1)
      {
        break;
      }

      if (v15 == 2)
      {
        if (((*(&v182 + 1) >> 59) & 6 | ((*&v181[40] & 0x2000000000000000) != 0)) != 2)
        {
          return;
        }

        v27 = *(&v180 + 1);
        v28 = v180;
        v29 = *(&v175 + 1) >> 62;
        v30 = *(&v180 + 1) >> 62;
        if (*(&v175 + 1) >> 62 == 3)
        {
          v31 = 0;
          if (v175 == __PAIR128__(0xC000000000000000, 0) && *(&v180 + 1) >> 62 == 3)
          {
            v31 = 0;
            if (v180 == __PAIR128__(0xC000000000000000, 0))
            {
              goto LABEL_378;
            }
          }

LABEL_80:
          if (v30 <= 1)
          {
            goto LABEL_81;
          }

LABEL_40:
          if (v30 != 2)
          {
            if (v31)
            {
              return;
            }

            goto LABEL_378;
          }

          v39 = *(v180 + 16);
          v38 = *(v180 + 24);
          v40 = __OFSUB__(v38, v39);
          v41 = v38 - v39;
          if (v40)
          {
            goto LABEL_387;
          }
        }

        else
        {
          if (v29 > 1)
          {
            if (v29 == 2)
            {
              v50 = *(v175 + 16);
              v49 = *(v175 + 24);
              v40 = __OFSUB__(v49, v50);
              v31 = v49 - v50;
              if (v40)
              {
                goto LABEL_401;
              }

              goto LABEL_80;
            }

            v31 = 0;
            if (v30 <= 1)
            {
              goto LABEL_81;
            }

            goto LABEL_40;
          }

          if (v29)
          {
            LODWORD(v31) = DWORD1(v175) - v175;
            if (__OFSUB__(DWORD1(v175), v175))
            {
              goto LABEL_403;
            }

            v31 = v31;
            goto LABEL_80;
          }

          v31 = BYTE14(v175);
          if (v30 > 1)
          {
            goto LABEL_40;
          }

LABEL_81:
          if (v30)
          {
            LODWORD(v41) = DWORD1(v180) - v180;
            if (__OFSUB__(DWORD1(v180), v180))
            {
              goto LABEL_384;
            }

            v41 = v41;
          }

          else
          {
            v41 = BYTE14(v180);
          }
        }

        if (v31 != v41)
        {
          return;
        }

        if (v31 < 1)
        {
          goto LABEL_378;
        }

        if (v29 > 1)
        {
          v172 = i;
          if (v29 == 2)
          {
            v57 = *(v175 + 16);
            v56 = *(v175 + 24);
            sub_1B069506C(&v180, v174);
            sub_1B069506C(&v175, v174);
            v58 = sub_1B0E42A98();
            if (v58)
            {
              v59 = sub_1B0E42AC8();
              if (__OFSUB__(v57, v59))
              {
                goto LABEL_426;
              }

              v58 += v57 - v59;
            }

            if (__OFSUB__(v56, v57))
            {
              goto LABEL_419;
            }

            goto LABEL_147;
          }

          memset(v173, 0, 14);
          sub_1B069506C(&v180, v174);
          sub_1B069506C(&v175, v174);
          sub_1B0AE2440(v173, v28, v27, v174);
          sub_1B070BB30(&v180);
          sub_1B070BB30(&v175);
          v73 = v174[0];
        }

        else
        {
          if (!v29)
          {
            v55 = i;
            LODWORD(v173[0]) = v175;
            WORD2(v173[0]) = WORD2(v175);
            *(v173 + 6) = *(&v175 + 6);
            sub_1B069506C(&v180, v174);
            sub_1B069506C(&v175, v174);
            sub_1B0AE2440(v173, v28, v27, v174);
            sub_1B070BB30(&v180);
            sub_1B070BB30(&v175);
            i = v55;
            if ((v174[0] & 1) == 0)
            {
              return;
            }

            goto LABEL_378;
          }

          v172 = i;
          v71 = v175;
          if (v175 >> 32 < v175)
          {
            goto LABEL_416;
          }

          sub_1B069506C(&v180, v174);
          sub_1B069506C(&v175, v174);
          v58 = sub_1B0E42A98();
          if (v58)
          {
            v72 = sub_1B0E42AC8();
            if (__OFSUB__(v71, v72))
            {
              goto LABEL_431;
            }

            v58 += v71 - v72;
          }

LABEL_147:
          sub_1B0E42AB8();
          sub_1B0AE2440(v58, v28, v27, v174);
          sub_1B070BB30(&v180);
          sub_1B070BB30(&v175);
          v73 = v174[0];
        }

        i = v172;
        if ((v73 & 1) == 0)
        {
          return;
        }

        goto LABEL_378;
      }

      if (v15 == 3)
      {
        if (((*(&v182 + 1) >> 59) & 6 | ((*&v181[40] & 0x2000000000000000) != 0)) != 3)
        {
          return;
        }

        v16 = *(&v176 + 1);
        v17 = i;
        v18 = *v181;
        v19 = *&v181[8];
        if (v175 != v180 && (sub_1B0E46A78() & 1) == 0)
        {
          return;
        }

        if (v13 == v18 && v16 == v19)
        {
          i = v17;
        }

        else
        {
          v48 = sub_1B0E46A78();
          i = v17;
          if ((v48 & 1) == 0)
          {
            return;
          }
        }
      }

      else
      {
        if (((*(&v182 + 1) >> 59) & 6 | ((*&v181[40] & 0x2000000000000000) != 0)) != 4)
        {
          return;
        }

        if (*(&v182 + 1) != 0x2000000000000000)
        {
          return;
        }

        v32 = vorrq_s8(*&v181[8], *&v181[24]);
        if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v182 | *v181 | *(&v180 + 1) | v180 | *&v181[40])
        {
          return;
        }
      }

LABEL_378:
      if (!i)
      {
        return;
      }

      v4 += 5;
      v3 += 5;
    }

    v171 = i;
    if (!v15)
    {
      if ((*(&v182 + 1) >> 59) & 6 | ((*&v181[40] & 0x2000000000000000) != 0))
      {
        return;
      }

      v21 = *(&v180 + 1);
      v20 = v180;
      v22 = *v181;
      v23 = *&v181[8];
      v24 = *(&v175 + 1) >> 62;
      v25 = *(&v180 + 1) >> 62;
      if (*(&v175 + 1) >> 62 == 3)
      {
        v26 = 0;
        if (v175 == __PAIR128__(0xC000000000000000, 0) && *(&v180 + 1) >> 62 == 3)
        {
          v26 = 0;
          if (v180 == __PAIR128__(0xC000000000000000, 0))
          {
LABEL_112:
            sub_1B069506C(&v180, v174);
            sub_1B069506C(&v175, v174);
            goto LABEL_160;
          }
        }
      }

      else if (v24 > 1)
      {
        if (v24 != 2)
        {
          v26 = 0;
          if (v25 <= 1)
          {
LABEL_103:
            if (v25)
            {
              LODWORD(v44) = DWORD1(v180) - v180;
              if (__OFSUB__(DWORD1(v180), v180))
              {
                __break(1u);
LABEL_384:
                __break(1u);
LABEL_385:
                __break(1u);
LABEL_386:
                __break(1u);
LABEL_387:
                __break(1u);
LABEL_388:
                __break(1u);
LABEL_389:
                __break(1u);
LABEL_390:
                __break(1u);
LABEL_391:
                __break(1u);
LABEL_392:
                __break(1u);
LABEL_393:
                __break(1u);
LABEL_394:
                __break(1u);
LABEL_395:
                __break(1u);
LABEL_396:
                __break(1u);
LABEL_397:
                __break(1u);
LABEL_398:
                __break(1u);
LABEL_399:
                __break(1u);
LABEL_400:
                __break(1u);
LABEL_401:
                __break(1u);
LABEL_402:
                __break(1u);
LABEL_403:
                __break(1u);
LABEL_404:
                __break(1u);
LABEL_405:
                __break(1u);
LABEL_406:
                __break(1u);
LABEL_407:
                __break(1u);
LABEL_408:
                __break(1u);
LABEL_409:
                __break(1u);
LABEL_410:
                __break(1u);
LABEL_411:
                __break(1u);
LABEL_412:
                __break(1u);
LABEL_413:
                __break(1u);
LABEL_414:
                __break(1u);
LABEL_415:
                __break(1u);
LABEL_416:
                __break(1u);
LABEL_417:
                __break(1u);
LABEL_418:
                __break(1u);
LABEL_419:
                __break(1u);
LABEL_420:
                __break(1u);
LABEL_421:
                __break(1u);
LABEL_422:
                __break(1u);
LABEL_423:
                __break(1u);
LABEL_424:
                __break(1u);
LABEL_425:
                __break(1u);
LABEL_426:
                __break(1u);
LABEL_427:
                __break(1u);
LABEL_428:
                __break(1u);
LABEL_429:
                __break(1u);
LABEL_430:
                __break(1u);
LABEL_431:
                __break(1u);
              }

              v44 = v44;
            }

            else
            {
              v44 = BYTE14(v180);
            }

            goto LABEL_107;
          }

LABEL_47:
          if (v25 != 2)
          {
            if (v26)
            {
              return;
            }

            goto LABEL_112;
          }

          v43 = *(v180 + 16);
          v42 = *(v180 + 24);
          v40 = __OFSUB__(v42, v43);
          v44 = v42 - v43;
          if (v40)
          {
            goto LABEL_388;
          }

LABEL_107:
          if (v26 != v44)
          {
            return;
          }

          if (v26 < 1)
          {
            goto LABEL_112;
          }

          if (v24 > 1)
          {
            if (v24 != 2)
            {
              memset(v173, 0, 14);
              sub_1B069506C(&v180, v174);
              sub_1B069506C(&v175, v174);
              sub_1B0AE2440(v173, v20, v21, v174);
              if ((v174[0] & 1) == 0)
              {
                goto LABEL_382;
              }

LABEL_160:
              v77 = v12 >> 62;
              v78 = v23 >> 62;
              if (v12 >> 62 == 3)
              {
                v79 = 0;
                if (!v13 && v12 == 0xC000000000000000 && v23 >> 62 == 3)
                {
                  v79 = 0;
                  if (!v22 && v23 == 0xC000000000000000)
                  {
                    goto LABEL_365;
                  }
                }
              }

              else if (v77 > 1)
              {
                if (v77 != 2)
                {
                  v79 = 0;
                  if (v78 <= 1)
                  {
LABEL_181:
                    if (v78)
                    {
                      LODWORD(v82) = HIDWORD(v22) - v22;
                      if (__OFSUB__(HIDWORD(v22), v22))
                      {
                        goto LABEL_390;
                      }

                      v82 = v82;
                    }

                    else
                    {
                      v82 = BYTE6(v23);
                    }

LABEL_185:
                    if (v79 != v82)
                    {
                      goto LABEL_382;
                    }

                    if (v79 < 1)
                    {
                      goto LABEL_365;
                    }

                    if (v77 > 1)
                    {
                      if (v77 == 2)
                      {
                        v85 = v22;
                        v87 = *(v13 + 16);
                        v88 = *(v13 + 24);
LABEL_242:
                        sub_1B03B2000(v85, v23);
                        sub_1B03B2000(v85, v23);
                        sub_1B03B2000(v85, v23);
                        v105 = sub_1B0AB87A0(v87, v88, v12 & 0x3FFFFFFFFFFFFFFFLL, v85, v23);
                        sub_1B0391D50(v85, v23);
                        sub_1B070BB30(&v180);
                        sub_1B070BB30(&v175);
                        sub_1B0391D50(v85, v23);
                        v106 = v85;
                        v107 = v23;
                        goto LABEL_373;
                      }

                      *&v174[6] = 0;
                      *v174 = 0;
                      sub_1B03B2000(v22, v23);
                      sub_1B03B2000(v22, v23);
                      sub_1B0AE2440(v174, v22, v23, v173);
                      sub_1B070BB30(&v180);
                      sub_1B070BB30(&v175);
                      sub_1B0391D50(v22, v23);
                      v86 = v22;
                    }

                    else
                    {
                      v85 = v22;
                      if (v77)
                      {
                        v87 = v13;
                        v88 = v13 >> 32;
                        if (v88 < v87)
                        {
                          goto LABEL_422;
                        }

                        goto LABEL_242;
                      }

                      *v174 = v13;
                      *&v174[8] = v12;
                      v174[10] = BYTE2(v12);
                      v174[11] = BYTE3(v12);
                      v174[12] = BYTE4(v12);
                      v174[13] = BYTE5(v12);
                      sub_1B03B2000(v22, v23);
                      sub_1B03B2000(v22, v23);
                      sub_1B0AE2440(v174, v22, v23, v173);
                      sub_1B070BB30(&v180);
                      sub_1B070BB30(&v175);
                      sub_1B0391D50(v22, v23);
                      v86 = v22;
                    }

                    v108 = v23;
                    goto LABEL_377;
                  }

LABEL_170:
                  if (v78 != 2)
                  {
                    goto LABEL_347;
                  }

                  v81 = *(v22 + 16);
                  v80 = *(v22 + 24);
                  v40 = __OFSUB__(v80, v81);
                  v82 = v80 - v81;
                  if (v40)
                  {
                    goto LABEL_391;
                  }

                  goto LABEL_185;
                }

                v84 = *(v13 + 16);
                v83 = *(v13 + 24);
                v40 = __OFSUB__(v83, v84);
                v79 = v83 - v84;
                if (v40)
                {
                  goto LABEL_406;
                }
              }

              else
              {
                if (!v77)
                {
                  v79 = BYTE6(v12);
                  if (v78 <= 1)
                  {
                    goto LABEL_181;
                  }

                  goto LABEL_170;
                }

                LODWORD(v79) = HIDWORD(v13) - v13;
                if (__OFSUB__(HIDWORD(v13), v13))
                {
                  goto LABEL_405;
                }

                v79 = v79;
              }

              if (v78 <= 1)
              {
                goto LABEL_181;
              }

              goto LABEL_170;
            }

            v166 = *&v181[8];
            v169 = *v181;
            v61 = *(v175 + 16);
            v164 = *(v175 + 24);
            sub_1B069506C(&v180, v174);
            sub_1B069506C(&v175, v174);
            v62 = sub_1B0E42A98();
            if (v62)
            {
              v63 = sub_1B0E42AC8();
              if (__OFSUB__(v61, v63))
              {
                goto LABEL_427;
              }

              v62 += v61 - v63;
            }

            if (__OFSUB__(v164, v61))
            {
              goto LABEL_420;
            }

            sub_1B0E42AB8();
            sub_1B0AE2440(v62, v20, v21, v174);
            v60 = v174[0];
          }

          else
          {
            v169 = *v181;
            if (!v24)
            {
              LODWORD(v173[0]) = v175;
              WORD2(v173[0]) = WORD2(v175);
              *(v173 + 6) = *(&v175 + 6);
              sub_1B069506C(&v180, v174);
              sub_1B069506C(&v175, v174);
              sub_1B0AE2440(v173, v20, v21, v174);
              v60 = v174[0];
              goto LABEL_157;
            }

            v166 = *&v181[8];
            v153 = *(&v176 + 1);
            v74 = v175;
            if (v175 >> 32 < v175)
            {
              goto LABEL_417;
            }

            sub_1B069506C(&v180, v174);
            sub_1B069506C(&v175, v174);
            v75 = sub_1B0E42A98();
            if (v75)
            {
              v76 = sub_1B0E42AC8();
              if (__OFSUB__(v74, v76))
              {
                goto LABEL_430;
              }

              v75 += v74 - v76;
            }

            v12 = v153;
            sub_1B0E42AB8();
            sub_1B0AE2440(v75, v20, v21, v174);
            v60 = v174[0];
          }

          v23 = v166;
LABEL_157:
          v22 = v169;
          if ((v60 & 1) == 0)
          {
            goto LABEL_382;
          }

          goto LABEL_160;
        }

        v52 = *(v175 + 16);
        v51 = *(v175 + 24);
        v40 = __OFSUB__(v51, v52);
        v26 = v51 - v52;
        if (v40)
        {
          goto LABEL_399;
        }
      }

      else
      {
        if (!v24)
        {
          v26 = BYTE14(v175);
          if (v25 <= 1)
          {
            goto LABEL_103;
          }

          goto LABEL_47;
        }

        LODWORD(v26) = DWORD1(v175) - v175;
        if (__OFSUB__(DWORD1(v175), v175))
        {
          goto LABEL_400;
        }

        v26 = v26;
      }

      if (v25 <= 1)
      {
        goto LABEL_103;
      }

      goto LABEL_47;
    }

    v33 = *&v181[40];
    v157 = *(&v182 + 1);
    if (((*(&v182 + 1) >> 59) & 6 | ((*&v181[40] & 0x2000000000000000) != 0)) != 1)
    {
      return;
    }

    v158 = v178;
    v159 = *(&v179 + 1);
    v34 = *&v181[8];
    v163 = *(&v177 + 1);
    v165 = *v181;
    v161 = v177;
    v162 = *&v181[16];
    v168 = *&v181[24];
    v35 = *(&v175 + 1) >> 62;
    v36 = *(&v180 + 1) >> 62;
    v160 = *&v181[32];
    v155 = v179;
    v156 = v182;
    if (*(&v175 + 1) >> 62 == 3)
    {
      v37 = 0;
      if (v175 == __PAIR128__(0xC000000000000000, 0) && *(&v180 + 1) >> 62 == 3)
      {
        v37 = 0;
        if (v180 == __PAIR128__(0xC000000000000000, 0))
        {
LABEL_131:
          sub_1B069506C(&v180, v174);
          sub_1B069506C(&v175, v174);
          v67 = v33;
          goto LABEL_202;
        }
      }
    }

    else if (v35 > 1)
    {
      if (v35 != 2)
      {
        v37 = 0;
        if (v36 <= 1)
        {
LABEL_122:
          if (v36)
          {
            LODWORD(v47) = DWORD1(v180) - v180;
            if (__OFSUB__(DWORD1(v180), v180))
            {
              goto LABEL_386;
            }

            v47 = v47;
          }

          else
          {
            v47 = BYTE14(v180);
          }

          goto LABEL_126;
        }

LABEL_54:
        if (v36 != 2)
        {
          if (v37)
          {
            return;
          }

          goto LABEL_131;
        }

        v46 = *(v180 + 16);
        v45 = *(v180 + 24);
        v40 = __OFSUB__(v45, v46);
        v47 = v45 - v46;
        if (v40)
        {
          goto LABEL_385;
        }

LABEL_126:
        if (v37 != v47)
        {
          return;
        }

        if (v37 < 1)
        {
          goto LABEL_131;
        }

        if (v35 > 1)
        {
          v150 = v180;
          if (v35 != 2)
          {
            memset(v173, 0, 14);
            sub_1B069506C(&v180, v174);
            sub_1B069506C(&v175, v174);
            sub_1B0AE2440(v173, v150, *(&v150 + 1), v174);
            v67 = v33;
            if ((v174[0] & 1) == 0)
            {
              goto LABEL_382;
            }

LABEL_202:
            v91 = v12 >> 62;
            v92 = v34 >> 62;
            if (v12 >> 62 == 3)
            {
              v93 = 0;
              v94 = v168;
              if (!v13 && v12 == 0xC000000000000000 && v34 >> 62 == 3)
              {
                v93 = 0;
                if (!v165 && v34 == 0xC000000000000000)
                {
                  goto LABEL_235;
                }
              }
            }

            else
            {
              v94 = v168;
              if (v91 > 1)
              {
                if (v91 != 2)
                {
                  v93 = 0;
                  if (v92 <= 1)
                  {
LABEL_225:
                    if (v92)
                    {
                      LODWORD(v97) = HIDWORD(v165) - v165;
                      if (__OFSUB__(HIDWORD(v165), v165))
                      {
                        goto LABEL_389;
                      }

                      v97 = v97;
                    }

                    else
                    {
                      v97 = BYTE6(v34);
                    }

LABEL_229:
                    if (v93 != v97)
                    {
                      goto LABEL_382;
                    }

                    if (v93 >= 1)
                    {
                      if (v91 > 1)
                      {
                        if (v91 == 2)
                        {
                          v103 = *(v13 + 24);
                          v154 = *(v13 + 16);
                          sub_1B03B2000(v165, v34);
                          sub_1B03B2000(v165, v34);
                          sub_1B03B2000(v165, v34);
                          v104 = sub_1B0AB87A0(v154, v103, v12 & 0x3FFFFFFFFFFFFFFFLL, v165, v34);
                          sub_1B0391D50(v165, v34);
                          sub_1B0391D50(v165, v34);
                          sub_1B0391D50(v165, v34);
                          v100 = v160;
                          v94 = v168;
                          v101 = v163;
                          if ((v104 & 1) == 0)
                          {
                            goto LABEL_382;
                          }
                        }

                        else
                        {
                          *&v174[6] = 0;
                          *v174 = 0;
                          sub_1B03B2000(v165, v34);
                          sub_1B03B2000(v165, v34);
                          sub_1B0AE2440(v174, v165, v34, v173);
                          sub_1B0391D50(v165, v34);
                          sub_1B0391D50(v165, v34);
                          v100 = v160;
                          v101 = v163;
                          if ((v173[0] & 1) == 0)
                          {
                            goto LABEL_382;
                          }
                        }
                      }

                      else
                      {
                        v102 = v34;
                        if (v91)
                        {
                          v109 = v13;
                          v110 = v13 >> 32;
                          if (v13 >> 32 < v13)
                          {
                            goto LABEL_421;
                          }

                          v111 = v102;
                          sub_1B03B2000(v165, v102);
                          sub_1B03B2000(v165, v111);
                          sub_1B03B2000(v165, v111);
                          v112 = sub_1B0AB87A0(v109, v110, v12 & 0x3FFFFFFFFFFFFFFFLL, v165, v111);
                          sub_1B0391D50(v165, v111);
                          sub_1B0391D50(v165, v111);
                          sub_1B0391D50(v165, v111);
                          v100 = v160;
                          v94 = v168;
                          v101 = v163;
                          if ((v112 & 1) == 0)
                          {
                            goto LABEL_382;
                          }
                        }

                        else
                        {
                          *v174 = v13;
                          *&v174[8] = v12;
                          v174[10] = BYTE2(v12);
                          v174[11] = BYTE3(v12);
                          v174[12] = BYTE4(v12);
                          v174[13] = BYTE5(v12);
                          sub_1B03B2000(v165, v34);
                          sub_1B03B2000(v165, v34);
                          sub_1B0AE2440(v174, v165, v34, v173);
                          sub_1B0391D50(v165, v34);
                          sub_1B0391D50(v165, v34);
                          v100 = v160;
                          v101 = v163;
                          if ((v173[0] & 1) == 0)
                          {
                            goto LABEL_382;
                          }
                        }
                      }

LABEL_249:
                      v113 = v101 >> 62;
                      v114 = v94 >> 62;
                      if (v101 >> 62 == 3)
                      {
                        v115 = 0;
                        if (!v161 && v101 == 0xC000000000000000 && v94 >> 62 == 3)
                        {
                          v115 = 0;
                          if (!v162 && v94 == 0xC000000000000000)
                          {
                            goto LABEL_291;
                          }
                        }
                      }

                      else if (v113 > 1)
                      {
                        if (v113 != 2)
                        {
                          v115 = 0;
                          if (v114 <= 1)
                          {
LABEL_272:
                            if (v114)
                            {
                              LODWORD(v118) = HIDWORD(v162) - v162;
                              if (__OFSUB__(HIDWORD(v162), v162))
                              {
                                goto LABEL_393;
                              }

                              v118 = v118;
                            }

                            else
                            {
                              v118 = BYTE6(v94);
                            }

                            goto LABEL_276;
                          }

LABEL_259:
                          if (v114 != 2)
                          {
                            if (v115)
                            {
                              goto LABEL_382;
                            }

                            goto LABEL_291;
                          }

                          v117 = *(v162 + 16);
                          v116 = *(v162 + 24);
                          v40 = __OFSUB__(v116, v117);
                          v118 = v116 - v117;
                          if (v40)
                          {
                            goto LABEL_394;
                          }

LABEL_276:
                          if (v115 != v118)
                          {
                            goto LABEL_382;
                          }

                          if (v115 < 1)
                          {
                            goto LABEL_291;
                          }

                          if (v113 > 1)
                          {
                            if (v113 == 2)
                            {
                              v122 = v101;
                              v167 = *(v161 + 24);
                              v170 = *(v161 + 16);
                              sub_1B03B2000(v162, v94);
                              sub_1B03B2000(v162, v94);
                              sub_1B03B2000(v162, v94);
                              LOBYTE(v122) = sub_1B0AB87A0(v170, v167, v122 & 0x3FFFFFFFFFFFFFFFLL, v162, v94);
                              sub_1B0391D50(v162, v94);
                              sub_1B0391D50(v162, v94);
                              sub_1B0391D50(v162, v94);
                              if ((v122 & 1) == 0)
                              {
                                goto LABEL_382;
                              }

                              goto LABEL_291;
                            }

                            *&v174[6] = 0;
                            *v174 = 0;
                            sub_1B03B2000(v162, v94);
                            sub_1B03B2000(v162, v94);
                            sub_1B0AE2440(v174, v162, v94, v173);
                            sub_1B0391D50(v162, v94);
                            v121 = v162;
                          }

                          else
                          {
                            if (v113)
                            {
                              if (v161 >> 32 < v161)
                              {
                                goto LABEL_423;
                              }

                              sub_1B03B2000(v162, v94);
                              sub_1B03B2000(v162, v94);
                              sub_1B03B2000(v162, v94);
                              v123 = sub_1B0AB87A0(v161, v161 >> 32, v163 & 0x3FFFFFFFFFFFFFFFLL, v162, v94);
                              sub_1B0391D50(v162, v94);
                              sub_1B0391D50(v162, v94);
                              sub_1B0391D50(v162, v94);
                              if ((v123 & 1) == 0)
                              {
LABEL_382:
                                sub_1B070BB30(&v180);
                                sub_1B070BB30(&v175);
                                return;
                              }

LABEL_291:
                              v124 = v14 >> 62;
                              v125 = v67 >> 62;
                              if (v14 >> 62 == 3)
                              {
                                v126 = 0;
                                if (!v158 && (v14 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v67 >> 62 == 3)
                                {
                                  v126 = 0;
                                  if (!v100 && (v67 & 0xDFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
                                  {
                                    goto LABEL_324;
                                  }
                                }
                              }

                              else if (v124 > 1)
                              {
                                if (v124 != 2)
                                {
                                  v126 = 0;
                                  if (v125 <= 1)
                                  {
LABEL_314:
                                    if (v125)
                                    {
                                      LODWORD(v129) = HIDWORD(v100) - v100;
                                      if (__OFSUB__(HIDWORD(v100), v100))
                                      {
                                        goto LABEL_395;
                                      }

                                      v129 = v129;
                                    }

                                    else
                                    {
                                      v129 = BYTE6(v67);
                                    }

                                    goto LABEL_318;
                                  }

LABEL_301:
                                  if (v125 != 2)
                                  {
                                    v132 = v155;
                                    v133 = v156;
                                    v134 = v157;
                                    if (v126)
                                    {
                                      goto LABEL_382;
                                    }

                                    goto LABEL_333;
                                  }

                                  v128 = *(v100 + 16);
                                  v127 = *(v100 + 24);
                                  v40 = __OFSUB__(v127, v128);
                                  v129 = v127 - v128;
                                  if (v40)
                                  {
                                    goto LABEL_396;
                                  }

LABEL_318:
                                  if (v126 != v129)
                                  {
                                    goto LABEL_382;
                                  }

                                  if (v126 >= 1)
                                  {
                                    if (v124 > 1)
                                    {
                                      if (v124 != 2)
                                      {
                                        *&v174[6] = 0;
                                        *v174 = 0;
                                        sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0AE2440(v174, v100, v67 & 0xDFFFFFFFFFFFFFFFLL, v173);
                                        sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        v132 = v155;
                                        v133 = v156;
                                        v134 = v157;
                                        if ((v173[0] & 1) == 0)
                                        {
                                          goto LABEL_382;
                                        }

LABEL_333:
                                        v138 = v134 & 0xCFFFFFFFFFFFFFFFLL;
                                        v139 = v159 >> 62;
                                        v140 = v134 >> 62;
                                        if (v159 >> 62 == 3)
                                        {
                                          v79 = 0;
                                          if (!v132 && (v159 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v134 >> 62 == 3)
                                          {
                                            v79 = 0;
                                            if (!v133 && v138 == 0xC000000000000000)
                                            {
                                              goto LABEL_365;
                                            }
                                          }
                                        }

                                        else if (v139 > 1)
                                        {
                                          if (v139 != 2)
                                          {
                                            v79 = 0;
                                            if (v140 <= 1)
                                            {
LABEL_356:
                                              if (v140)
                                              {
                                                LODWORD(v143) = HIDWORD(v133) - v133;
                                                if (__OFSUB__(HIDWORD(v133), v133))
                                                {
                                                  goto LABEL_397;
                                                }

                                                v143 = v143;
                                              }

                                              else
                                              {
                                                v143 = BYTE6(v134);
                                              }

LABEL_360:
                                              if (v79 != v143)
                                              {
                                                goto LABEL_382;
                                              }

                                              if (v79 < 1)
                                              {
                                                goto LABEL_365;
                                              }

                                              if (v139 > 1)
                                              {
                                                if (v139 == 2)
                                                {
                                                  v146 = *(v132 + 16);
                                                  v147 = *(v132 + 24);
                                                  sub_1B03B2000(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                                                  sub_1B03B2000(v133, v138);
                                                  sub_1B03B2000(v133, v138);
                                                  v148 = v159 & 0xFFFFFFFFFFFFFFFLL;
                                                  goto LABEL_372;
                                                }

                                                *&v174[6] = 0;
                                                *v174 = 0;
                                                sub_1B03B2000(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                                                sub_1B03B2000(v133, v138);
                                              }

                                              else
                                              {
                                                if (v139)
                                                {
                                                  v146 = v132;
                                                  v147 = v132 >> 32;
                                                  if (v132 >> 32 < v132)
                                                  {
                                                    goto LABEL_425;
                                                  }

                                                  sub_1B03B2000(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                                                  sub_1B03B2000(v133, v138);
                                                  sub_1B03B2000(v133, v138);
                                                  v148 = v159 & 0xFFFFFFFFFFFFFFFLL;
LABEL_372:
                                                  v105 = sub_1B0AB87A0(v146, v147, v148, v133, v138);
                                                  sub_1B0391D50(v133, v138);
                                                  sub_1B070BB30(&v180);
                                                  sub_1B070BB30(&v175);
                                                  sub_1B0391D50(v133, v138);
                                                  v106 = v133;
                                                  v107 = v138;
LABEL_373:
                                                  sub_1B0391D50(v106, v107);
                                                  i = v171;
                                                  if ((v105 & 1) == 0)
                                                  {
                                                    return;
                                                  }

                                                  goto LABEL_378;
                                                }

                                                *v174 = v132;
                                                *&v174[8] = v159;
                                                *&v174[12] = WORD2(v159);
                                                sub_1B03B2000(v133, v134 & 0xCFFFFFFFFFFFFFFFLL);
                                                sub_1B03B2000(v133, v138);
                                              }

                                              sub_1B0AE2440(v174, v133, v138, v173);
                                              sub_1B070BB30(&v180);
                                              sub_1B070BB30(&v175);
                                              sub_1B0391D50(v133, v138);
                                              v86 = v133;
                                              v108 = v138;
LABEL_377:
                                              sub_1B0391D50(v86, v108);
                                              i = v171;
                                              if ((v173[0] & 1) == 0)
                                              {
                                                return;
                                              }

                                              goto LABEL_378;
                                            }

LABEL_343:
                                            if (v140 != 2)
                                            {
LABEL_347:
                                              if (v79)
                                              {
                                                goto LABEL_382;
                                              }

LABEL_365:
                                              sub_1B070BB30(&v180);
                                              sub_1B070BB30(&v175);
                                              i = v171;
                                              goto LABEL_378;
                                            }

                                            v142 = *(v133 + 16);
                                            v141 = *(v133 + 24);
                                            v40 = __OFSUB__(v141, v142);
                                            v143 = v141 - v142;
                                            if (v40)
                                            {
                                              goto LABEL_398;
                                            }

                                            goto LABEL_360;
                                          }

                                          v145 = *(v132 + 16);
                                          v144 = *(v132 + 24);
                                          v40 = __OFSUB__(v144, v145);
                                          v79 = v144 - v145;
                                          if (v40)
                                          {
                                            goto LABEL_413;
                                          }
                                        }

                                        else
                                        {
                                          if (!v139)
                                          {
                                            v79 = BYTE6(v159);
                                            if (v140 <= 1)
                                            {
                                              goto LABEL_356;
                                            }

                                            goto LABEL_343;
                                          }

                                          LODWORD(v79) = HIDWORD(v132) - v132;
                                          if (__OFSUB__(HIDWORD(v132), v132))
                                          {
                                            goto LABEL_414;
                                          }

                                          v79 = v79;
                                        }

                                        if (v140 <= 1)
                                        {
                                          goto LABEL_356;
                                        }

                                        goto LABEL_343;
                                      }

                                      v135 = *(v158 + 16);
                                      v136 = *(v158 + 24);
                                    }

                                    else
                                    {
                                      if (!v124)
                                      {
                                        *v174 = v158;
                                        *&v174[8] = v14;
                                        v174[10] = BYTE2(v14);
                                        v174[11] = BYTE3(v14);
                                        v174[12] = BYTE4(v14);
                                        v174[13] = BYTE5(v14);
                                        sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0AE2440(v174, v100, v67 & 0xDFFFFFFFFFFFFFFFLL, v173);
                                        sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                        v132 = v155;
                                        v133 = v156;
                                        v134 = v157;
                                        if ((v173[0] & 1) == 0)
                                        {
                                          goto LABEL_382;
                                        }

                                        goto LABEL_333;
                                      }

                                      v135 = v158;
                                      v136 = v158 >> 32;
                                      if (v158 >> 32 < v158)
                                      {
                                        goto LABEL_424;
                                      }
                                    }

                                    sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B03B2000(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    v137 = sub_1B0AB87A0(v135, v136, v14 & 0x1FFFFFFFFFFFFFFFLL, v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    sub_1B0391D50(v100, v67 & 0xDFFFFFFFFFFFFFFFLL);
                                    v132 = v155;
                                    v133 = v156;
                                    v134 = v157;
                                    if ((v137 & 1) == 0)
                                    {
                                      goto LABEL_382;
                                    }

                                    goto LABEL_333;
                                  }

LABEL_324:
                                  v132 = v155;
                                  v133 = v156;
                                  v134 = v157;
                                  goto LABEL_333;
                                }

                                v131 = *(v158 + 16);
                                v130 = *(v158 + 24);
                                v40 = __OFSUB__(v130, v131);
                                v126 = v130 - v131;
                                if (v40)
                                {
                                  goto LABEL_411;
                                }
                              }

                              else
                              {
                                if (!v124)
                                {
                                  v126 = BYTE6(v14);
                                  if (v125 <= 1)
                                  {
                                    goto LABEL_314;
                                  }

                                  goto LABEL_301;
                                }

                                LODWORD(v126) = HIDWORD(v158) - v158;
                                if (__OFSUB__(HIDWORD(v158), v158))
                                {
                                  goto LABEL_412;
                                }

                                v126 = v126;
                              }

                              if (v125 <= 1)
                              {
                                goto LABEL_314;
                              }

                              goto LABEL_301;
                            }

                            *v174 = v161;
                            *&v174[8] = v101;
                            v174[10] = BYTE2(v101);
                            v174[11] = BYTE3(v101);
                            v174[12] = BYTE4(v101);
                            v174[13] = BYTE5(v101);
                            sub_1B03B2000(v162, v94);
                            sub_1B03B2000(v162, v94);
                            sub_1B0AE2440(v174, v162, v94, v173);
                            sub_1B0391D50(v162, v94);
                            v121 = v162;
                          }

                          sub_1B0391D50(v121, v94);
                          if ((v173[0] & 1) == 0)
                          {
                            goto LABEL_382;
                          }

                          goto LABEL_291;
                        }

                        v120 = *(v161 + 16);
                        v119 = *(v161 + 24);
                        v40 = __OFSUB__(v119, v120);
                        v115 = v119 - v120;
                        if (v40)
                        {
                          goto LABEL_410;
                        }
                      }

                      else
                      {
                        if (!v113)
                        {
                          v115 = BYTE6(v101);
                          if (v114 <= 1)
                          {
                            goto LABEL_272;
                          }

                          goto LABEL_259;
                        }

                        LODWORD(v115) = HIDWORD(v161) - v161;
                        if (__OFSUB__(HIDWORD(v161), v161))
                        {
                          goto LABEL_409;
                        }

                        v115 = v115;
                      }

                      if (v114 <= 1)
                      {
                        goto LABEL_272;
                      }

                      goto LABEL_259;
                    }

LABEL_235:
                    v100 = v160;
                    v101 = v163;
                    goto LABEL_249;
                  }

LABEL_212:
                  if (v92 != 2)
                  {
                    v100 = v160;
                    v101 = v163;
                    if (v93)
                    {
                      goto LABEL_382;
                    }

                    goto LABEL_249;
                  }

                  v96 = *(v165 + 16);
                  v95 = *(v165 + 24);
                  v40 = __OFSUB__(v95, v96);
                  v97 = v95 - v96;
                  if (v40)
                  {
                    goto LABEL_392;
                  }

                  goto LABEL_229;
                }

                v99 = *(v13 + 16);
                v98 = *(v13 + 24);
                v40 = __OFSUB__(v98, v99);
                v93 = v98 - v99;
                if (v40)
                {
                  goto LABEL_407;
                }
              }

              else
              {
                if (!v91)
                {
                  v93 = BYTE6(v12);
                  if (v92 <= 1)
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_212;
                }

                LODWORD(v93) = HIDWORD(v13) - v13;
                if (__OFSUB__(HIDWORD(v13), v13))
                {
                  goto LABEL_408;
                }

                v93 = v93;
              }
            }

            if (v92 <= 1)
            {
              goto LABEL_225;
            }

            goto LABEL_212;
          }

          v151 = *&v181[8];
          v152 = *(&v176 + 1);
          v68 = *(v175 + 16);
          v149 = *(v175 + 24);
          sub_1B069506C(&v180, v174);
          sub_1B069506C(&v175, v174);
          v69 = sub_1B0E42A98();
          if (v69)
          {
            v70 = sub_1B0E42AC8();
            if (__OFSUB__(v68, v70))
            {
              goto LABEL_428;
            }

            v69 += v68 - v70;
          }

          if (__OFSUB__(v149, v68))
          {
            goto LABEL_418;
          }
        }

        else
        {
          v151 = *&v181[8];
          if (!v35)
          {
            LODWORD(v173[0]) = v175;
            WORD2(v173[0]) = WORD2(v175);
            *(v173 + 6) = *(&v175 + 6);
            v64 = *(&v180 + 1);
            v65 = v180;
            sub_1B069506C(&v180, v174);
            sub_1B069506C(&v175, v174);
            sub_1B0AE2440(v173, v65, v64, v174);
            v66 = v174[0];
            goto LABEL_199;
          }

          v150 = v180;
          v152 = *(&v176 + 1);
          v89 = v175;
          if (v175 >> 32 < v175)
          {
            goto LABEL_415;
          }

          sub_1B069506C(&v180, v174);
          sub_1B069506C(&v175, v174);
          v69 = sub_1B0E42A98();
          if (v69)
          {
            v90 = sub_1B0E42AC8();
            if (__OFSUB__(v89, v90))
            {
              goto LABEL_429;
            }

            v69 += v89 - v90;
          }
        }

        sub_1B0E42AB8();
        sub_1B0AE2440(v69, v150, *(&v150 + 1), v174);
        v66 = v174[0];
        v12 = v152;
LABEL_199:
        v67 = v33;
        v34 = v151;
        if ((v66 & 1) == 0)
        {
          goto LABEL_382;
        }

        goto LABEL_202;
      }

      v54 = *(v175 + 16);
      v53 = *(v175 + 24);
      v40 = __OFSUB__(v53, v54);
      v37 = v53 - v54;
      if (v40)
      {
        goto LABEL_402;
      }
    }

    else
    {
      if (!v35)
      {
        v37 = BYTE14(v175);
        if (v36 <= 1)
        {
          goto LABEL_122;
        }

        goto LABEL_54;
      }

      LODWORD(v37) = DWORD1(v175) - v175;
      if (__OFSUB__(DWORD1(v175), v175))
      {
        goto LABEL_404;
      }

      v37 = v37;
    }

    if (v36 <= 1)
    {
      goto LABEL_122;
    }

    goto LABEL_54;
  }
}

uint64_t sub_1B0CCCB7C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    v44 = a2 + 32;
    v45 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
        __break(1u);
        __break(1u);
LABEL_69:
        __break(1u);
        return result;
      }

      v6 = (v4 + 96 * v3);
      v7 = (v5 + 96 * v3);
      if (v6[1] != v7[1])
      {
        return 0;
      }

      v8 = *v6;
      v9 = *v7;
      v10 = *(*v6 + 16);
      if (v10 != *(*v7 + 16))
      {
        return 0;
      }

      v11 = v6[2];
      v12 = *(v6 + 6);
      v13 = *(v6 + 8);
      v14 = *(v6 + 36);
      v15 = v6[5];
      v16 = *(v6 + 48);
      v17 = v6[7];
      v18 = *(v6 + 64);
      v19 = v6[9];
      result = *(v6 + 20);
      v20 = *(v6 + 21);
      v21 = *(v6 + 88);
      v22 = v7[2];
      v23 = *(v7 + 6);
      v24 = *(v7 + 8);
      v25 = *(v7 + 36);
      v26 = v7[5];
      v27 = *(v7 + 48);
      v28 = v7[7];
      v29 = *(v7 + 64);
      v30 = v7[9];
      v31 = *(v7 + 20);
      v46 = *(v7 + 21);
      v32 = *(v7 + 88);
      if (v10)
      {
        if (v8 != v9)
        {
          break;
        }
      }

LABEL_13:
      if ((v12 | (v12 << 32)) != (v23 | (v23 << 32)))
      {
        return 0;
      }

      v35 = *(v11 + 16);
      if (v35 != *(v22 + 16))
      {
        return 0;
      }

      if (v35 && v11 != v22)
      {
        v36 = (v11 + 32);
        v37 = (v22 + 32);
        while (*v36 == *v37)
        {
          ++v36;
          ++v37;
          if (!--v35)
          {
            goto LABEL_20;
          }
        }

        return 0;
      }

LABEL_20:
      if (v14)
      {
        if (!v25)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == v24)
        {
          v38 = v25;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          return 0;
        }
      }

      if (v16)
      {
        if (!v27)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == v15)
        {
          v39 = v27;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          return 0;
        }
      }

      if (v18)
      {
        if ((v29 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v29)
        {
          return 0;
        }

        if ((v28 | v17) < 0)
        {
          goto LABEL_69;
        }

        if (v28 != v17)
        {
          return 0;
        }
      }

      if (v19)
      {
        if (v19 == 1)
        {
          if (v30 != 1)
          {
            return 0;
          }
        }

        else if (v19 == 2)
        {
          if (v30 != 2)
          {
            return 0;
          }
        }

        else
        {
          if (v30 < 3)
          {
            return 0;
          }

          if ((result | (result << 32)) != (v31 | (v31 << 32)))
          {
            return 0;
          }

          v40 = *(v19 + 16);
          if (v40 != *(v30 + 16))
          {
            return 0;
          }

          if (v40 && v19 != v30)
          {
            v41 = (v19 + 32);
            v42 = (v30 + 32);
            while (*v41 == *v42)
            {
              ++v41;
              ++v42;
              if (!--v40)
              {
                goto LABEL_57;
              }
            }

            return 0;
          }
        }
      }

      else if (v30)
      {
        return 0;
      }

LABEL_57:
      if (v21)
      {
        v5 = v44;
        v4 = v45;
        if (!v32)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == v46)
        {
          v43 = v32;
        }

        else
        {
          v43 = 1;
        }

        v5 = v44;
        v4 = v45;
        if (v43)
        {
          return 0;
        }
      }

      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }

    v33 = (v8 + 32);
    v34 = (v9 + 32);
    while (*v33 == *v34)
    {
      ++v33;
      ++v34;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  return 1;
}