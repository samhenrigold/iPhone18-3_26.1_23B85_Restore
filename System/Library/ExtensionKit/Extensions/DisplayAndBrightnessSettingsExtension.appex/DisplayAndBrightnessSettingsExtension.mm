unint64_t sub_100001A30()
{
  result = qword_10001C148;
  if (!qword_10001C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C148);
  }

  return result;
}

unint64_t sub_100001A88()
{
  result = qword_10001C150;
  if (!qword_10001C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C150);
  }

  return result;
}

unint64_t sub_100001AE0()
{
  result = qword_10001C158;
  if (!qword_10001C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C158);
  }

  return result;
}

uint64_t sub_100001B34()
{
  v0 = sub_100005414(&qword_10001C220, &qword_1000108E8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  v4 = sub_100005414(&qword_10001C228, &qword_1000108F0);
  __chkstk_darwin(v4);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  sub_100001AE0();
  if (v6)
  {
    v7 = "estures Settings Deep Links";
  }

  else
  {
    v7 = "skingAndGestures";
  }

  if (v6)
  {
    v8 = 0xD000000000000040;
  }

  else
  {
    v8 = 0xD000000000000030;
  }

  sub_10000FC8C();
  v11._object = (v7 | 0x8000000000000000);
  v11._countAndFlagsBits = v8;
  sub_10000FC7C(v11);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10000FC6C();
  (*(v1 + 8))(v3, v0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_10000FC7C(v12);
  return sub_10000FC9C();
}

uint64_t sub_100001D64()
{
  v0 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10000FD2C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10000FCDC();
  sub_100005494(v5, qword_10001C580);
  sub_10000545C(v5, qword_10001C580);
  sub_10000FD0C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000FCCC();
}

uint64_t sub_100001ED4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v23 = sub_10000FD1C();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000FD5C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000FD8C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100005414(&qword_10001C200, &unk_1000108D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_10000FD2C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v24 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v15 + 56))(v13, 0, 1, v14);
      sub_10000FBDC();
      v20 = sub_10000FBEC();
      (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v23);
      break;
    case 12:
    case 13:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v15 + 56))(v13, 0, 1, v14);
      sub_10000FBDC();
      v19 = sub_10000FBEC();
      (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      *(swift_allocObject() + 16) = xmmword_1000102B0;
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v23);
      break;
    default:
      sub_10000FD0C();
      (*(v15 + 56))(v13, 1, 1, v14);
      sub_10000FBDC();
      v18 = sub_10000FBEC();
      (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      *(swift_allocObject() + 16) = xmmword_1000102B0;
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v23);
      break;
  }

  sub_10000FD3C();
  return sub_10000FBFC();
}

uint64_t sub_100003358(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000556C;

  return sub_100004D98(a1);
}

uint64_t sub_100003400(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005550;

  return sub_100004AC4();
}

uint64_t sub_1000034A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003564;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003564(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100003668()
{
  result = qword_10001C160;
  if (!qword_10001C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C160);
  }

  return result;
}

uint64_t sub_1000036BC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003760;

  return sub_1000052A8();
}

uint64_t sub_100003760(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_100003878()
{
  result = qword_10001C168;
  if (!qword_10001C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C168);
  }

  return result;
}

unint64_t sub_1000038D0()
{
  result = qword_10001C170;
  if (!qword_10001C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C170);
  }

  return result;
}

unint64_t sub_100003928()
{
  result = qword_10001C178;
  if (!qword_10001C178)
  {
    sub_1000039AC(&qword_10001C180, qword_100010378);
    sub_1000038D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C178);
  }

  return result;
}

uint64_t sub_1000039AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000039F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003668();
  *v5 = v2;
  v5[1] = sub_100003AA8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100003AA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003B9C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003C40;

  return sub_10000506C();
}

uint64_t sub_100003C40(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_100003D5C()
{
  result = qword_10001C188;
  if (!qword_10001C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C188);
  }

  return result;
}

uint64_t sub_100003DB4()
{
  v0 = qword_10001C0F8;

  return v0;
}

unint64_t sub_100003DF0()
{
  result = qword_10001C190;
  if (!qword_10001C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C190);
  }

  return result;
}

unint64_t sub_100003E48()
{
  result = qword_10001C198;
  if (!qword_10001C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C198);
  }

  return result;
}

unint64_t sub_100003EA0()
{
  result = qword_10001C1A0;
  if (!qword_10001C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1A0);
  }

  return result;
}

unint64_t sub_100003EF8()
{
  result = qword_10001C1A8;
  if (!qword_10001C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1A8);
  }

  return result;
}

uint64_t sub_100003F4C(uint64_t a1)
{
  sub_1000054F8();
  v2 = sub_10000FC3C();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100003FBC()
{
  result = qword_10001C1B0;
  if (!qword_10001C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1B0);
  }

  return result;
}

unint64_t sub_100004010()
{
  result = qword_10001C1B8;
  if (!qword_10001C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1B8);
  }

  return result;
}

unint64_t sub_100004068()
{
  result = qword_10001C1C0;
  if (!qword_10001C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1C0);
  }

  return result;
}

unint64_t sub_1000040C4()
{
  result = qword_10001C1C8;
  if (!qword_10001C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1C8);
  }

  return result;
}

uint64_t sub_100004124@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C108 != -1)
  {
    swift_once();
  }

  v2 = sub_10000FCDC();
  v3 = sub_10000545C(v2, qword_10001C580);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100004210(uint64_t a1)
{
  v2 = sub_100001AE0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004260()
{
  result = qword_10001C1E0;
  if (!qword_10001C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1E0);
  }

  return result;
}

uint64_t sub_1000042BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003AA8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004380(uint64_t a1)
{
  v2 = sub_100004068();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000043CC(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      result = 0x617469746C754D2FLL;
      break;
    case 2:
      result = 0x7263536C6C75462FLL;
      break;
    case 3:
      result = 0x65776F646E69572FLL;
      break;
    case 4:
      result = 0x614D65676174532FLL;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0x41746E656365522FLL;
      break;
    case 7:
      result = 0x6B636F442FLL;
      break;
    case 8:
      result = 0x746375646F72502FLL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x6F54656B6168532FLL;
      break;
    case 11:
      result = 0x4772656E726F432FLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x4550535F5069502FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000045D8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000043CC(*a1);
  v5 = v4;
  if (v3 == sub_1000043CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000FDBC();
  }

  return v8 & 1;
}

unint64_t sub_100004664()
{
  result = qword_10001C1E8;
  if (!qword_10001C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1E8);
  }

  return result;
}

Swift::Int sub_1000046B8()
{
  v1 = *v0;
  sub_10000FDDC();
  sub_1000043CC(v1);
  sub_10000FD9C();

  return sub_10000FDEC();
}

uint64_t sub_10000471C(uint64_t a1)
{
  sub_1000043CC(*v1);
  sub_10000FD9C();
}

Swift::Int sub_100004770(uint64_t a1)
{
  v2 = *v1;
  sub_10000FDDC();
  sub_1000043CC(v2);
  sub_10000FD9C();

  return sub_10000FDEC();
}

unint64_t sub_1000047D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000053C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100004800@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000043CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100004870(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000039AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000048E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000053C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100004960(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000049F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100004AE0()
{
  for (i = 0; i != 14; ++i)
  {
    v3 = *(&off_100018A08 + i + 32);
    if (v3 >= 0xC)
    {
      if (v3 == 12)
      {
        v8 = [objc_opt_self() currentDevice];
        v9 = [v8 userInterfaceIdiom];

        if (v9 != 1 || ([objc_opt_self() isPictureInPictureSupported] & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v1 = [objc_opt_self() currentDevice];
        v2 = [v1 userInterfaceIdiom];

        if (v2 || ![objc_opt_self() isPictureInPictureSupported])
        {
          continue;
        }
      }
    }

    else
    {
      v4 = [objc_opt_self() currentDevice];
      v5 = [v4 userInterfaceIdiom];

      if (v5 != 1)
      {
        continue;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000B9B8(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v7 = _swiftEmptyArrayStorage[2];
    v6 = _swiftEmptyArrayStorage[3];
    if (v7 >= v6 >> 1)
    {
      sub_10000B9B8((v6 > 1), v7 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v7 + 1;
    *(&_swiftEmptyArrayStorage[4] + v7) = v3;
  }

  v10 = _swiftEmptyArrayStorage[2];
  if (v10)
  {
    sub_10000B988(0, v10, 0);
    v11 = _swiftEmptyArrayStorage[2];
    v12 = 32;
    do
    {
      v13 = *(_swiftEmptyArrayStorage + v12);
      v14 = _swiftEmptyArrayStorage[3];
      if (v11 >= v14 >> 1)
      {
        sub_10000B988((v14 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *(&_swiftEmptyArrayStorage[4] + v11) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  v15 = *(v17 + 8);

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_100004DB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = v7 == 12;
      if (v7 >= 0xC)
      {
        if (v8)
        {
          v13 = [objc_opt_self() currentDevice];
          v14 = [v13 userInterfaceIdiom];

          if (v14 == 1 && ([objc_opt_self() isPictureInPictureSupported] & 1) != 0)
          {
LABEL_7:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10000B9B8(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v12 = _swiftEmptyArrayStorage[2];
            v11 = _swiftEmptyArrayStorage[3];
            if (v12 >= v11 >> 1)
            {
              sub_10000B9B8((v11 > 1), v12 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v12 + 1;
            *(&_swiftEmptyArrayStorage[4] + v12) = v6;
          }
        }

        else
        {
          v4 = [objc_opt_self() currentDevice];
          v5 = [v4 userInterfaceIdiom];

          if (!v5 && [objc_opt_self() isPictureInPictureSupported])
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v9 = [objc_opt_self() currentDevice];
        v10 = [v9 userInterfaceIdiom];

        if (v10 == 1)
        {
          goto LABEL_7;
        }
      }

      --v2;
    }

    while (v2);
  }

  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_10000B988(0, v15, 0);
    v16 = _swiftEmptyArrayStorage[2];
    v17 = 32;
    do
    {
      v18 = *(_swiftEmptyArrayStorage + v17);
      v19 = _swiftEmptyArrayStorage[3];
      if (v16 >= v19 >> 1)
      {
        sub_10000B988((v19 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      *(&_swiftEmptyArrayStorage[4] + v16) = v18;
      ++v17;
      ++v16;
      --v15;
    }

    while (v15);
  }

  v20 = *(v22 + 8);

  return v20(_swiftEmptyArrayStorage);
}

uint64_t sub_100005088()
{
  for (i = 0; i != 14; ++i)
  {
    v4 = *(&off_100018A08 + i + 32);
    if (v4 >= 0xC)
    {
      if (v4 == 12)
      {
        v9 = [objc_opt_self() currentDevice];
        v10 = [v9 userInterfaceIdiom];

        if (v10 != 1 || ([objc_opt_self() isPictureInPictureSupported] & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v2 = [objc_opt_self() currentDevice];
        v3 = [v2 userInterfaceIdiom];

        if (v3 || ![objc_opt_self() isPictureInPictureSupported])
        {
          continue;
        }
      }
    }

    else
    {
      v5 = [objc_opt_self() currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 != 1)
      {
        continue;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000B9B8(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_10000B9B8((v7 > 1), v8 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v8 + 1;
    *(&_swiftEmptyArrayStorage[4] + v8) = v4;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v11 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v11 = 14;
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_1000052C4()
{
  sub_10000B988(0, 14, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100018A08 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10000B988((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 14);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_1000053C8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018A38;
  v6._object = a2;
  v4 = sub_10000FDAC(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100005414(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000545C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005494(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000054F8()
{
  result = qword_10001C218;
  if (!qword_10001C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C218);
  }

  return result;
}

unint64_t sub_100005574()
{
  result = qword_10001C240;
  if (!qword_10001C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C240);
  }

  return result;
}

unint64_t sub_1000055CC()
{
  result = qword_10001C248;
  if (!qword_10001C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C248);
  }

  return result;
}

unint64_t sub_100005624()
{
  result = qword_10001C250;
  if (!qword_10001C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C250);
  }

  return result;
}

uint64_t sub_100005678(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0x8000000100012020;
    if (a1 != 1)
    {
      v9 = 0x8000000100012040;
    }

    if (a1)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = 47;
    }

    if (v2)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0xE100000000000000;
    }
  }

  else
  {
    v3 = 0x525F574F4C4C4123;
    v4 = 0xEE0053544E454345;
    if (a1 != 5)
    {
      v3 = 0xD00000000000001BLL;
      v4 = 0x80000001000120B0;
    }

    v5 = 0x8000000100012060;
    v6 = 0xD000000000000016;
    if (a1 != 3)
    {
      v6 = 0xD000000000000011;
      v5 = 0x8000000100012080;
    }

    if (a1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v3;
    }

    if (v2 <= 4)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = "#USE_LARGE_APP_ICONS";
      }

      else
      {
        v11 = "#APP_DOWNLOADS_GO_TO";
      }

      v10 = (v11 - 32) | 0x8000000000000000;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v10 = 0xE100000000000000;
      if (v7 != 47)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v10 = 0xEE0053544E454345;
      if (v7 != 0x525F574F4C4C4123)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v10 = 0x80000001000120B0;
      if (v7 != 0xD00000000000001BLL)
      {
LABEL_41:
        v12 = sub_10000FDBC();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v10 = 0x8000000100012060;
    if (v7 != 0xD000000000000016)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = 0x8000000100012080;
    if (v7 != 0xD000000000000011)
    {
      goto LABEL_41;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_41;
  }

  v12 = 1;
LABEL_42:

  return v12 & 1;
}

Swift::Int sub_10000589C(uint64_t a1, unsigned __int8 a2)
{
  sub_10000FDDC();
  sub_10000FD9C();

  return sub_10000FDEC();
}

uint64_t sub_1000059D0()
{
  v0 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10000FD2C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10000FCDC();
  sub_100005494(v5, qword_10001C598);
  sub_10000545C(v5, qword_10001C598);
  sub_10000FD0C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000FCCC();
}

uint64_t sub_100005B40@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v129) = a1;
  v137 = a2;
  v2 = sub_10000FD1C();
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v136 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000FD5C();
  __chkstk_darwin(v4 - 8);
  v135 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000FD8C();
  __chkstk_darwin(v6 - 8);
  v134 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000FBEC();
  v130 = *(v8 - 8);
  v131 = v8;
  v9 = __chkstk_darwin(v8);
  v125 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v123 = &v114 - v12;
  v13 = __chkstk_darwin(v11);
  v122 = &v114 - v14;
  v15 = __chkstk_darwin(v13);
  v119 = &v114 - v16;
  v17 = __chkstk_darwin(v15);
  v128 = &v114 - v18;
  v19 = __chkstk_darwin(v17);
  v127 = &v114 - v20;
  __chkstk_darwin(v19);
  v126 = &v114 - v21;
  v22 = sub_100005414(&qword_10001C200, &unk_1000108D0);
  v23 = __chkstk_darwin(v22 - 8);
  v124 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v121 = &v114 - v26;
  v27 = __chkstk_darwin(v25);
  v120 = &v114 - v28;
  v29 = __chkstk_darwin(v27);
  v118 = &v114 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v114 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v114 - v35;
  __chkstk_darwin(v34);
  v38 = &v114 - v37;
  v39 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  v40 = __chkstk_darwin(v39 - 8);
  v117 = &v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v116 = &v114 - v43;
  v44 = __chkstk_darwin(v42);
  v115 = &v114 - v45;
  v46 = __chkstk_darwin(v44);
  v114 = &v114 - v47;
  v48 = __chkstk_darwin(v46);
  v50 = &v114 - v49;
  v51 = __chkstk_darwin(v48);
  v53 = &v114 - v52;
  __chkstk_darwin(v51);
  v55 = &v114 - v54;
  v56 = sub_10000FD2C();
  v57 = *(v56 - 8);
  v58 = __chkstk_darwin(v56);
  v59 = __chkstk_darwin(v58);
  v60 = __chkstk_darwin(v59);
  v61 = __chkstk_darwin(v60);
  v62 = __chkstk_darwin(v61);
  v63 = __chkstk_darwin(v62);
  v64 = __chkstk_darwin(v63);
  v65 = __chkstk_darwin(v64);
  v66 = v129;
  if (v129 <= 2u)
  {
    v124 = v38;
    v125 = v36;
    v75 = v126;
    v76 = v127;
    v129 = v33;
    v77 = v128;
    if (v66)
    {
      v78 = v65;
      if (v66 == 1)
      {
        sub_10000FD0C();
        sub_10000FD0C();
        (*(v57 + 56))(v53, 0, 1, v78);
        v79 = [objc_opt_self() currentDevice];
        [v79 userInterfaceIdiom];

        sub_10000FBDC();
        v81 = v130;
        v80 = v131;
        v82 = v125;
        (*(v130 + 32))(v125, v76, v131);
        (*(v81 + 56))(v82, 0, 1, v80);
      }

      else
      {
        sub_10000FD0C();
        sub_10000FD0C();
        (*(v57 + 56))(v50, 0, 1, v78);
        v95 = [objc_opt_self() currentDevice];
        [v95 userInterfaceIdiom];

        sub_10000FBDC();
        v97 = v129;
        v96 = v130;
        v98 = v131;
        (*(v130 + 32))(v129, v77, v131);
        (*(v96 + 56))(v97, 0, 1, v98);
      }

      sub_10000FD7C();
      sub_10000FD4C();
      (*(v132 + 104))(v136, enum case for LocalizedStringResource.BundleDescription.main(_:), v133);
      sub_10000FD3C();
    }

    else
    {
      v90 = v65;
      sub_10000FD0C();
      (*(v57 + 56))(v55, 1, 1, v90);
      v91 = [objc_opt_self() currentDevice];
      [v91 userInterfaceIdiom];

      sub_10000FBDC();
      v93 = v130;
      v92 = v131;
      v94 = v124;
      (*(v130 + 32))(v124, v75, v131);
      (*(v93 + 56))(v94, 0, 1, v92);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v132 + 104))(v136, enum case for LocalizedStringResource.BundleDescription.main(_:), v133);
      sub_10000FD3C();
    }
  }

  else
  {
    v67 = v65;
    if (v129 > 4u)
    {
      if (v129 != 5)
      {
        sub_10000FD0C();
        v106 = v117;
        sub_10000FD0C();
        (*(v57 + 56))(v106, 0, 1, v67);
        v107 = [objc_opt_self() currentDevice];
        [v107 userInterfaceIdiom];

        v108 = v125;
        sub_10000FBDC();
        v109 = v130;
        v110 = v124;
        v111 = v108;
        v112 = v131;
        (*(v130 + 32))(v124, v111, v131);
        (*(v109 + 56))(v110, 0, 1, v112);
        sub_10000FD7C();
        sub_10000FD4C();
        (*(v132 + 104))(v136, enum case for LocalizedStringResource.BundleDescription.main(_:), v133);
        sub_10000FD3C();
        return sub_10000FBFC();
      }

      sub_10000FD0C();
      v83 = v116;
      sub_10000FD0C();
      (*(v57 + 56))(v83, 0, 1, v67);
      v84 = [objc_opt_self() currentDevice];
      [v84 userInterfaceIdiom];

      v85 = v123;
      sub_10000FBDC();
      v86 = v130;
      v87 = v121;
      v88 = v85;
      v89 = v131;
      (*(v130 + 32))(v121, v88, v131);
      (*(v86 + 56))(v87, 0, 1, v89);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v132 + 104))(v136, enum case for LocalizedStringResource.BundleDescription.main(_:), v133);
    }

    else
    {
      if (v129 != 3)
      {
        sub_10000FD0C();
        v99 = v115;
        sub_10000FD0C();
        (*(v57 + 56))(v99, 0, 1, v67);
        v100 = [objc_opt_self() currentDevice];
        [v100 userInterfaceIdiom];

        v101 = v122;
        sub_10000FBDC();
        v102 = v130;
        v103 = v120;
        v104 = v101;
        v105 = v131;
        (*(v130 + 32))(v120, v104, v131);
        (*(v102 + 56))(v103, 0, 1, v105);
        sub_10000FD7C();
        sub_10000FD4C();
        (*(v132 + 104))(v136, enum case for LocalizedStringResource.BundleDescription.main(_:), v133);
        sub_10000FD3C();
        return sub_10000FBFC();
      }

      sub_10000FD0C();
      v68 = v114;
      sub_10000FD0C();
      (*(v57 + 56))(v68, 0, 1, v67);
      v69 = [objc_opt_self() currentDevice];
      [v69 userInterfaceIdiom];

      v70 = v119;
      sub_10000FBDC();
      v71 = v130;
      v72 = v118;
      v73 = v70;
      v74 = v131;
      (*(v130 + 32))(v118, v73, v131);
      (*(v71 + 56))(v72, 0, 1, v74);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v132 + 104))(v136, enum case for LocalizedStringResource.BundleDescription.main(_:), v133);
    }

    sub_10000FD3C();
  }

  return sub_10000FBFC();
}

uint64_t sub_100006E08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000556C;

  return sub_100008254(a1);
}

uint64_t sub_100006EB0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005550;

  return sub_100007F98();
}

unint64_t sub_100006F58()
{
  result = qword_10001C258;
  if (!qword_10001C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C258);
  }

  return result;
}

uint64_t sub_100006FAC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003760;

  return sub_100008518();
}

unint64_t sub_100007054()
{
  result = qword_10001C260;
  if (!qword_10001C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C260);
  }

  return result;
}

unint64_t sub_1000070AC()
{
  result = qword_10001C268;
  if (!qword_10001C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C268);
  }

  return result;
}

unint64_t sub_100007104()
{
  result = qword_10001C270;
  if (!qword_10001C270)
  {
    sub_1000039AC(&qword_10001C278, qword_1000109D8);
    sub_1000070AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C270);
  }

  return result;
}

uint64_t sub_100007188(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006F58();
  *v5 = v2;
  v5[1] = sub_100003AA8;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10000727C()
{
  result = qword_10001C280;
  if (!qword_10001C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C280);
  }

  return result;
}

uint64_t sub_1000072D0(uint64_t a1)
{
  v1 = sub_100005414(&qword_10001C300, &qword_100010F00);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100005414(&qword_10001C308, &qword_100010F08);
  __chkstk_darwin(v5);
  sub_100005624();
  sub_10000FC8C();
  v8._object = 0x8000000100013D70;
  v8._countAndFlagsBits = 0xD000000000000040;
  sub_10000FC7C(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_10000FC6C();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_10000FC7C(v9);
  return sub_10000FC9C();
}

uint64_t sub_100007494()
{
  v0 = qword_10001C230;

  return v0;
}

unint64_t sub_1000074D0()
{
  result = qword_10001C288;
  if (!qword_10001C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C288);
  }

  return result;
}

unint64_t sub_100007528()
{
  result = qword_10001C290;
  if (!qword_10001C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C290);
  }

  return result;
}

unint64_t sub_100007580()
{
  result = qword_10001C298;
  if (!qword_10001C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C298);
  }

  return result;
}

unint64_t sub_1000075D8()
{
  result = qword_10001C2A0;
  if (!qword_10001C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A0);
  }

  return result;
}

uint64_t sub_10000762C(uint64_t a1)
{
  sub_100008820();
  v2 = sub_10000FC3C();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10000769C()
{
  result = qword_10001C2A8;
  if (!qword_10001C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A8);
  }

  return result;
}

unint64_t sub_1000076F0()
{
  result = qword_10001C2B0;
  if (!qword_10001C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2B0);
  }

  return result;
}

unint64_t sub_100007748()
{
  result = qword_10001C2B8;
  if (!qword_10001C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2B8);
  }

  return result;
}

unint64_t sub_1000077A4()
{
  result = qword_10001C2C0;
  if (!qword_10001C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2C0);
  }

  return result;
}

uint64_t sub_1000077F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C110 != -1)
  {
    swift_once();
  }

  v2 = sub_10000FCDC();
  v3 = sub_10000545C(v2, qword_10001C598);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000078E4(uint64_t a1)
{
  v2 = sub_100005624();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007934()
{
  result = qword_10001C2D8;
  if (!qword_10001C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2D8);
  }

  return result;
}

uint64_t sub_100007990(uint64_t a1)
{
  v2 = sub_100007748();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000079EC()
{
  result = qword_10001C2E0;
  if (!qword_10001C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2E0);
  }

  return result;
}

uint64_t sub_100007A4C(uint64_t a1)
{
  sub_10000FD9C();
}

unint64_t sub_100007B74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000087D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100007BA4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE100000000000000;
    v9 = 0x8000000100012020;
    if (v2 != 1)
    {
      v9 = 0x8000000100012040;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = 0xD000000000000014;
    }

    else
    {
      v11 = 47;
    }

    if (!v10)
    {
      v8 = v9;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEE0053544E454345;
    v4 = 0x525F574F4C4C4123;
    if (v2 != 5)
    {
      v4 = 0xD00000000000001BLL;
      v3 = 0x80000001000120B0;
    }

    v5 = 0x8000000100012060;
    v6 = 0xD000000000000011;
    if (v2 == 3)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x8000000100012080;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_100007CEC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 47;
    }
  }

  else
  {
    v2 = 0x525F574F4C4C4123;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001BLL;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100007DD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000087D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100007E34(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100007EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007FB4()
{
  for (i = 0; i != 7; ++i)
  {
    v3 = *(&off_100018BA8 + i + 32);
    if (((1 << v3) & 0xD) != 0)
    {
      v5 = objc_opt_self();
      v6 = [v5 currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if (v7)
      {
        v4 = [v5 currentDevice];
LABEL_9:
        v8 = v4;
        v9 = [v8 userInterfaceIdiom];

        if (v9 != 1)
        {
          continue;
        }
      }
    }

    else
    {
      if (((1 << v3) & 0x32) != 0)
      {
        v4 = [objc_opt_self() currentDevice];
        goto LABEL_9;
      }

      v1 = [objc_opt_self() currentDevice];
      v2 = [v1 userInterfaceIdiom];

      if (v2)
      {
        continue;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000BA18(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_10000BA18((v10 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    *(&_swiftEmptyArrayStorage[4] + v11) = v3;
  }

  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    sub_10000B9E8(0, v12, 0);
    v13 = _swiftEmptyArrayStorage[2];
    v14 = 32;
    do
    {
      v15 = *(_swiftEmptyArrayStorage + v14);
      v16 = _swiftEmptyArrayStorage[3];
      if (v13 >= v16 >> 1)
      {
        sub_10000B9E8((v16 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *(&_swiftEmptyArrayStorage[4] + v13) = v15;
      ++v14;
      ++v13;
      --v12;
    }

    while (v12);
  }

  v17 = *(v19 + 8);

  return v17(_swiftEmptyArrayStorage);
}

uint64_t sub_100008274()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (1)
    {
      v7 = *v3++;
      v6 = v7;
      v8 = 1 << v7;
      if (((1 << v7) & 0xD) != 0)
      {
        v10 = objc_opt_self();
        v11 = [v10 currentDevice];
        v12 = [v11 userInterfaceIdiom];

        if (!v12)
        {
          goto LABEL_11;
        }

        v9 = [v10 currentDevice];
LABEL_10:
        v13 = v9;
        v14 = [v13 userInterfaceIdiom];

        if (v14 == 1)
        {
          goto LABEL_11;
        }

LABEL_4:
        if (!--v2)
        {
          break;
        }
      }

      else
      {
        if ((v8 & 0x32) != 0)
        {
          v9 = [objc_opt_self() currentDevice];
          goto LABEL_10;
        }

        v4 = [objc_opt_self() currentDevice];
        v5 = [v4 userInterfaceIdiom];

        if (v5)
        {
          goto LABEL_4;
        }

LABEL_11:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000BA18(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_10000BA18((v15 > 1), v16 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v16 + 1;
        *(&_swiftEmptyArrayStorage[4] + v16) = v6;
        if (!--v2)
        {
          break;
        }
      }
    }
  }

  v17 = _swiftEmptyArrayStorage[2];
  if (v17)
  {
    sub_10000B9E8(0, v17, 0);
    v18 = _swiftEmptyArrayStorage[2];
    v19 = 32;
    do
    {
      v20 = *(_swiftEmptyArrayStorage + v19);
      v21 = _swiftEmptyArrayStorage[3];
      if (v18 >= v21 >> 1)
      {
        sub_10000B9E8((v21 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      *(&_swiftEmptyArrayStorage[4] + v18) = v20;
      ++v19;
      ++v18;
      --v17;
    }

    while (v17);
  }

  v22 = *(v24 + 8);

  return v22(_swiftEmptyArrayStorage);
}

uint64_t sub_100008534()
{
  sub_10000B9E8(0, 7, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_10000B9E8((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 <= v4)
  {
    sub_10000B9E8((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = v2 + 3;
  if (v3 <= v5)
  {
    sub_10000B9E8((v1 > 1), v2 + 3, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v7 = v2 + 4;
  if (v3 <= v6)
  {
    sub_10000B9E8((v1 > 1), v2 + 4, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v7;
  *(&_swiftEmptyArrayStorage[4] + v6) = 3;
  v8 = v2 + 5;
  if (v3 <= v7)
  {
    sub_10000B9E8((v1 > 1), v2 + 5, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v8;
  *(&_swiftEmptyArrayStorage[4] + v7) = 4;
  v9 = v2 + 6;
  if (v3 <= v8)
  {
    sub_10000B9E8((v1 > 1), v2 + 6, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v9;
  *(&_swiftEmptyArrayStorage[4] + v8) = 5;
  if (v3 <= v9)
  {
    sub_10000B9E8((v1 > 1), v2 + 7, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 7;
  *(&_swiftEmptyArrayStorage[4] + v9) = 6;
  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_1000087D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018BD0;
  v6._object = a2;
  v4 = sub_10000FDAC(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100008820()
{
  result = qword_10001C2F8;
  if (!qword_10001C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2F8);
  }

  return result;
}

uint64_t sub_10000888C(uint64_t a1)
{
  v2 = sub_1000089DC();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100008934();
  sub_10000FD6C();
  return 0;
}

unint64_t sub_100008934()
{
  result = qword_10001C310;
  if (!qword_10001C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C310);
  }

  return result;
}

unint64_t sub_1000089DC()
{
  result = qword_10001C318;
  if (!qword_10001C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C318);
  }

  return result;
}

unint64_t sub_100008A44()
{
  result = qword_10001C330;
  if (!qword_10001C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C330);
  }

  return result;
}

unint64_t sub_100008A9C()
{
  result = qword_10001C338;
  if (!qword_10001C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C338);
  }

  return result;
}

unint64_t sub_100008AF4()
{
  result = qword_10001C340;
  if (!qword_10001C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C340);
  }

  return result;
}

uint64_t sub_100008B48()
{
  v0 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10000FD2C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10000FCDC();
  sub_100005494(v5, qword_10001C5B0);
  sub_10000545C(v5, qword_10001C5B0);
  sub_10000FD0C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000FCCC();
}

uint64_t sub_100008CB8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = sub_10000FD1C();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000FD5C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000FD8C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100005414(&qword_10001C200, &unk_1000108D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = sub_10000FD2C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  switch(a1)
  {
    case 1:
    case 2:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_10000FBDC();
      v29 = sub_10000FBEC();
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
      return sub_10000FC0C();
    case 3:
      v36 = v17;
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_10000FBDC();
      v27 = sub_10000FBEC();
      (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v35 = v19;
      *(swift_allocObject() + 16) = xmmword_100010FF0;
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v38, enum case for LocalizedStringResource.BundleDescription.main(_:), v37);
      sub_10000FD3C();
      return sub_10000FBFC();
    case 4:
    case 8:
    case 9:
    case 10:
    case 12:
    case 15:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_10000FBDC();
      v33 = sub_10000FBEC();
      (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v38, enum case for LocalizedStringResource.BundleDescription.main(_:), v37);
      goto LABEL_14;
    case 5:
    case 6:
    case 14:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_10000FBDC();
      v32 = sub_10000FBEC();
      (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v38, enum case for LocalizedStringResource.BundleDescription.main(_:), v37);
      sub_10000FD3C();
      return sub_10000FBFC();
    case 7:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_10000FBDC();
      v28 = sub_10000FBEC();
      (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      *(swift_allocObject() + 16) = xmmword_100010FD0;
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD0C();
      return sub_10000FC0C();
    case 11:
      v36 = v17;
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_10000FBDC();
      v22 = sub_10000FBEC();
      (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v35 = v19;
      *(swift_allocObject() + 16) = xmmword_1000102B0;
      v34 = v9;
      sub_10000FD7C();
      sub_10000FD4C();
      v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v24 = *(v3 + 104);
      v25 = v37;
      v26 = v38;
      v24(v38, enum case for LocalizedStringResource.BundleDescription.main(_:), v37);
      sub_10000FD3C();
      sub_10000FD7C();
      sub_10000FD4C();
      v24(v26, v23, v25);
      sub_10000FD3C();
      return sub_10000FBFC();
    case 13:
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_10000FBDC();
      v31 = sub_10000FBEC();
      (*(*(v31 - 8) + 56))(v9, 0, 1, v31);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      *(swift_allocObject() + 16) = xmmword_1000102B0;
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v38, enum case for LocalizedStringResource.BundleDescription.main(_:), v37);
      sub_10000FD3C();
      return sub_10000FBFC();
    case 16:
      v36 = v17;
      sub_10000FD0C();
      sub_10000FD0C();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_10000FBDC();
      v21 = sub_10000FBEC();
      (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v35 = v19;
      *(swift_allocObject() + 16) = xmmword_100010FE0;
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v38, enum case for LocalizedStringResource.BundleDescription.main(_:), v37);
      goto LABEL_14;
    default:
      v36 = v17;
      sub_10000FD0C();
      (*(v14 + 56))(v12, 1, 1, v13);
      sub_10000FBDC();
      v20 = sub_10000FBEC();
      (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
      sub_100005414(&qword_10001C210, &qword_1000108E0);
      v35 = v19;
      *(swift_allocObject() + 16) = xmmword_100010FE0;
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD0C();
      sub_10000FD7C();
      sub_10000FD4C();
      (*(v3 + 104))(v38, enum case for LocalizedStringResource.BundleDescription.main(_:), v37);
LABEL_14:
      sub_10000FD3C();
      return sub_10000FBFC();
  }
}

uint64_t sub_10000A708(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000556C;

  return sub_10000BEE0(a1);
}

uint64_t sub_10000A7B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005550;

  return sub_10000BB94();
}

unint64_t sub_10000A858()
{
  result = qword_10001C348;
  if (!qword_10001C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C348);
  }

  return result;
}

uint64_t sub_10000A8AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003760;

  return sub_10000C230();
}

unint64_t sub_10000A954()
{
  result = qword_10001C350;
  if (!qword_10001C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C350);
  }

  return result;
}

unint64_t sub_10000A9AC()
{
  result = qword_10001C358;
  if (!qword_10001C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C358);
  }

  return result;
}

unint64_t sub_10000AA04()
{
  result = qword_10001C360;
  if (!qword_10001C360)
  {
    sub_1000039AC(&qword_10001C368, qword_1000110B8);
    sub_10000A9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C360);
  }

  return result;
}

uint64_t sub_10000AA88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000A858();
  *v5 = v2;
  v5[1] = sub_100003AA8;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10000AB40()
{
  result = qword_10001C370;
  if (!qword_10001C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C370);
  }

  return result;
}

uint64_t sub_10000AB94(uint64_t a1)
{
  v1 = sub_100005414(&qword_10001C3F0, &qword_1000115E0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100005414(&qword_10001C3F8, &qword_1000115E8);
  __chkstk_darwin(v5);
  sub_100008AF4();
  sub_10000FC8C();
  v8._object = 0x8000000100014E80;
  v8._countAndFlagsBits = 0xD000000000000030;
  sub_10000FC7C(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_10000FC6C();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_10000FC7C(v9);
  return sub_10000FC9C();
}

uint64_t sub_10000AD58()
{
  v0 = qword_10001C320;

  return v0;
}

unint64_t sub_10000AD94()
{
  result = qword_10001C378;
  if (!qword_10001C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C378);
  }

  return result;
}

unint64_t sub_10000ADEC()
{
  result = qword_10001C380;
  if (!qword_10001C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C380);
  }

  return result;
}

unint64_t sub_10000AE44()
{
  result = qword_10001C388;
  if (!qword_10001C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C388);
  }

  return result;
}

unint64_t sub_10000AE9C()
{
  result = qword_10001C390;
  if (!qword_10001C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C390);
  }

  return result;
}

uint64_t sub_10000AEF0(uint64_t a1)
{
  sub_10000C3A4();
  v2 = sub_10000FC3C();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10000AF60()
{
  result = qword_10001C398;
  if (!qword_10001C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C398);
  }

  return result;
}

unint64_t sub_10000AFB4()
{
  result = qword_10001C3A0;
  if (!qword_10001C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3A0);
  }

  return result;
}

unint64_t sub_10000B00C()
{
  result = qword_10001C3A8;
  if (!qword_10001C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3A8);
  }

  return result;
}

unint64_t sub_10000B068()
{
  result = qword_10001C3B0;
  if (!qword_10001C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3B0);
  }

  return result;
}

uint64_t sub_10000B0BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C118 != -1)
  {
    swift_once();
  }

  v2 = sub_10000FCDC();
  v3 = sub_10000545C(v2, qword_10001C5B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000B1A8(uint64_t a1)
{
  v2 = sub_100008AF4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000B1F8()
{
  result = qword_10001C3C8;
  if (!qword_10001C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3C8);
  }

  return result;
}

uint64_t sub_10000B254(uint64_t a1)
{
  v2 = sub_10000B00C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000B2A0(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      result = 0x4E54484749524223;
      break;
    case 2:
      result = 0x425F455449485723;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000027;
      break;
    case 7:
      result = 0x5F44495551494C2FLL;
      break;
    case 8:
      result = 0x434F4C4F5455412FLL;
      break;
    case 9:
      result = 0x545F455349415223;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x49535F545845542FLL;
      break;
    case 12:
      result = 0x45545F444C4F4223;
      break;
    case 13:
      result = 0x5946494E47414D2FLL;
      break;
    case 14:
      result = 0x5F535941574C412FLL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000B504(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000B2A0(*a1);
  v5 = v4;
  if (v3 == sub_10000B2A0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000FDBC();
  }

  return v8 & 1;
}

unint64_t sub_10000B590()
{
  result = qword_10001C3D0;
  if (!qword_10001C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3D0);
  }

  return result;
}

Swift::Int sub_10000B5E4()
{
  v1 = *v0;
  sub_10000FDDC();
  sub_10000B2A0(v1);
  sub_10000FD9C();

  return sub_10000FDEC();
}

uint64_t sub_10000B648(uint64_t a1)
{
  sub_10000B2A0(*v1);
  sub_10000FD9C();
}

Swift::Int sub_10000B69C(uint64_t a1)
{
  v2 = *v1;
  sub_10000FDDC();
  sub_10000B2A0(v2);
  sub_10000FD9C();

  return sub_10000FDEC();
}

unint64_t sub_10000B6FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000C350(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10000B72C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000B2A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10000B7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000C350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000B824(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10000B8B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_10000B988(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C428, &unk_100011630);
  *v3 = result;
  return result;
}

char *sub_10000B9B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C420, &qword_100011628);
  *v3 = result;
  return result;
}

char *sub_10000B9E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C410, &qword_100011618);
  *v3 = result;
  return result;
}

char *sub_10000BA18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C418, &qword_100011620);
  *v3 = result;
  return result;
}

char *sub_10000BA48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C400, &qword_1000115F8);
  *v3 = result;
  return result;
}

char *sub_10000BA78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000BAA8(a1, a2, a3, *v3, &qword_10001C408, &qword_100011608);
  *v3 = result;
  return result;
}

char *sub_10000BAA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100005414(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

id sub_10000BBB0()
{
  for (i = 0; i != 17; ++i)
  {
    v4 = *(&off_100018C98 + i + 32);
    if (v4 <= 8)
    {
      if (*(&off_100018C98 + i + 32) > 2u)
      {
        if (v4 - 3 < 4)
        {
          result = MobileGestalt_get_current_device();
          if (!result)
          {
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            return result;
          }

          v6 = result;
          blueLightReductionSupported = MobileGestalt_get_blueLightReductionSupported();
LABEL_31:
          v9 = blueLightReductionSupported;

          if ((v9 & 1) == 0)
          {
            continue;
          }

          goto LABEL_32;
        }

        if (v4 != 7)
        {
          result = [objc_opt_self() sharedConnection];
          if (!result)
          {
            goto LABEL_45;
          }

          v6 = result;
          blueLightReductionSupported = [result isAutoLockEnabled];
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v4 < 2)
      {
        goto LABEL_32;
      }

      v8 = [objc_opt_self() supportsAdaptation];
LABEL_20:
      if ((v8 & 1) == 0)
      {
        continue;
      }

      goto LABEL_32;
    }

    if (*(&off_100018C98 + i + 32) <= 0xCu)
    {
      if (v4 - 11 < 2)
      {
        goto LABEL_32;
      }

      if (v4 != 9)
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
          goto LABEL_44;
        }

        v6 = result;
        blueLightReductionSupported = MobileGestalt_get_hallEffectSensorCapability();
        goto LABEL_31;
      }

      v8 = [objc_opt_self() isWakeGestureAvailable];
      goto LABEL_20;
    }

    if (*(&off_100018C98 + i + 32) <= 0xEu)
    {
      if (v4 == 13)
      {
        v6 = [objc_opt_self() currentDevice];
        blueLightReductionSupported = [v6 sf_deviceSupportsDisplayZoom];
      }

      else
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
          goto LABEL_43;
        }

        v6 = result;
        blueLightReductionSupported = MobileGestalt_get_deviceSupportsAlwaysOnTime();
      }

      goto LABEL_31;
    }

    if (v4 != 15)
    {
      continue;
    }

LABEL_32:
    v16 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000BA78(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (v3 >= v2 >> 1)
    {
      sub_10000BA78((v2 > 1), v3 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v3 + 1;
    *(&_swiftEmptyArrayStorage[4] + v3) = v4;
  }

  v10 = _swiftEmptyArrayStorage[2];
  if (v10)
  {
    sub_10000BA48(0, v10, 0);
    v11 = _swiftEmptyArrayStorage[2];
    v12 = 32;
    do
    {
      v13 = *(_swiftEmptyArrayStorage + v12);
      v14 = _swiftEmptyArrayStorage[3];
      if (v11 >= v14 >> 1)
      {
        sub_10000BA48((v14 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *(&_swiftEmptyArrayStorage[4] + v11) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  v15 = *(v0 + 8);

  return v15(_swiftEmptyArrayStorage);
}

id sub_10000BF00()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_35:
    v13 = _swiftEmptyArrayStorage[2];
    if (v13)
    {
      sub_10000BA48(0, v13, 0);
      v14 = _swiftEmptyArrayStorage[2];
      v15 = 32;
      do
      {
        v16 = *(_swiftEmptyArrayStorage + v15);
        v17 = _swiftEmptyArrayStorage[3];
        if (v14 >= v17 >> 1)
        {
          sub_10000BA48((v17 > 1), v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        *(&_swiftEmptyArrayStorage[4] + v14) = v16;
        ++v15;
        ++v14;
        --v13;
      }

      while (v13);
    }

    v18 = *(v0 + 8);

    return v18(_swiftEmptyArrayStorage);
  }

  v3 = (v1 + 32);
  while (1)
  {
    v7 = *v3++;
    v6 = v7;
    if (v7 <= 8)
    {
      break;
    }

    if (v6 > 12)
    {
      if (v6 > 14)
      {
        if (v6 == 15)
        {
          goto LABEL_33;
        }

        goto LABEL_6;
      }

      if (v6 == 13)
      {
        v9 = [objc_opt_self() currentDevice];
        deviceSupportsAlwaysOnTime = [v9 sf_deviceSupportsDisplayZoom];
      }

      else
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
          goto LABEL_44;
        }

        v9 = result;
        deviceSupportsAlwaysOnTime = MobileGestalt_get_deviceSupportsAlwaysOnTime();
      }
    }

    else
    {
      if ((v6 - 11) < 2)
      {
        goto LABEL_33;
      }

      if (v6 == 9)
      {
        v11 = [objc_opt_self() isWakeGestureAvailable];
        goto LABEL_21;
      }

      result = MobileGestalt_get_current_device();
      if (!result)
      {
        goto LABEL_45;
      }

      v9 = result;
      deviceSupportsAlwaysOnTime = MobileGestalt_get_hallEffectSensorCapability();
    }

LABEL_32:
    v12 = deviceSupportsAlwaysOnTime;

    if (v12)
    {
LABEL_33:
      v19 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000BA78(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10000BA78((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      *(&_swiftEmptyArrayStorage[4] + v5) = v6;
    }

LABEL_6:
    if (!--v2)
    {
      goto LABEL_35;
    }
  }

  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      goto LABEL_33;
    }

    v11 = [objc_opt_self() supportsAdaptation];
LABEL_21:
    if (v11)
    {
      goto LABEL_33;
    }

    goto LABEL_6;
  }

  if ((v6 - 3) >= 4)
  {
    if (v6 == 7)
    {
      goto LABEL_33;
    }

    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      goto LABEL_46;
    }

    v9 = result;
    deviceSupportsAlwaysOnTime = [result isAutoLockEnabled];
    goto LABEL_32;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v9 = result;
    deviceSupportsAlwaysOnTime = MobileGestalt_get_blueLightReductionSupported();
    goto LABEL_32;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_10000C24C()
{
  sub_10000BA48(0, 17, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100018C98 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10000BA48((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 17);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_10000C350(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000FDCC();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10000C3A4()
{
  result = qword_10001C3E8;
  if (!qword_10001C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3E8);
  }

  return result;
}

uint64_t sub_10000C414(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100005414(&qword_10001C498, &qword_100011878);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100005414(&qword_10001C4A0, &qword_100011880);
  __chkstk_darwin(v4);
  sub_10000DEB4();
  sub_10000FB7C();
  v14._object = 0xE900000000000020;
  v14._countAndFlagsBits = 0x656874206E65704FLL;
  sub_10000FB6C(v14);
  swift_getKeyPath();
  sub_10000A9AC();
  sub_10000FACC();

  sub_10000FB5C();

  v15._countAndFlagsBits = 0x676E697474655320;
  v15._object = 0xE900000000000073;
  sub_10000FB6C(v15);
  sub_10000FB8C();
  v12 = sub_10000FAEC();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_10000FB7C();
  v16._countAndFlagsBits = 0x742065676E616843;
  v16._object = 0xEB00000000206568;
  sub_10000FB6C(v16);
  swift_getKeyPath();
  sub_10000FACC();

  sub_10000FB5C();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_10000FB6C(v17);
  sub_10000FB8C();
  v7 = sub_10000FAEC();
  v5(v3, v6);
  sub_100005414(&qword_10001C4A8, qword_100011888);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100010FF0;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_10000FADC();

  return v9;
}

uint64_t sub_10000C7B8()
{
  v12 = sub_10000FB0C();
  v0 = sub_10000FB0C();
  v1 = sub_10000FB0C();
  v2 = sub_10000FB0C();
  v3 = sub_10000FB0C();
  v4 = sub_10000FB0C();
  v5 = sub_10000FB0C();
  v6 = sub_10000FB0C();
  v7 = sub_10000FB0C();
  v8 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100011640;
  *(v9 + 32) = v12;
  *(v9 + 40) = v0;
  *(v9 + 48) = v1;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v10 = sub_10000FAFC();

  return v10;
}

uint64_t sub_10000C9A8()
{
  v0 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000102B0;
  *(v1 + 32) = v0;
  v2 = sub_10000FAFC();

  return v2;
}

uint64_t sub_10000CA2C()
{
  v0 = sub_10000FBBC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_10000EE54();
  sub_10000DEB4();
  sub_10000FBCC();
  v4 = sub_10000FBAC();
  (*(v1 + 8))(v3, v0);
  sub_100005414(&qword_10001C448, &qword_1000117C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000102B0;
  *(v5 + 32) = v4;
  v6 = sub_10000FB9C();

  return v6;
}

uint64_t sub_10000CBC4(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100005414(&qword_10001C478, &qword_100011838);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100005414(&qword_10001C480, &qword_100011840);
  __chkstk_darwin(v4);
  sub_10000DE60();
  sub_10000FB7C();
  v14._object = 0xE900000000000020;
  v14._countAndFlagsBits = 0x656874206E65704FLL;
  sub_10000FB6C(v14);
  swift_getKeyPath();
  sub_1000038D0();
  sub_10000FACC();

  sub_10000FB5C();

  v15._countAndFlagsBits = 0x676E697474655320;
  v15._object = 0xE900000000000073;
  sub_10000FB6C(v15);
  sub_10000FB8C();
  v12 = sub_10000FAEC();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_10000FB7C();
  v16._countAndFlagsBits = 0x742065676E616843;
  v16._object = 0xEB00000000206568;
  sub_10000FB6C(v16);
  swift_getKeyPath();
  sub_10000FACC();

  sub_10000FB5C();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_10000FB6C(v17);
  sub_10000FB8C();
  v7 = sub_10000FAEC();
  v5(v3, v6);
  sub_100005414(&qword_10001C488, &qword_100011848);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100010FF0;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_10000FADC();

  return v9;
}

uint64_t sub_10000CF68()
{
  v0 = sub_10000FB0C();
  v1 = sub_10000FB0C();
  v2 = sub_10000FB0C();
  v3 = sub_10000FB0C();
  v4 = sub_10000FB0C();
  v5 = sub_10000FB0C();
  v6 = sub_10000FB0C();
  v7 = sub_10000FB0C();
  v8 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100011650;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = sub_10000FAFC();

  return v10;
}

uint64_t sub_10000D120()
{
  v0 = sub_10000FB0C();
  v1 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100010FF0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_10000FAFC();

  return v3;
}

uint64_t sub_10000D1CC()
{
  v0 = sub_10000FBBC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_10000F150();
  sub_10000DE60();
  sub_10000FBCC();
  v4 = sub_10000FBAC();
  (*(v1 + 8))(v3, v0);
  sub_100005414(&qword_10001C448, &qword_1000117C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000102B0;
  *(v5 + 32) = v4;
  v6 = sub_10000FB9C();

  return v6;
}

uint64_t sub_10000D368(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100005414(&qword_10001C458, &qword_1000117F8);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100005414(&qword_10001C460, &qword_100011800);
  __chkstk_darwin(v4);
  sub_10000DD98();
  sub_10000FB7C();
  v14._object = 0xE900000000000020;
  v14._countAndFlagsBits = 0x656874206E65704FLL;
  sub_10000FB6C(v14);
  swift_getKeyPath();
  sub_1000070AC();
  sub_10000FACC();

  sub_10000FB5C();

  v15._countAndFlagsBits = 0x676E697474655320;
  v15._object = 0xE900000000000073;
  sub_10000FB6C(v15);
  sub_10000FB8C();
  v12 = sub_10000FAEC();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_10000FB7C();
  v16._countAndFlagsBits = 0x742065676E616843;
  v16._object = 0xEB00000000206568;
  sub_10000FB6C(v16);
  swift_getKeyPath();
  sub_10000FACC();

  sub_10000FB5C();

  v17._countAndFlagsBits = 0x676E697474655320;
  v17._object = 0xE900000000000073;
  sub_10000FB6C(v17);
  sub_10000FB8C();
  v7 = sub_10000FAEC();
  v5(v3, v6);
  sub_100005414(&qword_10001C468, &qword_100011808);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100010FF0;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_10000FADC();

  return v9;
}

uint64_t sub_10000D70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_10000FB4C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_10000FACC();

  a4(v11);
  sub_10000FB3C();
  v12 = sub_10000FB2C();
  (*(v8 + 8))(v10, v7);
  sub_100005414(&qword_10001C450, &qword_1000117F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000102B0;
  *(v13 + 32) = v12;
  v14 = sub_10000FB1C();

  return v14;
}

uint64_t sub_10000D88C()
{
  v0 = sub_10000FB0C();
  v1 = sub_10000FB0C();
  v2 = sub_10000FB0C();
  v3 = sub_10000FB0C();
  v4 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100011660;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_10000FAFC();

  return v6;
}

uint64_t sub_10000D9AC()
{
  v0 = sub_10000FB0C();
  v1 = sub_10000FB0C();
  v2 = sub_10000FB0C();
  sub_100005414(&qword_10001C440, &qword_1000117B8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100010FE0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_10000FAFC();

  return v4;
}

uint64_t sub_10000DA8C()
{
  v0 = sub_10000FBBC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_10000F44C();
  sub_10000DD98();
  sub_10000FBCC();
  v4 = sub_10000FBAC();
  (*(v1 + 8))(v3, v0);
  sub_100005414(&qword_10001C448, &qword_1000117C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000102B0;
  *(v5 + 32) = v4;
  v6 = sub_10000FB9C();

  return v6;
}

uint64_t sub_10000DC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = sub_10000FABC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v8);
  sub_10000FAAC();
  v11 = sub_10000FA9C();
  (*(v7 + 8))(v10, v6);
  sub_100005414(&qword_10001C438, &qword_1000117B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000102B0;
  *(v12 + 32) = v11;
  v13 = sub_10000FA8C();

  return v13;
}

unint64_t sub_10000DD98()
{
  result = qword_10001C430;
  if (!qword_10001C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C430);
  }

  return result;
}

void *sub_10000DDEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000FA5C();
  *a1 = v3;
  return result;
}

unint64_t sub_10000DE60()
{
  result = qword_10001C470;
  if (!qword_10001C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C470);
  }

  return result;
}

unint64_t sub_10000DEB4()
{
  result = qword_10001C490;
  if (!qword_10001C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C490);
  }

  return result;
}

unint64_t sub_10000DF20()
{
  result = qword_10001C4E0;
  if (!qword_10001C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4E0);
  }

  return result;
}

uint64_t sub_10000DFA8()
{
  v0 = sub_10000FD2C();
  sub_100005494(v0, qword_10001C5C8);
  sub_10000545C(v0, qword_10001C5C8);
  return sub_10000FD0C();
}

uint64_t (*sub_10000E00C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10000FA4C();
  return sub_10000F964;
}

uint64_t sub_10000E0B0()
{
  v0 = qword_10001C4B0;

  return v0;
}

unint64_t sub_10000E0EC()
{
  result = qword_10001C4E8;
  if (!qword_10001C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4E8);
  }

  return result;
}

unint64_t sub_10000E144()
{
  result = qword_10001C4F0;
  if (!qword_10001C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4F0);
  }

  return result;
}

unint64_t sub_10000E198()
{
  result = qword_10001C4F8;
  if (!qword_10001C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4F8);
  }

  return result;
}

uint64_t sub_10000E238(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000F898();
  v6 = sub_10000F8EC();
  v7 = sub_10000C3A4();
  *v4 = v2;
  v4[1] = sub_10000F944;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000E304@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10000EE54();
  *a2 = result;
  return result;
}

uint64_t sub_10000E32C(uint64_t a1)
{
  v2 = sub_10000DEB4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000E36C()
{
  result = qword_10001C500;
  if (!qword_10001C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C500);
  }

  return result;
}

uint64_t sub_10000E3C4()
{
  v0 = sub_10000FD2C();
  sub_100005494(v0, qword_10001C5E0);
  sub_10000545C(v0, qword_10001C5E0);
  return sub_10000FD0C();
}

void *sub_10000E428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000FA5C();
  *a1 = v3;
  return result;
}

uint64_t (*sub_10000E49C(uint64_t *a1))()
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
  *(v2 + 32) = sub_10000FA4C();
  return sub_10000F964;
}

uint64_t sub_10000E544()
{
  v0 = qword_10001C4C0;

  return v0;
}

unint64_t sub_10000E584()
{
  result = qword_10001C508;
  if (!qword_10001C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C508);
  }

  return result;
}

unint64_t sub_10000E5DC()
{
  result = qword_10001C510;
  if (!qword_10001C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C510);
  }

  return result;
}

uint64_t sub_10000E680(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000F7F0();
  v6 = sub_10000F844();
  v7 = sub_1000054F8();
  *v4 = v2;
  v4[1] = sub_10000F944;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000E74C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10000F150();
  *a2 = result;
  return result;
}

uint64_t sub_10000E774(uint64_t a1)
{
  v2 = sub_10000DE60();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000E7B4()
{
  result = qword_10001C518;
  if (!qword_10001C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C518);
  }

  return result;
}

uint64_t sub_10000E80C()
{
  v0 = sub_10000FD2C();
  sub_100005494(v0, qword_10001C5F8);
  sub_10000545C(v0, qword_10001C5F8);
  return sub_10000FD0C();
}

uint64_t (*sub_10000E870(uint64_t *a1))()
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
  *(v2 + 32) = sub_10000FA4C();
  return sub_10000E8E4;
}

void sub_10000E8E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10000E960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v7, a2, v8);
}

uint64_t sub_10000E9D8()
{
  v0 = qword_10001C4D0;

  return v0;
}

unint64_t sub_10000EA14()
{
  result = qword_10001C520;
  if (!qword_10001C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C520);
  }

  return result;
}

unint64_t sub_10000EA6C()
{
  result = qword_10001C528;
  if (!qword_10001C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C528);
  }

  return result;
}

uint64_t sub_10000EB50@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_10000FD2C();
  v7 = sub_10000545C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_10000EBEC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000F748();
  v6 = sub_10000F79C();
  v7 = sub_100008820();
  *v4 = v2;
  v4[1] = sub_10000ECB8;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000ECB8()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_10000EDC0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10000F44C();
  *a2 = result;
  return result;
}

uint64_t sub_10000EDE8(uint64_t a1)
{
  v2 = sub_10000DD98();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000EE54()
{
  v17 = sub_10000FCAC();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005414(&qword_10001C530, "&;");
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10000FD2C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005414(&qword_10001C568, &qword_100011F18);
  sub_10000FD0C();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 17;
  v14 = sub_10000FA3C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100008AF4();
  return sub_10000FA7C();
}

uint64_t sub_10000F150()
{
  v17 = sub_10000FCAC();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005414(&qword_10001C530, "&;");
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10000FD2C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005414(&qword_10001C550, &qword_100011F10);
  sub_10000FD0C();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 14;
  v14 = sub_10000FA3C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100001AE0();
  return sub_10000FA7C();
}

uint64_t sub_10000F44C()
{
  v17 = sub_10000FCAC();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005414(&qword_10001C530, "&;");
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100005414(&qword_10001C208, &unk_1000115D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10000FD2C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005414(&qword_10001C538, &qword_100011F08);
  sub_10000FD0C();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 7;
  v14 = sub_10000FA3C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100005624();
  return sub_10000FA7C();
}

unint64_t sub_10000F748()
{
  result = qword_10001C540;
  if (!qword_10001C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C540);
  }

  return result;
}

unint64_t sub_10000F79C()
{
  result = qword_10001C548;
  if (!qword_10001C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C548);
  }

  return result;
}

unint64_t sub_10000F7F0()
{
  result = qword_10001C558;
  if (!qword_10001C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C558);
  }

  return result;
}

unint64_t sub_10000F844()
{
  result = qword_10001C560;
  if (!qword_10001C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C560);
  }

  return result;
}

unint64_t sub_10000F898()
{
  result = qword_10001C570;
  if (!qword_10001C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C570);
  }

  return result;
}

unint64_t sub_10000F8EC()
{
  result = qword_10001C578;
  if (!qword_10001C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C578);
  }

  return result;
}