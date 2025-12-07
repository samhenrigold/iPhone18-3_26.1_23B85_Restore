void *sub_10001F044(uint64_t a1, uint64_t a2)
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

  sub_1000066C8(&qword_100030A50, &qword_100023D00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001F0B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000066C8(&qword_100030A50, &qword_100023D00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10001F1AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F43C(a1, a2, a3, *v3, &qword_100030700, &qword_100023588, type metadata accessor for ForecastLocationEntity);
  *v3 = result;
  return result;
}

void *sub_10001F1F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F43C(a1, a2, a3, *v3, &qword_100030620, &unk_100023D20, type metadata accessor for UtilityRateInfoEntry);
  *v3 = result;
  return result;
}

void *sub_10001F234(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F43C(a1, a2, a3, *v3, &qword_100030A58, &qword_100023D10, &type metadata accessor for HistoricalUsageWidgetCommon.Home);
  *v3 = result;
  return result;
}

char *sub_10001F278(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001F298(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F43C(a1, a2, a3, *v3, &qword_100030960, &qword_100023A78, type metadata accessor for GridForecastEntry);
  *v3 = result;
  return result;
}

void *sub_10001F2DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001F43C(a1, a2, a3, *v3, &qword_100030A48, &qword_100023CF8, type metadata accessor for HistoricalUsageEntry);
  *v3 = result;
  return result;
}

char *sub_10001F320(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000066C8(&qword_1000306F0, &qword_100023570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001F43C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000066C8(a5, a6);
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

uint64_t sub_10001F618(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v32 = a1;
  v33 = a4;
  v31 = a2;
  v5 = type metadata accessor for HistoricalUsageEntry(0);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000216DC();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000211BC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000211DC();
  v15 = *(v29 - 8);
  __chkstk_darwin(v29);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, enum case for Calendar.Identifier.gregorian(_:), v11);
  sub_1000211CC();
  (*(v12 + 8))(v14, v11);
  sub_1000216BC();
  v18 = sub_1000216CC();
  v19 = sub_100021C9C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242E0, &v34);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s THIS SHOULD NEVER GET CALLED", v21, 0xCu);
    sub_100008C24(v22);

    a3 = v28;
  }

  (*(v8 + 8))(v10, v30);
  sub_10002111C();
  sub_1000212CC();
  sub_100021ACC();
  *&v7[v5[6]] = v32;
  v7[v5[7]] = 3;
  v23 = &v7[v5[8]];
  *v23 = v24;
  *(v23 + 1) = v25;

  a3(v7);
  sub_10001FDEC(v7);
  return (*(v15 + 8))(v17, v29);
}

uint64_t sub_10001F9CC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v32 = a2;
  v33 = a1;
  v6 = sub_100021A8C();
  __chkstk_darwin(v6 - 8);
  v35 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000066C8(&qword_100030A40, &qword_100023CF0);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = v29 - v8;
  v10 = type metadata accessor for HistoricalUsageEntry(0);
  v31 = *(v10 - 1);
  __chkstk_darwin(v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000216DC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000216BC();
  v17 = sub_1000216CC();
  v18 = sub_100021C9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29[1] = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = a3;
    v22 = v21;
    v37 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242C0, &v37);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s THIS SHOULD NEVER GET CALLED", v20, 0xCu);
    sub_100008C24(v22);
    a3 = v30;
  }

  (*(v14 + 8))(v16, v13);
  sub_10002111C();
  sub_1000212DC();
  sub_100021ACC();
  *&v12[v10[6]] = v33;
  v12[v10[7]] = 3;
  v23 = &v12[v10[8]];
  *v23 = v24;
  *(v23 + 1) = v25;
  sub_1000066C8(&qword_100030A48, &qword_100023CF8);
  v26 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100022E90;
  sub_10000A8FC(v12, v27 + v26);

  sub_100021A7C();
  sub_10001FF30(&qword_100030A38, type metadata accessor for HistoricalUsageEntry, &unk_100023C20);
  sub_100021B0C();
  a3(v9);
  (*(v34 + 8))(v9, v36);
  return sub_10001FDEC(v12);
}

uint64_t sub_10001FDEC(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalUsageEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001FEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FF30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001FF7C()
{
  result = qword_100030A68;
  if (!qword_100030A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A68);
  }

  return result;
}

unint64_t sub_10001FFD0()
{
  sub_100021D1C(18);

  sub_100020FBC();
  sub_1000066C8(&qword_1000306D8, &qword_100023528);
  v1._countAndFlagsBits = sub_100021BBC();
  sub_100021BCC(v1);

  return 0xD000000000000010;
}

uint64_t sub_10002008C()
{
  v0 = sub_1000210BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000211AC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100021B7C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000210DC();
  sub_100008BC0(v6, qword_100030B98);
  sub_100008B88(v6, qword_100030B98);
  sub_100021B2C();
  sub_10002119C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000210EC();
}

unint64_t sub_10002027C()
{
  result = qword_100030A70;
  if (!qword_100030A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A70);
  }

  return result;
}

unint64_t sub_1000202D4()
{
  result = qword_100030A78;
  if (!qword_100030A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030A78);
  }

  return result;
}

uint64_t sub_100020378@<X0>(uint64_t a1@<X8>)
{
  if (qword_100030110 != -1)
  {
    swift_once();
  }

  v2 = sub_1000210DC();
  v3 = sub_100008B88(v2, qword_100030B98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100020420(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000E294();
  *v4 = v2;
  v4[1] = sub_100006460;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_1000204CC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100020540();
  *a2 = result;
  return result;
}

uint64_t sub_1000204F4(uint64_t a1)
{
  v2 = sub_10001FF7C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100020540()
{
  v0 = sub_10002102C();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000066C8(&qword_1000302B8, &unk_100023530);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_1000210BC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000211AC();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100021B7C();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000210DC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_1000066C8(&qword_1000306E0, &qword_100023540);
  sub_100021B2C();
  sub_10002119C();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_1000210EC();
  (*(v17 + 56))(v9, 1, 1, v16);
  v18 = sub_100020F6C();
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_10000F964();
  return sub_100020FCC();
}

uint64_t sub_1000209D4(int a1, int a2, int a3, int a4)
{
  if (qword_100032C08 == -1)
  {
    if (qword_100032C10)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100020E9C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100032C10)
    {
      return _availability_version_check();
    }
  }

  if (qword_100032C00 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100020EB4();
    a3 = v10;
    a4 = v9;
    v8 = dword_100032BF0 < v11;
    if (dword_100032BF0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100032BF4 > a3)
      {
        return 1;
      }

      if (dword_100032BF4 >= a3)
      {
        return dword_100032BF8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100032BF0 < a2;
  if (dword_100032BF0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100020B68(uint64_t result)
{
  v1 = qword_100032C10;
  if (qword_100032C10)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100032C10 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100032BF0, &dword_100032BF4, &dword_100032BF8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}