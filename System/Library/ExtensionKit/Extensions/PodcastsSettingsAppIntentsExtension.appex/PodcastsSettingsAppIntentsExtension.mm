uint64_t sub_100001280(uint64_t a1)
{
  v2 = sub_1000013D4();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000132C();
  sub_100004A3C();
  return 0;
}

unint64_t sub_10000132C()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_1000013D4()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_100001438()
{
  v0 = sub_100004A2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000045A4(&qword_10000C130, &qword_1000058F8);
  sub_100004720(v4, qword_10000CCE0);
  v26 = sub_1000046E8(v4, qword_10000CCE0);
  sub_1000045A4(&qword_10000C138, &qword_100005900);
  v5 = sub_1000045A4(&qword_10000C140, &qword_100005908);
  v27 = v5;
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v24 = 4 * v6;
  v8 = swift_allocObject();
  v25 = v8;
  *(v8 + 16) = xmmword_100005350;
  v23 = *(v5 + 48);
  *(v8 + v7) = 0;
  v9 = v8 + v7;
  v10 = v1;
  v11 = *(v1 + 104);
  v29 = v1 + 104;
  v30 = v11;
  v12 = v0;
  v11(v3, enum case for PodcastsSettingsDeepLinkURLs.rootURL(_:), v0);
  sub_100004A1C();
  v13 = *(v10 + 8);
  v13(v3, v0);
  v28 = sub_100002B14();
  v31 = v9;
  sub_10000492C();
  v14 = v27;
  v15 = *(v27 + 48);
  v22 = v6;
  v23 = v15;
  *(v9 + v6) = 1;
  v16 = v30;
  v30(v3, enum case for PodcastsSettingsDeepLinkURLs.cellularDownloadsURL(_:), v12);
  sub_100004A1C();
  v21 = v13;
  v13(v3, v12);
  sub_10000492C();
  v23 = *(v14 + 48);
  *(v31 + 2 * v6) = 2;
  v16(v3, enum case for PodcastsSettingsDeepLinkURLs.forwardURL(_:), v12);
  sub_100004A1C();
  v13(v3, v12);
  sub_10000492C();
  v17 = v31;
  v23 = *(v27 + 48);
  *(v31 + 2 * v6 + v22) = 3;
  v30(v3, enum case for PodcastsSettingsDeepLinkURLs.backURL(_:), v12);
  sub_100004A1C();
  v18 = v21;
  v21(v3, v12);
  sub_10000492C();
  *(v17 + v24) = 4;
  v30(v3, enum case for PodcastsSettingsDeepLinkURLs.podcastsAndPrivacyURL(_:), v12);
  sub_100004A1C();
  v18(v3, v12);
  sub_10000492C();
  sub_100003E78(v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10000493C();
}

uint64_t sub_1000018CC()
{
  v0 = sub_1000049AC();
  sub_100004720(v0, qword_10000CCF8);
  sub_1000046E8(v0, qword_10000CCF8);
  return sub_10000499C();
}

uint64_t sub_100001930()
{
  v0 = sub_1000045A4(&qword_10000C110, &qword_1000058D8);
  __chkstk_darwin(v0 - 8);
  v59 = &v46 - v1;
  v2 = sub_1000045A4(&qword_10000C0E8, &qword_1000058C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v46 - v3;
  v5 = sub_1000049CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004A0C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100004A5C();
  __chkstk_darwin(v10 - 8);
  v65 = sub_1000049DC();
  v68 = *(v65 - 8);
  v11 = __chkstk_darwin(v65);
  v67 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v46 - v13;
  sub_1000045A4(&qword_10000C118, &qword_1000058E0);
  v14 = sub_1000045A4(&qword_10000C120, &qword_1000058E8);
  v69 = v14;
  v15 = *(v14 - 8);
  v58 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v50 = (4 * v58);
  v17 = swift_allocObject();
  v51 = v17;
  *(v17 + 16) = xmmword_100005350;
  v70 = v17 + v16;
  v60 = *(v14 + 48);
  *(v17 + v16) = 0;
  sub_100004A4C();
  sub_1000049FC();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v6 + 104);
  v62 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  v54 = v6 + 104;
  v55 = v19;
  sub_1000049EC();
  sub_100004A4C();
  sub_1000049FC();
  v20 = v18;
  v21 = v5;
  v19(v8, v20, v5);
  v22 = v4;
  sub_1000049EC();
  v23 = *(v68 + 56);
  v68 += 56;
  v64 = v23;
  v23(v4, 0, 1, v65);
  v66 = "ath to the settings pane";
  v24 = v59;
  sub_1000048EC();
  v56 = sub_1000048FC();
  v25 = *(v56 - 8);
  v63 = *(v25 + 56);
  v57 = v25 + 56;
  v63(v24, 0, 1, v56);
  sub_1000049BC();
  v26 = v70;
  sub_10000490C();
  v48 = (v26 + v58);
  v49 = *(v69 + 48);
  *v48 = 1;
  sub_100004A4C();
  sub_1000049FC();
  v27 = v62;
  v53 = v21;
  v28 = v55;
  v55(v8, v62, v21);
  sub_1000049EC();
  v60 = "oads settings pane";
  sub_100004A4C();
  sub_1000049FC();
  v28(v8, v27, v21);
  sub_1000049EC();
  v52 = v22;
  v29 = v65;
  v64(v22, 0, 1, v65);
  sub_1000048EC();
  v30 = v24;
  v31 = v56;
  v63(v30, 0, 1, v56);
  sub_1000049BC();
  sub_10000490C();
  v49 = 2 * v58;
  v47 = (v70 + 2 * v58);
  v48 = *(v69 + 48);
  *v47 = 2;
  sub_100004A4C();
  sub_1000049FC();
  v32 = v62;
  v33 = v53;
  v34 = v55;
  v55(v8, v62, v53);
  sub_1000049EC();
  sub_100004A4C();
  sub_1000049FC();
  v34(v8, v32, v33);
  v35 = v52;
  sub_1000049EC();
  v64(v35, 0, 1, v29);
  v36 = v59;
  sub_1000048EC();
  v63(v36, 0, 1, v31);
  sub_1000049BC();
  sub_10000490C();
  v49 += v70 + v58;
  v58 = *(v69 + 48);
  *v49 = 3;
  sub_100004A4C();
  sub_1000049FC();
  v37 = v62;
  v38 = v53;
  v34(v8, v62, v53);
  sub_1000049EC();
  sub_100004A4C();
  sub_1000049FC();
  v34(v8, v37, v38);
  v39 = v52;
  sub_1000049EC();
  v64(v39, 0, 1, v65);
  v40 = v59;
  sub_1000048EC();
  v63(v40, 0, 1, v56);
  sub_1000049BC();
  sub_10000490C();
  v50 += v70;
  v58 = *(v69 + 48);
  *v50 = 4;
  sub_100004A4C();
  sub_1000049FC();
  v41 = v62;
  v42 = v53;
  v43 = v55;
  v55(v8, v62, v53);
  sub_1000049EC();
  sub_100004A4C();
  sub_1000049FC();
  v43(v8, v41, v42);
  sub_1000049EC();
  v64(v39, 0, 1, v65);
  sub_1000048EC();
  v63(v40, 0, 1, v56);
  sub_1000049BC();
  sub_10000490C();
  v44 = sub_10000406C(v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10000CD10 = v44;
  return result;
}

unint64_t sub_1000025E8()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

uint64_t sub_10000263C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 1953460082;
    }

    if (v2)
    {
      v3 = 0x8000000100004C10;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x64726177726F66;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1801675106;
  }

  else
  {
    v3 = 0x8000000100004C30;
    v4 = 0xD000000000000012;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 1953460082;
    }

    if (a2)
    {
      v6 = 0x8000000100004C10;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE700000000000000;
    if (v4 != 0x64726177726F66)
    {
LABEL_34:
      v8 = sub_100004A9C();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 1801675106;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x8000000100004C30;
    }

    if (v4 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

Swift::Int sub_1000027CC()
{
  sub_100004AAC();
  sub_100004A6C();

  return sub_100004ABC();
}

uint64_t sub_1000028A8(uint64_t a1)
{
  sub_100004A6C();
}

Swift::Int sub_100002970(uint64_t a1)
{
  sub_100004AAC();
  sub_100004A6C();

  return sub_100004ABC();
}

unint64_t sub_100002A48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100004254(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100002A78(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1953460082;
  v5 = 0xE700000000000000;
  v6 = 0x64726177726F66;
  v7 = 0xE400000000000000;
  v8 = 1801675106;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000100004C30;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000100004C10;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100002B14()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100002B6C()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_100002BC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_1000045A4(&qword_10000C130, &qword_1000058F8);
  v3 = sub_1000046E8(v2, qword_10000CCE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100002C74()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100002CCC()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100002D24()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t sub_100002D84(uint64_t a1)
{
  sub_100004694();
  v2 = sub_1000048DC();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100002DF4()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100002E4C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100002EA4()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100002EFC()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002FB8(uint64_t a1)
{
  v2 = sub_100002B14();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003008()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100003060()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_1000030B8()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_10000310C()
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100003168(uint64_t a1)
{
  v2 = sub_100002EFC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000031B8()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    sub_10000321C(&qword_10000C0B0, &qword_100005620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_10000321C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003278()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_1000032D0()
{
  v0 = sub_1000049DC();
  sub_100004720(v0, qword_10000CD18);
  sub_1000046E8(v0, qword_10000CD18);
  return sub_1000049BC();
}

void *sub_100003334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000048AC();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1000033A8(uint64_t *a1))()
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
  *(v2 + 32) = sub_10000489C();
  return sub_10000341C;
}

void sub_10000341C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003468()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_1000034BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000045EC();
  v5 = sub_100004694();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000352C()
{
  v0 = qword_10000C030;

  return v0;
}

unint64_t sub_10000356C()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_1000035C4()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

unint64_t sub_10000361C()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_10000371C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_1000046E8(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000037E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1000045EC();
  v6 = sub_100004640();
  v7 = sub_100004694();
  *v4 = v2;
  v4[1] = sub_1000038B0;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000038B0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000039B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000042A0();
  *a1 = result;
  return result;
}

uint64_t sub_1000039E0(uint64_t a1)
{
  v2 = sub_100003468();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for PodcastsSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastsSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100003B9C(uint64_t a1)
{
  v1 = a1;
  sub_100004AAC();
  sub_100004A6C();

  v2 = sub_100004ABC();

  return sub_100003CA0(v1, v2);
}

unint64_t sub_100003CA0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 1)
      {
        v7 = *(*(v2 + 48) + v4) ? 0xD000000000000011 : 1953460082;
        v8 = *(*(v2 + 48) + v4) ? 0x8000000100004C10 : 0xE400000000000000;
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x64726177726F66;
      }

      else
      {
        v7 = v6 == 3 ? 1801675106 : 0xD000000000000012;
        v8 = v6 == 3 ? 0xE400000000000000 : 0x8000000100004C30;
      }

      if (v5 == 3)
      {
        v9 = 1801675106;
      }

      else
      {
        v9 = 0xD000000000000012;
      }

      if (v5 == 3)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0x8000000100004C30;
      }

      if (v5 == 2)
      {
        v9 = 0x64726177726F66;
        v10 = 0xE700000000000000;
      }

      v11 = v5 ? 0xD000000000000011 : 1953460082;
      v12 = v5 ? 0x8000000100004C10 : 0xE400000000000000;
      v13 = v5 <= 1 ? v11 : v9;
      v14 = v5 <= 1 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = sub_100004A9C();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
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

unint64_t sub_100003E78(uint64_t a1)
{
  v2 = sub_1000045A4(&qword_10000C140, &qword_100005908);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000045A4(&qword_10000C148, &qword_100005910);
    v7 = sub_100004A7C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100004784(v9, v5, &qword_10000C140, &qword_100005908);
      v11 = *v5;
      result = sub_100003B9C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000045A4(&unk_10000C150, qword_100005918);
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

unint64_t sub_10000406C(uint64_t a1)
{
  v2 = sub_1000045A4(&qword_10000C120, &qword_1000058E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000045A4(&qword_10000C128, &qword_1000058F0);
    v7 = sub_100004A7C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100004784(v9, v5, &qword_10000C120, &qword_1000058E8);
      v11 = *v5;
      result = sub_100003B9C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10000491C();
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

unint64_t sub_100004254(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000086B0;
  v6._object = a2;
  v4 = sub_100004A8C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000042A0()
{
  v17 = sub_10000496C();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000045A4(&qword_10000C0E0, &qword_1000058C0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000045A4(&qword_10000C0E8, &qword_1000058C8);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1000049DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000045A4(&qword_10000C0F0, &qword_1000058D0);
  sub_1000049BC();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 5;
  v14 = sub_10000488C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100002B14();
  return sub_1000048CC();
}

uint64_t sub_1000045A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000045EC()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

unint64_t sub_100004640()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

unint64_t sub_100004694()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004720(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100004784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000045A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}