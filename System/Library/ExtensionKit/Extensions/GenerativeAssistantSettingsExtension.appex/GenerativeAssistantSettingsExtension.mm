uint64_t sub_100001840(char a1)
{
  v1 = sub_100014894();
  __chkstk_darwin(v1 - 8);
  sub_100014594();
  swift_allocObject();
  sub_100014584();
  sub_100002740();
  v3 = sub_100014574();
  v5 = v4;

  sub_100014884();
  v6 = sub_100014874();
  v8 = v7;
  sub_1000026EC(v3, v5);
  if (v8)
  {
    return v6;
  }

  return 0;
}

Swift::Int sub_10000197C()
{
  v1 = *v0;
  sub_1000149A4();
  sub_1000149B4(v1);
  return sub_1000149C4();
}

Swift::Int sub_1000019F0(uint64_t a1)
{
  v2 = *v1;
  sub_1000149A4();
  sub_1000149B4(v2);
  return sub_1000149C4();
}

uint64_t sub_100001A34()
{
  if (*v0)
  {
    return 0x74616E6974736564;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_100001A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v6 || (sub_100014994() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100014994();

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

uint64_t sub_100001B70(uint64_t a1)
{
  v2 = sub_100002150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001BAC(uint64_t a1)
{
  v2 = sub_100002150();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001BE8(void *a1, char a2)
{
  v5 = sub_1000020C4(&qword_100020338, "B'");
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000210C(a1, a1[3]);
  sub_100002150();
  sub_1000149E4();
  v10[15] = 0;
  sub_1000021A4();
  sub_100014974();
  if (!v2)
  {
    v10[14] = a2;
    v10[13] = 1;
    sub_1000021F8();
    sub_100014974();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100001D74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000224C(a2, a3);
  *a1 = result;
  return result;
}

Swift::Int sub_100001D9C()
{
  sub_1000149A4();
  sub_1000148B4();
  sub_10001430C();
  return sub_1000149C4();
}

uint64_t sub_100001E00(uint64_t a1)
{
  sub_1000148B4();

  return sub_10001430C();
}

Swift::Int sub_100001E54(uint64_t a1)
{
  sub_1000149A4();
  sub_1000148B4();
  sub_10001430C();
  return sub_1000149C4();
}

void *sub_100001EB4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000023D8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001F10()
{
  result = qword_100020330;
  if (!qword_100020330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsDestination(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenerativeAssistantSettingsDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000020C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_10000210C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002150()
{
  result = qword_100020340;
  if (!qword_100020340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020340);
  }

  return result;
}

unint64_t sub_1000021A4()
{
  result = qword_100020348;
  if (!qword_100020348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020348);
  }

  return result;
}

unint64_t sub_1000021F8()
{
  result = qword_100020350;
  if (!qword_100020350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020350);
  }

  return result;
}

uint64_t sub_10000224C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100014894();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100014564();
  swift_allocObject();
  sub_100014554();
  sub_100014884();
  v6 = sub_100014864();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  sub_100002698();
  sub_100014544();

  sub_1000026EC(v9, v8);
  return v11[15];
}

void *sub_1000023D8(void *a1)
{
  v3 = sub_1000020C4(&qword_100020358, &qword_100015AE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_10000210C(a1, a1[3]);
  sub_100002150();
  sub_1000149D4();
  if (!v1)
  {
    v9[15] = 0;
    sub_1000025F0();
    sub_100014964();
    v9[13] = 1;
    sub_100002644();
    sub_100014964();
    (*(v4 + 8))(v6, v3);
    v7 = v9[14];
  }

  sub_1000025A4(a1);
  return v7;
}

uint64_t sub_1000025A4(void *a1)
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

unint64_t sub_1000025F0()
{
  result = qword_100020360;
  if (!qword_100020360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020360);
  }

  return result;
}

unint64_t sub_100002644()
{
  result = qword_100020368;
  if (!qword_100020368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020368);
  }

  return result;
}

unint64_t sub_100002698()
{
  result = qword_100020370;
  if (!qword_100020370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020370);
  }

  return result;
}

uint64_t sub_1000026EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100002740()
{
  result = qword_100020378;
  if (!qword_100020378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020378);
  }

  return result;
}

unint64_t sub_100002794()
{
  result = qword_100020380;
  if (!qword_100020380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020380);
  }

  return result;
}

unint64_t sub_1000027E8()
{
  result = qword_100020388;
  if (!qword_100020388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020388);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicDestinationWrapper.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicDestinationWrapper.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000029A8()
{
  result = qword_100020390;
  if (!qword_100020390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020390);
  }

  return result;
}

unint64_t sub_100002A00()
{
  result = qword_100020398;
  if (!qword_100020398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020398);
  }

  return result;
}

unint64_t sub_100002A58()
{
  result = qword_1000203A0;
  if (!qword_1000203A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203A0);
  }

  return result;
}

id sub_100002AAC()
{
  result = [objc_allocWithZone(type metadata accessor for GMAvailabilityProvider(0)) init];
  static GMAvailabilityProvider.shared = result;
  return result;
}

id GMAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *GMAvailabilityProvider.shared.unsafeMutableAddressor()
{
  if (qword_1000202A8 != -1)
  {
    swift_once();
  }

  return &static GMAvailabilityProvider.shared;
}

id static GMAvailabilityProvider.shared.getter()
{
  if (qword_1000202A8 != -1)
  {
    swift_once();
  }

  v1 = static GMAvailabilityProvider.shared;

  return v1;
}

uint64_t GMAvailabilityProvider.availability()@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_100014754();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100014694();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100014734();
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100014774();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014674();
  sub_100014684();
  (*(v4 + 8))(v6, v16);
  (*(v18 + 104))(v3, enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:), v19);
  sub_100014724();
  sub_100014764();
  (*(v7 + 8))(v9, v17);
  sub_100014744();
  return (*(v11 + 8))(v13, v10);
}

Swift::Bool __swiftcall GMAvailabilityProvider.isAssetReady()()
{
  ObjectType = swift_getObjectType();
  v101 = sub_1000146F4();
  v97 = *(v101 - 8);
  v0 = __chkstk_darwin(v101);
  v96 = &v96 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v0);
  v100 = &v96 - v2;
  v111 = sub_1000146C4();
  v99 = *(v111 - 8);
  v3 = __chkstk_darwin(v111);
  v98 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v110 = &v96 - v5;
  v112 = sub_100014754();
  v107 = *(v112 - 1);
  __chkstk_darwin(v112);
  v106 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100014694();
  v7 = *(v104 - 8);
  __chkstk_darwin(v104);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100014734();
  v10 = *(v105 - 8);
  __chkstk_darwin(v105);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100014774();
  v13 = *(v103 - 8);
  __chkstk_darwin(v103);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100014714();
  v17 = *(v16 - 8);
  v114 = v16;
  v115 = v17;
  v18 = __chkstk_darwin(v16);
  v109 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v108 = &v96 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v96 - v23;
  __chkstk_darwin(v22);
  v26 = &v96 - v25;
  sub_100014674();
  sub_100014684();
  (*(v7 + 8))(v9, v104);
  (*(v107 + 104))(v106, enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:), v112);
  sub_100014724();
  sub_100014764();
  (*(v10 + 8))(v12, v105);
  sub_100014744();
  (*(v13 + 8))(v15, v103);
  if (qword_1000202B0 != -1)
  {
    swift_once();
  }

  v27 = sub_100014814();
  v28 = sub_100003FA0(v27, qword_100025198);
  v30 = v114;
  v29 = v115;
  v31 = *(v115 + 16);
  v31(v24, v26, v114);
  v107 = v28;
  v32 = sub_1000147F4();
  v33 = sub_100014914();
  v34 = os_log_type_enabled(v32, v33);
  v113 = v26;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    *v35 = 136446722;
    v36 = sub_100014A14();
    v38 = sub_100003FD8(v36, v37, v116);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    *(v35 + 14) = sub_100003FD8(0x5274657373417369, 0xEE00292879646165, v116);
    *(v35 + 22) = 2082;
    sub_100004C7C(&qword_1000203C8, &type metadata accessor for GenerativeModelsAvailability.Availability, &protocol conformance descriptor for GenerativeModelsAvailability.Availability);
    v39 = sub_100014984();
    v41 = v40;
    v112 = *(v115 + 8);
    v112(v24, v30);
    v42 = sub_100003FD8(v39, v41, v116);

    *(v35 + 24) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s.%{public}s GM availability: %{public}s", v35, 0x20u);
    swift_arrayDestroy();
    v29 = v115;

    v26 = v113;
  }

  else
  {

    v112 = *(v29 + 8);
    v112(v24, v30);
  }

  v43 = v108;
  v44 = v109;
  v31(v108, v26, v30);
  v45 = *(v29 + 88);
  if (v45(v43, v30) != enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v61 = v43;
    v62 = v112;
    v112(v61, v30);
    v31(v44, v26, v30);
    if (v45(v44, v30) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      v111 = v29 + 8;
      (*(v29 + 96))(v44, v30);
      v63 = v97;
      v64 = v100;
      v65 = v101;
      (*(v97 + 32))(v100, v44, v101);
      v66 = v96;
      (*(v63 + 16))(v96, v64, v65);
      v67 = sub_1000147F4();
      v68 = sub_100014904();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v116[0] = swift_slowAlloc();
        *v69 = 136446722;
        v70 = sub_100014A14();
        v72 = sub_100003FD8(v70, v71, v116);

        *(v69 + 4) = v72;
        *(v69 + 12) = 2082;
        *(v69 + 14) = sub_100003FD8(0x5274657373417369, 0xEE00292879646165, v116);
        *(v69 + 22) = 2082;
        sub_100004C7C(&qword_1000203B0, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo);
        v73 = sub_100014984();
        v75 = v74;
        v115 = *(v63 + 8);
        (v115)(v66, v65);
        v76 = sub_100003FD8(v73, v75, v116);

        *(v69 + 24) = v76;
        _os_log_impl(&_mh_execute_header, v67, v68, "%{public}s.%{public}s GM unavailable with info: %{public}s", v69, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v115 = *(v63 + 8);
        (v115)(v66, v65);
      }

      v86 = v100;
      v87 = sub_1000146E4();
      sub_1000020C4(&qword_1000203A8, &qword_100015C30);
      v88 = sub_1000146D4();
      v89 = *(v88 - 8);
      v90 = *(v89 + 72);
      v91 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_100015C10;
      v93 = v92 + v91;
      v94 = *(v89 + 104);
      v94(v93, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.assetIsNotReady(_:), v88);
      v94(v93 + v90, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.siriAssetIsNotReady(_:), v88);
      v94(v93 + 2 * v90, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.siriAssetStatusUnknown(_:), v88);
      LOBYTE(v89) = sub_100004580(v92, v87);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (v115)(v86, v101);
      v112(v113, v114);
      if ((v89 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v62(v26, v30);
      v62(v44, v30);
    }

    return 1;
  }

  (*(v29 + 96))(v43, v30);
  v46 = v99;
  v47 = v110;
  v48 = v111;
  (*(v99 + 32))(v110, v43, v111);
  v49 = v98;
  (*(v46 + 16))(v98, v47, v48);
  v50 = sub_1000147F4();
  v51 = sub_100014904();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    *v52 = 136446722;
    v53 = sub_100014A14();
    v55 = sub_100003FD8(v53, v54, v116);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2082;
    *(v52 + 14) = sub_100003FD8(0x5274657373417369, 0xEE00292879646165, v116);
    *(v52 + 22) = 2082;
    sub_100004C7C(&qword_1000203C0, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo);
    v56 = sub_100014984();
    v58 = v57;
    v59 = *(v46 + 8);
    v59(v49, v48);
    v60 = sub_100003FD8(v56, v58, v116);

    *(v52 + 24) = v60;
    _os_log_impl(&_mh_execute_header, v50, v51, "%{public}s.%{public}s GM restricted with info: %{public}s", v52, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v59 = *(v46 + 8);
    v59(v49, v48);
  }

  v77 = v110;
  v78 = sub_1000146B4();
  sub_1000020C4(&qword_1000203B8, &qword_100015C38);
  v79 = sub_1000146A4();
  v80 = *(v79 - 8);
  v81 = *(v80 + 72);
  v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_100015C20;
  v84 = v83 + v82;
  v85 = *(v80 + 104);
  v85(v84, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.assetIsNotReady(_:), v79);
  v85(v84 + v81, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.siriAssetIsNotReady(_:), v79);
  LOBYTE(v80) = sub_10000485C(v83, v78);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v59(v77, v111);
  v112(v113, v114);
  return (v80 & 1) != 0;
}

id GMAvailabilityProvider.init()()
{
  _s36GenerativeAssistantSettingsExtension22GMAvailabilityProviderC22__observationRegistrar33_D20E3484FEFEB4F266CB8395E395E46ALL11Observation0pH0Vvpfi_0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAvailabilityProvider(0);
  return objc_msgSendSuper2(&v2, "init");
}

id GMAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAvailabilityProvider(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003F2C()
{
  v0 = sub_100014814();
  sub_100004CC4(v0, qword_100025198);
  sub_100003FA0(v0, qword_100025198);
  sub_1000147E4();
  return sub_100014804();
}

uint64_t sub_100003FA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100003FD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000040A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100004C1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000025A4(v11);
  return v7;
}

unint64_t sub_1000040A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000041B0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100014934();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000041B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000041FC(a1, a2);
  sub_10000432C(&off_10001CC38);
  return v3;
}

char *sub_1000041FC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100004418(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100014934();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000148D4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004418(v10, 0);
        result = sub_100014924();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000432C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000448C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100004418(uint64_t a1, uint64_t a2)
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

  sub_1000020C4(&qword_100020420, qword_100015CA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000448C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000020C4(&qword_100020420, qword_100015CA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100004580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000146D4();
  v5 = __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v23 - v9;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    return 1;
  }

  v11 = a2;
  v12 = 0;
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v24 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v27 = *(v13 + 56);
  v28 = v14;
  v26 = v11 + 56;
  v15 = (v13 - 8);
  while (1)
  {
    v25 = v12;
    v28(v10, v24 + v27 * v12, v4);
    if (*(v11 + 16))
    {
      sub_100004C7C(&qword_100020428, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v16 = sub_100014824();
      v17 = -1 << *(v11 + 32);
      v18 = v16 & ~v17;
      if ((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_4:
    v12 = v25 + 1;
    (*v15)(v10, v4);
    if (v12 == v23)
    {
      return 1;
    }
  }

  v19 = ~v17;
  while (1)
  {
    v28(v7, *(v11 + 48) + v18 * v27, v4);
    sub_100004C7C(&qword_100020430, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
    v20 = sub_100014834();
    v21 = *v15;
    (*v15)(v7, v4);
    if (v20)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v21(v10, v4);
  return 0;
}

uint64_t sub_10000485C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000146A4();
  v5 = __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v23 - v9;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    return 1;
  }

  v11 = a2;
  v12 = 0;
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v24 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v27 = *(v13 + 56);
  v28 = v14;
  v26 = v11 + 56;
  v15 = (v13 - 8);
  while (1)
  {
    v25 = v12;
    v28(v10, v24 + v27 * v12, v4);
    if (*(v11 + 16))
    {
      sub_100004C7C(&qword_100020410, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v16 = sub_100014824();
      v17 = -1 << *(v11 + 32);
      v18 = v16 & ~v17;
      if ((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_4:
    v12 = v25 + 1;
    (*v15)(v10, v4);
    if (v12 == v23)
    {
      return 1;
    }
  }

  v19 = ~v17;
  while (1)
  {
    v28(v7, *(v11 + 48) + v18 * v27, v4);
    sub_100004C7C(&qword_100020418, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
    v20 = sub_100014834();
    v21 = *v15;
    (*v15)(v7, v4);
    if (v20)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v21(v10, v4);
  return 0;
}

uint64_t type metadata accessor for GMAvailabilityProvider(uint64_t a1)
{
  result = qword_100020400;
  if (!qword_100020400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004B8C(uint64_t a1, uint64_t a2)
{
  result = sub_100014664();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100004C1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_100004CC4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100004D5C()
{
  v0 = sub_1000145D4();
  sub_100004CC4(v0, qword_1000251B0);
  v1 = sub_100003FA0(v0, qword_1000251B0);
  *v1 = type metadata accessor for ResourceBundleHelper();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *GenerativeAssistantSettingsProvider.shared.unsafeMutableAddressor()
{
  if (qword_1000202C0 != -1)
  {
    swift_once();
  }

  return &static GenerativeAssistantSettingsProvider.shared;
}

BOOL GenerativeAssistantSettingsProvider.LLMProvider.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CC60;
  v6._object = a2;
  v4 = sub_100014954(v3, v6);

  return v4 != 0;
}

Swift::Int sub_100004EB0()
{
  sub_1000149A4();
  sub_1000148B4();
  return sub_1000149C4();
}

Swift::Int sub_100004F1C(uint64_t a1)
{
  sub_1000149A4();
  sub_1000148B4();
  return sub_1000149C4();
}

uint64_t sub_100004F6C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10001CC98;
  v7._object = v3;
  v5 = sub_100014954(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100004FDC()
{
  type metadata accessor for GenerativeAssistantSettingsProvider();
  result = swift_initStaticObject();
  static GenerativeAssistantSettingsProvider.shared = result;
  return result;
}

uint64_t static GenerativeAssistantSettingsProvider.shared.getter()
{
  type metadata accessor for GenerativeAssistantSettingsProvider();

  return swift_initStaticObject();
}

uint64_t GenerativeAssistantSettingsProvider.llm()()
{
  v0 = sub_100014794();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000147D4();
  sub_1000147C4();
  sub_1000147B4();

  result = (*(v1 + 88))(v3, v0);
  if (result != enum case for GenerativeAssistantProvider.LLMProvider.chatGPT(_:))
  {
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

Swift::String __swiftcall GenerativeAssistantSettingsProvider.catFamilySuffix()()
{
  v0 = sub_100005198(&dispatch thunk of GenerativeAssistantProvider.catFamilySuffix());
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall GenerativeAssistantSettingsProvider.icon()()
{
  v0 = sub_100005198(&dispatch thunk of GenerativeAssistantProvider.icon());
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_100005198(uint64_t (*a1)(void))
{
  sub_1000147D4();
  sub_1000147C4();
  v2 = a1();

  return v2;
}

uint64_t GenerativeAssistantSettingsProvider.modelBundle()()
{
  sub_1000147D4();
  sub_1000147C4();
  sub_1000147A4();
}

Swift::String __swiftcall GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()()
{
  v0 = sub_100014644();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000145D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100014854();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000145E4();
  __chkstk_darwin(v6 - 8);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v7 = sub_100003FA0(v1, qword_1000251B0);
  (*(v2 + 16))(v4, v7, v1);
  sub_100014634();
  sub_1000145F4();
  v8 = sub_1000148A4();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_10000547C()
{
  result = qword_1000204D0;
  if (!qword_1000204D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000204D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsProvider.LLMProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GenerativeAssistantSettingsProvider.LLMProvider(_WORD *result, int a2, int a3)
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

unint64_t sub_1000055BC()
{
  result = qword_1000205A0;
  if (!qword_1000205A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205A0);
  }

  return result;
}

unint64_t sub_100005610()
{
  result = qword_1000205A8;
  if (!qword_1000205A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205A8);
  }

  return result;
}

uint64_t sub_100005664()
{
  v0 = sub_100014644();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000145D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100014854();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000145E4();
  sub_100004CC4(v6, qword_1000251D0);
  sub_100003FA0(v6, qword_1000251D0);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v7 = sub_100003FA0(v1, qword_1000251B0);
  (*(v2 + 16))(v4, v7, v1);
  sub_100014634();
  return sub_1000145F4();
}

void *sub_10000587C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000143D4();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1000058F0(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000143C4();
  return sub_10000DC04;
}

unint64_t sub_100005964()
{
  result = qword_1000205B0;
  if (!qword_1000205B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205B0);
  }

  return result;
}

unint64_t sub_1000059EC()
{
  result = qword_1000205B8;
  if (!qword_1000205B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205B8);
  }

  return result;
}

unint64_t sub_100005A44()
{
  result = qword_1000205C0;
  if (!qword_1000205C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205C0);
  }

  return result;
}

unint64_t sub_100005A9C()
{
  result = qword_1000205C8;
  if (!qword_1000205C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205C8);
  }

  return result;
}

uint64_t sub_100005B50(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000DB2C();
  v6 = sub_10000DB80();
  v7 = sub_10000DAD8();
  *v4 = v2;
  v4[1] = sub_10000DBE0;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100005C1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000B618();
  *a1 = result;
  return result;
}

uint64_t sub_100005C44(uint64_t a1)
{
  v2 = sub_100005964();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100005C84()
{
  result = qword_1000205D0;
  if (!qword_1000205D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205D0);
  }

  return result;
}

unint64_t sub_100005CDC()
{
  result = qword_1000205D8;
  if (!qword_1000205D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205D8);
  }

  return result;
}

unint64_t sub_100005D34()
{
  result = qword_1000205E0;
  if (!qword_1000205E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205E0);
  }

  return result;
}

uint64_t sub_100005D88()
{
  v0 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_100014644();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000145D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100014854();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000145E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100014514();
  sub_100004CC4(v10, qword_1000251E8);
  sub_100003FA0(v10, qword_1000251E8);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v11 = sub_100003FA0(v3, qword_1000251B0);
  (*(v4 + 16))(v6, v11, v3);
  sub_100014634();
  sub_1000145F4();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_100014504();
}

uint64_t sub_1000060D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000DC70;

  return sub_10000B914();
}

uint64_t sub_100006170(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000DBF8;

  return sub_10000B914();
}

uint64_t sub_100006214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000DC70;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

unint64_t sub_1000062D8()
{
  result = qword_1000205E8;
  if (!qword_1000205E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205E8);
  }

  return result;
}

unint64_t sub_100006330()
{
  result = qword_1000205F0;
  if (!qword_1000205F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205F0);
  }

  return result;
}

uint64_t sub_1000063C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006410(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006638();
  *v5 = v2;
  v5[1] = sub_10000DBD8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000064C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000DBD8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100006588()
{
  result = qword_100020608;
  if (!qword_100020608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020608);
  }

  return result;
}

unint64_t sub_1000065E0()
{
  result = qword_100020610;
  if (!qword_100020610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020610);
  }

  return result;
}

unint64_t sub_100006638()
{
  result = qword_100020618;
  if (!qword_100020618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020618);
  }

  return result;
}

unint64_t sub_100006690()
{
  result = qword_100020620;
  if (!qword_100020620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020620);
  }

  return result;
}

unint64_t sub_1000066E8()
{
  result = qword_100020628;
  if (!qword_100020628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020628);
  }

  return result;
}

uint64_t sub_10000673C(uint64_t a1)
{
  v2 = sub_100005D34();

  return EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004FLL, 0x8000000100015390, a1, v2);
}

unint64_t sub_1000067A4()
{
  result = qword_100020630;
  if (!qword_100020630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020630);
  }

  return result;
}

unint64_t sub_1000067FC()
{
  result = qword_100020638;
  if (!qword_100020638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020638);
  }

  return result;
}

unint64_t sub_100006854()
{
  result = qword_100020640;
  if (!qword_100020640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020640);
  }

  return result;
}

unint64_t sub_1000068AC()
{
  result = qword_100020648;
  if (!qword_100020648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020648);
  }

  return result;
}

uint64_t sub_10000690C(uint64_t a1)
{
  sub_10000DAD8();
  v2 = sub_100014464();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1000069E0(uint64_t a1)
{
  v2 = sub_100005D34();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100006A30()
{
  result = qword_100020660;
  if (!qword_100020660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020660);
  }

  return result;
}

uint64_t sub_100006ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000DBD8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100006B80(uint64_t a1)
{
  v2 = sub_100006854();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100006BD0()
{
  result = qword_100020668;
  if (!qword_100020668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020668);
  }

  return result;
}

unint64_t sub_100006C24()
{
  result = qword_100020670;
  if (!qword_100020670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020670);
  }

  return result;
}

uint64_t sub_100006C78()
{
  v0 = sub_100014644();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000145D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100014854();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000145E4();
  sub_100004CC4(v6, qword_100025200);
  sub_100003FA0(v6, qword_100025200);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v7 = sub_100003FA0(v1, qword_1000251B0);
  (*(v2 + 16))(v4, v7, v1);
  sub_100014634();
  return sub_1000145F4();
}

uint64_t (*sub_100006E90(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000143C4();
  return sub_10000DC04;
}

unint64_t sub_100006F04()
{
  result = qword_100020678;
  if (!qword_100020678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020678);
  }

  return result;
}

unint64_t sub_100006F8C()
{
  result = qword_100020680;
  if (!qword_100020680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020680);
  }

  return result;
}

unint64_t sub_100006FE4()
{
  result = qword_100020688;
  if (!qword_100020688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020688);
  }

  return result;
}

uint64_t sub_100007088(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000DA30();
  v6 = sub_10000DA84();
  v7 = sub_10000D9DC();
  *v4 = v2;
  v4[1] = sub_10000DBE0;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100007154@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000BEA0();
  *a1 = result;
  return result;
}

uint64_t sub_10000717C(uint64_t a1)
{
  v2 = sub_100006F04();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000071BC()
{
  result = qword_100020690;
  if (!qword_100020690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020690);
  }

  return result;
}

unint64_t sub_100007214()
{
  result = qword_100020698;
  if (!qword_100020698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020698);
  }

  return result;
}

unint64_t sub_10000726C()
{
  result = qword_1000206A0;
  if (!qword_1000206A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206A0);
  }

  return result;
}

uint64_t sub_1000072C0()
{
  v0 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_100014644();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000145D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100014854();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000145E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100014514();
  sub_100004CC4(v10, qword_100025218);
  sub_100003FA0(v10, qword_100025218);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v11 = sub_100003FA0(v3, qword_1000251B0);
  (*(v4 + 16))(v6, v11, v3);
  sub_100014634();
  sub_1000145F4();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_100014504();
}

uint64_t sub_1000075DC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_1000020C4(&qword_100020878, &unk_1000176F0);
  __chkstk_darwin(v1 - 8);
  v19 = &v18 - v2;
  v3 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v3 - 8);
  v18 = &v18 - v4;
  v5 = sub_100014644();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000145D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100014854();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000145E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v13 = sub_100003FA0(v6, qword_1000251B0);
  v14 = *(v7 + 16);
  v14(v9, v13, v6);
  sub_100014634();
  sub_1000145F4();
  sub_100014844();
  v14(v9, v13, v6);
  sub_100014634();
  v15 = v18;
  sub_1000145F4();
  (*(v12 + 56))(v15, 0, 1, v11);
  v16 = sub_100014404();
  (*(*(v16 - 8) + 56))(v19, 1, 1, v16);
  return sub_100014424();
}

uint64_t sub_1000079D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000DC70;

  return sub_10000C19C();
}

uint64_t sub_100007A70(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000DBF8;

  return sub_10000C19C();
}

unint64_t sub_100007B18()
{
  result = qword_1000206A8;
  if (!qword_1000206A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206A8);
  }

  return result;
}

unint64_t sub_100007B70()
{
  result = qword_1000206B0;
  if (!qword_1000206B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206B0);
  }

  return result;
}

uint64_t sub_100007C08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100007D74();
  *v5 = v2;
  v5[1] = sub_10000DBD8;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100007CC4()
{
  result = qword_1000206C8;
  if (!qword_1000206C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206C8);
  }

  return result;
}

unint64_t sub_100007D1C()
{
  result = qword_1000206D0;
  if (!qword_1000206D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206D0);
  }

  return result;
}

unint64_t sub_100007D74()
{
  result = qword_1000206D8;
  if (!qword_1000206D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206D8);
  }

  return result;
}

uint64_t sub_100007DC8()
{
  v0 = qword_100020590;

  return v0;
}

unint64_t sub_100007E04()
{
  result = qword_1000206E0;
  if (!qword_1000206E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E0);
  }

  return result;
}

uint64_t sub_100007E58(uint64_t a1)
{
  v2 = sub_10000726C();

  return EntityURLRepresentation.init(stringLiteral:)(0xD000000000000049, 0x8000000100015280, a1, v2);
}

unint64_t sub_100007EC0()
{
  result = qword_1000206E8;
  if (!qword_1000206E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E8);
  }

  return result;
}

unint64_t sub_100007F18()
{
  result = qword_1000206F0;
  if (!qword_1000206F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206F0);
  }

  return result;
}

unint64_t sub_100007F70()
{
  result = qword_1000206F8;
  if (!qword_1000206F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206F8);
  }

  return result;
}

uint64_t sub_100007FC4(uint64_t a1)
{
  sub_10000D9DC();
  v2 = sub_100014464();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100008098(uint64_t a1)
{
  v2 = sub_10000726C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000080E8()
{
  result = qword_100020710;
  if (!qword_100020710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020710);
  }

  return result;
}

uint64_t sub_100008140(uint64_t a1)
{
  v2 = sub_100007F70();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100008190()
{
  result = qword_100020718;
  if (!qword_100020718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020718);
  }

  return result;
}

unint64_t sub_1000081E4()
{
  result = qword_100020720;
  if (!qword_100020720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020720);
  }

  return result;
}

uint64_t sub_100008238()
{
  v0 = sub_100014644();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000145D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100014854();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000145E4();
  sub_100004CC4(v6, qword_100025230);
  sub_100003FA0(v6, qword_100025230);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v7 = sub_100003FA0(v1, qword_1000251B0);
  (*(v2 + 16))(v4, v7, v1);
  sub_100014634();
  return sub_1000145F4();
}

uint64_t (*sub_100008450(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000143C4();
  return sub_1000084C4;
}

unint64_t sub_1000084C8()
{
  result = qword_100020728;
  if (!qword_100020728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020728);
  }

  return result;
}

unint64_t sub_100008550()
{
  result = qword_100020730;
  if (!qword_100020730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020730);
  }

  return result;
}

unint64_t sub_1000085A8()
{
  result = qword_100020738;
  if (!qword_100020738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020738);
  }

  return result;
}

uint64_t sub_10000864C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000D934();
  v6 = sub_10000D988();
  v7 = sub_10000D8E0();
  *v4 = v2;
  v4[1] = sub_100008718;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100008718()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100008820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C728();
  *a1 = result;
  return result;
}

uint64_t sub_100008848(uint64_t a1)
{
  v2 = sub_1000084C8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100008888()
{
  result = qword_100020740;
  if (!qword_100020740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020740);
  }

  return result;
}

unint64_t sub_1000088E0()
{
  result = qword_100020748;
  if (!qword_100020748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020748);
  }

  return result;
}

unint64_t sub_100008938()
{
  result = qword_100020750;
  if (!qword_100020750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020750);
  }

  return result;
}

uint64_t sub_10000898C()
{
  v0 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_100014644();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000145D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100014854();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000145E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100014514();
  sub_100004CC4(v10, qword_100025248);
  sub_100003FA0(v10, qword_100025248);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v11 = sub_100003FA0(v3, qword_1000251B0);
  (*(v4 + 16))(v6, v11, v3);
  sub_100014634();
  sub_1000145F4();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_100014504();
}

uint64_t sub_100008CBC@<X0>(uint64_t a3@<X8>)
{
  v22 = a3;
  v3 = sub_1000020C4(&qword_100020878, &unk_1000176F0);
  __chkstk_darwin(v3 - 8);
  v21 = &v20 - v4;
  v5 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v5 - 8);
  v20 = &v20 - v6;
  v7 = sub_100014644();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000145D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100014854();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1000145E4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v15 = sub_100003FA0(v8, qword_1000251B0);
  v16 = *(v9 + 16);
  v16(v11, v15, v8);
  sub_100014634();
  sub_1000145F4();
  sub_100014844();
  v16(v11, v15, v8);
  sub_100014634();
  v17 = v20;
  sub_1000145F4();
  (*(v14 + 56))(v17, 0, 1, v13);
  v18 = sub_100014404();
  (*(*(v18 - 8) + 56))(v21, 1, 1, v18);
  return sub_100014424();
}

uint64_t sub_1000090A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000DC70;

  return sub_10000CA24();
}

uint64_t sub_100009148(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000091EC;

  return sub_10000CA24();
}

uint64_t sub_1000091EC(uint64_t a1)
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

uint64_t sub_1000092FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000093BC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000093BC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000094C0()
{
  result = qword_100020758;
  if (!qword_100020758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020758);
  }

  return result;
}

unint64_t sub_100009518()
{
  result = qword_100020760;
  if (!qword_100020760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020760);
  }

  return result;
}

uint64_t sub_1000095B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000098C4();
  *v5 = v2;
  v5[1] = sub_100009664;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100009664()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100009758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100009664;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100009814()
{
  result = qword_100020778;
  if (!qword_100020778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020778);
  }

  return result;
}

unint64_t sub_10000986C()
{
  result = qword_100020780;
  if (!qword_100020780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020780);
  }

  return result;
}

unint64_t sub_1000098C4()
{
  result = qword_100020788;
  if (!qword_100020788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020788);
  }

  return result;
}

unint64_t sub_100009938()
{
  result = qword_100020790;
  if (!qword_100020790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020790);
  }

  return result;
}

uint64_t sub_10000998C(uint64_t a1)
{
  v2 = sub_100008938();

  return EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004ALL, 0x8000000100015150, a1, v2);
}

unint64_t sub_1000099F4()
{
  result = qword_100020798;
  if (!qword_100020798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020798);
  }

  return result;
}

unint64_t sub_100009A4C()
{
  result = qword_1000207A0;
  if (!qword_1000207A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207A0);
  }

  return result;
}

unint64_t sub_100009AA4()
{
  result = qword_1000207A8;
  if (!qword_1000207A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207A8);
  }

  return result;
}

uint64_t sub_100009AF8(uint64_t a1)
{
  sub_10000D8E0();
  v2 = sub_100014464();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100009BCC(uint64_t a1)
{
  v2 = sub_100008938();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100009C1C()
{
  result = qword_1000207C0;
  if (!qword_1000207C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207C0);
  }

  return result;
}

uint64_t sub_100009C9C(uint64_t a1)
{
  v2 = sub_100009AA4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100009CEC()
{
  result = qword_1000207C8;
  if (!qword_1000207C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207C8);
  }

  return result;
}

unint64_t sub_100009D40()
{
  result = qword_1000207D0;
  if (!qword_1000207D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207D0);
  }

  return result;
}

uint64_t sub_100009D94()
{
  v0 = sub_100014644();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000145D4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100014854();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000145E4();
  sub_100004CC4(v6, qword_100025260);
  sub_100003FA0(v6, qword_100025260);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v7 = sub_100003FA0(v1, qword_1000251B0);
  (*(v2 + 16))(v4, v7, v1);
  sub_100014634();
  return sub_1000145F4();
}

uint64_t (*sub_100009FAC(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000143C4();
  return sub_10000DC04;
}

void sub_10000A020(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10000A06C()
{
  result = qword_1000207D8;
  if (!qword_1000207D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207D8);
  }

  return result;
}

uint64_t sub_10000A0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v7, a2, v8);
}

unint64_t sub_10000A168()
{
  result = qword_1000207E0;
  if (!qword_1000207E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207E0);
  }

  return result;
}

unint64_t sub_10000A1C0()
{
  result = qword_1000207E8;
  if (!qword_1000207E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207E8);
  }

  return result;
}

uint64_t sub_10000A2B8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000D838();
  v6 = sub_10000D88C();
  v7 = sub_10000B5C4();
  *v4 = v2;
  v4[1] = sub_10000DBE0;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000A384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000CFB0();
  *a1 = result;
  return result;
}

uint64_t sub_10000A3AC(uint64_t a1)
{
  v2 = sub_10000A06C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000A3EC()
{
  result = qword_1000207F0;
  if (!qword_1000207F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207F0);
  }

  return result;
}

unint64_t sub_10000A444()
{
  result = qword_1000207F8;
  if (!qword_1000207F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207F8);
  }

  return result;
}

unint64_t sub_10000A49C()
{
  result = qword_100020800;
  if (!qword_100020800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020800);
  }

  return result;
}

uint64_t sub_10000A4F0()
{
  v0 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_100014644();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000145D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100014854();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000145E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100014514();
  sub_100004CC4(v10, qword_100025278);
  sub_100003FA0(v10, qword_100025278);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v11 = sub_100003FA0(v3, qword_1000251B0);
  (*(v4 + 16))(v6, v11, v3);
  sub_100014634();
  sub_1000145F4();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_100014504();
}

uint64_t sub_10000A80C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_1000020C4(&qword_100020878, &unk_1000176F0);
  __chkstk_darwin(v1 - 8);
  v19 = &v18 - v2;
  v3 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v3 - 8);
  v18 = &v18 - v4;
  v5 = sub_100014644();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000145D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100014854();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000145E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v13 = sub_100003FA0(v6, qword_1000251B0);
  v14 = *(v7 + 16);
  v14(v9, v13, v6);
  sub_100014634();
  sub_1000145F4();
  sub_100014844();
  v14(v9, v13, v6);
  sub_100014634();
  v15 = v18;
  sub_1000145F4();
  (*(v12 + 56))(v15, 0, 1, v11);
  v16 = sub_100014404();
  (*(*(v16 - 8) + 56))(v19, 1, 1, v16);
  return sub_100014424();
}

uint64_t sub_10000AC00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000DC70;

  return sub_10000D2AC();
}

uint64_t sub_10000ACA0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000DBF8;

  return sub_10000D2AC();
}

unint64_t sub_10000AD48()
{
  result = qword_100020808;
  if (!qword_100020808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020808);
  }

  return result;
}

unint64_t sub_10000ADA0()
{
  result = qword_100020810;
  if (!qword_100020810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020810);
  }

  return result;
}

uint64_t sub_10000AE38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000063C8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000AEB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000B020();
  *v5 = v2;
  v5[1] = sub_10000DBD8;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10000AF70()
{
  result = qword_100020828;
  if (!qword_100020828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020828);
  }

  return result;
}

unint64_t sub_10000AFC8()
{
  result = qword_100020830;
  if (!qword_100020830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020830);
  }

  return result;
}

unint64_t sub_10000B020()
{
  result = qword_100020838;
  if (!qword_100020838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020838);
  }

  return result;
}

unint64_t sub_10000B078()
{
  result = qword_100020840;
  if (!qword_100020840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020840);
  }

  return result;
}

uint64_t sub_10000B0CC(uint64_t a1)
{
  v2 = sub_10000A49C();

  return EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004ELL, 0x8000000100015000, a1, v2);
}

unint64_t sub_10000B134()
{
  result = qword_100020848;
  if (!qword_100020848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020848);
  }

  return result;
}

unint64_t sub_10000B18C()
{
  result = qword_100020850;
  if (!qword_100020850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020850);
  }

  return result;
}

unint64_t sub_10000B1E4()
{
  result = qword_100020858;
  if (!qword_100020858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020858);
  }

  return result;
}

uint64_t sub_10000B238(uint64_t a1)
{
  sub_10000B5C4();
  v2 = sub_100014464();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10000B2DC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100003FA0(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10000B3B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000063C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000B408(uint64_t a1)
{
  v2 = sub_10000A49C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000B458()
{
  result = qword_100020870;
  if (!qword_100020870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020870);
  }

  return result;
}

uint64_t sub_10000B4B0(uint64_t a1)
{
  v2 = sub_10000B1E4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000B5C4()
{
  result = qword_100020888;
  if (!qword_100020888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020888);
  }

  return result;
}

uint64_t sub_10000B618()
{
  v17 = sub_1000144E4();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000020C4(&qword_100020890, &qword_1000181F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000145E4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000020C4(&qword_1000208F8, &unk_100017740);
  sub_1000145C4();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 9;
  v14 = sub_1000143B4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100005D34();
  return sub_1000143F4();
}

uint64_t sub_10000B914()
{
  v1 = sub_100014794();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100014754();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_100014694();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();
  v4 = sub_100014734();
  v0[11] = v4;
  v0[12] = *(v4 - 8);
  v0[13] = swift_task_alloc();
  v5 = sub_100014774();
  v0[14] = v5;
  v0[15] = *(v5 - 8);
  v0[16] = swift_task_alloc();
  v6 = sub_100014714();
  v0[17] = v6;
  v0[18] = *(v6 - 8);
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();

  return _swift_task_switch(sub_10000BBA8, 0, 0);
}

uint64_t sub_10000BBA8(uint64_t a1)
{
  if (qword_1000202A8 != -1)
  {
    swift_once();
  }

  v2 = v1[18];
  v23 = v1[19];
  v24 = v1[17];
  v3 = v1[16];
  v20 = v1[15];
  v21 = v1[20];
  v4 = v1[13];
  v22 = v1[14];
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[6];
  v18 = v1[5];
  v19 = v1[11];
  sub_100014674();
  sub_100014684();
  (*(v6 + 8))(v7, v9);
  (*(v10 + 104))(v8, enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:), v18);
  sub_100014724();
  sub_100014764();
  (*(v5 + 8))(v4, v19);
  sub_100014744();
  (*(v20 + 8))(v3, v22);
  (*(v2 + 104))(v23, enum case for GenerativeModelsAvailability.Availability.available(_:), v24);
  LOBYTE(v7) = sub_100014704();
  v11 = *(v2 + 8);
  v11(v23, v24);
  v11(v21, v24);
  if (v7)
  {
    if (qword_1000202C0 != -1)
    {
      swift_once();
    }

    v13 = v1[3];
    v12 = v1[4];
    v14 = v1[2];
    sub_1000147D4();
    sub_1000147C4();
    sub_1000147B4();

    if ((*(v13 + 88))(v12, v14) != enum case for GenerativeAssistantProvider.LLMProvider.chatGPT(_:))
    {
      (*(v1[3] + 8))(v1[4], v1[2]);
    }

    v15 = &off_10001CCD0;
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  v16 = v1[1];

  return v16(v15);
}

uint64_t sub_10000BEA0()
{
  v17 = sub_1000144E4();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000020C4(&qword_100020890, &qword_1000181F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000145E4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000020C4(&qword_1000208D8, &qword_100017730);
  sub_1000145C4();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 9;
  v14 = sub_1000143B4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10000726C();
  return sub_1000143F4();
}

uint64_t sub_10000C19C()
{
  v1 = sub_100014794();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100014754();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_100014694();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();
  v4 = sub_100014734();
  v0[11] = v4;
  v0[12] = *(v4 - 8);
  v0[13] = swift_task_alloc();
  v5 = sub_100014774();
  v0[14] = v5;
  v0[15] = *(v5 - 8);
  v0[16] = swift_task_alloc();
  v6 = sub_100014714();
  v0[17] = v6;
  v0[18] = *(v6 - 8);
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();

  return _swift_task_switch(sub_10000C430, 0, 0);
}

uint64_t sub_10000C430(uint64_t a1)
{
  if (qword_1000202A8 != -1)
  {
    swift_once();
  }

  v2 = v1[18];
  v23 = v1[19];
  v24 = v1[17];
  v3 = v1[16];
  v20 = v1[15];
  v21 = v1[20];
  v4 = v1[13];
  v22 = v1[14];
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[6];
  v18 = v1[5];
  v19 = v1[11];
  sub_100014674();
  sub_100014684();
  (*(v6 + 8))(v7, v9);
  (*(v10 + 104))(v8, enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:), v18);
  sub_100014724();
  sub_100014764();
  (*(v5 + 8))(v4, v19);
  sub_100014744();
  (*(v20 + 8))(v3, v22);
  (*(v2 + 104))(v23, enum case for GenerativeModelsAvailability.Availability.available(_:), v24);
  LOBYTE(v7) = sub_100014704();
  v11 = *(v2 + 8);
  v11(v23, v24);
  v11(v21, v24);
  if (v7)
  {
    if (qword_1000202C0 != -1)
    {
      swift_once();
    }

    v13 = v1[3];
    v12 = v1[4];
    v14 = v1[2];
    sub_1000147D4();
    sub_1000147C4();
    sub_1000147B4();

    if ((*(v13 + 88))(v12, v14) != enum case for GenerativeAssistantProvider.LLMProvider.chatGPT(_:))
    {
      (*(v1[3] + 8))(v1[4], v1[2]);
    }

    v15 = &off_10001CCF8;
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  v16 = v1[1];

  return v16(v15);
}

uint64_t sub_10000C728()
{
  v17 = sub_1000144E4();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000020C4(&qword_100020890, &qword_1000181F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000145E4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000020C4(&qword_1000208B8, &qword_100017720);
  sub_1000145C4();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 9;
  v14 = sub_1000143B4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100008938();
  return sub_1000143F4();
}

uint64_t sub_10000CA24()
{
  v1 = sub_100014794();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100014754();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_100014694();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();
  v4 = sub_100014734();
  v0[11] = v4;
  v0[12] = *(v4 - 8);
  v0[13] = swift_task_alloc();
  v5 = sub_100014774();
  v0[14] = v5;
  v0[15] = *(v5 - 8);
  v0[16] = swift_task_alloc();
  v6 = sub_100014714();
  v0[17] = v6;
  v0[18] = *(v6 - 8);
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();

  return _swift_task_switch(sub_10000CCB8, 0, 0);
}

uint64_t sub_10000CCB8(uint64_t a1)
{
  if (qword_1000202A8 != -1)
  {
    swift_once();
  }

  v2 = v1[18];
  v23 = v1[19];
  v24 = v1[17];
  v3 = v1[16];
  v20 = v1[15];
  v21 = v1[20];
  v4 = v1[13];
  v22 = v1[14];
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[6];
  v18 = v1[5];
  v19 = v1[11];
  sub_100014674();
  sub_100014684();
  (*(v6 + 8))(v7, v9);
  (*(v10 + 104))(v8, enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:), v18);
  sub_100014724();
  sub_100014764();
  (*(v5 + 8))(v4, v19);
  sub_100014744();
  (*(v20 + 8))(v3, v22);
  (*(v2 + 104))(v23, enum case for GenerativeModelsAvailability.Availability.available(_:), v24);
  LOBYTE(v7) = sub_100014704();
  v11 = *(v2 + 8);
  v11(v23, v24);
  v11(v21, v24);
  if (v7)
  {
    if (qword_1000202C0 != -1)
    {
      swift_once();
    }

    v13 = v1[3];
    v12 = v1[4];
    v14 = v1[2];
    sub_1000147D4();
    sub_1000147C4();
    sub_1000147B4();

    if ((*(v13 + 88))(v12, v14) != enum case for GenerativeAssistantProvider.LLMProvider.chatGPT(_:))
    {
      (*(v1[3] + 8))(v1[4], v1[2]);
    }

    v15 = &off_10001CD20;
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  v16 = v1[1];

  return v16(v15);
}

uint64_t sub_10000CFB0()
{
  v17 = sub_1000144E4();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000020C4(&qword_100020890, &qword_1000181F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000145E4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000020C4(&qword_100020898, &qword_100017710);
  sub_1000145C4();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 9;
  v14 = sub_1000143B4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10000A49C();
  return sub_1000143F4();
}

uint64_t sub_10000D2AC()
{
  v1 = sub_100014794();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100014754();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_100014694();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();
  v4 = sub_100014734();
  v0[11] = v4;
  v0[12] = *(v4 - 8);
  v0[13] = swift_task_alloc();
  v5 = sub_100014774();
  v0[14] = v5;
  v0[15] = *(v5 - 8);
  v0[16] = swift_task_alloc();
  v6 = sub_100014714();
  v0[17] = v6;
  v0[18] = *(v6 - 8);
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();

  return _swift_task_switch(sub_10000D540, 0, 0);
}

uint64_t sub_10000D540(uint64_t a1)
{
  if (qword_1000202A8 != -1)
  {
    swift_once();
  }

  v2 = v1[18];
  v23 = v1[19];
  v24 = v1[17];
  v3 = v1[16];
  v20 = v1[15];
  v21 = v1[20];
  v4 = v1[13];
  v22 = v1[14];
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[6];
  v18 = v1[5];
  v19 = v1[11];
  sub_100014674();
  sub_100014684();
  (*(v6 + 8))(v7, v9);
  (*(v10 + 104))(v8, enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:), v18);
  sub_100014724();
  sub_100014764();
  (*(v5 + 8))(v4, v19);
  sub_100014744();
  (*(v20 + 8))(v3, v22);
  (*(v2 + 104))(v23, enum case for GenerativeModelsAvailability.Availability.available(_:), v24);
  LOBYTE(v7) = sub_100014704();
  v11 = *(v2 + 8);
  v11(v23, v24);
  v11(v21, v24);
  if (v7)
  {
    if (qword_1000202C0 != -1)
    {
      swift_once();
    }

    v13 = v1[3];
    v12 = v1[4];
    v14 = v1[2];
    sub_1000147D4();
    sub_1000147C4();
    sub_1000147B4();

    if ((*(v13 + 88))(v12, v14) != enum case for GenerativeAssistantProvider.LLMProvider.chatGPT(_:))
    {
      (*(v1[3] + 8))(v1[4], v1[2]);
    }

    v15 = &off_10001CD48;
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  v16 = v1[1];

  return v16(v15);
}

unint64_t sub_10000D838()
{
  result = qword_1000208A0;
  if (!qword_1000208A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208A0);
  }

  return result;
}

unint64_t sub_10000D88C()
{
  result = qword_1000208A8;
  if (!qword_1000208A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208A8);
  }

  return result;
}

unint64_t sub_10000D8E0()
{
  result = qword_1000208B0;
  if (!qword_1000208B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208B0);
  }

  return result;
}

unint64_t sub_10000D934()
{
  result = qword_1000208C0;
  if (!qword_1000208C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208C0);
  }

  return result;
}

unint64_t sub_10000D988()
{
  result = qword_1000208C8;
  if (!qword_1000208C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208C8);
  }

  return result;
}

unint64_t sub_10000D9DC()
{
  result = qword_1000208D0;
  if (!qword_1000208D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208D0);
  }

  return result;
}

unint64_t sub_10000DA30()
{
  result = qword_1000208E0;
  if (!qword_1000208E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208E0);
  }

  return result;
}

unint64_t sub_10000DA84()
{
  result = qword_1000208E8;
  if (!qword_1000208E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208E8);
  }

  return result;
}

unint64_t sub_10000DAD8()
{
  result = qword_1000208F0;
  if (!qword_1000208F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208F0);
  }

  return result;
}

unint64_t sub_10000DB2C()
{
  result = qword_100020900;
  if (!qword_100020900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020900);
  }

  return result;
}

unint64_t sub_10000DB80()
{
  result = qword_100020908;
  if (!qword_100020908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020908);
  }

  return result;
}

uint64_t sub_10000DC74(uint64_t a1)
{
  v2 = sub_10000DDC4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000DD1C();
  sub_100014784();
  return 0;
}

unint64_t sub_10000DD1C()
{
  result = qword_100020910;
  if (!qword_100020910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020910);
  }

  return result;
}

unint64_t sub_10000DDC4()
{
  result = qword_100020918;
  if (!qword_100020918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020918);
  }

  return result;
}

unint64_t sub_10000DE2C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = a1;
    v6 = 0x6F72507075746573;
    if (a1 != 2)
    {
      v6 = 0xD000000000000016;
    }

    if (a1)
    {
      v5 = 0x656C62616E457369;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E496E676973;
    v2 = 0x74754F6E676973;
    if (a1 != 7)
    {
      v2 = 0x5065646172677075;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x43746E756F636361;
    if (a1 != 4)
    {
      v3 = 0x6168437055746573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t GenerativeAssistantSettingsDestination.fullURL.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000020C4(&qword_100020920, &qword_100017830);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v22[0] = 0xD00000000000003DLL;
  v22[1] = 0x8000000100015440;
  v23._countAndFlagsBits = 63;
  v23._object = 0xE100000000000000;
  sub_1000148C4(v23);
  v24._countAndFlagsBits = 2003134838;
  v24._object = 0xE400000000000000;
  sub_1000148C4(v24);
  v25._countAndFlagsBits = 61;
  v25._object = 0xE100000000000000;
  sub_1000148C4(v25);
  if (a1 <= 3u)
  {
    v15 = a1;
    v16 = 0xE000000000000000;
    v17 = 0xEB0000000074706DLL;
    v18 = 0x6F72507075746573;
    if (a1 != 2)
    {
      v18 = 0xD000000000000016;
      v17 = 0x8000000100014D70;
    }

    if (a1)
    {
      v15 = 0x656C62616E457369;
      v16 = 0xE900000000000064;
    }

    if (a1 <= 1u)
    {
      v13._countAndFlagsBits = v15;
    }

    else
    {
      v13._countAndFlagsBits = v18;
    }

    if (a1 <= 1u)
    {
      v14 = v16;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v8 = 0x6E496E676973;
    v9 = 0xE700000000000000;
    v10 = 0x74754F6E676973;
    if (a1 != 7)
    {
      v10 = 0x5065646172677075;
      v9 = 0xEB000000006E616CLL;
    }

    if (a1 != 6)
    {
      v8 = v10;
      v7 = v9;
    }

    v11 = 0xEF736C6F72746E6FLL;
    v12 = 0x43746E756F636361;
    if (a1 != 4)
    {
      v12 = 0x6168437055746573;
      v11 = 0xEC00000054504774;
    }

    if (a1 <= 5u)
    {
      v13._countAndFlagsBits = v12;
    }

    else
    {
      v13._countAndFlagsBits = v8;
    }

    if (a1 <= 5u)
    {
      v14 = v11;
    }

    else
    {
      v14 = v7;
    }
  }

  v13._object = v14;
  sub_1000148C4(v13);

  sub_100014604();

  v19 = sub_100014624();
  v20 = *(v19 - 8);
  result = (*(v20 + 48))(v6, 1, v19);
  if (result != 1)
  {
    return (*(v20 + 32))(a2, v6, v19);
  }

  __break(1u);
  return result;
}

unint64_t GenerativeAssistantSettingsDestination.Origin.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x54504774616863;
  v2 = 1769105779;
  if (a1 != 2)
  {
    v2 = 0x54676E6974697277;
  }

  if (a1)
  {
    v1 = 0xD000000000000010;
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

Swift::Int sub_10000E298()
{
  sub_1000149A4();
  sub_1000148B4();

  return sub_1000149C4();
}

uint64_t sub_10000E360(uint64_t a1)
{
  sub_1000148B4();
}

Swift::Int sub_10000E414(uint64_t a1)
{
  sub_1000149A4();
  sub_1000148B4();

  return sub_1000149C4();
}

unint64_t sub_10000E4D8@<X0>(Swift::String *a1@<X0>, GenerativeAssistantSettingsExtension::GenerativeAssistantSettingsDestination::Origin_optional *a2@<X8>)
{
  result = _s36GenerativeAssistantSettingsExtension0abC11DestinationO6OriginO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_10000E508(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x54504774616863;
  v4 = 0xE400000000000000;
  v5 = 1769105779;
  if (*v1 != 2)
  {
    v5 = 0x54676E6974697277;
    v4 = 0xEC000000736C6F6FLL;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x8000000100014D30;
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

uint64_t GenerativeAssistantSettingsDestination.fullURL(origin:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = sub_1000145B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100014624();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeAssistantSettingsDestination.fullURL.getter(a2, v10);
  sub_1000145A4();

  sub_1000020C4(&qword_100020928, &qword_100017838);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100017820;
  (*(v4 + 16))(v12 + v11, v6, v3);
  sub_100014614();

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

unint64_t static GenerativeAssistantSettingsDestination.entityIdentifier(for:)(uint64_t a1, void *a2)
{

  return _s36GenerativeAssistantSettingsExtension0abC11DestinationO8rawValueACSgSS_tcfC_0(a1, a2);
}

uint64_t GenerativeAssistantSettingsDestination.Action.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6168437055746573;
  }

  if (a1 == 1)
  {
    return 0x6E496E676973;
  }

  return 0x74754F6E676973;
}

uint64_t sub_10000E8C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E496E676973;
  if (v2 != 1)
  {
    v4 = 0x74754F6E676973;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6168437055746573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000054504774;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E496E676973;
  if (*a2 != 1)
  {
    v8 = 0x74754F6E676973;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6168437055746573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000054504774;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100014994();
  }

  return v11 & 1;
}

Swift::Int sub_10000E9C4()
{
  sub_1000149A4();
  sub_1000148B4();

  return sub_1000149C4();
}

uint64_t sub_10000EA6C(uint64_t a1)
{
  sub_1000148B4();
}

Swift::Int sub_10000EB00(uint64_t a1)
{
  sub_1000149A4();
  sub_1000148B4();

  return sub_1000149C4();
}

unint64_t sub_10000EBA4@<X0>(Swift::String *a1@<X0>, GenerativeAssistantSettingsExtension::GenerativeAssistantSettingsDestination::Action_optional *a2@<X8>)
{
  result = _s36GenerativeAssistantSettingsExtension0abC11DestinationO6ActionO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_10000EBD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000054504774;
  v4 = 0xE600000000000000;
  v5 = 0x6E496E676973;
  if (v2 != 1)
  {
    v5 = 0x74754F6E676973;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6168437055746573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10000EC44()
{
  sub_1000149A4();
  sub_10001430C();
  return sub_1000149C4();
}

Swift::Int sub_10000EC94(uint64_t a1)
{
  sub_1000149A4();
  sub_10001430C();
  return sub_1000149C4();
}

unint64_t sub_10000ECD8@<X0>(Swift::String *a1@<X0>, GenerativeAssistantSettingsExtension::GenerativeAssistantSettingsDestination_optional *a2@<X8>)
{
  result = _s36GenerativeAssistantSettingsExtension0abC11DestinationO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_10000ED08@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativeAssistantSettingsDestination.entityIdentifierString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000ED4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, GenerativeAssistantSettingsExtension::GenerativeAssistantSettingsDestination_optional *a3@<X8>)
{

  result = _s36GenerativeAssistantSettingsExtension0abC11DestinationO8rawValueACSgSS_tcfC_0(a1, a2);
  a3->value = result;
  return result;
}

unint64_t _s36GenerativeAssistantSettingsExtension0abC11DestinationO6OriginO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CD70;
  v6._object = a2;
  v4 = sub_100014954(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t _s36GenerativeAssistantSettingsExtension0abC11DestinationO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CDF0;
  v6._object = a2;
  v4 = sub_100014954(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t _s36GenerativeAssistantSettingsExtension0abC11DestinationO6ActionO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CEE8;
  v6._object = a2;
  v4 = sub_100014954(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000EE7C()
{
  result = qword_100020930;
  if (!qword_100020930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020930);
  }

  return result;
}

unint64_t sub_10000EED4()
{
  result = qword_100020938;
  if (!qword_100020938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020938);
  }

  return result;
}

unint64_t sub_10000EF2C()
{
  result = qword_100020940;
  if (!qword_100020940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020940);
  }

  return result;
}

unint64_t sub_10000EF84()
{
  result = qword_100020948;
  if (!qword_100020948)
  {
    sub_1000063C8(&qword_100020950, &qword_100017A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020948);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Origin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Origin(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantSettingsDestination.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000F2B0()
{
  result = qword_100020958;
  if (!qword_100020958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020958);
  }

  return result;
}

uint64_t type metadata accessor for ChatGPTExtensionSettingsDeepLinks(uint64_t a1)
{
  result = qword_100020A60;
  if (!qword_100020A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F350(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 1769105779;
  if (a1 == 2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x54676E6974697277;
    v5 = 0xEC000000736C6F6FLL;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v3 = 0x8000000100014D30;
  }

  else
  {
    v6 = 0x54504774616863;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 1769105779;
    }

    else
    {
      v11 = 0x54676E6974697277;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xEC000000736C6F6FLL;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x54504774616863;
    }

    if (a2)
    {
      v10 = 0x8000000100014D30;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_100014994();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_10000F49C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = a1;
    v12 = 0xE000000000000000;
    v13 = 0x6F72507075746573;
    v14 = 0xEB0000000074706DLL;
    if (a1 != 2)
    {
      v13 = 0xD000000000000016;
      v14 = 0x8000000100014D70;
    }

    if (a1)
    {
      v11 = 0x656C62616E457369;
      v12 = 0xE900000000000064;
    }

    if (a1 <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E496E676973;
    v5 = 0xE700000000000000;
    v6 = 0x74754F6E676973;
    if (a1 != 7)
    {
      v6 = 0x5065646172677075;
      v5 = 0xEB000000006E616CLL;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x43746E756F636361;
    v8 = 0xEF736C6F72746E6FLL;
    if (a1 != 4)
    {
      v7 = 0x6168437055746573;
      v8 = 0xEC00000054504774;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE900000000000064;
        if (v9 != 0x656C62616E457369)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xE000000000000000;
        if (v9 != a2)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 != 2)
    {
      v15 = 0x8000000100014D70;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v16 = 0x6F72507075746573;
    v17 = 7630957;
    goto LABEL_46;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6E496E676973)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    if (a2 == 7)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x74754F6E676973)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v16 = 0x5065646172677075;
    v17 = 7233900;
LABEL_46:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v16)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 == 4)
  {
    v15 = 0xEF736C6F72746E6FLL;
    if (v9 != 0x43746E756F636361)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v15 = 0xEC00000054504774;
    if (v9 != 0x6168437055746573)
    {
LABEL_51:
      v18 = sub_100014994();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_10000F79C(uint64_t a1, unsigned __int8 a2)
{
  sub_1000148B4();
}

uint64_t sub_10000F908()
{
  v0 = sub_1000145E4();
  sub_100004CC4(v0, qword_100025290);
  sub_100003FA0(v0, qword_100025290);
  return sub_1000145C4();
}

uint64_t sub_10000F990(uint64_t a1)
{
  v2 = type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0);
  __chkstk_darwin(v2 - 8);
  sub_100014248(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000143E4();
  return sub_1000142AC(a1);
}

void (*sub_10000FA20(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1000143C4();
  return sub_10000A020;
}

unint64_t sub_10000FA94()
{
  result = qword_100020968;
  if (!qword_100020968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020968);
  }

  return result;
}

uint64_t sub_10000FAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000141A0();
  v5 = sub_1000130A8(&qword_100020AB8, &unk_100017E5C);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000FB74()
{
  result = qword_100020970;
  if (!qword_100020970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020970);
  }

  return result;
}

unint64_t sub_10000FBCC()
{
  result = qword_100020978;
  if (!qword_100020978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020978);
  }

  return result;
}

uint64_t sub_10000FCA8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1000141A0();
  v6 = sub_1000141F4();
  v7 = sub_1000130A8(&qword_100020AB8, &unk_100017E5C);
  *v4 = v2;
  v4[1] = sub_100008718;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10000FD90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012AC8();
  *a1 = result;
  return result;
}

uint64_t sub_10000FDB8(uint64_t a1)
{
  v2 = sub_10000FA94();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000FDF8()
{
  result = qword_100020980;
  if (!qword_100020980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020980);
  }

  return result;
}

unint64_t sub_10000FE50()
{
  result = qword_100020988;
  if (!qword_100020988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020988);
  }

  return result;
}

uint64_t sub_10000FED8()
{
  v0 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_100014644();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000145D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100014854();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000145E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100014514();
  sub_100004CC4(v10, qword_1000252A8);
  sub_100003FA0(v10, qword_1000252A8);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v11 = sub_100003FA0(v3, qword_1000251B0);
  (*(v4 + 16))(v6, v11, v3);
  sub_100014634();
  sub_1000145F4();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_100014504();
}

uint64_t sub_1000101F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100014434();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001036C();
  if (*(v7 + 16) && (v8 = sub_100012300(*v2), (v9 & 1) != 0))
  {
    (*(v15 + 16))(v6, *(v7 + 56) + *(v15 + 72) * v8, v4);

    return (*(v15 + 32))(a1, v6, v4);
  }

  else
  {

    v11 = type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0);
    v12 = *(v15 + 16);
    v13 = &v2[*(v11 + 20)];

    return v12(a1, v13, v4);
  }
}

unint64_t sub_10001036C()
{
  v0 = sub_1000020C4(&qword_100020878, &unk_1000176F0);
  __chkstk_darwin(v0 - 8);
  v70 = &v49 - v1;
  v2 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v2 - 8);
  v79 = &v49 - v3;
  v4 = sub_100014644();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000145D4();
  v75 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100014854();
  __chkstk_darwin(v8 - 8);
  v73 = sub_1000145E4();
  v78 = *(v73 - 8);
  v9 = __chkstk_darwin(v73);
  v77 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  sub_1000020C4(&qword_100020A98, " \t");
  v13 = sub_1000020C4(&qword_100020AA0, &qword_1000181A0);
  v14 = *(*(v13 - 8) + 72);
  v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100017B10;
  v59 = v16;
  v17 = (v16 + v15);
  v18 = *(v13 + 48);
  *v17 = 0;
  v19 = *(type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0) + 20);
  v20 = sub_100014434();
  (*(*(v20 - 8) + 16))(&v17[v18], v76 + v19, v20);
  v74 = v17;
  v71 = v14;
  v76 = v13;
  v54 = *(v13 + 48);
  *&v55 = &v17[v14];
  v17[v14] = 1;
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v21 = sub_100003FA0(v5, qword_1000251B0);
  v22 = v5;
  v23 = v75 + 16;
  v24 = *(v75 + 16);
  v60 = v21;
  v24(v7, v21, v22);
  sub_100014634();
  v72 = v12;
  sub_1000145F4();
  v66 = "Upgrade to ChatGPT Plus";
  sub_100014844();
  v24(v7, v21, v22);
  sub_100014634();
  v25 = v79;
  sub_1000145F4();
  v26 = v78 + 56;
  v65 = *(v78 + 56);
  v65(v25, 0, 1, v73);
  v63 = sub_100014404();
  v27 = *(v63 - 8);
  v68 = *(v27 + 56);
  v64 = v27 + 56;
  v68(v70, 1, 1, v63);
  v67 = sub_1000020C4(&qword_100020AA8, &qword_1000181A8);
  v78 = v26;
  v28 = *(v26 + 16);
  v62 = *(v26 + 24);
  v61 = (v62 + 32) & ~v62;
  v29 = v28;
  v69 = v28;
  *(swift_allocObject() + 16) = xmmword_100017B20;
  sub_1000145C4();
  sub_1000145C4();
  v57 = 2 * v29;
  sub_1000145C4();
  v58 = 3 * v29;
  sub_1000145C4();
  v56 = 4 * v29;
  sub_1000145C4();
  sub_1000145C4();
  sub_100014844();
  v30 = v60;
  v24(v7, v60, v22);
  sub_100014634();
  sub_1000145F4();
  sub_100014414();
  v54 = 2 * v71;
  v52 = &v74[2 * v71];
  v53 = *(v76 + 48);
  *v52 = 2;
  sub_100014844();
  v31 = v24;
  v24(v7, v30, v22);
  sub_100014634();
  sub_1000145F4();
  sub_100014844();
  v32 = v30;
  v33 = v30;
  v34 = v22;
  v31(v7, v32, v22);
  v75 = v23;
  sub_100014634();
  v35 = v79;
  sub_1000145F4();
  v65(v35, 0, 1, v73);
  v36 = v70;
  v68(v70, 1, 1, v63);
  v37 = swift_allocObject();
  v55 = xmmword_100017820;
  *(v37 + 16) = xmmword_100017820;
  sub_1000145C4();
  sub_100014844();
  v31(v7, v33, v34);
  v38 = v31;
  sub_100014634();
  sub_1000145F4();
  v39 = v36;
  sub_100014414();
  v53 = &v74[v54 + v71];
  v54 = *(v76 + 48);
  *v53 = 3;
  sub_100014844();
  v40 = v60;
  v41 = v38;
  v38(v7, v60, v34);
  sub_100014634();
  sub_1000145F4();
  sub_100014844();
  v50 = v34;
  v38(v7, v40, v34);
  sub_100014634();
  v42 = v79;
  sub_1000145F4();
  v65(v42, 0, 1, v73);
  v43 = v39;
  v68(v39, 1, 1, v63);
  *(swift_allocObject() + 16) = v55;
  sub_1000145C4();
  sub_100014844();
  v41(v7, v40, v34);
  sub_100014634();
  sub_1000145F4();
  sub_100014414();
  *&v55 = &v74[4 * v71];
  v71 = *(v76 + 48);
  *v55 = 4;
  sub_100014844();
  v44 = v50;
  v51 = v41;
  v41(v7, v40, v50);
  sub_100014634();
  sub_1000145F4();
  sub_100014844();
  v45 = v44;
  v41(v7, v40, v44);
  sub_100014634();
  v46 = v79;
  sub_1000145F4();
  v65(v46, 0, 1, v73);
  v68(v43, 1, 1, v63);
  *(swift_allocObject() + 16) = xmmword_100017B30;
  sub_1000145C4();
  sub_1000145C4();
  sub_1000145C4();
  sub_1000145C4();
  sub_100014844();
  v51(v7, v40, v45);
  sub_100014634();
  sub_1000145F4();
  sub_100014414();
  v47 = sub_100012E64(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v47;
}

uint64_t sub_100011298@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = sub_1000020C4(&qword_100020878, &unk_1000176F0);
  __chkstk_darwin(v4 - 8);
  v23 = v22 - v5;
  v6 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = sub_100014644();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000145D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100014854();
  __chkstk_darwin(v14 - 8);
  v22[0] = sub_1000145E4();
  v15 = *(v22[0] - 8);
  v16 = __chkstk_darwin(v22[0]);
  v22[2] = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v24 = a2;
  *a2 = a1;
  v22[1] = *(type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0) + 20);
  sub_100014844();
  if (qword_1000202B8 != -1)
  {
    swift_once();
  }

  v18 = sub_100003FA0(v10, qword_1000251B0);
  v19 = *(v11 + 16);
  v19(v13, v18, v10);
  sub_100014634();
  sub_1000145F4();
  sub_100014844();
  v19(v13, v18, v10);
  sub_100014634();
  sub_1000145F4();
  (*(v15 + 56))(v8, 0, 1, v22[0]);
  v20 = sub_100014404();
  (*(*(v20 - 8) + 56))(v23, 1, 1, v20);
  sub_100014844();
  v19(v13, v18, v10);
  sub_100014634();
  sub_1000145F4();
  return sub_100014414();
}

uint64_t sub_10001174C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DC70;

  return sub_1000130EC(a1);
}

uint64_t sub_1000117F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000091EC;

  return sub_10001395C();
}

unint64_t sub_10001189C()
{
  result = qword_100020998;
  if (!qword_100020998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020998);
  }

  return result;
}

unint64_t sub_100011928()
{
  result = qword_1000209A8;
  if (!qword_1000209A8)
  {
    sub_1000063C8(&qword_1000209B0, qword_100017D48);
    sub_1000130A8(&qword_1000209A0, &unk_100017FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000209A8);
  }

  return result;
}

uint64_t sub_1000119C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100011B1C();
  *v5 = v2;
  v5[1] = sub_100009664;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100011B1C()
{
  result = qword_1000209C8;
  if (!qword_1000209C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000209C8);
  }

  return result;
}

uint64_t sub_100011BA4(uint64_t a1)
{
  v1 = sub_1000020C4(&qword_100020AC0, &qword_1000181B8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_1000020C4(&qword_100020AC8, &qword_1000181C0);
  __chkstk_darwin(v5);
  sub_1000130A8(&qword_100020990, &unk_100017E04);
  sub_1000144C4();
  v8._object = 0x8000000100015770;
  v8._countAndFlagsBits = 0xD00000000000003ELL;
  sub_1000144B4(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1000144A4();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1000144B4(v9);
  return sub_1000144D4();
}

uint64_t sub_100011E20(uint64_t a1)
{
  sub_1000130A8(&qword_100020AB8, &unk_100017E5C);
  v2 = sub_100014464();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100011EE0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100003FA0(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_100011F8C()
{
  result = qword_1000209F0;
  if (!qword_1000209F0)
  {
    sub_1000063C8(&qword_1000209F8, &qword_100017FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000209F0);
  }

  return result;
}

uint64_t sub_100011FF0(uint64_t a1)
{
  v2 = sub_1000130A8(&qword_100020990, &unk_100017E04);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100012090(uint64_t a1)
{
  v2 = sub_1000130A8(&qword_1000209E8, &unk_100018050);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001211C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 247)
  {
    v4 = *a1;
    if (v4 >= 9)
    {
      return v4 - 8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100014434();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1000121D4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 247)
  {
    *result = a2 + 8;
  }

  else
  {
    v7 = sub_100014434();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100012274(uint64_t a1)
{
  result = sub_100014434();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100012300(uint64_t a1)
{
  v1 = a1;
  sub_1000149A4();
  sub_1000148B4();
  sub_10000F79C(v4, v1);
  v2 = sub_1000149C4();

  return sub_100012388(v1, v2);
}

unint64_t sub_100012388(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xE900000000000064;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 0x6F72507075746573;
        }

        else
        {
          v10 = 0xD000000000000016;
        }

        if (v7 == 2)
        {
          v11 = 0xEB0000000074706DLL;
        }

        else
        {
          v11 = 0x8000000100014D70;
        }

        if (*(*(v2 + 48) + v4))
        {
          v12 = 0x656C62616E457369;
        }

        else
        {
          v12 = 0;
        }

        if (*(*(v2 + 48) + v4))
        {
          v13 = 0xE900000000000064;
        }

        else
        {
          v13 = 0xE000000000000000;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v9 = v12;
        }

        else
        {
          v9 = v10;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v8 = v13;
        }

        else
        {
          v8 = v11;
        }
      }

      else if (*(*(v2 + 48) + v4) <= 5u)
      {
        if (v7 == 4)
        {
          v9 = 0x43746E756F636361;
        }

        else
        {
          v9 = 0x6168437055746573;
        }

        if (v7 == 4)
        {
          v8 = 0xEF736C6F72746E6FLL;
        }

        else
        {
          v8 = 0xEC00000054504774;
        }
      }

      else if (v7 == 6)
      {
        v8 = 0xE600000000000000;
        v9 = 0x6E496E676973;
      }

      else if (v7 == 7)
      {
        v8 = 0xE700000000000000;
        v9 = 0x74754F6E676973;
      }

      else
      {
        v9 = 0x5065646172677075;
        v8 = 0xEB000000006E616CLL;
      }

      v14 = 0x5065646172677075;
      if (v6 == 7)
      {
        v14 = 0x74754F6E676973;
      }

      v15 = 0xEB000000006E616CLL;
      if (v6 == 7)
      {
        v15 = 0xE700000000000000;
      }

      if (v6 == 6)
      {
        v14 = 0x6E496E676973;
        v15 = 0xE600000000000000;
      }

      v16 = 0x6168437055746573;
      if (v6 == 4)
      {
        v16 = 0x43746E756F636361;
      }

      v17 = 0xEF736C6F72746E6FLL;
      if (v6 != 4)
      {
        v17 = 0xEC00000054504774;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x6F72507075746573;
      }

      else
      {
        v18 = 0xD000000000000016;
      }

      if (v6 == 2)
      {
        v19 = 0xEB0000000074706DLL;
      }

      else
      {
        v19 = 0x8000000100014D70;
      }

      if (v6)
      {
        v20 = 0x656C62616E457369;
      }

      else
      {
        v20 = 0;
      }

      if (!v6)
      {
        v5 = 0xE000000000000000;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v14;
      v22 = v6 <= 3 ? v19 : v15;
      if (v9 == v21 && v8 == v22)
      {
        break;
      }

      v23 = sub_100014994();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xE900000000000064;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_1000126A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100012708(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000126C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000128E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000126E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000129D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100012708(void *result, int64_t a2, char a3, void *a4)
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

  sub_1000020C4(&qword_100020AD8, &qword_1000181D8);
  v10 = *(type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0) - 8);
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
  v15 = *(type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0) - 8);
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

char *sub_1000128E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000020C4(&qword_100020AE0, &qword_1000181E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000129D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000020C4(&qword_100020AD0, &qword_1000181D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100012AC8()
{
  v22 = sub_1000144E4();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000020C4(&qword_100020890, &qword_1000181F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = sub_1000020C4(&qword_100020AE8, &qword_1000181F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_1000020C4(&qword_100020880, "$\a");
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000145E4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v21 = sub_1000020C4(&qword_100020AF0, &qword_100018200);
  sub_1000145C4();
  (*(v16 + 56))(v14, 1, 1, v15);
  v17 = type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0);
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_1000143B4();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v19(v6, 1, 1, v18);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v22);
  sub_1000130A8(&qword_100020990, &unk_100017E04);
  return sub_1000143F4();
}

unint64_t sub_100012E64(uint64_t a1)
{
  v2 = sub_1000020C4(&qword_100020AA0, &qword_1000181A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000020C4(&qword_100020AB0, &qword_1000181B0);
    v7 = sub_100014944();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100013038(v9, v5);
      v11 = *v5;
      result = sub_100012300(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100014434();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_100013038(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000020C4(&qword_100020AA0, &qword_1000181A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000130A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChatGPTExtensionSettingsDeepLinks(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000130EC(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = *(type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0) - 8);
  v1[4] = swift_task_alloc();
  v2 = sub_100014794();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_100014754();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_100014694();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_100014734();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  v6 = sub_100014774();
  v1[18] = v6;
  v1[19] = *(v6 - 8);
  v1[20] = swift_task_alloc();
  v7 = sub_100014714();
  v1[21] = v7;
  v1[22] = *(v7 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000133E8, 0, 0);
}

uint64_t sub_1000133E8(uint64_t a1)
{
  if (qword_1000202A8 != -1)
  {
    swift_once();
  }

  v2 = v1[22];
  v46 = v1[23];
  v47 = v1[21];
  v3 = v1[20];
  v41 = v1[19];
  v42 = v1[24];
  v4 = v1[17];
  v44 = v1[18];
  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[10];
  v39 = v1[9];
  v40 = v1[15];
  sub_100014674();
  sub_100014684();
  (*(v6 + 8))(v7, v9);
  (*(v10 + 104))(v8, enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:), v39);
  sub_100014724();
  sub_100014764();
  (*(v5 + 8))(v4, v40);
  sub_100014744();
  (*(v41 + 8))(v3, v44);
  (*(v2 + 104))(v46, enum case for GenerativeModelsAvailability.Availability.available(_:), v47);
  LOBYTE(v7) = sub_100014704();
  v11 = *(v2 + 8);
  v11(v46, v47);
  v11(v42, v47);
  if (v7)
  {
    if (qword_1000202C0 != -1)
    {
      swift_once();
    }

    v12 = v1[8];
    v14 = v1[5];
    v13 = v1[6];
    sub_1000147D4();
    sub_1000147C4();
    sub_1000147B4();

    v45 = *(v13 + 88);
    v15 = v45(v12, v14);
    v43 = enum case for GenerativeAssistantProvider.LLMProvider.chatGPT(_:);
    if (v15 != enum case for GenerativeAssistantProvider.LLMProvider.chatGPT(_:))
    {
      (*(v1[6] + 8))(v1[8], v1[5]);
    }

    v16 = v1[2];
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 32);
      v19 = (v1[6] + 8);
      do
      {
        v20 = v1[7];
        v21 = v1[5];
        v23 = *v18++;
        v22 = v23;
        sub_1000147C4();
        sub_1000147B4();

        if (v45(v20, v21) != v43)
        {
          (*v19)(v1[7], v1[5]);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000126C8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v25 = *(&_swiftEmptyArrayStorage + 2);
        v24 = *(&_swiftEmptyArrayStorage + 3);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          sub_1000126C8((v24 > 1), v25 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v26;
        *(&_swiftEmptyArrayStorage + v25 + 32) = v22;
        --v17;
      }

      while (v17);
    }

    else
    {
      v26 = *(&_swiftEmptyArrayStorage + 2);
      if (!v26)
      {
LABEL_27:

        v31 = *(&_swiftEmptyArrayStorage + 2);
        if (v31)
        {
          v32 = v1[3];
          sub_1000126A8(0, v31, 0);
          v33 = 32;
          do
          {
            sub_100011298(*(&_swiftEmptyArrayStorage + v33), v1[4]);
            v35 = *(&_swiftEmptyArrayStorage + 2);
            v34 = *(&_swiftEmptyArrayStorage + 3);
            if (v35 >= v34 >> 1)
            {
              sub_1000126A8((v34 > 1), v35 + 1, 1);
            }

            v36 = v1[4];
            *(&_swiftEmptyArrayStorage + 2) = v35 + 1;
            sub_10001413C(v36, &_swiftEmptyArrayStorage + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v35);
            ++v33;
            --v31;
          }

          while (v31);
        }

        goto LABEL_33;
      }
    }

    v27 = 32;
    do
    {
      v30 = *(&_swiftEmptyArrayStorage + v27);
      if (v30 <= 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000126C8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v29 = *(&_swiftEmptyArrayStorage + 2);
        v28 = *(&_swiftEmptyArrayStorage + 3);
        if (v29 >= v28 >> 1)
        {
          sub_1000126C8((v28 > 1), v29 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v29 + 1;
        *(&_swiftEmptyArrayStorage + v29 + 32) = v30;
      }

      ++v27;
      --v26;
    }

    while (v26);
    goto LABEL_27;
  }

LABEL_33:

  v37 = v1[1];

  return v37(&_swiftEmptyArrayStorage);
}

uint64_t sub_10001395C()
{
  v0[2] = *(type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0) - 8);
  v0[3] = swift_task_alloc();
  v1 = sub_100014794();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v2 = sub_100014754();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();
  v3 = sub_100014694();
  v0[10] = v3;
  v0[11] = *(v3 - 8);
  v0[12] = swift_task_alloc();
  v4 = sub_100014734();
  v0[13] = v4;
  v0[14] = *(v4 - 8);
  v0[15] = swift_task_alloc();
  v5 = sub_100014774();
  v0[16] = v5;
  v0[17] = *(v5 - 8);
  v0[18] = swift_task_alloc();
  v6 = sub_100014714();
  v0[19] = v6;
  v0[20] = *(v6 - 8);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();

  return _swift_task_switch(sub_100013C48, 0, 0);
}

uint64_t sub_100013C48(uint64_t a1)
{
  if (qword_1000202A8 != -1)
  {
    swift_once();
  }

  v2 = v1[20];
  v37 = v1[21];
  v38 = v1[19];
  v3 = v1[18];
  v34 = v1[17];
  v35 = v1[22];
  v4 = v1[15];
  v36 = v1[16];
  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[8];
  v32 = v1[7];
  v33 = v1[13];
  sub_100014674();
  sub_100014684();
  (*(v6 + 8))(v7, v9);
  (*(v10 + 104))(v8, enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:), v32);
  sub_100014724();
  sub_100014764();
  (*(v5 + 8))(v4, v33);
  sub_100014744();
  (*(v34 + 8))(v3, v36);
  (*(v2 + 104))(v37, enum case for GenerativeModelsAvailability.Availability.available(_:), v38);
  LOBYTE(v7) = sub_100014704();
  v11 = *(v2 + 8);
  v11(v37, v38);
  v11(v35, v38);
  if (v7)
  {
    if (qword_1000202C0 != -1)
    {
      swift_once();
    }

    v13 = v1[5];
    v12 = v1[6];
    v14 = v1[4];
    sub_1000147D4();
    sub_1000147C4();
    sub_1000147B4();

    if ((*(v13 + 88))(v12, v14) != enum case for GenerativeAssistantProvider.LLMProvider.chatGPT(_:))
    {
      (*(v1[5] + 8))(v1[6], v1[4]);
    }

    for (i = 0; i != 9; ++i)
    {
      v18 = *(&off_10001CF50 + i + 32);
      if (v18 <= 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000126E8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v17 = *(&_swiftEmptyArrayStorage + 2);
        v16 = *(&_swiftEmptyArrayStorage + 3);
        if (v17 >= v16 >> 1)
        {
          sub_1000126E8((v16 > 1), v17 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v17 + 1;
        *(&_swiftEmptyArrayStorage + v17 + 32) = v18;
      }
    }

    v19 = *(&_swiftEmptyArrayStorage + 2);
    if (v19)
    {
      sub_1000126C8(0, v19, 0);
      v20 = *(&_swiftEmptyArrayStorage + 2);
      v21 = 32;
      do
      {
        v22 = *(&_swiftEmptyArrayStorage + v21);
        v23 = *(&_swiftEmptyArrayStorage + 3);
        if (v20 >= v23 >> 1)
        {
          sub_1000126C8((v23 > 1), v20 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v20 + 1;
        *(&_swiftEmptyArrayStorage + v20 + 32) = v22;
        ++v21;
        ++v20;
        --v19;
      }

      while (v19);

      v24 = *(&_swiftEmptyArrayStorage + 2);
      if (!v24)
      {
        goto LABEL_28;
      }
    }

    else
    {

      v24 = *(&_swiftEmptyArrayStorage + 2);
      if (!v24)
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    v25 = v1[2];
    sub_1000126A8(0, v24, 0);
    v26 = 32;
    do
    {
      sub_100011298(*(&_swiftEmptyArrayStorage + v26), v1[3]);
      v28 = *(&_swiftEmptyArrayStorage + 2);
      v27 = *(&_swiftEmptyArrayStorage + 3);
      if (v28 >= v27 >> 1)
      {
        sub_1000126A8((v27 > 1), v28 + 1, 1);
      }

      v29 = v1[3];
      *(&_swiftEmptyArrayStorage + 2) = v28 + 1;
      sub_10001413C(v29, &_swiftEmptyArrayStorage + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v28);
      ++v26;
      --v24;
    }

    while (v24);
    goto LABEL_28;
  }

LABEL_29:

  v30 = v1[1];

  return v30(&_swiftEmptyArrayStorage);
}

uint64_t sub_10001413C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000141A0()
{
  result = qword_100020AF8;
  if (!qword_100020AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020AF8);
  }

  return result;
}

unint64_t sub_1000141F4()
{
  result = qword_100020B00;
  if (!qword_100020B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B00);
  }

  return result;
}

uint64_t sub_100014248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000142AC(uint64_t a1)
{
  v2 = type metadata accessor for ChatGPTExtensionSettingsDeepLinks(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}