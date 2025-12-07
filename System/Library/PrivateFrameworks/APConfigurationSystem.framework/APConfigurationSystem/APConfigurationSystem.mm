unint64_t sub_1CA1CF5B8(uint64_t a1)
{
  *(a1 + 8) = sub_1CA1CF5E8();
  result = sub_1CA1CF63C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CA1CF5E8()
{
  result = qword_1EDC0D978;
  if (!qword_1EDC0D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D978);
  }

  return result;
}

unint64_t sub_1CA1CF63C()
{
  result = qword_1EDC0D980;
  if (!qword_1EDC0D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D980);
  }

  return result;
}

uint64_t sub_1CA1CF6B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ConfigurableJSONSource.init(path:dataProvider:)(void *a1, void *a2)
{
  sub_1CA1CF7F0(a1, v2 + 16);
  sub_1CA1CF7F0(a2, v12);
  sub_1CA1CF7F0(v12, v11);
  v9 = &type metadata for ConfigurationNodeReader;
  v10 = &protocol witness table for ConfigurationNodeReader;
  v5 = swift_allocObject();
  *&v8 = v5;
  *(v5 + 40) = &type metadata for ConfigurationDirectoryURLBuilder;
  *(v5 + 48) = &protocol witness table for ConfigurationDirectoryURLBuilder;
  *(v5 + 16) = 0;
  sub_1CA1CF854(a2);
  sub_1CA1CF854(a1);
  sub_1CA1CF854(v12);
  type metadata accessor for ConfigurationJSONProvider();
  v6 = swift_allocObject();
  sub_1CA1CF6B4(v11, v6 + 16);
  sub_1CA1CF6B4(&v8, v6 + 56);
  *(v2 + 56) = v6;
  return v2;
}

uint64_t sub_1CA1CF7B8()
{
  sub_1CA1CF854((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA1CF7F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CA1CF854(void *a1)
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

uint64_t ConfigurationJSONProvider.__deallocating_deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t ConfigurableJSONSource.__deallocating_deinit()
{
  sub_1CA1CF854((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1CA1CFA50(uint64_t a1)
{
  qword_1EDC0DE98 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1CA1CFBEC()
{
  sub_1CA1CF854((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA1CFC2C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1CA1CFC70()
{
  sub_1CA1CF854((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1CA1D31B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_cancelled(*(a1 + 32), a2, a3))
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CA1CE000, v6, OS_LOG_TYPE_INFO, "Request was cancelled and data task is not created.", buf, 2u);
    }

    objc_msgSend__runCompletionHandlerWithSuccess_data_(*(a1 + 32), v7, 0, 0);
    v8 = *(a1 + 32);
    v11 = objc_msgSend__configurationVersion(v8, v9, v10);
    objc_msgSend__sendCoreAnalyticsWithUpdateStatus_version_(v8, v12, 1513, v11);
  }

  else
  {
    v13 = objc_msgSend__configurationServerURL(*(a1 + 32), v4, v5);
    v16 = objc_msgSend_sharedAPNetworkClient(MEMORY[0x1E69861B0], v14, v15);
    v19 = objc_msgSend_temporarySessionForDaemon(v16, v17, v18);

    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_msgSend_absoluteString(v13, v21, v22);
      *buf = 138543362;
      v35 = v23;
      _os_log_impl(&dword_1CA1CE000, v20, OS_LOG_TYPE_DEFAULT, "Starting request to: %{public}@.", buf, 0xCu);
    }

    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = sub_1CA1D33C0;
    v31 = &unk_1E8368C70;
    v32 = *(a1 + 32);
    v33 = v19;
    v24 = v19;
    v26 = objc_msgSend_GET_headers_withCompletionHandler_(v24, v25, v13, 0, &v28);
    objc_msgSend_setSessionDataTask_(*(a1 + 32), v27, v26, v28, v29, v30, v31, v32);
  }
}

void sub_1CA1D33C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_responseQueue(*(a1 + 32), v4, v5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1CA1D3488;
  block[3] = &unk_1E8368C48;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, block);
}

void sub_1CA1D3520(uint64_t a1)
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CA1CE000, v2, OS_LOG_TYPE_DEFAULT, "Config System Request: Canceling request.", buf, 2u);
  }

  objc_msgSend_setCancelled_(*(a1 + 32), v3, 1);
  v6 = objc_msgSend_sessionDataTask(*(a1 + 32), v4, v5);
  if (v6)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1CA1CE000, v7, OS_LOG_TYPE_INFO, "Config System Request: Data task canceled.", v10, 2u);
    }

    objc_msgSend_cancel(v6, v8, v9);
  }
}

void sub_1CA1D56A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v16 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA1D56E8(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_datasource(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_subdirectoriesAtURL_(v6, v7, v3);

  v10 = objc_msgSend__versionInDirectoryWithURLs_(*(a1 + 32), v9, v8);
  v13 = v10;
  if (v10)
  {
    v14 = *(*(*(a1 + 40) + 8) + 24);
    v15 = objc_msgSend_integerValue(v10, v11, v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    *(*(*(a1 + 40) + 8) + 24) = v16;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v8;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v26, v30, 16);
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v26 + 1) + 8 * i);
          WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
          WeakRetained[2](WeakRetained, v23);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v25, &v26, v30, 16);
      }

      while (v20);
    }
  }
}

unint64_t sub_1CA1D5C3C()
{
  result = qword_1EDC0D5F8;
  if (!qword_1EDC0D5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC0D5F8);
  }

  return result;
}

uint64_t sub_1CA1D5C88@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_1CA1DD560();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA1DD5B0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA1D66A0(&qword_1EC43CC78, &qword_1CA1DEE30);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v16 = OBJC_IVAR___APConfigurationStorefrontValidator____lazy_storage___url;
  swift_beginAccess();
  sub_1CA1D765C(v1 + v16, v15);
  if ((*(v7 + 48))(v15, 1, v6) != 1)
  {
    return (*(v7 + 32))(v22, v15, v6);
  }

  sub_1CA1D754C(v15);
  sub_1CA1DD570();
  strcpy(v23, "Storefront.txt");
  v23[15] = -18;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);
  sub_1CA1D664C();
  v17 = v2;
  v18 = v22;
  v21 = v1;
  sub_1CA1DD5A0();
  (*(v3 + 8))(v5, v17);
  (*(v7 + 8))(v9, v6);
  (*(v7 + 16))(v13, v18, v6);
  (*(v7 + 56))(v13, 0, 1, v6);
  v19 = v21;
  swift_beginAccess();
  sub_1CA1D76CC(v13, v19 + v16);
  return swift_endAccess();
}

id ConfigurationStorefrontValidator.__allocating_init(storefront:configurationPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___APConfigurationStorefrontValidator____lazy_storage___url;
  v11 = sub_1CA1DD5B0();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = &v9[OBJC_IVAR___APConfigurationStorefrontValidator_storefront];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v9[OBJC_IVAR___APConfigurationStorefrontValidator_configurationPath];
  *v13 = a3;
  *(v13 + 1) = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

id ConfigurationStorefrontValidator.init(storefront:configurationPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___APConfigurationStorefrontValidator____lazy_storage___url;
  v10 = sub_1CA1DD5B0();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR___APConfigurationStorefrontValidator_storefront];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[OBJC_IVAR___APConfigurationStorefrontValidator_configurationPath];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ConfigurationStorefrontValidator(0);
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t type metadata accessor for ConfigurationStorefrontValidator(uint64_t a1)
{
  result = qword_1EC43CC60;
  if (!qword_1EC43CC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA1D62A4()
{
  v1 = sub_1CA1DD750();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA1DD5B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR___APConfigurationStorefrontValidator_storefront);
  v9 = *(v0 + OBJC_IVAR___APConfigurationStorefrontValidator_storefront + 8);
  v16[0] = v10;
  v16[1] = v9;

  sub_1CA1D5C88(v8);
  sub_1CA1DD740();
  sub_1CA1D664C();
  sub_1CA1DD7E0();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  v11 = sub_1CA1DD7A0();
  sub_1CA1D75B4(0, &qword_1EDC0D5F8, 0x1E69E9BF8);
  v12 = sub_1CA1DD7C0();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1CA1D6E14(v10, v9, v16);
    _os_log_impl(&dword_1CA1CE000, v12, v11, "[ConfigurationStorefrontValidator] Storefront: %{public}s saved to filesystem.", v13, 0xCu);
    sub_1CA1CF854(v14);
    MEMORY[0x1CCA9BA70](v14, -1, -1);
    MEMORY[0x1CCA9BA70](v13, -1, -1);
  }
}

unint64_t sub_1CA1D664C()
{
  result = qword_1EDC0D600;
  if (!qword_1EDC0D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D600);
  }

  return result;
}

uint64_t sub_1CA1D66A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CA1D6730()
{
  v1 = sub_1CA1D6828();
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v1 == *(v0 + OBJC_IVAR___APConfigurationStorefrontValidator_storefront) && v2 == *(v0 + OBJC_IVAR___APConfigurationStorefrontValidator_storefront + 8))
  {

LABEL_8:
    v5 = 0;
    return v5 & 1;
  }

  v4 = sub_1CA1DD8D0();

  v5 = v4 ^ 1;
  return v5 & 1;
}

uint64_t sub_1CA1D6828()
{
  v0 = sub_1CA1DD750();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CA1DD5B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA1D5C88(v4);
  sub_1CA1DD740();
  v5 = sub_1CA1DD710();
  v7 = v6;
  v8 = v5;
  (*(v2 + 8))(v4, v1);
  v9 = sub_1CA1DD7A0();
  sub_1CA1D75B4(0, &qword_1EDC0D5F8, 0x1E69E9BF8);
  v10 = sub_1CA1DD7C0();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1CA1D6E14(v8, v7, &v15);
    _os_log_impl(&dword_1CA1CE000, v10, v9, "[ConfigurationStorefrontValidator] Old storefront: %{public}s", v11, 0xCu);
    sub_1CA1CF854(v12);
    MEMORY[0x1CCA9BA70](v12, -1, -1);
    MEMORY[0x1CCA9BA70](v11, -1, -1);
  }

  return v8;
}

id ConfigurationStorefrontValidator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConfigurationStorefrontValidator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurationStorefrontValidator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CA1D6E14(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CA1D6EE0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1CA1D75FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1CA1CF854(v11);
  return v7;
}

unint64_t sub_1CA1D6EE0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1CA1D6FEC(a5, a6);
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
    result = sub_1CA1DD840();
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

void *sub_1CA1D6FEC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1CA1D7038(a1, a2);
  sub_1CA1D7168(&unk_1F49DA528);
  return v3;
}

void *sub_1CA1D7038(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1CA1D7254(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1CA1DD840();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1CA1DD790();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1CA1D7254(v10, 0);
        result = sub_1CA1DD800();
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

uint64_t sub_1CA1D7168(uint64_t result)
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

  result = sub_1CA1D72C8(result, v11, 1, v3);
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

void *sub_1CA1D7254(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1CA1D66A0(&qword_1EC43CC88, qword_1CA1DEE38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1CA1D72C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1CA1D66A0(&qword_1EC43CC88, qword_1CA1DEE38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1CA1D73C4(uint64_t a1)
{
  sub_1CA1D74F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1CA1D74F4(uint64_t a1)
{
  if (!qword_1EC43CC70)
  {
    sub_1CA1DD5B0();
    v1 = sub_1CA1DD7D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC43CC70);
    }
  }
}

uint64_t sub_1CA1D754C(uint64_t a1)
{
  v2 = sub_1CA1D66A0(&qword_1EC43CC78, &qword_1CA1DEE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA1D75B4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1CA1D75FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CA1D765C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA1D66A0(&qword_1EC43CC78, &qword_1CA1DEE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA1D76CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA1D66A0(&qword_1EC43CC78, &qword_1CA1DEE30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PurposeConfigSystemConfigurationStore.__allocating_init(configDataSource:fallback:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1CA1CF6B4(a1, v4 + 16);
  sub_1CA1CF6B4(a2, v4 + 56);
  return v4;
}

uint64_t PurposeConfigSystemConfigurationStore.init(configDataSource:fallback:)(__int128 *a1, __int128 *a2)
{
  sub_1CA1CF6B4(a1, v2 + 16);
  sub_1CA1CF6B4(a2, v2 + 56);
  return v2;
}

uint64_t PurposeConfigSystemConfigurationStore.deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));
  return v0;
}

uint64_t PurposeConfigSystemConfigurationStore.__deallocating_deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t PurposeConfigSystemConfigurationStore.configurationFor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1CA1DD670();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA1D66A0(&qword_1EC43CC90, &qword_1CA1DEE70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = v2[5];
  v14 = v2[6];
  sub_1CA1D7AF0(v2 + 2, v13);
  v15 = (*(v14 + 8))(a1, v13, v14);
  if (v15)
  {
    sub_1CA1DAE20(v15, v12);
    swift_unknownObjectRelease();
    v16 = sub_1CA1DD620();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) != 1)
    {
      return (*(v17 + 32))(a2, v12, v16);
    }

    sub_1CA1D7B58(v12);
  }

  sub_1CA1DD650();
  v18 = sub_1CA1DD660();
  v19 = sub_1CA1DD7B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a1;
    _os_log_impl(&dword_1CA1CE000, v18, v19, "Using fallback configuration for purpose %ld", v20, 0xCu);
    MEMORY[0x1CCA9BA70](v20, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_1CA1D7AF0(v3 + 7, v3[10]);
  return sub_1CA1DD630();
}

void *sub_1CA1D7AF0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1CA1D7B58(uint64_t a1)
{
  v2 = sub_1CA1D66A0(&qword_1EC43CC90, &qword_1CA1DEE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA1D7C24@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_1CA1DD510();
  swift_allocObject();
  sub_1CA1DD500();
  sub_1CA1DD4F0();

  v7 = *(*(a3 - 8) + 56);

  return v7(a5, 0, 1, a3);
}

uint64_t sub_1CA1D7DB0(uint64_t a1)
{
  v2 = sub_1CA1D66A0(&qword_1EC43CC98, &unk_1CA1DF7A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConfigurationDecodableProvider.__allocating_init(dataProvider:)(void *a1)
{
  sub_1CA1CF7F0(a1, v8);
  v6 = &type metadata for ConfigurationNodeReader;
  v7 = &protocol witness table for ConfigurationNodeReader;
  v2 = swift_allocObject();
  *&v5 = v2;
  *(v2 + 40) = &type metadata for ConfigurationDirectoryURLBuilder;
  *(v2 + 48) = &protocol witness table for ConfigurationDirectoryURLBuilder;
  *(v2 + 16) = 0;
  sub_1CA1CF854(a1);
  type metadata accessor for ConfigurationDecodableProvider();
  v3 = swift_allocObject();
  sub_1CA1CF6B4(v8, v3 + 16);
  sub_1CA1CF6B4(&v5, v3 + 56);
  return v3;
}

uint64_t sub_1CA1D7EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v9 = sub_1CA1DD7D0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  sub_1CA1D8094((v5 + 16), a1, a2, &v15 - v11);
  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v12, 1, a2) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return sub_1CA1D8094((v5 + 56), a1, a2, a5);
  }

  else
  {
    (*(v13 + 32))(a5, v12, a2);
    return (*(v13 + 56))(a5, 0, 1, a2);
  }
}

uint64_t sub_1CA1D8094@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v25 = a5;
  v8 = sub_1CA1DD7D0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = a1[3];
  v13 = a1[4];
  sub_1CA1D7AF0(a1, v12);
  v14 = (*(v13 + 8))(a2, v12, v13);
  if (v15 >> 60 == 15)
  {
    v16 = *(a3 - 8);
  }

  else
  {
    v17 = v14;
    v18 = v15;
    sub_1CA1D7C24(a3, v11);
    sub_1CA1D8370(v17, v18);
    v16 = *(a3 - 8);
    v19 = v16;
    if ((*(v16 + 48))(v11, 1, a3) != 1)
    {
      v22 = v25;
      (*(v16 + 32))(v25, v11, a3);
      v21 = v22;
      v20 = 0;
      return (*(v19 + 56))(v21, v20, 1, a3);
    }

    (*(v9 + 8))(v11, v8);
  }

  v19 = v16;
  v20 = 1;
  v21 = v25;
  return (*(v19 + 56))(v21, v20, 1, a3);
}

uint64_t ConfigurationDecodableProvider.deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));
  return v0;
}

uint64_t ConfigurationDecodableProvider.__deallocating_deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1CA1D8370(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CA1D8384(a1, a2);
  }

  return a1;
}

uint64_t sub_1CA1D8384(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t ConfigurationDirectoryURLBuilder.configurationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CA1DD5B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v1)
  {
    sub_1CA1DD600();
    sub_1CA1DD580();
    (*(v4 + 8))(v6, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v8[15] = 0;
    return sub_1CA1D852C(a1);
  }
}

uint64_t sub_1CA1D852C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CA1DD720();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_1CA1DD720();
    v5 = sub_1CA1DD720();
    v6 = [v3 pathForResource:v4 ofType:v5];

    if (v6)
    {
      sub_1CA1DD730();

      sub_1CA1DD570();

      v7 = 0;
      goto LABEL_7;
    }

    sub_1CA1DD7B0();
    sub_1CA1D5C3C();
    v8 = sub_1CA1DD7C0();
    sub_1CA1DD640();
  }

  else
  {
    sub_1CA1DD7B0();
    sub_1CA1D5C3C();
    v3 = sub_1CA1DD7C0();
    sub_1CA1DD640();
  }

  v7 = 1;
LABEL_7:

  v9 = sub_1CA1DD5B0();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v7, 1, v9);
}

uint64_t ConfigurationDirectoryURLBuilder.hashValue.getter()
{
  v1 = *v0;
  sub_1CA1DD930();
  MEMORY[0x1CCA9B3E0](v1);
  return sub_1CA1DD950();
}

uint64_t sub_1CA1D8820()
{
  v1 = *v0;
  sub_1CA1DD930();
  MEMORY[0x1CCA9B3E0](v1);
  return sub_1CA1DD950();
}

uint64_t sub_1CA1D8868(uint64_t a1)
{
  v2 = *v1;
  sub_1CA1DD930();
  MEMORY[0x1CCA9B3E0](v2);
  return sub_1CA1DD950();
}

unint64_t sub_1CA1D88B0()
{
  result = qword_1EC43CCA0;
  if (!qword_1EC43CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CCA0);
  }

  return result;
}

uint64_t sub_1CA1D8904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CA1DD5B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v1)
  {
    sub_1CA1DD600();
    sub_1CA1DD580();
    (*(v4 + 8))(v6, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v8[15] = 0;
    return sub_1CA1D852C(a1);
  }
}

uint64_t getEnumTagSinglePayload for ConfigurationDirectoryURLBuilder(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConfigurationDirectoryURLBuilder(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConfigurationSystemConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ConfigurationSystemConstants(_WORD *result, int a2, int a3)
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

uint64_t sub_1CA1D8CA8()
{
  v1 = 0x66654C393034316DLL;
  if (*v0)
  {
    v1 = 0x696F56393034316DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1CA1D8D3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CA1D950C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CA1D8D7C(uint64_t a1)
{
  v2 = sub_1CA1D8FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D8DB8(uint64_t a1)
{
  v2 = sub_1CA1D8FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ECClientMetricsConfig.encode(to:)(void *a1)
{
  v4 = sub_1CA1D66A0(&qword_1EC43CCA8, &qword_1CA1DF070);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[1] = *(v1 + 16);
  v10[2] = v8;
  sub_1CA1D7AF0(a1, a1[3]);
  sub_1CA1D8FD0();
  sub_1CA1DD970();
  v14 = 0;
  sub_1CA1DD8C0();
  if (!v2)
  {
    v13 = 1;
    sub_1CA1DD8C0();
    v12 = 2;
    sub_1CA1DD8C0();
    v11 = 3;
    sub_1CA1DD8B0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1CA1D8FD0()
{
  result = qword_1EDC0D6D0;
  if (!qword_1EDC0D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D6D0);
  }

  return result;
}

uint64_t ECClientMetricsConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1CA1D66A0(&qword_1EC43CCB0, &qword_1CA1DF078);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  sub_1CA1D7AF0(a1, a1[3]);
  sub_1CA1D8FD0();
  sub_1CA1DD960();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_1CA1DD880();
    v17 = 1;
    v10 = sub_1CA1DD880();
    v16 = 2;
    v14 = sub_1CA1DD880();
    v15 = 3;
    sub_1CA1DD870();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v14;
    a2[3] = v13;
  }

  return sub_1CA1CF854(a1);
}

__n128 sub_1CA1D924C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA1D9258(uint64_t a1, int a2)
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

uint64_t sub_1CA1D9278(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ECClientMetricsConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ECClientMetricsConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA1D9408()
{
  result = qword_1EC43CCB8;
  if (!qword_1EC43CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CCB8);
  }

  return result;
}

unint64_t sub_1CA1D9460()
{
  result = qword_1EDC0D6C0;
  if (!qword_1EDC0D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D6C0);
  }

  return result;
}

unint64_t sub_1CA1D94B8()
{
  result = qword_1EDC0D6C8;
  if (!qword_1EDC0D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0D6C8);
  }

  return result;
}

uint64_t sub_1CA1D950C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x66654C393034316DLL && a2 == 0xE900000000000074;
  if (v4 || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696F56393034316DLL && a2 == 0xEE007466654C6563 || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CA1E0730 == a2 || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CA1E0750 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CA1DD8D0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t Configuration.path.getter()
{
  v1 = 0x72756769666E6F43;
  v2 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E656D6563616C50;
  }

  if (*v0)
  {
    v1 = 0x4665727574616546;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1CA1D9744()
{
  v1 = 0x72756769666E6F63;
  v2 = 0xD00000000000001CLL;
  if (*v0 != 2)
  {
    v2 = 0x6E656D6563616C70;
  }

  if (*v0)
  {
    v1 = 0x4665727574616566;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CA1D97E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CA1DAC80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CA1D9808(uint64_t a1)
{
  v2 = sub_1CA1D9EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D9844(uint64_t a1)
{
  v2 = sub_1CA1D9EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA1D988C(uint64_t a1)
{
  v2 = sub_1CA1D9FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D98C8(uint64_t a1)
{
  v2 = sub_1CA1D9FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA1D9904(uint64_t a1)
{
  v2 = sub_1CA1D9F4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D9940(uint64_t a1)
{
  v2 = sub_1CA1D9F4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA1D997C(uint64_t a1)
{
  v2 = sub_1CA1D9FA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D99B8(uint64_t a1)
{
  v2 = sub_1CA1D9FA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA1D99F4(uint64_t a1)
{
  v2 = sub_1CA1D9EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA1D9A30(uint64_t a1)
{
  v2 = sub_1CA1D9EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Configuration.encode(to:)(void *a1)
{
  v3 = sub_1CA1D66A0(&qword_1EC43CCC0, &qword_1CA1DF230);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = sub_1CA1D66A0(&qword_1EC43CCC8, &qword_1CA1DF238);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = sub_1CA1D66A0(&qword_1EC43CCD0, &qword_1CA1DF240);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = sub_1CA1D66A0(&qword_1EC43CCD8, &qword_1CA1DF248);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = sub_1CA1D66A0(&qword_1EC43CCE0, &qword_1CA1DF250);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  sub_1CA1D7AF0(a1, a1[3]);
  sub_1CA1D9EA4();
  sub_1CA1DD970();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1CA1D9F4C();
      v18 = v27;
      sub_1CA1DD8A0();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1CA1D9EF8();
      v18 = v30;
      sub_1CA1DD8A0();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1CA1D9FA0();
    v18 = v24;
    sub_1CA1DD8A0();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1CA1D9FF4();
  sub_1CA1DD8A0();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1CA1D9EA4()
{
  result = qword_1EC43CCE8;
  if (!qword_1EC43CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CCE8);
  }

  return result;
}

unint64_t sub_1CA1D9EF8()
{
  result = qword_1EC43CCF0;
  if (!qword_1EC43CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CCF0);
  }

  return result;
}

unint64_t sub_1CA1D9F4C()
{
  result = qword_1EC43CCF8;
  if (!qword_1EC43CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CCF8);
  }

  return result;
}

unint64_t sub_1CA1D9FA0()
{
  result = qword_1EC43CD00;
  if (!qword_1EC43CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD00);
  }

  return result;
}

unint64_t sub_1CA1D9FF4()
{
  result = qword_1EC43CD08;
  if (!qword_1EC43CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD08);
  }

  return result;
}

uint64_t Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_1CA1DD930();
  MEMORY[0x1CCA9B3E0](v1);
  return sub_1CA1DD950();
}

uint64_t Configuration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = sub_1CA1D66A0(&qword_1EC43CD10, &qword_1CA1DF258);
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = v35 - v3;
  v4 = sub_1CA1D66A0(&qword_1EC43CD18, &qword_1CA1DF260);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = v35 - v6;
  v41 = sub_1CA1D66A0(&qword_1EC43CD20, &qword_1CA1DF268);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = v35 - v7;
  v9 = sub_1CA1D66A0(&qword_1EC43CD28, &qword_1CA1DF270);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  v12 = sub_1CA1D66A0(&qword_1EC43CD30, &qword_1CA1DF278);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  sub_1CA1D7AF0(a1, v16);
  sub_1CA1D9EA4();
  v17 = v48;
  sub_1CA1DD960();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_1CA1DD890();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_1CA1DD830();
      swift_allocError();
      v27 = v26;
      sub_1CA1D66A0(&qword_1EC43CD38, &qword_1CA1DF280);
      *v27 = &type metadata for Configuration;
      sub_1CA1DD860();
      sub_1CA1DD820();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_1CA1D9FA0();
          v32 = v37;
          sub_1CA1DD850();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_1CA1D9FF4();
          v28 = v37;
          sub_1CA1DD850();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return sub_1CA1CF854(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_1CA1D9F4C();
        v31 = v37;
        sub_1CA1DD850();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return sub_1CA1CF854(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_1CA1D9EF8();
        v33 = v37;
        sub_1CA1DD850();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return sub_1CA1CF854(v49);
}

unint64_t sub_1CA1DA744()
{
  result = qword_1EC43CD40;
  if (!qword_1EC43CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD40);
  }

  return result;
}

unint64_t sub_1CA1DA798()
{
  v1 = 0x72756769666E6F43;
  v2 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E656D6563616C50;
  }

  if (*v0)
  {
    v1 = 0x4665727574616546;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1CA1DA8BC()
{
  result = qword_1EC43CD48;
  if (!qword_1EC43CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD48);
  }

  return result;
}

unint64_t sub_1CA1DA914()
{
  result = qword_1EC43CD50;
  if (!qword_1EC43CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD50);
  }

  return result;
}

unint64_t sub_1CA1DA96C()
{
  result = qword_1EC43CD58;
  if (!qword_1EC43CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD58);
  }

  return result;
}

unint64_t sub_1CA1DA9C4()
{
  result = qword_1EC43CD60;
  if (!qword_1EC43CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD60);
  }

  return result;
}

unint64_t sub_1CA1DAA1C()
{
  result = qword_1EC43CD68;
  if (!qword_1EC43CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD68);
  }

  return result;
}

unint64_t sub_1CA1DAA74()
{
  result = qword_1EC43CD70;
  if (!qword_1EC43CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD70);
  }

  return result;
}

unint64_t sub_1CA1DAACC()
{
  result = qword_1EC43CD78;
  if (!qword_1EC43CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD78);
  }

  return result;
}

unint64_t sub_1CA1DAB24()
{
  result = qword_1EC43CD80;
  if (!qword_1EC43CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD80);
  }

  return result;
}

unint64_t sub_1CA1DAB7C()
{
  result = qword_1EC43CD88;
  if (!qword_1EC43CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD88);
  }

  return result;
}

unint64_t sub_1CA1DABD4()
{
  result = qword_1EC43CD90;
  if (!qword_1EC43CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD90);
  }

  return result;
}

unint64_t sub_1CA1DAC2C()
{
  result = qword_1EC43CD98;
  if (!qword_1EC43CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CD98);
  }

  return result;
}

uint64_t sub_1CA1DAC80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4665727574616566 && a2 == 0xEB0000000067616CLL || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001CA1E07C0 == a2 || (sub_1CA1DD8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xEC000000504C5374)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CA1DD8D0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1CA1DAE20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CA1DD5F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 boundary];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1CA1DD730();
    v12 = v11;

    v13 = v10 == 0x6C616E7265747865 && v12 == 0xE800000000000000;
    if (v13 || (sub_1CA1DD8D0() & 1) != 0)
    {

      v14 = MEMORY[0x1E69860E0];
LABEL_8:
      (*(v5 + 104))(v7, *v14, v4);
      sub_1CA1DD610();
      v15 = sub_1CA1DD620();
      return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    }

    if (v10 == 0x6C616E7265746E69 && v12 == 0xE800000000000000)
    {
    }

    else
    {
      v18 = sub_1CA1DD8D0();

      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v14 = MEMORY[0x1E69860E8];
    goto LABEL_8;
  }

LABEL_14:
  v19 = sub_1CA1DD620();
  v20 = *(*(v19 - 8) + 56);

  return v20(a2, 1, 1, v19);
}

uint64_t ConfigurationJSONProvider.__allocating_init(dataProvider:)(void *a1)
{
  sub_1CA1CF7F0(a1, v8);
  v6 = &type metadata for ConfigurationNodeReader;
  v7 = &protocol witness table for ConfigurationNodeReader;
  v2 = swift_allocObject();
  *&v5 = v2;
  *(v2 + 40) = &type metadata for ConfigurationDirectoryURLBuilder;
  *(v2 + 48) = &protocol witness table for ConfigurationDirectoryURLBuilder;
  *(v2 + 16) = 0;
  sub_1CA1CF854(a1);
  type metadata accessor for ConfigurationJSONProvider();
  v3 = swift_allocObject();
  sub_1CA1CF6B4(v8, v3 + 16);
  sub_1CA1CF6B4(&v5, v3 + 56);
  return v3;
}

uint64_t sub_1CA1DB11C(uint64_t a1)
{
  v2 = v1;
  v37 = *MEMORY[0x1E69E9840];
  v4 = v1[5];
  v5 = v1[6];
  sub_1CA1D7AF0(v1 + 2, v4);
  v6 = (*(v5 + 8))(a1, v4, v5);
  if (v7 >> 60 != 15)
  {
    v8 = v6;
    v9 = v7;
    v10 = objc_opt_self();
    v11 = sub_1CA1DD5D0();
    *&v34 = 0;
    v12 = [v10 JSONObjectWithData:v11 options:0 error:&v34];

    if (v12)
    {
      v13 = v34;
      sub_1CA1DD7F0();
      sub_1CA1D8370(v8, v9);
      swift_unknownObjectRelease();
      sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
      if (swift_dynamicCast())
      {
        return v33;
      }
    }

    else
    {
      v14 = v34;
      v15 = sub_1CA1DD550();

      swift_willThrow();
      LOBYTE(v33) = 9;
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      swift_getErrorValue();
      v16 = sub_1CA1DD8E0();
      _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v33, &v34, v16, v17);

      sub_1CA1D8370(v8, v9);

      sub_1CA1D7DB0(&v34);
    }
  }

  v18 = v2[10];
  v19 = v2[11];
  sub_1CA1D7AF0(v2 + 7, v18);
  v20 = (*(v19 + 8))(a1, v18, v19);
  if (v21 >> 60 != 15)
  {
    v22 = v20;
    v23 = v21;
    v24 = objc_opt_self();
    v25 = sub_1CA1DD5D0();
    *&v34 = 0;
    v26 = [v24 JSONObjectWithData:v25 options:0 error:&v34];

    if (v26)
    {
      v27 = v34;
      sub_1CA1DD7F0();
      sub_1CA1D8370(v22, v23);
      swift_unknownObjectRelease();
      sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
      if (swift_dynamicCast())
      {
        return v33;
      }
    }

    else
    {
      v29 = v34;
      v30 = sub_1CA1DD550();

      swift_willThrow();
      LOBYTE(v33) = 9;
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      swift_getErrorValue();
      v31 = sub_1CA1DD8E0();
      _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v33, &v34, v31, v32);

      sub_1CA1D8370(v22, v23);

      sub_1CA1D7DB0(&v34);
    }
  }

  return 0;
}

uint64_t ConfigurationJSONProvider.deinit()
{
  sub_1CA1CF854((v0 + 16));
  sub_1CA1CF854((v0 + 56));
  return v0;
}

uint64_t sub_1CA1DB4D4(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v4 = a1[4];
  sub_1CA1D7AF0(a1, v3);
  v5 = (*(v4 + 8))(a2, v3, v4);
  if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_opt_self();
    v10 = sub_1CA1DD5D0();
    *&v19[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:0 error:v19];

    if (v11)
    {
      v12 = *&v19[0];
      sub_1CA1DD7F0();
      sub_1CA1D8370(v7, v8);
      swift_unknownObjectRelease();
      sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
      if (swift_dynamicCast())
      {
        return v18;
      }
    }

    else
    {
      v14 = *&v19[0];
      v15 = sub_1CA1DD550();

      swift_willThrow();
      LOBYTE(v18) = 9;
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      swift_getErrorValue();
      v16 = sub_1CA1DD8E0();
      _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v18, v19, v16, v17);

      sub_1CA1D8370(v7, v8);

      sub_1CA1D7DB0(v19);
    }
  }

  return 0;
}

uint64_t ConfigurableJSONSource.__allocating_init(path:dataProvider:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  ConfigurableJSONSource.init(path:dataProvider:)(a1, a2);
  return v4;
}

uint64_t ConfigurableJSONSource.json.getter()
{
  v1 = v0;
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 56);
  v3 = v2[5];
  v4 = v2[6];
  sub_1CA1D7AF0(v2 + 2, v3);
  v5 = (*(v4 + 8))(v0 + 16, v3, v4);
  if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    v9 = objc_opt_self();
    v10 = sub_1CA1DD5D0();
    *&v33 = 0;
    v11 = [v9 JSONObjectWithData:v10 options:0 error:&v33];

    if (v11)
    {
      v12 = v33;
      sub_1CA1DD7F0();
      sub_1CA1D8370(v7, v8);
      swift_unknownObjectRelease();
      sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
      if (swift_dynamicCast())
      {
        return v32;
      }
    }

    else
    {
      v13 = v33;
      v14 = sub_1CA1DD550();

      swift_willThrow();
      LOBYTE(v32) = 9;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      swift_getErrorValue();
      v15 = sub_1CA1DD8E0();
      _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v32, &v33, v15, v16);

      sub_1CA1D8370(v7, v8);

      sub_1CA1D7DB0(&v33);
    }
  }

  v17 = v2[10];
  v18 = v2[11];
  sub_1CA1D7AF0(v2 + 7, v17);
  v19 = (*(v18 + 8))(v1 + 16, v17, v18);
  if (v20 >> 60 != 15)
  {
    v21 = v19;
    v22 = v20;
    v23 = objc_opt_self();
    v24 = sub_1CA1DD5D0();
    *&v33 = 0;
    v25 = [v23 JSONObjectWithData:v24 options:0 error:&v33];

    if (v25)
    {
      v26 = v33;
      sub_1CA1DD7F0();
      sub_1CA1D8370(v21, v22);
      swift_unknownObjectRelease();
      sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
      if (swift_dynamicCast())
      {
        return v32;
      }
    }

    else
    {
      v28 = v33;
      v29 = sub_1CA1DD550();

      swift_willThrow();
      LOBYTE(v32) = 9;
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      swift_getErrorValue();
      v30 = sub_1CA1DD8E0();
      _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v32, &v33, v30, v31);

      sub_1CA1D8370(v21, v22);

      sub_1CA1D7DB0(&v33);
    }
  }

  return 0;
}

uint64_t ConfigurableJSONSource.deinit()
{
  sub_1CA1CF854((v0 + 16));

  return v0;
}

uint64_t sub_1CA1DBB0C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  result = sub_1CA1DB4D4((v2 + 16), v1 + 16);
  if (!result)
  {

    return sub_1CA1DB4D4((v2 + 56), v1 + 16);
  }

  return result;
}

uint64_t sub_1CA1DBB90()
{
  v1 = sub_1CA1DD6A0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *(v0 + 24);
  os_unfair_lock_lock(v2 + 4);
  if (!*(v0 + 32))
  {
    sub_1CA1DD6D0();
    v3 = *(v0 + 16);
    sub_1CA1DD690();
    *(v0 + 32) = sub_1CA1DD680();
  }

  v4 = *(v0 + 32);

  os_unfair_lock_unlock(v2 + 4);
  return v4;
}

uint64_t ClientConfigurationXPCRequester.deinit()
{
  if (sub_1CA1DBB90())
  {
    sub_1CA1DD6B0();
  }

  return v0;
}

uint64_t ClientConfigurationXPCRequester.__deallocating_deinit()
{
  if (sub_1CA1DBB90())
  {
    sub_1CA1DD6B0();
  }

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1CA1DBDFC(void *a1)
{
  v2 = sub_1CA1DD6F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if ([objc_opt_self() isMainThread])
  {
    v6 = sub_1CA1DD720();
    APSimulateCrash();
  }

  else
  {
    if (sub_1CA1DBB90())
    {
      sub_1CA1D7AF0(a1, a1[3]);
      sub_1CA1DD6C0();
      sub_1CA1DC078();
      sub_1CA1DD6E0();
      (*(v3 + 8))(v5, v2);

      return *&v9[0];
    }

    v11 = 5;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v11, v9, 0xD000000000000016, 0x80000001CA1E08A0);
    sub_1CA1D7DB0(v9);
  }

  return 0;
}

unint64_t sub_1CA1DC078()
{
  result = qword_1EC43CDA8;
  if (!qword_1EC43CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CDA8);
  }

  return result;
}

id ProductionConfigSystemPurposeDataSource.configFor(_:)(uint64_t a1)
{
  v1 = [objc_opt_self() purposeConfig_];

  return v1;
}

id sub_1CA1DC1AC(uint64_t a1)
{
  v1 = [objc_opt_self() purposeConfig_];

  return v1;
}

uint64_t ConfigurationError.hashValue.getter()
{
  v1 = *v0;
  sub_1CA1DD930();
  MEMORY[0x1CCA9B3E0](v1);
  return sub_1CA1DD950();
}

unint64_t ConfigurationError.errorDescription.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0xD000000000000016;
    if (v1 != 8)
    {
      v5 = 0xD000000000000018;
    }

    if (v1 == 7)
    {
      v5 = 0xD00000000000001CLL;
    }

    v6 = 0xD000000000000015;
    if (v1 == 5)
    {
      v6 = 0xD00000000000001FLL;
    }

    if (*v0 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    if (v1 != 3)
    {
      v2 = 0xD000000000000026;
    }

    if (v1 == 2)
    {
      v2 = 0xD00000000000001CLL;
    }

    v3 = 0xD000000000000021;
    if (!*v0)
    {
      v3 = 0xD000000000000029;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

void _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  v8 = sub_1CA1DD7B0();
  sub_1CA1D5C3C();
  v9 = sub_1CA1DD7C0();
  sub_1CA1DC91C(a2, v28);
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 138412802;
    sub_1CA1DC768();
    swift_allocError();
    *v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v14;
    *v11 = v14;
    *(v10 + 12) = 2080;
    sub_1CA1DC91C(v28, v24);
    v15 = v25;
    if (v25)
    {
      v16 = v26;
      sub_1CA1D7AF0(v24, v25);
      v17 = (*(v16 + 24))(v15, v16);
      v19 = v18;
      sub_1CA1CF854(v24);
    }

    else
    {
      sub_1CA1DC98C(v24, &qword_1EC43CC98, &unk_1CA1DF7A0);
      v19 = 0xE700000000000000;
      v17 = 0x6E776F6E6B6E55;
    }

    sub_1CA1DC98C(v28, &qword_1EC43CC98, &unk_1CA1DF7A0);
    v20 = sub_1CA1D6E14(v17, v19, &v27);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2080;
    if (a4)
    {
      v21 = a3;
    }

    else
    {
      v21 = 0x7263736564206F4ELL;
    }

    if (a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = 0xEE006E6F69747069;
    }

    v23 = sub_1CA1D6E14(v21, v22, &v27);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_1CA1CE000, v9, v8, "Congfiguration Error: %@ Node: %s. Error description: %s.", v10, 0x20u);
    sub_1CA1DC98C(v11, &unk_1EC43CDC0, "j ");
    MEMORY[0x1CCA9BA70](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1CCA9BA70](v12, -1, -1);
    MEMORY[0x1CCA9BA70](v10, -1, -1);
  }

  else
  {

    sub_1CA1DC98C(v28, &qword_1EC43CC98, &unk_1CA1DF7A0);
  }
}

unint64_t sub_1CA1DC710()
{
  result = qword_1EC43CDB0;
  if (!qword_1EC43CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CDB0);
  }

  return result;
}

unint64_t sub_1CA1DC768()
{
  result = qword_1EC43CDB8;
  if (!qword_1EC43CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC43CDB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CA1DC91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA1D66A0(&qword_1EC43CC98, &unk_1CA1DF7A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA1DC98C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1CA1D66A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ConfigurationNodeReader.fetchData(for:)(void *a1)
{
  v60 = a1;
  v65 = *MEMORY[0x1E69E9840];
  v58 = sub_1CA1DD560();
  v2 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA1D66A0(&qword_1EC43CC78, &qword_1CA1DEE30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v55 - v6;
  v8 = sub_1CA1DD5B0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v59 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - v15;
  v18 = v1[3];
  v17 = v1[4];
  sub_1CA1D7AF0(v1, v18);
  (*(v17 + 8))(v18, v17);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v16, v7, v8);
    v19 = v9;
    v20 = v60[3];
    v21 = v60[4];
    sub_1CA1D7AF0(v60, v20);
    (*(v21 + 24))(v20, v21);
    sub_1CA1DD590();

    *&v62 = 0xD000000000000016;
    *(&v62 + 1) = 0x80000001CA1E0B20;
    v22 = v58;
    (*(v2 + 104))(v4, *MEMORY[0x1E6968F70], v58);
    sub_1CA1D664C();
    sub_1CA1DD5A0();
    (*(v2 + 8))(v4, v22);
    v23 = sub_1CA1DD5C0();
    v25 = v24;
    v56 = v16;
    v26 = v59;
    v27 = *(v19 + 8);
    v58 = v8;
    v57 = v19 + 8;
    v27(v12, v8);
    v28 = v27;
    v29 = objc_opt_self();
    v30 = sub_1CA1DD5D0();
    *&v62 = 0;
    v31 = [v29 JSONObjectWithData:v30 options:0 error:&v62];

    if (v31)
    {
      v32 = v62;
      sub_1CA1DD7F0();
      swift_unknownObjectRelease();
      sub_1CA1D66A0(&qword_1EC43CDA0, &qword_1CA1DFA70);
      v33 = v26;
      if (swift_dynamicCast())
      {
        v34 = v61;
        v35 = v58;
        if (*(v61 + 16))
        {
          v36 = sub_1CA1DD30C(0x69747265706F7270, 0xEA00000000007365);
          v37 = v60;
          if (v38)
          {
            sub_1CA1D75FC(*(v34 + 56) + 32 * v36, &v62);

            if (swift_dynamicCast())
            {
              v39 = sub_1CA1DD700();

              *&v62 = 0;
              v40 = [v29 dataWithJSONObject:v39 options:0 error:&v62];

              v41 = v62;
              if (v40)
              {
                v42 = sub_1CA1DD5E0();
                sub_1CA1D8384(v23, v25);

                v43 = v58;
                v28(v33, v58);
                v28(v56, v43);
                return v42;
              }

              v51 = v41;
              v52 = sub_1CA1DD550();

              swift_willThrow();
              LOBYTE(v61) = 8;
              v64 = 0;
              v62 = 0u;
              v63 = 0u;
              swift_getErrorValue();
              v53 = sub_1CA1DD8E0();
              _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v61, &v62, v53, v54);

              sub_1CA1D8384(v23, v25);

              sub_1CA1DC98C(&v62, &qword_1EC43CC98, &unk_1CA1DF7A0);
              v50 = v33;
              v49 = v58;
              goto LABEL_13;
            }
          }

          else
          {
          }
        }

        else
        {

          v37 = v60;
        }

        LOBYTE(v61) = 1;
        sub_1CA1CF7F0(v37, &v62);
        _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v61, &v62, 0xD00000000000001DLL, 0x80000001CA1E0B40);
        sub_1CA1D8384(v23, v25);
        sub_1CA1DC98C(&v62, &qword_1EC43CC98, &unk_1CA1DF7A0);
        v27(v33, v35);
        v27(v56, v35);
        return 0;
      }

      sub_1CA1D8384(v23, v25);
      v49 = v58;
    }

    else
    {
      v45 = v62;
      v46 = sub_1CA1DD550();

      swift_willThrow();
      LOBYTE(v61) = 9;
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      swift_getErrorValue();
      v47 = sub_1CA1DD8E0();
      _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v61, &v62, v47, v48);

      sub_1CA1D8384(v23, v25);

      sub_1CA1DC98C(&v62, &qword_1EC43CC98, &unk_1CA1DF7A0);
      v49 = v58;
      v33 = v26;
    }

    v50 = v33;
LABEL_13:
    v28(v50, v49);
    v28(v56, v49);
    return 0;
  }

  sub_1CA1DC98C(v7, &qword_1EC43CC78, &qword_1CA1DEE30);
  LOBYTE(v61) = 0;
  sub_1CA1CF7F0(v60, &v62);
  _s21APConfigurationSystem25ConfigurationErrorManagerO03logD0_13configuration11descriptionyAA0cD0O_AA11PathBuilder_pSgSSSgtFZ_0(&v61, &v62, 0, 0);
  sub_1CA1DC98C(&v62, &qword_1EC43CC98, &unk_1CA1DF7A0);
  return 0;
}

unint64_t sub_1CA1DD30C(uint64_t a1, uint64_t a2)
{
  sub_1CA1DD930();
  sub_1CA1DD770();
  v4 = sub_1CA1DD950();

  return sub_1CA1DD384(a1, a2, v4);
}

unint64_t sub_1CA1DD384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1CA1DD8D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

__n128 sub_1CA1DD43C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CA1DD450(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA1DD498(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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