uint64_t sub_A1034(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 40) & 1;
  v3 = *(result + 544) | 0x2000000000000000;
  *(result + 8) &= 1uLL;
  *(result + 40) = v2;
  *(result + 80) = v1;
  *(result + 544) = v3;
  return result;
}

uint64_t sub_A1064(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 40) & 1;
  v3 = *(result + 544) | 0x4000000000000000;
  *(result + 8) &= 1uLL;
  *(result + 40) = v2;
  *(result + 80) = v1;
  *(result + 544) = v3;
  return result;
}

uint64_t sub_A1094(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 40) & 1;
  v3 = *(result + 544) | 0xA000000000000000;
  *(result + 8) &= 1uLL;
  *(result + 40) = v2;
  *(result + 80) = v1;
  *(result + 544) = v3;
  return result;
}

uint64_t sub_A10C8(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 544);
  v3 = *(result + 40) & 1;
  *(result + 8) &= 1uLL;
  *(result + 40) = v3;
  *(result + 80) = v1;
  *(result + 544) = v2;
  return result;
}

uint64_t sub_A10F4(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22AED0, &unk_1C30F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A118C(uint64_t a1)
{
  v2 = sub_A13A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_A11C8(uint64_t a1)
{
  v2 = sub_A13A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Author.Rationale.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22AED8, &unk_1C3100);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_2698(a1, a1[3]);
  sub_A13A8();

  sub_1B5884();
  v9[1] = v7;
  sub_2B0C(&qword_22AA48, &qword_1CD280);
  sub_90C68(&qword_22AA50, sub_90C14, &protocol conformance descriptor for <A> [A]);
  sub_1B5544();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_A13A8()
{
  result = qword_22AEE0;
  if (!qword_22AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AEE0);
  }

  return result;
}

uint64_t Author.Rationale.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AEE8, &qword_1C3110);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_2698(a1, a1[3]);
  sub_A13A8();
  sub_1B5864();
  if (!v2)
  {
    sub_2B0C(&qword_22AA48, &qword_1CD280);
    sub_90C68(&qword_22AA68, sub_90CE0, &protocol conformance descriptor for <A> [A]);
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_2BF8(a1);
}

uint64_t sub_A15E8()
{
  if (*v0)
  {
    return 0x6C616E6F69746172;
  }

  else
  {
    return 0x444965726F7473;
  }
}

uint64_t sub_A1628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965726F7473 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E6F69746172 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_A170C(uint64_t a1)
{
  v2 = sub_A1920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_A1748(uint64_t a1)
{
  v2 = sub_A1920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Author.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22AEF0, &qword_1C3118);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[0] = *(v1 + 8);
  sub_2698(a1, a1[3]);
  sub_A1920();
  sub_1B5884();
  v11 = 0;
  sub_1B5574();
  if (!v2)
  {
    v9[1] = v9[0];
    v10 = 1;
    sub_A1974();

    sub_1B54B4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_A1920()
{
  result = qword_22AEF8;
  if (!qword_22AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AEF8);
  }

  return result;
}

unint64_t sub_A1974()
{
  result = qword_22AF00;
  if (!qword_22AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF00);
  }

  return result;
}

uint64_t Author.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AF08, &qword_1C3120);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  sub_2698(a1, a1[3]);
  sub_A1920();
  sub_1B5864();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1B5434();
    v13 = 1;
    sub_A1B84();
    sub_1B5374();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    a2[1] = v10;
  }

  return sub_2BF8(a1);
}

unint64_t sub_A1B84()
{
  result = qword_22AF10;
  if (!qword_22AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF10);
  }

  return result;
}

unint64_t sub_A1C4C()
{
  result = qword_22AF18;
  if (!qword_22AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF18);
  }

  return result;
}

unint64_t sub_A1CA4()
{
  result = qword_22AF20;
  if (!qword_22AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF20);
  }

  return result;
}

unint64_t sub_A1CFC()
{
  result = qword_22AF28;
  if (!qword_22AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF28);
  }

  return result;
}

unint64_t sub_A1D54()
{
  result = qword_22AF30;
  if (!qword_22AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF30);
  }

  return result;
}

unint64_t sub_A1DAC()
{
  result = qword_22AF38;
  if (!qword_22AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF38);
  }

  return result;
}

unint64_t sub_A1E04()
{
  result = qword_22AF40;
  if (!qword_22AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF40);
  }

  return result;
}

uint64_t sub_A1E58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = 1 << *(*a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v8;
LABEL_10:
    v8 = (v12 - 1) & v12;
    if (*(a2 + 16))
    {
      result = sub_3A9D8(*(*(v5 + 48) + (__clz(__rbit64(v12)) | (v11 << 6))));
      if (v14)
      {

        result = sub_494D8(v15);
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      *a3 = _swiftEmptySetSingleton;
      return result;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v11;
    if (v12)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_A1F9C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_A1FC0, 0, 0);
}

uint64_t sub_A1FC0()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);

  v3 = sub_A2140(v2, v1);

  v4 = v0[1];

  return v4(v3);
}

unint64_t sub_A2054(char a1, uint64_t a2, void *a3)
{
  sub_1B57F4();
  sub_1B4884();

  sub_1B5844();
  result = sub_1B4FA4();
  *(a3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(a3[6] + result) = a1 & 1;
  *(a3[7] + 8 * result) = a2;
  ++a3[2];
  return result;
}

void *sub_A2140(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = _swiftEmptyDictionarySingleton;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v24 = _swiftEmptyDictionarySingleton;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v19 = result;
  if (v9)
  {
LABEL_10:
    while (1)
    {
      v14 = __clz(__rbit64(v9)) | (v12 << 6);
      v15 = *(*(v3 + 56) + 8 * v14);
      v22 = *(*(v3 + 48) + v14);
      v23 = v15;

      sub_A1E58(&v23, a2, &v21);
      if (v2)
      {
        break;
      }

      v9 &= v9 - 1;
      v16 = v21;
      if (v21)
      {
        v17 = v22;
        v18 = v4[2];
        if (v4[3] <= v18)
        {
          sub_17D530(v18 + 1, 1);
          v4 = v24;
        }

        sub_A2054(v17, v16, v4);

        v3 = v19;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {

        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    return v4;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v4;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t RecommendationSource.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_213188;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

unint64_t sub_A2350()
{
  result = qword_22AFE8;
  if (!qword_22AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AFE8);
  }

  return result;
}

Swift::Int sub_A23A4()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_A2400(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

uint64_t sub_A2448@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_2131C0;
  v7._object = v3;
  v5 = sub_1B52E4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_A2570()
{
  result = qword_22AFF0;
  if (!qword_22AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AFF0);
  }

  return result;
}

void sub_A25C4(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1B4FF4();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_3741C(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v3 = sub_1B4FB4();
    }

    else
    {
      v3 = sub_1B4F84();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_36;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_2C44(v34, v35, v36, v1);
        v13 = v12;
        v14 = [v12 authorID];

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v15 = v32;
        v37 = v32;
        v17 = v32[2];
        v16 = v32[3];
        if (v17 >= v16 >> 1)
        {
          sub_3741C((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        v15[2] = v17 + 1;
        v15[v17 + 4] = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_42;
          }

          v1 = v11;
          if (sub_1B4FC4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          sub_2B0C(&qword_22B2E8, &qword_1C3990);
          v6 = sub_1B4CD4();
          sub_1B5014();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_33:
            sub_42FF0(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_43;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_38;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_40;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_42FF0(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_32;
              }
            }

            sub_42FF0(v9, v8, 0);
          }

LABEL_32:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_A2920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  sub_43050(a1, v22 - v12, &qword_2296C0, &qword_1C3800);
  v14 = sub_1B4C54();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_42F48(v13, &qword_2296C0, &qword_1C3800);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1B4BC4();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4C44();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v8;
  sub_2B0C(a4, a5);
  v20 = (v18 | v16);
  if (v18 | v16)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v16;
    v23[3] = v18;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v19;
  swift_task_create();
}

Swift::Int sub_A2B24(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B44(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_B49A8(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_A2C58()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_A2C94()
{
  type metadata accessor for RequestListActor.ActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_22AFF8 = v0;
  return result;
}

double sub_A2D10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_43050(a1, v17, &qword_229018, &qword_1BB420);
  if (v17[3])
  {
    sub_2B0C(&qword_22B228, &qword_1C37F0);
    if (swift_dynamicCast())
    {
      v3 = [objc_allocWithZone(NSMutableArray) init];
      v4 = *(v16 + 16);
      if (v4)
      {
        v5 = (v16 + 32);
        do
        {
          v6 = *v5++;
          v7 = [objc_allocWithZone(NSNumber) initWithInteger:v6];
          [v3 addObject:v7];

          --v4;
        }

        while (v4);
      }

      v8 = objc_opt_self();
      v17[0] = 0;
      v9 = [v8 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v17];
      v10 = v17[0];
      if (v9)
      {
        v11 = sub_1B3F94();
        v13 = v12;

        *(a2 + 24) = &type metadata for Data;
        *a2 = v11;
        *(a2 + 8) = v13;
        return result;
      }

      v15 = v10;
      sub_1B3E64();

      swift_willThrow();
    }
  }

  else
  {
    sub_42F48(v17, &qword_229018, &qword_1BB420);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_A2F20(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1B3E74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_43050(a1, v31, &qword_229018, &qword_1BB420);
  if (!v32)
  {
    sub_42F48(v31, &qword_229018, &qword_1BB420);
    goto LABEL_6;
  }

  sub_B7CB0(0, &qword_22B1F8, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *a2 = 0u;
    a2[1] = 0u;
    return;
  }

  v24 = v5;
  v25 = a2;
  v8 = v29;
  sub_B7CB0(0, &qword_22B200, NSKeyedUnarchiver_ptr);
  sub_2B0C(&qword_22B208, &qword_1C37E8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BFC80;
  *(v9 + 32) = sub_B7CB0(0, &qword_22B210, NSArray_ptr);
  *(v9 + 40) = sub_B7CB0(0, &qword_22B218, NSNumber_ptr);
  v10 = v8;
  v11 = sub_1B3F94();
  v13 = v12;

  sub_1B4DC4();
  sub_41670(v11, v13);

  sub_43050(v31, &v29, &qword_229018, &qword_1BB420);
  if (!v30)
  {
    sub_42F48(v31, &qword_229018, &qword_1BB420);

    sub_42F48(&v29, &qword_229018, &qword_1BB420);
LABEL_4:
    v14 = v25;
    *v25 = 0u;
    v14[1] = 0u;
    return;
  }

  v15 = v10;
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_42F48(v31, &qword_229018, &qword_1BB420);

    goto LABEL_4;
  }

  v23 = *&v28[0];
  sub_1B4E54();
  sub_B9010(&qword_22B220, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  sub_1B4ED4();
  if (v30)
  {
    v16 = _swiftEmptyArrayStorage;
    do
    {
      sub_430B8(&v29, v28);
      sub_430C8(v28, v27);
      if (swift_dynamicCast())
      {
        v17 = v26;
        v18 = [v26 integerValue];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_3369C(0, *(v16 + 2) + 1, 1, v16);
        }

        v20 = *(v16 + 2);
        v19 = *(v16 + 3);
        if (v20 >= v19 >> 1)
        {
          v16 = sub_3369C((v19 > 1), v20 + 1, 1, v16);
        }

        sub_2BF8(v28);
        *(v16 + 2) = v20 + 1;
        *&v16[8 * v20 + 32] = v18;
        v15 = v10;
      }

      else
      {
        sub_2BF8(v28);
      }

      sub_1B4ED4();
    }

    while (v30);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  (*(v24 + 8))(v7, v4);
  v21 = sub_2B0C(&qword_22B228, &qword_1C37F0);
  v22 = v25;
  *(v25 + 3) = v21;

  *v22 = v16;
  sub_42F48(v31, &qword_229018, &qword_1BB420);
}

id sub_A3408(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1B4F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v7 = a1;
  }

  a4(v16, v15);

  sub_42F48(v15, &qword_229018, &qword_1BB420);
  v8 = v17;
  if (v17)
  {
    v9 = sub_2698(v16, v17);
    v10 = *(v8 - 8);
    __chkstk_darwin(v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_1B55F4();
    (*(v10 + 8))(v12, v8);
    sub_2BF8(v16);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

NSString sub_A3598()
{
  result = sub_1B4794();
  qword_260BF8 = result;
  return result;
}

id sub_A3610(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GenrePathTransformer();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_A3648()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C00);
  sub_50E58(v0, qword_260C00);
  return sub_1B4634();
}

uint64_t MetadataCache.__allocating_init(bookFetchService:genreFetchService:maxItemCount:subfolder:)(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = swift_allocObject();
  MetadataCache.init(bookFetchService:genreFetchService:maxItemCount:subfolder:)(a1, a2, a3, a4, a5);
  return v10;
}

void *MetadataCache.init(bookFetchService:genreFetchService:maxItemCount:subfolder:)(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v72 = a4;
  v11 = *v5;
  v75 = sub_1B4DE4();
  v79 = *(v75 - 8);
  v12 = __chkstk_darwin(v75);
  v71[7] = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v71 - v14;
  v82 = sub_1B3F34();
  v81 = *(v82 - 8);
  v16 = __chkstk_darwin(v82);
  v71[8] = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v71 - v19;
  v21 = __chkstk_darwin(v18);
  v80 = v71 - v22;
  v23 = __chkstk_darwin(v21);
  v78 = v71 - v24;
  __chkstk_darwin(v23);
  v26 = v71 - v25;
  v6[2] = 25;
  v6[3] = 0;
  v27 = (v6 + 3);
  *(v6 + 3) = 0u;
  v73 = (v6 + 6);
  v6[4] = 0;
  *(v6 + 4) = 0u;
  v6[10] = 0x417E133800000000;
  v6[11] = _swiftEmptyDictionarySingleton;
  v6[12] = _swiftEmptyDictionarySingleton;
  v77 = a1;
  sub_404C4(a1, (v6 + 13));
  v76 = a2;
  sub_404C4(a2, (v6 + 18));
  v6[5] = a3;
  v28 = [objc_allocWithZone(type metadata accessor for GenrePathTransformer()) init];
  v29 = objc_opt_self();
  if (qword_2282B8 != -1)
  {
    v70 = v29;
    swift_once();
    v29 = v70;
  }

  [v29 setValueTransformer:v28 forName:qword_260BF8];

  v74 = v11;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v83 = type metadata accessor for CachedPersonalizationBookMetadata();
  sub_2B0C(&qword_22B000, &qword_1C3610);
  sub_1B4834();
  v32 = sub_1B4794();

  v33 = sub_1B4794();
  v34 = [v31 pathForResource:v32 ofType:v33];

  v35 = v82;
  if (v34)
  {
    v36 = [objc_opt_self() fileURLWithPath:v34 isDirectory:1];

    sub_1B3EE4();
    v37 = objc_allocWithZone(NSManagedObjectModel);
    sub_1B3EB4(v38);
    v40 = v39;
    v41 = [v37 initWithContentsOfURL:v39];

    (*(v81 + 8))(v26, v35);
    v42 = *v27;
    *v27 = v41;
  }

  v43 = *v27;
  v44 = v80;
  if (!*v27)
  {

    v60 = v6[4];
    if (!v60)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v71[6] = v20;
  v45 = objc_allocWithZone(NSPersistentStoreCoordinator);
  v46 = v43;
  v47 = [v45 initWithManagedObjectModel:v46];
  v48 = v6[4];
  v6[4] = v47;
  v49 = v47;

  v50 = v72;
  v6[7] = v72;
  v6[8] = a5;

  v51 = v78;
  static MetadataCache.persistentStoreDirectory(subfolder:)(v50, a5, v78);

  v53 = v6[7];
  v52 = v6[8];

  v54 = v53;
  v55 = v49;
  static MetadataCache.recreatePersistentStoreDirectory(subfolder:)(v54, v52);

  sub_1B3EC4();
  sub_2B0C(&qword_22B008, &qword_1C3618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFC80;
  *(inited + 32) = sub_1B47C4();
  *(inited + 40) = v57;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1B47C4();
  *(inited + 64) = v58;
  *(inited + 72) = 1;
  v59 = sub_130760(inited);
  swift_setDeallocating();
  sub_2B0C(&qword_22B010, &qword_1C3620);
  swift_arrayDestroy();
  sub_1B4DD4();
  sub_A4AD4(v59);
  v61 = sub_1B4E34();
  (*(v79 + 8))(v15, v75);

  v62 = *(v81 + 8);
  v63 = v82;
  v62(v44, v82);
  v62(v51, v63);

  v60 = v6[4];
  if (v60)
  {
LABEL_10:
    v64 = objc_allocWithZone(NSManagedObjectContext);
    v65 = v60;
    v66 = [v64 initWithConcurrencyType:1];
    [v66 setUndoManager:0];
    v67 = *v73;
    *v73 = v66;
    v68 = v66;

    [v68 setPersistentStoreCoordinator:v65];
  }

LABEL_11:
  sub_2BF8(v76);
  sub_2BF8(v77);
  return v6;
}

uint64_t static MetadataCache.persistentStoreDirectory(subfolder:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a1;
  v6 = sub_1B3F34();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 URLsForDirectory:13 inDomains:1];

  v15 = sub_1B4AC4();
  v16 = *(v15 + 16);
  if (!v16)
  {
    goto LABEL_10;
  }

  if (v16 > *(v15 + 16))
  {
    __break(1u);
LABEL_10:

    __break(1u);
    return result;
  }

  (*(v7 + 16))(v12, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * (v16 - 1), v6);

  v17 = *(v7 + 32);
  v17(a3, v12, v6);
  v21[1] = v3;
  sub_2B0C(&qword_22B020, &unk_1C3628);
  sub_1B4834();
  sub_1B3EC4();

  v18 = *(v7 + 8);
  v18(a3, v6);
  v17(a3, v10, v6);
  result = v21[0];
  if (a2)
  {
    v20 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v20 = v21[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      sub_1B3EC4();
      v18(a3, v6);
      return (v17)(a3, v10, v6);
    }
  }

  return result;
}

uint64_t static MetadataCache.recreatePersistentStoreDirectory(subfolder:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B3F34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MetadataCache.persistentStoreDirectory(subfolder:)(a1, a2, v7);
  v8 = [objc_opt_self() defaultManager];
  sub_1B3EB4(v9);
  v11 = v10;
  v17 = 0;
  LODWORD(a1) = [v8 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v17];

  if (a1)
  {
    v12 = *(v5 + 8);
    v13 = v17;
    return v12(v7, v4);
  }

  else
  {
    v15 = v17;
    sub_1B3E64();

    swift_willThrow();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_A4AD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2B0C(&qword_22B2F0, &qword_1C3998);
    v2 = sub_1B52B4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_430B8(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_430B8(v29, v30);
    result = sub_1B5024(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_430B8(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t MetadataCache.deinit()
{
  if (*(v0 + 72))
  {

    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_1B4C64();
  }

  sub_2BF8((v0 + 104));
  sub_2BF8((v0 + 144));
  return v0;
}

uint64_t MetadataCache.__deallocating_deinit()
{
  MetadataCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t MetadataCache.fetchMetadataFor(bookIDs:audiobookIDs:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_A4E98, 0, 0);
}

uint64_t sub_A4E98()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 48);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    v5 = *(v0 + 64);
    *(v4 + 16) = v3;
    *(v4 + 24) = v5;
    *(v4 + 40) = _swiftEmptyArrayStorage;
    *(v4 + 48) = v1;
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    v7 = sub_2B0C(&qword_22B028, &qword_1C3640);
    *v6 = v0;
    v6[1] = sub_A50E0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD00000000000003BLL, 0x80000000001D6B80, sub_B5470, v4, v7);
  }

  else
  {
    sub_404C4(v1 + 104, v0 + 16);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    sub_2698((v0 + 16), v8);
    v14 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_A52D0;
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);

    return v14(v12, v11, v8, v9);
  }
}

uint64_t sub_A50E0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_A5268;
  }

  else
  {

    v2 = sub_A51FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A51FC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_A5268()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_A52D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_A5460;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_A53F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A53F8()
{
  sub_2BF8(v0 + 2);
  v1 = v0[17];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_A5460()
{
  sub_2BF8((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MetadataCache.fetchMetadataFor(storeIDs:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_A54E4, 0, 0);
}

uint64_t sub_A54E4()
{
  v1 = v0[9];
  v2 = *(v1 + 48);
  v0[10] = v2;
  if (v2)
  {
    v3 = v0[8];
    v4 = v2;
    v5 = swift_task_alloc();
    v0[11] = v5;
    v5[2] = v4;
    v5[3] = _swiftEmptyArrayStorage;
    v5[4] = _swiftEmptyArrayStorage;
    v5[5] = v3;
    v5[6] = v1;
    v6 = swift_task_alloc();
    v0[12] = v6;
    v7 = sub_2B0C(&qword_22B028, &qword_1C3640);
    *v6 = v0;
    v6[1] = sub_A572C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD00000000000003BLL, 0x80000000001D6B80, sub_B9578, v5, v7);
  }

  else
  {
    sub_404C4(v1 + 104, (v0 + 2));
    v8 = v0[5];
    v9 = v0[6];
    sub_2698(v0 + 2, v8);
    v13 = (*(v9 + 16) + **(v9 + 16));
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_A591C;
    v11 = v0[8];

    return v13(v11, v8, v9);
  }
}

uint64_t sub_A572C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_A58B4;
  }

  else
  {

    v2 = sub_A5848;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A5848()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_A58B4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_A591C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_B9564;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_B9560;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t MetadataCache.cacheEntryCount()()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_A5A8C, 0, 0);
}

uint64_t sub_A5A8C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_A5B84;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000011, 0x80000000001D6BC0, sub_B5484, v3, &type metadata for UInt);
}

uint64_t sub_A5B84()
{

  return _swift_task_switch(sub_A5C9C, 0, 0);
}

void sub_A5CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B0C(&qword_22B288, &qword_1D1D30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = *(a2 + 48);
  if (v11)
  {
    (*(v7 + 16))(v10, a1, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v7 + 32))(v13 + v12, v10, v6);
    *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    aBlock[4] = sub_B7618;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19C6B4;
    aBlock[3] = &unk_21ACC8;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    [v15 performBlock:v14];
    _Block_release(v14);
  }

  else
  {
    aBlock[0] = 0;
    sub_1B4BE4();
  }
}

void sub_A5EB0()
{
  type metadata accessor for CachedPersonalizationBookMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v1)
  {
    sub_1B47C4();
    v1 = sub_1B4794();
  }

  v2 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v1];

  if (sub_1B4E14() < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2B0C(&qword_22B288, &qword_1D1D30);
    sub_1B4BE4();
  }
}

void sub_A6080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v11 = sub_2B0C(&qword_22B290, &qword_1C38C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  (*(v12 + 16))(&v19 - v13, a1, v11);
  v15 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  *(v16 + 5) = a2;
  *(v16 + 6) = v20;
  (*(v12 + 32))(&v16[v15], v14, v11);
  aBlock[4] = sub_B77A4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_21AD18;
  v17 = _Block_copy(aBlock);

  v18 = a2;

  [v18 performBlock:v17];
  _Block_release(v17);
}

void sub_A6284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v123 = a6;
  v127 = a5;
  v124 = sub_2B0C(&qword_22B290, &qword_1C38C0);
  v120 = *(v124 - 8);
  v117 = *(v120 + 64);
  __chkstk_darwin(v124);
  v119 = &v117 - v7;
  v8 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v8 - 8);
  v118 = &v117 - v9;

  v11 = sub_40854(v10);

  v153 = v11;

  v13 = sub_40854(v12);

  v152 = v13;

  v15 = sub_40854(v14);

  v151 = v15;

  v16 = sub_1ABCA4(v13, v11);
  v17 = sub_1ABCA4(v15, v16);
  v150 = v17;
  type metadata accessor for CachedPersonalizationBookMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v19 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v19)
  {
    sub_1B47C4();
    v19 = sub_1B4794();
  }

  v20 = objc_allocWithZone(NSFetchRequest);
  v21 = [v20 initWithEntityName:{v19, v117}];

  sub_2B0C(&qword_22B238, &unk_1C3808);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BFC80;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 32) = 0x44497465737361;
  *(v22 + 40) = 0xE700000000000000;
  *(v22 + 88) = sub_2B0C(&qword_2292C8, &unk_1BCB00);
  *(v22 + 64) = v17;
  v23 = sub_1B4794();
  isa = sub_1B4AA4().super.isa;

  v25 = [objc_opt_self() predicateWithFormat:v23 argumentArray:isa];

  [v21 setPredicate:v25];
  v122 = v21;
  v26 = sub_1B4E24();
  v121 = a4;
  v29 = v26;
  v138 = _swiftEmptyArrayStorage;
  v27 = v26 >> 62;
  if (v26 >> 62)
  {
    goto LABEL_125;
  }

  v38 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
LABEL_20:

  v39 = _swiftEmptyArrayStorage;
  p_align = &stru_226FE8.align;
  if (v38)
  {
    v130 = v27;
    v27 = 0;
    v39 = v29 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v41 = sub_1B50B4();
      }

      else
      {
        if (v27 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_72;
        }

        v41 = *(v29 + 8 * v27 + 32);
      }

      v42 = v41;
      v43 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_71;
      }

      if ([v41 *(p_align + 254)])
      {
        sub_1B5174();
        sub_1B51A4();
        sub_1B51B4();
        sub_1B5184();
        p_align = (&stru_226FE8 + 24);
      }

      else
      {
      }

      ++v27;
    }

    while (v43 != v38);
    v37 = v138;
    v27 = v130;
    v39 = _swiftEmptyArrayStorage;
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

  v138 = _swiftEmptyArrayStorage;
  if (v27)
  {
    v27 = sub_1B5284();
    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v27 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
    if (!v27)
    {
      goto LABEL_48;
    }
  }

  v130 = v37;
  v39 = 0;
  do
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v44 = sub_1B50B4();
    }

    else
    {
      if (v39 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_74;
      }

      v44 = *(v29 + 8 * v39 + 32);
    }

    v45 = v44;
    v46 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_73;
    }

    if ([v44 *(p_align + 254)])
    {
    }

    else
    {
      sub_1B5174();
      sub_1B51A4();
      sub_1B51B4();
      sub_1B5184();
      p_align = &stru_226FE8.align;
    }

    ++v39;
  }

  while (v46 != v27);
  v39 = v138;
  v37 = v130;
LABEL_48:

  if (v37 >> 62)
  {
    v129 = sub_1B5284();
    v130 = v37;
    if (!v129)
    {
      goto LABEL_50;
    }

LABEL_5:
    v27 = 0;
    v28 = v37 & 0xC000000000000001;
    v29 = v37 & 0xFFFFFFFFFFFFFF8;
    v30 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v28)
      {
        v31 = sub_1B50B4();
      }

      else
      {
        if (v27 >= *(v29 + 16))
        {
          goto LABEL_68;
        }

        v31 = *(v37 + 8 * v27 + 32);
      }

      v32 = v31;
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v34 = [v31 assetID];

      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_33008(0, *(v30 + 2) + 1, 1, v30);
      }

      v36 = *(v30 + 2);
      v35 = *(v30 + 3);
      if (v36 >= v35 >> 1)
      {
        v30 = sub_33008((v35 > 1), v36 + 1, 1, v30);
      }

      *(v30 + 2) = v36 + 1;
      *&v30[8 * v36 + 32] = v34;
      ++v27;
      v37 = v130;
      if (v33 == v129)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    v47 = sub_1B5284();
    if (v47)
    {
      goto LABEL_53;
    }

    goto LABEL_76;
  }

  v129 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
  v130 = v37;
  if (v129)
  {
    goto LABEL_5;
  }

LABEL_50:
  v30 = _swiftEmptyArrayStorage;
LABEL_51:
  v27 = sub_40854(v30);

  if (v39 >> 62)
  {
    goto LABEL_75;
  }

  v47 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
  if (v47)
  {
LABEL_53:
    if (v47 < 1)
    {
      goto LABEL_124;
    }

    v48 = 0;
    v29 = &stru_226FE8.align;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v50 = sub_1B50B4();
      }

      else
      {
        v50 = *(v39 + 8 * v48 + 32);
      }

      v51 = v50;
      v52 = [v50 mediaType];
      if (v52 == &dword_0 + 1)
      {
        v54 = [v51 assetID];
        if (v54 < 0)
        {
          goto LABEL_70;
        }

        v49 = v54;
      }

      else
      {
        if (v52 != &dword_0 + 2)
        {
          goto LABEL_57;
        }

        v53 = [v51 assetID];
        if (v53 < 0)
        {
          goto LABEL_70;
        }

        v49 = v53;
      }

      sub_111CE0(&v138, v49);
      sub_E000C(v49);
LABEL_57:
      ++v48;
    }

    while (v47 != v48);
  }

LABEL_76:

  sub_DFDD8(v27);
  sub_DFDD8(v27);
  sub_DFDD8(v27);
  sub_DFDD8(v27);

  if (v129)
  {
    v55 = 0;
    v56 = v130;
    v125 = v130 & 0xFFFFFFFFFFFFFF8;
    v126 = v130 & 0xC000000000000001;
    v57 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v126)
      {
        v66 = sub_1B50B4();
      }

      else
      {
        if (v55 >= *(v125 + 16))
        {
          goto LABEL_120;
        }

        v66 = *(v56 + 8 * v55 + 32);
      }

      v27 = v66;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        v38 = sub_1B5284();
        goto LABEL_20;
      }

      v67 = [v66 assetID];
      if (v67 < 0)
      {
        goto LABEL_121;
      }

      v68 = v67;
      v128 = v55 + 1;
      sub_A6FC8(v27, &v138);
      v29 = v138;
      v69 = v139;
      v147 = v142;
      v148 = v143;
      v149 = v144;
      v145 = v140;
      v146 = v141;
      if (!v139)
      {
        v79 = sub_43124(v68);
        v29 = v128;
        if (v80)
        {
          v81 = v79;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v137 = v57;
          v65 = v129;
          v56 = v130;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1864C4();
            v57 = v137;
          }

          v83 = v57[7] + 88 * v81;
          v84 = *(v83 + 16);
          v131 = *v83;
          v132 = v84;
          v86 = *(v83 + 48);
          v85 = *(v83 + 64);
          v87 = *(v83 + 32);
          v136 = *(v83 + 80);
          v134 = v86;
          v135 = v85;
          v133 = v87;
          sub_85554(&v131);
          sub_53018(v81, v57);
        }

        else
        {

          v65 = v129;
          v56 = v130;
        }

        goto LABEL_80;
      }

      v70 = swift_isUniquelyReferenced_nonNull_native();
      v137 = v57;
      v71 = sub_43124(v68);
      v73 = v57[2];
      v74 = (v72 & 1) == 0;
      v75 = __OFADD__(v73, v74);
      v76 = v73 + v74;
      if (v75)
      {
        goto LABEL_122;
      }

      v77 = v72;
      if (v57[3] < v76)
      {
        break;
      }

      if (v70)
      {
        goto LABEL_96;
      }

      v93 = v71;
      sub_1864C4();
      v71 = v93;
      if ((v77 & 1) == 0)
      {
LABEL_97:
        v57 = v137;
        v137[(v71 >> 6) + 8] |= 1 << v71;
        *(v57[6] + 8 * v71) = v68;
        v88 = v57[7] + 88 * v71;
        *v88 = v29;
        *(v88 + 8) = v69;
        *(v88 + 80) = v149;
        v89 = v148;
        *(v88 + 48) = v147;
        *(v88 + 64) = v89;
        v90 = v146;
        *(v88 + 16) = v145;
        *(v88 + 32) = v90;

        v91 = v57[2];
        v75 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v75)
        {
          goto LABEL_123;
        }

        v57[2] = v92;
        goto LABEL_79;
      }

LABEL_78:
      v57 = v137;
      v58 = v137[7] + 88 * v71;
      v59 = *(v58 + 16);
      v131 = *v58;
      v132 = v59;
      v61 = *(v58 + 48);
      v60 = *(v58 + 64);
      v62 = *(v58 + 32);
      v136 = *(v58 + 80);
      v134 = v61;
      v135 = v60;
      v133 = v62;
      *v58 = v29;
      *(v58 + 8) = v69;
      v63 = v148;
      *(v58 + 48) = v147;
      *(v58 + 64) = v63;
      *(v58 + 80) = v149;
      v64 = v146;
      *(v58 + 16) = v145;
      *(v58 + 32) = v64;
      sub_85554(&v131);

LABEL_79:
      v65 = v129;
      v56 = v130;
      v29 = v128;
LABEL_80:
      ++v55;
      if (v29 == v65)
      {
        goto LABEL_104;
      }
    }

    sub_17FD40(v76, v70);
    v71 = sub_43124(v68);
    if ((v77 & 1) != (v78 & 1))
    {
      sub_1B5784();
      __break(1u);
      return;
    }

LABEL_96:
    if ((v77 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_78;
  }

  v57 = _swiftEmptyDictionarySingleton;
LABEL_104:

  v94 = *(v150 + 16);

  if (!v94)
  {
    goto LABEL_108;
  }

  v95 = v153;
  v96 = *(v153 + 16);
  if (v96)
  {
    v130 = sub_3503C(*(v153 + 16), 0);
    v97 = sub_3F09C(&v138, (v130 + 32), v96, v95);
    sub_417B8(v138);
    if (v97 != v96)
    {
      __break(1u);
LABEL_108:

      v138 = v57;
      sub_1B4BE4();

      return;
    }
  }

  else
  {

    v130 = _swiftEmptyArrayStorage;
  }

  v98 = v152;
  v99 = *(v152 + 16);
  if (v99)
  {
    v100 = sub_3503C(*(v152 + 16), 0);
    v101 = sub_3F09C(&v138, v100 + 4, v99, v98);
    sub_417B8(v138);
    if (v101 == v99)
    {
      goto LABEL_114;
    }

    __break(1u);
  }

  v100 = _swiftEmptyArrayStorage;
LABEL_114:
  v102 = v151;
  v103 = *(v151 + 16);
  v129 = v100;
  if (!v103)
  {
LABEL_117:

    v104 = _swiftEmptyArrayStorage;
    goto LABEL_118;
  }

  v104 = sub_3503C(v103, 0);
  v105 = sub_3F09C(&v138, v104 + 4, v103, v102);
  sub_417B8(v138);
  if (v105 != v103)
  {
    __break(1u);
    goto LABEL_117;
  }

LABEL_118:
  v106 = sub_1B4C54();
  v107 = v118;
  (*(*(v106 - 8) + 56))(v118, 1, 1, v106);
  v108 = v119;
  v109 = v120;
  v110 = v124;
  (*(v120 + 16))(v119, v123, v124);
  v111 = (*(v109 + 80) + 80) & ~*(v109 + 80);
  v112 = swift_allocObject();
  *(v112 + 2) = 0;
  *(v112 + 3) = 0;
  v113 = v129;
  v114 = v130;
  *(v112 + 4) = v127;
  *(v112 + 5) = v114;
  *(v112 + 6) = v113;
  *(v112 + 7) = v104;
  v115 = v121;
  *(v112 + 8) = v121;
  *(v112 + 9) = v57;
  (*(v109 + 32))(&v112[v111], v108, v110);

  v116 = v115;
  sub_16AB6C(0, 0, v107, &unk_1C38D0, v112);
}

void sub_A6FC8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B3E74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 mediaType];
  if (v8 == &dword_0 + 2)
  {
    v9 = 1;
  }

  else
  {
    if (v8 != &dword_0 + 1)
    {
      v9 = 0;
      v11 = 0;
      v17 = 0;
      v15 = 0;
      v16 = 0;
      v20 = 0;
      v18 = 0uLL;
      v19 = 0uLL;
      goto LABEL_12;
    }

    v9 = 0;
  }

  v10 = [a1 leafGenres];
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v12 = v10;
    v26 = _swiftEmptyArrayStorage;
    sub_1B4E44();
    sub_B9010(&qword_22B220, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
    sub_1B4ED4();
    while (*(&v24 + 1))
    {
      sub_430B8(&v23, v22);
      sub_B4558(&v26, v22);
      sub_2BF8(v22);
      sub_1B4ED4();
    }

    v13 = *(v5 + 8);
    v5 += 8;
    v13(v7, v4);
    v11 = v26;
  }

  v14 = [a1 mappedAssetID];
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = v14;
    v16 = v14 == 0;
    v17 = sub_B478C(a1);
    sub_B48AC(a1, &v23);
    v18 = v23;
    v19 = v24;
    v20 = v25;
LABEL_12:
    *a2 = v9;
    *(a2 + 7) = 0;
    *(a2 + 5) = 0;
    *(a2 + 1) = 0;
    *(a2 + 8) = v11;
    *(a2 + 16) = v17;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    *(a2 + 39) = 0;
    *(a2 + 37) = 0;
    *(a2 + 33) = 0;
    *(a2 + 40) = v18;
    *(a2 + 56) = v19;
    *(a2 + 72) = v20;
    *(a2 + 79) = 0;
    *(a2 + 77) = 0;
    *(a2 + 73) = 0;
    *(a2 + 80) = 0;
    return;
  }

  __break(1u);

  sub_2BF8(v22);
  (*(v5 + 8))(v7, v4);

  __break(1u);
}

uint64_t sub_A7288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = v16;
  v8[5] = v17;
  v13 = swift_task_alloc();
  v8[6] = v13;
  *v13 = v8;
  v13[1] = sub_A7358;

  return sub_A7608(a5, a6, a7, a8);
}

uint64_t sub_A7358(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_A7580;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_A7480;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A7480()
{
  v8 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v3;
  sub_B56A0(v1, sub_18E388, 0, isUniquelyReferenced_nonNull_native, &v7);

  if (v2)
  {
  }

  else
  {
    v0[3] = v7;
    sub_2B0C(&qword_22B290, &qword_1C38C0);
    sub_1B4BE4();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_A7580()
{
  v0[2] = v0[7];
  sub_2B0C(&qword_22B290, &qword_1C38C0);
  sub_1B4BD4();
  v1 = v0[1];

  return v1();
}

uint64_t sub_A7608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = *v4;
  return _swift_task_switch(sub_A7658, 0, 0);
}

uint64_t sub_A7658()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = sub_2B0C(&qword_22B028, &qword_1C3640);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_A7780;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v3, v5, 0, 0, &unk_1C38F8, v4, v3);
}

uint64_t sub_A7780()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_A7AE0;
  }

  else
  {

    v2 = sub_A789C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A789C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_A79AC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD000000000000015, 0x80000000001D6F30, sub_B7B18, v5, &type metadata for Int);
}

uint64_t sub_A79AC()
{

  return _swift_task_switch(sub_A7AC4, 0, 0);
}

uint64_t sub_A7AE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MetadataCache.fetchMetadataFor(genreIDs:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_A7B64, 0, 0);
}

uint64_t sub_A7B64()
{
  v1 = v0[9];
  v2 = *(v1 + 48);
  v0[10] = v2;
  if (v2)
  {
    v3 = v0[8];
    v4 = swift_task_alloc();
    v0[11] = v4;
    v4[2] = v2;
    v4[3] = v1;
    v4[4] = v3;
    v5 = v2;
    v6 = swift_task_alloc();
    v0[12] = v6;
    v7 = sub_2B0C(&qword_22B030, &qword_1C3660);
    *v6 = v0;
    v6[1] = sub_A7DA0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD00000000000001BLL, 0x80000000001D6BE0, sub_B548C, v4, v7);
  }

  else
  {
    sub_404C4(v1 + 144, (v0 + 2));
    v8 = v0[5];
    v9 = v0[6];
    sub_2698(v0 + 2, v8);
    v13 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_A7F24;
    v11 = v0[8];

    return v13(v11, v8, v9);
  }
}

uint64_t sub_A7DA0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_A8118;
  }

  else
  {

    v2 = sub_A7EBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A7EBC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_A7F24(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_A80B4;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_A804C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A804C()
{
  sub_2BF8(v0 + 2);
  v1 = v0[16];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_A80B4()
{
  sub_2BF8((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A8118()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_A8184(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2B0C(&qword_22B230, &qword_1C37F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a2;
  *(v13 + 4) = a4;
  (*(v9 + 32))(&v13[v12], v11, v8);
  aBlock[4] = sub_B5614;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_21AB88;
  v14 = _Block_copy(aBlock);

  v15 = a2;

  [v15 performBlock:v14];
  _Block_release(v14);
}

void sub_A8368(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v77 = a1;
  v81 = sub_2B0C(&qword_22B230, &qword_1C37F8);
  v76 = *(v81 - 8);
  v73 = *(v76 + 64);
  __chkstk_darwin(v81);
  v75 = &v69 - v6;
  v7 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v7 - 8);
  v74 = &v69 - v8;
  sub_B5A00(a2);
  v83 = a3;
  type metadata accessor for CachedPersonalizationBookMetadataGenre();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    sub_1B47C4();
    v10 = sub_1B4794();
  }

  v11 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v10];

  sub_2B0C(&qword_22B238, &unk_1C3808);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BFC80;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 32) = 0x444965726E6567;
  *(v12 + 40) = 0xE700000000000000;
  *(v12 + 88) = sub_2B0C(&qword_2292C8, &unk_1BCB00);
  *(v12 + 64) = a3;

  v13 = sub_1B4794();
  isa = sub_1B4AA4().super.isa;

  v15 = [objc_opt_self() predicateWithFormat:v13 argumentArray:isa];

  [v11 setPredicate:v15];
  v78 = a2;
  v79 = v11;
  v16 = sub_1B4E24();
  v28 = v16;
  v72 = 0;
  if (!(v16 >> 62))
  {
    v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    v18 = v16 & 0xC000000000000001;
    if (!v17)
    {
      goto LABEL_20;
    }

LABEL_5:
    v19 = 0;
    v20 = v28 & 0xFFFFFFFFFFFFFF8;
    v21 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v18)
      {
        v22 = sub_1B50B4();
      }

      else
      {
        if (v19 >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_59;
        }

        v22 = *(v28 + 8 * v19 + 32);
      }

      v23 = v22;
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v25 = [v22 genreID];

      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_33008(0, *(v21 + 2) + 1, 1, v21);
      }

      v27 = *(v21 + 2);
      v26 = *(v21 + 3);
      if (v27 >= v26 >> 1)
      {
        v21 = sub_33008((v26 > 1), v27 + 1, 1, v21);
      }

      *(v21 + 2) = v27 + 1;
      *&v21[8 * v27 + 32] = v25;
      ++v19;
      if (v24 == v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v17 = sub_1B5284();
  v18 = v28 & 0xC000000000000001;
  if (v17)
  {
    goto LABEL_5;
  }

LABEL_20:
  v20 = v28 & 0xFFFFFFFFFFFFFF8;
  v21 = _swiftEmptyArrayStorage;
LABEL_21:
  v29 = sub_40854(v21);

  sub_DFDD8(v29);

  if (v17)
  {
    v30 = _swiftEmptyDictionarySingleton;
    for (i = 0; ; i = v34)
    {
      while (1)
      {
        if (v18)
        {
          v32 = sub_1B50B4();
        }

        else
        {
          if (i >= *(v20 + 16))
          {
            goto LABEL_62;
          }

          v32 = *(v28 + 8 * i + 32);
        }

        v33 = v32;
        v34 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_61;
        }

        v35 = [v32 genreID];
        if (v35 < 0)
        {
          goto LABEL_63;
        }

        v36 = v35;
        v37 = [v33 path];
        if (v37)
        {
          break;
        }

LABEL_38:
        v47 = sub_43124(v36);
        if (v48)
        {
          v49 = v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v82 = v30;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_186684();
            v30 = v82;
          }

          sub_5318C(v49, v30);

          goto LABEL_44;
        }

        ++i;
        if (v34 == v17)
        {
          goto LABEL_54;
        }
      }

      v38 = v37;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_38;
      }

      v82 = 0;
      sub_1B4AB4();

      v39 = v82;
      if (!v82)
      {
        goto LABEL_38;
      }

      v71 = [v33 genreID];
      if ((v71 & 0x8000000000000000) != 0)
      {
        goto LABEL_65;
      }

      v70 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v30;
      v41 = sub_43124(v36);
      v42 = v30[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_66;
      }

      if (v30[3] >= v44)
      {
        if (v70)
        {
          v30 = v82;
          if (v40)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v69 = v40;
          sub_186684();
          v30 = v82;
          if (v69)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        v69 = v40;
        sub_180090(v44, v70);
        v45 = sub_43124(v36);
        if ((v69 & 1) != (v46 & 1))
        {
          goto LABEL_68;
        }

        v41 = v45;
        v30 = v82;
        if (v69)
        {
LABEL_48:
          v51 = (v30[7] + 16 * v41);
          *v51 = v71;
          v51[1] = v39;

          goto LABEL_44;
        }
      }

      v30[(v41 >> 6) + 8] |= 1 << v41;
      *(v30[6] + 8 * v41) = v36;
      v52 = (v30[7] + 16 * v41);
      *v52 = v71;
      v52[1] = v39;

      v53 = v30[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_67;
      }

      v30[2] = v55;
LABEL_44:
      if (v34 == v17)
      {
        goto LABEL_54;
      }
    }
  }

  v30 = _swiftEmptyDictionarySingleton;
LABEL_54:

  v56 = v83;
  v57 = *(v83 + 16);
  if (!v57)
  {

    v82 = v30;
    sub_1B4BE4();

    return;
  }

  v58 = sub_3503C(*(v83 + 16), 0);
  v59 = sub_3F09C(&v82, v58 + 4, v57, v56);
  sub_417B8(v82);
  if (v59 == v57)
  {
    v60 = sub_1B4C54();
    v61 = v74;
    (*(*(v60 - 8) + 56))(v74, 1, 1, v60);
    v63 = v75;
    v62 = v76;
    v64 = v81;
    (*(v76 + 16))(v75, v80, v81);
    v65 = (*(v62 + 80) + 64) & ~*(v62 + 80);
    v66 = swift_allocObject();
    *(v66 + 2) = 0;
    *(v66 + 3) = 0;
    *(v66 + 4) = v77;
    *(v66 + 5) = v58;
    v67 = v78;
    *(v66 + 6) = v78;
    *(v66 + 7) = v30;
    (*(v62 + 32))(&v66[v65], v63, v64);

    v68 = v67;
    sub_16AB6C(0, 0, v61, &unk_1C3820, v66);

    return;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  sub_1B5784();
  __break(1u);
}

uint64_t sub_A8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v11 = swift_task_alloc();
  v8[6] = v11;
  *v11 = v8;
  v11[1] = sub_A8C64;

  return sub_A8F14(a5, a6);
}

uint64_t sub_A8C64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_A8E8C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_A8D8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A8D8C()
{
  v8 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v3;
  sub_B60C4(v1, sub_B5458, 0, isUniquelyReferenced_nonNull_native, &v7);

  if (v2)
  {
  }

  else
  {
    v0[3] = v7;
    sub_2B0C(&qword_22B230, &qword_1C37F8);
    sub_1B4BE4();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_A8E8C()
{
  v0[2] = v0[7];
  sub_2B0C(&qword_22B230, &qword_1C37F8);
  sub_1B4BD4();
  v1 = v0[1];

  return v1();
}

uint64_t sub_A8F14(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  return _swift_task_switch(sub_A8F60, 0, 0);
}

uint64_t sub_A8F60()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_2B0C(&qword_22B240, &qword_1C3830);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = sub_2B0C(&qword_22B030, &qword_1C3660);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_A9080;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v3, v5, 0, 0, &unk_1C3840, v4, v3);
}

uint64_t sub_A9080()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_A93E0;
  }

  else
  {

    v2 = sub_A919C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A919C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  v0[11] = v3;
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_A92AC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD00000000000001ALL, 0x80000000001D6E00, sub_B63EC, v4, &type metadata for Int);
}

uint64_t sub_A92AC()
{

  return _swift_task_switch(sub_A93C4, 0, 0);
}

uint64_t sub_A93E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A9444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[46] = a5;
  v6[47] = a6;
  v6[44] = a3;
  v6[45] = a4;
  v6[42] = a1;
  v6[43] = a2;
  v7 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v6[48] = v7;
  v6[49] = *(v7 - 8);
  v6[50] = swift_task_alloc();
  v8 = type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord(0);
  v6[51] = v8;
  v6[52] = *(v8 - 8);
  v6[53] = swift_task_alloc();
  sub_2B0C(&qword_22B2B8, &qword_1C3908);
  v6[54] = swift_task_alloc();
  v9 = sub_2B0C(&qword_22B2C0, &qword_1C3910);
  v6[55] = v9;
  v6[56] = *(v9 - 8);
  v6[57] = swift_task_alloc();
  sub_2B0C(&qword_2296C0, &qword_1C3800);
  v6[58] = swift_task_alloc();
  sub_2B0C(&qword_22B2C8, &qword_1C3918);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v10 = sub_1B40F4();
  v6[61] = v10;
  v11 = *(v10 - 8);
  v6[62] = v11;
  v6[63] = *(v11 + 64);
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  if (qword_2282B0 != -1)
  {
    swift_once();
  }

  v12 = qword_22AFF8;
  v6[71] = qword_22AFF8;

  return _swift_task_switch(sub_A9774, v12, 0);
}

uint64_t sub_A9774(uint64_t a1)
{
  v184 = v1;
  v3 = v1[62];
  v2 = v1[63];
  v4 = v1[47];
  sub_1B40E4();

  v6 = sub_40854(v5);

  v1[35] = v6;

  v8 = sub_40854(v7);

  v1[36] = v8;

  v10 = sub_40854(v9);

  v1[37] = v10;
  v175 = v1;
  swift_beginAccess();
  v11 = *(v4 + 88);
  v12 = *(v11 + 64);
  v147 = v11 + 64;
  v13 = -1;
  v14 = -1 << *(v11 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & v12;
  v145 = v4;
  v146 = (63 - v14) >> 6;
  v173 = v3;
  v16 = (v3 + 32);
  v169 = v2 + 7;
  v148 = *(v4 + 88);
  v149 = (v3 + 8);

  v17 = 0;
  v174 = (v3 + 32);
  if (!v15)
  {
LABEL_5:
    if (v146 <= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v146;
    }

    v21 = v20 - 1;
    v19 = v175;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_36;
      }

      if (v18 >= v146)
      {
        v71 = v175[59];
        v72 = sub_2B0C(&qword_22B2D0, &qword_1C3920);
        (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v147 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
    v18 = v17;
    v19 = v175;
LABEL_12:
    v22 = v19[69];
    v23 = v19[61];
    v24 = v19[59];
    v25 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v26 = v25 | (v18 << 6);
    (*(v173 + 16))(v22, *(v148 + 48) + *(v173 + 72) * v26, v23);
    v27 = *(v148 + 56);
    v28 = sub_2B0C(&qword_22B2D0, &qword_1C3920);
    v29 = *(v28 + 48);
    v177 = *(v27 + 16 * v26);
    v16 = v174;
    v19 = v175;
    (*(v173 + 32))(v24, v22, v23);
    *(v24 + v29) = v177;
    (*(*(v28 - 8) + 56))(v24, 0, 1, v28);

    v21 = v18;
LABEL_13:
    v30 = v19[60];
    sub_5ED18(v19[59], v30, &qword_22B2C8, &qword_1C3918);
    v31 = sub_2B0C(&qword_22B2D0, &qword_1C3920);
    if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
    {
      break;
    }

    v32 = *(v19[60] + *(v31 + 48));
    v172 = v21;
    v176 = *v16;
    (*v16)(v19[68]);
    v33 = v19[35];

    v34 = sub_C6A04(v33, v32);
    v35 = v19[36];

    v36 = sub_C6A04(v35, v32);

    v38 = sub_1ABCA4(v37, v34);
    if (*(v38 + 16))
    {
      v39 = v19[69];
      v151 = v19[68];
      v152 = v19[70];
      v40 = v19[67];
      v150 = v40;
      v41 = v19[61];
      v42 = v34;
      v162 = v34;
      v166 = v38;
      v43 = v19[58];
      v153 = v19[63];
      v156 = v43;
      v160 = v19[47];
      sub_DFDD8(v42);
      sub_DFDD8(v36);
      v44 = sub_1B4C54();
      (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
      v45 = *(v173 + 16);
      v45(v39, v151, v41);
      v46 = v40;
      v47 = v41;
      v45(v46, v152, v41);
      v48 = *(v173 + 80);
      v49 = (v48 + 40) & ~v48;
      v50 = (v153 + v48 + v49) & ~v48;
      v154 = (v50 + v169) & 0xFFFFFFFFFFFFFFF8;
      v51 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      v53[2] = 0;
      v53[3] = 0;
      v53[4] = v160;
      (v176)(v53 + v49, v39, v47);
      (v176)(v53 + v50, v150, v47);
      *(v53 + v154) = v166;
      *(v53 + v51) = v162;
      v19 = v175;
      *(v53 + v52) = v36;

      sub_A2920(v156, &unk_1C3958, v53, &qword_22B2A0, &qword_1C38E8);
      sub_42F48(v156, &qword_2296C0, &qword_1C3800);
    }

    else
    {
    }

    v54 = v19[46];

    v55 = sub_B5188(v54, v32);

    if (*(v55 + 16))
    {
      v56 = v19[70];
      v57 = v19[69];
      v58 = v19[68];
      v59 = v19[67];
      v157 = v59;
      v60 = v19[63];
      v61 = v19;
      v62 = v19[61];
      v63 = v61[58];
      v161 = v60;
      v163 = v61[47];
      sub_DFDD8(v55);
      v64 = sub_1B4C54();
      (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
      v65 = *(v173 + 16);
      v65(v57, v58, v62);
      v65(v59, v56, v62);
      v66 = *(v173 + 80);
      v67 = (v66 + 40) & ~v66;
      v68 = (v161 + v66 + v67) & ~v66;
      v69 = swift_allocObject();
      v69[2] = 0;
      v69[3] = 0;
      v69[4] = v163;
      v70 = v69 + v67;
      v16 = v174;
      (v176)(v70, v57, v62);
      (v176)(v69 + v68, v157, v62);
      *(v69 + ((v68 + v169) & 0xFFFFFFFFFFFFFFF8)) = v55;

      sub_A2920(v63, &unk_1C3968, v69, &qword_22B2A0, &qword_1C38E8);
      sub_42F48(v63, &qword_2296C0, &qword_1C3800);
      (*(v173 + 8))(v58, v62);
      v17 = v172;
    }

    else
    {
      (*v149)(v19[68], v19[61]);

      v17 = v172;
      v16 = v174;
    }

    if (!v15)
    {
      goto LABEL_5;
    }
  }

  v73 = v19[35];
  v74 = v19[36];
  v19[72] = v73;
  v75 = *(v73 + 16);
  v19[73] = v74;
  if (v75 || *(v74 + 16))
  {
    v76 = v19[66];
    sub_1B40E4();
    swift_bridgeObjectRetain_n();

    v78 = sub_1ABCA4(v77, v73);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v182 = *(v145 + 88);
    *(v145 + 88) = 0x8000000000000000;
    sub_54350(v78, _swiftEmptyArrayStorage, v76, isUniquelyReferenced_nonNull_native);
    *(v145 + 88) = v182;
    swift_endAccess();
    v80 = *(v73 + 16);
    if (v80)
    {
      v81 = sub_3503C(*(v73 + 16), 0);
      v82 = sub_3F09C(&v182, v81 + 4, v80, v73);
      sub_417B8(v182);
      if (v82 == v80)
      {
LABEL_29:
        v182 = v81;

        sub_A2B24(&v182);

        v176 = v182;
        v83 = *(v74 + 16);
        if (v83)
        {
          v84 = sub_3503C(*(v74 + 16), 0);
          v85 = sub_3F09C(&v182, v84 + 4, v83, v74);
          v86 = v182;

          v87 = sub_417B8(v86);
          if (v85 != v83)
          {
            __break(1u);
            goto LABEL_53;
          }
        }

        else
        {
          v84 = _swiftEmptyArrayStorage;
        }

        v179 = v84;
        sub_A2B24(&v179);
        v16 = v179;
        v182 = 0;
        v183 = 0xE000000000000000;
        sub_1B5084(61);
        v179 = v182;
        v180 = v183;
        v186._object = 0x80000000001D6E20;
        v186._countAndFlagsBits = 0xD000000000000010;
        sub_1B48D4(v186);
        sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v187._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v187);

        v188._countAndFlagsBits = 0xD00000000000001ELL;
        v188._object = 0x80000000001D6F50;
        sub_1B48D4(v188);
        v189._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v189);

        v190._countAndFlagsBits = 0x73444920726F6620;
        v190._object = 0xE900000000000020;
        sub_1B48D4(v190);
        v92 = *(v78 + 16);
        if (!v92)
        {
          goto LABEL_37;
        }

        v93 = sub_3503C(*(v78 + 16), 0);
        v94 = sub_3F09C(&v182, v93 + 4, v92, v78);
        v95 = v182;

        sub_417B8(v95);
        if (v94 == v92)
        {
LABEL_38:
          v181 = v93;
          sub_A2B24(&v181);
          v96 = v175[70];
          v97 = v175[69];
          v158 = v175[67];
          v167 = v175[66];
          v98 = v175[61];
          v164 = v175[58];
          v170 = v175[47];

          v99 = sub_1B4AD4();
          v101 = v100;

          v191._countAndFlagsBits = v99;
          v191._object = v101;
          sub_1B48D4(v191);

          v102 = sub_1B4C54();
          (*(*(v102 - 8) + 56))(v164, 1, 1, v102);
          v103 = *(v173 + 16);
          v104 = v97;
          v103(v97, v167, v98);
          v103(v158, v96, v98);
          v105 = *(v173 + 80);
          v106 = (v105 + 32) & ~v105;
          v107 = (v106 + v169) & 0xFFFFFFFFFFFFFFF8;
          v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
          v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
          v110 = (v105 + v109 + 8) & ~v105;
          v111 = swift_allocObject();
          *(v111 + 16) = 0;
          *(v111 + 24) = 0;
          v112 = *(v173 + 32);
          v112(v111 + v106, v104, v98);
          *(v111 + v107) = v170;
          *(v111 + v108) = v176;
          *(v111 + v109) = v16;
          v19 = v175;
          v112(v111 + v110, v158, v98);

          sub_A2920(v164, &unk_1C3930, v111, &qword_22B2A0, &qword_1C38E8);
          sub_42F48(v164, &qword_2296C0, &qword_1C3800);
          (*(v173 + 8))(v167, v98);
          goto LABEL_39;
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v93 = _swiftEmptyArrayStorage;
        goto LABEL_38;
      }

      __break(1u);
    }

    v81 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

LABEL_39:
  v113 = v19[37];
  v19[74] = v113;
  if (!*(v113 + 16))
  {
    goto LABEL_43;
  }

  v114 = v19[65];
  sub_1B40E4();
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *(v145 + 88);
  *(v145 + 88) = 0x8000000000000000;
  sub_54350(v113, _swiftEmptyArrayStorage, v114, v115);
  *(v145 + 88) = v182;
  swift_endAccess();
  v116 = *(v113 + 16);
  if (v116)
  {
    v117 = sub_3503C(*(v113 + 16), 0);
    v118 = sub_3F09C(&v182, v117 + 4, v116, v113);
    sub_417B8(v182);
    if (v118 != v116)
    {
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {

    v117 = _swiftEmptyArrayStorage;
  }

  v182 = v117;

  sub_A2B24(&v182);

  v178 = v182;
  v182 = 0;
  v183 = 0xE000000000000000;
  sub_1B5084(63);
  v179 = v182;
  v180 = v183;
  v192._countAndFlagsBits = 0xD000000000000010;
  v192._object = 0x80000000001D6E20;
  sub_1B48D4(v192);
  sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v193._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v193);

  v194._countAndFlagsBits = 0xD000000000000020;
  v194._object = 0x80000000001D6E40;
  sub_1B48D4(v194);
  v195._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v195);

  v196._countAndFlagsBits = 0x73444920726F6620;
  v196._object = 0xE900000000000020;
  sub_1B48D4(v196);
  v122 = *(v113 + 16);
  if (!v122)
  {
    v123 = _swiftEmptyArrayStorage;
    v126 = v175;
    goto LABEL_51;
  }

  v123 = sub_3503C(*(v113 + 16), 0);
  v124 = sub_3F09C(&v182, v123 + 4, v122, v113);
  v125 = v182;

  v87 = sub_417B8(v125);
  if (v124 != v122)
  {
LABEL_53:
    __break(1u);
    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v87, v88, v89, v90, v91);
  }

  v126 = v175;
LABEL_51:
  v181 = v123;
  sub_A2B24(&v181);
  v127 = v126[69];
  v128 = v126[67];
  v155 = v127;
  v159 = v128;
  v129 = v126[65];
  v165 = v126[70];
  v168 = v129;
  v130 = v126[61];
  v131 = v126[58];
  v171 = v126[47];
  v132 = sub_1B4AD4();
  v134 = v133;

  v197._countAndFlagsBits = v132;
  v197._object = v134;
  sub_1B48D4(v197);

  v135 = sub_1B4C54();
  (*(*(v135 - 8) + 56))(v131, 1, 1, v135);
  v136 = *(v173 + 16);
  v136(v127, v129, v130);
  v136(v128, v165, v130);
  v137 = *(v173 + 80);
  v138 = (v137 + 32) & ~v137;
  v139 = (v138 + v169) & 0xFFFFFFFFFFFFFFF8;
  v140 = (v139 + 15) & 0xFFFFFFFFFFFFFFF8;
  v141 = (v137 + v140 + 8) & ~v137;
  v142 = swift_allocObject();
  *(v142 + 16) = 0;
  *(v142 + 24) = 0;
  v143 = *(v173 + 32);
  v143(v142 + v138, v155, v130);
  *(v142 + v139) = v171;
  *(v142 + v140) = v178;
  v19 = v175;
  v143(v142 + v141, v159, v130);

  sub_A2920(v131, &unk_1C3940, v142, &qword_22B2A0, &qword_1C38E8);
  sub_42F48(v131, &qword_2296C0, &qword_1C3800);
  (*(v173 + 8))(v168, v130);
LABEL_43:
  v19[75] = 0x80000000001D6E20;
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  v119 = sub_B9010(&qword_22B278, type metadata accessor for RequestListActor.ActorType, &unk_1C37B4);
  v19[76] = v119;
  v19[77] = _swiftEmptyDictionarySingleton;
  v120 = v19[71];
  v121 = swift_task_alloc();
  v19[78] = v121;
  *v121 = v19;
  v121[1] = sub_AAB00;
  v87 = v19[54];
  v90 = v19[55];
  v91 = v19 + 38;
  v88 = v120;
  v89 = v119;

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v87, v88, v89, v90, v91);
}

uint64_t sub_AAB00()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = *(v2 + 568);

    v4 = sub_AB624;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 568);
    v4 = sub_AAC28;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_AAC28()
{
  v71 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  if ((*(*(v0 + 392) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 560);
    v61 = *(v0 + 616);
    v5 = *(v0 + 488);
    v4 = *(v0 + 496);
    v6 = *(v0 + 336);
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    (*(v4 + 8))(v3, v5);

    *v6 = v61;

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 600);
  v10 = *(v1 + *(v2 + 48));
  (*(*(v0 + 496) + 32))(*(v0 + 512), v1, *(v0 + 488));
  *(v0 + 232) = 0;
  *(v0 + 240) = 0xE000000000000000;
  sub_1B5084(68);
  v11 = *(v0 + 240);
  *(v0 + 216) = *(v0 + 232);
  *(v0 + 224) = v11;
  v73._countAndFlagsBits = 0xD000000000000010;
  v73._object = v9;
  sub_1B48D4(v73);
  sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v74._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v74);

  v75._countAndFlagsBits = 0xD000000000000020;
  v75._object = 0x80000000001D6E70;
  sub_1B48D4(v75);
  v76._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v76);

  v77._countAndFlagsBits = 0x74697720726F6620;
  v77._object = 0xEE00207344492068;
  sub_1B48D4(v77);
  v12 = *(v10 + 16);
  if (v12)
  {
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 16) = v12;
    *(v13 + 24) = 2 * (v15 >> 3);
    v16 = sub_43128();
    v17 = *(v0 + 16);
    swift_bridgeObjectRetain_n();
    sub_417B8(v17);
    if (v16 != v12)
    {
      goto LABEL_38;
    }
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v18 = *(v0 + 632);
  *(v0 + 312) = v13;
  sub_A2B24((v0 + 312));
  if (v18)
  {
  }

  v13 = *(v0 + 616);
  v19 = *(v0 + 376);

  v20 = sub_1B4AD4();
  v22 = v21;

  v78._countAndFlagsBits = v20;
  v78._object = v22;
  sub_1B48D4(v78);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = v13;
  sub_B66E8(v10, sub_18E388, 0, isUniquelyReferenced_nonNull_native, &v70);

  v62 = v70;
  swift_beginAccess();
  v24 = *(v19 + 88);
  if (*(v24 + 16))
  {
    v25 = sub_3AC78(*(v0 + 512));
    if (v26)
    {
      v27 = *(*(v24 + 56) + 16 * v25 + 8);
      swift_endAccess();
      v65 = *(v27 + 16);
      if (!v65)
      {
LABEL_29:
        v49 = *(v0 + 512);

        swift_beginAccess();
        v50 = sub_3AC78(v49);
        if ((v51 & 1) == 0)
        {
LABEL_32:
          swift_endAccess();
          goto LABEL_33;
        }

        v13 = v50;
        v52 = *(v0 + 376);
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v54 = *(v52 + 88);
        *(v0 + 328) = v54;
        if (v53)
        {
LABEL_31:
          v55 = *(v0 + 376);
          (*(*(v0 + 496) + 8))(*(v54 + 48) + *(*(v0 + 496) + 72) * v13, *(v0 + 488));

          sub_5EF08();
          *(v55 + 88) = v54;
          goto LABEL_32;
        }

LABEL_39:
        sub_1867EC();
        v54 = *(v0 + 328);
        goto LABEL_31;
      }

      v69 = (v0 + 320);
      v28 = *(*(v0 + 416) + 80);
      v64 = v27 + ((v28 + 32) & ~v28);

      v29 = 0;
      v63 = v27;
      while (v29 < *(v27 + 16))
      {
        v30 = *(v0 + 600);
        v31 = *(v0 + 424);
        sub_B8250(v64 + *(*(v0 + 416) + 72) * v29, v31, type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord);
        v32 = swift_task_alloc();
        *(v32 + 16) = v31;

        v34 = sub_B7060(v33, sub_B82B8, v32, sub_B6A9C, sub_B6A9C);

        *(v0 + 264) = 0;
        *(v0 + 272) = 0xE000000000000000;
        sub_1B5084(59);
        v35 = *(v0 + 272);
        *(v0 + 248) = *(v0 + 264);
        *(v0 + 256) = v35;
        v79._countAndFlagsBits = 0xD000000000000010;
        v79._object = v30;
        sub_1B48D4(v79);
        v80._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v80);

        v81._countAndFlagsBits = 0x69796C7070757320;
        v81._object = 0xEF2073444920676ELL;
        sub_1B48D4(v81);
        v36 = v34[2];
        if (v36)
        {
          v13 = v29;
          sub_2B0C(&qword_229238, &qword_1C09C0);
          v37 = swift_allocObject();
          v38 = j__malloc_size(v37);
          v39 = v38 - 32;
          if (v38 < 32)
          {
            v39 = v38 - 25;
          }

          v37[2] = v36;
          v37[3] = 2 * (v39 >> 3);
          v67 = sub_43128();
          v40 = *(v0 + 56);
          swift_retain_n();
          sub_417B8(v40);
          if (v67 != v36)
          {
            goto LABEL_37;
          }
        }

        else
        {

          v37 = _swiftEmptyArrayStorage;
        }

        *v69 = v37;
        sub_A2B24(v69);
        v66 = *(v0 + 512);
        v68 = v29 + 1;
        v42 = *(v0 + 488);
        v41 = *(v0 + 496);
        v43 = *(v0 + 424);
        v44 = *(v0 + 400);
        v45 = *(v0 + 384);

        v46 = sub_1B4AD4();
        v48 = v47;

        v82._countAndFlagsBits = v46;
        v82._object = v48;
        sub_1B48D4(v82);

        v83._countAndFlagsBits = 0xD000000000000016;
        v83._object = 0x80000000001D6EA0;
        sub_1B48D4(v83);
        v84._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v84);

        v13 = *(v45 + 48);
        (*(v41 + 16))(v44, v66, v42);
        v29 = v68;
        *(v44 + v13) = v34;
        sub_2B0C(&qword_22B2D8, &qword_1C3948);
        sub_1B4BE4();
        sub_B82C0(v43, type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord);
        v27 = v63;
        if (v65 == v68)
        {

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  swift_endAccess();

LABEL_33:
  (*(*(v0 + 496) + 8))(*(v0 + 512), *(v0 + 488));
  *(v0 + 616) = v62;
  v56 = *(v0 + 608);
  v57 = *(v0 + 568);
  v58 = swift_task_alloc();
  *(v0 + 624) = v58;
  *v58 = v0;
  v58[1] = sub_AAB00;
  v59 = *(v0 + 432);
  v60 = *(v0 + 440);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v59, v57, v56, v60, v0 + 304);
}

uint64_t sub_AB624()
{
  v1 = v0[70];
  v3 = v0[61];
  v2 = v0[62];
  (*(v0[56] + 8))(v0[57], v0[55]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_AB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  return _swift_task_switch(sub_AB7E0, 0, 0);
}

uint64_t sub_AB7E0()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v1[1] = *(v0 + 24);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  *v4 = v0;
  v4[1] = sub_AB8F4;
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000043, 0x80000000001D6F70, sub_B8C54, v1, v5);
}

uint64_t sub_AB8F4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_ABA30, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_ABA30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_ABA94(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a6;
  v55 = a7;
  v52 = a2;
  v53 = a5;
  v49 = a3;
  v50 = a4;
  v51 = a1;
  v7 = sub_2B0C(&qword_22B2D8, &qword_1C3948);
  v8 = *(v7 - 8);
  v45 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_1B40F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v17 - 8);
  v19 = &v42 - v18;
  v20 = sub_1B4C54();
  v21 = *(*(v20 - 8) + 56);
  v47 = v19;
  v21(v19, 1, 1, v20);
  v44 = v12;
  v22 = *(v12 + 16);
  v46 = v16;
  v22(v16, v49, v11);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v11;
  v22(v48, v50, v11);
  v23 = v8;
  v24 = *(v8 + 16);
  v25 = v51;
  v50 = v10;
  v51 = v7;
  v24(v10, v25, v7);
  v26 = qword_2282B0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_22AFF8;
  v42 = qword_22AFF8;
  v43 = sub_B9010(&qword_22B278, type metadata accessor for RequestListActor.ActorType, &unk_1C37B4);
  v28 = v44;
  v29 = *(v44 + 80);
  v30 = (v29 + 40) & ~v29;
  v31 = (v13 + v29 + v30) & ~v29;
  v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v23 + 80) + v32 + 8) & ~*(v23 + 80);
  v34 = (v45 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v43;
  *(v35 + 2) = v27;
  *(v35 + 3) = v36;
  *(v35 + 4) = v52;
  v37 = *(v28 + 32);
  v38 = &v35[v30];
  v39 = v49;
  v37(v38, v46, v49);
  v37(&v35[v31], v48, v39);
  *&v35[v32] = v53;
  (*(v23 + 32))(&v35[v33], v50, v51);
  v40 = v55;
  *&v35[v34] = v54;
  *&v35[(v34 + 15) & 0xFFFFFFFFFFFFFFF8] = v40;

  sub_4903C(0, 0, v47, &unk_1C3988, v35);
}

uint64_t sub_ABEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v13;
  v8[19] = v14;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord(0);
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  if (qword_2282B0 != -1)
  {
    swift_once();
  }

  v10 = qword_22AFF8;
  v8[28] = qword_22AFF8;

  return _swift_task_switch(sub_AC010, v10, 0);
}

uint64_t sub_AC010()
{
  v41 = v0;
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 88);
  if (*(v2 + 16))
  {
    v3 = sub_3AC78(v0[14]);
    if (v4)
    {
      v5 = v0[22];
      v6 = v0[20];
      v7 = v0[16];
      v8 = v0[17];
      v9 = v0[15];
      v10 = (*(v2 + 56) + 16 * v3);
      v11 = *v10;
      v12 = v10[1];
      swift_endAccess();
      v13 = sub_1B40F4();
      (*(*(v13 - 8) + 16))(v5, v9, v13);
      v14 = *(v6 + 24);
      v15 = sub_2B0C(&qword_22B2D8, &qword_1C3948);
      (*(*(v15 - 8) + 16))(v5 + v14, v8, v15);
      *(v5 + *(v6 + 20)) = v7;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_4:
        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          v12 = sub_33C1C((v16 > 1), v17 + 1, 1, v12);
        }

        v19 = v0[21];
        v18 = v0[22];
        v20 = v0[14];
        v12[2] = v17 + 1;
        sub_B8BB8(v18, v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40[0] = *(v1 + 88);
        *(v1 + 88) = 0x8000000000000000;
        sub_54350(v11, v12, v20, isUniquelyReferenced_nonNull_native);
        *(v1 + 88) = v40[0];
        swift_endAccess();

        v22 = v0[1];

        return v22();
      }

LABEL_22:
      v12 = sub_33C1C(0, v12[2] + 1, 1, v12);
      goto LABEL_4;
    }
  }

  v24 = v0[18];
  v25 = v0[13];
  swift_endAccess();
  sub_1B40E4();
  sub_404C4(v25 + 104, (v0 + 2));
  v26 = v0[5];
  v36 = v0[6];
  sub_2698(v0 + 2, v26);
  v27 = *(v24 + 16);
  if (v27)
  {
    v28 = v0[18];
    v37 = sub_3503C(*(v24 + 16), 0);
    v29 = sub_3F09C(v40, v37 + 4, v27, v28);
    v1 = v40[0];
    v12 = v40[3];
    v11 = v40[4];

    sub_417B8(v1);
    if (v29 != v27)
    {
      __break(1u);
      goto LABEL_21;
    }

    v30 = v37;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v0[29] = v30;
  v31 = v0[19];
  v32 = *(v31 + 16);
  if (!v32)
  {
    v33 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v38 = v30;
  v33 = sub_3503C(v32, 0);
  v34 = sub_3F09C(v40, v33 + 4, v32, v31);
  v11 = v40[0];
  v12 = v40[1];
  v1 = v40[2];

  sub_417B8(v11);
  if (v34 != v32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v38;
LABEL_17:
  v0[30] = v33;
  v39 = (*(v36 + 8) + **(v36 + 8));
  v35 = swift_task_alloc();
  v0[31] = v35;
  *v35 = v0;
  v35[1] = sub_AC4F4;

  return v39(v30, v33, v26, v36);
}

uint64_t sub_AC4F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = *(v4 + 224);
    v6 = sub_ACA28;
  }

  else
  {
    v7 = *(v4 + 224);
    v8 = *(v4 + 184);

    *(v4 + 264) = a1;
    *(v4 + 272) = *(v8 + 48);

    v6 = sub_AC650;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_AC650()
{
  v25 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  *(v2 + *(v0 + 272)) = *(v0 + 264);
  sub_2BF8((v0 + 16));
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1B5084(42);

  v4 = sub_1B40F4();
  sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v27._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v27);

  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  sub_1B48D4(v28);
  v23 = v4;
  v29._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v29);

  v30._countAndFlagsBits = 0x656E727574657220;
  v30._object = 0xEE00207344492064;
  sub_1B48D4(v30);
  sub_43050(v2, v1, &qword_22B2A0, &qword_1C38E8);
  v5 = *(v1 + *(v3 + 48));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_3503C(*(v5 + 16), 0);
    v8 = sub_43128();

    sub_417B8(v24[0]);
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_5:
  v9 = *(v0 + 256);
  v24[0] = v7;
  sub_A2B24(v24);
  if (v9)
  {
  }

  else
  {
    v11 = *(v0 + 208);
    v12 = *(v0 + 216);
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    v15 = *(v0 + 184);

    v16 = *(v4 - 8);
    (*(v16 + 8))(v11, v4);
    v17 = sub_1B4AD4();
    v19 = v18;

    v31._countAndFlagsBits = v17;
    v31._object = v19;
    sub_1B48D4(v31);

    sub_43050(v12, v14, &qword_22B2A0, &qword_1C38E8);
    v20 = *(v15 + 48);
    v21 = *(v14 + v20);
    (*(v16 + 32))(v13, v14, v23);
    *(v13 + v20) = v21;
    sub_2B0C(&qword_22B2D8, &qword_1C3948);
    sub_1B4BE4();
    sub_42F48(v12, &qword_22B2A0, &qword_1C38E8);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_ACA28()
{
  v1 = v0[27];

  sub_2BF8(v0 + 2);
  v2 = sub_1B40F4();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_ACB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_ACB40, 0, 0);
}

uint64_t sub_ACB40()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  *v3 = v0;
  v3[1] = sub_ACC4C;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000043, 0x80000000001D6F70, sub_B8810, v1, v4);
}

uint64_t sub_ACC4C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_ACD88, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_ACD88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_ACDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord(0);
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  if (qword_2282B0 != -1)
  {
    swift_once();
  }

  v10 = qword_22AFF8;
  v8[26] = qword_22AFF8;

  return _swift_task_switch(sub_ACF4C, v10, 0);
}

uint64_t sub_ACF4C()
{
  v37 = v0;
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 88);
  if (*(v2 + 16))
  {
    v3 = sub_3AC78(v0[14]);
    if (v4)
    {
      v5 = v0[20];
      v6 = v0[17];
      v7 = v0[18];
      v9 = v0[15];
      v8 = v0[16];
      v10 = (*(v2 + 56) + 16 * v3);
      v11 = *v10;
      v12 = v10[1];
      swift_endAccess();
      v13 = sub_1B40F4();
      (*(*(v13 - 8) + 16))(v5, v9, v13);
      v14 = *(v7 + 24);
      v15 = sub_2B0C(&qword_22B2D8, &qword_1C3948);
      (*(*(v15 - 8) + 16))(v5 + v14, v6, v15);
      *(v5 + *(v7 + 20)) = v8;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_4:
        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          v12 = sub_33C1C((v16 > 1), v17 + 1, 1, v12);
        }

        v19 = v0[19];
        v18 = v0[20];
        v20 = v0[14];
        v12[2] = v17 + 1;
        sub_B8BB8(v18, v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36[0] = *(v1 + 88);
        *(v1 + 88) = 0x8000000000000000;
        sub_54350(v11, v12, v20, isUniquelyReferenced_nonNull_native);
        *(v1 + 88) = v36[0];
        swift_endAccess();

        v22 = v0[1];

        return v22();
      }

LABEL_17:
      v12 = sub_33C1C(0, v12[2] + 1, 1, v12);
      goto LABEL_4;
    }
  }

  v24 = v0[16];
  v25 = v0[13];
  swift_endAccess();
  sub_1B40E4();
  sub_404C4(v25 + 104, (v0 + 2));
  v26 = v0[5];
  v27 = v0[6];
  sub_2698(v0 + 2, v26);
  v28 = *(v24 + 16);
  if (v28)
  {
    v33 = v27;
    v34 = v26;
    v29 = v0[16];
    v30 = sub_3503C(v28, 0);
    v31 = sub_3F09C(v36, v30 + 4, v28, v29);
    v1 = v36[0];
    v12 = v36[3];
    v11 = v36[4];

    sub_417B8(v1);
    if (v31 != v28)
    {
      __break(1u);
      goto LABEL_17;
    }

    v27 = v33;
    v26 = v34;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v0[27] = v30;
  v35 = (*(v27 + 16) + **(v27 + 16));
  v32 = swift_task_alloc();
  v0[28] = v32;
  *v32 = v0;
  v32[1] = sub_AD394;

  return v35(v30, v26, v27);
}

uint64_t sub_AD394(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = *(v4 + 208);
    v6 = sub_AD8B4;
  }

  else
  {
    v7 = *(v4 + 208);
    v8 = *(v4 + 168);

    *(v4 + 240) = a1;
    *(v4 + 248) = *(v8 + 48);
    v6 = sub_AD4DC;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_AD4DC()
{
  v25 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  *(v2 + *(v0 + 248)) = *(v0 + 240);
  sub_2BF8((v0 + 16));
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1B5084(42);

  v4 = sub_1B40F4();
  sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v27._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v27);

  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  sub_1B48D4(v28);
  v23 = v4;
  v29._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v29);

  v30._countAndFlagsBits = 0x656E727574657220;
  v30._object = 0xEE00207344492064;
  sub_1B48D4(v30);
  sub_43050(v2, v1, &qword_22B2A0, &qword_1C38E8);
  v5 = *(v1 + *(v3 + 48));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_3503C(*(v5 + 16), 0);
    v8 = sub_43128();

    sub_417B8(v24[0]);
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_5:
  v9 = *(v0 + 232);
  v24[0] = v7;
  sub_A2B24(v24);
  if (v9)
  {
  }

  else
  {
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v0 + 168);

    v16 = *(v4 - 8);
    (*(v16 + 8))(v11, v4);
    v17 = sub_1B4AD4();
    v19 = v18;

    v31._countAndFlagsBits = v17;
    v31._object = v19;
    sub_1B48D4(v31);

    sub_43050(v12, v14, &qword_22B2A0, &qword_1C38E8);
    v20 = *(v15 + 48);
    v21 = *(v14 + v20);
    (*(v16 + 32))(v13, v14, v23);
    *(v13 + v20) = v21;
    sub_2B0C(&qword_22B2D8, &qword_1C3948);
    sub_1B4BE4();
    sub_42F48(v12, &qword_22B2A0, &qword_1C38E8);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_AD8B4()
{
  v1 = v0[25];

  sub_2BF8(v0 + 2);
  v2 = sub_1B40F4();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_AD99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a1;
  v8[8] = a4;
  v8[13] = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_ADA44, 0, 0);
}

uint64_t sub_ADA44()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = sub_1B40F4();
  v0[15] = v4;
  v5 = *(v4 - 8);
  v0[16] = v5;
  (*(v5 + 16))(v3, v1, v4);
  sub_404C4(v2 + 104, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  sub_2698(v0 + 2, v6);
  v12 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_ADBD8;
  v10 = v0[10];
  v9 = v0[11];

  return v12(v10, v9, v6, v7);
}

uint64_t sub_ADBD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_AE000;
  }

  else
  {
    v6 = *(v4 + 104);
    *(v4 + 152) = a1;
    *(v4 + 160) = *(v6 + 48);
    v5 = sub_ADD0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_ADD0C()
{
  v18 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);
  *(v3 + *(v0 + 160)) = *(v0 + 152);
  sub_2BF8((v0 + 16));
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1B5084(45);

  sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v20);

  v21._countAndFlagsBits = 0x7473657571657220;
  v21._object = 0xE900000000000020;
  sub_1B48D4(v21);
  v22._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v22);

  v23._countAndFlagsBits = 0x656E727574657220;
  v23._object = 0xEE00207344492064;
  sub_1B48D4(v23);
  sub_43050(v3, v1, &qword_22B2A0, &qword_1C38E8);
  v4 = *(v1 + *(v2 + 48));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_3503C(*(v4 + 16), 0);
    v7 = sub_43128();

    sub_417B8(v17[0]);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v8 = *(v0 + 144);
  v17[0] = v6;
  sub_A2B24(v17);
  if (v8)
  {
  }

  else
  {
    v10 = *(v0 + 120);
    v11 = *(v0 + 128);
    v12 = *(v0 + 112);

    (*(v11 + 8))(v12, v10);
    v13 = sub_1B4AD4();
    v15 = v14;

    v24._countAndFlagsBits = v13;
    v24._object = v15;
    sub_1B48D4(v24);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_AE000()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[7];
  sub_2BF8(v0 + 2);
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_AE098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v7[12] = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_AE140, 0, 0);
}

uint64_t sub_AE140()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = sub_1B40F4();
  v0[14] = v4;
  v5 = *(v4 - 8);
  v0[15] = v5;
  (*(v5 + 16))(v3, v1, v4);
  sub_404C4(v2 + 104, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  sub_2698(v0 + 2, v6);
  v11 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_AE2D4;
  v9 = v0[10];

  return v11(v9, v6, v7);
}

uint64_t sub_AE2D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_AE6FC;
  }

  else
  {
    v6 = *(v4 + 96);
    *(v4 + 144) = a1;
    *(v4 + 152) = *(v6 + 48);
    v5 = sub_AE408;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_AE408()
{
  v18 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 56);
  *(v3 + *(v0 + 152)) = *(v0 + 144);
  sub_2BF8((v0 + 16));
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1B5084(45);

  sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v20);

  v21._countAndFlagsBits = 0x7473657571657220;
  v21._object = 0xE900000000000020;
  sub_1B48D4(v21);
  v22._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v22);

  v23._countAndFlagsBits = 0x656E727574657220;
  v23._object = 0xEE00207344492064;
  sub_1B48D4(v23);
  sub_43050(v3, v1, &qword_22B2A0, &qword_1C38E8);
  v4 = *(v1 + *(v2 + 48));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_3503C(*(v4 + 16), 0);
    v7 = sub_43128();

    sub_417B8(v17[0]);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v8 = *(v0 + 136);
  v17[0] = v6;
  sub_A2B24(v17);
  if (v8)
  {
  }

  else
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    v12 = *(v0 + 104);

    (*(v11 + 8))(v12, v10);
    v13 = sub_1B4AD4();
    v15 = v14;

    v24._countAndFlagsBits = v13;
    v24._object = v15;
    sub_1B48D4(v24);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_AE6FC()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[7];
  sub_2BF8(v0 + 2);
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

BOOL sub_AE794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord(0) + 20));
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1B57E4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(v4 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_AE840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a3;
  v4[47] = a4;
  v4[44] = a1;
  v4[45] = a2;
  v5 = sub_2B0C(&qword_22B240, &qword_1C3830);
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v6 = type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord(0);
  v4[51] = v6;
  v4[52] = *(v6 - 8);
  v4[53] = swift_task_alloc();
  sub_2B0C(&qword_22B258, &qword_1C3858);
  v4[54] = swift_task_alloc();
  v7 = sub_2B0C(&qword_22B260, &qword_1C3860);
  v4[55] = v7;
  v4[56] = *(v7 - 8);
  v4[57] = swift_task_alloc();
  sub_2B0C(&qword_2296C0, &qword_1C3800);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  sub_2B0C(&qword_22B268, &qword_1C3868);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v8 = sub_1B40F4();
  v4[63] = v8;
  v9 = *(v8 - 8);
  v4[64] = v9;
  v4[65] = *(v9 + 64);
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  if (qword_2282B0 != -1)
  {
    swift_once();
  }

  v10 = qword_22AFF8;
  v4[72] = qword_22AFF8;

  return _swift_task_switch(sub_AEBA4, v10, 0);
}

uint64_t sub_AEBA4(uint64_t a1)
{
  v135 = v1;
  v110 = v1 + 12;
  v2 = v1[65];
  v3 = v1[64];
  v4 = v1[47];
  sub_1B40E4();

  v6 = sub_40854(v5);

  v1[39] = v6;
  swift_beginAccess();
  v109 = v4;
  v7 = *(v4 + 96);
  v8 = v7 + 64;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);
  v111 = (63 - v10) >> 6;
  v125 = v3 + 16;
  v128 = (v3 + 32);
  v112 = v2 + 7;
  v126 = v3;
  v116 = (v3 + 8);
  v114 = v7;

  v12 = 0;
  v115 = v8;
  v113 = v1;
  if (!v11)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v15 = v12;
LABEL_16:
    v127 = v1[70];
    v18 = v1[63];
    v19 = v1[61];
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v15 << 6);
    v22 = v114;
    v23 = v126;
    (*(v126 + 16))();
    v24 = *(v22 + 56);
    v25 = sub_2B0C(&qword_22B270, &qword_1C3870);
    v26 = *(v25 + 48);
    v27 = *(v23 + 32);
    v129 = *(v24 + 16 * v21);
    v27(v19, v127, v18);
    *(v19 + v26) = v129;
    (*(*(v25 - 8) + 56))(v19, 0, 1, v25);

LABEL_17:
    v28 = v1[62];
    sub_5ED18(v1[61], v28, &qword_22B268, &qword_1C3868);
    v29 = sub_2B0C(&qword_22B270, &qword_1C3870);
    if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
    {
      break;
    }

    v30 = v1[69];
    v31 = *(v1[62] + *(v29 + 48));
    v127 = *v128;
    (v127)(v30);
    v32 = v1[39];
    v33 = *(v31 + 32);
    v34 = v33 & 0x3F;
    v35 = ((1 << v33) + 63) >> 6;
    v36 = 8 * v35;
    swift_bridgeObjectRetain_n();

    if (v34 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      __chkstk_darwin(isStackAllocationSafe);
      bzero(&v109 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0), v36);
      v38 = sub_C6BC8(&v109 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0), v35, v31, v32);
    }

    else
    {
      v66 = swift_slowAlloc();

      v38 = sub_C68E4(v66, v35, v31, v32);
    }

    if (*(v38 + 16))
    {
      v120 = v1[71];
      v117 = v1[70];
      v39 = v117;
      v119 = v1[69];
      v118 = v1[68];
      v40 = v118;
      v41 = v1[65];
      v42 = v1[63];
      v122 = v1[60];
      v43 = v122;
      v123 = v41;
      v124 = v1[59];
      *&v129 = v1[47];
      sub_DFDD8(v38);
      v44 = sub_1B4C54();
      v121 = *(v44 - 8);
      (*(v121 + 56))(v43, 1, 1, v44);
      v45 = v126;
      v46 = *(v126 + 16);
      v46(v39, v119, v42);
      v46(v40, v120, v42);
      v47 = *(v45 + 80);
      v48 = (v47 + 40) & ~v47;
      v49 = (v123 + v47 + v48) & ~v47;
      v50 = (v49 + v112) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      v51[2] = 0;
      v123 = v51 + 2;
      v52 = v129;
      v51[3] = 0;
      v51[4] = v52;
      v53 = v127;
      (v127)(v51 + v48, v117, v42);
      v54 = v51 + v49;
      v55 = v121;
      (v53)(v54, v118, v42);
      *(v51 + v50) = v38;
      v1 = v113;
      v56 = v124;
      sub_43050(v122, v124, &qword_2296C0, &qword_1C3800);
      LODWORD(v42) = (*(v55 + 48))(v56, 1, v44);

      v57 = v1[59];
      if (v42 == 1)
      {
        sub_42F48(v1[59], &qword_2296C0, &qword_1C3800);
      }

      else
      {
        sub_1B4C44();
        (*(v55 + 8))(v57, v44);
      }

      if (*v123)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v58 = sub_1B4BC4();
        v60 = v59;
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      v61 = *v1[45];

      if (v60 | v58)
      {
        v62 = v110;
        *v110 = 0;
        v62[1] = 0;
        v1[14] = v58;
        v1[15] = v60;
      }

      else
      {
        v62 = 0;
      }

      v63 = v1[69];
      v64 = v1[63];
      v65 = v1[60];
      v1[28] = 1;
      v1[29] = v62;
      v1[30] = v61;
      swift_task_create();

      sub_42F48(v65, &qword_2296C0, &qword_1C3800);
      (*v116)(v63, v64);
      v8 = v115;
      if (!v11)
      {
LABEL_6:
        if (v111 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = v111;
        }

        v14 = v13 - 1;
        while (1)
        {
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v15 >= v111)
          {
            v16 = v1[61];
            v17 = sub_2B0C(&qword_22B270, &qword_1C3870);
            (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
            v11 = 0;
            v12 = v14;
            goto LABEL_17;
          }

          v11 = *(v8 + 8 * v15);
          ++v12;
          if (v11)
          {
            v12 = v15;
            goto LABEL_16;
          }
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      (*v116)(v1[69], v1[63]);

      v8 = v115;
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  v67 = v1[39];
  v1[73] = v67;
  if (!*(v67 + 16))
  {
    v75 = 0x80000000001D6E20;
    goto LABEL_39;
  }

  v68 = v1[67];
  sub_1B40E4();
  v69 = v109;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = *(v69 + 96);
  *(v69 + 96) = 0x8000000000000000;
  sub_54390(v67, _swiftEmptyArrayStorage, v68, isUniquelyReferenced_nonNull_native);
  *(v69 + 96) = v133;
  swift_endAccess();
  v71 = *(v67 + 16);
  if (v71)
  {
    v72 = sub_3503C(*(v67 + 16), 0);
    v73 = sub_3F09C(&v133, v72 + 4, v71, v67);
    sub_417B8(v133);
    if (v73 != v71)
    {
      __break(1u);

      swift_willThrow();
    }
  }

  else
  {

    v72 = _swiftEmptyArrayStorage;
  }

  v133 = v72;

  sub_A2B24(&v133);

  v127 = v133;
  v133 = 0;
  v134 = 0xE000000000000000;
  sub_1B5084(63);
  v130 = v133;
  v131 = v134;
  v137._object = 0x80000000001D6E20;
  v137._countAndFlagsBits = 0xD000000000000010;
  *&v129 = 0x80000000001D6E20;
  sub_1B48D4(v137);
  sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v138._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v138);

  v139._countAndFlagsBits = 0xD000000000000020;
  v139._object = 0x80000000001D6E40;
  sub_1B48D4(v139);
  v140._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v140);

  v141._countAndFlagsBits = 0x73444920726F6620;
  v141._object = 0xE900000000000020;
  sub_1B48D4(v141);
  v81 = *(v67 + 16);
  if (v81)
  {
    v82 = sub_3503C(*(v67 + 16), 0);
    v83 = sub_3F09C(&v133, v82 + 4, v81, v67);
    v84 = v133;

    sub_417B8(v84);
    if (v83 == v81)
    {
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_47:
  v82 = _swiftEmptyArrayStorage;
LABEL_48:
  v85 = v113;
  v132 = v82;
  sub_A2B24(&v132);
  v120 = v85[71];
  v86 = v85[70];
  v118 = v85[68];
  v87 = v118;
  v89 = v85[65];
  v121 = v85[67];
  v88 = v121;
  v122 = v89;
  v90 = v85[63];
  v119 = v85[58];
  v91 = v119;
  v92 = v85[45];
  v123 = v85[47];
  v124 = v92;
  v93 = sub_1B4AD4();
  v95 = v94;

  v142._countAndFlagsBits = v93;
  v142._object = v95;
  sub_1B48D4(v142);

  v96 = sub_1B4C54();
  (*(*(v96 - 8) + 56))(v91, 1, 1, v96);
  v97 = v126;
  v98 = *(v126 + 16);
  v99 = v86;
  v98(v86, v88, v90);
  v98(v87, v120, v90);
  v100 = *(v97 + 80);
  v101 = (v100 + 32) & ~v100;
  v102 = (v101 + v112) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v100 + v103 + 8) & ~v100;
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  *(v105 + 24) = 0;
  v106 = *(v97 + 32);
  v107 = v113;
  v106(v105 + v101, v99, v90);
  *(v105 + v102) = v123;
  *(v105 + v103) = v127;
  v106(v105 + v104, v118, v90);
  v1 = v107;

  v108 = v119;
  sub_A2920(v119, &unk_1C3880, v105, &qword_22B240, &qword_1C3830);
  sub_42F48(v108, &qword_2296C0, &qword_1C3800);
  (*(v97 + 8))(v121, v90);
  v75 = v129;
LABEL_39:
  v1[74] = v75;
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  v76 = sub_B9010(&qword_22B278, type metadata accessor for RequestListActor.ActorType, &unk_1C37B4);
  v1[75] = v76;
  v1[76] = _swiftEmptyDictionarySingleton;
  v77 = v1[72];
  v78 = swift_task_alloc();
  v1[77] = v78;
  *v78 = v1;
  v78[1] = sub_AFAB8;
  v79 = v1[54];
  v80 = v1[55];

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v79, v77, v76, v80, v1 + 40);
}

uint64_t sub_AFAB8()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v3 = *(v2 + 576);

    v4 = sub_B0670;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 576);
    v4 = sub_AFC2C;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_AFC2C()
{
  v71 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  if ((*(*(v0 + 392) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 608);
    v4 = *(v0 + 568);
    v6 = *(v0 + 504);
    v5 = *(v0 + 512);
    v7 = *(v0 + 352);
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    (*(v5 + 8))(v4, v6);

    *v7 = v3;

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 592);
  v11 = *(v1 + *(v2 + 48));
  (*(*(v0 + 512) + 32))(*(v0 + 528), v1, *(v0 + 504));
  *(v0 + 264) = 0;
  *(v0 + 272) = 0xE000000000000000;
  sub_1B5084(68);
  v12 = *(v0 + 272);
  *(v0 + 248) = *(v0 + 264);
  *(v0 + 256) = v12;
  v73._countAndFlagsBits = 0xD000000000000010;
  v73._object = v10;
  sub_1B48D4(v73);
  sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v74._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v74);

  v75._countAndFlagsBits = 0xD000000000000020;
  v75._object = 0x80000000001D6E70;
  sub_1B48D4(v75);
  v76._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v76);

  v77._countAndFlagsBits = 0x74697720726F6620;
  v77._object = 0xEE00207344492068;
  sub_1B48D4(v77);
  v13 = *(v11 + 16);
  if (v13)
  {
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v14 + 16) = v13;
    *(v14 + 24) = 2 * (v16 >> 3);
    v17 = sub_43128();
    v18 = *(v0 + 16);
    swift_bridgeObjectRetain_n();
    sub_417B8(v18);
    if (v17 != v13)
    {
      goto LABEL_38;
    }
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v19 = *(v0 + 624);
  *(v0 + 328) = v14;
  sub_A2B24((v0 + 328));
  if (v19)
  {
  }

  v14 = *(v0 + 608);
  v20 = *(v0 + 376);

  v21 = sub_1B4AD4();
  v23 = v22;

  v78._countAndFlagsBits = v21;
  v78._object = v23;
  sub_1B48D4(v78);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = v14;
  sub_B6C68(v11, sub_B5458, 0, isUniquelyReferenced_nonNull_native, v70);

  v62 = v70[0];
  swift_beginAccess();
  v25 = *(v20 + 96);
  if (*(v25 + 16))
  {
    v26 = sub_3AC78(*(v0 + 528));
    if (v27)
    {
      v28 = *(*(v25 + 56) + 16 * v26 + 8);
      swift_endAccess();
      v65 = *(v28 + 16);
      if (!v65)
      {
LABEL_29:
        v50 = *(v0 + 528);

        swift_beginAccess();
        v51 = sub_3AC78(v50);
        if ((v52 & 1) == 0)
        {
LABEL_32:
          swift_endAccess();
          goto LABEL_33;
        }

        v14 = v51;
        v53 = *(v0 + 376);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v55 = *(v53 + 96);
        *(v0 + 344) = v55;
        if (v54)
        {
LABEL_31:
          v56 = *(v0 + 376);
          (*(*(v0 + 512) + 8))(*(v55 + 48) + *(*(v0 + 512) + 72) * v14, *(v0 + 504));

          sub_5EF08();
          *(v56 + 96) = v55;
          goto LABEL_32;
        }

LABEL_39:
        sub_186800();
        v55 = *(v0 + 344);
        goto LABEL_31;
      }

      v69 = (v0 + 336);
      v29 = *(*(v0 + 416) + 80);
      v64 = v28 + ((v29 + 32) & ~v29);

      v30 = 0;
      v63 = v28;
      while (v30 < *(v28 + 16))
      {
        v31 = *(v0 + 592);
        v32 = *(v0 + 424);
        sub_B8250(v64 + *(*(v0 + 416) + 72) * v30, v32, type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord);
        v33 = swift_task_alloc();
        *(v33 + 16) = v32;

        v35 = sub_B7060(v34, sub_B71F0, v33, sub_B6F00, sub_B6F00);

        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        sub_1B5084(59);
        v36 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v36;
        v79._countAndFlagsBits = 0xD000000000000010;
        v79._object = v31;
        sub_1B48D4(v79);
        v80._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v80);

        v81._countAndFlagsBits = 0x69796C7070757320;
        v81._object = 0xEF2073444920676ELL;
        sub_1B48D4(v81);
        v37 = v35[2];
        if (v37)
        {
          v14 = v30;
          sub_2B0C(&qword_229238, &qword_1C09C0);
          v38 = swift_allocObject();
          v39 = j__malloc_size(v38);
          v40 = v39 - 32;
          if (v39 < 32)
          {
            v40 = v39 - 25;
          }

          v38[2] = v37;
          v38[3] = 2 * (v40 >> 3);
          v67 = sub_43128();
          v41 = *(v0 + 56);
          swift_retain_n();
          sub_417B8(v41);
          if (v67 != v37)
          {
            goto LABEL_37;
          }
        }

        else
        {

          v38 = _swiftEmptyArrayStorage;
        }

        *v69 = v38;
        sub_A2B24(v69);
        v66 = *(v0 + 528);
        v68 = v30 + 1;
        v43 = *(v0 + 504);
        v42 = *(v0 + 512);
        v44 = *(v0 + 424);
        v45 = *(v0 + 400);
        v46 = *(v0 + 384);

        v47 = sub_1B4AD4();
        v49 = v48;

        v82._countAndFlagsBits = v47;
        v82._object = v49;
        sub_1B48D4(v82);

        v83._countAndFlagsBits = 0xD000000000000016;
        v83._object = 0x80000000001D6EA0;
        sub_1B48D4(v83);
        v84._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v84);

        v14 = *(v46 + 48);
        (*(v42 + 16))(v45, v66, v43);
        v30 = v68;
        *(v45 + v14) = v35;
        sub_2B0C(&qword_22B280, &unk_1C3888);
        sub_1B4BE4();
        sub_B82C0(v44, type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord);
        v28 = v63;
        if (v65 == v68)
        {

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  swift_endAccess();

LABEL_33:
  (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));
  *(v0 + 608) = v62;
  v57 = *(v0 + 600);
  v58 = *(v0 + 576);
  v59 = swift_task_alloc();
  *(v0 + 616) = v59;
  *v59 = v0;
  v59[1] = sub_AFAB8;
  v60 = *(v0 + 432);
  v61 = *(v0 + 440);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v60, v58, v57, v61, v0 + 320);
}

uint64_t sub_B0670()
{
  v1 = v0[71];
  v3 = v0[63];
  v2 = v0[64];
  (*(v0[56] + 8))(v0[57], v0[55]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_B0810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_B0838, 0, 0);
}

uint64_t sub_B0838()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_2B0C(&qword_22B240, &qword_1C3830);
  *v3 = v0;
  v3[1] = sub_B0944;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000027, 0x80000000001D6EC0, sub_B733C, v1, v4);
}

uint64_t sub_B0944()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_B9580, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_B0A80(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v42 = a4;
  v43 = a8;
  v46 = a2;
  v47 = a5;
  v40 = a3;
  v44 = a1;
  v45 = a9;
  v9 = sub_2B0C(a6, a7);
  v10 = *(v9 - 8);
  v41 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = sub_1B40F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v19 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v19 - 8);
  v21 = &v38 - v20;
  v22 = sub_1B4C54();
  v23 = *(*(v22 - 8) + 56);
  v39 = v21;
  v23(v21, 1, 1, v22);
  v24 = *(v14 + 16);
  v38 = v18;
  v24(v18, v40, v13);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24(v40, v42, v13);
  v25 = *(v10 + 16);
  v42 = v12;
  v26 = v44;
  v44 = v9;
  v25(v12, v26, v9);
  v27 = qword_2282B0;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_22AFF8;
  v29 = sub_B9010(&qword_22B278, type metadata accessor for RequestListActor.ActorType, &unk_1C37B4);
  v30 = *(v14 + 80);
  v31 = (v30 + 40) & ~v30;
  v32 = (v15 + v30 + v31) & ~v30;
  v33 = (v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v10 + 80) + v33 + 8) & ~*(v10 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = v28;
  *(v35 + 3) = v29;
  *(v35 + 4) = v46;
  v36 = *(v14 + 32);
  v36(&v35[v31], v38, v13);
  v36(&v35[v32], v40, v13);
  *&v35[v33] = v47;
  (*(v10 + 32))(&v35[v34], v42, v44);

  sub_4903C(0, 0, v39, v45, v35);
}

uint64_t sub_B0E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord(0);
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = sub_2B0C(&qword_22B240, &qword_1C3830);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  if (qword_2282B0 != -1)
  {
    swift_once();
  }

  v10 = qword_22AFF8;
  v8[26] = qword_22AFF8;

  return _swift_task_switch(sub_B0F9C, v10, 0);
}

uint64_t sub_B0F9C()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 96);
  if (*(v2 + 16) && (v3 = sub_3AC78(v0[14]), (v4 & 1) != 0))
  {
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[18];
    v9 = v0[15];
    v8 = v0[16];
    v10 = (*(v2 + 56) + 16 * v3);
    v11 = *v10;
    v12 = v10[1];
    swift_endAccess();
    v13 = sub_1B40F4();
    (*(*(v13 - 8) + 16))(v5, v9, v13);
    v14 = *(v7 + 24);
    v15 = sub_2B0C(&qword_22B280, &unk_1C3888);
    (*(*(v15 - 8) + 16))(v5 + v14, v6, v15);
    *(v5 + *(v7 + 20)) = v8;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_33C44(0, v12[2] + 1, 1, v12);
    }

    v17 = v12[2];
    v16 = v12[3];
    if (v17 >= v16 >> 1)
    {
      v12 = sub_33C44((v16 > 1), v17 + 1, 1, v12);
    }

    v19 = v0[19];
    v18 = v0[20];
    v20 = v0[14];
    v12[2] = v17 + 1;
    sub_B8BB8(v18, v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v1 + 96);
    *(v1 + 96) = 0x8000000000000000;
    sub_54390(v11, v12, v20, isUniquelyReferenced_nonNull_native);
    *(v1 + 96) = v30;
    swift_endAccess();

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[13];
    swift_endAccess();
    sub_1B40E4();
    sub_404C4(v24 + 144, (v0 + 2));
    v25 = v0[5];
    v26 = v0[6];
    sub_2698(v0 + 2, v25);
    v29 = (*(v26 + 8) + **(v26 + 8));
    v27 = swift_task_alloc();
    v0[27] = v27;
    *v27 = v0;
    v27[1] = sub_B135C;
    v28 = v0[16];

    return v29(v28, v25, v26);
  }
}

uint64_t sub_B135C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 224) = v1;

  v5 = *(v4 + 208);
  if (v1)
  {
    v6 = sub_B187C;
  }

  else
  {
    v7 = *(v4 + 168);
    *(v4 + 232) = a1;
    *(v4 + 240) = *(v7 + 48);
    v6 = sub_B14A4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_B14A4()
{
  v25 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  *(v2 + *(v0 + 240)) = *(v0 + 232);
  sub_2BF8((v0 + 16));
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1B5084(42);

  v4 = sub_1B40F4();
  sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v27._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v27);

  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  sub_1B48D4(v28);
  v23 = v4;
  v29._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v29);

  v30._countAndFlagsBits = 0x656E727574657220;
  v30._object = 0xEE00207344492064;
  sub_1B48D4(v30);
  sub_43050(v2, v1, &qword_22B240, &qword_1C3830);
  v5 = *(v1 + *(v3 + 48));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_3503C(*(v5 + 16), 0);
    v8 = sub_43128();

    sub_417B8(v24[0]);
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_5:
  v9 = *(v0 + 224);
  v24[0] = v7;
  sub_A2B24(v24);
  if (v9)
  {
  }

  else
  {
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v0 + 168);

    v16 = *(v4 - 8);
    (*(v16 + 8))(v11, v4);
    v17 = sub_1B4AD4();
    v19 = v18;

    v31._countAndFlagsBits = v17;
    v31._object = v19;
    sub_1B48D4(v31);

    sub_43050(v12, v14, &qword_22B240, &qword_1C3830);
    v20 = *(v15 + 48);
    v21 = *(v14 + v20);
    (*(v16 + 32))(v13, v14, v23);
    *(v13 + v20) = v21;
    sub_2B0C(&qword_22B280, &unk_1C3888);
    sub_1B4BE4();
    sub_42F48(v12, &qword_22B240, &qword_1C3830);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_B187C()
{
  v1 = v0[25];
  sub_2BF8(v0 + 2);
  v2 = sub_1B40F4();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_B195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v7[12] = sub_2B0C(&qword_22B240, &qword_1C3830);
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_B1A04, 0, 0);
}

uint64_t sub_B1A04()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = sub_1B40F4();
  v0[14] = v4;
  v5 = *(v4 - 8);
  v0[15] = v5;
  (*(v5 + 16))(v3, v2, v4);
  sub_404C4(v1 + 144, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  sub_2698(v0 + 2, v6);

  v9 = sub_40854(v8);
  v0[16] = v9;

  v12 = (*(v7 + 8) + **(v7 + 8));
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_B1BBC;

  return v12(v9, v6, v7);
}

uint64_t sub_B1BBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_B1FEC;
  }

  else
  {
    v6 = *(v4 + 96);

    *(v4 + 152) = a1;
    *(v4 + 160) = *(v6 + 48);
    v5 = sub_B1CF8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_B1CF8()
{
  v18 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 56);
  *(v3 + *(v0 + 160)) = *(v0 + 152);
  sub_2BF8((v0 + 16));
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1B5084(45);

  sub_B9010(&qword_22A520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v20);

  v21._countAndFlagsBits = 0x7473657571657220;
  v21._object = 0xE900000000000020;
  sub_1B48D4(v21);
  v22._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v22);

  v23._countAndFlagsBits = 0x656E727574657220;
  v23._object = 0xEE00207344492064;
  sub_1B48D4(v23);
  sub_43050(v3, v1, &qword_22B240, &qword_1C3830);
  v4 = *(v1 + *(v2 + 48));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_3503C(*(v4 + 16), 0);
    v7 = sub_43128();

    sub_417B8(v17[0]);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v8 = *(v0 + 144);
  v17[0] = v6;
  sub_A2B24(v17);
  if (v8)
  {
  }

  else
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    v12 = *(v0 + 104);

    (*(v11 + 8))(v12, v10);
    v13 = sub_1B4AD4();
    v15 = v14;

    v24._countAndFlagsBits = v13;
    v24._object = v15;
    sub_1B48D4(v24);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_B1FEC()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[7];

  sub_2BF8(v0 + 2);
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

BOOL sub_B2088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord(0) + 20));
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1B57E4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(v4 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

void sub_B2134(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - v13;
  (*(v11 + 16))(aBlock - v13, a1, v10);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  (*(v11 + 32))(&v16[v15], v14, v10);
  *&v16[(v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = a5;
  aBlock[4] = sub_B7C10;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_21AD90;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  [v18 performBlock:v17];
  _Block_release(v17);
}

void sub_B232C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v177 = a4;
  v176 = a3;
  v196 = a2;
  v184 = sub_1B40C4();
  v193 = *(v184 - 8);
  __chkstk_darwin(v184);
  v183 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CachedPersonalizationBookMetadataGenre();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v8)
  {
    sub_1B47C4();
    v8 = sub_1B4794();
  }

  v9 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v8];

  v179 = v9;
  v181 = v7;
  v197 = a1;
  v10 = sub_1B4E24();
  v194 = 0;
  if (!v10)
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v10 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1B5284())
  {
    v12 = 0;
    v198 = (v10 & 0xFFFFFFFFFFFFFF8);
    v199 = v10 & 0xC000000000000001;
    v13 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v199)
      {
        v17 = v13;
        v18 = sub_1B50B4();
      }

      else
      {
        if (v12 >= v198[2])
        {
          goto LABEL_28;
        }

        v17 = v13;
        v18 = *(v10 + 8 * v12 + 32);
      }

      v19 = v18;
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v21 = [v18 genreID];
      if (v21 < 0)
      {
        goto LABEL_29;
      }

      v22 = v21;
      v23 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v200[0] = v17;
      v25 = sub_43124(v22);
      v26 = v17[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_30;
      }

      v29 = v24;
      if (v17[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v200[0];
          if (v24)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_186AA0();
          v32 = v200[0];
          if (v29)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_18071C(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_43124(v22);
        if ((v29 & 1) != (v31 & 1))
        {
LABEL_194:
          sub_1B5784();
          __break(1u);
          return;
        }

        v25 = v30;
        v32 = v200[0];
        if (v29)
        {
LABEL_8:
          v14 = v32[7];
          v15 = *(v14 + 8 * v25);
          *(v14 + 8 * v25) = v23;
          v16 = v32;

          v13 = v16;
          goto LABEL_9;
        }
      }

      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + 8 * v25) = v22;
      *(v32[7] + 8 * v25) = v23;
      v33 = v32;

      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_31;
      }

      v13 = v33;
      v33[2] = v36;
LABEL_9:
      ++v12;
      if (v20 == i)
      {
        goto LABEL_34;
      }
    }

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
    ;
  }

  v13 = _swiftEmptyDictionarySingleton;
LABEL_34:
  v195 = v13;

  v37 = type metadata accessor for CachedPersonalizationBookMetadataAuthor();
  v173 = swift_getObjCClassFromMetadata();
  v38 = NSStringFromClass(v173);
  if (!v38)
  {
    sub_1B47C4();
    v38 = sub_1B4794();
  }

  v39 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v38];

  v178 = v39;
  v174 = v37;
  v40 = v197;
  v41 = v194;
  v42 = sub_1B4E24();
  if (v41)
  {

    v41 = 0;
  }

  else
  {
    v43 = v42;
    if (v42)
    {
      goto LABEL_40;
    }
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_40:
  if (v43 >> 62)
  {
    goto LABEL_183;
  }

  v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
LABEL_42:
  v172 = v41;
  if (v44)
  {
    v41 = 0;
    v198 = (v43 & 0xFFFFFFFFFFFFFF8);
    v199 = v43 & 0xC000000000000001;
    v45 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v199)
      {
        v48 = sub_1B50B4();
      }

      else
      {
        if (v41 >= v198[2])
        {
          goto LABEL_175;
        }

        v48 = *(v43 + 8 * v41 + 32);
      }

      v49 = v48;
      isUniquelyReferenced_nonNull_native = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      v50 = [v48 authorID];
      if (v50 < 0)
      {
        goto LABEL_176;
      }

      v51 = v50;
      v52 = v49;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v200[0] = v45;
      v40 = v45;
      v54 = sub_43124(v51);
      v56 = v45[2];
      v57 = (v55 & 1) == 0;
      v35 = __OFADD__(v56, v57);
      v58 = v56 + v57;
      if (v35)
      {
        goto LABEL_177;
      }

      v59 = v55;
      if (v45[3] < v58)
      {
        break;
      }

      if (v53)
      {
        goto LABEL_56;
      }

      v40 = v200;
      v63 = v54;
      sub_186AB4();
      v54 = v63;
      v45 = v200[0];
      if (v59)
      {
LABEL_44:
        v46 = v45[7];
        v47 = *(v46 + 8 * v54);
        *(v46 + 8 * v54) = v52;

        goto LABEL_45;
      }

LABEL_57:
      v45[(v54 >> 6) + 8] |= 1 << v54;
      *(v45[6] + 8 * v54) = v51;
      *(v45[7] + 8 * v54) = v52;

      v61 = v45[2];
      v35 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v35)
      {
        goto LABEL_178;
      }

      v45[2] = v62;
LABEL_45:
      ++v41;
      if (isUniquelyReferenced_nonNull_native == v44)
      {
        goto LABEL_63;
      }
    }

    sub_180730(v58, v53);
    v40 = v200[0];
    v54 = sub_43124(v51);
    if ((v59 & 1) != (v60 & 1))
    {
      goto LABEL_194;
    }

LABEL_56:
    v45 = v200[0];
    if (v59)
    {
      goto LABEL_44;
    }

    goto LABEL_57;
  }

  v45 = _swiftEmptyDictionarySingleton;
LABEL_63:

  v64 = v196 + 64;
  v65 = 1 << *(v196 + 32);
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  else
  {
    v66 = -1;
  }

  v67 = v66 & *(v196 + 64);
  v68 = (v65 + 63) >> 6;
  v182 = (v193 + 8);

  v43 = 0;
  v193 = v68;
  if (v67)
  {
    while (1)
    {
LABEL_74:
      v70 = __clz(__rbit64(v67)) | (v43 << 6);
      v71 = *(*(v196 + 48) + 8 * v70);
      v72 = (*(v196 + 56) + 88 * v70);
      LODWORD(v188) = *v72;
      v73 = *(v72 + 1);
      v74 = *(v72 + 2);
      v190 = *(v72 + 3);
      v191 = v71;
      LODWORD(v189) = v72[32];
      v75 = *(v72 + 6);
      v185 = *(v72 + 5);
      v76 = v72[56];
      v187 = *(v72 + 8);
      v186 = v72[72];
      type metadata accessor for CachedPersonalizationBookMetadata();
      v77 = swift_getObjCClassFromMetadata();

      v199 = v74;

      v78 = NSStringFromClass(v77);
      if (!v78)
      {
        sub_1B47C4();
        v78 = sub_1B4794();
      }

      v67 &= v67 - 1;
      v198 = objc_opt_self();
      isUniquelyReferenced_nonNull_native = [v198 insertNewObjectForEntityForName:v78 inManagedObjectContext:v197];

      v79 = swift_dynamicCastClass();
      if (v79)
      {
        v41 = v79;
        v194 = v73;
        v192 = v79;
        if (v76 == 2)
        {
          goto LABEL_95;
        }

        v80 = v64;
        type metadata accessor for CachedPersonalizationBookMetadataSeriesMembership();
        v81 = swift_getObjCClassFromMetadata();
        v82 = NSStringFromClass(v81);
        if (!v82)
        {
          sub_1B47C4();
          v82 = sub_1B4794();
        }

        v83 = [v198 insertNewObjectForEntityForName:v82 inManagedObjectContext:v197];

        v84 = swift_dynamicCastClass();
        if (v84)
        {
          if (v75 < 0)
          {
            goto LABEL_191;
          }

          v90 = isUniquelyReferenced_nonNull_native;
          v91 = v84;
          [v84 setSeriesID:v75];
          if (v186)
          {
            v92 = 0;
          }

          else
          {
            v92 = v187;
          }

          if ((v92 & 0x8000000000000000) == 0)
          {
            [v91 setMappedSeriesID:?];
            [v91 setOrdinal:v185];
            [v91 setIsOrdered:v76 & 1];
            v93 = v192;
            [v192 setSeriesMembership:v91];

            v41 = v93;
            isUniquelyReferenced_nonNull_native = v90;
            v64 = v80;
LABEL_95:
            if ((v191 & 0x8000000000000000) != 0)
            {
LABEL_189:
              __break(1u);
            }

            else
            {
              [v41 setAssetID:?];
              if (v189)
              {
                v94 = 0;
              }

              else
              {
                v94 = v190;
              }

              if ((v94 & 0x8000000000000000) == 0)
              {
                [v41 setMappedAssetID:?];
                v95 = v183;
                sub_1B40B4();
                isa = sub_1B4034().super.isa;
                v191 = *v182;
                (v191)(v95, v184);
                [v41 setLastAccessDate:isa];

                if (v188)
                {
                  v97 = 2;
                }

                else
                {
                  v97 = 1;
                }

                [v41 setMediaType:v97];
                v40 = (v199 + 56);
                v98 = 1 << *(v199 + 32);
                if (v98 < 64)
                {
                  v99 = ~(-1 << v98);
                }

                else
                {
                  v99 = -1;
                }

                v100 = v99 & *(v199 + 56);
                v189 = (v98 + 63) >> 6;

                v101 = 0;
                v102 = v198;
                v188 = v40;
                v171 = v64;
                while (v100)
                {
LABEL_115:
                  v106 = *(*(v199 + 48) + ((v101 << 9) | (8 * __clz(__rbit64(v100)))));
                  if (v45[2] && (v107 = sub_43124(v106), (v108 & 1) != 0))
                  {
                    v109 = *(v45[7] + 8 * v107);
                    v41 = v192;
                    v40 = v188;
                  }

                  else
                  {
                    v190 = v106;
                    v110 = NSStringFromClass(v173);
                    if (!v110)
                    {
                      sub_1B47C4();
                      v110 = sub_1B4794();
                    }

                    v40 = [v102 insertNewObjectForEntityForName:v110 inManagedObjectContext:v197];

                    v111 = swift_dynamicCastClass();
                    if (!v111)
                    {
                      goto LABEL_169;
                    }

                    v112 = v190;
                    if (v190 < 0)
                    {
LABEL_185:
                      __break(1u);
LABEL_186:
                      __break(1u);
                      goto LABEL_187;
                    }

                    v109 = v111;
                    v113 = isUniquelyReferenced_nonNull_native;
                    [v111 setAuthorID:v190];
                    v114 = v40;
                    v115 = swift_isUniquelyReferenced_nonNull_native();
                    v200[0] = v45;
                    v116 = sub_43124(v112);
                    v118 = v45[2];
                    v119 = (v117 & 1) == 0;
                    v35 = __OFADD__(v118, v119);
                    v120 = v118 + v119;
                    if (v35)
                    {
                      goto LABEL_186;
                    }

                    v121 = v117;
                    if (v45[3] >= v120)
                    {
                      v40 = v188;
                      if ((v115 & 1) == 0)
                      {
                        v125 = v116;
                        sub_186AB4();
                        v40 = v188;
                        v116 = v125;
                      }

                      isUniquelyReferenced_nonNull_native = v113;
                    }

                    else
                    {
                      sub_180730(v120, v115);
                      v116 = sub_43124(v190);
                      if ((v121 & 1) != (v122 & 1))
                      {
                        goto LABEL_194;
                      }

                      isUniquelyReferenced_nonNull_native = v113;
                      v40 = v188;
                    }

                    v45 = v200[0];
                    v102 = v198;
                    if (v121)
                    {
                      v103 = *(v200[0] + 7);
                      v104 = *(v103 + 8 * v116);
                      *(v103 + 8 * v116) = v109;
                    }

                    else
                    {
                      *(v200[0] + (v116 >> 6) + 8) |= 1 << v116;
                      *(v45[6] + 8 * v116) = v190;
                      *(v45[7] + 8 * v116) = v109;
                      v123 = v45[2];
                      v35 = __OFADD__(v123, 1);
                      v124 = v123 + 1;
                      if (v35)
                      {
                        __break(1u);
                        goto LABEL_189;
                      }

                      v45[2] = v124;
                    }

                    v41 = v192;
                  }

                  v100 &= v100 - 1;
                  [v41 addAuthorsObject:v109];
                }

                while (1)
                {
                  v105 = v101 + 1;
                  if (__OFADD__(v101, 1))
                  {
                    break;
                  }

                  if (v105 >= v189)
                  {

                    v126 = v194;
                    v199 = *(v194 + 16);
                    if (v199)
                    {
                      v127 = 0;
                      v128 = (v194 + 40);
                      v175 = isUniquelyReferenced_nonNull_native;
                      while (v127 < *(v126 + 16))
                      {
                        v131 = *(v128 - 1);
                        isUniquelyReferenced_nonNull_native = *v128;
                        v40 = v195;
                        if (v195[2] && (v132 = sub_43124(*(v128 - 1)), (v133 & 1) != 0))
                        {
                          v134 = *(v195[7] + v132);
                          isUniquelyReferenced_nonNull_native = v175;
                        }

                        else
                        {

                          v40 = NSStringFromClass(ObjCClassFromMetadata);
                          if (!v40)
                          {
                            sub_1B47C4();
                            v40 = sub_1B4794();
                          }

                          v41 = [v198 insertNewObjectForEntityForName:v40 inManagedObjectContext:v197];

                          v135 = swift_dynamicCastClass();
                          if (!v135)
                          {

                            if (qword_2282C0 != -1)
                            {
                              goto LABEL_193;
                            }

                            goto LABEL_165;
                          }

                          if (v131 < 0)
                          {
                            goto LABEL_181;
                          }

                          v134 = v135;
                          [v135 setGenreID:v131];
                          v136 = sub_1B4AA4().super.isa;

                          [v134 setPath:v136];

                          v137 = v183;
                          sub_1B40B4();
                          v138 = sub_1B4034().super.isa;
                          (v191)(v137, v184);
                          [v134 setLastAccessDate:v138];

                          v139 = v41;
                          v40 = v195;
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v200[0] = v40;
                          v140 = sub_43124(v131);
                          v142 = v40[2];
                          v143 = (v141 & 1) == 0;
                          v35 = __OFADD__(v142, v143);
                          v144 = v142 + v143;
                          if (v35)
                          {
                            goto LABEL_182;
                          }

                          v145 = v141;
                          if (v40[3] >= v144)
                          {
                            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                            {
                              v40 = v200;
                              v150 = v140;
                              sub_186AA0();
                              v140 = v150;
                            }
                          }

                          else
                          {
                            sub_18071C(v144, isUniquelyReferenced_nonNull_native);
                            v40 = v200[0];
                            v140 = sub_43124(v131);
                            if ((v145 & 1) != (v146 & 1))
                            {
                              goto LABEL_194;
                            }
                          }

                          isUniquelyReferenced_nonNull_native = v175;
                          v147 = v200[0];
                          v195 = v200[0];
                          if (v145)
                          {
                            v129 = *(v200[0] + 7);
                            v130 = *(v129 + 8 * v140);
                            *(v129 + 8 * v140) = v134;
                          }

                          else
                          {
                            *(v200[0] + (v140 >> 6) + 8) |= 1 << v140;
                            *(v147[6] + 8 * v140) = v131;
                            *(v147[7] + 8 * v140) = v134;
                            v148 = v147[2];
                            v35 = __OFADD__(v148, 1);
                            v149 = v148 + 1;
                            if (v35)
                            {
                              __break(1u);
                              goto LABEL_185;
                            }

                            v147[2] = v149;
                          }

                          v41 = v192;
                        }

                        ++v127;
                        [v41 addLeafGenresObject:v134];

                        v128 += 2;
                        v126 = v194;
                        if (v199 == v127)
                        {
                          goto LABEL_154;
                        }
                      }

                      goto LABEL_180;
                    }

LABEL_154:

                    [v41 setGenresKnown:1];

                    v64 = v171;
                    v68 = v193;
                    if (v67)
                    {
                      goto LABEL_74;
                    }

                    goto LABEL_70;
                  }

                  v100 = v40[v105];
                  ++v101;
                  if (v100)
                  {
                    v101 = v105;
                    goto LABEL_115;
                  }
                }

LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                v44 = sub_1B5284();
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_191:
            __break(1u);
          }

          __break(1u);
LABEL_193:
          swift_once();
LABEL_165:
          v160 = sub_1B4644();
          sub_50E58(v160, qword_260C00);
          v161 = sub_1B4624();
          v162 = sub_1B4D94();
          v163 = os_log_type_enabled(v161, v162);
          v164 = v175;
          if (v163)
          {
            v165 = swift_slowAlloc();
            *v165 = 0;
            _os_log_impl(&dword_0, v161, v162, "Failed to insert genre object into database", v165, 2u);
          }

          return;
        }

        if (qword_2282C0 != -1)
        {
          swift_once();
        }

        v85 = sub_1B4644();
        sub_50E58(v85, qword_260C00);
        v86 = sub_1B4624();
        v40 = sub_1B4D94();
        v64 = v80;
        if (os_log_type_enabled(v86, v40))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_0, v86, v40, "Failed to create series membership", v87, 2u);
        }
      }

      else
      {

        if (qword_2282C0 != -1)
        {
          swift_once();
        }

        v88 = sub_1B4644();
        v40 = sub_50E58(v88, qword_260C00);
        isUniquelyReferenced_nonNull_native = sub_1B4624();
        v89 = sub_1B4D94();
        if (os_log_type_enabled(isUniquelyReferenced_nonNull_native, v89))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_0, isUniquelyReferenced_nonNull_native, v89, "Failed to create metadata", v40, 2u);
        }
      }

      v68 = v193;
      if (!v67)
      {
        goto LABEL_70;
      }
    }
  }

  while (1)
  {
LABEL_70:
    v69 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_169:

      if (qword_2282C0 != -1)
      {
        swift_once();
      }

      v166 = sub_1B4644();
      sub_50E58(v166, qword_260C00);
      v167 = sub_1B4624();
      v168 = sub_1B4D94();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        *v169 = 0;
        _os_log_impl(&dword_0, v167, v168, "Failed to insert author object into database", v169, 2u);
      }

      return;
    }

    if (v69 >= v68)
    {
      break;
    }

    v67 = *(v64 + 8 * v69);
    ++v43;
    if (v67)
    {
      v43 = v69;
      goto LABEL_74;
    }
  }

  v151 = v197;
  sub_B37D8(v197);
  if ([v151 hasChanges])
  {
    v200[0] = 0;
    if ([v151 save:v200])
    {
      v152 = v200[0];
    }

    else
    {
      v153 = v200[0];
      sub_1B3E64();

      swift_willThrow();
      if (qword_2282C0 != -1)
      {
LABEL_187:
        swift_once();
      }

      v154 = sub_1B4644();
      sub_50E58(v154, qword_260C00);
      swift_errorRetain();
      v155 = sub_1B4624();
      v156 = sub_1B4D94();

      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        *v157 = 138412290;
        swift_errorRetain();
        v159 = _swift_stdlib_bridgeErrorToNSError();
        *(v157 + 4) = v159;
        *v158 = v159;
        _os_log_impl(&dword_0, v155, v156, "Failed to save cache insertions %@", v157, 0xCu);
        sub_42F48(v158, &qword_22B250, &qword_1C3850);
      }

      else
      {
      }
    }
  }

  v200[0] = 0;
  sub_2B0C(&qword_22B248, &qword_1C3848);
  sub_1B4BE4();
}

void sub_B37D8(void *a1)
{
  v2 = v1;
  type metadata accessor for CachedPersonalizationBookMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    sub_1B47C4();
    v5 = sub_1B4794();
  }

  v22 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v5];

  v6 = sub_1B4E14();
  v7 = *(v2 + 40);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v8 & 0x8000000000000000) == 0 && v8)
  {
    v9 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v9)
    {
      sub_1B47C4();
      v9 = sub_1B4794();
    }

    v10 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v9];

    sub_2B0C(&qword_22B2A8, &qword_1C3900);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C35E0;
    v12 = objc_allocWithZone(NSSortDescriptor);
    v13 = sub_1B4794();
    v14 = [v12 initWithKey:v13 ascending:1];

    *(v11 + 32) = v14;
    sub_B7CB0(0, &qword_22B2B0, NSSortDescriptor_ptr);
    isa = sub_1B4AA4().super.isa;

    [v10 setSortDescriptors:isa];

    [v10 setFetchLimit:v8];
    v16 = sub_1B4E24();
    v21 = v16;
    if (v16 >> 62)
    {
      v17 = sub_1B5284();
      if (!v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
      if (!v17)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    if (v17 >= 1)
    {
      for (i = 0; i != v17; ++i)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v19 = sub_1B50B4();
        }

        else
        {
          v19 = *(v21 + 8 * i + 32);
        }

        v20 = v19;
        [a1 deleteObject:v19];
      }

      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
    return;
  }

LABEL_20:
}

void sub_B3C60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_B64DC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_21AC00;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlock:v15];
  _Block_release(v15);
}

uint64_t sub_B3E48(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = a3;
  v38 = a2;
  v37 = sub_1B40C4();
  __chkstk_darwin(v37);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v35 = (v4 + 8);

  v10 = 0;
  while (v8)
  {
LABEL_12:
    v16 = *(*(a1 + 48) + 8 * (__clz(__rbit64(v8)) | (v10 << 6)));
    type metadata accessor for CachedPersonalizationBookMetadataGenre();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v18 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v18)
    {
      sub_1B47C4();
      v18 = sub_1B4794();
    }

    v19 = [objc_opt_self() insertNewObjectForEntityForName:v18 inManagedObjectContext:{v38, v34}];

    v20 = swift_dynamicCastClass();
    if (v20)
    {
      if (v16 < 0)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        swift_once();
        goto LABEL_23;
      }

      v11 = v20;
      [v20 setGenreID:v16];
      isa = sub_1B4AA4().super.isa;

      [v11 setPath:isa];

      v13 = v36;
      sub_1B40B4();
      v14.super.isa = sub_1B4034().super.isa;
      (*v35)(v13, v37);
      [v11 setLastAccessDate:v14.super.isa];
    }

    else
    {

      if (qword_2282C0 != -1)
      {
        swift_once();
      }

      v21 = sub_1B4644();
      sub_50E58(v21, qword_260C00);
      v14.super.isa = sub_1B4624();
      v22 = sub_1B4D94();
      if (os_log_type_enabled(v14.super.isa, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v14.super.isa, v22, "Failed to create genre metadata", v23, 2u);
      }
    }

    v8 &= v8 - 1;
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v9)
    {
      break;
    }

    v8 = *(a1 + 64 + 8 * v15);
    ++v10;
    if (v8)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v24 = v38;
  if (([v38 hasChanges] & 1) == 0)
  {
    goto LABEL_26;
  }

  v39 = 0;
  if ([v24 save:&v39])
  {
    v25 = v39;
    goto LABEL_26;
  }

  v26 = v39;
  sub_1B3E64();

  swift_willThrow();
  if (qword_2282C0 != -1)
  {
    goto LABEL_29;
  }

LABEL_23:
  v27 = sub_1B4644();
  sub_50E58(v27, qword_260C00);
  swift_errorRetain();
  v28 = sub_1B4624();
  v29 = sub_1B4D94();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&dword_0, v28, v29, "Failed to save cache insertions %@", v30, 0xCu);
    sub_42F48(v31, &qword_22B250, &qword_1C3850);
  }

  else
  {
  }

LABEL_26:
  v39 = 0;
  sub_2B0C(&qword_22B248, &qword_1C3848);
  return sub_1B4BE4();
}

uint64_t sub_B4380(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return MetadataCache.fetchMetadataFor(bookIDs:audiobookIDs:)(a1, a2);
}

uint64_t sub_B4428(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_B9584;

  return MetadataCache.fetchMetadataFor(storeIDs:)(a1);
}

uint64_t sub_B44C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_B9584;

  return MetadataCache.fetchMetadataFor(genreIDs:)(a1);
}

void sub_B4558(char **a1, uint64_t a2)
{
  sub_430C8(a2, v20);
  type metadata accessor for CachedPersonalizationBookMetadataGenre();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v6 = v21;
  v7 = [v21 path];
  if (!v7)
  {
    goto LABEL_13;
  }

  v2 = v7;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_13:
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v20[0] = 0;
  sub_1B4AB4();

  v4 = v20[0];
  v8 = _swiftEmptyArrayStorage;
  if (v20[0])
  {
    v9 = *(v20[0] + 16);
    if (v9)
    {
      v18 = a1;
      v19 = v3;
      v20[0] = _swiftEmptyArrayStorage;
      v2 = v20;
      sub_3741C(0, v9, 0);
      v10 = 32;
      v8 = v20[0];
      while (1)
      {
        v11 = *&v4[v10];
        if (v11 < 0)
        {
          break;
        }

        v20[0] = v8;
        v13 = v8[2];
        v12 = v8[3];
        a1 = (v13 + 1);
        if (v13 >= v12 >> 1)
        {
          v2 = v20;
          sub_3741C((v12 > 1), v13 + 1, 1);
          v8 = v20[0];
        }

        v8[2] = a1;
        v8[v13 + 4] = v11;
        v10 += 8;
        if (!--v9)
        {

          a1 = v18;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_22;
    }
  }

LABEL_14:
  v14 = [v6 genreID];
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v2 = v14;
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_23:
    v4 = sub_33C6C(0, *(v4 + 2) + 1, 1, v4);
  }

  v16 = *(v4 + 2);
  v15 = *(v4 + 3);
  if (v16 >= v15 >> 1)
  {
    v4 = sub_33C6C((v15 > 1), v16 + 1, 1, v4);
  }

  *(v4 + 2) = v16 + 1;
  v17 = &v4[16 * v16];
  *(v17 + 4) = v2;
  *(v17 + 5) = v8;
  *a1 = v4;
}

void *sub_B478C(void *a1)
{
  v1 = [a1 authors];
  if (v1)
  {
    v2 = v1;
    v4 = 0;
    type metadata accessor for CachedPersonalizationBookMetadataAuthor();
    sub_B9010(&qword_22B2E0, type metadata accessor for CachedPersonalizationBookMetadataAuthor, &protocol conformance descriptor for NSObject);
    sub_1B4CA4();
  }

  return _swiftEmptySetSingleton;
}

void sub_B48AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 seriesMembership];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 seriesID];
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    v7 = [v4 ordinal];
    v8 = [v4 isOrdered];
    v9 = [v4 mappedSeriesID];
    if (v9)
    {
      v10 = [v4 mappedSeriesID];

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_6:
        v10 = 0;
        v11 = 0;
        *a2 = 0;
        *(a2 + 8) = 0;
        v12 = 2;
LABEL_9:
        *(a2 + 16) = v12;
        *(a2 + 24) = v10;
        *(a2 + 32) = v11;
        return;
      }
    }

    else
    {

      v10 = 0;
    }

    v11 = v9 == 0;
    v12 = v8;
    *a2 = v7;
    *(a2 + 8) = v6;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_B49A8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_B4EF4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_32F04((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_B4EF4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_B4EF4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_B50E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_B5188(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_B5328(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_B8C20(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_B5328(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = 0;
  if (v4)
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = a3 + 32;
    v9 = ~(-1 << *(a4 + 32));
    while (1)
    {
      v11 = *(v8 + 8 * v6);
      v12 = sub_1B57E4();
      v13 = v12 & v9;
      v14 = (v12 & v9) >> 6;
      v15 = 1 << (v12 & v9);
      if ((v15 & *(v7 + 8 * v14)) != 0)
      {
        while (*(*(a4 + 48) + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v9;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if (((1 << v13) & *(v7 + 8 * (v13 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        v10 = a1[v14];
        a1[v14] = v10 | v15;
        if ((v10 & v15) == 0 && __OFADD__(v5++, 1))
        {
          break;
        }
      }

LABEL_4:
      if (++v6 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

LABEL_12:

  return sub_3D71C(a1, a2, v5, a4);
}

uint64_t sub_B5458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = *(a1 + 16);
  *a2 = *a1;
}

uint64_t sub_B5534()
{
  v1 = sub_2B0C(&qword_22B230, &qword_1C37F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_B5614()
{
  v1 = *(sub_2B0C(&qword_22B230, &qword_1C37F8) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_A8368(v2, v3, v4, v5);
}

uint64_t sub_B5688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B56A0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, uint64_t *a5)
{
  v69 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v20)
  {
    v19 = v9;
    v20 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v22 = __clz(__rbit64(v19)) | (v20 << 6);
    v23 = *(*(a1 + 48) + 8 * v22);
    v24 = *(a1 + 56) + 88 * v22;
    v25 = *(v24 + 16);
    v54[0] = *v24;
    v54[1] = v25;
    v27 = *(v24 + 48);
    v26 = *(v24 + 64);
    v28 = *(v24 + 32);
    v55 = *(v24 + 80);
    v54[3] = v27;
    v54[4] = v26;
    v54[2] = v28;
    v29 = *(v24 + 48);
    *&v53[40] = *(v24 + 32);
    *&v53[56] = v29;
    *&v53[72] = *(v24 + 64);
    *&v53[88] = *(v24 + 80);
    v30 = *(v24 + 16);
    *&v53[8] = *v24;
    *&v53[24] = v30;
    *v53 = v23;
    sub_5EDD8(v54, &v56);
    a2(&v62, v53);
    v58 = *&v53[32];
    v59 = *&v53[48];
    v60 = *&v53[64];
    v61 = *&v53[80];
    v56 = *v53;
    v57 = *&v53[16];
    sub_42F48(&v56, &qword_22B298, &qword_1C38E0);
    if (!*(&v63 + 1))
    {
LABEL_22:
      sub_417B8(a1);
    }

    v31 = a4;
    v32 = v62;
    v33 = *v69;
    v35 = sub_43124(v62);
    v36 = *(v33 + 16);
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_24;
    }

    v39 = v34;
    if (*(v33 + 24) >= v38)
    {
      if ((v31 & 1) == 0)
      {
        sub_1864C4();
      }
    }

    else
    {
      sub_17FD40(v38, v31 & 1);
      v40 = sub_43124(v32);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_26;
      }

      v35 = v40;
    }

    v9 = (v19 - 1) & v19;
    if (v39)
    {
      v12 = *(*v69 + 56) + 88 * v35;
      v13 = *(v12 + 16);
      v56 = *v12;
      v57 = v13;
      v15 = *(v12 + 48);
      v14 = *(v12 + 64);
      v16 = *(v12 + 32);
      *&v61 = *(v12 + 80);
      v59 = v15;
      v60 = v14;
      v58 = v16;
      v17 = v66;
      *(v12 + 32) = v65;
      *(v12 + 48) = v17;
      *(v12 + 64) = v67;
      *(v12 + 80) = v68;
      v18 = v64;
      *v12 = v63;
      *(v12 + 16) = v18;
      sub_85554(&v56);
    }

    else
    {
      v42 = *v69;
      v42[(v35 >> 6) + 8] |= 1 << v35;
      *(v42[6] + 8 * v35) = v32;
      v43 = v42[7] + 88 * v35;
      v44 = v64;
      *v43 = v63;
      *(v43 + 16) = v44;
      *(v43 + 80) = v68;
      v45 = v67;
      v46 = v65;
      *(v43 + 48) = v66;
      *(v43 + 64) = v45;
      *(v43 + 32) = v46;
      v47 = v42[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_25;
      }

      v42[2] = v49;
    }

    a4 = 1;
  }

  v21 = i;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v10)
    {
      goto LABEL_22;
    }

    v19 = *(v6 + 8 * v20);
    ++v21;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

void sub_B5A00(void *a1)
{
  v2 = sub_1B40C4();
  v33 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4054();
  type metadata accessor for CachedPersonalizationBookMetadataGenre();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    sub_1B47C4();
    v6 = sub_1B4794();
  }

  v7 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v6];

  sub_2B0C(&qword_22B238, &unk_1C3808);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C00E0;
  *(v8 + 56) = &type metadata for String;
  strcpy((v8 + 32), "lastAccessDate");
  *(v8 + 47) = -18;
  *(v8 + 88) = v2;
  v9 = sub_40528((v8 + 64));
  (*(v33 + 16))(v9, v4, v2);
  *(v8 + 120) = &type metadata for String;
  strcpy((v8 + 96), "lastAccessDate");
  *(v8 + 111) = -18;
  v10 = sub_1B4794();
  isa = sub_1B4AA4().super.isa;

  v12 = [objc_opt_self() predicateWithFormat:v10 argumentArray:isa];

  [v7 setPredicate:v12];
  v13 = sub_1B4E24();
  v22 = v13;
  v31 = v7;
  v32 = v2;
  if (!(v13 >> 62))
  {
    v23 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    v24 = v4;
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_21:

    (*(v33 + 8))(v24, v32);
    return;
  }

  v23 = sub_1B5284();
  v24 = v4;
  if (!v23)
  {
    goto LABEL_21;
  }

LABEL_8:
  v25 = 0;
  while (1)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = sub_1B50B4();
    }

    else
    {
      if (v25 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }

      v26 = *(v22 + 8 * v25 + 32);
    }

    v27 = v26;
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    [a1 deleteObject:v26];

    ++v25;
    v29 = v28 == v23;
    v24 = v4;
    if (v29)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  swift_once();
  v14 = sub_1B4644();
  sub_50E58(v14, qword_260C00);
  swift_errorRetain();
  v15 = sub_1B4624();
  v16 = sub_1B4D94();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = sub_1B5794();
    v21 = sub_60FF4(v19, v20, &v34);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_0, v15, v16, "Failed to retire old genre cache entries %s", v17, 0xCu);
    sub_2BF8(v18);
  }

  else
  {
  }
}

uint64_t sub_B5EB0()
{
  v1 = sub_2B0C(&qword_22B230, &qword_1C37F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_B5FA0(uint64_t a1)
{
  v4 = *(sub_2B0C(&qword_22B230, &qword_1C37F8) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_7A038;

  return sub_A8BB4(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_B60C4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v38 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = *(*(a1 + 48) + 8 * v16);
    v18 = (*(a1 + 56) + 16 * v16);
    v20 = *v18;
    v19 = v18[1];
    v42[0] = v17;
    v42[1] = v20;
    v42[2] = v19;

    a2(v43, v42);

    v21 = v44;
    if (!v44)
    {
LABEL_22:
      sub_417B8(a1);
    }

    v22 = v43[0];
    v41 = v43[1];
    v23 = *v45;
    v25 = sub_43124(v43[0]);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_186684();
      }
    }

    else
    {
      sub_180090(v28, a4 & 1);
      v30 = sub_43124(v22);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_26;
      }

      v25 = v30;
    }

    v32 = *v45;
    if (v29)
    {
      v12 = (v32[7] + 16 * v25);
      *v12 = v41;
      v12[1] = v21;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + 8 * v25) = v22;
      v33 = (v32[7] + 16 * v25);
      *v33 = v41;
      v33[1] = v21;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v14;
    v6 = v38;
    v9 = (v13 - 1) & v13;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_B6338(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_7A038;

  return sub_AE840(a1, a2, v7, v6);
}

uint64_t sub_B63F8()
{
  v1 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_B64DC()
{
  v1 = *(sub_2B0C(&qword_22B248, &qword_1C3848) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_B3E48(v2, v3, v4);
}

uint64_t sub_B659C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B40F4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_7A038;

  return sub_B195C(a1, v11, v12, v1 + v7, v13, v14, v1 + v10);
}

uint64_t sub_B66E8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, uint64_t *a5)
{
  v80 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v28)
  {
    v27 = v9;
    v28 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v30 = __clz(__rbit64(v27)) | (v28 << 6);
    v31 = *(*(a1 + 48) + 8 * v30);
    v32 = *(a1 + 56) + 88 * v30;
    v33 = *(v32 + 16);
    v61 = *v32;
    v62 = v33;
    v35 = *(v32 + 48);
    v34 = *(v32 + 64);
    v36 = *(v32 + 32);
    v66 = *(v32 + 80);
    v64 = v35;
    v65 = v34;
    v63 = v36;
    *&v60[40] = *(v32 + 32);
    *&v60[56] = *(v32 + 48);
    *&v60[72] = *(v32 + 64);
    *&v60[88] = *(v32 + 80);
    *&v60[8] = *v32;
    *&v60[24] = *(v32 + 16);
    *v60 = v31;
    sub_5EDD8(&v61, &v67);
    a2(&v73, v60);
    v69 = *&v60[32];
    v70 = *&v60[48];
    v71 = *&v60[64];
    v72 = *&v60[80];
    v67 = *v60;
    v68 = *&v60[16];
    sub_42F48(&v67, &qword_22B298, &qword_1C38E0);
    if (!*(&v74 + 1))
    {
LABEL_22:
      sub_417B8(a1);
    }

    v37 = a4;
    v38 = v73;
    v69 = v76;
    v70 = v77;
    v71 = v78;
    *&v72 = v79;
    v67 = v74;
    v68 = v75;
    v39 = *v80;
    v41 = sub_43124(v73);
    v42 = *(v39 + 16);
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_24;
    }

    v45 = v40;
    if (*(v39 + 24) >= v44)
    {
      if ((v37 & 1) == 0)
      {
        sub_1864C4();
      }
    }

    else
    {
      sub_17FD40(v44, v37 & 1);
      v46 = sub_43124(v38);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_26;
      }

      v41 = v46;
    }

    v9 = (v27 - 1) & v27;
    if (v45)
    {
      v12 = *v80;
      v13 = *(*v80 + 56) + 88 * v41;
      v14 = *(v13 + 16);
      v61 = *v13;
      v62 = v14;
      v16 = *(v13 + 48);
      v15 = *(v13 + 64);
      v17 = *(v13 + 32);
      v66 = *(v13 + 80);
      v64 = v16;
      v65 = v15;
      v63 = v17;
      sub_5EDD8(&v61, v60);
      sub_85554(&v67);
      v18 = *(v12 + 56) + 88 * v41;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      *&v60[80] = *(v18 + 80);
      *&v60[48] = v20;
      *&v60[64] = v21;
      v22 = *(v18 + 16);
      *v60 = *v18;
      *&v60[16] = v22;
      *&v60[32] = v19;
      v24 = v64;
      v23 = v65;
      v25 = v63;
      *(v18 + 80) = v66;
      *(v18 + 48) = v24;
      *(v18 + 64) = v23;
      *(v18 + 32) = v25;
      v26 = v62;
      *v18 = v61;
      *(v18 + 16) = v26;
      sub_85554(v60);
    }

    else
    {
      v48 = *v80;
      v48[(v41 >> 6) + 8] |= 1 << v41;
      *(v48[6] + 8 * v41) = v38;
      v49 = v48[7] + 88 * v41;
      v50 = v68;
      *v49 = v67;
      *(v49 + 16) = v50;
      v51 = v69;
      v52 = v70;
      v53 = v71;
      *(v49 + 80) = v72;
      *(v49 + 48) = v52;
      *(v49 + 64) = v53;
      *(v49 + 32) = v51;
      v54 = v48[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_25;
      }

      v48[2] = v56;
    }

    a4 = 1;
  }

  v29 = i;
  while (1)
  {
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v28 >= v10)
    {
      goto LABEL_22;
    }

    v27 = *(v6 + 8 * v28);
    ++v29;
    if (v27)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1B5784();
  __break(1u);
  return result;
}

unint64_t *sub_B6A9C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *))
{
  v40 = a4;
  v27 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = *(a3 + 56) + 88 * v14;
    v17 = *(v16 + 16);
    v36[0] = *v16;
    v36[1] = v17;
    v19 = *(v16 + 48);
    v18 = *(v16 + 64);
    v20 = *(v16 + 32);
    v37 = *(v16 + 80);
    v36[3] = v19;
    v36[4] = v18;
    v36[2] = v20;
    v21 = *(v16 + 16);
    v30 = *v16;
    v31 = v21;
    v22 = *(v16 + 32);
    v23 = *(v16 + 48);
    v24 = *(v16 + 64);
    v35 = *(v16 + 80);
    v33 = v23;
    v34 = v24;
    v32 = v22;
    sub_5EDD8(v36, v29);
    LOBYTE(v15) = v40(v15, &v30);
    v38[2] = v32;
    v38[3] = v33;
    v38[4] = v34;
    v39 = v35;
    v38[0] = v30;
    v38[1] = v31;
    result = sub_85554(v38);
    if (v15)
    {
      *(v27 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_561EC(v27, a2, v28, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_561EC(v27, a2, v28, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}