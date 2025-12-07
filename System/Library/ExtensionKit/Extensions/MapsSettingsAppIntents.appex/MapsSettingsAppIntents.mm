void sub_100001484(uint64_t result, uint64_t a2)
{
  if (qword_10000C230[0] != -1)
  {
    sub_100005944();
  }
}

uint64_t sub_1000014F8(uint64_t a1)
{
  v2 = sub_10000164C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000015A4();
  sub_100005BA8();
  return 0;
}

unint64_t sub_1000015A4()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_10000164C()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_1000016B4()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_100001708()
{
  v0 = sub_100003228(&qword_10000C188, &qword_1000067C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100005B98();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100005B58();
  sub_1000032A8(v5, qword_10000D1C0);
  sub_100003270(v5, qword_10000D1C0);
  sub_100005B88();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100005B48();
}

uint64_t sub_100001880()
{
  v1 = sub_100003228(&qword_10000C180, "t\v");
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_100003228(&qword_10000C188, &qword_1000067C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_100005B98();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = *v0;
  sub_100003A3C(*v0);
  sub_100005B88();
  (*(v8 + 32))(v6, v11, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v13 = *(type metadata accessor for MapsSettingsDeepLink(0) + 20);
  v14 = sub_100005A78();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v3, &v0[v13], v14);
  (*(v15 + 56))(v3, 0, 1, v14);
  sub_100003C14(v12);
  return sub_100005A88();
}

uint64_t sub_100001B24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001BC4;

  return sub_100003528(&off_1000088C0, 1);
}

uint64_t sub_100001BC4(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100001CC4, 0, 0);
}

uint64_t sub_100001CC4()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for MapsSettingsDeepLink(0);
    v4 = *(v3 - 8);
    sub_100003954(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {

    v3 = type metadata accessor for MapsSettingsDeepLink(0);
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100001DEC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001E8C;

  return sub_100003528(&off_1000088C0, 0);
}

uint64_t sub_100001E8C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_100001FA8()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100002000()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t type metadata accessor for MapsSettingsDeepLink(uint64_t a1)
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000020D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000216C;

  return sub_100003528(a1, 1);
}

uint64_t sub_10000216C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000226C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003A24;

  return sub_100003528(&off_1000088C0, 1);
}

uint64_t sub_10000230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000023CC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000023CC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000024D0()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_10000255C()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    sub_1000025FC(&qword_10000C088, qword_100006018);
    sub_10000330C(&qword_10000C078, &unk_1000062C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_1000025FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002644(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000016B4();
  *v5 = v2;
  v5[1] = sub_1000026F8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000026F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000027EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000026F8;

  return sub_100001B24(a1);
}

uint64_t sub_1000028C0(uint64_t a1)
{
  v1 = sub_100003228(&qword_10000C198, "t\v");
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100003228(&qword_10000C1A0, &qword_1000063D8);
  __chkstk_darwin(v5);
  sub_10000330C(&qword_10000C068, &unk_10000613C);
  sub_100005B08();
  v8._object = 0x8000000100006AD0;
  v8._countAndFlagsBits = 0xD00000000000003CLL;
  sub_100005AF8(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_100005AE8();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100005AF8(v9);
  return sub_100005B18();
}

uint64_t sub_100002AA0()
{
  v0 = qword_10000C040;

  return v0;
}

unint64_t sub_100002B78()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100002BCC(uint64_t a1)
{
  sub_10000330C(&qword_10000C190, &unk_1000060D4);
  v2 = sub_100005AB8();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100002CF4()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100002D54@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C020 != -1)
  {
    swift_once();
  }

  v2 = sub_100005B58();
  v3 = sub_100003270(v2, qword_10000D1C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100002E00()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    sub_1000025FC(&qword_10000C0E0, &qword_1000062B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_100002E64(uint64_t a1)
{
  v2 = sub_10000330C(&qword_10000C068, &unk_10000613C);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100002F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003A20;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002FC8(uint64_t a1)
{
  v2 = sub_10000330C(&qword_10000C0C8, &unk_100006320);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100003044(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 240)
  {
    v4 = *a1;
    if (v4 >= 0x10)
    {
      return v4 - 15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100005A78();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1000030FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 240)
  {
    *result = a2 + 15;
  }

  else
  {
    v7 = sub_100005A78();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000319C(uint64_t a1)
{
  result = sub_100005A78();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100003228(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003270(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000032A8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000330C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MapsSettingsDeepLink(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100003350(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003228(&qword_10000C1A8, &unk_1000063F0);
  v10 = *(type metadata accessor for MapsSettingsDeepLink(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MapsSettingsDeepLink(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100003528(uint64_t a1, char a2)
{
  *(v2 + 56) = a2;
  *(v2 + 16) = a1;
  v3 = type metadata accessor for MapsSettingsDeepLink(0);
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000035F8, 0, 0);
}

id sub_1000035F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (*(v0 + 56) == 1)
  {
    if (v2)
    {
      v3 = *(v0 + 32);
      v4 = (v1 + 32);
      v5 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v8 = *v4++;
        v7 = v8;
        if (v8 > 7)
        {
          if (v7 > 11)
          {
            if (v7 > 13)
            {
              if (v7 != 14 || (MapsFeature_IsEnabled_LagunaBeach() & 1) != 0 && GEODoesUserHaveValidAccountForMakingContributions() && MapsFeature_IsEnabled_SydneyARP())
              {
                goto LABEL_27;
              }
            }

            else if (MapsFeature_IsEnabled_LagunaBeach() & 1) != 0 && (GEODoesUserHaveValidAccountForMakingContributions())
            {
              goto LABEL_27;
            }
          }

          else
          {
            if ((v7 - 9) < 2)
            {
              goto LABEL_27;
            }

            if (v7 == 8)
            {
LABEL_15:
              if (MSPSharedTripNetworkEnabled())
              {
                goto LABEL_27;
              }

              goto LABEL_5;
            }

            v21 = v21 & 0xFFFFFFFF00000000 | 1;
            if (GEOConfigGetBOOL())
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          if (v7 < 6)
          {
            goto LABEL_27;
          }

          if (v7 != 6)
          {
            goto LABEL_15;
          }

          result = [objc_opt_self() sharedConfiguration];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v10 = result;
          v11 = [result currentCountrySupportsNavigation];

          if (v11)
          {
LABEL_27:
            **(v0 + 48) = v7;
            sub_100005A68();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_100003350(0, v5[2] + 1, 1, v5);
            }

            v13 = v5[2];
            v12 = v5[3];
            if (v13 >= v12 >> 1)
            {
              v5 = sub_100003350((v12 > 1), v13 + 1, 1, v5);
            }

            v6 = *(v0 + 48);
            v5[2] = v13 + 1;
            sub_1000039B8(v6, v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
          }
        }

LABEL_5:
        if (!--v2)
        {
          goto LABEL_40;
        }
      }
    }
  }

  else if (v2)
  {
    v14 = *(v0 + 32);
    v15 = (v1 + 32);
    v5 = &_swiftEmptyArrayStorage;
    do
    {
      v16 = *v15++;
      **(v0 + 40) = v16;
      sub_100005A68();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100003350(0, v5[2] + 1, 1, v5);
      }

      v18 = v5[2];
      v17 = v5[3];
      if (v18 >= v17 >> 1)
      {
        v5 = sub_100003350((v17 > 1), v18 + 1, 1, v5);
      }

      v19 = *(v0 + 40);
      v5[2] = v18 + 1;
      sub_1000039B8(v19, v5 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v18);
      --v2;
    }

    while (v2);
    goto LABEL_40;
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_40:

  v20 = *(v0 + 8);

  return v20(v5);
}

uint64_t sub_100003954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsSettingsDeepLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000039B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsSettingsDeepLink(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100003C14(char a1)
{
  result = &_swiftEmptyArrayStorage;
  switch(a1)
  {
    case 1:
    case 4:
      sub_100003228(&qword_10000C1C8, &unk_100006590);
      sub_100005B98();
      v3 = swift_allocObject();
      v3[1] = xmmword_100006430;
      sub_100005B88();
      sub_100005B88();
      sub_100005B88();
      sub_100005B88();
      goto LABEL_8;
    case 2:
      sub_100003228(&qword_10000C1C8, &unk_100006590);
      sub_100005B98();
      v3 = swift_allocObject();
      v3[1] = xmmword_100006450;
      sub_100005B88();
      sub_100005B88();
      sub_100005B88();
      sub_100005B88();
      sub_100005B88();
      goto LABEL_8;
    case 3:
      sub_100003228(&qword_10000C1C8, &unk_100006590);
      sub_100005B98();
      v3 = swift_allocObject();
      v3[1] = xmmword_100006440;
      sub_100005B88();
      sub_100005B88();
      sub_100005B88();
      goto LABEL_8;
    case 5:
    case 6:
      sub_100003228(&qword_10000C1C8, &unk_100006590);
      sub_100005B98();
      v3 = swift_allocObject();
      v3[1] = xmmword_100006420;
      sub_100005B88();
      sub_100005B88();
      goto LABEL_8;
    case 9:
    case 11:
      sub_100003228(&qword_10000C1C8, &unk_100006590);
      sub_100005B98();
      v3 = swift_allocObject();
      v3[1] = xmmword_100006410;
      goto LABEL_8;
    case 15:
      sub_100003228(&qword_10000C1C8, &unk_100006590);
      sub_100005B98();
      v3 = swift_allocObject();
      v3[1] = xmmword_100006400;
      sub_100005B88();
LABEL_8:
      sub_100005B88();
      result = v3;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100004574(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
    case 14:
      result = 0xD000000000000021;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000023;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0xD00000000000002DLL;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100004774(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100004574(*a1);
  v5 = v4;
  if (v3 == sub_100004574(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100005BD8();
  }

  return v8 & 1;
}

unint64_t sub_100004800()
{
  result = qword_10000C1B0;
  if (!qword_10000C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B0);
  }

  return result;
}

Swift::Int sub_100004854()
{
  v1 = *v0;
  sub_100005BE8();
  sub_100004574(v1);
  sub_100005BB8();

  return sub_100005BF8();
}

uint64_t sub_1000048B8(uint64_t a1)
{
  sub_100004574(*v1);
  sub_100005BB8();
}

Swift::Int sub_10000490C(uint64_t a1)
{
  v2 = *v1;
  sub_100005BE8();
  sub_100004574(v2);
  sub_100005BB8();

  return sub_100005BF8();
}

unint64_t sub_10000496C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004C14(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10000499C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100004574(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000049CC()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    sub_1000025FC(&qword_10000C1C0, qword_100006500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

unint64_t sub_100004A5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100004C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MapsSettingsDeepLinkDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapsSettingsDeepLinkDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100004C14(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000088F0;
  v6._object = a2;
  v4 = sub_100005BC8(v3, v6);

  if (v4 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100004C64()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

uint64_t sub_100004CEC()
{
  v0 = sub_100005B98();
  sub_1000032A8(v0, qword_10000D1D8);
  sub_100003270(v0, qword_10000D1D8);
  return sub_100005B88();
}

uint64_t sub_100004D74(uint64_t a1)
{
  v2 = type metadata accessor for MapsSettingsDeepLink(0);
  __chkstk_darwin(v2 - 8);
  sub_100003954(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005A48();
  return sub_1000058E4(a1);
}

uint64_t (*sub_100004E04(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100005A28();
  return sub_100004E78;
}

void sub_100004E78(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004EC4()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

uint64_t sub_100004F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000583C();
  v5 = sub_10000330C(&qword_10000C190, &unk_1000060D4);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100004FA4()
{
  v0 = qword_10000C1D0;

  return v0;
}

unint64_t sub_100004FE4()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

unint64_t sub_10000503C()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}

unint64_t sub_100005094()
{
  result = qword_10000C200;
  if (!qword_10000C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C200);
  }

  return result;
}

uint64_t sub_100005138@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C028 != -1)
  {
    swift_once();
  }

  v2 = sub_100005B98();
  v3 = sub_100003270(v2, qword_10000D1D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000051E0(uint64_t a1)
{
  v2 = sub_10000583C();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100005234(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000583C();
  v6 = sub_100005890();
  v7 = sub_10000330C(&qword_10000C190, &unk_1000060D4);
  *v4 = v2;
  v4[1] = sub_10000531C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000531C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100005424@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005498();
  *a1 = result;
  return result;
}

uint64_t sub_10000544C(uint64_t a1)
{
  v2 = sub_100004EC4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100005498()
{
  v22 = sub_100005B28();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003228(&qword_10000C208, &qword_1000067B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_100003228(&qword_10000C210, &qword_1000067B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_100003228(&qword_10000C188, &qword_1000067C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_100005B98();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_100003228(&qword_10000C218, &qword_1000067C8);
  sub_100005B88();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for MapsSettingsDeepLink(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_100005A18();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_10000330C(&qword_10000C068, &unk_10000613C);
  return sub_100005A58();
}

unint64_t sub_10000583C()
{
  result = qword_10000C220;
  if (!qword_10000C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C220);
  }

  return result;
}

unint64_t sub_100005890()
{
  result = qword_10000C228;
  if (!qword_10000C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C228);
  }

  return result;
}

uint64_t sub_1000058E4(uint64_t a1)
{
  v2 = type metadata accessor for MapsSettingsDeepLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}