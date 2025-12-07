uint64_t sub_100010C88(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100010D14(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100010D28(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ModelMetadataItem(0);
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

uint64_t sub_100010E0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F48, &unk_10001B9B0);
  v34 = v4;
  result = sub_100019F28();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v33 = v5;
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
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v35 = *(v20 + 8 * v19);
      if ((v34 & 1) == 0)
      {
        v22 = v21;
      }

      sub_100019D08();
      sub_10001A008();
      sub_100019D38();
      v23 = sub_10001A038();

      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1000110C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F48, &unk_10001B9B0);
  v2 = *v0;
  v3 = sub_100019F18();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

void *sub_10001124C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1000113A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028DE0, &unk_10001B960);
    v3 = sub_100019F38();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000EDF8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000114B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100011500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028DD0, &qword_10001B950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100019958();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100011654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100019958();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100011714(uint64_t a1)
{
  sub_100019958();
  if (v1 <= 0x3F)
  {
    sub_100011974(319, &qword_100028E50, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100011974(319, &qword_100028E58, &type metadata for String, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100011A20(319, &qword_100028E60, &qword_100028E68, &qword_10001B988, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_100011974(319, &qword_100028E70, &type metadata for Any + 8, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_1000119C4();
            if (v6 <= 0x3F)
            {
              sub_100011A20(319, &qword_100028E80, &qword_100028E88, &qword_10001B990, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_100011A84(319, &qword_100028E90, &qword_100028DC8, MIOModelLayer_ptr);
                if (v8 <= 0x3F)
                {
                  sub_100011A84(319, &unk_100028E98, &qword_100028C80, MIOFeatureDescription_ptr);
                  if (v9 <= 0x3F)
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
}

void sub_100011974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000119C4()
{
  if (!qword_100028E78)
  {
    v0 = sub_100019CA8();
    if (!v1)
    {
      atomic_store(v0, &qword_100028E78);
    }
  }
}

void sub_100011A20(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_100011A84(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_10000A8A4(255, a3, a4);
    v5 = sub_100019DC8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100011ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F18, &qword_10001B998);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F20, &qword_10001B9A0);
  sub_1000199A8();
  v25 = a1;
  v26 = a2;
  strcpy(v24, "MLModelType_");
  BYTE5(v24[1]) = 0;
  HIWORD(v24[1]) = -5120;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_100004B2C();
  v8 = sub_100019E48();
  v10 = v9;
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || v8 == 0x44494C41564E49 && v9 == 0xE700000000000000 || (v12 = v8, (sub_100019F78() & 1) != 0))
  {
    (*(v5 + 8))(v7, v4);

    return 0;
  }

  else
  {
    v24[0] = v12;
    v24[1] = v10;
    sub_100012038();
    sub_10001208C();
    sub_10001225C(&qword_100028F38, &qword_100028F18, &qword_10001B998, &protocol conformance descriptor for Regex<A>);
    sub_100019DD8();

    v14 = sub_100019E38();
    v16 = v15;

    v25 = v14;
    v26 = v16;
    v24[0] = 7171143;
    v24[1] = 0xE300000000000000;
    v22 = 5065799;
    v23 = 0xE300000000000000;
    v17 = sub_100019E48();
    v19 = v18;

    v25 = v17;
    v26 = v19;
    strcpy(v24, "Ml Program");
    BYTE3(v24[1]) = 0;
    HIDWORD(v24[1]) = -369098752;
    v22 = 0x72676F7250204C4DLL;
    v23 = 0xEA00000000006D61;
    v20 = sub_100019E48();

    (*(v5 + 8))(v7, v4);
    return v20;
  }
}

uint64_t sub_100011E9C(uint64_t a1, void *a2)
{
  strcpy(v11, "MLModelType_");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v12._countAndFlagsBits = v2;
  v12._object = v3;
  sub_100019D48(v12);

  sub_100011ADC(v11[0], v11[1]);
  if (!v4)
  {
    if (qword_1000288D8 != -1)
    {
      swift_once();
    }
  }

  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10002B930;
  v6 = sub_100019CD8();

  v7 = sub_100019CD8();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_100019D08();
  return v9;
}

unint64_t sub_100012038()
{
  result = qword_100028F28;
  if (!qword_100028F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F28);
  }

  return result;
}

unint64_t sub_10001208C()
{
  result = qword_100028F30;
  if (!qword_100028F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F30);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100012134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001219C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelMetadataItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012200(uint64_t a1)
{
  v2 = type metadata accessor for ModelMetadataItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001225C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1000122A8(char a1)
{
  result = 0x6761542064726F57;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6E656D6D6F636552;
      break;
    case 9:
      result = 0x725420656C797453;
      break;
    case 10:
      v3 = 5;
      goto LABEL_21;
    case 11:
      v3 = 10;
LABEL_21:
      result = v3 | 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0x6553206567616D49;
      break;
    case 14:
      result = 0x7473452065736F50;
      break;
    case 15:
      result = 0x41512074726542;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0xD000000000000020;
      break;
    case 18:
      if (qword_1000288D8 != -1)
      {
        swift_once();
      }

      v4 = qword_10002B9A0;

      result = v4;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t MLPreviewType.rawValue.getter(char a1)
{
  result = 0x616C436567616D69;
  switch(a1)
  {
    case 1:
      result = 0x73616C4374786574;
      break;
    case 2:
    case 12:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x65447463656A626FLL;
      break;
    case 4:
      result = 0x6767615464726F77;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6E656D6D6F636572;
      break;
    case 8:
      result = 0x616C43646E756F73;
      break;
    case 9:
      result = 0x617254656C797473;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6765536567616D69;
      break;
    case 14:
      result = 0x6974734565736F70;
      break;
    case 15:
      result = 0x415174726562;
      break;
    case 16:
      result = 0x7473456874706564;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100012858(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MLPreviewType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MLPreviewType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100019F78();
  }

  return v8 & 1;
}

Swift::Int sub_1000128E0()
{
  v1 = *v0;
  sub_10001A008();
  MLPreviewType.rawValue.getter(v1);
  sub_100019D38();

  return sub_10001A038();
}

uint64_t sub_100012944(uint64_t a1)
{
  MLPreviewType.rawValue.getter(*v1);
  sub_100019D38();
}

Swift::Int sub_100012998(uint64_t a1)
{
  v2 = *v1;
  sub_10001A008();
  MLPreviewType.rawValue.getter(v2);
  sub_100019D38();

  return sub_10001A038();
}

unint64_t sub_100012AB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100012AE8@<X0>(unint64_t *a1@<X8>)
{
  result = MLPreviewType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100019F88();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100012B6C()
{
  result = qword_100028F50;
  if (!qword_100028F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F50);
  }

  return result;
}

unint64_t sub_100012BC4()
{
  result = qword_100028F58;
  if (!qword_100028F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028F60, &qword_10001BA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLPreviewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLPreviewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100012D94()
{
  result = qword_100028F68;
  if (!qword_100028F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F68);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100012DFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100012E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100012FF0()
{
  result = qword_100028F70;
  if (!qword_100028F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F70);
  }

  return result;
}

Swift::Int sub_10001305C()
{
  v1 = *v0;
  sub_10001A008();
  sub_10001A018(v1);
  return sub_10001A038();
}

Swift::Int sub_1000130D0(uint64_t a1)
{
  v2 = *v1;
  sub_10001A008();
  sub_10001A018(v2);
  return sub_10001A038();
}

uint64_t sub_100013150(__int128 *a1)
{
  v1 = a1[5];
  v15 = a1[4];
  v16 = v1;
  v17 = a1[6];
  v18 = *(a1 + 14);
  v2 = a1[1];
  v11 = *a1;
  v12 = v2;
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v10 = sub_100004EFC();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C58, &qword_10001B450);
  v5 = sub_100019988();
  v6 = sub_100006304();
  v7 = sub_1000062B0();
  v8 = sub_100006368();
  return sub_100019C58(&v10, sub_100006018, 0, v4, v5, &type metadata for MultiValueRowView, v6, v7, v8);
}

uint64_t sub_100013234()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C40, &qword_10001B448);
  sub_10000622C();
  return sub_100019C78();
}

unint64_t sub_1000132DC()
{
  result = qword_100028F78;
  if (!qword_100028F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028F80, &qword_10001BD08);
    sub_10000622C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F78);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100013380(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000133C8(uint64_t result, int a2, int a3)
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

uint64_t sub_10001343C(uint64_t a1)
{
  v8 = *(a1 + 16);

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028FA0, &qword_10001BDB8);
  v2 = sub_100019988();
  v3 = type metadata accessor for InputOutputView(0);
  v4 = sub_10001225C(&qword_100028FA8, &qword_100028FA0, &qword_10001BDB8, &protocol conformance descriptor for [A]);
  v5 = sub_10001380C(&qword_100028F98, type metadata accessor for InputOutputView, &unk_10001BDD8);
  v6 = sub_10001380C(&qword_100028FB0, type metadata accessor for InputOutput, &unk_10001BF54);
  return sub_100019C58(&v8, sub_10001358C, 0, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100013594@<X0>(uint64_t a2@<X8>)
{
  sub_100004B2C();

  result = sub_100019B88();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100013600()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C38, &qword_10001B440);
  sub_100019C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F88, &qword_10001BDB0);
  sub_10001370C();
  return sub_100019C68();
}

unint64_t sub_10001370C()
{
  result = qword_100028F90;
  if (!qword_100028F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028F88, &qword_10001BDB0);
    sub_10001380C(&qword_100028F98, type metadata accessor for InputOutputView, &unk_10001BDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F90);
  }

  return result;
}

uint64_t type metadata accessor for InputOutputView(uint64_t a1)
{
  result = qword_100029010;
  if (!qword_100029010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001380C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100013854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOutput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000138CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOutput(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001394C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOutput(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000139BC(uint64_t a1)
{
  result = type metadata accessor for InputOutput(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100013A2C()
{
  result = qword_100029048;
  if (!qword_100029048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029050, &qword_10001BDD0);
    sub_10001370C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029048);
  }

  return result;
}

void sub_100013AE0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019AB8();
  v19 = 1;
  sub_100013C10(v2, &v13);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v20 = v13;
  v25[1] = v14;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[0] = v13;
  sub_100013CDC(&v20, v12);
  sub_100013D4C(v25);
  *&v18[23] = v21;
  *&v18[39] = v22;
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[7] = v20;
  v5 = v19;
  LOBYTE(v2) = sub_100019AE8();
  sub_100019A38();
  v6 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v6;
  *(a1 + 81) = *&v18[64];
  v7 = *&v18[16];
  *(a1 + 17) = *v18;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 96) = *&v18[79];
  *(a1 + 33) = v7;
  *(a1 + 104) = v2;
  *(a1 + 112) = v8;
  *(a1 + 120) = v9;
  *(a1 + 128) = v10;
  *(a1 + 136) = v11;
  *(a1 + 144) = 0;
}

uint64_t sub_100013C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InputOutput(0);
  v5 = (a1 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  v8 = (a1 + v4[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (a1 + v4[7]);
  v12 = *v11;
  v13 = v11[1];
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0x4018000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0x7470697263736544;
  *(a2 + 56) = 0xEB000000006E6F69;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  swift_bridgeObjectRetain_n();
}

uint64_t sub_100013CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029058, &qword_10001BE28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029058, &qword_10001BE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100013DB8()
{
  result = qword_100029060;
  if (!qword_100029060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029068, &qword_10001BE30);
    sub_10001225C(&qword_100029070, &qword_100029078, &unk_10001BE38, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029060);
  }

  return result;
}

uint64_t sub_100013E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100013F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for QLModelRootView(uint64_t a1)
{
  result = qword_1000290D8;
  if (!qword_1000290D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013FCC(uint64_t a1)
{
  result = type metadata accessor for ModelDataViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100014054@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a1;
  v60 = a2;
  v3 = sub_100019A48();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019A98();
  v56 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029118, &qword_10001BEB8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v49 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029120, &qword_10001BEC0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029128, &qword_10001BEC8);
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = __chkstk_darwin(v14);
  v57 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = (&v49 - v17);
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029130, &qword_10001BED0);
  sub_10001225C(&qword_100029138, &qword_100029130, &qword_10001BED0, &protocol conformance descriptor for TupleView<A>);
  sub_100019B48();
  sub_100019A88();
  v19 = sub_10001225C(&qword_100029140, &qword_100029118, &qword_10001BEB8, &protocol conformance descriptor for List<A, B>);
  sub_100019BD8();
  v56[1](v7, v5);
  (*(v9 + 8))(v11, v8);
  v20 = v53;
  v21 = v54;
  v22 = v55;
  (*(v54 + 104))(v53, enum case for Prominence.increased(_:), v55);
  v62 = v8;
  v63 = v5;
  v64 = v19;
  v65 = &protocol witness table for SidebarListStyle;
  swift_getOpaqueTypeConformance2();
  v56 = v18;
  v23 = v51;
  sub_100019BC8();
  (*(v21 + 8))(v20, v22);
  (*(v52 + 8))(v13, v23);
  v24 = *(v50 + *(type metadata accessor for ModelDataViewModel(0) + 84));
  if (!v24)
  {
    v55 = 0;
    v34 = 0;
LABEL_6:
    v38 = 0;
    goto LABEL_7;
  }

  v65 = &type metadata for MLFeatureFlags;
  v66 = sub_100015014();
  swift_errorRetain();
  v25 = sub_100019998();
  __swift_destroy_boxed_opaque_existential_0(&v62);
  if ((v25 & 1) == 0)
  {

    v55 = 0;
    v34 = 0;
    v24 = 0;
    goto LABEL_6;
  }

  swift_getErrorValue();
  v62 = sub_100019FB8();
  v63 = v26;
  sub_100004B2C();
  v27 = sub_100019B88();
  v29 = v28;
  v31 = v30;
  sub_100019BE8();
  v32 = sub_100019B68();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_100004B80(v27, v29, v31 & 1);

  v24 = v36 & 1;
  v55 = v32;
  sub_100004B90(v32, v34, v36 & 1);

LABEL_7:
  v40 = v57;
  v39 = v58;
  v41 = *(v58 + 16);
  v42 = v56;
  v43 = v59;
  v41(v57, v56, v59);
  v44 = v60;
  v41(v60, v40, v43);
  v45 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029148, &qword_10001BED8) + 48)];
  v46 = v55;
  sub_100004BA0(v55, v34, v24, v38);
  sub_100004BE4(v46, v34, v24, v38);
  *v45 = v46;
  v45[1] = v34;
  v45[2] = v24;
  v45[3] = v38;
  v47 = *(v39 + 8);
  v47(v42, v43);
  sub_100004BE4(v46, v34, v24, v38);
  return (v47)(v40, v43);
}

uint64_t sub_100014714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for SectionMainView(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029158, &qword_10001BEE0);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029160, &qword_10001BEE8);
  sub_10001225C(&qword_100029168, &qword_100029160, &qword_10001BEE8, &protocol conformance descriptor for VStack<A>);
  sub_100019C78();
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029170, &qword_10001BEF0) + 36)];
  v16[32] = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v23 = sub_100019BF8();
  *&v15[*(v10 + 44)] = sub_100019C48();
  sub_100015070(a1, v8, type metadata accessor for ModelDataViewModel);
  sub_100003DC4(v15, v13, &qword_100029158, &qword_10001BEE0);
  sub_100015070(v8, v6, type metadata accessor for SectionMainView);
  v17 = v21;
  sub_100003DC4(v13, v21, &qword_100029158, &qword_10001BEE0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029178, &qword_10001BEF8);
  sub_100015070(v6, v17 + *(v18 + 48), type metadata accessor for SectionMainView);
  sub_1000150D8(v8);
  sub_100003E2C(v15, &qword_100029158, &qword_10001BEE0);
  sub_1000150D8(v6);
  return sub_100003E2C(v13, &qword_100029158, &qword_10001BEE0);
}

double sub_1000149D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100019AB8();
  v18 = 0;
  sub_100014AE0(a1, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  sub_100003DC4(&v19, &v10, &qword_100029180, &qword_10001BF00);
  sub_100003E2C(v25, &qword_100029180, &qword_10001BF00);
  *&v17[39] = v21;
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24;
  *&v17[7] = v19;
  *&v17[23] = v20;
  v5 = *&v17[32];
  *(a2 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v6;
  v8 = *v17;
  result = *&v17[16];
  *(a2 + 33) = *&v17[16];
  *(a2 + 49) = v5;
  v9 = v18;
  *a2 = v4;
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = v9;
  *(a2 + 112) = *&v17[95];
  *(a2 + 17) = v8;
  return result;
}

uint64_t sub_100014AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = type metadata accessor for ModelDataViewModel(0);
  sub_100004B2C();

  v2 = sub_100019B88();
  v4 = v3;
  v6 = v5;
  sub_100019B38();
  sub_100019B18();

  v7 = sub_100019B78();
  v9 = v8;
  v11 = v10;

  sub_100004B80(v2, v4, v6 & 1);

  v70 = objc_opt_self();
  v12 = [v70 labelColor];
  sub_100019C18();
  v66 = sub_100019B68();
  v67 = v13;
  v72 = v14;
  v65 = v15;

  sub_100004B80(v7, v9, v11 & 1);

  sub_10000D88C();
  v16 = sub_100019B88();
  v18 = v17;
  v20 = v19;
  sub_100019B08();
  v21 = sub_100019B78();
  v23 = v22;
  LOBYTE(v2) = v24;

  sub_100004B80(v16, v18, v20 & 1);

  sub_100019B28();
  v25 = sub_100019B58();
  v27 = v26;
  LOBYTE(v16) = v28;
  sub_100004B80(v21, v23, v2 & 1);

  v29 = [v70 secondaryLabelColor];
  sub_100019C18();
  v30 = sub_100019B68();
  v61 = v31;
  v62 = v30;
  v60 = v32;
  v63 = v33;

  sub_100004B80(v25, v27, v16 & 1);

  v34 = (a1 + *(v64 + 28));
  v36 = *v34;
  v35 = v34[1];
  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
  }

  v38 = sub_100019B88();
  v40 = v39;
  v42 = v41;
  sub_100019B08();
  v43 = sub_100019B78();
  v45 = v44;
  v47 = v46;

  sub_100004B80(v38, v40, v42 & 1);

  sub_100019B28();
  v48 = sub_100019B58();
  v50 = v49;
  v52 = v51;
  sub_100004B80(v43, v45, v47 & 1);

  v53 = [v70 secondaryLabelColor];
  sub_100019C18();
  v54 = sub_100019B68();
  v71 = v55;
  LOBYTE(v45) = v56;
  v58 = v57;

  sub_100004B80(v48, v50, v52 & 1);

  *a2 = v66;
  *(a2 + 8) = v72;
  *(a2 + 16) = v65 & 1;
  *(a2 + 24) = v67;
  *(a2 + 32) = v62;
  *(a2 + 40) = v61;
  *(a2 + 48) = v60 & 1;
  *(a2 + 56) = v63;
  *(a2 + 64) = v54;
  *(a2 + 72) = v71;
  *(a2 + 80) = v45 & 1;
  *(a2 + 88) = v58;
  sub_100004B90(v66, v72, v65 & 1);

  sub_100004B90(v62, v61, v60 & 1);

  sub_100004B90(v54, v71, v45 & 1);

  sub_100004B80(v54, v71, v45 & 1);

  sub_100004B80(v62, v61, v60 & 1);

  sub_100004B80(v66, v72, v65 & 1);
}

uint64_t sub_100014FBC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100019AB8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029110, &qword_10001BEB0);
  return sub_100014054(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_100015014()
{
  result = qword_100029150;
  if (!qword_100029150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029150);
  }

  return result;
}

uint64_t sub_100015070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000150D8(uint64_t a1)
{
  v2 = type metadata accessor for SectionMainView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100015138()
{
  result = qword_100029188;
  if (!qword_100029188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029190, &qword_10001BF08);
    sub_10001225C(&qword_100029198, &qword_1000291A0, &qword_10001BF10, &protocol conformance descriptor for VStack<A>);
    sub_1000151F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029188);
  }

  return result;
}

unint64_t sub_1000151F0()
{
  result = qword_1000291A8;
  if (!qword_1000291A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291A8);
  }

  return result;
}

uint64_t sub_100015258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100019988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001532C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100019988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for InputOutput(uint64_t a1)
{
  result = qword_100029208;
  if (!qword_100029208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100015434(uint64_t a1)
{
  result = sub_100019988();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000154BC()
{
  v0 = sub_1000199E8();
  __swift_allocate_value_buffer(v0, qword_10002B938);
  __swift_project_value_buffer(v0, qword_10002B938);
  return sub_1000199D8();
}

uint64_t sub_100015544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModelDataViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100019958();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  v14 = *(v8 + 16);
  v14(&v18[-v12], a1, v7);
  v15 = objc_allocWithZone(MIOModel);
  v16 = sub_100015850(v13);
  v14(v11, a1, v7);
  sub_10000CE50(v11, v16, 0, v6);
  sub_100015A3C(v6, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029248, &qword_10001C030);
  return swift_storeEnumTagMultiPayload();
}

id sub_100015850(uint64_t a1)
{
  v2 = v1;
  sub_100019928(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_100019958();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_1000198D8();

    swift_willThrow();
    v12 = sub_100019958();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000159D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100029250, &qword_10001BFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100015B94()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ModelViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setHidden:1];

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 startAnimating];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100015C74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview19ModelViewController_previewEnvironment;
  type metadata accessor for MLPreviewEnvironment(0);
  swift_allocObject();
  *&v3[v7] = sub_100018944();
  if (a2)
  {
    v8 = sub_100019CD8();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for ModelViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_100015DBC(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview19ModelViewController_previewEnvironment;
  type metadata accessor for MLPreviewEnvironment(0);
  swift_allocObject();
  *&v1[v3] = sub_100018944();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ModelViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100015EA0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ModelViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100015F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v4 = sub_100019958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(type metadata accessor for QLModelDocument());
  sub_100019928(v9);
  v11 = v10;
  v12 = [v8 initWithFileURL:v10];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v14, v7, v4);
  *(v17 + v15) = v13;
  *(v17 + v16) = v12;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = v23;
  *v18 = v22;
  v18[1] = v19;
  aBlock[4] = sub_10001692C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100016600;
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);
  v21 = v12;

  [v21 openWithCompletionHandler:v20];
  _Block_release(v20);
}

uint64_t sub_1000161A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v30 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100029300, &qword_10001C028);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for ModelDataViewModel(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029248, &qword_10001C030);
  v14 = __chkstk_darwin(v13);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  sub_100015544(a2, &v30 - v17);
  sub_1000169FC(v18, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v16;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      sub_100016460(a4, v19);
    }

    else
    {
    }
  }

  else
  {
    sub_100015A3C(v16, v12);
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      sub_100016AD4(v12, v9);
      v24 = *&v23[OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview19ModelViewController_previewEnvironment];
      type metadata accessor for MLPreviewEnvironment(0);
      sub_100016B38();
      v25 = sub_1000199F8();
      v26 = &v9[*(v7 + 36)];
      *v26 = v25;
      v26[1] = v24;
      v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029318, &qword_10001C038));

      v28 = sub_100019AC8();
      sub_100016B90(v28);
    }

    sub_100016CA8(v12);
  }

  v30(0);
  return sub_100016A6C(v18);
}

void sub_100016460(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100019958();
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100029300, &qword_10001C028);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = [a1 fileURL];
  sub_100019938();

  v14 = [objc_allocWithZone(MIOModel) init];
  swift_errorRetain();
  sub_10000CE50(v8, v14, a2, v12);
  v15 = *(v3 + OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview19ModelViewController_previewEnvironment);
  type metadata accessor for MLPreviewEnvironment(0);
  sub_100016B38();
  v16 = sub_1000199F8();
  v17 = &v12[*(v10 + 44)];
  *v17 = v16;
  v17[1] = v15;
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029318, &qword_10001C038));

  v19 = sub_100019AC8();
  sub_100016B90(v19);
}

uint64_t sub_100016600(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100016788(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1000198C8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1000167EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001682C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100016864()
{
  v1 = sub_100019958();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10001692C(uint64_t a1)
{
  v3 = *(sub_100019958() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000161A8(a1, v1 + v4, v7, v8, v9);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000169FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029248, &qword_10001C030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016A6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029248, &qword_10001C030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100016B38()
{
  result = qword_100029310;
  if (!qword_100029310)
  {
    type metadata accessor for MLPreviewEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029310);
  }

  return result;
}

id sub_100016B90(void *a1)
{
  v2 = v1;
  [a1 loadViewIfNeeded];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  [result layoutIfNeeded];

  [v2 addChildViewController:a1];
  result = [v2 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  sub_10000C588(result);

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = result;
  [result stopAnimating];

  return [a1 didMoveToParentViewController:v2];
}

uint64_t sub_100016CA8(uint64_t a1)
{
  v2 = type metadata accessor for ModelDataViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100016F48(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for QLModelDocument();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100016FB0()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CC50;
  v6._object = 0x800000010001CC30;
  v8._object = 0x800000010001CC30;
  v6._countAndFlagsBits = 0xD000000000000013;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000013;
  v2 = sub_100019888(v6, v7, v1, v8, 0xD000000000000021, v5);
  v4 = v3;

  qword_10002B950 = v2;
  *algn_10002B958 = v4;
}

void sub_100017088()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CBA0;
  v6._countAndFlagsBits = 0x7475706E49;
  v6._object = 0xE500000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x7475706E49;
  v8._object = 0xE500000000000000;
  v2 = sub_100019888(v6, v7, v1, v8, 0xD000000000000013, v5);
  v4 = v3;

  qword_10002B960 = v2;
  *algn_10002B968 = v4;
}

void sub_100017150()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CB80;
  v6._countAndFlagsBits = 0x74757074754FLL;
  v6._object = 0xE600000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x74757074754FLL;
  v8._object = 0xE600000000000000;
  v2 = sub_100019888(v6, v7, v1, v8, 0xD000000000000014, v5);
  v4 = v3;

  qword_10002B970 = v2;
  *algn_10002B978 = v4;
}

void sub_100017218()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CC00;
  v6._object = 0x800000010001CBE0;
  v8._object = 0x800000010001CBE0;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000012;
  v2 = sub_100019888(v6, v7, v1, v8, 0xD000000000000020, v5);
  v4 = v3;

  qword_10002B980 = v2;
  *algn_10002B988 = v4;
}

void sub_1000172F0()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CBC0;
  v6._countAndFlagsBits = 0x614C207373616C43;
  v6._object = 0xEF402520736C6562;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x614C207373616C43;
  v8._object = 0xEF402520736C6562;
  v2 = sub_100019888(v6, v7, v1, v8, 0xD00000000000001ALL, v5);
  v4 = v3;

  qword_10002B990 = v2;
  *algn_10002B998 = v4;
}

void sub_1000173C8()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CB50;
  v6._object = 0x800000010001CB30;
  v8._object = 0x800000010001CB30;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000012;
  v2 = sub_100019888(v6, v7, v1, v8, 0xD000000000000020, v5);
  v4 = v3;

  qword_10002B9A0 = v2;
  *algn_10002B9A8 = v4;
}

uint64_t sub_1000174B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100017534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SectionMainView(uint64_t a1)
{
  result = qword_100029408;
  if (!qword_100029408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001760C@<X0>(void *a1@<X8>)
{
  sub_10000DA20(&v45);
  if (*v1 == 1)
  {
    v15 = a1;
    v3 = sub_10000DCE8()[2];

    if (v3)
    {
      v4 = sub_10000DCE8();
      LOBYTE(v25) = 1;
      sub_100019C28();
      v5 = v35;
      v6 = *(&v35 + 1);

      v14 = v4;
    }

    else
    {
      v14 = 0;
      v5 = 0;
      v6 = 0;
    }

    if (qword_1000288B8 != -1)
    {
      swift_once();
    }

    v13 = qword_10002B960;
    v7 = *algn_10002B968;

    v17 = sub_10000E8CC();
    LOBYTE(v25) = 1;
    sub_100019C28();
    if (qword_1000288C0 != -1)
    {
      swift_once();
    }

    v12 = qword_10002B970;
    v9 = *algn_10002B978;

    v11 = sub_10000EB60();
    sub_100019C28();
    v10 = sub_10000E318();
    sub_100019C28();
    v16 = sub_10000DFBC();
    sub_100019C28();
    sub_100017D10(v14, v5, v6);

    sub_100017D54(v14, v5, v6);

    sub_100017D54(v14, v5, v6);
    *&v25 = v14;
    *(&v25 + 1) = v5;
    *&v26 = v6;
    *(&v26 + 1) = v13;
    *&v27 = v7;
    *(&v27 + 1) = v17;
    LOBYTE(v28) = v35;
    *(&v28 + 1) = *(&v35 + 1);
    *&v29 = v12;
    *(&v29 + 1) = v9;
    *&v30 = v11;
    BYTE8(v30) = v35;
    *&v31 = *(&v35 + 1);
    *(&v31 + 1) = v10;
    LOBYTE(v32) = v35;
    *(&v32 + 1) = *(&v35 + 1);
    *&v33 = v16;
    BYTE8(v33) = v35;
    v34 = *(&v35 + 1);
    ModelHeuristics.init(model:version:)();
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = *(&v35 + 1);
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v35 = v25;
    v36 = v26;
    a1 = v15;
  }

  else
  {
    sub_100017B68(&v35);
  }

  v31 = v41;
  v32 = v42;
  v33 = v43;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v25 = v35;
  v26 = v36;
  v21[4] = v49;
  v21[5] = v50;
  v21[0] = v45;
  v21[1] = v46;
  __src[0] = v45;
  __src[1] = v46;
  v21[2] = v47;
  v21[3] = v48;
  __src[2] = v47;
  __src[3] = v48;
  v21[6] = v51;
  __src[4] = v49;
  __src[5] = v50;
  __src[6] = v51;
  v23[0] = v35;
  v23[1] = v36;
  v23[4] = v39;
  v23[5] = v40;
  v23[2] = v37;
  v23[3] = v38;
  v23[8] = v43;
  v23[6] = v41;
  v23[7] = v42;
  *(&__src[13] + 8) = v41;
  v34 = v44;
  v22 = v52;
  v24 = v44;
  *(&__src[14] + 8) = v42;
  *(&__src[15] + 8) = v43;
  *&__src[7] = v52;
  *(&__src[16] + 1) = v44;
  *(&__src[9] + 8) = v37;
  *(&__src[10] + 8) = v38;
  *(&__src[11] + 8) = v39;
  *(&__src[12] + 8) = v40;
  *(&__src[7] + 8) = v35;
  *(&__src[8] + 8) = v36;
  memcpy(a1, __src, 0x110uLL);
  sub_100017B88(v21, v18);
  sub_100017BE4(v23, v18);
  sub_100017C54(&v25);
  v18[4] = v49;
  v18[5] = v50;
  v18[6] = v51;
  v19 = v52;
  v18[0] = v45;
  v18[1] = v46;
  v18[2] = v47;
  v18[3] = v48;
  return sub_100017CBC(v18);
}

double sub_100017B68(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100017BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029440, &qword_10001C0E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017C54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029440, &qword_10001C0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017D10(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100017D54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100017D98()
{
  result = qword_100029448;
  if (!qword_100029448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029450, &qword_10001C0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029448);
  }

  return result;
}

uint64_t sub_100017E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029470, &qword_10001C1A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029480, &qword_10001C1A8);
  v8 = __chkstk_darwin(a1);
  v10 = &v28[-v9];
  if (*(v8 + 16))
  {
    v32[0] = v8;

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029488, &qword_10001C1B0);
    v12 = sub_100019988();
    v13 = sub_1000184CC();
    v14 = sub_100018478();
    v15 = sub_100018530();
    sub_100019C58(v32, sub_100018134, 0, v11, v12, &type metadata for SingleValueRowView, v13, v14, v15);
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_1000183F4();
    sub_100019AD8();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    strcpy(v32, "Not available");
    HIWORD(v32[1]) = -4864;
    sub_100004B2C();
    v17 = sub_100019B88();
    v19 = v18;
    v21 = v20;
    sub_100019C08();
    v22 = sub_100019B68();
    v30 = v23;
    v31 = a2;
    v24 = v22;
    v26 = v25;
    v29 = v27;

    sub_100004B80(v17, v19, v21 & 1);

    *v10 = v24;
    *(v10 + 1) = v26;
    v10[16] = v29 & 1;
    *(v10 + 3) = v30;
    swift_storeEnumTagMultiPayload();
    sub_1000183F4();
    return sub_100019AD8();
  }
}

uint64_t sub_100018134@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Layer(0) + 20));
  v5 = *v3;
  v4 = v3[1];

  result = sub_100019F68();
  *a2 = v5;
  a2[1] = v4;
  a2[2] = result;
  a2[3] = v7;
  return result;
}

uint64_t sub_1000181B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000288C8 != -1)
  {
    swift_once();
  }

  sub_100004B2C();

  result = sub_100019B88();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100018258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C38, &qword_10001B440);
  sub_100019C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029458, &qword_10001C198);
  sub_100018368();
  return sub_100019C68();
}

unint64_t sub_100018368()
{
  result = qword_100029460;
  if (!qword_100029460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029458, &qword_10001C198);
    sub_1000183F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029460);
  }

  return result;
}

unint64_t sub_1000183F4()
{
  result = qword_100029468;
  if (!qword_100029468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029470, &qword_10001C1A0);
    sub_100018478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029468);
  }

  return result;
}

unint64_t sub_100018478()
{
  result = qword_100029478;
  if (!qword_100029478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029478);
  }

  return result;
}

unint64_t sub_1000184CC()
{
  result = qword_100029490;
  if (!qword_100029490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029488, &qword_10001C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029490);
  }

  return result;
}

unint64_t sub_100018530()
{
  result = qword_100029498;
  if (!qword_100029498)
  {
    type metadata accessor for Layer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029498);
  }

  return result;
}

unint64_t sub_10001858C()
{
  result = qword_1000294A0;
  if (!qword_1000294A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000294A8, &qword_10001C1B8);
    sub_100018368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000294A0);
  }

  return result;
}

uint64_t sub_100018624()
{
  v1 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__screenMode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029630, &qword_10001C298);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__dismissPreview;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029638, &unk_10001C2A0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__presentShareSheet, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for MLPreviewEnvironment(uint64_t a1)
{
  result = qword_1000294F0;
  if (!qword_1000294F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001879C(uint64_t a1)
{
  sub_100018884(319, &qword_100029500, &type metadata for MLPreviewEnvironment.PreviewScreenMode);
  if (v1 <= 0x3F)
  {
    sub_100018884(319, &unk_100029508, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100018884(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_100019A28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000188E4()
{
  result = qword_100029628;
  if (!qword_100029628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029628);
  }

  return result;
}

uint64_t sub_100018944()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029638, &unk_10001C2A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029630, &qword_10001C298);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__screenMode;
  v14[15] = 0;
  sub_100019A18();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__dismissPreview;
  v14[14] = 0;
  sub_100019A18();
  v11 = *(v2 + 32);
  v11(v0 + v10, v4, v1);
  v12 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__presentShareSheet;
  v14[13] = 0;
  sub_100019A18();
  v11(v0 + v12, v4, v1);
  return v0;
}

uint64_t sub_100018B34@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MLPreviewEnvironment(0);
  result = sub_100019A08();
  *a2 = result;
  return result;
}

uint64_t sub_100018BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029658, &qword_10001C358);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029670, &qword_10001C368);
  v8 = __chkstk_darwin(a1);
  v10 = &v28[-v9];
  if (*(v8 + 16))
  {
    v32[0] = v8;

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029678, &qword_10001C370);
    v12 = sub_100019988();
    v13 = sub_1000192E0();
    v14 = sub_100018478();
    v15 = sub_100019344();
    sub_100019C58(v32, sub_100018EAC, 0, v11, v12, &type metadata for SingleValueRowView, v13, v14, v15);
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_100019208();
    sub_100019AD8();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    strcpy(v32, "Not available");
    HIWORD(v32[1]) = -4864;
    sub_100004B2C();
    v17 = sub_100019B88();
    v19 = v18;
    v21 = v20;
    sub_100019C08();
    v22 = sub_100019B68();
    v30 = v23;
    v31 = a2;
    v24 = v22;
    v26 = v25;
    v29 = v27;

    sub_100004B80(v17, v19, v21 & 1);

    *v10 = v24;
    *(v10 + 1) = v26;
    v10[16] = v29 & 1;
    *(v10 + 3) = v30;
    swift_storeEnumTagMultiPayload();
    sub_100019208();
    return sub_100019AD8();
  }
}

uint64_t sub_100018EAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ClassLabel(0) + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = 0;
}

uint64_t sub_100018EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v10._countAndFlagsBits = sub_100019F68();
    sub_100019D48(v10);

    v3 = 547520738;
    v4 = 0xA400000000000000;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  if (qword_1000288D0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029660, &qword_10001C360);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001B050;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10001928C();
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_100019D18();
  sub_100004B2C();
  result = sub_100019B88();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_100019050()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C38, &qword_10001B440);
  sub_100019C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029640, &qword_10001C350);
  sub_10001917C();
  return sub_100019C68();
}

unint64_t sub_10001917C()
{
  result = qword_100029648;
  if (!qword_100029648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029640, &qword_10001C350);
    sub_100019208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029648);
  }

  return result;
}

unint64_t sub_100019208()
{
  result = qword_100029650;
  if (!qword_100029650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029658, &qword_10001C358);
    sub_100018478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029650);
  }

  return result;
}

unint64_t sub_10001928C()
{
  result = qword_100029668;
  if (!qword_100029668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029668);
  }

  return result;
}

unint64_t sub_1000192E0()
{
  result = qword_100029680;
  if (!qword_100029680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029678, &qword_10001C370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029680);
  }

  return result;
}

unint64_t sub_100019344()
{
  result = qword_100029688;
  if (!qword_100029688)
  {
    type metadata accessor for ClassLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029688);
  }

  return result;
}

unint64_t sub_1000193A0()
{
  result = qword_100029690;
  if (!qword_100029690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029698, &qword_10001C378);
    sub_10001917C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029690);
  }

  return result;
}

uint64_t sub_100019464@<X0>(uint64_t a5@<X8>)
{
  sub_100004B2C();

  v6 = sub_100019B88();
  v8 = v7;
  v10 = v9;
  sub_100019B08();
  sub_100019B18();

  v11 = sub_100019B78();
  v13 = v12;
  v15 = v14;

  sub_100004B80(v6, v8, v10 & 1);

  v43 = objc_opt_self();
  v16 = [v43 labelColor];
  sub_100019C18();
  v17 = sub_100019B68();
  v45 = v18;
  v46 = v17;
  v44 = v19;
  v47 = v20;

  sub_100004B80(v11, v13, v15 & 1);

  v21 = sub_100019B88();
  v23 = v22;
  v25 = v24;
  sub_100019AF8();
  v26 = sub_100019B78();
  v28 = v27;
  LOBYTE(v8) = v29;

  sub_100004B80(v21, v23, v25 & 1);

  sub_100019B28();
  v30 = sub_100019B58();
  v32 = v31;
  v34 = v33;
  sub_100004B80(v26, v28, v8 & 1);

  v35 = [v43 labelColor];
  sub_100019C18();
  v36 = sub_100019B68();
  v38 = v37;
  LOBYTE(v13) = v39;
  v41 = v40;

  sub_100004B80(v30, v32, v34 & 1);

  *a5 = v46;
  *(a5 + 8) = v45;
  *(a5 + 16) = v44 & 1;
  *(a5 + 24) = v47;
  *(a5 + 32) = v36;
  *(a5 + 40) = v38;
  *(a5 + 48) = v13 & 1;
  *(a5 + 56) = v41;
  sub_100004B90(v46, v45, v44 & 1);

  sub_100004B90(v36, v38, v13 & 1);

  sub_100004B80(v36, v38, v13 & 1);

  sub_100004B80(v46, v45, v44 & 1);
}

__n128 sub_100019778@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100019AB8();
  sub_100019464(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

unint64_t sub_100019824()
{
  result = qword_1000296A0;
  if (!qword_1000296A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000296A8, &qword_10001C418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000296A0);
  }

  return result;
}