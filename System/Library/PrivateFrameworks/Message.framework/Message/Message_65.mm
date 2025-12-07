void sub_1B0C1B6C4(unint64_t a1)
{
  while (1)
  {
    v2 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v2 > 15)
    {
      break;
    }

    if (v2 != 15)
    {
      if (v2 >= 0xE)
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0B23938(v6);
        sub_1B0C1B6C4(v6);
        sub_1B0B239C8(v6);
      }

      return;
    }

    v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    sub_1B0C1B6C4(v3);
    if (v4)
    {
      return;
    }
  }

  v5 = 1 << v2;
  if ((v5 & 0xF67F0000) == 0 && (v5 & 0x8800000) == 0)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v8 = *(v7 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = 0;
    while (1)
    {
      if (v8 == v9)
      {
LABEL_15:

        return;
      }

      if (v9 >= *(v7 + 16))
      {
        break;
      }

      v10 = v9 + 1;
      v11 = *(v7 + 8 * v9 + 32);
      sub_1B0B23938(v11);
      sub_1B0C1B6C4(v11);
      v13 = v12;
      sub_1B0B239C8(v11);
      v9 = v10;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

void sub_1B0C1B80C(unint64_t a1)
{
  while (2)
  {
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 0xEuLL:
        v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0B23938(v4);
        sub_1B0C1B80C(v4);
        sub_1B0B239C8(v4);
        break;
      case 0xFuLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        sub_1B0C1B80C(v2);
        if ((v3 & 1) == 0)
        {
          continue;
        }

        break;
      case 0x18uLL:
        v5 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v6 = *(v5 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v7 = 0;
        while (1)
        {
          if (v6 == v7)
          {

            return;
          }

          if (v7 >= *(v5 + 16))
          {
            break;
          }

          v8 = v7 + 1;
          v9 = *(v5 + 8 * v7 + 32);
          sub_1B0B23938(v9);
          sub_1B0C1B80C(v9);
          v11 = v10;
          sub_1B0B239C8(v9);
          v7 = v8;
          if (v11)
          {

            return;
          }
        }

        __break(1u);
        break;
      default:
        return;
    }

    break;
  }
}

void sub_1B0C1B968(unint64_t a1)
{
  while (1)
  {
    v2 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v2 > 15)
    {
      break;
    }

    if (v2 != 15)
    {
      if (v2 >= 0xE)
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1B0B23938(v6);
        sub_1B0C1B968(v6);
        sub_1B0B239C8(v6);
      }

      return;
    }

    v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    sub_1B0C1B968(v3);
    if (v4)
    {
      return;
    }
  }

  v5 = 1 << v2;
  if ((v5 & 0xF68F0000) == 0 && (v5 & 0x8700000) == 0)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v8 = *(v7 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = 0;
    while (1)
    {
      if (v8 == v9)
      {
LABEL_15:

        return;
      }

      if (v9 >= *(v7 + 16))
      {
        break;
      }

      v10 = v9 + 1;
      v11 = *(v7 + 8 * v9 + 32);
      sub_1B0B23938(v11);
      sub_1B0C1B968(v11);
      v13 = v12;
      sub_1B0B239C8(v11);
      v9 = v10;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B0C1BAB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v3 = *v2;
      v5 = *(v2 - 2);
      v4 = *(v2 - 1);
      v6 = *(v2 - 3);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C1FB18(&v7, v6, v5, v4, v3);

      v2 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1B0C1BB38(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5)
{
  v6 = (a5 >> 37) & 7;
  if (v6 == 4 || v6 == 3)
  {
  }

  else if (v6 == 1)
  {

    sub_1B0ACE978(a3, a4);
  }
}

unint64_t sub_1B0C1BBD4()
{
  result = qword_1EB6DD178;
  if (!qword_1EB6DD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD178);
  }

  return result;
}

unint64_t sub_1B0C1BC2C()
{
  result = qword_1EB6E5818;
  if (!qword_1EB6E5818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E5820, qword_1B0ED86F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5818);
  }

  return result;
}

unint64_t sub_1B0C1BC94()
{
  result = qword_1EB6DD170;
  if (!qword_1EB6DD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD170);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO5PlainV5StateO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0C1BD20()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 15)
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v3 = xmmword_1B0ECE570;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_1B03B2000(v1, *(v0 + 88));
    sub_1B0BD135C(v1, v2);
    *(v0 + 80) = xmmword_1B0EC58F0;
  }

  return v1;
}

uint64_t sub_1B0C1BDDC(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4 && (*(a1 + 1) == *(a2 + 1) && v3 == v4 || (sub_1B0E46A78() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0C1BE5C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        if (a2 == a5 && a3 == a6)
        {
          return 1;
        }

        if (sub_1B0E46A78())
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CommandConnection.RecentErrors.Error.kind.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);

  return sub_1B0C1BFD8(a1, v3);
}

uint64_t sub_1B0C1BFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CommandConnection.RecentErrors.Error.init(time:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0446B60(a2, v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1B0438FB0(v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    goto LABEL_8;
  }

  v13 = sub_1B0E441D8();
  v14 = *(v13 - 8);
  if ((*(v14 + 88))(v8, v13) != *MEMORY[0x1E6977D68])
  {
    (*(v14 + 8))(v8, v13);
    goto LABEL_8;
  }

  (*(v14 + 96))(v8, v13);
  if (*v8 == 94)
  {
    sub_1B0438FB0(a2, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  if (*v8 != 89)
  {
LABEL_8:
    *v12 = a1;
    sub_1B0C25A4C(a2, v12 + *(v9 + 20), type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_9:
    sub_1B0C25A4C(v12, a3, type metadata accessor for CommandConnection.RecentErrors.Error);
    v15 = 0;
    return (*(v10 + 56))(a3, v15, 1, v9);
  }

  sub_1B0438FB0(a2, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v15 = 1;
  return (*(v10 + 56))(a3, v15, 1, v9);
}

uint64_t static CommandConnection.RecentErrors.Error.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);

  return _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_1B0C1C3D4(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

uint64_t CommandConnection.RecentErrors.statistics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return CommandConnection.RecentErrors.Statistics.init(_:)(v2, a1);
}

uint64_t CommandConnection.RecentErrors.Statistics.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E441D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v40);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  v13 = v5;
  v14 = *(v5 + 56);
  v39 = *(v12 + 48);
  v14(a2 + v39, 1, 1, v4);
  v38 = *(v12 + 52);
  v52 = v4;
  v47 = v14;
  v48 = v5 + 56;
  v14(a2 + v38, 1, 1, v4);
  v15 = a1;
  v16 = *(a1 + 16);
  if (!v16)
  {
  }

  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v17 = *(v9 + 20);
  v18 = *(v51 + 80);
  v37 = v15;
  v19 = v15 + ((v18 + 32) & ~v18);
  v20 = *(v51 + 72);
  v21 = (v13 + 32);
  v50 = v20;
  v51 = v17;
  while (1)
  {
    sub_1B0446B60(v19, v11, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B0446B60(&v11[v17], v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    sub_1B0438FB0(v11, type metadata accessor for CommandConnection.RecentErrors.Error);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v23 = v21;
          v24 = *v8;
          v25 = v8[1];
          v26 = v8[2];
          result = sub_1B0B6DCF0(v43, v42, v41);
          v28 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_27;
          }

          v43 = v24;
          ++v44;
          *(a2 + 8) = v28;
          *(a2 + 32) = v24;
          *(a2 + 40) = v25;
          v41 = v26;
          v42 = v25;
          *(a2 + 48) = v26;
          v21 = v23;
          v20 = v50;
          v17 = v51;
        }

        else
        {
          sub_1B0438FB0(v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          *(a2 + 2) = 1;
        }
      }

      else
      {
        sub_1B0438FB0(v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        *(a2 + 1) = 1;
      }

      goto LABEL_4;
    }

    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v29 = *v21;
      v30 = v49;
      result = (*v21)(v49, v8, v52);
      v33 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_26;
      }

      ++v45;
      *(a2 + 16) = v33;
      v32 = v39;
      goto LABEL_19;
    }

    sub_1B0438FB0(v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    *(a2 + 3) = 1;
LABEL_4:
    v19 += v20;
    if (!--v16)
    {
    }
  }

  if (EnumCaseMultiPayload != 5)
  {
    *a2 = 1;
    goto LABEL_4;
  }

  v29 = *v21;
  v30 = v49;
  result = (*v21)(v49, v8, v52);
  v31 = v46 + 1;
  if (!__OFADD__(v46, 1))
  {
    ++v46;
    *(a2 + 24) = v31;
    v32 = v38;
LABEL_19:
    sub_1B0398EFC(a2 + v32, &unk_1EB6E5A90, &unk_1B0EDC020);
    v34 = v30;
    v35 = v52;
    v29((a2 + v32), v34, v52);
    v36 = a2 + v32;
    v17 = v51;
    v47(v36, 0, 1, v35);
    v20 = v50;
    goto LABEL_4;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t CommandConnection.RecentErrors.Statistics.lastResponseText.getter()
{
  v1 = v0[4];
  sub_1B0B6DCB0(v1, v0[5], v0[6]);
  return v1;
}

uint64_t CommandConnection.RecentErrors.Statistics.lastResponseText.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B6DCF0(v3[4], v3[5], v3[6]);
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return result;
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNetworkError.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 48);

  return sub_1B0C25AD4(v4, a1);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNetworkError.setter(uint64_t a1, double a2)
{
  v4 = v2 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 48);

  return sub_1B0C25B44(a1, v4);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNoViableNetworkError.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 52);

  return sub_1B0C25AD4(v4, a1);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNoViableNetworkError.setter(uint64_t a1, double a2)
{
  v4 = v2 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 52);

  return sub_1B0C25B44(a1, v4);
}

uint64_t CommandConnection.BackOffBehavior.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t CommandConnection.RecentErrors.backOffBehavior.getter(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B0C1CFD8(a1);
  if (*(result + 16))
  {
    v10 = 0;
    v11 = 1 << *(result + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(result + 56);
    if (v13)
    {
      while (1)
      {
        v14 = v10;
LABEL_9:
        v15 = *(*(result + 48) + 24 * (__clz(__rbit64(v13)) | (v14 << 6)) + 16);
        if (v15 > 3 || v15 == 2)
        {
          break;
        }

        v13 &= v13 - 1;
        v10 = v14;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }

LABEL_6:
    while (1)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v14 >= ((v11 + 63) >> 6))
      {

        return 2;
      }

      v13 = *(result + 56 + 8 * v14);
      ++v10;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    if (sub_1B0C1D1E0(a1))
    {
      return 1;
    }

    v17 = 0;
    v18 = *(a1 + 16);
    while (v18 != v17)
    {
      sub_1B0446B60(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17++, v8, type metadata accessor for CommandConnection.RecentErrors.Error);
      v19 = *(v5 + 20);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v19) = _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(&v8[v19], v4);
      sub_1B0438FB0(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      sub_1B0438FB0(v8, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v19)
      {
        return 1;
      }
    }

    if (sub_1B0C1D3E8(a1))
    {
      return 1;
    }

    v20 = sub_1B0C1D59C(a1);
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = 3;
    }

    if (v20)
    {
      return 1;
    }

    else
    {
      return v21;
    }
  }

  return result;
}

uint64_t sub_1B0C1CFD8(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7CD0];
  v19 = MEMORY[0x1E69E7CD0];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v6 + 20);
    v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1B0446B60(v13, v9, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0446B60(&v9[v12], v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1B0438FB0(v9, type metadata accessor for CommandConnection.RecentErrors.Error);
        v15 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind;
        v16 = v4;
      }

      else
      {
        sub_1B0C1D95C(v18, *v4, *(v4 + 1), *(v4 + 2));
        sub_1B0BD1488(v18[0], v18[1], v18[2]);
        v15 = type metadata accessor for CommandConnection.RecentErrors.Error;
        v16 = v9;
      }

      sub_1B0438FB0(v16, v15);
      v13 += v14;
      --v11;
    }

    while (v11);
    return v19;
  }

  return v10;
}

uint64_t sub_1B0C1D1E0(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(v6 + 20);
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_1B0446B60(v12, v9, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0C25A4C(&v9[v11], v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = *v4;
        v15 = ~*v4 & 0xF000000000000007;

        if (v15)
        {
          v16 = __ROR8__(v14 + 0x7FFFFFFFFFFFFF94, 3);
          v17 = ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) != 0x11 || v16 >= 0xF;
          if (!v17 && ((0x6E27u >> v16) & 1) != 0)
          {
            return 1;
          }

          sub_1B0447F00(v14);
        }
      }

      else
      {
        sub_1B0438FB0(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return 0;
}

BOOL sub_1B0C1D3E8(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  v12 = v9 - 1;
  do
  {
    v13 = v12;
    sub_1B0446B60(v10, v8, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B0C25A4C(&v8[*(v5 + 20)], v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1B0438FB0(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    result = EnumCaseMultiPayload == 2;
    if (EnumCaseMultiPayload == 2)
    {
      break;
    }

    v12 = v13 - 1;
    v10 += v11;
  }

  while (v13);
  return result;
}

BOOL sub_1B0C1D59C(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  v12 = v9 - 1;
  do
  {
    v13 = v12;
    sub_1B0446B60(v10, v8, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1B0C25A4C(&v8[*(v5 + 20)], v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1B0438FB0(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    result = EnumCaseMultiPayload == 3;
    if (EnumCaseMultiPayload == 3)
    {
      break;
    }

    v12 = v13 - 1;
    v10 += v11;
  }

  while (v13);
  return result;
}

uint64_t CommandConnection.RecentErrors.containsAuthenticationFailure.getter(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    do
    {
      sub_1B0446B60(v10, v8, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1B0446B60(&v8[*(v5 + 20)], v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 5)
      {
        sub_1B0438FB0(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (EnumCaseMultiPayload != 6)
      {
        sub_1B0438FB0(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        sub_1B0438FB0(v8, type metadata accessor for CommandConnection.RecentErrors.Error);
        return 1;
      }

      sub_1B0438FB0(v8, type metadata accessor for CommandConnection.RecentErrors.Error);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t sub_1B0C1D95C(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *v4;
  sub_1B0E46C28();
  v22 = a1;
  v21 = v4;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      MEMORY[0x1B2728D70](3);
      goto LABEL_14;
    }

    if (a4 == 3)
    {
      MEMORY[0x1B2728D70](4);
      goto LABEL_14;
    }

LABEL_8:
    MEMORY[0x1B2728D70](0);
    sub_1B0E46C68();
    if ((~a2 & 0xF000000000000007) != 0)
    {
      ResponseTextCode.hash(into:)(v24, a2);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_14;
  }

  if (!a4)
  {
    MEMORY[0x1B2728D70](1);
    goto LABEL_14;
  }

  if (a4 != 1)
  {
    goto LABEL_8;
  }

  MEMORY[0x1B2728D70](2);
LABEL_14:
  v9 = sub_1B0E46CB8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_32:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *v21;
    sub_1B0BD67B0(a2, a3, a4);
    sub_1B0C21330(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v21 = v24[0];
    *v22 = a2;
    v22[1] = a3;
    v22[2] = a4;
    return 1;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(v8 + 48) + 24 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    if (v16 > 1)
    {
      break;
    }

    if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_27;
      }

      if (a4 == 1)
      {
        goto LABEL_33;
      }
    }

    else if (!a4)
    {
      goto LABEL_33;
    }

LABEL_17:
    v11 = (v11 + 1) & v12;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (v16 == 2)
  {
    if (a4 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  if (v16 == 3)
  {
    if (a4 == 3)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

LABEL_27:
  if (a4 < 4)
  {
    goto LABEL_17;
  }

  sub_1B04420D8(*v13);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = static ResponseText.__derived_struct_equals(_:_:)(v14, v15, v16, a2, a3, a4);
  sub_1B0BD1488(v14, v15, v16);
  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1B0BD1488(a2, a3, a4);
  v20 = (*(v8 + 48) + 24 * v11);
  v14 = *v20;
  v15 = v20[1];
  v16 = v20[2];
LABEL_33:
  *v22 = v14;
  v22[1] = v15;
  v22[2] = v16;
  sub_1B0BD67B0(v14, v15, v16);
  return 0;
}

void sub_1B0C1DC1C(__int128 *a1, __int128 *a2)
{
  v3 = a2;
  v269 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v266 = a2[2];
  v267 = v4;
  v268 = a2[4];
  v5 = a2[1];
  v264 = *a2;
  v265 = v5;
  v242 = *v2;
  sub_1B0E46C28();
  v6 = *(v3 + 1);
  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = *(v3 + 7);
  if ((v9 & 0x1000000000000000) != 0)
  {
    v10 = *(v3 + 6);
    v256 = *v3;
    v257 = v6;
    v258 = v8;
    v259 = v7;
    v260 = v3[2];
    v261 = v10;
    v262 = v9 & 0xEFFFFFFFFFFFFFFFLL;
    v263 = v3[4];
    MEMORY[0x1B2728D70](1);
    sub_1B0C0EF30(&v251);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v11 = sub_1B0E46CB8();
  v12 = v242;
  v13 = v242 + 56;
  v14 = -1 << *(v242 + 32);
  v15 = v11 & ~v14;
  if (((*(v242 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_410:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v246 = *v240;
    sub_1B0BD6700(v3, &v251);
    sub_1B0C215F0(v3, v15, isUniquelyReferenced_nonNull_native);
    *v240 = v246;
    v206 = v3[3];
    a1[2] = v3[2];
    a1[3] = v206;
    a1[4] = v3[4];
    v207 = v3[1];
    *a1 = *v3;
    a1[1] = v207;
    return;
  }

  v16 = ~v14;
  v243 = ~v14;
  while (1)
  {
    v17 = (*(v12 + 48) + 80 * v15);
    v251 = *v17;
    v19 = v17[3];
    v18 = v17[4];
    v20 = v17[2];
    v252 = v17[1];
    v253 = v20;
    v254 = v19;
    v255 = v18;
    v21 = *(&v251 + 1);
    v22 = *(&v252 + 1);
    v23 = v252;
    v24 = *(&v19 + 1);
    if ((*(&v19 + 1) & 0x1000000000000000) == 0)
    {
      if ((*(v3 + 63) & 0x10) != 0)
      {
        goto LABEL_10;
      }

      v25 = *(v3 + 2);
      v26 = *(v3 + 3);
      if (v251 != *v3 && (sub_1B0E46A78() & 1) == 0)
      {
        goto LABEL_9;
      }

      if (v23 == v25 && v22 == v26)
      {
        goto LABEL_413;
      }

      v27 = sub_1B0E46A78();
      v16 = v243;
      v13 = v242 + 56;
      if (v27)
      {
        goto LABEL_413;
      }

      goto LABEL_10;
    }

    v28 = *(v3 + 7);
    if ((v28 & 0x1000000000000000) == 0)
    {
      goto LABEL_10;
    }

    v29 = *(&v255 + 1);
    v31 = *v3;
    v30 = *(v3 + 1);
    v32 = *(v3 + 2);
    v33 = *(v3 + 3);
    v34 = *(v3 + 9);
    v35 = (*(&v255 + 1) >> 59) & 6 | ((*(&v254 + 1) & 0x2000000000000000) != 0);
    if (v35 <= 2)
    {
      break;
    }

    if (v35 > 4)
    {
      v38 = (v28 >> 61) & 1;
      v39 = v34 >> 59;
      if (v35 == 5)
      {
        if ((v39 & 6 | v38) != 5)
        {
          goto LABEL_10;
        }
      }

      else if ((v39 & 6 | v38) != 6)
      {
        goto LABEL_10;
      }

LABEL_59:
      if (v251 == __PAIR128__(v30, v31) || (v47 = *(v3 + 2), v48 = *(v3 + 3), v49 = sub_1B0E46A78(), v32 = v47, v33 = v48, v16 = v243, v13 = v242 + 56, (v49 & 1) != 0))
      {
        if (v23 == v32 && v22 == v33)
        {
          goto LABEL_413;
        }

        v50 = sub_1B0E46A78();
        v16 = v243;
        v13 = v242 + 56;
        if (v50)
        {
          goto LABEL_413;
        }
      }

      goto LABEL_10;
    }

    if (v35 == 3)
    {
      if (((v34 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 3)
      {
        goto LABEL_10;
      }

      goto LABEL_59;
    }

    if (((v34 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 4)
    {
      goto LABEL_10;
    }

    v44 = *(&v251 + 1) >> 62;
    v45 = v30 >> 62;
    if (*(&v251 + 1) >> 62 == 3)
    {
      v46 = 0;
      if (v251 == __PAIR128__(0xC000000000000000, 0) && v30 >> 62 == 3)
      {
        v46 = 0;
        if (!v31 && v30 == 0xC000000000000000)
        {
          goto LABEL_163;
        }
      }

      goto LABEL_151;
    }

    if (v44 > 1)
    {
      if (v44 != 2)
      {
        v46 = 0;
        if (v45 > 1)
        {
LABEL_74:
          if (v45 == 2)
          {
            v52 = *(v31 + 16);
            v51 = *(v31 + 24);
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            if (v53)
            {
              goto LABEL_418;
            }

LABEL_154:
            v12 = v242;
            if (v46 != v54)
            {
              goto LABEL_10;
            }

LABEL_158:
            if (v46 >= 1)
            {
              v232 = *(v3 + 3);
              if (v44 > 1)
              {
                v229 = *(v3 + 2);
                if (v44 == 2)
                {
                  v99 = *(v251 + 16);
                  v100 = *(v251 + 24);
                  v101 = *(v3 + 1);
                  v102 = *v3;
                  sub_1B03B2000(v31, v30);
                  sub_1B03B2000(v102, v101);
                  sub_1B0BD6700(&v251, &v246);
                  sub_1B03B2000(v102, v101);
                  v103 = sub_1B0AB87A0(v99, v100, v21 & 0x3FFFFFFFFFFFFFFFLL, v102, v101);
                  sub_1B0391D50(v102, v101);
                  sub_1B0391D50(v102, v101);
                  v104 = v102;
                  v105 = v101;
                  goto LABEL_276;
                }

                *&v245[6] = 0;
                *v245 = 0;
                v150 = v30;
                v151 = v31;
                sub_1B03B2000(v31, v30);
                sub_1B0BD6700(&v251, &v246);
                sub_1B03B2000(v151, v150);
                sub_1B0AE2440(v245, v151, v150, &v246);
                sub_1B0391D50(v151, v150);
                sub_1B0391D50(v151, v150);
                v89 = v229;
                v88 = v232;
                if ((v246 & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              else
              {
                if (!v44)
                {
                  v85 = *(v3 + 2);
                  *v245 = v251;
                  *&v245[8] = DWORD2(v251);
                  *&v245[12] = WORD6(v251);
                  v86 = v30;
                  v87 = v31;
                  sub_1B03B2000(v31, v30);
                  sub_1B0BD6700(&v251, &v246);
                  sub_1B03B2000(v87, v86);
                  sub_1B0AE2440(v245, v87, v86, &v246);
                  sub_1B0391D50(v87, v86);
                  sub_1B0391D50(v87, v86);
                  v88 = v232;
                  v89 = v85;
                  if ((v246 & 1) == 0)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_164;
                }

                v229 = *(v3 + 2);
                v146 = v251;
                v147 = v251 >> 32;
                if (v251 >> 32 < v251)
                {
                  goto LABEL_442;
                }

                v148 = *(v3 + 1);
                v149 = *v3;
                sub_1B03B2000(v31, v30);
                sub_1B03B2000(v149, v148);
                sub_1B0BD6700(&v251, &v246);
                sub_1B03B2000(v149, v148);
                v103 = sub_1B0AB87A0(v146, v147, v21 & 0x3FFFFFFFFFFFFFFFLL, v149, v148);
                sub_1B0391D50(v149, v148);
                sub_1B0391D50(v149, v148);
                v104 = v149;
                v105 = v148;
LABEL_276:
                sub_1B0391D50(v104, v105);
                v89 = v229;
                v88 = v232;
                if ((v103 & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

LABEL_164:
              v91 = v22 >> 62;
              v92 = v88 >> 62;
              if (v22 >> 62 == 3)
              {
                v93 = 0;
                if (!v23 && v22 == 0xC000000000000000 && v88 >> 62 == 3)
                {
                  v93 = 0;
                  if (!v89 && v88 == 0xC000000000000000)
                  {
                    goto LABEL_411;
                  }
                }
              }

              else if (v91 == 2)
              {
                v129 = *(v23 + 16);
                v128 = *(v23 + 24);
                v53 = __OFSUB__(v128, v129);
                v93 = v128 - v129;
                if (v53)
                {
                  goto LABEL_437;
                }
              }

              else if (v91 == 1)
              {
                LODWORD(v93) = HIDWORD(v23) - v23;
                if (__OFSUB__(HIDWORD(v23), v23))
                {
                  goto LABEL_438;
                }

                v93 = v93;
              }

              else
              {
                v93 = BYTE6(v22);
              }

              if (v92 > 1)
              {
                if (v92 != 2)
                {
                  goto LABEL_6;
                }

                v132 = *(v89 + 16);
                v131 = *(v89 + 24);
                v53 = __OFSUB__(v131, v132);
                v130 = v131 - v132;
                if (v53)
                {
                  goto LABEL_429;
                }
              }

              else if (v92)
              {
                LODWORD(v130) = HIDWORD(v89) - v89;
                if (__OFSUB__(HIDWORD(v89), v89))
                {
                  goto LABEL_428;
                }

                v130 = v130;
              }

              else
              {
                v130 = BYTE6(v88);
              }

              if (v93 != v130)
              {
                goto LABEL_7;
              }

              if (v93 < 1)
              {
                goto LABEL_411;
              }

              v133 = v89;
              sub_1B03B2000(v89, v88);
              v134 = v23;
              v135 = v22;
              v136 = v133;
              v137 = v88;
              goto LABEL_246;
            }
          }

          else if (v46)
          {
            goto LABEL_118;
          }

LABEL_163:
          v248 = v253;
          *&v249 = v254;
          v250 = v255;
          v246 = v251;
          v247 = v252;
          *(&v249 + 1) = *(&v254 + 1) & 0xEFFFFFFFFFFFFFFFLL;
          v88 = v33;
          v90 = v32;
          sub_1B0BD1224(&v246, v245);
          v89 = v90;
          goto LABEL_164;
        }

        goto LABEL_152;
      }

      v60 = *(v251 + 16);
      v59 = *(v251 + 24);
      v53 = __OFSUB__(v59, v60);
      v46 = v59 - v60;
      if (v53)
      {
        goto LABEL_424;
      }

      goto LABEL_151;
    }

    if (v44)
    {
      LODWORD(v46) = DWORD1(v251) - v251;
      if (__OFSUB__(DWORD1(v251), v251))
      {
        goto LABEL_426;
      }

      v46 = v46;
LABEL_151:
      if (v45 > 1)
      {
        goto LABEL_74;
      }

      goto LABEL_152;
    }

    v46 = BYTE14(v251);
    if (v45 > 1)
    {
      goto LABEL_74;
    }

LABEL_152:
    if (!v45)
    {
      v54 = BYTE6(v30);
      goto LABEL_154;
    }

    v12 = v242;
    if (__OFSUB__(HIDWORD(v31), v31))
    {
      goto LABEL_416;
    }

    if (v46 == HIDWORD(v31) - v31)
    {
      goto LABEL_158;
    }

LABEL_10:
    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_410;
    }
  }

  if (v35)
  {
    if (v35 == 1)
    {
      if (((v34 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 1)
      {
        goto LABEL_10;
      }

      v234 = v254;
      v235 = *(v3 + 4);
      v236 = v253;
      v237 = *(v3 + 5);
      v238 = *(&v253 + 1);
      v36 = *(&v251 + 1) >> 62;
      if (*(&v251 + 1) >> 62 == 3)
      {
        v37 = 0;
        if (v251 == __PAIR128__(0xC000000000000000, 0) && v30 >> 62 == 3)
        {
          v37 = 0;
          if (!v31 && v30 == 0xC000000000000000)
          {
            goto LABEL_119;
          }
        }
      }

      else if (v36 > 1)
      {
        if (v36 == 2)
        {
          v56 = *(v251 + 16);
          v55 = *(v251 + 24);
          v53 = __OFSUB__(v55, v56);
          v37 = v55 - v56;
          if (v53)
          {
            goto LABEL_422;
          }
        }

        else
        {
          v37 = 0;
        }
      }

      else if (v36)
      {
        LODWORD(v37) = DWORD1(v251) - v251;
        if (__OFSUB__(DWORD1(v251), v251))
        {
          goto LABEL_423;
        }

        v37 = v37;
      }

      else
      {
        v37 = BYTE14(v251);
      }

      v63 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        if (v63 == 2)
        {
          v66 = *(v31 + 16);
          v65 = *(v31 + 24);
          v53 = __OFSUB__(v65, v66);
          v64 = v65 - v66;
          if (v53)
          {
            goto LABEL_419;
          }

LABEL_109:
          v12 = v242;
          if (v37 != v64)
          {
            goto LABEL_10;
          }

LABEL_113:
          if (v37 >= 1)
          {
            v228 = *(v3 + 2);
            v231 = *(v3 + 3);
            v224 = *(v3 + 6);
            v225 = *(v3 + 1);
            v219 = *v3;
            v221 = v255;
            v222 = *(v3 + 9);
            v223 = *(v3 + 8);
            if (v36 <= 1)
            {
              if (!v36)
              {
                *v245 = v251;
                *&v245[8] = DWORD2(v251);
                *&v245[12] = WORD6(v251);
                v67 = v30;
                v68 = v31;
                sub_1B03B2000(v31, v30);
                sub_1B0BD6700(&v251, &v246);
                sub_1B03B2000(v68, v67);
                goto LABEL_272;
              }

              v215 = v251;
              v218 = v251 >> 32;
              if (v251 >> 32 < v251)
              {
                goto LABEL_441;
              }

              v145 = *v3;
              sub_1B03B2000(v31, v30);
              sub_1B03B2000(v145, v225);
              sub_1B0BD6700(&v251, &v246);
              sub_1B03B2000(v145, v225);
              v217 = sub_1B0AB87A0(v215, v218, v21 & 0x3FFFFFFFFFFFFFFFLL, v219, v225);
              sub_1B0391D50(v219, v225);
              sub_1B0391D50(v219, v225);
              v97 = v219;
              v98 = v225;
LABEL_269:
              sub_1B0391D50(v97, v98);
              v71 = v228;
              v72 = v231;
              if (v217)
              {
                goto LABEL_120;
              }

LABEL_7:
              sub_1B0BD2F90(&v251);
LABEL_8:
              v12 = v242;
LABEL_9:
              v16 = v243;
              v13 = v242 + 56;
              goto LABEL_10;
            }

            if (v36 == 2)
            {
              v214 = *(v251 + 24);
              v216 = *(v251 + 16);
              v96 = *v3;
              sub_1B03B2000(v31, v30);
              sub_1B03B2000(v96, v225);
              sub_1B0BD6700(&v251, &v246);
              sub_1B03B2000(v96, v225);
              v217 = sub_1B0AB87A0(v216, v214, v21 & 0x3FFFFFFFFFFFFFFFLL, v219, v225);
              sub_1B0391D50(v219, v225);
              sub_1B0391D50(v219, v225);
              v97 = v219;
              v98 = v225;
              goto LABEL_269;
            }

            *&v245[6] = 0;
            *v245 = 0;
            v67 = v30;
            v68 = v31;
            sub_1B03B2000(v31, v30);
            sub_1B0BD6700(&v251, &v246);
            sub_1B03B2000(v68, v67);
LABEL_272:
            sub_1B0AE2440(v245, v68, v67, &v246);
            sub_1B0391D50(v68, v225);
            sub_1B0391D50(v219, v225);
            v71 = v228;
            v72 = v231;
            if ((v246 & 1) == 0)
            {
              goto LABEL_7;
            }

LABEL_120:
            v73 = v22 >> 62;
            if (v22 >> 62 == 3)
            {
              v74 = 0;
              if (v23)
              {
                goto LABEL_251;
              }

              if (v22 != 0xC000000000000000)
              {
                goto LABEL_251;
              }

              if (v72 >> 62 != 3)
              {
                goto LABEL_251;
              }

              v74 = 0;
              if (v71 || v72 != 0xC000000000000000)
              {
                goto LABEL_251;
              }

LABEL_325:
              v174 = v238 >> 62;
              v175 = v237 >> 62;
              if (v238 >> 62 == 3)
              {
                v176 = 0;
                v177 = v236;
                if (v236)
                {
                  goto LABEL_340;
                }

                if (v238 != 0xC000000000000000)
                {
                  goto LABEL_340;
                }

                if (v237 >> 62 != 3)
                {
                  goto LABEL_340;
                }

                v176 = 0;
                if (v235 || v237 != 0xC000000000000000)
                {
                  goto LABEL_340;
                }
              }

              else
              {
                v177 = v236;
                if (v174 == 2)
                {
                  v179 = *(v236 + 16);
                  v178 = *(v236 + 24);
                  v53 = __OFSUB__(v178, v179);
                  v176 = v178 - v179;
                  if (v53)
                  {
                    goto LABEL_450;
                  }
                }

                else if (v174 == 1)
                {
                  LODWORD(v176) = HIDWORD(v236) - v236;
                  if (__OFSUB__(HIDWORD(v236), v236))
                  {
                    goto LABEL_449;
                  }

                  v176 = v176;
                }

                else
                {
                  v176 = BYTE6(v238);
                }

LABEL_340:
                if (v175 > 1)
                {
                  if (v175 != 2)
                  {
                    if (v176)
                    {
                      goto LABEL_7;
                    }

                    goto LABEL_354;
                  }

                  v182 = *(v235 + 16);
                  v181 = *(v235 + 24);
                  v53 = __OFSUB__(v181, v182);
                  v180 = v181 - v182;
                  if (v53)
                  {
                    goto LABEL_443;
                  }
                }

                else if (v175)
                {
                  LODWORD(v180) = HIDWORD(v235) - v235;
                  if (__OFSUB__(HIDWORD(v235), v235))
                  {
                    goto LABEL_444;
                  }

                  v180 = v180;
                }

                else
                {
                  v180 = BYTE6(v237);
                }

                if (v176 != v180)
                {
                  goto LABEL_7;
                }

                if (v176 >= 1)
                {
                  sub_1B03B2000(v235, v237);
                  if ((sub_1B0AB8610(v177, v238, v235, v237) & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }
              }

LABEL_354:
              v183 = v24 & 0xCFFFFFFFFFFFFFFFLL;
              v184 = v28 & 0xCFFFFFFFFFFFFFFFLL;
              v185 = v24 >> 62;
              v186 = v28 >> 62;
              if (v24 >> 62 == 3)
              {
                v187 = 0;
                v188 = v234;
                if (v234)
                {
                  goto LABEL_369;
                }

                if (v183 != 0xC000000000000000)
                {
                  goto LABEL_369;
                }

                if (v28 >> 62 != 3)
                {
                  goto LABEL_369;
                }

                v187 = 0;
                if (v224 || v184 != 0xC000000000000000)
                {
                  goto LABEL_369;
                }
              }

              else
              {
                if (v185 == 2)
                {
                  v188 = v234;
                  v190 = *(v234 + 16);
                  v189 = *(v234 + 24);
                  v53 = __OFSUB__(v189, v190);
                  v187 = v189 - v190;
                  if (v53)
                  {
                    goto LABEL_458;
                  }
                }

                else if (v185 == 1)
                {
                  v188 = v234;
                  LODWORD(v187) = HIDWORD(v234) - v234;
                  if (__OFSUB__(HIDWORD(v234), v234))
                  {
                    goto LABEL_457;
                  }

                  v187 = v187;
                }

                else
                {
                  v187 = BYTE6(v24);
                  v188 = v234;
                }

LABEL_369:
                if (v186 > 1)
                {
                  if (v186 != 2)
                  {
                    if (v187)
                    {
                      goto LABEL_7;
                    }

                    goto LABEL_383;
                  }

                  v193 = *(v224 + 16);
                  v192 = *(v224 + 24);
                  v53 = __OFSUB__(v192, v193);
                  v191 = v192 - v193;
                  if (v53)
                  {
                    goto LABEL_455;
                  }
                }

                else if (v186)
                {
                  LODWORD(v191) = HIDWORD(v224) - v224;
                  if (__OFSUB__(HIDWORD(v224), v224))
                  {
                    goto LABEL_456;
                  }

                  v191 = v191;
                }

                else
                {
                  v191 = BYTE6(v28);
                }

                if (v187 != v191)
                {
                  goto LABEL_7;
                }

                if (v187 >= 1)
                {
                  sub_1B03B2000(v224, v28 & 0xCFFFFFFFFFFFFFFFLL);
                  if ((sub_1B0AB8610(v188, v183, v224, v184) & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }
              }

LABEL_383:
              v194 = v29 & 0xCFFFFFFFFFFFFFFFLL;
              v195 = v29 >> 62;
              v196 = v222 >> 62;
              if (v29 >> 62 == 3)
              {
                v93 = 0;
                v197 = v221;
                if (!v221 && v194 == 0xC000000000000000 && v222 >> 62 == 3)
                {
                  v93 = 0;
                  if (!v223 && (v222 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
                  {
                    goto LABEL_411;
                  }
                }
              }

              else if (v195 == 2)
              {
                v197 = v221;
                v199 = *(v221 + 16);
                v198 = *(v221 + 24);
                v53 = __OFSUB__(v198, v199);
                v93 = v198 - v199;
                if (v53)
                {
                  goto LABEL_462;
                }
              }

              else if (v195 == 1)
              {
                LODWORD(v93) = HIDWORD(v221) - v221;
                if (__OFSUB__(HIDWORD(v221), v221))
                {
                  __break(1u);
LABEL_462:
                  __break(1u);
                  sub_1B0BD2F90(v3);
                  sub_1B0BD2F90(v3);
                  v248 = v266;
                  *&v249 = v267;
                  v250 = v268;
                  v246 = v264;
                  v247 = v265;
                  *(&v249 + 1) = *(&v267 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                  sub_1B0BE8F74(&v246);

                  __break(1u);
                  return;
                }

                v197 = v221;
                v93 = v93;
              }

              else
              {
                v197 = v221;
                v93 = BYTE6(v29);
              }

              if (v196 <= 1)
              {
                v200 = v223;
                if (v196)
                {
                  LODWORD(v201) = HIDWORD(v223) - v223;
                  if (__OFSUB__(HIDWORD(v223), v223))
                  {
                    goto LABEL_460;
                  }

                  v201 = v201;
                }

                else
                {
                  v201 = BYTE6(v222);
                }

LABEL_407:
                if (v93 != v201)
                {
                  goto LABEL_7;
                }

                if (v93 < 1)
                {
                  goto LABEL_411;
                }

                v204 = v200;
                sub_1B03B2000(v200, v222 & 0xCFFFFFFFFFFFFFFFLL);
                v134 = v197;
                v135 = v194;
                v136 = v204;
                v137 = v222 & 0xCFFFFFFFFFFFFFFFLL;
LABEL_246:
                v138 = sub_1B0AB8610(v134, v135, v136, v137);
                sub_1B0BD2F90(&v251);
                if (v138)
                {
                  goto LABEL_412;
                }

                goto LABEL_8;
              }

              v200 = v223;
              if (v196 == 2)
              {
                v203 = *(v223 + 16);
                v202 = *(v223 + 24);
                v53 = __OFSUB__(v202, v203);
                v201 = v202 - v203;
                if (v53)
                {
                  goto LABEL_459;
                }

                goto LABEL_407;
              }

LABEL_6:
              if (!v93)
              {
                goto LABEL_411;
              }

              goto LABEL_7;
            }

            if (v73 > 1)
            {
              if (v73 == 2)
              {
                v95 = *(v23 + 16);
                v94 = *(v23 + 24);
                v53 = __OFSUB__(v94, v95);
                v74 = v94 - v95;
                if (v53)
                {
                  goto LABEL_439;
                }
              }

              else
              {
                v74 = 0;
              }
            }

            else if (v73)
            {
              LODWORD(v74) = HIDWORD(v23) - v23;
              if (__OFSUB__(HIDWORD(v23), v23))
              {
                goto LABEL_440;
              }

              v74 = v74;
            }

            else
            {
              v74 = BYTE6(v22);
            }

LABEL_251:
            v139 = v72 >> 62;
            if ((v72 >> 62) > 1)
            {
              if (v139 != 2)
              {
                if (v74)
                {
                  goto LABEL_7;
                }

                goto LABEL_325;
              }

              v142 = *(v71 + 16);
              v141 = *(v71 + 24);
              v53 = __OFSUB__(v141, v142);
              v140 = v141 - v142;
              if (v53)
              {
                goto LABEL_431;
              }
            }

            else if (v139)
            {
              LODWORD(v140) = HIDWORD(v71) - v71;
              if (__OFSUB__(HIDWORD(v71), v71))
              {
                goto LABEL_430;
              }

              v140 = v140;
            }

            else
            {
              v140 = BYTE6(v72);
            }

            if (v74 != v140)
            {
              goto LABEL_7;
            }

            if (v74 < 1)
            {
              goto LABEL_325;
            }

            if (v73 > 1)
            {
              if (v73 != 2)
              {
                *(&v246 + 6) = 0;
                *&v246 = 0;
                v143 = v72;
                v144 = v71;
                sub_1B03B2000(v71, v72);
                sub_1B03B2000(v144, v143);
LABEL_324:
                sub_1B0AE2440(&v246, v144, v143, v245);
                sub_1B0391D50(v144, v143);
                sub_1B0391D50(v144, v143);
                if ((v245[0] & 1) == 0)
                {
                  goto LABEL_7;
                }

                goto LABEL_325;
              }

              v152 = *(v23 + 24);
              v227 = *(v23 + 16);
            }

            else
            {
              if (!v73)
              {
                *&v246 = v23;
                WORD4(v246) = v22;
                BYTE10(v246) = BYTE2(v22);
                BYTE11(v246) = BYTE3(v22);
                BYTE12(v246) = BYTE4(v22);
                BYTE13(v246) = BYTE5(v22);
                v143 = v72;
                v144 = v71;
                sub_1B03B2000(v71, v72);
                sub_1B03B2000(v144, v143);
                goto LABEL_324;
              }

              v152 = v23 >> 32;
              v227 = v23;
              if (v23 >> 32 < v23)
              {
                goto LABEL_454;
              }
            }

            v171 = v72;
            v172 = v71;
            sub_1B03B2000(v71, v72);
            sub_1B03B2000(v172, v171);
            sub_1B03B2000(v172, v171);
            v173 = sub_1B0AB87A0(v227, v152, v22 & 0x3FFFFFFFFFFFFFFFLL, v172, v171);
            sub_1B0391D50(v172, v171);
            sub_1B0391D50(v172, v171);
            sub_1B0391D50(v172, v171);
            if ((v173 & 1) == 0)
            {
              goto LABEL_7;
            }

            goto LABEL_325;
          }
        }

        else if (v37)
        {
LABEL_118:
          v12 = v242;
          goto LABEL_10;
        }

LABEL_119:
        v223 = *(v3 + 8);
        v224 = *(v3 + 6);
        v221 = v255;
        v222 = *(v3 + 9);
        v248 = v253;
        *&v249 = v254;
        v250 = v255;
        v246 = v251;
        v247 = v252;
        *(&v249 + 1) = *(&v254 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        v69 = v33;
        v70 = v32;
        sub_1B0BD1224(&v246, v245);
        v71 = v70;
        v72 = v69;
        goto LABEL_120;
      }

      if (!v63)
      {
        v64 = BYTE6(v30);
        goto LABEL_109;
      }

      v12 = v242;
      if (__OFSUB__(HIDWORD(v31), v31))
      {
        goto LABEL_417;
      }

      if (v37 == HIDWORD(v31) - v31)
      {
        goto LABEL_113;
      }
    }

    else
    {
      if (((v34 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 2)
      {
        goto LABEL_10;
      }

      v42 = *(&v251 + 1) >> 62;
      if (*(&v251 + 1) >> 62 == 3)
      {
        v43 = 0;
        if (v251 == __PAIR128__(0xC000000000000000, 0) && v30 >> 62 == 3)
        {
          v43 = 0;
          if (!v31 && v30 == 0xC000000000000000)
          {
            goto LABEL_413;
          }
        }
      }

      else if (v42 > 1)
      {
        if (v42 == 2)
        {
          v58 = *(v251 + 16);
          v57 = *(v251 + 24);
          v53 = __OFSUB__(v57, v58);
          v43 = v57 - v58;
          if (v53)
          {
            goto LABEL_425;
          }
        }

        else
        {
          v43 = 0;
        }
      }

      else if (v42)
      {
        LODWORD(v43) = DWORD1(v251) - v251;
        if (__OFSUB__(DWORD1(v251), v251))
        {
          goto LABEL_427;
        }

        v43 = v43;
      }

      else
      {
        v43 = BYTE14(v251);
      }

      v75 = v30 >> 62;
      if ((v30 >> 62) <= 1)
      {
        if (v75)
        {
          if (__OFSUB__(HIDWORD(v31), v31))
          {
            goto LABEL_415;
          }

          if (v43 != HIDWORD(v31) - v31)
          {
            goto LABEL_10;
          }
        }

        else if (v43 != BYTE6(v30))
        {
          goto LABEL_10;
        }

LABEL_141:
        if (v43 < 1)
        {
          goto LABEL_413;
        }

        if (v42 <= 1)
        {
          if (!v42)
          {
            *v245 = v251;
            *&v245[8] = DWORD2(v251);
            *&v245[12] = WORD6(v251);
            v79 = v30;
            v80 = v31;
            sub_1B0BD6700(v3, &v246);
            sub_1B0BD6700(v3, &v246);
            sub_1B0BD6700(&v251, &v246);
            v81 = v80;
            goto LABEL_219;
          }

          v83 = v251;
          v84 = v251 >> 32;
          if (v251 >> 32 < v251)
          {
            goto LABEL_434;
          }

          v82 = *v3;
          v79 = *(v3 + 1);
LABEL_217:
          sub_1B0BD6700(v3, &v246);
          sub_1B0BD6700(v3, &v246);
          sub_1B0BD6700(v3, &v246);
          sub_1B0BD6700(&v251, &v246);
          v119 = sub_1B0AB87A0(v83, v84, v21 & 0x3FFFFFFFFFFFFFFFLL, v82, v79);
          sub_1B0BD2F90(v3);
          sub_1B0BD2F90(&v251);
          sub_1B0BD2F90(v3);
          sub_1B0BD2F90(v3);
LABEL_314:
          v12 = v242;
          v16 = v243;
          v13 = v242 + 56;
          if (v119)
          {
            goto LABEL_413;
          }

          goto LABEL_10;
        }

        v82 = *v3;
        v79 = *(v3 + 1);
        if (v42 == 2)
        {
          v83 = *(v251 + 16);
          v84 = *(v251 + 24);
          goto LABEL_217;
        }

        *&v245[6] = 0;
        *v245 = 0;
        sub_1B0BD6700(v3, &v246);
        sub_1B0BD6700(v3, &v246);
        sub_1B0BD6700(&v251, &v246);
        v81 = v82;
LABEL_219:
        sub_1B0AE2440(v245, v81, v79, &v246);
        sub_1B0BD2F90(&v251);
        sub_1B0BD2F90(v3);
        sub_1B0BD2F90(v3);
        v120 = v246;
LABEL_318:
        v12 = v242;
        v16 = v243;
        v13 = v242 + 56;
        if (v120)
        {
          goto LABEL_413;
        }

        goto LABEL_10;
      }

      if (v75 != 2)
      {
        if (!v43)
        {
          goto LABEL_413;
        }

        goto LABEL_10;
      }

      v77 = *(v31 + 16);
      v76 = *(v31 + 24);
      v53 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v53)
      {
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
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
LABEL_446:
        __break(1u);
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
LABEL_449:
        __break(1u);
LABEL_450:
        __break(1u);
LABEL_451:
        __break(1u);
LABEL_452:
        __break(1u);
LABEL_453:
        __break(1u);
LABEL_454:
        __break(1u);
LABEL_455:
        __break(1u);
LABEL_456:
        __break(1u);
LABEL_457:
        __break(1u);
LABEL_458:
        __break(1u);
LABEL_459:
        __break(1u);
LABEL_460:
        __break(1u);
      }

      if (v43 == v78)
      {
        goto LABEL_141;
      }
    }

    goto LABEL_10;
  }

  if ((v34 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0))
  {
    goto LABEL_10;
  }

  v40 = *(&v251 + 1) >> 62;
  if (*(&v251 + 1) >> 62 == 3)
  {
    v41 = 0;
    if (v251 != __PAIR128__(0xC000000000000000, 0))
    {
      goto LABEL_188;
    }

    if (v30 >> 62 != 3)
    {
      goto LABEL_188;
    }

    v41 = 0;
    if (v31 || v30 != 0xC000000000000000)
    {
      goto LABEL_188;
    }

    goto LABEL_204;
  }

  if (v40 > 1)
  {
    if (v40 == 2)
    {
      v62 = *(v251 + 16);
      v61 = *(v251 + 24);
      v53 = __OFSUB__(v61, v62);
      v41 = v61 - v62;
      if (v53)
      {
        goto LABEL_433;
      }
    }

    else
    {
      v41 = 0;
    }
  }

  else if (v40)
  {
    LODWORD(v41) = DWORD1(v251) - v251;
    if (__OFSUB__(DWORD1(v251), v251))
    {
      goto LABEL_432;
    }

    v41 = v41;
  }

  else
  {
    v41 = BYTE14(v251);
  }

LABEL_188:
  v106 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v106 != 2)
    {
      if (v41)
      {
        goto LABEL_10;
      }

      goto LABEL_204;
    }

    v109 = *(v31 + 16);
    v108 = *(v31 + 24);
    v53 = __OFSUB__(v108, v109);
    v107 = v108 - v109;
    if (v53)
    {
      goto LABEL_420;
    }
  }

  else if (v106)
  {
    LODWORD(v107) = HIDWORD(v31) - v31;
    if (__OFSUB__(HIDWORD(v31), v31))
    {
      goto LABEL_421;
    }

    v107 = v107;
  }

  else
  {
    v107 = BYTE6(v30);
  }

  if (v41 != v107)
  {
    goto LABEL_10;
  }

  if (v41 < 1)
  {
LABEL_204:
    v248 = v253;
    *&v249 = v254;
    v250 = v255;
    v246 = v251;
    v247 = v252;
    *(&v249 + 1) = *(&v254 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v115 = v33;
    v116 = v32;
    sub_1B0BD1224(&v246, v245);
    v114 = v116;
    v113 = v115;
    goto LABEL_205;
  }

  if (v40 > 1)
  {
    v123 = *v3;
    v226 = *(v3 + 1);
    v230 = *(v3 + 2);
    v233 = *(v3 + 3);
    if (v40 == 2)
    {
      v124 = *(v251 + 16);
      v239 = *(v251 + 24);
      v246 = v251;
      v247 = v252;
      v248 = v253;
      *&v249 = v254;
      v250 = v255;
      *(&v249 + 1) = *(&v254 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      sub_1B0BD1224(&v246, v245);
      v125 = sub_1B0E42A98();
      if (v125)
      {
        v126 = sub_1B0E42AC8();
        if (__OFSUB__(v124, v126))
        {
          goto LABEL_452;
        }

        v125 += v124 - v126;
      }

      if (__OFSUB__(v239, v124))
      {
        goto LABEL_448;
      }

      sub_1B0E42AB8();
      v127 = v125;
    }

    else
    {
      memset(v244, 0, 14);
      v248 = v253;
      *&v249 = v254;
      v250 = v255;
      v246 = v251;
      v247 = v252;
      *(&v249 + 1) = *(&v254 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      sub_1B0BD1224(&v246, v245);
      v127 = v244;
    }

    v166 = v123;
  }

  else
  {
    v220 = *v3;
    if (!v40)
    {
      v110 = *(v3 + 2);
      v111 = *(v3 + 3);
      v244[0] = v251;
      LODWORD(v244[1]) = DWORD2(v251);
      WORD2(v244[1]) = WORD6(v251);
      *&v249 = v254;
      v250 = v255;
      v248 = v253;
      v246 = v251;
      v247 = v252;
      *(&v249 + 1) = *(&v254 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v112 = v30;
      sub_1B0BD1224(&v246, v245);
      sub_1B0AE2440(v244, v220, v112, v245);
      v113 = v111;
      v114 = v110;
      if ((v245[0] & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_205;
    }

    v226 = *(v3 + 1);
    v230 = *(v3 + 2);
    v233 = *(v3 + 3);
    v163 = v251;
    if (v251 >> 32 < v251)
    {
      goto LABEL_447;
    }

    v248 = v253;
    *&v249 = v254;
    v250 = v255;
    v246 = v251;
    v247 = v252;
    *(&v249 + 1) = *(&v254 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    sub_1B0BD1224(&v246, v245);
    v164 = sub_1B0E42A98();
    if (v164)
    {
      v165 = sub_1B0E42AC8();
      if (__OFSUB__(v163, v165))
      {
        goto LABEL_453;
      }

      v164 += v163 - v165;
    }

    sub_1B0E42AB8();
    v127 = v164;
    v166 = v220;
  }

  sub_1B0AE2440(v127, v166, v226, v245);
  v114 = v230;
  v113 = v233;
  if ((v245[0] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_205:
  v117 = v22 >> 62;
  if (v22 >> 62 != 3)
  {
    if (v117 > 1)
    {
      if (v117 == 2)
      {
        v122 = *(v23 + 16);
        v121 = *(v23 + 24);
        v53 = __OFSUB__(v121, v122);
        v118 = v121 - v122;
        if (v53)
        {
          goto LABEL_445;
        }
      }

      else
      {
        v118 = 0;
      }
    }

    else if (v117)
    {
      LODWORD(v118) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_446;
      }

      v118 = v118;
    }

    else
    {
      v118 = BYTE6(v22);
    }

LABEL_285:
    v153 = v113 >> 62;
    if ((v113 >> 62) > 1)
    {
      if (v153 != 2)
      {
        if (!v118)
        {
          goto LABEL_411;
        }

        goto LABEL_7;
      }

      v156 = *(v114 + 16);
      v155 = *(v114 + 24);
      v53 = __OFSUB__(v155, v156);
      v154 = v155 - v156;
      if (v53)
      {
        goto LABEL_435;
      }
    }

    else if (v153)
    {
      LODWORD(v154) = HIDWORD(v114) - v114;
      if (__OFSUB__(HIDWORD(v114), v114))
      {
        goto LABEL_436;
      }

      v154 = v154;
    }

    else
    {
      v154 = BYTE6(v113);
    }

    if (v118 != v154)
    {
      goto LABEL_7;
    }

    if (v118 < 1)
    {
      goto LABEL_411;
    }

    if (v117 > 1)
    {
      if (v117 != 2)
      {
        *(&v246 + 6) = 0;
        *&v246 = 0;
        v169 = v113;
        v170 = v114;
        sub_1B03B2000(v114, v113);
        sub_1B03B2000(v170, v169);
        sub_1B0AE2440(&v246, v170, v169, v245);
        sub_1B0BD2F90(&v251);
        sub_1B0391D50(v170, v169);
        v159 = v170;
        v160 = v169;
        goto LABEL_317;
      }

      v161 = *(v23 + 16);
      v162 = *(v23 + 24);
    }

    else
    {
      if (!v117)
      {
        *&v246 = v23;
        WORD4(v246) = v22;
        BYTE10(v246) = BYTE2(v22);
        BYTE11(v246) = BYTE3(v22);
        BYTE12(v246) = BYTE4(v22);
        BYTE13(v246) = BYTE5(v22);
        v157 = v113;
        v158 = v114;
        sub_1B03B2000(v114, v113);
        sub_1B03B2000(v158, v157);
        sub_1B0AE2440(&v246, v158, v157, v245);
        sub_1B0BD2F90(&v251);
        sub_1B0391D50(v158, v157);
        v159 = v158;
        v160 = v157;
LABEL_317:
        sub_1B0391D50(v159, v160);
        v120 = v245[0];
        goto LABEL_318;
      }

      v161 = v23;
      v162 = v23 >> 32;
      if (v23 >> 32 < v23)
      {
        goto LABEL_451;
      }
    }

    v167 = v113;
    v168 = v114;
    sub_1B03B2000(v114, v113);
    sub_1B03B2000(v168, v167);
    sub_1B03B2000(v168, v167);
    v119 = sub_1B0AB87A0(v161, v162, v22 & 0x3FFFFFFFFFFFFFFFLL, v168, v167);
    sub_1B0391D50(v168, v167);
    sub_1B0BD2F90(&v251);
    sub_1B0391D50(v168, v167);
    sub_1B0391D50(v168, v167);
    goto LABEL_314;
  }

  v118 = 0;
  if (v23)
  {
    goto LABEL_285;
  }

  if (v22 != 0xC000000000000000)
  {
    goto LABEL_285;
  }

  if (v113 >> 62 != 3)
  {
    goto LABEL_285;
  }

  v118 = 0;
  if (v114 || v113 != 0xC000000000000000)
  {
    goto LABEL_285;
  }

LABEL_411:
  sub_1B0BD2F90(v3);
  v3 = &v251;
LABEL_412:
  v12 = v242;
LABEL_413:
  sub_1B0BD2F90(v3);
  v208 = (*(v12 + 48) + 80 * v15);
  v246 = *v208;
  v209 = v208[3];
  v210 = v208[4];
  v211 = v208[2];
  v247 = v208[1];
  v249 = v209;
  v250 = v210;
  v248 = v211;
  v212 = v208[3];
  a1[2] = v208[2];
  a1[3] = v212;
  a1[4] = v208[4];
  v213 = v208[1];
  *a1 = *v208;
  a1[1] = v213;
  sub_1B0BD6700(&v246, v245);
}

uint64_t sub_1B0C1FA20(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B0E46C28();
  sub_1B0E46C88();
  v6 = sub_1B0E46CB8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
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
    sub_1B0C231B0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B0C1FB18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v10 = *v5;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((a5 & 1) == 0)
  {
    MEMORY[0x1B2728DB0](a4 >> 14);
  }

  v11 = sub_1B0E46CB8();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    do
    {
      v17 = v16 + 32 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *v17 == a2 && *(v17 + 8) == a3;
      if (v20 || (sub_1B0E46A78() & 1) != 0)
      {
        if (v19)
        {
          if (a5)
          {
            goto LABEL_15;
          }
        }

        else if ((a5 & 1) == 0 && !((v18 ^ a4) >> 14))
        {
LABEL_15:

          v21 = *(v28 + 48) + 32 * v14;
          v23 = *v21;
          v22 = *(v21 + 8);
          v24 = *(v21 + 16);
          LOBYTE(v21) = *(v21 + 24);
          *a1 = v23;
          *(a1 + 8) = v22;
          *(a1 + 16) = v24;
          *(a1 + 24) = v21;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          return 0;
        }
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v29;
  v27 = a5 & 1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C232FC(a2, a3, a4, v27, v14, isUniquelyReferenced_nonNull_native);
  *v29 = v31;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = v27;
  return 1;
}

uint64_t sub_1B0C1FD08(_BYTE *a1, uint64_t a2)
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
    sub_1B0C234F0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B0C1FE38(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v12 = sub_1B0E46CB8();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
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
    v18 = *v5;
    sub_1B0C2363C(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_1B0C1FF58()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  v2 = sub_1B0E46CB8() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_1B0C237AC(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_1B0C2000C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5830, &qword_1B0ED9080);
  result = sub_1B0E46208();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1B0C211CC(*v15, *(v15 + 8), *(v15 + 16), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      v15 = *(v3 + 48) + 24 * (v12 | (v6 << 6));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B0C2017C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5848, &qword_1B0ED9098);
  v4 = sub_1B0E46208();
  if (*(v3 + 16))
  {
    v5 = 0;
    result = v3 + 56;
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
    v38 = v2;
    v39 = (v7 + 63) >> 6;
    v10 = v4 + 56;
    v41 = v3 + 56;
    v42 = v3;
    v43 = v4;
    while (1)
    {
      if (!v9)
      {
        v14 = v5;
        while (1)
        {
          v5 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v5 >= v39)
          {
            break;
          }

          v15 = *(result + 8 * v5);
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v44 = (v15 - 1) & v15;
            goto LABEL_15;
          }
        }

        v37 = 1 << *(v3 + 32);
        if (v37 >= 64)
        {
          bzero(result, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *result = -1 << v37;
        }

        v2 = v38;
        *(v3 + 16) = 0;
        break;
      }

      v13 = __clz(__rbit64(v9));
      v44 = (v9 - 1) & v9;
LABEL_15:
      v16 = (*(v3 + 48) + 80 * (v13 | (v5 << 6)));
      v18 = *v16;
      v17 = v16[1];
      v20 = v16[2];
      v19 = v16[3];
      v21 = v16[4];
      v22 = v16[7];
      v47 = v16[6];
      v23 = v16[9];
      v45 = v16[5];
      v46 = v16[8];
      sub_1B0E46C28();
      v48 = v23;
      if ((v22 & 0x1000000000000000) == 0)
      {
        MEMORY[0x1B2728D70](0);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v24 = v18;
        v25 = v21;
        v26 = v45;
        goto LABEL_32;
      }

      v40 = v17;
      v27 = v18;
      MEMORY[0x1B2728D70](1);
      v28 = (v23 >> 59) & 6 | ((v22 & 0x2000000000000000) != 0);
      if (v28 <= 2)
      {
        v25 = v21;
        if (v28)
        {
          v26 = v45;
          if (v28 == 1)
          {
            MEMORY[0x1B2728D70](1);
            v24 = v27;
            v17 = v40;
            sub_1B0E42F48();
            sub_1B0E42F48();
            sub_1B0E42F48();
            sub_1B0E42F48();
          }

          else
          {
            MEMORY[0x1B2728D70](2);
            v24 = v27;
            v17 = v40;
          }

          sub_1B0E42F48();
        }

        else
        {
          MEMORY[0x1B2728D70](0);
          v24 = v27;
          v17 = v40;
          sub_1B0E42F48();
          sub_1B0E42F48();
          v26 = v45;
        }
      }

      else
      {
        v25 = v21;
        if (v28 > 4)
        {
          v26 = v45;
          if (v28 == 5)
          {
            v29 = 5;
          }

          else
          {
            v29 = 6;
          }
        }

        else
        {
          v26 = v45;
          if (v28 != 3)
          {
            MEMORY[0x1B2728D70](4);
            v24 = v27;
            v17 = v40;
            sub_1B0E42F48();
            sub_1B0E42F48();
            goto LABEL_32;
          }

          v29 = 3;
        }

        MEMORY[0x1B2728D70](v29);
        v24 = v27;
        v17 = v40;
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

LABEL_32:
      result = sub_1B0E46CB8();
      v4 = v43;
      v30 = -1 << *(v43 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v10 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v10 + 8 * v32);
          if (v36 != -1)
          {
            v11 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v31) & ~*(v10 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v43 + 48) + 80 * v11);
      *v12 = v24;
      v12[1] = v17;
      v12[2] = v20;
      v12[3] = v19;
      v12[4] = v25;
      v12[5] = v26;
      v12[6] = v47;
      v12[7] = v22;
      v12[8] = v46;
      v12[9] = v48;
      ++*(v43 + 16);
      result = v41;
      v3 = v42;
      v9 = v44;
    }
  }

  *v2 = v4;
  return result;
}

uint64_t sub_1B0C20610(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54B8, ":&\t");
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_1B0E46C28();
      sub_1B0E46C88();
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
      *(*(v5 + 48) + 4 * v13) = v17;
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

uint64_t sub_1B0C20860(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5568, &qword_1B0ED2730);
  result = sub_1B0E46208();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
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
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v34 = v22;
      if (v22 == 1)
      {
        v23 = v21;
        sub_1B0E46C68();
      }

      else
      {
        sub_1B0E46C68();
        v23 = v21;
        MEMORY[0x1B2728DB0](v21 >> 14);
      }

      result = sub_1B0E46CB8();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v23;
      *(v14 + 24) = v34;
      ++*(v5 + 16);
      v3 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B0C20B1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5850, &qword_1B0ED90A0);
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

uint64_t sub_1B0C20D6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B0E46208();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v19);
      result = sub_1B0E46CB8();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1B0C20FB4(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5858, &qword_1B0ED90A8);
  result = sub_1B0E46208();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
LABEL_13:
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      result = sub_1B0E46CB8();
      v14 = -1 << *(v4 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v16);
          if (v20 != -1)
          {
            v12 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v21 = 1 << *(v2 + 32);
    if (v21 >= 64)
    {
      bzero((v2 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v21;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1B0C211CC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46C28();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      MEMORY[0x1B2728D70](3);
      goto LABEL_14;
    }

    if (a3 == 3)
    {
      MEMORY[0x1B2728D70](4);
      goto LABEL_14;
    }
  }

  else
  {
    if (!a3)
    {
      MEMORY[0x1B2728D70](1);
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      MEMORY[0x1B2728D70](2);
      goto LABEL_14;
    }
  }

  MEMORY[0x1B2728D70](0);
  sub_1B0E46C68();
  if ((~a1 & 0xF000000000000007) != 0)
  {
    ResponseTextCode.hash(into:)(v10, a1);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_14:
  sub_1B0E46CB8();
  result = sub_1B0E460D8();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v9 = (*(a4 + 48) + 24 * result);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  ++*(a4 + 16);
  return result;
}

void sub_1B0C21330(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_39;
  }

  if (a5)
  {
    sub_1B0C2000C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1B0C238BC();
      goto LABEL_39;
    }

    sub_1B0C241D4(v9 + 1);
  }

  v11 = *v5;
  sub_1B0E46C28();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      MEMORY[0x1B2728D70](3);
      goto LABEL_21;
    }

    if (a3 == 3)
    {
      MEMORY[0x1B2728D70](4);
      goto LABEL_21;
    }

LABEL_15:
    MEMORY[0x1B2728D70](0);
    sub_1B0E46C68();
    if ((~result & 0xF000000000000007) != 0)
    {
      ResponseTextCode.hash(into:)(v28, result);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_21;
  }

  if (!a3)
  {
    MEMORY[0x1B2728D70](1);
    goto LABEL_21;
  }

  if (a3 != 1)
  {
    goto LABEL_15;
  }

  MEMORY[0x1B2728D70](2);
LABEL_21:
  v12 = sub_1B0E46CB8();
  v13 = -1 << *(v11 + 32);
  a4 = v12 & ~v13;
  if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_39;
  }

  v14 = ~v13;
  while (1)
  {
    v15 = (*(v11 + 48) + 24 * a4);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_34;
      }

      if (a3 == 1)
      {
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      goto LABEL_38;
    }

LABEL_24:
    a4 = (a4 + 1) & v14;
    if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (v18 == 2)
  {
    if (a3 == 2)
    {
      goto LABEL_38;
    }

    goto LABEL_24;
  }

  if (v18 == 3)
  {
    if (a3 == 3)
    {
      goto LABEL_38;
    }

    goto LABEL_24;
  }

LABEL_34:
  if (a3 < 4)
  {
    goto LABEL_24;
  }

  sub_1B04420D8(*v15);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = static ResponseText.__derived_struct_equals(_:_:)(v16, v17, v18, result, a2, a3);
  sub_1B0BD1488(v16, v17, v18);
  if ((v19 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_38:
  sub_1B0E46B98();
  __break(1u);
LABEL_39:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = (*(v20 + 48) + 24 * a4);
  *v21 = result;
  v21[1] = a2;
  v21[2] = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

__int128 *sub_1B0C215F0(__int128 *result, unint64_t a2, char a3)
{
  v5 = result;
  v257 = *MEMORY[0x1E69E9840];
  v6 = result[3];
  v254 = result[2];
  v255 = v6;
  v256 = result[4];
  v7 = result[1];
  v252 = *result;
  v253 = v7;
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_398;
  }

  if (a3)
  {
    sub_1B0C2017C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B0C23A24();
      goto LABEL_398;
    }

    sub_1B0C2432C(v8 + 1);
  }

  v228 = v3;
  v230 = *v3;
  sub_1B0E46C28();
  v10 = *(v5 + 8);
  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  v13 = *(v5 + 56);
  if ((v13 & 0x1000000000000000) != 0)
  {
    v14 = *(v5 + 48);
    v244 = *v5;
    v245 = v10;
    v246 = v12;
    v247 = v11;
    v248 = *(v5 + 32);
    v249 = v14;
    v250 = v13 & 0xEFFFFFFFFFFFFFFFLL;
    v251 = *(v5 + 64);
    MEMORY[0x1B2728D70](1);
    sub_1B0C0EF30(&v239);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  result = sub_1B0E46CB8();
  v15 = v230;
  v16 = v230 + 56;
  v17 = -1 << *(v230 + 32);
  a2 = result & ~v17;
  if ((*(v230 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v229 = ~v17;
    do
    {
      v19 = (*(v15 + 48) + 80 * a2);
      v239 = *v19;
      v21 = v19[3];
      v20 = v19[4];
      v22 = v19[2];
      v240 = v19[1];
      v241 = v22;
      v242 = v21;
      v243 = v20;
      v23 = *(&v239 + 1);
      result = v239;
      v24 = *(&v240 + 1);
      v25 = v240;
      v26 = *(&v21 + 1);
      if ((*(&v21 + 1) & 0x1000000000000000) != 0)
      {
        v29 = *(v5 + 56);
        if ((v29 & 0x1000000000000000) == 0)
        {
          goto LABEL_14;
        }

        v30 = *(&v243 + 1);
        v32 = *v5;
        v31 = *(v5 + 8);
        v33 = *(v5 + 16);
        v34 = *(v5 + 24);
        v35 = *(v5 + 72);
        v36 = (*(&v243 + 1) >> 59) & 6 | ((*(&v242 + 1) & 0x2000000000000000) != 0);
        if (v36 <= 2)
        {
          if (v36)
          {
            if (v36 == 1)
            {
              if (((v35 >> 59) & 6 | ((v29 & 0x2000000000000000) != 0)) != 1)
              {
                goto LABEL_14;
              }

              v224 = *(&v241 + 1);
              v226 = v241;
              v221 = v242;
              v222 = *(v5 + 32);
              v223 = *(v5 + 40);
              v37 = *(&v239 + 1) >> 62;
              v216 = *(v5 + 64);
              v217 = v243;
              if (*(&v239 + 1) >> 62 == 3)
              {
                v38 = 0;
                if (v239 != __PAIR128__(0xC000000000000000, 0))
                {
                  goto LABEL_100;
                }

                if (v31 >> 62 != 3)
                {
                  goto LABEL_100;
                }

                v38 = 0;
                if (v32 || v31 != 0xC000000000000000)
                {
                  goto LABEL_100;
                }

                goto LABEL_114;
              }

              if (v37 > 1)
              {
                if (v37 == 2)
                {
                  v50 = *(v239 + 16);
                  v49 = *(v239 + 24);
                  v51 = __OFSUB__(v49, v50);
                  v38 = v49 - v50;
                  if (v51)
                  {
                    goto LABEL_414;
                  }
                }

                else
                {
                  v38 = 0;
                }
              }

              else if (v37)
              {
                LODWORD(v38) = DWORD1(v239) - v239;
                if (__OFSUB__(DWORD1(v239), v239))
                {
                  goto LABEL_413;
                }

                v38 = v38;
              }

              else
              {
                v38 = BYTE14(v239);
              }

LABEL_100:
              v58 = v31 >> 62;
              if ((v31 >> 62) > 1)
              {
                if (v58 != 2)
                {
                  if (v38)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_114;
                }

                v61 = *(v32 + 16);
                v60 = *(v32 + 24);
                v51 = __OFSUB__(v60, v61);
                v59 = v60 - v61;
                if (v51)
                {
                  goto LABEL_406;
                }

                v30 = *(&v243 + 1);
              }

              else if (v58)
              {
                LODWORD(v59) = HIDWORD(v32) - v32;
                if (__OFSUB__(HIDWORD(v32), v32))
                {
                  goto LABEL_404;
                }

                v59 = v59;
              }

              else
              {
                v59 = BYTE6(v31);
              }

              if (v38 != v59)
              {
                goto LABEL_14;
              }

              if (v38 < 1)
              {
LABEL_114:
                v211 = v30;
                v212 = *(v5 + 48);
                v235 = v241;
                v236 = v242;
                v238 = v243;
                v233 = v239;
                v234 = v240;
                v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v66 = v33;
                v67 = v35;
                sub_1B0BD1224(&v233, v232);
                v68 = v67;
                goto LABEL_115;
              }

              v218 = *(v5 + 24);
              v212 = *(v5 + 48);
              v213 = *(v5 + 16);
              v210 = *(v5 + 72);
              v211 = v30;
              if (v37 > 1)
              {
                if (v37 != 2)
                {
                  *&v232[6] = 0;
                  *v232 = 0;
                  v150 = v31;
                  v151 = v32;
                  sub_1B03B2000(v32, v31);
                  sub_1B0BD6700(&v239, &v233);
                  sub_1B03B2000(v151, v150);
                  sub_1B0AE2440(v232, v151, v150, &v233);
                  sub_1B0391D50(v151, v150);
                  v64 = v151;
                  v65 = v150;
                  goto LABEL_276;
                }

                v204 = *(v239 + 24);
                v206 = *(v239 + 16);
                v94 = *(v5 + 8);
                v95 = *v5;
                sub_1B03B2000(v32, v31);
                sub_1B03B2000(v95, v94);
                sub_1B0BD6700(&v239, &v233);
                sub_1B03B2000(v95, v94);
                v96 = v23 & 0x3FFFFFFFFFFFFFFFLL;
                v98 = v204;
                v97 = v206;
                v99 = v95;
                v100 = v94;
                v101 = v94;
              }

              else
              {
                if (!v37)
                {
                  *v232 = v239;
                  *&v232[8] = DWORD2(v239);
                  *&v232[12] = WORD6(v239);
                  v62 = v31;
                  v63 = v32;
                  sub_1B03B2000(v32, v31);
                  sub_1B0BD6700(&v239, &v233);
                  sub_1B03B2000(v63, v62);
                  sub_1B0AE2440(v232, v63, v62, &v233);
                  sub_1B0391D50(v63, v62);
                  v64 = v63;
                  v65 = v62;
LABEL_276:
                  sub_1B0391D50(v64, v65);
                  v34 = v218;
                  v66 = v213;
                  v68 = v210;
                  if ((v233 & 1) == 0)
                  {
                    goto LABEL_392;
                  }

LABEL_115:
                  v69 = v24 >> 62;
                  if (v24 >> 62 == 3)
                  {
                    v70 = 0;
                    if (v25)
                    {
                      goto LABEL_232;
                    }

                    if (v24 != 0xC000000000000000)
                    {
                      goto LABEL_232;
                    }

                    if (v34 >> 62 != 3)
                    {
                      goto LABEL_232;
                    }

                    v70 = 0;
                    if (v66 || v34 != 0xC000000000000000)
                    {
                      goto LABEL_232;
                    }
                  }

                  else
                  {
                    if (v69 == 2)
                    {
                      v130 = *(v25 + 16);
                      v129 = *(v25 + 24);
                      v51 = __OFSUB__(v129, v130);
                      v70 = v129 - v130;
                      if (v51)
                      {
                        goto LABEL_424;
                      }
                    }

                    else if (v69 == 1)
                    {
                      LODWORD(v70) = HIDWORD(v25) - v25;
                      if (__OFSUB__(HIDWORD(v25), v25))
                      {
                        goto LABEL_425;
                      }

                      v70 = v70;
                    }

                    else
                    {
                      v70 = BYTE6(v24);
                    }

LABEL_232:
                    v133 = v34 >> 62;
                    if ((v34 >> 62) > 1)
                    {
                      if (v133 != 2)
                      {
                        if (v70)
                        {
                          goto LABEL_392;
                        }

                        goto LABEL_246;
                      }

                      v136 = *(v66 + 16);
                      v135 = *(v66 + 24);
                      v51 = __OFSUB__(v135, v136);
                      v134 = v135 - v136;
                      if (v51)
                      {
                        goto LABEL_418;
                      }
                    }

                    else if (v133)
                    {
                      LODWORD(v134) = HIDWORD(v66) - v66;
                      if (__OFSUB__(HIDWORD(v66), v66))
                      {
                        goto LABEL_417;
                      }

                      v134 = v134;
                    }

                    else
                    {
                      v134 = BYTE6(v34);
                    }

                    if (v70 != v134)
                    {
                      goto LABEL_392;
                    }

                    if (v70 >= 1)
                    {
                      v137 = v68;
                      sub_1B03B2000(v66, v34);
                      v138 = sub_1B0AB8610(v25, v24, v66, v34);
                      v68 = v137;
                      if ((v138 & 1) == 0)
                      {
                        goto LABEL_392;
                      }
                    }
                  }

LABEL_246:
                  v139 = v224 >> 62;
                  v140 = v223 >> 62;
                  if (v224 >> 62 == 3)
                  {
                    v141 = 0;
                    v142 = v226;
                    if (v226)
                    {
                      goto LABEL_318;
                    }

                    if (v224 != 0xC000000000000000)
                    {
                      goto LABEL_318;
                    }

                    if (v223 >> 62 != 3)
                    {
                      goto LABEL_318;
                    }

                    v141 = 0;
                    if (v222 || v223 != 0xC000000000000000)
                    {
                      goto LABEL_318;
                    }
                  }

                  else
                  {
                    v142 = v226;
                    if (v139 == 2)
                    {
                      v171 = *(v226 + 16);
                      v170 = *(v226 + 24);
                      v51 = __OFSUB__(v170, v171);
                      v141 = v170 - v171;
                      if (v51)
                      {
                        goto LABEL_436;
                      }
                    }

                    else if (v139 == 1)
                    {
                      LODWORD(v141) = HIDWORD(v226) - v226;
                      if (__OFSUB__(HIDWORD(v226), v226))
                      {
                        goto LABEL_437;
                      }

                      v141 = v141;
                    }

                    else
                    {
                      v141 = BYTE6(v224);
                    }

LABEL_318:
                    if (v140 > 1)
                    {
                      if (v140 != 2)
                      {
                        if (v141)
                        {
                          goto LABEL_392;
                        }

                        goto LABEL_332;
                      }

                      v174 = *(v222 + 16);
                      v173 = *(v222 + 24);
                      v51 = __OFSUB__(v173, v174);
                      v172 = v173 - v174;
                      if (v51)
                      {
                        goto LABEL_430;
                      }
                    }

                    else if (v140)
                    {
                      LODWORD(v172) = HIDWORD(v222) - v222;
                      if (__OFSUB__(HIDWORD(v222), v222))
                      {
                        goto LABEL_431;
                      }

                      v172 = v172;
                    }

                    else
                    {
                      v172 = BYTE6(v223);
                    }

                    if (v141 != v172)
                    {
                      goto LABEL_392;
                    }

                    if (v141 >= 1)
                    {
                      v175 = v68;
                      sub_1B03B2000(v222, v223);
                      v176 = sub_1B0AB8610(v142, v224, v222, v223);
                      v68 = v175;
                      if ((v176 & 1) == 0)
                      {
                        goto LABEL_392;
                      }
                    }
                  }

LABEL_332:
                  v177 = v26 & 0xCFFFFFFFFFFFFFFFLL;
                  v178 = v26 >> 62;
                  v179 = v29 >> 62;
                  if (v26 >> 62 == 3)
                  {
                    v180 = 0;
                    v181 = v221;
                    if (v221)
                    {
                      goto LABEL_355;
                    }

                    if (v177 != 0xC000000000000000)
                    {
                      goto LABEL_355;
                    }

                    if (v29 >> 62 != 3)
                    {
                      goto LABEL_355;
                    }

                    v180 = 0;
                    if (v212 || (v29 & 0xCFFFFFFFFFFFFFFFLL) != 0xC000000000000000)
                    {
                      goto LABEL_355;
                    }
                  }

                  else
                  {
                    if (v178 == 2)
                    {
                      v181 = v221;
                      v184 = *(v221 + 16);
                      v183 = *(v221 + 24);
                      v51 = __OFSUB__(v183, v184);
                      v180 = v183 - v184;
                      if (v51)
                      {
                        goto LABEL_444;
                      }
                    }

                    else if (v178 == 1)
                    {
                      v181 = v221;
                      LODWORD(v180) = HIDWORD(v221) - v221;
                      if (__OFSUB__(HIDWORD(v221), v221))
                      {
                        __break(1u);
LABEL_444:
                        __break(1u);
LABEL_445:
                        __break(1u);
LABEL_446:
                        __break(1u);
LABEL_447:
                        __break(1u);
LABEL_448:
                        __break(1u);
                        sub_1B0BD2F90(v5);
                        sub_1B0BD2F90(v5);
                        v235 = v254;
                        v236 = v255;
                        v238 = v256;
                        v233 = v252;
                        v234 = v253;
                        v237 = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                        sub_1B0BE8F74(&v233);

                        __break(1u);
LABEL_449:
                        sub_1B0BD2F90(&v239);
LABEL_450:
                        result = sub_1B0E46B98();
                        __break(1u);
                        return result;
                      }

                      v180 = v180;
                    }

                    else
                    {
                      v180 = BYTE6(v26);
                      v181 = v221;
                    }

LABEL_355:
                    if (v179 > 1)
                    {
                      if (v179 != 2)
                      {
                        if (v180)
                        {
                          goto LABEL_392;
                        }

                        goto LABEL_369;
                      }

                      v187 = *(v212 + 16);
                      v186 = *(v212 + 24);
                      v51 = __OFSUB__(v186, v187);
                      v185 = v186 - v187;
                      if (v51)
                      {
                        goto LABEL_441;
                      }
                    }

                    else if (v179)
                    {
                      LODWORD(v185) = HIDWORD(v212) - v212;
                      if (__OFSUB__(HIDWORD(v212), v212))
                      {
                        goto LABEL_442;
                      }

                      v185 = v185;
                    }

                    else
                    {
                      v185 = BYTE6(v29);
                    }

                    if (v180 != v185)
                    {
                      goto LABEL_392;
                    }

                    if (v180 >= 1)
                    {
                      v188 = v68;
                      sub_1B03B2000(v212, v29 & 0xCFFFFFFFFFFFFFFFLL);
                      v189 = sub_1B0AB8610(v181, v177, v212, v29 & 0xCFFFFFFFFFFFFFFFLL);
                      v68 = v188;
                      if ((v189 & 1) == 0)
                      {
                        goto LABEL_392;
                      }
                    }
                  }

LABEL_369:
                  v34 = v68 & 0xCFFFFFFFFFFFFFFFLL;
                  v190 = v211 >> 62;
                  v191 = v68 >> 62;
                  if (v211 >> 62 == 3)
                  {
                    v93 = 0;
                    if (!v217 && (v211 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v68 >> 62 == 3)
                    {
                      v93 = 0;
                      if (!v216 && v34 == 0xC000000000000000)
                      {
                        goto LABEL_449;
                      }
                    }
                  }

                  else if (v190 == 2)
                  {
                    v193 = *(v217 + 16);
                    v192 = *(v217 + 24);
                    v51 = __OFSUB__(v192, v193);
                    v93 = v192 - v193;
                    if (v51)
                    {
                      goto LABEL_448;
                    }
                  }

                  else if (v190 == 1)
                  {
                    LODWORD(v93) = HIDWORD(v217) - v217;
                    if (__OFSUB__(HIDWORD(v217), v217))
                    {
                      goto LABEL_447;
                    }

                    v93 = v93;
                  }

                  else
                  {
                    v93 = BYTE6(v211);
                  }

                  if (v191 > 1)
                  {
                    if (v191 != 2)
                    {
LABEL_391:
                      if (!v93)
                      {
                        goto LABEL_449;
                      }

                      goto LABEL_392;
                    }

                    v196 = *(v216 + 16);
                    v195 = *(v216 + 24);
                    v51 = __OFSUB__(v195, v196);
                    v194 = v195 - v196;
                    if (v51)
                    {
                      goto LABEL_445;
                    }
                  }

                  else if (v191)
                  {
                    LODWORD(v194) = HIDWORD(v216) - v216;
                    if (__OFSUB__(HIDWORD(v216), v216))
                    {
                      goto LABEL_446;
                    }

                    v194 = v194;
                  }

                  else
                  {
                    v194 = BYTE6(v68);
                  }

                  if (v93 != v194)
                  {
                    goto LABEL_392;
                  }

                  if (v93 < 1)
                  {
                    goto LABEL_449;
                  }

                  v146 = v216;
                  sub_1B03B2000(v216, v68 & 0xCFFFFFFFFFFFFFFFLL);
                  v147 = v217;
                  v148 = v211 & 0xCFFFFFFFFFFFFFFFLL;
LABEL_270:
                  v120 = sub_1B0AB8610(v147, v148, v146, v34);
                  result = sub_1B0BD2F90(&v239);
                  goto LABEL_345;
                }

                v205 = v239;
                v207 = v239 >> 32;
                if (v239 >> 32 < v239)
                {
                  goto LABEL_429;
                }

                v149 = *(v5 + 8);
                v95 = *v5;
                sub_1B03B2000(v32, v31);
                sub_1B03B2000(v95, v149);
                sub_1B0BD6700(&v239, &v233);
                sub_1B03B2000(v95, v149);
                v96 = v23 & 0x3FFFFFFFFFFFFFFFLL;
                v97 = v205;
                v98 = v207;
                v99 = v95;
                v101 = v149;
                v100 = v149;
              }

              v208 = sub_1B0AB87A0(v97, v98, v96, v99, v100);
              sub_1B0391D50(v95, v101);
              sub_1B0391D50(v95, v101);
              sub_1B0391D50(v95, v101);
              v34 = v218;
              v66 = v213;
              v68 = v210;
              if ((v208 & 1) == 0)
              {
                goto LABEL_392;
              }

              goto LABEL_115;
            }

            if (((v35 >> 59) & 6 | ((v29 & 0x2000000000000000) != 0)) != 2)
            {
              goto LABEL_14;
            }

            v43 = *(&v239 + 1) >> 62;
            if (*(&v239 + 1) >> 62 == 3)
            {
              v44 = 0;
              if (v239 == __PAIR128__(0xC000000000000000, 0) && v31 >> 62 == 3)
              {
                v44 = 0;
                if (!v32 && v31 == 0xC000000000000000)
                {
                  goto LABEL_450;
                }
              }
            }

            else if (v43 > 1)
            {
              if (v43 == 2)
              {
                v53 = *(v239 + 16);
                v52 = *(v239 + 24);
                v51 = __OFSUB__(v52, v53);
                v44 = v52 - v53;
                if (v51)
                {
                  goto LABEL_412;
                }
              }

              else
              {
                v44 = 0;
              }
            }

            else if (v43)
            {
              LODWORD(v44) = DWORD1(v239) - v239;
              if (__OFSUB__(DWORD1(v239), v239))
              {
                goto LABEL_410;
              }

              v44 = v44;
            }

            else
            {
              v44 = BYTE14(v239);
            }

            v71 = v31 >> 62;
            if ((v31 >> 62) > 1)
            {
              if (v71 != 2)
              {
                if (!v44)
                {
                  goto LABEL_450;
                }

                goto LABEL_14;
              }

              v74 = *(v32 + 16);
              v73 = *(v32 + 24);
              v51 = __OFSUB__(v73, v74);
              v72 = v73 - v74;
              if (v51)
              {
                goto LABEL_401;
              }
            }

            else if (v71)
            {
              LODWORD(v72) = HIDWORD(v32) - v32;
              if (__OFSUB__(HIDWORD(v32), v32))
              {
                goto LABEL_402;
              }

              v72 = v72;
            }

            else
            {
              v72 = BYTE6(v31);
            }

            if (v44 != v72)
            {
              goto LABEL_14;
            }

            if (v44 < 1)
            {
              goto LABEL_450;
            }

            if (v43 > 1)
            {
              v79 = *v5;
              v80 = *(v5 + 8);
              if (v43 == 2)
              {
                v81 = *(v239 + 16);
                v82 = *(v239 + 24);
LABEL_212:
                sub_1B0BD6700(v5, &v233);
                sub_1B0BD6700(v5, &v233);
                sub_1B0BD6700(&v239, &v233);
                sub_1B0BD6700(v5, &v233);
                v120 = sub_1B0AB87A0(v81, v82, v23 & 0x3FFFFFFFFFFFFFFFLL, v79, v80);
                sub_1B0BD2F90(v5);
                sub_1B0BD2F90(&v239);
                sub_1B0BD2F90(v5);
                result = sub_1B0BD2F90(v5);
                goto LABEL_345;
              }

              *&v232[6] = 0;
              *v232 = 0;
              sub_1B0BD6700(v5, &v233);
              sub_1B0BD6700(&v239, &v233);
              sub_1B0BD6700(v5, &v233);
              v77 = v79;
              v78 = v80;
            }

            else
            {
              if (v43)
              {
                v81 = v239;
                v82 = v239 >> 32;
                if (v239 >> 32 < v239)
                {
                  goto LABEL_421;
                }

                v79 = *v5;
                v80 = *(v5 + 8);
                goto LABEL_212;
              }

              *v232 = v239;
              *&v232[8] = DWORD2(v239);
              *&v232[12] = WORD6(v239);
              v75 = v31;
              v76 = v32;
              sub_1B0BD6700(v5, &v233);
              sub_1B0BD6700(&v239, &v233);
              sub_1B0BD6700(v5, &v233);
              v77 = v76;
              v78 = v75;
            }

            sub_1B0AE2440(v232, v77, v78, &v233);
            sub_1B0BD2F90(&v239);
            sub_1B0BD2F90(v5);
            result = sub_1B0BD2F90(v5);
            v121 = v233;
            goto LABEL_349;
          }

          if ((v35 >> 59) & 6 | ((v29 & 0x2000000000000000) != 0))
          {
            goto LABEL_14;
          }

          v41 = *(&v239 + 1) >> 62;
          if (*(&v239 + 1) >> 62 == 3)
          {
            v42 = 0;
            if (v239 != __PAIR128__(0xC000000000000000, 0))
            {
              goto LABEL_183;
            }

            if (v31 >> 62 != 3)
            {
              goto LABEL_183;
            }

            v42 = 0;
            if (v32 || v31 != 0xC000000000000000)
            {
              goto LABEL_183;
            }

            goto LABEL_199;
          }

          if (v41 > 1)
          {
            if (v41 == 2)
            {
              v57 = *(v239 + 16);
              v56 = *(v239 + 24);
              v51 = __OFSUB__(v56, v57);
              v42 = v56 - v57;
              if (v51)
              {
                goto LABEL_420;
              }
            }

            else
            {
              v42 = 0;
            }
          }

          else if (v41)
          {
            LODWORD(v42) = DWORD1(v239) - v239;
            if (__OFSUB__(DWORD1(v239), v239))
            {
              goto LABEL_419;
            }

            v42 = v42;
          }

          else
          {
            v42 = BYTE14(v239);
          }

LABEL_183:
          v109 = v31 >> 62;
          if ((v31 >> 62) > 1)
          {
            if (v109 != 2)
            {
              if (v42)
              {
                goto LABEL_14;
              }

              goto LABEL_199;
            }

            v112 = *(v32 + 16);
            v111 = *(v32 + 24);
            v51 = __OFSUB__(v111, v112);
            v110 = v111 - v112;
            if (v51)
            {
              goto LABEL_408;
            }
          }

          else if (v109)
          {
            LODWORD(v110) = HIDWORD(v32) - v32;
            if (__OFSUB__(HIDWORD(v32), v32))
            {
              goto LABEL_407;
            }

            v110 = v110;
          }

          else
          {
            v110 = BYTE6(v31);
          }

          if (v42 != v110)
          {
            goto LABEL_14;
          }

          if (v42 >= 1)
          {
            if (v41 > 1)
            {
              v124 = *v5;
              v227 = *(v5 + 8);
              v215 = *(v5 + 16);
              v220 = *(v5 + 24);
              if (v41 == 2)
              {
                v125 = *(v239 + 16);
                v225 = *(v239 + 24);
                v233 = v239;
                v234 = v240;
                v235 = v241;
                v236 = v242;
                v238 = v243;
                v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                sub_1B0BD1224(&v233, v232);
                v126 = sub_1B0E42A98();
                if (v126)
                {
                  v127 = sub_1B0E42AC8();
                  if (__OFSUB__(v125, v127))
                  {
                    goto LABEL_439;
                  }

                  v126 += v125 - v127;
                }

                if (__OFSUB__(v225, v125))
                {
                  goto LABEL_435;
                }

                sub_1B0E42AB8();
                v128 = v126;
              }

              else
              {
                memset(v231, 0, 14);
                v235 = v241;
                v236 = v242;
                v238 = v243;
                v233 = v239;
                v234 = v240;
                v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                sub_1B0BD1224(&v233, v232);
                v128 = v231;
              }

              v169 = v124;
            }

            else
            {
              v209 = *v5;
              if (!v41)
              {
                v113 = *(v5 + 16);
                v114 = *(v5 + 24);
                v231[0] = v239;
                LODWORD(v231[1]) = DWORD2(v239);
                WORD2(v231[1]) = WORD6(v239);
                v236 = v242;
                v238 = v243;
                v235 = v241;
                v233 = v239;
                v234 = v240;
                v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v115 = v31;
                sub_1B0BD1224(&v233, v232);
                sub_1B0AE2440(v231, v209, v115, v232);
                v34 = v114;
                v116 = v113;
                if ((v232[0] & 1) == 0)
                {
                  goto LABEL_392;
                }

                goto LABEL_200;
              }

              v227 = *(v5 + 8);
              v215 = *(v5 + 16);
              v220 = *(v5 + 24);
              v166 = v239;
              if (v239 >> 32 < v239)
              {
                goto LABEL_434;
              }

              v235 = v241;
              v236 = v242;
              v238 = v243;
              v233 = v239;
              v234 = v240;
              v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
              sub_1B0BD1224(&v233, v232);
              v167 = sub_1B0E42A98();
              if (v167)
              {
                v168 = sub_1B0E42AC8();
                if (__OFSUB__(v166, v168))
                {
                  goto LABEL_440;
                }

                v167 += v166 - v168;
              }

              sub_1B0E42AB8();
              v128 = v167;
              v169 = v209;
            }

            sub_1B0AE2440(v128, v169, v227, v232);
            v34 = v220;
            v116 = v215;
            if ((v232[0] & 1) == 0)
            {
              goto LABEL_392;
            }

            goto LABEL_200;
          }

LABEL_199:
          v235 = v241;
          v236 = v242;
          v238 = v243;
          v233 = v239;
          v234 = v240;
          v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
          v117 = v33;
          sub_1B0BD1224(&v233, v232);
          v116 = v117;
LABEL_200:
          v118 = v24 >> 62;
          if (v24 >> 62 == 3)
          {
            v119 = 0;
            if (!v25 && v24 == 0xC000000000000000 && v34 >> 62 == 3)
            {
              v119 = 0;
              if (!v116 && v34 == 0xC000000000000000)
              {
                goto LABEL_449;
              }
            }
          }

          else if (v118 > 1)
          {
            if (v118 == 2)
            {
              v123 = *(v25 + 16);
              v122 = *(v25 + 24);
              v51 = __OFSUB__(v122, v123);
              v119 = v122 - v123;
              if (v51)
              {
                goto LABEL_432;
              }
            }

            else
            {
              v119 = 0;
            }
          }

          else if (v118)
          {
            LODWORD(v119) = HIDWORD(v25) - v25;
            if (__OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_433;
            }

            v119 = v119;
          }

          else
          {
            v119 = BYTE6(v24);
          }

          v158 = v34 >> 62;
          if ((v34 >> 62) > 1)
          {
            if (v158 != 2)
            {
              if (!v119)
              {
                goto LABEL_449;
              }

LABEL_392:
              result = sub_1B0BD2F90(&v239);
              v3 = v228;
              v18 = v229;
              v16 = v230 + 56;
              v15 = v230;
              goto LABEL_14;
            }

            v161 = *(v116 + 16);
            v160 = *(v116 + 24);
            v51 = __OFSUB__(v160, v161);
            v159 = v160 - v161;
            if (v51)
            {
              goto LABEL_422;
            }
          }

          else if (v158)
          {
            LODWORD(v159) = HIDWORD(v116) - v116;
            if (__OFSUB__(HIDWORD(v116), v116))
            {
              goto LABEL_423;
            }

            v159 = v159;
          }

          else
          {
            v159 = BYTE6(v34);
          }

          if (v119 != v159)
          {
            goto LABEL_392;
          }

          if (v119 < 1)
          {
            goto LABEL_449;
          }

          if (v118 > 1)
          {
            if (v118 == 2)
            {
              v163 = v34;
              v164 = *(v25 + 16);
              v165 = *(v25 + 24);
              goto LABEL_344;
            }

            *(&v233 + 6) = 0;
            *&v233 = 0;
            v162 = v116;
            sub_1B03B2000(v116, v34);
            sub_1B03B2000(v162, v34);
          }

          else
          {
            if (v118)
            {
              v163 = v34;
              v164 = v25;
              v165 = v25 >> 32;
              if (v25 >> 32 < v25)
              {
                goto LABEL_438;
              }

LABEL_344:
              v182 = v116;
              sub_1B03B2000(v116, v163);
              sub_1B03B2000(v182, v163);
              sub_1B03B2000(v182, v163);
              v120 = sub_1B0AB87A0(v164, v165, v24 & 0x3FFFFFFFFFFFFFFFLL, v182, v163);
              sub_1B0391D50(v182, v163);
              sub_1B0BD2F90(&v239);
              sub_1B0391D50(v182, v163);
              result = sub_1B0391D50(v182, v163);
LABEL_345:
              v3 = v228;
              v18 = v229;
              v16 = v230 + 56;
              v15 = v230;
              if (v120)
              {
                goto LABEL_450;
              }

              goto LABEL_14;
            }

            *&v233 = v25;
            WORD4(v233) = v24;
            BYTE10(v233) = BYTE2(v24);
            BYTE11(v233) = BYTE3(v24);
            BYTE12(v233) = BYTE4(v24);
            BYTE13(v233) = BYTE5(v24);
            v162 = v116;
            sub_1B03B2000(v116, v34);
            sub_1B03B2000(v162, v34);
          }

          sub_1B0AE2440(&v233, v162, v34, v232);
          sub_1B0BD2F90(&v239);
          sub_1B0391D50(v162, v34);
          result = sub_1B0391D50(v162, v34);
          v121 = v232[0];
LABEL_349:
          v3 = v228;
          v18 = v229;
          v16 = v230 + 56;
          v15 = v230;
          if (v121)
          {
            goto LABEL_450;
          }

          goto LABEL_14;
        }

        if (v36 > 4)
        {
          v39 = (v29 >> 61) & 1;
          v40 = v35 >> 59;
          if (v36 == 5)
          {
            if ((v40 & 6 | v39) != 5)
            {
              goto LABEL_14;
            }
          }

          else if ((v40 & 6 | v39) != 6)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v36 != 3)
          {
            if (((v35 >> 59) & 6 | ((v29 & 0x2000000000000000) != 0)) != 4)
            {
              goto LABEL_14;
            }

            v45 = *(&v239 + 1) >> 62;
            v46 = v31 >> 62;
            if (*(&v239 + 1) >> 62 == 3)
            {
              v47 = 0;
              if (v239 != __PAIR128__(0xC000000000000000, 0))
              {
                goto LABEL_148;
              }

              if (v31 >> 62 != 3)
              {
                goto LABEL_148;
              }

              v47 = 0;
              if (v32 || v31 != 0xC000000000000000)
              {
                goto LABEL_148;
              }

              goto LABEL_164;
            }

            if (v45 > 1)
            {
              if (v45 == 2)
              {
                v55 = *(v239 + 16);
                v54 = *(v239 + 24);
                v51 = __OFSUB__(v54, v55);
                v47 = v54 - v55;
                if (v51)
                {
                  goto LABEL_411;
                }
              }

              else
              {
                v47 = 0;
              }
            }

            else if (v45)
            {
              LODWORD(v47) = DWORD1(v239) - v239;
              if (__OFSUB__(DWORD1(v239), v239))
              {
                goto LABEL_409;
              }

              v47 = v47;
            }

            else
            {
              v47 = BYTE14(v239);
            }

LABEL_148:
            if (v46 > 1)
            {
              if (v46 != 2)
              {
                if (v47)
                {
                  goto LABEL_14;
                }

                goto LABEL_164;
              }

              v85 = *(v32 + 16);
              v84 = *(v32 + 24);
              v51 = __OFSUB__(v84, v85);
              v83 = v84 - v85;
              if (v51)
              {
                goto LABEL_405;
              }
            }

            else if (v46)
            {
              LODWORD(v83) = HIDWORD(v32) - v32;
              if (__OFSUB__(HIDWORD(v32), v32))
              {
                goto LABEL_403;
              }

              v83 = v83;
            }

            else
            {
              v83 = BYTE6(v31);
            }

            if (v47 != v83)
            {
              goto LABEL_14;
            }

            if (v47 >= 1)
            {
              v219 = *(v5 + 24);
              if (v45 > 1)
              {
                v214 = *(v5 + 16);
                if (v45 != 2)
                {
                  *&v232[6] = 0;
                  *v232 = 0;
                  v156 = v31;
                  v157 = v32;
                  sub_1B03B2000(v32, v31);
                  sub_1B0BD6700(&v239, &v233);
                  sub_1B03B2000(v157, v156);
                  sub_1B0AE2440(v232, v157, v156, &v233);
                  sub_1B0391D50(v157, v156);
                  sub_1B0391D50(v157, v156);
                  v34 = v219;
                  v89 = v214;
                  if ((v233 & 1) == 0)
                  {
                    goto LABEL_392;
                  }

                  goto LABEL_165;
                }

                v102 = *(v239 + 16);
                v103 = *(v239 + 24);
                v104 = *(v5 + 8);
                v105 = *v5;
                sub_1B03B2000(v32, v31);
                sub_1B03B2000(v105, v104);
                sub_1B0BD6700(&v239, &v233);
                sub_1B03B2000(v105, v104);
                v106 = sub_1B0AB87A0(v102, v103, v23 & 0x3FFFFFFFFFFFFFFFLL, v105, v104);
                sub_1B0391D50(v105, v104);
                sub_1B0391D50(v105, v104);
                v107 = v105;
                v108 = v104;
              }

              else
              {
                if (!v45)
                {
                  v86 = *(v5 + 16);
                  *v232 = v239;
                  *&v232[8] = DWORD2(v239);
                  *&v232[12] = WORD6(v239);
                  v87 = v31;
                  v88 = v32;
                  sub_1B03B2000(v32, v31);
                  sub_1B0BD6700(&v239, &v233);
                  sub_1B03B2000(v88, v87);
                  sub_1B0AE2440(v232, v88, v87, &v233);
                  sub_1B0391D50(v88, v87);
                  sub_1B0391D50(v88, v87);
                  v34 = v219;
                  v89 = v86;
                  if ((v233 & 1) == 0)
                  {
                    goto LABEL_392;
                  }

                  goto LABEL_165;
                }

                v214 = *(v5 + 16);
                v152 = v239;
                v153 = v239 >> 32;
                if (v239 >> 32 < v239)
                {
                  goto LABEL_428;
                }

                v154 = *(v5 + 8);
                v155 = *v5;
                sub_1B03B2000(v32, v31);
                sub_1B03B2000(v155, v154);
                sub_1B0BD6700(&v239, &v233);
                sub_1B03B2000(v155, v154);
                v106 = sub_1B0AB87A0(v152, v153, v23 & 0x3FFFFFFFFFFFFFFFLL, v155, v154);
                sub_1B0391D50(v155, v154);
                sub_1B0391D50(v155, v154);
                v107 = v155;
                v108 = v154;
              }

              sub_1B0391D50(v107, v108);
              v34 = v219;
              v89 = v214;
              if ((v106 & 1) == 0)
              {
                goto LABEL_392;
              }

              goto LABEL_165;
            }

LABEL_164:
            v235 = v241;
            v236 = v242;
            v238 = v243;
            v233 = v239;
            v234 = v240;
            v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
            v90 = v33;
            sub_1B0BD1224(&v233, v232);
            v89 = v90;
LABEL_165:
            v91 = v24 >> 62;
            v92 = v34 >> 62;
            if (v24 >> 62 == 3)
            {
              v93 = 0;
              if (!v25 && v24 == 0xC000000000000000 && v34 >> 62 == 3)
              {
                v93 = 0;
                if (!v89 && v34 == 0xC000000000000000)
                {
                  goto LABEL_449;
                }
              }
            }

            else if (v91 == 2)
            {
              v132 = *(v25 + 16);
              v131 = *(v25 + 24);
              v51 = __OFSUB__(v131, v132);
              v93 = v131 - v132;
              if (v51)
              {
                goto LABEL_426;
              }
            }

            else if (v91 == 1)
            {
              LODWORD(v93) = HIDWORD(v25) - v25;
              if (__OFSUB__(HIDWORD(v25), v25))
              {
                goto LABEL_427;
              }

              v93 = v93;
            }

            else
            {
              v93 = BYTE6(v24);
            }

            if (v92 > 1)
            {
              if (v92 != 2)
              {
                goto LABEL_391;
              }

              v145 = *(v89 + 16);
              v144 = *(v89 + 24);
              v51 = __OFSUB__(v144, v145);
              v143 = v144 - v145;
              if (v51)
              {
                goto LABEL_415;
              }
            }

            else if (v92)
            {
              LODWORD(v143) = HIDWORD(v89) - v89;
              if (__OFSUB__(HIDWORD(v89), v89))
              {
                goto LABEL_416;
              }

              v143 = v143;
            }

            else
            {
              v143 = BYTE6(v34);
            }

            if (v93 != v143)
            {
              goto LABEL_392;
            }

            if (v93 < 1)
            {
              goto LABEL_449;
            }

            v146 = v89;
            sub_1B03B2000(v89, v34);
            v147 = v25;
            v148 = v24;
            goto LABEL_270;
          }

          if (((v35 >> 59) & 6 | ((v29 & 0x2000000000000000) != 0)) != 3)
          {
            goto LABEL_14;
          }
        }

        if (v239 == __PAIR128__(v31, v32) || (v48 = *(v5 + 16), result = sub_1B0E46A78(), v33 = v48, v18 = v229, v16 = v230 + 56, v15 = v230, (result & 1) != 0))
        {
          if (v25 == v33 && v24 == v34)
          {
            goto LABEL_450;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v5 + 63) & 0x10) == 0)
      {
        v27 = *(v5 + 16);
        v28 = *(v5 + 24);
        if (v239 == *v5 || (result = sub_1B0E46A78(), v18 = v229, v16 = v230 + 56, v15 = v230, (result & 1) != 0))
        {
          if (v25 == v27 && v24 == v28)
          {
            goto LABEL_450;
          }

LABEL_13:
          result = sub_1B0E46A78();
          v18 = v229;
          v16 = v230 + 56;
          v15 = v230;
          if (result)
          {
            goto LABEL_450;
          }
        }
      }

LABEL_14:
      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_398:
  v197 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v198 = (*(v197 + 48) + 80 * a2);
  *v198 = *v5;
  v199 = *(v5 + 16);
  v200 = *(v5 + 32);
  v201 = *(v5 + 64);
  v198[3] = *(v5 + 48);
  v198[4] = v201;
  v198[1] = v199;
  v198[2] = v200;
  v202 = *(v197 + 16);
  v51 = __OFADD__(v202, 1);
  v203 = v202 + 1;
  if (v51)
  {
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
LABEL_432:
    __break(1u);
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
LABEL_435:
    __break(1u);
LABEL_436:
    __break(1u);
LABEL_437:
    __break(1u);
LABEL_438:
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    __break(1u);
LABEL_442:
    __break(1u);
  }

  *(v197 + 16) = v203;
  return result;
}

uint64_t sub_1B0C231B0(uint64_t result, unint64_t a2, char a3)
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
    sub_1B0C20610(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B0C23BAC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B0C24814(v5 + 1);
  }

  v8 = *v3;
  sub_1B0E46C28();
  sub_1B0E46C88();
  result = sub_1B0E46CB8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  *(*(v11 + 48) + 4 * a2) = v4;
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

void sub_1B0C232FC(uint64_t result, uint64_t a2, unint64_t a3, char a4, unint64_t a5, char a6)
{
  v7 = v6;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a6)
  {
    sub_1B0C20860(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B0C23CEC();
      goto LABEL_23;
    }

    sub_1B0C24A34(v12 + 1);
  }

  v14 = *v6;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0E46C68();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x1B2728DB0](a3 >> 14);
  }

  v15 = sub_1B0E46CB8();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = v15 & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = v19 + 32 * a5;
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      v23 = *v20 == result && *(v20 + 8) == a2;
      if (v23 || (sub_1B0E46A78() & 1) != 0)
      {
        if (v22)
        {
          if (a4)
          {
            goto LABEL_22;
          }
        }

        else if ((a4 & 1) == 0 && !((v21 ^ a3) >> 14))
        {
LABEL_22:
          sub_1B0E46B98();
          __break(1u);
          break;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_23:
  v24 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = *(v24 + 48) + 32 * a5;
  *v25 = result;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4 & 1;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }
}

uint64_t sub_1B0C234F0(uint64_t result, unint64_t a2, char a3)
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
    sub_1B0C20B1C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B0C23E58();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B0C24CC8(v5 + 1);
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

uint64_t sub_1B0C2363C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0C20D6C(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_1B0C23F98(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1B0C24EE8(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v7);
  result = sub_1B0E46CB8();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

unint64_t sub_1B0C237AC(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1B0C20FB4(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1B0C25100(v3 + 1);
LABEL_8:
      v6 = *v2;
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      result = sub_1B0E46CB8() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1B0C240C8();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void sub_1B0C238BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5830, &qword_1B0ED9080);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v20;
        v22[2] = v21;
        sub_1B0BD67B0(v19, v20, v21);
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

void *sub_1B0C23A24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5848, &qword_1B0ED9098);
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
        v17 = 80 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[4];
        v23[3] = v18[3];
        v23[4] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x50uLL);
        result = sub_1B0BD6700(v23, &v22);
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

void *sub_1B0C23BAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54B8, ":&\t");
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void sub_1B0C23CEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5568, &qword_1B0ED2730);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 24);
        v22 = *(v4 + 48) + v17;
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v21;
        *(v22 + 24) = v18;
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

void *sub_1B0C23E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5850, &qword_1B0ED90A0);
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

void *sub_1B0C23F98(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B0E461F8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1B0C240C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5858, &qword_1B0ED90A8);
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
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B0C241D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5830, &qword_1B0ED9080);
  result = sub_1B0E46208();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1B0C211CC(v15, v16, v17, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = (*(v3 + 48) + 24 * (v11 | (v6 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      sub_1B0BD67B0(*v14, v16, v17);
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0C2432C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5848, &qword_1B0ED9098);
  result = sub_1B0E46208();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_44:
    *v2 = v5;
    return result;
  }

  v36 = v2;
  v6 = 0;
  v37 = v3 + 56;
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
  v38 = (v7 + 63) >> 6;
  v10 = result + 56;
  v39 = v3;
  v40 = result;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = (*(v3 + 48) + 80 * (v14 | (v6 << 6)));
    v19 = *v17;
    v18 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v41 = v17[4];
    v42 = v17[5];
    v22 = v17[7];
    v43 = v17[6];
    v23 = v17[9];
    v46 = v17[8];
    sub_1B0E46C28();
    v44 = v19;
    v45 = v23;
    if ((v22 & 0x1000000000000000) == 0)
    {
      MEMORY[0x1B2728D70](0);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v24 = v21;
      v26 = v41;
      v25 = v42;
      goto LABEL_33;
    }

    MEMORY[0x1B2728D70](1);
    v27 = (v23 >> 59) & 6 | ((v22 & 0x2000000000000000) != 0);
    if (v27 <= 2)
    {
      v24 = v21;
      v26 = v41;
      if (!v27)
      {
        MEMORY[0x1B2728D70](0);
        v48 = v44;
        v49 = v18;
        v50 = v24;
        v51 = v20;
        v52 = v41;
        v25 = v42;
LABEL_30:
        v53 = v25;
        v54 = v43;
        v55 = v22 & 0xEFFFFFFFFFFFFFFFLL;
        v56 = v46;
        v57 = v45;
        sub_1B0BD1224(&v48, v47);
        sub_1B0E42F48();
        sub_1B0E42F48();
        goto LABEL_33;
      }

      v25 = v42;
      if (v27 == 1)
      {
        MEMORY[0x1B2728D70](1);
        v48 = v44;
        v49 = v18;
        v50 = v24;
        v51 = v20;
        v52 = v41;
        v53 = v42;
        v54 = v43;
        v55 = v22 & 0xEFFFFFFFFFFFFFFFLL;
        v56 = v46;
        v57 = v45;
        sub_1B0BD1224(&v48, v47);
        sub_1B0E42F48();
        sub_1B0E42F48();
        sub_1B0E42F48();
        sub_1B0E42F48();
      }

      else
      {
        MEMORY[0x1B2728D70](2);
        v48 = v44;
        v49 = v18;
        v50 = v24;
        v51 = v20;
        v52 = v41;
        v53 = v42;
        v54 = v43;
        v55 = v22 & 0xEFFFFFFFFFFFFFFFLL;
        v56 = v46;
        v57 = v45;
        sub_1B0BD1224(&v48, v47);
      }

      sub_1B0E42F48();
    }

    else
    {
      v24 = v21;
      v26 = v41;
      if (v27 > 4)
      {
        v25 = v42;
        if (v27 == 5)
        {
          v28 = 5;
        }

        else
        {
          v28 = 6;
        }
      }

      else
      {
        v25 = v42;
        if (v27 != 3)
        {
          MEMORY[0x1B2728D70](4);
          v48 = v44;
          v49 = v18;
          v50 = v24;
          v51 = v20;
          v52 = v41;
          goto LABEL_30;
        }

        v28 = 3;
      }

      MEMORY[0x1B2728D70](v28);
      v48 = v44;
      v49 = v18;
      v50 = v24;
      v51 = v20;
      v52 = v41;
      v53 = v25;
      v54 = v43;
      v55 = v22 & 0xEFFFFFFFFFFFFFFFLL;
      v56 = v46;
      v57 = v45;
      sub_1B0BD1224(&v48, v47);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

LABEL_33:
    result = sub_1B0E46CB8();
    v5 = v40;
    v29 = -1 << *(v40 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v10 + 8 * (v30 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v29) >> 6;
      v12 = v44;
      while (++v31 != v33 || (v32 & 1) == 0)
      {
        v34 = v31 == v33;
        if (v31 == v33)
        {
          v31 = 0;
        }

        v32 |= v34;
        v35 = *(v10 + 8 * v31);
        if (v35 != -1)
        {
          v11 = __clz(__rbit64(~v35)) + (v31 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_46;
    }

    v11 = __clz(__rbit64((-1 << v30) & ~*(v10 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v12 = v44;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v13 = (*(v40 + 48) + 80 * v11);
    *v13 = v12;
    v13[1] = v18;
    v13[2] = v24;
    v13[3] = v20;
    v13[4] = v26;
    v13[5] = v25;
    v13[6] = v43;
    v13[7] = v22;
    v13[8] = v46;
    v13[9] = v45;
    ++*(v40 + 16);
    v3 = v39;
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v38)
    {

      v2 = v36;
      goto LABEL_44;
    }

    v16 = *(v37 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1B0C24814(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E54B8, ":&\t");
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
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_1B0E46C28();
      sub_1B0E46C88();
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
      *(*(v5 + 48) + 4 * v12) = v16;
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

uint64_t sub_1B0C24A34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5568, &qword_1B0ED2730);
  result = sub_1B0E46208();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v33 = v22;
      if (v22 == 1)
      {
        v23 = v21;
        sub_1B0E46C68();
      }

      else
      {
        sub_1B0E46C68();
        v23 = v21;
        MEMORY[0x1B2728DB0](v21 >> 14);
      }

      result = sub_1B0E46CB8();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v23;
      *(v14 + 24) = v33;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0C24CC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5850, &qword_1B0ED90A0);
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

uint64_t sub_1B0C24EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B0E46208();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v18);
      result = sub_1B0E46CB8();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1B0C25100(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5858, &qword_1B0ED90A8);
  result = sub_1B0E46208();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      result = sub_1B0E46CB8();
      v13 = -1 << *(v4 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }

  return result;
}

uint64_t _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = sub_1B0E441D8();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v64 - v6;
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v64 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v64 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v64 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v64 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5840, &qword_1B0ED9090);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v64 - v25;
  v28 = (&v64 + *(v27 + 56) - v25);
  sub_1B0446B60(a1, &v64 - v25, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  sub_1B0446B60(v69, v28, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B0446B60(v26, v20, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v35 = *v20;
        v36 = v20[2];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v37 = v20[1];
          v38 = *v28;
          v34 = static ResponseText.__derived_struct_equals(_:_:)(v35, v37, v36, *v28, v28[1], v28[2]);
          sub_1B0447F00(v38);

          sub_1B0447F00(v35);
          goto LABEL_10;
        }

        sub_1B0447F00(v35);

        goto LABEL_35;
      }

      sub_1B0446B60(v26, v17, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      v48 = *v17;
      v47 = v17[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_32;
      }

      v49 = v28[1];
      if (v47)
      {
        if (v49)
        {
          if (v48 == *v28 && v47 == v49)
          {

            goto LABEL_29;
          }

          v51 = sub_1B0E46A78();

          if (v51)
          {
LABEL_29:
            sub_1B0438FB0(v26, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
            v34 = 1;
            return v34 & 1;
          }

LABEL_56:
          sub_1B0438FB0(v26, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          goto LABEL_36;
        }
      }

      else if (!v49)
      {
        goto LABEL_29;
      }

      goto LABEL_56;
    }

    sub_1B0446B60(v26, v23, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v45 = *v23;
    v44 = v23[1];
    v46 = v23[2];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B0BD1488(v45, v44, v46);
      goto LABEL_35;
    }

    v57 = *v28;
    v58 = v28[1];
    v59 = v28[2];
    if (v46 > 1)
    {
      if (v46 == 2)
      {
        if (v59 == 2)
        {
          goto LABEL_29;
        }

        goto LABEL_55;
      }

      if (v46 == 3)
      {
        if (v59 == 3)
        {
          goto LABEL_29;
        }

        goto LABEL_55;
      }
    }

    else
    {
      if (!v46)
      {
        if (!v59)
        {
          goto LABEL_29;
        }

        goto LABEL_55;
      }

      if (v46 == 1)
      {
        if (v59 == 1)
        {
          goto LABEL_29;
        }

        goto LABEL_55;
      }
    }

    if (v59 >= 4)
    {
      v60 = *v28;
      v61 = v28[1];
      v62 = v59;
      v63 = static ResponseText.__derived_struct_equals(_:_:)(v45, v44, v46, v60, v61, v59);
      sub_1B0BD1488(v60, v61, v62);
      sub_1B0BD1488(v45, v44, v46);
      if (v63)
      {
        goto LABEL_29;
      }

      goto LABEL_56;
    }

    sub_1B0BD1488(v57, v58, v59);
    v57 = v45;
    v58 = v44;
    v59 = v46;
LABEL_55:
    sub_1B0BD1488(v57, v58, v59);
    goto LABEL_56;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v39 = v66;
      sub_1B0446B60(v26, v66, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v41 = v67;
        v40 = v68;
        v42 = v65;
        (*(v67 + 32))(v65, v28, v68);
        v34 = MEMORY[0x1B27262E0](v39, v42);
        v43 = *(v41 + 8);
        v43(v42, v40);
        v43(v39, v40);
        goto LABEL_27;
      }

      (*(v67 + 8))(v39, v68);
      goto LABEL_35;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_29;
    }

LABEL_35:
    sub_1B0398EFC(v26, &qword_1EB6E5840, &qword_1B0ED9090);
LABEL_36:
    v34 = 0;
    return v34 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1B0446B60(v26, v11, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v53 = v67;
      v52 = v68;
      v54 = v64;
      (*(v67 + 32))(v64, v28, v68);
      v34 = MEMORY[0x1B27262E0](v11, v54);
      v55 = *(v53 + 8);
      v55(v54, v52);
      v55(v11, v52);
      goto LABEL_27;
    }

    (*(v67 + 8))(v11, v68);
    goto LABEL_35;
  }

  sub_1B0446B60(v26, v14, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v30 = *v14;
  v31 = v14[2];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B0447F00(v30);
LABEL_32:

    goto LABEL_35;
  }

  v32 = v14[1];
  v33 = *v28;
  v34 = static ResponseText.__derived_struct_equals(_:_:)(v30, v32, v31, *v28, v28[1], v28[2]);
  sub_1B0447F00(v33);

  sub_1B0447F00(v30);
LABEL_10:

LABEL_27:
  sub_1B0438FB0(v26, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return v34 & 1;
}

uint64_t sub_1B0C25A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C25AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C25B44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s15IMAP2Connection07CommandB0C12RecentErrorsV10StatisticsV23__derived_struct_equalsySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1B0E441D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5838, &qword_1B0ED9088);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2) || a1[2] != a2[2] || a1[3] != a2[3] || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v21 = *(a1 + 6);
  v22 = *(a2 + 6);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v39 = v18;
    v23 = *(a1 + 4);
    v36 = *(a1 + 5);
    v37 = v23;
    v24 = *(a2 + 5);
    v38 = *(a2 + 4);
    v34 = v21;
    v35 = v24;
    sub_1B04420D8(v38);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LODWORD(v37) = static ResponseText.__derived_struct_equals(_:_:)(v37, v36, v34, v38, v35, v22);
    sub_1B0447F00(v38);

    if ((v37 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v39 = v18;
    if (v22)
    {
      return 0;
    }
  }

  v36 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  v38 = *(v36 + 48);
  v25 = *(v39 + 48);
  sub_1B0C25AD4(&a1[v38], v20);
  v37 = v25;
  sub_1B0C25AD4(&a2[v38], &v20[v25]);
  v26 = *(v5 + 48);
  v38 = v5 + 48;
  if (v26(v20, 1, v4) == 1)
  {
    if (v26(&v20[v37], 1, v4) == 1)
    {
      v35 = v26;
      sub_1B0398EFC(v20, &unk_1EB6E5A90, &unk_1B0EDC020);
      goto LABEL_19;
    }

LABEL_17:
    v27 = v20;
LABEL_25:
    sub_1B0398EFC(v27, &qword_1EB6E5838, &qword_1B0ED9088);
    return 0;
  }

  sub_1B0C25AD4(v20, v13);
  v35 = v26;
  if (v26(&v20[v37], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_17;
  }

  (*(v5 + 32))(v7, &v20[v37], v4);
  sub_1B0C26430();
  LODWORD(v34) = sub_1B0E44A28();
  v37 = *(v5 + 8);
  (v37)(v7, v4);
  (v37)(v13, v4);
  sub_1B0398EFC(v20, &unk_1EB6E5A90, &unk_1B0EDC020);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v28 = *(v36 + 52);
  v29 = *(v39 + 48);
  sub_1B0C25AD4(&a1[v28], v16);
  sub_1B0C25AD4(&a2[v28], &v16[v29]);
  v30 = v35;
  if (v35(v16, 1, v4) != 1)
  {
    sub_1B0C25AD4(v16, v10);
    if (v30(&v16[v29], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_24;
    }

    (*(v5 + 32))(v7, &v16[v29], v4);
    sub_1B0C26430();
    v32 = sub_1B0E44A28();
    v33 = *(v5 + 8);
    v33(v7, v4);
    v33(v10, v4);
    sub_1B0398EFC(v16, &unk_1EB6E5A90, &unk_1B0EDC020);
    return (v32 & 1) != 0;
  }

  if (v30(&v16[v29], 1, v4) != 1)
  {
LABEL_24:
    v27 = v16;
    goto LABEL_25;
  }

  sub_1B0398EFC(v16, &unk_1EB6E5A90, &unk_1B0EDC020);
  return 1;
}

unint64_t sub_1B0C26168()
{
  result = qword_1EB6E5828;
  if (!qword_1EB6E5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5828);
  }

  return result;
}

uint64_t sub_1B0C261CC(uint64_t a1)
{
  result = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B0C26248(uint64_t a1)
{
  sub_1B0AD434C(319, &qword_1EB6DB6A8, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1B0E441D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B0C26308(uint64_t a1)
{
  sub_1B0AD434C(319, &qword_1EB6DE8F8, &type metadata for ResponseText);
  if (v1 <= 0x3F)
  {
    sub_1B0C263C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0C263C8(uint64_t a1)
{
  if (!qword_1EB6DB998)
  {
    sub_1B0E441D8();
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB998);
    }
  }
}

unint64_t sub_1B0C26430()
{
  result = qword_1EB6DB9A8;
  if (!qword_1EB6DB9A8)
  {
    sub_1B0E441D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB9A8);
  }

  return result;
}

uint64_t sub_1B0C26488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0C264D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C2653C(uint64_t a1, uint64_t a2)
{
  v5 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0C26C0C(a1, v13, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 22)
  {
    v18 = type metadata accessor for UntaggedResponse;
    v19 = v13;
    return sub_1B0C26C74(v19, v18);
  }

  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = *(v13 + 2);
  if (v13[24])
  {
    if (v13[24] == 1)
    {
      *(v2 + 80) = v15;
      *(v2 + 88) = 0;

      *(v2 + 96) = v14;
      *(v2 + 104) = v16;
      return result;
    }

    sub_1B0C26C0C(a2, v10, _s6LoggerVMa_0);
    sub_1B0C26C0C(a2, v7, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();

    v24 = sub_1B0E43988();
    v25 = sub_1B0E458E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v26 = 68158467;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v27 = *(v5 + 20);
      v39 = v24;
      v28 = v7[v27];
      sub_1B0C26C74(v7, _s6LoggerVMa_0);
      *(v26 + 10) = v28;
      *(v26 + 11) = 2082;
      v29 = *&v10[*(v5 + 20) + 4];
      sub_1B0C26C74(v10, _s6LoggerVMa_0);
      v30 = ConnectionID.debugDescription.getter(v29);
      v32 = sub_1B0399D64(v30, v31, &v41);

      *(v26 + 13) = v32;
      *(v26 + 21) = 2085;
      v33 = String.init(buffer:)(v15, v14, v16 & 0xFFFFFFFFFFFFFFLL);
      v35 = sub_1B0399D64(v33, v34, &v41);

      *(v26 + 23) = v35;
      v36 = v39;
      _os_log_impl(&dword_1B0389000, v39, v25, "[%.*hhx-%{public}s] Ignoring invalid XAPPLEPUSHSERVICE response: %{sensitive}s", v26, 0x1Fu);
      v37 = v40;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v37, -1, -1);
      MEMORY[0x1B272C230](v26, -1, -1);

      return sub_1B0C26CD4(v15, v14, v16, 2u);
    }

    sub_1B0C26C74(v7, _s6LoggerVMa_0);
    sub_1B0C26CD4(v15, v14, v16, 2u);
    sub_1B0C26CD4(v15, v14, v16, 2u);

    v19 = v10;
    v18 = _s6LoggerVMa_0;
    return sub_1B0C26C74(v19, v18);
  }

  v20 = *(v2 + 72);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1B0C0C328(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1B0C0C328((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[16 * v22];
  *(v23 + 4) = v15;
  *(v23 + 10) = v14;
  result = sub_1B0C26CD4(v15, v14, v16, 0);
  *(v2 + 72) = v20;
  return result;
}

double sub_1B0C2697C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v9[0] = *(v1 + 8);
  v9[1] = v3;
  v4 = *(v1 + 56);
  v10 = *(v1 + 40);
  v11 = v4;
  v12 = v9[0];
  v13 = v3;
  v14 = v10;
  v15 = v4;
  sub_1B0A1C2CC(v9, &v8);
  v5 = v13;
  *a1 = v12;
  *(a1 + 16) = v5;
  result = *&v14;
  v7 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v7;
  *(a1 + 64) = 4;
  return result;
}

void sub_1B0C269EC(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1 || (*(v2 + 88) & 1) != 0)
  {
    goto LABEL_7;
  }

  v4 = *(v2 + 80);
  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v4 <= 0x7FFFFFFF)
  {
    v5 = *(v2 + 104);
    if (v5)
    {
      v6 = *(v2 + 72);
      v7 = *(v2 + 96);
      LODWORD(v13) = *(v2 + 80);
      *(&v13 + 1) = v7;
      *&v14 = v5;
      *(&v14 + 1) = v6;
      sub_1B0C26C00(&v13);
      v33 = v21;
      v34 = v22;
      v35 = v23;
      v36 = v24;
      v29 = v17;
      v30 = v18;
      v31 = v19;
      v32 = v20;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      v28 = v16;
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v45 = v33;
      v46 = v34;
      v47 = v35;
      v48 = v36;
      v41 = v29;
      v42 = v30;
      v43 = v31;
      v44 = v32;
      v37 = v25;
      v38 = v26;
      v39 = v27;
      v40 = v28;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_8:
      v8 = v46;
      *(a2 + 128) = v45;
      *(a2 + 144) = v8;
      *(a2 + 160) = v47;
      *(a2 + 176) = v48;
      v9 = v42;
      *(a2 + 64) = v41;
      *(a2 + 80) = v9;
      v10 = v44;
      *(a2 + 96) = v43;
      *(a2 + 112) = v10;
      v11 = v38;
      *a2 = v37;
      *(a2 + 16) = v11;
      v12 = v40;
      *(a2 + 32) = v39;
      *(a2 + 48) = v12;
      return;
    }

LABEL_7:
    *&v14 = 0;
    v13 = 8uLL;
    BYTE8(v14) = -64;
    sub_1B0BD6CF8(&v13);
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1B0C26C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0C26C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0C26CD4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
  }

  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1B0C26D00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1B0C26D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C26D98(uint64_t a1)
{
  v3 = sub_1B0C1AD1C();
  v4 = sub_1B0C1B22C();
  v5 = sub_1B0BD68AC();
  v6 = static MonotonicTime.now()();
  v7 = *v1;
  v8 = *(v1 + 16);
  sub_1B0C27278(v3, v5, *v1);

  if (v2)
  {
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0C0C57C(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  v12 = v8;
  if (v11 >= v10 >> 1)
  {
    result = sub_1B0C0C57C((v10 > 1), v11 + 1, 1, v7);
    v12 = v8;
    v7 = result;
    v15 = v5;
    v14 = v4;
    v13 = v6;
  }

  else
  {
    v13 = v6;
    v14 = v4;
    v15 = v5;
  }

  *(v7 + 16) = v11 + 1;
  v16 = v7 + 40 * v11;
  *(v16 + 32) = a1;
  *(v16 + 40) = v14;
  *(v16 + 48) = v15;
  *(v16 + 56) = 0;
  *(v16 + 64) = v13;
  *v1 = v7;
  if ((v12 & 1) == 0)
  {
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
  }

  return result;
}

uint64_t sub_1B0C26F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 32;
  while (1)
  {
    v4 = (v3 + 40 * v2);
    v5 = v4[1];
    if (*(v5 + 16))
    {
      v6 = *v4;
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](7);
      v7 = sub_1B0E46CB8();
      v8 = -1 << *(v5 + 32);
      v9 = v7 & ~v8;
      if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        break;
      }
    }

LABEL_3:
    if (++v2 == v1)
    {
      return 0;
    }
  }

  v10 = ~v8;
  while (*(*(v5 + 48) + v9) != 7)
  {
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v6;
}

uint64_t sub_1B0C2700C(unint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (!v3)
  {
    return 2;
  }

  v4 = 0;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = (*v2 + 36);
  result = 2;
  while (*(v7 - 4) != v5 || *v7 != v6)
  {
    v7 += 10;
    if (v3 == ++v4)
    {
      return result;
    }
  }

  sub_1B0C0B434(v4, v14);
  if (v15)
  {
    if (v15 == 1)
    {
      sub_1B0C27248(v14);
      return 0;
    }

    else
    {
      sub_1B0C27248(v14);
      return 1;
    }
  }

  else
  {
    v11 = (*v2 + 56);
    v12 = *(*v2 + 16) + 1;
    while (--v12)
    {
      v13 = *v11;
      v11 += 40;
      if (!v13)
      {
        sub_1B0C27248(v14);
        return v14[0];
      }
    }

    sub_1B0C27248(v14);
    *(v2 + 8) = a2;
    *(v2 + 16) = 0;
    return v14[0];
  }
}

void sub_1B0C27108(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v3 = a1 + 16;
  v4 = v5;
  v6 = (v3 + 40 * v5);
  while (v4)
  {
    --v4;
    v7 = *v6;
    v6 -= 40;
    if (v7 == 2)
    {
      MEMORY[0x1EEE9AC00](v3);
      v11 = v8;
      sub_1B0C27228(&v11, v12);
      v9 = v12[0];
      v10 = v12[1];
      v4 = v13;
      goto LABEL_6;
    }
  }

  v9 = 0uLL;
  v10 = 0uLL;
LABEL_6:
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v4;
}

void sub_1B0C271C8(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 16))
  {
    v4 = *a2 + 40 * v3;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    *a3 = *(v4 + 32);
    *(a3 + 8) = v5;
    *(a3 + 16) = v6;
    *(a3 + 24) = v7;
    *(a3 + 32) = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  __break(1u);
}

uint64_t sub_1B0C27278(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 > 9)
  {
    goto LABEL_7;
  }

  v4 = 0;
  v5 = a3 + 32;
  v6 = (a3 + 48);
  v7 = v3 + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 5;
    v9 = __OFADD__(v4, v8);
    v4 += v8;
    if (v9)
    {
      __break(1u);
LABEL_7:
      sub_1B0C2785C();
      goto LABEL_81;
    }
  }

  if (v4)
  {
    v9 = __OFADD__(v4, a2);
    v10 = v4 + a2;
    if (v9)
    {
LABEL_84:
      __break(1u);
      return result;
    }

    if (v10 > 16)
    {
      sub_1B0C27904();
      goto LABEL_81;
    }
  }

  if (v3)
  {
    v11 = 0;
    v12 = result + 56;
    v58 = result;
    v56 = a3 + 32;
    do
    {
      v57 = v11;
      v13 = *(v5 + 40 * v11 + 8);
      if (*(v13 + 16))
      {
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](7);
        v14 = sub_1B0E46CB8();
        v15 = -1 << *(v13 + 32);
        v16 = v14 & ~v15;
        if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          result = v58;
          while (*(*(v13 + 48) + v16) != 7)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

LABEL_80:
          sub_1B0C278B0();
LABEL_81:
          swift_allocError();
          return swift_willThrow();
        }

        result = v58;
        if (*(v58 + 16))
        {
LABEL_23:
          v18 = 0;
          v19 = 1 << *(result + 32);
          if (v19 < 64)
          {
            v20 = ~(-1 << v19);
          }

          else
          {
            v20 = -1;
          }

          v21 = v20 & *(result + 56);
          v22 = (v19 + 63) >> 6;
          v23 = v13 + 56;
LABEL_27:
          while (v21)
          {
LABEL_32:
            v25 = __clz(__rbit64(v21));
            v21 &= v21 - 1;
            v26 = *(*(result + 48) + (v25 | (v18 << 6)));
            v27 = *(v13 + 16);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                if (v27)
                {
                  sub_1B0E46C28();
                  MEMORY[0x1B2728D70](4);
                  v40 = sub_1B0E46CB8();
                  v41 = -1 << *(v13 + 32);
                  v42 = v40 & ~v41;
                  result = v58;
                  if ((*(v23 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
                  {
                    v43 = ~v41;
                    while (*(*(v13 + 48) + v42) != 4)
                    {
                      v42 = (v42 + 1) & v43;
                      if (((*(v23 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    goto LABEL_80;
                  }
                }
              }

              else if (v26 == 4)
              {
                if (v27)
                {
                  sub_1B0E46C28();
                  MEMORY[0x1B2728D70](5);
                  v32 = sub_1B0E46CB8();
                  v33 = -1 << *(v13 + 32);
                  v34 = v32 & ~v33;
                  result = v58;
                  if ((*(v23 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
                  {
                    v35 = ~v33;
                    while (*(*(v13 + 48) + v34) != 5)
                    {
                      v34 = (v34 + 1) & v35;
                      if (((*(v23 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    goto LABEL_80;
                  }
                }
              }

              else if (v27)
              {
                sub_1B0E46C28();
                MEMORY[0x1B2728D70](6);
                v48 = sub_1B0E46CB8();
                v49 = -1 << *(v13 + 32);
                v50 = v48 & ~v49;
                result = v58;
                if ((*(v23 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
                {
                  v51 = ~v49;
                  while (*(*(v13 + 48) + v50) != 6)
                  {
                    v50 = (v50 + 1) & v51;
                    if (((*(v23 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  goto LABEL_80;
                }
              }
            }

            else if (v26)
            {
              if (v26 == 1)
              {
                if (v27)
                {
                  sub_1B0E46C28();
                  MEMORY[0x1B2728D70](2);
                  v28 = sub_1B0E46CB8();
                  v29 = -1 << *(v13 + 32);
                  v30 = v28 & ~v29;
                  result = v58;
                  if ((*(v23 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
                  {
                    v31 = ~v29;
                    while (*(*(v13 + 48) + v30) != 2)
                    {
                      v30 = (v30 + 1) & v31;
                      if (((*(v23 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    goto LABEL_80;
                  }
                }
              }

              else if (v27)
              {
                sub_1B0E46C28();
                MEMORY[0x1B2728D70](3);
                v44 = sub_1B0E46CB8();
                v45 = -1 << *(v13 + 32);
                v46 = v44 & ~v45;
                result = v58;
                if ((*(v23 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
                {
                  v47 = ~v45;
                  while (*(*(v13 + 48) + v46) != 3)
                  {
                    v46 = (v46 + 1) & v47;
                    if (((*(v23 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  goto LABEL_80;
                }
              }
            }

            else if (v27)
            {
              sub_1B0E46C28();
              MEMORY[0x1B2728D70](0);
              v36 = sub_1B0E46CB8();
              v37 = -1 << *(v13 + 32);
              v38 = v36 & ~v37;
              if ((*(v23 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
              {
                v39 = ~v37;
                result = v58;
                while (*(*(v13 + 48) + v38))
                {
                  v38 = (v38 + 1) & v39;
                  if (((*(v23 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                  {
                    goto LABEL_74;
                  }
                }

                goto LABEL_80;
              }

              result = v58;
LABEL_74:
              if (*(v13 + 16))
              {
                sub_1B0E46C28();
                MEMORY[0x1B2728D70](1);
                v52 = sub_1B0E46CB8();
                v53 = -1 << *(v13 + 32);
                v54 = v52 & ~v53;
                result = v58;
                if ((*(v23 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
                {
                  v55 = ~v53;
                  while (*(*(v13 + 48) + v54) != 1)
                  {
                    v54 = (v54 + 1) & v55;
                    if (((*(v23 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
                    {
                      goto LABEL_27;
                    }
                  }

                  goto LABEL_80;
                }
              }
            }
          }

          while (1)
          {
            v24 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v24 >= v22)
            {
              goto LABEL_14;
            }

            v21 = *(v12 + 8 * v24);
            ++v18;
            if (v21)
            {
              v18 = v24;
              goto LABEL_32;
            }
          }

          __break(1u);
          goto LABEL_84;
        }
      }

      else
      {
LABEL_20:
        if (*(result + 16))
        {
          goto LABEL_23;
        }
      }

LABEL_14:
      v5 = v56;
      v11 = v57 + 1;
    }

    while (v57 + 1 != v3);
  }

  return result;
}

unint64_t sub_1B0C2785C()
{
  result = qword_1EB6DCE28;
  if (!qword_1EB6DCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE28);
  }

  return result;
}

unint64_t sub_1B0C278B0()
{
  result = qword_1EB6DCE20;
  if (!qword_1EB6DCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE20);
  }

  return result;
}

unint64_t sub_1B0C27904()
{
  result = qword_1EB6DCE30;
  if (!qword_1EB6DCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCE30);
  }

  return result;
}

uint64_t sub_1B0C27988(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B0C279F4()
{
  result = qword_1EB6E5860;
  if (!qword_1EB6E5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5860);
  }

  return result;
}

void sub_1B0C27A74(unint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 60 == 3)
  {
    v6 = swift_projectBox();
    sub_1B0B7EAA4(v6, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 14)
    {
      if (EnumCaseMultiPayload == 15)
      {
        *(v1 + 24) = *v5;
      }

      else if (EnumCaseMultiPayload != 16)
      {
LABEL_8:
        sub_1B0B7EB08(v5);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 13)
        {
          v8 = *v5;

          *(v1 + 16) = v8;
          return;
        }

        goto LABEL_8;
      }

      v9 = *v5;
      if ((~*v5 & 0xF000000000000007) == 0)
      {
        goto LABEL_10;
      }

      v10 = (v9 >> 59) & 0x1E | (v9 >> 2) & 1;
      if (v10 > 3)
      {
        if (v10 == 4)
        {
          v16 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1B0447F00(v9);

          *(v1 + 56) = v16;
          *(v1 + 60) = 0;
        }

        else
        {
          if (v10 != 5)
          {
            goto LABEL_20;
          }

          v12 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1B0447F00(v9);

          *(v1 + 32) = v12;
          *(v1 + 36) = 0;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 3)
          {
            v11 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            sub_1B0447F00(v9);

            *(v1 + 48) = v11;
            *(v1 + 52) = 0;
            return;
          }

LABEL_20:
          sub_1B0447F00(v9);
LABEL_10:

          return;
        }

        v13 = *v5;
        v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v15 = sub_1B0B386A0(v14);

        sub_1B0447F00(v13);

        *(v1 + 40) = v15;
      }
    }
  }
}