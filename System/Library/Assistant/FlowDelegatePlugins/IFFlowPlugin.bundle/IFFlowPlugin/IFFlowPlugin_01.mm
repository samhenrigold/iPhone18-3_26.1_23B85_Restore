uint64_t sub_21308()
{
  v0 = sub_5708(&qword_818E0, &qword_70480);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_6D1EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20740(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2164C(v2);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v7 = sub_6D04C();
    sub_5CE4(v7, qword_839A0);
    v8 = sub_6D03C();
    v9 = sub_6D44C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "[SearchEntityDataExtrator] Intermediate query result does not container SearchAnswerEntity", v10, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = sub_20C88();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 data];
      v14 = sub_6AE1C();

      (*(v4 + 8))(v6, v3);
      return v14;
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v16 = sub_6D04C();
    sub_5CE4(v16, qword_839A0);
    v17 = sub_6D03C();
    v18 = sub_6D44C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "[SearchEntityDataExtrator] SearchAnswerEntity does not contain pommesContextFile", v19, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t sub_2164C(uint64_t a1)
{
  v2 = sub_5708(&qword_818E0, &qword_70480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for FeatureEnablementProvider.Key(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FeatureEnablementProvider.Key(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_217B4()
{
  result = qword_818F8;
  if (!qword_818F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_818F8);
  }

  return result;
}

Swift::Int sub_21808()
{
  sub_6D6BC();
  sub_6D6CC(0);
  return sub_6D6DC();
}

Swift::Int sub_21874()
{
  sub_6D6BC();
  sub_6D6CC(0);
  return sub_6D6DC();
}

uint64_t sub_218DC()
{
  sub_5708(&qword_819C8, &qword_70718);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  return v1;
}

uint64_t sub_21980()
{
  v1 = sub_6BE0C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  sub_5708(&qword_819C8, &qword_70718);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v0;

  sub_6BC7C();

  sub_6BE1C();

  (*(v2 + 104))(v5, enum case for NetworkAvailability.Status.unavailable(_:), v1);
  v8 = sub_6BDFC();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v9(v7, v1);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v10 = sub_6D04C();
  sub_5CE4(v10, qword_839A0);
  v11 = sub_6D03C();
  v12 = sub_6D45C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v8 & 1;
    _os_log_impl(&dword_0, v11, v12, "Network Status Provider: isOffline=%{BOOL}d", v13, 8u);
  }

  return v8 & 1;
}

uint64_t sub_21C08()
{
  sub_5708(&qword_819C8, &qword_70718);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  v0 = sub_6BDEC();

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  v2 = sub_6D03C();
  v3 = sub_6D45C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v0 & 1;
    _os_log_impl(&dword_0, v2, v3, "Network Status Provider: isInAirPlaneMode=%{BOOL}d", v4, 8u);
  }

  return v0 & 1;
}

uint64_t sub_21D84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_21DA4, 0, 0);
}

uint64_t sub_21DA4()
{
  v16 = v0;
  v1 = sub_21980();
  v2 = v0[3];
  if (v1)
  {
    v3 = sub_21C08();
    *(v2 + 96) = 1;
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_21FF8;

    return sub_2637C(v2 + 16, v2 + 56, v3 & 1);
  }

  else
  {
    *(v2 + 96) = 0;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v6 = sub_6D04C();
    sub_5CE4(v6, qword_839A0);

    v7 = sub_6D03C();
    v8 = sub_6D45C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_6B06C();
      v13 = sub_1076C(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "ExitValue for Network Availability guardflow is set as %s", v9, 0xCu);
      sub_9964(v10);
    }

    sub_6B49C();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_21FF8()
{

  return _swift_task_switch(sub_220F4, 0, 0);
}

uint64_t sub_220F4()
{
  v12 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);

  v2 = sub_6D03C();
  v3 = sub_6D45C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = sub_6B06C();
    v8 = sub_1076C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "ExitValue for Network Availability guardflow is set as %s", v4, 0xCu);
    sub_9964(v5);
  }

  sub_6B49C();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22290()
{
  sub_9964((v0 + 16));
  sub_9964((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t (*sub_22344(uint64_t *a1))()
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
  *(v2 + 32) = sub_6BC9C();
  return sub_223D0;
}

void sub_223D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_22434(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E728;

  return sub_21D84(a1);
}

uint64_t sub_22548(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NetworkAvailabilityGuardFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22588@<X0>(void *a2@<X8>)
{
  sub_5708(&qword_819C8, &qword_70718);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  *a2 = v4;
  return result;
}

uint64_t sub_22690@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_226C0()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v0 = sub_6D04C();
  sub_5CE4(v0, qword_839A0);
  v1 = sub_6D03C();
  v2 = sub_6D46C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1076C(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v6);
    _os_log_impl(&dword_0, v1, v2, "%s Execution should never reach here since we are providing implementation of onAsync function", v3, 0xCu);
    sub_9964(v4);
  }

  return 0;
}

uint64_t sub_22800()
{
  result = sub_6B7DC();
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_10DDC(0x636E617265747475, 0xE900000000000065), (v3 & 1) != 0))
    {
      sub_98EC(*(v1 + 56) + 32 * v2, v5);

      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_228B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6D12C();
  v13[0] = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6B7DC();
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 16) && (v7 = sub_10DDC(0xD000000000000013, 0x800000000006EFB0), (v8 & 1) != 0))
    {
      sub_98EC(*(v6 + 56) + 32 * v7, v14);

      if (swift_dynamicCast())
      {
        v10 = v13[2];
        v9 = v13[3];
        sub_6AD5C();
        swift_allocObject();
        sub_6AD4C();
        sub_25EE8();
        sub_6AD3C();

        sub_1FCB4(v10, v9);
        (*(v13[0] + 32))(a1, v4, v2);
        return (*(v13[0] + 56))(a1, 0, 1, v2);
      }
    }

    else
    {
    }

    return (*(v13[0] + 56))(a1, 1, 1, v2);
  }

  else
  {
    v11 = *(v13[0] + 56);

    return v11(a1, 1, 1, v2);
  }
}

uint64_t sub_22C60()
{
  v0 = sub_6B7EC();
  v36 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6B82C();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5708(&qword_819D0, &qword_70DB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_6B3DC();
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6B7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B78C();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for Parse.directInvocation(_:))
  {
    (*(v13 + 96))(v15, v12);
    v17 = v36;
    (*(v36 + 32))(v2, v15, v0);
    v18 = sub_6B7CC();
    v20 = v19;
    v21 = sub_6B25C();
    v22 = [v21 identifier];

    v23 = sub_6D2CC();
    v25 = v24;

    if (v18 == v23 && v20 == v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_6D63C();
    }

    (*(v17 + 8))(v2, v0);
  }

  else if (v16 == enum case for Parse.uso(_:))
  {
    (*(v13 + 96))(v15, v12);
    v28 = v34;
    v27 = v35;
    (*(v34 + 32))(v5, v15, v35);
    v26 = sub_249DC();
    (*(v28 + 8))(v5, v27);
  }

  else
  {
    if (v16 == enum case for Parse.nlRouter(_:))
    {
      (*(v13 + 96))(v15, v12);
      v29 = v33;
      (*(v33 + 32))(v11, v15, v9);
      sub_6B39C();
      v31 = v34;
      v30 = v35;
      if ((*(v34 + 48))(v8, 1, v35) != 1)
      {
        v26 = sub_249DC();
        (*(v29 + 8))(v11, v9);
        (*(v31 + 8))(v8, v30);
        return v26 & 1;
      }

      (*(v29 + 8))(v11, v9);
      sub_5E20(v8, &qword_819D0, &qword_70DB0);
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    v26 = 0;
  }

  return v26 & 1;
}

unint64_t sub_23170()
{
  v0 = sub_6B7EC();
  v43 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6B82C();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5708(&qword_819D0, &qword_70DB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_6B3DC();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6B7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B78C();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 != enum case for Parse.directInvocation(_:))
  {
    if (v16 == enum case for Parse.uso(_:))
    {
      (*(v13 + 96))(v15, v12);
      v24 = v41;
      v23 = v42;
      (*(v41 + 32))(v5, v15, v42);
      v25 = sub_24DEC();
      (*(v24 + 8))(v5, v23);
      return v25;
    }

    if (v16 == enum case for Parse.nlRouter(_:))
    {
      (*(v13 + 96))(v15, v12);
      v35 = v40;
      (*(v40 + 32))(v11, v15, v9);
      sub_6B39C();
      v37 = v41;
      v36 = v42;
      if ((*(v41 + 48))(v8, 1, v42) != 1)
      {
        v38 = sub_24DEC();
        (*(v35 + 8))(v11, v9);
        (*(v37 + 8))(v8, v36);
        return v38;
      }

      (*(v35 + 8))(v11, v9);
      sub_5E20(v8, &qword_819D0, &qword_70DB0);
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }

    return 0;
  }

  (*(v13 + 96))(v15, v12);
  v17 = v43;
  (*(v43 + 32))(v2, v15, v0);
  v18 = sub_6B7CC();
  v20 = v19;
  v22 = v2;
  if (v18 == sub_6B24C() && v20 == v21)
  {
  }

  else
  {
    v27 = sub_6D63C();

    if ((v27 & 1) == 0)
    {
LABEL_20:
      (*(v17 + 8))(v22, v0);
      return 0;
    }
  }

  v28 = sub_6B7DC();
  if (!v28)
  {
    goto LABEL_20;
  }

  v29 = v28;
  v30 = sub_6B23C();
  if (!*(v29 + 16))
  {

    goto LABEL_19;
  }

  v32 = sub_10DDC(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_98EC(*(v29 + 56) + 32 * v32, v45);
  (*(v17 + 8))(v22, v0);

  if (swift_dynamicCast())
  {
    return v44;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v53 = a1;
  v49 = a3;
  v3 = sub_6BA6C();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = __chkstk_darwin(v3);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v43 - v6;
  v56 = sub_6B9AC();
  v7 = *(v56 - 8);
  v8 = __chkstk_darwin(v56);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v43 - v11;
  v12 = sub_6B8BC();
  __chkstk_darwin(v12 - 8);
  v13 = sub_6B9EC();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v52 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v43 - v17;
  v19 = sub_5708(&qword_818C0, &qword_70468);
  __chkstk_darwin(v19 - 8);
  v21 = &v43 - v20;
  sub_6BC0C();
  swift_allocObject();
  v22 = sub_6BBFC();
  sub_6BAEC();
  sub_5708(&qword_81548, &qword_70088);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_6FFF0;
  *(v23 + 32) = v22;
  v24 = sub_6BB3C();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);

  v25 = sub_6BB1C();

  sub_5E20(v21, &qword_818C0, &qword_70468);
  sub_6B9DC();
  v26 = v55;
  sub_6BACC();
  if (v26)
  {
    (*(v14 + 8))(v18, v13);
  }

  else
  {
    v46 = v25;
    v54 = v22;
    v55 = v10;
    sub_6B9CC();
    v28 = v57;
    sub_6B99C();
    (*(v14 + 16))(v52, v18, v13);
    result = sub_6B95C();
    v29 = v53;
    if (v53 < 1)
    {
LABEL_14:
      __break(1u);
    }

    else
    {
      v30 = v28;
      v43 = 0;
      v44 = v18;
      v45 = v14;
      v52 = v13;
      v31 = *(v7 + 16);
      v32 = _swiftEmptyArrayStorage;
      v33 = 1;
      v34 = v55;
      v35 = v56;
      while (1)
      {
        v31(v34, v30, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_2B7E0(0, v32[2] + 1, 1, v32);
        }

        v37 = v32[2];
        v36 = v32[3];
        if (v37 >= v36 >> 1)
        {
          v32 = sub_2B7E0((v36 > 1), v37 + 1, 1, v32);
        }

        v32[2] = v37 + 1;
        v38 = v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v37;
        v34 = v55;
        v35 = v56;
        result = (*(v7 + 32))(v38, v55, v56);
        if (v29 == v33)
        {
          break;
        }

        v39 = __OFADD__(v33++, 1);
        v30 = v57;
        if (v39)
        {
          __break(1u);
          goto LABEL_14;
        }
      }

      v40 = v48;
      sub_6BA5C();
      sub_6BA4C();
      sub_6BA2C();
      v42 = v50;
      v41 = v51;
      (*(v50 + 16))(v47, v40, v51);
      sub_6B9FC();

      (*(v42 + 8))(v40, v41);
      (*(v7 + 8))(v57, v35);
      return (*(v45 + 8))(v44, v52);
    }
  }

  return result;
}

uint64_t sub_23D20@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_6B7EC();
  v52 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6B82C();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5708(&qword_819D0, &qword_70DB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_6B3DC();
  v49 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6B7FC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B78C();
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == enum case for Parse.directInvocation(_:))
  {
    (*(v14 + 96))(v16, v13);
    v18 = v52;
    (*(v52 + 32))(v3, v16, v1);
    v19 = sub_6B7CC();
    v21 = v20;
    v22 = sub_6B26C();
    v23 = [v22 identifier];

    v24 = sub_6D2CC();
    v26 = v25;

    v27 = v3;
    if (v24 == v19 && v26 == v21)
    {

LABEL_8:
      (*(v18 + 8))(v3, v1);

      v32 = enum case for ConfirmationResponse.rejected(_:);
      v33 = sub_6B61C();
      v34 = *(v33 - 8);
      v35 = v53;
      (*(v34 + 104))(v53, v32, v33);
      return (*(v34 + 56))(v35, 0, 1, v33);
    }

    v31 = sub_6D63C();

    if (v31)
    {
      goto LABEL_8;
    }

    v39 = sub_6B27C();
    v40 = [v39 identifier];

    v41 = sub_6D2CC();
    v43 = v42;

    if (v41 == v19 && v43 == v21)
    {

      (*(v18 + 8))(v3, v1);
LABEL_18:
      v46 = enum case for ConfirmationResponse.confirmed(_:);
      v33 = sub_6B61C();
      v34 = *(v33 - 8);
      v35 = v53;
      (*(v34 + 104))(v53, v46, v33);
      return (*(v34 + 56))(v35, 0, 1, v33);
    }

    v45 = sub_6D63C();

    (*(v18 + 8))(v27, v1);
    if (v45)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v17 == enum case for Parse.uso(_:))
  {
    (*(v14 + 96))(v16, v13);
    v29 = v50;
    v28 = v51;
    (*(v50 + 32))(v6, v16, v51);
    sub_24464(v53);
    return (*(v29 + 8))(v6, v28);
  }

  if (v17 != enum case for Parse.nlRouter(_:))
  {
    v44 = sub_6B61C();
    (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
    return (*(v14 + 8))(v16, v13);
  }

  (*(v14 + 96))(v16, v13);
  v36 = v49;
  (*(v49 + 32))(v12, v16, v10);
  sub_6B39C();
  v38 = v50;
  v37 = v51;
  if ((*(v50 + 48))(v9, 1, v51) == 1)
  {
    (*(v36 + 8))(v12, v10);
    sub_5E20(v9, &qword_819D0, &qword_70DB0);
LABEL_19:
    v47 = sub_6B61C();
    return (*(*(v47 - 8) + 56))(v53, 1, 1, v47);
  }

  sub_24464(v53);
  (*(v36 + 8))(v12, v10);
  return (*(v38 + 8))(v9, v37);
}

uint64_t sub_24464@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_6B82C();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v43 - v6;
  v8 = sub_6B8DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6B9AC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  sub_6B81C();
  v17 = sub_6B8CC();
  (*(v9 + 8))(v11, v8);
  if (*(v17 + 16))
  {
    (*(v13 + 16))(v15, v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

    if (sub_6B93C())
    {
      (*(v13 + 8))(v15, v12);
      v18 = enum case for ConfirmationResponse.rejected(_:);
      v19 = sub_6B61C();
      v20 = *(v19 - 8);
      v21 = v45;
      (*(v20 + 104))(v45, v18, v19);
      return (*(v20 + 56))(v21, 0, 1, v19);
    }

    v39 = sub_6B92C();
    (*(v13 + 8))(v15, v12);
    if (v39)
    {
      v40 = enum case for ConfirmationResponse.confirmed(_:);
      v19 = sub_6B61C();
      v20 = *(v19 - 8);
      v21 = v45;
      (*(v20 + 104))(v45, v40, v19);
      return (*(v20 + 56))(v21, 0, 1, v19);
    }
  }

  else
  {
    v22 = v16;
    v24 = v43;
    v23 = v44;
    v25 = v5;

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v26 = sub_6D04C();
    sub_5CE4(v26, qword_839A0);
    v27 = *(v24 + 16);
    v28 = v7;
    v29 = v23;
    v27(v7, v22, v23);
    v30 = sub_6D03C();
    v31 = sub_6D46C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v28;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      v27(v25, v32, v29);
      v35 = sub_6D2EC();
      v37 = v36;
      (*(v24 + 8))(v32, v29);
      v38 = sub_1076C(v35, v37, &v46);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_0, v30, v31, "Invalid USOParse while looking for user confirmation. Parse has no UDAs: %s", v33, 0xCu);
      sub_9964(v34);
    }

    else
    {

      (*(v24 + 8))(v28, v23);
    }
  }

  v42 = sub_6B61C();
  return (*(*(v42 - 8) + 56))(v45, 1, 1, v42);
}

uint64_t sub_249DC()
{
  v1 = sub_6B82C();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v36 - v5;
  v7 = sub_6B8DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6B9AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0;
  sub_6B81C();
  v16 = sub_6B8CC();
  (*(v8 + 8))(v10, v7);
  if (*(v16 + 16))
  {
    (*(v12 + 16))(v14, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

    v17 = sub_6B94C();
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v18 = v15;
    v20 = v37;
    v19 = v38;
    v21 = v4;

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v22 = sub_6D04C();
    sub_5CE4(v22, qword_839A0);
    v23 = *(v20 + 16);
    v24 = v6;
    v25 = v19;
    v23(v6, v18, v19);
    v26 = sub_6D03C();
    v27 = sub_6D46C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v24;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39 = v30;
      *v29 = 136315138;
      v23(v21, v28, v25);
      v31 = sub_6D2EC();
      v33 = v32;
      (*(v20 + 8))(v28, v25);
      v34 = sub_1076C(v31, v33, &v39);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_0, v26, v27, "Invalid USOParse while looking for user cancellation. Parse has no UDAs: %s", v29, 0xCu);
      sub_9964(v30);
    }

    else
    {

      (*(v20 + 8))(v24, v19);
    }

    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_24DEC()
{
  result = sub_2519C();
  if (result)
  {

    sub_6BB4C();

    if (v18[3])
    {
      sub_6BB8C();
      if (swift_dynamicCast())
      {

        sub_6BADC();

        if (v18[0])
        {
          v1 = sub_6BB2C();

          if (v1)
          {
            v2 = sub_25964();

            return v2;
          }
        }

        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v11 = sub_6D04C();
        sub_5CE4(v11, qword_839A0);

        v4 = sub_6D03C();
        v12 = sub_6D46C();

        if (os_log_type_enabled(v4, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v18[0] = v14;
          *v13 = 136315138;

          v15 = sub_6D2EC();
          v17 = sub_1076C(v15, v16, v18);

          *(v13 + 4) = v17;
          _os_log_impl(&dword_0, v4, v12, "Could not extract the listPosition from the usoNoEntity=%s", v13, 0xCu);
          sub_9964(v14);

LABEL_19:

          return 0;
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      sub_5E20(v18, &qword_819D8, &qword_70768);
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v3 = sub_6D04C();
    sub_5CE4(v3, qword_839A0);

    v4 = sub_6D03C();
    v5 = sub_6D46C();

    if (!os_log_type_enabled(v4, v5))
    {

      return 0;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315138;
    sub_6BC2C();

    v8 = sub_6D2EC();
    v10 = sub_1076C(v8, v9, v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Could not extract the usoNoEntity from the usoTask=%s", v6, 0xCu);
    sub_9964(v7);

    goto LABEL_18;
  }

  return result;
}

unint64_t sub_2519C()
{
  v1 = sub_6B82C();
  v67 = *(v1 - 8);
  v68 = v1;
  v2 = __chkstk_darwin(v1);
  v66 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v63 - v4;
  v6 = sub_6B8DC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6B9AC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v64 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v65 = &v63 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v63 - v17;
  __chkstk_darwin(v16);
  v20 = &v63 - v19;
  v21 = v0;
  sub_6B81C();
  v22 = sub_6B8CC();
  (*(v7 + 8))(v9, v6);
  if (!*(v22 + 16))
  {
    v39 = v5;
    v41 = v66;
    v40 = v67;
    v42 = v68;

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v43 = sub_6D04C();
    sub_5CE4(v43, qword_839A0);
    v44 = v40;
    v45 = *(v40 + 16);
    v45(v39, v21, v42);
    v46 = sub_6D03C();
    v47 = sub_6D46C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v69[0] = v49;
      *v48 = 136315138;
      v45(v41, v39, v42);
      v50 = sub_6D2EC();
      v52 = v51;
      (*(v44 + 8))(v39, v42);
      v53 = sub_1076C(v50, v52, v69);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_0, v46, v47, "Cannot extract task: USO parse has no UDAs. %s", v48, 0xCu);
      sub_9964(v49);
    }

    else
    {

      (*(v44 + 8))(v39, v42);
    }

    return 0;
  }

  v23 = *(v11 + 16);
  v23(v18, v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

  (*(v11 + 32))(v20, v18, v10);
  v24 = v11;
  v25 = v20;
  if ((sub_6B91C() & 1) == 0)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v54 = sub_6D04C();
    sub_5CE4(v54, qword_839A0);
    v55 = sub_6D03C();
    v56 = sub_6D46C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "User dialog act does not have a user stated task", v57, 2u);
    }

    (*(v11 + 8))(v20, v10);
    return 0;
  }

  result = sub_6BABC();
  v59 = v65;
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  v61 = result;
  v62 = sub_6D5CC();
  result = v61;
  if (!v62)
  {
LABEL_27:

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v27 = sub_6D04C();
    sub_5CE4(v27, qword_839A0);
    v23(v59, v20, v10);
    v28 = sub_6D03C();
    v29 = sub_6D46C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v68 = v25;
      v69[0] = v31;
      v32 = v31;
      *v30 = 136315138;
      v23(v64, v59, v10);
      v33 = sub_6D2EC();
      v34 = v59;
      v36 = v35;
      v37 = *(v24 + 8);
      v37(v34, v10);
      v38 = sub_1076C(v33, v36, v69);

      *(v30 + 4) = v38;
      _os_log_impl(&dword_0, v28, v29, "Cannot extract task: UDA -> Task conversion failed. %s", v30, 0xCu);
      sub_9964(v32);

      v37(v68, v10);
    }

    else
    {

      v58 = *(v24 + 8);
      v58(v59, v10);
      v58(v25, v10);
    }

    return 0;
  }

LABEL_22:
  if ((result & 0xC000000000000001) != 0)
  {
    v60 = sub_6D58C();
    goto LABEL_25;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v60 = *(result + 32);

LABEL_25:

    (*(v24 + 8))(v20, v10);
    return v60;
  }

  __break(1u);
  return result;
}

uint64_t sub_25964()
{
  v0 = sub_5708(&qword_819E0, &qword_70770);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_6BBAC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_6BB9C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_5E20(v2, &qword_819E0, &qword_70770);
    return 0;
  }

  v11 = *(v4 + 32);
  v11(v9, v2, v3);
  v11(v7, v9, v3);
  v12 = (*(v4 + 88))(v7, v3);
  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourth(_:))
  {
    return 4;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Second(_:))
  {
    return 2;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Beginning(_:))
  {
    return 1;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFourth(_:))
  {
    return 24;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventeenth(_:))
  {
    return 17;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighth(_:))
  {
    return 8;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_ThirdToLast(_:))
  {
    return -3;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixth(_:))
  {
    return 6;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Nineteenth(_:))
  {
    return 19;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFifth(_:))
  {
    return 25;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Ninth(_:))
  {
    return 9;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eleventh(_:))
  {
    return 11;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_End(_:))
  {
    return -1;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourteenth(_:))
  {
    return 14;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_SecondToLast(_:))
  {
    return -2;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFirst(_:))
  {
    return 21;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Thirteenth(_:))
  {
    return 13;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:))
  {
    return -1;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentySecond(_:))
  {
    return 22;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifteenth(_:))
  {
    return 15;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twentieth(_:))
  {
    return 20;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifth(_:))
  {
    return 5;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixteenth(_:))
  {
    return 16;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_First(_:))
  {
    return 1;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventh(_:))
  {
    return 7;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighteenth(_:))
  {
    return 18;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyThird(_:))
  {
    return 23;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twelfth(_:))
  {
    return 12;
  }

  if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Third(_:))
  {
    return 3;
  }

  if (v12 != enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Tenth(_:))
  {
    (*(v4 + 8))(v7, v3);
    return 0;
  }

  return 10;
}

unint64_t sub_25EE8()
{
  result = qword_819E8;
  if (!qword_819E8)
  {
    sub_6D12C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_819E8);
  }

  return result;
}

unint64_t sub_25F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5708(&qword_819F0, &qword_70780);
    v3 = sub_6D5EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_C14C(v4, v13, &qword_81558, &qword_70098);
      result = sub_10D98(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2747C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void *sub_2607C(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return _swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_6D3BC();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_26118(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5708(&qword_819F8, &qword_70788);
    v3 = sub_6D5EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_C14C(v4, &v13, &qword_81A00, &qword_716C0);
      v5 = v13;
      v6 = v14;
      result = sub_10DDC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2747C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_26248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5708(&qword_81A08, &qword_70790);
    v3 = sub_6D5EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_C14C(v4, &v13, &qword_81A10, &qword_70798);
      v5 = v13;
      v6 = v14;
      result = sub_10DDC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2748C(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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

uint64_t sub_2637C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 440) = a3;
  *(v3 + 240) = a1;
  *(v3 + 248) = a2;
  sub_5708(&qword_81520, &qword_708D0);
  *(v3 + 256) = swift_task_alloc();
  v4 = sub_6B89C();
  *(v3 + 264) = v4;
  *(v3 + 272) = *(v4 - 8);
  *(v3 + 280) = swift_task_alloc();
  v5 = sub_6B64C();
  *(v3 + 288) = v5;
  *(v3 + 296) = *(v5 - 8);
  *(v3 + 304) = swift_task_alloc();
  v6 = sub_6B55C();
  *(v3 + 312) = v6;
  *(v3 + 320) = *(v6 - 8);
  *(v3 + 328) = swift_task_alloc();
  v7 = sub_6AEDC();
  *(v3 + 336) = v7;
  *(v3 + 344) = *(v7 - 8);
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();

  return _swift_task_switch(sub_26598, 0, 0);
}

uint64_t sub_26598()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v22 = *(v0 + 440);
  v5 = *(v0 + 240);
  sub_99FC(v5, v5[3]);
  sub_6B29C();
  sub_6AEAC();
  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_99FC(v5, v5[3]);
  sub_6B29C();
  sub_6AEAC();
  v6(v2, v3);
  v7 = objc_allocWithZone(CATContext);
  v8 = sub_6D2BC();

  v9 = sub_6D2BC();

  v10 = [v7 initWithInputLocale:v8 outputVoiceLocale:v9];
  *(v0 + 368) = v10;

  v11 = "suggestedInvocation";
  v12 = 0xD00000000000001BLL;
  if (v22 == 1)
  {
    v12 = 0xD000000000000020;
  }

  else
  {
    v11 = "IFFlow#CompanionNotFound";
  }

  if (v22)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0xD000000000000020;
  }

  if (v22)
  {
    v14 = v11;
  }

  else
  {
    v14 = "ity#AirplaneMode";
  }

  *(v0 + 376) = v13;
  *(v0 + 384) = v14;
  v15 = objc_opt_self();
  type metadata accessor for IFFlowPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v0 + 392) = v17;
  v18 = sub_6D2BC();
  *(v0 + 400) = v18;
  sub_25F40(_swiftEmptyArrayStorage);
  isa = sub_6D22C().super.isa;
  *(v0 + 408) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_268D8;
  v20 = swift_continuation_init();
  *(v0 + 136) = sub_5708(&qword_81530, &qword_70078);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_9694;
  *(v0 + 104) = &unk_7F150;
  *(v0 + 112) = v20;
  [v15 execute:v17 catId:v18 parameters:isa globals:v10 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_268D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {

    v2 = sub_2704C;
  }

  else
  {
    v2 = sub_269F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_269F4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  v25 = *(v0 + 264);
  v26 = *(v0 + 272);
  v22 = *(v0 + 256);
  v23 = *(v0 + 280);
  v24 = *(v0 + 248);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  *(v0 + 424) = v9;

  v10 = [v9 speak];
  sub_6D38C();

  v11 = [v9 print];
  sub_6D38C();

  (*(v5 + 104))(v6, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v7);
  v12 = [v9 print];
  v13 = sub_6D38C();

  v14 = *(v13 + 16);

  sub_2607C(0, 0xE000000000000000, v14);
  v15 = [v9 meta];
  sub_6D23C();

  sub_6B54C();
  sub_99FC(v8, v8[3]);
  sub_6B2AC();
  v16 = sub_6B50C();
  (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
  *(v0 + 176) = 0;
  *(v0 + 160) = 0u;
  *(v0 + 144) = 0u;
  sub_6B42C();
  sub_5E20(v0 + 144, &qword_81538, &qword_70080);
  sub_5E20(v22, &qword_81520, &qword_708D0);
  v17 = v24[3];
  v18 = v24[4];
  sub_99FC(v24, v17);
  *(v0 + 208) = v25;
  *(v0 + 216) = &protocol witness table for AceOutput;
  v19 = sub_97B0((v0 + 184));
  (*(v26 + 16))(v19, v23, v25);
  v20 = swift_task_alloc();
  *(v0 + 432) = v20;
  *v20 = v0;
  v20[1] = sub_26D58;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 184, v17, v18);
}

uint64_t sub_26D58()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_27280;
  }

  else
  {
    sub_9964((v2 + 184));
    v3 = sub_26E84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_26E84()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  v2 = sub_6D03C();
  v3 = sub_6D45C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[53];
  v6 = v0[46];
  v8 = v0[40];
  v7 = v0[41];
  v15 = v0[39];
  v9 = v0[34];
  v10 = v0[35];
  v11 = v0[33];
  if (v4)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v2, v3, "Published AceOutput for offline network", v12, 2u);
  }

  (*(v9 + 8))(v10, v11);
  (*(v8 + 8))(v7, v15);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2704C()
{
  v18 = v0;
  v1 = v0[51];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[46];
  swift_willThrow();

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v5 = sub_6D04C();
  sub_5CE4(v5, qword_839A0);
  swift_errorRetain();
  v6 = sub_6D03C();
  v7 = sub_6D46C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[52];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v0[29] = v9;
    swift_errorRetain();
    sub_5708(&qword_813D0, qword_6FC50);
    v12 = sub_6D2EC();
    v14 = sub_1076C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v6, v7, "Could not render error CAT: %s", v10, 0xCu);
    sub_9964(v11);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_27280()
{
  sub_9964(v0 + 23);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  v2 = sub_6D03C();
  v3 = sub_6D45C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[53];
  v6 = v0[46];
  v8 = v0[40];
  v7 = v0[41];
  v15 = v0[39];
  v9 = v0[34];
  v10 = v0[35];
  v11 = v0[33];
  if (v4)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v2, v3, "Published AceOutput for offline network", v12, 2u);
  }

  (*(v9 + 8))(v10, v11);
  (*(v8 + 8))(v7, v15);

  v13 = v0[1];

  return v13();
}

_OWORD *sub_2747C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_2748C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_274A4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48[1] = a2;
  v3 = sub_6C00C();
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  __chkstk_darwin(v3);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6BFEC();
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  __chkstk_darwin(v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_6C02C();
  v57 = *(v54 - 8);
  __chkstk_darwin(v54);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v13 = [a1 recognition];
  if (!v13)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = v13;
  v15 = [v13 phrases];

  if (!v15)
  {
LABEL_63:
    __break(1u);
    return;
  }

  sub_27E28(0, &qword_81A18, AFSpeechPhrase_ptr);
  v16 = sub_6D38C();

  if (v16 >> 62)
  {
    goto LABEL_57;
  }

  v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  if (!v17)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v18 = v16;
    v81 = _swiftEmptyArrayStorage;
    v16 = &v81;
    v56 = v17;
    sub_27DA0(0, v17 & ~(v17 >> 63), 0);
    if (v56 < 0)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v19 = 0;
    v55 = v18 & 0xC000000000000001;
    v60 = v81;
    v51 = v18 & 0xFFFFFFFFFFFFFF8;
    v50 = v18 + 32;
    v75 = v77 + 32;
    v67 = v69 + 32;
    v52 = v57 + 32;
    v53 = v18;
    v63 = v12;
    v64 = v10;
    while (1)
    {
      if (__OFADD__(v19, 1))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v59 = v19 + 1;
      if (v55)
      {
        v20 = sub_6D58C();
      }

      else
      {
        if (v19 >= *(v51 + 16))
        {
          goto LABEL_56;
        }

        v20 = *(v50 + 8 * v19);
      }

      v58 = v20;
      v21 = [v20 interpretations];
      if (!v21)
      {
        goto LABEL_61;
      }

      v22 = v21;
      sub_27E28(0, &qword_81A20, AFSpeechInterpretation_ptr);
      v23 = sub_6D38C();

      if (v23 >> 62)
      {
        break;
      }

      v24 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
      if (v24)
      {
        goto LABEL_15;
      }

LABEL_44:

      sub_6C01C();

      v44 = v60;
      v81 = v60;
      v46 = v60[2];
      v45 = v60[3];
      if (v46 >= v45 >> 1)
      {
        v16 = &v81;
        sub_27DA0((v45 > 1), v46 + 1, 1);
        v44 = v81;
      }

      v44[2] = v46 + 1;
      v47 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v60 = v44;
      (*(v57 + 32))(v44 + v47 + *(v57 + 72) * v46, v12, v54);
      v19 = v59;
      if (v59 == v56)
      {
        goto LABEL_58;
      }
    }

    v24 = sub_6D5CC();
    if (!v24)
    {
      goto LABEL_44;
    }

LABEL_15:
    v80 = _swiftEmptyArrayStorage;
    v16 = &v80;
    sub_27DE4(0, v24 & ~(v24 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v17 = sub_6D5CC();
    if (!v17)
    {
      goto LABEL_58;
    }
  }

  v25 = 0;
  v26 = v80;
  v70 = v23 & 0xC000000000000001;
  v62 = v23 & 0xFFFFFFFFFFFFFF8;
  v61 = v23 + 32;
  v65 = v24;
  v66 = v23;
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v70)
    {
      v28 = sub_6D58C();
    }

    else
    {
      if (v25 >= *(v62 + 16))
      {
        goto LABEL_52;
      }

      v28 = *(v61 + 8 * v25);
    }

    v29 = v28;
    v30 = [v28 tokens];
    if (!v30)
    {
      goto LABEL_60;
    }

    v31 = v30;
    v72 = v29;
    v73 = v27;
    sub_27E28(0, &qword_81A28, AFSpeechToken_ptr);
    v32 = sub_6D38C();

    if (v32 >> 62)
    {
      break;
    }

    v33 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
    if (v33)
    {
      goto LABEL_25;
    }

LABEL_38:

    v16 = _swiftEmptyArrayStorage;
LABEL_39:
    sub_6BFDC();

    v80 = v26;
    v42 = v26[2];
    v41 = v26[3];
    v43 = v73;
    if (v42 >= v41 >> 1)
    {
      v16 = &v80;
      sub_27DE4((v41 > 1), v42 + 1, 1);
      v26 = v80;
    }

    v26[2] = v42 + 1;
    (*(v69 + 32))(v26 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v42, v10, v68);
    v25 = v43;
    if (v43 == v24)
    {
      goto LABEL_44;
    }
  }

  v33 = sub_6D5CC();
  if (!v33)
  {
    goto LABEL_38;
  }

LABEL_25:
  v79 = _swiftEmptyArrayStorage;
  v16 = &v79;
  sub_27E70(0, v33 & ~(v33 >> 63), 0);
  if (v33 < 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v71 = v26;
  v34 = 0;
  v16 = v79;
  v78 = v32 & 0xC000000000000001;
  v74 = v32 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v10 = (v34 + 1);
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v78)
    {
      v35 = sub_6D58C();
    }

    else
    {
      if (v34 >= *(v74 + 16))
      {
        goto LABEL_49;
      }

      v35 = *(v32 + 8 * v34 + 32);
    }

    v36 = v35;
    v37 = [v35 text];
    if (!v37)
    {
      goto LABEL_55;
    }

    v38 = v37;
    v12 = v33;
    sub_6D2CC();

    [v36 confidenceScore];
    [v36 startTime];
    [v36 silenceStartTime];
    [v36 endTime];
    sub_6BFFC();

    v79 = v16;
    v40 = *(v16 + 16);
    v39 = *(v16 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_27E70((v39 > 1), v40 + 1, 1);
      v16 = v79;
    }

    *(v16 + 16) = v40 + 1;
    (*(v77 + 32))(v16 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v40, v6, v76);
    ++v34;
    v33 = v12;
    if (v10 == v12)
    {

      v12 = v63;
      v10 = v64;
      v24 = v65;
      v26 = v71;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_58:

  sub_6C03C();
}

void *sub_27D3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_28134(a1, a2, a3, *v3, &qword_81A58, &qword_707C8, &type metadata accessor for ResponseOutput.VisualOutput);
  *v3 = result;
  return result;
}

char *sub_27D80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27F18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27DA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_28134(a1, a2, a3, *v3, &qword_81A40, &qword_707B0, &type metadata accessor for SpeechPackage.Phrase);
  *v3 = result;
  return result;
}

void *sub_27DE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_28134(a1, a2, a3, *v3, &qword_81A38, &qword_707A8, &type metadata accessor for SpeechPackage.Interpretation);
  *v3 = result;
  return result;
}

uint64_t sub_27E28(uint64_t a1, unint64_t *a2, void *a3)
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

void *sub_27E70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_28134(a1, a2, a3, *v3, &qword_81A30, &qword_707A0, &type metadata accessor for SpeechPackage.Token);
  *v3 = result;
  return result;
}

char *sub_27EB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_28024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_27ED4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_28134(a1, a2, a3, *v3, &qword_81850, &qword_70430, &type metadata accessor for TypedValue);
  *v3 = result;
  return result;
}

char *sub_27F18(char *result, int64_t a2, char a3, char *a4)
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
    sub_5708(&qword_81A48, &qword_707B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_28024(char *result, int64_t a2, char a3, char *a4)
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
    sub_5708(&qword_81A50, &qword_707C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_28134(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5708(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_28310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_5708(&qword_81B18, qword_708F0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = sub_6B61C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_28418, 0, 0);
}

uint64_t sub_28418()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_23D20(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[4];
    sub_5E20(v0[6], &qword_81B18, qword_708F0);
    sub_6D57C(48);

    sub_6B7AC();
    sub_11FB4(&qword_81768, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v12._countAndFlagsBits = sub_6D61C();
    sub_6D33C(v12);

    *v4 = 0xD00000000000002ELL;
    v4[1] = 0x800000000006F090;
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    sub_11FB4(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    swift_willThrowTypedImpl();
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = v0[5];
    (*(v7 + 32))(v6, v0[6], v8);
    (*(v7 + 16))(v9, v6, v8);
    (*(v7 + 56))(v9, 0, 1, v8);
    sub_6B77C();
    (*(v7 + 8))(v6, v8);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_286C4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_6B5AC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_5708(&qword_81520, &qword_708D0);
  v2[12] = swift_task_alloc();
  sub_5708(&qword_81B08, &qword_708D8);
  v2[13] = swift_task_alloc();
  v4 = sub_6B89C();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_28850, 0, 0);
}

uint64_t sub_28850()
{
  if (*(v0[8] + 56) == 1)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v1 = sub_6D04C();
    sub_5CE4(v1, qword_839A0);
    v2 = sub_6D03C();
    v3 = sub_6D45C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "IFFlow Confirmation for GenAI Media QnA won't re-prompt on empty parse.", v4, 2u);
    }

    v5 = v0[15];
    v6 = v0[8];

    sub_9878(v6 + 16, (v0 + 2));
    sub_5708(&qword_81B10, &qword_708E0);
    v7 = swift_dynamicCast();
    v8 = *(v5 + 56);
    if (v7)
    {
      v10 = v0[15];
      v9 = v0[16];
      v12 = v0[13];
      v11 = v0[14];
      v13 = v0[11];
      v14 = v0[10];
      v25 = v0[9];
      v15 = v0[7];
      v8(v12, 0, 1, v11);
      (*(v10 + 32))(v9, v12, v11);
      sub_6B84C();
      (*(v14 + 104))(v13, enum case for DialogEngineOutput.none(_:), v25);
      v15[3] = v11;
      v15[4] = &protocol witness table for AceOutput;
      sub_97B0(v15);
      sub_6B87C();
      (*(v10 + 8))(v9, v11);
    }

    else
    {
      v22 = v0[13];
      v8(v22, 1, 1, v0[14]);
      sub_5E20(v22, &qword_81B08, &qword_708D8);
      sub_6B33C();
      sub_6B32C();
    }
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v16 = sub_6D04C();
    sub_5CE4(v16, qword_839A0);
    v17 = sub_6D03C();
    v18 = sub_6D45C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "IFFlow Confirmation re-prompting on empty parse.", v19, 2u);
    }

    v20 = v0[7];
    v21 = v0[8];

    sub_9878(v21 + 16, v20);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_28BDC()
{
  sub_9964((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_28C44()
{
  v0 = sub_5708(&qword_81B18, qword_708F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  if (sub_22C60())
  {

    return static ActionForInput.cancel()();
  }

  else
  {
    sub_23D20(v2);
    v3 = sub_6B61C();
    v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
    sub_5E20(v2, &qword_81B18, qword_708F0);
    if (v4 == 1)
    {
      return sub_6B40C();
    }

    else
    {
      return sub_6B3FC();
    }
  }
}

uint64_t sub_28D68(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for IFFlowError(0);
  v5 = swift_task_alloc();
  v2[3] = v5;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_11A00;

  return sub_28310(a1, a2, v5);
}

uint64_t sub_28E48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_12CEC;

  return sub_286C4(a1);
}

uint64_t sub_28EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_12CEC;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v9, a4);
}

uint64_t sub_28FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_E728;

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, v7, a3);
}

uint64_t sub_290A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_12CEC;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t sub_29178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_12CEC;

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

uint64_t sub_29260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v193 = a6;
  v177 = a4;
  v192 = a3;
  v170 = a2;
  v196 = a7;
  v195 = *v7;
  v10 = sub_5708(&qword_81770, &unk_70F70);
  __chkstk_darwin(v10 - 8);
  v171 = &v146 - v11;
  v168 = sub_6BEEC();
  v166 = *(v168 - 8);
  __chkstk_darwin(v168);
  v169 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_6AE9C();
  v174 = *(v179 - 8);
  __chkstk_darwin(v179);
  v172 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v14 - 8);
  v165 = &v146 - v15;
  v176 = sub_6C89C();
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v173 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6C54C();
  v183 = *(v17 - 8);
  v184 = v17;
  __chkstk_darwin(v17);
  v182 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_6C86C();
  v189 = *(v180 - 8);
  v19 = __chkstk_darwin(v180);
  v163 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v188 = &v146 - v21;
  v22 = sub_6C35C();
  v190 = *(v22 - 8);
  v191 = v22;
  v23 = __chkstk_darwin(v22);
  v167 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v164 = &v146 - v26;
  __chkstk_darwin(v25);
  v181 = &v146 - v27;
  v28 = sub_6C4EC();
  v186 = *(v28 - 8);
  v187 = v28;
  v29 = __chkstk_darwin(v28);
  v160 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v185 = &v146 - v31;
  v32 = sub_5708(&qword_81B18, qword_708F0);
  __chkstk_darwin(v32 - 8);
  v34 = &v146 - v33;
  v35 = sub_6B61C();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v161 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v178 = &v146 - v40;
  v41 = __chkstk_darwin(v39);
  v162 = &v146 - v42;
  v43 = __chkstk_darwin(v41);
  v159 = &v146 - v44;
  v45 = __chkstk_darwin(v43);
  v194 = &v146 - v46;
  v47 = *(a5 - 8);
  __chkstk_darwin(v45);
  v49 = &v146 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_6B37C();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v53 = &v146 - v52;
  (*(v51 + 16))(&v146 - v52, a1, v50);
  v54 = (*(v51 + 88))(v53, v50);
  if (v54 == enum case for PromptResult.answered<A>(_:))
  {
    (*(v51 + 96))(v53, v50);
    (*(v47 + 32))(v49, v53, a5);
    sub_6B75C();
    v55 = v49;
    if ((*(v36 + 48))(v34, 1, v35) == 1)
    {
      (*(v47 + 8))(v49, a5);
      sub_5E20(v34, &qword_81B18, qword_708F0);
LABEL_20:
      *v196 = 0;
      type metadata accessor for IFFlowError(0);
      goto LABEL_21;
    }

    v58 = v35;
    v59 = v194;
    (*(v36 + 32))(v194, v34, v35);
    v60 = v181;
    sub_6C81C();
    v62 = v190;
    v61 = v191;
    v63 = v190 + 88;
    v158 = *(v190 + 88);
    v64 = v158(v60, v191);
    if (v64 != enum case for MessagePayload.systemResponse(_:))
    {
      (*(v36 + 8))(v59, v58);
      (*(v47 + 8))(v55, a5);
      (*(v62 + 8))(v60, v61);
      goto LABEL_20;
    }

    v157 = v64;
    v65 = *(v62 + 96);
    v152 = v62 + 96;
    v151 = v65;
    v65(v60, v61);
    v66 = *(v186 + 32);
    v150 = v186 + 32;
    v149 = v66;
    v66(v185, v60, v187);
    v67 = v182;
    sub_4B4CC(v182);
    v68 = (*(v183 + 88))(v67, v184);
    v181 = v58;
    v193 = v36;
    if (v68 == enum case for StatementOutcome.actionConfirmation(_:))
    {
      v154 = v55;
      v155 = v47;
      v156 = a5;
      v69 = v189;
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v153 = v63;
      v70 = sub_6D04C();
      sub_5CE4(v70, qword_839A0);
      v71 = sub_6D03C();
      v72 = sub_6D44C();
      v73 = os_log_type_enabled(v71, v72);
      v74 = v188;
      v75 = v162;
      if (v73)
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_0, v71, v72, "IFFlow responding to actionConfirmation", v76, 2u);
      }

      v77 = v193;
      v78 = *(v193 + 16);
      v79 = v181;
      v78(v75, v194, v181);
      v80 = *(v77 + 88);
      v81 = v80(v75, v79);
      v82 = enum case for ConfirmationResponse.confirmed(_:);
      v83 = enum case for ConfirmationResponse.rejected(_:);
      v84 = &enum case for SystemPromptResolution.UserAction.actionConfirmed(_:);
LABEL_31:
      v148 = v82;
      v102 = v81 == v82;
      v147 = v83;
      if (v81 != v82 && v81 != v83)
      {
        (*(v193 + 8))(v75, v181);
      }

      *v74 = v102;
      v103 = v180;
      (*(v69 + 104))(v74, *v84, v180);
      (*(v183 + 8))(v182, v184);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v104 = sub_6D04C();
      sub_5CE4(v104, qword_839A0);
      v105 = v193;
      v106 = v178;
      v107 = v181;
      v78(v178, v194, v181);
      v108 = sub_6D03C();
      v109 = sub_6D44C();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v197 = v111;
        *v110 = 136315138;
        v112 = v78;
        v113 = v80;
        v114 = v161;
        v112(v161, v106, v107);
        v115 = v113(v114, v107);
        if (v115 == v148)
        {
          v116 = 0xE900000000000064;
          v117 = 0x656D7269666E6F63;
        }

        else
        {
          v117 = 0x64657463656A6572;
          if (v115 != v147)
          {
            (*(v193 + 8))(v161, v107);
          }

          v116 = 0xE800000000000000;
        }

        v121 = v173;
        v184 = *(v193 + 8);
        v184(v178, v107);
        v124 = sub_1076C(v117, v116, &v197);

        *(v110 + 4) = v124;
        _os_log_impl(&dword_0, v108, v109, "IFFlow Confirmation %s. Forwarding to IF", v110, 0xCu);
        sub_9964(v111);

        v103 = v180;
        v69 = v189;
      }

      else
      {

        v184 = *(v105 + 8);
        v184(v106, v107);
        v121 = v173;
      }

      v125 = v174;
      (*(v174 + 56))(v165, 1, 1, v179);
      v126 = v172;
      sub_6C80C();
      (*(v69 + 16))(v163, v188, v103);
      (*(v166 + 16))(v169, v170, v168);
      v127 = enum case for SystemPromptResolution.ResolutionInput.touch(_:);
      v128 = sub_6C85C();
      v129 = *(v128 - 8);
      v130 = v171;
      (*(v129 + 104))(v171, v127, v128);
      (*(v129 + 56))(v130, 0, 1, v128);
      sub_6C87C();
      v183 = *(sub_5708(&qword_81788, &qword_70380) + 48);
      sub_6C82C();
      v131 = v164;
      sub_A17C(v121, v177);
      v132 = v190;
      v133 = v191;
      (*(v190 + 104))(v131, enum case for MessagePayload.request(_:), v191);
      v134 = v196;
      sub_30BF8(v126, v131);
      v135 = *(v132 + 8);
      v135(v131, v133);
      (*(v125 + 8))(v126, v179);
      v136 = v167;
      sub_6C81C();
      v137 = v158(v136, v133);
      if (v137 == v157)
      {
        v151(v136, v133);
        v138 = v160;
        v139 = v187;
        v149(v160, v136, v187);
        v140 = v183;
        sub_4458(v138, &v134[v183]);
        v141 = *(v186 + 8);
        v141(v138, v139);
        (*(v175 + 8))(v121, v176);
        (*(v189 + 8))(v188, v180);
        v141(v185, v139);
        v184(v194, v181);
        (*(v155 + 8))(v154, v156);
        v142 = 0;
        v143 = v140;
      }

      else
      {
        (*(v175 + 8))(v121, v176);
        (*(v189 + 8))(v188, v180);
        (*(v186 + 8))(v185, v187);
        v184(v194, v181);
        (*(v155 + 8))(v154, v156);
        v135(v136, v133);
        v142 = 1;
        v143 = v183;
      }

      v144 = sub_6CD2C();
      (*(*(v144 - 8) + 56))(&v134[v143], v142, 1, v144);
      type metadata accessor for IFFlow.State(0, *(v195 + 80), *(v195 + 88), v145);
      return swift_storeEnumTagMultiPayload();
    }

    v94 = v196;
    v69 = v189;
    if (v68 == enum case for StatementOutcome.parameterConfirmation(_:))
    {
      v154 = v55;
      v155 = v47;
      v156 = a5;
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v153 = v63;
      v95 = sub_6D04C();
      sub_5CE4(v95, qword_839A0);
      v96 = sub_6D03C();
      v97 = sub_6D44C();
      v98 = os_log_type_enabled(v96, v97);
      v74 = v188;
      v75 = v159;
      if (v98)
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_0, v96, v97, "IFFlow responding to parameterConfirmation", v99, 2u);
        v69 = v189;
      }

      v100 = v193;
      v78 = *(v193 + 16);
      v101 = v181;
      v78(v75, v194, v181);
      v80 = *(v100 + 88);
      v81 = v80(v75, v101);
      v82 = enum case for ConfirmationResponse.confirmed(_:);
      v83 = enum case for ConfirmationResponse.rejected(_:);
      v84 = &enum case for SystemPromptResolution.UserAction.parameterConfirmed(_:);
      goto LABEL_31;
    }

    (*(v186 + 8))(v185, v187);
    (*(v36 + 8))(v194, v58);
    (*(v47 + 8))(v55, a5);
    v122 = sub_6C83C();
    (*(*(v122 - 8) + 16))(v94, v192, v122);
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for IFFlow.State(0, *(v195 + 80), *(v195 + 88), v123);
    swift_storeEnumTagMultiPayload();
    return (*(v183 + 8))(v182, v184);
  }

  else
  {
    if (v54 == enum case for PromptResult.error<A>(_:))
    {
      (*(v51 + 96))(v53, v50);
      v56 = v53[8];
      v57 = v196;
      *v196 = *v53;
      v57[8] = v56;
      type metadata accessor for IFFlowError(0);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      type metadata accessor for IFFlow.State(0, *(v195 + 80), *(v195 + 88), v91);
      return swift_storeEnumTagMultiPayload();
    }

    v85 = v196;
    if (v54 == enum case for PromptResult.cancelled<A>(_:))
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v86 = sub_6D04C();
      sub_5CE4(v86, qword_839A0);
      v87 = sub_6D03C();
      v88 = sub_6D45C();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_0, v87, v88, "Exiting IFFlow, received userCancelled", v89, 2u);
      }

      *v85 = 0;
      v85[8] = 0;
      type metadata accessor for IFFlow.State(0, *(v195 + 80), *(v195 + 88), v90);
      return swift_storeEnumTagMultiPayload();
    }

    if (v54 == enum case for PromptResult.unanswered<A>(_:))
    {
      *v196 = 0;
      type metadata accessor for IFFlowError(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for IFFlow.State(0, *(v195 + 80), *(v195 + 88), v93);
      return swift_storeEnumTagMultiPayload();
    }

    v197 = 0;
    v198 = 0xE000000000000000;
    sub_6D57C(35);

    v197 = 0xD000000000000021;
    v198 = 0x800000000006EDA0;
    WitnessTable = swift_getWitnessTable();
    v199._countAndFlagsBits = sub_4A254(a1, v50, WitnessTable);
    sub_6D33C(v199);

    v119 = v198;
    *v85 = v197;
    *(v85 + 1) = v119;
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for IFFlow.State(0, *(v195 + 80), *(v195 + 88), v120);
    swift_storeEnumTagMultiPayload();
    return (*(v51 + 8))(v53, v50);
  }
}

uint64_t sub_2A9C0()
{
  v1 = v0;
  v2 = sub_6BCEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DeviceIdiom.car(_:))
  {
    return 1;
  }

  if (v6 == enum case for DeviceIdiom.homepod(_:))
  {
    return 3;
  }

  if (v6 == enum case for DeviceIdiom.mac(_:))
  {
    return 4;
  }

  if (v6 == enum case for DeviceIdiom.pad(_:))
  {
    return 7;
  }

  if (v6 == enum case for DeviceIdiom.pod(_:))
  {
    return 5;
  }

  if (v6 == enum case for DeviceIdiom.phone(_:))
  {
    return 6;
  }

  if (v6 == enum case for DeviceIdiom.watch(_:))
  {
    return 8;
  }

  if (v6 == enum case for DeviceIdiom.tv(_:))
  {
    return 9;
  }

  if (v6 == enum case for DeviceIdiom.reality(_:))
  {
    return 10;
  }

  if (v6 != enum case for DeviceIdiom.unknown(_:))
  {
    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

char *sub_2ABCC(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v98 = a5;
  v103 = a3;
  v90 = a2;
  v88 = a1;
  v6 = sub_6BCEC();
  v96 = *(v6 - 8);
  v97 = v6;
  __chkstk_darwin(v6);
  v95 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6BDBC();
  v94 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v93 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = (&v79 - v11);
  v12 = sub_6BD2C();
  v91 = *(v12 - 8);
  v92 = v12;
  __chkstk_darwin(v12);
  v89 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_6BD0C();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_6BCDC();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5708(&qword_81B20, &qword_70908);
  __chkstk_darwin(v16 - 8);
  v18 = &v79 - v17;
  v19 = sub_5708(&qword_81B28, &qword_70910);
  v20 = __chkstk_darwin(v19 - 8);
  v100 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v82 = &v79 - v22;
  v23 = sub_6BDDC();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_6BD4C();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6BD6C();
  sub_6BD3C();
  (*(v28 + 8))(v30, v27);
  v31 = sub_6BDCC();
  (*(v24 + 8))(v26, v23);
  v32 = *(v31 + 16);
  v101 = a4;
  if (v32)
  {
    v81 = v8;
    v33 = sub_2BC1C(v32, 0);
    v34 = sub_2C778(v106, v33 + 4, v32, v31);
    v35 = v106[0];

    sub_2C8D0(v35);
    if (v34 != v32)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v8 = v81;
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v106[0] = v33;
  sub_2BCA0(v106);
  v37 = v93;
  v36 = v94;
  v38 = v82;

  v81 = v106[0];
  sub_6CE0C();
  v39 = sub_6BDAC();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v18, 1, v39) == 1)
  {
    sub_5E20(v18, &qword_81B20, &qword_70908);
    v41 = 1;
  }

  else
  {
    sub_6BD9C();
    (*(v40 + 8))(v18, v39);
    v41 = 0;
  }

  v42 = v100;
  v43 = v83;
  v44 = v84;
  (*(v83 + 56))(v38, v41, 1, v84);
  sub_2C8D8(v38, v42);
  if ((*(v43 + 48))(v42, 1, v44) == 1)
  {
    sub_5E20(v38, &qword_81B28, &qword_70910);
    v80 = 0;
    v100 = 0;
  }

  else
  {
    v45 = v38;
    v46 = v79;
    (*(v43 + 32))(v79, v42, v44);
    v106[0] = sub_6BCCC();
    v80 = sub_6D61C();
    v100 = v47;
    (*(v43 + 8))(v46, v44);
    sub_5E20(v45, &qword_81B28, &qword_70910);
  }

  v48 = sub_6D2BC();

  sub_6CDCC();
  v88 = v48;
  if (v49)
  {
    v90 = sub_6D2BC();
  }

  else
  {
    v90 = 0;
  }

  v50 = v85;
  sub_6CDDC();
  sub_6BCFC();
  (*(v86 + 8))(v50, v87);
  v87 = sub_6D2BC();

  v51 = v89;
  sub_6CDEC();
  sub_6BD1C();
  (*(v91 + 8))(v51, v92);
  v92 = sub_6D2BC();

  sub_6CE1C();
  (*(v36 + 104))(v37, enum case for InteractionType.dialogDriven(_:), v8);
  sub_2C948();
  sub_6D35C();
  sub_6D35C();
  if (v106[0] != v104 || v106[1] != v105)
  {
    sub_6D63C();
  }

  v52 = *(v36 + 8);
  v52(v37, v8);
  v52(v102, v8);

  v53.super.super.isa = sub_6D3DC().super.super.isa;
  sub_2C9A0();
  v54.super.super.isa = sub_6D49C(0).super.super.isa;
  sub_6BD8C();
  v55.super.super.isa = sub_6D3DC().super.super.isa;
  sub_6BD7C();
  v56.super.super.isa = sub_6D3DC().super.super.isa;
  if (sub_6CE3C())
  {

    v57.super.super.isa = sub_6D3DC().super.super.isa;
  }

  else
  {
    v57.super.super.isa = 0;
  }

  v58.super.isa = sub_6D37C().super.isa;

  isa = v54.super.super.isa;
  if (v100)
  {
    sub_5708(&qword_81A48, &qword_707B8);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_70000;
    v61 = v100;
    *(v60 + 32) = v80;
    *(v60 + 40) = v61;
  }

  v62.super.isa = sub_6D37C().super.isa;

  v63 = v95;
  sub_6BD5C();
  v64 = sub_2A9C0();
  (*(v96 + 8))(v63, v97);
  if (v98 == 2)
  {
    v65 = 0;
  }

  else
  {
    v65 = sub_6D3DC().super.super.isa;
  }

  v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  LODWORD(v78) = v64;
  v77 = v62.super.isa;
  v75 = v56.super.super.isa;
  v76 = v57.super.super.isa;
  v74 = v55.super.super.isa;
  v67 = v88;
  v102 = v62.super.isa;
  v68 = v90;
  v99 = v57.super.super.isa;
  v69 = v55.super.super.isa;
  v70 = v87;
  v71 = v56.super.super.isa;
  v72 = v92;
  v100 = [v66 initWithSessionID:v88 requestID:v90 inputOrigin:v87 responseMode:v92 isEyesFree:v53.super.super.isa isMultiUser:isa isVoiceTriggerEnabled:v74 isTextToSpeechEnabled:v75 isTriggerlessFollowup:v76 deviceRestrictions:v58.super.isa bargeInModes:v77 identifiedUser:0 encodedLocation:0 countryCode:0 siriLocale:0 contentRestrictions:0 uiScale:0 temperatureUnit:0 allowUserGeneratedContent:0 censorSpeech:0 meCard:0 deviceIdiom:v78 didPSCFire:v65];

  return v100;
}

void *sub_2B830(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5708(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2BA0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_5708(&qword_81A48, &qword_707B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2BB18(char *result, int64_t a2, char a3, char *a4)
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
    sub_5708(&qword_81B40, &qword_70918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2BC1C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_5708(&qword_81A48, &qword_707B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

Swift::Int sub_2BCA0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2C9EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2BD0C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_2BD0C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_6D60C(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_6D3BC();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2BED4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2BE04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2BE04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_6D63C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2BED4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2C764(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2C4B0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_6D63C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_6D63C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2BB18(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2BB18((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2C4B0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2C764(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2C6D8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_6D63C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2C4B0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_6D63C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_6D63C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2C6D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2C764(v3);
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

void *sub_2C778(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2C8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81B28, &qword_70910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2C948()
{
  result = qword_81B30;
  if (!qword_81B30)
  {
    sub_6BDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81B30);
  }

  return result;
}

unint64_t sub_2C9A0()
{
  result = qword_81B38;
  if (!qword_81B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_81B38);
  }

  return result;
}

uint64_t sub_2CA00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_6BF0C();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6B31C();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6BF6C();
  v25 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6C54C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v2, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == enum case for StatementOutcome.success(_:))
  {
    goto LABEL_2;
  }

  v18 = a1;
  if (v17 == enum case for StatementOutcome.snippetStream(_:))
  {
    sub_6B30C();
    return (*(v14 + 8))(v16, v13);
  }

  if (v17 == enum case for StatementOutcome.actionConfirmation(_:))
  {
LABEL_6:
    sub_6B2DC();
    return (*(v14 + 8))(v16, v13);
  }

  if (v17 == enum case for StatementOutcome.toolDisambiguation(_:) || v17 == enum case for StatementOutcome.parameterNeedsValue(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for StatementOutcome.parameterConfirmation(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for StatementOutcome.parameterDisambiguation(_:) || v17 == enum case for StatementOutcome.parameterNotAllowed(_:) || v17 == enum case for StatementOutcome.parameterCandidatesNotFound(_:) || v17 == enum case for StatementOutcome.actionRequirement(_:) || v17 == enum case for StatementOutcome.valueDisambiguation(_:))
  {
LABEL_9:
    sub_6B2EC();
    return (*(v14 + 8))(v16, v13);
  }

  if (v17 != enum case for StatementOutcome.failure(_:))
  {
LABEL_2:
    sub_6B2CC();
    return (*(v14 + 8))(v16, v13);
  }

  (*(v14 + 96))(v16, v13);
  v20 = v25 + 32;
  (*(v25 + 32))(v12, v16, v10);
  sub_6BF5C();
  v22 = v27;
  v21 = v28;
  v23 = (*(v27 + 88))(v6, v28);
  v24 = (v20 - 24);
  if (v23 == enum case for ActionFailure.Failure.noMatchingTool(_:) || v23 == enum case for ActionFailure.Failure.actionCanceled(_:))
  {
    sub_6B2CC();
    (*v24)(v12, v10);
  }

  else
  {
    sub_6B2FC();
    (*v24)(v12, v10);
    (*(v22 + 8))(v6, v21);
  }

  return (*(v26 + 32))(v18, v9, v7);
}

void *sub_2CEB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_27EB4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_27EB4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_2747C(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2CFB4()
{
  v0 = sub_6AEDC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_6D2AC();
  __chkstk_darwin(v1 - 8);
  sub_6D29C();
  sub_6AECC();
  result = sub_6D2DC();
  qword_839B8 = result;
  unk_839C0 = v3;
  return result;
}

uint64_t sub_2D0B8@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v138 = a8;
  v135 = a7;
  v137 = a6;
  v139 = a4;
  v140 = a5;
  v134 = a2;
  v144 = a1;
  v145 = a9;
  v10 = sub_5708(&qword_81B78, &qword_70948);
  __chkstk_darwin(v10 - 8);
  v120 = &v115 - v11;
  v119 = sub_6CA4C();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_6C75C();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_6C78C();
  v125 = *(v126 - 8);
  v14 = __chkstk_darwin(v126);
  v115 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v130 = &v115 - v16;
  v129 = sub_6C7AC();
  v128 = *(v129 - 8);
  v17 = __chkstk_darwin(v129);
  v116 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v127 = &v115 - v19;
  v20 = sub_5708(&qword_81B80, &qword_70950);
  __chkstk_darwin(v20 - 8);
  v22 = &v115 - v21;
  v23 = sub_6CADC();
  v141 = *(v23 - 8);
  v142 = v23;
  __chkstk_darwin(v23);
  v124 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_6C19C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_6C1BC();
  v29 = *(v143 - 8);
  __chkstk_darwin(v143);
  v31 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_6C35C();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_6CA8C();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = a3;
  if (a3)
  {
    (*(v33 + 16))(v35, v144, v32);
    v37 = (*(v33 + 88))(v35, v32);
    if (v37 == enum case for MessagePayload.actionSummaryUpdate(_:))
    {
      (*(v33 + 96))(v35, v32);
      v38 = v29;
      v39 = v143;
      (*(v29 + 32))(v31, v35, v143);
      v40 = [objc_allocWithZone(NSListFormatter) init];
      sub_6C1AC();
      v41 = sub_6C18C();
      (*(v26 + 8))(v28, v25);
      v42 = v40;
      v43 = sub_30270(v41, v42);

      __chkstk_darwin(v44);
      *(&v115 - 2) = v31;
      *(&v115 - 1) = v43;
      sub_6CAAC();

      v46 = v141;
      v45 = v142;
      if ((*(v141 + 48))(v22, 1, v142) == 1)
      {
        sub_5E20(v22, &qword_81B80, &qword_70950);
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v47 = sub_6D04C();
        sub_5CE4(v47, qword_839A0);
        v48 = sub_6D03C();
        v49 = sub_6D46C();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_0, v48, v49, "Could not build IntelligenceFlowStatusUpdateMessage from ActionSummary. Missing fields?", v50, 2u);
        }

        v51 = sub_6B1DC();
        (*(*(v51 - 8) + 56))(v145, 1, 1, v51);
        return (*(v29 + 8))(v31, v39);
      }

      v81 = *(v46 + 32);
      v82 = v124;
      v81(v124, v22, v45);
      v83 = v131;
      v81(v131, v82, v45);
      v84 = v38;
      v85 = v132;
      v86 = v133;
      (*(v132 + 104))(v83, enum case for IntelligenceFlowStatusUpdateMessage.StatusUpdate.actionSummary(_:), v133);
      v87 = (*(v84 + 8))(v31, v39);
LABEL_25:
      __chkstk_darwin(v87);
      v88 = v137;
      v89 = v138;
      *(&v115 - 8) = v135;
      *(&v115 - 7) = v89;
      *(&v115 - 6) = v88;
      v90 = v136;
      *(&v115 - 5) = v134;
      *(&v115 - 4) = v90;
      v91 = v140;
      *(&v115 - 3) = v139;
      *(&v115 - 2) = v91;
      *(&v115 - 1) = v83;
      v92 = sub_6CB6C();
      v93 = objc_allocWithZone(v92);
      v94 = sub_6CAEC();
      if (v94)
      {
        v149[3] = v92;
        v149[4] = &protocol witness table for IntelligenceFlowStatusUpdateMessage;
        v149[0] = v94;
        v148 = 0;
        v146 = 0u;
        v147 = 0u;
        v95 = v145;
        sub_6B1CC();
        v96 = sub_6B1DC();
        (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
      }

      else
      {
        v102 = sub_6B1DC();
        (*(*(v102 - 8) + 56))(v145, 1, 1, v102);
      }

      return (*(v85 + 8))(v83, v86);
    }

    if (v37 != enum case for MessagePayload.statusUpdate(_:))
    {
      v97 = sub_6B1DC();
      (*(*(v97 - 8) + 56))(v145, 1, 1, v97);
      return (*(v33 + 8))(v35, v32);
    }

    (*(v33 + 96))(v35, v32);
    v61 = v128;
    v62 = v127;
    v63 = v129;
    (*(v128 + 32))(v127, v35, v129);
    v64 = v130;
    sub_6C79C();
    v65 = v125;
    v66 = v126;
    v67 = (*(v125 + 88))(v64, v126);
    if (v67 == enum case for SessionStatusUpdate.Payload.executionProgressUpdate(_:))
    {
      (*(v65 + 96))(v64, v66);
      v68 = v122;
      v69 = v121;
      v70 = v64;
      v71 = v123;
      v72 = (*(v122 + 32))(v121, v70, v123);
      __chkstk_darwin(v72);
      *(&v115 - 2) = v69;
      v73 = v120;
      sub_6CA0C();
      v74 = v118;
      v75 = v119;
      if ((*(v118 + 48))(v73, 1, v119) != 1)
      {
        (*(v61 + 8))(v62, v63);
        v103 = *(v74 + 32);
        v104 = v117;
        v103(v117, v73, v75);
        v83 = v131;
        v103(v131, v104, v75);
        v85 = v132;
        v86 = v133;
        (*(v132 + 104))(v83, enum case for IntelligenceFlowStatusUpdateMessage.StatusUpdate.progressUpdate(_:), v133);
        v87 = (*(v68 + 8))(v69, v71);
        goto LABEL_25;
      }

      sub_5E20(v73, &qword_81B78, &qword_70948);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v76 = sub_6D04C();
      sub_5CE4(v76, qword_839A0);
      v77 = sub_6D03C();
      v78 = sub_6D46C();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_0, v77, v78, "Could not build IntelligenceFlowStatusUpdateMessage from ProgressUpdate. Missing fields?", v79, 2u);
      }

      (*(v61 + 8))(v62, v63);
      v80 = sub_6B1DC();
      (*(*(v80 - 8) + 56))(v145, 1, 1, v80);
      return (*(v68 + 8))(v69, v71);
    }

    else
    {
      if (v67 == enum case for SessionStatusUpdate.Payload.intermediateQueryResult(_:))
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v98 = sub_6D04C();
        sub_5CE4(v98, qword_839A0);
        v99 = sub_6D03C();
        v100 = sub_6D46C();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_0, v99, v100, "IntermediateQueryResult is not supported.", v101, 2u);
        }

        (*(v61 + 8))(v62, v63);
      }

      else
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v105 = sub_6D04C();
        sub_5CE4(v105, qword_839A0);
        v106 = v116;
        (*(v61 + 16))(v116, v62, v63);
        v107 = sub_6D03C();
        v108 = sub_6D46C();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v149[0] = v144;
          *v109 = 136315138;
          v110 = v106;
          v111 = v115;
          sub_6C79C();
          (*(v65 + 8))(v111, v66);
          v112 = *(v61 + 8);
          v112(v110, v63);
          *(v109 + 4) = sub_1076C(0x64616F6C796150, 0xE700000000000000, v149);
          _os_log_impl(&dword_0, v107, v108, "Unsupported message payload type %s.", v109, 0xCu);
          sub_9964(v144);

          v64 = v130;

          v112(v62, v63);
        }

        else
        {

          v113 = *(v61 + 8);
          v113(v106, v63);
          v113(v62, v63);
        }
      }

      v114 = sub_6B1DC();
      (*(*(v114 - 8) + 56))(v145, 1, 1, v114);
      return (*(v65 + 8))(v64, v66);
    }
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v53 = sub_6D04C();
    sub_5CE4(v53, qword_839A0);
    v54 = sub_6D03C();
    v55 = sub_6D46C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "RequestId not set, skipping message posting.", v56, 2u);
    }

    v57 = sub_6B1DC();
    v58 = *(*(v57 - 8) + 56);
    v59 = v57;
    v60 = v145;

    return v58(v60, 1, 1, v59);
  }
}

uint64_t sub_2E344@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v97 = a3;
  v4 = sub_6C16C();
  v5 = *(v4 - 8);
  v91 = v4;
  v92 = v5;
  v6 = __chkstk_darwin(v4);
  v86 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = (&v83 - v8);
  v9 = sub_6C14C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6C12C();
  v88 = *(v13 - 8);
  v89 = v13;
  __chkstk_darwin(v13);
  v87 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6C10C();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v84 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v90 = &v83 - v20;
  __chkstk_darwin(v19);
  v22 = &v83 - v21;
  v23 = sub_6CA9C();
  v95 = *(v23 - 8);
  v96 = v23;
  __chkstk_darwin(v23);
  v25 = (&v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1;
  v27 = a1;
  v28 = *(v16 + 16);
  v28(v22, v27, v15);
  v29 = (*(v16 + 88))(v22, v15);
  if (v29 == enum case for MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.value(_:))
  {
    (*(v16 + 96))(v22, v15);
    (*(v10 + 32))(v12, v22, v9);
    v30 = sub_6C13C();
    v32 = v31;

    (*(v16 + 8))(v26, v15);
    (*(v10 + 8))(v12, v9);
    *v25 = v30;
LABEL_6:
    v46 = &enum case for IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary.value(_:);
LABEL_7:
    v25[1] = v32;
    v48 = v95;
    v47 = v96;
    (*(v95 + 104))(v25, *v46, v96);
    v49 = v97;
    (*(v48 + 32))(v97, v25, v47);
    v50 = 0;
    return (*(v48 + 56))(v49, v50, 1, v47);
  }

  v85 = v26;
  if (v29 == enum case for MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.values(_:))
  {
    v33 = v16;
    v34 = *(v16 + 96);
    v35 = v15;
    v34(v22, v15);
    v36 = v92;
    v37 = v93;
    v38 = v91;
    (*(v92 + 32))(v93, v22, v91);
    v39 = sub_6C15C();
    sub_2CEB4(v39);

    isa = sub_6D37C().super.isa;

    v41 = v94;
    v42 = [v94 stringFromItems:isa];

    if (v42)
    {
      v43 = sub_6D2CC();
      v44 = v36;
      v32 = v45;

      (*(v33 + 8))(v85, v35);
      (*(v44 + 8))(v37, v38);
      *v25 = v43;
      goto LABEL_6;
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v69 = sub_6D04C();
    sub_5CE4(v69, qword_839A0);
    v70 = v86;
    v71 = v93;
    (*(v36 + 16))(v86, v93, v38);
    v72 = sub_6D03C();
    v73 = sub_6D46C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v98 = v88;
      *v74 = 136315138;
      sub_6C15C();
      v75 = sub_6D39C();
      v89 = v33;
      v90 = v35;
      v76 = v75;
      v77 = v38;
      v79 = v78;

      v80 = *(v92 + 8);
      v80(v70, v77);
      v81 = sub_1076C(v76, v79, &v98);

      *(v74 + 4) = v81;
      _os_log_impl(&dword_0, v72, v73, "Couldn't concatenate parameter summaries: %s", v74, 0xCu);
      sub_9964(v88);

      (*(v89 + 8))(v85, v90);
      v80(v93, v77);
    }

    else
    {

      (*(v33 + 8))(v85, v35);
      v82 = *(v36 + 8);
      v82(v70, v38);
      v82(v71, v38);
    }

    v50 = 1;
    v47 = v96;
    v49 = v97;
    v48 = v95;
  }

  else
  {
    if (v29 == enum case for MessagePayload.ActionSummaryUpdate.ToolInvocationSummary.ParameterSummary.placeholder(_:))
    {
      (*(v16 + 96))(v22, v15);
      v53 = v87;
      v52 = v88;
      v54 = v89;
      (v88[4])(v87, v22, v89);
      v55 = sub_6C11C();
      v32 = v56;

      (*(v16 + 8))(v85, v15);
      (v52[1])(v53, v54);
      *v25 = v55;
      v46 = &enum case for IntelligenceFlowStatusUpdateMessage.ActionSummary.ParameterSummary.placeholder(_:);
      goto LABEL_7;
    }

    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v57 = sub_6D04C();
    sub_5CE4(v57, qword_839A0);
    v58 = v85;
    v59 = v15;
    v28(v90, v85, v15);
    v60 = sub_6D03C();
    v61 = sub_6D46C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v98 = v93;
      *v62 = 136315138;
      LODWORD(v92) = v61;
      v63 = v90;
      v28(v84, v90, v15);
      v64 = sub_6D2EC();
      v66 = v65;
      v67 = *(v16 + 8);
      v67(v63, v15);
      v68 = sub_1076C(v64, v66, &v98);
      v59 = v15;

      *(v62 + 4) = v68;
      _os_log_impl(&dword_0, v60, v92, "Unknown ParameterSummary case: %s", v62, 0xCu);
      sub_9964(v93);

      v67(v85, v15);
    }

    else
    {

      v67 = *(v16 + 8);
      v67(v58, v15);
      v67(v90, v15);
    }

    v47 = v96;
    v49 = v97;
    v48 = v95;
    v67(v22, v59);
    v50 = 1;
  }

  return (*(v48 + 56))(v49, v50, 1, v47);
}

uint64_t sub_2ED9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_6C19C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6C1AC();
  sub_6C17C();
  (*(v4 + 8))(v6, v3);
  sub_6CABC();

  return sub_6CACC();
}

uint64_t sub_2EEA4()
{
  sub_6C74C();
  sub_6CA3C();
  sub_6C73C();
  sub_6CA2C();
  sub_6C72C();
  return sub_6CA1C();
}

uint64_t sub_2EF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a5;
  v48 = a7;
  v46 = a6;
  v49 = a3;
  v50 = a4;
  v11 = sub_6CA8C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_5708(&qword_81B68, &qword_70938);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - v16;
  v18 = sub_6CA7C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_6CA5C();
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_5E20(v17, &qword_81B68, &qword_70938);
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v22 = sub_6D04C();
      sub_5CE4(v22, qword_839A0);
      v23 = sub_6D03C();
      v24 = sub_6D46C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "Could not build IntelligenceFlowStatusUpdateMessage from StatusNotification. Missing fields?", v25, 2u);
      }

      v26 = sub_6B1DC();
      return (*(*(v26 - 8) + 56))(a8, 1, 1, v26);
    }

    else
    {
      v45 = a8;
      (*(v19 + 32))(v21, v17, v18);
      (*(v19 + 16))(v14, v21, v18);
      v34 = (*(v12 + 104))(v14, enum case for IntelligenceFlowStatusUpdateMessage.StatusUpdate.statusNotification(_:), v11);
      __chkstk_darwin(v34);
      v35 = v47;
      v36 = v48;
      *(&v45 - 8) = v46;
      *(&v45 - 7) = v36;
      *(&v45 - 6) = v35;
      *(&v45 - 5) = a1;
      v38 = v49;
      v37 = v50;
      *(&v45 - 4) = a2;
      *(&v45 - 3) = v38;
      *(&v45 - 2) = v37;
      *(&v45 - 1) = v14;
      v39 = sub_6CB6C();
      v40 = objc_allocWithZone(v39);
      v41 = sub_6CAEC();
      if (v41)
      {
        v55 = v39;
        v56 = &protocol witness table for IntelligenceFlowStatusUpdateMessage;
        v53 = 0;
        v54 = v41;
        v51 = 0u;
        v52 = 0u;
        v42 = v45;
        sub_6B1CC();
        (*(v19 + 8))(v21, v18);
        v43 = 0;
      }

      else
      {
        (*(v19 + 8))(v21, v18);
        v43 = 1;
        v42 = v45;
      }

      v44 = sub_6B1DC();
      (*(*(v44 - 8) + 56))(v42, v43, 1, v44);
      return (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v28 = sub_6D04C();
    sub_5CE4(v28, qword_839A0);
    v29 = sub_6D03C();
    v30 = sub_6D46C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "RequestId not set, skipping StatusNotificationMessage posting.", v31, 2u);
    }

    v32 = sub_6B1DC();
    v33 = *(*(v32 - 8) + 56);

    return v33(a8, 1, 1, v32);
  }
}

uint64_t sub_2F4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a7;
  v28 = a9;
  v10 = sub_5708(&qword_81B70, &qword_70940);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_5708(&qword_81B60, &qword_70930);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;

  sub_6CB0C();
  v19 = sub_6AE9C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a4, v19);
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_6CB4C();

  sub_6CB3C();

  sub_6CB1C();
  v21 = enum case for MessageSource.ifFlow(_:);
  v22 = sub_6CC2C();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v15, v21, v22);
  (*(v23 + 56))(v15, 0, 1, v22);
  sub_6CB2C();
  v24 = sub_6CA8C();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v12, v28, v24);
  (*(v25 + 56))(v12, 0, 1, v24);
  return sub_6CAFC();
}

uint64_t sub_2F7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[0] = a9;
  v25[1] = a7;
  v10 = sub_5708(&qword_81B58, qword_70A90);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = sub_5708(&qword_81B60, &qword_70930);
  __chkstk_darwin(v13 - 8);
  v15 = v25 - v14;
  v16 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v16 - 8);
  v18 = v25 - v17;

  sub_6CBBC();
  v19 = sub_6AE9C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a4, v19);
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_6CBAC();

  sub_6CB9C();
  v21 = enum case for MessageSource.ifFlow(_:);
  v22 = sub_6CC2C();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v15, v21, v22);
  (*(v23 + 56))(v15, 0, 1, v22);
  sub_6CBDC();

  sub_6CB8C();
  sub_2FA80(v25[0], v12);
  return sub_6CBCC();
}

uint64_t sub_2FA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81B58, qword_70A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2FAF0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_6AE9C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = [objc_allocWithZone(SAUIShowRequestHandlingStatus) init];
    sub_6AE8C();
    sub_6AE6C();
    (*(v6 + 8))(v8, v5);
    v10 = sub_6D2BC();

    [v9 setAceId:v10];

    v11 = v9;
    v12 = sub_6D2BC();
    [v11 setRefId:v12];

    [v11 setExecutionInputSystem:SAUIShowRequestHandlingStatusExecutionInputSystemPLANNERValue];
    sub_5708(&qword_81548, &qword_70088);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_6FFF0;
    *(v13 + 32) = v11;
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_6B86C();

    v14 = sub_6B89C();
    return (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v16 = sub_6D04C();
    sub_5CE4(v16, qword_839A0);
    v17 = sub_6D03C();
    v18 = sub_6D46C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Can't construct SAUIShowRequestHandlingStatus since execution request ID is Nil", v19, 2u);
    }

    v20 = sub_6B89C();
    v21 = *(*(v20 - 8) + 56);

    return v21(a3, 1, 1, v20);
  }
}

uint64_t sub_2FE38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_6CA9C();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_5708(qword_81B98, &qword_70968);
  v42 = v4;
  result = sub_6D5DC();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_6D6BC();
      sub_6D31C();
      result = sub_6D6DC();
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
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

uint64_t sub_301B8()
{
  if (qword_812A8 != -1)
  {
    swift_once();
  }

  return sub_6CA6C();
}

uint64_t sub_30270(uint64_t a1, void *a2)
{
  v81 = a2;
  v83 = sub_6C10C();
  v3 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5708(&qword_81B88, &qword_70958);
  __chkstk_darwin(v5 - 8);
  v7 = &v63 - v6;
  v84 = sub_6CA9C();
  v8 = *(v84 - 8);
  v9 = __chkstk_darwin(v84);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v63 - v11;
  v82 = sub_5708(&qword_81B90, &qword_70960);
  v12 = __chkstk_darwin(v82);
  v70 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = &v63 - v15;
  __chkstk_darwin(v14);
  v77 = &v63 - v17;
  v19 = a1 + 64;
  v18 = *(a1 + 64);
  v20 = 1 << *(a1 + 32);
  v71 = &_swiftEmptyDictionarySingleton;
  v86 = &_swiftEmptyDictionarySingleton;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v75 = v3 + 16;
  v73 = (v8 + 48);
  v66 = v8;
  v68 = (v8 + 32);
  v80 = v3;
  v65 = (v3 + 8);
  v85 = a1;

  v25 = 0;
  v72 = a1 + 64;
  v76 = v23;
  v78 = v7;
  v74 = v16;
  while (1)
  {
    v26 = v25;
    if (!v22)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v25 = v26;
LABEL_10:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = v27 | (v25 << 6);
      v29 = (*(v85 + 48) + 16 * v28);
      v31 = *v29;
      v30 = v29[1];
      v32 = v82;
      v33 = v83;
      v34 = *(v80 + 16);
      v35 = v77;
      v34(&v77[*(v82 + 48)], *(v85 + 56) + *(v80 + 72) * v28, v83);
      *v35 = v31;
      v35[1] = v30;
      v36 = v74;
      sub_30900(v35, v74);
      v37 = *(v32 + 48);
      v38 = v36;
      v39 = v36 + v37;
      v40 = v79;
      v34(v79, v39, v33);

      v41 = v81;
      v42 = v78;
      sub_2E344(v40, v41, v78);
      if ((*v73)(v42, 1, v84) != 1)
      {
        break;
      }

      sub_5E20(v38, &qword_81B90, &qword_70960);
      result = sub_5E20(v42, &qword_81B88, &qword_70958);
      v26 = v25;
      v19 = v72;
      v23 = v76;
      if (!v22)
      {
LABEL_7:
        while (1)
        {
          v25 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v25 >= v23)
          {

            return v71;
          }

          v22 = *(v19 + 8 * v25);
          ++v26;
          if (v22)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v43 = *v68;
    v44 = v67;
    v45 = v84;
    (*v68)(v67, v42, v84);
    sub_30900(v38, v70);
    v43(v69, v44, v45);
    v46 = v71[2];
    v23 = v76;
    if (v71[3] <= v46)
    {
      sub_2FE38(v46 + 1, 1);
    }

    v47 = v86;
    v49 = *v70;
    v48 = v70[1];
    sub_6D6BC();
    v64 = v48;
    sub_6D31C();
    result = sub_6D6DC();
    v50 = (v47 + 8);
    v71 = v47;
    v51 = -1 << *(v47 + 32);
    v52 = result & ~v51;
    v53 = v52 >> 6;
    if (((-1 << v52) & ~v47[(v52 >> 6) + 8]) == 0)
    {
      break;
    }

    v54 = __clz(__rbit64((-1 << v52) & ~v47[(v52 >> 6) + 8])) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    v59 = *(v82 + 48);
    *&v50[(v54 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v54;
    v60 = v71;
    v61 = (v71[6] + 16 * v54);
    v62 = v64;
    *v61 = v49;
    v61[1] = v62;
    v43((v60[7] + *(v66 + 72) * v54), v69, v84);
    ++v60[2];
    result = (*v65)(v70 + v59, v83);
    v19 = v72;
  }

  v55 = 0;
  v56 = (63 - v51) >> 6;
  while (++v53 != v56 || (v55 & 1) == 0)
  {
    v57 = v53 == v56;
    if (v53 == v56)
    {
      v53 = 0;
    }

    v55 |= v57;
    v58 = *&v50[8 * v53];
    if (v58 != -1)
    {
      v54 = __clz(__rbit64(~v58)) + (v53 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_30900(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81B90, &qword_70960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_30974(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_7EE58;
  v6._object = a2;
  v4 = sub_6D5FC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_309C4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 88);
    v5 = result;
    swift_getAssociatedTypeWitness();
    result = sub_6D4DC();
    if (v6 <= 0x3F)
    {
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_6D4DC();
      if (v8 <= 0x3F)
      {
        result = type metadata accessor for IFFlow.State(319, v5, v4, v7);
        if (v9 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_30BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6C35C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6AE9C();
  __chkstk_darwin(v8);
  (*(v10 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_30BD4();
  sub_6CDBC();

  (*(v5 + 16))(v7, a2, v4);
  return sub_6C7DC();
}

uint64_t sub_30D9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_30BD4();
  *a1 = result;
  return result;
}

uint64_t sub_30DEC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_5708(a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  return v5;
}

uint64_t sub_30ECC()
{
  v0 = sub_6CD7C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6CD6C();
  sub_6CD5C();
  (*(v1 + 8))(v3, v0);
  sub_6AE5C();
}

uint64_t sub_30FBC(uint64_t *a1)
{
  v63 = sub_6CFDC();
  v60 = *(v63 - 8);
  v2 = __chkstk_darwin(v63);
  v59 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v58 = v54 - v5;
  v6 = __chkstk_darwin(v4);
  v61 = v54 - v7;
  __chkstk_darwin(v6);
  v9 = v54 - v8;
  v10 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v10 - 8);
  v12 = v54 - v11;
  v13 = sub_6AE9C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30ECC();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_5E20(v12, &unk_82030, &qword_70370);
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    return swift_willThrowTypedImpl();
  }

  (*(v14 + 32))(v16, v12, v13);
  v18 = v62;
  sub_6CF3C();
  v19 = v13;
  if (!v18)
  {
    return (*(v14 + 8))(v16, v13);
  }

  v62 = v14;
  v65 = v18;
  swift_errorRetain();
  sub_5708(&qword_813D0, qword_6FC50);
  v20 = v63;
  if (swift_dynamicCast())
  {

    v21 = v60;
    v22 = v61;
    (*(v60 + 32))(v61, v9, v20);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v55 = v19;
    v23 = sub_6D04C();
    sub_5CE4(v23, qword_839A0);
    v24 = *(v21 + 16);
    v25 = v58;
    v54[1] = v21 + 16;
    v56 = v24;
    v24(v58, v22, v20);
    v26 = sub_6D03C();
    v27 = v21;
    v28 = sub_6D46C();
    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      v57 = v16;
      v30 = v29;
      v31 = swift_slowAlloc();
      v64 = v31;
      *v30 = 136315138;
      sub_4B434(&qword_81D40, &type metadata accessor for IFSessionServiceClient.RelayError, &protocol conformance descriptor for IFSessionServiceClient.RelayError);
      v32 = sub_6D66C();
      v34 = v33;
      v58 = *(v27 + 8);
      (v58)(v25, v63);
      v35 = sub_1076C(v32, v34, &v64);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_0, v26, v28, "Unable to retrieve currentSessionIdentifier with error: %s", v30, 0xCu);
      sub_9964(v31);

      v16 = v57;
      v20 = v63;
    }

    else
    {

      v58 = *(v21 + 8);
      (v58)(v25, v20);
    }

    v45 = a1;
    v46 = v27;
    v47 = v59;
    v49 = v61;
    v48 = v62;
    v56(v59, v61, v20);
    v50 = (*(v46 + 88))(v47, v20);
    if (v50 == enum case for IFSessionServiceClient.RelayError.protocolIncompatible(_:))
    {
      (*(v46 + 96))(v47, v20);
      *v45 = *v47;
      type metadata accessor for IFFlowError(0);
      swift_storeEnumTagMultiPayload();
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
      swift_willThrowTypedImpl();
    }

    else
    {
      if (v50 != enum case for IFSessionServiceClient.RelayError.companionNotFound(_:) && v50 != enum case for IFSessionServiceClient.RelayError.companionNotCapable(_:) && v50 != enum case for IFSessionServiceClient.RelayError.companionAIIsOff(_:))
      {
        sub_4B434(&qword_81D40, &type metadata accessor for IFSessionServiceClient.RelayError, &protocol conformance descriptor for IFSessionServiceClient.RelayError);
        v51 = swift_allocError();
        v56(v52, v49, v20);
        *v45 = v51;
        type metadata accessor for IFFlowError(0);
        swift_storeEnumTagMultiPayload();
        sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
        swift_willThrowTypedImpl();
        v53 = v58;
        (v58)(v49, v20);
        (*(v48 + 8))(v16, v55);
        v53(v47, v20);
      }

      type metadata accessor for IFFlowError(0);
      swift_storeEnumTagMultiPayload();
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
      swift_willThrowTypedImpl();
    }

    (v58)(v49, v20);
    (*(v48 + 8))(v16, v55);
  }

  v57 = v16;

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v36 = sub_6D04C();
  sub_5CE4(v36, qword_839A0);
  swift_errorRetain();
  v37 = sub_6D03C();
  v38 = sub_6D46C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v65 = v40;
    *v39 = 136315138;
    swift_getErrorValue();
    v41 = sub_6D66C();
    v43 = sub_1076C(v41, v42, &v65);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_0, v37, v38, "Unable to retrieve currentSessionIdentifier with error: %s", v39, 0xCu);
    sub_9964(v40);
  }

  v44 = v62;
  *a1 = v18;
  type metadata accessor for IFFlowError(0);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  swift_willThrowTypedImpl();
  return (*(v44 + 8))(v57, v19);
}

uint64_t sub_31A24()
{
  v1 = *v0;
  v54 = type metadata accessor for IFFlowError(0);
  v2 = __chkstk_darwin(v54);
  v53 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v52 = (v51 - v5);
  v6 = __chkstk_darwin(v4);
  v8 = v51 - v7;
  __chkstk_darwin(v6);
  v10 = v51 - v9;
  v12 = type metadata accessor for IFFlow.State(0, v1[10], v1[11], v11);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v51 - v17;
  v19 = v1[26];
  swift_beginAccess();
  v20 = v13;
  v21 = *(v13 + 16);
  v21(v18, v0 + v19, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_4B304(v18, v10, type metadata accessor for IFFlowError);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v24 = sub_6D04C();
    sub_5CE4(v24, qword_839A0);
    sub_4B3CC(v10, v8, type metadata accessor for IFFlowError);
    v25 = sub_6D03C();
    v26 = sub_6D46C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
      swift_allocError();
      sub_4B3CC(v8, v29, type metadata accessor for IFFlowError);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      sub_4B36C(v8, type metadata accessor for IFFlowError);
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_0, v25, v26, "%@", v27, 0xCu);
      sub_5E20(v28, &qword_81508, &unk_70260);
    }

    else
    {

      sub_4B36C(v8, type metadata accessor for IFFlowError);
    }

    sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    v23 = swift_allocError();
    sub_4B304(v10, v48, type metadata accessor for IFFlowError);
  }

  else if (EnumCaseMultiPayload == 5)
  {
    return *v18;
  }

  else
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_6D57C(57);
    v57._object = 0x800000000006F1C0;
    v57._countAndFlagsBits = 0xD000000000000037;
    sub_6D33C(v57);
    v21(v16, v0 + v19, v12);
    swift_getWitnessTable();
    v31 = sub_6D61C();
    v33 = v32;
    v34 = v13 + 8;
    v35 = *(v20 + 8);
    v35(v16, v12);
    v58._countAndFlagsBits = v31;
    v58._object = v33;
    sub_6D33C(v58);

    v36 = v56;
    v37 = v52;
    *v52 = v55;
    *(v37 + 8) = v36;
    swift_storeEnumTagMultiPayload();
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v38 = sub_6D04C();
    sub_5CE4(v38, qword_839A0);
    v39 = v53;
    sub_4B3CC(v37, v53, type metadata accessor for IFFlowError);
    v40 = sub_6D03C();
    v41 = sub_6D46C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
      swift_allocError();
      v51[1] = v34;
      v44 = v35;
      v45 = v53;
      sub_4B3CC(v53, v46, type metadata accessor for IFFlowError);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      sub_4B36C(v45, type metadata accessor for IFFlowError);
      *(v42 + 4) = v47;
      *v43 = v47;
      v35 = v44;
      _os_log_impl(&dword_0, v40, v41, "%@", v42, 0xCu);
      sub_5E20(v43, &qword_81508, &unk_70260);
    }

    else
    {

      sub_4B36C(v39, type metadata accessor for IFFlowError);
    }

    sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    v23 = swift_allocError();
    sub_4B304(v37, v49, type metadata accessor for IFFlowError);
    v35(v18, v12);
  }

  return v23;
}

uint64_t sub_321FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_6D4DC();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &AssociatedConformanceWitness - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_6D4DC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &AssociatedConformanceWitness - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &AssociatedConformanceWitness - v14;
  v16 = *(v3 + 200);
  swift_beginAccess();
  (*(v10 + 16))(v15, &v2[v16], v9);
  v17 = *(v8 - 8);
  if ((*(v17 + 48))(v15, 1, v8) != 1)
  {
    return (*(v17 + 32))(v23, v15, v8);
  }

  (*(v10 + 8))(v15, v9);
  (*(v21 + 16))(v7, &v2[*(*v2 + 192)], v22);
  result = (*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = v23;
    sub_6D43C();
    (*(v17 + 16))(v13, v19, v8);
    (*(v17 + 56))(v13, 0, 1, v8);
    swift_beginAccess();
    (*(v10 + 40))(&v2[v16], v13, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_325C0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_6D4DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 32))(&v11 - v6, a1, AssociatedTypeWitness);
  (*(v8 + 56))(v7, 0, 1, AssociatedTypeWitness);
  v9 = *(*v1 + 200);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v9, v7, v4);
  return swift_endAccess();
}

void sub_327C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for IFFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v36 - v8;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v10 = sub_6D04C();
  v11 = sub_5CE4(v10, qword_839A0);

  v12 = sub_6D03C();
  v13 = sub_6D45C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36[1] = v11;
    v15 = v14;
    v16 = swift_slowAlloc();
    v38[0] = v16;
    *v15 = 136315138;
    v17 = *(*v4 + 208);
    swift_beginAccess();
    (*(v7 + 16))(v9, v5 + v17, v6);
    swift_getWitnessTable();
    v18 = sub_6D61C();
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_1076C(v18, v20, v38);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v12, v13, "IFFlow state transitioned to %s", v15, 0xCu);
    sub_9964(v16);
  }

  v22 = *(*v5 + 208);
  swift_beginAccess();
  (*(v7 + 16))(v9, v5 + v22, v6);
  swift_getWitnessTable();
  v23 = sub_6D61C();
  v25 = v24;
  (*(v7 + 8))(v9, v6);
  v37[0] = v23;
  v37[1] = v25;
  sub_1FE68();
  v26 = sub_6D50C();

  if (!*(v26 + 16))
  {

    return;
  }

  v27 = sub_6D03C();
  v28 = sub_6D47C();

  if (!os_log_type_enabled(v27, v28))
  {

    goto LABEL_11;
  }

  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v37[0] = v30;
  *v29 = 136446210;
  if (*(v26 + 16))
  {
    v31 = v30;

    v32 = sub_6D30C();
    v34 = v33;

    v35 = sub_1076C(v32, v34, v37);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_0, v27, v28, "IFFlow state transitioned to %{public}s", v29, 0xCu);
    sub_9964(v31);

LABEL_11:

    return;
  }

  __break(1u);
}

uint64_t sub_32C6C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v4 = sub_6AE9C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for IFFlowError(0);
  v2[11] = swift_task_alloc();
  v5 = sub_6C9FC();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_6B7FC();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = sub_6B3DC();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v8 = sub_6BEEC();
  v2[21] = v8;
  v2[22] = *(v8 - 8);
  v2[23] = swift_task_alloc();
  v9 = sub_6C83C();
  v2[24] = v9;
  v2[25] = *(v9 - 8);
  v2[26] = swift_task_alloc();
  v10 = *(v3 + 80);
  v2[27] = v10;
  v11 = *(v3 + 88);
  v2[28] = v11;
  v13 = type metadata accessor for IFFlow.State(0, v10, v11, v12);
  v2[29] = v13;
  v2[30] = *(v13 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v14 = sub_6B7AC();
  v2[33] = v14;
  v2[34] = *(v14 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_33044, 0, 0);
}

uint64_t sub_33044()
{
  v120 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[5];
  v5 = sub_6D04C();
  sub_5CE4(v5, qword_839A0);
  v112 = *(v2 + 16);
  v112(v1, v4, v3);
  v6 = sub_6D03C();
  v7 = sub_6D45C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[38];
  v11 = v0[33];
  v10 = v0[34];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v119[0] = swift_slowAlloc();
    v13 = v119[0];
    *v12 = 136315138;
    sub_4B434(&qword_81768, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v14 = sub_6D61C();
    v16 = v15;
    v110 = *(v10 + 8);
    v110(v9, v11);
    v17 = sub_1076C(v14, v16, v119);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "IFFlow received input with %s", v12, 0xCu);
    sub_9964(v13);
  }

  else
  {

    v110 = *(v10 + 8);
    v110(v9, v11);
  }

  v18 = v0[32];
  v20 = v0[29];
  v19 = v0[30];
  v21 = v0[6];
  v22 = *(*v21 + 208);
  swift_beginAccess();
  (*(v19 + 16))(v18, v21 + v22, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    if (sub_C1CC())
    {
      v49 = v0[30];
      v48 = v0[31];
      v50 = v0[29];
      v112(v48, v0[5], v0[33]);
      swift_storeEnumTagMultiPayload();
      sub_4A280(v48);
      (*(v49 + 8))(v48, v50);
      goto LABEL_14;
    }

    v112(v0[36], v0[5], v0[33]);
    v73 = sub_6D03C();
    v74 = sub_6D46C();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v0[36];
    v77 = v0[33];
    if (v75)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v119[0] = v79;
      *v78 = 136315138;
      sub_4B434(&qword_81768, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v80 = sub_6D61C();
      v82 = v81;
      v110(v76, v77);
      v83 = sub_1076C(v80, v82, v119);

      *(v78 + 4) = v83;
      _os_log_impl(&dword_0, v73, v74, "IFFlow not accepting input. Unsupported parse type received: %s", v78, 0xCu);
      sub_9964(v79);
    }

    else
    {

      v110(v76, v77);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v25 = v0[32];
    v27 = v0[25];
    v26 = v0[26];
    v29 = v0[23];
    v28 = v0[24];
    v30 = v0[21];
    v31 = v0[22];
    type metadata accessor for IFFlow.PromptValue(255, v0[27], v0[28], v24);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v33 = *(TupleTypeMetadata3 + 64);
    (*(v27 + 32))(v26, v25 + *(TupleTypeMetadata3 + 48), v28);
    (*(v31 + 32))(v29, v25 + v33, v30);
    if (sub_C1CC())
    {
      v35 = v0 + 17;
      v34 = v0[17];
      v37 = v0 + 16;
      v36 = v0[16];
      v39 = v0 + 15;
      v38 = v0[15];
      sub_6B78C();
      if ((*(v36 + 88))(v34, v38) == enum case for Parse.nlRouter(_:))
      {
        v35 = v0 + 14;
        v40 = v0[14];
        v41 = v0[19];
        v42 = v0[20];
        v44 = v0[17];
        v43 = v0[18];
        v37 = v0 + 13;
        v45 = v0[13];
        v39 = v0 + 12;
        v107 = v0[12];
        (*(v0[16] + 96))(v44, v0[15]);
        (*(v41 + 32))(v42, v44, v43);
        sub_6B3BC();
        if ((*(v45 + 88))(v40, v107) == enum case for NLRoutingDecisionMessage.RoutingDecision.planner(_:))
        {
          sub_33DA4(v0[5], v0[11], v46, v47);
          v99 = v0[25];
          v98 = v0[26];
          v101 = v0[23];
          v100 = v0[24];
          v102 = v0[21];
          v103 = v0[22];
          (*(v0[19] + 8))(v0[20], v0[18]);
          (*(v103 + 8))(v101, v102);
          (*(v99 + 8))(v98, v100);
LABEL_14:
          v117 = 1;
          goto LABEL_27;
        }

        (*(v0[19] + 8))(v0[20], v0[18]);
      }

      v84 = *v39;
      v85 = *v37;
      v87 = v0[30];
      v86 = v0[31];
      v109 = v0[29];
      v111 = v0[26];
      v116 = v0[25];
      v118 = v0[24];
      v88 = v0[23];
      v114 = v0[21];
      v89 = v0[9];
      v106 = v0[22];
      v91 = v0[7];
      v90 = v0[8];
      (*(v85 + 8))(*v35, v84);
      sub_6C80C();
      v92 = sub_347D0();
      sub_34A98(v89, v88, v92, v93);

      (*(v90 + 8))(v89, v91);
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
      v94 = swift_allocError();
      *v95 = 1;
      swift_storeEnumTagMultiPayload();
      *v86 = v94;
      *(v86 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_4A280(v86);
      (*(v87 + 8))(v86, v109);
      (*(v106 + 8))(v88, v114);
      (*(v116 + 8))(v111, v118);
    }

    else
    {
      v112(v0[37], v0[5], v0[33]);
      v57 = sub_6D03C();
      v115 = sub_6D46C();
      v58 = os_log_type_enabled(v57, v115);
      v59 = v0[37];
      v60 = v0[33];
      v62 = v0[25];
      v61 = v0[26];
      v64 = v0[23];
      v63 = v0[24];
      v66 = v0[21];
      v65 = v0[22];
      if (v58)
      {
        v113 = v0[21];
        v67 = swift_slowAlloc();
        v108 = v61;
        v68 = swift_slowAlloc();
        v119[0] = v68;
        *v67 = 136315138;
        sub_4B434(&qword_81768, &type metadata accessor for Input, &protocol conformance descriptor for Input);
        v104 = v64;
        v105 = v63;
        v69 = sub_6D61C();
        v71 = v70;
        v110(v59, v60);
        v72 = sub_1076C(v69, v71, v119);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_0, v57, v115, "IFFlow not accepting input. Unsupported parse type received: %s", v67, 0xCu);
        sub_9964(v68);

        (*(v65 + 8))(v104, v113);
        (*(v62 + 8))(v108, v105);
      }

      else
      {

        v110(v59, v60);
        (*(v65 + 8))(v64, v66);
        (*(v62 + 8))(v61, v63);
      }
    }
  }

  else
  {
    v51 = sub_6D03C();
    v52 = sub_6D45C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "IFFlow can only accept input after it is first initialized. Ignoring.", v53, 2u);
    }

    v54 = v0[32];
    v55 = v0[29];
    v56 = v0[30];

    (*(v56 + 8))(v54, v55);
  }

  v117 = 0;
LABEL_27:

  v96 = v0[1];

  return v96(v117);
}

uint64_t sub_33DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v109 = a2;
  v107 = a1;
  v5 = type metadata accessor for IFFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v95 = *(v5 - 8);
  v96 = v5;
  __chkstk_darwin(v5);
  v94 = &v82 - v6;
  v7 = sub_5708(&qword_81B58, qword_70A90);
  __chkstk_darwin(v7 - 8);
  v97 = &v82 - v8;
  v9 = sub_6C35C();
  v90 = *(v9 - 8);
  v91 = v9;
  __chkstk_darwin(v9);
  v89 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6C7EC();
  v12 = *(v11 - 8);
  v92 = v11;
  v93 = v12;
  __chkstk_darwin(v11);
  v99 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_6C33C();
  v106 = *(v98 - 8);
  __chkstk_darwin(v98);
  v103 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6CFCC();
  v104 = *(v15 - 8);
  v105 = v15;
  __chkstk_darwin(v15);
  v102 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6B7FC();
  v18 = *(v17 - 8);
  v100 = v17;
  v101 = v18;
  __chkstk_darwin(v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_5708(&qword_81588, &qword_700C0);
  __chkstk_darwin(v21 - 8);
  v23 = &v82 - v22;
  v24 = type metadata accessor for IFFlowError(0);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = (&v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v29 = (&v82 - v28);
  v30 = sub_6AE9C();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v108;
  sub_30FBC(v29);
  v35 = v109;
  if (v34)
  {
    return sub_4B304(v29, v35, type metadata accessor for IFFlowError);
  }

  v82 = v20;
  v83 = v27;
  v36 = v100;
  v87 = v33;
  v84 = v31;
  v88 = v30;
  v108 = v23;
  v85 = 0;
  sub_30BD4();
  v37 = sub_6CDFC();

  v86 = v4;
  if (v37)
  {
    v38 = v108;
    sub_274A4(v37, v108);
    v39 = 0;
    v40 = v106;
  }

  else
  {
    v39 = 1;
    v40 = v106;
    v38 = v108;
  }

  v41 = v88;
  v42 = v36;
  v43 = v101;
  v44 = v82;
  v45 = sub_6C04C();
  (*(*(v45 - 8) + 56))(v38, v39, 1, v45);
  sub_6B78C();
  v46 = sub_4A3DC(v44);
  (*(v43 + 8))(v44, v42);
  v47 = v102;
  v48 = v87;
  LODWORD(v101) = v46;
  sub_3556C(v46, v102);
  v49 = v103;
  v50 = v85;
  v29 = v83;
  sub_C818(v38, v47, v83, v103);
  if (v50)
  {
    (*(v104 + 8))(v47, v105);
    sub_5E20(v38, &qword_81588, &qword_700C0);
    (*(v84 + 8))(v48, v41);
    v35 = v109;
    return sub_4B304(v29, v35, type metadata accessor for IFFlowError);
  }

  v52 = v89;
  (*(v40 + 16))(v89, v49, v98);
  v54 = v90;
  v53 = v91;
  (*(v90 + 104))(v52, enum case for MessagePayload.request(_:), v91);
  v55 = v99;
  sub_30BF8(v48, v52);
  (*(v54 + 8))(v52, v53);
  sub_5468(v97);
  sub_4AADC();
  v56 = sub_6AE6C();
  v58 = v57;
  v59 = sub_30BD4();
  v60 = sub_30DC8();
  v61 = sub_2ABCC(v56, v58, v59, v60, v101);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v62 = sub_6D04C();
  sub_5CE4(v62, qword_839A0);
  v63 = v61;
  v64 = sub_6D03C();
  v65 = sub_6D45C();

  v66 = os_log_type_enabled(v64, v65);
  v67 = v93;
  if (v66)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    *(v68 + 4) = v63;
    *v69 = v63;
    v70 = v63;
    _os_log_impl(&dword_0, v64, v65, "BMSiriRequestContext event = %@. Going to send this to the Biome Siri Orchestration stream.", v68, 0xCu);
    sub_5E20(v69, &qword_81508, &unk_70260);

    v55 = v99;
  }

  v71 = v86;
  [*(v86 + 136) sendEvent:v63];
  v72 = *(sub_5708(&qword_81788, &qword_70380) + 48);
  v73 = *(v67 + 16);
  v74 = v67;
  v75 = v94;
  v76 = v92;
  v73(v94, v55, v92);
  v77 = v97;
  sub_C14C(v97, v75 + v72, &qword_81B58, qword_70A90);
  v78 = v96;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v75);
  (*(v95 + 8))(v75, v78);
  v79 = sub_347D0();
  v81 = v80;

  sub_5E20(v77, &qword_81B58, qword_70A90);
  (*(v74 + 8))(v99, v76);
  (*(v106 + 8))(v103, v98);
  (*(v104 + 8))(v102, v105);
  sub_5E20(v108, &qword_81588, &qword_700C0);
  (*(v84 + 8))(v87, v88);
  *(v71 + 200) = v79;
  *(v71 + 208) = v81;
}

uint64_t sub_347D0()
{
  v0 = sub_6B3AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6B7FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6B3DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B78C();
  if ((*(v5 + 88))(v7, v4) == enum case for Parse.nlRouter(_:))
  {
    (*(v5 + 96))(v7, v4);
    (*(v9 + 32))(v11, v7, v8);
    sub_6B3CC();
    (*(v9 + 8))(v11, v8);
    if ((*(v1 + 88))(v3, v0) == enum case for NLRouterParse.InputCandidate.text(_:))
    {
      (*(v1 + 96))(v3, v0);
      return *v3;
    }

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  return 0;
}

uint64_t sub_34A98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v81 = a4;
  v78 = a2;
  v79 = a3;
  v76 = a1;
  v89 = *v4;
  v5 = sub_6C35C();
  v85 = *(v5 - 8);
  v86 = v5;
  __chkstk_darwin(v5);
  v83 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6C7EC();
  v87 = *(v7 - 8);
  v88 = v7;
  __chkstk_darwin(v7);
  v84 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_6CFCC();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5708(&qword_81770, &unk_70F70);
  __chkstk_darwin(v10 - 8);
  v70 = &v63 - v11;
  v69 = sub_6BEEC();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_6C86C();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6C89C();
  v72 = *(v15 - 8);
  v73 = v15;
  __chkstk_darwin(v15);
  v71 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6C33C();
  v75 = *(v17 - 8);
  __chkstk_darwin(v17);
  v74 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for IFFlowError(0);
  __chkstk_darwin(v19 - 8);
  v21 = (&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_5708(&unk_82030, &qword_70370);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v63 - v26;
  v28 = sub_6AE9C();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v90 = &v63 - v33;
  sub_30FBC(v21);
  v64 = v17;
  v34 = *(v29 + 56);
  v34(v27, 0, 1, v28);
  (*(v29 + 32))(v90, v27, v28);
  v63 = v25;
  v34(v25, 1, 1, v28);
  (*(v29 + 16))(v32, v76, v28);
  sub_6C88C();
  (*(v65 + 104))(v14, enum case for SystemPromptResolution.UserAction.actionCanceled(_:), v66);
  v35 = *(v68 + 16);
  v76 = 0;
  v35(v67, v78, v69);

  v36 = v70;
  sub_6C0CC();
  v37 = enum case for SystemPromptResolution.ResolutionInput.text(_:);
  v38 = sub_6C85C();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v36, v37, v38);
  (*(v39 + 56))(v36, 0, 1, v38);
  v40 = v71;
  sub_6C87C();
  v41 = v77;
  v42 = v90;
  sub_3556C(2, v77);
  v43 = v74;
  sub_A17C(v40, v41);
  (*(v80 + 8))(v41, v82);
  (*(v72 + 8))(v40, v73);
  v44 = v75;
  v45 = v83;
  (*(v75 + 16))(v83, v43, v64);
  v47 = v85;
  v46 = v86;
  (*(v85 + 104))(v45, enum case for MessagePayload.request(_:), v86);
  v48 = v84;
  sub_30BF8(v42, v45);
  (*(v47 + 8))(v45, v46);
  v49 = v76;
  sub_6CF4C();
  v50 = v44;
  v51 = v43;
  if (v49)
  {
    v52 = v64;
    (*(v87 + 8))(v48, v88);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v53 = sub_6D04C();
    sub_5CE4(v53, qword_839A0);
    swift_errorRetain();
    v54 = sub_6D03C();
    v55 = sub_6D46C();

    v56 = v29;
    v57 = v52;
    if (os_log_type_enabled(v54, v55))
    {
      v58 = swift_slowAlloc();
      v59 = v51;
      v60 = swift_slowAlloc();
      *v58 = 138412290;
      swift_errorRetain();
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 4) = v61;
      *v60 = v61;
      _os_log_impl(&dword_0, v54, v55, "Error attempting to cancel current execution with IF. %@", v58, 0xCu);
      sub_5E20(v60, &qword_81508, &unk_70260);

      (*(v50 + 8))(v59, v57);
    }

    else
    {

      (*(v50 + 8))(v51, v52);
    }

    return (*(v56 + 8))(v90, v28);
  }

  else
  {
    (*(v87 + 8))(v48, v88);
    (*(v44 + 8))(v43, v64);
    return (*(v29 + 8))(v90, v28);
  }
}

uint64_t sub_3556C@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v3 = a2;
  v5 = sub_6AE6C();
  v7 = v6;
  v8 = sub_30BD4();
  v9 = sub_30DC8();

  return sub_69DC4(v5, v7, v8, v9, v3, x8_0);
}

uint64_t sub_355F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v6[2] = a1;
  v6[3] = v4;
  v8 = type metadata accessor for IFFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = type metadata accessor for IFFlowError(0);
  v6[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[9] = v9;
  v6[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[11] = v10;
  *v10 = v6;
  v10[1] = sub_35774;

  return sub_35D00(a1, v9);
}

uint64_t sub_35774()
{

  if (v0)
  {
    v1 = sub_3590C;
  }

  else
  {
    v1 = sub_35884;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_35884()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3590C()
{
  sub_4B304(v0[9], v0[10], type metadata accessor for IFFlowError);
  if (swift_getEnumCaseMultiPayload() == 22)
  {
    v1 = swift_task_alloc();
    v0[12] = v1;
    *v1 = v0;
    v1[1] = sub_35B00;

    return sub_3BEF0();
  }

  else
  {
    v3 = v0[10];
    v4 = v0[8];
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    sub_4B3CC(v3, v4, type metadata accessor for IFFlowError);
    sub_4B3CC(v4, v5, type metadata accessor for IFFlowError);
    swift_storeEnumTagMultiPayload();
    sub_4A280(v5);
    (*(v6 + 8))(v5, v7);
    sub_6B45C();
    sub_4B36C(v4, type metadata accessor for IFFlowError);
    sub_4B36C(v3, type metadata accessor for IFFlowError);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_35B00()
{

  return _swift_task_switch(sub_35BFC, 0, 0);
}

uint64_t sub_35BFC()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_4A280(v2);
  (*(v4 + 8))(v2, v3);
  sub_6B45C();
  sub_4B36C(v1, type metadata accessor for IFFlowError);

  v5 = v0[1];

  return v5();
}

uint64_t sub_35D00(uint64_t a1, uint64_t a2)
{
  v3[36] = v2;
  v3[37] = a2;
  v3[35] = a1;
  v4 = *v2;
  type metadata accessor for LocationRequest(0);
  v3[38] = swift_task_alloc();
  v3[39] = sub_6C35C();
  v3[40] = swift_task_alloc();
  v5 = sub_6C83C();
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  sub_5708(&qword_81B08, &qword_708D8);
  v3[49] = swift_task_alloc();
  v6 = sub_6B89C();
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v7 = sub_6CD3C();
  v3[53] = v7;
  v3[54] = *(v7 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = sub_5708(&qword_81D48, &unk_70D10);
  v3[57] = swift_task_alloc();
  sub_5708(&qword_814F0, &qword_71350);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v8 = sub_6CD0C();
  v3[61] = v8;
  v3[62] = *(v8 - 8);
  v3[63] = swift_task_alloc();
  v9 = sub_6CC0C();
  v3[64] = v9;
  v3[65] = *(v9 - 8);
  v3[66] = swift_task_alloc();
  sub_5708(&unk_82030, &qword_70370);
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v10 = sub_6AE9C();
  v3[69] = v10;
  v3[70] = *(v10 - 8);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  sub_5708(&qword_81D50, &qword_70D20);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v11 = sub_6B1DC();
  v3[76] = v11;
  v3[77] = *(v11 - 8);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  sub_5708(&qword_81B58, qword_70A90);
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v12 = sub_6C7EC();
  v3[84] = v12;
  v3[85] = *(v12 - 8);
  v3[86] = swift_task_alloc();
  v3[87] = type metadata accessor for IFFlowError(0);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v13 = sub_6B7AC();
  v3[97] = v13;
  v3[98] = *(v13 - 8);
  v3[99] = swift_task_alloc();
  v14 = *(v4 + 80);
  v3[100] = v14;
  v15 = *(v4 + 88);
  v3[101] = v15;
  v17 = type metadata accessor for IFFlow.State(0, v14, v15, v16);
  v3[102] = v17;
  v3[103] = *(v17 - 8);
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();

  return _swift_task_switch(sub_3643C, 0, 0);
}

uint64_t sub_3643C()
{
  v236 = v0;
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  v0[106] = sub_5CE4(v1, qword_839A0);

  v2 = sub_6D03C();
  v3 = sub_6D45C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[105];
    v5 = v0[103];
    v6 = v0[102];
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v235[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1076C(0x657475636578655FLL, 0xEA00000000002928, v235);
    *(v8 + 12) = 2080;
    v9 = *(*v7 + 208);
    swift_beginAccess();
    (*(v5 + 16))(v4, v7 + v9, v6);
    v10 = sub_48EAC(v6);
    v12 = v11;

    (*(v5 + 8))(v4, v6);
    v13 = sub_1076C(v10, v12, v235);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_0, v2, v3, "%s called for IFFlowPlugin with state - %s ", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = v0[104];
  v15 = v0[103];
  v16 = v0[102];
  v17 = v0[36];
  v18 = *(*v17 + 208);
  swift_beginAccess();
  (*(v15 + 16))(v14, v17 + v18, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v32 = v0[104];
        v33 = v0[41];
        v34 = v0[42];
        v35 = v0[37];
        type metadata accessor for IFFlow.PromptValue(255, v0[100], v0[101], v20);
        v36 = sub_6BEEC();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v38 = *(TupleTypeMetadata3 + 48);
        v39 = *(TupleTypeMetadata3 + 64);
        *v35 = 0xD00000000000004ELL;
        v35[1] = 0x800000000006F200;
        swift_storeEnumTagMultiPayload();
        sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
        swift_willThrowTypedImpl();
        (*(*(v36 - 8) + 8))(v32 + v39, v36);
        (*(v34 + 8))(v32 + v38, v33);
      }

      else
      {
        v47 = v0[38];
        sub_4B304(v0[104], v47, type metadata accessor for LocationRequest);
        sub_66AF4(v47);
        sub_4B36C(v0[38], type metadata accessor for LocationRequest);
      }

LABEL_33:

      v70 = v0[1];

      return v70();
    }

    if (!EnumCaseMultiPayload)
    {
      v21 = v0[99];
      v22 = v0[95];
      (*(v0[98] + 32))(v21, v0[104], v0[97]);
      sub_33DA4(v21, v22, v23, v24);
      v25 = v0[99];
      v26 = v0[98];
      v27 = v0[97];
      sub_6B45C();
      (*(v26 + 8))(v25, v27);
      goto LABEL_33;
    }

    v41 = v0[104];
    v42 = v0[86];
    v43 = v0[85];
    v44 = v0[84];
    v45 = v0[83];
    v46 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    (*(v43 + 32))(v42, v41, v44);
    sub_201AC(v41 + v46, v45, &qword_81B58, qword_70A90);
    sub_6CF4C();
    v51 = sub_6D03C();
    v52 = sub_6D47C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "sent message to IFClient, logging IntelligenceFlowQuerySent message", v53, 2u);
    }

    v54 = v0[105];
    v55 = v0[103];
    v56 = v0[102];

    sub_3C8E8();
    swift_storeEnumTagMultiPayload();
    sub_4A280(v54);
    (*(v55 + 8))(v54, v56);
    sub_30BD4();
    v218 = sub_6CDCC();
    v58 = v57;

    sub_30BD4();
    v221 = sub_6CDBC();
    v60 = v59;

    sub_30BD4();
    v226 = sub_6CE5C();
    v62 = v61;

    sub_30BD4();
    v63 = sub_6CE4C();
    v65 = v64;

    if (v58)
    {
      if (v60 && v62)
      {
        v66 = v0[70];
        v67 = v0[69];
        v68 = v0[68];
        sub_6AE5C();
        if ((*(v66 + 48))(v68, 1, v67) != 1)
        {
          v129 = v0[83];
          v130 = v0[73];
          (*(v0[70] + 32))(v130, v0[68], v0[69]);
          v131 = swift_task_alloc();
          v131[2] = v63;
          v131[3] = v65;
          v131[4] = v130;
          v131[5] = v218;
          v131[6] = v58;
          v131[7] = v221;
          v131[8] = v60;
          v131[9] = v129;
          v132 = objc_allocWithZone(sub_6CBEC());
          v133 = sub_6CB7C();

          if (v133)
          {
            memset(v235, 0, 40);
            sub_6B1CC();
            v134 = 0;
          }

          else
          {
            v134 = 1;
          }

          v165 = v0[73];
          v166 = v0[70];
          v167 = v0[69];
          (*(v0[77] + 56))(v0[75], v134, 1, v0[76]);
          (*(v166 + 8))(v165, v167);
          goto LABEL_55;
        }

        sub_5E20(v0[68], &unk_82030, &qword_70370);
      }

      v69 = v58;
    }

    else
    {
      v69 = 0xE600000000000000;
    }

    v71 = sub_6D03C();
    v72 = sub_6D46C();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v235[0] = swift_slowAlloc();
      *v73 = 136315650;
      if (v58)
      {
        v74 = v218;
      }

      else
      {
        v74 = 0x3E6C6C756E3CLL;
      }

      v75 = sub_1076C(v74, v69, v235);

      *(v73 + 4) = v75;
      *(v73 + 12) = 2080;
      if (v60)
      {
        v76 = v221;
      }

      else
      {
        v76 = 0x3E6C6C756E3CLL;
      }

      if (v60)
      {
        v77 = v60;
      }

      else
      {
        v77 = 0xE600000000000000;
      }

      v78 = sub_1076C(v76, v77, v235);

      *(v73 + 14) = v78;
      *(v73 + 22) = 2080;
      if (v62)
      {
        v79 = v226;
      }

      else
      {
        v79 = 0x3E6C6C756E3CLL;
      }

      if (v62)
      {
        v80 = v62;
      }

      else
      {
        v80 = 0xE600000000000000;
      }

      v81 = sub_1076C(v79, v80, v235);

      *(v73 + 24) = v81;
      _os_log_impl(&dword_0, v71, v72, "Can't construct IntelligenceFlowTraceIdGeneratedMessage from executionRequestId: %s, traceId: %s, sessionId: %s", v73, 0x20u);
      swift_arrayDestroy();
    }

    (*(v0[77] + 56))(v0[75], 1, 1, v0[76]);
LABEL_55:

    v82 = v0[77];
    v83 = v0[76];
    v84 = v0[75];

    v85 = *(v82 + 48);
    v0[107] = v85;
    v0[108] = (v82 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v85(v84, 1, v83) != 1)
    {
      v91 = v0[81];
      v92 = v0[80];
      v93 = v0[77];
      v94 = v0[76];
      (*(v93 + 32))(v91, v0[75], v94);
      v95 = *(v93 + 16);
      v95(v92, v91, v94);
      v96 = sub_6D03C();
      v97 = sub_6D45C();
      v98 = os_log_type_enabled(v96, v97);
      v99 = v0[80];
      v100 = v0[77];
      v101 = v0[76];
      if (v98)
      {
        v102 = v0[66];
        v231 = v0[76];
        v103 = v0[65];
        v227 = v0[64];
        buf = swift_slowAlloc();
        v219 = swift_slowAlloc();
        *buf = 138412290;
        v222 = v96;
        sub_6B1BC();
        sub_99FC(v0 + 22, v0[25]);
        sub_6CC1C();
        v104 = sub_6CBFC();
        (*(v103 + 8))(v102, v227);
        v105 = *(v100 + 8);
        v105(v99, v231);
        sub_9964(v0 + 22);
        *(buf + 4) = v104;
        *v219 = v104;
        _os_log_impl(&dword_0, v222, v97, "Posting %@", buf, 0xCu);
        sub_5E20(v219, &qword_81508, &unk_70260);
      }

      else
      {

        v105 = *(v100 + 8);
        v105(v99, v101);
      }

      v0[109] = v105;
      v119 = v0[81];
      v120 = v0[76];
      v121 = v0[36];
      v122 = v121[10];
      v123 = v121[11];
      sub_99FC(v121 + 7, v122);
      v0[20] = v120;
      v0[21] = &protocol witness table for FlowMessageTransportableOutput;
      v124 = sub_97B0(v0 + 17);
      v95(v124, v119, v120);
      v125 = swift_task_alloc();
      v0[110] = v125;
      *v125 = v0;
      v125[1] = sub_385F8;
      v126 = v0 + 17;
      goto LABEL_66;
    }

    sub_5E20(v0[75], &qword_81D50, &qword_70D20);
    v86 = v0[82];
    sub_C14C(v0[83], v86, &qword_81B58, qword_70A90);
    v87 = sub_6CD2C();
    v88 = *(v87 - 8);
    v89 = (*(v88 + 48))(v86, 1, v87);
    v90 = v0[82];
    if (v89 == 1)
    {
      sub_5E20(v90, &qword_81B58, qword_70A90);
LABEL_74:
      v142 = sub_6D03C();
      v143 = sub_6D45C();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_0, v142, v143, "Unable to contruct StatusNotification to update UI, maybe some fields are missing.", v144, 2u);
      }

      goto LABEL_77;
    }

    v106 = (*(v88 + 88))(v90, v87);
    v107 = v0[82];
    if (v106 != enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:))
    {
      (*(v88 + 8))(v0[82], v87);
      goto LABEL_74;
    }

    v108 = v0[62];
    v109 = v0[63];
    v111 = v0[60];
    v110 = v0[61];
    v112 = v0[57];
    v228 = v0[59];
    v232 = v0[56];
    v113 = v0[54];
    v223 = v0[53];
    (*(v88 + 96))(v107, v87);
    (*(v108 + 32))(v109, v107, v110);
    v114 = v112;
    sub_6CCFC();
    (*(v113 + 56))(v228, 1, 1, v223);
    v115 = *(v232 + 48);
    sub_C14C(v111, v112, &qword_814F0, &qword_71350);
    sub_C14C(v228, v112 + v115, &qword_814F0, &qword_71350);
    v116 = *(v113 + 48);
    if (v116(v114, 1, v223) == 1)
    {
      v117 = v0[60];
      v118 = v0[53];
      sub_5E20(v0[59], &qword_814F0, &qword_71350);
      sub_5E20(v117, &qword_814F0, &qword_71350);
      if (v116(v114 + v115, 1, v118) == 1)
      {
        sub_5E20(v0[57], &qword_814F0, &qword_71350);
        goto LABEL_88;
      }
    }

    else
    {
      v135 = v0[53];
      sub_C14C(v0[57], v0[58], &qword_814F0, &qword_71350);
      v136 = v116(v114 + v115, 1, v135);
      v137 = v0[59];
      v138 = v0[60];
      v139 = v0[58];
      if (v136 != 1)
      {
        v233 = v0[57];
        v168 = v0[54];
        v169 = v0[55];
        v170 = v0[53];
        (*(v168 + 32))(v169, v114 + v115, v170);
        sub_4B434(&qword_81500, &type metadata accessor for RequestSummary.PrescribedGenAITool, &protocol conformance descriptor for RequestSummary.PrescribedGenAITool);
        v171 = sub_6D28C();
        v172 = *(v168 + 8);
        v172(v169, v170);
        sub_5E20(v137, &qword_814F0, &qword_71350);
        sub_5E20(v138, &qword_814F0, &qword_71350);
        v172(v139, v170);
        sub_5E20(v233, &qword_814F0, &qword_71350);
        if (v171)
        {
LABEL_88:
          sub_30BD4();
          v173 = sub_6CDBC();
          v175 = v174;

          if (v175)
          {
            sub_30BD4();
            sub_6CE5C();
            v177 = v176;

            if (v177)
            {
              v178 = v0[70];
              v179 = v0[69];
              v180 = v0[67];
              sub_6AE5C();

              if ((*(v178 + 48))(v180, 1, v179) == 1)
              {
                v181 = v0[67];
                (*(v0[62] + 8))(v0[63], v0[61]);

                v182 = &unk_82030;
                v183 = &qword_70370;
LABEL_96:
                sub_5E20(v181, v182, v183);
                goto LABEL_77;
              }

              v229 = v0[107];
              v224 = v0[76];
              v184 = v0[74];
              v185 = v0[72];
              (*(v0[70] + 32))(v185, v0[67], v0[69]);
              v186 = sub_3CC8C(&CurrentRequest.executionRequestId.getter);
              v188 = v187;
              sub_30BD4();
              v189 = sub_6CE4C();
              v191 = v190;

              sub_2EF18(v186, v188, v173, v175, v185, v189, v191, v184);

              if (v229(v184, 1, v224) == 1)
              {
                v181 = v0[74];
                v193 = v0[62];
                v192 = v0[63];
                v194 = v0[61];
                (*(v0[70] + 8))(v0[72], v0[69]);
                (*(v193 + 8))(v192, v194);
                v182 = &qword_81D50;
                v183 = &qword_70D20;
                goto LABEL_96;
              }

              v195 = v0[79];
              v196 = v0[78];
              v197 = v0[77];
              v198 = v0[76];
              (*(v197 + 32))(v195, v0[74], v198);
              v199 = *(v197 + 16);
              v199(v196, v195, v198);
              v200 = sub_6D03C();
              v234 = sub_6D45C();
              v201 = os_log_type_enabled(v200, v234);
              v202 = v0[78];
              v203 = v0[77];
              v204 = v0[76];
              if (v201)
              {
                v230 = v199;
                v205 = v0[66];
                v206 = v0[65];
                v225 = v0[64];
                v217 = swift_slowAlloc();
                v220 = swift_slowAlloc();
                *v217 = 138412290;
                bufa = v204;
                sub_6B1BC();
                sub_99FC(v0 + 12, v0[15]);
                sub_6CC1C();
                v207 = sub_6CBFC();
                v208 = v205;
                v199 = v230;
                (*(v206 + 8))(v208, v225);
                v209 = *(v203 + 8);
                v209(v202, bufa);
                sub_9964(v0 + 12);
                *(v217 + 4) = v207;
                *v220 = v207;
                _os_log_impl(&dword_0, v200, v234, "Posting StatusNotification: %@", v217, 0xCu);
                sub_5E20(v220, &qword_81508, &unk_70260);
              }

              else
              {

                v209 = *(v203 + 8);
                v209(v202, v204);
              }

              v0[112] = v209;
              v210 = v0[79];
              v211 = v0[76];
              v212 = v0[36];
              v122 = v212[10];
              v123 = v212[11];
              sub_99FC(v212 + 7, v122);
              v0[10] = v211;
              v0[11] = &protocol witness table for FlowMessageTransportableOutput;
              v213 = sub_97B0(v0 + 7);
              v199(v213, v210, v211);
              v214 = swift_task_alloc();
              v0[113] = v214;
              *v214 = v0;
              v214[1] = sub_398A8;
              v126 = v0 + 7;
LABEL_66:
              v127 = v122;
              v128 = v123;
LABEL_82:

              return dispatch thunk of OutputPublisherAsync.publish(output:)(v126, v127, v128);
            }

            (*(v0[62] + 8))(v0[63], v0[61]);
          }

          else
          {
            (*(v0[62] + 8))(v0[63], v0[61]);
          }

LABEL_77:
          v145 = v0[50];
          v146 = v0[51];
          v147 = v0[49];
          sub_30BD4();
          sub_6CDCC();
          v149 = v148;

          sub_2FAF0(v149, v147);

          if ((*(v146 + 48))(v147, 1, v145) == 1)
          {
            sub_5E20(v0[49], &qword_81B08, &qword_708D8);
            v150 = v0[86];
            v151 = v0[85];
            v152 = v0[84];
            v153 = v0[83];
            sub_6B44C();
            sub_5E20(v153, &qword_81B58, qword_70A90);
            (*(v151 + 8))(v150, v152);
            goto LABEL_33;
          }

          (*(v0[51] + 32))(v0[52], v0[49], v0[50]);
          v154 = sub_6D03C();
          v155 = sub_6D45C();
          if (os_log_type_enabled(v154, v155))
          {
            v156 = swift_slowAlloc();
            *v156 = 0;
            _os_log_impl(&dword_0, v154, v155, "Posting SAUIShowRequestHandlingStatus message with execution source PLANNER", v156, 2u);
          }

          v158 = v0[51];
          v157 = v0[52];
          v159 = v0[50];
          v160 = v0[36];

          v161 = v160[10];
          v162 = v160[11];
          sub_99FC(v160 + 7, v161);
          v0[5] = v159;
          v0[6] = &protocol witness table for AceOutput;
          v163 = sub_97B0(v0 + 2);
          (*(v158 + 16))(v163, v157, v159);
          v164 = swift_task_alloc();
          v0[115] = v164;
          *v164 = v0;
          v164[1] = sub_3A2D4;
          v126 = v0 + 2;
          v127 = v161;
          v128 = v162;
          goto LABEL_82;
        }

LABEL_73:
        (*(v0[62] + 8))(v0[63], v0[61]);
        goto LABEL_74;
      }

      v140 = v0[53];
      v141 = v0[54];
      sub_5E20(v0[59], &qword_814F0, &qword_71350);
      sub_5E20(v138, &qword_814F0, &qword_71350);
      (*(v141 + 8))(v139, v140);
    }

    sub_5E20(v0[57], &qword_81D48, &unk_70D10);
    goto LABEL_73;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v40 = v0[37];
      *v40 = 0xD00000000000005CLL;
      v40[1] = 0x800000000006F250;
      swift_storeEnumTagMultiPayload();
      sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
      swift_willThrowTypedImpl();
      goto LABEL_33;
    }

    v48 = swift_task_alloc();
    v0[117] = v48;
    *v48 = v0;
    v48[1] = sub_3AA80;
    v49 = v0[91];
    v50 = v0[48];

    return sub_3DEF8(v50, v49);
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      (*(v0[103] + 8))(v0[104], v0[102]);
      sub_6B49C();
      goto LABEL_33;
    }

    sub_4B304(v0[104], v0[88], type metadata accessor for IFFlowError);
    v28 = swift_task_alloc();
    v0[120] = v28;
    *v28 = v0;
    v28[1] = sub_3B570;
    v29 = v0[88];
    v30 = v0[35];

    return sub_5F98(v30, v29);
  }
}

uint64_t sub_385F8()
{
  *(*v1 + 888) = v0;

  if (v0)
  {
    v2 = sub_39524;
  }

  else
  {
    v2 = sub_3870C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3870C()
{
  v1 = v0[109];
  v2 = v0[81];
  v3 = v0[76];
  sub_9964(v0 + 17);
  v1(v2, v3);
  v4 = v0[82];
  sub_C14C(v0[83], v4, &qword_81B58, qword_70A90);
  v5 = sub_6CD2C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[82];
  if (v7 == 1)
  {
    sub_5E20(v8, &qword_81B58, qword_70A90);
LABEL_12:
    v29 = sub_6D03C();
    v30 = sub_6D45C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "Unable to contruct StatusNotification to update UI, maybe some fields are missing.", v31, 2u);
    }

    goto LABEL_15;
  }

  v9 = (*(v6 + 88))(v8, v5);
  v10 = v0[82];
  if (v9 != enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:))
  {
    (*(v6 + 8))(v0[82], v5);
    goto LABEL_12;
  }

  v11 = v0[62];
  v12 = v0[63];
  v14 = v0[60];
  v13 = v0[61];
  v15 = v0[57];
  v113 = v0[59];
  v116 = v0[56];
  v16 = v0[54];
  v110 = v0[53];
  (*(v6 + 96))(v10, v5);
  (*(v11 + 32))(v12, v10, v13);
  v17 = v15;
  sub_6CCFC();
  (*(v16 + 56))(v113, 1, 1, v110);
  v18 = *(v116 + 48);
  sub_C14C(v14, v15, &qword_814F0, &qword_71350);
  sub_C14C(v113, v15 + v18, &qword_814F0, &qword_71350);
  v19 = *(v16 + 48);
  if (v19(v17, 1, v110) == 1)
  {
    v20 = v0[60];
    v21 = v0[53];
    sub_5E20(v0[59], &qword_814F0, &qword_71350);
    sub_5E20(v20, &qword_814F0, &qword_71350);
    if (v19(v17 + v18, 1, v21) == 1)
    {
      sub_5E20(v0[57], &qword_814F0, &qword_71350);
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v22 = v0[53];
  sub_C14C(v0[57], v0[58], &qword_814F0, &qword_71350);
  v23 = v19(v17 + v18, 1, v22);
  v24 = v0[59];
  v25 = v0[60];
  v26 = v0[58];
  if (v23 == 1)
  {
    v27 = v0[53];
    v28 = v0[54];
    sub_5E20(v0[59], &qword_814F0, &qword_71350);
    sub_5E20(v25, &qword_814F0, &qword_71350);
    (*(v28 + 8))(v26, v27);
LABEL_10:
    sub_5E20(v0[57], &qword_81D48, &unk_70D10);
LABEL_11:
    (*(v0[62] + 8))(v0[63], v0[61]);
    goto LABEL_12;
  }

  v117 = v0[57];
  v57 = v0[54];
  v58 = v0[55];
  v59 = v0[53];
  (*(v57 + 32))(v58, v17 + v18, v59);
  sub_4B434(&qword_81500, &type metadata accessor for RequestSummary.PrescribedGenAITool, &protocol conformance descriptor for RequestSummary.PrescribedGenAITool);
  v60 = sub_6D28C();
  v61 = *(v57 + 8);
  v61(v58, v59);
  sub_5E20(v24, &qword_814F0, &qword_71350);
  sub_5E20(v25, &qword_814F0, &qword_71350);
  v61(v26, v59);
  sub_5E20(v117, &qword_814F0, &qword_71350);
  if ((v60 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  sub_30BD4();
  v62 = sub_6CDBC();
  v64 = v63;

  if (v64)
  {
    sub_30BD4();
    sub_6CE5C();
    v66 = v65;

    if (v66)
    {
      v67 = v0[70];
      v68 = v0[69];
      v69 = v0[67];
      sub_6AE5C();

      if ((*(v67 + 48))(v69, 1, v68) == 1)
      {
        v70 = v0[67];
        (*(v0[62] + 8))(v0[63], v0[61]);

        v71 = &unk_82030;
        v72 = &qword_70370;
      }

      else
      {
        v114 = v0[107];
        v111 = v0[76];
        v73 = v0[74];
        v74 = v0[72];
        (*(v0[70] + 32))(v74, v0[67], v0[69]);
        v75 = sub_3CC8C(&CurrentRequest.executionRequestId.getter);
        v77 = v76;
        sub_30BD4();
        v78 = sub_6CE4C();
        v80 = v79;

        sub_2EF18(v75, v77, v62, v64, v74, v78, v80, v73);

        if (v114(v73, 1, v111) != 1)
        {
          v84 = v0[79];
          v85 = v0[78];
          v86 = v0[77];
          v87 = v0[76];
          (*(v86 + 32))(v84, v0[74], v87);
          v88 = *(v86 + 16);
          v88(v85, v84, v87);
          v89 = sub_6D03C();
          v90 = sub_6D45C();
          v91 = os_log_type_enabled(v89, v90);
          v92 = v0[78];
          v93 = v0[77];
          v94 = v0[76];
          if (v91)
          {
            v115 = v0[76];
            v118 = v88;
            v95 = v0[66];
            v96 = v0[65];
            v112 = v0[64];
            v107 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            *v107 = 138412290;
            v108 = v90;
            sub_6B1BC();
            sub_99FC(v0 + 12, v0[15]);
            sub_6CC1C();
            v97 = sub_6CBFC();
            v98 = v95;
            v88 = v118;
            (*(v96 + 8))(v98, v112);
            v99 = *(v93 + 8);
            v99(v92, v115);
            sub_9964(v0 + 12);
            *(v107 + 4) = v97;
            *v109 = v97;
            _os_log_impl(&dword_0, v89, v108, "Posting StatusNotification: %@", v107, 0xCu);
            sub_5E20(v109, &qword_81508, &unk_70260);
          }

          else
          {

            v99 = *(v93 + 8);
            v99(v92, v94);
          }

          v0[112] = v99;
          v100 = v0[79];
          v101 = v0[76];
          v102 = v0[36];
          v103 = v102[10];
          v104 = v102[11];
          sub_99FC(v102 + 7, v103);
          v0[10] = v101;
          v0[11] = &protocol witness table for FlowMessageTransportableOutput;
          v105 = sub_97B0(v0 + 7);
          v88(v105, v100, v101);
          v106 = swift_task_alloc();
          v0[113] = v106;
          *v106 = v0;
          v106[1] = sub_398A8;
          v54 = v0 + 7;
          v55 = v103;
          v56 = v104;
          goto LABEL_22;
        }

        v70 = v0[74];
        v82 = v0[62];
        v81 = v0[63];
        v83 = v0[61];
        (*(v0[70] + 8))(v0[72], v0[69]);
        (*(v82 + 8))(v81, v83);
        v71 = &qword_81D50;
        v72 = &qword_70D20;
      }

      sub_5E20(v70, v71, v72);
    }

    else
    {
      (*(v0[62] + 8))(v0[63], v0[61]);
    }
  }

  else
  {
    (*(v0[62] + 8))(v0[63], v0[61]);
  }

LABEL_15:
  v32 = v0[50];
  v33 = v0[51];
  v34 = v0[49];
  sub_30BD4();
  sub_6CDCC();
  v36 = v35;

  sub_2FAF0(v36, v34);

  if ((*(v33 + 48))(v34, 1, v32) == 1)
  {
    sub_5E20(v0[49], &qword_81B08, &qword_708D8);
    v37 = v0[86];
    v38 = v0[85];
    v39 = v0[84];
    v40 = v0[83];
    sub_6B44C();
    sub_5E20(v40, &qword_81B58, qword_70A90);
    (*(v38 + 8))(v37, v39);

    v41 = v0[1];

    return v41();
  }

  (*(v0[51] + 32))(v0[52], v0[49], v0[50]);
  v43 = sub_6D03C();
  v44 = sub_6D45C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v44, "Posting SAUIShowRequestHandlingStatus message with execution source PLANNER", v45, 2u);
  }

  v47 = v0[51];
  v46 = v0[52];
  v48 = v0[50];
  v49 = v0[36];

  v50 = v49[10];
  v51 = v49[11];
  sub_99FC(v49 + 7, v50);
  v0[5] = v48;
  v0[6] = &protocol witness table for AceOutput;
  v52 = sub_97B0(v0 + 2);
  (*(v47 + 16))(v52, v46, v48);
  v53 = swift_task_alloc();
  v0[115] = v53;
  *v53 = v0;
  v53[1] = sub_3A2D4;
  v54 = v0 + 2;
  v55 = v50;
  v56 = v51;
LABEL_22:

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v54, v55, v56);
}

uint64_t sub_39524()
{
  v1 = *(v0 + 872);
  v9 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 608);
  **(v0 + 296) = *(v0 + 888);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  swift_willThrowTypedImpl();
  v1(v5, v6);
  sub_5E20(v4, &qword_81B58, qword_70A90);
  (*(v2 + 8))(v9, v3);
  sub_9964((v0 + 136));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_398A8()
{
  *(*v1 + 912) = v0;

  if (v0)
  {
    v2 = sub_39F04;
  }

  else
  {
    v2 = sub_399BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_399BC()
{
  v1 = v0[112];
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[72];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[62];
  v31 = v0[63];
  v8 = v0[61];
  sub_9964(v0 + 7);
  v1(v2, v3);
  (*(v5 + 8))(v4, v6);
  (*(v7 + 8))(v31, v8);
  v9 = v0[50];
  v10 = v0[51];
  v11 = v0[49];
  sub_30BD4();
  sub_6CDCC();
  v13 = v12;

  sub_2FAF0(v13, v11);

  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_5E20(v0[49], &qword_81B08, &qword_708D8);
    v14 = v0[86];
    v15 = v0[85];
    v16 = v0[84];
    v17 = v0[83];
    sub_6B44C();
    sub_5E20(v17, &qword_81B58, qword_70A90);
    (*(v15 + 8))(v14, v16);

    v18 = v0[1];

    return v18();
  }

  else
  {
    (*(v0[51] + 32))(v0[52], v0[49], v0[50]);
    v20 = sub_6D03C();
    v21 = sub_6D45C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Posting SAUIShowRequestHandlingStatus message with execution source PLANNER", v22, 2u);
    }

    v24 = v0[51];
    v23 = v0[52];
    v25 = v0[50];
    v26 = v0[36];

    v27 = v26[10];
    v28 = v26[11];
    sub_99FC(v26 + 7, v27);
    v0[5] = v25;
    v0[6] = &protocol witness table for AceOutput;
    v29 = sub_97B0(v0 + 2);
    (*(v24 + 16))(v29, v23, v25);
    v30 = swift_task_alloc();
    v0[115] = v30;
    *v30 = v0;
    v30[1] = sub_3A2D4;

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v27, v28);
  }
}

uint64_t sub_39F04()
{
  v1 = *(v0 + 680);
  v14 = *(v0 + 672);
  v15 = *(v0 + 688);
  v12 = *(v0 + 896);
  v13 = *(v0 + 664);
  v2 = *(v0 + 632);
  v3 = *(v0 + 608);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 496);
  v11 = *(v0 + 504);
  v9 = *(v0 + 576);
  v10 = *(v0 + 488);
  **(v0 + 296) = *(v0 + 912);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  swift_willThrowTypedImpl();
  v12(v2, v3);
  (*(v4 + 8))(v9, v5);
  (*(v6 + 8))(v11, v10);
  sub_5E20(v13, &qword_81B58, qword_70A90);
  (*(v1 + 8))(v15, v14);
  sub_9964((v0 + 56));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_3A2D4()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_3A708;
  }

  else
  {
    v2 = sub_3A3E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3A3E8()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  sub_9964(v0 + 2);
  (*(v2 + 8))(v1, v3);
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  sub_6B44C();
  sub_5E20(v7, &qword_81B58, qword_70A90);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_3A708()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 400);
  **(v0 + 296) = *(v0 + 928);
  swift_storeEnumTagMultiPayload();
  sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  swift_willThrowTypedImpl();
  (*(v6 + 8))(v5, v7);
  sub_5E20(v4, &qword_81B58, qword_70A90);
  (*(v2 + 8))(v1, v3);
  sub_9964((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_3AA80()
{

  if (v0)
  {
    v1 = sub_3B934;
  }

  else
  {
    v1 = sub_3AB90;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_3AB90()
{
  v62 = v0;
  v1 = v0[48];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v5 = v0[41];
  v6 = *(v0[42] + 16);
  v6(v0[47], v1, v5);
  v6(v2, v1, v5);
  v6(v3, v1, v5);
  v6(v4, v1, v5);
  v7 = sub_6D03C();
  v8 = sub_6D45C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[71];
    v10 = v0[70];
    v11 = v0[69];
    v51 = v0[47];
    v53 = v0[46];
    v54 = v0[45];
    v56 = v0[43];
    v57 = v0[44];
    v60 = v0[42];
    v59 = v0[41];
    v12 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v12 = 136315907;
    v58 = v8;
    sub_6C82C();
    sub_4B434(&qword_81D58, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = sub_6D61C();
    v15 = v14;
    v52 = *(v10 + 8);
    v52(v9, v11);
    log = v7;
    v16 = *(v60 + 8);
    v16(v51, v59);
    v17 = sub_1076C(v13, v15, &v61);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    sub_6C80C();
    v18 = sub_6D61C();
    v20 = v19;
    v52(v9, v11);
    v16(v53, v59);
    v21 = sub_1076C(v18, v20, &v61);

    *(v12 + 14) = v21;
    *(v12 + 22) = 2080;
    v22 = sub_6C7FC();
    v24 = v23;
    v16(v54, v59);
    v25 = sub_1076C(v22, v24, &v61);

    *(v12 + 24) = v25;
    *(v12 + 32) = 2081;
    v6(v56, v57, v59);
    v26 = sub_6D2EC();
    v28 = v27;
    v16(v57, v59);
    v29 = sub_1076C(v26, v28, &v61);

    *(v12 + 34) = v29;
    _os_log_impl(&dword_0, log, v58, "Event received from IntelligenceFlow with sessionId: %s, eventId: %s and clientRequestId: %s with message: %{private}s", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v31 = v0[46];
    v30 = v0[47];
    v33 = v0[44];
    v32 = v0[45];
    v34 = v0[41];
    v35 = v0[42];

    v16 = *(v35 + 8);
    v16(v33, v34);
    v16(v32, v34);
    v16(v31, v34);
    v16(v30, v34);
  }

  v0[118] = v16;
  sub_6C81C();
  v0[33] = sub_6D2EC();
  v0[34] = v36;
  sub_1FE68();
  v37 = sub_6D50C();

  if (*(v37 + 16))
  {
    swift_bridgeObjectRetain_n();

    v38 = sub_6D03C();
    v39 = sub_6D47C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v40 = 136446210;
      v42 = sub_6D30C();
      v44 = v43;

      v45 = sub_1076C(v42, v44, &v61);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_0, v38, v39, "Event received from IntelligenceFlow: %{public}s", v40, 0xCu);
      sub_9964(v41);

      goto LABEL_10;
    }
  }

LABEL_10:
  v46 = swift_task_alloc();
  v0[119] = v46;
  *v46 = v0;
  v46[1] = sub_3B198;
  v47 = v0[90];
  v48 = v0[48];
  v49 = v0[35];

  return sub_3ED5C(v49, v48, v47);
}

uint64_t sub_3B198()
{

  if (v0)
  {
    v1 = sub_3BC00;
  }

  else
  {
    v1 = sub_3B2A8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_3B2A8()
{
  (*(v0 + 944))(*(v0 + 384), *(v0 + 328));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3B570()
{

  return _swift_task_switch(sub_3B66C, 0, 0);
}

uint64_t sub_3B66C()
{
  sub_4B36C(*(v0 + 704), type metadata accessor for IFFlowError);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3B934()
{
  sub_4B304(v0[91], v0[37], type metadata accessor for IFFlowError);

  v1 = v0[1];

  return v1();
}

uint64_t sub_3BC00()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 296);
  (*(v0 + 944))(*(v0 + 384), *(v0 + 328));
  sub_4B304(v1, v2, type metadata accessor for IFFlowError);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_3BEF0()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = sub_6C35C();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v4 = sub_6AE9C();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = swift_task_alloc();
  v5 = sub_6C7EC();
  v1[10] = v5;
  v1[11] = *(v5 - 8);
  v1[12] = swift_task_alloc();
  v6 = *(v2 + 80);
  v1[13] = v6;
  v1[14] = *(v6 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for IFFlowError(0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = sub_6C0EC();
  v1[21] = v7;
  v1[22] = *(v7 - 8);
  v1[23] = swift_task_alloc();
  v8 = sub_6C33C();
  v1[24] = v8;
  v1[25] = *(v8 - 8);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_3C208, 0, 0);
}

uint64_t sub_3C208()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v19 = v0[19];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[13];
  v7 = v0[2];
  sub_6C0BC();
  (*(v2 + 104))(v1, enum case for MessagePayload.RequestContent.stop(_:), v3);
  sub_6C31C();
  (*(v4 + 16))(v5, v7 + *(*v7 + 184), v6);
  sub_30FBC(v19);
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[6];
  v18 = v0[7];
  v12 = v0[4];
  v11 = v0[5];
  (*(v0[25] + 16))(v10, v0[26], v0[24]);
  (*(v11 + 104))(v10, enum case for MessagePayload.request(_:), v12);
  sub_30BF8(v9, v10);
  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v9, v18);
  sub_6CF4C();
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v14 + 8))(v13, v15);
  (*(v0[25] + 8))(v0[26], v0[24]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_3C798(uint64_t a1)
{
  result = sub_6D42C();
  if (result)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v2 = sub_6D04C();
    sub_5CE4(v2, qword_839A0);
    v3 = sub_6D03C();
    v4 = sub_6D46C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "[IFFlow] Task cancelled", v5, 2u);
    }

    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    sub_4B434(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    return swift_willThrowTypedImpl();
  }

  return result;
}

void sub_3C8E8()
{
  sub_30BD4();
  v0 = sub_6CDBC();
  v2 = v1;

  sub_30BD4();
  v3 = sub_6CE2C();
  v5 = v4;

  if (v2)
  {
    sub_30BD4();
    v6 = sub_6CDCC();
    v8 = v7;

    if (v8)
    {
      sub_30BD4();
      v9 = sub_6CDBC();
      v11 = v10;

      v12 = v9;
      v13 = v0;
      sub_4DDF8(v12, v11, v6, v8, v0, v2, v3, v5);

      sub_30BD4();
      v14 = sub_6CDBC();
      v16 = v15;

      sub_4E400(v6, v8, v14, v16);

      sub_30BD4();
      v17 = sub_6CDBC();
      v19 = v18;

      sub_52080(v17, v19, v6, v8, v13, v2);

      return;
    }
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v20 = sub_6D04C();
  sub_5CE4(v20, qword_839A0);

  oslog = sub_6D03C();
  v21 = sub_6D46C();

  if (os_log_type_enabled(oslog, v21))
  {
    v22 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v22 = 136315394;
    sub_30BD4();
    v23 = sub_6CDBC();
    v25 = v24;

    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = 7104878;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = sub_1076C(v26, v27, &v36);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    sub_30BD4();
    v29 = sub_6CDCC();
    v31 = v30;

    if (v31)
    {
      v32 = v29;
    }

    else
    {
      v32 = 7104878;
    }

    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = sub_1076C(v32, v33, &v36);

    *(v22 + 14) = v34;
    _os_log_impl(&dword_0, oslog, v21, "[IFFlow] Attempted to log IntelligenceFlowQuerySent with rootRequestId: %s and currentRequestId: %s. This should not occur", v22, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_3CC8C(uint64_t (*a1)(void))
{
  sub_30BD4();
  v2 = a1();

  return v2;
}

void sub_3CCDC(uint64_t a1, uint64_t a2)
{
  v135 = a1;
  v136 = a2;
  v3 = sub_6C35C();
  v138 = *(v3 - 8);
  v139 = v3;
  __chkstk_darwin(v3);
  v137 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_6BF6C();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v122 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowAction.ExitValue(0);
  v7 = __chkstk_darwin(v6);
  v132 = (&v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v133 = &v118 - v9;
  v10 = sub_6C06C();
  v126 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_6B0FC();
  v121 = *(v124 - 8);
  __chkstk_darwin(v124);
  v120 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5708(&qword_81E48, &qword_70E70);
  __chkstk_darwin(v14 - 8);
  v131 = &v118 - v15;
  v16 = sub_6B10C();
  v17 = *(v16 - 8);
  v127 = v16;
  v128 = v17;
  __chkstk_darwin(v16);
  v19 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6B12C();
  v130 = *(v20 - 8);
  __chkstk_darwin(v20);
  v134 = (&v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for FlowAction(0);
  __chkstk_darwin(v22);
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30BD4();
  v141 = sub_6CDBC();
  v26 = v25;

  v143 = v2;
  sub_30BD4();
  v140 = sub_6CE2C();
  v28 = v27;

  v142 = v26;
  if (v26)
  {
    sub_30BD4();
    v129 = sub_6CDCC();
    v30 = v29;

    if (v30)
    {
      sub_4B3CC(v135, v24, type metadata accessor for FlowAction);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v119 = v28;
      v118 = v30;
      switch(EnumCaseMultiPayload)
      {
        case 8:
          v75 = v126;
          (*(v126 + 32))(v12, v24, v10);
          sub_30BD4();
          v76 = sub_6CDBC();
          v78 = v77;

          v79 = v76;
          v80 = v142;
          sub_4F28C(v79, v78, v129, v30, v141, v142, v140, v28, v12);

          (*(v75 + 8))(v12, v10);
          v47 = v80;
          break;
        case 9:
          v64 = v24;
          v65 = v133;
          sub_4B304(v64, v133, type metadata accessor for FlowAction.ExitValue);
          sub_4B3CC(v65, v132, type metadata accessor for FlowAction.ExitValue);
          v66 = swift_getEnumCaseMultiPayload();
          if (v66 > 1)
          {
            v47 = v142;
            v84 = v143;
            v67 = v138;
            v74 = v139;
            v68 = v137;
            if (v66 == 2)
            {
              v85 = sub_5708(&qword_81E50, &qword_70E78);
              v86 = v123;
              v87 = v122;
              (*(v123 + 32))(v122, v132 + *(v85 + 48), v125);
              v135 = *(v84 + 144);
              sub_30BD4();
              v134 = sub_6CDBC();
              v89 = v88;

              v90 = v131;
              sub_6BF5C();
              v91 = sub_6BF0C();
              (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
              sub_4FEAC(v134, v89, v129, v118, v141, v47, v140, v119, v90, 0);

              sub_5E20(v90, &qword_81E48, &qword_70E70);
              (*(v86 + 8))(v87, v125);
              sub_4B36C(v133, type metadata accessor for FlowAction.ExitValue);
              sub_9964(v132);
              goto LABEL_34;
            }
          }

          else
          {
            v47 = v142;
            v68 = v137;
            v67 = v138;
            if (!v66)
            {
              sub_30BD4();
              v69 = sub_6CDBC();
              v71 = v70;

              v72 = sub_6BF0C();
              v73 = v131;
              (*(*(v72 - 8) + 56))(v131, 1, 1, v72);
              sub_4FEAC(v69, v71, v129, v30, v141, v47, v140, v119, v73, 0);

              sub_5E20(v73, &qword_81E48, &qword_70E70);
              sub_4B36C(v133, type metadata accessor for FlowAction.ExitValue);
              sub_4B36C(v132, type metadata accessor for FlowAction.ExitValue);
              v74 = v139;
LABEL_34:
              sub_6C81C();
              if ((*(v67 + 88))(v68, v74) == enum case for MessagePayload.actionExecuted(_:))
              {
                sub_30BD4();
                v81 = sub_6CDBC();
                v83 = v82;

                sub_4EC1C(v81, v83, v129, v118, v141, v47, v140, v119);
              }

              (*(v67 + 8))(v68, v74);
              return;
            }

            sub_4B36C(v132, type metadata accessor for FlowAction.ExitValue);
            v74 = v139;
          }

          sub_30BD4();
          v100 = sub_6CDBC();
          v102 = v101;

          sub_4EC1C(v100, v102, v129, v118, v141, v47, v140, v119);

          sub_4B36C(v133, type metadata accessor for FlowAction.ExitValue);
          goto LABEL_34;
        case 10:
          v32 = v130;
          v33 = v20;
          (*(v130 + 32))(v134, v24, v20);
          sub_6B11C();
          v35 = v127;
          v34 = v128;
          v36 = (*(v128 + 88))(v19, v127);
          if (v36 == enum case for SiriXRedirectContext.RedirectReason.noMatchingTool(_:))
          {
            (*(v34 + 8))(v19, v35);
            v133 = *(v143 + 144);
            sub_30BD4();
            v37 = sub_6CDBC();
            v39 = v38;

            v40 = enum case for ActionFailure.Failure.noMatchingTool(_:);
            v41 = v30;
            v42 = sub_6BF0C();
            v43 = *(v42 - 8);
            v44 = *(v43 + 104);
            v135 = v33;
            v45 = v131;
            v44(v131, v40, v42);
            (*(v43 + 56))(v45, 0, 1, v42);
            v46 = v41;
            v47 = v142;
            sub_4FEAC(v37, v39, v129, v46, v141, v142, v140, v28, v45, 1u);

            sub_5E20(v45, &qword_81E48, &qword_70E70);
            (*(v32 + 8))(v134, v135);
          }

          else if (v36 == enum case for SiriXRedirectContext.RedirectReason.unableToHandle(_:))
          {
            (*(v34 + 96))(v19, v35);
            v92 = v121;
            v93 = v120;
            (*(v121 + 32))(v120, v19, v124);
            v133 = *(v143 + 144);
            sub_30BD4();
            v132 = sub_6CDBC();
            v95 = v94;

            sub_6B0EC();
            v135 = v33;
            v96 = v131;
            sub_6BF1C();
            v97 = enum case for ActionFailure.Failure.unableToHandleRequest(_:);
            v98 = sub_6BF0C();
            v99 = *(v98 - 8);
            (*(v99 + 104))(v96, v97, v98);
            (*(v99 + 56))(v96, 0, 1, v98);
            v47 = v142;
            sub_4FEAC(v132, v95, v129, v30, v141, v142, v140, v28, v96, 1u);

            sub_5E20(v96, &qword_81E48, &qword_70E70);
            (*(v92 + 8))(v93, v124);
            (*(v130 + 8))(v134, v135);
          }

          else
          {
            v103 = enum case for SiriXRedirectContext.RedirectReason.valueSelectionRequired(_:);
            v104 = v36;
            v105 = sub_3CC8C(&CurrentRequest.rootRequestId.getter);
            v107 = v106;
            if (v104 == v103)
            {
              v108 = enum case for ActionFailure.Failure.valueSelectionRequired(_:);
              v109 = sub_6BF0C();
              v110 = *(v109 - 8);
              v111 = v131;
              (*(v110 + 104))(v131, v108, v109);
              (*(v110 + 56))(v111, 0, 1, v109);
              v47 = v142;
              sub_4FEAC(v105, v107, v129, v30, v141, v142, v140, v119, v111, 1u);

              sub_5E20(v111, &qword_81E48, &qword_70E70);
              (*(v130 + 8))(v134, v33);
            }

            else
            {
              v135 = v33;
              v112 = v131;
              sub_6BF1C();
              v113 = enum case for ActionFailure.Failure.unableToHandleRequest(_:);
              v114 = sub_6BF0C();
              v115 = *(v114 - 8);
              (*(v115 + 104))(v112, v113, v114);
              (*(v115 + 56))(v112, 0, 1, v114);
              v116 = v142;
              sub_4FEAC(v105, v107, v129, v30, v141, v142, v140, v119, v112, 1u);

              sub_5E20(v112, &qword_81E48, &qword_70E70);
              (*(v130 + 8))(v134, v135);
              v117 = v35;
              v47 = v116;
              (*(v128 + 8))(v19, v117);
            }
          }

          break;
        default:
          sub_4B36C(v24, type metadata accessor for FlowAction);
          v47 = v142;
          break;
      }

      v67 = v138;
      v74 = v139;
      v68 = v137;
      goto LABEL_34;
    }
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v48 = sub_6D04C();
  sub_5CE4(v48, qword_839A0);

  v142 = sub_6D03C();
  v49 = sub_6D46C();

  if (os_log_type_enabled(v142, v49))
  {
    v50 = swift_slowAlloc();
    v144[0] = swift_slowAlloc();
    *v50 = 136315394;
    sub_30BD4();
    v51 = sub_6CDBC();
    v53 = v52;

    if (v53)
    {
      v54 = v51;
    }

    else
    {
      v54 = 7104878;
    }

    if (v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0xE300000000000000;
    }

    v56 = sub_1076C(v54, v55, v144);

    *(v50 + 4) = v56;
    *(v50 + 12) = 2080;
    sub_30BD4();
    v57 = sub_6CDCC();
    v59 = v58;

    if (v59)
    {
      v60 = v57;
    }

    else
    {
      v60 = 7104878;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xE300000000000000;
    }

    v62 = sub_1076C(v60, v61, v144);

    *(v50 + 14) = v62;
    _os_log_impl(&dword_0, v142, v49, "[IFFlow] Attempted to log IntelligenceFlowQuerySent with rootRequestId: %s and currentRequestId: %s. This should not occur", v50, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v63 = v142;
  }
}