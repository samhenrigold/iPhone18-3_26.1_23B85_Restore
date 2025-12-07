uint64_t sub_100001350()
{
  sub_1000013C8(&qword_10000C168, &unk_100004490);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100004410;
  v1 = sub_100003ED8();
  v2 = sub_100001410();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_1000013C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001410()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    sub_100003ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

uint64_t AppIntentsAssembly.load(in:)()
{
  v0 = sub_100004088();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004048();
  v4 = sub_1000013C8(&qword_10000C178, &qword_1000044A0);
  sub_100002978(v4);

  sub_100003F08();
  sub_100003FE8();

  sub_100004048();
  v5 = sub_1000013C8(&qword_10000C180, &qword_1000044A8);
  sub_100002978(v5);

  v6 = enum case for Scope.singleton(_:);
  v7 = *(v1 + 104);
  v7(v3, enum case for Scope.singleton(_:), v0);
  sub_100003FF8();

  v8 = *(v1 + 8);
  v8(v3, v0);
  sub_100004048();
  v9 = sub_1000013C8(&qword_10000C188, &qword_1000044B0);
  sub_100002978(v9);

  sub_100004048();
  v10 = sub_1000013C8(&qword_10000C190, &qword_1000044B8);
  sub_100002978(v10);

  sub_100004048();
  v11 = sub_1000013C8(&qword_10000C198, &qword_1000044C0);
  sub_100002978(v11);

  sub_100004048();
  v12 = sub_1000041B8();
  sub_100002978(v12);

  v7(v3, v6, v0);
  sub_100003FF8();

  v8(v3, v0);
  sub_100004048();
  v13 = sub_1000013C8(&qword_10000C1A0, &qword_1000044C8);
  sub_100002978(v13);

  sub_100004058();
  sub_100004068();
}

void *sub_1000017E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C270, &qword_100004540);
  result = sub_100004008();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C250, &qword_100004528);
  result = sub_100004008();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C280, qword_100004548);
  result = sub_100004008();
  if (v6)
  {
    sub_1000028CC(&v5, v7);
    sub_100003F08();
    swift_allocObject();
    result = sub_100003EF8();
    *a2 = result;
    a2[1] = &protocol witness table for GeocodeService;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_100001930(uint64_t a1, void *a2)
{
  sub_100002860(a2, a2[3]);
  sub_1000013C8(&qword_10000C240, &qword_100004518);
  result = sub_100004008();
  if (v3[3])
  {
    sub_100003EE8();
    return sub_1000028E4(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000019BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000041E8();
  swift_allocObject();
  result = sub_1000041D8();
  a1[3] = v2;
  a1[4] = &protocol witness table for NetworkMonitor;
  *a1 = result;
  return result;
}

void *sub_100001A14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C198, &qword_1000044C0);
  result = sub_100004008();
  if (v5)
  {
    v4 = sub_100004208();
    swift_allocObject();
    result = sub_1000041F8();
    a2[3] = v4;
    a2[4] = &protocol witness table for WDSAuthenticatorFactory;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100001ABC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v16 = sub_100004198();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000013C8(&qword_10000C268, &qword_100004538);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1000041B8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C188, &qword_1000044B0);
  result = sub_100004008();
  if (v18)
  {
    sub_1000028CC(&v17, v19);
    sub_100002860(a1, a1[3]);
    sub_100004008();
    result = sub_1000028A4(v8, 1, v9);
    if (result != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_100002860(v19, v19[3]);
      v14 = v16;
      (*(v3 + 104))(v5, enum case for WDSVersion.tokenServiceVersion(_:), v16);
      sub_100004218();
      (*(v3 + 8))(v5, v14);
      (*(v10 + 8))(v12, v9);
      return sub_1000028E4(v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100001D94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C270, &qword_100004540);
  result = sub_100004008();
  if (v6)
  {
    v4 = sub_100003FB8();
    swift_allocObject();
    v5 = sub_100003FA8();
    a2[3] = v4;
    result = sub_100002930(&qword_10000C278, &type metadata accessor for AppConfigurationSettingsProvider, &protocol conformance descriptor for AppConfigurationSettingsProvider);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100001E70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = sub_100003E88();
  __chkstk_darwin(v3 - 8);
  v13 = sub_100003F88();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003F48();
  v7 = *(v12 - 8);
  __chkstk_darwin(v12);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003EC8();
  sub_100003EB8();
  sub_100003E98();
  sub_100003EA8();

  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C270, &qword_100004540);
  result = sub_100004008();
  if (v16)
  {
    sub_1000028CC(&v15, v17);
    sub_100002860(v17, v17[3]);
    sub_100003F98();
    sub_100003F38();
    sub_100003F78();
    sub_1000041A8();
    (*(v4 + 8))(v6, v13);
    (*(v7 + 8))(v9, v12);
    return sub_1000028E4(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100002100@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v3 = sub_100004178();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v26 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100004188();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v23 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004128();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000013C8(&qword_10000C268, &qword_100004538);
  __chkstk_darwin(v11 - 8);
  v13 = v20 - v12;
  sub_100002860(a1, a1[3]);
  v14 = sub_1000041B8();
  sub_100004008();
  result = sub_1000028A4(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = *(v8 + 104);
  v20[1] = v10;
  v16(v10, enum case for WeatherDataCaching.disabled(_:), v7);
  (*(v5 + 104))(v23, enum case for WeatherAvailabilityCaching.disabled(_:), v22);
  (*(v24 + 104))(v26, enum case for WeatherStatisticsCaching.disabled(_:), v25);
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C180, &qword_1000044A8);
  result = sub_100004008();
  if (!v29)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C190, &qword_1000044B8);
  result = sub_100004008();
  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C198, &qword_1000044C0);
  result = sub_100004008();
  if (v27)
  {
    v17 = sub_100004168();
    v18 = objc_allocWithZone(v17);
    result = sub_100004158();
    v19 = v21;
    v21[3] = v17;
    v19[4] = &protocol witness table for WeatherDataServiceProxy;
    *v19 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000024F4()
{
  sub_1000013C8(&qword_10000C240, &qword_100004518);
  sub_100004078();

  sub_1000013C8(&qword_10000C248, &qword_100004520);
  sub_100004078();

  sub_1000013C8(&qword_10000C250, &qword_100004528);
  sub_100004078();
}

void *sub_1000025E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C1A0, &qword_1000044C8);
  result = sub_100004008();
  if (v7)
  {
    v4 = type metadata accessor for GeocodeWeatherService();
    v5 = swift_allocObject();
    sub_1000028CC(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_100002930(&qword_10000C260, type metadata accessor for GeocodeWeatherService, &unk_100004628);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000026BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C258, &qword_100004530);
  result = sub_100004008();
  if (v5)
  {
    v4 = sub_100003F68();
    swift_allocObject();
    result = sub_100003F58();
    a2[3] = v4;
    a2[4] = &protocol witness table for PrivacySaltProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100002764@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100002860(a1, a1[3]);
  sub_1000013C8(&qword_10000C248, &qword_100004520);
  result = sub_100004008();
  if (v5)
  {
    v4 = sub_100003F28();
    swift_allocObject();
    result = sub_100003F18();
    a2[3] = v4;
    a2[4] = &protocol witness table for PrivacySampler;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100002860(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000028CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000028E4(void *a1)
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

uint64_t sub_100002930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002978(uint64_t a1)
{

  return sub_100004078();
}

id sub_10000299C()
{
  result = [objc_allocWithZone(NSRecursiveLock) init];
  qword_10000C288 = result;
  return result;
}

uint64_t sub_1000029D0()
{
  v0 = sub_1000040D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004018();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000013C8(&qword_10000C2A8, &qword_1000045F0);
  v8 = swift_allocObject();
  v17 = xmmword_100004410;
  *(v8 + 16) = xmmword_100004410;
  v9 = sub_100003FD8();
  swift_allocObject();
  v10 = sub_100003FC8();
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_100002F54(&qword_10000C2B0, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v8 + 32) = v10;
  sub_1000013C8(&qword_10000C2B8, &qword_1000045F8);
  v11 = swift_allocObject();
  *(v11 + 16) = v17;
  v12 = type metadata accessor for AppIntentsAssembly();
  v13 = swift_allocObject();
  *(v11 + 56) = v12;
  *(v11 + 64) = sub_100002F54(&qword_10000C2C0, type metadata accessor for AppIntentsAssembly, &protocol conformance descriptor for AppIntentsAssembly);
  *(v11 + 32) = v13;
  sub_100004038();
  swift_allocObject();
  sub_100004028();
  if (qword_10000C158 != -1)
  {
    swift_once();
  }

  v14 = qword_10000C288;
  *v7 = qword_10000C288;
  (*(v5 + 104))(v7, enum case for ContainerLock.lock(_:), v4);
  (*(v1 + 104))(v3, enum case for Container.Environment.normal(_:), v0);
  sub_100004108();
  swift_allocObject();
  v15 = v14;
  result = sub_1000040E8();
  qword_10000C290 = result;
  return result;
}

uint64_t sub_100002D08()
{
  sub_100003E68();
  sub_100003E58();
  if (qword_10000C160 != -1)
  {
    swift_once();
  }

  sub_1000040F8();
  sub_100003E48();

  return sub_1000028E4(v1);
}

uint64_t sub_100002D9C(uint64_t a1)
{
  v2 = sub_100002EF0();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002E48();
  sub_100004228();
  return 0;
}

unint64_t sub_100002E48()
{
  result = qword_10000C298;
  if (!qword_10000C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C298);
  }

  return result;
}

unint64_t sub_100002EF0()
{
  result = qword_10000C2A0;
  if (!qword_10000C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2A0);
  }

  return result;
}

uint64_t sub_100002F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_100002FC4()
{
  sub_100004278();
  sub_100004288(0);
  return sub_100004298();
}

Swift::Int sub_100003018(uint64_t a1)
{
  sub_100004278();
  sub_100004288(0);
  return sub_100004298();
}

uint64_t sub_100003068()
{
  sub_1000028E4((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1000030C4(uint64_t a1, void *a2)
{
  sub_100002860((v2 + 16), *(v2 + 40));
  [a2 coordinate];
  sub_100004148();
  v4 = sub_100004098();
  sub_1000041C8();
  v5 = sub_1000040A8();

  return v5;
}

uint64_t sub_100003180(uint64_t *a1)
{
  v2 = sub_1000041C8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v49 = &v41 - v7;
  v8 = __chkstk_darwin(v6);
  v48 = &v41 - v9;
  v10 = __chkstk_darwin(v8);
  v52 = &v41 - v11;
  __chkstk_darwin(v10);
  v41 = &v41 - v12;
  v13 = sub_100004138();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v20 = sub_1000013C8(&qword_10000C368, &qword_100004658);
  v21 = __chkstk_darwin(v20 - 8);
  v43 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v44 = &v41 - v23;
  v24 = *a1;
  v25 = *(*a1 + 16);
  v50 = v3;
  if (v25)
  {
    v26 = v24 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v27 = (v3 + 32);
    v28 = &_swiftEmptyArrayStorage;
    v46 = v13;
    v47 = v2;
    v45 = v19;
    do
    {
      sub_100003780(v26, v19);
      sub_1000037E4(v19, v17);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v29 = *v27;
        v30 = v49;
        (*v27)(v49, v17, v2);
        v31 = v2;
        v32 = v48;
        v29(v48, v30, v31);
        v29(v52, v32, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1000039D0(0, *(v28 + 2) + 1, 1, v28);
        }

        v34 = *(v28 + 2);
        v33 = *(v28 + 3);
        if (v34 >= v33 >> 1)
        {
          v28 = sub_1000039D0((v33 > 1), v34 + 1, 1, v28);
        }

        *(v28 + 2) = v34 + 1;
        v2 = v47;
        v29(&v28[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v34], v52, v47);
        v19 = v45;
      }

      else
      {
        sub_100003848(v17);
      }

      v26 += v51;
      --v25;
    }

    while (v25);
  }

  else
  {
    v28 = &_swiftEmptyArrayStorage;
  }

  v35 = v44;
  sub_1000036B0(v28, v44);

  v36 = v43;
  sub_1000038A4(v35, v43);
  if (sub_1000028A4(v36, 1, v2) == 1)
  {
    sub_100003914(v36);
    sub_10000397C();
    swift_allocError();
    sub_1000013C8(&qword_10000C378, &qword_100004660);
    swift_allocObject();
    v37 = sub_1000040B8();
  }

  else
  {
    v38 = v50;
    v39 = v41;
    (*(v50 + 32))(v41, v36, v2);
    (*(v38 + 16))(v42, v39, v2);
    sub_1000013C8(&qword_10000C378, &qword_100004660);
    swift_allocObject();
    v37 = sub_1000040C8();
    (*(v38 + 8))(v39, v2);
  }

  sub_100003914(v35);
  return v37;
}

uint64_t sub_1000036B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1000041C8();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_100003C90(a2, v7, 1, v6);
}

uint64_t sub_100003780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004138();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000037E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004138();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003848(uint64_t a1)
{
  v2 = sub_100004138();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000038A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000013C8(&qword_10000C368, &qword_100004658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003914(uint64_t a1)
{
  v2 = sub_1000013C8(&qword_10000C368, &qword_100004658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000397C()
{
  result = qword_10000C370;
  if (!qword_10000C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C370);
  }

  return result;
}

char *sub_1000039D0(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_100003ABC(v8, v7);
  v10 = *(sub_1000041C8() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100003BB8(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_100003ABC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000013C8(&qword_10000C380, &qword_100004668);
  v4 = *(sub_1000041C8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100003BB8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1000041C8(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1000041C8();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeocodeWeatherService.Error(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for GeocodeWeatherService.Error(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100003DACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100003DF4()
{
  result = qword_10000C388;
  if (!qword_10000C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C388);
  }

  return result;
}