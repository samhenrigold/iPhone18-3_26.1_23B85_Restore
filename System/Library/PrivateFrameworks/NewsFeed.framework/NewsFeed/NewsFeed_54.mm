uint64_t sub_1D6013D80@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1D7263D5C();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6013DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D27D10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D6013E2C(uint64_t a1)
{
  result = sub_1D6013E54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6013E54()
{
  result = qword_1EC8822F8;
  if (!qword_1EC8822F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822F8);
  }

  return result;
}

unint64_t sub_1D6013EA8(void *a1)
{
  a1[1] = sub_1D5C35218();
  a1[2] = sub_1D5C3526C();
  result = sub_1D5C352C0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6013EE4()
{
  result = qword_1EC882300;
  if (!qword_1EC882300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882300);
  }

  return result;
}

unint64_t sub_1D6013F48()
{
  result = qword_1EDF18AE0;
  if (!qword_1EDF18AE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF18AE0);
  }

  return result;
}

uint64_t sub_1D6013FAC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1D6014064(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1D7257CFC();
      swift_allocObject();
      sub_1D7257CBC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D725860C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1D6014104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1D6013C60(sub_1D601426C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1D601416C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D7257CFC();
  swift_allocObject();
  result = sub_1D7257C9C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D725860C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D60141E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D7257CFC();
  swift_allocObject();
  result = sub_1D7257C9C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

_BYTE *sub_1D601428C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1D6014334(uint64_t a1, uint64_t a2)
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *BundleSessionManager.__allocating_init(bundleSessionProvider:newsletterManager:appConfigurationManager:familySharingStatusManager:featureAvailability:bundleSubscriptionManager:bundleSubscriptionDetectionManager:sceneManager:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v10 = v9;
  v52 = a7;
  v53 = a8;
  v54 = a6;
  v55 = a1;
  v51 = a5;
  v58 = a3;
  v59 = a4;
  v56 = a9;
  v57 = a2;
  v13 = type metadata accessor for BundleSessionCache(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v51 - v19;
  v21 = objc_allocWithZone(v10);
  *&v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_observers] = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_notificationCenter;
  v23 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v24 = sub_1D726203C();
  v25 = [v23 initWithBundleIdentifier_];

  *&v21[v22] = v25;
  v26 = &v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_cachedBundleSessionKey];
  *v26 = 0xD000000000000015;
  *(v26 + 1) = 0x80000001D73C5F40;
  v27 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager__sessionCache;
  swift_storeEnumTagMultiPayload();
  sub_1D5B79BDC(v20, v16, type metadata accessor for BundleSessionCache);
  sub_1D5B5D86C(0, &qword_1EDF17AC8, type metadata accessor for BundleSessionCache, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  v28 = sub_1D725B94C();
  sub_1D5B79C44(v20, type metadata accessor for BundleSessionCache);
  *&v21[v27] = v28;
  v29 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager__sceneIsActive;
  LOBYTE(v60[0]) = 1;
  sub_1D5B79CA4(0, &qword_1EDF3B9E0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  *&v21[v29] = sub_1D725B94C();
  sub_1D5B68374(a1, &v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider]);
  v30 = v58;
  *&v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_newsletterManager] = v57;
  *&v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_appConfigurationManager] = v30;
  v31 = &v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_familySharingStatusManager];
  v32 = v51;
  *v31 = v59;
  v31[1] = v32;
  sub_1D5B68374(a6, &v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability]);
  v33 = v53;
  *&v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionManager] = v52;
  sub_1D5B68374(v33, &v21[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionDetectionManager]);
  v61.receiver = v21;
  v61.super_class = v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = objc_msgSendSuper2(&v61, sel_init);
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 defaultCenter];
  v38 = sub_1D726203C();
  [v37 addObserver:v36 selector:sel_familySharingStatusDidChange name:v38 object:0];

  v39 = [v35 defaultCenter];
  v40 = v36;
  v41 = sub_1D726203C();
  [v39 addObserver:v40 selector:sel_resetSession name:v41 object:0];

  v42 = *&v40[OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_notificationCenter];
  v43 = v40;
  [v42 setPrivateDelegate_];
  [v57 addObserver_];
  v44 = v33[4];
  v45 = v33;
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v46 = *(v44 + 16);
  v47 = v43;
  v46();

  v48 = v56;
  __swift_project_boxed_opaque_existential_1(v56, v56[3]);
  sub_1D5B7A064(&qword_1EDF0F468, v49, type metadata accessor for BundleSessionManager, &protocol conformance descriptor for BundleSessionManager);
  sub_1D725B54C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v47;
}

uint64_t BundleSessionManager.refreshSession(with:trigger:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for BundleSessionCache(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  *(v4 + 64) = swift_task_alloc();
  v6 = type metadata accessor for BundleSession(0);
  *(v4 + 72) = v6;
  v7 = *(v6 - 8);
  *(v4 + 80) = v7;
  *(v4 + 88) = *(v7 + 64);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 136) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1D6014AEC, 0, 0);
}

uint64_t sub_1D6014AEC()
{
  v16 = v0;
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  *(v0 + 120) = __swift_project_value_buffer(v1, qword_1EDFFC720);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "BundleSessionManager will attempt to refresh session.", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 24);

  v15[0] = v5;
  if (sub_1D6015400(v6, v15))
  {
    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D5B42000, v7, v8, "BundleSessionManager will rebuild session.", v9, 2u);
      MEMORY[0x1DA6FD500](v9, -1, -1);
    }

    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_1D6014D98;
    v11 = *(v0 + 16);

    return sub_1D6015AB8(v11);
  }

  else
  {
    sub_1D6019CD8();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D6014D98()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6014F1C, 0, 0);
  }
}

uint64_t sub_1D6014F1C()
{
  v37 = v0;
  sub_1D5B79BDC(v0[2], v0[14], type metadata accessor for BundleSession);
  v1 = sub_1D725C3FC();
  v2 = sub_1D7262EDC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136315138;
    v7 = BundleSession.description.getter();
    v9 = v8;
    sub_1D5B79C44(v4, type metadata accessor for BundleSession);
    v10 = sub_1D5BC5100(v7, v9, &v36);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1D5B42000, v1, v2, "BundleSessionManager did rebuild rebuild session: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  else
  {

    sub_1D5B79C44(v4, type metadata accessor for BundleSession);
  }

  v35 = v0[12];
  v11 = v0[10];
  v34 = v0[13];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];
  v15 = v0[4];
  v33 = v0[6];
  v16 = v0[2];
  sub_1D5B79BDC(v16, v13, type metadata accessor for BundleSession);
  v17 = *(v11 + 56);
  v17(v13, 0, 1, v12);
  sub_1D60161FC(v13);
  sub_1D5B88A40(v13, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  sub_1D5B79BDC(v16, v14, type metadata accessor for BundleSession);
  v17(v14, 0, 1, v12);
  swift_storeEnumTagMultiPayload();
  sub_1D5B79BDC(v14, v33, type metadata accessor for BundleSessionCache);

  sub_1D725B97C();

  sub_1D5B79C44(v14, type metadata accessor for BundleSessionCache);
  sub_1D5B79BDC(v16, v34, type metadata accessor for BundleSession);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  sub_1D5E31B7C(v34, v19 + v18);
  v20 = v15;
  sub_1D725BFFC();

  sub_1D5B79BDC(v16, v35, type metadata accessor for BundleSession);
  v21 = sub_1D725C3FC();
  v22 = sub_1D7262EDC();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[12];
  if (v23)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315138;
    v27 = BundleSession.description.getter();
    v29 = v28;
    sub_1D5B79C44(v24, type metadata accessor for BundleSession);
    v30 = sub_1D5BC5100(v27, v29, &v36);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1D5B42000, v21, v22, "BundleSessionManager successfully refreshed session: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1DA6FD500](v26, -1, -1);
    MEMORY[0x1DA6FD500](v25, -1, -1);
  }

  else
  {

    sub_1D5B79C44(v24, type metadata accessor for BundleSession);
  }

  v31 = v0[1];

  return v31();
}

BOOL sub_1D6015400(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for BundleSessionCache(0);
  *&v8 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *a2;
  if (![a1 isSubscribed])
  {
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D725C42C();
    __swift_project_value_buffer(v14, qword_1EDFFC720);
    v15 = sub_1D725C3FC();
    v16 = sub_1D7262EBC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D5B42000, v15, v16, "BundleSessionManager will not rebuild session because the user is not subscribed. Will reset any existing session.", v17, 2u);
      MEMORY[0x1DA6FD500](v17, -1, -1);
    }

    sub_1D6016C3C();
    sub_1D6019CD8();
    swift_allocError();
    v19 = 1;
    goto LABEL_20;
  }

  sub_1D725B96C();

  if (v43[0] != 1)
  {
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725C42C();
    __swift_project_value_buffer(v20, qword_1EDFFC720);
    v21 = sub_1D725C3FC();
    v22 = sub_1D7262EBC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D5B42000, v21, v22, "BundleSessionManager will not rebuild session because the application is not active.", v23, 2u);
      MEMORY[0x1DA6FD500](v23, -1, -1);
    }

    sub_1D6019CD8();
    swift_allocError();
    v19 = 3;
LABEL_20:
    *v18 = v19;
    swift_willThrow();
    return v13;
  }

  sub_1D5B68374(v3 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider, v43);
  sub_1D601A450();
  type metadata accessor for BundleSessionDemoProvider();
  if (swift_dynamicCast())
  {

    return (v11 & 1) == 0 && v11 != 2;
  }

  else
  {

    sub_1D725B96C();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDF175C0 != -1)
        {
          swift_once();
        }

        v26 = sub_1D725C42C();
        __swift_project_value_buffer(v26, qword_1EDFFC720);
        v27 = sub_1D725C3FC();
        v28 = sub_1D7262EDC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1D5B42000, v27, v28, "BundleSessionManager will rebuild session because the session should fetch.", v29, 2u);
          MEMORY[0x1DA6FD500](v29, -1, -1);
        }

        sub_1D5B88A40(v10, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
        return 1;
      }

      else
      {
        if (qword_1EDF175C0 != -1)
        {
          swift_once();
        }

        v34 = sub_1D725C42C();
        __swift_project_value_buffer(v34, qword_1EDFFC720);
        v35 = sub_1D725C3FC();
        v36 = sub_1D7262EDC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1D5B42000, v35, v36, "BundleSessionManager will rebuild session because the session is unfetched.", v37, 2u);
          MEMORY[0x1DA6FD500](v37, -1, -1);
        }

        return 1;
      }
    }

    else if (sub_1D601826C())
    {
      if (qword_1EDF175C0 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725C42C();
      __swift_project_value_buffer(v30, qword_1EDFFC720);
      v31 = sub_1D725C3FC();
      v32 = sub_1D7262EDC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D5B42000, v31, v32, "BundleSessionManager will rebuild session because the current session is expired.", v33, 2u);
        MEMORY[0x1DA6FD500](v33, -1, -1);
      }

      sub_1D5B79C44(v10, type metadata accessor for BundleSessionCache);
      return 1;
    }

    else
    {
      if (qword_1EDF175C0 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725C42C();
      __swift_project_value_buffer(v38, qword_1EDFFC720);
      v39 = sub_1D725C3FC();
      v40 = sub_1D7262EDC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1D5B42000, v39, v40, "BundleSessionManager will not rebuild session because the current session is not expired.", v41, 2u);
        MEMORY[0x1DA6FD500](v41, -1, -1);
      }

      sub_1D5B79C44(v10, type metadata accessor for BundleSessionCache);
      return 0;
    }
  }
}

uint64_t sub_1D6015AB8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for BundleSession(0);
  v2[8] = swift_task_alloc();
  v3 = sub_1D725891C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6015BA8, 0, 0);
}

uint64_t sub_1D6015BA8()
{
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  *(v0 + 96) = __swift_project_value_buffer(v1, qword_1EDFFC720);
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, v2, v3, "BundleSessionManager will rebuild session.", v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 48);

  *(v0 + 104) = sub_1D6018624();
  sub_1D60188C0(v5);
  v7 = *(v6 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 24);
  v8 = *(v6 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability), v7);
  if ((*(v8 + 176))(v7, v8))
  {
    v9 = (sub_1D601826C() & 1) != 0 && !sub_1D6019844();
  }

  else
  {
    v9 = 2;
  }

  *(v0 + 120) = v9;
  if (qword_1EDF09030 != -1)
  {
    swift_once();
  }

  sub_1D725B96C();

  v10 = *(v0 + 32);
  if (v10)
  {
    v11 = [*(v0 + 32) authorizationStatus];

    v12 = v11 == 1;
    if (v11 == 2)
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 121) = v12;
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_1D6015E18;

  return sub_1D6018B34(v0 + 16);
}

uint64_t sub_1D6015E18()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6015F14, 0, 0);
}

uint64_t sub_1D6015F14()
{
  v32 = v0;
  v29 = *(v0 + 24);
  v30 = *(v0 + 16);
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_newsletterManager);
  v2 = [v1 cachedNewsletters];
  if (v2)
  {
    v3 = v2;
    sub_1D5B5A498(0, &qword_1EDF1AC18, 0x1E69B53F0);
    v28 = sub_1D726267C();
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v0 + 121);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v27 = *(v0 + 64);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  v11 = [v1 isSubscribed];
  v12 = sub_1D6019090();
  *v10 = v5;
  (*(v7 + 32))(&v10[v9[5]], v6, v8);
  v10[v9[6]] = v4;
  v10[v9[7]] = v26;
  v13 = &v10[v9[8]];
  *v13 = v30;
  *(v13 + 1) = v29;
  *&v10[v9[9]] = v28;
  v10[v9[10]] = v11;
  v10[v9[11]] = v12 & 1;
  sub_1D5B79BDC(v10, v27, type metadata accessor for BundleSession);
  v14 = sub_1D725C3FC();
  v15 = sub_1D7262EDC();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 64);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315138;
    v20 = BundleSession.description.getter();
    v22 = v21;
    sub_1D5B79C44(v17, type metadata accessor for BundleSession);
    v23 = sub_1D5BC5100(v20, v22, &v31);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1D5B42000, v14, v15, "BundleSessionManager rebuilt session with value: %s.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1DA6FD500](v19, -1, -1);
    MEMORY[0x1DA6FD500](v18, -1, -1);
  }

  else
  {

    sub_1D5B79C44(v17, type metadata accessor for BundleSession);
  }

  v24 = *(v0 + 8);

  return v24();
}

void sub_1D60161FC(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B5D86C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v47 = &v42 - v6;
  v7 = type metadata accessor for BundleSession(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v43 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5C1FDAC(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, v3);
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v42 - v21);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - v25;
  BundleSessionManager.cachedSession.getter(&v42 - v25);
  v27 = *(v12 + 56);
  v46 = a1;
  sub_1D5B8866C(a1, v15);
  sub_1D5B8866C(v26, &v15[v27]);
  v28 = *(v8 + 48);
  if (v28(v15, 1, v7) != 1)
  {
    sub_1D5B8866C(v15, v22);
    if (v28(&v15[v27], 1, v7) != 1)
    {
      v35 = v43;
      sub_1D5E31B7C(&v15[v27], v43);
      v36 = _s8NewsFeed13BundleSessionV2eeoiySbAC_ACtFZ_0(v22, v35);
      sub_1D5B79C44(v35, type metadata accessor for BundleSession);
      v37 = MEMORY[0x1E69E6720];
      sub_1D5B88A40(v26, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
      sub_1D5B79C44(v22, type metadata accessor for BundleSession);
      sub_1D5B88A40(v15, &qword_1EDF33290, type metadata accessor for BundleSession, v37, sub_1D5B5D86C);
      if (v36)
      {
        goto LABEL_9;
      }

LABEL_7:
      v29 = sub_1D726294C();
      v30 = v47;
      (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
      v31 = v45;
      sub_1D5B8866C(v46, v45);
      v32 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      sub_1D6014334(v31, v33 + v32);
      *(v33 + ((v17 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
      v34 = v1;
      sub_1D67E16B0(0, 0, v30, &unk_1D728F2B8, v33);

      sub_1D5B88A40(v30, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5B5D86C);
      return;
    }

    sub_1D5B88A40(v26, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    sub_1D5B79C44(v22, type metadata accessor for BundleSession);
LABEL_6:
    sub_1D5B79C44(v15, sub_1D5C1FDAC);
    goto LABEL_7;
  }

  sub_1D5B88A40(v26, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  if (v28(&v15[v27], 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_1D5B88A40(v15, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
LABEL_9:
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725C42C();
  __swift_project_value_buffer(v38, qword_1EDFFC720);
  v39 = sub_1D725C3FC();
  v40 = sub_1D7262EDC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1D5B42000, v39, v40, "BundleSessionManager will not write session to disk since there is no change.", v41, 2u);
    MEMORY[0x1DA6FD500](v41, -1, -1);
  }
}

void sub_1D601689C(char *a1, uint64_t a2)
{
  v27 = a2;
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v26 = &v24 - v6;
  v7 = sub_1D7261B9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  *v11 = sub_1D726308C();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1D7261BBC();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    v14 = sub_1D7263BFC();
    if (!v14)
    {
      return;
    }

    goto LABEL_4;
  }

  v13 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_observers;
  swift_beginAccess();
  v2 = *&a1[v13];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    return;
  }

LABEL_4:
  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    v25 = a1;
    v28 = v2 & 0xC000000000000001;

    v15 = 0;
    v16 = v26;
    do
    {
      if (v28)
      {
        v17 = MEMORY[0x1DA6FB460](v15, v2);
      }

      else
      {
        v17 = *(v2 + 8 * v15 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 24);
        ObjectType = swift_getObjectType();
        v30[3] = type metadata accessor for BundleSessionManager();
        v30[4] = &protocol witness table for BundleSessionManager;
        v19 = v25;
        v30[0] = v25;
        sub_1D5B79BDC(v27, v16, type metadata accessor for BundleSession);
        v20 = type metadata accessor for BundleSession(0);
        (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
        v21 = v14;
        v22 = *(v18 + 8);
        v23 = v19;
        v22(v30, v16, ObjectType, v18);
        v14 = v21;

        swift_unknownObjectRelease();
        sub_1D5B88A40(v16, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
        __swift_destroy_boxed_opaque_existential_1(v30);
      }

      else
      {
      }

      ++v15;
    }

    while (v14 != v15);
  }
}

uint64_t sub_1D6016C3C()
{
  v0 = type metadata accessor for BundleSessionCache(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19 - v6;
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v19 - v10;
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D725C42C();
  __swift_project_value_buffer(v12, qword_1EDFFC720);
  v13 = sub_1D725C3FC();
  v14 = sub_1D7262EDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D5B42000, v13, v14, "BundleSessionManager will reset the session if it exists.", v15, 2u);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  v16 = type metadata accessor for BundleSession(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v11, 1, 1, v16);
  sub_1D60161FC(v11);
  sub_1D5B88A40(v11, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  v17(v7, 1, 1, v16);
  swift_storeEnumTagMultiPayload();
  sub_1D5B79BDC(v7, v3, type metadata accessor for BundleSessionCache);

  sub_1D725B97C();

  return sub_1D5B79C44(v7, type metadata accessor for BundleSessionCache);
}

id BundleSessionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D6017014(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64684;

  return BundleSessionManager.refreshSession(with:trigger:)(a1, a2, a3);
}

uint64_t BundleSessionManager.add(observer:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v23 = a1;
  v6 = sub_1D7261B9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  *v10 = sub_1D726308C();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v11 = sub_1D7261BBC();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v3 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_observers;
    swift_beginAccess();
    v6 = *(v4 + v3);
    v24 = MEMORY[0x1E69E7CC0];
    if (!(v6 >> 62))
    {
      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  v12 = sub_1D7263BFC();
LABEL_4:

  if (v12)
  {
    v21 = a2;
    v22 = v4;
    v13 = 0;
    a2 = v6 & 0xC000000000000001;
    while (1)
    {
      if (a2)
      {
        MEMORY[0x1DA6FB460](v13, v6);
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v16 = v24;
          a2 = v21;
          v4 = v22;
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v15 = Strong, swift_unknownObjectRelease(), v15 == v23))
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v13;
      if (v4 == v12)
      {
        goto LABEL_18;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(v4 + v3) = v16;

  type metadata accessor for BundleSessionManagerObserverProxy();
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v18 = swift_beginAccess();
  MEMORY[0x1DA6F9CE0](v18);
  if (*((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  return swift_endAccess();
}

double BundleSessionManager.remove(observer:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7261B9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  *v8 = sub_1D726308C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v9 = sub_1D7261BBC();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v9 = OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_observers;
    swift_beginAccess();
    v4 = *(v2 + v9);
    v17 = MEMORY[0x1E69E7CC0];
    if (!(v4 >> 62))
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v10 = sub_1D7263BFC();
LABEL_4:

  if (v10)
  {
    v15 = v9;
    v16 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v2, v4);
        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v2 = v16;
          v13 = v17;
          v9 = v15;
          goto LABEL_20;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v9 = Strong, swift_unknownObjectRelease(), v9 == a1))
      {
      }

      else
      {
        v9 = &v17;
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v2;
      if (v11 == v10)
      {
        goto LABEL_18;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(v2 + v9) = v13;

  return result;
}

Swift::Void __swiftcall BundleSessionManager.didUpdateNewsletters(from:to:)(Swift::OpaquePointer from, Swift::OpaquePointer to)
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for BundleSessionCache(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  if ((sub_1D635D3FC(from._rawValue, to._rawValue) & 1) == 0)
  {
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725C42C();
    __swift_project_value_buffer(v20, qword_1EDFFC720);
    v21 = sub_1D725C3FC();
    v22 = sub_1D7262EDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D5B42000, v21, v22, "BundleSessionManager did detect change in newsletter enrollment.", v23, 2u);
      MEMORY[0x1DA6FD500](v23, -1, -1);
    }

    sub_1D725B96C();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return;
      }
    }

    else
    {
      sub_1D6014334(v19, v7);
      sub_1D5B8866C(v7, v15);
      swift_storeEnumTagMultiPayload();
      sub_1D5B79BDC(v15, v11, type metadata accessor for BundleSessionCache);

      sub_1D725B97C();

      sub_1D5B79C44(v15, type metadata accessor for BundleSessionCache);
      v19 = v7;
    }

    sub_1D5B88A40(v19, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  }
}

uint64_t sub_1D6017BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for BundleSession(0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6017D18, 0, 0);
}

uint64_t sub_1D6017D18()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_1D5B8866C(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D5B88A40(v0[4], &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = sub_1D726203C();
    [v4 removeObjectForKey_];

    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v6 = sub_1D725C42C();
    __swift_project_value_buffer(v6, qword_1EDFFC720);
    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D5B42000, v7, v8, "BundleSessionManager removed session from disk.", v9, 2u);
      MEMORY[0x1DA6FD500](v9, -1, -1);
    }
  }

  else
  {
    sub_1D5E31B7C(v0[4], v0[7]);
    sub_1D72578EC();
    swift_allocObject();
    sub_1D72578DC();
    sub_1D5B7A064(&qword_1EDF11EB0, 255, type metadata accessor for BundleSession, &protocol conformance descriptor for BundleSession);
    v10 = sub_1D72578BC();
    v12 = v11;

    v13 = [objc_opt_self() standardUserDefaults];
    v14 = sub_1D725865C();
    v15 = sub_1D726203C();
    [v13 setObject:v14 forKey:v15];

    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725C42C();
    __swift_project_value_buffer(v16, qword_1EDFFC720);
    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EDC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[7];
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D5B42000, v17, v18, "BundleSessionManager wrote session to disk.", v21, 2u);
      MEMORY[0x1DA6FD500](v21, -1, -1);
    }

    sub_1D5B952F8(v10, v12);

    sub_1D5B79C44(v20, type metadata accessor for BundleSession);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D601826C()
{
  v1 = sub_1D725891C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v29 - v8;
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for BundleSession(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  BundleSessionManager.cachedSession.getter(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D5B88A40(v13, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    v19 = 1;
  }

  else
  {
    sub_1D5E31B7C(v13, v18);
    v20 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider + 24);
    v21 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider + 32);
    v22 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider), v20);
    v29[1] = v29;
    v23 = *(v20 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22, v22);
    v26 = v29 - v25;
    (*(v23 + 16))(v29 - v25, v24);
    (*(v21 + 8))(v20, v21);
    (*(v23 + 8))(v26, v20);
    sub_1D725880C();
    sub_1D72588CC();
    v19 = sub_1D725883C();
    v27 = *(v2 + 8);
    v27(v5, v1);
    v27(v9, v1);
    sub_1D5B79C44(v18, type metadata accessor for BundleSession);
  }

  return v19 & 1;
}

uint64_t sub_1D6018624()
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17[-1] - v7;
  v9 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 24);
  v10 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability), v9);
  if (((*(v10 + 176))(v9, v10) & 1) != 0 && (sub_1D601826C() & 1) != 0 && sub_1D6019844())
  {
    sub_1D5B68374(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSessionProvider, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    BundleSessionManager.cachedSession.getter(v8);
    v13 = (*(v12 + 16))(v8, v11, v12);
    sub_1D5B88A40(v8, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    BundleSessionManager.cachedSession.getter(v4);
    v14 = type metadata accessor for BundleSession(0);
    if ((*(*(v14 - 8) + 48))(v4, 1, v14) == 1)
    {
      sub_1D5B88A40(v4, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
      return 0;
    }

    else
    {
      v13 = *v4;
      sub_1D5B79C44(v4, type metadata accessor for BundleSession);
    }
  }

  return v13;
}

uint64_t sub_1D60188C0@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for BundleSession(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  BundleSessionManager.cachedSession.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D5B88A40(v6, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    return sub_1D72588CC();
  }

  else
  {
    sub_1D5E31B7C(v6, v11);
    v13 = *(v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 24);
    v14 = *(v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability), v13);
    if (((*(v14 + 176))(v13, v14) & 1) != 0 && (sub_1D601826C() & 1) != 0 && sub_1D6019844())
    {
      sub_1D72588CC();
    }

    else
    {
      v15 = *(v7 + 20);
      v16 = sub_1D725891C();
      (*(*(v16 - 8) + 16))(a1, &v11[v15], v16);
    }

    return sub_1D5B79C44(v11, type metadata accessor for BundleSession);
  }
}

uint64_t sub_1D6018B34(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1D5B5D86C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6018BF4, 0, 0);
}

uint64_t sub_1D6018BF4()
{
  if (qword_1EC87D7D0 != -1)
  {
    swift_once();
  }

  if (sub_1D72596AC())
  {
    sub_1D72596FC();
    sub_1D72596DC();
    if (qword_1EC87D7C0 != -1)
    {
      swift_once();
    }

    sub_1D72596CC();

    v1 = *(v0 + 80);
    sub_1D72596DC();
    if (qword_1EC87D7C8 != -1)
    {
      swift_once();
    }

    sub_1D72596CC();

    v2 = *(v0 + 40);
    if (v1 > 1)
    {
      v11 = *(v0 + 32);
      if (v1 == 2)
      {
        v12 = 0x8000000000000000;
      }

      else
      {
        v12 = 0x8000000000000001;
      }

      *v2 = v12;
      v2[1] = v11;
    }

    else if (v1)
    {
      *v2 = 0;
      v2[1] = 0;
    }

    else
    {
      *v2 = xmmword_1D728CF30;
    }

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    sub_1D726291C();
    v5 = sub_1D726294C();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    v7 = v4;
    v8 = sub_1D6BD1698(0, 0, v3, &unk_1D728F2D0, v6);
    *(v0 + 64) = v8;
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    sub_1D5B79CA4(0, &qword_1EDF33B80, &type metadata for FamilyStatus, MEMORY[0x1E69E6720]);
    *v9 = v0;
    v9[1] = sub_1D6018EE0;

    return MEMORY[0x1EEE6DA40](v0 + 16, v8, v10);
  }
}

uint64_t sub_1D6018EE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6018FF8, 0, 0);
}

uint64_t sub_1D6018FF8()
{
  v1 = vdup_n_s32(v0[1].i64[0] >> 1 == 0xFFFFFFFF);
  v2.i64[0] = v1.u32[0];
  v2.i64[1] = v1.u32[1];
  *v0[2].i64[1] = vbslq_s8(vcltzq_s64(vshlq_n_s64(v2, 0x3FuLL)), xmmword_1D728CF30, v0[1]);

  v3 = v0->i64[1];

  return v3();
}

uint64_t sub_1D6019090()
{
  v1 = v0;
  sub_1D5B5D86C(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v48 - v4;
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 24);
  v16 = *(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_featureAvailability), v15);
  if (((*(v16 + 176))(v15, v16) & 1) == 0)
  {
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725C42C();
    __swift_project_value_buffer(v26, qword_1EDFFC720);
    v22 = sub_1D725C3FC();
    v23 = sub_1D7262EDC();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "BundleSessionManager will not slot premium headlines because the feature is disabled.";
    goto LABEL_16;
  }

  v17 = [*(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionManager) cachedSubscription];
  v18 = [v17 isSubscribed];

  if (!v18)
  {
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725C42C();
    __swift_project_value_buffer(v27, qword_1EDFFC720);
    v22 = sub_1D725C3FC();
    v23 = sub_1D7262EDC();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "BundleSessionManager will not slot premium headlines because the user is not subscribed.";
    goto LABEL_16;
  }

  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionDetectionManager + 24);
  v20 = *(v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionDetectionManager + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_bundleSubscriptionDetectionManager), v19);
  (*(v20 + 8))(v19, v20);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5B88A40(v5, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B5D86C);
    if (qword_1EDF175C0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725C42C();
    __swift_project_value_buffer(v21, qword_1EDFFC720);
    v22 = sub_1D725C3FC();
    v23 = sub_1D7262EDC();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_17;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "BundleSessionManager will not slot premium headlines because the user is not a detected new subscriber.";
LABEL_16:
    _os_log_impl(&dword_1D5B42000, v22, v23, v25, v24, 2u);
    MEMORY[0x1DA6FD500](v24, -1, -1);
LABEL_17:

    return 0;
  }

  (*(v7 + 32))(v14, v5, v6);
  v29 = [*(v1 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_appConfigurationManager) appConfiguration];
  if (([v29 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    if (qword_1EDF175C0 == -1)
    {
LABEL_29:
      v40 = sub_1D725C42C();
      __swift_project_value_buffer(v40, qword_1EDFFC720);
      v41 = sub_1D725C3FC();
      v42 = sub_1D7262EDC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1D5B42000, v41, v42, "BundleSessionManager will not slot premium headlines because the slotting time could not be determined.", v43, 2u);
        MEMORY[0x1DA6FD500](v43, -1, -1);
      }

      (*(v7 + 8))(v14, v6);
      return 0;
    }

LABEL_38:
    swift_once();
    goto LABEL_29;
  }

  v30 = [v29 maximumPremiumHeadlinesGroupSlottingTime];
  swift_unknownObjectRelease();
  sub_1D725890C();
  sub_1D72587FC();
  v32 = v31;
  v33 = v31;
  v35 = *(v7 + 8);
  v7 += 8;
  v34 = v35;
  v35(v10, v6);
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v32 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v30 < v32)
  {
    if (qword_1EDF175C0 == -1)
    {
LABEL_25:
      v36 = sub_1D725C42C();
      __swift_project_value_buffer(v36, qword_1EDFFC720);
      v37 = sub_1D725C3FC();
      v38 = sub_1D7262EDC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1D5B42000, v37, v38, "BundleSessionManager will not slot premium headlines because the user is outside the eligible detection window.", v39, 2u);
        MEMORY[0x1DA6FD500](v39, -1, -1);
      }

      v34(v14, v6);
      return 0;
    }

LABEL_41:
    swift_once();
    goto LABEL_25;
  }

  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725C42C();
  __swift_project_value_buffer(v44, qword_1EDFFC720);
  v45 = sub_1D725C3FC();
  v46 = sub_1D7262EDC();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1D5B42000, v45, v46, "BundleSessionManager will slot premium headlines.", v47, 2u);
    MEMORY[0x1DA6FD500](v47, -1, -1);
  }

  v34(v14, v6);
  return 1;
}

BOOL sub_1D6019844()
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v14 - v3;
  v5 = type metadata accessor for BundleSession(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  BundleSessionManager.cachedSession.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D5B88A40(v4, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
    return 1;
  }

  else
  {
    sub_1D5E31B7C(v4, v9);
    v11 = [*(v0 + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_appConfigurationManager) appConfiguration];
    if ([v11 respondsToSelector_])
    {
      v12 = [v11 maximumBundleSessionValue];
      swift_unknownObjectRelease();
      v13 = *v9;
      sub_1D5B79C44(v9, type metadata accessor for BundleSession);
      return v13 < v12;
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1D5B79C44(v9, type metadata accessor for BundleSession);
      return 0;
    }
  }
}

uint64_t sub_1D6019A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D6019AB0, 0, 0);
}

uint64_t sub_1D6019AB0()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8NewsFeed20BundleSessionManager_familySharingStatusManager + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 48))(ObjectType, v1);
  v3 = *(v0 + 8);

  return v3();
}

double sub_1D6019B5C(char a1)
{

  sub_1D725B97C();

  return result;
}

uint64_t sub_1D6019BB0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D725B1DC();
}

uint64_t sub_1D6019C08()
{
  swift_getObjectType();

  return sub_1D725B20C();
}

uint64_t sub_1D6019C44(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_1D725B1FC();
}

uint64_t sub_1D6019C9C()
{
  swift_getObjectType();

  return sub_1D725B1AC();
}

unint64_t sub_1D6019CD8()
{
  result = qword_1EDF2E6C0[0];
  if (!qword_1EDF2E6C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2E6C0);
  }

  return result;
}

void sub_1D6019D2C()
{
  v1 = *(type metadata accessor for BundleSession(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D601689C(v2, v3);
}

uint64_t sub_1D6019D90(const char *a1)
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = type metadata accessor for BundleSessionCache(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v23 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v23 - v16;
  if (qword_1EDF175C0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725C42C();
  __swift_project_value_buffer(v18, qword_1EDFFC720);
  v19 = sub_1D725C3FC();
  v20 = sub_1D7262EDC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D5B42000, v19, v20, a1, v21, 2u);
    MEMORY[0x1DA6FD500](v21, -1, -1);
  }

  sub_1D725B96C();

  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    sub_1D6014334(v17, v5);
    sub_1D5B8866C(v5, v13);
    swift_storeEnumTagMultiPayload();
    sub_1D5B79BDC(v13, v9, type metadata accessor for BundleSessionCache);

    sub_1D725B97C();

    sub_1D5B79C44(v13, type metadata accessor for BundleSessionCache);
    v17 = v5;
    return sub_1D5B88A40(v17, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  }

  if (result == 1)
  {
    return sub_1D5B88A40(v17, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720], sub_1D5B5D86C);
  }

  return result;
}

uint64_t dispatch thunk of BundleSessionManagerType.refreshSession(with:trigger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64684;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1D601A248(uint64_t a1)
{
  v3 = v2;
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D5B64684;

  return sub_1D6017BFC(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_1D601A39C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6019A90(a1, v4, v5, v6);
}

unint64_t sub_1D601A450()
{
  result = qword_1EC882448;
  if (!qword_1EC882448)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC882448);
  }

  return result;
}

uint64_t type metadata accessor for FormatScopedOption(uint64_t a1)
{
  result = qword_1EC8824B0;
  if (!qword_1EC8824B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D601A500(uint64_t a1)
{
  result = type metadata accessor for FormatOption(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FormatCompilerSlotDefinition.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatCompilerSlotDefinition.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatCompilerSlotDefinition.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void FormatCompilerSlotDefinition.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void sub_1D601A7C8(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v6 = v5;
  v78 = a3;
  v10 = type metadata accessor for FormatCompilerProperty(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatPropertyDefinition(0);
  v76 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v79 = (&v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B58F2C(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v59 - v20;
  v69 = type metadata accessor for FormatCompilerSlotDefinitionItemSet(0);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for FormatSlotDefinition(0);
  MEMORY[0x1EEE9AC00](v66, v25);
  v68 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  v27 = a1[1];
  v29 = a2[3];
  v64 = a2[2];
  v65 = v28;
  v30 = a2[5];
  v63 = a2[4];
  v31 = a2[6];
  v32 = a2[7];
  v70 = a2;
  v33 = *(v31 + 16);
  v71 = v24;
  v72 = a5;
  v73 = v32;
  if (v33)
  {
    v59 = v21;
    v60 = v27;
    v80 = MEMORY[0x1E69E7CC0];
    v77 = v31;

    v61 = v30;

    v74 = v33;
    sub_1D6998644(0, v33, 0);
    v34 = 0;
    v35 = v80;
    v36 = v77;
    v75 = v77 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v37 = v29;
    while (v34 < *(v36 + 16))
    {
      sub_1D601C418(v75 + *(v11 + 72) * v34, v14);
      sub_1D7075A68(v78, v79);
      if (v6)
      {
        sub_1D601C5C4(v14, type metadata accessor for FormatCompilerProperty);

        *v62 = v6;
        return;
      }

      sub_1D601C5C4(v14, type metadata accessor for FormatCompilerProperty);
      v80 = v35;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D6998644((v38 > 1), v39 + 1, 1);
        v35 = v80;
      }

      ++v34;
      *(v35 + 16) = v39 + 1;
      sub_1D601C49C(v79, v35 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v39, type metadata accessor for FormatPropertyDefinition);
      v36 = v77;
      if (v74 == v34)
      {
        v29 = v37;
        v21 = v59;
        v40 = v60;
        v41 = v61;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = v27;

    v35 = MEMORY[0x1E69E7CC0];
    v41 = v30;
LABEL_11:
    v42 = type metadata accessor for FormatCompilerSlotDefinition(0);
    v43 = v70;
    v44 = v68;
    sub_1D5D67840(v70 + *(v42 + 44), &v68[*(v66 + 40)], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v45 = v64;
    *v44 = v65;
    v44[1] = v40;
    v44[2] = v45;
    v44[3] = v29;
    v44[4] = v63;
    v44[5] = v41;
    v46 = MEMORY[0x1E69E7CC0];
    v47 = v73;
    v44[6] = MEMORY[0x1E69E7CC0];
    v44[7] = v47;
    v44[8] = v35;
    sub_1D5D67840(v43 + *(v42 + 40), v21, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    v48 = *(v67 + 48);
    v49 = v69;
    if (v48(v21, 1, v69) == 1)
    {
      v50 = v21;
      v51 = *(v49 + 20);
      v52 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
      v53 = v71;
      (*(*(v52 - 8) + 56))(&v71[v51], 1, 1, v52);
      v54 = *(v49 + 24);
      v55 = sub_1D725B76C();
      (*(*(v55 - 8) + 56))(&v53[v54], 1, 1, v55);
      *v53 = v46;
      v56 = v48(v50, 1, v49);
      v57 = v72;
      if (v56 != 1)
      {
        sub_1D5CDE540(v50, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      }
    }

    else
    {
      v53 = v71;
      sub_1D601C49C(v21, v71, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      v57 = v72;
    }

    sub_1D601C49C(v44, v57, type metadata accessor for FormatSlotDefinition);
    v58 = type metadata accessor for FormatCompilingSlotDefinition(0);
    sub_1D601C49C(v53, v57 + *(v58 + 20), type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  }
}

void sub_1D601AE88(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v7 = v5;
  v42 = a3;
  v11 = type metadata accessor for FormatCompilerProperty(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatPropertyDefinition(0);
  v41 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v43 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[1];
  v37 = a1;
  v20 = *a1;
  v21 = *(type metadata accessor for FormatCompilingSlotDefinition(0) + 20);
  v38 = a2;
  v36 = a2 + v21;
  v22 = *(a2 + v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    v35 = a4;
    v33 = a5;
    v44[0] = MEMORY[0x1E69E7CC0];
    v34 = v19;

    v39 = v23;
    sub_1D6998644(0, v23, 0);
    v24 = 0;
    v25 = v44[0];
    v40 = v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    while (v24 < *(v22 + 16))
    {
      sub_1D601C418(v40 + *(v12 + 72) * v24, v15);
      sub_1D7075A68(v42, v43);
      if (v7)
      {
        sub_1D601C5C4(v15, type metadata accessor for FormatCompilerProperty);

        a4 = v35;
        goto LABEL_13;
      }

      sub_1D601C5C4(v15, type metadata accessor for FormatCompilerProperty);
      v44[0] = v25;
      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D6998644((v26 > 1), v27 + 1, 1);
        v25 = v44[0];
      }

      ++v24;
      *(v25 + 16) = v27 + 1;
      sub_1D601C49C(v43, v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v27, type metadata accessor for FormatPropertyDefinition);
      if (v39 == v24)
      {
        a5 = v33;
        v19 = v34;
        a4 = v35;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
LABEL_11:
    sub_1D601B220(v37, v38, v42, v44);
    if (v7)
    {

LABEL_13:
      *a4 = v7;
    }

    else
    {
      v28 = v44[0];
      v29 = v44[1];
      v30 = *(type metadata accessor for FormatCompilerSlotDefinitionItemSet(0) + 24);
      v31 = type metadata accessor for FormatSlotDefinitionItemSet(0);
      sub_1D5D67840(v36 + v30, a5 + *(v31 + 36), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      a5[3] = 0;
      a5[4] = 0;
      *a5 = v20;
      a5[1] = v19;
      a5[2] = v25;
      sub_1D5CDE22C(0, 0);
      a5[3] = v28;
      a5[4] = v29;
    }
  }
}

void sub_1D601B220(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v43 = a3;
  v40 = a2;
  v7 = type metadata accessor for FormatCompilerProperty(0);
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatPropertyDefinition(0);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B58F2C(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v38 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 24))
  {
    goto LABEL_4;
  }

  v37 = *(a1 + 32);
  v23 = v40 + *(type metadata accessor for FormatCompilingSlotDefinition(0) + 20);
  v24 = type metadata accessor for FormatCompilerSlotDefinitionItemSet(0);
  sub_1D5D67840(v23 + *(v24 + 20), v18, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D5CDE540(v18, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
LABEL_4:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v25 = v38;
  v26 = sub_1D601C49C(v18, v38, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  v27 = *v25;
  v28 = *(*v25 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v36 = a4;
    v44 = MEMORY[0x1E69E7CC0];
    v39 = v28;
    sub_1D6998644(0, v28, 0);
    v30 = 0;
    v29 = v44;
    v40 = v27 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    while (v30 < *(v27 + 16))
    {
      sub_1D601C418(v40 + *(v42 + 72) * v30, v10);
      sub_1D7075A68(v43, v14);
      if (v4)
      {
        sub_1D601C5C4(v10, type metadata accessor for FormatCompilerProperty);

        v25 = v38;
        goto LABEL_17;
      }

      v31 = v27;
      sub_1D601C5C4(v10, type metadata accessor for FormatCompilerProperty);
      v44 = v29;
      v33 = *(v29 + 16);
      v32 = *(v29 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D6998644((v32 > 1), v33 + 1, 1);
        v29 = v44;
      }

      ++v30;
      *(v29 + 16) = v33 + 1;
      v26 = sub_1D601C49C(v14, v29 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33, type metadata accessor for FormatPropertyDefinition);
      v27 = v31;
      if (v39 == v30)
      {
        a4 = v36;
        v25 = v38;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    MEMORY[0x1EEE9AC00](v26, v28);
    v34 = v43;
    *(&v36 - 2) = v25;
    *(&v36 - 1) = v34;
    v35 = sub_1D5ECAFC8(sub_1D601C47C, (&v36 - 4), v37);
    if (v4)
    {
    }

    else
    {
      *a4 = v29;
      a4[1] = v35;
    }

LABEL_17:
    sub_1D601C5C4(v25, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  }
}

void sub_1D601B6F8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v32 = a4;
  v6 = v5;
  v37 = a3;
  v10 = type metadata accessor for FormatCompilerProperty(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormatPropertyDefinition(0);
  v36 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[1];
  v34 = a1;
  v19 = *a1;
  if (*(a2 + 8))
  {
    v20 = *(a2 + 8);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v20 + 16);
  if (v21)
  {
    v30 = a5;
    v31 = v18;
    v39 = MEMORY[0x1E69E7CC0];

    sub_1D6998644(0, v21, 0);
    v22 = 0;
    v23 = v39;
    v35 = v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = v33;
    while (v22 < *(v20 + 16))
    {
      sub_1D601C418(v35 + *(v11 + 72) * v22, v24);
      sub_1D7075A68(v37, v17);
      if (v6)
      {
        sub_1D601C5C4(v24, type metadata accessor for FormatCompilerProperty);

        *v32 = v6;
        return;
      }

      v38 = 0;
      v25 = v11;
      sub_1D601C5C4(v24, type metadata accessor for FormatCompilerProperty);
      v39 = v23;
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D6998644((v26 > 1), v27 + 1, 1);
        v24 = v33;
        v23 = v39;
      }

      ++v22;
      *(v23 + 16) = v27 + 1;
      sub_1D601C49C(v17, v23 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27, type metadata accessor for FormatPropertyDefinition);
      v11 = v25;
      v6 = v38;
      if (v21 == v22)
      {

        a5 = v30;
        v28 = v31;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v28 = v18;

    v23 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v29 = type metadata accessor for FormatSlotDefinitionItemSet(0);
    sub_1D5D67840(v34 + *(v29 + 36), a5 + *(v29 + 36), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    a5[3] = 0;
    a5[4] = 0;
    *a5 = v19;
    a5[1] = v28;
    a5[2] = v23;
    sub_1D5CDE22C(0, 0);
    a5[3] = 0;
    a5[4] = 0;
  }
}

BOOL _s8NewsFeed28FormatCompilerSlotDefinitionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D725B76C();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69D6A58];
  sub_1D5B58F2C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v55 = &v50 - v10;
  sub_1D601C504(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v7);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v50 - v14;
  v16 = type metadata accessor for FormatCompilerSlotDefinitionItemSet(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B58F2C(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = (&v50 - v23);
  sub_1D601C504(0, &qword_1EC8824D0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v50 - v28;
  if (*a1 != *a2 && (sub_1D72646CC() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D72646CC() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D72646CC() & 1) == 0 || (sub_1D633C7DC(a1[6], a2[6]) & 1) == 0 || (sub_1D633C830(a1[7], a2[7]) & 1) == 0 || a1[8] != a2[8])
  {
    return 0;
  }

  v30 = type metadata accessor for FormatCompilerSlotDefinition(0);
  v31 = *(v30 + 40);
  v51 = v30;
  v52 = v31;
  v53 = *(v26 + 48);
  sub_1D5D67840(a1 + v31, v29, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  sub_1D5D67840(a2 + v52, &v29[v53], qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  v32 = *(v17 + 48);
  if (v32(v29, 1, v16) == 1)
  {
    if (v32(&v29[v53], 1, v16) == 1)
    {
      sub_1D5CDE540(v29, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      goto LABEL_19;
    }

LABEL_17:
    v33 = &qword_1EC8824D0;
    v34 = qword_1EDF43EE0;
    v35 = type metadata accessor for FormatCompilerSlotDefinitionItemSet;
    v36 = v29;
LABEL_25:
    sub_1D601C568(v36, v33, v34, v35);
    return 0;
  }

  sub_1D5D67840(v29, v24, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  if (v32(&v29[v53], 1, v16) == 1)
  {
    sub_1D601C5C4(v24, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    goto LABEL_17;
  }

  sub_1D601C49C(&v29[v53], v20, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  v37 = _s8NewsFeed35FormatCompilerSlotDefinitionItemSetV2eeoiySbAC_ACtFZ_0(v24, v20);
  sub_1D601C5C4(v20, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  sub_1D601C5C4(v24, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  sub_1D5CDE540(v29, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  if (!v37)
  {
    return 0;
  }

LABEL_19:
  v38 = *(v51 + 44);
  v39 = *(v12 + 48);
  v40 = MEMORY[0x1E69D6A58];
  sub_1D5D67840(a1 + v38, v15, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5D67840(a2 + v38, &v15[v39], &qword_1EDF45AD0, v40);
  v42 = v56;
  v41 = v57;
  v43 = *(v56 + 48);
  if (v43(v15, 1, v57) != 1)
  {
    v44 = v55;
    sub_1D5D67840(v15, v55, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v43(&v15[v39], 1, v41) == 1)
    {
      (*(v42 + 8))(v44, v41);
      goto LABEL_24;
    }

    v46 = &v15[v39];
    v47 = v54;
    (*(v42 + 32))(v54, v46, v41);
    sub_1D5B58EE4(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v48 = sub_1D7261FBC();
    v49 = *(v42 + 8);
    v49(v47, v41);
    v49(v44, v41);
    sub_1D5CDE540(v15, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    return (v48 & 1) != 0;
  }

  if (v43(&v15[v39], 1, v41) != 1)
  {
LABEL_24:
    v33 = &qword_1EDF3BA98;
    v34 = &qword_1EDF45AD0;
    v35 = MEMORY[0x1E69D6A58];
    v36 = v15;
    goto LABEL_25;
  }

  sub_1D5CDE540(v15, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  return 1;
}

uint64_t sub_1D601C1E0(uint64_t a1)
{
  result = sub_1D5B58EE4(&qword_1EC8824C0, type metadata accessor for FormatCompilerSlotDefinition, &protocol conformance descriptor for FormatCompilerSlotDefinition);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D601C238(void *a1)
{
  a1[1] = sub_1D5B58EE4(&qword_1EDF44520, type metadata accessor for FormatCompilerSlotDefinition, &protocol conformance descriptor for FormatCompilerSlotDefinition);
  a1[2] = sub_1D5B58EE4(&qword_1EDF44528, type metadata accessor for FormatCompilerSlotDefinition, &protocol conformance descriptor for FormatCompilerSlotDefinition);
  result = sub_1D5B58EE4(&qword_1EC8824C8, type metadata accessor for FormatCompilerSlotDefinition, &protocol conformance descriptor for FormatCompilerSlotDefinition);
  a1[3] = result;
  return result;
}

void sub_1D601C2E4(uint64_t a1)
{
  if (!qword_1EDF441F0)
  {
    v2 = sub_1D5B57DEC();
    v3 = sub_1D5B56404();
    v4 = type metadata accessor for FormatCodingEmptyArrayStrategy(a1, &type metadata for FormatSlotTransform, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF441F0);
    }
  }
}

uint64_t sub_1D601C394(uint64_t a1)
{
  result = type metadata accessor for FormatSlotDefinition(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FormatCompilerSlotDefinitionItemSet(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D601C418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerProperty(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D601C49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D601C504(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5B58F2C(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D601C568(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D601C504(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D601C5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Dictionary<>.seedFormatCodingVersion(mode:)(uint64_t a1)
{
  v79 = a1;
  v1 = sub_1D725BD1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v72 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v71 = &v64 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v70 = &v64 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v69 = &v64 - v13;
  v78 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v78, v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatVersionInfo(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2ECB0(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v68 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v67 = &v64 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v64 - v29;
  v31 = sub_1D7263FCC();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v66 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v65 = &v64 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v64 - v40;
  sub_1D7263FBC();
  v77 = *(v32 + 48);
  result = v77(v30, 1, v31);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v73 = *(v32 + 32);
  v74 = v31;
  v73(v41, v30, v31);
  v43 = v79;
  sub_1D6026904(v79, v20, type metadata accessor for FormatVersioningMode);
  v44 = *(v17 + 20);
  v75 = v2;
  v76 = v1;
  (*(v2 + 56))(&v20[v44], 1, 1, v1);
  *&v20[*(v17 + 24)] = MEMORY[0x1E69E7CC0];
  sub_1D5C2ECB0(0, &qword_1EC8824D8, type metadata accessor for FormatVersionInfo, type metadata accessor for Box);
  v46 = v45;
  v47 = swift_allocObject();
  sub_1D60269C0(v20, v47 + *(*v47 + 88), type metadata accessor for FormatVersionInfo);
  v81 = v46;
  v80[0] = v47;
  sub_1D5B7C248(v80, v41, v48);
  sub_1D6026904(v43, v16, type metadata accessor for FormatVersioningMode);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v50 = v75;
    v49 = v76;
    v51 = v69;
    (*(v75 + 32))(v69, v16, v76);
    v59 = *(v50 + 16);
    v53 = v70;
    v59(v70, v51, v49);
    v60 = v67;
    sub_1D7263FBC();
    v61 = v74;
    result = v77(v60, 1, v74);
    if (result != 1)
    {
      v56 = v65;
      v73(v65, v60, v61);
      v81 = v49;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
      v58.n128_f64[0] = v59(boxed_opaque_existential_1, v53, v49);
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return result;
  }

  if (result != 1)
  {
    return result;
  }

  v50 = v75;
  v49 = v76;
  v51 = v71;
  (*(v75 + 32))(v71, v16, v76);
  v52 = *(v50 + 16);
  v53 = v72;
  v52(v72, v51, v49);
  v54 = v68;
  sub_1D7263FBC();
  v55 = v74;
  result = v77(v54, 1, v74);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v56 = v66;
  v73(v66, v54, v55);
  v81 = v49;
  v57 = __swift_allocate_boxed_opaque_existential_1(v80);
  v52(v57, v53, v49);
LABEL_8:
  sub_1D5B7C248(v80, v56, v58);
  v63 = *(v50 + 8);
  v63(v53, v49);
  return (v63)(v51, v49);
}

uint64_t static CodingUserInfoKey.formatCodingVersionInfo.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5C2ECB0(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  sub_1D7263FBC();
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D601CE38(uint64_t a1, uint64_t *a2)
{
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v9 - v6;
  sub_1D5D2C7C0(a1, &v9 - v6, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
  return Dictionary<>.formatCodingVersionInfo.setter(v7, *a2);
}

void (*Dictionary<>.formatCodingVersionInfo.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *a1 = a2;
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v5);
    v6 = malloc(v5);
  }

  a1[2] = v6;
  Dictionary<>.formatCodingVersionInfo.getter(a2, v6);
  return sub_1D601CFF0;
}

void sub_1D601CFF0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D5D2C7C0(a1[2], v2, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    Dictionary<>.formatCodingVersionInfo.setter(v2, v4);
    sub_1D5D2CCD8(v3, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
  }

  else
  {
    Dictionary<>.formatCodingVersionInfo.setter(a1[2], v4);
  }

  free(v3);

  free(v2);
}

uint64_t sub_1D601D0A0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1D601D14C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v2, v7, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5B580C0(0, &qword_1EDF45AB8, " replacement ");

      v9 = sub_1D725BD1C();
      v10 = *(v9 - 8);
      (*(v10 + 56))(a1, 1, 1, v9);
      return (*(v10 + 8))(v7, v9);
    }

    else
    {
      sub_1D5B58478(0);
      v15 = *(v14 + 48);

      v16 = sub_1D725BD1C();
      v17 = *(v16 - 8);
      (*(v17 + 32))(a1, v7, v16);
      (*(v17 + 56))(a1, 0, 1, v16);
      return (*(v17 + 8))(&v7[v15], v16);
    }
  }

  else
  {
    v12 = sub_1D725BD1C();
    v13 = *(v12 - 8);
    (*(v13 + 32))(a1, v7, v12);
    return (*(v13 + 56))(a1, 0, 1, v12);
  }
}

uint64_t sub_1D601D3E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v2, v7, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5B580C0(0, &qword_1EDF45AB8, " replacement ");
      v10 = &v7[*(v9 + 48)];
      v11 = *v10;
      v12 = *(v10 + 1);
      sub_1D5B580C0(0, &qword_1EC882658, "version replacement ");
      v14 = v13;
      v15 = (a1 + *(v13 + 48));
      v16 = sub_1D725BD1C();
      (*(*(v16 - 8) + 32))(a1, v7, v16);
      *v15 = v11;
      v15[1] = v12;
      return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
    }

    else
    {
      sub_1D5B58478(0);
      v20 = *(v19 + 48);
      v21 = &v7[*(v19 + 64)];
      v22 = *v21;
      v23 = *(v21 + 1);
      sub_1D5B580C0(0, &qword_1EC882658, "version replacement ");
      v25 = v24;
      v26 = (a1 + *(v24 + 48));
      v27 = sub_1D725BD1C();
      v28 = *(v27 - 8);
      (*(v28 + 32))(a1, &v7[v20], v27);
      *v26 = v22;
      v26[1] = v23;
      (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
      return (*(v28 + 8))(v7, v27);
    }
  }

  else
  {
    sub_1D5B580C0(0, &qword_1EC882658, "version replacement ");
    (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
    return sub_1D60262D0(v7, type metadata accessor for FormatVersionRequirement.Value);
  }
}

uint64_t sub_1D601D6C4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D725BD1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v2, v19, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5B580C0(0, &qword_1EDF45AB8, " replacement ");

      (*(v4 + 32))(v15, v19, v3);
      v21 = sub_1D725BCAC();
      (*(v4 + 8))(v15, v3);
    }

    else
    {
      sub_1D5B58478(0);
      v24 = *(v23 + 48);

      v25 = *(v4 + 32);
      v25(v11, v19, v3);
      v25(v7, &v19[v24], v3);
      sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
      if (sub_1D7261F5C())
      {
        v21 = 0;
      }

      else
      {
        v21 = sub_1D725BCAC();
      }

      v26 = *(v4 + 8);
      v26(v7, v3);
      v26(v11, v3);
    }
  }

  else
  {
    (*(v4 + 32))(v15, v19, v3);
    sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
    v22 = sub_1D7261F5C();
    (*(v4 + 8))(v15, v3);
    v21 = v22 ^ 1;
  }

  return v21 & 1;
}

uint64_t sub_1D601DA30(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D725BD1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v34 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v34 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v34 - v18;
  v20 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v2, v23, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5B580C0(0, &qword_1EDF45AB8, " replacement ");
      v26 = *&v23[*(v25 + 48) + 8];
      (*(v4 + 32))(v15, v23, v3);
      sub_1D72621EC();
      sub_1D725BC9C();
      sub_1D72621EC();

      sub_1D7264A2C();
      if (v26)
      {
        sub_1D72621EC();
      }

      return (*(v4 + 8))(v15, v3);
    }

    else
    {
      sub_1D5B58478(0);
      v29 = *(v28 + 48);
      v30 = &v23[*(v28 + 64)];
      v31 = *(v30 + 1);
      v34[1] = *v30;
      v32 = *(v4 + 32);
      v32(v11, v23, v3);
      v32(v7, &v23[v29], v3);
      sub_1D72621EC();
      sub_1D725BC9C();
      sub_1D72621EC();

      sub_1D725BC9C();
      sub_1D72621EC();

      sub_1D7264A2C();
      if (v31)
      {
        sub_1D72621EC();
      }

      v33 = *(v4 + 8);
      v33(v7, v3);
      return (v33)(v11, v3);
    }
  }

  else
  {
    (*(v4 + 32))(v19, v23, v3);
    sub_1D72621EC();
    sub_1D725BC9C();
    sub_1D72621EC();

    return (*(v4 + 8))(v19, v3);
  }
}

uint64_t sub_1D601DE50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v44, v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FormatVersionRequirement.DeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v43, v5);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FormatVersionRequirement.IntroducedRequirement(0);
  MEMORY[0x1EEE9AC00](v40, v7);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026A28(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v45 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v18 = v48;
  sub_1D7264B0C();
  if (v18)
  {
    v22 = a1;
  }

  else
  {
    v20 = v45;
    v19 = v46;
    v39 = v17;
    v21 = v47;
    v48 = a1;
    sub_1D6025FA8();
    v49 = 0uLL;
    sub_1D726431C();
    v24 = v13;
    if (v50)
    {
      v49 = xmmword_1D7279980;
      if (v50 == 1)
      {
        sub_1D60247F8(&qword_1EC882620, type metadata accessor for FormatVersionRequirement.DeprecatedRequirement, &unk_1D728FBD4);
        v26 = v42;
        v25 = v43;
        sub_1D726431C();
        (*(v20 + 8))(v24, v10);
        sub_1D5B580C0(0, &qword_1EDF45AB8, " replacement ");
        v28 = *(v27 + 48);
        v29 = sub_1D725BD1C();
        v30 = v39;
        (*(*(v29 - 8) + 32))(v39, v26, v29);
        *(v30 + v28) = *&v26[*(v25 + 20)];
      }

      else
      {
        sub_1D60247F8(&qword_1EC882618, type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement, &unk_1D728FBFC);
        v31 = v41;
        v32 = v44;
        sub_1D726431C();
        (*(v20 + 8))(v13, v10);
        sub_1D5B58478(0);
        v35 = *(v34 + 64);
        v45 = *(v34 + 48);
        v46 = v35;
        v36 = v31;
        v37 = sub_1D725BD1C();
        v38 = *(*(v37 - 8) + 32);
        v30 = v39;
        v38(v39, v36, v37);
        v38((v30 + v45), &v36[*(v32 + 20)], v37);
        *&v46[v30] = *&v36[*(v32 + 24)];
      }
    }

    else
    {
      v49 = xmmword_1D7279980;
      sub_1D60247F8(&qword_1EC882628, type metadata accessor for FormatVersionRequirement.IntroducedRequirement, &unk_1D728FBAC);
      sub_1D726431C();
      (*(v20 + 8))(v13, v10);
      v33 = sub_1D725BD1C();
      v30 = v39;
      (*(*(v33 - 8) + 32))(v39, v19, v33);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D60269C0(v30, v21, type metadata accessor for FormatVersionRequirement.Value);
    v22 = v48;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D601E488(void *a1)
{
  v74 = type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v74, v2);
  v75 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FormatVersionRequirement.DeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v72, v4);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatVersionRequirement.IntroducedRequirement(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D725BD1C();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v10);
  v78 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v79 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v77 = &v71 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v76 = &v71 - v20;
  v21 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026A28(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v86 = v25;
  v84 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v71 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v82 = v28;
  sub_1D7264B5C();
  sub_1D6026904(v80, v24, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v41 = v9;
    v42 = v83;
    v43 = v76;
    v44 = v24;
    v45 = v85;
    (*(v83 + 32))(v76, v44, v85);
    v88 = 0;
    sub_1D6025FFC();
    v87 = 0uLL;
    v38 = v86;
    v46 = v81;
    v39 = v82;
    sub_1D726443C();
    if (!v46)
    {
      (*(v42 + 16))(v41, v43, v45);
      v87 = xmmword_1D7279980;
      sub_1D60247F8(&qword_1EC882648, type metadata accessor for FormatVersionRequirement.IntroducedRequirement, &unk_1D728FB0C);
      sub_1D726443C();
      sub_1D60262D0(v41, type metadata accessor for FormatVersionRequirement.IntroducedRequirement);
    }

    (*(v42 + 8))(v43, v45);
    return (*(v84 + 8))(v39, v38);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5B580C0(0, &qword_1EDF45AB8, " replacement ");
    v31 = &v24[*(v30 + 48)];
    v33 = *v31;
    v32 = *(v31 + 1);
    v34 = v83;
    v35 = v77;
    v36 = v24;
    v37 = v85;
    (*(v83 + 32))(v77, v36, v85);
    v88 = 1;
    sub_1D6025FFC();
    v87 = 0uLL;
    v38 = v86;
    v40 = v81;
    v39 = v82;
    sub_1D726443C();
    if (v40)
    {
    }

    else
    {
      v61 = v73;
      (*(v34 + 16))(v73, v35, v37);
      v62 = (v61 + *(v72 + 20));
      *v62 = v33;
      v62[1] = v32;
      v87 = xmmword_1D7279980;
      sub_1D60247F8(&qword_1EC882640, type metadata accessor for FormatVersionRequirement.DeprecatedRequirement, &unk_1D728FB34);
      sub_1D726443C();
      sub_1D60262D0(v61, type metadata accessor for FormatVersionRequirement.DeprecatedRequirement);
    }

    (*(v34 + 8))(v35, v37);
    return (*(v84 + 8))(v39, v38);
  }

  sub_1D5B58478(0);
  v48 = *(v47 + 48);
  v49 = &v24[*(v47 + 64)];
  v50 = v49[1];
  v80 = *v49;
  v51 = v83;
  v52 = *(v83 + 32);
  v53 = v79;
  v54 = v85;
  v52(v79, v24, v85);
  v55 = v78;
  v52(v78, &v24[v48], v54);
  v88 = 2;
  sub_1D6025FFC();
  v87 = 0uLL;
  v56 = v86;
  v58 = v81;
  v57 = v82;
  sub_1D726443C();
  if (v58)
  {

    v59 = *(v51 + 8);
    v59(v55, v54);
    v59(v53, v54);
    return (*(v84 + 8))(v57, v56);
  }

  else
  {
    v81 = v50;
    v63 = *(v51 + 16);
    v64 = v53;
    v65 = v75;
    v63(v75, v64, v54);
    v66 = v74;
    v63((v65 + *(v74 + 20)), v55, v54);
    v67 = (v65 + *(v66 + 24));
    v68 = v81;
    *v67 = v80;
    v67[1] = v68;
    v87 = xmmword_1D7279980;
    sub_1D60247F8(&qword_1EC882638, type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement, &unk_1D728FB5C);
    v69 = v86;
    sub_1D726443C();
    sub_1D60262D0(v65, type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement);
    v70 = *(v51 + 8);
    v70(v78, v54);
    v70(v79, v54);
    return (*(v84 + 8))(v57, v69);
  }
}

uint64_t sub_1D601ECB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1D725BD1C();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026A28(0, &qword_1EC8826F0, sub_1D602696C, &type metadata for FormatVersionRequirement.IntroducedRequirement.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FormatVersionRequirement.IntroducedRequirement(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602696C();
  v15 = v23;
  sub_1D7264B0C();
  if (!v15)
  {
    v16 = v20;
    v17 = v21;
    sub_1D60247F8(&qword_1EDF43A48, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B58]);
    sub_1D726431C();
    (*(v16 + 8))(v10, v7);
    (*(v17 + 32))(v14, v22, v3);
    sub_1D60269C0(v14, v19, type metadata accessor for FormatVersionRequirement.IntroducedRequirement);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D601EF94(void *a1, __n128 a2)
{
  sub_1D6026A28(0, &qword_1EC882708, sub_1D60268B0, &type metadata for FormatVersionRequirement.DeprecatedRequirement.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60268B0();
  sub_1D7264B5C();
  v13 = 0;
  sub_1D725BD1C();
  sub_1D60247F8(&qword_1EDF178C0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B40]);
  sub_1D726443C();
  if (!v2)
  {
    type metadata accessor for FormatVersionRequirement.DeprecatedRequirement(0);
    v12 = 1;
    sub_1D726437C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D601F180@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1D725BD1C();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026A28(0, &qword_1EC8826E0, sub_1D60268B0, &type metadata for FormatVersionRequirement.DeprecatedRequirement.CodingKeys, MEMORY[0x1E69E6F48]);
  v31 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for FormatVersionRequirement.DeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60268B0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v15 = v27;
  v16 = v28;
  v33 = 0;
  sub_1D60247F8(&qword_1EDF43A48, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B58]);
  v17 = v29;
  sub_1D726431C();
  v18 = v25;
  (*(v16 + 32))(v25, v30, v17);
  v32 = 1;
  v19 = sub_1D726422C();
  v21 = v20;
  (*(v15 + 8))(v10, v31);
  v22 = (v18 + *(v11 + 20));
  *v22 = v19;
  v22[1] = v21;
  sub_1D6026904(v18, v26, type metadata accessor for FormatVersionRequirement.DeprecatedRequirement);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D60262D0(v18, type metadata accessor for FormatVersionRequirement.DeprecatedRequirement);
}

uint64_t sub_1D601F50C(void *a1, __n128 a2)
{
  sub_1D6026A28(0, &qword_1EC882700, sub_1D602685C, &type metadata for FormatVersionRequirement.IntroducedThenDeprecatedRequirement.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602685C();
  sub_1D7264B5C();
  v14 = 0;
  sub_1D725BD1C();
  sub_1D60247F8(&qword_1EDF178C0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B40]);
  sub_1D726443C();
  if (!v2)
  {
    type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement(0);
    v13 = 1;
    sub_1D726443C();
    v12 = 2;
    sub_1D726437C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D601F734@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v35 = sub_1D725BD1C();
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v34 = &v29 - v8;
  sub_1D6026A28(0, &qword_1EC8826D0, sub_1D602685C, &type metadata for FormatVersionRequirement.IntroducedThenDeprecatedRequirement.CodingKeys, MEMORY[0x1E69E6F48]);
  v37 = v9;
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602685C();
  v36 = v12;
  v17 = v38;
  sub_1D7264B0C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v33;
  v38 = a1;
  v29 = v13;
  v30 = v16;
  v41 = 0;
  sub_1D60247F8(&qword_1EDF43A48, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B58]);
  v19 = v34;
  v20 = v35;
  sub_1D726431C();
  v34 = *(v32 + 32);
  (v34)(v30, v19, v20);
  v40 = 1;
  v21 = v5;
  sub_1D726431C();
  v22 = v30;
  (v34)(&v30[*(v29 + 20)], v21, v20);
  v39 = 2;
  v23 = v36;
  v24 = sub_1D726422C();
  v26 = v25;
  (*(v18 + 8))(v23, v37);
  v27 = (v22 + *(v29 + 24));
  *v27 = v24;
  v27[1] = v26;
  sub_1D6026904(v22, v31, type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1D60262D0(v22, type metadata accessor for FormatVersionRequirement.IntroducedThenDeprecatedRequirement);
}

uint64_t sub_1D601FBA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026A28(0, &qword_1EC8825F0, sub_1D6025E90, &type metadata for FormatVersionRequirement.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6025E90();
  v15 = v23;
  sub_1D7264B0C();
  if (!v15)
  {
    v16 = v21;
    sub_1D60247F8(&qword_1EC8825C8, type metadata accessor for FormatVersionRequirement.Value, &unk_1D728F738);
    v17 = v22;
    sub_1D726431C();
    (*(v16 + 8))(v10, v7);
    sub_1D60269C0(v17, v14, type metadata accessor for FormatVersionRequirement.Value);
    sub_1D60269C0(v14, v20, type metadata accessor for FormatVersionRequirement);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D601FE58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461636572706564;
  v4 = 0x80000001D73B7CD0;
  if (v2 == 1)
  {
    v5 = 0xEA00000000006465;
  }

  else
  {
    v3 = 0xD000000000000018;
    v5 = 0x80000001D73B7CD0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6375646F72746E69;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006465;
  }

  v8 = 0x7461636572706564;
  if (*a2 == 1)
  {
    v4 = 0xEA00000000006465;
  }

  else
  {
    v8 = 0xD000000000000018;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6375646F72746E69;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D601FF4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6025B5C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D601FF7C(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006465;
  v3 = *v1;
  v4 = 0x7461636572706564;
  v5 = 0x80000001D73B7CD0;
  if (v3 == 1)
  {
    v5 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6375646F72746E69;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1D6020090()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6020138(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D60201CC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D60202BC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6375646F72746E69 && a2 == 0xEA00000000006465)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D602034C(uint64_t a1)
{
  v2 = sub_1D602696C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6020388(uint64_t a1)
{
  v2 = sub_1D602696C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60203DC(void *a1, __n128 a2)
{
  sub_1D6026A28(0, &qword_1EC882710, sub_1D602696C, &type metadata for FormatVersionRequirement.IntroducedRequirement.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602696C();
  sub_1D7264B5C();
  sub_1D725BD1C();
  sub_1D60247F8(&qword_1EDF178C0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B40]);
  sub_1D726443C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6020588()
{
  if (*v0)
  {
    return 0x6D6563616C706572;
  }

  else
  {
    return 0x7461636572706564;
  }
}

void sub_1D60205D0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461636572706564 && a2 == 0xEA00000000006465;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D60206B8(uint64_t a1)
{
  v2 = sub_1D60268B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60206F4(uint64_t a1)
{
  v2 = sub_1D60268B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6020760()
{
  v1 = 0x7461636572706564;
  if (*v0 != 1)
  {
    v1 = 0x6D6563616C706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6375646F72746E69;
  }
}

uint64_t sub_1D60207C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6025BA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D60207EC(uint64_t a1)
{
  v2 = sub_1D602685C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6020828(uint64_t a1)
{
  v2 = sub_1D602685C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D60208A8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D602092C(uint64_t a1)
{
  v2 = sub_1D6025E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6020968(uint64_t a1)
{
  v2 = sub_1D6025E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60209A4()
{
  sub_1D7264A0C();
  sub_1D601DA30(v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D60209E4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D601DA30(v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D6020A38(void *a1, __n128 a2)
{
  sub_1D6026A28(0, &qword_1EC882600, sub_1D6025E90, &type metadata for FormatVersionRequirement.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6025E90();
  sub_1D7264B5C();
  type metadata accessor for FormatVersionRequirement.Value(0);
  sub_1D60247F8(&qword_1EC8825D0, type metadata accessor for FormatVersionRequirement.Value, &unk_1D728F710);
  sub_1D726443C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatVersionInfo.recordedDeprecations.getter()
{
  type metadata accessor for FormatVersionInfo(0);
}

void sub_1D6020CA0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v166 = a5;
  v167 = a4;
  v168 = a3;
  v169 = a2;
  v157 = sub_1D725A8FC();
  v182 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v6);
  v183 = v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1D5C2ECB0(0, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v159 = v154 - v11;
  v158 = type metadata accessor for FormatDeprecationWarning(0);
  v161 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v12);
  v164 = v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v160 = v154 - v16;
  sub_1D6026050(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v179 = v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60260B8(0);
  v176 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v175 = v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v177 = v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v154 - v28;
  sub_1D5C2ECB0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v8);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v163 = v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v154 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = v154 - v39;
  v41 = sub_1D725BD1C();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v173 = v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v172 = v154 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v174 = v154 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v178 = v154 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v162 = v154 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v170 = v154 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = v154 - v62;
  v180 = a1;
  sub_1D601D14C(v40);
  v64 = *(v42 + 48);
  if (v64(v40, 1, v41) == 1)
  {
    v171 = v23;
    sub_1D5D2CCD8(v40, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v65 = v41;
    v66 = v42;
  }

  else
  {
    v155 = v36;
    v165 = v42;
    v70 = *(v42 + 32);
    v71 = v40;
    v72 = v42 + 32;
    v70(v63, v71, v41);
    v73 = v181;
    sub_1D6026904(v181, v29, type metadata accessor for FormatVersioningMode);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v156 = v70;
      v102 = v72;
      v171 = v23;
      v103 = *(type metadata accessor for FormatVersionInfo(0) + 20);
      v104 = v155;
      sub_1D5D2C7C0(v73 + v103, v155, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      if (v64(v104, 1, v41) == 1)
      {
        v105 = v104;
        v106 = MEMORY[0x1E69D6B38];
        sub_1D5D2CCD8(v105, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        sub_1D5D2CCD8(v73 + v103, &qword_1EDF45AC0, v106);
        v156(v73 + v103, v63, v41);
        v66 = v165;
        (*(v165 + 56))(v73 + v103, 0, 1, v41);
        v65 = v41;
      }

      else
      {
        v108 = v162;
        v154[1] = v102;
        v109 = v156;
        v156(v162, v104, v41);
        sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
        v110 = sub_1D7261F6C();
        v66 = v165;
        v111 = (v110 & 1) == 0;
        if (v110)
        {
          v112 = v108;
        }

        else
        {
          v112 = v63;
        }

        v113 = v73;
        if (v111)
        {
          v114 = v108;
        }

        else
        {
          v114 = v63;
        }

        (*(v165 + 8))(v112, v41);
        v115 = v163;
        v109(v163, v114, v41);
        (*(v66 + 56))(v115, 0, 1, v41);
        sub_1D6026144(v115, v113 + v103, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        v65 = v41;
      }
    }

    else
    {
      v74 = v170;
      (v70)();
      sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
      v65 = v41;
      if (sub_1D7261F5C())
      {
        v183 = v167();
        v156 = v70;
        v75 = v74;
        v76 = v63;
        v182 = v77;
        v181 = v169();
        v78 = type metadata accessor for FormatVersioningError(0);
        sub_1D60247F8(qword_1EC882508, type metadata accessor for FormatVersioningError, &protocol conformance descriptor for FormatVersioningError);
        swift_allocError();
        v80 = v79;
        v81 = v165;
        (*(v165 + 16))(v79, v76, v65);
        v156(v80 + v78[5], v75, v65);
        v82 = (v80 + v78[6]);
        v83 = v182;
        *v82 = v183;
        v82[1] = v83;
        *(v80 + v78[7]) = v181;
        swift_willThrow();
        (*(v81 + 8))(v76, v65);
        return;
      }

      v171 = v23;
      v66 = v165;
      v107 = *(v165 + 8);
      v107(v74, v41);
      v107(v63, v41);
    }
  }

  v67 = v179;
  sub_1D601D3E0(v179);
  sub_1D5B580C0(0, &qword_1EC882658, "version replacement ");
  v69 = v68;
  if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
  {
    sub_1D60262D0(v67, sub_1D6026050);
  }

  else
  {
    v84 = (v67 + *(v69 + 48));
    v85 = v67;
    v86 = *v84;
    v87 = v84[1];
    v88 = v176;
    v89 = v65;
    v90 = v175;
    v91 = &v175[*(v176 + 12)];
    v92 = *(v66 + 32);
    v92(v175, v85, v89);
    *v91 = v86;
    *(v91 + 1) = v87;
    v93 = &v90[*(v88 + 12)];
    v95 = *v93;
    v94 = v93[1];
    v96 = v178;
    v97 = v90;
    v98 = v89;
    v92(v178, v97, v89);
    v99 = v177;
    sub_1D6026904(v181, v177, type metadata accessor for FormatVersioningMode);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      (*(v66 + 8))(v96, v89);
    }

    else
    {
      v100 = v174;
      v92(v174, v99, v98);
      sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
      if (sub_1D7261F5C())
      {

        v101 = *(v66 + 8);
        v101(v100, v98);
        v101(v96, v98);
      }

      else
      {
        v179 = v167();
        v177 = v116;
        v180 = v169();
        v165 = v66;
        v117 = v96;
        v118 = *(v66 + 16);
        v118(v172, v100, v98);
        v118(v173, v117, v98);
        v171 = v95;
        v119 = v158;
        v120 = *(v158 + 28);
        v121 = v164;
        v170 = &v164[*(v158 + 24)];
        v122 = sub_1D725A90C();
        v123 = *(v122 - 8);
        v124 = *(v123 + 56);
        v125 = (v123 + 56);
        v175 = v120;
        v126 = &v120[v121];
        v127 = v122;
        v124(v126, 1, 1, v122);
        v128 = &v121[*(v119 + 32)];
        *v128 = 0;
        *(v128 + 1) = 0;
        v176 = v128;
        v118(v121, v172, v98);
        v129 = &v121[*(v119 + 20)];
        v130 = v180;
        v118(v129, v173, v98);
        v131 = v170;
        *v170 = v171;
        *(v131 + 1) = v94;
        if (v130)
        {
          v169 = v125;
          v170 = v124;
          v171 = v98;
          v132 = *(v130 + 16);
          v133 = v181;
          if (v132)
          {
            v186 = MEMORY[0x1E69E7CC0];
            sub_1D6997254(0, v132, 0);
            v134 = v186;
            v135 = v130 + 32;
            v136 = v157;
            do
            {
              sub_1D5B68374(v135, &v184);
              __swift_project_boxed_opaque_existential_1(&v184, v185);
              sub_1D7264BEC();
              if (v137)
              {
                __swift_project_boxed_opaque_existential_1(&v184, v185);
                sub_1D7264BCC();
                sub_1D725A8EC();
              }

              else
              {
                sub_1D725A8DC();
              }

              __swift_destroy_boxed_opaque_existential_1(&v184);
              v186 = v134;
              v139 = *(v134 + 16);
              v138 = *(v134 + 24);
              if (v139 >= v138 >> 1)
              {
                sub_1D6997254((v138 > 1), v139 + 1, 1);
                v134 = v186;
              }

              *(v134 + 16) = v139 + 1;
              (*(v182 + 4))(v134 + ((v182[80] + 32) & ~v182[80]) + *(v182 + 9) * v139, v183, v136);
              v135 += 40;
              --v132;
            }

            while (v132);
            v133 = v181;
          }

          v140 = v164;
          v141 = v159;
          sub_1D725A88C();
          (v170)(v141, 0, 1, v127);
          v98 = v171;
          v142 = v165;
        }

        else
        {
          v141 = v159;
          v124(v159, 1, 1, v127);
          v142 = v165;
          v140 = v164;
          v133 = v181;
        }

        v143 = v177;
        v144 = v133;
        sub_1D6026144(v141, &v175[v140], &qword_1EDF17F38, MEMORY[0x1E69D6400]);
        v145 = v179;
        if (!v143)
        {
          v145 = sub_1D6023154(v140);
          v143 = v146;
        }

        v147 = *(v142 + 8);
        v147(v173, v98);
        v147(v172, v98);
        v148 = v176;

        *v148 = v145;
        v148[1] = v143;
        v149 = v160;
        sub_1D60269C0(v140, v160, type metadata accessor for FormatDeprecationWarning);
        v150 = *(type metadata accessor for FormatVersionInfo(0) + 24);
        v151 = *(v144 + v150);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = sub_1D698BAAC(0, v151[2] + 1, 1, v151);
        }

        v153 = v151[2];
        v152 = v151[3];
        if (v153 >= v152 >> 1)
        {
          v151 = sub_1D698BAAC((v152 > 1), v153 + 1, 1, v151);
        }

        v147(v174, v98);
        v147(v178, v98);
        v151[2] = v153 + 1;
        sub_1D60269C0(v149, v151 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v153, type metadata accessor for FormatDeprecationWarning);
        *(v144 + v150) = v151;
      }
    }
  }
}

uint64_t sub_1D6021D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725BD1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v24 - v18;
  sub_1D6026904(v4, v10, type metadata accessor for FormatVersioningMode);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v22 = 0;
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    sub_1D5D2F260(a2, a3);
    sub_1D60247F8(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
    v20 = sub_1D7261F5C();
    v21 = *(v12 + 8);
    v21(v15, v11);
    v21(v19, v11);
    v22 = v20 ^ 1;
  }

  return v22 & 1;
}

uint64_t sub_1D6021F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v34 = a1;
  v11 = type metadata accessor for FormatVersioningError(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v6, v18, type metadata accessor for FormatVersioningMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = sub_1D725BD1C();
    EnumCaseMultiPayload = (*(*(v26 - 8) + 8))(v18, v26);
LABEL_7:
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v20);
    *(&v34 - 2) = a2;
    *(&v34 - 1) = a3;
    MEMORY[0x1EEE9AC00](v27, v28);
    *(&v34 - 2) = a4;
    *(&v34 - 1) = a5;
    v29 = v35;
    sub_1D6020CA0(v34, sub_1D6026280, v30, sub_1D6026DE8, (&v34 - 4));
    if (!v29)
    {
      LOBYTE(a2) = 1;
    }

    return a2 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v20);
  *(&v34 - 2) = a2;
  *(&v34 - 1) = a3;
  MEMORY[0x1EEE9AC00](v21, v22);
  *(&v34 - 2) = a4;
  *(&v34 - 1) = a5;
  v23 = v35;
  sub_1D6020CA0(v34, sub_1D6026DEC, v24, sub_1D60262A8, (&v34 - 4));
  LOBYTE(a2) = v23 == 0;
  if (v23)
  {
    v36 = v23;
    v25 = v23;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    if (!swift_dynamicCast())
    {

      v33 = sub_1D725BD1C();
      (*(*(v33 - 8) + 8))(v18, v33);
      return a2 & 1;
    }

    sub_1D60262D0(v14, type metadata accessor for FormatVersioningError);
  }

  v31 = sub_1D725BD1C();
  (*(*(v31 - 8) + 8))(v18, v31);
  return a2 & 1;
}

uint64_t FormatVersioningError.codingPath.getter(__n128 a1)
{
  type metadata accessor for FormatVersioningError(0);
}

void FormatVersioningError.codingPath.setter(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for FormatVersioningError(0) + 28);

  *(v2 + v4) = a1;
}

uint64_t FormatVersioningError.readableCodingPath.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for FormatVersioningError(0) + 28));
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v3, 0);
    v4 = v20;
    v5 = v2 + 32;
    do
    {
      sub_1D5B68374(v5, v18);
      __swift_project_boxed_opaque_existential_1(v18, v19);
      sub_1D7264BEC();
      if (v6)
      {
        __swift_project_boxed_opaque_existential_1(v18, v19);
        v7 = sub_1D7264BCC();
      }

      else
      {
        v7 = sub_1D72644BC();
      }

      v9 = v7;
      v10 = v8;
      __swift_destroy_boxed_opaque_existential_1(v18);
      v20 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D5BFC364((v11 > 1), v12 + 1, 1);
        v4 = v20;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  v18[0] = v4;
  sub_1D5B58244(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v14 = sub_1D7261F3C();
  v16 = v15;

  v18[0] = 47;
  v18[1] = 0xE100000000000000;
  MEMORY[0x1DA6F9910](v14, v16);

  return v18[0];
}

uint64_t FormatVersioningError.failingProperty.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for FormatVersioningError(0) + 28));
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  sub_1D5B68374(v2 + 40 * v3 - 8, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1D7264BCC();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t FormatVersioningError.failingIndex.getter(__n128 a1)
{
  v2 = *(v1 + *(type metadata accessor for FormatVersioningError(0) + 28));
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  sub_1D5B68374(v2 + 40 * v3 - 8, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1D7264BEC();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t FormatVersioningError.errorDescription.getter(__n128 a1)
{
  v2 = (v1 + *(type metadata accessor for FormatVersioningError(0) + 24));
  v4 = v2[1];
  if (v4)
  {
    v5 = *v2;
    sub_1D7263D4C();

    strcpy(v19, "Compiling for ");
    HIBYTE(v19[1]) = -18;
    sub_1D725BD1C();
    sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
    v6 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v6);

    MEMORY[0x1DA6F9910](0x272074756220, 0xE600000000000000);
    MEMORY[0x1DA6F9910](v5, v4);
  }

  else
  {
    FormatVersioningError.failingIndex.getter(v3);
    if ((v8 & 1) == 0)
    {
      sub_1D7263D4C();

      strcpy(v19, "Compiling for ");
      HIBYTE(v19[1]) = -18;
      sub_1D725BD1C();
      sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
      v14 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v14);

      MEMORY[0x1DA6F9910](0x6574692074756220, 0xEB0000000027206DLL);
      v15 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v15);

      MEMORY[0x1DA6F9910](0x7269757165722027, 0xEB00000000207365);
      goto LABEL_9;
    }

    v9 = FormatVersioningError.failingProperty.getter(v7);
    if (!v10)
    {
      sub_1D7263D4C();

      strcpy(v19, "Compiling for ");
      HIBYTE(v19[1]) = -18;
      sub_1D725BD1C();
      sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
      v16 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v16);

      MEMORY[0x1DA6F9910](0x7465642074756220, 0xEE00206465746365);
      goto LABEL_9;
    }

    v11 = v9;
    v12 = v10;
    sub_1D7263D4C();

    strcpy(v19, "Compiling for ");
    HIBYTE(v19[1]) = -18;
    sub_1D725BD1C();
    sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
    v13 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v13);

    MEMORY[0x1DA6F9910](0x6F72702074756220, 0xEF27207974726570);
    MEMORY[0x1DA6F9910](v11, v12);
  }

  MEMORY[0x1DA6F9910](0x7269757165722027, 0xEB00000000207365);
LABEL_9:
  v17 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v17);

  return v19[0];
}

uint64_t _s8NewsFeed21FormatVersioningErrorV15detectedVersion13TeaFoundation0G0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725BD1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s8NewsFeed21FormatVersioningErrorV15detectedVersion13TeaFoundation0G0Vvs_0(uint64_t a1)
{
  v3 = sub_1D725BD1C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1D6022D24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1D725BD1C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D6022DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1D725BD1C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D6022EA0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

void sub_1D6022F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t FormatDeprecationWarning.feature.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatDeprecationWarning(0) + 32));

  return v1;
}

void FormatDeprecationWarning.feature.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FormatDeprecationWarning(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D6023154(uint64_t a1)
{
  v2 = sub_1D725A90C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v40 - v8;
  v44 = sub_1D725A8FC();
  v10 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v11);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  v17 = *(type metadata accessor for FormatDeprecationWarning(0) + 28);
  v18 = *(v3 + 48);
  if (!v18(a1 + v17, 1, v2))
  {
    (*(v3 + 16))(v9, a1 + v17, v2);
    v20 = sub_1D725A89C();
    (*(v3 + 8))(v9, v2);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v21 - 1);
      v23 = *(v10 + 16);
      v41 = v10;
      v24 = v44;
      v23(v16, v22, v44);

      v25 = sub_1D725A8CC();
      v27 = v26;
      v28 = v24;
      v10 = v41;
      (*(v41 + 8))(v16, v28);
      if ((v27 & 1) == 0)
      {
        v46 = 0x5B206D657469;
        v47 = 0xE600000000000000;
        v45 = v25;
        v29 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v29);

        v30 = 93;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  if (v18(a1 + v17, 1, v2))
  {
    return 0;
  }

  v31 = a1 + v17;
  v32 = v43;
  (*(v3 + 16))(v43, v31, v2);
  v33 = sub_1D725A89C();
  (*(v3 + 8))(v32, v2);
  v34 = *(v33 + 16);
  if (!v34)
  {

    return 0;
  }

  v35 = v42;
  v36 = v44;
  (*(v10 + 16))(v42, v33 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v34 - 1), v44);

  v37 = sub_1D725A8BC();
  v39 = v38;
  (*(v10 + 8))(v35, v36);
  v46 = 0x79747265706F7270;
  v47 = 0xEA00000000002720;
  MEMORY[0x1DA6F9910](v37, v39);

  v30 = 39;
LABEL_9:
  MEMORY[0x1DA6F9910](v30, 0xE100000000000000);
  return v46;
}

uint64_t FormatDeprecationWarning.message.getter()
{
  v1 = (v0 + *(type metadata accessor for FormatDeprecationWarning(0) + 32));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    sub_1D7263D4C();

    strcpy(v8, "Compiling for ");
    HIBYTE(v8[1]) = -18;
    sub_1D725BD1C();
    sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
    v4 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v4);

    MEMORY[0x1DA6F9910](0x272074756220, 0xE600000000000000);
    MEMORY[0x1DA6F9910](v3, v2);
    MEMORY[0x1DA6F9910](0xD000000000000016, 0x80000001D73C6160);
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x6E696C69706D6F43, 0xEE0020726F662067);
    sub_1D725BD1C();
    sub_1D60247F8(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
    v5 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v5);

    MEMORY[0x1DA6F9910](0xD00000000000002ALL, 0x80000001D73C6130);
  }

  v6 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v6);

  return v8[0];
}

uint64_t sub_1D60237A8()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x6D6563616C706572;
  v4 = 0x6150676E69646F63;
  if (v1 != 3)
  {
    v4 = 0x65727574616566;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461636572706564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6023854@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6025CD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D602387C(uint64_t a1)
{
  v2 = sub_1D602557C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60238B8(uint64_t a1)
{
  v2 = sub_1D602557C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDeprecationWarning.encode(to:)(void *a1, __n128 a2)
{
  sub_1D6026A28(0, &qword_1EC8824E0, sub_1D602557C, &type metadata for FormatDeprecationWarning.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602557C();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D725BD1C();
  sub_1D60247F8(&qword_1EDF178C0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B40]);
  sub_1D726443C();
  if (!v2)
  {
    type metadata accessor for FormatDeprecationWarning(0);
    v15 = 1;
    sub_1D726443C();
    v14 = 2;
    sub_1D726437C();
    v13 = 3;
    sub_1D725A90C();
    sub_1D60247F8(&qword_1EC8824F0, MEMORY[0x1E69D6400], MEMORY[0x1E69D6408]);
    sub_1D72643BC();
    v12 = 4;
    sub_1D726437C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FormatDeprecationWarning.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_1D5C2ECB0(0, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v43 = &v40 - v5;
  v44 = sub_1D725BD1C();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v46 = &v40 - v11;
  sub_1D6026A28(0, &qword_1EC8824F8, sub_1D602557C, &type metadata for FormatDeprecationWarning.CodingKeys, MEMORY[0x1E69E6F48]);
  v48 = v12;
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for FormatDeprecationWarning(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 28);
  v22 = sub_1D725A90C();
  v23 = *(*(v22 - 8) + 56);
  v50 = v21;
  v51 = v19;
  v23(&v19[v21], 1, 1, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602557C();
  v47 = v15;
  v24 = v49;
  sub_1D7264B0C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D5D2CCD8(&v51[v50], &qword_1EDF17F38, MEMORY[0x1E69D6400]);
  }

  else
  {
    v49 = v22;
    v25 = v43;
    v40 = v16;
    v56 = 0;
    sub_1D60247F8(&qword_1EDF43A48, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B58]);
    v26 = v44;
    sub_1D726431C();
    v27 = *(v42 + 32);
    v27(v51, v46, v26);
    v55 = 1;
    sub_1D726431C();
    v28 = v40;
    v27(&v51[*(v40 + 20)], v8, v26);
    v54 = 2;
    v46 = 0;
    v29 = sub_1D726422C();
    v30 = *(v28 + 24);
    v31 = v51;
    v32 = &v51[v30];
    *v32 = v29;
    v32[1] = v33;
    v53 = 3;
    sub_1D60247F8(&qword_1EC882500, MEMORY[0x1E69D6400], MEMORY[0x1E69D6418]);
    sub_1D726427C();
    v34 = v40;
    sub_1D6026144(v25, v31 + v50, &qword_1EDF17F38, MEMORY[0x1E69D6400]);
    v52 = 4;
    v35 = sub_1D726422C();
    v37 = v36;
    v38 = (v31 + *(v34 + 32));
    (*(v45 + 8))(v47, v48);
    *v38 = v35;
    v38[1] = v37;
    sub_1D6026904(v31, v41, type metadata accessor for FormatDeprecationWarning);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D60262D0(v31, type metadata accessor for FormatDeprecationWarning);
  }
}

uint64_t FormatVersioningError.debugDescription.getter()
{
  sub_1D7263D4C();
  v0.n128_f64[0] = MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73C6180);
  FormatVersioningError.errorDescription.getter(v0);
  v1 = sub_1D726217C();
  v3 = v2;

  MEMORY[0x1DA6F9910](v1, v3);

  v4.n128_f64[0] = MEMORY[0x1DA6F9910](0x676E69646F63202CLL, 0xEE00203A68746150);
  v5 = FormatVersioningError.readableCodingPath.getter(v4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 7104878;
    v7 = 0xE300000000000000;
  }

  MEMORY[0x1DA6F9910](v5, v7);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D602437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a5;
  v31 = a1;
  v5 = sub_1D725BD1C();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatVersionInfo(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v28 - v20;
  v22 = sub_1D7264B4C();
  Dictionary<>.formatCodingVersionInfo.getter(v22, v21);

  if ((*(v14 + 48))(v21, 1, v13))
  {
    sub_1D5D2CCD8(v21, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    sub_1D5D2F20C(v31, v32, v33);
    v23 = sub_1D7264B4C();
    Dictionary<>.formatVersion.getter(v23, v8);

    v24 = sub_1D601D6C4(v8);
    (*(v29 + 8))(v8, v30);
    v25 = type metadata accessor for FormatVersionRequirement;
    v26 = v12;
  }

  else
  {
    sub_1D6026904(v21, v17, type metadata accessor for FormatVersionInfo);
    sub_1D5D2CCD8(v21, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    v24 = sub_1D6021D14(v31, v32, v33);
    v25 = type metadata accessor for FormatVersionInfo;
    v26 = v17;
  }

  sub_1D60262D0(v26, v25);
  return v24 & 1;
}

uint64_t sub_1D60246E0(uint64_t a1, uint64_t a2)
{
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6024774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60247F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6024840(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725BD1C();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v97 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v95 = &v90 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v96 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v90 - v19;
  v21 = type metadata accessor for FormatVersionRequirement.Value(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v90 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v90 - v31;
  sub_1D6025EE4(0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v37 = &v90 + *(v36 + 56) - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v39 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6026904(v38, v39, type metadata accessor for FormatVersionRequirement.Value);
  sub_1D6026904(a2, v37, type metadata accessor for FormatVersionRequirement.Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6026904(v39, v28, type metadata accessor for FormatVersionRequirement.Value);
      sub_1D5B580C0(0, &qword_1EDF45AB8, " replacement ");
      v42 = *(v41 + 48);
      v44 = *&v28[v42];
      v43 = *&v28[v42 + 8];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v94 = v39;
        v46 = *&v37[v42];
        v45 = *&v37[v42 + 8];
        v48 = v98;
        v47 = v99;
        (*(v98 + 32))(v16, v37, v99);
        v49 = sub_1D725BCBC();
        v50 = *(v48 + 8);
        v50(v28, v47);
        if (v49)
        {
          if (v43)
          {
            if (v45)
            {
              if (v44 == v46 && v43 == v45)
              {

                v50(v16, v47);
LABEL_20:
                v72 = 1;
LABEL_31:
                v76 = type metadata accessor for FormatVersionRequirement.Value;
                v39 = v94;
                goto LABEL_43;
              }

              v85 = sub_1D72646CC();

              v50(v16, v47);
              goto LABEL_45;
            }

            v50(v16, v47);
          }

          else
          {
            v50(v16, v47);
            v76 = type metadata accessor for FormatVersionRequirement.Value;
            if (!v45)
            {
              v72 = 1;
              v39 = v94;
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        v50(v16, v47);

        goto LABEL_30;
      }

      (*(v98 + 8))(v28, v99);
    }

    else
    {
      sub_1D6026904(v39, v24, type metadata accessor for FormatVersionRequirement.Value);
      sub_1D5B58478(0);
      v52 = *(v51 + 48);
      v53 = *(v51 + 64);
      v54 = *&v24[v53];
      v55 = *&v24[v53 + 8];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v56 = *&v37[v53 + 8];
        v91 = *&v37[v53];
        v92 = v54;
        v93 = v56;
        v94 = v39;
        v58 = v98;
        v57 = v99;
        v59 = *(v98 + 32);
        v60 = v96;
        v59(v96, v37, v99);
        v61 = v95;
        v59(v95, &v24[v52], v57);
        v62 = &v37[v52];
        v63 = v60;
        v64 = v97;
        v59(v97, v62, v57);
        v65 = sub_1D725BCBC();
        v66 = *(v58 + 8);
        v66(v24, v57);
        if (v65)
        {
          v67 = v93;
          v68 = v64;
          v69 = v61;
          if (sub_1D725BCBC())
          {
            v70 = v67;
            if (!v55)
            {
              v86 = v99;
              v66(v97, v99);
              v66(v69, v86);
              v66(v63, v86);
              v76 = type metadata accessor for FormatVersionRequirement.Value;
              v39 = v94;
              if (!v70)
              {
LABEL_46:
                v72 = 1;
                goto LABEL_43;
              }

              goto LABEL_41;
            }

            if (v67)
            {
              if (v92 == v91 && v55 == v67)
              {

                v71 = v99;
                v66(v97, v99);
                v66(v69, v71);
                v66(v63, v71);
                goto LABEL_20;
              }

              v85 = sub_1D72646CC();

              v89 = v99;
              v66(v97, v99);
              v66(v69, v89);
              v66(v63, v89);
LABEL_45:
              v76 = type metadata accessor for FormatVersionRequirement.Value;
              v39 = v94;
              if (v85)
              {
                goto LABEL_46;
              }

              goto LABEL_41;
            }

            v87 = v99;
            v66(v97, v99);
            v66(v69, v87);
            v66(v63, v87);
LABEL_40:
            v39 = v94;
LABEL_41:
            v72 = 0;
            goto LABEL_42;
          }

          v83 = v68;
          v84 = v99;
          v66(v83, v99);
          v66(v61, v84);
          v81 = v63;
          v82 = v84;
        }

        else
        {

          v66(v64, v57);
          v66(v61, v57);
          v81 = v63;
          v82 = v57;
        }

        v66(v81, v82);
LABEL_30:
        v72 = 0;
        goto LABEL_31;
      }

      v73 = *(v98 + 8);
      v74 = &v24[v52];
      v75 = v99;
      v73(v74, v99);
      v73(v24, v75);
    }
  }

  else
  {
    sub_1D6026904(v39, v32, type metadata accessor for FormatVersionRequirement.Value);
    if (!swift_getEnumCaseMultiPayload())
    {
      v77 = v98;
      v78 = v37;
      v79 = v99;
      (*(v98 + 32))(v20, v78, v99);
      v72 = sub_1D725BCBC();
      v80 = *(v77 + 8);
      v80(v20, v79);
      v80(v32, v79);
LABEL_42:
      v76 = type metadata accessor for FormatVersionRequirement.Value;
      goto LABEL_43;
    }

    (*(v98 + 8))(v32, v99);
  }

  v72 = 0;
  v76 = sub_1D6025EE4;
LABEL_43:
  sub_1D60262D0(v39, v76);
  return v72 & 1;
}

uint64_t _s8NewsFeed24FormatDeprecationWarningV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A90C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2ECB0(0, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v39 - v11;
  sub_1D60261C4(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D725BCBC() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for FormatDeprecationWarning(0);
  if ((sub_1D725BCBC() & 1) == 0)
  {
    return 0;
  }

  v19 = v18[6];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = *v20 == *v22 && v21 == v23;
    if (!v24 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v39 = v5;
  v25 = v18[7];
  v26 = *(v14 + 48);
  v27 = MEMORY[0x1E69D6400];
  sub_1D5D2C7C0(a1 + v25, v17, &qword_1EDF17F38, MEMORY[0x1E69D6400]);
  v28 = a2 + v25;
  v29 = v39;
  v40 = v26;
  sub_1D5D2C7C0(v28, &v17[v26], &qword_1EDF17F38, v27);
  v30 = *(v29 + 48);
  if (v30(v17, 1, v4) != 1)
  {
    sub_1D5D2C7C0(v17, v12, &qword_1EDF17F38, MEMORY[0x1E69D6400]);
    if (v30(&v17[v40], 1, v4) != 1)
    {
      (*(v29 + 32))(v8, &v17[v40], v4);
      sub_1D60247F8(&qword_1EC882670, MEMORY[0x1E69D6400], MEMORY[0x1E69D6410]);
      v32 = sub_1D7261FBC();
      v33 = *(v29 + 8);
      v33(v8, v4);
      v33(v12, v4);
      sub_1D5D2CCD8(v17, &qword_1EDF17F38, MEMORY[0x1E69D6400]);
      if ((v32 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    (*(v29 + 8))(v12, v4);
LABEL_17:
    sub_1D60262D0(v17, sub_1D60261C4);
    return 0;
  }

  if (v30(&v17[v40], 1, v4) != 1)
  {
    goto LABEL_17;
  }

  sub_1D5D2CCD8(v17, &qword_1EDF17F38, MEMORY[0x1E69D6400]);
LABEL_21:
  v34 = v18[8];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (v38 && (*v35 == *v37 && v36 == v38 || (sub_1D72646CC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v38)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D602557C()
{
  result = qword_1EC8824E8;
  if (!qword_1EC8824E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8824E8);
  }

  return result;
}

uint64_t sub_1D60255D0(uint64_t a1)
{
  result = sub_1D60247F8(qword_1EC882508, type metadata accessor for FormatVersioningError, &protocol conformance descriptor for FormatVersioningError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6025628(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D60256E4(uint64_t a1)
{
  sub_1D725BD1C();
  if (v1 <= 0x3F)
  {
    sub_1D5B58244(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D5C2ECB0(319, &qword_1EC8825A0, sub_1D60257CC, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D60257CC(uint64_t a1)
{
  if (!qword_1EC8825A8)
  {
    sub_1D5B49474(255, &qword_1EDF01CC8, MEMORY[0x1E69E7C30]);
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8825A8);
    }
  }
}

uint64_t sub_1D60258B4(void *a1)
{
  a1[1] = sub_1D60247F8(qword_1EDF25B50, type metadata accessor for FormatVersionRequirement, &unk_1D728F8C4);
  a1[2] = sub_1D60247F8(&qword_1EC8825B8, type metadata accessor for FormatVersionRequirement, &unk_1D728F89C);
  result = sub_1D60247F8(&qword_1EC8825B0, type metadata accessor for FormatVersionRequirement, &unk_1D728F6CC);
  a1[3] = result;
  return result;
}

uint64_t sub_1D60259A8(void *a1)
{
  a1[1] = sub_1D60247F8(&qword_1EC8825C8, type metadata accessor for FormatVersionRequirement.Value, &unk_1D728F738);
  a1[2] = sub_1D60247F8(&qword_1EC8825D0, type metadata accessor for FormatVersionRequirement.Value, &unk_1D728F710);
  result = sub_1D60247F8(&qword_1EC8825C0, type metadata accessor for FormatVersionRequirement.Value, &unk_1D728F7A0);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6025A58()
{
  result = qword_1EC8825D8;
  if (!qword_1EC8825D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8825D8);
  }

  return result;
}

unint64_t sub_1D6025AB0()
{
  result = qword_1EC8825E0;
  if (!qword_1EC8825E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8825E0);
  }

  return result;
}

unint64_t sub_1D6025B08()
{
  result = qword_1EC8825E8;
  if (!qword_1EC8825E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8825E8);
  }

  return result;
}

unint64_t sub_1D6025B5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6025BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6375646F72746E69 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D6025CD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEC0000006E496465 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6563616C706572 && a2 == 0xEB00000000746E65 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6150676E69646F63 && a2 == 0xEA00000000006874 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1D6025E90()
{
  result = qword_1EC8825F8;
  if (!qword_1EC8825F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8825F8);
  }

  return result;
}

void sub_1D6025EE4(uint64_t a1)
{
  if (!qword_1EC882608)
  {
    type metadata accessor for FormatVersionRequirement.Value(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882608);
    }
  }
}

unint64_t sub_1D6025FA8()
{
  result = qword_1EC882610;
  if (!qword_1EC882610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882610);
  }

  return result;
}

unint64_t sub_1D6025FFC()
{
  result = qword_1EC882630;
  if (!qword_1EC882630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882630);
  }

  return result;
}

void sub_1D6026050(uint64_t a1)
{
  if (!qword_1EC882650)
  {
    sub_1D5B580C0(255, &qword_1EC882658, "version replacement ");
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882650);
    }
  }
}

void sub_1D60260B8(uint64_t a1)
{
  if (!qword_1EC882660)
  {
    sub_1D725BD1C();
    sub_1D5B58244(255, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882660);
    }
  }
}

uint64_t sub_1D6026144(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C2ECB0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1D60261C4(uint64_t a1)
{
  if (!qword_1EC882668)
  {
    sub_1D5C2ECB0(255, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882668);
    }
  }
}

uint64_t sub_1D60262D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D60263A8(uint64_t a1)
{
  sub_1D725BD1C();
  if (v1 <= 0x3F)
  {
    sub_1D5B58244(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_11Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725BD1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_1D60265F8(uint64_t a1)
{
  sub_1D725BD1C();
  if (v1 <= 0x3F)
  {
    sub_1D5B58244(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D60266AC()
{
  result = qword_1EC8826A8;
  if (!qword_1EC8826A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826A8);
  }

  return result;
}

unint64_t sub_1D6026704()
{
  result = qword_1EC8826B0;
  if (!qword_1EC8826B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826B0);
  }

  return result;
}

unint64_t sub_1D602675C()
{
  result = qword_1EC8826B8;
  if (!qword_1EC8826B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826B8);
  }

  return result;
}

unint64_t sub_1D60267B4()
{
  result = qword_1EC8826C0;
  if (!qword_1EC8826C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826C0);
  }

  return result;
}

unint64_t sub_1D6026808()
{
  result = qword_1EC8826C8;
  if (!qword_1EC8826C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826C8);
  }

  return result;
}

unint64_t sub_1D602685C()
{
  result = qword_1EC8826D8;
  if (!qword_1EC8826D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826D8);
  }

  return result;
}

unint64_t sub_1D60268B0()
{
  result = qword_1EC8826E8;
  if (!qword_1EC8826E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826E8);
  }

  return result;
}

uint64_t sub_1D6026904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D602696C()
{
  result = qword_1EC8826F8;
  if (!qword_1EC8826F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8826F8);
  }

  return result;
}

uint64_t sub_1D60269C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6026A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D6026AC4()
{
  result = qword_1EC882718;
  if (!qword_1EC882718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882718);
  }

  return result;
}

unint64_t sub_1D6026B1C()
{
  result = qword_1EC882720;
  if (!qword_1EC882720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882720);
  }

  return result;
}

unint64_t sub_1D6026B74()
{
  result = qword_1EC882728;
  if (!qword_1EC882728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882728);
  }

  return result;
}

unint64_t sub_1D6026BCC()
{
  result = qword_1EC882730;
  if (!qword_1EC882730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882730);
  }

  return result;
}

unint64_t sub_1D6026C24()
{
  result = qword_1EC882738;
  if (!qword_1EC882738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882738);
  }

  return result;
}

unint64_t sub_1D6026C7C()
{
  result = qword_1EC882740;
  if (!qword_1EC882740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882740);
  }

  return result;
}

unint64_t sub_1D6026CD4()
{
  result = qword_1EC882748;
  if (!qword_1EC882748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882748);
  }

  return result;
}

unint64_t sub_1D6026D2C()
{
  result = qword_1EC882750;
  if (!qword_1EC882750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882750);
  }

  return result;
}

unint64_t sub_1D6026D84()
{
  result = qword_1EC882758;
  if (!qword_1EC882758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882758);
  }

  return result;
}

uint64_t sub_1D6026E04(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0xD000000000000017;
      }

      if (a1 == 6)
      {
        return 0x6B6361626C6C6166;
      }

      return 0x2D746C7561666564;
    }

    if (a1 == 8)
    {
      return 0x7469617274726F70;
    }

    if (a1 == 9)
    {
      return 0x6E6F697461636F6CLL;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x696E692D72657375;
    }

    if (a1 == 1)
    {
      return 0x682D697261666173;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  if (a1 == 3)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000013;
}

uint64_t PuzzleStatsState.environment.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleStatsState.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleStatsState(0) + 28);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PuzzleStatsState.debugDescription.getter()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x6D6E6F7269766E65, 0xED0000203A746E65);
  MEMORY[0x1DA6F9910](*v0, v0[1]);
  MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73C6290);
  v1 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73C62B0);
  sub_1D725891C();
  v2 = sub_1D7261D4C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0x6144747261747320, 0xEC000000203A6574);
  type metadata accessor for PuzzleStatsState(0);
  sub_1D5CE4528(&qword_1EDF3C3B0, MEMORY[0x1E6969570]);
  v3 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v3);

  return 0;
}

uint64_t sub_1D6027220@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D602732C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6027248(uint64_t a1)
{
  v2 = sub_1D5D11ACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6027284(uint64_t a1)
{
  v2 = sub_1D5D11ACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D60272D8()
{
  result = qword_1EC882760;
  if (!qword_1EC882760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882760);
  }

  return result;
}

uint64_t sub_1D602732C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616C756D7563 && a2 == 0xEF73746174536576 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C62D0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t GenericDataVisualizationResponseItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void GenericDataVisualizationResponseItem.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6027918(0, &qword_1EC882768, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6027718();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v14 = v11;
    type metadata accessor for WebEmbedDataVisualizationURLDataSource(0);
    v17 = 1;
    sub_1D6027A10(&unk_1EDF065B0, &protocol conformance descriptor for WebEmbedDataVisualizationURLDataSource);
    v15 = sub_1D726420C();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
    a2[1] = v13;
    a2[2] = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_1D6027718()
{
  result = qword_1EC882770;
  if (!qword_1EC882770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882770);
  }

  return result;
}

uint64_t GenericDataVisualizationResponseItem.encode(to:)(void *a1)
{
  sub_1D6027918(0, &qword_1EC882778, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - v7;
  v14[0] = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D6027718();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v14[1] = v14[0];
    v15 = 1;
    sub_1D5B4DA90(0);
    sub_1D602797C();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v12);
}

void sub_1D6027918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6027718();
    v7 = a3(a1, &type metadata for GenericDataVisualizationResponseItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D602797C()
{
  result = qword_1EDF04AC0;
  if (!qword_1EDF04AC0)
  {
    sub_1D5B4DA90(255);
    sub_1D6027A10(&qword_1EDF065C0, &protocol conformance descriptor for WebEmbedDataVisualizationURLDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04AC0);
  }

  return result;
}

uint64_t sub_1D6027A10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WebEmbedDataVisualizationURLDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6027A54()
{
  if (*v0)
  {
    return 0x53617461446C7275;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1D6027AA0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x53617461446C7275 && a2 == 0xEE0073656372756FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D6027B8C(uint64_t a1)
{
  v2 = sub_1D6027718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6027BC8(uint64_t a1)
{
  v2 = sub_1D6027718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6027C58()
{
  result = qword_1EC882780;
  if (!qword_1EC882780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882780);
  }

  return result;
}

unint64_t sub_1D6027CB0()
{
  result = qword_1EC882788;
  if (!qword_1EC882788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882788);
  }

  return result;
}

unint64_t sub_1D6027D08()
{
  result = qword_1EC882790;
  if (!qword_1EC882790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882790);
  }

  return result;
}

uint64_t FeedGroupKind.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_4:
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](*(v1 + 16), *(v1 + 24));
    return 0x472074616D726F46;
  }

  v4 = vorrq_s8(*(v0 + 3), *(v0 + 5));
  v5 = *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v0[2] | v0[1];
  if (v1 == 0x8000000000000000 && v5 == 0)
  {
    return 7364935;
  }

  result = 0x656E696C64616548;
  if ((v1 != 0x8000000000000008 || v5) && (v1 != 0x8000000000000010 || v5))
  {
    if (v1 != 0x8000000000000018 || v5)
    {
      if (v1 != 0x8000000000000020 || v5)
      {
        if (v1 != 0x8000000000000028 || v5)
        {
          if (v1 != 0x8000000000000030 || v5)
          {
            if (v1 != 0x8000000000000038 || v5)
            {
              if (v1 != 0x8000000000000040 || v5)
              {
                if (v1 == 0x8000000000000048 && v5 == 0)
                {
                  return 0x656D656761676E45;
                }

                else
                {
                  return 0x6E6967756C50;
                }
              }

              else
              {
                return 0x69726F6765746143;
              }
            }

            else
            {
              return 25665;
            }
          }

          else
          {
            return 0xD000000000000010;
          }
        }

        else
        {
          return 0xD000000000000013;
        }
      }

      else
      {
        return 0x4720736575737349;
      }
    }

    else
    {
      return 0x5320736575737349;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_8NewsFeed0B9GroupKindO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D6027FE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 56))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6028044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
    }
  }

  return result;
}

uint64_t sub_1D60280D4(void *a1)
{
  v3 = v1;
  sub_1D602C218(0, &qword_1EC882848, sub_1D602C1C4, &type metadata for A18_V15.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602C1C4();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D602C280(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D602831C(uint64_t a1)
{
  v2 = sub_1D602C1C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6028358(uint64_t a1)
{
  v2 = sub_1D602C1C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6028394@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D602BF24(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D60283F4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D602BB94();

  return sub_1D725A24C();
}

uint64_t sub_1D6028470@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D602C218(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D602852C(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v108 = a2;
  v110 = a1;
  v94 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v109 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v111 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v106 = &v93 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v123 = &v93 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v93 - v17;
  v19 = sub_1D725895C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for GroupLayoutContext(0);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v24);
  v107 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v93 - v28;
  v100 = &v93 - v28;
  v105 = type metadata accessor for GroupLayoutBindingContext(0);
  v101 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v30);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v99 = *v5;
  inited = *(v5 + 1);
  v35 = v5[16];
  sub_1D5BE3ED8(v110, v32, type metadata accessor for GroupLayoutBindingContext);
  v102 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v108, v29, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v97 = sub_1D725893C();
  v96 = v36;
  (*(v20 + 8))(v23, v19);
  v121 = &type metadata for A18_V15;
  v98 = sub_1D5ECE2E0();
  v122 = v98;
  LOBYTE(v119) = v33;
  *(&v119 + 1) = inited;
  v120 = v35;
  type metadata accessor for GroupLayoutKey(0);
  v37 = swift_allocObject();
  sub_1D5BEE8A0(inited, v35);
  v38 = &type metadata for A18_V15;
  v112[0] = sub_1D7264C5C();
  v112[1] = v39;
  v117 = 95;
  v118 = 0xE100000000000000;
  v115 = 45;
  v116 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v43 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v44 = v96;
  *v43 = v97;
  v43[1] = v44;
  sub_1D5B68374(&v119, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v45 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  v46 = v105;
  (*(v101 + 56))(v37 + v45, 0, 1, v105);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v100, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v103 + 56);
  v103 = v37;
  v48(v37 + v47, 0, 1, v104);
  __swift_destroy_boxed_opaque_existential_1(&v119);
  v121 = &type metadata for A18_V15;
  v122 = v98;
  LOBYTE(v119) = v99;
  *(&v119 + 1) = inited;
  v120 = v35;
  sub_1D5BE3ED8(v108, v107, v102);
  v49 = *(v46 + 56);
  v50 = *&v110[v49];
  v51 = *(v50 + 16);
  sub_1D5BEE8A0(inited, v35);
  if (v51 && (v52 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v53 & 1) != 0) && (v51 = *(*(v50 + 56) + 8 * v52), v54 = , v55 = sub_1D5C14D80(v54), , v55))
  {
    v104 = v49;
    v51 = *(v55 + 16);
    if (v51)
    {
      v49 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      v50 = v109;
      v108 = *(v55 + 16);
      do
      {
        v56 = *(v55 + 16);
        if (v49 >= v56)
        {
          __break(1u);
          goto LABEL_62;
        }

        v57 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v38 = *(v50 + 72);
        sub_1D5BE3ED8(v55 + v57 + v38 * v49, v18, type metadata accessor for FeedHeadline);
        if ((v18[32] & 4) != 0)
        {
          sub_1D5BDA904(v18, v123, type metadata accessor for FeedHeadline);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v112[0] = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D5C0F91C(0, *(v35 + 16) + 1, 1);
            v50 = v109;
            v35 = v112[0];
          }

          inited = *(v35 + 16);
          v59 = *(v35 + 24);
          if (inited >= v59 >> 1)
          {
            sub_1D5C0F91C((v59 > 1), inited + 1, 1);
            v50 = v109;
            v35 = v112[0];
          }

          *(v35 + 16) = inited + 1;
          sub_1D5BDA904(v123, v35 + v57 + inited * v38, type metadata accessor for FeedHeadline);
          v51 = v108;
        }

        else
        {
          sub_1D5BE792C(v18, type metadata accessor for FeedHeadline);
        }

        ++v49;
      }

      while (v51 != v49);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    v63 = *&v110[*(v105 + 72)];
    v64 = *&v110[*(v105 + 76)];
    if (__OFSUB__(v63, v64))
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v65 = sub_1D5C0FAD4(v35, v63 - v64);
    v38 = sub_1D5C11E10(&unk_1F50FC288, v65, v55);

    v49 = v104;
    if (v38)
    {

LABEL_25:
      strcpy(v112, "FeedHeadline");
      BYTE5(v112[1]) = 0;
      HIWORD(v112[1]) = -5120;
      v113 = 0;
      v114 = 0;

      v67 = sub_1D5C107C4(v66);

      sub_1D5BDACA8(v112, v67);

      goto LABEL_26;
    }

    v38 = sub_1D5C11E10(&unk_1F50FC288, v35, v55);

    if (v38)
    {
      goto LABEL_25;
    }

    v112[0] = &unk_1F50FC288;
    v4 = v95;
    sub_1D5E239F4(v112);
    if (!v4)
    {

      v60 = v112[0];
      if (!*(v112[0] + 2))
      {
        __break(1u);
LABEL_58:
        v112[0] = v38;
        v4 = v95;
        sub_1D5E239F4(v112);
        if (v4)
        {
          goto LABEL_69;
        }

        if (!*(v112[0] + 2))
        {
          goto LABEL_68;
        }

        v91 = *(v112[0] + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v92, "FeedHeadline");
        v92[13] = 0;
        *(v92 + 7) = -5120;
        *(v92 + 2) = 0;
        *(v92 + 3) = 0;
        *(v92 + 4) = 0;
        *(v92 + 5) = v91;
        *(v92 + 6) = 0;
        *(v92 + 7) = 0;
        v92[64] = 0;
        swift_willThrow();
        swift_setDeallocating();
LABEL_43:

LABEL_44:
        sub_1D5BE792C(v107, type metadata accessor for GroupLayoutContext);
        __swift_destroy_boxed_opaque_existential_1(&v119);
        return;
      }

LABEL_18:
      v61 = *(v60 + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v62, "FeedHeadline");
      v62[13] = 0;
      *(v62 + 7) = -5120;
      *(v62 + 2) = 0;
      *(v62 + 3) = 0;
      *(v62 + 4) = 4;
      *(v62 + 5) = v61;
      *(v62 + 6) = 0;
      *(v62 + 7) = 0;
      v62[64] = 0;
      swift_willThrow();
      goto LABEL_44;
    }
  }

  else
  {
    if (!qword_1F50FC2A8)
    {

      v38 = MEMORY[0x1E69E7CC0];
LABEL_26:
      sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
      inited = swift_initStackObject();
      v68 = MEMORY[0x1E69E7CC0];
      *(inited + 16) = MEMORY[0x1E69E7CC0];
      v50 = inited + 16;
      swift_beginAccess();
      v35 = sub_1D5C0F8FC(0, 1, 1, v68);
      v51 = *(v35 + 16);
      v56 = *(v35 + 24);
      v18 = (v51 + 1);
      if (v51 >= v56 >> 1)
      {
        goto LABEL_64;
      }

      while (1)
      {
        *(v35 + 16) = v18;
        v69 = v35 + 16 * v51;
        *(v69 + 32) = sub_1D63106DC;
        *(v69 + 40) = 0;
        *v50 = v35;
        swift_endAccess();
        if (!*(*&v110[v49] + 16))
        {
          break;
        }

        sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
        if ((v70 & 1) == 0)
        {
          break;
        }

        v18 = sub_1D5C14D80(v71);

        if (!v18)
        {
          break;
        }

        v123 = inited;
        v108 = v38;
        v72 = *(v18 + 2);
        if (!v72)
        {
          v35 = MEMORY[0x1E69E7CC0];
LABEL_47:
          if ((*v110 & 1) == 0)
          {

            sub_1D62F071C(v35);
            v81 = v80;

            v35 = v81;
          }

          v82 = *&v110[*(v105 + 72)];
          v83 = *&v110[*(v105 + 76)];
          if (!__OFSUB__(v82, v83))
          {
            v84 = sub_1D5C0FAD4(v35, v82 - v83);
            v79 = sub_1D5C11E10(&unk_1F50FC2B0, v84, v18);

            if (v79)
            {
            }

            else
            {
              v38 = &unk_1F50FC2B0;
              v79 = sub_1D5C11E10(&unk_1F50FC2B0, v35, v18);

              if (!v79)
              {
                goto LABEL_58;
              }
            }

            strcpy(v112, "FeedHeadline");
            BYTE5(v112[1]) = 0;
            HIWORD(v112[1]) = -5120;
            v113 = 0;
            v114 = 0;

            v86 = sub_1D5C107C4(v85);

            sub_1D5BDACA8(v112, v86);
            swift_setDeallocating();

            v38 = v108;
            goto LABEL_54;
          }

          goto LABEL_67;
        }

        v38 = 0;
        v35 = MEMORY[0x1E69E7CC0];
        v50 = v109;
        while (1)
        {
          v56 = *(v18 + 2);
          if (v38 >= v56)
          {
            break;
          }

          v49 = (*(v50 + 80) + 32) & ~*(v50 + 80);
          v73 = *(v50 + 72);
          v74 = v106;
          sub_1D5BE3ED8(&v18[v49 + v73 * v38], v106, type metadata accessor for FeedHeadline);
          sub_1D5BDA904(v74, v111, type metadata accessor for FeedHeadline);
          v75 = swift_isUniquelyReferenced_nonNull_native();
          v112[0] = v35;
          if ((v75 & 1) == 0)
          {
            sub_1D5C0F91C(0, *(v35 + 16) + 1, 1);
            v50 = v109;
            v35 = v112[0];
          }

          v51 = *(v35 + 16);
          v76 = *(v35 + 24);
          inited = v51 + 1;
          if (v51 >= v76 >> 1)
          {
            sub_1D5C0F91C((v76 > 1), v51 + 1, 1);
            v50 = v109;
            v35 = v112[0];
          }

          ++v38;
          *(v35 + 16) = inited;
          sub_1D5BDA904(v111, v35 + v49 + v51 * v73, type metadata accessor for FeedHeadline);
          if (v72 == v38)
          {
            goto LABEL_47;
          }
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        v35 = sub_1D5C0F8FC((v56 > 1), v18, 1, v35);
      }

      if (!qword_1F50FC2D0)
      {

        v79 = MEMORY[0x1E69E7CC0];
LABEL_54:
        v112[0] = v38;
        sub_1D5C122E4(v79);
        v87 = v112[0];
        v88 = type metadata accessor for A18_V15.Bound(0);
        v89 = v94;
        v94[3] = v88;
        v89[4] = sub_1D602C280(&qword_1EC8827A8, type metadata accessor for A18_V15.Bound, &unk_1D7290620);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
        *boxed_opaque_existential_1 = v103;
        sub_1D5B63F14(&v119, (boxed_opaque_existential_1 + 1));
        sub_1D5BDA904(v107, boxed_opaque_existential_1 + *(v88 + 24), type metadata accessor for GroupLayoutContext);
        *(boxed_opaque_existential_1 + *(v88 + 28)) = v87;
        return;
      }

      v112[0] = &unk_1F50FC2B0;
      v4 = v95;
      sub_1D5E239F4(v112);
      if (v4)
      {
        goto LABEL_69;
      }

      if (*(v112[0] + 2))
      {
        v77 = *(v112[0] + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v78, "FeedHeadline");
        v78[13] = 0;
        *(v78 + 7) = -5120;
        *(v78 + 2) = 0;
        *(v78 + 3) = 0;
        *(v78 + 4) = 0;
        *(v78 + 5) = v77;
        *(v78 + 6) = 0;
        *(v78 + 7) = 0;
        v78[64] = 0;
        swift_willThrow();
        goto LABEL_43;
      }

      __break(1u);
      goto LABEL_66;
    }

    v112[0] = &unk_1F50FC288;
    v4 = v95;
    sub_1D5E239F4(v112);
    if (!v4)
    {

      v60 = v112[0];
      v56 = *(v112[0] + 2);
      if (!v56)
      {
        goto LABEL_63;
      }

      goto LABEL_18;
    }
  }

LABEL_69:

  __break(1u);
}

void sub_1D60294D8(_BYTE *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  *&v41 = sub_1D725A36C();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for A18_V15.Bound(0);
  v8 = v1 + *(v7 + 24);
  v9 = type metadata accessor for GroupLayoutContext(0);
  v10 = *(v9 + 40);
  v11 = v8;
  v42 = v8;
  v12 = *(v8 + v10);
  v13 = *(v12 + 16);
  v14 = *(v11 + *(v9 + 32));
  sub_1D5B68374(v13 + 16, v53);
  sub_1D5B68374(v13 + 56, v52);
  v15 = v14 * *(v13 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v53, inited + 16);
  sub_1D5B63F14(v52, inited + 56);
  *(inited + 96) = v15;
  v51[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v51, v54);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  __swift_destroy_boxed_opaque_existential_1((inited + 56));
  sub_1D5B49474(0, &qword_1EDF27C08, &protocol descriptor for HeadlineViewStylerType);
  v17 = 2;
  v18 = sub_1D726276C();
  *(v18 + 16) = 2;
  sub_1D5B68374(v54, v18 + 32);
  sub_1D5B63F14(v54, v18 + 72);
  v19 = *(v12 + 16);
  sub_1D5B68374(v19 + 16, v53);
  sub_1D5B68374(v19 + 56, v52);
  v20 = v14 * *(v19 + 96);
  v21 = swift_initStackObject();
  sub_1D5B63F14(v53, v21 + 16);
  sub_1D5B63F14(v52, v21 + 56);
  *(v21 + 96) = v20;
  v51[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v51, v54);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v21 + 16));
  __swift_destroy_boxed_opaque_existential_1((v21 + 56));
  v22 = sub_1D6F50B74(v54, *(*(v2 + *(v7 + 28)) + 16) - 1);
  *&v54[0] = v18;
  sub_1D698609C(v22);
  v23 = *&v54[0];
  v43 = v2;
  v50[2] = v2;

  v25 = sub_1D6310828(v24, v23, sub_1D602BB20, v50);

  v26 = *(v25 + 16);
  if (v26 < 2)
  {
    v17 = *(v25 + 16);
  }

  v27 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
  v28 = v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v29 = (2 * v26) | 1;
  v30 = *MEMORY[0x1E69D7130];
  v31 = sub_1D7259D1C();
  (*(*(v31 - 8) + 104))(v6, v30, v31);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v41);
  v45 = v25;
  v46 = v25;
  v47 = v28;
  v48 = v17;
  v49 = v29;
  sub_1D602BC64(0, &qword_1EC8827C8, MEMORY[0x1E69D73B8]);
  swift_allocObject();

  v42 = sub_1D725A4CC();
  sub_1D725A4DC();
  v32 = v55;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v33 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v40 = v54[1];
  v41 = v54[0];
  *&v54[0] = v25;
  *&v53[0] = v32;
  MEMORY[0x1EEE9AC00](v33, v34);

  v35 = sub_1D725C00C();

  v36 = v44;
  *v44 = 0;
  v37 = v41;
  *(v36 + 24) = v40;
  *(v36 + 8) = v37;
  *&v54[0] = v35;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v38 = sub_1D72623BC();

  v39 = MEMORY[0x1E69E7CC0];
  *(v36 + 5) = v38;
  *(v36 + 6) = v39;
}

uint64_t sub_1D6029AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v10, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v14);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v11, v10, v14, a4);
}

uint64_t sub_1D6029B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21[-v16];
  v27 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 18;
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7490], v13);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v19 = MEMORY[0x1E69D7150];
  sub_1D602BC64(0, &qword_1EC8827E8, MEMORY[0x1E69D7150]);
  sub_1D602BC20(&qword_1EC8827F0, &qword_1EC8827E8, v19, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1D6029DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a5;
  v59 = a6;
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v48 = sub_1D602BB40;
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v36 - v11);
  v66 = a1;
  v38 = a1;
  v13 = sub_1D725994C();
  v50 = v13;
  v14 = swift_allocBox();
  v53 = *MEMORY[0x1E69D6F50];
  v15 = *(v13 - 8);
  v52 = *(v15 + 104);
  v54 = v15 + 104;
  v52(v16);
  *v12 = v14;
  v51 = *MEMORY[0x1E69D73C0];
  v17 = *(v9 + 104);
  v17(v12);
  v47 = v9 + 104;
  v18 = v17;
  v46 = v17;
  v19 = MEMORY[0x1E69D6F38];
  sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
  v60 = v20;
  v36[1] = sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v19, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v21 = *(v9 + 8);
  v39 = v9 + 8;
  v21(v12, v8);
  v66 = a1;
  v49 = *MEMORY[0x1E69D74A8];
  v18(v12);
  sub_1D602BCE8(0);
  v45 = v22;
  sub_1D602C218(0, &qword_1EC882810, v48, &type metadata for A18_V15.Layout, MEMORY[0x1E69D70D8]);
  v42 = v23;
  v24 = *(v23 - 8);
  v48 = *(v24 + 72);
  v44 = *(v24 + 80);
  v25 = (v44 + 32) & ~v44;
  v37 = v25;
  v26 = swift_allocObject();
  v43 = xmmword_1D7273AE0;
  *(v26 + 16) = xmmword_1D7273AE0;
  v41 = *MEMORY[0x1E69D7098];
  v40 = *(v24 + 104);
  v40(v26 + v25);
  v65 = v55;
  sub_1D72599EC();

  v27 = v21;
  v21(v12, v8);
  v28 = v38;
  v66 = v38;
  v29 = v50;
  v30 = swift_allocBox();
  (v52)(v31, v53, v29);
  *v12 = v30;
  v32 = v46;
  (v46)(v12, v51, v8);
  sub_1D7259A9C();
  v27(v12, v8);
  v66 = v28;
  (v32)(v12, v49, v8);
  v33 = v37;
  v34 = swift_allocObject();
  *(v34 + 16) = v43;
  (v40)(v34 + v33, v41, v42);
  v61 = v56;
  v62 = v57;
  v63 = v58;
  v64 = v59;
  sub_1D72599EC();

  return (v27)(v12, v8);
}

uint64_t sub_1D602A374(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 9;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
  sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 9;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D602A618(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
  sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D602ABE8(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + *(v15 + 72) + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
  sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

void sub_1D602B1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v27 - v13);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v20 != 3)
  {
    return;
  }

  if ((a5 >> 1) <= a4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v21 = *(v17 + 72);
  v30 = *MEMORY[0x1E69D7490];
  v28 = (v11 + 8);
  v29 = (v11 + 104);
  v31 = v21;
  v22 = a3 + v21 * a4;
  v27 = a1;
  do
  {
    sub_1D5BE3ED8(v22, v19, type metadata accessor for HeadlineViewLayout.Context);
    v32 = a1;
    v23 = swift_allocObject();
    *(v23 + 16) = 6;
    *v14 = v23;
    v24 = (*v29)(v14, v30, v10);
    MEMORY[0x1EEE9AC00](v24, v25);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
    sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v26, MEMORY[0x1E69D6F40]);
    sub_1D7259A2C();
    a1 = v27;
    (*v28)(v14, v10);
    sub_1D5BE792C(v19, type metadata accessor for HeadlineViewLayout.Context);
    v22 += v31;
    --v20;
  }

  while (v20);
}

uint64_t sub_1D602B508(uint64_t a1, uint64_t a2)
{
  v27[0] = a2;
  v3 = type metadata accessor for HeadlineViewLayout.Options(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D602C218(0, &qword_1EC8827E0, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v27 - v12);
  v27[1] = a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  v15 = v4[7];
  v16 = *MEMORY[0x1E69D7348];
  v17 = sub_1D725A34C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v7[v15], v16, v17);
  (*(v18 + 56))(&v7[v15], 0, 1, v17);
  v19 = *MEMORY[0x1E69DDC70];
  *v7 = 0;
  *&v7[v4[8]] = 0;
  *&v7[v4[9]] = v19;
  v20 = *MEMORY[0x1E69DDCE0];
  v21 = *(MEMORY[0x1E69DDCE0] + 8);
  v22 = *(MEMORY[0x1E69DDCE0] + 16);
  v23 = *(MEMORY[0x1E69DDCE0] + 24);
  v24 = v19;
  _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v27[0], v7, v20, v21, v22, v23);
  sub_1D5BE792C(v7, type metadata accessor for HeadlineViewLayout.Options);
  v25 = MEMORY[0x1E69D6F38];
  sub_1D602BC64(0, &qword_1EC8827F8, MEMORY[0x1E69D6F38]);
  sub_1D602BC20(&qword_1EC882800, &qword_1EC8827F8, v25, MEMORY[0x1E69D6F40]);
  sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D602B868@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V15.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D602B97C(uint64_t a1)
{
  *(a1 + 8) = sub_1D602B9AC();
  result = sub_1D602BA00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D602B9AC()
{
  result = qword_1EC882798;
  if (!qword_1EC882798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882798);
  }

  return result;
}

unint64_t sub_1D602BA00()
{
  result = qword_1EC8827A0;
  if (!qword_1EC8827A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8827A0);
  }

  return result;
}

uint64_t type metadata accessor for A18_V15.Bound(uint64_t a1)
{
  result = qword_1EC8827B0;
  if (!qword_1EC8827B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D602BAC8(uint64_t a1)
{
  result = sub_1D602C280(&qword_1EC8827C0, type metadata accessor for A18_V15.Bound, &unk_1D72905F8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D602BB40()
{
  result = qword_1EC8827D0;
  if (!qword_1EC8827D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8827D0);
  }

  return result;
}

unint64_t sub_1D602BB94()
{
  result = qword_1EC8827D8;
  if (!qword_1EC8827D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8827D8);
  }

  return result;
}

uint64_t sub_1D602BC20(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D602BC64(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D602BC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V15.Layout;
    v8[1] = &type metadata for A18_V15.Layout.Attributes;
    v8[2] = sub_1D602BB40();
    v8[3] = sub_1D602BB94();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D602BCE8(uint64_t a1)
{
  if (!qword_1EC882808)
  {
    sub_1D602C218(255, &qword_1EC882810, sub_1D602BB40, &type metadata for A18_V15.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882808);
    }
  }
}

unint64_t sub_1D602BDC8()
{
  result = qword_1EC882818;
  if (!qword_1EC882818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882818);
  }

  return result;
}

unint64_t sub_1D602BE20()
{
  result = qword_1EC882820;
  if (!qword_1EC882820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882820);
  }

  return result;
}

unint64_t sub_1D602BE78()
{
  result = qword_1EC882828;
  if (!qword_1EC882828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882828);
  }

  return result;
}

unint64_t sub_1D602BED0()
{
  result = qword_1EC882830;
  if (!qword_1EC882830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882830);
  }

  return result;
}

uint64_t sub_1D602BF24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D602C218(0, &qword_1EC882838, sub_1D602C1C4, &type metadata for A18_V15.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D602C1C4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D602C280(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D602C1C4()
{
  result = qword_1EC882840;
  if (!qword_1EC882840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882840);
  }

  return result;
}

void sub_1D602C218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D602C280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D602C2DC()
{
  result = qword_1EC882850;
  if (!qword_1EC882850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882850);
  }

  return result;
}

unint64_t sub_1D602C334()
{
  result = qword_1EC882858;
  if (!qword_1EC882858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882858);
  }

  return result;
}

unint64_t sub_1D602C38C()
{
  result = qword_1EC882860;
  if (!qword_1EC882860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882860);
  }

  return result;
}

uint64_t sub_1D602C3F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v202 = a3;
  v221 = a2;
  v205 = a1;
  v181 = a4;
  v4 = *a1;
  v198 = *(*a1 + 88);
  v196 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v179 = *(v5 - 8);
  v180 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v178 = &v177 - v7;
  v8 = sub_1D725ABCC();
  v182 = *(v8 - 8);
  v183 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v220 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725789C();
  v200 = *(v11 - 8);
  v201 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v199 = (&v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BA2E54(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v195 = &v177 - v16;
  sub_1D5BA2E54(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v194 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v193 = &v177 - v22;
  sub_1D5BA2E54(0, &qword_1EDF17480, sub_1D5B9A9C8);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v192 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v191 = &v177 - v28;
  v208 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17490, &qword_1EDF17498, MEMORY[0x1E69D6200], sub_1D5B9E588);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v240 = &v177 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v204 = &v177 - v34;
  sub_1D5BA2E54(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v209 = &v177 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v207 = &v177 - v40;
  sub_1D5B9D284(0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v177 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v177 - v47;
  v49 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v53 = &v177 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v177 - v56;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v49);
  v59 = v58;
  v218 = v58;
  v60 = *(v58 - 8);
  v61 = *(v60 + 56);
  v217 = v61;
  v219 = v60 + 56;
  v213 = v57;
  (v61)(v57, 1, 1, v58);
  v214 = v53;
  (v61)(v53, 1, 1, v59);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  v216 = v62;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  v215 = v63;
  swift_allocObject();
  v212 = sub_1D725C4BC();
  sub_1D5B9E048(0, &qword_1EDF17458, MEMORY[0x1E69D6200]);
  v65 = v64;
  v188 = v64;
  v66 = *(v64 - 8);
  v67 = *(v66 + 56);
  v189 = v67;
  v190 = v66 + 56;
  v184 = v48;
  v67(v48, 1, 1, v64);
  v185 = v44;
  v67(v44, 1, 1, v65);
  sub_1D5B9E048(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  v187 = v68;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E048(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
  v186 = v69;
  swift_allocObject();
  v211 = sub_1D725C4BC();
  sub_1D5BA21B0(0);
  v71 = v70;
  v72 = *(*(v70 - 8) + 56);
  v73 = v207;
  v72(v207, 1, 1, v70);
  v74 = v209;
  v72(v209, 1, 1, v71);
  sub_1D5B99A0C(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4(0);
  swift_allocObject();
  v210 = sub_1D725C4BC();
  v72(v73, 1, 1, v71);
  v72(v74, 1, 1, v71);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v209 = sub_1D725C4BC();
  v76 = v217;
  v75 = v218;
  v217(v213, 1, 1, v218);
  v76(v214, 1, 1, v75);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v207 = sub_1D725C4BC();
  sub_1D5B9E588(0, &qword_1EDF17498, v208);
  v78 = v77;
  v79 = *(*(v77 - 8) + 56);
  v80 = v204;
  v79(v204, 1, 1, v77);
  v81 = v240;
  v79(v240, 1, 1, v78);
  sub_1D5B9E588(0, &qword_1EDF173D8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E588(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v208 = sub_1D725C4BC();
  v79(v80, 1, 1, v78);
  v79(v81, 1, 1, v78);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v240 = sub_1D725C4BC();
  v82 = v213;
  v84 = v217;
  v83 = v218;
  v217(v213, 1, 1, v218);
  v85 = v214;
  v84(v214, 1, 1, v83);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v204 = sub_1D725C4BC();
  v84(v82, 1, 1, v83);
  v84(v85, 1, 1, v83);
  v86 = AssociatedConformanceWitness;
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v216 = sub_1D725C4BC();
  sub_1D5B9A9C8(0);
  v88 = v87;
  v89 = *(*(v87 - 8) + 56);
  v89(v191, 1, 1, v87);
  v89(v192, 1, 1, v88);
  sub_1D5B9ABAC(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA4D44(0);
  swift_allocObject();
  v215 = sub_1D725C4BC();
  v90 = v188;
  v91 = v189;
  v189(v184, 1, 1, v188);
  v91(v185, 1, 1, v90);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v214 = sub_1D725C4BC();
  sub_1D5B9E4F4(0);
  v93 = v92;
  v94 = *(*(v92 - 8) + 56);
  v94(v193, 1, 1, v92);
  v94(v194, 1, 1, v93);
  sub_1D5BA6158(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B99B3C(0);
  swift_allocObject();
  v213 = sub_1D725C4BC();
  sub_1D725C4CC();
  v96 = type metadata accessor for FeedCursorGroup(0, v196, v198, v95);
  v97 = v221;
  *&v229 = FeedCursorGroup.identifier.getter(v96);
  *(&v229 + 1) = v98;
  sub_1D725C74C();

  sub_1D725C4CC();
  v217 = v96;
  v219 = *(v96 + 36);
  v99 = *(v86 + 72);
  v218 = swift_checkMetadataState();
  *&v229 = v99(v218, v86);
  *(&v229 + 1) = v100;
  sub_1D725C74C();

  sub_1D725C4CC();
  v101 = sub_1D725891C();
  v102 = *(v101 - 8);
  v103 = *(v102 + 16);
  v104 = v195;
  v103(v195, v97, v101);
  v105 = *(v102 + 56);
  v105(v104, 0, 1, v101);
  v106 = v104;
  sub_1D725C74C();

  sub_1D725C4CC();
  v107 = v205;
  v103(v106, v205 + qword_1EDFFCF50, v101);
  v105(v106, 0, 1, v101);
  v108 = v207;
  v109 = v221;
  sub_1D725C74C();

  sub_1D725C4CC();
  v110 = v107[3];
  *&v229 = v107[2];
  *(&v229 + 1) = v110;

  sub_1D725C74C();

  sub_1D725B06C();
  swift_allocObject();
  v111 = sub_1D72578DC();
  v112 = v199;
  *v199 = 0x7974696E69666E69;
  v112[1] = 0xE800000000000000;
  v112[2] = 0x74696E69666E692DLL;
  v112[3] = 0xE900000000000079;
  v112[4] = 7233902;
  v112[5] = 0xE300000000000000;
  (*(v200 + 104))(v112, *MEMORY[0x1E6967FE0], v201);
  sub_1D72578AC();
  v113 = v203;
  sub_1D725B04C();
  if (v113)
  {
    (*(*(v217 - 1) + 8))(v109);

    v114 = v209;
LABEL_5:
    *&v229 = v212;
    *(&v229 + 1) = v211;
    v230 = v210;
    v231 = v114;
    v232 = v108;
    v233 = v208;
    v234 = v240;
    v235 = v204;
    v236 = v216;
    v237 = v215;
    v238 = v214;
    v239 = v213;
    return sub_1D5BA705C(&v229);
  }

  v203 = 0;
  sub_1D725C4CC();
  *&v229 = 0x2D617461642E67;
  *(&v229 + 1) = 0xE700000000000000;
  v202 = v111;
  v115 = v107[2];
  v116 = v107[3];

  MEMORY[0x1DA6F9910](v115, v116);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v117 = v217;
  v118 = FeedCursorGroup.identifier.getter(v217);
  MEMORY[0x1DA6F9910](v118);

  v119 = v229;
  v120 = v107[2];
  v121 = v107[3];

  v122 = sub_1D725ABAC();
  *&v229 = sub_1D60F2034(v119, *(&v119 + 1), v120, v121, v122, v123);
  *(&v229 + 1) = v124;
  v230 = v125;
  sub_1D5BA1DA8(0, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
  swift_allocObject();
  *&v229 = sub_1D725C56C();
  sub_1D725C74C();

  v201 = sub_1D725C4CC();
  *&v229 = 0x2D6C6F6F702E67;
  *(&v229 + 1) = 0xE700000000000000;
  v126 = v107[2];
  v127 = v107[3];

  MEMORY[0x1DA6F9910](v126, v127);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v128 = v117;
  v129 = v221;
  v130 = FeedCursorGroup.identifier.getter(v128);
  MEMORY[0x1DA6F9910](v130);

  v131 = *(&v229 + 1);
  v132 = v107[3];
  v199 = v107[2];
  v200 = v229;

  *&v229 = sub_1D725ABBC();
  sub_1D725B4FC();
  sub_1D5B9DE94(&unk_1EDF17B58, MEMORY[0x1E69D6878], MEMORY[0x1E69D6880]);
  v133 = v203;
  v134 = sub_1D72578BC();
  if (v133)
  {

    (*(*(v217 - 1) + 8))(v129);

    (*(v182 + 8))(v220, v183);
    v114 = v209;
    v108 = v207;
    goto LABEL_5;
  }

  v203 = 0;
  v137 = v134;
  v138 = v135;

  *&v229 = sub_1D60F2034(v200, v131, v199, v132, v137, v138);
  *(&v229 + 1) = v139;
  v230 = v140;
  swift_allocObject();
  *&v229 = sub_1D725C56C();
  sub_1D725C74C();

  sub_1D725C4CC();
  v141 = (v129 + *(v217 + 10));
  v142 = v141[1];
  *&v229 = *v141;
  *(&v229 + 1) = v142;

  sub_1D725C74C();

  sub_1D725C4CC();
  v143 = AssociatedConformanceWitness;
  v144 = v218;
  v145 = v178;
  (*(AssociatedConformanceWitness + 64))(v218, AssociatedConformanceWitness);
  v146 = v180;
  swift_getAssociatedConformanceWitness();
  sub_1D726257C();
  (*(v179 + 8))(v145, v146);
  v223 = v229;
  sub_1D725C74C();

  sub_1D725C4CC();
  (*(v143 + 88))(&v229, v144, v143);
  sub_1D5B9AA5C(0);
  swift_allocObject();
  *&v229 = sub_1D725C88C();
  sub_1D725C74C();

  sub_1D725C4CC();
  v147 = v144;
  v148 = (*(v143 + 104))(v144, v143);
  if (v148)
  {
    v149 = [v148 identifier];
    swift_unknownObjectRelease();
    v150 = sub_1D726207C();
    v152 = v151;
  }

  else
  {
    v150 = 0;
    v152 = 1;
  }

  v153 = v181;
  v154 = v220;
  v155 = v208;
  *&v229 = v150;
  *(&v229 + 1) = v152;
  sub_1D725C74C();

  v201 = sub_1D725C4CC();
  v156 = (*(*(v143 + 8) + 32))(v147);
  v158 = v182;
  v157 = v183;
  if (!(v156 >> 62))
  {
    v159 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v160 = v240;
    if (v159)
    {
      goto LABEL_11;
    }

LABEL_21:

    v162 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *&v229 = v162;
    sub_1D5BA2EFC(0);
    swift_allocObject();
    *&v229 = sub_1D725C88C();
    sub_1D725C74C();

    (*(*(v217 - 1) + 8))(v221);
    (*(v158 + 8))(v154, v157);
    *&v223 = v212;
    *(&v223 + 1) = v211;
    *&v224 = v210;
    *(&v224 + 1) = v209;
    *&v225 = v207;
    *(&v225 + 1) = v155;
    *&v226 = v160;
    *(&v226 + 1) = v204;
    *&v227 = v216;
    *(&v227 + 1) = v215;
    *&v228 = v214;
    *(&v228 + 1) = v213;
    *&v229 = v212;
    *(&v229 + 1) = v211;
    v230 = v210;
    v231 = v209;
    v232 = v207;
    v233 = v155;
    v234 = v160;
    v235 = v204;
    v236 = v216;
    v237 = v215;
    v238 = v214;
    v239 = v213;
    sub_1D5BA6C4C(&v223, &v222);
    result = sub_1D5BA705C(&v229);
    v174 = v226;
    v153[2] = v225;
    v153[3] = v174;
    v175 = v228;
    v153[4] = v227;
    v153[5] = v175;
    v176 = v224;
    *v153 = v223;
    v153[1] = v176;
    return result;
  }

  v173 = v156;
  v159 = sub_1D7263BFC();
  v156 = v173;
  v160 = v240;
  if (!v159)
  {
    goto LABEL_21;
  }

LABEL_11:
  v219 = v156;
  *&v229 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v159 & ~(v159 >> 63), 0);
  v218 = v159;
  if ((v159 & 0x8000000000000000) == 0)
  {
    v161 = 0;
    v162 = v229;
    v163 = v219;
    v164 = v219 & 0xC000000000000001;
    do
    {
      if (v164)
      {
        v165 = MEMORY[0x1DA6FB460](v161);
      }

      else
      {
        v165 = *(v163 + 8 * v161 + 32);
        swift_unknownObjectRetain();
      }

      v166 = [v165 itemID];
      v167 = sub_1D726207C();
      v169 = v168;
      swift_unknownObjectRelease();

      *&v229 = v162;
      v171 = *(v162 + 16);
      v170 = *(v162 + 24);
      if (v171 >= v170 >> 1)
      {
        sub_1D5BFC364((v170 > 1), v171 + 1, 1);
        v162 = v229;
      }

      ++v161;
      *(v162 + 16) = v171 + 1;
      v172 = v162 + 16 * v171;
      *(v172 + 32) = v167;
      *(v172 + 40) = v169;
      v163 = v219;
      v160 = v240;
    }

    while (v218 != v161);

    v153 = v181;
    v158 = v182;
    v157 = v183;
    v154 = v220;
    v155 = v208;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D602DF30()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  qword_1EDFFC6D8 = qword_1EC881F18;
  unk_1EDFFC6E0 = unk_1EC881F20;
}

void sub_1D602DF9C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v77 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  v76 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v70 - v9;
  v11 = sub_1D725ABCC();
  v78 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D725789C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D725B06C();
  swift_allocObject();
  v20 = sub_1D72578DC();
  *v19 = 0x7974696E69666E69;
  v19[1] = 0xE800000000000000;
  v19[2] = 0x74696E69666E692DLL;
  v19[3] = 0xE900000000000079;
  v19[4] = 7233902;
  v19[5] = 0xE300000000000000;
  (*(v16 + 104))(v19, *MEMORY[0x1E6967FE0], v15);
  v21 = v14;
  sub_1D72578AC();
  v22 = v80;
  sub_1D725B04C();
  if (v22)
  {

    return;
  }

  v71 = v10;
  v72 = a1;
  v73 = a2;
  v74 = v11;
  v80 = 0;
  sub_1D725C4CC();
  v81 = 0x2D617461642E67;
  v82 = 0xE700000000000000;
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v85)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v79 = v20;
  MEMORY[0x1DA6F9910](v84, v85);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v85)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  MEMORY[0x1DA6F9910](v84, v85);

  v23 = v81;
  v24 = v82;
  sub_1D725C4CC();
  sub_1D725C73C();

  v25 = v82;
  if (!v82)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v26 = v81;
  v27 = sub_1D725ABAC();
  v81 = sub_1D60F2034(v23, v24, v26, v25, v27, v28);
  v82 = v29;
  v83 = v30;
  sub_1D5BA1DA8(0, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
  swift_allocObject();
  v81 = sub_1D725C56C();
  sub_1D725C74C();

  sub_1D725C4CC();
  v81 = 0x2D6C6F6F702E67;
  v82 = 0xE700000000000000;
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v85)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  MEMORY[0x1DA6F9910](v84, v85);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v85)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  MEMORY[0x1DA6F9910](v84, v85);

  v32 = v81;
  v31 = v82;
  sub_1D725C4CC();
  sub_1D725C73C();

  v33 = v82;
  if (v82)
  {
    v34 = v81;
    v84 = sub_1D725ABBC();
    sub_1D725B4FC();
    sub_1D5B9DE94(&unk_1EDF17B58, MEMORY[0x1E69D6878], MEMORY[0x1E69D6880]);
    v35 = v80;
    v36 = sub_1D72578BC();
    if (v35)
    {

      (*(v78 + 8))(v21, v74);
      return;
    }

    v80 = 0;
    v38 = v36;
    v39 = v37;

    v81 = sub_1D60F2034(v32, v31, v34, v33, v38, v39);
    v82 = v40;
    v83 = v41;
    swift_allocObject();
    v81 = sub_1D725C56C();
    sub_1D725C74C();

    sub_1D725C4CC();
    v42 = v77;
    v43 = v71;
    v44 = v73;
    (*(v77 + 8))(v73, v77);
    v45 = v76;
    swift_getAssociatedConformanceWitness();
    sub_1D726257C();
    (*(v75 + 8))(v43, v45);
    v84 = v81;
    v85 = v82;
    sub_1D725C74C();

    sub_1D725C4CC();
    (*(v42 + 11))(&v81, v44, v42);
    sub_1D5B9AA5C(0);
    swift_allocObject();
    v81 = sub_1D725C88C();
    sub_1D725C74C();

    sub_1D725C4CC();
    v46 = (*(v42 + 13))(v44, v42);
    if (v46)
    {
      v47 = [v46 identifier];
      swift_unknownObjectRelease();
      v48 = sub_1D726207C();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 1;
    }

    v81 = v48;
    v82 = v50;
    sub_1D725C74C();

    v76 = sub_1D725C4CC();
    v51 = (*(*(v42 + 1) + 32))(v44);
    v52 = v74;
    v53 = v78;
    if (v51 >> 62)
    {
      v69 = v51;
      v54 = sub_1D7263BFC();
      v51 = v69;
      if (v54)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v54 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
LABEL_16:
        v55 = v51;
        v77 = v21;
        v81 = MEMORY[0x1E69E7CC0];
        sub_1D5BFC364(0, v54 & ~(v54 >> 63), 0);
        if ((v54 & 0x8000000000000000) == 0)
        {
          v56 = 0;
          v57 = v81;
          v58 = v55;
          v86 = v55 & 0xC000000000000001;
          v59 = v55;
          v60 = v54;
          do
          {
            if (v86)
            {
              v61 = MEMORY[0x1DA6FB460](v56, v58);
            }

            else
            {
              v61 = *(v58 + 8 * v56 + 32);
              swift_unknownObjectRetain();
            }

            v62 = [v61 itemID];
            v63 = sub_1D726207C();
            v65 = v64;
            swift_unknownObjectRelease();

            v81 = v57;
            v67 = *(v57 + 16);
            v66 = *(v57 + 24);
            if (v67 >= v66 >> 1)
            {
              sub_1D5BFC364((v66 > 1), v67 + 1, 1);
              v57 = v81;
            }

            ++v56;
            *(v57 + 16) = v67 + 1;
            v68 = v57 + 16 * v67;
            *(v68 + 32) = v63;
            *(v68 + 40) = v65;
            v58 = v59;
          }

          while (v60 != v56);

          v52 = v74;
          v21 = v77;
          v53 = v78;
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    v57 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v81 = v57;
    sub_1D5BA2EFC(0);
    swift_allocObject();
    v81 = sub_1D725C88C();
    sub_1D725C74C();

    (*(v53 + 8))(v21, v52);
    return;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1D602E964(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6E696C6F6F706572;
    v7 = 0x6449676174;
    if (a1 != 10)
    {
      v7 = 0x7364496D657469;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x617461446C6F6F70;
    v9 = 0x64496769666E6F63;
    if (a1 != 7)
    {
      v9 = 1684957547;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x446873696C627570;
    v3 = 0x6449726F73727563;
    if (a1 != 4)
    {
      v3 = 0x74614470756F7267;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6449646E696BLL;
    if (a1 != 1)
    {
      v4 = 0x4464657461657263;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D602EAE0(void *a1)
{
  sub_1D5BA1DA8(0, &qword_1EC8828B0, sub_1D603114C, &type metadata for FeedGroupEntity.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D603114C();
  sub_1D7264B5C();
  v22 = *v1;
  v21 = 0;
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  v11 = v10;
  sub_1D60311A0(&qword_1EC8828B8, MEMORY[0x1E69D6168]);
  sub_1D726443C();
  if (!v2)
  {
    v20 = v11;
    v22 = v1[1];
    v21 = 1;
    sub_1D5B9E048(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
    v13 = v12;
    v14 = sub_1D6031200(&qword_1EC8828C0, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v18[1] = v14;
    v18[2] = v13;
    v19 = v1;
    v22 = v1[2];
    v21 = 2;
    sub_1D5B9DFB4(0);
    sub_1D5B9DE94(&qword_1EC8828C8, sub_1D5B9DFB4, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v22 = v19[3];
    v21 = 3;
    sub_1D726443C();
    v15 = v19;
    v22 = v19[4];
    v21 = 4;
    sub_1D726443C();
    v22 = v15[5];
    v21 = 5;
    sub_1D5B9E588(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
    sub_1D6031260(&qword_1EC8828D0, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v22 = v19[6];
    v21 = 6;
    sub_1D726443C();
    v16 = v19;
    v22 = v19[7];
    v21 = 7;
    sub_1D726443C();
    v22 = v16[8];
    v21 = 8;
    sub_1D726443C();
    v22 = v16[9];
    v21 = 9;
    sub_1D5BA4D44(0);
    sub_1D5B9DE94(&qword_1EC8828D8, sub_1D5BA4D44, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v22 = v16[10];
    v21 = 10;
    sub_1D726443C();
    v22 = v19[11];
    v21 = 11;
    sub_1D5B99B3C(0);
    sub_1D5B9DE94(&qword_1EC8828E0, sub_1D5B99B3C, MEMORY[0x1E69D6168]);
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D602F098@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D602F654(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D602F0C0(uint64_t a1)
{
  v2 = sub_1D603114C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D602F0FC(uint64_t a1)
{
  v2 = sub_1D603114C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D602F15C()
{
  if (qword_1EDF15398 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDFFC6D8;

  return v0;
}

uint64_t sub_1D602F1C4(uint64_t a1)
{
  v2 = sub_1D5B98F74();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1D602F210(uint64_t a1)
{
  v2 = sub_1D5B98F74();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1D602F25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B98F74();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1D602F2C0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D602FA18(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1D602F324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B98F74();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1D602F370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B98F74();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1D602F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5B98F74();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1D602F430()
{
  result = qword_1EC882868;
  if (!qword_1EC882868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882868);
  }

  return result;
}

uint64_t sub_1D602F484@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BA2E54(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - v8;
  sub_1D5B9E4F4(0);
  v11 = v10;
  v12 = *(*(v10 - 8) + 56);
  v12(v9, 1, 1, v10);
  v12(v5, 1, 1, v11);
  sub_1D5BA6158(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B99B3C(0);
  swift_allocObject();
  result = sub_1D725C4BC();
  *a1 = result;
  return result;
}

uint64_t sub_1D602F60C()
{
  sub_1D725C4DC();
  sub_1D725C4FC();
  swift_allocObject();
  return sub_1D725C55C();
}

uint64_t sub_1D602F654(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449646E696BLL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449726F73727563 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617461446C6F6F70 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64496769666E6F63 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E696C6F6F706572 && a2 == 0xE900000000000067 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6449676174 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7364496D657469 && a2 == 0xE700000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

double sub_1D602FA18@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v119 = a1;
  v108 = a2;
  sub_1D5BA1DA8(0, &qword_1EC882870, sub_1D603114C, &type metadata for FeedGroupEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v112 = v2;
  v111 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v124 = &v107 - v4;
  sub_1D5BA2E54(0, &qword_1EDF17460, sub_1D5B9E4F4);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v123 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v122 = &v107 - v10;
  sub_1D5BA2E54(0, &qword_1EDF17480, sub_1D5B9A9C8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v121 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v120 = &v107 - v16;
  v128 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17490, &qword_1EDF17498, MEMORY[0x1E69D6200], sub_1D5B9E588);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v127 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v126 = &v107 - v22;
  sub_1D5BA2E54(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v130 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v107 - v28;
  sub_1D5B9D284(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v107 - v36;
  v38 = MEMORY[0x1E69D6200];
  sub_1D5B998E4(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69D6200], sub_1D5BA2FE0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v107 - v45;
  sub_1D5BA2FE0(0, &qword_1EDF17448, v38);
  v48 = v47;
  v139 = v47;
  v49 = *(v47 - 8);
  v50 = *(v49 + 56);
  v138 = v50;
  v140 = v49 + 56;
  v135 = v46;
  v50(v46, 1, 1, v47);
  v136 = v42;
  v50(v42, 1, 1, v48);
  sub_1D5BA2FE0(0, &qword_1EDF173B0, MEMORY[0x1E69D6208]);
  v137 = v51;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2FE0(0, &qword_1EDF17538, MEMORY[0x1E69D6160]);
  v53 = v52;
  swift_allocObject();
  v134 = sub_1D725C4BC();
  sub_1D5B9E048(0, &qword_1EDF17458, MEMORY[0x1E69D6200]);
  v55 = v54;
  v116 = v54;
  v56 = *(v54 - 8);
  v57 = *(v56 + 56);
  v117 = v57;
  v118 = v56 + 56;
  v113 = v37;
  v57(v37, 1, 1, v54);
  v114 = v33;
  v57(v33, 1, 1, v55);
  sub_1D5B9E048(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  v115 = v58;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E048(0, &qword_1EDF17530, MEMORY[0x1E69D6160]);
  v133 = v59;
  swift_allocObject();
  v132 = sub_1D725C4BC();
  sub_1D5BA21B0(0);
  v61 = v60;
  v62 = *(*(v60 - 8) + 56);
  v63 = v29;
  v62(v29, 1, 1, v60);
  v64 = v130;
  v62(v130, 1, 1, v61);
  sub_1D5B99A0C(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4(0);
  v66 = v65;
  swift_allocObject();
  v131 = sub_1D725C4BC();
  v62(v63, 1, 1, v61);
  v62(v64, 1, 1, v61);
  swift_allocObject();
  sub_1D725C71C();
  v110 = v66;
  swift_allocObject();
  v130 = sub_1D725C4BC();
  v67 = v139;
  v68 = v138;
  v138(v135, 1, 1, v139);
  v68(v136, 1, 1, v67);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v129 = sub_1D725C4BC();
  sub_1D5B9E588(0, &qword_1EDF17498, v128);
  v70 = v69;
  v71 = *(*(v69 - 8) + 56);
  v72 = v126;
  v71(v126, 1, 1, v69);
  v73 = v127;
  v71(v127, 1, 1, v70);
  sub_1D5B9E588(0, &qword_1EDF173D8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9E588(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
  v75 = v74;
  swift_allocObject();
  v128 = sub_1D725C4BC();
  v71(v72, 1, 1, v70);
  v71(v73, 1, 1, v70);
  swift_allocObject();
  sub_1D725C71C();
  v109 = v75;
  swift_allocObject();
  v127 = sub_1D725C4BC();
  v76 = v135;
  v77 = v139;
  v78 = v138;
  v138(v135, 1, 1, v139);
  v79 = v136;
  v78(v136, 1, 1, v77);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v126 = sub_1D725C4BC();
  v78(v76, 1, 1, v77);
  v78(v79, 1, 1, v77);
  swift_allocObject();
  sub_1D725C71C();
  v136 = v53;
  swift_allocObject();
  v140 = sub_1D725C4BC();
  sub_1D5B9A9C8(0);
  v81 = v80;
  v82 = *(*(v80 - 8) + 56);
  v82(v120, 1, 1, v80);
  v82(v121, 1, 1, v81);
  sub_1D5B9ABAC(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA4D44(0);
  v84 = v83;
  swift_allocObject();
  v139 = sub_1D725C4BC();
  v85 = v116;
  v86 = v117;
  v117(v113, 1, 1, v116);
  v86(v114, 1, 1, v85);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v138 = sub_1D725C4BC();
  sub_1D5B9E4F4(0);
  v88 = v87;
  v89 = *(*(v87 - 8) + 56);
  v89(v122, 1, 1, v87);
  v89(v123, 1, 1, v88);
  sub_1D5BA6158(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B99B3C(0);
  swift_allocObject();
  v137 = sub_1D725C4BC();
  v90 = v119;
  __swift_project_boxed_opaque_existential_1(v119, v119[3]);
  sub_1D603114C();
  v91 = v124;
  v92 = v125;
  sub_1D7264B0C();
  if (v92)
  {
    v94 = v127;
    __swift_destroy_boxed_opaque_existential_1(v90);
    v148 = v134;
    v149 = v132;
    v150 = v131;
    v151 = v130;
    v152 = v129;
    v153 = v128;
    v154 = v94;
    v155 = v126;
    v156 = v140;
    v157 = v139;
    v158 = v138;
    v159 = v137;
    sub_1D5BA705C(&v148);
  }

  else
  {
    LOBYTE(v141) = 0;
    sub_1D60311A0(&qword_1EC882880, MEMORY[0x1E69D6170]);
    sub_1D726431C();

    v134 = v148;
    LOBYTE(v141) = 1;
    v93 = sub_1D6031200(&qword_1EC882888, MEMORY[0x1E69D6170]);
    sub_1D726431C();
    v135 = v93;

    v132 = v148;
    LOBYTE(v141) = 2;
    sub_1D5B9DE94(&qword_1EC882890, sub_1D5B9DFB4, MEMORY[0x1E69D6170]);
    sub_1D726431C();

    v131 = v148;
    LOBYTE(v141) = 3;
    sub_1D726431C();

    v130 = v148;
    LOBYTE(v141) = 4;
    sub_1D726431C();
    v125 = v84;

    v129 = v148;
    LOBYTE(v141) = 5;
    sub_1D6031260(&qword_1EC882898, MEMORY[0x1E69D6170]);
    sub_1D726431C();

    v128 = v148;
    LOBYTE(v141) = 6;
    sub_1D726431C();

    v127 = v148;
    LOBYTE(v141) = 7;
    sub_1D726431C();

    v126 = v148;
    LOBYTE(v141) = 8;
    sub_1D726431C();

    v140 = v148;
    LOBYTE(v141) = 9;
    sub_1D5B9DE94(&qword_1EC8828A0, sub_1D5BA4D44, MEMORY[0x1E69D6170]);
    sub_1D726431C();

    v139 = v148;
    LOBYTE(v141) = 10;
    sub_1D726431C();

    v138 = v148;
    v147 = 11;
    sub_1D5B9DE94(&qword_1EC8828A8, sub_1D5B99B3C, MEMORY[0x1E69D6170]);
    sub_1D726431C();
    (*(v111 + 8))(v91, v112);

    v137 = v160;
    v95 = v134;
    *&v141 = v134;
    v96 = v132;
    *(&v141 + 1) = v132;
    v97 = v131;
    *&v142 = v131;
    v98 = v130;
    *(&v142 + 1) = v130;
    v99 = v129;
    v100 = v128;
    *&v143 = v129;
    *(&v143 + 1) = v128;
    v101 = v127;
    *&v144 = v127;
    *(&v144 + 1) = v126;
    *&v145 = v140;
    *(&v145 + 1) = v139;
    *&v146 = v138;
    *(&v146 + 1) = v160;
    sub_1D5BA6C4C(&v141, &v148);
    __swift_destroy_boxed_opaque_existential_1(v90);
    v148 = v95;
    v149 = v96;
    v150 = v97;
    v151 = v98;
    v152 = v99;
    v153 = v100;
    v154 = v101;
    v155 = v126;
    v156 = v140;
    v157 = v139;
    v158 = v138;
    v159 = v137;
    sub_1D5BA705C(&v148);
    v102 = v144;
    v103 = v108;
    v108[2] = v143;
    v103[3] = v102;
    v104 = v146;
    v103[4] = v145;
    v103[5] = v104;
    result = *&v141;
    v106 = v142;
    *v103 = v141;
    v103[1] = v106;
  }

  return result;
}

unint64_t sub_1D603114C()
{
  result = qword_1EC882878;
  if (!qword_1EC882878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882878);
  }

  return result;
}

uint64_t sub_1D60311A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BA2FE0(255, &qword_1EDF17538, MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6031200(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9E048(255, &qword_1EDF17530, MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6031260(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9E588(255, &qword_1EDF17560, MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60312F4()
{
  result = qword_1EC8828E8;
  if (!qword_1EC8828E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8828E8);
  }

  return result;
}