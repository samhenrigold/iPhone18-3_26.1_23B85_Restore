uint64_t sub_10000128C()
{
  v0 = sub_100001388();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for PlaceholderWidget, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001308();
  sub_100007AF4();
  return 0;
}

unint64_t sub_100001308()
{
  result = qword_100010020;
  if (!qword_100010020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010020);
  }

  return result;
}

unint64_t sub_100001388()
{
  result = qword_100010028;
  if (!qword_100010028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010028);
  }

  return result;
}

uint64_t sub_100001460()
{
  v0 = sub_1000057CC(&qword_100010100, &qword_1000097C8);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_100007AA4();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007AE4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100007B24();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100007AB4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100007A84();
  sub_100005948(v10, qword_100010DB8);
  sub_100005910(v10, qword_100010DB8);
  sub_100007B14();
  sub_100007AD4();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100007AC4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100007A74();
}

uint64_t sub_100001744()
{
  v0 = sub_1000057CC(&qword_100010150, &qword_100009800);
  sub_100005948(v0, qword_100010DD0);
  sub_100005910(v0, qword_100010DD0);
  sub_1000057CC(&qword_100010158, &qword_100009808);
  v1 = *(sub_1000057CC(&qword_100010160, &qword_100009810) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100009230;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_100002240();
  sub_100007A04();
  *(v5 + v2) = 1;
  sub_100007A04();
  *(v5 + 2 * v2) = 2;
  sub_100007A04();
  *(v5 + 3 * v2) = 3;
  sub_100007A04();
  *(v5 + 4 * v2) = 4;
  sub_100007A04();
  *(v5 + 5 * v2) = 5;
  sub_100007A04();
  *(v5 + 6 * v2) = 6;
  sub_100007A04();
  *(v5 + 7 * v2) = 7;
  sub_100007A04();
  *(v5 + 8 * v2) = 8;
  sub_100007A04();
  sub_100005288(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100007A14();
}

uint64_t sub_100001AB8()
{
  v0 = sub_1000079C4();
  sub_100005948(v0, qword_100010030);
  sub_100005910(v0, qword_100010030);
  return sub_1000079B4();
}

unint64_t sub_100001B1C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1953460082;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x76657250776F6873;
    }

    if (a1)
    {
      v5 = 0x4179616C70736964;
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
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000011;
    if (a1 == 7)
    {
      v2 = 0x6767755369726973;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x68536E6565726373;
    if (a1 != 4)
    {
      v3 = 1769105779;
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

unint64_t sub_100001C6C()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

uint64_t sub_100001CC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xD000000000000010;
    v13 = 0x8000000100007CE0;
    if (a1 != 2)
    {
      v12 = 0x76657250776F6873;
      v13 = 0xEC00000073776569;
    }

    v14 = 0x4179616C70736964;
    if (a1)
    {
      v11 = 0xE900000000000073;
    }

    else
    {
      v14 = 1953460082;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x8000000100007D20;
    v4 = 0xD000000000000015;
    v5 = 0xD000000000000011;
    if (a1 == 7)
    {
      v5 = 0x6767755369726973;
      v6 = 0xEF736E6F69747365;
    }

    else
    {
      v6 = 0x8000000100007D50;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x68536E6565726373;
    v8 = 0xED0000676E697261;
    if (a1 != 4)
    {
      v7 = 1769105779;
      v8 = 0xE400000000000000;
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
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x8000000100007CE0;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v15 = 0xEC00000073776569;
        if (v9 != 0x76657250776F6873)
        {
          goto LABEL_53;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE900000000000073;
      if (v9 != 0x4179616C70736964)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1953460082)
      {
        goto LABEL_53;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xED0000676E697261;
      if (v9 != 0x68536E6565726373)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1769105779)
      {
LABEL_53:
        v16 = sub_100007B64();
        goto LABEL_54;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x8000000100007D20;
    if (v9 != 0xD000000000000015)
    {
      goto LABEL_53;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEF736E6F69747365;
    if (v9 != 0x6767755369726973)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v15 = 0x8000000100007D50;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_53;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_53;
  }

  v16 = 1;
LABEL_54:

  return v16 & 1;
}

Swift::Int sub_100001FD8()
{
  v1 = *v0;
  sub_100007B74();
  sub_100002028(v3, v1);
  return sub_100007B84();
}

uint64_t sub_100002028(uint64_t a1, unsigned __int8 a2)
{
  sub_100007B34();
}

Swift::Int sub_10000219C(uint64_t a1)
{
  v2 = *v1;
  sub_100007B74();
  sub_100002028(v4, v2);
  return sub_100007B84();
}

unint64_t sub_1000021E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000547C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100002210@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100001B1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100002240()
{
  result = qword_100010060;
  if (!qword_100010060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010060);
  }

  return result;
}

unint64_t sub_100002298()
{
  result = qword_100010068;
  if (!qword_100010068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010068);
  }

  return result;
}

uint64_t sub_1000022EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010008 != -1)
  {
    swift_once();
  }

  v2 = sub_1000057CC(&qword_100010150, &qword_100009800);
  v3 = sub_100005910(v2, qword_100010DD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000023A0()
{
  result = qword_100010070;
  if (!qword_100010070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010070);
  }

  return result;
}

unint64_t sub_1000023F8()
{
  result = qword_100010078;
  if (!qword_100010078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010078);
  }

  return result;
}

unint64_t sub_100002450()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

uint64_t sub_1000024B0(uint64_t a1)
{
  sub_1000058BC();
  v2 = sub_1000079F4();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100002520()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

unint64_t sub_100002578()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

unint64_t sub_1000025D0()
{
  result = qword_100010098;
  if (!qword_100010098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010098);
  }

  return result;
}

unint64_t sub_100002628()
{
  result = qword_1000100A0;
  if (!qword_1000100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A0);
  }

  return result;
}

uint64_t sub_1000026E4(uint64_t a1)
{
  v2 = sub_100002240();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100002734()
{
  result = qword_1000100A8;
  if (!qword_1000100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100A8);
  }

  return result;
}

unint64_t sub_10000278C()
{
  result = qword_1000100B0;
  if (!qword_1000100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B0);
  }

  return result;
}

unint64_t sub_1000027E4()
{
  result = qword_1000100B8;
  if (!qword_1000100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100B8);
  }

  return result;
}

uint64_t sub_10000283C(uint64_t a1)
{
  v2 = sub_100002628();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000288C()
{
  result = qword_1000100C0;
  if (!qword_1000100C0)
  {
    sub_1000028F0(&qword_1000100C8, &qword_100009510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100C0);
  }

  return result;
}

uint64_t sub_1000028F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000294C()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

uint64_t sub_1000029A4()
{
  v0 = sub_100007AA4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007AE4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100007B24();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100007AB4();
  sub_100005948(v6, qword_100010DE8);
  sub_100005910(v6, qword_100010DE8);
  sub_100007B14();
  sub_100007AD4();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100007AC4();
}

void *sub_100002BB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100007864();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100002C2C(uint64_t *a1))()
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
  *(v2 + 32) = sub_100007854();
  return sub_100002CA0;
}

void sub_100002CA0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002CEC()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

unint64_t sub_100002D40()
{
  result = qword_1000100E0;
  if (!qword_1000100E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E0);
  }

  return result;
}

uint64_t sub_100002D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814();
  v5 = sub_1000058BC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100002E04()
{
  v0 = qword_100010048;

  return v0;
}

unint64_t sub_100002E44()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

unint64_t sub_100002E9C()
{
  result = qword_1000100F0;
  if (!qword_1000100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100F0);
  }

  return result;
}

uint64_t sub_100002FA0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100005910(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100003068(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100005814();
  v7 = sub_100005868();
  v8 = sub_1000058BC();
  *v5 = v2;
  v5[1] = sub_10000313C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10000313C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100003244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000054C8();
  *a1 = result;
  return result;
}

uint64_t sub_10000326C(uint64_t a1)
{
  v2 = sub_100002CEC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for NotificationsSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NotificationsSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003428(uint64_t a1)
{
  v1 = a1;
  sub_100007B74();
  sub_100002028(v4, v1);
  v2 = sub_100007B84();

  return sub_100003494(v1, v2);
}

unint64_t sub_100003494(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v27 = ~v3;
    v5 = 0xE900000000000073;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v29 + 48) + v4);
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 0xD000000000000010;
        }

        else
        {
          v10 = 0x76657250776F6873;
        }

        if (v7 == 2)
        {
          v11 = 0x8000000100007CE0;
        }

        else
        {
          v11 = 0xEC00000073776569;
        }

        if (*(*(v29 + 48) + v4))
        {
          v12 = 0x4179616C70736964;
        }

        else
        {
          v12 = 1953460082;
        }

        if (*(*(v29 + 48) + v4))
        {
          v13 = 0xE900000000000073;
        }

        else
        {
          v13 = 0xE400000000000000;
        }

        if (*(*(v29 + 48) + v4) <= 1u)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }

        if (*(*(v29 + 48) + v4) <= 1u)
        {
          v9 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      else if (*(*(v29 + 48) + v4) <= 5u)
      {
        if (v7 == 4)
        {
          v8 = 0x68536E6565726373;
          v9 = 0xED0000676E697261;
        }

        else
        {
          v9 = 0xE400000000000000;
          v8 = 1769105779;
        }
      }

      else if (v7 == 6)
      {
        v8 = 0xD000000000000015;
        v9 = 0x8000000100007D20;
      }

      else if (v7 == 7)
      {
        v8 = 0x6767755369726973;
        v9 = 0xEF736E6F69747365;
      }

      else
      {
        v8 = 0xD000000000000011;
        v9 = 0x8000000100007D50;
      }

      v14 = 0xD000000000000015;
      v15 = 0x6767755369726973;
      if (v6 != 7)
      {
        v15 = 0xD000000000000011;
      }

      v16 = 0xEF736E6F69747365;
      if (v6 != 7)
      {
        v16 = 0x8000000100007D50;
      }

      if (v6 != 6)
      {
        v14 = v15;
      }

      v17 = 0x8000000100007D20;
      if (v6 != 6)
      {
        v17 = v16;
      }

      v18 = 0x68536E6565726373;
      if (v6 != 4)
      {
        v18 = 1769105779;
      }

      v19 = 0xED0000676E697261;
      if (v6 != 4)
      {
        v19 = 0xE400000000000000;
      }

      if (v6 <= 5)
      {
        v14 = v18;
        v17 = v19;
      }

      if (v6 == 2)
      {
        v20 = 0xD000000000000010;
      }

      else
      {
        v20 = 0x76657250776F6873;
      }

      if (v6 == 2)
      {
        v21 = 0x8000000100007CE0;
      }

      else
      {
        v21 = 0xEC00000073776569;
      }

      if (v6)
      {
        v22 = 0x4179616C70736964;
      }

      else
      {
        v22 = 1953460082;
      }

      if (!v6)
      {
        v5 = 0xE400000000000000;
      }

      if (v6 <= 1)
      {
        v20 = v22;
        v21 = v5;
      }

      v23 = v6 <= 3 ? v20 : v14;
      v24 = v6 <= 3 ? v21 : v17;
      if (v8 == v23 && v9 == v24)
      {
        break;
      }

      v25 = sub_100007B64();

      if ((v25 & 1) == 0)
      {
        v4 = (v4 + 1) & v27;
        v5 = 0xE900000000000073;
        if ((*(v28 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000379C(uint64_t a1)
{
  v2 = sub_1000057CC(&qword_100010138, &qword_1000097E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057CC(&qword_100010148, &qword_1000097F8);
    v7 = sub_100007B44();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000059AC(v9, v5, &qword_100010138, &qword_1000097E8);
      v11 = *v5;
      result = sub_100003428(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000079E4();
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

unint64_t sub_100003984()
{
  v82 = sub_100007AA4();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v1 = &v72 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100007AE4();
  __chkstk_darwin(v2 - 8);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007B24();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000057CC(&qword_100010128, &qword_1000097D8);
  __chkstk_darwin(v6 - 8);
  v77 = &v72 - v7;
  v8 = sub_1000057CC(&qword_100010100, &qword_1000097C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v72 - v9;
  v11 = sub_100007AB4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v95 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v72 - v15;
  sub_1000057CC(&qword_100010130, &qword_1000097E0);
  v17 = sub_1000057CC(&qword_100010138, &qword_1000097E8);
  v18 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v81 = *(*(v17 - 8) + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100009230;
  v76 = v19;
  v94 = v17;
  v75 = *(v17 + 48);
  v92 = v16;
  v93 = v19 + v18;
  *(v19 + v18) = 0;
  sub_100007A94();
  v20 = *(v12 + 56);
  v96 = v10;
  v90 = v12 + 56;
  v91 = v11;
  v89 = v20;
  v20(v10, 1, 1, v11);
  if (qword_100010010 != -1)
  {
    swift_once();
  }

  v21 = sub_1000079C4();
  v22 = sub_100005910(v21, qword_100010030);
  v23 = *(v21 - 8);
  v24 = *(v23 + 16);
  v83 = v21;
  v84 = v23 + 16;
  v87 = v22;
  v88 = v24;
  v25 = v77;
  v24(v77, v22, v21);
  v26 = *(v23 + 56);
  v85 = v23 + 56;
  v86 = v26;
  v26(v25, 0, 1, v21);
  sub_1000057CC(&qword_100010140, &qword_1000097F0);
  v73 = (8 * *(v12 + 72));
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_100009240;
  sub_100007B14();
  sub_100007AD4();
  v27 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v28 = v80 + 104;
  v29 = *(v80 + 104);
  v30 = v82;
  v29(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v82);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v29(v1, v27, v30);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v29(v1, v27, v30);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v29(v1, v27, v30);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v29(v1, v27, v30);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v29(v1, v27, v30);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v29(v1, v27, v30);
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v78 = v27;
  v31 = v30;
  v29(v1, v27, v30);
  v79 = v29;
  sub_100007AC4();
  sub_100007B14();
  sub_100007AD4();
  v29(v1, v27, v30);
  v32 = v28;
  sub_100007AC4();
  v33 = v93;
  v34 = v96;
  v35 = v77;
  sub_1000079D4();
  v74 = v33 + v81;
  v75 = *(v94 + 48);
  *v74 = 1;
  sub_100007B14();
  sub_100007AD4();
  v36 = v78;
  v79(v1, v78, v31);
  v80 = v32;
  sub_100007AC4();
  v37 = v34;
  sub_100007A94();
  v89(v34, 0, 1, v91);
  v38 = v83;
  v88(v35, v87, v83);
  v39 = v35;
  v86(v35, 0, 1, v38);
  sub_100007B14();
  sub_100007AD4();
  v40 = v82;
  v41 = v79;
  v79(v1, v36, v82);
  sub_100007AC4();
  sub_1000079D4();
  v75 = 2 * v81;
  v73 = (v93 + 2 * v81);
  v74 = *(v94 + 48);
  *v73 = 2;
  sub_100007B14();
  sub_100007AD4();
  v41(v1, v36, v40);
  sub_100007AC4();
  sub_100007A94();
  v89(v37, 0, 1, v91);
  v42 = v83;
  v88(v39, v87, v83);
  v86(v39, 0, 1, v42);
  sub_100007B14();
  sub_100007AD4();
  v43 = v78;
  v44 = v79;
  v79(v1, v78, v82);
  sub_100007AC4();
  sub_1000079D4();
  v74 = v93 + v75 + v81;
  v75 = *(v94 + 48);
  *v74 = 3;
  sub_100007B14();
  sub_100007AD4();
  v45 = v43;
  v46 = v82;
  v44(v1, v43, v82);
  sub_100007AC4();
  sub_100007A94();
  v89(v37, 0, 1, v91);
  v47 = v77;
  v48 = v83;
  v88(v77, v87, v83);
  v86(v47, 0, 1, v48);
  sub_100007B14();
  sub_100007AD4();
  v44(v1, v45, v46);
  sub_100007AC4();
  sub_1000079D4();
  v75 = 4 * v81;
  v73 = (v93 + 4 * v81);
  v74 = *(v94 + 48);
  *v73 = 4;
  sub_100007B14();
  sub_100007AD4();
  v49 = v44;
  v44(v1, v45, v46);
  sub_100007AC4();
  v50 = v96;
  sub_100007A94();
  v89(v50, 0, 1, v91);
  v51 = v83;
  v88(v47, v87, v83);
  v86(v47, 0, 1, v51);
  sub_100007B14();
  sub_100007AD4();
  v52 = v78;
  v49(v1, v78, v46);
  sub_100007AC4();
  sub_1000079D4();
  v74 = v93 + v75 + v81;
  v75 = *(v94 + 48);
  *v74 = 5;
  sub_100007B14();
  sub_100007AD4();
  v49(v1, v52, v46);
  sub_100007AC4();
  v53 = v96;
  sub_100007A94();
  v89(v53, 0, 1, v91);
  v54 = v83;
  v88(v47, v87, v83);
  v86(v47, 0, 1, v54);
  sub_100007B14();
  sub_100007AD4();
  v55 = v78;
  v56 = v79;
  v79(v1, v78, v46);
  sub_100007AC4();
  sub_1000079D4();
  v74 = v93 + 6 * v81;
  v75 = *(v94 + 48);
  *v74 = 6;
  sub_100007B14();
  sub_100007AD4();
  v56(v1, v55, v46);
  sub_100007AC4();
  v57 = v96;
  sub_100007A94();
  v89(v57, 0, 1, v91);
  v58 = v83;
  v88(v47, v87, v83);
  v59 = v47;
  v86(v47, 0, 1, v58);
  sub_100007B14();
  sub_100007AD4();
  v60 = v78;
  v61 = v82;
  v62 = v79;
  v79(v1, v78, v82);
  sub_100007AC4();
  sub_1000079D4();
  v75 = 8 * v81;
  v74 = v93 + 7 * v81;
  v81 = *(v94 + 48);
  *v74 = 7;
  sub_100007B14();
  sub_100007AD4();
  v62(v1, v60, v61);
  v72 = v4;
  sub_100007AC4();
  v63 = v96;
  sub_100007A94();
  v89(v63, 0, 1, v91);
  v64 = v83;
  v88(v59, v87, v83);
  v86(v59, 0, 1, v64);
  sub_100007B14();
  sub_100007AD4();
  v65 = v78;
  v66 = v82;
  v67 = v79;
  v79(v1, v78, v82);
  sub_100007AC4();
  sub_1000079D4();
  v75 += v93;
  v81 = *(v94 + 48);
  *v75 = 8;
  sub_100007B14();
  sub_100007AD4();
  v67(v1, v65, v66);
  sub_100007AC4();
  sub_100007A94();
  v89(v63, 0, 1, v91);
  v68 = v77;
  v69 = v83;
  v88(v77, v87, v83);
  v86(v68, 0, 1, v69);
  sub_100007B14();
  sub_100007AD4();
  v67(v1, v65, v82);
  sub_100007AC4();
  sub_1000079D4();
  v70 = sub_10000379C(v76);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v70;
}

unint64_t sub_100005288(uint64_t a1)
{
  v2 = sub_1000057CC(&qword_100010160, &qword_100009810);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000057CC(&qword_100010168, &qword_100009818);
    v7 = sub_100007B44();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000059AC(v9, v5, &qword_100010160, &qword_100009810);
      v11 = *v5;
      result = sub_100003428(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000057CC(&qword_100010170, &unk_100009820);
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

unint64_t sub_10000547C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C7B0;
  v6._object = a2;
  v4 = sub_100007B54(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000054C8()
{
  v17 = sub_100007A24();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000057CC(&qword_1000100F8, &qword_1000097C0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000057CC(&qword_100010100, &qword_1000097C8);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100007AB4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000057CC(&qword_100010108, &qword_1000097D0);
  sub_100007A94();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 9;
  v14 = sub_100007844();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100002240();
  return sub_100007884();
}

uint64_t sub_1000057CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005814()
{
  result = qword_100010110;
  if (!qword_100010110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010110);
  }

  return result;
}

unint64_t sub_100005868()
{
  result = qword_100010118;
  if (!qword_100010118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010118);
  }

  return result;
}

unint64_t sub_1000058BC()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

uint64_t sub_100005910(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005948(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000059AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000057CC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005A28()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_100002CEC();
  sub_100007964();
  v4 = sub_1000078F4();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100007964();
  v6 = sub_1000078F4();
  v5(v3, v0);
  sub_100007964();
  v7 = sub_1000078F4();
  v5(v3, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100009830;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_1000078E4();

  return v9;
}

uint64_t sub_100005C58()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100005CE4()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_100002CEC();
  sub_100007964();
  v4 = sub_1000078F4();
  (*(v1 + 8))(v3, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100009840;
  *(v5 + 32) = v4;
  v6 = sub_1000078E4();

  return v6;
}

uint64_t sub_100005E60()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100005EE4()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  sub_100002CEC();
  sub_100007964();
  v4 = sub_1000078F4();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100007964();
  v6 = sub_1000078F4();
  v5(v3, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100009850;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_1000078E4();

  return v8;
}

uint64_t sub_1000060BC()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100006140()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_100002CEC();
  sub_100007964();
  v4 = sub_1000078F4();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100007964();
  v6 = sub_1000078F4();
  v5(v3, v0);
  sub_100007964();
  v7 = sub_1000078F4();
  v5(v3, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100009830;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_1000078E4();

  return v9;
}

uint64_t sub_100006370()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_1000063F4()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_100002CEC();
  sub_100007964();
  v4 = sub_1000078F4();
  (*(v1 + 8))(v3, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100009840;
  *(v5 + 32) = v4;
  v6 = sub_1000078E4();

  return v6;
}

uint64_t sub_100006570()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_1000065F4()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_100002CEC();
  sub_100007964();
  v4 = sub_1000078F4();
  (*(v1 + 8))(v3, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100009840;
  *(v5 + 32) = v4;
  v6 = sub_1000078E4();

  return v6;
}

uint64_t sub_100006770()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_1000067F4()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_100002CEC();
  sub_100007964();
  v4 = sub_1000078F4();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100007964();
  v6 = sub_1000078F4();
  v5(v3, v0);
  sub_100007964();
  v7 = sub_1000078F4();
  v5(v3, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100009830;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_1000078E4();

  return v9;
}

uint64_t sub_100006A28()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100006AAC()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_100002CEC();
  sub_100007964();
  v4 = sub_1000078F4();
  (*(v1 + 8))(v3, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100009840;
  *(v5 + 32) = v4;
  v6 = sub_1000078E4();

  return v6;
}

uint64_t sub_100006C28()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100006CAC()
{
  v0 = sub_1000057CC(&qword_100010198, &qword_100009930);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_100002CEC();
  sub_100007964();
  v4 = sub_1000078F4();
  (*(v1 + 8))(v3, v0);
  sub_1000057CC(&unk_1000101A0, &qword_100009938);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100009840;
  *(v5 + 32) = v4;
  v6 = sub_1000078E4();

  return v6;
}

uint64_t sub_100006E28(uint64_t a1, uint64_t a2)
{
  v2 = sub_100007954();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1000025D0();
  sub_1000078D4();

  sub_100002CEC();
  sub_100007944();
  v6 = sub_100007934();
  (*(v3 + 8))(v5, v2);
  sub_1000057CC(&qword_100010190, &qword_100009928);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100009840;
  *(v7 + 32) = v6;
  v8 = sub_100007924();

  return v8;
}

uint64_t sub_100006F8C()
{
  v0 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100009840;
  *(v1 + 32) = v0;
  v2 = sub_100007904();

  return v2;
}

uint64_t sub_100007010()
{
  v0 = sub_100007914();
  v1 = sub_100007914();
  v2 = sub_100007914();
  sub_1000057CC(&qword_100010180, &qword_1000098F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100009830;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_100007904();

  return v4;
}

uint64_t sub_1000070F4()
{
  v0 = sub_1000078C4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002CEC();
  sub_1000078B4();
  v4 = sub_1000078A4();
  (*(v1 + 8))(v3, v0);
  sub_1000057CC(&qword_100010178, &qword_1000098E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100009840;
  *(v5 + 32) = v4;
  v6 = sub_100007894();

  return v6;
}

uint64_t sub_100007244()
{
  v0 = sub_100007994();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000054C8();
  sub_100002CEC();
  sub_1000079A4();
  v19 = sub_100007984();
  v4 = *(v1 + 8);
  v4(v3, v0);
  v20 = sub_1000054C8();
  sub_1000079A4();
  v18 = sub_100007984();
  v4(v3, v0);
  v20 = sub_1000054C8();
  sub_1000079A4();
  v17 = sub_100007984();
  v4(v3, v0);
  v20 = sub_1000054C8();
  sub_1000079A4();
  v16 = sub_100007984();
  v4(v3, v0);
  v20 = sub_1000054C8();
  sub_1000079A4();
  v5 = sub_100007984();
  v4(v3, v0);
  v20 = sub_1000054C8();
  sub_1000079A4();
  v6 = sub_100007984();
  v4(v3, v0);
  v20 = sub_1000054C8();
  sub_1000079A4();
  v7 = sub_100007984();
  v4(v3, v0);
  v20 = sub_1000054C8();
  sub_1000079A4();
  v8 = sub_100007984();
  v4(v3, v0);
  v20 = sub_1000054C8();
  sub_1000079A4();
  v9 = sub_100007984();
  v4(v3, v0);
  sub_1000057CC(&qword_100010188, &qword_1000098F8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100009230;
  v11 = v18;
  *(v10 + 32) = v19;
  *(v10 + 40) = v11;
  v12 = v16;
  *(v10 + 48) = v17;
  *(v10 + 56) = v12;
  *(v10 + 64) = v5;
  *(v10 + 72) = v6;
  *(v10 + 80) = v7;
  *(v10 + 88) = v8;
  *(v10 + 96) = v9;
  v13 = sub_100007974();

  return v13;
}

void *sub_100007740@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100007864();
  *a1 = v3;
  return result;
}