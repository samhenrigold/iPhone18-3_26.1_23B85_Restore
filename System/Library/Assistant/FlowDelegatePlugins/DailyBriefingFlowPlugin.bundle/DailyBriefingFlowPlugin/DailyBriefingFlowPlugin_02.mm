uint64_t sub_28D4C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_2:
  for (*a1 = v4; ; v4 = *a1)
  {
    v6 = *(v4 + 16);
    if (v6 < 2)
    {
      return 1;
    }

    v7 = *a3;
    if (!*a3)
    {
      break;
    }

    v34 = v6 - 2;
    v31 = *(v4 + 16);
    v32 = v6 - 1;
    v8 = *(v4 + 16 * v6);
    v33 = v4;
    v9 = (v7 + 8 * v8);
    v10 = 8 * *(v4 + 16 * (v6 - 1) + 32);
    v11 = (v7 + v10);
    v12 = *(v4 + 16 * (v6 - 1) + 40);
    v13 = (v7 + 8 * v12);
    v14 = v8;
    v15 = v10 - 8 * v8;
    v16 = 8 * v12 - v10;
    if (v15 >> 3 < v16 >> 3)
    {
      sub_55C74(v7 + 8 * v8, v15 >> 3, a2);
      v17 = (a2 + v15);
      v18 = a2;
      v4 = v14;
      while (1)
      {
        if (v18 >= v17 || v11 >= v13)
        {
          v11 = v9;
          goto LABEL_32;
        }

        v20 = *v11;
        if (*(*v18 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) >= *(*v11 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count))
        {
          break;
        }

        v21 = v9 == v11++;
        if (!v21)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v9;
      }

      v20 = *v18;
      v21 = v9 == v18++;
      if (v21)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v9 = v20;
      goto LABEL_17;
    }

    sub_55C74(v7 + v10, v16 >> 3, a2);
    v17 = (a2 + v16);
    v4 = v14;
LABEL_19:
    v22 = v11 - 1;
    for (--v13; v17 > a2 && v9 < v11; --v13)
    {
      v24 = *(v17 - 1);
      if (*(*v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count) < *(v24 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21WeatherConditionEvent_count))
      {
        v21 = v13 + 1 == v11--;
        if (!v21)
        {
          *v13 = *v22;
          v11 = v22;
        }

        goto LABEL_19;
      }

      if (v17 != v13 + 1)
      {
        *v13 = v24;
      }

      --v17;
    }

    v18 = a2;
LABEL_32:
    v25 = v17 - v18;
    if (v11 != v18 || v11 >= &v18[v25])
    {
      memmove(v11, v18, 8 * v25);
    }

    if (v12 < v4)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      result = sub_29650(v4);
      v4 = result;
      goto LABEL_2;
    }

    v27 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_29650(v33);
    }

    if (v34 >= *(v27 + 2))
    {
      goto LABEL_45;
    }

    v28 = &v27[16 * v31];
    *v28 = v4;
    v28[1] = v12;
    *a1 = v27;
    result = sub_295C4(v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_28FCC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 >= v9)
  {
    sub_55C74(a2, (a3 - a2) / 8, a4);
    v10 = &v4[8 * v9];
    while (2)
    {
      v15 = v6 - 8;
      v5 -= 8;
LABEL_38:
      if (v10 > v4 && v6 > v7)
      {
        v17 = *(v10 - 1);
        v18 = 50800;
        switch(*(*v15 + 16))
        {
          case 1:
            goto LABEL_65;
          case 2:
            v18 = 50700;
            goto LABEL_65;
          case 3:
            v18 = 50600;
            goto LABEL_65;
          case 4:
            v18 = 50500;
            goto LABEL_65;
          case 5:
            v18 = 50400;
            goto LABEL_65;
          case 6:
            v18 = 30900;
            goto LABEL_65;
          case 7:
            v18 = 30800;
            goto LABEL_65;
          case 8:
            v18 = 30700;
            goto LABEL_65;
          case 9:
            v18 = 30600;
            goto LABEL_65;
          case 0xA:
            v18 = 30500;
            goto LABEL_65;
          case 0xB:
            v18 = 30400;
            goto LABEL_65;
          case 0xC:
            v18 = 30300;
            goto LABEL_65;
          case 0xD:
            v18 = 10900;
            goto LABEL_65;
          case 0xE:
            v18 = 10800;
            goto LABEL_65;
          case 0xF:
            v18 = 10700;
            goto LABEL_65;
          case 0x10:
            v18 = 10600;
            goto LABEL_65;
          case 0x11:
            v18 = 10500;
            goto LABEL_65;
          case 0x12:
            v18 = 20;
            goto LABEL_65;
          case 0x13:
            v18 = 10;
            goto LABEL_65;
          case 0x14:
            v18 = 10650;
            goto LABEL_65;
          case 0x15:
            v18 = 10550;
            goto LABEL_65;
          case 0x16:
            v18 = 0;
LABEL_65:
            if (v18 >= qword_A8508[*(v17 + 16)])
            {
              goto LABEL_66;
            }

            v14 = v5 + 8 == v6;
            v6 -= 8;
            if (!v14)
            {
              *v5 = *v15;
              v6 = v15;
            }

            continue;
          default:
LABEL_66:
            if (v10 != v5 + 8)
            {
              *v5 = v17;
            }

            v5 -= 8;
            v10 -= 8;
            goto LABEL_38;
        }
      }

      break;
    }
  }

  else
  {
    sub_55C74(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (v4 < v10 && v6 < v5)
    {
      v12 = *v4;
      v13 = 50800;
      switch(*(*v4 + 16))
      {
        case 1:
          goto LABEL_29;
        case 2:
          v13 = 50700;
          goto LABEL_29;
        case 3:
          v13 = 50600;
          goto LABEL_29;
        case 4:
          v13 = 50500;
          goto LABEL_29;
        case 5:
          v13 = 50400;
          goto LABEL_29;
        case 6:
          v13 = 30900;
          goto LABEL_29;
        case 7:
          v13 = 30800;
          goto LABEL_29;
        case 8:
          v13 = 30700;
          goto LABEL_29;
        case 9:
          v13 = 30600;
          goto LABEL_29;
        case 0xA:
          v13 = 30500;
          goto LABEL_29;
        case 0xB:
          v13 = 30400;
          goto LABEL_29;
        case 0xC:
          v13 = 30300;
          goto LABEL_29;
        case 0xD:
          v13 = 10900;
          goto LABEL_29;
        case 0xE:
          v13 = 10800;
          goto LABEL_29;
        case 0xF:
          v13 = 10700;
          goto LABEL_29;
        case 0x10:
          v13 = 10600;
          goto LABEL_29;
        case 0x11:
          v13 = 10500;
          goto LABEL_29;
        case 0x12:
          v13 = 20;
          goto LABEL_29;
        case 0x13:
          v13 = 10;
          goto LABEL_29;
        case 0x14:
          v13 = 10650;
          goto LABEL_29;
        case 0x15:
          v13 = 10550;
          goto LABEL_29;
        case 0x16:
          v13 = 0;
LABEL_29:
          if (v13 >= qword_A8508[*(*v6 + 16)])
          {
            goto LABEL_33;
          }

          v12 = *v6;
          v14 = v7 == v6;
          v6 += 8;
          if (!v14)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        default:
LABEL_33:
          v14 = v7 == v4;
          v4 += 8;
          if (!v14)
          {
LABEL_34:
            *v7 = v12;
          }

LABEL_35:
          v7 += 8;
          break;
      }
    }

    v6 = v7;
  }

  v19 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v19])
  {
    memmove(v6, v4, 8 * v19);
  }

  return 1;
}

uint64_t sub_293A8(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_55C74(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;

      v13 = sub_A2E14();

      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6++;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v14 = v4;
    v15 = v7 == v4++;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v14;
    goto LABEL_13;
  }

  sub_55C74(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v26 = v4;
LABEL_15:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = v7;
    v19 = v16;

    v20 = sub_A2E14();

    v21 = v5 + 1;
    if (v20)
    {
      v15 = v21 == v6;
      v22 = v19;
      v6 = v19;
      v7 = v18;
      v4 = v26;
      if (!v15)
      {
        *v5 = *v22;
        v6 = v22;
      }

      goto LABEL_15;
    }

    if (v10 != v21)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v16 = v19;
    v7 = v18;
    v4 = v26;
  }

LABEL_28:
  v23 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, 8 * v23);
  }

  return 1;
}

uint64_t sub_295C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29650(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_29664(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_29690(char *result, int64_t a2, char a3, char *a4)
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
    sub_4BF0(&qword_DC9D0, &qword_A84E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_297BC(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_29E04();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_29854(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_A4C94();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1BF68();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_29D54(0, &qword_DC1C8, INTask_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_29D94(&qword_DC9E0, &qword_DC9D8, &qword_A84F0);
        for (i = 0; i != v7; ++i)
        {
          sub_4BF0(&qword_DC9D8, &qword_A84F0);
          v9 = sub_9885C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_299D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_A4C94();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1BF68();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for WeatherConditionEvent(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_29D94(&qword_DC9C8, &qword_DC9C0, &qword_A84E0);
        for (i = 0; i != v7; ++i)
        {
          sub_4BF0(&qword_DC9C0, &qword_A84E0);
          v9 = sub_988D0(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29B4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_A4C94();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1BF68();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_29D54(0, &qword_DC9F0, SACalendarEvent_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_29D94(&qword_DCA00, &qword_DC9F8, &unk_A84F8);
        for (i = 0; i != v7; ++i)
        {
          sub_4BF0(&qword_DC9F8, &unk_A84F8);
          v9 = sub_98B04(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_29CFC()
{
  result = qword_DC9E8;
  if (!qword_DC9E8)
  {
    sub_A2EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DC9E8);
  }

  return result;
}

uint64_t sub_29D54(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_29D94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B4B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E04()
{

  return sub_A4C94();
}

BOOL sub_29E60(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF4E8;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  return v4 != 0;
}

BOOL sub_29EB4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E60(*a1, a1[1]);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDialogs(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x29FCCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2A008()
{
  result = qword_DCA08;
  if (!qword_DCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCA08);
  }

  return result;
}

uint64_t sub_2A05C()
{
  sub_1C3FC();
  result = sub_A4544();
  qword_E0820 = result;
  return result;
}

uint64_t sub_2A09C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_7584(a1, v2);
  if ((*(v3 + 32))(v2, v3))
  {
    return 1;
  }

  v5 = a1[3];
  v6 = a1[4];
  sub_7584(a1, v5);
  return (*(v6 + 40))(v5, v6) & 1;
}

uint64_t sub_2A130()
{
  type metadata accessor for AddRemoveFlow(0);
  sub_2BA54();
  sub_2BB38();
  return sub_A3334();
}

uint64_t sub_2A188(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_58F8();
}

uint64_t sub_2A19C()
{
  sub_AA40();
  v3 = *(v0 + 48);
  sub_810C4(v4 - 24, 0x80000000000AF340, 0xD00000000000002BLL, 0x80000000000AF2D0, v5, 0xE900000000000029);
  v6 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender;
  *(v0 + 56) = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender;
  v7 = (v3 + v6);
  sub_7584((v3 + v6), *(v3 + v6 + 24));
  v8 = sub_2BB48();
  v11 = sub_931E8(v8, v9, 0, 0, v10);
  sub_4D424(v11);

  v12 = *(v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_templatingService);
  type metadata accessor for CommonTemplatingService();
  inited = swift_initStackObject();
  *(v0 + 64) = inited;
  *(inited + 16) = v12;
  v14 = (v3 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_intent);
  sub_2BAFC();
  v15 = *(v2 + 32);

  if ((v15(v1, v2) & 1) == 0)
  {
    sub_2BAFC();
    v16 = sub_2BB28();
    if ((v17(v16) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_2BAFC();
  v18 = sub_2BB28();
  v20 = v19(v18);
  *(v0 + 155) = v20;
  if (v20 == 5)
  {
    goto LABEL_7;
  }

  v21 = v20;
  if (qword_DA8B8 != -1)
  {
    swift_once();
  }

  v22 = sub_9C8AC(v21, qword_E0820);
  *(v0 + 156) = v22;
  if (v22 != 8)
  {
    v42 = v22;
    v43 = *(v0 + 48);
    v44 = v14[3];
    v45 = v14[4];
    sub_7584(v14, v44);
    *(v0 + 157) = (*(v45 + 32))(v44, v45) & 1;
    *(v0 + 72) = *(v43 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_knowledgeStore);
    v46 = swift_task_alloc();
    *(v0 + 80) = v46;
    *v46 = v0;
    v46[1] = sub_2A720;

    return sub_44F0(v42);
  }

  else
  {
LABEL_7:
    sub_A4B54(48);

    sub_2BAFC();
    v23 = sub_2BB28();
    *(v0 + 152) = v24(v23);
    sub_4BF0(&qword_DCB18, &qword_A8780);
    v48._countAndFlagsBits = sub_A4644();
    sub_A46D4(v48);

    v49._countAndFlagsBits = 8236;
    v49._object = 0xE200000000000000;
    sub_A46D4(v49);
    v25 = v14[3];
    v26 = v14[4];
    sub_7584(v14, v25);
    *(v0 + 153) = (*(v26 + 72))(v25, v26);
    sub_4BF0(&qword_DDFA0, qword_A8788);
    v50._countAndFlagsBits = sub_A4644();
    sub_A46D4(v50);

    v51._countAndFlagsBits = 46;
    v51._object = 0xE100000000000000;
    sub_A46D4(v51);

    v52._countAndFlagsBits = 0x203A6570797420;
    v52._object = 0xE700000000000000;
    sub_A46D4(v52);

    sub_AA40();
    sub_810AC(v27, v28, v29, v30, v31, 0xE900000000000029);

    sub_7584(v7, v7[3]);
    sub_A4B54(46);

    v32 = v14[3];
    v33 = v14[4];
    sub_7584(v14, v32);
    *(v0 + 154) = (*(v33 + 88))(v32, v33);
    v53._countAndFlagsBits = sub_A4644();
    sub_A46D4(v53);

    v34 = sub_2BB48();
    v39 = sub_931E8(v34, v35, v36, v37, v38);
    sub_4D424(v39);

    v40 = swift_task_alloc();
    *(v0 + 136) = v40;
    *v40 = v0;
    v40[1] = sub_2ACB0;

    return sub_36C2C();
  }
}

uint64_t sub_2A720()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_2A808()
{
  sub_5950();
  *(v0 + 158) = sub_4F034(*(v0 + 88), *(v0 + 96));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_2A8AC;
  v2 = *(v0 + 157);
  v3 = *(v0 + 156);

  return sub_4EE58(v3, v2);
}

uint64_t sub_2A8AC()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_2A990()
{
  v1 = (*(v0 + 48) + *(v0 + 56));
  v2 = *(v0 + 155);
  sub_7584(v1, v1[3]);
  v3 = sub_2BB48();
  v6 = sub_931E8(v3, v4, 0, 0, v5);
  sub_4D424(v6);

  v7 = sub_1C90C(v2);
  v9 = v8;
  *(v0 + 112) = v8;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_2AA98;
  v11 = *(v0 + 157);
  v12 = *(v0 + 64);
  v13 = *(v0 + 158);

  return sub_2AFD4(v11, v7, v9, v12, v13);
}

uint64_t sub_2AA98()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 128) = v5;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_2AB98()
{
  v2 = *(v0 + 157);
  sub_2BB80();
  v3 = sub_931E8(132, 6, 0, 0, 0x11uLL);
  sub_4D424(v3);

  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  sub_A3634();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2ACB0()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 144) = v3;

  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_2AD98()
{
  sub_2BB80();
  v1 = sub_931E8(132, 6, 0xD00000000000001DLL, 0x80000000000AF390, 0x11uLL);
  sub_4D424(v1);

  sub_A3634();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2AE9C(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender);
  sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender + 24));
  v2 = sub_931E8(132, 6, 0xD00000000000001DLL, 0x80000000000AF390, 1uLL);
  sub_4D424(v2);

  sub_7584(v1, v1[3]);
  return sub_4D81C();
}

uint64_t sub_2AF3C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = (a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender);
  sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender + 24));
  v4 = sub_931E8(132, 6, 0, 0, 1uLL);
  sub_4D424(v4);

  sub_7584(v3, v3[3]);
  return sub_4D884(v2);
}

uint64_t sub_2AFD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 72) = a1;
  return sub_58F8();
}

uint64_t sub_2AFF4()
{
  if (*(v0 + 73) && *(v0 + 73) == 1)
  {
    v1 = *(v0 + 72);

    if (v1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *(v0 + 72);
    v3 = sub_A4E44();

    if (v3 & 1) == 0 || (v2)
    {
LABEL_10:
      v8 = *(v0 + 72);
      if (sub_4ED80(*(v0 + 73)) & 1) == 0 || (v8)
      {
        sub_2BB18();
        sub_A4B54(17);

        v31._countAndFlagsBits = sub_2BB38();
        sub_A46D4(v31);
        sub_2BB58();
        sub_2BAC4(v18, v19, v20, v21, v22, v23, v24, v25, v27, 0x20676E69646441, 0xE700000000000000);

        v26 = swift_task_alloc();
        *(v0 + 64) = v26;
        *v26 = v0;
        sub_2BAAC(v26);

        return sub_36420();
      }

      else
      {
        sub_2BB18();
        sub_A4B54(19);

        v30._countAndFlagsBits = sub_2BB38();
        sub_A46D4(v30);
        sub_2BB58();
        sub_2BAC4(v9, v10, v11, v12, v13, v14, v15, v16, v27, 0x676E69766F6D6552, 0xE900000000000020);

        v17 = swift_task_alloc();
        *(v0 + 56) = v17;
        *v17 = v0;
        sub_2BAAC(v17);

        return sub_365B4();
      }
    }
  }

  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_2BB18();
  sub_A4B54(23);

  v29._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x80000000000AF320;
  sub_A46D4(v29);
  sub_810C4(v5, v4, 0xD00000000000002BLL, 0x80000000000AF2D0, 0xD00000000000001ELL, 0x80000000000AF300);

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  sub_2BAAC(v6);

  return sub_36748();
}

uint64_t sub_2B348()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_595C();

  return v4(v3);
}

uint64_t sub_2B42C()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_595C();

  return v4(v3);
}

uint64_t sub_2B510()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_595C();

  return v4(v3);
}

uint64_t sub_2B5F4()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_intent));

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_aceService));

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_deviceState));

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_2B6C4()
{
  sub_2B5F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AddRemoveFlow(uint64_t a1)
{
  result = qword_DCA38;
  if (!qword_DCA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B770(uint64_t a1)
{
  result = sub_A43D4();
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

uint64_t sub_2B84C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2B8E8;

  return sub_2A188(a1);
}

uint64_t sub_2B8E8()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2B9CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AddRemoveFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_2BA10()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_2BA54()
{
  result = qword_DCB20;
  if (!qword_DCB20)
  {
    type metadata accessor for AddRemoveFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCB20);
  }

  return result;
}

void sub_2BAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  sub_810C4(a10, a11, 0xD00000000000002BLL, v12 | 0x8000000000000000, 0xD00000000000001ELL, v11 | 0x8000000000000000);
}

void *sub_2BAFC()
{
  v2 = v0[3];

  return sub_7584(v0, v2);
}

void sub_2BB58()
{
  v1._countAndFlagsBits = 0x2E6E69616D6F6420;
  v1._object = 0xE800000000000000;

  sub_A46D4(v1);
}

void *sub_2BB80()
{
  v2 = (*(v0 + 48) + *(v0 + 56));
  v3 = v2[3];

  return sub_7584(v2, v3);
}

uint64_t sub_2BBA0()
{
  v0 = sub_A2DA4();
  v2 = v1;
  v3 = sub_A2DA4();
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_22;
    }

    if (v0 == v3 && v2 == v4)
    {
    }

    else
    {
      v6 = sub_2BD5C(v3, v4, v3);

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    goto LABEL_22;
  }

  v7 = sub_A2D84();
  v9 = v8;
  v10 = sub_A2D84();
  if (!v9)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

LABEL_22:

    return 0;
  }

  if (!v11)
  {
    goto LABEL_22;
  }

  if (v7 != v10 || v9 != v11)
  {
    v13 = sub_2BD5C(v10, v11, v10);

    if (v13)
    {
      goto LABEL_25;
    }

    return 0;
  }

LABEL_25:
  v15 = sub_A2D94();
  v17 = v16;
  if (v15 == sub_A2D94() && v17 == v18)
  {

    return 1;
  }

  else
  {
    v20 = sub_A4E44();

    return v20 & 1;
  }
}

uint64_t sub_2BD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_A4E44();
}

uint64_t type metadata accessor for DailyBriefingCommonCATsSimple(uint64_t a1)
{
  result = qword_DCB28;
  if (!qword_DCB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2BE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_A4354();
  sub_2C1C8();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4BF0(&qword_DC748, &qword_A8330);
  __chkstk_darwin(v11 - 8);
  sub_2C0F0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_A42F4();
  (*(v7 + 8))(a2, v3);
  sub_2C160(a1);
  return v13;
}

uint64_t sub_2BFB8(uint64_t a1, uint64_t a2)
{
  sub_A4354();
  sub_2C1C8();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_A4304();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_2C0B8()
{
  v0 = sub_A4314();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_2C0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DC748, &qword_A8330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C160(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DC748, &qword_A8330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DailyBriefingCommonCATs(uint64_t a1)
{
  result = qword_DCB78;
  if (!qword_DCB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2C26C(uint64_t a1)
{
  v3 = sub_2567C();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2C330;

  return v5(a1, 0xD000000000000025, 0x80000000000AF460, _swiftEmptyArrayStorage);
}

uint64_t sub_2C330()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2C424(uint64_t a1)
{
  v3 = sub_2567C();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2C6E0;

  return v5(a1, 0xD000000000000028, 0x80000000000AF430, _swiftEmptyArrayStorage);
}

uint64_t sub_2C53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_A4354();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4BF0(&qword_DC748, &qword_A8330);
  __chkstk_darwin(v9 - 8);
  sub_2C0F0(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_A4274();
  (*(v6 + 8))(a2, v5);
  sub_2C160(a1);
  return v11;
}

uint64_t sub_2C6A8()
{
  v0 = sub_A4294();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_2C6E4()
{
  sub_5950();
  *(v1 + 72) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  *(v1 + 32) = type metadata accessor for DBCalendarState(0);
  *(v1 + 40) = swift_task_alloc();
  sub_A4634();
  *(v1 + 48) = swift_task_alloc();
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_2C79C()
{
  sub_A2B44();
  swift_allocObject();
  sub_A2B34();
  sub_2E3E4();
  sub_A2B24();

  sub_A4624();
  sub_2E7C4();
  sub_A4614();
  v4 = v3;
  *(v0 + 56) = v3;
  v5 = sub_2E7C4();
  sub_2E38C(v5, v6);
  if (v4)
  {
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_2CA08;

    return sub_39B8();
  }

  else
  {

    sub_AA9C();

    return v1();
  }
}

uint64_t sub_2CA08()
{
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2CB50(uint64_t a1, char a2, char a3, double a4)
{
  *(v5 + 34) = a3;
  *(v5 + 33) = a2;
  *(v5 + 72) = a1;
  *(v5 + 80) = v4;
  *(v5 + 64) = a4;
  sub_A4634();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 16) = a4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2 & 1;

  return _swift_task_switch(sub_2CC10, 0, 0);
}

uint64_t sub_2CC10()
{
  sub_A2B44();
  swift_allocObject();
  sub_A2B34();
  sub_2E338();
  sub_A2B24();

  sub_A4624();
  sub_2E7C4();
  sub_A4614();
  v4 = v3;
  *(v0 + 96) = v3;
  v5 = sub_2E7C4();
  sub_2E38C(v5, v6);
  if (v4)
  {
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_2CE8C;

    return sub_39B8();
  }

  else
  {

    sub_AA9C();

    return v1();
  }
}

uint64_t sub_2CE8C()
{
  sub_5950();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_2CF90()
{
  sub_5950();

  sub_AA9C();

  return v0();
}

uint64_t sub_2CFE8()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0888);
  v1 = sub_48A4(v0, qword_E0888);
  if (qword_DAA08 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0C48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2D0B0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a3;
  *(v3 + 98) = a1;
  v4 = sub_A2EA4();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  sub_2E790(&qword_ACB98);
  v5 = swift_task_alloc();
  *(v3 + 88) = v5;
  *v5 = v3;
  v6 = sub_2E830(v5);

  return v7(v6);
}

uint64_t sub_2D1C0()
{
  sub_5950();
  sub_2E7D0(v1, v2, v3);
  v4 = *v0;
  sub_5930();
  *v5 = v4;
  *(v7 + 96) = v6;

  v8 = sub_AA8C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_2D2A8()
{
  v1 = *(v0 + 96);
  if ((v1 & 0x100) != 0)
  {
    if (qword_DA8C0 != -1)
    {
      sub_2E770(&qword_DA8C0);
    }

    v18 = *(v0 + 98);
    v19 = sub_A43D4();
    sub_48A4(v19, qword_E0888);
    sub_2E7A0();
    sub_A4B54(33);
    sub_2104(v18);

    v20._countAndFlagsBits = 0xD00000000000001FLL;
    sub_2E844(v20, "mon#UnsupportedLocale");
    sub_2E7B0();
    sub_2E824();
    sub_810C4(v21, v22, v23, v24, v25, v26);

    goto LABEL_9;
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  sub_A2E44();
  sub_A2DE4();
  LOBYTE(v5) = sub_4FBDC(v2, v5);
  v6 = *(v4 + 8);
  v6(v2, v3);
  if (v5)
  {
    if (qword_DA8C0 != -1)
    {
      sub_2E770(&qword_DA8C0);
    }

    v7 = *(v0 + 80);
    v8 = *(v0 + 56);
    v9 = *(v0 + 98);
    v10 = sub_A43D4();
    sub_48A4(v10, qword_E0888);
    sub_2E7A0();
    sub_A4B54(58);
    v58._countAndFlagsBits = sub_2104(v9);
    sub_A46D4(v58);

    v11._countAndFlagsBits = 0xD000000000000038;
    sub_2E844(v11, "in the last 24 hours:");
    sub_2E7B0();
    sub_2E824();
    sub_810C4(v12, v13, v14, v15, v16, v17);

    v6(v7, v8);
LABEL_9:
    v27 = 1;
    goto LABEL_10;
  }

  if (v1)
  {
    if (qword_DA8C0 != -1)
    {
      sub_2E770(&qword_DA8C0);
    }

    v30 = *(v0 + 80);
    v56 = *(v0 + 56);
    v31 = *(v0 + 98);
    v32 = sub_A43D4();
    sub_48A4(v32, qword_E0888);
    sub_2E7A0();
    sub_A4B54(43);

    v33 = 0xE400000000000000;
    v59._countAndFlagsBits = sub_2104(v31);
    sub_A46D4(v59);

    v34._countAndFlagsBits = 0xD000000000000025;
    sub_2E844(v34, "e, skip warning.");
    v35 = sub_4F5E0(24);
    v36 = (v35 & 1) == 0;
    if (v35)
    {
      v37._countAndFlagsBits = 1702195828;
    }

    else
    {
      v37._countAndFlagsBits = 0x65736C6166;
    }

    if (v36)
    {
      v33 = 0xE500000000000000;
    }

    v37._object = v33;
    sub_A46D4(v37);

    v60._countAndFlagsBits = 32;
    v60._object = 0xE100000000000000;
    sub_A46D4(v60);

    sub_2E824();
    sub_810C4(v38, v39, v40, v41, v42, v43);

    v44 = sub_4F5E0(24);
    v6(v30, v56);
    v27 = v44 ^ 1;
  }

  else
  {
    if (qword_DA8C0 != -1)
    {
      sub_2E770(&qword_DA8C0);
    }

    v45 = *(v0 + 80);
    v46 = *(v0 + 56);
    v47 = *(v0 + 98);
    v48 = sub_A43D4();
    sub_48A4(v48, qword_E0888);
    sub_2E7A0();
    sub_A4B54(50);
    sub_2104(v47);

    v49._countAndFlagsBits = 0xD000000000000030;
    sub_2E844(v49, "le(forKey:knowledgeStore:now:)");
    sub_2E7B0();
    sub_2E824();
    sub_810C4(v50, v51, v52, v53, v54, v55);

    v6(v45, v46);
    v27 = 0;
  }

LABEL_10:

  v28 = *(v0 + 8);

  return v28(v27 & 1);
}

uint64_t sub_2D78C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  *(v3 + 122) = a1;
  v4 = sub_A2EA4();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  sub_2E790(&qword_ACB98);
  v5 = swift_task_alloc();
  *(v3 + 96) = v5;
  *v5 = v3;
  v6 = sub_2E830(v5);

  return v7(v6);
}

uint64_t sub_2D89C()
{
  sub_5950();
  sub_2E7D0(v1, v2, v3);
  v4 = *v0;
  sub_5930();
  *v5 = v4;
  *(v7 + 120) = v6;

  v8 = sub_AA8C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_2D984(uint64_t a1)
{
  if ((*(v1 + 120) & 0x100) != 0)
  {
    v11 = *(v1 + 72);
    v10 = *(v1 + 80);
    v12 = *(v1 + 64);
    sub_A2E94();
    sub_A2E54();
    (*(v11 + 8))(v10, v12);
    sub_2E790(&qword_A8860);
    v24 = v13;
    v14 = swift_task_alloc();
    *(v1 + 112) = v14;
    *v14 = v1;
    v15.n128_f64[0] = sub_2E7E8(v14);
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    v6 = *(v1 + 56);
    sub_A2E44();
    sub_A2DE4();
    LOBYTE(v6) = sub_4FBDC(v3, v6);
    v7 = *(v5 + 8);
    v7(v3, v4);
    v7(v2, v4);
    if (v6)
    {

      sub_AA9C();

      return v8();
    }

    v18 = *(v1 + 80);
    v19 = *(v1 + 64);
    sub_A2E94();
    sub_A2E54();
    v21 = v20;
    v7(v18, v19);
    sub_2E790(&qword_A8860);
    v24 = v22;
    v23 = swift_task_alloc();
    *(v1 + 104) = v23;
    *v23 = v1;
    v15.n128_f64[0] = sub_2E7E8(v23);
    v16 = v21;
    v17 = 0;
  }

  return v24(v16, v17, v15);
}

uint64_t sub_2DBBC()
{
  sub_5950();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2DCDC()
{
  sub_5950();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2DDFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63634F7473726966 && a2 == 0xEF65636E65727275;
  if (v4 || (sub_A4E44() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000AF650 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_A4E44();

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

uint64_t sub_2DED4(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x63634F7473726966;
  }
}

uint64_t sub_2DF1C(void *a1, uint64_t a2, char a3, double a4)
{
  v6 = sub_4BF0(&qword_DCBE8, &qword_A8910);
  sub_591C();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v13[-v10];
  sub_7584(a1, a1[3]);
  sub_2E510();
  sub_A4F64();
  v13[15] = 0;
  sub_A4DD4();
  if (!v4)
  {
    v13[14] = 1;
    sub_A4D84();
  }

  return (*(v8 + 8))(v11, v6);
}

void *sub_2E090(void *a1)
{
  v3 = sub_4BF0(&qword_DCBD8, &qword_A8908);
  sub_591C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_7584(a1, a1[3]);
  sub_2E510();
  sub_A4F54();
  if (!v1)
  {
    v13 = 0;
    sub_A4D54();
    v12 = 1;
    v9 = sub_A4D04();
    (*(v5 + 8))(v8, v3);
  }

  sub_761C(a1);
  return v9;
}

uint64_t sub_2E23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2DDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2E264(uint64_t a1)
{
  v2 = sub_2E510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2E2A0(uint64_t a1)
{
  v2 = sub_2E510();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_2E2DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2E090(a1);
  if (!v2)
  {
    *a2 = v6;
    *(a2 + 8) = result;
    *(a2 + 16) = v5 & 1;
  }

  return result;
}

unint64_t sub_2E338()
{
  result = qword_DCBC8;
  if (!qword_DCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCBC8);
  }

  return result;
}

uint64_t sub_2E38C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_2E3E4()
{
  result = qword_DCBD0;
  if (!qword_DCBD0)
  {
    type metadata accessor for DBCalendarState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCBD0);
  }

  return result;
}

uint64_t sub_2E43C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DBCalendarState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 initializeBufferWithCopyOfBuffer for RequestOriginInfo(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WarningHistory(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WarningHistory(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_2E510()
{
  result = qword_DCBE0;
  if (!qword_DCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCBE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WarningHistory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2E630);
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

unint64_t sub_2E66C()
{
  result = qword_DCBF0;
  if (!qword_DCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCBF0);
  }

  return result;
}

unint64_t sub_2E6C4()
{
  result = qword_DCBF8;
  if (!qword_DCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCBF8);
  }

  return result;
}

unint64_t sub_2E71C()
{
  result = qword_DCC00;
  if (!qword_DCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCC00);
  }

  return result;
}

uint64_t sub_2E770(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2E7D0(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 40) = a3;
  *(v3 + 24) = result;
  *(v3 + 32) = a2;
  *(v3 + 16) = v4;
  return result;
}

void sub_2E800()
{

  sub_A4B54(30);
}

void sub_2E844(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{

  a1._object = (a2 | 0x8000000000000000);
  sub_A46D4(a1);
}

id sub_2E85C()
{
  sub_29D54(0, &qword_DCD00, AMSBag_ptr);
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[8];
  v3 = v0[9];

  return sub_2E8D4(v1, v2, v4, v3);
}

id sub_2E8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_A45C4();

  v5 = sub_A45C4();

  v6 = [swift_getObjCClassFromMetadata() bagForProfile:v4 profileVersion:v5];

  return v6;
}

void *sub_2E968(uint64_t a1)
{
  type metadata accessor for AMSSearchService();
  swift_allocObject();
  result = sub_2E9A4();
  qword_E08A0 = result;
  return result;
}

void *sub_2E9A4()
{
  result = v0;
  v0[2] = 0xD000000000000011;
  v0[3] = 0x80000000000AD850;
  v0[4] = 0xD000000000000012;
  v0[5] = 0x80000000000AF700;
  v0[6] = 0x7374736163646F50;
  v0[7] = 0xE800000000000000;
  v0[8] = 49;
  v0[9] = 0xE100000000000000;
  v0[11] = 0;
  v0[12] = 0;
  v0[10] = 0;
  return result;
}

uint64_t sub_2EA0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_A43A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[11];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v2[12];
  if (v2[10] == a1 && v10 == a2)
  {

    return v11;
  }

  v13 = sub_A4E44();

  if ((v13 & 1) == 0)
  {

LABEL_8:
    v43 = v6;
    v44 = a1;
    v42 = v7;
    v14 = sub_2E85C();
    v15 = v3[2];
    v16 = v3[3];
    v17 = v3[4];
    v18 = v3[5];

    v19 = sub_2F244(v14, v15, v16, v17, v18);
    if (qword_DA9C8 != -1)
    {
      swift_once();
    }

    v20 = qword_E0B80;
    v21 = *algn_E0B88;
    v22 = qword_E0B98;
    sub_A4384();
    sub_A49B4();
    sub_2F358();
    sub_A4374();
    sub_4BF0(&qword_DBB88, &unk_A6EB0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_A6E70;
    *(v23 + 32) = v44;
    *(v23 + 40) = a2;

    v41 = v19;
    v24 = sub_2F1A8(_swiftEmptyArrayStorage, v23, v19);
    v45 = 0;
    v40 = v24;
    v25 = [v24 resultWithError:&v45];
    if (v25)
    {
      v26 = v25;
      v27 = v45;
      sub_A49A4();
      sub_2F370();
      sub_2F358();
      sub_A4364();
      if (qword_DA9E8 != -1)
      {
        sub_2F338(&qword_DA9E8);
      }

      v28 = sub_A43D4();
      sub_48A4(v28, qword_E0BE8);
      sub_810C4(0xD000000000000020, 0x80000000000AF790, 0xD00000000000002ELL, 0x80000000000AF740, 0xD000000000000013, 0x80000000000AF770);
      v29 = [v26 allItems];
      sub_29D54(0, &qword_DCCF8, AMSLookupItem_ptr);
      v30 = sub_A4764();

      v31 = v3[10];
      v32 = v3[11];
      v3[10] = v44;
      v3[11] = a2;
      v3[12] = v30;

      sub_2F2F4(v31, v32);
      v33 = [v26 allItems];
      v11 = sub_A4764();

      (*(v42 + 8))(v9, v43);
    }

    else
    {
      v39[1] = v20;
      v39[2] = v21;
      v34 = v45;
      sub_A2D44();

      swift_willThrow();
      if (qword_DAA70 != -1)
      {
        swift_once();
      }

      sub_7A124(0, qword_E0DD8, unk_E0DE0, byte_E0DE8, qword_E0DF0);
      if (qword_DA9E8 != -1)
      {
        sub_2F338(&qword_DA9E8);
      }

      v35 = sub_A43D4();
      v39[0] = sub_48A4(v35, qword_E0BE8);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_A4B54(33);

      v45 = 0xD00000000000001FLL;
      v46 = 0x80000000000AF720;
      swift_getErrorValue();
      v47._countAndFlagsBits = sub_A4EC4();
      sub_A46D4(v47);

      sub_81094(v45, v46, 0xD00000000000002ELL, 0x80000000000AF740, 0xD000000000000013, 0x80000000000AF770);

      sub_A49A4();
      sub_2F370();
      sub_A4364();

      (*(v42 + 8))(v9, v43);
      v36 = v3[10];
      v37 = v3[11];
      v3[10] = v44;
      v3[11] = a2;
      v3[12] = 0;

      sub_2F2F4(v36, v37);
      return 0;
    }
  }

  return v11;
}

void *sub_2F018()
{

  sub_2F2F4(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t sub_2F05C()
{
  sub_2F018();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_2F0B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2F0CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2F11C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_2F174(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_2F1A8(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_A4754().super.isa;

  v5 = sub_A4754().super.isa;

  v6 = [a3 performLookupWithBundleIdentifiers:isa itemIdentifiers:v5];

  return v6;
}

id sub_2F244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_allocWithZone(AMSLookup);
  v7 = sub_A45C4();

  v8 = sub_A45C4();

  v9 = [v6 initWithBag:a1 caller:v7 keyProfile:v8];

  return v9;
}

uint64_t sub_2F2F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2F338(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2F384(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OfflineFlow(0);
  sub_314EC(&qword_DB590, type metadata accessor for OfflineFlow, &unk_A8C70);
  return sub_A3334();
}

uint64_t sub_2F414(uint64_t a1)
{
  *(v2 + 376) = a1;
  *(v2 + 384) = v1;
  return sub_58F8();
}

uint64_t sub_2F428()
{
  v1 = v0[48];
  sub_A4B54(33);

  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_state;
  if (*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_state))
  {
    v3._countAndFlagsBits = 0x6574656C706D6F63;
  }

  else
  {
    v3._countAndFlagsBits = 0x6572676F72506E69;
  }

  if (*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_state))
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEA00000000007373;
  }

  v3._object = v4;
  sub_A46D4(v3);

  sub_31578();
  sub_810AC(v5, v6, v7, v8, 0x2865747563657865, 0xE900000000000029);

  if (*(v1 + v2))
  {
    v9 = v0[48];
    sub_31578();
    sub_810AC(v10, v11, v12, v13, 0x2865747563657865, 0xE900000000000029);
    swift_beginAccess();
    sub_1A2C4(v9 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_flowParams, (v0 + 2));
    type metadata accessor for DBSiriKitEventSender();
    inited = swift_initStaticObject();
    type metadata accessor for ConclusionFlow(0);
    v15 = swift_allocObject();

    v0[46] = sub_3136C(v16, v0 + 2, inited, v15);
    sub_31584();
    sub_314EC(v17, v18, &unk_A76F0);
    sub_A3644();

    sub_AA9C();

    return v19();
  }

  else
  {
    v21 = v0[48];
    sub_7584((v21 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(v21 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
    sub_3159C((v21 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name));
    sub_31554();
    sub_4DB28(v22, v23, v24, v25, v26, v27, 0x80000000000AFAB0);
    v28 = swift_task_alloc();
    v0[49] = v28;
    *v28 = v0;
    v28[1] = sub_2F744;
    v29 = v0[47];

    return sub_2F824(v29);
  }
}

uint64_t sub_2F744()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_AA9C();

  return v3();
}

uint64_t sub_2F824(uint64_t a1)
{
  *(v2 + 400) = a1;
  *(v2 + 408) = v1;
  return sub_58F8();
}

uint64_t sub_2F838()
{
  sub_5950();
  *(v0 + 416) = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_flowParams;
  v1 = swift_task_alloc();
  *(v0 + 424) = v1;
  *v1 = v0;
  v1[1] = sub_2F8DC;

  return sub_44F0(1);
}

uint64_t sub_2F8DC()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = v3;
  *(v1 + 440) = v4;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_2F9C8()
{
  v1 = v0[51] + v0[52];
  v2 = sub_4F034(v0[54], v0[55]);
  v3 = sub_4ED80(v2);
  sub_7584((v1 + 280), *(v1 + 304));
  if (sub_834E4() & 1) != 0 && (v3)
  {
    v4 = v0[51];
    sub_31578();
    sub_810C4(v5, v6, v7, v8, 0x6C616944656B616DLL, 0xEC0000002928676FLL);
    v9 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_specExecutionStatus;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v4 + v9);
    sub_310AC(2, 4, isUniquelyReferenced_nonNull_native);
    *(v4 + v9) = v72;
    swift_endAccess();
  }

  swift_beginAccess();

  v12 = sub_31200(v11);

  v13 = v12[2];

  if (v13)
  {
    sub_7584((v1 + 280), *(v1 + 304));
    if (sub_834E4() & 1) != 0 && (v14 = , sub_1F59C(v14), v16 = v15, , (v16))
    {
      v17 = v0[51];
      sub_315F8();
      sub_31534();
      sub_31578();
      sub_810AC(v18, v19, v20, v21, v22, v23);
      sub_7584((v17 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(v17 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
      sub_3159C((v17 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name));
      sub_31554();
      sub_4DB28(v24, v25, v26, v27, v28, v29, v16);
      v0[56] = sub_315C8();
      v30 = swift_task_alloc();
      v0[57] = v30;
      *v30 = v0;
      v30[1] = sub_2FFA0;
    }

    else
    {

      sub_1F614(v31);
      v33 = v32;

      v34 = v0[51];
      sub_31578();
      sub_31534();
      sub_810AC(v35, v36, v37, v38, v39, v40);
      sub_7584((v34 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(v34 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
      sub_3159C((v34 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name));
      sub_31554();
      sub_4DB28(v41, v42, v43, v44, v45, v46, v33);
      if (v33)
      {
        v0[59] = sub_315C8();
        v47 = swift_task_alloc();
        v0[60] = v47;
        *v47 = v0;
        v47[1] = sub_3010C;
      }

      else
      {
        v0[62] = sub_315C8();

        v0[63] = sub_1F690(v70);

        v71 = swift_task_alloc();
        v0[64] = v71;
        *v71 = v0;
        v71[1] = sub_30278;
      }
    }

    return sub_36D50();
  }

  else
  {
    v48 = v0[51];
    v49 = v0[52];
    sub_315F8();
    sub_31534();
    sub_31578();
    sub_810C4(v50, v51, v52, v53, v54, v55);
    sub_7584((v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
    v56 = *(v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name + 32);
    sub_7584((v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name), *(v48 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name + 24));
    sub_31554();
    sub_4DB28(v57, v58, v59, v60, v61, v62, v56);
    sub_1A2C4(v48 + v49, (v0 + 2));
    type metadata accessor for DBSiriKitEventSender();
    inited = swift_initStaticObject();
    type metadata accessor for ConclusionFlow(0);
    v64 = swift_allocObject();

    v0[49] = sub_3136C(v65, v0 + 2, inited, v64);
    sub_31584();
    sub_314EC(v66, v67, &unk_A76F0);
    sub_A3644();

    sub_AA9C();

    return v68();
  }
}

uint64_t sub_2FFA0()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 464) = v5;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_300A4()
{
  sub_5950();
  sub_30400(*(v0 + 464));

  sub_AA9C();

  return v1();
}

uint64_t sub_3010C()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 488) = v5;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_30210()
{
  sub_5950();
  sub_30400(*(v0 + 488));

  sub_AA9C();

  return v1();
}

uint64_t sub_30278()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 520) = v5;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_30398()
{
  sub_5950();
  sub_30400(*(v0 + 520));

  sub_AA9C();

  return v1();
}

uint64_t sub_30400(uint64_t a1)
{
  v2 = *sub_7584((v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
  v3 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name + 24);
  v4 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name + 32);
  v5 = sub_7584((v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name), v3);
  sub_4DB30(v5, 17, 0, 0, v2, v3, v4);

  sub_A3614();
}

uint64_t sub_304C4(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_state) = 1;
  v2 = sub_7584((a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender), *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender + 24));
  v3 = (a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name);
  v4 = *v2;
  v5 = v3[3];
  v6 = v3[4];
  v7 = sub_7584(v3, v5);

  return sub_4DB30(v7, 1, 0, 0, v4, v5, v6);
}

uint64_t sub_30558(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_CF548;
  v7._object = a2;
  v4 = sub_A4CE4(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_305AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_30558(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_305DC()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_name));

  sub_1A564(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_flowParams);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11OfflineFlow_siriKitEventSender));
  return v0;
}

uint64_t sub_3067C()
{
  sub_305DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for OfflineFlow(uint64_t a1)
{
  result = qword_DCD40;
  if (!qword_DCD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_30728(uint64_t a1)
{
  result = sub_A43D4();
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

_BYTE *storeEnumTagSinglePayload for OfflineFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x308B8);
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

unint64_t sub_308F4()
{
  result = qword_DCE48;
  if (!qword_DCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DCE48);
  }

  return result;
}

uint64_t sub_3096C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_A648;

  return sub_2F414(a1);
}

uint64_t sub_30A08(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OfflineFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

void sub_30A44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(**a1 + 240);
  v5(&v126);
  v6 = sub_4BF0(&qword_DB5B0, &unk_A67D0);
  sub_315BC(v6, v7, v8, &type metadata for SupportedFeatures, v9, v10, v11, v12, v116, v121);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v22 = sub_A43D4();
    sub_48A4(v22, qword_E0BA0);
    sub_2E7A0();
    sub_A4B54(32);
    v5(&v126);
    sub_A4C44();
    sub_761C(&v126);
    v127._countAndFlagsBits = 0xD00000000000001ELL;
    v127._object = 0x80000000000AF800;
    sub_A46D4(v127);
    sub_31578();
    sub_81094(v23, v24, v25, v26, v27, v28);
    goto LABEL_15;
  }

  v13 = v122;
  if (sub_9C920(v122, a2) != 4)
  {
    return;
  }

  v14 = sub_82E5C();
  if (HIBYTE(v15) != 255)
  {
    v16 = v14;
    if ((v15 & 0x100) == 0)
    {
      v17 = sub_31624();
      sub_A72C(v17, v18);
      goto LABEL_6;
    }

    v126 = v14;
    v54 = sub_31624();
    sub_A88C(v54, v55, 1);
    v56 = sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_315BC(v56, v57, v58, &unk_D2AF0, v59, v60, v61, v62, v117, v122);
    if ((swift_dynamicCast() & 1) != 0 && !v123)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_31568();
      v96 = sub_310AC(2, v13, v95);
      sub_31618(v96, v97, v98, v99, v100, v101, v102, v103, v118, v123, v125, v126);
      if (qword_DA9D0 != -1)
      {
        sub_58D8(&qword_DA9D0);
      }

      v104 = sub_A43D4();
      sub_48A4(v104, qword_E0BA0);
      sub_2E7A0();
      sub_A4B54(63);
      sub_3160C();
      v83 = "as skipped. Domain: ";
      v84._countAndFlagsBits = 0xD00000000000003CLL;
    }

    else
    {
      v126 = v16;
      v63 = sub_31624();
      v65 = sub_A88C(v63, v64, 1);
      sub_315BC(v65, v66, v67, &unk_D2AF0, v68, v69, v70, v71, v118, v123);
      v72 = swift_dynamicCast();
      swift_isUniquelyReferenced_nonNull_native();
      if (v72)
      {
        sub_31568();
        v74 = sub_310AC(1, v13, v73);
        sub_31618(v74, v75, v76, v77, v78, v79, v80, v81, v119, v124, v125, v126);
        if (qword_DA9D0 != -1)
        {
          sub_58D8(&qword_DA9D0);
        }

        v82 = sub_A43D4();
        sub_48A4(v82, qword_E0BA0);
        sub_2E7A0();
        sub_A4B54(55);
        sub_3160C();
        v83 = "as failed. Domain: ";
        v84._countAndFlagsBits = 0xD000000000000034;
      }

      else
      {
        sub_31568();
        v86 = sub_310AC(3, v13, v85);
        sub_31618(v86, v87, v88, v89, v90, v91, v92, v93, v119, v124, v125, v126);
        if (qword_DA9D0 != -1)
        {
          sub_58D8(&qword_DA9D0);
        }

        v94 = sub_A43D4();
        sub_48A4(v94, qword_E0BA0);
        sub_2E7A0();
        sub_A4B54(54);
        sub_3160C();
        v83 = "in calendar. Skipping maps.";
        v84._countAndFlagsBits = 0xD000000000000033;
      }
    }

    v84._object = (v83 | 0x8000000000000000);
    sub_A46D4(v84);
    sub_315BC(v105, v106, &type metadata for SupportedFeatures, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v107, v108, v109, v120, v13);
    sub_A4C44();
    v130._countAndFlagsBits = 46;
    v130._object = 0xE100000000000000;
    sub_A46D4(v130);
    sub_31578();
    sub_82B54(v110, v111, v112, v113, 0x5F28657461647075, 0xEF293A687469773ALL);
    v114 = sub_31624();
    sub_A72C(v114, v115);
LABEL_15:

    return;
  }

LABEL_6:
  if (sub_5F5E8(v122) == 1936744813 && v19 == 0xE400000000000000)
  {
  }

  else
  {
    v21 = sub_A4E44();

    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (sub_9C920(0, *a3) == 1)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v29 = sub_A43D4();
    sub_48A4(v29, qword_E0BA0);
    sub_31578();
    sub_810C4(v30, v31, v32, v33, 0x5F28657461647075, 0xEF293A687469773ALL);
    swift_isUniquelyReferenced_nonNull_native();
    sub_31568();
    v35 = 1;
    goto LABEL_24;
  }

LABEL_21:
  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v36 = sub_A43D4();
  sub_48A4(v36, qword_E0BA0);
  sub_2E7A0();
  sub_A4B54(51);
  sub_3160C();
  v128._countAndFlagsBits = 0xD000000000000013;
  v128._object = 0x80000000000AF850;
  sub_A46D4(v128);
  sub_315BC(v37, v38, &type metadata for SupportedFeatures, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v39, v40, v41, v117, v122);
  sub_A4C44();
  v129._countAndFlagsBits = 0xD00000000000001ELL;
  v129._object = 0x80000000000AF870;
  sub_A46D4(v129);
  sub_31578();
  sub_82B54(v42, v43, v44, v45, 0x5F28657461647075, 0xEF293A687469773ALL);

  swift_isUniquelyReferenced_nonNull_native();
  sub_31568();
  v35 = 3;
LABEL_24:
  v46 = sub_310AC(v35, v13, v34);
  sub_31618(v46, v47, v48, v49, v50, v51, v52, v53, v117, v122, v125, v126);
}

unint64_t sub_310AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *v3;
  v9 = sub_A0DF0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_4BF0(&qword_DCE50, &qword_A8CC8);
  result = sub_A4C54(a3 & 1, v13);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_A0DF0(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_A4EA4();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + v14) = v7;
  }

  else
  {

    return sub_311BC(v14, a2, v7, v18);
  }

  return result;
}

unint64_t sub_311BC(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t *sub_31200(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1FCA0(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_92BFC(0, v4, v5);
  v6 = sub_1FBB0(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_3136C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v14 = type metadata accessor for DBSiriKitEventSender();
  v15 = &off_D1B20;
  v16 = sub_314EC(&qword_DB598, type metadata accessor for DBSiriKitEventSender, &unk_A9488);
  *&v13 = a3;
  v8 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_logger;
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v9 = sub_A43D4();
  v10 = sub_48A4(v9, qword_E0BA0);
  (*(*(v9 - 8) + 16))(a4 + v8, v10, v9);
  v11 = a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_name;
  *(v11 + 24) = &type metadata for CommonSpecs;
  *(v11 + 32) = &off_D2128;
  *v11 = 2;
  *(a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_state) = 0;
  *(a4 + 16) = a1;
  memcpy((a4 + 24), a2, 0x141uLL);
  sub_A82C(&v13, (a4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin14ConclusionFlow_siriKitEventSender));
  return a4;
}

uint64_t sub_314EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_3159C@<X0>(void *a1@<X8>)
{
  v2 = a1[3];

  return sub_7584(a1, v2);
}

uint64_t sub_315C8()
{
  sub_7584((v0 + 160), *(v0 + 184));

  return sub_5DFD0();
}

uint64_t sub_31630@<X0>(uint64_t *a1@<X8>)
{
  sub_A37F4();
  v2 = sub_A3764();
  sub_5D78(v2);
  sub_A3754();
  v3 = sub_A3304();
  sub_5D78(v3);
  result = sub_A32F4();
  a1[3] = v3;
  a1[4] = &protocol witness table for PatternFlowProvider;
  *a1 = result;
  return result;
}

void sub_316C0()
{
  sub_25714();
  v1 = v0;
  v76 = v2;
  sub_A38F4();
  sub_AA64();
  __chkstk_darwin(v3);
  sub_AA54();
  v6 = v5 - v4;
  v7 = sub_A4004();
  sub_AA64();
  v75 = v8;
  __chkstk_darwin(v9);
  sub_36194();
  v74 = (v10 - v11);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  sub_36184();
  sub_A4B54(72);
  v79 = v80;
  v83._countAndFlagsBits = 0xD000000000000046;
  v83._object = 0x80000000000B00E0;
  sub_A46D4(v83);
  v81 = &type metadata for Features;
  v82 = sub_35DA4();
  LOBYTE(v80) = 1;
  v15 = sub_A3954();
  sub_761C(&v80);
  if (v15)
  {
    v16._countAndFlagsBits = 1702195828;
  }

  else
  {
    v16._countAndFlagsBits = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  v18 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_logger;
  v16._object = v17;
  sub_A46D4(v16);

  v77 = "GuardFlow# Apps to search are: ";
  v78 = v18;
  sub_36090(v79, *(&v79 + 1), v19, 0x80000000000AFB70);

  sub_A38B4();
  v20 = sub_361CC();
  v22 = v21(v20);
  if (v22 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v23 = sub_361CC();
    v24(v23);
LABEL_11:
    v27 = v1;
    v28 = v75;
    v29 = *(v75 + 32);
    v29(v14, v6, v7);
    sub_36184();
    sub_A4B54(82);
    sub_36080();
    v84._countAndFlagsBits = v30 + 41;
    v84._object = (v31 | 0x8000000000000000);
    sub_A46D4(v84);
    v32 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent;
    if (*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent))
    {
      v33._countAndFlagsBits = 1702195828;
    }

    else
    {
      v33._countAndFlagsBits = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent))
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = 0xE500000000000000;
    }

    v33._object = v34;
    sub_A46D4(v33);

    v35 = *(&v80 + 1);
    sub_361A4();
    sub_36090(v36, v35, v37, v38);

    if (*(v1 + v32) == 1)
    {
      v39 = v74;
      v29(v74, v14, v7);
      v40 = type metadata accessor for DailyBriefingNLv3Intent(0);
      v41 = sub_5D78(v40);
      v29((v41 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent), v39, v7);
      v81 = v40;
      v82 = &off_D2208;
      *&v80 = v41;
      v42 = (v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent);
      swift_beginAccess();
      sub_761C(v42);
      sub_A814(&v80, v42);
      swift_endAccess();
      v44 = v42[3];
      v43 = v42[4];
      sub_7584(v42, v44);
      sub_AA64();
      v46 = v45;
      __chkstk_darwin(v47);
      v49 = &v73 - v48;
      (*(v46 + 16))(&v73 - v48);
      LOBYTE(v43) = sub_541A8(v44, v43);
      (*(v46 + 8))(v49, v44);
      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      if (v43)
      {
        sub_A4B54(53);
        v79 = v80;
        sub_36080();
        v85._countAndFlagsBits = v50 + 12;
        v85._object = (v51 | 0x8000000000000000);
        sub_A46D4(v85);
        sub_A760(v42, &v80);
        sub_4BF0(&qword_DD120, &unk_A8E90);
        sub_A4C44();
        sub_761C(&v80);
        sub_361A4();
        sub_360B4();
        sub_810C4(v52, v53, v54, v55, 0x7475706E69286E6FLL, 0xEA0000000000293ALL);

        *(v27 + v32) = 0;
      }

      else
      {
        sub_A4B54(82);
        v79 = v80;
        sub_36080();
        v86._countAndFlagsBits = v62 + 41;
        v86._object = (v63 | 0x8000000000000000);
        sub_A46D4(v86);
        sub_A760(v42, &v80);
        sub_4BF0(&qword_DD120, &unk_A8E90);
        sub_A4C44();
        sub_761C(&v80);
        sub_361A4();
        sub_360B4();
        sub_810C4(v64, v65, v66, v67, 0x7475706E69286E6FLL, 0xEA0000000000293ALL);
      }
    }

    else
    {
      (*(v28 + 8))(v14, v7);
    }

    goto LABEL_28;
  }

  if (v22 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v25 = sub_361CC();
    v26(v25);
    sub_4BF0(&qword_DBBF0, &qword_A7188);

    goto LABEL_11;
  }

  if (v22 == enum case for Parse.NLv4IntentOnly(_:) || v22 == enum case for Parse.uso(_:))
  {
    v57 = sub_361CC();
    v58(v57);
    sub_36080();
    sub_36090(v59 - 4, v60 | 0x8000000000000000, v61, v77 | 0x8000000000000000);
    *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent) = 1;
  }

  else
  {
    sub_36080();
    sub_36090(v68 + 12, v69 | 0x8000000000000000, v70, v77 | 0x8000000000000000);
    v71 = sub_361CC();
    v72(v71);
  }

LABEL_28:
  sub_2569C();
}

uint64_t sub_31DC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GuardFlow(0);
  sub_3600C(&qword_DD118, type metadata accessor for GuardFlow, &unk_A8DF8);
  return sub_A3334();
}

uint64_t sub_31E50()
{
  sub_5950();
  v1[85] = v0;
  v1[84] = v2;
  v3 = sub_A3394();
  v1[86] = v3;
  sub_5940(v3);
  v1[87] = v4;
  v1[88] = sub_10AAC();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_31EF8()
{
  sub_34804();
  if ((v1 & 1) == 0)
  {
    v33 = *(v0 + 680);
    if (*(v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent) == 1)
    {
      sub_360B4();
      sub_810C4(v34, v35, v36, v37, v38, 0xE900000000000029);
      sub_A760(v33 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState, v0 + 16);
      if (qword_DA8A0 != -1)
      {
        sub_360EC(&qword_DA8A0);
      }

      sub_A760(&unk_E07B0, v0 + 56);
      sub_A37F4();
      sub_A7C4(v0 + 56, *(v0 + 80));
      *(v0 + 160) = &type metadata for CATProvider;
      *(v0 + 168) = &off_D0FD0;
      v39 = type metadata accessor for UnsupportedFlow(0);
      v40 = sub_36168(v39);
      sub_A7C4(v0 + 136, &type metadata for CATProvider);
      *(v0 + 200) = &type metadata for CATProvider;
      *(v0 + 208) = &off_D0FD0;
      v41 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_logger;
      if (qword_DA9D0 != -1)
      {
        sub_58D8(&qword_DA9D0);
      }

      v42 = sub_A43D4();
      sub_48A4(v42, qword_E0BA0);
      sub_360D8();
      (*(v43 + 16))(v40 + v41);
      sub_A814((v0 + 176), v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_catProvider);
      sub_A814((v0 + 16), v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_deviceState);
      sub_A814((v0 + 96), v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync);
      *(v40 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_unsupportedCode) = 0;
      sub_761C((v0 + 136));
      sub_761C((v0 + 56));
      *(v0 + 640) = v40;
      sub_360C0();
      sub_3600C(v44, v45, &unk_A9E40);
      goto LABEL_34;
    }

    sub_34EDC(0xD00000000000002BLL, 0x80000000000AFE30);
    goto LABEL_44;
  }

  v2 = *(v0 + 680);
  type metadata accessor for AddRemoveFlow(0);
  v3 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent;
  swift_beginAccess();
  v96 = v3;
  sub_A760(v2 + v3, v0 + 216);
  v98 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState;
  sub_A760(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState, v0 + 256);
  v4 = sub_2A09C((v0 + 216));
  sub_761C((v0 + 256));
  sub_761C((v0 + 216));
  *(v0 + 320) = &type metadata for Features;
  *(v0 + 328) = sub_35DA4();
  *(v0 + 296) = 1;
  v5 = sub_A3954();
  sub_761C((v0 + 296));
  sub_A4B54(20);

  sub_10944();
  v100 = v6;
  v99 = v5 & 1;
  if (v5)
  {
    v7._countAndFlagsBits = 1702195828;
  }

  else
  {
    v7._countAndFlagsBits = 0x65736C6166;
  }

  if (v5)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v7._object = v8;
  sub_A46D4(v7);

  v103._countAndFlagsBits = 8236;
  v103._object = 0xE200000000000000;
  sub_A46D4(v103);
  v104._countAndFlagsBits = 0xD000000000000010;
  v104._object = v100;
  sub_A46D4(v104);

  sub_A4B54(39);

  sub_10944();
  v101 = v9;
  if (v4)
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_A46D4(v10);

  v105._object = 0x80000000000AFF10;
  v105._countAndFlagsBits = 0xD000000000000010;
  sub_A46D4(v105);
  v97 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent;
  if (*(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent))
  {
    v12._countAndFlagsBits = 1702195828;
  }

  else
  {
    v12._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_isNLv4Intent))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v12._object = v13;
  sub_A46D4(v12);

  v106._countAndFlagsBits = 0xD000000000000013;
  v106._object = v101;
  sub_A46D4(v106);

  sub_36068();
  sub_810C4(v14, v15, v16, v17, v18, v19);

  if (!v99)
  {
    if ((v4 & 1) == 0 || *(v2 + v97) != 1)
    {
      goto LABEL_38;
    }

    v46 = *(v0 + 704);
    v47 = *(v0 + 696);
    v48 = *(v0 + 688);
    sub_36080();
    sub_3610C();
    sub_360B4();
    sub_810C4(v49, v50, v51, v52, v53, 0xE900000000000029);
    (*(v47 + 104))(v46, enum case for FlowUnhandledReason.needsServerExecution(_:), v48);
    sub_A3674();
    (*(v47 + 8))(v46, v48);
LABEL_44:

    sub_AA9C();

    return v77();
  }

  if ((v4 & 1) != 0 && !sub_35384())
  {
    sub_36080();
    sub_3610C();
    sub_36068();
    sub_810C4(v20, v21, v22, v23, v24, v25);
    sub_A760(v2 + v98, v0 + 416);
    if (qword_DA8A0 != -1)
    {
      sub_360EC(&qword_DA8A0);
    }

    sub_A760(&unk_E07B0, v0 + 456);
    sub_A37F4();
    sub_A7C4(v0 + 456, *(v0 + 480));
    *(v0 + 560) = &type metadata for CATProvider;
    *(v0 + 568) = &off_D0FD0;
    v26 = type metadata accessor for UnsupportedFlow(0);
    v27 = sub_36168(v26);
    sub_A7C4(v0 + 536, &type metadata for CATProvider);
    *(v0 + 600) = &type metadata for CATProvider;
    *(v0 + 608) = &off_D0FD0;
    v28 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_logger;
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v29 = sub_A43D4();
    sub_48A4(v29, qword_E0BA0);
    sub_360D8();
    (*(v30 + 16))(v27 + v28);
    sub_A814((v0 + 576), v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_catProvider);
    sub_A814((v0 + 416), v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_deviceState);
    sub_A814((v0 + 496), v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync);
    *(v27 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_unsupportedCode) = 1;
    sub_761C((v0 + 536));
    sub_761C((v0 + 456));
    *(v0 + 664) = v27;
    sub_360C0();
    sub_3600C(v31, v32, &unk_A9E40);
LABEL_34:
    sub_A3324();

    sub_A3654();
LABEL_40:

    goto LABEL_44;
  }

LABEL_38:
  v54 = *(v0 + 680);
  v55 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_state;
  switch(*(v54 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_state))
  {
    case 1:
      type metadata accessor for CancellationFlow(0);
      sub_A760(v2 + v96, v0 + 336);
      sub_A760(v2 + v98, v0 + 376);
      v79 = sub_2575C((v0 + 336));
      sub_761C((v0 + 376));
      sub_761C((v0 + 336));
      if ((v79 & 1) == 0)
      {
        v86 = *(v0 + 680);
        sub_3610C();
        sub_36068();
        sub_810AC(v87, v88, v89, v90, v91, v92);
        v93 = swift_allocObject();
        *(v93 + 16) = sub_35DF8;
        *(v93 + 24) = v86;
        v94 = sub_A3284();
        sub_36168(v94);

        *(v0 + 648) = sub_A3274();
        v95 = swift_allocObject();
        *(v95 + 16) = sub_35FF4;
        *(v95 + 24) = v86;

        sub_A3604();

        goto LABEL_40;
      }

      sub_3610C();
      sub_36068();
      sub_810AC(v80, v81, v82, v83, v84, v85);
      *(v54 + v55) = 2;
      v69 = swift_task_alloc();
      *(v0 + 712) = v69;
      *v69 = v0;
      v70 = sub_32A4C;
LABEL_49:
      v69[1] = v70;

      result = sub_32DF8();
      break;
    case 2:
      sub_3610C();
      sub_36068();
      sub_810AC(v63, v64, v65, v66, v67, v68);
      v69 = swift_task_alloc();
      *(v0 + 720) = v69;
      *v69 = v0;
      v70 = sub_32B50;
      goto LABEL_49;
    case 3:
      sub_3610C();
      sub_36068();
      sub_810AC(v71, v72, v73, v74, v75, v76);
      sub_A3664();
      goto LABEL_44;
    default:
      sub_3610C();
      sub_36068();
      sub_810AC(v56, v57, v58, v59, v60, v61);
      sub_35044();
      v62 = sub_A3264();

      *(v0 + 656) = v62;
      sub_A32A4();

      sub_A3604();

      goto LABEL_40;
  }

  return result;
}

uint64_t sub_32A4C()
{
  sub_5950();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_32B50()
{
  sub_5950();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_32C54(_BYTE *a1, uint64_t a2)
{
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = "GuardFlow# Unsupported usecase";
  }

  else
  {
    v4 = "SiriKit GuardFlow failed";
  }

  if (*a1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  sub_810AC(v5, v4 | 0x8000000000000000, 0xD000000000000027, 0x80000000000AFB70, 0x2865747563657865, 0xE900000000000029);
  *(a2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_state) = v6;
}

uint64_t sub_32D04(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_32DF8()
{
  sub_5950();
  v1[169] = v0;
  v1[168] = v2;
  v3 = sub_A3684();
  v1[170] = v3;
  sub_5940(v3);
  v1[171] = v4;
  v1[172] = sub_10AAC();
  v5 = sub_A4964();
  v1[173] = v5;
  sub_5940(v5);
  v1[174] = v6;
  v1[175] = sub_10AAC();
  v7 = sub_A4954();
  sub_10A88(v7);
  v1[176] = sub_10AAC();
  v8 = sub_A44B4();
  sub_10A88(v8);
  v1[177] = sub_10AAC();
  v9 = sub_A4354();
  sub_10A88(v9);
  v1[178] = sub_10AAC();
  v10 = sub_4BF0(&qword_DD0F0, &qword_A8E70);
  sub_10A88(v10);
  v1[179] = swift_task_alloc();
  v1[180] = swift_task_alloc();
  v1[181] = swift_task_alloc();
  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_32F98()
{
  v115 = v0;
  v1 = *(v0 + 1352);
  sub_A924(*(v0 + 1448), 1, 1, *(v0 + 1360));
  v107 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState;
  sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState, v0 + 256);
  v111 = v1;
  v99 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_aceService;
  sub_A760(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_aceService, v0 + 496);
  type metadata accessor for BriefingCatExecutor(0);
  sub_A4344();
  v104 = sub_A4284();
  sub_31630((v0 + 1216));
  if (qword_DAA98 != -1)
  {
    swift_once();
  }

  v2 = qword_E0E28;
  swift_retain_n();
  sub_A3454();
  v3 = type metadata accessor for DailyBriefingOutputPublisher(0);
  *(v0 + 720) = v3;
  *(v0 + 728) = &off_D2D00;
  *(v0 + 696) = v2;
  v4 = type metadata accessor for AddViewsFlowProvider();
  v5 = swift_allocObject();
  v6 = sub_A7C4(v0 + 696, v3);
  sub_AA64();
  v8 = v7;
  v9 = sub_10AAC();
  (*(v8 + 16))(v9, v6, v3);
  v10 = *v9;
  v5[5] = v3;
  v5[6] = &off_D2D00;
  v5[2] = v10;
  sub_A814((v0 + 976), (v5 + 7));
  sub_761C((v0 + 696));

  v11 = type metadata accessor for DBSiriKitEventSender();
  inited = swift_initStaticObject();
  *(v0 + 40) = v11;
  *(v0 + 48) = &off_D1B20;
  v106 = sub_3600C(&qword_DB598, type metadata accessor for DBSiriKitEventSender, &unk_A9488);
  *(v0 + 56) = v106;
  v109 = inited;
  *(v0 + 16) = inited;
  sub_A4264();
  v102 = sub_A4254();
  *(v0 + 1280) = v4;
  *(v0 + 1288) = &off_D2370;
  *(v0 + 1256) = v5;
  *(v0 + 360) = &type metadata for SiriDBFeatureFlagsImpl;
  *(v0 + 368) = &off_D1E00;
  v13 = type metadata accessor for TemplatingService(0);
  v14 = sub_5D78(v13);
  *(v0 + 1456) = v14;
  v15 = sub_A7C4(v0 + 1256, v4);
  sub_AA64();
  v17 = v16;
  v18 = sub_10AAC();
  (*(v17 + 16))(v18, v15, v4);
  sub_A7C4(v0 + 336, *(v0 + 360));
  v19 = *v18;
  *(v0 + 400) = v4;
  *(v0 + 408) = &off_D2370;
  *(v0 + 376) = v19;
  *(v0 + 440) = &type metadata for SiriDBFeatureFlagsImpl;
  *(v0 + 448) = &off_D1E00;
  v20 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_logger;
  v21 = qword_DAA10;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 1400);
  v23 = *(v0 + 1392);
  v100 = *(v0 + 1384);
  v101 = *(v0 + 1352);
  v24 = sub_A43D4();
  sub_48A4(v24, qword_E0C60);
  sub_360D8();
  v112 = *(v25 + 16);
  v113 = v24;
  v112(v14 + v20);
  sub_A4B54(32);

  sub_10944();
  v114[0] = 0xD00000000000001ELL;
  v114[1] = v26;
  v27 = [v102 description];
  v28 = sub_A45F4();
  v30 = v29;

  v117._countAndFlagsBits = v28;
  v117._object = v30;
  sub_A46D4(v117);

  sub_810AC(0xD00000000000001ELL, v114[1], 0xD000000000000033, 0x80000000000AFCC0, 0xD00000000000007DLL, 0x80000000000AFD00);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_bundle) = v32;
  *(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_catGlobals) = v102;
  *(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_catExecutor) = v104;
  sub_A760(v0 + 496, v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_aceService);
  sub_A760(v0 + 256, v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_deviceState);
  sub_A760(v0 + 1216, v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_patternFlowProvider);
  sub_A760(v0 + 376, v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_addViewsFlowProvider);
  sub_35B7C(v0 + 16, v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_siriKitEventSender);
  sub_A760(v0 + 416, v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_featureFlags);
  sub_35BE0();
  v33 = v102;

  sub_A4484();
  sub_A4944();
  (*(v23 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v100);
  v34 = sub_A4994();

  sub_761C((v0 + 1216));
  sub_761C((v0 + 496));
  sub_761C((v0 + 256));
  sub_761C((v0 + 16));
  sub_761C((v0 + 416));
  sub_761C((v0 + 376));
  *(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_queue) = v34;
  sub_761C((v0 + 336));
  sub_761C((v0 + 1256));

  type metadata accessor for CancellationFlow(0);
  v35 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent;
  swift_beginAccess();
  sub_A760(v101 + v35, v0 + 456);
  sub_A760(v111 + v107, v0 + 536);
  LOBYTE(v34) = sub_2575C((v0 + 456));
  sub_761C((v0 + 536));
  sub_761C((v0 + 456));
  if (v34)
  {
    sub_A760(v111 + v99, v0 + 296);
    sub_A760(v111 + v107, v0 + 936);
    v36 = swift_allocObject();
    *(v0 + 88) = v11;
    *(v0 + 96) = &off_D1B20;
    *(v0 + 104) = v106;
    *(v0 + 64) = v109;
    v37 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_logger;
    v38 = qword_DA9D0;

    if (v38 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v39 = sub_48A4(v113, qword_E0BA0);
    (v112)(v36 + v37, v39, v113);
    v40 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_dialogService;
    v41 = sub_A3584();
    sub_5D78(v41);
    *(v36 + v40) = sub_A3574();
    sub_A814((v0 + 296), v36 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_aceService);
    sub_A814((v0 + 936), v36 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_deviceState);
    *(v36 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_templatingService) = v14;
    sub_A82C((v0 + 64), (v36 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin16CancellationFlow_siriKitEventSender));
    *(v0 + 1336) = v36;
    sub_3600C(&qword_DC8C8, type metadata accessor for CancellationFlow, &unk_A83F0);
    sub_A3324();
    v42 = 5;
  }

  else if (sub_35384() && (type metadata accessor for AddRemoveFlow(0), sub_A760(v101 + v35, v0 + 1016), sub_A760(v111 + v107, v0 + 1056), v43 = sub_2A09C((v0 + 1016)), sub_761C((v0 + 1056)), sub_761C((v0 + 1016)), (v43 & 1) != 0))
  {
    v44 = *(v0 + 1352);
    sub_A760(v101 + v35, v0 + 1096);
    v45 = *(v44 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_knowledgeStore);
    sub_A760(v111 + v99, v0 + 1136);

    sub_A3904();
    v46 = swift_allocObject();
    *(v0 + 136) = v11;
    *(v0 + 144) = &off_D1B20;
    *(v0 + 152) = v106;
    *(v0 + 112) = v109;
    v47 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_logger;
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v48 = sub_48A4(v113, qword_E0BA0);
    (v112)(v46 + v47, v48, v113);
    v49 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_dialogService;
    v50 = sub_A3584();
    sub_5D78(v50);
    *(v46 + v49) = sub_A3574();
    sub_A814((v0 + 1096), v46 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_intent);
    *(v46 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_knowledgeStore) = v45;
    sub_A814((v0 + 1136), v46 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_aceService);
    *(v46 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_templatingService) = v14;
    sub_A814((v0 + 1176), v46 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_deviceState);
    sub_A82C((v0 + 112), (v46 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13AddRemoveFlow_siriKitEventSender));
    *(v0 + 1320) = v46;
    sub_3600C(&qword_DCB20, type metadata accessor for AddRemoveFlow, &unk_A8728);
    sub_A3324();
    v42 = 144;
  }

  else
  {
    if (qword_DAA58 != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 1352);
    sub_7A124(0, qword_E0D78, unk_E0D80, byte_E0D88, qword_E0D90);
    v105 = sub_34584();
    sub_A760(v51 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_requestOriginUtil, v0 + 576);

    v108 = sub_35384();
    v103 = sub_34404();
    sub_A3454();
    sub_A3904();
    *(v0 + 232) = v11;
    *(v0 + 240) = &off_D1B20;
    *(v0 + 248) = v106;
    *(v0 + 208) = v109;
    v52 = type metadata accessor for OfflineStateProvider();
    v53 = swift_allocObject();
    sub_A37F4();
    v54 = *(v0 + 600);
    v55 = sub_A7C4(v0 + 576, v54);
    sub_AA64();
    v57 = v56;
    v58 = sub_10AAC();
    (*(v57 + 16))(v58, v55, v54);
    *(v0 + 800) = v52;
    *(v0 + 808) = &off_D29E8;
    *(v0 + 776) = v53;
    *(v0 + 840) = &type metadata for RequestOriginUtil;
    *(v0 + 848) = &off_D1958;
    v59 = swift_allocObject();
    *(v0 + 816) = v59;
    v60 = *(v58 + 32);
    v61 = *(v58 + 16);
    *(v59 + 16) = *v58;
    *(v59 + 32) = v61;
    *(v59 + 48) = v60;
    v62 = type metadata accessor for InitialFlow(0);
    v110 = v14;
    v63 = sub_36168(v62);
    v64 = sub_A7C4(v0 + 776, v52);
    sub_AA64();
    v66 = v65;
    v67 = sub_10AAC();
    (*(v66 + 16))(v67, v64, v52);
    v68 = *(v0 + 840);
    v69 = sub_A7C4(v0 + 816, v68);
    sub_AA64();
    v71 = v70;
    v72 = sub_10AAC();
    (*(v71 + 16))(v72, v69, v68);
    v73 = *v67;
    *(v0 + 880) = v52;
    *(v0 + 888) = &off_D29E8;
    *(v0 + 856) = v73;
    *(v0 + 920) = &type metadata for RequestOriginUtil;
    *(v0 + 928) = &off_D1958;
    v74 = swift_allocObject();
    *(v0 + 896) = v74;
    v75 = *(v72 + 32);
    v76 = *(v72 + 16);
    *(v74 + 16) = *v72;
    *(v74 + 32) = v76;
    *(v74 + 48) = v75;
    v77 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_logger;
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v78 = sub_48A4(v113, qword_E0BA0);
    (v112)(v63 + v77, v78, v113);
    *(v63 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_queue) = v103;
    sub_A814((v0 + 656), v63 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_deviceState);
    sub_A814((v0 + 616), v63 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_aceService);
    *(v63 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_flowSpecs) = v105;
    sub_A82C((v0 + 208), (v63 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_siriKitEventSender));
    *(v63 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_templatingService) = v110;
    sub_A814((v0 + 856), v63 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_offlineStateProvider);
    sub_A814((v0 + 736), v63 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_outputPublisherAsync);
    sub_A814((v0 + 896), v63 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_requestOriginUtil);
    *(v63 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11InitialFlow_platformSupportsNews) = v108;
    sub_761C((v0 + 816));

    sub_761C((v0 + 776));

    sub_761C((v0 + 576));

    *(v0 + 1328) = v63;
    sub_3600C(&qword_DD100, type metadata accessor for InitialFlow, &unk_ABE28);
    sub_A3324();
    v42 = 143;
  }

  v79 = *(v0 + 1448);
  v80 = *(v0 + 1440);
  v81 = *(v0 + 1432);
  v82 = *(v0 + 1360);
  sub_A3654();

  sub_35C5C(v79);
  sub_A924(v80, 0, 1, v82);
  sub_35CC4(v80, v79);
  sub_35D34(v79, v81);
  if (sub_CF2C(v81, 1, v82) == 1)
  {
    v83 = *(v0 + 1448);
    sub_35C5C(*(v0 + 1432));
    sub_34EDC(0xD000000000000030, 0x80000000000AFDC0);

    sub_35C5C(v83);
LABEL_26:
    sub_36138();

    sub_AA9C();

    return v98();
  }

  v84 = *(v0 + 1432);
  v85 = *(v0 + 1376);
  v86 = *(v0 + 1368);
  v87 = *(v0 + 1360);
  v88 = *(v86 + 32);
  *(v0 + 1464) = v88;
  *(v0 + 1472) = (v86 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v88(v85, v84, v87);
  v89 = sub_A35E4();
  *(v0 + 1480) = v89;
  if (!v89)
  {
    sub_35C5C(*(v0 + 1448));

    v96 = sub_361B4();
    v97(v96);
    goto LABEL_26;
  }

  v90 = *(v0 + 1352);
  sub_A4B54(16);

  strcpy(v114, "Running flow: ");
  HIBYTE(v114[1]) = -18;
  v118._countAndFlagsBits = sub_A3294();
  sub_A46D4(v118);

  sub_810AC(v114[0], v114[1], 0xD000000000000027, 0x80000000000AFB70, 0x78654E7472617473, 0xEF2928776F6C4674);

  sub_35B7C(v90 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender, v0 + 160);
  sub_7584((v0 + 160), *(v0 + 184));
  v91 = sub_A3294();
  v93 = v92;
  *(v0 + 1488) = v92;
  v94 = swift_task_alloc();
  *(v0 + 1496) = v94;
  *v94 = v0;
  v94[1] = sub_3422C;

  return sub_4D488(v42, v91, v93);
}

uint64_t sub_3422C()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_3432C()
{
  v1 = *(v0 + 1448);

  sub_35C5C(v1);
  sub_761C((v0 + 160));
  v2 = sub_361B4();
  v3(v2);
  sub_36138();

  sub_AA9C();

  return v4();
}

uint64_t sub_34404()
{
  v0 = sub_A4964();
  sub_AA64();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_AA54();
  v6 = v5 - v4;
  v7 = sub_A4954();
  v8 = sub_10A88(v7);
  __chkstk_darwin(v8);
  sub_AA54();
  v9 = sub_A44B4();
  v10 = sub_10A88(v9);
  __chkstk_darwin(v10);
  sub_AA54();
  sub_35BE0();
  sub_A4484();
  sub_A4944();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_A4994();
}

uint64_t sub_34584()
{
  sub_3598C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_A8CD0;
  *(v0 + 32) = type metadata accessor for WeatherSpec(0);
  *(v0 + 40) = type metadata accessor for CalendarSpec(0);
  *(v0 + 48) = type metadata accessor for MapsSpec(0);
  *(v0 + 56) = type metadata accessor for RemindersSpec(0);
  return v0;
}

void sub_34604()
{
  sub_25714();
  v0 = sub_A2F34();
  sub_AA64();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_AA54();
  v6 = v5 - v4;
  v7 = [objc_opt_self() sharedInstance];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for DailyBriefingFlowPlugin(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_A2F24();
    sub_A2EF4();
    (*(v2 + 8))(v6, v0);
    sub_10760();
    v11 = sub_A4A64();
    v13 = v12;

    sub_359F4(0xD000000000000015, 0x80000000000AFC60, 0xD000000000000010, 0x80000000000AFC80, v10, v11, v13, v8);
  }

  sub_2569C();
}

void sub_34804()
{
  sub_25714();
  v89 = sub_A2BB4();
  sub_AA64();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_36194();
  v6 = (v4 - v5);
  __chkstk_darwin(v7);
  v9 = &v74 - v8;
  v10 = sub_A2F34();
  sub_AA64();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_AA54();
  v16 = v15 - v14;
  v80 = v0;
  v17 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState + 24);
  v76 = (v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState);
  sub_7584((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState), v17);
  sub_AA64();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = sub_36118(v21, v74);
  v23(v22);
  sub_A3484();
  (*(v19 + 8))(v0, v17);
  v24 = sub_A2EF4();
  v26 = v25;
  v27 = *(v12 + 8);
  v77 = v16;
  v78 = v12 + 8;
  v79 = v10;
  v75 = v27;
  v27(v16, v10);
  v90 = v24;
  v91 = v26;
  sub_A2B94();
  sub_A2BA4();
  v28 = *(v2 + 8);
  v85 = v9;
  v29 = v89;
  v28(v9, v89);
  v83 = sub_10760();
  v30 = sub_A4A44();
  v86 = v6;
  v87 = v2 + 8;
  v84 = v28;
  v28(v6, v29);

  v90 = v30;
  v31 = sub_4BF0(&qword_DC1A8, &qword_A8E50);
  v81 = sub_35AE8();
  v82 = v31;
  sub_A4574();

  v32 = sub_A4654();
  v34 = v33;

  v35 = &unk_CF5C0;
  v36 = 40;
  v88 = v34;
  v37 = v86;
  while (1)
  {
    if (!--v36)
    {
      v41 = v32;
      v50 = 0xE500000000000000;
      v51 = 0x65736C6166;
      goto LABEL_12;
    }

    v38 = *v35;
    v90 = *(v35 - 1);
    v91 = v38;

    v39 = v85;
    sub_A2B94();
    sub_A2BA4();
    v40 = v89;
    v41 = v32;
    v42 = v84;
    v84(v39, v89);
    v43 = sub_A4A44();
    v42(v37, v40);
    v90 = v43;
    sub_A4574();

    v44 = sub_A4654();
    v46 = v45;
    v47 = v88;

    if (v44 == v32 && v46 == v47)
    {
      break;
    }

    v35 += 2;
    v49 = sub_A4E44();

    if (v49)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v50 = 0xE400000000000000;
  v51 = 1702195828;
LABEL_12:
  v87 = v51;
  LODWORD(v89) = v36 != 0;
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_A4B54(27);

  sub_10944();
  v90 = 0xD000000000000017;
  v91 = v52;
  v53 = v76[3];
  sub_7584(v76, v53);
  sub_AA64();
  v55 = v54;
  __chkstk_darwin(v56);
  sub_AA54();
  v59 = v58 - v57;
  (*(v55 + 16))(v58 - v57);
  v60 = v77;
  sub_A3484();
  (*(v55 + 8))(v59, v53);
  v61 = sub_A2EF4();
  v63 = v62;
  v75(v60, v79);
  v92._countAndFlagsBits = v61;
  v92._object = v63;
  sub_A46D4(v92);

  v93._countAndFlagsBits = 8236;
  v93._object = 0xE200000000000000;
  sub_A46D4(v93);
  v65 = v90;
  v64 = v91;
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_A4B54(25);

  sub_10944();
  v90 = 0xD000000000000016;
  v91 = v66;
  v94._countAndFlagsBits = v41;
  v94._object = v88;
  sub_A46D4(v94);

  v95._countAndFlagsBits = 44;
  v95._object = 0xE100000000000000;
  sub_A46D4(v95);
  v67 = v90;
  v68 = v91;
  v90 = v65;
  v91 = v64;

  v96._countAndFlagsBits = v67;
  v96._object = v68;
  sub_A46D4(v96);

  v70 = v90;
  v69 = v91;
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_A4B54(33);

  sub_10944();
  v90 = 0xD00000000000001FLL;
  v91 = v71;
  v97._countAndFlagsBits = v87;
  v97._object = v50;
  sub_A46D4(v97);

  v72 = v90;
  v73 = v91;
  v90 = v70;
  v91 = v69;

  v98._countAndFlagsBits = v72;
  v98._object = v73;
  sub_A46D4(v98);

  sub_810C4(v90, v91, 0xD000000000000027, 0x80000000000AFB70, 0xD000000000000011, 0x80000000000AFC40);

  sub_2569C();
}

uint64_t sub_34EDC(uint64_t a1, uint64_t a2)
{
  sub_7584((v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender), *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender + 24));

  v5 = sub_931E8(4, 7, a1, a2, 0xFuLL);
  sub_4D424(v5);

  sub_81094(a1, a2, 0xD000000000000027, 0x80000000000AFB70, 0xD000000000000018, 0x80000000000AFBC0);
  type metadata accessor for NoOpFlow();
  swift_allocObject();
  sub_3600C(&qword_DD0D0, type metadata accessor for NoOpFlow, &unk_AB778);
  sub_A3324();

  sub_A3654();
}

void sub_35044()
{
  sub_25714();
  v29 = v0;
  v1 = sub_A32E4();
  sub_AA64();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_36194();
  v7 = (v5 - v6);
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - v10;
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  if (qword_DA890 != -1)
  {
    swift_once();
  }

  v14 = sub_1EA54();
  sub_36184();
  sub_A4B54(33);

  sub_10944();
  v30 = 0xD00000000000001FLL;
  v31 = v15;
  v34._countAndFlagsBits = sub_A48C4();
  sub_A46D4(v34);

  sub_810C4(v30, v31, 0xD000000000000027, 0x80000000000AFB70, 0xD000000000000012, 0x80000000000AFBA0);

  sub_93954(v14);
  v32 = &type metadata for DefaultProtectedAppCheckStrategy;
  v33 = sub_35924();
  sub_A32B4();

  sub_761C(&v30);
  sub_55364();
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18 >= *(v16 + 24) >> 1)
  {
    sub_55364();
    v17 = v26;
  }

  *(v17 + 16) = v18 + 1;
  v21 = *(v3 + 32);
  v20 = v3 + 32;
  v19 = v21;
  v22 = (*(v20 + 48) + 32) & ~*(v20 + 48);
  v23 = *(v20 + 40);
  v21(v17 + v22 + v23 * v18, v13, v1);
  sub_A32D4();
  v24 = *(v17 + 16);
  if (v24 >= *(v17 + 24) >> 1)
  {
    sub_55364();
    v17 = v27;
  }

  *(v17 + 16) = v24 + 1;
  v19(v17 + v22 + v24 * v23, v11, v1);
  sub_A32C4();
  v25 = *(v17 + 16);
  if (v25 >= *(v17 + 24) >> 1)
  {
    sub_55364();
    v17 = v28;
  }

  *(v17 + 16) = v25 + 1;
  v19(v17 + v22 + v25 * v23, v7, v1);
  sub_2569C();
}

BOOL sub_35384()
{
  v1 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState + 24);
  sub_7584((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState), v1);
  sub_AA64();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = sub_36118(v5, v10);
  v7(v6);
  v8 = sub_A3474();
  (*(v3 + 8))(v0, v1);
  return (v8 & 1) == 0;
}

uint64_t sub_3545C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_dbIntent));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_deviceState));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_aceService));

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_featureFlags));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_siriKitEventSender));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin9GuardFlow_requestOriginUtil));
  return v0;
}

uint64_t sub_3552C()
{
  sub_3545C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GuardFlow(uint64_t a1)
{
  result = qword_DCEC8;
  if (!qword_DCEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_355D8(uint64_t a1)
{
  result = sub_A43D4();
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

_BYTE *storeEnumTagSinglePayload for GuardFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x35770);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_357AC()
{
  result = qword_DD0C0;
  if (!qword_DD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD0C0);
  }

  return result;
}

uint64_t sub_3584C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_A648;

  return sub_31E50();
}

uint64_t sub_358E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GuardFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_35924()
{
  result = qword_DD0C8;
  if (!qword_DD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD0C8);
  }

  return result;
}

uint64_t sub_3598C()
{
  v0 = sub_4BF0(&qword_DD0E0, &qword_A8E58);
  if (sub_35B4C(v0, v0))
  {
    v1 = &qword_DBB70;
    v2 = &unk_A6E90;
  }

  else
  {
    v1 = &unk_DD0E8;
    v2 = &unk_A8E60;
  }

  return sub_4BF0(v1, v2);
}

uint64_t sub_359F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_A45C4();

  v11 = sub_A45C4();

  v12 = sub_A45C4();

  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_A45F4();

  return v14;
}

unint64_t sub_35AE8()
{
  result = qword_DD0D8;
  if (!qword_DD0D8)
  {
    sub_1B4B0(&qword_DC1A8, &qword_A8E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD0D8);
  }

  return result;
}

uint64_t sub_35B4C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_35B7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_35BE0()
{
  result = qword_DD0F8;
  if (!qword_DD0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DD0F8);
  }

  return result;
}

uint64_t sub_35C24()
{
  sub_761C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_35C5C(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DD0F0, &qword_A8E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_35CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD0F0, &qword_A8E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_35D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD0F0, &qword_A8E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_35DA4()
{
  result = qword_DD110;
  if (!qword_DD110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD110);
  }

  return result;
}

uint64_t sub_35E10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_35E48()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_35EF4;

  return sub_32D04(v2);
}

uint64_t sub_35EF4(uint64_t a1, uint64_t a2)
{
  sub_AAA8();
  v5 = *v2;
  sub_5930();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1, a2);
}

uint64_t sub_3600C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_36090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_810C4(a1, a2, 0xD000000000000027, a4, v4, 0xEA0000000000293ALL);
}

uint64_t sub_360EC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_36138()
{
}

uint64_t sub_36168(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_361D8()
{
  sub_5950();
  *(v1 + 16) = v0;
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v2);
  *(v1 + 24) = sub_10AAC();
  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_3625C()
{
  sub_AB40();
  v0 = sub_37348();
  sub_372E4(v0);
  v1 = sub_37298();
  v2 = sub_373AC(v1);
  *v2 = v3;
  sub_373A0(v2);
  sub_37394();

  return v4();
}

uint64_t sub_362FC()
{
  sub_5950();
  *(v1 + 16) = v0;
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v2);
  *(v1 + 24) = sub_10AAC();
  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_36380()
{
  sub_AB40();
  v0 = sub_37348();
  sub_372E4(v0);
  v1 = sub_37298();
  v2 = sub_373AC(v1);
  *v2 = v3;
  sub_373A0(v2);
  sub_37394();

  return v4();
}

uint64_t sub_36420()
{
  sub_5950();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v4);
  v1[5] = sub_10AAC();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_364A8()
{
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  v1[4].n128_u64[1] = sub_372B8(v1, xmmword_A6E70);
  sub_76B0(&v1[3]);

  sub_37304();
  v2 = sub_A3744();
  sub_37328(v2);
  v3 = sub_37298();
  *(v0 + 56) = v3;
  *v3 = v0;
  sub_37384(v3);
  sub_37374();

  return v4();
}

uint64_t sub_365B4()
{
  sub_5950();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v4);
  v1[5] = sub_10AAC();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_3663C()
{
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  v1[4].n128_u64[1] = sub_372B8(v1, xmmword_A6E70);
  sub_76B0(&v1[3]);

  sub_37304();
  v2 = sub_A3744();
  sub_37328(v2);
  v3 = sub_37298();
  *(v0 + 56) = v3;
  *v3 = v0;
  sub_37384(v3);
  sub_37374();

  return v4();
}

uint64_t sub_36748()
{
  sub_5950();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v4);
  v1[5] = sub_10AAC();
  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_367D0()
{
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  v1[4].n128_u64[1] = sub_372B8(v1, xmmword_A6E70);
  sub_76B0(&v1[3]);

  sub_37304();
  v2 = sub_A3744();
  sub_37328(v2);
  v3 = sub_37298();
  *(v0 + 56) = v3;
  *v3 = v0;
  sub_37384(v3);
  sub_37374();

  return v4();
}

uint64_t sub_368DC()
{
  sub_AB40();
  sub_37364();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_A8B4(v2);

  v5 = sub_595C();

  return v6(v5);
}

uint64_t sub_36A04()
{
  sub_5950();
  *(v1 + 16) = v0;
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v2);
  *(v1 + 24) = sub_10AAC();
  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_36A88()
{
  sub_AB40();
  v0 = sub_37348();
  sub_372E4(v0);
  v1 = sub_37298();
  v2 = sub_373AC(v1);
  *v2 = v3;
  sub_373A0(v2);
  sub_37394();

  return v4();
}

uint64_t sub_36B28()
{
  sub_5950();
  sub_37364();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_A8B4(v2);

  v5 = sub_595C();

  return v6(v5);
}

uint64_t sub_36C2C()
{
  sub_5950();
  *(v1 + 16) = v0;
  v2 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v2);
  *(v1 + 24) = sub_10AAC();
  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_36CB0()
{
  sub_AB40();
  v0 = sub_37348();
  sub_372E4(v0);
  v1 = sub_37298();
  v2 = sub_373AC(v1);
  *v2 = v3;
  sub_373A0(v2);
  sub_37394();

  return v4();
}

uint64_t sub_36D50()
{
  sub_5950();
  *(v1 + 81) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  *(v1 + 80) = v4;
  v5 = sub_A42E4();
  *(v1 + 32) = v5;
  *(v1 + 40) = *(v5 - 8);
  *(v1 + 48) = sub_10AAC();
  v6 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v6);
  *(v1 + 56) = sub_10AAC();
  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_36E30()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 16);
  v3 = *(v0 + 80);
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  strcpy((v4 + 32), "noneAvailable");
  *(v4 + 46) = -4864;
  *(v4 + 16) = xmmword_A8CD0;
  *(v4 + 48) = v3;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 80) = 0x656C6961466C6C61;
  *(v4 + 88) = 0xE900000000000064;
  *(v4 + 96) = v1;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = 0xD000000000000012;
  *(v4 + 136) = 0x80000000000B02E0;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = *(v0 + 40);
    sub_7AC1C(0, v5, 0);
    v7 = v2 + 40;
    v20 = v5;
    v8 = v5;
    do
    {

      sub_A42C4();
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_7AC1C((v9 > 1), v10 + 1, 1);
      }

      v11 = *(v0 + 48);
      v12 = *(v0 + 32);
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v11, v12);
      v7 += 16;
      --v8;
    }

    while (v8);
  }

  v13 = *(v0 + 24);
  v14 = sub_4BF0(&qword_DB970, &unk_A6C10);
  *(v4 + 144) = _swiftEmptyArrayStorage;
  *(v4 + 168) = v14;
  *(v4 + 176) = 0xD000000000000017;
  *(v4 + 184) = 0x80000000000B0300;
  *(v4 + 216) = &type metadata for Double;
  *(v4 + 192) = v5;
  v15 = *(v13 + 16);
  v16 = sub_A3744();
  sub_372E4(v16);
  v17 = sub_37298();
  *(v0 + 72) = v17;
  *v17 = v0;
  v17[1] = sub_370F0;
  v18 = *(v0 + 56);

  return v20(11, v4, v18, v15);
}

uint64_t sub_370F0()
{
  sub_AB40();
  sub_37364();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  sub_A8B4(v2);

  v5 = sub_595C();

  return v6(v5);
}

uint64_t sub_37234()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_37298()
{

  return swift_task_alloc();
}

uint64_t sub_372B8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6E69616D6F64;
  a1[2].n128_u64[1] = 0xE600000000000000;

  return sub_A42E4();
}

uint64_t sub_372E4(uint64_t a1)
{

  return sub_A924(v1, 1, 1, a1);
}

uint64_t sub_37304()
{

  return sub_A42C4();
}

uint64_t sub_37328(uint64_t a1)
{

  return sub_A924(v1, 1, 1, a1);
}

uint64_t sub_37348()
{

  return sub_A3744();
}

uint64_t sub_373B8(void *a1)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_4BF0(&qword_DD220, qword_A9B20);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v40 - v7;
  v8 = sub_A2EA4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v40 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v40 - v19;
  __chkstk_darwin(v18);
  v22 = &v40 - v21;
  v23 = v2;
  v24 = [v2 startDate];
  if (v24)
  {
    v25 = v24;
    v40 = v6;
    sub_A2E74();

    v26 = *(v9 + 32);
    v26(v22, v20, v8);
    v27 = [v43 startDate];
    if (v27)
    {
      v28 = v27;
      sub_A2E74();

      v26(v17, v14, v8);
      v29 = sub_A2E84();
      v30 = *(v9 + 8);
      v30(v17, v8);
      v30(v22, v8);
      return v29;
    }

    (*(v9 + 8))(v22, v8);
    v6 = v40;
  }

  v31 = [v23 startDate];
  if (v31)
  {
    v32 = v31;
    v33 = v41;
    sub_A2E74();

    v34 = v42;
    (*(v9 + 32))(v42, v33, v8);
    sub_A924(v34, 0, 1, v8);
    sub_37774(v34);
    return -1;
  }

  else
  {
    v35 = v42;
    sub_A924(v42, 1, 1, v8);
    sub_37774(v35);
    v29 = [v43 startDate];
    if (v29)
    {
      v36 = v41;
      sub_A2E74();

      (*(v9 + 32))(v6, v36, v8);
      v29 = &dword_0 + 1;
      v37 = v6;
      v38 = 0;
    }

    else
    {
      v37 = v6;
      v38 = 1;
    }

    sub_A924(v37, v38, 1, v8);
    sub_37774(v6);
  }

  return v29;
}

uint64_t sub_37774(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DD220, qword_A9B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_377DC(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SupportedFeatures;
  *(a1 + 32) = &off_D2110;
  *a1 = 3;
}

double sub_377FC@<D0>(_OWORD *a1@<X8>)
{
  sub_4BF0(&qword_DC738, &qword_AAF90);
  sub_A4974();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_37880@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 16);
  v7[0] = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value);
  v7[1] = v2;
  v4 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 48);
  v8 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 32);
  v3 = v8;
  v9 = v4;
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  return sub_39408(v7, &v6);
}

uint64_t sub_378DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = *(a1 + 16);
  *(v5 + 24) = *a1;
  *(v5 + 40) = v6;
  v7 = *(a1 + 48);
  *(v5 + 56) = *(a1 + 32);
  *(v5 + 72) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_393D4;
  *(v8 + 24) = v5;
  aBlock[4] = sub_253D8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_50578;
  aBlock[3] = &unk_D1640;
  v9 = _Block_copy(aBlock);

  sub_39408(a1, &v11);

  dispatch_sync(v4, v9);
  sub_1085C(a1, &qword_DC738, &qword_AAF90);
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_37A78(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value);
  v3 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value);
  v4 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 8);
  v5 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 16);
  v6 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 24);
  v7 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 32);
  v8 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 40);
  v9 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 48);
  v10 = *(a1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value + 56);
  v11 = a2[1];
  *v2 = *a2;
  v2[1] = v11;
  v12 = a2[3];
  v2[2] = a2[2];
  v2[3] = v12;
  sub_39408(a2, &v13);
  sub_24638(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_37B14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v12 = swift_allocObject();
  sub_A7C4(a9, a9[3]);
  sub_AA64();
  __chkstk_darwin(v13);
  sub_AA54();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  v18 = *v16;
  v19 = type metadata accessor for OfflineStateProvider();
  v39[3] = v19;
  v39[4] = &off_D29E8;
  v39[0] = v18;
  v20 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_logger;
  if (qword_DA9F8 != -1)
  {
    swift_once();
  }

  v21 = sub_A43D4();
  v22 = sub_48A4(v21, qword_E0C18);
  (*(*(v21 - 8) + 16))(v12 + v20, v22, v21);
  *(v12 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_previousEntry) = 0;
  v23 = (v12 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value);
  *v23 = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
  sub_A760(a6, v38);
  type metadata accessor for MapsTemplatingService(0);
  swift_allocObject();

  *(v12 + 224) = sub_6188C(v38, a8);
  sub_A760(a5, v12 + 16);
  sub_A760(a6, v12 + 112);
  sub_A760(v39, v38);
  sub_A7C4(v38, v38[3]);
  sub_AA64();
  __chkstk_darwin(v24);
  sub_AA54();
  v27 = (v26 - v25);
  (*(v28 + 16))(v26 - v25);
  v29 = *v27;
  *(v12 + 192) = v19;
  *(v12 + 200) = &off_D29E8;
  *(v12 + 168) = v29;
  sub_A3584();
  swift_allocObject();
  *(v12 + 56) = sub_A3574();
  v30 = sub_2505C();
  v31 = sub_394DC(&unk_D2B80, v30);
  sub_761C(a6);
  sub_761C(a5);
  sub_761C(v39);
  *(v12 + 64) = v31;
  *(v12 + 72) = 1;
  *(v12 + 208) = 0;
  *(v12 + 216) = -256;
  *(v12 + 80) = a1;
  *(v12 + 88) = a2;
  *(v12 + 96) = a3;
  *(v12 + 104) = a4;
  *(v12 + 152) = a7;
  *(v12 + 160) = a8;
  sub_761C(v38);
  sub_761C(a9);
  return v12;
}

uint64_t sub_37E78()
{
  sub_5950();
  *(v1 + 480) = v0;
  sub_4BF0(&qword_DB5A8, &unk_A67C0);
  *(v1 + 488) = swift_task_alloc();
  v2 = sub_AA8C();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_37F08()
{
  sub_7584((v0[60] + 168), *(v0[60] + 192));
  if (sub_834E4())
  {
    v2 = 0;
    v3 = "(skipping) location not precise";
    v4 = 0xD000000000000024;
LABEL_10:
    sub_394B8(v4, v3 | 0x8000000000000000, v1, 0x80000000000B03E0);
    v7 = sub_24824();
    v8 = sub_394DC(&unk_D2AF0, v7);
    *v9 = v2;
    sub_82ED4(v8, 256);
    sub_394DC(&unk_D2AF0, v7);
    *v10 = v2;

    v11 = sub_39508();

    return v12(v11);
  }

  if (*(v0[60] + 104) != 1)
  {
    v3 = "Valid maps suggestion found.";
    v4 = 0xD00000000000001FLL;
    v2 = 1;
    goto LABEL_10;
  }

  v0[62] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_logger;
  sub_394B8(0xD000000000000015, 0x80000000000B03C0, v1, 0x80000000000B03E0);
  if (qword_DA950 != -1)
  {
    swift_once();
  }

  v0[63] = qword_E0A08;

  v5 = swift_task_alloc();
  v0[64] = v5;
  *v5 = v0;
  v5[1] = sub_3813C;

  return sub_7B77C();
}

uint64_t sub_3813C()
{
  sub_5950();
  sub_AAA8();
  v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = v2[10];
  v2[13] = v2[9];
  v2[14] = v5;
  v6 = v2[12];
  v2[15] = v2[11];
  v2[16] = v6;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_3824C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 160);
  *(v3 + 520) = v4;
  if (!v4)
  {
LABEL_4:
    sub_39494(0xD000000000000018, 0x80000000000AF000, a3, 0x80000000000B03E0);
    v9 = sub_24824();
    v10 = sub_394DC(&unk_D2AF0, v9);
    *v11 = 2;
    sub_82ED4(v10, 256);
    sub_394DC(&unk_D2AF0, v9);
    *v12 = 2;

    v13 = sub_39508();

    return v14(v13);
  }

  v5 = *(v3 + 144);
  *(v3 + 80) = v5;
  *(v3 + 96) = v4;
  v6 = *(v3 + 184);
  *(v3 + 120) = v6;
  v7 = *(v3 + 168);
  *(v3 + 104) = v7;
  v8 = *(v3 + 200);
  *(v3 + 136) = v8;
  *(v3 + 464) = v5;
  *(v3 + 400) = v7;
  *(v3 + 416) = v6;
  *(v3 + 432) = v8;
  if (*(v3 + 128) == 3)
  {
    sub_1085C(v3 + 144, &qword_DC738, &qword_AAF90);
    goto LABEL_4;
  }

  sub_39494(0xD00000000000001CLL, 0x80000000000B0410, a3, 0x80000000000B03E0);
  if (qword_DA838 != -1)
  {
    swift_once();
  }

  *(v3 + 528) = qword_E0608;

  v16 = swift_task_alloc();
  *(v3 + 536) = v16;
  *v16 = v3;
  v16[1] = sub_38494;

  return sub_44F0(4);
}

uint64_t sub_38494()
{
  sub_5950();
  sub_AAA8();
  v2[55] = v0;
  v2[56] = v1;
  v2[57] = v3;
  v4 = *v0;
  sub_5930();
  *v5 = v4;
  *(v7 + 544) = v6;

  v8 = sub_AA8C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_38584()
{
  v1 = *(v0 + 544);
  if (v1)
  {
    v2 = *(v0 + 448);
    sub_247E0();
    v3 = sub_39278(v2, v1, 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 520);
  v6 = *(v0 + 480);
  v5 = *(v0 + 488);

  v7 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_previousEntry;
  v8 = *(v6 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_previousEntry);
  *(v6 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_previousEntry) = v3;

  *(v0 + 16) = *(v0 + 464);
  v9 = *(v0 + 416);
  *(v0 + 40) = *(v0 + 400);
  *(v0 + 56) = v9;
  *(v0 + 72) = *(v0 + 432);
  *(v0 + 32) = v4;
  v10 = *(v0 + 224);
  *(v0 + 272) = *(v0 + 208);
  *(v0 + 288) = v10;
  v11 = *(v0 + 256);
  *(v0 + 304) = *(v0 + 240);
  *(v0 + 320) = v11;
  sub_39348(v0 + 272, v0 + 336);
  sub_378DC(v0 + 16);
  *(v0 + 552) = *(v6 + 224);
  v12 = *(v6 + v7);
  v13 = v12;

  v14 = sub_5E790(v12, v0 + 16);

  v15 = sub_A3744();
  sub_A924(v5, 1, 1, v15);
  v16 = swift_task_alloc();
  *(v0 + 560) = v16;
  *v16 = v0;
  v16[1] = sub_38720;
  v17 = *(v0 + 488);

  return sub_61488(v0 + 80, v14 & 1, v17);
}

uint64_t sub_38720()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 488);
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 568) = v5;

  sub_1085C(v2, &qword_DB5A8, &unk_A67C0);
  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_38854()
{
  sub_5950();

  sub_82ED4(v1, 1);

  sub_1085C(v0 + 144, &qword_DC738, &qword_AAF90);

  v2 = *(v0 + 8);

  return v2(1, 0);
}

uint64_t sub_388F0()
{
  *(v1 + 80) = v0;
  v2 = sub_AA8C();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_38918()
{
  v1.n128_f64[0] = sub_377FC((v0 + 16));
  if (*(v0 + 32))
  {
    sub_392E4(*(v0 + 72));
    *(v0 + 88) = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      *(v0 + 96) = v3;
      *v3 = v0;
      v3[1] = sub_38A34;

      return sub_39B8();
    }

    sub_1085C(v0 + 16, &qword_DC738, &qword_AAF90);
  }

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_38A34()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_38B34()
{
  sub_5950();
  sub_1085C(v0 + 16, &qword_DC738, &qword_AAF90);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_38BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4BF0(&qword_DD468, &qword_A9068);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_A4434();
  sub_AA64();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_AA54();
  v11 = v10 - v9;
  v12 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_A3744();
  sub_AA64();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_AA54();
  v21 = (v20 - v19);
  sub_377FC(&v30);
  if (v31)
  {
    v29 = a1;
    sub_82D48(v14);
    if (sub_CF2C(v14, 1, v15) == 1)
    {
      sub_1085C(&v30, &qword_DC738, &qword_AAF90);
      sub_1085C(v14, &qword_DB5A8, &unk_A67C0);
      v22 = 1;
      a1 = v29;
    }

    else
    {
      v23 = v14;
      v24 = *(v17 + 32);
      v24(v21, v23, v15);
      sub_491A8(0xD000000000000019, 0x80000000000B03A0, 0, 0, 0, 1);
      if (sub_CF2C(v4, 1, v5) == 1)
      {
        sub_1085C(&v30, &qword_DC738, &qword_AAF90);
        sub_1085C(v4, &qword_DD468, &qword_A9068);
      }

      else
      {
        (*(v7 + 32))(v11, v4, v5);
        sub_4BF0(&qword_DD470, &qword_A9070);
        v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_A6E70;
        (*(v7 + 16))(v26 + v25, v11, v5);
        sub_A3694();
        sub_1085C(&v30, &qword_DC738, &qword_AAF90);
        (*(v7 + 8))(v11, v5);
      }

      a1 = v29;
      v24(v29, v21, v15);
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  return sub_A924(a1, v22, 1, v15);
}

void sub_38F58()
{

  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);

  v3 = sub_394F4(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value);

  sub_24638(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_38FE0()
{
  v0 = sub_82DF4();

  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);

  v3 = sub_394F4(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin8MapsSpec_topSuggestion_Value);
  sub_24638(v3, v4, v5, v6, v7, v8, v9, v10);
  return v0;
}

uint64_t sub_39068()
{
  v0 = sub_38FE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MapsSpec(uint64_t a1)
{
  result = qword_DD268;
  if (!qword_DD268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_39110(uint64_t a1)
{
  result = sub_A43D4();
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

__n128 sub_391C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_391D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_39218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_39278(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_A45C4();

  v5 = [swift_getObjCClassFromMetadata() entryFromSerializedBase64String:v4 hasPrefix:a3 & 1];

  return v5;
}

uint64_t sub_392E4(void *a1)
{
  v1 = [a1 serializedBase64String];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_A45F4();

  return v3;
}

uint64_t sub_39380()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_393F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_39408(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DC738, &qword_AAF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_39494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_810AC(a1, a2, 0xD000000000000026, a4, v4, 0xE900000000000029);
}

void sub_394B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_810AC(a1, a2, 0xD000000000000026, a4, v4, 0xE900000000000029);
}

uint64_t sub_394DC(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_3951C()
{
  v1 = v0;
  v2 = sub_A3174();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WeatherCondition.blizzard(_:))
  {
    return 3;
  }

  if (v6 == enum case for WeatherCondition.blowingDust(_:))
  {
    return 11;
  }

  if (v6 == enum case for WeatherCondition.blowingSnow(_:))
  {
    return 8;
  }

  if (v6 == enum case for WeatherCondition.breezy(_:))
  {
    return 12;
  }

  if (v6 == enum case for WeatherCondition.clear(_:))
  {
    return 17;
  }

  if (v6 == enum case for WeatherCondition.cloudy(_:))
  {
    return 15;
  }

  if (v6 == enum case for WeatherCondition.drizzle(_:))
  {
    return 9;
  }

  if (v6 == enum case for WeatherCondition.flurries(_:))
  {
    return 7;
  }

  if (v6 == enum case for WeatherCondition.foggy(_:))
  {
    return 13;
  }

  if (v6 == enum case for WeatherCondition.freezingDrizzle(_:) || v6 == enum case for WeatherCondition.freezingRain(_:))
  {
    return 6;
  }

  if (v6 == enum case for WeatherCondition.frigid(_:))
  {
    return 18;
  }

  if (v6 == enum case for WeatherCondition.hail(_:))
  {
    return 4;
  }

  if (v6 != enum case for WeatherCondition.haze(_:))
  {
    if (v6 == enum case for WeatherCondition.heavyRain(_:))
    {
      return 9;
    }

    if (v6 != enum case for WeatherCondition.heavySnow(_:))
    {
      if (v6 == enum case for WeatherCondition.hot(_:))
      {
        return 19;
      }

      if (v6 == enum case for WeatherCondition.hurricane(_:))
      {
        return 0;
      }

      if (v6 == enum case for WeatherCondition.isolatedThunderstorms(_:))
      {
        return 5;
      }

      if (v6 == enum case for WeatherCondition.mostlyClear(_:))
      {
        return 17;
      }

      if (v6 == enum case for WeatherCondition.mostlyCloudy(_:))
      {
        return 15;
      }

      if (v6 == enum case for WeatherCondition.partlyCloudy(_:))
      {
        return 16;
      }

      if (v6 == enum case for WeatherCondition.rain(_:))
      {
        return 9;
      }

      if (v6 == enum case for WeatherCondition.scatteredThunderstorms(_:))
      {
        return 5;
      }

      if (v6 == enum case for WeatherCondition.sleet(_:))
      {
        return 6;
      }

      if (v6 == enum case for WeatherCondition.smoky(_:))
      {
        return 10;
      }

      if (v6 != enum case for WeatherCondition.snow(_:))
      {
        if (v6 == enum case for WeatherCondition.strongStorms(_:))
        {
          return 5;
        }

        if (v6 != enum case for WeatherCondition.sunFlurries(_:))
        {
          if (v6 != enum case for WeatherCondition.sunShowers(_:))
          {
            if (v6 != enum case for WeatherCondition.thunderstorms(_:))
            {
              if (v6 == enum case for WeatherCondition.tropicalStorm(_:))
              {
                return 2;
              }

              if (v6 == enum case for WeatherCondition.windy(_:))
              {
                return 12;
              }

              if (v6 != enum case for WeatherCondition.wintryMix(_:))
              {
                (*(v3 + 8))(v5, v2);
                return 22;
              }

              return 6;
            }

            return 5;
          }

          return 9;
        }
      }
    }

    return 7;
  }

  return 14;
}

uint64_t getEnumTagSinglePayload for RequestOriginInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for RequestOriginInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_399D8(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_399F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_39A2C()
{
  sub_AB40();
  sub_39FC8(*(v0 + 64), v0 + 16);
  v1 = swift_allocObject();
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 48);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  *(v3 + 16) = &unk_A90E8;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_39B60;
  v5.n128_u64[0] = 2.0;

  return (sub_3B038)(&unk_A90F8, v3, 0x29286863746566, 0xE700000000000000, v5);
}

uint64_t sub_39B60()
{
  sub_25654();
  sub_402C4();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {

    sub_40498();

    __asm { BRAA            X4, X16 }
  }

  sub_40210();
  sub_40498();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_39CAC()
{
  sub_AB40();
  v1 = *(v0 + 88);

  *(v0 + 56) = v1;
  swift_errorRetain();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  if (swift_dynamicCast())
  {

    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v2 = sub_A43D4();
    sub_48A4(v2, qword_E0BA0);
    sub_402DC(0xD000000000000037, "wPlugin/RequestOriginUtil.swift");
  }

  else
  {

    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v3 = sub_A43D4();
    sub_48A4(v3, qword_E0BA0);
    sub_402DC(0xD000000000000030, "ble in offline mode.");
  }

  v4 = sub_401EC();

  return v5(v4);
}

uint64_t sub_39E3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_39ECC;

  return sub_3A0C0();
}

uint64_t sub_39ECC()
{
  sub_AB40();
  v4 = v3;
  sub_402C4();
  sub_AAA8();
  v5 = *v2;
  sub_5930();
  *v6 = v5;

  sub_40330();

  return v7(v1, v0, v4);
}

uint64_t sub_3A000()
{
  sub_761C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3A038()
{
  sub_5950();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_39ECC;

  return sub_39E3C();
}

uint64_t sub_3A0C0()
{
  v1[10] = v0;
  v2 = sub_A43A4();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_3A180, 0, 0);
}

uint64_t sub_3A180()
{
  sub_40178();
  if (qword_DA9A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *algn_E0AE8;
  *(v0 + 112) = qword_E0AE0;
  *(v0 + 120) = v2;
  *(v0 + 200) = byte_E0AF0;
  v3 = qword_E0AF8;
  *(v0 + 128) = qword_E0AF8;
  v4 = v3;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  v5 = v1[3];
  v6 = v1[4];
  sub_7584(v1, v5);
  v9 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_3A33C;

  return v9(v5, v6);
}

uint64_t sub_3A33C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  *v3 = *v1;
  v2[18] = v4;
  v2[19] = v5;
  v2[20] = v0;

  sub_40210();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_3A440()
{
  sub_40244();
  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = sub_A43D4();
  *(v0 + 168) = sub_48A4(v3, qword_E0BA0);
  sub_A4B54(83);
  v21._countAndFlagsBits = 0xD000000000000041;
  v21._object = 0x80000000000B0630;
  sub_A46D4(v21);
  *(v0 + 56) = v1;
  type metadata accessor for AFLocationAuthorizationStyle(0);
  v22._countAndFlagsBits = sub_A4644();
  sub_A46D4(v22);

  v23._countAndFlagsBits = 0x63636120646E6120;
  v23._object = 0xEE00207963617275;
  sub_A46D4(v23);
  *(v0 + 64) = v2;
  type metadata accessor for CLAccuracyAuthorization(0);
  v24._countAndFlagsBits = sub_A4644();
  sub_A46D4(v24);

  sub_810C4(0, 0xE000000000000000, 0xD00000000000002FLL, 0x80000000000B04C0, 0x636F4C6863746566, 0xEF29286E6F697461);

  if ((v1 - 3) > 1)
  {
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v0 + 200);
    sub_810C4(0xD000000000000035, 0x80000000000B0680, 0xD00000000000002FLL, 0x80000000000B04C0, 0x636F4C6863746566, 0xEF29286E6F697461);
    sub_7A58C(v14, 1, 0, 0x5402u, v13, v12, v15, v11);
    v16 = sub_4021C();
    v17(v16);

    sub_40330();

    return v18(1, 0, 2);
  }

  else
  {
    v4 = *(v0 + 80);
    v5 = v4[3];
    v6 = v4[4];
    sub_7584(v4, v5);
    v19 = (*(v6 + 8) + **(v6 + 8));
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_3A7BC;
    v8.n128_u64[0] = 2.0;
    v9.n128_f64[0] = kCLLocationAccuracyThreeKilometers;

    return v19(v5, v6, v9, v8);
  }
}

uint64_t sub_3A7BC()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  sub_40210();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_3A8BC()
{
  sub_40244();
  v25 = *(v0 + 152) == 0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 120);
  v24 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  if (*(v0 + 152))
  {
    v5 = 20480;
  }

  else
  {
    v5 = 20481;
  }

  v6 = *(v0 + 200);
  sub_40130();
  sub_810C4(v9, v7 | 0x8000000000000000, 0xD00000000000002FLL, v8 | 0x8000000000000000, v10, v11);
  [v1 coordinate];
  v13 = v12;
  v15 = v14;
  v16 = v1;
  v17 = sub_3B80C(v16);
  sub_7A58C(v4, v13, v15, v5 | (v17 << 8), v3, v2, v6, v24);
  [v16 coordinate];
  v19 = v18;
  v21 = v20;

  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  sub_40330();

  return v22(v19, v21, v25);
}

uint64_t sub_3AA50()
{
  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v20 = *(v0 + 128);
  v3 = *(v0 + 200);
  v4 = sub_A43D4();
  sub_48A4(v4, qword_E0BA0);
  sub_A4B54(68);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000042;
  v22._object = 0x80000000000B05C0;
  sub_A46D4(v22);
  *(v0 + 48) = v1;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_A4C44();
  v5 = *(v0 + 24);
  sub_40130();
  sub_81094(v7, v5, 0xD00000000000002FLL, v6 | 0x8000000000000000, v8, v9);

  v10 = sub_402A4();
  sub_7A58C(v10, v11, v12, v13, v14, v2, v3, v20);

  v15 = sub_4021C();
  v16(v15);

  v17 = sub_401EC();

  return v18(v17);
}

uint64_t sub_3AC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  v17 = *(v16 + 192);
  v39 = *(v16 + 120);
  v40 = *(v16 + 128);
  v18 = *(v16 + 200);
  sub_A4B54(59);
  *(v16 + 32) = 0;
  *(v16 + 40) = 0xE000000000000000;
  v41._countAndFlagsBits = 0xD000000000000039;
  v41._object = 0x80000000000B06C0;
  sub_A46D4(v41);
  *(v16 + 72) = v17;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_A4C44();
  v19 = *(v16 + 40);
  sub_40130();
  sub_81094(v20, v19, 0xD00000000000002FLL, 0x80000000000B04C0, v21, v22);

  v23 = sub_402A4();
  sub_7A58C(v23, v24, v25, v26, v27, v39, v18, v40);

  v28 = sub_4021C();
  v29(v28);

  sub_401EC();
  sub_25660();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, 0, 0xE000000000000000, a14, a15, a16);
}

uint64_t sub_3AD5C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_3AE48;

  return v5();
}

uint64_t sub_3AE48()
{
  sub_AB40();
  v4 = v3;
  sub_402C4();
  sub_AAA8();
  v6 = *(v5 + 16);
  v7 = *v2;
  sub_5930();
  *v8 = v7;

  *v6 = v1;
  *(v6 + 8) = v0;
  *(v6 + 16) = v4;
  sub_AA9C();

  return v9();
}

uint64_t sub_3AF54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3AF8C()
{
  sub_AB40();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_18584(v4);
  *v5 = v6;
  v5[1] = sub_A648;

  return sub_3AD5C(v2, v3);
}

uint64_t sub_3B038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  *(v5 + 56) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  return _swift_task_switch(sub_3B060, 0, 0);
}

uint64_t sub_3B060()
{
  sub_AB40();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_3B148;
  sub_40314();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v7);
}

uint64_t sub_3B148()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    sub_40210();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_40330();

    return v10();
  }
}

uint64_t sub_3B26C()
{
  sub_5950();

  sub_AA9C();

  return v0();
}

uint64_t sub_3B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = a4;
  *(v5 + 48) = a5;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return sub_58F8();
}

uint64_t sub_3B2E4()
{
  sub_25654();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_4BF0(&qword_DD4C0, &qword_A9250);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_3B3FC;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16);
}

uint64_t sub_3B3FC()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_40210();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
    v12 = *(v5 + 8);

    return v12(v10, v11);
  }
}

uint64_t sub_3B524()
{
  sub_5950();

  sub_AA9C();

  return v0();
}

uint64_t sub_3B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return sub_58F8();
}

uint64_t sub_3B59C()
{
  sub_AB40();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_3B684;
  sub_40314();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v7);
}

uint64_t sub_3B684()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_40210();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = *(v3 + 80);
    v11 = *(v5 + 8);

    return v11(v10);
  }
}

uint64_t sub_3B7A8()
{
  sub_5950();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_3B80C(void *a1)
{
  [a1 coordinate];
  if (v2 == 0.0 || (sub_40480(), v3 == 0.0))
  {
    sub_40480();
    if (v4 == 0.0 && (sub_40480(), v5 == 0.0))
    {

      return 1;
    }

    else
    {
      sub_40480();
      v8 = v7;

      if (v8 == 0.0)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_3B8A0()
{
  sub_5950();
  sub_40444(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_4BF0(&qword_DD490, &qword_A91D0);
  sub_10A88(v8);
  v0[9] = sub_10AAC();
  v9 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  sub_10A88(v9);
  v0[10] = sub_10AAC();
  v10 = sub_A2EA4();
  v0[11] = v10;
  sub_5940(v10);
  v0[12] = v11;
  v0[13] = *(v12 + 64);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_3BB44()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_3BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_40414();
  sub_40178();
  v14 = *(v11 + 72);
  v15 = sub_4BF0(&qword_DD4A0, &qword_A9200);
  v16 = sub_1092C();
  result = sub_CF2C(v16, v17, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_40458();
    sub_3FAE8(v14, v19, &qword_DD4A0, &qword_A9200);
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4894();
    (*(v13 + 8))(v10, v12);

    sub_AA9C();
    sub_403FC();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  return result;
}

uint64_t sub_3BD50()
{
  sub_AB40();
  v0 = sub_402D0();
  v1(v0);

  sub_AA9C();

  return v2();
}

uint64_t sub_3BDE8()
{
  sub_5950();
  sub_40444(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_4BF0(&qword_DD4A8, &qword_A9210);
  sub_10A88(v8);
  v0[9] = sub_10AAC();
  v9 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  sub_10A88(v9);
  v0[10] = sub_10AAC();
  v10 = sub_A2EA4();
  v0[11] = v10;
  sub_5940(v10);
  v0[12] = v11;
  v0[13] = *(v12 + 64);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_3C08C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_3C184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_40414();
  sub_40178();
  v14 = *(v11 + 72);
  v15 = sub_4BF0(&qword_DD4B8, &qword_A9240);
  v16 = sub_1092C();
  result = sub_CF2C(v16, v17, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_40458();
    sub_3FAE8(v14, v19, &qword_DD4B8, &qword_A9240);
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4894();
    (*(v13 + 8))(v10, v12);

    sub_AA9C();
    sub_403FC();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  return result;
}

uint64_t sub_3C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a6;
  *(v6 + 40) = a1;
  sub_4BF0(&qword_DB5B8, &qword_AAD60);
  *(v6 + 88) = swift_task_alloc();
  v7 = sub_A2EA4();
  *(v6 + 96) = v7;
  v8 = *(v7 - 8);
  *(v6 + 104) = v8;
  *(v6 + 112) = *(v8 + 64);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_3C3B0, 0, 0);
}

uint64_t sub_3C54C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

void sub_3C644()
{
  v2 = *(v0 + 32);
  if (v2 == 255)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4894();
    (*(v5 + 8))(v3, v4);

    sub_40330();

    v8(v7, v6, v2);
  }
}

uint64_t sub_3C750()
{
  sub_AB40();
  v0 = sub_402D0();
  v1(v0);

  sub_AA9C();

  return v2();
}

uint64_t sub_3C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a6;
  *(v6 + 32) = a1;
  sub_4BF0(&qword_DB5B8, &qword_AAD60);
  *(v6 + 80) = swift_task_alloc();
  v7 = sub_A2EA4();
  *(v6 + 88) = v7;
  v8 = *(v7 - 8);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 + 64);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_3C8F8, 0, 0);
}

uint64_t sub_3CA98()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

void sub_3CB90()
{
  v1 = *(v0 + 24);
  if (v1 == 255)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v0 + 16);
    sub_4BF0(&qword_DD4C0, &qword_A9250);
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4894();
    (*(v4 + 8))(v2, v3);

    v6 = *(v0 + 8);

    v6(v5, v1 & 1);
  }
}

uint64_t sub_3CCB0()
{
  sub_AB40();
  v0 = sub_402D0();
  v1(v0);

  sub_AA9C();

  return v2();
}

uint64_t sub_3CD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a6;
  *(v6 + 16) = a1;
  sub_4BF0(&qword_DB5B8, &qword_AAD60);
  *(v6 + 64) = swift_task_alloc();
  v7 = sub_A2EA4();
  *(v6 + 72) = v7;
  v8 = *(v7 - 8);
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 + 64);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_3CE58, 0, 0);
}

uint64_t sub_3CFF4()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

void sub_3D0EC()
{
  sub_40178();
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    sub_4BF0(&qword_DBB90, &qword_A7540);
    sub_A4894();
    (*(v4 + 8))(v2, v3);

    v5 = *(v0 + 8);

    v5(v1 & 1);
  }
}

uint64_t sub_3D1E8()
{
  sub_AB40();
  v1 = sub_402D0();
  v2(v1);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_3D280(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_3D378;

  return v8(a1);
}

uint64_t sub_3D378()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_AA9C();

  return v3();
}

uint64_t sub_3D45C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_3FF68;

  return v8(a1);
}

uint64_t sub_3D554(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_3D644;

  return v6(v3 + 16);
}

uint64_t sub_3D644()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_40210();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_3D758(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_3D848;

  return v6(v3 + 16);
}

uint64_t sub_3D848()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_40210();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_3D950(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_3DA40;

  return v6(v3 + 24);
}

uint64_t sub_3DA40()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  sub_40210();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_3DB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v12 = sub_10A88(v11);
  __chkstk_darwin(v12);
  v14 = v24 - v13;
  sub_18380(a1, v24 - v13);
  v15 = sub_A4814();
  v16 = sub_1092C();
  if (sub_CF2C(v16, v17, v15) == 1)
  {
    sub_183F0(v14);
  }

  else
  {
    sub_A4804();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = sub_A47C4();
    v20 = v19;
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = *v8;
  sub_4BF0(a4, a5);
  v22 = (v20 | v18);
  if (v20 | v18)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v18;
    v25[3] = v20;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v21;
  swift_task_create();
}

uint64_t sub_3DCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v9 = sub_10A88(v8);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  sub_18380(a1, v21 - v10);
  v12 = sub_A4814();
  v13 = sub_1092C();
  if (sub_CF2C(v13, v14, v12) == 1)
  {
    sub_183F0(v11);
  }

  else
  {
    sub_A4804();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_A47C4();
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *v5;
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

uint64_t sub_3DEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_3DEC8, 0, 0);
}

uint64_t sub_3DEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_4046C();
  sub_40178();
  sub_A2E34();
  if (v10 <= 0.0)
  {
    sub_A4854();
    if (qword_DA9D0 == -1)
    {
LABEL_10:
      v20 = sub_4033C();
      sub_48A4(v20, qword_E0BA0);
      sub_400B8();

      sub_3FFF4();
      sub_3FFCC("] Asynchronous Task has TimedOut!");
      sub_3FF78(a10, "ask has TimedOut!");

      v21 = sub_3EE98();
      v22 = sub_394DC(&type metadata for TimedOutError, v21);
      sub_40374(v22);
      sub_AA9C();
      sub_403E8();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
    }

LABEL_16:
    sub_58D8(&qword_DA9D0);
    goto LABEL_10;
  }

  sub_4011C(v10, 1000000000.0);
  if (!v12 & v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_403B4();
  if (v13 ^ v14 | v12)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_401A4();
  if (!v13)
  {
    goto LABEL_15;
  }

  v15 = swift_task_alloc();
  v16 = sub_403C0(v15);
  *v16 = v17;
  sub_401CC(v16);
  sub_403E8();

  return static Task<>.sleep(nanoseconds:)(v18);
}

uint64_t sub_3E05C()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    sub_AA9C();

    return v7();
  }

  else
  {
    sub_40210();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_3E170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_4046C();
  sub_40178();
  v11 = *(v10 + 48);
  sub_A4854();
  if (!v11)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v12 = sub_4033C();
    sub_48A4(v12, qword_E0BA0);
    sub_400B8();

    sub_3FFF4();
    sub_3FFCC("] Asynchronous Task has TimedOut!");
    sub_3FF78(a10, "ask has TimedOut!");

    v13 = sub_3EE98();
    v14 = sub_394DC(&type metadata for TimedOutError, v13);
    sub_40374(v14);
  }

  sub_AA9C();
  sub_403E8();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_3E260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_3E284, 0, 0);
}

uint64_t sub_3E284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_4046C();
  sub_40178();
  sub_A2E34();
  if (v10 <= 0.0)
  {
    sub_A4854();
    if (qword_DA9D0 == -1)
    {
LABEL_10:
      v20 = sub_4033C();
      sub_48A4(v20, qword_E0BA0);
      sub_400B8();

      sub_3FFF4();
      sub_3FFCC("] Asynchronous Task has TimedOut!");
      sub_3FF78(a10, "ask has TimedOut!");

      v21 = sub_3EE98();
      v22 = sub_394DC(&type metadata for TimedOutError, v21);
      sub_40374(v22);
      sub_AA9C();
      sub_403E8();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
    }

LABEL_16:
    sub_58D8(&qword_DA9D0);
    goto LABEL_10;
  }

  sub_4011C(v10, 1000000000.0);
  if (!v12 & v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_403B4();
  if (v13 ^ v14 | v12)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_401A4();
  if (!v13)
  {
    goto LABEL_15;
  }

  v15 = swift_task_alloc();
  v16 = sub_403C0(v15);
  *v16 = v17;
  sub_401CC(v16);
  sub_403E8();

  return static Task<>.sleep(nanoseconds:)(v18);
}

uint64_t sub_3E418()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    sub_AA9C();

    return v7();
  }

  else
  {
    sub_40210();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_3E52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_3DEC8, 0, 0);
}

uint64_t sub_3E550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_3E574, 0, 0);
}

uint64_t sub_3E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_4046C();
  sub_40178();
  sub_A2E34();
  if (v10 <= 0.0)
  {
    sub_A4854();
    if (qword_DA9D0 == -1)
    {
LABEL_10:
      v20 = sub_4033C();
      sub_48A4(v20, qword_E0BA0);
      sub_400B8();

      sub_3FFF4();
      sub_3FFCC("] Asynchronous Task has TimedOut!");
      sub_3FF78(a10, "ask has TimedOut!");

      v21 = sub_3EE98();
      v22 = sub_394DC(&type metadata for TimedOutError, v21);
      sub_40374(v22);
      sub_40364();
      sub_403E8();

      return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
    }

LABEL_16:
    sub_58D8(&qword_DA9D0);
    goto LABEL_10;
  }

  sub_4011C(v10, 1000000000.0);
  if (!v12 & v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_403B4();
  if (v13 ^ v14 | v12)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_401A4();
  if (!v13)
  {
    goto LABEL_15;
  }

  v15 = swift_task_alloc();
  v16 = sub_403C0(v15);
  *v16 = v17;
  sub_401CC(v16);
  sub_403E8();

  return static Task<>.sleep(nanoseconds:)(v18);
}

uint64_t sub_3E708()
{
  sub_5950();
  sub_AAA8();
  sub_1A690();
  *v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_40364();

    return v8(v7);
  }

  else
  {
    sub_40210();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_3E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_4046C();
  sub_40178();
  v11 = *(v10 + 48);
  sub_A4854();
  if (!v11)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8(&qword_DA9D0);
    }

    v12 = sub_4033C();
    sub_48A4(v12, qword_E0BA0);
    sub_400B8();

    sub_3FFF4();
    sub_3FFCC("] Asynchronous Task has TimedOut!");
    sub_3FF78(a10, "ask has TimedOut!");

    v13 = sub_3EE98();
    v14 = sub_394DC(&type metadata for TimedOutError, v13);
    sub_40374(v14);
  }

  sub_40364();
  sub_403E8();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_3E90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_3E9DC;

  return sub_3C298(a2, a3, a4, a5, a6, a7);
}

void sub_3E9DC()
{
  sub_25654();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_AAA8();
  v9 = v8;
  sub_40168();
  *v10 = v9;
  v11 = *v1;
  sub_5930();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v9 + 16);
    *v13 = v7;
    *(v13 + 8) = v5;
    *(v13 + 16) = v3;
  }

  sub_40498();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_3EAE4()
{
  sub_40178();
  sub_401B4();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v4.n128_f64[0] = sub_400DC(v1);

  return v3(v4);
}

uint64_t sub_3EB84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_3FF44;

  return sub_3D554(a2, a3, a4);
}

void sub_3EC40()
{
  sub_25654();
  sub_401DC();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  sub_40070();
  sub_40498();

  __asm { BR              X5 }
}

uint64_t sub_3ECE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_3FF44;

  return sub_3E52C(a2, a3, a4, a5, a6);
}

uint64_t sub_3EDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_40414();
  sub_40178();
  v10 = sub_403CC();
  sub_5940(v10);
  sub_40054();
  v11 = swift_task_alloc();
  v12 = sub_40354(v11);
  *v12 = v13;
  v12[1] = sub_18540;
  sub_400A0();
  sub_403FC();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

unint64_t sub_3EE98()
{
  result = qword_DD480;
  if (!qword_DD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD480);
  }

  return result;
}

uint64_t sub_3EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_3EFBC;

  return sub_3C7E0(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_3EFBC()
{
  sub_25654();
  v3 = v2;
  v5 = v4;
  sub_AAA8();
  v7 = v6;
  sub_40168();
  *v8 = v7;
  v9 = *v1;
  sub_5930();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    *(v11 + 8) = v3 & 1;
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_3F0C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_3FF70;

  return sub_3D758(a2, a3, a4);
}

uint64_t sub_3F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_3FF70;

  return sub_3E52C(a2, a3, a4, a5, a6);
}

uint64_t sub_3F248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_3F318;

  return sub_3CD40(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_3F318()
{
  sub_AB40();
  v3 = v2;
  sub_AAA8();
  v5 = v4;
  sub_40168();
  *v6 = v5;
  v7 = *v1;
  sub_5930();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3 & 1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_3F414(uint64_t a1)
{
  sub_40178();
  sub_401B4();
  v1 = swift_task_alloc();
  v2 = sub_18584(v1);
  *v2 = v3;
  v5.n128_f64[0] = sub_400DC(v2);

  return v4(v5);
}

uint64_t sub_3F4B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_3FF74;

  return sub_3D950(a2, a3, a4);
}

void sub_3F56C()
{
  sub_25654();
  sub_401DC();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  sub_40070();
  sub_40498();

  __asm { BR              X5 }
}

uint64_t sub_3F60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_3FF74;

  return sub_3E550(a2, a3, a4, a5, a6);
}

uint64_t sub_3F6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_40414();
  sub_40178();
  v10 = sub_403CC();
  sub_5940(v10);
  sub_40054();
  v11 = swift_task_alloc();
  v12 = sub_40354(v11);
  *v12 = v13;
  v12[1] = sub_18540;
  sub_400A0();
  sub_403FC();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_3F7C0()
{
  sub_25654();
  sub_401DC();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  v3 = sub_40070();

  return sub_3D280(v3, v4, v5, v6);
}

uint64_t sub_3F858(uint64_t a1)
{
  sub_40178();
  v3 = sub_A2EA4();
  sub_5940(v3);
  sub_40054();
  v4 = swift_task_alloc();
  v5 = sub_18584(v4);
  *v5 = v6;
  v5[1] = sub_18540;
  v7 = sub_4008C();

  return sub_3DEA4(v7, v8, v9, v10, v1, v2);
}

uint64_t sub_3F954()
{
  sub_25654();
  sub_401DC();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  v3 = sub_40070();

  return sub_3D45C(v3, v4, v5, v6);
}

uint64_t sub_3F9EC(uint64_t a1)
{
  sub_40178();
  v3 = sub_A2EA4();
  sub_5940(v3);
  sub_40054();
  v4 = swift_task_alloc();
  v5 = sub_18584(v4);
  *v5 = v6;
  v5[1] = sub_18540;
  v7 = sub_4008C();

  return sub_3E260(v7, v8, v9, v10, v1, v2);
}

uint64_t sub_3FAE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4BF0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_3FB50(uint64_t a1)
{
  sub_40178();
  sub_401B4();
  v1 = swift_task_alloc();
  v2 = sub_18584(v1);
  *v2 = v3;
  v5.n128_f64[0] = sub_400DC(v2);

  return v4(v5);
}

uint64_t sub_3FBF0()
{
  swift_unknownObjectRelease();

  sub_40308();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_3FC2C()
{
  sub_25654();
  sub_401DC();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  sub_40070();
  sub_40498();

  __asm { BR              X5 }
}

uint64_t sub_3FCCC()
{
  v1 = sub_A2EA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_3FDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_40414();
  sub_40178();
  v10 = sub_403CC();
  sub_5940(v10);
  sub_40054();
  v11 = swift_task_alloc();
  v12 = sub_40354(v11);
  *v12 = v13;
  v12[1] = sub_18540;
  sub_400A0();
  sub_403FC();

  return v20(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

__n128 sub_3FE94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3FEA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_3FEE8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_3FF78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_81094(a1, v3, 0xD000000000000029, a2 | 0x8000000000000000, 0xD000000000000029, (v2 - 32) | 0x8000000000000000);
}

void sub_3FFCC(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000021;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_A46D4(v2);
}

void sub_3FFF4()
{
  v3._countAndFlagsBits = v1;
  v3._object = v0;

  sub_A46D4(v3);
}

uint64_t sub_40038(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1 + v1;
}

void sub_400B8()
{

  sub_A4B54(36);
}

uint64_t sub_4026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = (v13 + v14);
  *v16 = a12;
  v16[1] = a13;
}

uint64_t sub_40288(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  a1[5] = v2;
}

void sub_402DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_81094(a1, a2 | 0x8000000000000000, 0xD00000000000002FLL, v2 | 0x8000000000000000, v3, 0xE700000000000000);
}

uint64_t sub_4033C()
{

  return sub_A43D4();
}

uint64_t sub_40374(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t sub_4038C(uint64_t a1)
{

  return sub_A2E24();
}

uint64_t sub_403CC()
{

  return sub_A2EA4();
}

uint64_t sub_4042C()
{

  return swift_allocObject();
}

uint64_t sub_40444(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = a6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 32) = a7;
  *(v7 + 16) = result;
  *(v7 + 24) = a2;
  return result;
}

id sub_40480()
{
  v3 = *(v1 + 1160);

  return [v0 v3];
}

uint64_t sub_404AC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v6 = type metadata accessor for CalendarEvent(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a2 + 16);
  while (1)
  {
    if (v11 == v10)
    {
      v13 = 1;
      v14 = v17;
      return sub_A924(v14, v13, 1, v6);
    }

    sub_106FC(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9);
    v12 = a1(v9);
    if (v3)
    {
      return sub_48E30(v9, type metadata accessor for CalendarEvent);
    }

    if (v12)
    {
      break;
    }

    sub_48E30(v9, type metadata accessor for CalendarEvent);
    ++v10;
  }

  v14 = v17;
  sub_48DD4(v9, v17, type metadata accessor for CalendarEvent);
  v13 = 0;
  return sub_A924(v14, v13, 1, v6);
}

BOOL sub_40650(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for CalendarEvent(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) != 0);
  return v7 == v8;
}

uint64_t sub_40724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[231] = a5;
  v5[225] = a3;
  v5[219] = a2;
  v5[213] = a1;
  v6 = sub_4BF0(&qword_DB958, qword_A6CE0);
  sub_10A88(v6);
  v5[232] = swift_task_alloc();
  v7 = sub_A2EA4();
  v5[233] = v7;
  sub_5940(v7);
  v5[234] = v8;
  v5[235] = *(v9 + 64);
  v5[236] = swift_task_alloc();
  v5[237] = swift_task_alloc();
  v10 = sub_4BF0(&qword_DD4E8, &qword_A9300);
  sub_5940(v10);
  v5[238] = v11;
  v5[239] = *(v12 + 64);
  v5[240] = swift_task_alloc();
  v13 = swift_task_alloc();
  v5[241] = v13;
  v14 = swift_task_alloc();
  v5[242] = v14;
  *v14 = v5;
  v14[1] = sub_408F8;

  return (sub_9CD74)(v13, 0);
}

uint64_t sub_408F8()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_409DC()
{
  if (qword_DA8D0 != -1)
  {
    sub_49044(&qword_DA8D0);
  }

  v1 = *(v0 + 1928);
  v2 = *(v0 + 1920);
  v18 = *(v0 + 1904);
  v19 = *(v0 + 1912);
  v3 = *(v0 + 1896);
  v16 = v2;
  v17 = *(v0 + 1880);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1864);
  v22 = *(v0 + 1888);
  v23 = *(v0 + 1848);
  v6 = *(v0 + 1800);
  v7 = *(v0 + 1752);
  v21 = v7;
  v8 = sub_A43D4();
  *(v0 + 1944) = sub_48A4(v8, qword_DD4D0);
  sub_810AC(0xD000000000000019, 0x80000000000B0780, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000041, 0x80000000000B07D0);
  v20 = *(v4 + 16);
  v20(v3, v7, v5);
  sub_48F30(v1, v2, &qword_DD4E8, &qword_A9300);
  sub_A760(v6, v0 + 1576);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v9 + v17 + *(v18 + 80)) & ~*(v18 + 80);
  v11 = swift_allocObject();
  *(v0 + 1952) = v11;
  v12 = *(v4 + 32);
  v12(v11 + v9, v3, v5);
  sub_47C48(v16, v11 + v10, &qword_DD4E8, &qword_A9300);
  sub_AA3C((v0 + 1576), v11 + ((v19 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_4BF0(&qword_DD4F0, &qword_A9318);
  swift_asyncLet_begin();
  v20(v22, v21, v5);
  v13 = swift_allocObject();
  *(v0 + 1960) = v13;
  v12(v13 + v9, v22, v5);
  *(v13 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v14 = v23;
  sub_4BF0(&qword_DD4F8, &qword_A9330);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 1336, sub_40D00, v0 + 1296);
}

uint64_t sub_40D14()
{
  sub_49170();
  sub_40178();
  v1 = *(v0 + 1336);
  *(v0 + 1968) = v1;
  if (*(v0 + 1381) == 1)
  {
    v2 = *(v0 + 1704);
    swift_errorRetain();
    sub_810AC(0xD000000000000022, 0x80000000000B0820, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000041, 0x80000000000B07D0);
    *v2 = v1;
    sub_4BF0(&qword_DC758, &unk_A8340);
    swift_storeEnumTagMultiPayload();
    sub_490A8();
    sub_49104();

    return _swift_asyncLet_finish(v3);
  }

  else
  {
    v5 = *(v0 + 1380);
    v6 = *(v0 + 1376);
    *(v0 + 1976) = v6;
    *(v0 + 1424) = v6;
    *(v0 + 1980) = v5;
    v7 = *(v0 + 1368);
    *(v0 + 1984) = v7;
    v8 = *(v0 + 1360);
    *(v0 + 1992) = v8;
    v9 = *(v0 + 1352);
    *(v0 + 2000) = v9;
    v10 = *(v0 + 1344);
    *(v0 + 2008) = v10;
    *(v0 + 1480) = v1;
    *(v0 + 1488) = v10;
    *(v0 + 1496) = v9;
    *(v0 + 1504) = v8;
    *(v0 + 1512) = v7;
    *(v0 + 1520) = v6 & 1;
    v11.i64[0] = 0xFFFFFFFFFFLL;
    v11.i64[1] = 0xFFFFFFFFFFLL;
    v12 = vandq_s8(vdupq_n_s64(v6 | (v5 << 32)), v11);
    *v12.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v12, xmmword_A6B70), vshlq_u64(v12, xmmword_A6B60))), 0x1000100010001);
    *(v0 + 1521) = vuzp1_s8(*v12.i8, *v12.i8).u32[0];
    *(v0 + 1384) = v1;
    *(v0 + 1392) = v10;
    *(v0 + 1400) = v9;
    *(v0 + 1408) = v8;
    *(v0 + 1416) = v7;
    *(v0 + 1428) = v5;
    sub_42558(v0 + 1384, v0 + 1528);
    sub_810AC(0xD000000000000022, 0x80000000000B0820, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000041, 0x80000000000B07D0);
    sub_490A8();
    sub_49104();

    return _swift_asyncLet_get(v13, v14, v15, v16);
  }
}

uint64_t sub_40F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_49170();
  sub_40178();
  sub_49088();
  sub_11E34(v10, &qword_DD4E8, &qword_A9300);

  sub_49104();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_41058()
{
  v1 = *(v0 + 2008);
  v2 = *(v0 + 2000);
  v3 = *(v0 + 1992);
  v4 = *(v0 + 1984);
  v5 = *(v0 + 1976) | (*(v0 + 1980) << 32);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1856);
  v8 = *(v0 + 1704);
  v9 = *(v0 + 1656);
  *(v0 + 1432) = v6;
  v16 = v2;
  v17 = v1;
  *(v0 + 1440) = v1;
  *(v0 + 1448) = v2;
  v15 = v3;
  *(v0 + 1456) = v3;
  *(v0 + 1464) = v4;
  *(v0 + 1472) = v5 & 0x1010101;
  *(v0 + 1476) = (v5 & 0x101010101010101) >> 32;
  sub_432E4(v6, v1, v2, v3, v4, v5, 0);

  sub_42C28(v9, (v0 + 1432), v7);

  v10 = type metadata accessor for CalendarPreprocessingResult(0);
  sub_48F30(v7, v8 + *(v10 + 20), &qword_DB958, qword_A6CE0);
  sub_43330((v0 + 1480), v8 + *(v10 + 24));
  sub_43AE8(v6, v17, v16, v15, v4, v5, 0);
  sub_11E34(v7, &qword_DB958, qword_A6CE0);
  v11 = *(v0 + 1461);
  v12 = *(v0 + 1448);
  *v8 = *(v0 + 1432);
  v8[1] = v12;
  *(v8 + 29) = v11;
  sub_4BF0(&qword_DC758, &unk_A8340);
  swift_storeEnumTagMultiPayload();
  v13 = sub_490A8();

  return _swift_asyncLet_finish(v13);
}

BOOL sub_41254(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_A2DB4() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_41328()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_DD4D0);
  v1 = sub_48A4(v0, qword_DD4D0);
  if (qword_DA9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0BD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_413F0()
{
  result = sub_7B510(&off_CF080);
  qword_E08D0 = result;
  return result;
}

uint64_t sub_41418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  v8 = swift_task_alloc();
  *(v4 + 72) = v8;
  *v8 = v4;
  v8[1] = sub_414D0;

  return sub_41924(v4 + 16, a2, a3, a4);
}

uint64_t sub_414D0()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_415B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 30) = *(v0 + 46);
  *v1 = v2;
  v1[1] = v3;
  return sub_49070();
}

uint64_t sub_415CC()
{
  v1 = sub_A2EA4();
  sub_591C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = sub_4BF0(&qword_DD4E8, &qword_A9300);
  sub_5940(v8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  v14 = *(v3 + 8);
  v14(v0 + v5, v1);
  v15 = v0 + v11;
  v16 = type metadata accessor for DBCalendarState(0);
  if (!sub_CF2C(v0 + v11, 1, v16))
  {
    v21 = v13;
    v14(v0 + v11, v1);

    v17 = *(v16 + 24);
    if (!sub_CF2C(v15 + v17, 1, v1))
    {
      v14(v15 + v17, v1);
    }

    v18 = *(v16 + 44);
    v13 = v21;
    if (!sub_CF2C(v15 + v18, 1, v1))
    {
      v14(v15 + v18, v1);
    }
  }

  v19 = (v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_761C((v0 + v19));

  return _swift_deallocObject(v0, v19 + 40, v4 | v10 | 7);
}

uint64_t sub_417B8(uint64_t a1)
{
  v3 = v2;
  v5 = sub_A2EA4();
  sub_5940(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = sub_4BF0(&qword_DD4E8, &qword_A9300);
  sub_5940(v10);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2B8E8;

  return sub_41418(a1, v1 + v7, v1 + v12, v1 + v14);
}

uint64_t sub_41924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_A3004();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_A2EA4();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_41A44, 0, 0);
}

uint64_t sub_41A44()
{
  sub_5950();
  if (qword_DA8D0 != -1)
  {
    sub_49044(&qword_DA8D0);
  }

  v1 = sub_A43D4();
  *(v0 + 192) = sub_48A4(v1, qword_DD4D0);
  sub_810AC(0xD000000000000018, 0x80000000000B0B30, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0B50);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_41B64;

  return sub_6819C();
}

uint64_t sub_41B64()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = v3;
  *(v1 + 62) = v4;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

id sub_41C54()
{
  v4 = *(v0 + 208);
  v5 = "fetching upcoming events";
  if (*(v0 + 62))
  {
    sub_490B8();
    sub_A4B54(42);

    swift_getErrorValue();
    v85._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v85);

    v6 = 0x80000000000B0C20;
    sub_490E0();
    sub_810AC(v7, v8, v9, v10, v11, v12);

    sub_490C8();
    v13 = *(v0 + 208);
  }

  else
  {
    v15 = *(v0 + 120);

    sub_490E0();
    sub_810AC(v16, v17, v18, v19, v20, v21);
    v2 = sub_43B34(v15, v4);
    v3 = v22;
    v23 = swift_task_alloc();
    *(v23 + 16) = v15;

    v6 = 0;
    sub_61CC4(sub_48DA0, v23, v2);
    v25 = v24;

    if (sub_1BF68())
    {
      sub_1BF70();
      if ((v25 & 0xC000000000000001) != 0)
      {

        v27 = sub_A4B74();
      }

      else
      {
        v26 = *(v25 + 32);

        v27 = v26;
      }

      v83 = v27;
      v28 = sub_44130(v25);
      sub_490B8();
      sub_A4B54(37);

      v78 = v28[2];
      v79 = v28;
      *(v0 + 88) = v78;
      v86._countAndFlagsBits = sub_A4E24();
      sub_A46D4(v86);

      v87._object = 0x80000000000B0BC0;
      v87._countAndFlagsBits = 0xD00000000000001DLL;
      sub_A46D4(v87);
      sub_490E0();
      sub_810AC(v29, v30, v31, v32, v33, v34);

      v35 = sub_44130(v3);
      sub_490B8();
      sub_A4B54(37);

      v76 = v35[2];
      v77 = v35;
      *(v0 + 96) = v76;
      v88._countAndFlagsBits = sub_A4E24();
      sub_A46D4(v88);

      v89._object = 0x80000000000B0BE0;
      v89._countAndFlagsBits = 0xD00000000000001DLL;
      sub_A46D4(v89);
      sub_490E0();
      sub_810AC(v36, v37, v38, v39, v40, v41);

      v2 = sub_1BF68();
      result = [v83 startDate];
      if (result)
      {
        v43 = result;
        v44 = *(v0 + 208);
        v45 = *(v0 + 176);
        v46 = *(v0 + 184);
        v47 = *(v0 + 160);
        v48 = *(v0 + 144);
        v49 = *(v0 + 152);
        v81 = *(v0 + 168);
        v82 = *(v0 + 128);
        v80 = *(v0 + 120);

        sub_5068(v44, 0);

        sub_A2E74();

        sub_A2FD4();
        v50 = sub_A2F54();
        (*(v49 + 8))(v47, v48);
        (*(v45 + 8))(v46, v81);
        v51 = sub_79D74(v80);
        v52 = sub_448EC(1, v2, v82);

        v53 = sub_1BF68();

        v54 = v53 - v2;
        if (!__OFSUB__(v53, v2))
        {
          v55 = *(v0 + 208);
          v56 = (v51 - 6) < 3u;
          v57 = v54 > 0;
          v13 = v79;
          v58 = sub_45038(1, v79, *(v0 + 128));
          sub_5068(v55, 0);

          v14 = 0;
          v59 = 0x10000;
          if (!v52)
          {
            v59 = 0;
          }

          v60 = 0x100000000;
          if (!v58)
          {
            v60 = 0;
          }

          v6 = v59 & 0xFFFFFFFFFFFFFFFELL | v50 & 1 | (v56 << 8) | (v57 << 24) | v60;
          v1 = v77;
          v5 = v78;
          v3 = v76;
          goto LABEL_16;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }

    v61 = *(v0 + 208);
    v62 = sub_1BF68();

    sub_5068(v61, 0);
    v1 = *(v0 + 208);
    if (v62)
    {
      v63 = *(v0 + 120);
      v64 = *(v0 + 128);

      sub_43E5C(v63, v3, v64, v0 + 16);
      v13 = *(v0 + 16);
      v65 = *(v0 + 24);
      v5 = *(v0 + 32);
      v2 = *(v0 + 40);
      v6 = *(v0 + 56) | (*(v0 + 60) << 32);
      v14 = *(v0 + 61);
      v3 = *(v0 + 48);

      v66 = v1;
      v1 = v65;
      sub_5068(v66, 0);
      goto LABEL_16;
    }

    swift_bridgeObjectRelease_n();

    sub_490E0();
    sub_810AC(v69, v70, v71, v72, v73, v74);
    sub_24824();
    v13 = swift_allocError();
    *v75 = 2;
    sub_5068(v1, 0);
    sub_490C8();
  }

  v14 = 1;
LABEL_16:
  v67 = *(v0 + 112);

  *v67 = v13;
  *(v67 + 8) = v1;
  *(v67 + 16) = v5;
  *(v67 + 24) = v2;
  *(v67 + 32) = v3;
  *(v67 + 44) = BYTE4(v6);
  *(v67 + 40) = v6;
  *(v67 + 45) = v14;
  v68 = *(v0 + 8);

  return v68();
}