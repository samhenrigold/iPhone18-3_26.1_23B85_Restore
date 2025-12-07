void sub_2D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2D94(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onMailAccountCreated:a2];
}

void sub_3620(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id _MSLogSystem(uint64_t a1)
{
  if (qword_12A558[0] != -1)
  {
    sub_D47A4();
  }

  v2 = qword_12A550;

  return v2;
}

void sub_3684(id a1)
{
  qword_12A550 = os_log_create("com.apple.icloudMCCKit", "icloudMailSettings");

  _objc_release_x1();
}

void sub_3F1C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"BYOD_HANDLE_URL_NOTIFICATION" object:0 userInfo:*(a1 + 32)];
}

void sub_4470(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"deeplink"];

  if (v3)
  {
    v4 = (a1 + 40);
    v5 = [*(a1 + 40) navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [*v4 navigationController];
      v8 = [v7 viewControllers];
      v9 = [v8 count];

      if (v9 >= 4)
      {
        v10 = [*(a1 + 32) userInfo];
        v11 = [v10 valueForKey:@"deeplink"];

        v13 = _MSLogSystem(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_D49E4();
        }

        v14 = [v11 stringByReplacingOccurrencesOfString:@"prefs:root=APPLE_ACCOUNT&path=" withString:&stru_11B690];

        v15 = [v14 stringByReplacingOccurrencesOfString:@"settings-navigation://com.apple.Settings.AppleAccount/" withString:&stru_11B690];

        v17 = _MSLogSystem(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_D4A54(v4, v17);
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v18 = [*v4 navigationController];
        v19 = [v18 viewControllers];

        v33 = [v19 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v33)
        {
          v20 = *v39;
          v31 = *v39;
          v32 = v15;
          do
          {
            for (i = 0; i != v33; i = i + 1)
            {
              if (*v39 != v20)
              {
                objc_enumerationMutation(v19);
              }

              v22 = *(*(&v38 + 1) + 8 * i);
              v23 = [v22 childViewControllers];
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v24 = v23;
              v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v35;
                while (2)
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v35 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v29 = [*v4 navigationController];
                      v30 = [v29 popToViewController:v22 animated:1];

                      v15 = v32;
                      [*v4 handleDeeplink:v32];

                      goto LABEL_25;
                    }
                  }

                  v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }
              }

              v20 = v31;
            }

            v15 = v32;
            v33 = [v19 countByEnumeratingWithState:&v38 objects:v43 count:16];
          }

          while (v33);
        }

LABEL_25:
      }
    }
  }
}

void sub_49C8(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = @"successfully";
  }

  else
  {
    v7 = [(NSError *)v4 localizedDescription];
    v6 = [NSString stringWithFormat:@"with error: %@", v7];
  }

  v8 = _MSLogSystem(v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "save completed %@", buf, 0xCu);
  }
}

BOOL sub_4D0C(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 identifier:a3];
  v5 = [v4 isEqualToString:@"iCloudMailboxBehaviorID"];

  return v5;
}

BOOL sub_4DF4(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 identifier:a3];
  v5 = [v4 isEqualToString:@"iCloudMailboxSMIMEID"];

  return v5;
}

uint64_t sub_535C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

double sub_53D0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_545C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_54D0()
{
  v1 = v0;
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v6 = sub_6610(v2, qword_137988);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_D5320();
  v8 = sub_D68A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "[Mail Import Providers] get providers started", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v20) = 1;

  sub_D5580();
  v10 = sub_6648((v1 + OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel_repository), *(v1 + OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel_repository + 24));
  v11 = *(*v10 + 16);
  v12 = *(*v10 + 24);
  v13 = objc_allocWithZone(type metadata accessor for MSMailImportProviderListAPIRequest(0));
  v14 = v11;
  v15 = v12;
  v16 = sub_32208(v11, v15, 0, 0xF000000000000000);

  v17 = sub_1E894();
  v20 = v17;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_66D4(&qword_121050, &qword_D8BE0);
  sub_671C();
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_5814(uint64_t *a1, uint64_t a2)
{
  v3 = sub_D5340();
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v37 = *a1;
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = *(a1 + 40);
  if (v7)
  {
    v12 = v4;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v13 = sub_6610(v3, qword_137988);
    v36 = v12;
    (*(v12 + 16))(v6, v13, v3);

    v14 = sub_D5320();
    v15 = sub_D68B0();

    v35 = v15;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = v16;
      v34 = swift_slowAlloc();
      v45[0] = v34;
      *v16 = 136315138;
      v39 = v37;
      v40 = v7;
      v41 = v8;
      LOBYTE(v42) = v9 & 1;
      v43 = v10;
      v44 = v11 & 1;
      sub_6780();
      v31 = v14;
      v17 = sub_D6C60();
      v19 = sub_558F0(v17, v18, v45);
      v33 = v3;
      v20 = v19;

      v21 = v32;
      *(v32 + 1) = v20;
      v22 = v31;
      _os_log_impl(&dword_0, v31, v35, "[Mail Import Providers] get providers failed: %s", v21, 0xCu);
      sub_67D4(v34);

      (*(v36 + 8))(v6, v33);
    }

    else
    {

      (*(v36 + 8))(v6, v3);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v23 = v11 & 1;
    v24 = v10;
    if (v7)
    {
      v25 = v37;
    }

    else
    {
      v25 = 0;
    }

    if (v7)
    {
      v26 = v9 & 1;
    }

    else
    {
      v8 = 0;
      v26 = 0;
    }

    if (v7)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    if (v7)
    {
      v28 = v23;
    }

    else
    {
      v28 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v25;
    v40 = v7;
    v41 = v8;
    v42 = v26;
    v43 = v27;
    v44 = v28;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_5BB4(uint64_t *a1, uint64_t a2)
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v8 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v6, v8, v3);

  v9 = sub_D5320();
  v10 = sub_D68A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v7 + 16);

    _os_log_impl(&dword_0, v9, v10, "[Mail Import Providers] get providers successful, count: %ld", v11, 0xCu);
  }

  else
  {
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v7;

    return sub_D5580();
  }

  return result;
}

uint64_t sub_5DEC()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel__isLoading;
  v2 = sub_66D4(&qword_121068, &qword_DBEE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel__error;
  v4 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel__providers;
  v6 = sub_66D4(&qword_121078, &qword_D8C78);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel_repository));
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t _s9ViewModelCMa(uint64_t a1)
{
  result = qword_120EC8;
  if (!qword_120EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5FA0(uint64_t a1)
{
  sub_68C8(319, &qword_120ED8, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
    if (v2 <= 0x3F)
    {
      sub_6158(319, &qword_120EF0, &unk_120EF8, &qword_D8B18);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_6110(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_6158(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_6110(a3, a4);
    v5 = sub_D5590();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_61AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_61BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_61DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_6238@<X0>(uint64_t *a2@<X8>)
{
  _s9ViewModelCMa(0);
  result = sub_D54D0();
  *a2 = result;
  return result;
}

double sub_6278@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_6308(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_63A0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v4;
  return result;
}

uint64_t sub_6420(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_6494@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v4;
  return result;
}

uint64_t sub_6514(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

BOOL sub_65AC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_6610(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_6648(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_668C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_66D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_671C()
{
  result = qword_121058;
  if (!qword_121058)
  {
    sub_6110(&qword_121050, &qword_D8BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121058);
  }

  return result;
}

unint64_t sub_6780()
{
  result = qword_121060;
  if (!qword_121060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121060);
  }

  return result;
}

uint64_t sub_67D4(void *a1)
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

__n128 sub_6820(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_682C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_684C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_68C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_6934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_6A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MSAddressDetailView(uint64_t a1)
{
  result = qword_1210F0;
  if (!qword_1210F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6B20(uint64_t a1)
{
  sub_6C10(319);
  if (v1 <= 0x3F)
  {
    sub_6C68(319);
    if (v2 <= 0x3F)
    {
      sub_6D4C(319, &qword_121118, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_6CFC();
        if (v4 <= 0x3F)
        {
          sub_6D4C(319, &qword_121128, &type metadata for CGFloat);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_6C10(uint64_t a1)
{
  if (!qword_121100)
  {
    sub_D57E0();
    v1 = sub_D5730();
    if (!v2)
    {
      atomic_store(v1, &qword_121100);
    }
  }
}

void sub_6C68(uint64_t a1)
{
  if (!qword_121108)
  {
    _s9ViewModelCMa_0(255);
    sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
    v1 = sub_D5760();
    if (!v2)
    {
      atomic_store(v1, &qword_121108);
    }
  }
}

unint64_t sub_6CFC()
{
  result = qword_121120;
  if (!qword_121120)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_121120);
  }

  return result;
}

void sub_6D4C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_D6240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_6DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v50 = sub_D5B20();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MSAddressDetailView(0);
  v5 = *(v4 - 8);
  v51 = v4 - 8;
  v41 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_66D4(&qword_121198, &unk_E3870);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = sub_66D4(&qword_121190, &unk_D8D80);
  v11 = *(v10 - 8);
  v44 = v10;
  v45 = v11;
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v14 = sub_66D4(&qword_121180, &unk_D8D70);
  v15 = *(v14 - 8);
  v48 = v14;
  v49 = v15;
  __chkstk_darwin(v14);
  v42 = &v41 - v16;
  v17 = sub_66D4(&qword_121170, &unk_D8D60);
  v52 = *(v17 - 8);
  v53 = v17;
  __chkstk_darwin(v17);
  v43 = &v41 - v18;
  v56 = a1;
  sub_66D4(&qword_1211D8, &qword_D8D98);
  sub_109A8(&qword_1211E0, &qword_1211D8, &qword_D8D98, &protocol conformance descriptor for TupleView<A>);
  sub_D5E60();
  v19 = a1;
  sub_E05C(a1, &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v21 = swift_allocObject();
  sub_E0CC(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v22 = &v9[*(v7 + 36)];
  *v22 = sub_E130;
  v22[1] = v21;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22[2] = 0;
  v22[3] = 0;
  v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v60._countAndFlagsBits = 2777980912;
  v60._object = 0xA400000000000000;
  v66._countAndFlagsBits = 0x45445F5341494C41;
  v66._object = 0xED0000534C494154;
  sub_D66D0(v66);
  v67._countAndFlagsBits = 2777980912;
  v67._object = 0xA400000000000000;
  sub_D66D0(v67);
  v40._countAndFlagsBits = 0xE000000000000000;
  v68._countAndFlagsBits = 0x45445F5341494C41;
  v68._object = 0xED0000534C494154;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v25.super.isa = v24;
  v26 = sub_D4E80(v68, v69, v25, v60, 0, v40);
  v28 = v27;

  v60._countAndFlagsBits = v26;
  v60._object = v28;
  v29 = sub_DEF4();
  v30 = sub_DFAC();
  sub_D6040();

  sub_FC3C(v9, &qword_121198, &unk_E3870);
  v31 = v46;
  v32 = v47;
  v33 = v50;
  (*(v47 + 104))(v46, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v50);
  v60._countAndFlagsBits = v7;
  v60._object = &type metadata for String;
  *&v61 = v29;
  *(&v61 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v42;
  v36 = v44;
  sub_D60D0();
  (*(v32 + 8))(v31, v33);
  (*(v45 + 8))(v13, v36);
  v55 = v19;
  sub_66D4(&qword_121188, &unk_E3860);
  v60._countAndFlagsBits = v36;
  v60._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_1211C0, &qword_121188, &unk_E3860, &protocol conformance descriptor for TupleToolbarContent<A>);
  v37 = v43;
  v38 = v48;
  sub_D6120();
  (*(v49 + 8))(v35, v38);
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v60 = v57;
  v61 = v58;
  v62[0] = v59[0];
  *(v62 + 9) = *(v59 + 9);
  sub_A01C0(&v60._countAndFlagsBits, v54);
  countAndFlagsBits = v60._countAndFlagsBits;
  sub_E158(&countAndFlagsBits);

  v64 = v61;
  v65[0] = v62[0];
  *(v65 + 9) = *(v62 + 9);
  sub_FC3C(&v64, &qword_120EE8, &qword_D8DD0);
  return (*(v52 + 8))(v37, v53);
}

uint64_t sub_7580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v81 = sub_66D4(&qword_1212A0, &qword_D8F20);
  v3 = *(v81 - 1);
  __chkstk_darwin(v81);
  v76[0] = v76 - v4;
  v5 = sub_66D4(&qword_1212A8, &qword_D8F28);
  v6 = __chkstk_darwin(v5 - 8);
  v85 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = v76 - v8;
  v84 = sub_66D4(&qword_1212B0, &qword_D8F30);
  v83 = *(v84 - 8);
  v9 = __chkstk_darwin(v84);
  v92 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = v76 - v11;
  v90 = sub_66D4(&qword_1212B8, &qword_D8F38);
  v82 = *(v90 - 8);
  v12 = __chkstk_darwin(v90);
  v89 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v93 = v76 - v14;
  v15 = sub_66D4(&qword_1212C0, &qword_D8F40);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v76 - v17;
  v19 = sub_66D4(&qword_1212C8, &qword_D8F48);
  v20 = __chkstk_darwin(v19 - 8);
  v88 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v76 - v22;
  v24 = a1 + *(type metadata accessor for MSAddressDetailView(0) + 20);
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = _s9ViewModelCMa_0(0);
  v29 = sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  v79 = v25;
  v78 = v26;
  v77 = v27;
  v76[2] = v28;
  v76[1] = v29;
  v30 = sub_D5740();
  v31 = *(v30 + 16);
  v32 = *(v30 + 24);
  sub_F298(v31, v32);

  v80 = v3;
  v87 = v23;
  if (v32 == 1)
  {
    __chkstk_darwin(v33);
    sub_66D4(&qword_121338, &qword_DF070);
    sub_109A8(&qword_121340, &qword_121338, &qword_DF070, &protocol conformance descriptor for Toggle<A>);
    sub_D6390();
    (*(v16 + 32))(v23, v18, v15);
    v34 = (*(v16 + 56))(v23, 0, 1, v15);
  }

  else
  {
    sub_F2AC(v31, v32);
    v34 = (*(v16 + 56))(v23, 1, 1, v15);
  }

  __chkstk_darwin(v34);
  sub_66D4(&qword_1212D0, &qword_D8F50);
  sub_109A8(&qword_1212D8, &qword_1212D0, &qword_D8F50, &protocol conformance descriptor for TupleView<A>);
  v35 = sub_D6390();
  __chkstk_darwin(v35);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v95._countAndFlagsBits = 2777980912;
  v95._object = 0xA400000000000000;
  v106._countAndFlagsBits = 0x4F52465F444E4553;
  v106._object = 0xE90000000000004DLL;
  sub_D66D0(v106);
  v107._countAndFlagsBits = 2777980912;
  v107._object = 0xA400000000000000;
  sub_D66D0(v107);
  v75._countAndFlagsBits = 0xE000000000000000;
  v108._countAndFlagsBits = 0x4F52465F444E4553;
  v108._object = 0xE90000000000004DLL;
  v109.value._countAndFlagsBits = 0;
  v109.value._object = 0;
  v38.super.isa = v37;
  v39 = sub_D4E80(v108, v109, v38, v95, 0, v75);
  v41 = v40;

  v95._countAndFlagsBits = v39;
  v95._object = v41;
  v42 = sub_DFAC();
  v102 = sub_D5F50();
  v103 = v43;
  v104 = v44 & 1;
  v105 = v45;
  sub_A72C(&v95);
  sub_66D4(&qword_1212E0, &qword_D8F58);
  sub_66D4(&qword_1212E8, &qword_D8F60);
  sub_F2D0();
  sub_F670(&qword_121300, &qword_1212E8, &qword_D8F60);
  sub_D6380();
  v46 = sub_D5740();
  v47 = *(v46 + 16);
  v48 = *(v46 + 24);
  sub_F298(v47, v48);

  if (v48 == 1)
  {
    v79 = v76;
    __chkstk_darwin(v49);
    sub_66D4(&qword_121310, &qword_D8F70);
    v50 = sub_6110(&qword_121318, &qword_D8F78);
    v51 = sub_6110(&qword_121178, &qword_DB0C0);
    v52 = sub_F3B0();
    v53 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
    v95._countAndFlagsBits = v50;
    v95._object = &type metadata for String;
    v96 = v51;
    v97 = &type metadata for Text;
    v98 = v52;
    v99 = v42;
    v100 = v53;
    v101 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v54 = v76[0];
    sub_D6390();
    v55 = v80;
    v56 = v91;
    v57 = v54;
    v58 = v81;
    (*(v80 + 32))(v91, v57, v81);
    v59 = 0;
  }

  else
  {
    sub_F2AC(v47, v48);
    v59 = 1;
    v56 = v91;
    v58 = v81;
    v55 = v80;
  }

  (*(v55 + 56))(v56, v59, 1, v58);
  v60 = v88;
  sub_FBD4(v87, v88, &qword_1212C8, &qword_D8F48);
  v61 = v82;
  v81 = *(v82 + 16);
  v62 = v89;
  (v81)(v89, v93, v90);
  v63 = v83;
  v80 = *(v83 + 16);
  v64 = v92;
  v65 = v84;
  (v80)(v92, v94, v84);
  v66 = v56;
  v67 = v85;
  sub_FBD4(v66, v85, &qword_1212A8, &qword_D8F28);
  v68 = v86;
  sub_FBD4(v60, v86, &qword_1212C8, &qword_D8F48);
  v69 = sub_66D4(&qword_121308, &qword_D8F68);
  v70 = v62;
  v71 = v90;
  (v81)(v68 + v69[12], v70, v90);
  (v80)(v68 + v69[16], v64, v65);
  sub_FBD4(v67, v68 + v69[20], &qword_1212A8, &qword_D8F28);
  sub_FC3C(v91, &qword_1212A8, &qword_D8F28);
  v72 = *(v63 + 8);
  v72(v94, v65);
  v73 = *(v61 + 8);
  v73(v93, v71);
  sub_FC3C(v87, &qword_1212C8, &qword_D8F48);
  sub_FC3C(v67, &qword_1212A8, &qword_D8F28);
  v72(v92, v65);
  v73(v89, v71);
  return sub_FC3C(v88, &qword_1212C8, &qword_D8F48);
}

uint64_t sub_8164(uint64_t a1)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v5._object = 2777980912;
  v6._countAndFlagsBits = 0x415F454C42414E45;
  v6._object = 0xEC0000005341494CLL;
  sub_D66D0(v6);
  v7._countAndFlagsBits = 2777980912;
  v7._object = 0xA400000000000000;
  sub_D66D0(v7);
  v10._countAndFlagsBits = 2777980912;
  v5._countAndFlagsBits = 0xE000000000000000;
  v8._countAndFlagsBits = 0x415F454C42414E45;
  v8._object = 0xEC0000005341494CLL;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v3.super.isa = v2;
  v10._object = 0xA400000000000000;
  sub_D4E80(v8, v9, v3, v10, 0, v5);

  type metadata accessor for MSAddressDetailView(0);
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  sub_DFAC();
  return sub_D62D0();
}

uint64_t sub_836C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v39 = sub_66D4(&qword_1213E0, &unk_DC500);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v36 - v3;
  v5 = sub_66D4(&qword_1213E8, &qword_D90A0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_66D4(&qword_1213F0, &qword_D90A8);
  v12 = __chkstk_darwin(v11 - 8);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_66D4(&qword_1213F8, &qword_D90B0);
  v17 = __chkstk_darwin(v16 - 8);
  v38 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v36 - v19;
  *v20 = sub_D5B30();
  *(v20 + 1) = 0x403E000000000000;
  v20[16] = 0;
  v21 = sub_66D4(&qword_121400, &qword_D90B8);
  sub_8880(a1, &v20[*(v21 + 44)]);
  *v15 = sub_D5B40();
  *(v15 + 1) = 0x403E000000000000;
  v15[16] = 0;
  v22 = *(sub_66D4(&qword_121408, &qword_D90C0) + 44);
  v36 = v15;
  sub_956C(a1, &v15[v22]);
  type metadata accessor for MSAddressDetailView(0);
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  v23 = sub_D5740();
  v24 = *(v23 + 16);
  v25 = *(v23 + 24);
  sub_F298(v24, v25);

  if (v25 == 1)
  {
    *v4 = sub_D5B40();
    *(v4 + 1) = 0x403E000000000000;
    v4[16] = 0;
    v26 = sub_66D4(&qword_121418, &unk_D90D0);
    sub_9CD4(a1, &v4[*(v26 + 44)]);
    sub_FEA4(v4, v10, &qword_1213E0, &unk_DC500);
    v27 = 0;
  }

  else
  {
    sub_F2AC(v24, v25);
    v27 = 1;
  }

  v28 = v10;
  (*(v37 + 56))(v10, v27, 1, v39);
  v29 = v38;
  sub_FBD4(v20, v38, &qword_1213F8, &qword_D90B0);
  v30 = v36;
  v31 = v40;
  sub_FBD4(v36, v40, &qword_1213F0, &qword_D90A8);
  sub_FBD4(v10, v8, &qword_1213E8, &qword_D90A0);
  v32 = v8;
  v33 = v41;
  sub_FBD4(v29, v41, &qword_1213F8, &qword_D90B0);
  v34 = sub_66D4(&qword_121410, &qword_D90C8);
  sub_FBD4(v31, v33 + *(v34 + 48), &qword_1213F0, &qword_D90A8);
  sub_FBD4(v32, v33 + *(v34 + 64), &qword_1213E8, &qword_D90A0);
  sub_FC3C(v28, &qword_1213E8, &qword_D90A0);
  sub_FC3C(v30, &qword_1213F0, &qword_D90A8);
  sub_FC3C(v20, &qword_1213F8, &qword_D90B0);
  sub_FC3C(v32, &qword_1213E8, &qword_D90A0);
  sub_FC3C(v31, &qword_1213F0, &qword_D90A8);
  return sub_FC3C(v29, &qword_1213F8, &qword_D90B0);
}

uint64_t sub_8880@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v124 = sub_66D4(&qword_121480, &qword_D91E0);
  v3 = __chkstk_darwin(v124);
  v114 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v115 = &v112 - v5;
  v122 = sub_66D4(&qword_121488, &qword_D91E8);
  __chkstk_darwin(v122);
  v123 = (&v112 - v6);
  v7 = sub_66D4(&qword_121490, &qword_D91F0);
  v8 = __chkstk_darwin(v7 - 8);
  v126 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v125 = &v112 - v10;
  v11 = type metadata accessor for MSAddressDetailView(0);
  object = a1;
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  v12 = sub_D5740();
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  sub_F298(v13, v14);

  if (v14)
  {
    if (v14 == 1)
    {
      type metadata accessor for MAPreferencesViewProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v135._countAndFlagsBits = 2777980912;
      v135._object = 0xA400000000000000;
      v17 = 0x455341494C41;
      goto LABEL_6;
    }

    sub_F2AC(v13, v14);
  }

  type metadata accessor for MAPreferencesViewProvider();
  v18 = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:v18];
  v135._countAndFlagsBits = 2777980912;
  v135._object = 0xA400000000000000;
  v17 = 0x534552444441;
LABEL_6:
  v19 = v17 & 0xFFFFFFFFFFFFLL | 0x53000000000000;
  v145._countAndFlagsBits = v19;
  v145._object = 0xE700000000000000;
  sub_D66D0(v145);
  v146._countAndFlagsBits = 2777980912;
  v146._object = 0xA400000000000000;
  sub_D66D0(v146);
  v111._countAndFlagsBits = 0xE000000000000000;
  v147._countAndFlagsBits = v19;
  v147._object = 0xE700000000000000;
  v152.value._countAndFlagsBits = 0;
  v152.value._object = 0;
  v20.super.isa = v16;
  v21 = sub_D4E80(v147, v152, v20, v135, 0, v111);
  v23 = v22;

  v135._countAndFlagsBits = v21;
  v135._object = v23;
  sub_DFAC();
  v120 = sub_D5F50();
  v119 = v24;
  v26 = v25;
  v121 = v27;
  v28 = &object[*(v11 + 32)];
  v29 = *v28;
  v30 = *(v28 + 1);
  *&v130 = v29;
  *(&v130 + 1) = v30;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  countAndFlagsBits = v135._countAndFlagsBits;
  object = v135._object;
  v31 = v136;
  v117 = sub_D63F0();
  v116 = v32;
  v128 = v26 & 1;
  v144 = v26 & 1;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v33 = *(v135._countAndFlagsBits + 16);

  if (v33 < 2)
  {
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v46 = v135._countAndFlagsBits;
    v47 = *(v135._countAndFlagsBits + 16);
    if (v47)
    {
      *&v130 = _swiftEmptyArrayStorage;
      sub_11B90(0, v47, 0);
      v48 = v130;
      v49 = (v46 + 56);
      do
      {
        v50 = *(v49 - 2);
        v51 = *(v49 - 1);
        v52 = *v49;
        v135._countAndFlagsBits = *(v49 - 3);
        v135._object = v50;
        swift_bridgeObjectRetain_n();

        v150._countAndFlagsBits = 64;
        v150._object = 0xE100000000000000;
        sub_D66D0(v150);

        v151._countAndFlagsBits = v51;
        v151._object = v52;
        sub_D66D0(v151);

        v53 = v135._countAndFlagsBits;
        v54 = v135._object;
        *&v130 = v48;
        v56 = v48[2];
        v55 = v48[3];
        if (v56 >= v55 >> 1)
        {
          sub_11B90((v55 > 1), v56 + 1, 1);
          v48 = v130;
        }

        v48[2] = v56 + 1;
        v57 = &v48[2 * v56];
        v57[4] = v53;
        v57[5] = v54;
        v49 += 5;
        --v47;
      }

      while (v47);
    }

    else
    {

      v48 = _swiftEmptyArrayStorage;
    }

    v135._countAndFlagsBits = v48;
    sub_66D4(&qword_121498, &qword_D99D0);
    sub_109A8(&qword_1214A0, &qword_121498, &qword_D99D0, &protocol conformance descriptor for [A]);
    v74 = sub_D6590();
    v76 = v75;

    v135._countAndFlagsBits = v74;
    v135._object = v76;
    v77 = sub_D5F50();
    v79 = v78;
    v81 = v80;
    sub_D61B0();
    v82 = sub_D5F00();
    v84 = v83;
    v86 = v85;
    v113 = v87;

    sub_F16C(v77, v79, v81 & 1);

    KeyPath = swift_getKeyPath();
    v89 = swift_getKeyPath();
    v90 = v86 & 1;
    LOBYTE(v135._countAndFlagsBits) = v86 & 1;
    LOBYTE(v130) = 0;
    v91 = v114;
    v92 = &v114[*(v124 + 36)];
    v93 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
    v94 = enum case for Text.TruncationMode.tail(_:);
    v95 = sub_D5EF0();
    (*(*(v95 - 8) + 104))(v92 + v93, v94, v95);
    *v92 = swift_getKeyPath();
    *v91 = v82;
    *(v91 + 8) = v84;
    *(v91 + 16) = v90;
    *(v91 + 24) = v113;
    *(v91 + 32) = KeyPath;
    *(v91 + 40) = 1;
    *(v91 + 48) = 0;
    *(v91 + 56) = v89;
    *(v91 + 64) = 0x3FE999999999999ALL;
    v96 = v115;
    sub_FEA4(v91, v115, &qword_121480, &qword_D91E0);
    sub_FBD4(v96, v123, &qword_121480, &qword_D91E0);
    swift_storeEnumTagMultiPayload();
    sub_FF0C();
    v73 = v125;
    sub_D5BF0();
    sub_FC3C(v96, &qword_121480, &qword_D91E0);
  }

  else
  {
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v34 = v135._countAndFlagsBits;
    v35 = *(v135._countAndFlagsBits + 16);
    if (v35)
    {
      *&v130 = _swiftEmptyArrayStorage;
      sub_11B90(0, v35, 0);
      v36 = v130;
      v37 = (v34 + 56);
      do
      {
        v38 = *(v37 - 2);
        v39 = *(v37 - 1);
        v40 = *v37;
        v135._countAndFlagsBits = *(v37 - 3);
        v135._object = v38;
        swift_bridgeObjectRetain_n();

        v148._countAndFlagsBits = 64;
        v148._object = 0xE100000000000000;
        sub_D66D0(v148);

        v149._countAndFlagsBits = v39;
        v149._object = v40;
        sub_D66D0(v149);

        v41 = v135._countAndFlagsBits;
        v42 = v135._object;
        *&v130 = v36;
        v44 = v36[2];
        v43 = v36[3];
        if (v44 >= v43 >> 1)
        {
          sub_11B90((v43 > 1), v44 + 1, 1);
          v36 = v130;
        }

        v36[2] = v44 + 1;
        v45 = &v36[2 * v44];
        v45[4] = v41;
        v45[5] = v42;
        v37 += 5;
        --v35;
      }

      while (v35);
    }

    else
    {

      v36 = _swiftEmptyArrayStorage;
    }

    v135._countAndFlagsBits = v36;
    sub_66D4(&qword_121498, &qword_D99D0);
    sub_109A8(&qword_1214A0, &qword_121498, &qword_D99D0, &protocol conformance descriptor for [A]);
    v58 = sub_D6590();
    v60 = v59;

    v135._countAndFlagsBits = v58;
    v135._object = v60;
    v61 = sub_D5F50();
    v63 = v62;
    LOBYTE(v60) = v64;
    sub_D61B0();
    v65 = sub_D5F00();
    v67 = v66;
    v69 = v68;
    v71 = v70;

    sub_F16C(v61, v63, v60 & 1);

    v72 = v123;
    *v123 = v65;
    v72[1] = v67;
    *(v72 + 16) = v69 & 1;
    v72[3] = v71;
    swift_storeEnumTagMultiPayload();
    sub_FF0C();
    v73 = v125;
    sub_D5BF0();
  }

  v97 = v126;
  sub_FBD4(v73, v126, &qword_121490, &qword_D91F0);
  v98 = v120;
  *&v130 = v120;
  v99 = v119;
  *(&v130 + 1) = v119;
  LOBYTE(v131) = v128;
  *(&v131 + 1) = *v143;
  DWORD1(v131) = *&v143[3];
  v100 = v121;
  v101 = countAndFlagsBits;
  *(&v131 + 1) = v121;
  *&v132 = countAndFlagsBits;
  *(&v132 + 1) = object;
  *&v133 = v31;
  v102 = v117;
  v103 = v116;
  *(&v133 + 1) = v117;
  v134 = v116;
  v104 = v130;
  v105 = v131;
  v106 = v132;
  v107 = v133;
  v108 = v127;
  *(v127 + 64) = v116;
  v108[2] = v106;
  v108[3] = v107;
  *v108 = v104;
  v108[1] = v105;
  v109 = sub_66D4(&qword_121500, &qword_D92D8);
  sub_FBD4(v97, v108 + *(v109 + 48), &qword_121490, &qword_D91F0);
  sub_FBD4(&v130, &v135, &qword_121438, &qword_D9118);
  sub_FC3C(v73, &qword_121490, &qword_D91F0);
  sub_FC3C(v97, &qword_121490, &qword_D91F0);
  v135._countAndFlagsBits = v98;
  v135._object = v99;
  LOBYTE(v136) = v128;
  *(&v136 + 1) = *v143;
  HIDWORD(v136) = *&v143[3];
  v137 = v100;
  v138 = v101;
  v139 = object;
  v140 = v31;
  v141 = v102;
  v142 = v103;
  return sub_FC3C(&v135, &qword_121438, &qword_D9118);
}

uint64_t sub_956C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v60 = sub_66D4(&qword_121440, &qword_D9140);
  __chkstk_darwin(v60);
  v4 = &v53 - v3;
  v63 = sub_66D4(&qword_121448, &qword_D9148);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v53 - v5;
  v62 = sub_66D4(&qword_121450, &qword_D9150);
  v61 = *(v62 - 8);
  v6 = __chkstk_darwin(v62);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v53 - v8;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v77._countAndFlagsBits = 2777980912;
  v77._object = 0xA400000000000000;
  v85._countAndFlagsBits = 0x55465F5341494C41;
  v85._object = 0xEE00454D414E4C4CLL;
  sub_D66D0(v85);
  v86._countAndFlagsBits = 2777980912;
  v86._object = 0xA400000000000000;
  sub_D66D0(v86);
  v52._countAndFlagsBits = 0xE000000000000000;
  v87._countAndFlagsBits = 0x55465F5341494C41;
  v87._object = 0xEE00454D414E4C4CLL;
  v88.value._countAndFlagsBits = 0;
  v88.value._object = 0;
  v11.super.isa = v10;
  v12 = sub_D4E80(v87, v88, v11, v77, 0, v52);
  v14 = v13;

  v77._countAndFlagsBits = v12;
  v77._object = v14;
  sub_DFAC();
  v56 = sub_D5F50();
  v55 = v15;
  LOBYTE(v12) = v16;
  v57 = v17;
  v18 = (a1 + *(type metadata accessor for MSAddressDetailView(0) + 32));
  v19 = *v18;
  v20 = v18[1];
  *&v72 = v19;
  *(&v72 + 1) = v20;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  countAndFlagsBits = v77._countAndFlagsBits;
  object = v77._object;
  v21 = v78;
  v68 = sub_D63F0();
  v66 = v22;
  v67 = v12 & 1;
  LOBYTE(v77._countAndFlagsBits) = v12 & 1;
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  v23 = sub_D5740();
  v24 = *(v23 + 32);
  v25 = *(v23 + 40);

  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  *&v72 = v24;
  *(&v72 + 1) = v25;
  sub_D6410();
  KeyPath = swift_getKeyPath();
  v27 = sub_D65F0();
  v28 = v60;
  v29 = &v4[*(v60 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  v29[2] = v30;
  v31 = sub_FDA8();
  v32 = v58;
  sub_D6050();
  sub_FC3C(v4, &qword_121440, &qword_D9140);
  v77._countAndFlagsBits = v28;
  v77._object = v31;
  swift_getOpaqueTypeConformance2();
  v33 = v70;
  v34 = v63;
  sub_D6080();
  (*(v64 + 8))(v32, v34);
  v35 = v61;
  v36 = *(v61 + 16);
  v37 = v59;
  v38 = v62;
  v36(v59, v33, v62);
  v39 = v56;
  v40 = v55;
  *&v72 = v56;
  *(&v72 + 1) = v55;
  LOBYTE(v73) = v67;
  *(&v73 + 1) = *v71;
  DWORD1(v73) = *&v71[3];
  v41 = v57;
  v42 = countAndFlagsBits;
  *(&v73 + 1) = v57;
  *&v74 = countAndFlagsBits;
  *(&v74 + 1) = object;
  *&v75 = v21;
  *(&v75 + 1) = v68;
  v76 = v66;
  v43 = v72;
  v44 = v73;
  v45 = v74;
  v46 = v75;
  v47 = v65;
  *(v65 + 64) = v66;
  *(v47 + 2) = v45;
  *(v47 + 3) = v46;
  *v47 = v43;
  *(v47 + 1) = v44;
  v48 = v47;
  v49 = sub_66D4(&qword_121478, &qword_D91B8);
  v36(&v48[*(v49 + 48)], v37, v38);
  sub_FBD4(&v72, &v77, &qword_121438, &qword_D9118);
  v50 = *(v35 + 8);
  v50(v70, v38);
  v50(v37, v38);
  v77._countAndFlagsBits = v39;
  v77._object = v40;
  LOBYTE(v78) = v67;
  *(&v78 + 1) = *v71;
  HIDWORD(v78) = *&v71[3];
  v79 = v41;
  v80 = v42;
  v81 = object;
  v82 = v21;
  v83 = v68;
  v84 = v66;
  return sub_FC3C(&v77, &qword_121438, &qword_D9118);
}

uint64_t sub_9CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = sub_66D4(&qword_121420, &qword_DA840);
  v52 = *(v53 - 8);
  v4 = __chkstk_darwin(v53);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v58 = &v47 - v6;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass:ObjCClassFromMetadata];
  v65._countAndFlagsBits = 2777980912;
  v65._object = 0xA400000000000000;
  v73._countAndFlagsBits = 0x4C4542414CLL;
  v73._object = 0xE500000000000000;
  sub_D66D0(v73);
  v74._countAndFlagsBits = 2777980912;
  v74._object = 0xA400000000000000;
  sub_D66D0(v74);
  v45._countAndFlagsBits = 0xE000000000000000;
  v75._countAndFlagsBits = 0x4C4542414CLL;
  v75._object = 0xE500000000000000;
  v79.value._countAndFlagsBits = 0;
  v79.value._object = 0;
  v10.super.isa = v9;
  v11 = sub_D4E80(v75, v79, v10, v65, 0, v45);
  v13 = v12;

  v65._countAndFlagsBits = v11;
  v65._object = v13;
  sub_DFAC();
  v49 = sub_D5F50();
  v15 = v14;
  v17 = v16;
  v50 = v18;
  v19 = (a1 + *(type metadata accessor for MSAddressDetailView(0) + 32));
  v20 = *v19;
  v21 = v19[1];
  *&v60 = v20;
  *(&v60 + 1) = v21;
  sub_66D4(&qword_121428, &qword_D90E0);
  sub_D6230();
  countAndFlagsBits = v65._countAndFlagsBits;
  object = v65._object;
  v22 = v66;
  v56 = sub_D63F0();
  v54 = v23;
  v55 = v17 & 1;
  LOBYTE(v65._countAndFlagsBits) = v17 & 1;
  v24 = [v8 bundleForClass:ObjCClassFromMetadata];
  v65._countAndFlagsBits = 2777980912;
  v65._object = 0xA400000000000000;
  v76._countAndFlagsBits = 0x4C414E4F4954504FLL;
  v76._object = 0xE800000000000000;
  sub_D66D0(v76);
  v77._countAndFlagsBits = 2777980912;
  v77._object = 0xA400000000000000;
  sub_D66D0(v77);
  v46._countAndFlagsBits = 0xE000000000000000;
  v78._countAndFlagsBits = 0x4C414E4F4954504FLL;
  v78._object = 0xE800000000000000;
  v80.value._countAndFlagsBits = 0;
  v80.value._object = 0;
  v25.super.isa = v24;
  v26 = sub_D4E80(v78, v80, v25, v65, 0, v46);
  v28 = v27;

  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  *&v60 = v26;
  *(&v60 + 1) = v28;
  v29 = v58;
  sub_D6410();
  v30 = v52;
  v31 = *(v52 + 16);
  v32 = v51;
  v33 = v29;
  v34 = v53;
  v31(v51, v33, v53);
  v35 = v49;
  *&v60 = v49;
  *(&v60 + 1) = v15;
  LOBYTE(v61) = v55;
  *(&v61 + 1) = *v59;
  DWORD1(v61) = *&v59[3];
  v36 = v50;
  v37 = countAndFlagsBits;
  *(&v61 + 1) = v50;
  *&v62 = countAndFlagsBits;
  *(&v62 + 1) = object;
  *&v63 = v22;
  *(&v63 + 1) = v56;
  v64 = v54;
  v38 = v60;
  v39 = v61;
  v40 = v62;
  v41 = v63;
  *(a2 + 64) = v54;
  *(a2 + 32) = v40;
  *(a2 + 48) = v41;
  *a2 = v38;
  *(a2 + 16) = v39;
  v42 = sub_66D4(&qword_121430, &qword_D9110);
  v31((a2 + *(v42 + 48)), v32, v34);
  sub_FBD4(&v60, &v65, &qword_121438, &qword_D9118);
  v43 = *(v30 + 8);
  v43(v58, v34);
  v43(v32, v34);
  v65._countAndFlagsBits = v35;
  v65._object = v15;
  LOBYTE(v66) = v55;
  *(&v66 + 1) = *v59;
  HIDWORD(v66) = *&v59[3];
  v67 = v36;
  v68 = v37;
  v69 = object;
  v70 = v22;
  v71 = v56;
  v72 = v54;
  return sub_FC3C(&v65, &qword_121438, &qword_D9118);
}

uint64_t sub_A2A8@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a4 = v6;
  a4[1] = v7;
  return result;
}

uint64_t sub_A338(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_A3B8(uint64_t a1)
{
  v2 = type metadata accessor for MSAddressDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v8 = v10;
  v9 = v11;
  sub_E05C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_E0CC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_66D4(&qword_1213A0, &qword_D9080);
  sub_FA10();
  sub_F354();
  sub_FAFC();
  return sub_D6340();
}

double sub_A5D4@<D0>(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_66D4(&qword_1213D0, &unk_D9090);
  sub_D6310();
  type metadata accessor for MSAddressDetailView(0);
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a3 = v6;
  *(a3 + 16) = v7;
  result = *&v8;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  *(a3 + 50) = v5;
  return result;
}

uint64_t sub_A72C@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MSAddressDetailView(0);
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  v3 = sub_D5740();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_F298(v4, v5);

  if (v5 >= 2)
  {
    sub_66D4(&qword_121390, &qword_D9050);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_D8CB0;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_F7DC();
    *(v9 + 32) = v4;
    *(v9 + 40) = v5;
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = objc_opt_self();
    sub_F298(v4, v5);
    v12 = [v11 bundleForClass:ObjCClassFromMetadata];
    v22._object = 0x80000000000E7060;
    v22._countAndFlagsBits = 0xD000000000000015;
    sub_D66D0(v22);
    v23._countAndFlagsBits = 2777980912;
    v23._object = 0xA400000000000000;
    sub_D66D0(v23);
    v28._countAndFlagsBits = 2777980912;
    v18._countAndFlagsBits = 0xE000000000000000;
    v24._object = 0x80000000000E7060;
    v24._countAndFlagsBits = 0xD000000000000015;
    v26.value._countAndFlagsBits = 0;
    v26.value._object = 0;
    v13.super.isa = v12;
    v28._object = 0xA400000000000000;
    sub_D4E80(v24, v26, v13, v28, 0, v18);

    sub_D6610();
    sub_F2AC(v4, v5);
  }

  else
  {
    type metadata accessor for MAPreferencesViewProvider();
    v6 = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass:v6];
    v19._countAndFlagsBits = 0xD000000000000018;
    v19._object = 0x80000000000E7040;
    sub_D66D0(v19);
    v20._countAndFlagsBits = 2777980912;
    v20._object = 0xA400000000000000;
    sub_D66D0(v20);
    v27._countAndFlagsBits = 2777980912;
    v18._countAndFlagsBits = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD000000000000018;
    v21._object = 0x80000000000E7040;
    v25.value._countAndFlagsBits = 0;
    v25.value._object = 0;
    v8.super.isa = v7;
    v27._object = 0xA400000000000000;
    sub_D4E80(v21, v25, v8, v27, 0, v18);

    sub_F2AC(v4, v5);
  }

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = 256;
  return result;
}

uint64_t sub_AA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for MSAddressDetailView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v27 = sub_66D4(&qword_121318, &qword_D8F78);
  __chkstk_darwin(v27);
  v8 = &v24 - v7;
  sub_E05C(a1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_E0CC(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v24 = a1;
  v29 = a1;
  sub_66D4(&qword_121348, &qword_D8FD8);
  sub_F50C();
  v25 = v8;
  sub_D6260();
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v11 = v30;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = &v8[*(v27 + 36)];
  *v14 = KeyPath;
  v14[1] = sub_10ACC;
  v14[2] = v13;
  v15 = sub_D5740();
  v16 = *(v15 + 48);
  v17 = *(v15 + 56);

  v33 = v16;
  v34 = v17;
  v18 = v24;
  v19 = v24 + *(v4 + 32);
  v20 = *v19;
  v21 = *(v19 + 8);
  v31 = v20;
  v32 = v21;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6230();
  v28 = v18;
  sub_66D4(&qword_121178, &qword_DB0C0);
  sub_F3B0();
  sub_DFAC();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
  v22 = v25;
  sub_D6060();

  return sub_FC3C(v22, &qword_121318, &qword_D8F78);
}

uint64_t sub_AE90(uint64_t a1)
{
  type metadata accessor for MSAddressDetailView(0);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_AF04@<X0>(uint64_t a2@<X8>)
{
  v41 = a2;
  v39 = sub_66D4(&qword_121388, &qword_D9048);
  __chkstk_darwin(v39);
  v3 = (&v39 - v2);
  v4 = sub_66D4(&qword_121238, &unk_D8E20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v40 = sub_66D4(&qword_121360, &unk_D8FE0);
  v8 = __chkstk_darwin(v40);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  type metadata accessor for MSAddressDetailView(0);
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (LOBYTE(v43._countAndFlagsBits) == 1)
  {
    sub_D5780();
    sub_D63E0();
    sub_D5930();
    (*(v5 + 32))(v10, v7, v4);
    v13 = &v10[*(v40 + 36)];
    v14 = v48;
    *(v13 + 4) = v47;
    *(v13 + 5) = v14;
    *(v13 + 6) = v49;
    v15 = v44;
    *v13 = v43;
    *(v13 + 1) = v15;
    v16 = v46;
    *(v13 + 2) = v45;
    *(v13 + 3) = v16;
    sub_FEA4(v10, v12, &qword_121360, &unk_D8FE0);
    sub_FBD4(v12, v3, &qword_121360, &unk_D8FE0);
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_121370, &qword_DB270);
    sub_F5B8();
    sub_F670(&qword_121368, &qword_121370, &qword_DB270);
    sub_D5BF0();
    return sub_FC3C(v12, &qword_121360, &unk_D8FE0);
  }

  else
  {
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass:{ObjCClassFromMetadata, v39}];
    v43._countAndFlagsBits = 2777980912;
    v43._object = 0xA400000000000000;
    v50._countAndFlagsBits = 0x415F4554454C4544;
    v50._object = 0xEC0000005341494CLL;
    sub_D66D0(v50);
    v51._countAndFlagsBits = 2777980912;
    v51._object = 0xA400000000000000;
    sub_D66D0(v51);
    v38._countAndFlagsBits = 0xE000000000000000;
    v52._countAndFlagsBits = 0x415F4554454C4544;
    v52._object = 0xEC0000005341494CLL;
    v53.value._countAndFlagsBits = 0;
    v53.value._object = 0;
    v20.super.isa = v19;
    v21 = sub_D4E80(v52, v53, v20, v43, 0, v38);
    v23 = v22;

    v43._countAndFlagsBits = v21;
    v43._object = v23;
    sub_DFAC();
    v24 = sub_D5F50();
    v26 = v25;
    LOBYTE(v21) = v27;
    sub_D6170();
    v28 = sub_D5F00();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    sub_F16C(v24, v26, v21 & 1);

    sub_D63E0();
    sub_D5930();
    v42 = v32 & 1;
    v3->_countAndFlagsBits = v28;
    v3->_object = v30;
    LOBYTE(v3[1]._countAndFlagsBits) = v32 & 1;
    v3[1]._object = v34;
    v35 = v48;
    v3[6] = v47;
    v3[7] = v35;
    v3[8] = v49;
    v36 = v44;
    v3[2] = v43;
    v3[3] = v36;
    v37 = v46;
    v3[4] = v45;
    v3[5] = v37;
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_121370, &qword_DB270);
    sub_F5B8();
    sub_F670(&qword_121368, &qword_121370, &qword_DB270);
    return sub_D5BF0();
  }
}

uint64_t sub_B504(uint64_t a1)
{
  v2 = type metadata accessor for MSAddressDetailView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_66D4(&qword_121380, &qword_D9040);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_D5640();
  v8 = sub_D5660();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_E05C(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_E0CC(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return sub_D6250();
}

uint64_t sub_B6C8(uint64_t a1)
{
  v2 = type metadata accessor for MSAddressDetailView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = (a1 + *(v3 + 32));
  v7 = *v6;
  v8 = *(v6 + 1);
  v13[16] = v7;
  v14 = v8;
  v13[15] = 0;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6220();
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  v9 = sub_D5740();
  sub_E05C(a1, &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_E0CC(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  (*(*v9 + 656))(sub_F750, v11);
}

uint64_t sub_B8C4(uint64_t a1)
{
  v2 = sub_D57E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MSAddressDetailView(0);
  (*(a1 + *(v6 + 28)))(1);
  sub_EC34(v5);
  sub_D57D0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_B9CC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._object = 0x80000000000E7010;
  v10._countAndFlagsBits = 0xD000000000000021;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x80000000000E7010;
  v12._countAndFlagsBits = 0xD000000000000021;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, 0, v9);

  sub_DFAC();
  result = sub_D5F50();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_BAF0(uint64_t a1)
{
  v2 = type metadata accessor for MSAddressDetailView(0);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v5, qword_137988);
  (*(v6 + 16))(v8, v9, v5);
  sub_E05C(a1, v4);
  v10 = sub_D5320();
  v11 = sub_D68A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v12;
    v24 = v22;
    *v12 = 136315138;
    _s9ViewModelCMa_0(0);
    sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
    v13 = sub_D5740();
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    sub_F298(v15, v14);

    if (v14 == 1)
    {
      v16 = 0xE500000000000000;
      v17 = 0x7361696C41;
    }

    else if (v14)
    {
      v16 = 0x80000000000E6FF0;
      sub_F2AC(v15, v14);
      v17 = 0xD000000000000013;
    }

    else
    {
      v16 = 0xEF73736572646441;
      v17 = 0x207972616D697250;
    }

    v19 = v23;
    sub_F23C(v4);
    v20 = sub_558F0(v17, v16, &v24);

    *(v19 + 1) = v20;
    _os_log_impl(&dword_0, v10, v11, "[%s] page viewed", v19, 0xCu);
    sub_67D4(v22);

    return (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return sub_F23C(v4);
  }
}

uint64_t sub_BE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = sub_66D4(&qword_1211F0, &qword_D8DF8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = sub_66D4(&qword_1211F8, &qword_D8E00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = sub_D5C80();
  __chkstk_darwin(v9 - 8);
  v10 = sub_66D4(&qword_121200, &qword_D8E08);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - v12;
  sub_D5C40();
  v16[8] = a1;
  sub_66D4(&qword_121208, &unk_D8E10);
  sub_E7EC();
  sub_D5770();
  sub_D5C50();
  v16[4] = a1;
  sub_66D4(&qword_121220, &unk_E0EB0);
  sub_E8DC();
  sub_D5770();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_D5BC0();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_C178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_66D4(&qword_121178, &qword_DB0C0);
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v22 = &v21 - v3;
  v24 = sub_66D4(&qword_121298, &qword_E5E90);
  __chkstk_darwin(v24);
  v5 = &v21 - v4;
  v6 = type metadata accessor for MSAddressDetailView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = sub_D51A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(v7 + 44));
  sub_E05C(a1, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_E0CC(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  if (v14 == 1)
  {
    sub_D5190();
    (*(v11 + 16))(v5, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_EB08(&qword_121218, &type metadata accessor for CloseButton, &protocol conformance descriptor for CloseButton);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
    sub_D5BF0();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = v22;
    sub_D6260();
    v19 = v23;
    v20 = v26;
    (*(v23 + 16))(v5, v18, v26);
    swift_storeEnumTagMultiPayload();
    sub_EB08(&qword_121218, &type metadata accessor for CloseButton, &protocol conformance descriptor for CloseButton);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
    sub_D5BF0();
    return (*(v19 + 8))(v18, v20);
  }
}

uint64_t sub_C604(uint64_t a1)
{
  v15 = sub_D5B10();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_D57E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD4(a1, v7, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_D68C0();
    v12 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_D57D0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_C890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12._countAndFlagsBits = a1;
  v12._object = 0xE600000000000000;
  sub_D66D0(v12);
  v13._countAndFlagsBits = 2777980912;
  v13._object = 0xA400000000000000;
  sub_D66D0(v13);
  v16._countAndFlagsBits = 2777980912;
  v11._countAndFlagsBits = 0xE000000000000000;
  v14._countAndFlagsBits = a1;
  v14._object = 0xE600000000000000;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v6.super.isa = v5;
  v16._object = 0xA400000000000000;
  sub_D4E80(v14, v15, v6, v16, 0, v11);

  sub_DFAC();
  result = sub_D5F50();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_C9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = sub_66D4(&qword_121280, &unk_D8E40);
  __chkstk_darwin(v56);
  v42 = &v39 - v3;
  v53 = sub_66D4(&qword_121288, &unk_E0ED0);
  __chkstk_darwin(v53);
  v54 = &v39 - v4;
  v5 = type metadata accessor for MSAddressDetailView(0);
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = v6;
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_66D4(&qword_121258, &unk_D8E30);
  __chkstk_darwin(v52);
  v41 = &v39 - v7;
  v57 = sub_66D4(&qword_121248, &unk_E0EC0);
  __chkstk_darwin(v57);
  v55 = &v39 - v8;
  v9 = sub_66D4(&qword_121290, &qword_D8E50);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v12 = sub_66D4(&qword_121238, &unk_D8E20);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = *(v5 + 20);
  v51 = a1;
  v17 = (a1 + v16);
  v19 = *v17;
  v18 = v17[1];
  LODWORD(a1) = *(v17 + 16);
  v20 = _s9ViewModelCMa_0(0);
  v21 = sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  v46 = v19;
  v47 = v18;
  v48 = a1;
  v45 = v20;
  v43 = v21;
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v61 == 1)
  {
    sub_D5780();
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    sub_E994();
    sub_D5BF0();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v39 = v9;
    v40 = v11;
    v23 = v50;
    v24 = *(v51 + *(v5 + 36));
    sub_E05C(v51, v50);
    v25 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v26 = swift_allocObject();
    sub_E0CC(v23, v26 + v25);
    if (v24 == 1)
    {
      v27 = v41;
      sub_D5150();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v28 = v59;
      KeyPath = swift_getKeyPath();
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      v31 = (v27 + *(v52 + 36));
      *v31 = KeyPath;
      v31[1] = sub_10ACC;
      v31[2] = v30;
      v32 = &qword_121258;
      v33 = &unk_D8E30;
      sub_FBD4(v27, v54, &qword_121258, &unk_D8E30);
    }

    else
    {
      v27 = v42;
      sub_D6260();
      sub_D5740();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_D5570();

      v35 = v60;
      v36 = swift_getKeyPath();
      v37 = swift_allocObject();
      *(v37 + 16) = v35;
      v38 = (v27 + *(v56 + 36));
      *v38 = v36;
      v38[1] = sub_F0D0;
      v38[2] = v37;
      v32 = &qword_121280;
      v33 = &unk_D8E40;
      sub_FBD4(v27, v54, &qword_121280, &unk_D8E40);
    }

    swift_storeEnumTagMultiPayload();
    sub_EA20();
    sub_EB50();
    v34 = v55;
    sub_D5BF0();
    sub_FC3C(v27, v32, v33);
    sub_FBD4(v34, v40, &qword_121248, &unk_E0EC0);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    sub_E994();
    sub_D5BF0();
    return sub_FC3C(v34, &qword_121248, &unk_E0EC0);
  }
}

uint64_t sub_D1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MSAddressDetailView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  _s9ViewModelCMa_0(0);
  sub_EB08(&qword_121110, _s9ViewModelCMa_0, &unk_D9660);
  v8 = sub_D5740();
  sub_E05C(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_E0CC(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  (*(*v8 + 648))(a3, v10);
}

uint64_t sub_D3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_D57E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MSAddressDetailView(0);
  (*(a2 + *(v8 + 28)))(a1);
  sub_EC34(v7);
  sub_D57D0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_D4A4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19._countAndFlagsBits = 1162760004;
  v19._object = 0xE400000000000000;
  sub_D66D0(v19);
  v20._countAndFlagsBits = 2777980912;
  v20._object = 0xA400000000000000;
  sub_D66D0(v20);
  v23._countAndFlagsBits = 2777980912;
  v18._countAndFlagsBits = 0xE000000000000000;
  v21._countAndFlagsBits = 1162760004;
  v21._object = 0xE400000000000000;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v4.super.isa = v3;
  v23._object = 0xA400000000000000;
  sub_D4E80(v21, v22, v4, v23, 0, v18);

  sub_DFAC();
  v5 = sub_D5F50();
  v7 = v6;
  v9 = v8;
  sub_D5E30();
  v10 = sub_D5E80();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_F16C(v5, v7, v9 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

double sub_D624@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_D6B4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_D74C@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = sub_66D4(&qword_121518, &qword_D9410);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = v1[1];
  v24 = *v1;
  v25 = v6;
  v8 = *v1;
  v7 = v1[1];
  v26 = v1[2];
  v27 = *(v1 + 24);
  v20 = v8;
  v9 = v1[2];
  v21 = v7;
  v22 = v9;
  v23 = *(v1 + 24);
  sub_66D4(&qword_1213D0, &unk_D9090);
  sub_D6310();
  swift_getKeyPath();
  v20 = v28[0];
  v21 = v28[1];
  v22 = v28[2];
  v23 = v29;
  sub_D6300();

  sub_FC3C(v28, &qword_1213D0, &unk_D9090);
  v18 = v1;
  sub_66D4(&qword_121520, &qword_D9438);
  sub_10334();
  sub_D62C0();
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  sub_D62E0();

  if (v19)
  {
    v10 = 1;
  }

  else
  {
    v10 = *(v1 + 50) ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v10 & 1;
  v13 = v17;
  (*(v3 + 32))(v17, v5, v2);
  result = sub_66D4(&qword_121550, &qword_D9450);
  v15 = (v13 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_10ACC;
  v15[2] = v12;
  return result;
}

uint64_t sub_DA28@<X0>(uint64_t a2@<X8>)
{
  sub_66D4(&qword_1213D0, &unk_D9090);
  sub_D62E0();

  v20._countAndFlagsBits = 64;
  v20._object = 0xE100000000000000;
  sub_D66D0(v20);

  sub_D66D0(v19);

  sub_DFAC();
  v3 = sub_D5F50();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = (a2 + *(sub_66D4(&qword_121548, &unk_E37D0) + 36));
  v11 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v12 = enum case for Text.TruncationMode.middle(_:);
  v13 = sub_D5EF0();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  KeyPath = swift_getKeyPath();
  v15 = a2 + *(sub_66D4(&qword_121538, &unk_D9440) + 36);
  *v15 = KeyPath;
  *(v15 + 8) = 1;
  *(v15 + 16) = 0;
  v16 = swift_getKeyPath();
  result = sub_66D4(&qword_121520, &qword_D9438);
  v18 = (a2 + *(result + 36));
  *v18 = v16;
  v18[1] = 0x3FE999999999999ALL;
  return result;
}

uint64_t sub_DCA4()
{
  sub_66D4(&qword_121168, &qword_D8D58);
  sub_6110(&qword_121170, &unk_D8D60);
  sub_6110(&qword_121178, &qword_DB0C0);
  sub_6110(&qword_121180, &unk_D8D70);
  sub_6110(&qword_121188, &unk_E3860);
  sub_6110(&qword_121190, &unk_D8D80);
  sub_6110(&qword_121198, &unk_E3870);
  sub_DEF4();
  sub_DFAC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_109A8(&qword_1211C0, &qword_121188, &unk_E3860, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeConformance2();
  sub_E000();
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  return sub_D5850();
}

unint64_t sub_DEF4()
{
  result = qword_1211A0;
  if (!qword_1211A0)
  {
    sub_6110(&qword_121198, &unk_E3870);
    sub_109A8(&qword_1211A8, &qword_1211B0, &qword_D8D90, &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1211A0);
  }

  return result;
}

unint64_t sub_DFAC()
{
  result = qword_1211B8;
  if (!qword_1211B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1211B8);
  }

  return result;
}

unint64_t sub_E000()
{
  result = qword_1211C8;
  if (!qword_1211C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1211C8);
  }

  return result;
}

uint64_t sub_E05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSAddressDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E0CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MSAddressDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E1AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_66D4(&qword_121558, &qword_D9458);
  __chkstk_darwin(v4);
  v6 = v21 - v5;
  v8 = v2[1];
  v9 = v2[2];
  v22 = *v2;
  v7 = v22;
  v10 = swift_allocObject();
  v11 = *(v2 + 1);
  *(v10 + 16) = *v2;
  *(v10 + 32) = v11;
  *(v10 + 48) = v2[4];
  sub_10578(&v22, v21);

  v12 = sub_D63E0();
  v14 = v13;
  v15 = sub_66D4(&qword_121560, &qword_D9460);
  (*(*(v15 - 8) + 16))(v6, a1, v15);
  v16 = &v6[*(v4 + 36)];
  *v16 = sub_10570;
  v16[1] = v10;
  v16[2] = v12;
  v16[3] = v14;
  v21[0] = v7;
  v21[1] = v8;
  v21[2] = v9;
  sub_66D4(&qword_121568, &qword_D9468);
  sub_D62E0();
  v17 = swift_allocObject();
  v18 = *(v2 + 1);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = v2[4];
  sub_10578(&v22, v21);

  sub_66D4(&qword_121570, &qword_D9470);
  sub_1061C();
  sub_10700();
  sub_D5F80();

  return sub_FC3C(v6, &qword_121558, &qword_D9458);
}

uint64_t sub_E400@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_D5800();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_D6190();
  sub_D63E0();
  sub_D5930();
  (*(v7 + 16))(v9, a1, v6);
  v28 = *a2;
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v9, v6);
  v14 = v13 + v12;
  v15 = *(a2 + 1);
  *v14 = *a2;
  *(v14 + 16) = v15;
  v16 = v23;
  *(a3 + 56) = v24;
  v17 = v26;
  *(a3 + 72) = v25;
  *(a3 + 88) = v17;
  *(a3 + 104) = v27;
  v18 = v22;
  *(a3 + 8) = v21;
  *(a3 + 24) = v18;
  *(v14 + 32) = a2[4];
  *a3 = v10;
  *(a3 + 40) = v16;
  *(a3 + 120) = sub_10834;
  *(a3 + 128) = v13;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  sub_10578(&v28, v20);
}

uint64_t sub_E60C(uint64_t a1, uint64_t *a2)
{
  sub_D57F0();
  v4 = v3;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v14 = v6;
  v11 = v6;
  v12 = v5;
  v13 = v7;
  sub_10578(&v14, &v10);

  sub_66D4(&qword_121568, &qword_D9468);
  sub_D62E0();
  if (v10 < v4)
  {
    sub_D57F0();
    v11 = v6;
    v12 = v5;
    v13 = v7;
    v10 = v8;
    sub_D62F0();
  }

  sub_E158(&v14);
}

double sub_E6E8@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  *&v8 = *(a2 + 2);
  sub_66D4(&qword_121568, &qword_D9468);
  sub_D62E0();
  sub_D63F0();
  sub_D57C0();
  sub_FBD4(a1, a3, &qword_121558, &qword_D9458);
  v5 = (a3 + *(sub_66D4(&qword_121570, &qword_D9470) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

unint64_t sub_E7EC()
{
  result = qword_121210;
  if (!qword_121210)
  {
    sub_6110(&qword_121208, &unk_D8E10);
    sub_EB08(&qword_121218, &type metadata accessor for CloseButton, &protocol conformance descriptor for CloseButton);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121210);
  }

  return result;
}

unint64_t sub_E8DC()
{
  result = qword_121228;
  if (!qword_121228)
  {
    sub_6110(&qword_121220, &unk_E0EB0);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    sub_E994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121228);
  }

  return result;
}

unint64_t sub_E994()
{
  result = qword_121240;
  if (!qword_121240)
  {
    sub_6110(&qword_121248, &unk_E0EC0);
    sub_EA20();
    sub_EB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121240);
  }

  return result;
}

unint64_t sub_EA20()
{
  result = qword_121250;
  if (!qword_121250)
  {
    sub_6110(&qword_121258, &unk_D8E30);
    sub_EB08(&qword_121260, &type metadata accessor for DoneButton, &protocol conformance descriptor for DoneButton);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121250);
  }

  return result;
}

uint64_t sub_EB08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_EB50()
{
  result = qword_121278;
  if (!qword_121278)
  {
    sub_6110(&qword_121280, &unk_D8E40);
    sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0, &protocol conformance descriptor for Button<A>);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121278);
  }

  return result;
}

uint64_t sub_EC34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D5B10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_FBD4(v2, &v14 - v9, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_D57E0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_D68C0();
    v13 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_EF58@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a4 = v6;
  return result;
}

uint64_t sub_EFE8(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_F05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D5A00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_F16C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_F23C(uint64_t a1)
{
  v2 = type metadata accessor for MSAddressDetailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F298(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_F2AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_F2D0()
{
  result = qword_1212F0;
  if (!qword_1212F0)
  {
    sub_6110(&qword_1212E0, &qword_D8F58);
    sub_F354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1212F0);
  }

  return result;
}

unint64_t sub_F354()
{
  result = qword_1212F8;
  if (!qword_1212F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1212F8);
  }

  return result;
}

unint64_t sub_F3B0()
{
  result = qword_121320;
  if (!qword_121320)
  {
    sub_6110(&qword_121318, &qword_D8F78);
    sub_109A8(&qword_121328, &qword_121330, &unk_D8F80, &protocol conformance descriptor for Button<A>);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121320);
  }

  return result;
}

unint64_t sub_F50C()
{
  result = qword_121350;
  if (!qword_121350)
  {
    sub_6110(&qword_121348, &qword_D8FD8);
    sub_F5B8();
    sub_F670(&qword_121368, &qword_121370, &qword_DB270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121350);
  }

  return result;
}

unint64_t sub_F5B8()
{
  result = qword_121358;
  if (!qword_121358)
  {
    sub_6110(&qword_121360, &unk_D8FE0);
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121358);
  }

  return result;
}

uint64_t sub_F670(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_F768(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MSAddressDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_F7DC()
{
  result = qword_121398;
  if (!qword_121398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121398);
  }

  return result;
}

uint64_t sub_F838()
{
  v1 = type metadata accessor for MSAddressDetailView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_D57E0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_E0C4(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_F990@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MSAddressDetailView(0);

  return sub_A5D4(a1, a2);
}

unint64_t sub_FA10()
{
  result = qword_1213A8;
  if (!qword_1213A8)
  {
    sub_6110(&qword_1213A0, &qword_D9080);
    sub_109A8(&qword_1213B0, &qword_1213B8, &qword_D9088, &protocol conformance descriptor for [A]);
    sub_109A8(&qword_1213C0, &qword_1213B8, &qword_D9088, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1213A8);
  }

  return result;
}

unint64_t sub_FAFC()
{
  result = qword_1213C8;
  if (!qword_1213C8)
  {
    sub_6110(&qword_1213D0, &unk_D9090);
    sub_FB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1213C8);
  }

  return result;
}

unint64_t sub_FB80()
{
  result = qword_1213D8;
  if (!qword_1213D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1213D8);
  }

  return result;
}

uint64_t sub_FBD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_66D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_FC3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_66D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_FD3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D5A00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_FDA8()
{
  result = qword_121458;
  if (!qword_121458)
  {
    sub_6110(&qword_121440, &qword_D9140);
    sub_109A8(&qword_121460, &qword_121420, &qword_DA840, &protocol conformance descriptor for TextField<A>);
    sub_109A8(&qword_121468, &qword_121470, &qword_D91B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121458);
  }

  return result;
}

uint64_t sub_FEA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_66D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_FF0C()
{
  result = qword_1214B0;
  if (!qword_1214B0)
  {
    sub_6110(&qword_121480, &qword_D91E0);
    sub_FFC4();
    sub_109A8(&qword_1214F8, &qword_1214A8, &qword_D9280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1214B0);
  }

  return result;
}

unint64_t sub_FFC4()
{
  result = qword_1214B8;
  if (!qword_1214B8)
  {
    sub_6110(&qword_1214C0, &qword_D92B8);
    sub_1007C();
    sub_109A8(&qword_1214E8, &qword_1214F0, &qword_D92D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1214B8);
  }

  return result;
}

unint64_t sub_1007C()
{
  result = qword_1214C8;
  if (!qword_1214C8)
  {
    sub_6110(&qword_1214D0, &qword_D92C0);
    sub_109A8(&qword_1214D8, &qword_1214E0, &qword_D92C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1214C8);
  }

  return result;
}

__n128 sub_10134(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_101FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10210(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10258(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10334()
{
  result = qword_121528;
  if (!qword_121528)
  {
    sub_6110(&qword_121520, &qword_D9438);
    sub_103EC();
    sub_109A8(&qword_1214E8, &qword_1214F0, &qword_D92D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121528);
  }

  return result;
}

unint64_t sub_103EC()
{
  result = qword_121530;
  if (!qword_121530)
  {
    sub_6110(&qword_121538, &unk_D9440);
    sub_104A4();
    sub_109A8(&qword_1214D8, &qword_1214E0, &qword_D92C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121530);
  }

  return result;
}

unint64_t sub_104A4()
{
  result = qword_121540;
  if (!qword_121540)
  {
    sub_6110(&qword_121548, &unk_E37D0);
    sub_109A8(&qword_1214F8, &qword_1214A8, &qword_D9280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121540);
  }

  return result;
}

uint64_t sub_105D4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1061C()
{
  result = qword_121578;
  if (!qword_121578)
  {
    sub_6110(&qword_121558, &qword_D9458);
    sub_109A8(&qword_121580, &qword_121560, &qword_D9460, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_109A8(&qword_121588, &qword_121590, &unk_D9478, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121578);
  }

  return result;
}

unint64_t sub_10700()
{
  result = qword_121598;
  if (!qword_121598)
  {
    sub_6110(&qword_121570, &qword_D9470);
    sub_1061C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121598);
  }

  return result;
}

uint64_t sub_1078C()
{
  v1 = sub_D5800();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_10834()
{
  v1 = *(sub_D5800() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_E60C(v0 + v2, v3);
}

unint64_t sub_108C4()
{
  result = qword_1215A0;
  if (!qword_1215A0)
  {
    sub_6110(&qword_121550, &qword_D9450);
    sub_109A8(&qword_1215A8, &qword_121518, &qword_D9410, &protocol conformance descriptor for Toggle<A>);
    sub_109A8(&qword_121268, &qword_121270, &unk_E2C70, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1215A0);
  }

  return result;
}

uint64_t sub_109A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_6110(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_109F0()
{
  sub_6110(&qword_121558, &qword_D9458);
  sub_6110(&qword_121570, &qword_D9470);
  sub_1061C();
  sub_10700();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10AD0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v4;
  return result;
}

uint64_t sub_10B50(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

Swift::Int sub_10BCC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 33);
  sub_D6CB0();
  sub_D6680();
  sub_D6680();
  sub_D6CD0(v1);
  sub_D6CD0(v2);
  return sub_D6CE0();
}

void sub_10C64(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  sub_D6680();
  sub_D6680();
  sub_D6CD0(v2);
  sub_D6CD0(v3);
}

Swift::Int sub_10CCC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  sub_D6CB0();
  sub_D6680();
  sub_D6680();
  sub_D6CD0(v2);
  sub_D6CD0(v3);
  return sub_D6CE0();
}

uint64_t sub_10D60@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  v8._countAndFlagsBits = 64;
  v8._object = 0xE100000000000000;
  sub_D66D0(v8);

  v9._countAndFlagsBits = v3;
  v9._object = v4;
  sub_D66D0(v9);

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_10DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_D6C20() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v5 ^ v9 ^ 1u;
  }

  v11 = sub_D6C20();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 ^ v9 ^ 1u;
  }

  return result;
}

uint64_t sub_10ECC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

uint64_t sub_10F68(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v3;
}

uint64_t sub_10FE8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_D6C20();
  }

  return 1;
}

uint64_t sub_11070(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v3;
}

double sub_110DC@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

char *sub_11220()
{
  sub_F2AC(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__enabled;
  v2 = sub_66D4(&qword_121068, &qword_DBEE0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__addresses;
  v5 = sub_66D4(&qword_121940, &qword_D9720);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__fullName;
  v7 = sub_66D4(&qword_121948, &unk_DC5C0);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__label, v7);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDoneDisabled, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleteDisabled, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isUpdating, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__isDeleting, v2);
  v9 = OBJC_IVAR____TtCV18icloudMailSettings19MSAddressDetailView9ViewModel__error;
  v10 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return v0;
}

uint64_t sub_11444()
{
  sub_11220();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s9ViewModelCMa_0(uint64_t a1)
{
  result = qword_121620;
  if (!qword_121620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_114F0(uint64_t a1)
{
  sub_116AC(319, &qword_120ED8, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_6158(319, &qword_121630, &qword_1213B8, &qword_D9088);
    if (v2 <= 0x3F)
    {
      sub_116AC(319, &qword_121638, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_116AC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_D5590();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_116F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_11710(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_11764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_117C0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 sub_117F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_11804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1184C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_118B0()
{
  result = qword_1218F0;
  if (!qword_1218F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1218F0);
  }

  return result;
}

unint64_t sub_11908()
{
  result = qword_1218F8;
  if (!qword_1218F8)
  {
    sub_6110(&qword_121498, &qword_D99D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1218F8);
  }

  return result;
}

uint64_t sub_11984@<X0>(uint64_t *a2@<X8>)
{
  _s9ViewModelCMa_0(0);
  result = sub_D54D0();
  *a2 = result;
  return result;
}

void *sub_119C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v0 = *(v8 + 16);
  if (v0)
  {
    sub_11B90(0, v0, 0);
    v1 = (v8 + 56);
    do
    {
      v2 = *(v1 - 1);
      v3 = *v1;
      v9 = *(v1 - 3);
      v10 = *(v1 - 2);
      swift_bridgeObjectRetain_n();

      v11._countAndFlagsBits = 64;
      v11._object = 0xE100000000000000;
      sub_D66D0(v11);

      v12._countAndFlagsBits = v2;
      v12._object = v3;
      sub_D66D0(v12);

      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_11B90((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[2 * v5];
      v6[4] = v9;
      v6[5] = v10;
      v1 += 5;
      --v0;
    }

    while (v0);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_11B5C@<X0>(void *a1@<X8>)
{
  result = sub_119C4();
  *a1 = result;
  return result;
}

char *sub_11B90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_11CC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11BB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_11DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11BD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_11EEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11BF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_12130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11C10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_12258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11C30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_12364(a1, a2, a3, *v3, &qword_121928, &qword_D9708);
  *v3 = result;
  return result;
}

char *sub_11C60(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_12364(a1, a2, a3, *v3, &qword_121920, &qword_D9700);
  *v3 = result;
  return result;
}

char *sub_11C90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_12364(a1, a2, a3, *v3, &qword_121918, &qword_D96F8);
  *v3 = result;
  return result;
}

char *sub_11CC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_121900, &qword_D96E0);
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

char *sub_11DD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_121910, &qword_D96F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_11EEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_121950, &qword_D9728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_12008(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_121908, &qword_D96E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_12130(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_121930, &qword_D9710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_12258(char *result, int64_t a2, char a3, char *a4)
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
    sub_66D4(&qword_121938, &qword_D9718);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_12364(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_66D4(a5, a6);
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

Swift::Int sub_124A0()
{
  v1 = *v0;
  sub_D6CB0();
  sub_D6CC0(v1);
  return sub_D6CE0();
}

Swift::Int sub_12514(uint64_t a1)
{
  v2 = *v1;
  sub_D6CB0();
  sub_D6CC0(v2);
  return sub_D6CE0();
}

uint64_t sub_12558()
{
  if (*v0)
  {
    return 0x736E69616D6F64;
  }

  else
  {
    return 0x656D614E6C6C7566;
  }
}

uint64_t sub_12594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

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

uint64_t sub_12688(uint64_t a1)
{
  v2 = sub_12A84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_126C4(uint64_t a1)
{
  v2 = sub_12A84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_12700(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_66D4(&qword_121B48, &qword_D99C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_6648(a1, a1[3]);
  sub_12A84();
  sub_D6D00();
  v13 = 0;
  sub_D6B80();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_66D4(&qword_121498, &qword_D99D0);
    sub_12AD8();
    sub_D6BF0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_128C4()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_12914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSPrimaryUpdateAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSPrimaryUpdateAPIRequest(uint64_t a1)
{
  result = qword_121980;
  if (!qword_121980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_129D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_129EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_12A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_12A84()
{
  result = qword_121B50;
  if (!qword_121B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121B50);
  }

  return result;
}

unint64_t sub_12AD8()
{
  result = qword_121B58;
  if (!qword_121B58)
  {
    sub_6110(&qword_121498, &qword_D99D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121B58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MSPrimaryUpdateAPIRequest.Body.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MSPrimaryUpdateAPIRequest.Body.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_12CC8()
{
  result = qword_121B60;
  if (!qword_121B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121B60);
  }

  return result;
}

unint64_t sub_12D20()
{
  result = qword_121B68;
  if (!qword_121B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121B68);
  }

  return result;
}

unint64_t sub_12D78()
{
  result = qword_121B70;
  if (!qword_121B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121B70);
  }

  return result;
}

uint64_t sub_12DCC()
{
  sub_67D4((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_12E28@<X0>(uint64_t *a2@<X8>)
{
  _s11descr112329O9ViewModelCMa();
  result = sub_D54D0();
  *a2 = result;
  return result;
}

uint64_t sub_12E64(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (!*(*&v62[0] + 16))
  {
  }

  v48 = a1;
  v49 = a2;
  v10 = *(*&v62[0] + 40);
  v47 = *(*&v62[0] + 64);
  v46 = v10;

  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v11 = sub_6610(v6, qword_137988);
  (*(v7 + 16))(v9, v11, v6);
  v12 = sub_D5320();
  v13 = sub_D68A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "[Custom Email Domain] update started", v14, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v15 = (v3 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain);
  v17 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain);
  v16 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 8);
  v19 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 16);
  v18 = *(v3 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_customDomain + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  v45 = v3;
  sub_D5570();

  v21 = *(v15 + 7);
  v20 = *(v15 + 8);
  *&v53 = v17;
  *(&v53 + 1) = v16;
  *&v54 = v19;
  *(&v54 + 1) = v18;
  v55[0] = v47;
  *&v55[8] = v62[0];
  *&v55[24] = v21;
  v56 = v20;
  v61 = v20;
  v59 = *v55;
  v60 = *&v55[16];
  v57 = v53;
  v58 = v54;
  v22 = *v15;
  v23 = v15[1];
  v24 = v15[2];
  v25 = v15[3];
  v63 = *(v15 + 8);
  v62[2] = v24;
  v62[3] = v25;
  v62[0] = v22;
  v62[1] = v23;

  if (sub_B8B90(&v57, v62))
  {
    sub_1409C(&v53);
    return v48(0);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v50[0]) = 1;
    v27 = v45;

    sub_D5580();
    v28 = sub_6648((v27 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_repository), *(v27 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_repository + 24));
    v29 = *(*v28 + 16);
    v30 = *(*v28 + 24);
    v52[3] = &type metadata for CustomDomain;
    v52[4] = sub_13D84();
    v31 = swift_allocObject();
    v52[0] = v31;
    v32 = v60;
    *(v31 + 48) = v59;
    *(v31 + 64) = v32;
    *(v31 + 80) = v61;
    v33 = v58;
    *(v31 + 16) = v57;
    *(v31 + 32) = v33;
    objc_allocWithZone(type metadata accessor for MSUpdateCustomDomainAPIRequest(0));
    sub_13E28(v52, v51);
    v34 = v29;
    v35 = v30;
    sub_13E98(&v53, v50);
    v36 = sub_45BC4(v29, v35, v51);

    sub_13EF4(v52);
    v37 = sub_1EB80();

    v50[0] = v37;
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    v40 = v60;
    *(v39 + 48) = v59;
    *(v39 + 64) = v40;
    v41 = v61;
    v42 = v58;
    *(v39 + 16) = v57;
    *(v39 + 32) = v42;
    *(v39 + 80) = v41;
    *(v39 + 88) = v38;
    v43 = swift_allocObject();
    *(v43 + 16) = v48;
    *(v43 + 24) = v49;

    sub_66D4(&qword_121F38, &qword_D9CA0);
    sub_14038();
    sub_D55D0();

    swift_beginAccess();
    sub_D54B0();
    swift_endAccess();
  }
}

uint64_t sub_133E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v52 = a1[3];
  v53 = v12;
  v54 = a1[4];
  v55 = v11;
  LODWORD(v14) = *(a1 + 40);
  if (v11)
  {
    if (sub_3D770())
    {
      v15 = sub_D6550();
      v17 = v16;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v18 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v10, v18, v4);

      v19 = sub_D5320();
      v20 = v5;
      v21 = sub_D68B0();

      if (os_log_type_enabled(v19, v21))
      {
        v22 = swift_slowAlloc();
        LODWORD(v50) = v14;
        v14 = v22;
        v23 = swift_slowAlloc();
        v51 = v13;
        v24 = v23;
        v58 = v23;
        *v14 = 136642819;
        v25 = sub_558F0(v15, v17, &v58);
        v26 = v20;
        v27 = v19;
        v28 = v25;

        *(v14 + 4) = v28;
        _os_log_impl(&dword_0, v27, v21, "[Custom Email Domain] params: %{sensitive}s", v14, 0xCu);
        sub_67D4(v24);
        v13 = v51;

        LOBYTE(v14) = v50;

        (*(v26 + 8))(v10, v4);
        v5 = v26;
      }

      else
      {

        (*(v20 + 8))(v10, v4);
        v5 = v20;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v29 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v8, v29, v4);
    v30 = v55;

    v31 = v30;
    v32 = sub_D5320();
    v33 = sub_D68B0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v51 = v13;
      v35 = v34;
      v36 = v5;
      v37 = swift_slowAlloc();
      v64[0] = v37;
      *v35 = 136315138;
      v58 = v53;
      v59 = v31;
      v60 = v51;
      LOBYTE(v61) = v52 & 1;
      v62 = v54;
      v63 = v14 & 1;
      sub_6780();
      v38 = sub_D6C60();
      v40 = sub_558F0(v38, v39, v64);
      v50 = v4;
      v41 = v40;

      *(v35 + 4) = v41;
      _os_log_impl(&dword_0, v32, v33, "[Custom Email Domain] update failed: %s", v35, 0xCu);
      sub_67D4(v37);

      v13 = v51;

      (*(v36 + 8))(v8, v50);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v42 = v55;
    if (v55)
    {
      v43 = v53;
    }

    else
    {
      v43 = 0;
    }

    if (v55)
    {
      v44 = v13;
    }

    else
    {
      v44 = 0;
    }

    if (v55)
    {
      v45 = v52 & 1;
    }

    else
    {
      v45 = 0;
    }

    if (v55)
    {
      v46 = v54;
    }

    else
    {
      v46 = 0;
    }

    if (v55)
    {
      v47 = v14 & 1;
    }

    else
    {
      v47 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v58 = v43;
    v59 = v42;
    v60 = v44;
    v61 = v45;
    v62 = v46;
    v63 = v47;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v57 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_13980(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_D5340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v7 = sub_6610(v3, qword_137988);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_D5320();
  v9 = sub_D68A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "[Custom Email Domain] update successful", v10, 2u);
  }

  (*(v4 + 8))(v6, v3);
  return a2(1);
}

uint64_t sub_13B88()
{
  sub_67D4((v0 + OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_repository));
}

uint64_t sub_13C00()
{
  v0 = sub_11220();
  v1 = OBJC_IVAR____TtC18icloudMailSettings28MSCustomEmailDetailViewModel_repository;

  sub_67D4((v2 + v1));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MSCustomEmailDetailViewModel(uint64_t a1)
{
  result = qword_121C50;
  if (!qword_121C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_13D84()
{
  result = qword_121F28;
  if (!qword_121F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121F28);
  }

  return result;
}

uint64_t sub_13DD8()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_13E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_121F30, &unk_DC820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13EF4(uint64_t a1)
{
  v2 = sub_66D4(&qword_121F30, &unk_DC820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13F5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_13F94()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_13FF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_14038()
{
  result = qword_121F40;
  if (!qword_121F40)
  {
    sub_6110(&qword_121F38, &qword_D9CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121F40);
  }

  return result;
}

uint64_t sub_140F8()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_14148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSMailImportListAPIRequest(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSMailImportListAPIRequest(uint64_t a1)
{
  result = qword_121F70;
  if (!qword_121F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_141E4()
{
  if (*v0)
  {
    return 0x694874726F706D69;
  }

  else
  {
    return 0x7374726F706D69;
  }
}

uint64_t sub_1422C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7374726F706D69 && a2 == 0xE700000000000000;
  if (v6 || (sub_D6C20() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x694874726F706D69 && a2 == 0xED000079726F7473)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_D6C20();

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

uint64_t sub_14310(uint64_t a1)
{
  v2 = sub_14C48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1434C(uint64_t a1)
{
  v2 = sub_14C48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_14388@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_145A8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int sub_143B4()
{
  sub_D6CB0();
  sub_D6CC0(0);
  return sub_D6CE0();
}

Swift::Int sub_14420(uint64_t a1)
{
  sub_D6CB0();
  sub_D6CC0(0);
  return sub_D6CE0();
}

uint64_t sub_14474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_14504(uint64_t a1)
{
  v2 = sub_1491C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14540(uint64_t a1)
{
  v2 = sub_1491C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1457C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_147A8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_145A8(void *a1)
{
  v2 = sub_66D4(&qword_122168, &unk_D9F20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_6648(a1, a1[3]);
  sub_14C48();
  sub_D6CF0();
  sub_66D4(&qword_122178, &qword_DA110);
  v9 = 0;
  sub_14C9C();
  sub_D6B70();
  v7 = v10;
  v9 = 1;
  sub_D6B70();
  (*(v3 + 8))(v5, v2);
  sub_67D4(a1);
  return v7;
}

void *sub_147A8(void *a1)
{
  v3 = sub_66D4(&qword_122138, &qword_D9DA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_6648(a1, a1[3]);
  sub_1491C();
  sub_D6CF0();
  if (v1)
  {
    sub_67D4(a1);
  }

  else
  {
    sub_14970();
    sub_D6B70();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_67D4(a1);
  }

  return v7;
}

unint64_t sub_1491C()
{
  result = qword_122140;
  if (!qword_122140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122140);
  }

  return result;
}

unint64_t sub_14970()
{
  result = qword_122148;
  if (!qword_122148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122148);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MSMailImportListAPIResponse.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MSMailImportListAPIResponse.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_14AA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_14AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_14B44()
{
  result = qword_122150;
  if (!qword_122150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122150);
  }

  return result;
}

unint64_t sub_14B9C()
{
  result = qword_122158;
  if (!qword_122158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122158);
  }

  return result;
}

unint64_t sub_14BF4()
{
  result = qword_122160;
  if (!qword_122160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122160);
  }

  return result;
}

unint64_t sub_14C48()
{
  result = qword_122170;
  if (!qword_122170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122170);
  }

  return result;
}

unint64_t sub_14C9C()
{
  result = qword_122180;
  if (!qword_122180)
  {
    sub_6110(&qword_122178, &qword_DA110);
    sub_14D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122180);
  }

  return result;
}

unint64_t sub_14D20()
{
  result = qword_122188;
  if (!qword_122188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122188);
  }

  return result;
}

unint64_t sub_14D88()
{
  result = qword_122190;
  if (!qword_122190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122190);
  }

  return result;
}

unint64_t sub_14DE0()
{
  result = qword_122198;
  if (!qword_122198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122198);
  }

  return result;
}

unint64_t sub_14E38()
{
  result = qword_1221A0;
  if (!qword_1221A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1221A0);
  }

  return result;
}

uint64_t sub_14E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  sub_14FF0();
  for (i = (a1 + 96); ; i += 72)
  {
    v6 = *(i - 2);
    v7 = *i;
    v8 = *(i - 6);
    v9 = *(i - 5);
    sub_66D4(&qword_121390, &qword_D9050);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_D8CB0;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_F7DC();
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;

    v11 = sub_D6870();
    v12 = sub_D65C0();
    LODWORD(v8) = [v11 evaluateWithObject:v12];

    if (v7 != v8)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_14FF0()
{
  result = qword_1221A8;
  if (!qword_1221A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1221A8);
  }

  return result;
}

uint64_t sub_15068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_66D4(&qword_1221B0, &qword_DA0E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-v6];
  v8 = sub_66D4(&qword_1221B8, &qword_DA0F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-v10];
  v23 = a1;
  sub_66D4(&qword_1221C0, &qword_DA0F8);
  sub_15A88();
  sub_D5E60();
  v12 = sub_109A8(&qword_1221E8, &qword_1221B0, &qword_DA0E8, &protocol conformance descriptor for List<A, B>);
  sub_D5F90();
  (*(v5 + 8))(v7, v4);
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v26._countAndFlagsBits = 2777980912;
  v26._object = 0xA400000000000000;
  v27._countAndFlagsBits = 0x485F54524F504D49;
  v27._object = 0xEE0059524F545349;
  sub_D66D0(v27);
  v28._countAndFlagsBits = 2777980912;
  v28._object = 0xA400000000000000;
  sub_D66D0(v28);
  v21._countAndFlagsBits = 0xE000000000000000;
  v29._countAndFlagsBits = 0x485F54524F504D49;
  v29._object = 0xEE0059524F545349;
  v30.value._countAndFlagsBits = 0;
  v30.value._object = 0;
  v15.super.isa = v14;
  v16 = sub_D4E80(v29, v30, v15, v26, 0, v21);
  v18 = v17;

  v26._countAndFlagsBits = v16;
  v26._object = v18;
  v24 = v4;
  v25 = v12;
  swift_getOpaqueTypeConformance2();
  sub_DFAC();
  sub_D6040();

  (*(v9 + 8))(v11, v8);
  result = sub_66D4(&qword_1221F0, &qword_DA108);
  v20 = (a2 + *(result + 36));
  *v20 = sub_15560;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = 0;
  return result;
}

uint64_t sub_153D0(uint64_t a1)
{
  sub_66D4(&qword_1221D8, &qword_DA100);
  sub_15B18();
  return sub_D6390();
}

uint64_t sub_15440(uint64_t a1)
{

  sub_66D4(&qword_122178, &qword_DA110);
  sub_109A8(&qword_1221F8, &qword_122178, &qword_DA110, &protocol conformance descriptor for [A]);
  sub_15B9C();
  sub_15BF8();
  return sub_D6340();
}

uint64_t sub_15514@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  v3 = v8[0];
  *(v8 + 9) = *(a1 + 41);
  v4 = *(v8 + 9);
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  *(a2 + 41) = v4;
  return sub_15C4C(v7, &v6);
}

uint64_t sub_15560()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v4 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_D5320();
  v6 = sub_D68A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "[Mail Import History] page viewed", v7, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_156EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_66D4(&qword_122218, &qword_DA1B0);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v45 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v42[-v7];
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v44 = *(a1 + 48);
  v49 = *(a1 + 56);
  v43 = *(a1 + 32);
  v47 = v9;
  v48 = v10;
  sub_DFAC();

  v11 = sub_D5F50();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v19 = &v8[*(v4 + 44)];
  v20 = *(sub_66D4(&qword_1214A8, &qword_D9280) + 28);
  v21 = enum case for Text.TruncationMode.tail(_:);
  v22 = sub_D5EF0();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  *v8 = v11;
  *(v8 + 1) = v13;
  v8[16] = v15 & 1;
  *(v8 + 3) = v17;
  *(v8 + 4) = KeyPath;
  *(v8 + 5) = 1;
  v8[48] = 0;
  v47 = sub_15EF0(v43, v44, v49);
  v48 = v23;
  v24 = sub_D5F50();
  v26 = v25;
  LOBYTE(KeyPath) = v27;
  sub_D61B0();
  v28 = sub_D5F00();
  v30 = v29;
  LOBYTE(v13) = v31;

  sub_F16C(v24, v26, KeyPath & 1);

  sub_D5E50();
  v32 = sub_D5F20();
  v34 = v33;
  LOBYTE(v17) = v35;
  v37 = v36;

  sub_F16C(v28, v30, v13 & 1);

  v38 = v45;
  sub_16670(v8, v45);
  v39 = v46;
  sub_16670(v38, v46);
  v40 = v39 + *(sub_66D4(&qword_122220, &unk_DA220) + 48);
  *v40 = v32;
  *(v40 + 8) = v34;
  *(v40 + 16) = v17 & 1;
  *(v40 + 24) = v37;
  sub_166E0(v32, v34, v17 & 1);

  sub_166F0(v8);
  sub_F16C(v32, v34, v17 & 1);

  return sub_166F0(v38);
}

uint64_t sub_15A04@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[1];
  v14[0] = *v9;
  v14[1] = v11;
  v15[0] = v9[2];
  *(v15 + 9) = *(v9 + 41);
  *a9 = sub_D5BB0();
  *(a9 + 8) = 0x4000000000000000;
  *(a9 + 16) = 0;
  v12 = sub_66D4(&qword_122210, &qword_DA1A8);
  return sub_156EC(v14, a9 + *(v12 + 44));
}

unint64_t sub_15A88()
{
  result = qword_1221C8;
  if (!qword_1221C8)
  {
    sub_6110(&qword_1221C0, &qword_DA0F8);
    sub_15B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1221C8);
  }

  return result;
}

unint64_t sub_15B18()
{
  result = qword_1221D0;
  if (!qword_1221D0)
  {
    sub_6110(&qword_1221D8, &qword_DA100);
    sub_15B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1221D0);
  }

  return result;
}

unint64_t sub_15B9C()
{
  result = qword_1221E0;
  if (!qword_1221E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1221E0);
  }

  return result;
}

unint64_t sub_15BF8()
{
  result = qword_122200;
  if (!qword_122200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122200);
  }

  return result;
}

__n128 sub_15CA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_15CC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_15D0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_15D70()
{
  result = qword_122208;
  if (!qword_122208)
  {
    sub_6110(&qword_1221F0, &qword_DA108);
    sub_6110(&qword_1221B8, &qword_DA0F0);
    sub_6110(&qword_1221B0, &qword_DA0E8);
    sub_109A8(&qword_1221E8, &qword_1221B0, &qword_DA0E8, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_DFAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122208);
  }

  return result;
}

uint64_t sub_15EF0(int a1, uint64_t a2, char a3)
{
  v39[1] = a2;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_D4F70();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_D4FB0();
  v12 = *(v40 - 8);
  __chkstk_darwin(v40);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_D5030();
  v41 = *(v15 - 8);
  v42 = v15;
  __chkstk_darwin(v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  if (a1 != 1)
  {
    v18 = sub_D6C20();

    if ((v18 & 1) != 0 && (a3 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v27 = sub_6610(v5, qword_137988);
    (*(v6 + 16))(v8, v27, v5);
    v28 = sub_D5320();
    v29 = sub_D68B0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Mail Import History has non-completed statuses", v30, 2u);
    }

    (*(v6 + 8))(v8, v5);
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    if (v45 == 1)
    {
      v33 = "IMPORT_STATUS_COMPLETED";
    }

    else
    {
      if (v45)
      {
        v46._countAndFlagsBits = 2777980912;
        v46._object = 0xA400000000000000;
        v53._object = 0x80000000000E7380;
        v53._countAndFlagsBits = 0xD000000000000014;
        sub_D66D0(v53);
        v54._countAndFlagsBits = 2777980912;
        v54._object = 0xA400000000000000;
        sub_D66D0(v54);
        v38._countAndFlagsBits = 0xE000000000000000;
        v55._object = 0x80000000000E7380;
        v55._countAndFlagsBits = 0xD000000000000014;
        v58.value._countAndFlagsBits = 0;
        v58.value._object = 0;
        v36.super.isa = v32;
        v26 = sub_D4E80(v55, v58, v36, v46, 0, v38);

        goto LABEL_16;
      }

      v33 = "IMPORT_STATUS_IMPORTING";
    }

    v34 = v33 - 32;
    v46._countAndFlagsBits = 2777980912;
    v46._object = 0xA400000000000000;
    v50._object = ((v33 - 32) | 0x8000000000000000);
    v50._countAndFlagsBits = 0xD000000000000017;
    sub_D66D0(v50);
    v51._countAndFlagsBits = 2777980912;
    v51._object = 0xA400000000000000;
    sub_D66D0(v51);
    v38._countAndFlagsBits = 0xE000000000000000;
    v52._object = (v34 | 0x8000000000000000);
    v52._countAndFlagsBits = 0xD000000000000017;
    v57.value._countAndFlagsBits = 0;
    v57.value._object = 0;
    v35.super.isa = v32;
    v26 = sub_D4E80(v52, v57, v35, v46, 0, v38);

LABEL_16:

    return v26;
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_4:
  sub_D4FF0();
  type metadata accessor for MAPreferencesViewProvider();
  v19 = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:v19];
  v46._countAndFlagsBits = 2777980912;
  v46._object = 0xA400000000000000;
  v47._object = 0x80000000000E73E0;
  v47._countAndFlagsBits = 0xD000000000000010;
  sub_D66D0(v47);
  v48._countAndFlagsBits = 2777980912;
  v48._object = 0xA400000000000000;
  sub_D66D0(v48);
  v38._countAndFlagsBits = 0xE000000000000000;
  v49._object = 0x80000000000E73E0;
  v49._countAndFlagsBits = 0xD000000000000010;
  v56.value._countAndFlagsBits = 0;
  v56.value._object = 0;
  v21.super.isa = v20;
  sub_D4E80(v49, v56, v21, v46, 0, v38);

  sub_66D4(&qword_121390, &qword_D9050);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_D8CB0;
  sub_D4F90();
  sub_D4F50();
  v23 = sub_D5010();
  v25 = v24;
  (*(v43 + 8))(v11, v44);
  (*(v12 + 8))(v14, v40);
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_F7DC();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v26 = sub_D6610();

  (*(v41 + 8))(v17, v42);
  return v26;
}

uint64_t sub_16670(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_122218, &qword_DA1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_166E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_166F0(uint64_t a1)
{
  v2 = sub_66D4(&qword_122218, &qword_DA1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1679C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a7;
  v54 = a8;
  v50 = a6;
  v49 = a5;
  v9 = v8;
  v52 = a3;
  v55 = a2;
  v51 = a1;
  v11 = sub_D6450();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin(v11);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_D6480();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_D64A0();
  v57 = *(v64 - 8);
  v15 = __chkstk_darwin(v64);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v56 = &v47 - v18;
  v48 = sub_D6460();
  v19 = *(v48 - 8);
  __chkstk_darwin(v48);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_D5340();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a4;
  v26 = exp2(a4);
  v27 = sub_26040(0x20000000000001uLL);
  v28 = vcvtd_n_f64_u64(v27, 0x35uLL) * 0.5 + 0.75;
  if (v27 == 0x20000000000000)
  {
    v28 = 1.25;
  }

  v29 = v26 * v28;
  if (v29 <= 30.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 30.0;
  }

  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v31 = sub_6610(v22, qword_137988);
  (*(v23 + 16))(v25, v31, v22);
  v32 = v9;
  v33 = sub_D5320();
  v34 = sub_D6890();
  if (!os_log_type_enabled(v33, v34))
  {

    v33 = v32;
    goto LABEL_12;
  }

  v47 = v14;
  result = swift_slowAlloc();
  *result = 134218496;
  *(result + 4) = v30;
  *(result + 12) = 2048;
  if (!__OFADD__(v63, 1))
  {
    v36 = result;
    *(result + 14) = v63 + 1;
    *(result + 22) = 2048;
    *(result + 24) = 5;

    _os_log_impl(&dword_0, v33, v34, "Rate limited (429). Retrying in %f seconds. Attempt %ld/%ld", v36, 0x20u);

    v14 = v47;
LABEL_12:

    (*(v23 + 8))(v25, v22);
    sub_26338();
    v37 = v48;
    (*(v19 + 104))(v21, enum case for DispatchQoS.QoSClass.utility(_:), v48);
    v47 = sub_D6920();
    (*(v19 + 8))(v21, v37);
    sub_D6490();
    v38 = v56;
    sub_D64B0();
    v57 = *(v57 + 8);
    (v57)(v17, v64);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v41 = v51;
    *(v40 + 16) = v39;
    *(v40 + 24) = v41;
    *(v40 + 32) = v55;
    *(v40 + 40) = v52 & 1;
    *(v40 + 48) = v63;
    aBlock[4] = v53;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_219D0;
    aBlock[3] = v54;
    v42 = _Block_copy(aBlock);

    sub_D6470();
    v65 = _swiftEmptyArrayStorage;
    sub_26458(&qword_122400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v43 = v14;
    sub_66D4(&qword_122408, &qword_DC730);
    sub_109A8(&qword_122410, &qword_122408, &qword_DC730, &protocol conformance descriptor for [A]);
    v44 = v59;
    v45 = v62;
    sub_D6990();
    v46 = v47;
    sub_D68E0();
    _Block_release(v42);

    (*(v61 + 8))(v44, v45);
    (*(v58 + 8))(v43, v60);
    (v57)(v38, v64);
  }

  __break(1u);
  return result;
}

void sub_16EDC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v48 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v53 = a1;
  v16 = a1;
  v17 = sub_D5320();
  v18 = sub_D68B0();
  v52 = v15;

  v51 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = a5;
    *v19 = 138412546;
    v21 = v51;
    *(v19 + 4) = v51;
    *(v19 + 12) = 2112;
    v22 = v52;
    *(v19 + 14) = v52;
    *v20 = v53;
    v20[1] = a2;
    v23 = v21;
    v24 = v22;
    _os_log_impl(&dword_0, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v47;
  }

  (*(v11 + 8))(v13, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v27;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113340;
  v28 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v29 = qword_126728;
  v30 = v50;
  v31 = *(v50 + qword_126728);
  if (v31)
  {
    v32 = *(v50 + qword_126728);
LABEL_9:
    v37 = *(v30 + qword_126730);
    v38 = v31;
    sub_21A14(v28);

    isa = sub_D6520().super.isa;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v42 = v48;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v53;
    v41[4] = a5;
    v41[5] = v43;
    v41[6] = a2;
    v41[7] = a3;
    v41[8] = v49;
    aBlock[4] = sub_27020;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115B60;
    v44 = _Block_copy(aBlock);
    v45 = v51;
    v46 = v52;

    swift_errorRetain();

    [v32 renewCredentialsForAccount:v37 options:isa completion:v44];
    _Block_release(v44);

    return;
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultStore];
  v35 = *(v30 + v29);
  *(v30 + v29) = v34;

  v36 = [v33 defaultStore];
  if (v36)
  {
    v32 = v36;
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_17428(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v48 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v53 = a1;
  v16 = a1;
  v17 = sub_D5320();
  v18 = sub_D68B0();
  v52 = v15;

  v51 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = a5;
    *v19 = 138412546;
    v21 = v51;
    *(v19 + 4) = v51;
    *(v19 + 12) = 2112;
    v22 = v52;
    *(v19 + 14) = v52;
    *v20 = v53;
    v20[1] = a2;
    v23 = v21;
    v24 = v22;
    _os_log_impl(&dword_0, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v47;
  }

  (*(v11 + 8))(v13, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v27;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113370;
  v28 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v29 = qword_126728;
  v30 = v50;
  v31 = *(v50 + qword_126728);
  if (v31)
  {
    v32 = *(v50 + qword_126728);
LABEL_9:
    v37 = *(v30 + qword_126730);
    v38 = v31;
    sub_21A14(v28);

    isa = sub_D6520().super.isa;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v42 = v48;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v53;
    v41[4] = a5;
    v41[5] = v43;
    v41[6] = a2;
    v41[7] = a3;
    v41[8] = v49;
    aBlock[4] = sub_2698C;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115458;
    v44 = _Block_copy(aBlock);
    v45 = v51;
    v46 = v52;

    swift_errorRetain();

    [v32 renewCredentialsForAccount:v37 options:isa completion:v44];
    _Block_release(v44);

    return;
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultStore];
  v35 = *(v30 + v29);
  *(v30 + v29) = v34;

  v36 = [v33 defaultStore];
  if (v36)
  {
    v32 = v36;
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_17974(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v48 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v53 = a1;
  v16 = a1;
  v17 = sub_D5320();
  v18 = sub_D68B0();
  v52 = v15;

  v51 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = a5;
    *v19 = 138412546;
    v21 = v51;
    *(v19 + 4) = v51;
    *(v19 + 12) = 2112;
    v22 = v52;
    *(v19 + 14) = v52;
    *v20 = v53;
    v20[1] = a2;
    v23 = v21;
    v24 = v22;
    _os_log_impl(&dword_0, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v47;
  }

  (*(v11 + 8))(v13, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v27;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_1133A0;
  v28 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v29 = qword_126728;
  v30 = v50;
  v31 = *(v50 + qword_126728);
  if (v31)
  {
    v32 = *(v50 + qword_126728);
LABEL_9:
    v37 = *(v30 + qword_126730);
    v38 = v31;
    sub_21A14(v28);

    isa = sub_D6520().super.isa;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v42 = v48;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v53;
    v41[4] = a5;
    v41[5] = v43;
    v41[6] = a2;
    v41[7] = a3;
    v41[8] = v49;
    aBlock[4] = sub_263BC;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115020;
    v44 = _Block_copy(aBlock);
    v45 = v51;
    v46 = v52;

    swift_errorRetain();

    [v32 renewCredentialsForAccount:v37 options:isa completion:v44];
    _Block_release(v44);

    return;
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultStore];
  v35 = *(v30 + v29);
  *(v30 + v29) = v34;

  v36 = [v33 defaultStore];
  if (v36)
  {
    v32 = v36;
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_17EC0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v48 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v53 = a1;
  v16 = a1;
  v17 = sub_D5320();
  v18 = sub_D68B0();
  v52 = v15;

  v51 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = a5;
    *v19 = 138412546;
    v21 = v51;
    *(v19 + 4) = v51;
    *(v19 + 12) = 2112;
    v22 = v52;
    *(v19 + 14) = v52;
    *v20 = v53;
    v20[1] = a2;
    v23 = v21;
    v24 = v22;
    _os_log_impl(&dword_0, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v47;
  }

  (*(v11 + 8))(v13, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v27;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_1133D0;
  v28 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v29 = qword_126728;
  v30 = v50;
  v31 = *(v50 + qword_126728);
  if (v31)
  {
    v32 = *(v50 + qword_126728);
LABEL_9:
    v37 = *(v30 + qword_126730);
    v38 = v31;
    sub_21A14(v28);

    isa = sub_D6520().super.isa;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v42 = v48;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v53;
    v41[4] = a5;
    v41[5] = v43;
    v41[6] = a2;
    v41[7] = a3;
    v41[8] = v49;
    aBlock[4] = sub_26E7C;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_1159F8;
    v44 = _Block_copy(aBlock);
    v45 = v51;
    v46 = v52;

    swift_errorRetain();

    [v32 renewCredentialsForAccount:v37 options:isa completion:v44];
    _Block_release(v44);

    return;
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultStore];
  v35 = *(v30 + v29);
  *(v30 + v29) = v34;

  v36 = [v33 defaultStore];
  if (v36)
  {
    v32 = v36;
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1840C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v48 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v53 = a1;
  v16 = a1;
  v17 = sub_D5320();
  v18 = sub_D68B0();
  v52 = v15;

  v51 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = a5;
    *v19 = 138412546;
    v21 = v51;
    *(v19 + 4) = v51;
    *(v19 + 12) = 2112;
    v22 = v52;
    *(v19 + 14) = v52;
    *v20 = v53;
    v20[1] = a2;
    v23 = v21;
    v24 = v22;
    _os_log_impl(&dword_0, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v47;
  }

  (*(v11 + 8))(v13, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v27;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113400;
  v28 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v29 = qword_126728;
  v30 = v50;
  v31 = *(v50 + qword_126728);
  if (v31)
  {
    v32 = *(v50 + qword_126728);
LABEL_9:
    v37 = *(v30 + qword_126730);
    v38 = v31;
    sub_21A14(v28);

    isa = sub_D6520().super.isa;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v42 = v48;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v53;
    v41[4] = a5;
    v41[5] = v43;
    v41[6] = a2;
    v41[7] = a3;
    v41[8] = v49;
    aBlock[4] = sub_26730;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115188;
    v44 = _Block_copy(aBlock);
    v45 = v51;
    v46 = v52;

    swift_errorRetain();

    [v32 renewCredentialsForAccount:v37 options:isa completion:v44];
    _Block_release(v44);

    return;
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultStore];
  v35 = *(v30 + v29);
  *(v30 + v29) = v34;

  v36 = [v33 defaultStore];
  if (v36)
  {
    v32 = v36;
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_18958(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v48 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v53 = a1;
  v16 = a1;
  v17 = sub_D5320();
  v18 = sub_D68B0();
  v52 = v15;

  v51 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = a5;
    *v19 = 138412546;
    v21 = v51;
    *(v19 + 4) = v51;
    *(v19 + 12) = 2112;
    v22 = v52;
    *(v19 + 14) = v52;
    *v20 = v53;
    v20[1] = a2;
    v23 = v21;
    v24 = v22;
    _os_log_impl(&dword_0, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v47;
  }

  (*(v11 + 8))(v13, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v27;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113430;
  v28 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v29 = qword_126728;
  v30 = v50;
  v31 = *(v50 + qword_126728);
  if (v31)
  {
    v32 = *(v50 + qword_126728);
LABEL_9:
    v37 = *(v30 + qword_126730);
    v38 = v31;
    sub_21A14(v28);

    isa = sub_D6520().super.isa;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v42 = v48;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v53;
    v41[4] = a5;
    v41[5] = v43;
    v41[6] = a2;
    v41[7] = a3;
    v41[8] = v49;
    aBlock[4] = sub_268EC;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_1152F0;
    v44 = _Block_copy(aBlock);
    v45 = v51;
    v46 = v52;

    swift_errorRetain();

    [v32 renewCredentialsForAccount:v37 options:isa completion:v44];
    _Block_release(v44);

    return;
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultStore];
  v35 = *(v30 + v29);
  *(v30 + v29) = v34;

  v36 = [v33 defaultStore];
  if (v36)
  {
    v32 = v36;
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_18EA4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v48 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v53 = a1;
  v16 = a1;
  v17 = sub_D5320();
  v18 = sub_D68B0();
  v52 = v15;

  v51 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = a5;
    *v19 = 138412546;
    v21 = v51;
    *(v19 + 4) = v51;
    *(v19 + 12) = 2112;
    v22 = v52;
    *(v19 + 14) = v52;
    *v20 = v53;
    v20[1] = a2;
    v23 = v21;
    v24 = v22;
    _os_log_impl(&dword_0, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v47;
  }

  (*(v11 + 8))(v13, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v27;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113460;
  v28 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v29 = qword_126728;
  v30 = v50;
  v31 = *(v50 + qword_126728);
  if (v31)
  {
    v32 = *(v50 + qword_126728);
LABEL_9:
    v37 = *(v30 + qword_126730);
    v38 = v31;
    sub_21A14(v28);

    isa = sub_D6520().super.isa;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v42 = v48;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v53;
    v41[4] = a5;
    v41[5] = v43;
    v41[6] = a2;
    v41[7] = a3;
    v41[8] = v49;
    aBlock[4] = sub_2730C;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115CC8;
    v44 = _Block_copy(aBlock);
    v45 = v51;
    v46 = v52;

    swift_errorRetain();

    [v32 renewCredentialsForAccount:v37 options:isa completion:v44];
    _Block_release(v44);

    return;
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultStore];
  v35 = *(v30 + v29);
  *(v30 + v29) = v34;

  v36 = [v33 defaultStore];
  if (v36)
  {
    v32 = v36;
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_193F0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v48 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v53 = a1;
  v16 = a1;
  v17 = sub_D5320();
  v18 = sub_D68B0();
  v52 = v15;

  v51 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = a5;
    *v19 = 138412546;
    v21 = v51;
    *(v19 + 4) = v51;
    *(v19 + 12) = 2112;
    v22 = v52;
    *(v19 + 14) = v52;
    *v20 = v53;
    v20[1] = a2;
    v23 = v21;
    v24 = v22;
    _os_log_impl(&dword_0, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v47;
  }

  (*(v11 + 8))(v13, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v27;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_113490;
  v28 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v29 = qword_126728;
  v30 = v50;
  v31 = *(v50 + qword_126728);
  if (v31)
  {
    v32 = *(v50 + qword_126728);
LABEL_9:
    v37 = *(v30 + qword_126730);
    v38 = v31;
    sub_21A14(v28);

    isa = sub_D6520().super.isa;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v42 = v48;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v53;
    v41[4] = a5;
    v41[5] = v43;
    v41[6] = a2;
    v41[7] = a3;
    v41[8] = v49;
    aBlock[4] = sub_26D14;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115890;
    v44 = _Block_copy(aBlock);
    v45 = v51;
    v46 = v52;

    swift_errorRetain();

    [v32 renewCredentialsForAccount:v37 options:isa completion:v44];
    _Block_release(v44);

    return;
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultStore];
  v35 = *(v30 + v29);
  *(v30 + v29) = v34;

  v36 = [v33 defaultStore];
  if (v36)
  {
    v32 = v36;
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1993C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v48 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v53 = a1;
  v16 = a1;
  v17 = sub_D5320();
  v18 = sub_D68B0();
  v52 = v15;

  v51 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = a5;
    *v19 = 138412546;
    v21 = v51;
    *(v19 + 4) = v51;
    *(v19 + 12) = 2112;
    v22 = v52;
    *(v19 + 14) = v52;
    *v20 = v53;
    v20[1] = a2;
    v23 = v21;
    v24 = v22;
    _os_log_impl(&dword_0, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v47;
  }

  (*(v11 + 8))(v13, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v27;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_1134C0;
  v28 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v29 = qword_126728;
  v30 = v50;
  v31 = *(v50 + qword_126728);
  if (v31)
  {
    v32 = *(v50 + qword_126728);
LABEL_9:
    v37 = *(v30 + qword_126730);
    v38 = v31;
    sub_21A14(v28);

    isa = sub_D6520().super.isa;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v42 = v48;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v53;
    v41[4] = a5;
    v41[5] = v43;
    v41[6] = a2;
    v41[7] = a3;
    v41[8] = v49;
    aBlock[4] = sub_26A28;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_1155C0;
    v44 = _Block_copy(aBlock);
    v45 = v51;
    v46 = v52;

    swift_errorRetain();

    [v32 renewCredentialsForAccount:v37 options:isa completion:v44];
    _Block_release(v44);

    return;
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultStore];
  v35 = *(v30 + v29);
  *(v30 + v29) = v34;

  v36 = [v33 defaultStore];
  if (v36)
  {
    v32 = v36;
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_19E88(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v48 = a4;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v14 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v13, v14, v10);
  v15 = a2;
  v53 = a1;
  v16 = a1;
  v17 = sub_D5320();
  v18 = sub_D68B0();
  v52 = v15;

  v51 = v16;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47 = a5;
    *v19 = 138412546;
    v21 = v51;
    *(v19 + 4) = v51;
    *(v19 + 12) = 2112;
    v22 = v52;
    *(v19 + 14) = v52;
    *v20 = v53;
    v20[1] = a2;
    v23 = v21;
    v24 = v22;
    _os_log_impl(&dword_0, v17, v18, "401 response from server for request %@ response %@", v19, 0x16u);
    sub_66D4(&qword_1223E8, &qword_DA4E0);
    swift_arrayDestroy();
    a5 = v47;
  }

  (*(v11 + 8))(v13, v10);
  sub_66D4(&qword_1223D8, &qword_DA4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DA270;
  *(inited + 32) = sub_D65F0();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = sub_D65F0();
  *(inited + 88) = v27;
  *(inited + 120) = sub_66D4(&qword_121498, &qword_D99D0);
  *(inited + 96) = &off_1134F0;
  v28 = sub_260CC(inited);
  swift_setDeallocating();
  sub_66D4(&qword_1223E0, &unk_E3890);
  swift_arrayDestroy();
  v29 = qword_126728;
  v30 = v50;
  v31 = *(v50 + qword_126728);
  if (v31)
  {
    v32 = *(v50 + qword_126728);
LABEL_9:
    v37 = *(v30 + qword_126730);
    v38 = v31;
    sub_21A14(v28);

    isa = sub_D6520().super.isa;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v42 = v48;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v53;
    v41[4] = a5;
    v41[5] = v43;
    v41[6] = a2;
    v41[7] = a3;
    v41[8] = v49;
    aBlock[4] = sub_26B7C;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F0;
    aBlock[3] = &unk_115728;
    v44 = _Block_copy(aBlock);
    v45 = v51;
    v46 = v52;

    swift_errorRetain();

    [v32 renewCredentialsForAccount:v37 options:isa completion:v44];
    _Block_release(v44);

    return;
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultStore];
  v35 = *(v30 + v29);
  *(v30 + v29) = v34;

  v36 = [v33 defaultStore];
  if (v36)
  {
    v32 = v36;
    v31 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1A3D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v66 = a4;
  v63 = a3;
  v69 = a2;
  v64 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_D5030();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v61 = v14;
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v55 - v15;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v5, qword_137988);
  v59 = *(v6 + 16);
  v60 = v16;
  v59(v11);
  v17 = v4;
  v18 = sub_D5320();
  v19 = sub_D68A0();

  if (os_log_type_enabled(v18, v19))
  {
    v57 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v20 = 136315394;
    v21 = (*(&stru_B8.flags + (swift_isaMask & *v17)))();
    v58 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_558F0(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_D65F0();
    v30 = v29;

    v31 = sub_558F0(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v58;
    v25(v11, v58);
    v9 = v57;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v59)(v9, v60, v5);
  v32 = v17;
  v33 = sub_D5320();
  v34 = v9;
  v35 = sub_D68A0();

  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v59 = v6;
    v38 = *(v32 + qword_126760);
    v39 = *(v32 + qword_126760 + 8);

    v40 = sub_558F0(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v35, "X-Apple-Request-UUID: %s", v36, 0xCu);
    sub_67D4(v37);
  }

  v25(v34, v5);
  v60 = v32;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v67;
  v42 = v68;
  v44 = v62;
  v45 = v65;
  (*(v67 + 16))(v62, v65, v68);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = v46 + v61;
  v48 = (((v46 + v61) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  (*(v43 + 32))(v49 + v46, v44, v42);
  *(v49 + v47) = v63 & 1;
  v50 = v49 + (v47 & 0xFFFFFFFFFFFFFFF8);
  v51 = v69;
  *(v50 + 8) = v64;
  *(v50 + 16) = v51;
  *(v49 + v48) = v66;
  aBlock[4] = sub_27008;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115B10;
  v52 = _Block_copy(aBlock);

  v53 = sub_66D4(&qword_1225C0, &qword_DAF50);
  v70.receiver = v60;
  v70.super_class = v53;
  objc_msgSendSuper2(&v70, "performRequestWithHandler:", v52);
  _Block_release(v52);
  return (*(v43 + 8))(v45, v42);
}

uint64_t sub_1AAB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v66 = a4;
  v63 = a3;
  v69 = a2;
  v64 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_D5030();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v61 = v14;
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v55 - v15;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v5, qword_137988);
  v59 = *(v6 + 16);
  v60 = v16;
  v59(v11);
  v17 = v4;
  v18 = sub_D5320();
  v19 = sub_D68A0();

  if (os_log_type_enabled(v18, v19))
  {
    v57 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v20 = 136315394;
    v21 = (*(&stru_B8.flags + (swift_isaMask & *v17)))();
    v58 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_558F0(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_D65F0();
    v30 = v29;

    v31 = sub_558F0(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v58;
    v25(v11, v58);
    v9 = v57;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v59)(v9, v60, v5);
  v32 = v17;
  v33 = sub_D5320();
  v34 = v9;
  v35 = sub_D68A0();

  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v59 = v6;
    v38 = *(v32 + qword_126760);
    v39 = *(v32 + qword_126760 + 8);

    v40 = sub_558F0(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v35, "X-Apple-Request-UUID: %s", v36, 0xCu);
    sub_67D4(v37);
  }

  v25(v34, v5);
  v60 = v32;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v67;
  v42 = v68;
  v44 = v62;
  v45 = v65;
  (*(v67 + 16))(v62, v65, v68);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = v46 + v61;
  v48 = (((v46 + v61) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  (*(v43 + 32))(v49 + v46, v44, v42);
  *(v49 + v47) = v63 & 1;
  v50 = v49 + (v47 & 0xFFFFFFFFFFFFFFF8);
  v51 = v69;
  *(v50 + 8) = v64;
  *(v50 + 16) = v51;
  *(v49 + v48) = v66;
  aBlock[4] = sub_26974;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115408;
  v52 = _Block_copy(aBlock);

  v53 = sub_66D4(&qword_1224A0, &qword_DA5D8);
  v70.receiver = v60;
  v70.super_class = v53;
  objc_msgSendSuper2(&v70, "performRequestWithHandler:", v52);
  _Block_release(v52);
  return (*(v43 + 8))(v45, v42);
}

uint64_t sub_1B194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v66 = a4;
  v63 = a3;
  v69 = a2;
  v64 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_D5030();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v61 = v14;
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v55 - v15;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v5, qword_137988);
  v59 = *(v6 + 16);
  v60 = v16;
  v59(v11);
  v17 = v4;
  v18 = sub_D5320();
  v19 = sub_D68A0();

  if (os_log_type_enabled(v18, v19))
  {
    v57 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v20 = 136315394;
    v21 = (*(&stru_B8.flags + (swift_isaMask & *v17)))();
    v58 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_558F0(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_D65F0();
    v30 = v29;

    v31 = sub_558F0(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v58;
    v25(v11, v58);
    v9 = v57;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v59)(v9, v60, v5);
  v32 = v17;
  v33 = sub_D5320();
  v34 = v9;
  v35 = sub_D68A0();

  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v59 = v6;
    v38 = *(v32 + qword_126760);
    v39 = *(v32 + qword_126760 + 8);

    v40 = sub_558F0(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v35, "X-Apple-Request-UUID: %s", v36, 0xCu);
    sub_67D4(v37);
  }

  v25(v34, v5);
  v60 = v32;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v67;
  v42 = v68;
  v44 = v62;
  v45 = v65;
  (*(v67 + 16))(v62, v65, v68);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = v46 + v61;
  v48 = (((v46 + v61) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  (*(v43 + 32))(v49 + v46, v44, v42);
  *(v49 + v47) = v63 & 1;
  v50 = v49 + (v47 & 0xFFFFFFFFFFFFFFF8);
  v51 = v69;
  *(v50 + 8) = v64;
  *(v50 + 16) = v51;
  *(v49 + v48) = v66;
  aBlock[4] = sub_2638C;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_114FD0;
  v52 = _Block_copy(aBlock);

  v53 = sub_66D4(&qword_1223D0, &qword_DAF20);
  v70.receiver = v60;
  v70.super_class = v53;
  objc_msgSendSuper2(&v70, "performRequestWithHandler:", v52);
  _Block_release(v52);
  return (*(v43 + 8))(v45, v42);
}

uint64_t sub_1B874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v66 = a4;
  v63 = a3;
  v69 = a2;
  v64 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_D5030();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v61 = v14;
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v55 - v15;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v5, qword_137988);
  v59 = *(v6 + 16);
  v60 = v16;
  v59(v11);
  v17 = v4;
  v18 = sub_D5320();
  v19 = sub_D68A0();

  if (os_log_type_enabled(v18, v19))
  {
    v57 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v20 = 136315394;
    v21 = (*(&stru_B8.flags + (swift_isaMask & *v17)))();
    v58 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_558F0(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_D65F0();
    v30 = v29;

    v31 = sub_558F0(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v58;
    v25(v11, v58);
    v9 = v57;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v59)(v9, v60, v5);
  v32 = v17;
  v33 = sub_D5320();
  v34 = v9;
  v35 = sub_D68A0();

  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v59 = v6;
    v38 = *(v32 + qword_126760);
    v39 = *(v32 + qword_126760 + 8);

    v40 = sub_558F0(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v35, "X-Apple-Request-UUID: %s", v36, 0xCu);
    sub_67D4(v37);
  }

  v25(v34, v5);
  v60 = v32;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v67;
  v42 = v68;
  v44 = v62;
  v45 = v65;
  (*(v67 + 16))(v62, v65, v68);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = v46 + v61;
  v48 = (((v46 + v61) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  (*(v43 + 32))(v49 + v46, v44, v42);
  *(v49 + v47) = v63 & 1;
  v50 = v49 + (v47 & 0xFFFFFFFFFFFFFFF8);
  v51 = v69;
  *(v50 + 8) = v64;
  *(v50 + 16) = v51;
  *(v49 + v48) = v66;
  aBlock[4] = sub_26E64;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_1159A8;
  v52 = _Block_copy(aBlock);

  v53 = sub_66D4(&qword_122588, &qword_DA678);
  v70.receiver = v60;
  v70.super_class = v53;
  objc_msgSendSuper2(&v70, "performRequestWithHandler:", v52);
  _Block_release(v52);
  return (*(v43 + 8))(v45, v42);
}

uint64_t sub_1BF54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v66 = a4;
  v63 = a3;
  v69 = a2;
  v64 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_D5030();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v61 = v14;
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v55 - v15;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v5, qword_137988);
  v59 = *(v6 + 16);
  v60 = v16;
  v59(v11);
  v17 = v4;
  v18 = sub_D5320();
  v19 = sub_D68A0();

  if (os_log_type_enabled(v18, v19))
  {
    v57 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v20 = 136315394;
    v21 = (*(&stru_B8.flags + (swift_isaMask & *v17)))();
    v58 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_558F0(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_D65F0();
    v30 = v29;

    v31 = sub_558F0(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v58;
    v25(v11, v58);
    v9 = v57;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v59)(v9, v60, v5);
  v32 = v17;
  v33 = sub_D5320();
  v34 = v9;
  v35 = sub_D68A0();

  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v59 = v6;
    v38 = *(v32 + qword_126760);
    v39 = *(v32 + qword_126760 + 8);

    v40 = sub_558F0(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v35, "X-Apple-Request-UUID: %s", v36, 0xCu);
    sub_67D4(v37);
  }

  v25(v34, v5);
  v60 = v32;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v67;
  v42 = v68;
  v44 = v62;
  v45 = v65;
  (*(v67 + 16))(v62, v65, v68);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = v46 + v61;
  v48 = (((v46 + v61) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  (*(v43 + 32))(v49 + v46, v44, v42);
  *(v49 + v47) = v63 & 1;
  v50 = v49 + (v47 & 0xFFFFFFFFFFFFFFF8);
  v51 = v69;
  *(v50 + 8) = v64;
  *(v50 + 16) = v51;
  *(v49 + v48) = v66;
  aBlock[4] = sub_26718;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115138;
  v52 = _Block_copy(aBlock);

  v53 = sub_66D4(&qword_122440, &qword_DAF30);
  v70.receiver = v60;
  v70.super_class = v53;
  objc_msgSendSuper2(&v70, "performRequestWithHandler:", v52);
  _Block_release(v52);
  return (*(v43 + 8))(v45, v42);
}

uint64_t sub_1C634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v66 = a4;
  v63 = a3;
  v69 = a2;
  v64 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_D5030();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v61 = v14;
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v55 - v15;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v5, qword_137988);
  v59 = *(v6 + 16);
  v60 = v16;
  v59(v11);
  v17 = v4;
  v18 = sub_D5320();
  v19 = sub_D68A0();

  if (os_log_type_enabled(v18, v19))
  {
    v57 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v20 = 136315394;
    v21 = (*(&stru_B8.flags + (swift_isaMask & *v17)))();
    v58 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_558F0(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_D65F0();
    v30 = v29;

    v31 = sub_558F0(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v58;
    v25(v11, v58);
    v9 = v57;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v59)(v9, v60, v5);
  v32 = v17;
  v33 = sub_D5320();
  v34 = v9;
  v35 = sub_D68A0();

  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v59 = v6;
    v38 = *(v32 + qword_126760);
    v39 = *(v32 + qword_126760 + 8);

    v40 = sub_558F0(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v35, "X-Apple-Request-UUID: %s", v36, 0xCu);
    sub_67D4(v37);
  }

  v25(v34, v5);
  v60 = v32;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v67;
  v42 = v68;
  v44 = v62;
  v45 = v65;
  (*(v67 + 16))(v62, v65, v68);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = v46 + v61;
  v48 = (((v46 + v61) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  (*(v43 + 32))(v49 + v46, v44, v42);
  *(v49 + v47) = v63 & 1;
  v50 = v49 + (v47 & 0xFFFFFFFFFFFFFFF8);
  v51 = v69;
  *(v50 + 8) = v64;
  *(v50 + 16) = v51;
  *(v49 + v48) = v66;
  aBlock[4] = sub_268D0;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_1152A0;
  v52 = _Block_copy(aBlock);

  v53 = sub_66D4(&qword_122470, &qword_DA5B8);
  v70.receiver = v60;
  v70.super_class = v53;
  objc_msgSendSuper2(&v70, "performRequestWithHandler:", v52);
  _Block_release(v52);
  return (*(v43 + 8))(v45, v42);
}

uint64_t sub_1CD14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v66 = a4;
  v63 = a3;
  v69 = a2;
  v64 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_D5030();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v61 = v14;
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v55 - v15;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v5, qword_137988);
  v59 = *(v6 + 16);
  v60 = v16;
  v59(v11);
  v17 = v4;
  v18 = sub_D5320();
  v19 = sub_D68A0();

  if (os_log_type_enabled(v18, v19))
  {
    v57 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v20 = 136315394;
    v21 = (*(&stru_B8.flags + (swift_isaMask & *v17)))();
    v58 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_558F0(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_D65F0();
    v30 = v29;

    v31 = sub_558F0(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v58;
    v25(v11, v58);
    v9 = v57;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v59)(v9, v60, v5);
  v32 = v17;
  v33 = sub_D5320();
  v34 = v9;
  v35 = sub_D68A0();

  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v59 = v6;
    v38 = *(v32 + qword_126760);
    v39 = *(v32 + qword_126760 + 8);

    v40 = sub_558F0(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v35, "X-Apple-Request-UUID: %s", v36, 0xCu);
    sub_67D4(v37);
  }

  v25(v34, v5);
  v60 = v32;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v67;
  v42 = v68;
  v44 = v62;
  v45 = v65;
  (*(v67 + 16))(v62, v65, v68);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = v46 + v61;
  v48 = (((v46 + v61) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  (*(v43 + 32))(v49 + v46, v44, v42);
  *(v49 + v47) = v63 & 1;
  v50 = v49 + (v47 & 0xFFFFFFFFFFFFFFF8);
  v51 = v69;
  *(v50 + 8) = v64;
  *(v50 + 16) = v51;
  *(v49 + v48) = v66;
  aBlock[4] = sub_271C4;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115C78;
  v52 = _Block_copy(aBlock);

  v53 = sub_66D4(&qword_1225F0, &qword_DAF60);
  v70.receiver = v60;
  v70.super_class = v53;
  objc_msgSendSuper2(&v70, "performRequestWithHandler:", v52);
  _Block_release(v52);
  return (*(v43 + 8))(v45, v42);
}

uint64_t sub_1D3F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v66 = a4;
  v63 = a3;
  v69 = a2;
  v64 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_D5030();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v61 = v14;
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v55 - v15;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v5, qword_137988);
  v59 = *(v6 + 16);
  v60 = v16;
  v59(v11);
  v17 = v4;
  v18 = sub_D5320();
  v19 = sub_D68A0();

  if (os_log_type_enabled(v18, v19))
  {
    v57 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v20 = 136315394;
    v21 = (*(&stru_B8.flags + (swift_isaMask & *v17)))();
    v58 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_558F0(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_D65F0();
    v30 = v29;

    v31 = sub_558F0(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v58;
    v25(v11, v58);
    v9 = v57;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v59)(v9, v60, v5);
  v32 = v17;
  v33 = sub_D5320();
  v34 = v9;
  v35 = sub_D68A0();

  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v59 = v6;
    v38 = *(v32 + qword_126760);
    v39 = *(v32 + qword_126760 + 8);

    v40 = sub_558F0(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v35, "X-Apple-Request-UUID: %s", v36, 0xCu);
    sub_67D4(v37);
  }

  v25(v34, v5);
  v60 = v32;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v67;
  v42 = v68;
  v44 = v62;
  v45 = v65;
  (*(v67 + 16))(v62, v65, v68);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = v46 + v61;
  v48 = (((v46 + v61) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  (*(v43 + 32))(v49 + v46, v44, v42);
  *(v49 + v47) = v63 & 1;
  v50 = v49 + (v47 & 0xFFFFFFFFFFFFFFF8);
  v51 = v69;
  *(v50 + 8) = v64;
  *(v50 + 16) = v51;
  *(v49 + v48) = v66;
  aBlock[4] = sub_26CFC;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115840;
  v52 = _Block_copy(aBlock);

  v53 = sub_66D4(&qword_122548, &qword_DAF40);
  v70.receiver = v60;
  v70.super_class = v53;
  objc_msgSendSuper2(&v70, "performRequestWithHandler:", v52);
  _Block_release(v52);
  return (*(v43 + 8))(v45, v42);
}

uint64_t sub_1DAD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v66 = a4;
  v63 = a3;
  v69 = a2;
  v64 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_D5030();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v61 = v14;
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v55 - v15;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v5, qword_137988);
  v59 = *(v6 + 16);
  v60 = v16;
  v59(v11);
  v17 = v4;
  v18 = sub_D5320();
  v19 = sub_D68A0();

  if (os_log_type_enabled(v18, v19))
  {
    v57 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v20 = 136315394;
    v21 = (*(&stru_B8.flags + (swift_isaMask & *v17)))();
    v58 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_558F0(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_D65F0();
    v30 = v29;

    v31 = sub_558F0(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v58;
    v25(v11, v58);
    v9 = v57;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v59)(v9, v60, v5);
  v32 = v17;
  v33 = sub_D5320();
  v34 = v9;
  v35 = sub_D68A0();

  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v59 = v6;
    v38 = *(v32 + qword_126760);
    v39 = *(v32 + qword_126760 + 8);

    v40 = sub_558F0(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v35, "X-Apple-Request-UUID: %s", v36, 0xCu);
    sub_67D4(v37);
  }

  v25(v34, v5);
  v60 = v32;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v67;
  v42 = v68;
  v44 = v62;
  v45 = v65;
  (*(v67 + 16))(v62, v65, v68);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = v46 + v61;
  v48 = (((v46 + v61) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  (*(v43 + 32))(v49 + v46, v44, v42);
  *(v49 + v47) = v63 & 1;
  v50 = v49 + (v47 & 0xFFFFFFFFFFFFFFF8);
  v51 = v69;
  *(v50 + 8) = v64;
  *(v50 + 16) = v51;
  *(v49 + v48) = v66;
  aBlock[4] = sub_26A10;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_115570;
  v52 = _Block_copy(aBlock);

  v53 = sub_66D4(&qword_1224D0, &qword_DA5F8);
  v70.receiver = v60;
  v70.super_class = v53;
  objc_msgSendSuper2(&v70, "performRequestWithHandler:", v52);
  _Block_release(v52);
  return (*(v43 + 8))(v45, v42);
}

uint64_t sub_1E1B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v66 = a4;
  v63 = a3;
  v69 = a2;
  v64 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  v12 = sub_D5030();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v61 = v14;
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v55 - v15;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v16 = sub_6610(v5, qword_137988);
  v59 = *(v6 + 16);
  v60 = v16;
  v59(v11);
  v17 = v4;
  v18 = sub_D5320();
  v19 = sub_D68A0();

  if (os_log_type_enabled(v18, v19))
  {
    v57 = v9;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v20 = 136315394;
    v21 = (*(&stru_B8.flags + (swift_isaMask & *v17)))();
    v58 = v5;
    v22 = v6;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v23 = 0xE300000000000000;
        v24 = 5526864;
      }

      else
      {
        v23 = 0xE600000000000000;
        v24 = 0x4554454C4544;
      }
    }

    else if (v21)
    {
      v23 = 0xE400000000000000;
      v24 = 1414745936;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 5522759;
    }

    v26 = sub_558F0(v24, v23, aBlock);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = [v17 urlString];
    v28 = sub_D65F0();
    v30 = v29;

    v31 = sub_558F0(v28, v30, aBlock);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_0, v18, v19, "%s %s", v20, 0x16u);
    swift_arrayDestroy();

    v6 = v22;
    v25 = *(v22 + 8);
    v5 = v58;
    v25(v11, v58);
    v9 = v57;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v11, v5);
  }

  (v59)(v9, v60, v5);
  v32 = v17;
  v33 = sub_D5320();
  v34 = v9;
  v35 = sub_D68A0();

  if (os_log_type_enabled(v33, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v59 = v6;
    v38 = *(v32 + qword_126760);
    v39 = *(v32 + qword_126760 + 8);

    v40 = sub_558F0(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v35, "X-Apple-Request-UUID: %s", v36, 0xCu);
    sub_67D4(v37);
  }

  v25(v34, v5);
  v60 = v32;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v67;
  v42 = v68;
  v44 = v62;
  v45 = v65;
  (*(v67 + 16))(v62, v65, v68);
  v46 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v47 = v46 + v61;
  v48 = (((v46 + v61) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  (*(v43 + 32))(v49 + v46, v44, v42);
  *(v49 + v47) = v63 & 1;
  v50 = v49 + (v47 & 0xFFFFFFFFFFFFFFF8);
  v51 = v69;
  *(v50 + 8) = v64;
  *(v50 + 16) = v51;
  *(v49 + v48) = v66;
  aBlock[4] = sub_26B64;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_1156D8;
  v52 = _Block_copy(aBlock);

  v53 = sub_66D4(&qword_122510, &qword_DA628);
  v70.receiver = v60;
  v70.super_class = v53;
  objc_msgSendSuper2(&v70, "performRequestWithHandler:", v52);
  _Block_release(v52);
  return (*(v43 + 8))(v45, v42);
}

uint64_t sub_1E894()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_66D4(&qword_1225A0, &qword_DA690);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  *(swift_allocObject() + 16) = v0;
  sub_66D4(&qword_1225A8, &qword_DA698);
  swift_allocObject();
  v8 = v0;
  v13[1] = sub_D5520();
  sub_26338();
  v9 = sub_D6900();
  v13[0] = v9;
  v10 = sub_D68F0();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_109A8(&qword_1225B0, &qword_1225A8, &qword_DA698, &protocol conformance descriptor for Future<A, B>);
  sub_26458(&qword_1223C0, sub_26338, &protocol conformance descriptor for OS_dispatch_queue);
  sub_D55E0();
  sub_FC3C(v3, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_1225B8, &qword_1225A0, &qword_DA690, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v11 = sub_D55A0();
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_1EB80()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_66D4(&qword_122480, &qword_DA5C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  *(swift_allocObject() + 16) = v0;
  sub_66D4(&qword_122488, &qword_DA5D0);
  swift_allocObject();
  v8 = v0;
  v13[1] = sub_D5520();
  sub_26338();
  v9 = sub_D6900();
  v13[0] = v9;
  v10 = sub_D68F0();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_109A8(&qword_122490, &qword_122488, &qword_DA5D0, &protocol conformance descriptor for Future<A, B>);
  sub_26458(&qword_1223C0, sub_26338, &protocol conformance descriptor for OS_dispatch_queue);
  sub_D55E0();
  sub_FC3C(v3, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_122498, &qword_122480, &qword_DA5C8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v11 = sub_D55A0();
  (*(v5 + 8))(v7, v4);
  return v11;
}