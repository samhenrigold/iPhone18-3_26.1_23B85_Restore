unint64_t sub_10001AEF0()
{
  result = qword_1000292D8;
  if (!qword_1000292D8)
  {
    sub_100002350(&qword_1000292D0, &qword_10001EDC0);
    sub_10001AF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000292D8);
  }

  return result;
}

unint64_t sub_10001AF7C()
{
  result = qword_1000292E0;
  if (!qword_1000292E0)
  {
    sub_100002350(&qword_1000292E8, &unk_10001EDC8);
    sub_100005818(&qword_1000291F0, &qword_1000291F8, &qword_10001EB70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000292E0);
  }

  return result;
}

unint64_t sub_10001B034()
{
  result = qword_1000292F8;
  if (!qword_1000292F8)
  {
    sub_100002350(&qword_1000292C8, &unk_10001ED88);
    sub_10001B120(&qword_100029300, type metadata accessor for LowConfidenceLIDView, &protocol conformance descriptor for LowConfidenceLIDView);
    sub_10001B120(&qword_100029308, type metadata accessor for LanguageDownloadView, &protocol conformance descriptor for LanguageDownloadView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000292F8);
  }

  return result;
}

uint64_t sub_10001B120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001B168()
{
  result = qword_100029310;
  if (!qword_100029310)
  {
    sub_100002350(&qword_1000292B0, &qword_10001ED70);
    sub_10001AEF0();
    sub_100005818(&qword_1000292F0, &qword_1000292A0, &qword_10001ED60, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029310);
  }

  return result;
}

uint64_t sub_10001B228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001D058();
  *a1 = result;
  return result;
}

uint64_t sub_10001B254@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001D058();
  *a1 = result;
  return result;
}

uint64_t sub_10001B2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001B340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001B3D0()
{
  result = qword_100029318;
  if (!qword_100029318)
  {
    sub_100002350(&qword_100029320, &unk_10001EEE0);
    sub_10001B034();
    sub_10001B168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029318);
  }

  return result;
}

id sub_10001B4B8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for LanguageSupportRemoteModel(0)) init];
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x8000000100020340;
  a1[2] = sub_10001B45C;
  a1[3] = 0;
  a1[4] = result;
  return result;
}

uint64_t sub_10001B524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001C390(a1, a2, a3);
  sub_100001CFC(&qword_100029368, &qword_10001EF70);
  v3 = sub_100005818(&qword_100029370, &qword_100029368, &qword_10001EF70, &protocol conformance descriptor for ExtensionScene<A>);
  sub_100006298(v3, v4, v5);
  return sub_10001CE88();
}

uint64_t sub_10001B5E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_10001D0B8();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001D0D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CFC(&qword_100029388, &qword_10001F008);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = sub_100001CFC(&qword_100029390, &qword_10001F010);
  v16 = *(v15 - 8);
  v37 = v15;
  v38 = v16;
  __chkstk_darwin(v15);
  v18 = &v35 - v17;
  v41 = sub_100001CFC(&qword_100029398, &qword_10001F018);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v36 = &v35 - v19;
  v35 = a1;
  sub_10001D0C8();
  sub_10001D3F8();
  sub_10001D3E8();

  v20 = sub_10001C618(&qword_1000293A0, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  sub_10001CF28();

  (*(v5 + 8))(v7, v4);
  (*(v9 + 16))(v12, v14, v8);
  v46 = v4;
  v47 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = sub_10001CF38();
  (*(v9 + 8))(v14, v8);
  v22 = v35;
  v46 = v35;
  v47 = v21;
  sub_10001D108();
  v23 = sub_100001CFC(&qword_1000293A8, &qword_10001F020);
  v24 = sub_10001C4B4();
  sub_10001D288();

  v26 = v39;
  v25 = v40;
  v27 = v42;
  (*(v40 + 104))(v39, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v42);
  v46 = v23;
  v47 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v36;
  v30 = v37;
  sub_10001D2B8();
  (*(v25 + 8))(v26, v27);
  (*(v38 + 8))(v18, v30);
  v45 = v22;
  sub_100001CFC(&qword_1000293D0, &qword_10001F030);
  v46 = v30;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = sub_100002350(&qword_1000293D8, &qword_10001F038);
  v32 = sub_100005818(&qword_1000293E0, &qword_1000293D8, &qword_10001F038, &protocol conformance descriptor for ToolbarItemGroup<A>);
  v46 = v31;
  v47 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v41;
  sub_10001D2C8();
  return (*(v43 + 8))(v29, v33);
}

uint64_t sub_10001BC1C(uint64_t a1)
{
  v2 = sub_10001D168();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100001CFC(&qword_1000293D8, &qword_10001F038);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  sub_10001D158();
  v11 = a1;
  sub_100001CFC(&qword_1000293E8, &qword_10001F040);
  v7 = sub_100002350(&qword_1000293F0, &qword_10001F048);
  v8 = sub_100005818(&qword_1000293F8, &qword_1000293F0, &qword_10001F048, &protocol conformance descriptor for Button<A>);
  v12 = v7;
  v13 = v8;
  swift_getOpaqueTypeConformance2();
  sub_10001CFF8();
  sub_100005818(&qword_1000293E0, &qword_1000293D8, &qword_10001F038, &protocol conformance descriptor for ToolbarItemGroup<A>);
  sub_10001D178();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10001BE44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v14 = sub_10001CFD8();
  v12 = *(v14 - 8);
  __chkstk_darwin(v14);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001CFC(&qword_1000293F0, &qword_10001F048);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10001D108();
  *(swift_allocObject() + 16) = a1;
  v9 = a1;
  sub_10001D378();
  sub_10001CFC8();
  sub_100005818(&qword_1000293F8, &qword_1000293F0, &qword_10001F048, &protocol conformance descriptor for Button<A>);
  sub_10001D298();
  (*(v12 + 8))(v4, v14);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001C07C(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSError) initWithDomain:_LTTranslationErrorDomain code:20 userInfo:0];
  swift_getKeyPath();
  sub_10001C618(&qword_100028CF0, type metadata accessor for LanguageSupportRemoteModel, &protocol conformance descriptor for LanguageSupportRemoteModel);
  v3 = v2;
  sub_10001CE28();

  v4 = *(a1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion);
  if (v4)
  {
    v5 = *(a1 + OBJC_IVAR____TtC30TranslationAPISupportExtension26LanguageSupportRemoteModel__cachedCheckerCompletion + 8);
    v6 = v3;
    sub_10001629C(v4, v5);
    v4(0, v3);

    sub_100014B1C(v4, v5);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10001CE18();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001C29C(*&argc, argv, envp);
  sub_10001CEC8();
  return 0;
}

unint64_t sub_10001C29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100029328;
  if (!qword_100029328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029328);
  }

  return result;
}

unint64_t sub_10001C31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C29C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001C390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100029360;
  if (!qword_100029360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029360);
  }

  return result;
}

id sub_10001C3E4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_10001C3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100029378;
  if (!qword_100029378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029378);
  }

  return result;
}

unint64_t sub_10001C4B4()
{
  result = qword_1000293B0;
  if (!qword_1000293B0)
  {
    v1 = sub_100002350(&qword_1000293A8, &qword_10001F020);
    sub_10001C56C(v1, v2, v3);
    sub_100005818(&qword_1000293C0, &qword_1000293C8, &qword_10001F028, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293B0);
  }

  return result;
}

unint64_t sub_10001C56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000293B8;
  if (!qword_1000293B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293B8);
  }

  return result;
}

uint64_t sub_10001C5D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001C680()
{
  sub_100002350(&qword_100029398, &qword_10001F018);
  sub_100002350(&qword_1000293D0, &qword_10001F030);
  sub_100002350(&qword_100029390, &qword_10001F010);
  sub_100002350(&qword_1000293A8, &qword_10001F020);
  sub_10001C4B4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100002350(&qword_1000293D8, &qword_10001F038);
  sub_100005818(&qword_1000293E0, &qword_1000293D8, &qword_10001F038, &protocol conformance descriptor for ToolbarItemGroup<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001C800(int a1, int a2, int a3, int a4)
{
  if (qword_100029CA0 == -1)
  {
    if (qword_100029CA8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10001CCC8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100029CA8)
    {
      return _availability_version_check();
    }
  }

  if (qword_100029C98 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10001CCE0();
    a3 = v10;
    a4 = v9;
    v8 = dword_100029C88 < v11;
    if (dword_100029C88 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100029C8C > a3)
      {
        return 1;
      }

      if (dword_100029C8C >= a3)
      {
        return dword_100029C90 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100029C88 < a2;
  if (dword_100029C88 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10001C994(uint64_t result)
{
  v1 = qword_100029CA8;
  if (qword_100029CA8)
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
      qword_100029CA8 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_100029C88, &dword_100029C8C, &dword_100029C90);
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