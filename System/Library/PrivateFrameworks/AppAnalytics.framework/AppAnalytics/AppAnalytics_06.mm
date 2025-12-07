uint64_t sub_1B6A02308(uint64_t a1)
{
  v2 = sub_1B6ABA0C0();
  v3 = v1[251];
  v4 = v1[250];
  v5 = v1[249];
  if (v2)
  {
    (*(v4 + 8))(v1[251], v1[249]);
  }

  else
  {
    swift_allocError();

    (*(v4 + 8))(v3, v5);
  }

  v6 = v1[1];

  return v6();
}

uint64_t sub_1B6A0242C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B6980478(a2, &v59, sub_1B69A1808);
  v7 = v59;
  __swift_destroy_boxed_opaque_existential_1(v60);
  sub_1B6980478(a2, &v59, sub_1B69A1808);

  sub_1B697EFC4();
  v53 = v8;
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
    sub_1B6980478(a2, &v59, sub_1B69A1808);

    sub_1B69979CC(v60, &v56);
    v11 = &v56;
    v12 = v7;
    return sub_1B69E1654(v11, v12, *(&v7 + 1));
  }

  v52 = v7;
  if (*(*(a3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) + 16) == 1)
  {
    v9 = sub_1B6A249CC(0x6E6F697373655324, 0xEC00000061746144, v52, *(&v7 + 1));
    if (v9)
    {
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  v48[2] = a3;
  v13 = v52;
  v48[3] = v52;
  v48[4] = *(&v7 + 1);
  v61 = sub_1B69C0EB0(v56, sub_1B6A0A72C, v48);

  v14 = *a1;
  if (!*(*a1 + 16) || (v15 = sub_1B6993940(v13, *(&v7 + 1)), (v16 & 1) == 0) || (sub_1B698FE74(*(v14 + 56) + 32 * v15, &v59), (swift_dynamicCast() & 1) == 0))
  {
    *(&v60[0] + 1) = v53;
    *&v59 = v61;
    v11 = &v59;
    v12 = v13;
    return sub_1B69E1654(v11, v12, *(&v7 + 1));
  }

  v49 = *(&v7 + 1);
  v50 = a1;
  v51 = v3;
  v17 = 0;
  v18 = v61 + 8;
  v19 = 1 << *(v61 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v56;
  v22 = v20 & v61[8];
  v23 = (v19 + 63) >> 6;
  v54 = v61 + 8;
  while (v22)
  {
    v25 = v17;
LABEL_23:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = v28 | (v25 << 6);
    v30 = (v61[6] + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_1B698FE74(v61[7] + 32 * v29, v55);
    *&v56 = v32;
    *(&v56 + 1) = v31;
    sub_1B69979CC(v55, &v57);

    v27 = v25;
LABEL_24:
    v59 = v56;
    v60[0] = v57;
    v60[1] = v58;
    v33 = *(&v56 + 1);
    if (!*(&v56 + 1))
    {

      *(&v60[0] + 1) = v53;
      *&v59 = v21;
      return sub_1B69E1654(&v59, v52, v49);
    }

    v34 = v59;
    sub_1B69979CC(v60, &v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55[0] = v21;
    v37 = sub_1B6993940(v34, v33);
    v38 = v21[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_41;
    }

    v41 = v36;
    if (v21[3] >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v36)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1B69DDC84();
        if (v41)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_1B69976F8(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_1B6993940(v34, v33);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_43;
      }

      v37 = v42;
      if (v41)
      {
LABEL_12:

        v21 = *&v55[0];
        v24 = (*(*&v55[0] + 56) + 32 * v37);
        __swift_destroy_boxed_opaque_existential_1(v24);
        sub_1B69979CC(&v56, v24);
        goto LABEL_13;
      }
    }

    v21 = *&v55[0];
    *(*&v55[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
    v44 = (v21[6] + 16 * v37);
    *v44 = v34;
    v44[1] = v33;
    sub_1B69979CC(&v56, (v21[7] + 32 * v37));
    v45 = v21[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_42;
    }

    v21[2] = v47;
LABEL_13:
    v17 = v27;
    v18 = v54;
  }

  if (v23 <= v17 + 1)
  {
    v26 = v17 + 1;
  }

  else
  {
    v26 = v23;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      v22 = 0;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      goto LABEL_24;
    }

    v22 = v18[v25];
    ++v17;
    if (v22)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1B6ABA190();
  __break(1u);
  return result;
}

uint64_t SessionManager.flush(callbackQueue:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;

  v10 = a1;
  sub_1B698BF94(a2);
  sub_1B69877A4(v7, sub_1B69A4190, v9);
}

uint64_t SessionManager.start(for:identifier:startDate:timestampJitter:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v23 = a2;
  v24 = a3;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v16 = *(v6 + 56);
  v25 = *(v6 + 48);
  v26 = v16;
  (*(v11 + 16))(v13, a4, v10);
  v17 = (*(v11 + 80) + 73) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v15;
  v19 = v23;
  v20 = v24;
  *(v18 + 32) = v14;
  *(v18 + 40) = v19;
  *(v18 + 48) = v20;
  *(v18 + 56) = a5;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  (*(v11 + 32))(v18 + v17, v13, v10);

  sub_1B6992E2C(v15, v14);
  v21 = a5;

  sub_1B69877A4(v25, sub_1B6A0BE28, v18);
}

uint64_t sub_1B6A02B70(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = (v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind);
  v9 = *(v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind);
  v10 = *(v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind + 8);
  if (v10 == 3)
  {
    *v8 = v6;
    v8[1] = v7;
    sub_1B6992E2C(v6, v7);
    sub_1B6A0A1D4(v9, 3uLL);
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v11 = sub_1B6AB8F90();
    __swift_project_value_buffer(v11, qword_1EDBCFD80);

    sub_1B6992E2C(v6, v7);
    v12 = sub_1B6AB8F80();
    v13 = sub_1B6AB98D0();

    sub_1B69C2E8C(v6, v7);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_1B698F63C(a2, a3, v38);
      *(v14 + 12) = 2080;
      v16 = 0x7274656D656C6574;
      v17 = 0xE900000000000079;
      v18 = 0xE800000000000000;
      v19 = 0x656D69746C616572;
      if (v7 != 2)
      {
        v19 = v6;
        v18 = v7;
      }

      if (v7 != 1)
      {
        v16 = v19;
        v17 = v18;
      }

      if (v7)
      {
        v20 = v16;
      }

      else
      {
        v20 = 0x6E65764572657375;
      }

      if (v7)
      {
        v21 = v17;
      }

      else
      {
        v21 = 0xEA00000000007374;
      }

      sub_1B6992E2C(v6, v7);
      v22 = sub_1B698F63C(v20, v21, v38);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1B697C000, v12, v13, "Session: %s, locked to kind '%s'", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v15, -1, -1);
      MEMORY[0x1B8C99550](v14, -1, -1);
    }

    return 1;
  }

  v38[0] = *(v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind);
  v38[1] = v10;
  v37[0] = v6;
  v37[1] = v7;
  sub_1B6A0BD94(v9, v10);
  if (_s12AppAnalytics7SessionV4KindO2eeoiySbAE_AEtFZ_0(v38, v37))
  {
    sub_1B6A0A1D4(v9, v10);
    return 1;
  }

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v24 = sub_1B6AB8F90();
  __swift_project_value_buffer(v24, qword_1EDBCFD80);
  sub_1B6A0BD94(v9, v10);

  sub_1B6992E2C(v6, v7);
  v25 = sub_1B6AB8F80();
  v26 = sub_1B6AB98E0();

  sub_1B6A0A1D4(v9, v10);
  sub_1B69C2E8C(v6, v7);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38[0] = v28;
    *v27 = 136315650;
    *(v27 + 4) = sub_1B698F63C(a2, a3, v38);
    *(v27 + 12) = 2080;
    if (v10)
    {
      if (v10 == 1)
      {
        sub_1B6A0A1D4(v9, 1uLL);
        v10 = 0xE900000000000079;
        v9 = 0x7274656D656C6574;
      }

      else if (v10 == 2)
      {
        sub_1B6A0A1D4(v9, 2uLL);
        v10 = 0xE800000000000000;
        v9 = 0x656D69746C616572;
      }
    }

    else
    {
      sub_1B6A0A1D4(v9, 0);
      v9 = 0x6E65764572657375;
      v10 = 0xEA00000000007374;
    }

    v29 = sub_1B698F63C(v9, v10, v38);

    *(v27 + 14) = v29;
    *(v27 + 22) = 2080;
    v30 = 0x7274656D656C6574;
    v31 = 0xE900000000000079;
    v32 = 0xE800000000000000;
    v33 = 0x656D69746C616572;
    if (v7 != 2)
    {
      v33 = v6;
      v32 = v7;
    }

    if (v7 != 1)
    {
      v30 = v33;
      v31 = v32;
    }

    if (v7)
    {
      v34 = v30;
    }

    else
    {
      v34 = 0x6E65764572657375;
    }

    if (v7)
    {
      v35 = v31;
    }

    else
    {
      v35 = 0xEA00000000007374;
    }

    sub_1B6992E2C(v6, v7);
    v36 = sub_1B698F63C(v34, v35, v38);

    *(v27 + 24) = v36;
    _os_log_impl(&dword_1B697C000, v25, v26, "⚠️ SessionManager: %s, is locked to kind '%s'; attempted to start with '%s'. Create a separate SessionManager per kind.", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C99550](v28, -1, -1);
    MEMORY[0x1B8C99550](v27, -1, -1);

    return 0;
  }

  else
  {

    sub_1B6A0A1D4(v9, v10);
    return 0;
  }
}

uint64_t *sub_1B6A030CC(uint64_t *result, uint64_t a2, unint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager);
  if (!v4)
  {
    return result;
  }

  v7 = *result;
  v8 = result[1];
  if (v8 < 3)
  {

    sub_1B6992E2C(v7, v8);
    sub_1B69C2E8C(0x6169746E65737365, 0xEF73746E6576456CLL);
    sub_1B69C2E8C(v7, v8);
    goto LABEL_4;
  }

  if (v7 == 0x6169746E65737365 && v8 == 0xEF73746E6576456CLL)
  {

    sub_1B6992E2C(0x6169746E65737365, 0xEF73746E6576456CLL);
    sub_1B69C2E8C(0x6169746E65737365, 0xEF73746E6576456CLL);
    sub_1B69C2E8C(0x6169746E65737365, 0xEF73746E6576456CLL);
    goto LABEL_15;
  }

  v21 = sub_1B6ABA0F0();

  sub_1B6992E2C(v7, v8);
  sub_1B69C2E8C(0x6169746E65737365, 0xEF73746E6576456CLL);
  sub_1B69C2E8C(v7, v8);
  if (v21)
  {
LABEL_15:
    v22 = *(v3 + 16);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = 0x6174614472657375;
    *(v24 + 32) = 0xE800000000000000;
    *(v24 + 40) = sub_1B6A0ABF8;
    *(v24 + 48) = v4;
    *(v24 + 56) = sub_1B6A07ECC;
    *(v24 + 64) = xmmword_1B6ABF6F0;
    *(v24 + 80) = 0x80000001B6AC9E30;
    *(v24 + 88) = 938;
    v25 = *(v22 + 88);
    v26 = swift_allocObject();
    v26[2] = v22;
    v26[3] = sub_1B6A0AC60;
    v26[4] = v24;
    swift_retain_n();

    sub_1B69877A4(v25, sub_1B6A0BE3C, v26);

    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v27 = sub_1B6AB8F90();
    __swift_project_value_buffer(v27, qword_1EDBCFD80);

    v15 = sub_1B6AB8F80();
    v16 = sub_1B6AB98D0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1B698F63C(a2, a3, &v28);
      v19 = "Registering userData for essentialEvents, session: %s";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

LABEL_4:
  v9 = *(v3 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = 0x6174614472657375;
  *(v11 + 32) = 0xE800000000000000;
  *(v11 + 40) = sub_1B6A0ABCC;
  *(v11 + 48) = v4;
  *(v11 + 56) = sub_1B6A07ECC;
  *(v11 + 64) = xmmword_1B6ABF6F0;
  *(v11 + 80) = 0x80000001B6AC9E30;
  *(v11 + 88) = 943;
  v12 = *(v9 + 88);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = sub_1B6A0ABD4;
  v13[4] = v11;
  swift_retain_n();

  sub_1B69877A4(v12, sub_1B6A0ABEC, v13);

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v14 = sub_1B6AB8F90();
  __swift_project_value_buffer(v14, qword_1EDBCFD80);

  v15 = sub_1B6AB8F80();
  v16 = sub_1B6AB98D0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1B698F63C(a2, a3, &v28);
    v19 = "Registering userData for non-essentialEvents, session: %s";
LABEL_19:
    _os_log_impl(&dword_1B697C000, v15, v16, v19, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1B8C99550](v18, -1, -1);
    MEMORY[0x1B8C99550](v17, -1, -1);
  }

LABEL_21:
}

uint64_t SessionManager.end(endDate:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(v3 + 48);
  sub_1B6A2ACC8();
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  (*(v7 + 32))(v11 + v10, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = v16;
  *v12 = a2;
  v12[1] = v13;

  sub_1B698BF94(a2);
  sub_1B69877A4(v9, sub_1B6A0A2C8, v11);
}

uint64_t sub_1B6A03820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a3;
  v8[4] = a4;

  sub_1B698BF94(a3);
  sub_1B6A039D8(a2, sub_1B6A0AAA0, v8);
}

void sub_1B6A038F4(uint64_t a1, void (*a2)(void))
{
  v3 = sub_1B6AB9090();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 48);

    sub_1B6AB9050();
    sub_1B6A2AED0(v5);
  }

  if (a2)
  {
    a2();
  }
}

void sub_1B6A039D8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v99 = a3;
  v101 = a2;
  v97 = a1;
  v100 = type metadata accessor for Session(0);
  MEMORY[0x1EEE9AC00](v100);
  v98 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for SessionObserverChange(0);
  MEMORY[0x1EEE9AC00](v102);
  v6 = (v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SessionManager.SessionState(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v96 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v87 - v10);
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = *(v3 + 48);
  v16 = *(v95 + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  v18 = sub_1B6AB9110();
  (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v19 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  sub_1B6980478(v3 + v19, v11, type metadata accessor for SessionManager.SessionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = *v11;
    *v6 = *v11;
    swift_storeEnumTagMultiPayload();

    sub_1B6996750(v6);
    v94 = type metadata accessor for SessionObserverChange;
    sub_1B6A0BDA4(v6, type metadata accessor for SessionObserverChange);
    v22 = *(v21 + 3);
    v93 = *(v21 + 2);
    v89 = v22;
    v91 = v6;
    v92 = v7;
    v23 = *&v21[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];
    v24 = *(v21 + 4);
    v88 = *(v21 + 5);
    v25 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
    v26 = *(v100 + 28);
    *&v27 = *&v21[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier];
    v90 = v27;
    v28 = sub_1B6AB8DB0();
    v29 = v3;
    v30 = v98;
    (*(*(v28 - 8) + 16))(v98 + v26, &v21[v25], v28);

    v31 = v89;

    v32 = v88;
    sub_1B6992E2C(v24, v88);
    v87[1] = v21;
    v33 = sub_1B699696C(v21);
    *&v34 = v90;
    *(&v34 + 1) = v23;
    *&v35 = v24;
    *(&v35 + 1) = v32;
    *v30 = v93;
    *(v30 + 8) = v31;
    *(v30 + 16) = v34;
    *(v30 + 32) = v35;
    *(v30 + *(v100 + 32)) = v33;
    v36 = v96;
    sub_1B6980478(v30, v96, type metadata accessor for Session);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1B6A0B03C(v36, v29 + v19, type metadata accessor for SessionManager.SessionState);
    swift_endAccess();
    sub_1B69C8B64(v30, v97);
    v37 = v91;
    sub_1B6980478(v30, v91, type metadata accessor for Session);
    swift_storeEnumTagMultiPayload();
    sub_1B6996750(v37);
    sub_1B6A0BDA4(v37, v94);
    v38 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
    swift_beginAccess();
    v102 = v29;
    v39 = *(v29 + v38);
    v42 = *(v39 + 64);
    v41 = v39 + 64;
    v40 = v42;
    v43 = 1 << *(*(v29 + v38) + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & v40;
    v46 = (v43 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v47 = 0;
    v48 = MEMORY[0x1E69E7280];
    if (v45)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v49 >= v46)
      {
        break;
      }

      v45 = *(v41 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        do
        {
LABEL_15:
          v45 &= v45 - 1;
          sub_1B697ED90(0, &qword_1EDBCBB00, v48);

          sub_1B6AB9710();
        }

        while (v45);
        continue;
      }
    }

    v50 = v102;
    *(v102 + v38) = MEMORY[0x1E69E7CC8];

    v51 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
    swift_beginAccess();
    v100 = v51;
    v52 = *(v50 + v51);
    v53 = v52 + 64;
    v54 = 1 << *(v52 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & *(v52 + 64);
    v57 = (v54 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v58 = 0;
    v97 = v52;
    while (v56)
    {
LABEL_26:
      v60 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v61 = (*(v52 + 48) + ((v58 << 10) | (16 * v60)));
      v63 = *v61;
      v62 = v61[1];
      v64 = v100;
      v65 = v102;
      swift_beginAccess();
      v66 = *(v65 + v64);
      v67 = *(v66 + 16);

      if (v67 && (v68 = sub_1B6993940(v63, v62), (v69 & 1) != 0))
      {
        v96 = v63;
        sub_1B6982544(*(v66 + 56) + 40 * v68, v108);
        sub_1B699A784(v108, v109);
        swift_endAccess();
        v70 = v110;
        v71 = v111;
        __swift_project_boxed_opaque_existential_1(v109, v110);
        (*(v71 + 24))(v104, v70, v71);
        if (*(&v104[0] + 1))
        {
          v108[2] = v104[2];
          v108[3] = v105;
          v108[4] = v106;
          v108[5] = v107;
          v108[0] = v104[0];
          v108[1] = v104[1];
          v72 = *(*(&v105 + 1) + 16);
          v73 = (*(&v105 + 1) + 32);
          v52 = v97;
          do
          {
            if (!v72)
            {
              sub_1B69A6664(v108);

              goto LABEL_38;
            }

            v74 = *v73++;
            --v72;
          }

          while (v74);
          v75 = v110;
          v76 = v111;
          __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
          (*(v76 + 32))(v104, v75, v76);
          sub_1B6A0A674(v104, &qword_1EDBCB490, &type metadata for AnyDataEventEntry);
          v77 = v110;
          v78 = v111;
          __swift_project_boxed_opaque_existential_1(v109, v110);
          if ((*(v78 + 8))(v77, v78))
          {
            swift_beginAccess();
            sub_1B6A96B74(v96, v62, v104);
            swift_endAccess();

            sub_1B699835C(v104);
          }

          else
          {
            v79 = v100;
            v80 = v102;
            swift_beginAccess();
            sub_1B6982544(v109, v104);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v103 = *(v80 + v79);
            *(v80 + v79) = 0x8000000000000000;
            sub_1B699ACEC(v104, v96, v62, isUniquelyReferenced_nonNull_native);

            *(v80 + v79) = v103;
            swift_endAccess();
          }

          sub_1B69A6664(v108);
          v52 = v97;
LABEL_38:
          __swift_destroy_boxed_opaque_existential_1(v109);
        }

        else
        {

          sub_1B6A0A674(v104, &qword_1EDBCB490, &type metadata for AnyDataEventEntry);
          __swift_destroy_boxed_opaque_existential_1(v109);
          v52 = v97;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    while (1)
    {
      v59 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v59 >= v57)
      {

        v82 = *(*(v102 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) + 24);
        v83 = swift_allocObject();
        v84 = v101;
        v85 = v99;
        *(v83 + 16) = v101;
        *(v83 + 24) = v85;
        v86 = v82;
        sub_1B698BF94(v84);
        sub_1B69877A4(v95, sub_1B6A0A80C, v83);

        sub_1B6A0BDA4(v98, type metadata accessor for Session);
        return;
      }

      v56 = *(v53 + 8 * v59);
      ++v58;
      if (v56)
      {
        v58 = v59;
        goto LABEL_26;
      }
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (EnumCaseMultiPayload == 1)
  {
    EnumCaseMultiPayload = sub_1B6A0BDA4(v11, type metadata accessor for SessionManager.SessionState);
  }

  if (v101)
  {
    v101(EnumCaseMultiPayload);
  }
}

Swift::Void __swiftcall SessionManager.endSync(timeout:)(Swift::Double timeout)
{
  v2 = sub_1B6AB8DB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = sub_1B6AB90C0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = v1;
  v16 = *(v1 + 56);
  sub_1B6AB90B0();
  v41 = v16;
  sub_1B6AB9910();
  v17 = *(v9 + 8);
  v42 = v8;
  v44 = v17;
  v17(v14, v8);
  if (sub_1B6AB9010())
  {
    sub_1B6AB8DA0();
    v18 = dispatch_group_create();
    v39 = v12;
    v19 = v18;
    dispatch_group_enter(v18);
    v38 = *(v15 + 48);
    sub_1B6A2ACC8();
    v20 = *(v3 + 16);
    v21 = v43;
    v40 = v7;
    v20(v43, v7, v2);
    v22 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v23 = v2;
    v24 = (v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v15;
    v26 = *(v3 + 32);
    v43 = v23;
    v26(v25 + v22, v21, v23);
    *(v25 + v24) = v19;

    v27 = v19;
    sub_1B69877A4(v38, sub_1B6A0A35C, v25);

    v28 = v39;
    sub_1B6AB90B0();
    sub_1B6AB9100();
    v29 = v42;
    v30 = v44;
    v44(v28, v42);
    LOBYTE(v28) = sub_1B6AB9910();
    v30(v14, v29);
    if (v28)
    {
      v31 = v40;
      v32 = v43;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v33 = qword_1EDBCCB28;
      v34 = sub_1B6AB98E0();
      sub_1B6AB8F70("Session manager timed out while waiting for session to end in endSync!", 70, 2, &dword_1B697C000, v33, v34, MEMORY[0x1E69E7CC0]);

      (*(v3 + 8))(v31, v32);
    }

    else
    {
      (*(v3 + 8))(v40, v43);
    }
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v35 = qword_1EDBCCB28;
    v36 = sub_1B6AB98E0();
    sub_1B6AB8F70("Session manager attempted to endSync when the access group is waiting", 69, 2, &dword_1B697C000, v35, v36, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1B6A047EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = v5;
  v7 = a3;

  sub_1B6A039D8(a2, sub_1B6A0AA98, v6);
}

void sub_1B6A048B0(NSObject *a1, uint64_t a2)
{
  v3 = sub_1B6AB9090();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_leave(a1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 48);

    sub_1B6AB9050();
    sub_1B6A2AED0(v5);
  }
}

uint64_t sub_1B6A04980()
{
  sub_1B699332C(0, &qword_1EB95B4C8, sub_1B698148C, MEMORY[0x1E69E8698]);
  MEMORY[0x1EEE9AC00](v0);
  sub_1B6A06088(&v3 - v1);
  sub_1B6A0B55C(&qword_1EB95B4D0, &qword_1EB95B4C8, sub_1B698148C);
  return sub_1B6ABA070();
}

uint64_t sub_1B6A04A94(uint64_t *a1)
{
  sub_1B6A0B398(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  sub_1B6A06088(v5);
  sub_1B6A064FC(&v5[*(v3 + 68)]);
  sub_1B6A06A10(&v5[*(v3 + 72)]);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_1B6ABFA58;
  *(v9 + 24) = v8;
  sub_1B6992E2C(v6, v7);
  sub_1B69822F4(&qword_1EB95B540, sub_1B6A0B398, &unk_1B6ABECE8);
  return sub_1B6ABA070();
}

uint64_t sub_1B6A04C10(unint64_t a1)
{
  v3 = v1;
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v3 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  v11 = sub_1B6AB9110();
  (*(v6 + 8))(v8, v5);
  if (v11)
  {
    v2 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers;
    swift_beginAccess();
    v8 = *(v3 + v2);
    v18 = MEMORY[0x1E69E7CC0];
    if (!(v8 >> 62))
    {
      v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v12 = sub_1B6AB9E60();
LABEL_4:

  if (v12)
  {
    v17[0] = v3;
    v17[1] = a1;
    a1 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1B8C98510](a1, v8);
        v13 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v14 = v18;
          v3 = v17[0];
          goto LABEL_18;
        }
      }

      else
      {
        if (a1 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v3 = *(v8 + 8 * a1 + 32);

        v13 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_15;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1B6AB9D50();
        sub_1B6AB9D90();
        sub_1B6AB9DA0();
        sub_1B6AB9D60();
      }

      else
      {
      }

      ++a1;
      if (v13 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *(v3 + v2) = v14;

  swift_beginAccess();

  MEMORY[0x1B8C97D30](v15);
  if (*((*(v3 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B6AB9540();
  }

  sub_1B6AB9580();
  return swift_endAccess();
}

uint64_t sub_1B6A04EE8(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v13 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_1B6AB9E60();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v11 = v4;
    v12 = a1;
    v4 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8C98510](v4, v5);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          a1 = v12;
          v9 = v13;
          v4 = v11;
          goto LABEL_19;
        }
      }

      else
      {
        if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_16;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (a1 = Strong, swift_unknownObjectRelease(), a1 == a2) || !swift_unknownObjectWeakLoadStrong())
      {
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1B6AB9D50();
        sub_1B6AB9D90();
        sub_1B6AB9DA0();
        a1 = &v13;
        sub_1B6AB9D60();
      }

      ++v4;
      if (v7 == v6)
      {
        goto LABEL_17;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(a1 + v4) = v9;
}

uint64_t static SessionManager.forEachSessionManagerForever(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B699332C(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1B6AB9680();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for AnalyticsActor();
  inited = swift_initStaticObject();
  v9 = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
  v10 = swift_allocObject();
  v10[2] = inited;
  v10[3] = v9;
  v10[4] = a1;
  v10[5] = a2;

  sub_1B69EDFB0(0, 0, v6, &unk_1B6ABF738, v10);
}

uint64_t sub_1B6A0521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  sub_1B6AB9030();
  v5[17] = swift_task_alloc();
  v6 = sub_1B6AB9090();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
  v8 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B6A0536C, v8, v7);
}

uint64_t sub_1B6A0536C()
{
  v21 = v0;
  if (qword_1EDBC9580 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBCFD18;
  *(swift_task_alloc() + 16) = *(v0 + 120);
  os_unfair_lock_lock((v1 + 32));
  sub_1B6A0A83C((v1 + 16), &v20);
  os_unfair_lock_unlock((v1 + 32));
  v2 = v20;

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v17 = (*(v0 + 152) + 16);
    do
    {
      sub_1B6A0A858(v4, v0 + 112, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v18 = *(v0 + 160);
        v19 = *(v0 + 144);
        v6 = *(v0 + 120);
        v7 = *(v0 + 128);
        v8 = swift_allocObject();
        *(v8 + 16) = v6;
        *(v8 + 24) = v7;
        v9 = *(v5 + 24);
        v10 = swift_allocObject();
        v10[2] = v5;
        v10[3] = sub_1B6A0A92C;
        v10[4] = v8;
        v11 = OBJC_IVAR___AAAccessQueue__qos;
        swift_beginAccess();
        v12 = *(v9 + v11);

        os_unfair_lock_lock_with_options();
        v13 = *(*v12 + 96);
        swift_beginAccess();
        (*v17)(v18, &v12[v13], v19);
        os_unfair_lock_unlock(*(*(v12 + 2) + 16));

        sub_1B6AB9020();
        *(v0 + 48) = sub_1B6A0A990;
        *(v0 + 56) = v10;
        *(v0 + 16) = MEMORY[0x1E69E9820];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_1B698E534;
        *(v0 + 40) = &block_descriptor_3;
        _Block_copy((v0 + 16));
        sub_1B6AB90E0();
        swift_allocObject();

        sub_1B6AB90D0();

        sub_1B6AB9940();

        sub_1B6A0A8CC(v0 + 112, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
      }

      else
      {
        sub_1B6A0A8CC(v0 + 112, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v15 = *(v0 + 8);

  return v15();
}

void sub_1B6A057E4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = a1[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1B69E3D6C((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    v12 = &v9[2 * v11];
    v12[4] = sub_1B6A0A9D4;
    v12[5] = v8;
    a1[1] = v9;
    v9 = *a1;
    v14 = (*a1 + 16);
    v13 = *v14;
    if (!*v14)
    {
LABEL_8:
      v8 = *v14;
      v16 = *v14;
LABEL_12:
      sub_1B6AB7FD8(v8, v16);
      *a4 = *a1;

      return;
    }

    v8 = 0;
    v15 = 5;
    while (swift_weakLoadStrong())
    {

      ++v8;
      ++v15;
      if (v13 == v8)
      {
        goto LABEL_8;
      }
    }

    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_34;
    }

    v17 = *v14;
    if (v16 == *v14)
    {
      break;
    }

    while (v16 < v17)
    {
      sub_1B6A0A858(&v9[v15], v20, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
      if (swift_weakLoadStrong())
      {

        sub_1B6A0A8CC(v20, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
        if (v16 != v8)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          v18 = *v14;
          if (v8 >= v18)
          {
            goto LABEL_29;
          }

          sub_1B6A0A858(&v9[v8 + 4], v20, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
          if (v16 >= v18)
          {
            goto LABEL_30;
          }

          sub_1B6A0A858(&v9[v15], v19, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B6AB7E10(v9);
          }

          sub_1B6A0AA04(v19, &v9[v8 + 4]);
          if (v16 >= v9[2])
          {
            goto LABEL_31;
          }

          sub_1B6A0AA04(v20, &v9[v15]);
          *a1 = v9;
        }

        ++v8;
      }

      else
      {
        sub_1B6A0A8CC(v20, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
      }

      ++v16;
      v14 = v9 + 2;
      v17 = v9[2];
      ++v15;
      if (v16 == v17)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v9 = sub_1B69E3D6C(0, v9[2] + 1, 1, v9);
  }

LABEL_11:
  if (v16 >= v8)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t AccessSessionManager.isActive.getter()
{
  v1 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6AB90F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 16);
  v9 = *(*(v8 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v7 = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = sub_1B6AB9110();
  result = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B6980478(v8 + v12, v3, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(v3, type metadata accessor for SessionManager.SessionState);
      }

      return 0;
    }

    else
    {

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AccessSessionManager.activeKind.getter(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B6AB90F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + 16);
  v11 = *(*(v10 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v11;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = sub_1B6AB9110();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    v13 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B6980478(v10 + v13, v5, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(v5, type metadata accessor for SessionManager.SessionState);
      }

      v15 = 0;
      v16 = 3;
    }

    else
    {
      v17 = *v5;
      v15 = *(v17 + 32);
      v16 = *(v17 + 40);
      sub_1B6992E2C(v15, v16);
    }

    *a1 = v15;
    a1[1] = v16;
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AccessSessionManager.flush()()
{
  v0 = qword_1EDBCAF40;

  if (v0 != -1)
  {
    swift_once();
  }

  sub_1B69A4218(qword_1EDBCAA10, 0, 0);
}

uint64_t sub_1B6A06088@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  sub_1B699332C(0, &qword_1EB95B500, sub_1B698148C, MEMORY[0x1E69E8638]);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v29 - v4;
  v31 = sub_1B6AB8E40();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v31);
  v8 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  sub_1B699332C(0, &qword_1EB95B508, sub_1B698148C, MEMORY[0x1E69E8658]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v29 - v14);
  sub_1B69844CC(0);
  v30 = v16;
  v33 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B698148C(0);
  *v15 = 1;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8640], v12);
  sub_1B6AB9690();
  (*(v13 + 8))(v15, v12);
  sub_1B6AB8E30();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v31;
  (*(v5 + 16))(v8, v10, v31);
  v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  v23 = v20;
  (*(v5 + 32))(v22 + v21, v8, v20);
  v24 = v30;
  sub_1B6AB96A0();
  v25 = *(v2 + 16);
  v37 = v10;
  v38 = v18;
  os_unfair_lock_lock((v25 + 32));
  sub_1B6A0B1C0(v25 + 16);
  os_unfair_lock_unlock((v25 + 32));
  os_unfair_lock_lock((v25 + 32));
  v26 = *(v25 + 16);

  os_unfair_lock_unlock((v25 + 32));
  v39 = v26;
  v27 = v34;
  sub_1B6AB96B0();
  (*(v35 + 8))(v27, v36);
  (*(v5 + 8))(v10, v23);
  return (*(v33 + 8))(v18, v24);
}

uint64_t sub_1B6A064FC@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  sub_1B69827CC(0);
  MEMORY[0x1EEE9AC00](v1);
  v35 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B699332C(0, &qword_1EB95B580, sub_1B69827CC, MEMORY[0x1E69E8638]);
  v36 = v3;
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33 = v30 - v4;
  v30[0] = sub_1B6AB8E40();
  v5 = *(v30[0] - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v30[0]);
  v8 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v30 - v9;
  sub_1B699332C(0, &qword_1EB95B588, sub_1B69827CC, MEMORY[0x1E69E8658]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v30 - v14);
  sub_1B6984CE4(0);
  v17 = v16;
  v31 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = 1;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8640], v12);
  sub_1B6AB9690();
  (*(v13 + 8))(v15, v12);
  sub_1B6AB8E30();
  v20 = swift_allocObject();
  v21 = v32;
  swift_weakInit();
  v22 = v30[0];
  (*(v5 + 16))(v8, v10, v30[0]);
  v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  (*(v5 + 32))(v24 + v23, v8, v22);
  sub_1B6AB96A0();
  v25 = *(v21 + 16);
  v37 = v10;
  v38 = v19;
  v26 = *(*v25 + *MEMORY[0x1E69E6B68] + 16);
  v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v25 + v27));
  sub_1B6A0BD5C(v25 + v26);
  os_unfair_lock_unlock((v25 + v27));
  os_unfair_lock_lock((v25 + v27));
  sub_1B6980478(v25 + v26, v35, sub_1B69827CC);
  os_unfair_lock_unlock((v25 + v27));
  v28 = v33;
  sub_1B6AB96B0();
  (*(v34 + 8))(v28, v36);
  (*(v5 + 8))(v10, v22);
  return (*(v31 + 8))(v19, v17);
}

uint64_t sub_1B6A06A10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  sub_1B6A0B4EC(0, &qword_1EB95B570, MEMORY[0x1E69E8638]);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v30 - v4;
  v33 = sub_1B6AB8E40();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v33);
  v8 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  sub_1B6A0B4EC(0, &qword_1EB95B578, MEMORY[0x1E69E8658]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v30 - v14);
  sub_1B6A0B4EC(0, &qword_1EDBC8E18, MEMORY[0x1E69E8660]);
  v31 = v16;
  v34 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  sub_1B69809F4(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158]);
  *v15 = 1;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8640], v12);
  sub_1B6AB9690();
  (*(v13 + 8))(v15, v12);
  sub_1B6AB8E30();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v33;
  (*(v5 + 16))(v8, v10, v33);
  v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  v23 = v20;
  (*(v5 + 32))(v22 + v21, v8, v20);
  v24 = v31;
  sub_1B6AB96A0();
  v25 = *(v2 + 16);
  v38 = v10;
  v39 = v18;
  os_unfair_lock_lock((v25 + 40));
  sub_1B6A0BBC0(v25 + 16);
  os_unfair_lock_unlock((v25 + 40));
  os_unfair_lock_lock((v25 + 40));
  v27 = *(v25 + 16);
  v26 = *(v25 + 24);

  os_unfair_lock_unlock((v25 + 40));
  v40 = v27;
  v41 = v26;
  v28 = v35;
  sub_1B6AB96B0();
  (*(v36 + 8))(v28, v37);
  (*(v5 + 8))(v10, v23);
  return (*(v34 + 8))(v18, v24);
}

uint64_t sub_1B6A06E90(uint64_t a1, char *a2, int *a3)
{
  *(v3 + 128) = a1;
  v6 = *a2;
  sub_1B6A0BB10(0);
  v8 = *(v7 + 48);
  v9 = &a2[*(v7 + 64)];
  v10 = *v9;
  v11 = v9[1];
  v14 = (a3 + *a3);
  v12 = swift_task_alloc();
  *(v3 + 136) = v12;
  *v12 = v3;
  v12[1] = sub_1B6A06FD0;

  return v14(v3 + 16, v6, &a2[v8], v10, v11);
}

uint64_t sub_1B6A06FD0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v10 = *v0;

  v3 = v1[1];
  v4 = v1[3];
  v2[1] = v1[2];
  v2[2] = v4;
  *v2 = v3;
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  *(v2 + 89) = *(v1 + 105);
  v2[4] = v6;
  v2[5] = v7;
  v2[3] = v5;
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1B6A07100(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock(v3 + 8);
    sub_1B6A0B1DC(&v3[4]);
    os_unfair_lock_unlock(v3 + 8);
  }

  return result;
}

uint64_t sub_1B6A071C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock(v3 + 10);
    sub_1B6A0BBDC(&v3[4]);
    os_unfair_lock_unlock(v3 + 10);
  }

  return result;
}

uint64_t sub_1B6A07288(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    MEMORY[0x1EEE9AC00](v4);
    v5 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
    v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v3 + v6));
    sub_1B6A0BD78(v3 + v5);
    os_unfair_lock_unlock((v3 + v6));
  }

  return result;
}

uint64_t sub_1B6A07390(uint64_t a1, uint64_t a2)
{
  sub_1B699332C(0, &qword_1EB95AEE8, sub_1B69844CC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - v4;
  v6 = sub_1B6AB8E40();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  sub_1B69844CC(0);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  return sub_1B69E1764(v5, v8);
}

uint64_t sub_1B6A07520(uint64_t a1, uint64_t a2)
{
  sub_1B69E8D9C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6AB8E40();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  sub_1B6A0B4EC(0, &qword_1EDBC8E18, MEMORY[0x1E69E8660]);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  return sub_1B69E1A00(v5, v8);
}

uint64_t sub_1B6A076A0(uint64_t a1, uint64_t a2)
{
  sub_1B699332C(0, &qword_1EB95AF20, sub_1B6984CE4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - v4;
  v6 = sub_1B6AB8E40();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  sub_1B6984CE4(0);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1B699332C(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  return sub_1B69E1C2C(v5, v8);
}

uint64_t sub_1B6A0786C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B699332C(0, &qword_1EB95AEE8, sub_1B69844CC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_1B6AB8E40();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  sub_1B69844CC(0);
  v13 = v12;
  v14 = *(v12 - 8);
  (*(v14 + 16))(v7, a3, v12);
  (*(v14 + 56))(v7, 0, 1, v13);
  return sub_1B69E1764(v7, v10);
}

uint64_t sub_1B6A07A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B69E8D9C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB8E40();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  sub_1B6A0B4EC(0, &qword_1EDBC8E18, MEMORY[0x1E69E8660]);
  v13 = v12;
  v14 = *(v12 - 8);
  (*(v14 + 16))(v7, a3, v12);
  (*(v14 + 56))(v7, 0, 1, v13);
  return sub_1B69E1A00(v7, v10);
}

uint64_t sub_1B6A07BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B699332C(0, &qword_1EB95AF20, sub_1B6984CE4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_1B6AB8E40();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  sub_1B6984CE4(0);
  v13 = v12;
  v14 = *(v12 - 8);
  (*(v14 + 16))(v7, a3, v12);
  (*(v14 + 56))(v7, 0, 1, v13);
  sub_1B699332C(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  return sub_1B69E1C2C(v7, v10);
}

uint64_t sub_1B6A07E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 96);
  v11 = *(a2 + 128);
  v16[7] = *(a2 + 112);
  v16[8] = v11;
  v17 = *(a2 + 144);
  v12 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v12;
  v13 = *(a2 + 80);
  v16[4] = *(a2 + 64);
  v16[5] = v13;
  v16[6] = v10;
  v14 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B6AA099C(v16, a6, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1B6A07F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  v12[2] = *(a2 + 32);
  v13 = *(a2 + 48);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B6AA1014(v12, a6, a3, a4, a5);
  }

  return result;
}

void *sub_1B6A07FC4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v88 = a3;
  v95 = a11;
  v90 = a10;
  v91 = a5;
  v93 = a4;
  v94 = a9;
  v17 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v85 - v20;
  v22 = type metadata accessor for SummaryEventConfiguration(0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v86 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v85 - v25;
  v27 = type metadata accessor for DiagnosticsConsentProvider(0);
  v28 = v27 - 8;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v92 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v85 - v31;
  v99 = &type metadata for TimestampJitter;
  v100 = &protocol witness table for TimestampJitter;
  v97[0] = a6;
  v97[1] = a7;
  v98 = a8 & 1;
  a12[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC0];
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = MEMORY[0x1E69E7CC0];
  v34 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  *(a12 + v34) = sub_1B6987EC8(v33);
  v35 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(a12 + v35) = sub_1B69F76A4(v33);
  v36 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(a12 + v36) = sub_1B69F77E8(v33);
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  a12[6] = a1;
  a12[7] = a2;
  a12[8] = v88;
  type metadata accessor for ProcessorManager();
  v37 = swift_allocObject();
  v37[3] = 0;
  swift_unknownObjectWeakInit();
  v37[5] = a2;
  v37[6] = v33;
  v37[4] = a1;
  a12[3] = v37;
  v38 = a1;
  v39 = a2;
  v40 = v38;
  v41 = v39;
  v42 = v40;
  v43 = v32;
  v44 = v42;
  v45 = v41;

  swift_unknownObjectRetain();
  sub_1B6AB8E30();
  v46 = &v32[*(v28 + 28)];
  *v46 = sub_1B69A3378;
  *(v46 + 1) = 0;
  sub_1B6980478(v95, v26, type metadata accessor for SummaryEventConfiguration);
  if (qword_1EDBCB498 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v48 = swift_allocObject();
  v49 = MEMORY[0x1E69E7CC8];
  *(v48 + 16) = MEMORY[0x1E69E7CC8];
  v88 = v43;
  sub_1B6980478(v43, v92, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4(0);
  v51 = v50;
  v52 = *(v50 + 48);
  v53 = sub_1B6AB8BB0();
  (*(*(v53 - 8) + 56))(v21, 1, 1, v53);
  *&v21[v52] = 0;
  (*(*(v51 - 8) + 56))(v21, 0, 1, v51);
  v54 = v26[8];
  v89 = v26;
  if (v54)
  {
    v55 = type metadata accessor for DisabledSummaryEventManager();
    v56 = swift_allocObject();
    v57 = &off_1F2E7D3E0;
  }

  else
  {
    v58 = v26;
    v59 = v86;
    sub_1B6980478(v58, v86, type metadata accessor for SummaryEventConfiguration);
    v60 = v87;
    sub_1B6980478(v21, v87, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v55 = type metadata accessor for SummaryEventManager(0);
    v61 = swift_allocObject();
    v56 = sub_1B698A71C(v59, v60, v61);
    v57 = &off_1F2E7C028;
  }

  v96[3] = v55;
  v96[4] = v57;
  v96[0] = v56;
  sub_1B6A0BDA4(v21, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  type metadata accessor for Tracker(0);
  v62 = swift_allocObject();
  *(v62 + 80) = 0;
  *(v62 + 56) = 0;
  *(v62 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v62 + 112) = v49;
  *(v62 + 120) = v49;
  *(v62 + 128) = v49;
  *(v62 + 136) = v49;
  *(v62 + 144) = v49;
  *(v62 + 160) = v49;
  v63 = MEMORY[0x1E69E7CC0];
  *(v62 + 168) = MEMORY[0x1E69E7CC0];
  *(v62 + 176) = v63;
  *(v62 + 192) = v63;
  *(v62 + 200) = 0;
  v64 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v65 = swift_allocObject();
  v66 = swift_slowAlloc();
  *(v65 + 16) = v66;
  *v66 = 0;
  *(v65 + 24) = 0x10000;
  *(v62 + v64) = v65;
  *(v62 + 16) = xmmword_1B6ABF710;
  *(v62 + 201) = (v93 & 2) != 0;
  *(v62 + 96) = v45;
  *(v62 + 104) = v48;
  *(v62 + 152) = 0;
  *(v62 + 80) = 0;
  *(v62 + 88) = v44;
  swift_unknownObjectWeakAssign();
  *(v62 + 184) = v63;
  *(v62 + 40) = 0;
  *(v62 + 48) = 0;
  *(v62 + 56) = 0;
  *(v62 + 64) = 0;
  v67 = v44;
  v68 = v45;

  v69 = v90;
  *(v62 + 208) = v94;
  *(v62 + 216) = v69;
  v70 = v92;
  sub_1B6980478(v92, v62 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v96, v62 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v62 + 32) = v47;
  swift_unknownObjectRetain();
  v71 = v47;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v72 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v72);
    v87 = v71;

    swift_unknownObjectRelease();

    v71 = v87;
    sub_1B6A0BDA4(v70, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v89, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v88, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1B6A0BDA4(v70, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v89, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v88, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  a12[2] = v62;
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = v93;
  v73 = v91;
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v91;
  sub_1B6982544(v97, a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  ObjectType = swift_getObjectType();
  v75 = *(v69 + 8);

  v75(v96, ObjectType, v69);
  v76 = v96[0];
  type metadata accessor for PrivacyValidator();
  v77 = swift_allocObject();
  *(v77 + 16) = v76 != 0;
  if (!v76)
  {
    v76 = MEMORY[0x1E69E7CD0];
  }

  type metadata accessor for DenylistDescriptorMatcher();
  v78 = swift_allocObject();
  *(v78 + 16) = v76;
  *(v77 + 24) = v78;
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v77;
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v71;
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(a12[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v79 = v71;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v80 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v80);
  }

  *(a12[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v81 = a12[3];
  v82 = *(v81 + 32);
  v83 = swift_allocObject();
  v83[2] = v81;
  v83[3] = v73;
  v83[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v82, sub_1B69916A8, v83);

  sub_1B6A0BDA4(v95, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v97);
  return a12;
}

void *sub_1B6A089EC(void *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v88 = a3;
  v90 = a13;
  v91 = a5;
  v95 = a11;
  v93 = a4;
  v94 = a9;
  v18 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v84 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v83 - v21;
  v23 = type metadata accessor for SummaryEventConfiguration(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v83 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v83 - v26;
  v28 = type metadata accessor for DiagnosticsConsentProvider(0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v85 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v83 - v31;
  type metadata accessor for SessionManager(0);
  v33 = swift_allocObject();
  v99 = &type metadata for TimestampJitter;
  v100 = &protocol witness table for TimestampJitter;
  v97[0] = a6;
  v97[1] = a7;
  v98 = a8 & 1;
  v33[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(v33 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC0];
  *(v33 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = MEMORY[0x1E69E7CC0];
  v35 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  *(v33 + v35) = sub_1B6987EC8(v34);
  v36 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(v33 + v36) = sub_1B69F76A4(v34);
  v37 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(v33 + v37) = sub_1B69F77E8(v34);
  *(v33 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  v33[6] = a1;
  v33[7] = a2;
  v33[8] = v88;
  type metadata accessor for ProcessorManager();
  v38 = swift_allocObject();
  v38[3] = 0;
  swift_unknownObjectWeakInit();
  v38[5] = a2;
  v38[6] = v34;
  v38[4] = a1;
  v33[3] = v38;
  v92 = a10;
  sub_1B6980478(a10, v32, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6980478(v95, v27, type metadata accessor for SummaryEventConfiguration);
  v39 = qword_1EDBCB498;
  v40 = a1;
  v41 = a2;
  v42 = v40;
  v43 = v41;
  v44 = v42;
  v45 = v43;

  swift_unknownObjectRetain();
  if (v39 != -1)
  {
    swift_once();
  }

  v87 = a12;
  v46 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v86 = swift_allocObject();
  v47 = MEMORY[0x1E69E7CC8];
  *(v86 + 16) = MEMORY[0x1E69E7CC8];
  v88 = v32;
  v48 = v32;
  v49 = v85;
  sub_1B6980478(v48, v85, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4(0);
  v51 = v50;
  v52 = *(v50 + 48);
  v53 = sub_1B6AB8BB0();
  (*(*(v53 - 8) + 56))(v22, 1, 1, v53);
  *&v22[v52] = 0;
  (*(*(v51 - 8) + 56))(v22, 0, 1, v51);
  v54 = v27[8];
  v89 = v27;
  if (v54)
  {
    v55 = type metadata accessor for DisabledSummaryEventManager();
    v56 = swift_allocObject();
    v57 = &off_1F2E7D3E0;
  }

  else
  {
    v58 = v27;
    v59 = v83;
    sub_1B6980478(v58, v83, type metadata accessor for SummaryEventConfiguration);
    v60 = v84;
    sub_1B6980478(v22, v84, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v55 = type metadata accessor for SummaryEventManager(0);
    v61 = swift_allocObject();
    v56 = sub_1B698A71C(v59, v60, v61);
    v57 = &off_1F2E7C028;
  }

  v96[3] = v55;
  v96[4] = v57;
  v96[0] = v56;
  sub_1B6A0BDA4(v22, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  type metadata accessor for Tracker(0);
  v62 = swift_allocObject();
  *(v62 + 80) = 0;
  *(v62 + 56) = 0;
  *(v62 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v62 + 112) = v47;
  *(v62 + 120) = v47;
  *(v62 + 128) = v47;
  *(v62 + 136) = v47;
  *(v62 + 144) = v47;
  *(v62 + 160) = v47;
  v63 = MEMORY[0x1E69E7CC0];
  *(v62 + 168) = MEMORY[0x1E69E7CC0];
  *(v62 + 176) = v63;
  *(v62 + 192) = v63;
  *(v62 + 200) = 0;
  v64 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v65 = swift_allocObject();
  v66 = swift_slowAlloc();
  *(v65 + 16) = v66;
  *v66 = 0;
  *(v65 + 24) = 0x10000;
  *(v62 + v64) = v65;
  *(v62 + 16) = xmmword_1B6ABF710;
  *(v62 + 201) = (v93 & 2) != 0;
  v67 = v86;
  *(v62 + 96) = v45;
  *(v62 + 104) = v67;
  *(v62 + 152) = 0;
  *(v62 + 80) = 0;
  *(v62 + 88) = v44;
  swift_unknownObjectWeakAssign();
  *(v62 + 184) = v63;
  *(v62 + 40) = 0;
  *(v62 + 48) = 0;
  *(v62 + 56) = 0;
  *(v62 + 64) = 0;
  v84 = v44;
  v68 = v45;

  v69 = v90;
  *(v62 + 208) = v94;
  *(v62 + 216) = v69;
  sub_1B6980478(v49, v62 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v96, v62 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v62 + 32) = v46;
  swift_unknownObjectRetain();
  v70 = v46;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v71 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v71);

    swift_unknownObjectRelease();

    sub_1B6A0BDA4(v49, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v89, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v88, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1B6A0BDA4(v49, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v89, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v88, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v33[2] = v62;
  *(v33 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = v93;
  v72 = v91;
  *(v33 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v91;
  sub_1B6982544(v97, v33 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(v33 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  v73 = *(v69 + 8);

  v73(v96, v87, v69);
  v74 = v96[0];
  type metadata accessor for PrivacyValidator();
  v75 = swift_allocObject();
  *(v75 + 16) = v74 != 0;
  if (!v74)
  {
    v74 = MEMORY[0x1E69E7CD0];
  }

  type metadata accessor for DenylistDescriptorMatcher();
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  *(v75 + 24) = v76;
  *(v33 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v75;
  *(v33 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v70;
  *(v33 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(v33[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v77 = v70;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v78 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v78);
  }

  *(v33[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v79 = v33[3];
  v80 = *(v79 + 32);
  v81 = swift_allocObject();
  v81[2] = v79;
  v81[3] = v72;
  v81[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v80, sub_1B69916A8, v81);

  sub_1B6A0BDA4(v95, type metadata accessor for SummaryEventConfiguration);
  sub_1B6A0BDA4(v92, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(v97);
  return v33;
}

void *sub_1B6A09478(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v93 = a8;
  v94 = a5;
  v95 = a4;
  v92 = a3;
  v97 = a7;
  v98 = a9;
  v15 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v88 - v18;
  v20 = type metadata accessor for SummaryEventConfiguration(0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v88 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v88 - v23;
  v24 = type metadata accessor for DiagnosticsConsentProvider(0);
  v25 = v24 - 8;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v88 - v29;
  v100[3] = a11;
  v100[4] = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, a6, a11);
  v95 = *v95;
  a10[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  v32 = MEMORY[0x1E69E7CC0];
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = MEMORY[0x1E69E7CC0];
  v33 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  *(a10 + v33) = sub_1B6987EC8(v32);
  v34 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(a10 + v34) = sub_1B69F76A4(v32);
  v35 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(a10 + v35) = sub_1B69F77E8(v32);
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  a10[6] = a1;
  a10[7] = a2;
  a10[8] = v92;
  type metadata accessor for ProcessorManager();
  v36 = swift_allocObject();
  v36[3] = 0;
  swift_unknownObjectWeakInit();
  v36[5] = a2;
  v36[6] = v32;
  v36[4] = a1;
  a10[3] = v36;
  v37 = a1;
  v38 = a2;
  v39 = v37;
  v40 = v38;
  v41 = v39;
  v42 = v30;
  v43 = v41;
  v90 = v40;

  swift_unknownObjectRetain();
  sub_1B6AB8E30();
  v44 = *(v25 + 28);
  v45 = v96;
  v46 = &v30[v44];
  *v46 = sub_1B69A3378;
  *(v46 + 1) = 0;
  sub_1B6980478(v98, v45, type metadata accessor for SummaryEventConfiguration);
  if (qword_1EDBCB498 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v48 = swift_allocObject();
  v49 = MEMORY[0x1E69E7CC8];
  *(v48 + 16) = MEMORY[0x1E69E7CC8];
  v91 = v28;
  v92 = v42;
  sub_1B6980478(v42, v28, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4(0);
  v51 = v50;
  v52 = *(v50 + 48);
  v53 = sub_1B6AB8BB0();
  (*(*(v53 - 8) + 56))(v19, 1, 1, v53);
  *&v19[v52] = 0;
  (*(*(v51 - 8) + 56))(v19, 0, 1, v51);
  if (*(v45 + 8))
  {
    v54 = type metadata accessor for DisabledSummaryEventManager();
    v55 = swift_allocObject();
    v56 = &off_1F2E7D3E0;
  }

  else
  {
    v57 = v45;
    v58 = v88;
    sub_1B6980478(v57, v88, type metadata accessor for SummaryEventConfiguration);
    v59 = v89;
    sub_1B6980478(v19, v89, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v54 = type metadata accessor for SummaryEventManager(0);
    v60 = swift_allocObject();
    v55 = sub_1B698A71C(v58, v59, v60);
    v56 = &off_1F2E7C028;
  }

  v99[3] = v54;
  v99[4] = v56;
  v99[0] = v55;
  sub_1B6A0BDA4(v19, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  type metadata accessor for Tracker(0);
  v61 = swift_allocObject();
  *(v61 + 80) = 0;
  *(v61 + 56) = 0;
  *(v61 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v61 + 112) = v49;
  *(v61 + 120) = v49;
  *(v61 + 128) = v49;
  *(v61 + 136) = v49;
  *(v61 + 144) = v49;
  *(v61 + 160) = v49;
  v62 = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = MEMORY[0x1E69E7CC0];
  *(v61 + 176) = v62;
  *(v61 + 192) = v62;
  *(v61 + 200) = 0;
  v63 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v64 = swift_allocObject();
  v65 = swift_slowAlloc();
  *(v64 + 16) = v65;
  *v65 = 0;
  *(v64 + 24) = 0x10000;
  *(v61 + v63) = v64;
  *(v61 + 16) = xmmword_1B6ABF710;
  *(v61 + 201) = (v95 & 2) != 0;
  v66 = v90;
  *(v61 + 96) = v90;
  *(v61 + 104) = v48;
  *(v61 + 152) = 0;
  *(v61 + 80) = 0;
  *(v61 + 88) = v43;
  swift_unknownObjectWeakAssign();
  *(v61 + 184) = v62;
  *(v61 + 40) = 0;
  *(v61 + 48) = 0;
  *(v61 + 56) = 0;
  *(v61 + 64) = 0;
  v67 = v43;
  v68 = v66;

  v69 = v93;
  *(v61 + 208) = v97;
  *(v61 + 216) = v69;
  v70 = v91;
  sub_1B6980478(v91, v61 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v99, v61 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v61 + 32) = v47;
  swift_unknownObjectRetain();
  v71 = v47;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v72 = swift_allocObject();
    v90 = v71;
    v73 = v70;
    v74 = v72;
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v74);

    swift_unknownObjectRelease();

    v75 = v73;
    v71 = v90;
    sub_1B6A0BDA4(v75, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v96, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v92, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v99);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1B6A0BDA4(v70, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v96, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v92, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v99);
  }

  a10[2] = v61;
  v76 = v94;
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = v95;
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v76;
  sub_1B6982544(v100, a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  ObjectType = swift_getObjectType();
  v78 = *(v69 + 8);

  v78(v99, ObjectType, v69);
  v79 = v99[0];
  type metadata accessor for PrivacyValidator();
  v80 = swift_allocObject();
  *(v80 + 16) = v79 != 0;
  if (!v79)
  {
    v79 = MEMORY[0x1E69E7CD0];
  }

  type metadata accessor for DenylistDescriptorMatcher();
  v81 = swift_allocObject();
  *(v81 + 16) = v79;
  *(v80 + 24) = v81;
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v80;
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v71;
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(a10[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v82 = v71;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v83 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v83);
  }

  *(a10[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v84 = a10[3];
  v85 = *(v84 + 32);
  v86 = swift_allocObject();
  v86[2] = v84;
  v86[3] = v76;
  v86[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v85, sub_1B69916A8, v86);

  sub_1B6A0BDA4(v98, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v100);
  return a10;
}

void *sub_1B6A09EC0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = a7;
  v24 = a8;
  v21 = a4;
  v22 = a5;
  v16 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a10);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a6, a11);
  return sub_1B6A09478(a1, a2, a3, v21, v22, v18, v23, v24, a9, v19, a11, a12);
}

void *sub_1B6A09FE8(void *a1, char *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a7;
  v26 = a8;
  v23 = a4;
  v24 = a5;
  v22 = a9;
  v17 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a11);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v17 + 16))(v19, a6, a12);
  return sub_1B69916AC(a1, a2, a3, v23, v24, v19, v25, v26, v22, *(&v22 + 1), a10, v20, a12, a13);
}

uint64_t sub_1B6A0A120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B69D1460;

  return sub_1B69FDB84(a1, v4, v5, v6);
}

uint64_t sub_1B6A0A1D4(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1B69C2E8C(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_12Tm()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 32) >= 3uLL)
  {
  }

  v5 = (v3 + 73) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1B6A0A2C8()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1B6A03820(v3, v0 + v2, v5, v6);
}

uint64_t sub_1B6A0A35C()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B6A047EC(v3, v0 + v2, v4);
}

uint64_t sub_1B6A0A3EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69AD75C;

  return sub_1B6A0521C(a1, v4, v5, v7, v6);
}

unint64_t sub_1B6A0A4B0()
{
  result = qword_1EB95B4B0;
  if (!qword_1EB95B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B4B0);
  }

  return result;
}

unint64_t sub_1B6A0A508()
{
  result = qword_1EB95B4B8;
  if (!qword_1EB95B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B4B8);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B6A0A674(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1B69809F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1B6A0A7A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B697ED90(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B6A0A80C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1B6A0A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1B6A0A8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B6A0A92C(uint64_t a1, uint64_t a2)
{
  v4[1] = *(v2 + 16);
  v5 = a1;
  v6 = a2;
  return sub_1B69AC2BC(sub_1B6A0A99C, v4);
}

uint64_t sub_1B6A0AA04(uint64_t a1, uint64_t a2)
{
  sub_1B699332C(0, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B6A0AAAC(uint64_t a1)
{
  if (!qword_1EB95ADF8)
  {
    sub_1B697E288();
    sub_1B69809F4(255, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95ADF8);
    }
  }
}

uint64_t sub_1B6A0AB30(uint64_t a1, uint64_t a2)
{
  sub_1B69809F4(0, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_90Tm()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B6A0ACBC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B69D1460;

  return sub_1B6A007B0(a1, v12, v4, v5, v6, v7, v8, v9);
}

void sub_1B6A0ADCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    sub_1B699332C(255, &qword_1EB95B4C8, sub_1B698148C, MEMORY[0x1E69E8698]);
    v7 = v6;
    v8 = sub_1B6A0B55C(&qword_1EB95B4D0, &qword_1EB95B4C8, sub_1B698148C);
    v9 = a3(a1, v7, &type metadata for EssentialUserData, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B6A0AE90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B6A0ADCC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6A0AED4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B6A0B6F8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B6A0AF30(uint64_t a1)
{
  if (!qword_1EB95B4F0)
  {
    sub_1B6A0B6F8(255, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData);
    v3 = v2;
    v4 = sub_1B6A0AED4(&qword_1EB95AEE0, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData);
    v6 = type metadata accessor for PushEvent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB95B4F0);
    }
  }
}

uint64_t sub_1B6A0B03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1B6A0B0A4(uint64_t a1)
{
  if (!qword_1EB95B4F8)
  {
    sub_1B69809F4(255, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95B4F8);
    }
  }
}

uint64_t objectdestroy_112Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t objectdestroy_105Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1B6A0B268(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B69AD75C;

  return sub_1B69FE738(a1, v12, v4, v5, v6, v7, v8, v9);
}

void sub_1B6A0B398(uint64_t a1)
{
  if (!qword_1EB95B518)
  {
    v2 = MEMORY[0x1E69E8698];
    sub_1B699332C(255, &qword_1EB95B4C8, sub_1B698148C, MEMORY[0x1E69E8698]);
    v4 = v3;
    sub_1B699332C(255, &qword_1EB95B520, sub_1B69827CC, v2);
    v6 = v5;
    sub_1B6A0B4EC(255, &qword_1EB95B528, MEMORY[0x1E69E8698]);
    v10[0] = v4;
    v10[1] = v6;
    v10[2] = v7;
    v10[3] = sub_1B6A0B55C(&qword_1EB95B4D0, &qword_1EB95B4C8, sub_1B698148C);
    v10[4] = sub_1B6A0B55C(&qword_1EB95B530, &qword_1EB95B520, sub_1B69827CC);
    v10[5] = sub_1B6A0B5C0();
    v8 = type metadata accessor for AsyncCombineLatest3Sequence(a1, v10);
    if (!v9)
    {
      atomic_store(v8, &qword_1EB95B518);
    }
  }
}

void sub_1B6A0B4EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B69809F4(255, &qword_1EDBCAA50, MEMORY[0x1E69E6158]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6A0B55C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B699332C(255, a2, a3, MEMORY[0x1E69E8698]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6A0B5C0()
{
  result = qword_1EB95B538;
  if (!qword_1EB95B538)
  {
    sub_1B6A0B4EC(255, &qword_1EB95B528, MEMORY[0x1E69E8698]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B538);
  }

  return result;
}

void sub_1B6A0B654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    sub_1B6A0B398(255);
    v7 = v6;
    v8 = sub_1B69822F4(&qword_1EB95B540, sub_1B6A0B398, &unk_1B6ABECE8);
    v9 = a3(a1, v7, &type metadata for AppAnalyticsUserData, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B6A0B6F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for SessionData(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B6A0B7C0(uint64_t a1)
{
  if (!qword_1EB95B560)
  {
    sub_1B6A0B6F8(255, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData);
    v3 = v2;
    v4 = sub_1B6A0AED4(&qword_1EB95AF10, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData);
    v6 = type metadata accessor for PushEvent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB95B560);
    }
  }
}

uint64_t objectdestroy_144Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1B6A0B96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1B69D1460;

  return sub_1B6A81DBC(a1, a2, a3, a4, a5, v13, v12);
}

uint64_t sub_1B6A0BA48(uint64_t a1, char *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B69D1460;

  return sub_1B6A06E90(a1, a2, v6);
}

void sub_1B6A0BB10(uint64_t a1)
{
  if (!qword_1EB95B568)
  {
    sub_1B698148C(255);
    sub_1B69827CC(255);
    sub_1B69809F4(255, &qword_1EDBCAA50, MEMORY[0x1E69E6158]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB95B568);
    }
  }
}

uint64_t objectdestroy_133Tm()
{
  v1 = sub_1B6AB8E40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B6A0BCD4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1B6AB8E40() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1B6A0BD94(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1B6992E2C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B6A0BDA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B6A0BE54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A0BE90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B6A0BF28(void *a1, uint64_t a2)
{
  sub_1B6A0C50C(0, &qword_1EB95B5B8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A0C404();
  sub_1B6ABA2D0();
  v10[1] = a2;
  sub_1B6A0C458();
  sub_1B6A0C570(&qword_1EB95B5C0, sub_1B6A0C5E8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1B6ABA040();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B6A0C0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x615473746E657665 && a2 == 0xEB00000000656C62)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6A0C16C(uint64_t a1)
{
  v2 = sub_1B6A0C404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A0C1A8(uint64_t a1)
{
  v2 = sub_1B6A0C404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B6A0C1E4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B6A0C22C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1B6A0C22C(void *a1)
{
  sub_1B6A0C50C(0, &qword_1EB95B590, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A0C404();
  sub_1B6ABA2A0();
  if (!v1)
  {
    sub_1B6A0C458();
    sub_1B6A0C570(&qword_1EB95B5A8, sub_1B6A0C4B8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1B6AB9F90();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1B6A0C404()
{
  result = qword_1EB95B598;
  if (!qword_1EB95B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B598);
  }

  return result;
}

void sub_1B6A0C458()
{
  if (!qword_1EB95B5A0)
  {
    v0 = sub_1B6AB9240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B5A0);
    }
  }
}

unint64_t sub_1B6A0C4B8()
{
  result = qword_1EB95B5B0;
  if (!qword_1EB95B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B5B0);
  }

  return result;
}

void sub_1B6A0C50C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A0C404();
    v7 = a3(a1, &type metadata for SummaryEventDatabase.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6A0C570(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B6A0C458();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6A0C5E8()
{
  result = qword_1EB95B5C8;
  if (!qword_1EB95B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B5C8);
  }

  return result;
}

unint64_t sub_1B6A0C650()
{
  result = qword_1EB95B5D0;
  if (!qword_1EB95B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B5D0);
  }

  return result;
}

unint64_t sub_1B6A0C6A8()
{
  result = qword_1EB95B5D8;
  if (!qword_1EB95B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B5D8);
  }

  return result;
}

unint64_t sub_1B6A0C700()
{
  result = qword_1EB95B5E0;
  if (!qword_1EB95B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B5E0);
  }

  return result;
}

uint64_t BridgedProcessEvent.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAProcessEvent_name);

  return v1;
}

uint64_t BridgedProcessEvent.version.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAProcessEvent_version);

  return v1;
}

uint64_t BridgedProcessEvent.groupName.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAProcessEvent_groupName);

  return v1;
}

id BridgedProcessEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedProcessEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedProcessEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BridgedUploadBatchEventProcessor.__allocating_init(client:endpoint:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  if (qword_1EDBCB790 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDBCB798;
  v8 = sub_1B6986A58(a1, a2, 0, v7);

  v9 = &v6[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v9 = v8;
  v9[1] = &protocol witness table for UploadBatchEventProcessor;
  v12.receiver = v6;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_unknownObjectRelease();
  return v10;
}

id BridgedUploadBatchEventProcessor.init(client:endpoint:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_1EDBCB790 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDBCB798;
  v8 = sub_1B6986A58(a1, a2, 0, v7);

  v9 = &v3[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v9 = v8;
  v9[1] = &protocol witness table for UploadBatchEventProcessor;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_unknownObjectRelease();
  return v10;
}

id BridgedUploadBatchEventProcessor.__allocating_init(client:endpoint:config:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B6986A58(a1, a2, 0, a3);
  v9 = &v7[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v9 = v8;
  v9[1] = &protocol witness table for UploadBatchEventProcessor;
  v12.receiver = v7;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_unknownObjectRelease();
  return v10;
}

id BridgedUploadBatchEventProcessor.init(client:endpoint:config:)(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B6986A58(a1, a2, 0, a3);
  v9 = &v3[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v9 = v8;
  v9[1] = &protocol witness table for UploadBatchEventProcessor;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_unknownObjectRelease();
  return v10;
}

id BridgedUploadBatchEventProcessor.__allocating_init(client:endpoint:contentType:config:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1B6986A58(a1, a2, a3, a4);
  v11 = &v9[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v11 = v10;
  v11[1] = &protocol witness table for UploadBatchEventProcessor;
  v14.receiver = v9;
  v14.super_class = v4;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  swift_unknownObjectRelease();
  return v12;
}

id BridgedUploadBatchEventProcessor.init(client:endpoint:contentType:config:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_1B6986A58(a1, a2, a3, a4);
  v11 = &v4[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v11 = v10;
  v11[1] = &protocol witness table for UploadBatchEventProcessor;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  swift_unknownObjectRelease();
  return v12;
}

id BridgedUploadBatchEventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedUploadBatchEventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics14DataEventErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B6A0D37C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A0D3D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

unint64_t BridgedLoggingEventProcessorFormat.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1B6A0D448@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id BridgingLoggingEventProcessor.__allocating_init(format:subsystem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  switch(a1)
  {
    case 2:
      *&v13[0] = 1;
      goto LABEL_5;
    case 1:
      *&v13[0] = 0;
LABEL_5:
      v15 = 0;
LABEL_8:
      type metadata accessor for LoggingEventProcessor();
      swift_allocObject();
      v9 = LoggingEventProcessor.init(logFormat:subsystem:)(v13, a2, a3);
      v10 = &v8[OBJC_IVAR___AALoggingEventProcessor_proxyEventProcessor];
      *v10 = v9;
      v10[1] = &protocol witness table for LoggingEventProcessor;
      v12.receiver = v8;
      v12.super_class = v4;
      return objc_msgSendSuper2(&v12, sel_init);
    case 0:
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v15 = 2;
      goto LABEL_8;
  }

  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

id BridgingLoggingEventProcessor.init(format:subsystem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  switch(a1)
  {
    case 2:
      *&v13[0] = 1;
      goto LABEL_5;
    case 1:
      *&v13[0] = 0;
LABEL_5:
      v15 = 0;
LABEL_8:
      type metadata accessor for LoggingEventProcessor();
      swift_allocObject();
      v9 = LoggingEventProcessor.init(logFormat:subsystem:)(v13, a2, a3);
      v10 = &v4[OBJC_IVAR___AALoggingEventProcessor_proxyEventProcessor];
      *v10 = v9;
      v10[1] = &protocol witness table for LoggingEventProcessor;
      v12.receiver = v4;
      v12.super_class = ObjectType;
      return objc_msgSendSuper2(&v12, sel_init);
    case 0:
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v15 = 2;
      goto LABEL_8;
  }

  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

id BridgingLoggingEventProcessor.__allocating_init(format:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithFormat:a1 subsystem:0];
}

id BridgingLoggingEventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgingLoggingEventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B6A0D908()
{
  result = qword_1EB95B618;
  if (!qword_1EB95B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B618);
  }

  return result;
}

uint64_t sub_1B6A0D9BC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1[1];
  v11 = *a1;
  v9 = a1[2];
  v6 = *(a1 + 6);
  v12 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 64) = v6;
  *(v3 + 72) = v7;
  *(v3 + 16) = v11;
  *(v3 + 32) = v10;
  *(v3 + 48) = v9;
  *v7 = v3;
  v7[1] = sub_1B6A0DB0C;

  return v12(v3 + 16, a2, a3);
}

uint64_t sub_1B6A0DB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

void sub_1B6A0DC34(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1B6A10E30(0, &qword_1EDBCB550, type metadata accessor for UploadDropbox.Debugging);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = *(*v2 + 13);
  os_unfair_lock_lock_with_options();
  v11 = *(*v2 + 12);
  swift_beginAccess();
  sub_1B6A110C0(v2 + v11, v9);
  v12 = type metadata accessor for UploadDropbox.Debugging(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    v14 = sub_1B6A11140(v9, &qword_1EDBCB550, type metadata accessor for UploadDropbox.Debugging);
    v2[2](v14);
    sub_1B6A1119C(a1, v7);
    (*(v13 + 56))(v7, 0, 1, v12);
    swift_beginAccess();
    sub_1B6A11200(v7, v2 + v11);
    swift_endAccess();
  }

  else
  {
    sub_1B6A11280(v9, a1);
  }

  os_unfair_lock_unlock((*(v2 + v10))[2]);
}

uint64_t sub_1B6A0DE50(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[16] = v2;
  v3[17] = a1;
  v3[18] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B6A0DF54, 0, 0);
}

uint64_t sub_1B6A0DF54()
{
  v13 = v0;
  v1 = v0[11].i64[0];
  sub_1B69BEB24(v1, &v0[4].i64[1]);
  v2 = sub_1B6AB8F80();
  v3 = sub_1B6AB9900();
  sub_1B69BEDA0(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[11].i64[0];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B698F63C(*v4, *(v4 + 8), &v12);
    _os_log_impl(&dword_1B697C000, v2, v3, "Upload service did sign data for upload, identifier=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1B8C99550](v6, -1, -1);
    MEMORY[0x1B8C99550](v5, -1, -1);
  }

  v7 = v0[8].i64[1];
  v8 = v0[9].i64[0];
  v0[13].i64[0] = v8;
  v9 = swift_task_alloc();
  v0[13].i64[1] = v9;
  v9[1] = vextq_s8(v0[11], v0[11], 8uLL);
  v9[2].i64[0] = v7;
  v9[2].i64[1] = v8;
  v10 = swift_task_alloc();
  v0[14].i64[0] = v10;
  *v10 = v0;
  v10[1] = sub_1B6A0E138;

  return MEMORY[0x1EEE6DDE0](&v0[9].u64[1], 0, 0, 0xD000000000000010, 0x80000001B6ACA1C0, sub_1B6A10CDC, v9, &type metadata for UploadResult);
}

uint64_t sub_1B6A0E138()
{

  return MEMORY[0x1EEE6DFA0](sub_1B6A0E26C, 0, 0);
}

uint64_t sub_1B6A0E288()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X3, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B6A0E3D8, 0, 0);
}

uint64_t sub_1B6A0E3D8()
{
  v21 = v0;
  v1 = v0[15];
  v2 = v0[13];
  sub_1B69BEB24(v2, (v0 + 2));
  v3 = v1;
  v4 = sub_1B6AB8F80();
  v5 = sub_1B6AB98E0();
  sub_1B69BEDA0(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1B698F63C(*v7, *(v7 + 8), &v19);
    *(v8 + 12) = 2112;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1B697C000, v4, v5, "Upload service failed to sign data for upload; fallback to no signature, identifier=%s, error=%@", v8, 0x16u);
    sub_1B6A11140(v9, &qword_1EDBC8E08, sub_1B6A10F98);
    MEMORY[0x1B8C99550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B8C99550](v10, -1, -1);
    MEMORY[0x1B8C99550](v8, -1, -1);
  }

  v13 = v0[15];
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1B6AB9CA0();
  v14 = v20;
  v0[9] = v19;
  v0[10] = v14;
  MEMORY[0x1B8C97BE0](0x46676E696E676953, 0xEF3D6572756C6961);
  v0[11] = v13;
  sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
  sub_1B6AB9DF0();

  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[1];

  return v17(v15, v16);
}

uint64_t sub_1B6A0E638(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1B6A10D48();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_1B6A0E7DC(a3, a4, a5, sub_1B6A10DA8, v14);
}

uint64_t sub_1B6A0E794(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1B6A110A8(a1, a2, a3);
  sub_1B6A10D48();
  return sub_1B6AB95F0();
}

uint64_t sub_1B6A0E7DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  v6 = v5;
  v85 = a4;
  v86 = a5;
  v80 = a3;
  v79 = a2;
  v78 = *v5;
  v88 = sub_1B6AB8810();
  v82 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v81 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A10E30(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - v13;
  v15 = sub_1B6AB8BB0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v69 - v20;
  v87 = a1;
  v22 = a1[6];
  sub_1B6A9ACCC(v22, v14);
  v23 = *(v16 + 48);
  if (v23(v14, 1, v15) == 1)
  {
    sub_1B6A11140(v14, &qword_1EDBCCC40, MEMORY[0x1E6968FB0]);
    return v85(v22, 0, 3);
  }

  else
  {
    v77 = 7104878;
    (*(v16 + 32))(v21, v14, v15);
    v72 = v6[3];
    v84 = v6;
    v71 = v6[4];
    v83 = swift_allocBox();
    v26 = v25;
    v27 = *(v16 + 16);
    v74 = v21;
    v69 = v27;
    v27(v19, v21, v15);
    sub_1B6AB87D0();
    v70 = v23;
    sub_1B6AB8790();
    v95[0] = sub_1B69FAAFC(v22);
    v95[1] = v28;
    MEMORY[0x1B8C97BE0](0x6F6973726576203BLL, 0xEA00000000003D6ELL);
    v29 = *(v78 + 88);
    v30 = *(v29 + 8);
    v78 = *(v78 + 80);
    v73 = v29;
    v31 = v30();
    MEMORY[0x1B8C97BE0](v31);

    sub_1B6AB8800();

    v32 = v87;
    sub_1B6AB8800();
    sub_1B6AB8800();
    sub_1B6AB8800();
    sub_1B6AB87E0();
    if (v70(v12, 1, v15))
    {
      sub_1B6A11140(v12, &qword_1EDBCCC40, MEMORY[0x1E6968FB0]);
      v33 = 0xE300000000000000;
      v79 = 7104878;
    }

    else
    {
      v69(v19, v12, v15);
      sub_1B6A11140(v12, &qword_1EDBCCC40, MEMORY[0x1E6968FB0]);
      v79 = sub_1B6AB8AA0();
      v33 = v34;
      (*(v16 + 8))(v19, v15);
    }

    if (sub_1B6AB87B0())
    {
      v77 = sub_1B6AB9220();
      v36 = v35;
    }

    else
    {
      v36 = 0xE300000000000000;
    }

    v37 = qword_1EDBCAD28;
    sub_1B69BEB24(v32, v95);

    v80 = v37;
    v38 = sub_1B6AB8F80();
    v39 = sub_1B6AB9900();
    sub_1B69BEDA0(v32);

    v40 = os_log_type_enabled(v38, v39);
    v76 = v15;
    v75 = v16;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v95[0] = v42;
      *v41 = 136315650;
      *(v41 + 4) = sub_1B698F63C(*v87, v87[1], v95);
      *(v41 + 12) = 2080;
      v43 = sub_1B698F63C(v79, v33, v95);

      *(v41 + 14) = v43;
      *(v41 + 22) = 2080;
      v44 = sub_1B698F63C(v77, v36, v95);

      *(v41 + 24) = v44;
      _os_log_impl(&dword_1B697C000, v38, v39, "Upload service sending upload request, identifier=%s, url=%s, headers=%s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v42, -1, -1);
      v45 = v41;
      v32 = v87;
      MEMORY[0x1B8C99550](v45, -1, -1);
    }

    else
    {
    }

    sub_1B69ADE38(v89);
    v46 = v91;
    v87 = v90;
    v79 = __swift_project_boxed_opaque_existential_1(v89, v90);
    v47 = v82;
    v48 = v81;
    (*(v82 + 16))(v81, v26, v88);
    v49 = *(v32 + 24);
    v77 = *(v32 + 16);
    v72 = v49;
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = swift_allocObject();
    v52 = *(v32 + 16);
    *(v51 + 56) = *v32;
    v53 = v73;
    *(v51 + 16) = v78;
    *(v51 + 24) = v53;
    v54 = v85;
    v55 = v86;
    *(v51 + 32) = v50;
    *(v51 + 40) = v54;
    *(v51 + 48) = v55;
    *(v51 + 72) = v52;
    *(v51 + 88) = *(v32 + 32);
    v56 = v83;
    *(v51 + 104) = *(v32 + 48);
    *(v51 + 112) = v56;
    v57 = *(v46 + 8);
    sub_1B69BEB24(v32, v95);

    v57(v92, v48, v77, v72, sub_1B6A10E84, v51, v87, v46);

    (*(v47 + 8))(v48, v88);

    __swift_destroy_boxed_opaque_existential_1(v89);
    v58 = *v32;
    v59 = *(v32 + 8);
    v60 = v93;
    v61 = v94;
    __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
    v62 = *(v61 + 16);

    v62(v58, v59, v60, v61);
    v63 = v93;
    v64 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    (*(v64 + 32))(v63, v64);
    sub_1B69BEB24(v32, v95);
    v65 = sub_1B6AB8F80();
    v66 = sub_1B6AB9900();
    sub_1B69BEDA0(v32);
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v95[0] = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_1B698F63C(v58, v59, v95);
      _os_log_impl(&dword_1B697C000, v65, v66, "Upload task submitted, identifier=%s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1B8C99550](v68, -1, -1);
      MEMORY[0x1B8C99550](v67, -1, -1);
    }

    (*(v75 + 8))(v74, v76);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }
}

uint64_t sub_1B6A0F254(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v25 = a7;
  v26 = a6;
  v14 = sub_1B6AB8810();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_projectBox();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return v26(2, 0, 4);
  }

  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_1B6A0F424(a8, v17, a3, a1, a2, a4);
  v21 = v20;
  v23 = v22;
  (*(v15 + 8))(v17, v14);
  v26(v19, v21, v23);
  sub_1B69F8F30(v19, v21, v23);
}

uint64_t sub_1B6A0F424(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v145 = a1;
  v11 = sub_1B6AB8810();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v139 - v16;
  v18 = sub_1B6AB9320();
  result = MEMORY[0x1EEE9AC00](v18 - 8);
  if (!a6)
  {
    v139 = v15;
    v140 = v17;
    v141 = v12;
    v142 = v11;
    if (!a3)
    {
      __break(1u);
      return result;
    }

    objc_opt_self();
    v39 = swift_dynamicCastObjCClassUnconditional();
    v143 = a3;
    v144 = [v39 statusCode];
    v40 = v39;
    v41 = [v39 allHeaderFields];
    v42 = sub_1B6AB9210();

    sub_1B6A10818(v42);
    v44 = v43;

    v45 = v145;
    if (!v44)
    {
      v44 = sub_1B69A7EF8(MEMORY[0x1E69E7CC0]);
    }

    v46 = v40;
    v47 = [v40 statusCode];
    if ((v47 - 200) <= 0x63)
    {
      sub_1B69BEB24(v45, &v148);
      v48 = v143;

      v49 = sub_1B6AB8F80();
      v50 = sub_1B6AB9900();
      sub_1B69BEDA0(v45);

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v148 = v52;
        *v51 = 136315650;
        *(v51 + 4) = sub_1B698F63C(*v45, *(v45 + 8), &v148);
        *(v51 + 12) = 2048;
        *(v51 + 14) = [v46 statusCode];

        *(v51 + 22) = 2080;

        v53 = v144;
        v54 = sub_1B69F8378(v144, v44);
        v56 = v55;

        v57 = sub_1B698F63C(v54, v56, &v148);

        *(v51 + 24) = v57;
        _os_log_impl(&dword_1B697C000, v49, v50, "Upload completed successfully, identifier=%s, status=%ld, uploadResponse=%s", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v52, -1, -1);
        MEMORY[0x1B8C99550](v51, -1, -1);

        return v53;
      }

      else
      {

        return v144;
      }
    }

    switch(v47)
    {
      case 429:
        sub_1B69BEB24(v45, &v148);
        v67 = v143;

        v68 = sub_1B6AB8F80();
        v69 = sub_1B6AB98E0();
        sub_1B69BEDA0(v45);

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v148 = v71;
          *v70 = 136315650;
          *(v70 + 4) = sub_1B698F63C(*v45, *(v45 + 8), &v148);
          *(v70 + 12) = 2048;
          *(v70 + 14) = [v46 statusCode];

          *(v70 + 22) = 2080;

          v72 = v144;
          v85 = sub_1B69F8378(v144, v44);
          v87 = v86;

          v88 = sub_1B698F63C(v85, v87, &v148);

          *(v70 + 24) = v88;
          v77 = "Upload HTTP too many requests, and will retry, identifier=%s, status=%ld, uploadResponse=%s";
          goto LABEL_37;
        }

        break;
      case 408:
        sub_1B69BEB24(v45, &v148);
        v67 = v143;

        v68 = sub_1B6AB8F80();
        v69 = sub_1B6AB98E0();
        sub_1B69BEDA0(v45);

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v148 = v71;
          *v70 = 136315650;
          *(v70 + 4) = sub_1B698F63C(*v45, *(v45 + 8), &v148);
          *(v70 + 12) = 2048;
          *(v70 + 14) = [v46 statusCode];

          *(v70 + 22) = 2080;

          v72 = v144;
          v81 = sub_1B69F8378(v144, v44);
          v83 = v82;

          v84 = sub_1B698F63C(v81, v83, &v148);

          *(v70 + 24) = v84;
          v77 = "Upload HTTP timeout, and will retry, identifier=%s, status=%ld, uploadResponse=%s";
          goto LABEL_37;
        }

        break;
      case 401:
        sub_1B69BEB24(v45, &v148);
        v67 = v143;

        v68 = sub_1B6AB8F80();
        v69 = sub_1B6AB98E0();
        sub_1B69BEDA0(v45);

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v148 = v71;
          *v70 = 136315650;
          *(v70 + 4) = sub_1B698F63C(*v45, *(v45 + 8), &v148);
          *(v70 + 12) = 2048;
          *(v70 + 14) = [v46 statusCode];

          *(v70 + 22) = 2080;

          v72 = v144;
          v73 = sub_1B69F8378(v144, v44);
          v75 = v74;

          v76 = sub_1B698F63C(v73, v75, &v148);

          *(v70 + 24) = v76;
          v77 = "Upload HTTP failed authorization, and will retry, identifier=%s, status=%ld, uploadResponse=%s";
LABEL_37:
          _os_log_impl(&dword_1B697C000, v68, v69, v77, v70, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C99550](v71, -1, -1);
          MEMORY[0x1B8C99550](v70, -1, -1);

          return v72;
        }

        break;
      default:
        if ((v47 - 430) < 0x46 || (v47 & 0xFFFFFFFFFFFFFFF8) == 0x190 || (v47 - 409) <= 0x13)
        {
          v91 = v142;
          if (a5 >> 60 == 15)
          {
            v139 = 0;
            v92 = 0xE000000000000000;
          }

          else
          {
            v96 = a5;
            sub_1B6994494(a4, a5);
            sub_1B6AB9310();
            v148 = sub_1B6AB92F0();
            v149 = v97;
            sub_1B697EF74();
            v139 = sub_1B6AB9B20();
            v92 = v98;
            sub_1B69AE288(a4, v96);
          }

          v100 = v140;
          v99 = v141;
          (v141[2].isa)(v140, a2, v91);
          sub_1B69BEB24(v45, &v148);
          v101 = v143;

          v102 = sub_1B6AB8F80();
          v103 = sub_1B6AB98F0();
          sub_1B69BEDA0(v45);

          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            LODWORD(v143) = v103;
            v105 = v46;
            v106 = v104;
            v146 = swift_slowAlloc();
            v148 = v146;
            *v106 = 136316162;
            *(v106 + 4) = sub_1B698F63C(*v45, *(v45 + 8), &v148);
            *(v106 + 12) = 2048;
            *(v106 + 14) = [v105 statusCode];

            *(v106 + 22) = 2080;
            v147 = sub_1B6AB87B0();
            sub_1B69BCBE8(0, qword_1EDBC7B70, &qword_1EDBCB668, MEMORY[0x1E69E5E28], sub_1B6A10F34);
            v107 = sub_1B6AB9B20();
            v109 = v108;
            (v99[1].isa)(v100, v142);

            v110 = sub_1B698F63C(v107, v109, &v148);

            *(v106 + 24) = v110;
            *(v106 + 32) = 2080;

            v111 = sub_1B69F8378(v144, v44);
            v113 = v112;

            v114 = sub_1B698F63C(v111, v113, &v148);

            *(v106 + 34) = v114;
            *(v106 + 42) = 2080;
            v115 = sub_1B698F63C(v139, v92, &v148);

            *(v106 + 44) = v115;
            _os_log_impl(&dword_1B697C000, v102, v143, "Upload HTTP failed and won't retry, identifier=%s, status=%ld, headers=%s, uploadResponse=%s, body=%s", v106, 0x34u);
            v116 = v146;
            swift_arrayDestroy();
            MEMORY[0x1B8C99550](v116, -1, -1);
            MEMORY[0x1B8C99550](v106, -1, -1);
          }

          else
          {

            (v99[1].isa)(v100, v142);
          }

          return v144;
        }

        v89 = v142;
        if (v47 < 500)
        {
          if (a5 >> 60 == 15)
          {
            v140 = 0;
            v90 = 0xE000000000000000;
          }

          else
          {
            sub_1B6994494(a4, a5);
            sub_1B6AB9310();
            v148 = sub_1B6AB92F0();
            v149 = v117;
            sub_1B697EF74();
            v140 = sub_1B6AB9B20();
            v90 = v118;
            sub_1B69AE288(a4, a5);
          }

          v119 = v141;
          v120 = v139;
          (v141[2].isa)(v139, a2, v89);
          sub_1B69BEB24(v45, &v148);
          v121 = v143;

          v122 = sub_1B6AB8F80();
          v123 = sub_1B6AB98F0();
          sub_1B69BEDA0(v45);

          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v143 = v122;
            v125 = v46;
            v126 = v124;
            v146 = swift_slowAlloc();
            v148 = v146;
            *v126 = 136316162;
            *(v126 + 4) = sub_1B698F63C(*v45, *(v45 + 8), &v148);
            *(v126 + 12) = 2048;
            *(v126 + 14) = [v125 statusCode];
            v141 = v121;

            *(v126 + 22) = 2080;
            v147 = sub_1B6AB87B0();
            sub_1B69BCBE8(0, qword_1EDBC7B70, &qword_1EDBCB668, MEMORY[0x1E69E5E28], sub_1B6A10F34);
            v127 = sub_1B6AB9B20();
            v128 = v123;
            v130 = v129;
            (v119[1].isa)(v120, v89);

            v131 = sub_1B698F63C(v127, v130, &v148);

            *(v126 + 24) = v131;
            *(v126 + 32) = 2080;

            v132 = sub_1B69F8378(v144, v44);
            v134 = v133;

            v135 = sub_1B698F63C(v132, v134, &v148);

            *(v126 + 34) = v135;
            *(v126 + 42) = 2080;
            v136 = sub_1B698F63C(v140, v90, &v148);

            *(v126 + 44) = v136;
            v137 = v143;
            _os_log_impl(&dword_1B697C000, v143, v128, "Upload HTTP failed and unhandled. No retry, identifier=%s, status=%ld, headers=%s, uploadResponse=%s, body=%s", v126, 0x34u);
            v138 = v146;
            swift_arrayDestroy();
            MEMORY[0x1B8C99550](v138, -1, -1);
            MEMORY[0x1B8C99550](v126, -1, -1);
          }

          else
          {

            (v119[1].isa)(v120, v89);
          }

          return v144;
        }

        sub_1B69BEB24(v45, &v148);
        v67 = v143;
        v68 = sub_1B6AB8F80();
        v93 = sub_1B6AB98E0();
        sub_1B69BEDA0(v45);
        if (os_log_type_enabled(v68, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v148 = v95;
          *v94 = 136315394;
          *(v94 + 4) = sub_1B698F63C(*v45, *(v45 + 8), &v148);
          *(v94 + 12) = 2048;
          *(v94 + 14) = [v46 statusCode];

          _os_log_impl(&dword_1B697C000, v68, v93, "Upload HTTP failed--will retry later, identifier=%s, statusCode=%ld", v94, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v95);
          MEMORY[0x1B8C99550](v95, -1, -1);
          MEMORY[0x1B8C99550](v94, -1, -1);

LABEL_49:
          return v144;
        }

        break;
    }

    goto LABEL_49;
  }

  v20 = a6;
  v21 = sub_1B6AB8A60();
  v22 = [v21 domain];
  v23 = sub_1B6AB92E0();
  v25 = v24;

  if (v23 == sub_1B6AB92E0() && v25 == v26)
  {

    v29 = v145;
  }

  else
  {
    v28 = sub_1B6ABA0F0();

    v29 = v145;
    if ((v28 & 1) == 0)
    {
      v30 = a6;
      sub_1B69BEB24(v29, &v148);
      v31 = sub_1B6AB8F80();
      v32 = sub_1B6AB98E0();
      sub_1B69BEDA0(v29);

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v148 = v35;
        *v33 = 136315394;
        *(v33 + 4) = sub_1B698F63C(*v29, *(v29 + 8), &v148);
        *(v33 + 12) = 2112;
        v36 = a6;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v37;
        *v34 = v37;
        v38 = "Upload encountered unknown error; will retry with attempt increment, identifier=%s, error=%@";
LABEL_29:
        _os_log_impl(&dword_1B697C000, v31, v32, v38, v33, 0x16u);
        sub_1B6A11140(v34, &qword_1EDBC8E08, sub_1B6A10F98);
        MEMORY[0x1B8C99550](v34, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1B8C99550](v35, -1, -1);
        MEMORY[0x1B8C99550](v33, -1, -1);

        return 0;
      }

      goto LABEL_30;
    }
  }

  v58 = [v21 code];
  if (v58 + 1009 > 8 || ((1 << (v58 - 15)) & 0x131) == 0)
  {
    v78 = a6;
    sub_1B69BEB24(v29, &v148);
    v31 = sub_1B6AB8F80();
    v32 = sub_1B6AB98E0();
    sub_1B69BEDA0(v29);

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v148 = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_1B698F63C(*v29, *(v29 + 8), &v148);
      *(v33 + 12) = 2112;
      v79 = a6;
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v80;
      *v34 = v80;
      v38 = "Upload URLError; will retry with attempt increment, identifier=%s, error=%@";
      goto LABEL_29;
    }

LABEL_30:

    return 0;
  }

  v59 = a6;
  sub_1B69BEB24(v29, &v148);
  v60 = sub_1B6AB8F80();
  v61 = sub_1B6AB98E0();
  sub_1B69BEDA0(v29);

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v148 = v64;
    *v62 = 136315394;
    *(v62 + 4) = sub_1B698F63C(*v29, *(v29 + 8), &v148);
    *(v62 + 12) = 2112;
    v65 = a6;
    v66 = _swift_stdlib_bridgeErrorToNSError();
    *(v62 + 14) = v66;
    *v63 = v66;
    _os_log_impl(&dword_1B697C000, v60, v61, "Upload attempted while offline; will retry without attempt increment, identifier=%s, error=%@", v62, 0x16u);
    sub_1B6A11140(v63, &qword_1EDBC8E08, sub_1B6A10F98);
    MEMORY[0x1B8C99550](v63, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x1B8C99550](v64, -1, -1);
    MEMORY[0x1B8C99550](v62, -1, -1);
  }

  else
  {
  }

  return 1;
}

void sub_1B6A10818(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1B6A10F34(0, &qword_1EDBCAFE8, MEMORY[0x1E69E6EC8]);
    v2 = sub_1B6AB9E90();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v13 = v8;
LABEL_13:
    v14 = __clz(__rbit64(v6)) | (v13 << 6);
    sub_1B69E1028(*(v1 + 48) + 40 * v14, v28);
    sub_1B698FE74(*(v1 + 56) + 32 * v14, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_1B69E1028(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_1B6A10FE4(v25);

LABEL_22:

      return;
    }

    sub_1B698FE74(v26 + 8, v24);
    sub_1B6A10FE4(v25);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v6 &= v6 - 1;
    v15 = sub_1B6993940(v22, v23);
    if (v16)
    {
      v9 = v1;
      v10 = 16 * v15;
      v11 = (v2[6] + 16 * v15);
      *v11 = v22;
      v11[1] = v23;

      v12 = (v2[7] + v10);
      v1 = v9;
      *v12 = v22;
      v12[1] = v23;

      v8 = v13;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      v17 = (v2[6] + 16 * v15);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * v15);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v2[2] = v21;
      v8 = v13;
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
      goto LABEL_22;
    }

    v6 = *(v3 + 8 * v13);
    ++v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

char *sub_1B6A10AE8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  v1 = qword_1EDBCAD28;
  v2 = sub_1B6AB8F90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1B6A10B70()
{
  sub_1B6A10AE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A10BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_1B6A10CE8(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1B6A10D48()
{
  if (!qword_1EDBC9BC0)
  {
    v0 = sub_1B6AB9600();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC9BC0);
    }
  }
}

uint64_t sub_1B6A10DA8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1B6A10D48();

  return sub_1B6A0E794(a1, a2, a3);
}

void sub_1B6A10E30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B6AB9B30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B6A10EC0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_1B6A10F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B6A10F98()
{
  result = qword_1EDBC8E10;
  if (!qword_1EDBC8E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBC8E10);
  }

  return result;
}

uint64_t sub_1B6A10FE4(uint64_t a1)
{
  sub_1B6A11040();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6A11040()
{
  if (!qword_1EDBCB638)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBCB638);
    }
  }
}

double sub_1B6A110A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B6A110C0(uint64_t a1, uint64_t a2)
{
  sub_1B6A10E30(0, &qword_1EDBCB550, type metadata accessor for UploadDropbox.Debugging);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A11140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B6A10E30(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B6A1119C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadDropbox.Debugging(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A11200(uint64_t a1, uint64_t a2)
{
  sub_1B6A10E30(0, &qword_1EDBCB550, type metadata accessor for UploadDropbox.Debugging);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A11280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadDropbox.Debugging(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t ProcessError.hashValue.getter()
{
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](0);
  return sub_1B6ABA230();
}

unint64_t sub_1B6A11388()
{
  result = qword_1EB95B620;
  if (!qword_1EB95B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B620);
  }

  return result;
}

uint64_t sub_1B6A113EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*(v3 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1B6AB9110();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    result = *(v3 + 48);
    v14 = *(result + 16);
    if (v14)
    {

      v15 = (v19 + 40);
      do
      {
        v16 = *v15;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 8);
        swift_unknownObjectRetain();
        v18(a1, a2, a3, ObjectType, v16);
        swift_unknownObjectRelease();
        v15 += 2;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A115A8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for SequenceEntry(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1B69E4CFC(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1B69E4CFC((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1B6994AF8(v9, v11 + v18 + v15 * v13, type metadata accessor for SequenceEntry);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A11750(char *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  sub_1B6A24908(0, a2, a3, a4, type metadata accessor for ProcessEvent);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v45 - v9;
  v11 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(*(v5 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  LOBYTE(v18) = sub_1B6AB9110();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v21 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B698A2A4(v5 + v21, v13, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v45[1] = v5;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6995008(v13, type metadata accessor for SessionManager.SessionState);
      }

      v23 = *(v5 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider + 24);
      v24 = *(v5 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider + 32);
      __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider), v23);
      v25 = (*(v24 + 8))(v49, v23, v24);
      v26 = v49[0];
    }

    else
    {
      v27 = (*v13 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter);
      v26 = *v27;
      v25 = v27[1];
    }

    v45[0] = v26;
    v28 = *a1;
    v29 = *(a1 + 1);
    v30 = *(a1 + 2);
    v31 = v8[11];
    v32 = sub_1B6AB8DB0();
    (*(*(v32 - 8) + 16))(&v10[v31], &a1[v31], v32);
    v33 = v8[13];
    v34 = &a1[v8[12]];
    v36 = *v34;
    v35 = *(v34 + 1);
    v37 = *&a1[v33];
    v38 = a1[v33 + 8];
    sub_1B69C1678(&a1[v8[14]], &v10[v8[14]]);
    *v10 = v28;
    *(v10 + 1) = v29;
    *(v10 + 3) = 0x302E312E30;
    *(v10 + 4) = 0xE500000000000000;
    *(v10 + 2) = v30;
    v39 = &v10[v8[12]];
    *v39 = v36;
    *(v39 + 1) = v35;
    v40 = &v10[v8[13]];
    *v40 = v37;
    v40[8] = v38;
    v41 = &v10[v8[15]];
    *v41 = *v45;
    v41[1] = v25;

    v42 = v30;
    v44 = v47;
    v43 = v48;
    sub_1B6A113EC(v10, v47, v48);
    return sub_1B6A16B84(v10, v46, v44, v43, type metadata accessor for ProcessEvent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id BridgedAccessTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedAccessTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedAccessTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BridgedAccessTracker.time(eventType:)(char *a1)
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v10 = v13;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);

    v14 = v13;
    LOBYTE(v13) = sub_1B6AB9110();
    result = (*(v8 + 8))(v10, v7);
    if (v13)
    {
      sub_1B6AB8DA0();
      sub_1B6A164AC(a1, v11 | 0x4000000000000000, v6, 1);

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t BridgedAccessTracker.time(eventType:startTime:)(char *a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v8 = v11;
    (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);

    v12 = v11;
    LOBYTE(v11) = sub_1B6AB9110();
    result = (*(v6 + 8))(v8, v5);
    if (v11)
    {
      sub_1B6A164AC(a1, v9 | 0x4000000000000000, a2, 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t BridgedAccessTracker.time(eventType:submitAndRestartWithSession:)(char *a1, int a2)
{
  v17 = a2;
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v2 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v11 = v14;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);

    v15 = v14;
    LOBYTE(v14) = sub_1B6AB9110();
    result = (*(v9 + 8))(v11, v8);
    if (v14)
    {
      sub_1B6AB8DA0();
      sub_1B6A164AC(a1, v12 | 0x4000000000000000, v7, v17 & 1);

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t BridgedAccessTracker.time(eventType:submitAndRestartWithSession:startTime:)(char *a1, char a2, uint64_t a3)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v10 = v13;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);

    v14 = v13;
    LOBYTE(v13) = sub_1B6AB9110();
    result = (*(v8 + 8))(v10, v7);
    if (v13)
    {
      sub_1B6A164AC(a1, v11 | 0x4000000000000000, a3, a2 & 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void BridgedAccessTracker.time(rawEvent:startTime:)(uint64_t a1)
{
  v3 = sub_1B6AB8D20();
  [v1 timeRawEvent:a1 submitAndRestartWithSession:1 startTime:v3];
}

uint64_t BridgedAccessTracker.time(rawEvent:submitAndRestartWithSession:)(char *a1, char a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v11 = v13;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
    v14 = v13;
    LOBYTE(v13) = sub_1B6AB9110();
    result = (*(v9 + 8))(v11, v8);
    if (v13)
    {
      sub_1B6AB8DA0();
      sub_1B6A164AC(a1, 0x8000000000000000, v7, a2 & 1);

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t BridgedAccessTracker.time(rawEvent:submitAndRestartWithSession:startTime:)(char *a1, char a2, uint64_t a3)
{
  v6 = sub_1B6AB90F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v9 = v11;
    (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
    v12 = v11;
    LOBYTE(v11) = sub_1B6AB9110();
    result = (*(v7 + 8))(v9, v6);
    if (v11)
    {
      sub_1B6A164AC(a1, 0x8000000000000000, a3, a2 & 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id BridgedAccessTracker.submit(eventType:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v1 submitEventType:ObjCClassFromMetadata onlyIfTimed:0];
}

uint64_t BridgedAccessTracker.submit(eventType:onlyIfTimed:)(uint64_t a1, int a2)
{
  v22[3] = a2;
  v23 = a1;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  memset(v24, 0, sizeof(v24));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B6981634(v24);
  }

  v13 = Strong;
  v14 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v10 = v14;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);

  v15 = v14;
  LOBYTE(v14) = sub_1B6AB9110();
  result = (*(v8 + 8))(v10, v7);
  if (v14)
  {
    sub_1B6AB8DA0();
    v17 = MEMORY[0x1EEE9AC00](*(v13 + 88));
    v18 = v23;
    *&v22[-20] = v13;
    *&v22[-18] = v18;
    *&v22[-16] = v11 | 0x4000000000000000;
    LOBYTE(v22[-14]) = v19;
    *&v22[-12] = v6;
    *&v22[-10] = v20;
    *&v22[-4] = 0;
    *&v22[-2] = 0;
    *&v22[-6] = v24;
    sub_1B6995F94(v17, sub_1B6A16B18, &v22[-24], v21);

    (*(v4 + 8))(v6, v3);
    return sub_1B6981634(v24);
  }

  __break(1u);
  return result;
}

void BridgedAccessTracker.submit(eventType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B6A12D6C;
  v8[3] = &block_descriptor_4;
  v7 = _Block_copy(v8);

  [v3 submitEventType:ObjCClassFromMetadata onlyIfTimed:0 completion:v7];
  _Block_release(v7);
}

void sub_1B6A12D6C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t BridgedAccessTracker.submit(eventType:onlyIfTimed:completion:)(uint64_t a1, int a2, void (*a3)(id, id), uint64_t a4)
{
  v32 = a2;
  v33 = a1;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v31[1] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v31 - v8);
  v10 = sub_1B6AB8DB0();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB90F0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v4 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  memset(v37, 0, sizeof(v37));
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v29 = swift_allocError();
    *v30 = xmmword_1B6AC0310;
    *v9 = v29;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();

    sub_1B6A155E8(v9, a3);

    sub_1B6A16B84(v9, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return sub_1B6981634(v37);
  }

  v19 = Strong;
  v20 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v16 = v20;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);

  v21 = v36;

  v22 = v20;
  LOBYTE(v20) = sub_1B6AB9110();
  result = (*(v14 + 8))(v16, v13);
  if (v20)
  {
    sub_1B6AB8DA0();
    v24 = MEMORY[0x1EEE9AC00](*(v19 + 88));
    v25 = v33;
    v31[-10] = v19;
    v31[-9] = v25;
    v31[-8] = v21 | 0x4000000000000000;
    LOBYTE(v31[-7]) = v26;
    v31[-6] = v12;
    *&v31[-5] = v27;
    v31[-3] = v37;
    v31[-2] = sub_1B6A249C8;
    v31[-1] = v17;
    sub_1B6995F94(v24, sub_1B6A249B0, &v31[-12], v28);

    (*(v34 + 8))(v12, v35);
    return sub_1B6981634(v37);
  }

  __break(1u);
  return result;
}

uint64_t BridgedAccessTracker.submit(rawEvent:onlyIfTimed:)(uint64_t a1)
{
  v19[0] = a1;
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  memset(v20, 0, sizeof(v20));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B6981634(v20);
  }

  v10 = Strong;
  v11 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v8 = v11;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = sub_1B6AB9110();
  result = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    sub_1B6AB8DA0();
    v14 = MEMORY[0x1EEE9AC00](*(v10 + 88));
    v15 = v19[0];
    v19[-10] = v10;
    v19[-9] = v15;
    v19[-8] = 0x8000000000000000;
    LOBYTE(v19[-7]) = v16;
    v19[-6] = v4;
    *&v19[-5] = v17;
    v19[-2] = 0;
    v19[-1] = 0;
    v19[-3] = v20;
    sub_1B6995F94(v14, sub_1B6A249B0, &v19[-12], v18);

    (*(v2 + 8))(v4, v1);
    return sub_1B6981634(v20);
  }

  __break(1u);
  return result;
}

void BridgedAccessTracker.submit(rawEvent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = a2;
  v6[5] = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B6A12D6C;
  v6[3] = &block_descriptor_5;
  v5 = _Block_copy(v6);

  [v3 submitRawEvent:a1 onlyIfTimed:0 completion:v5];
  _Block_release(v5);
}

uint64_t BridgedAccessTracker.submit(rawEvent:onlyIfTimed:completion:)(uint64_t a1, int a2, void (*a3)(id, id), uint64_t a4)
{
  v31 = a2;
  v32 = a1;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v30 - v7);
  v9 = sub_1B6AB8DB0();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a3;
  memset(v35, 0, sizeof(v35));
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v28 = swift_allocError();
    *v29 = xmmword_1B6AC0310;
    *v8 = v28;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_1B6A155E8(v8, v16);

    sub_1B6A16B84(v8, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return sub_1B6981634(v35);
  }

  v19 = Strong;
  v20 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v20;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);

  v21 = v20;
  LOBYTE(v20) = sub_1B6AB9110();
  result = (*(v13 + 8))(v15, v12);
  if (v20)
  {
    sub_1B6AB8DA0();
    v23 = MEMORY[0x1EEE9AC00](*(v19 + 88));
    v24 = v32;
    *(&v30 - 10) = v19;
    *(&v30 - 9) = v24;
    *(&v30 - 8) = 0x8000000000000000;
    *(&v30 - 56) = v25;
    *(&v30 - 6) = v11;
    *(&v30 - 5) = v26;
    *(&v30 - 3) = v35;
    *(&v30 - 2) = sub_1B6A249C8;
    *(&v30 - 1) = v17;
    sub_1B6995F94(v23, sub_1B6A249B0, (&v30 - 12), v27);

    (*(v33 + 8))(v11, v34);
    return sub_1B6981634(v35);
  }

  __break(1u);
  return result;
}

uint64_t BridgedAccessTracker.explicitSubmit(eventType:submitTime:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB90F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memset(v17, 0, sizeof(v17));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B6981634(v17);
  }

  v9 = Strong;
  v10 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);

  v11 = v10;
  LOBYTE(v10) = sub_1B6AB9110();
  result = (*(v5 + 8))(v7, v4);
  if (v10)
  {
    v13 = MEMORY[0x1EEE9AC00](*(v9 + 88));
    *&v16[-80] = v9;
    *&v16[-72] = a1;
    *&v16[-64] = v14;
    v16[-56] = 0;
    *&v16[-48] = a2;
    *&v16[-40] = v15;
    *&v16[-16] = 0;
    *&v16[-8] = 0;
    *&v16[-24] = v17;
    sub_1B6995F94(v13, sub_1B6A249B0, &v16[-96], v17);

    return sub_1B6981634(v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A13F4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *))
{
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  v12 = a1;
  a5(ObjCClassMetadata, v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t BridgedAccessTracker.explicitSubmit(eventType:onlyIfTimed:submitTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memset(v19, 0, sizeof(v19));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B6981634(v19);
  }

  v10 = Strong;
  v11 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v8 = v11;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);

  v12 = v11;
  LOBYTE(v11) = sub_1B6AB9110();
  result = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    v14 = MEMORY[0x1EEE9AC00](*(v10 + 88));
    *&v18[-80] = v10;
    *&v18[-72] = a1;
    *&v18[-64] = v15;
    v18[-56] = v16;
    *&v18[-48] = a3;
    *&v18[-40] = v17;
    *&v18[-16] = 0;
    *&v18[-8] = 0;
    *&v18[-24] = v19;
    sub_1B6995F94(v14, sub_1B6A249B0, &v18[-96], v19);

    return sub_1B6981634(v19);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A14278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, char *))
{
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  v14 = a1;
  a6(ObjCClassMetadata, a4, v12);

  return (*(v10 + 8))(v12, v9);
}

void BridgedAccessTracker.explicitSubmit(eventType:submitTime:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_1B6AB8D20();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B6A12D6C;
  v11[3] = &block_descriptor_14;
  v10 = _Block_copy(v11);

  [v5 explicitSubmitEventType:ObjCClassFromMetadata onlyIfTimed:0 submitTime:v9 completion:v10];
  _Block_release(v10);
}

uint64_t BridgedAccessTracker.explicitSubmit(eventType:onlyIfTimed:submitTime:completion:)(uint64_t a1, int a2, uint64_t a3, void (*a4)(id, id), uint64_t a5)
{
  v30 = a1;
  v31 = a3;
  v29[3] = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v29 - v9);
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v5 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v15 = a4;
  memset(v33, 0, sizeof(v33));
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a5;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v27 = swift_allocError();
    *v28 = xmmword_1B6AC0310;
    *v10 = v27;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();

    sub_1B6A155E8(v10, v15);

    sub_1B6A16B84(v10, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return sub_1B6981634(v33);
  }

  v18 = Strong;
  v19 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v14 = v19;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);

  v20 = v19;
  LOBYTE(v19) = sub_1B6AB9110();
  result = (*(v12 + 8))(v14, v11);
  if (v19)
  {
    v22 = MEMORY[0x1EEE9AC00](*(v18 + 88));
    v23 = v30;
    *&v29[-20] = v18;
    *&v29[-18] = v23;
    *&v29[-16] = v24;
    LOBYTE(v29[-14]) = v25;
    *&v29[-12] = v31;
    *&v29[-10] = v26;
    *&v29[-6] = v33;
    *&v29[-4] = sub_1B6A249C8;
    *&v29[-2] = v16;
    sub_1B6995F94(v22, sub_1B6A249B0, &v29[-24], v33);

    return sub_1B6981634(v33);
  }

  __break(1u);
  return result;
}

void BridgedAccessTracker.explicitSubmit(rawEvent:submitTime:)(uint64_t a1)
{
  v3 = sub_1B6AB8D20();
  [v1 explicitSubmitRawEvent:a1 onlyIfTimed:0 submitTime:v3];
}

uint64_t sub_1B6A14B90(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5, char a6)
{
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8D80();
  v14 = a3;
  v15 = a1;
  v16 = sub_1B6AB8D20();
  [v15 *a5];

  return (*(v11 + 8))(v13, v10);
}

uint64_t BridgedAccessTracker.explicitSubmit(rawEvent:onlyIfTimed:submitTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memset(v19, 0, sizeof(v19));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B6981634(v19);
  }

  v10 = Strong;
  v11 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v8 = v11;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = sub_1B6AB9110();
  result = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    v14 = MEMORY[0x1EEE9AC00](*(v10 + 88));
    *&v18[-80] = v10;
    *&v18[-72] = a1;
    *&v18[-64] = 0x8000000000000000;
    v18[-56] = v15;
    *&v18[-48] = a3;
    *&v18[-40] = v16;
    *&v18[-16] = 0;
    *&v18[-8] = 0;
    *&v18[-24] = v19;
    sub_1B6995F94(v14, sub_1B6A249B0, &v18[-96], v17);

    return sub_1B6981634(v19);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A14EBC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, char *))
{
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8D80();
  v14 = a3;
  v15 = a1;
  a6(v14, a4, v13);

  return (*(v11 + 8))(v13, v10);
}

void BridgedAccessTracker.explicitSubmit(rawEvent:submitTime:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1B6AB8D20();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B6A12D6C;
  v11[3] = &block_descriptor_22;
  v10 = _Block_copy(v11);

  [v5 explicitSubmitRawEvent:a1 onlyIfTimed:0 submitTime:v9 completion:v10];
  _Block_release(v10);
}

uint64_t BridgedAccessTracker.explicitSubmit(rawEvent:onlyIfTimed:submitTime:completion:)(uint64_t a1, int a2, uint64_t a3, void (*a4)(id, id), uint64_t a5)
{
  v29 = a1;
  v30 = a3;
  v28[1] = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v28 - v8);
  v10 = sub_1B6AB90F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a4;
  memset(v31, 0, sizeof(v31));
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a5;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v26 = swift_allocError();
    *v27 = xmmword_1B6AC0310;
    *v9 = v26;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_1B6A155E8(v9, v14);

    sub_1B6A16B84(v9, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return sub_1B6981634(v31);
  }

  v17 = Strong;
  v18 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v13 = v18;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);

  v19 = v18;
  LOBYTE(v18) = sub_1B6AB9110();
  result = (*(v11 + 8))(v13, v10);
  if (v18)
  {
    v21 = MEMORY[0x1EEE9AC00](*(v17 + 88));
    v22 = v29;
    *&v28[-20] = v17;
    *&v28[-18] = v22;
    *&v28[-16] = 0x8000000000000000;
    LOBYTE(v28[-14]) = v23;
    *&v28[-12] = v30;
    *&v28[-10] = v24;
    *&v28[-6] = v31;
    *&v28[-4] = sub_1B6A16BE0;
    *&v28[-2] = v15;
    sub_1B6995F94(v21, sub_1B6A249B0, &v28[-24], v25);

    return sub_1B6981634(v31);
  }

  __break(1u);
  return result;
}

void sub_1B6A155E8(uint64_t a1, void (*a2)(id, id))
{
  v28 = a2;
  sub_1B6A24908(0, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v27 - v5);
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v27 - v8);
  sub_1B6A23DD4(a1, &v27 - v8, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = *v9;
    v28(0, v10);
  }

  else
  {
    sub_1B6A243B0(v9, v6);
    v13 = *v6;
    v12 = v6[1];
    v15 = v6[3];
    v14 = v6[4];
    v16 = v6[2];
    v17 = (v6 + *(v4 + 48));
    v19 = *v17;
    v18 = v17[1];
    v20 = type metadata accessor for BridgedProcessEvent();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR___AAProcessEvent_name];
    *v22 = v13;
    *(v22 + 1) = v12;
    v23 = &v21[OBJC_IVAR___AAProcessEvent_version];
    *v23 = v15;
    *(v23 + 1) = v14;
    *&v21[OBJC_IVAR___AAProcessEvent_json] = v16;
    v24 = &v21[OBJC_IVAR___AAProcessEvent_groupName];
    *v24 = v19;
    *(v24 + 1) = v18;
    v29.receiver = v21;
    v29.super_class = v20;

    v25 = v16;
    v26 = objc_msgSendSuper2(&v29, sel_init);
    v28(v26, 0);

    sub_1B6A16B84(v6, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  }
}

uint64_t BridgedAccessTracker.push(data:traits:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  ObjectType = swift_getObjectType();
  v12 = sub_1B6A43B04(a1, ObjectType);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (a2)
  {
    v19 = sub_1B69D821C();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v10 = v21;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
    v22 = v21;
    LOBYTE(v21) = sub_1B6AB9110();
    result = (*(v8 + 8))(v10, v7);
    if (v21)
    {
      sub_1B6A21578(v12, v14, v16, v18 & 0x101, v19, v25, v26, v27);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t BridgedAccessTracker.pop(dataType:)(uint64_t a1)
{
  v1 = sub_1B6AB90F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1B6ABA330();
  v7 = v6;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v4 = v9;
    (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
    v10 = v9;
    LOBYTE(v9) = sub_1B6AB9110();
    result = (*(v2 + 8))(v4, v1);
    if (v9)
    {
      sub_1B6A21EA4(v5, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

Swift::Void __swiftcall BridgedAccessTracker.pop(dataName:)(Swift::String dataName)
{
  object = dataName._object;
  countAndFlagsBits = dataName._countAndFlagsBits;
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v6 = v8;
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
    v9 = v8;
    LOBYTE(v8) = sub_1B6AB9110();
    (*(v4 + 8))(v6, v3);
    if (v8)
    {
      sub_1B6A21EA4(countAndFlagsBits, object);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t BridgedAccessTracker.peek(dataName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B6AB90F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v9 = v11;
    (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
    v12 = v11;
    LOBYTE(v11) = sub_1B6AB9110();
    result = (*(v7 + 8))(v9, v6);
    if ((v11 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    sub_1B69BEDE8(a1, a2, 0, 0, 1, &v17);
    v13 = v18;
    if (v18)
    {
      v14 = __swift_project_boxed_opaque_existential_1(&v17, v18);
      *(a3 + 24) = v13;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);

      return __swift_destroy_boxed_opaque_existential_1(&v17);
    }

    result = sub_1B6A23F44(&v17, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1B6A16420()
{
  if (*(*v0 + 16))
  {
    sub_1B6A564E8(v3);
    v1 = v3[0];
    if (!v3[0])
    {
      sub_1B6A24520(0, v3[1], v3[2], v3[3], v3[4]);
      sub_1B6A54684(*(*v0 + 16) - 1, v3);
      v1 = v3[0];
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A164AC(char *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v49 = a4;
  v48 = a3;
  v51 = a1;
  v50 = type metadata accessor for Tracker.Timer(0);
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6994AA4(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v16 = sub_1B6AB90F0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(*(v5 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  LOBYTE(v20) = sub_1B6AB9110();
  result = (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v23 = 0x4564656764697242;
    v24 = a2 >> 62;
    v47 = a2;
    if (a2 >> 62)
    {
      if (v24 == 1)
      {
        v25 = [swift_getObjCClassFromMetadata() eventName];
        v23 = sub_1B6AB92E0();
        v27 = v26;
      }

      else
      {
        v23 = *&v51[OBJC_IVAR___AARawEvent_name];
        v27 = *&v51[OBJC_IVAR___AARawEvent_name + 8];
      }
    }

    else
    {
      v27 = 0xEC000000746E6576;
    }

    swift_beginAccess();
    v28 = *(v5 + 112);
    if (*(v28 + 16) && (, v29 = sub_1B6993940(v23, v27), v31 = v30, , (v31 & 1) != 0))
    {
      sub_1B698A2A4(*(v28 + 56) + *(v7 + 72) * v29, v15, type metadata accessor for Tracker.Timer);

      (*(v7 + 56))(v15, 0, 1, v50);
      return sub_1B6994FAC(v15, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
    }

    else
    {

      v32 = *(v7 + 56);
      v33 = v50;
      v32(v15, 1, 1, v50);
      sub_1B6994FAC(v15, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
      v34 = sub_1B6AB8DB0();
      v35 = v9;
      (*(*(v34 - 8) + 16))(v9, v48, v34);
      if (v24)
      {
        v36 = v51;
        if (v24 == 1)
        {
          v37 = [swift_getObjCClassFromMetadata() eventName];
          v38 = sub_1B6AB92E0();
          v40 = v39;

          v33 = v50;
        }

        else
        {
          v38 = *&v51[OBJC_IVAR___AARawEvent_name];
          v40 = *&v51[OBJC_IVAR___AARawEvent_name + 8];
        }
      }

      else
      {
        v38 = 0x4564656764697242;
        v40 = 0xEC000000746E6576;
        v36 = v51;
      }

      sub_1B698A2A4(v35, v13, type metadata accessor for Tracker.Timer);
      v32(v13, 0, 1, v33);
      swift_beginAccess();
      sub_1B69A0FE4(v13, v38, v40);
      swift_endAccess();
      if (v49)
      {
        if (v24)
        {
          if (v24 == 1)
          {
            v41 = [swift_getObjCClassFromMetadata() eventName];
            v42 = sub_1B6AB92E0();
            v44 = v43;
          }

          else
          {
            v42 = *&v36[OBJC_IVAR___AARawEvent_name];
            v44 = *&v36[OBJC_IVAR___AARawEvent_name + 8];
          }
        }

        else
        {
          v42 = 0x4564656764697242;
          v44 = 0xEC000000746E6576;
        }

        sub_1B6A24908(0, &qword_1EDBC9778, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for Tracker.RestartTimer);
        v52[3] = v45;
        v52[4] = &off_1F2E7AA40;
        v46 = v47;
        v52[0] = v36;
        v52[1] = v47;
        swift_beginAccess();
        sub_1B6992B50(v36, v46);
        sub_1B69E1EC8(v52, v42, v44);
        swift_endAccess();
      }

      return sub_1B6995008(v35, type metadata accessor for Tracker.Timer);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6A16B30()
{
  result = qword_1EDBCA3D8[0];
  if (!qword_1EDBCA3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBCA3D8);
  }

  return result;
}

uint64_t sub_1B6A16B84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  sub_1B6A24908(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B6A16C38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  return sub_1B69AC2BC(a11, v12);
}

void sub_1B6A16C94(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), char *a9)
{
  v191 = a8;
  v176 = a7;
  v178 = a6;
  v177 = a5;
  v173 = a4;
  *&v190 = a1;
  *(&v190 + 1) = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v182 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v183 = (v161 - v12);
  sub_1B6A24908(0, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  v164 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v165 = v161 - v14;
  v15 = type metadata accessor for Sequence(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v169 = (v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v175 = v161 - v18;
  v181 = sub_1B6AB8DB0();
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v179 = v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1B6AB8E40();
  v171 = *(v172 - 1);
  MEMORY[0x1EEE9AC00](v172);
  v170 = v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v174);
  v22 = (v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6994AA4(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v161 - v27;
  v29 = sub_1B6AB90F0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v192 = v9;
  v168 = *(v9 + 88);
  v167 = OBJC_IVAR___AAAccessQueue_queue;
  v33 = *&v168[OBJC_IVAR___AAAccessQueue_queue];
  *v32 = v33;
  v34 = *(v30 + 104);
  v184 = *MEMORY[0x1E69E8020];
  v186 = v30 + 104;
  v185 = v34;
  v34(v32);
  v35 = v33;
  v36 = sub_1B6AB9110();
  v37 = *(v30 + 8);
  v188 = v29;
  v187 = v37;
  v37(v32, v29);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_91;
  }

  v189 = a9;
  if (a3)
  {
    if (*(&v190 + 1) >> 62)
    {
      if (*(&v190 + 1) >> 62 == 1)
      {
        v38 = [swift_getObjCClassFromMetadata() eventName];
        v39 = sub_1B6AB92E0();
        v41 = v40;
      }

      else
      {
        v39 = *(v190 + OBJC_IVAR___AARawEvent_name);
        v41 = *(v190 + OBJC_IVAR___AARawEvent_name + 8);
      }
    }

    else
    {
      v41 = 0xEC000000746E6576;
      v39 = 0x4564656764697242;
    }

    v42 = v192;
    swift_beginAccess();
    v43 = *(v42 + 112);
    if (!*(v43 + 16) || (, v44 = sub_1B6993940(v39, v41), v46 = v45, , (v46 & 1) == 0))
    {

      v68 = type metadata accessor for Tracker.Timer(0);
      (*(*(v68 - 8) + 56))(v28, 1, 1, v68);
      sub_1B6994FAC(v28, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
      v23 = v191;
      if (!v191)
      {
        return;
      }

      sub_1B6A16B30();
      v66 = swift_allocError();
      *v69 = xmmword_1B6AC0330;
      goto LABEL_25;
    }

    v47 = *(v43 + 56);
    v48 = type metadata accessor for Tracker.Timer(0);
    v49 = *(v48 - 8);
    v166 = v22;
    v50 = v49;
    sub_1B698A2A4(v47 + *(v49 + 72) * v44, v28, type metadata accessor for Tracker.Timer);

    (*(v50 + 56))(v28, 0, 1, v48);
    v22 = v166;
    sub_1B6994FAC(v28, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  }

  v51 = v192;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v53 = Strong;
  v166 = v22;
  v54 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v32 = v54;
  v55 = v188;
  v185(v32, v184, v188);
  v56 = v54;
  v57 = sub_1B6AB9110();
  v187(v32, v55);
  if ((v57 & 1) == 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  v58 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  sub_1B698A2A4(v53 + v58, v25, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B6995008(v25, type metadata accessor for SessionManager.SessionState);
    }

LABEL_16:
    v60 = swift_unknownObjectWeakLoadStrong();
    v23 = v191;
    if (!v60)
    {
LABEL_19:
      if (!v23)
      {
        return;
      }

      sub_1B6A16B30();
      v66 = swift_allocError();
      *v67 = 0;
      v67[1] = 0;
LABEL_25:
      v70 = v183;
      *v183 = v66;
      swift_storeEnumTagMultiPayload();
      (v23)(v70);
      goto LABEL_26;
    }

    v61 = v60;
    v62 = *(*(v60 + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v32 = v62;
    v63 = v188;
    v185(v32, v184, v188);
    v64 = v62;
    LOBYTE(v62) = sub_1B6AB9110();
    v187(v32, v63);
    if (v62)
    {
      v65 = *(v61 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options);
      swift_unknownObjectRelease();
      if (v65)
      {
        sub_1B6A19D5C(v190, *(&v190 + 1), v177, v178, v176, v23, v189);
        return;
      }

      goto LABEL_19;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    swift_once();
    v192 = qword_1EDBCCB28;
    v117 = sub_1B6AB98F0();
    sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_1B6ABF500;
    *&v196 = 0;
    *(&v196 + 1) = 0xE000000000000000;
    v193 = v190;
    sub_1B6A24908(0, &unk_1EDBC9570, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmit);
    sub_1B6AB9DF0();
    v119 = v196;
    v120 = MEMORY[0x1E69E6158];
    *(v118 + 56) = MEMORY[0x1E69E6158];
    v121 = sub_1B698CEC0();
    *(v118 + 64) = v121;
    *(v118 + 32) = v119;
    *&v196 = 0;
    *(&v196 + 1) = 0xE000000000000000;
    *&v193 = v23;
    sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    sub_1B6AB9DF0();
    v122 = v196;
    *(v118 + 96) = v120;
    *(v118 + 104) = v121;
    *(v118 + 72) = v122;
    sub_1B6AB8F70("Failed to create event from available data events, event=%{public}@, error=%{public}@", 85, 2, &dword_1B697C000, v192, v117, v118);

    v123 = v191;
    if (!v191)
    {

      return;
    }

    v70 = v183;
    *v183 = v23;
    swift_storeEnumTagMultiPayload();
    v124 = v23;
    v123(v70);

LABEL_26:
    sub_1B6A16B84(v70, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return;
  }

  v71 = *v25;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B6A1B07C(v190, *(&v190 + 1), &v196);
    v193 = v196;
    v194 = v197;
    v195 = v198;
    v163 = sub_1B69B8DBC(&v193);
    swift_unknownObjectRelease();
  }

  else
  {
    v163 = 0;
  }

  v72 = v170;
  sub_1B6AB8E30();
  v162 = sub_1B6AB8DD0();
  v74 = v73;
  (*(v171 + 8))(v72, v172);
  v75 = *(v180 + 16);
  v76 = v173;
  v173 = (v180 + 16);
  v172 = v75;
  v75(v179, v76, v181);
  *&v196 = 47;
  *(&v196 + 1) = 0xE100000000000000;

  v77 = MEMORY[0x1E69E7CC0];
  v78 = v51;
  do
  {
    v81 = v78[3];
    if (v81)
    {
      v82 = v78[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1B69B5A00(0, *(v77 + 2) + 1, 1, v77);
      }

      v84 = *(v77 + 2);
      v83 = *(v77 + 3);
      if (v84 >= v83 >> 1)
      {
        v77 = sub_1B69B5A00((v83 > 1), v84 + 1, 1, v77);
      }

      *(v77 + 2) = v84 + 1;
      v79 = &v77[16 * v84];
      *(v79 + 4) = v82;
      *(v79 + 5) = v81;
    }

    v80 = v78[19];

    v78 = v80;
  }

  while (v80);
  *&v193 = sub_1B69B919C(v77);
  sub_1B6980A40(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v85 = sub_1B6AB9290();
  v87 = v86;

  MEMORY[0x1B8C97BE0](v85, v87);

  v88 = v196;
  v161[1] = v71;
  if (!v163)
  {
    v90 = *(v71 + 16);
    v89 = *(v71 + 24);

    v91 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
LABEL_43:
    v94 = v71 + v91;
    v93 = *(v71 + v91);
    v92 = *(v94 + 8);

    goto LABEL_44;
  }

  v90 = v163[2];
  v89 = v163[3];
  v91 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
  v92 = *(v163 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
  if (!v92)
  {

    goto LABEL_43;
  }

  v93 = *(v163 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);

LABEL_44:
  v95 = v166;
  *v166 = v162;
  v95[1] = v74;
  v96 = v174;
  v97 = *(v180 + 32);
  v180 = *(v174 + 20);
  v97(v95 + v180, v179, v181);
  *(v95 + v96[6]) = v88;
  v98 = (v95 + v96[7]);
  *v98 = v90;
  v98[1] = v89;
  v99 = (v95 + v96[8]);
  *v99 = v93;
  v99[1] = v92;
  v28 = v175;
  v100 = v190;
  v101 = v95;
  v102 = *(&v190 + 1);
  sub_1B6A1B274(v190, *(&v190 + 1), v101, v175);
  v103 = v191;
  v104 = v189;
  if (!sub_1B6A201D0(v100, v102, v191) || (sub_1B6A23928(v100, v102, v103, v104, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868) & 1) == 0 || (sub_1B6A20C98(v100, v102, v103, v104) & 1) == 0)
  {

LABEL_49:
    v106 = v28;
    goto LABEL_50;
  }

  v105 = v192;
  sub_1B6A1BFD4(v190, v102, v166, v28, v177, v178, v169);
  v107 = *(v105 + 216);
  ObjectType = swift_getObjectType();
  (*(v107 + 8))(&v196, ObjectType, v107);
  v109 = v196;
  v110 = v168;
  v111 = *&v168[v167];
  *v32 = v111;
  v112 = v188;
  v185(v32, v184, v188);
  v113 = v111;
  v114 = sub_1B6AB9110();
  v115 = (v187)(v32, v112);
  if ((v114 & 1) == 0)
  {
    __break(1u);
LABEL_103:
    swift_once();
LABEL_83:
    v142 = qword_1EDBCCB28;
    v143 = sub_1B6AB98D0();
    sub_1B6AB8F70("Privacy-invalid sequence identified, will NOT submit...", 55, 2, &dword_1B697C000, v142, v143, MEMORY[0x1E69E7CC0]);
    v36 = v169;
    if (v109)
    {
      v145 = *v169;
      v144 = v169[1];
      sub_1B6A23D80();
      v146 = swift_allocError();
      *v147 = v145;
      v147[1] = v144;
      v148 = v183;
      *v183 = v146;
      swift_storeEnumTagMultiPayload();

      v109(v148);

      sub_1B6A16B84(v148, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
LABEL_92:
      v160 = v36;
      goto LABEL_93;
    }

LABEL_91:

    goto LABEL_92;
  }

  MEMORY[0x1EEE9AC00](v115);
  v116 = v169;
  v161[-2] = v109;
  v161[-1] = v116;
  v125 = sub_1B69BF2DC(v110, sub_1B69BFCB4, &v161[-4]);

  if (!v125)
  {
    v109 = v191;
    if (qword_1EDBCCEE0 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_103;
  }

  v126 = v192;

  v127 = 0;
  v128 = 1;
  v129 = v165;
  do
  {
    swift_beginAccess();
    v23 = *(v126 + 168);
    if (v23 >> 62)
    {
      v130 = sub_1B6AB9E60();
      if (!v130)
      {
LABEL_74:

        v134 = 0;
        v23 = 0;
        goto LABEL_78;
      }
    }

    else
    {
      v130 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v130)
      {
        goto LABEL_74;
      }
    }

    v131 = v130 - 1;
    if (__OFSUB__(v130, 1))
    {
      goto LABEL_96;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {

      v133 = MEMORY[0x1B8C98510](v131, v23);
    }

    else
    {
      if ((v131 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v131 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v132 = *(v23 + 8 * v131 + 32);

      v133 = v132;
    }

    v134 = *&v133[OBJC_IVAR___AAGroup_name];
    v23 = *&v133[OBJC_IVAR___AAGroup_name + 8];

    v135 = *(v126 + 168);
    if (v135 >> 62)
    {
      v136 = sub_1B6AB9E60();
      if (!v136)
      {
LABEL_77:

        v127 = 0;
        v128 = 1;
        goto LABEL_78;
      }
    }

    else
    {
      v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v136)
      {
        goto LABEL_77;
      }
    }

    v137 = v136 - 1;
    if (__OFSUB__(v136, 1))
    {
      goto LABEL_99;
    }

    if ((v135 & 0xC000000000000001) != 0)
    {

      v140 = MEMORY[0x1B8C98510](v137, v135);

      v141 = v140 + OBJC_IVAR___AAGroup_contentType;
      v127 = *(v140 + OBJC_IVAR___AAGroup_contentType);
      v128 = *(v141 + 8);

      swift_unknownObjectRelease();
    }

    else
    {
      if ((v137 & 0x8000000000000000) != 0)
      {
        goto LABEL_100;
      }

      if (v137 >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_101;
      }

      v138 = *(v135 + 8 * v137 + 32) + OBJC_IVAR___AAGroup_contentType;
      v127 = *v138;
      v128 = *(v138 + 8);
    }

LABEL_78:
    v139 = *(v126 + 152);

    if (!v139)
    {
      goto LABEL_85;
    }

    v126 = v139;
  }

  while (!v23);

LABEL_85:
  v149 = *v169;
  v150 = v169[1];
  v151 = v164;
  v172(v129 + v164[11], v166 + v180, v181);
  sub_1B69C1678(v176, v129 + v151[14]);
  *v129 = v149;
  *(v129 + 8) = v150;
  *(v129 + 24) = 0x302E312E30;
  *(v129 + 32) = 0xE500000000000000;
  *(v129 + 16) = v125;
  v152 = (v129 + v151[12]);
  *v152 = v134;
  v152[1] = v23;
  v153 = v129 + v151[13];
  *v153 = v127;
  *(v153 + 8) = v128 & 1;
  *(v129 + v151[15]) = xmmword_1B6AC0320;
  v154 = swift_unknownObjectWeakLoadStrong();

  if (v154)
  {
    sub_1B6A11750(v129, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868);
    swift_unknownObjectRelease();
  }

  if (!v191)
  {

    sub_1B6A16B84(v129, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
    v160 = v169;
LABEL_93:
    sub_1B6995008(v160, type metadata accessor for Sequence);
    goto LABEL_49;
  }

  v155 = v191;
  v156 = v129;
  v157 = v129;
  v158 = v28;
  v159 = v183;
  sub_1B6A23DD4(v156, v183, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  swift_storeEnumTagMultiPayload();
  v155(v159);

  sub_1B6A16B84(v159, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  sub_1B6A16B84(v157, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  sub_1B6995008(v169, type metadata accessor for Sequence);
  v106 = v158;
LABEL_50:
  sub_1B6994FAC(v106, qword_1EDBC9BF0, type metadata accessor for TimedData);
  sub_1B6995008(v166, type metadata accessor for EventData);
}

void sub_1B6A184F8(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), char *a9)
{
  v191 = a8;
  v176 = a7;
  v178 = a6;
  v177 = a5;
  v173 = a4;
  *&v190 = a1;
  *(&v190 + 1) = a2;
  sub_1B6A24908(0, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  v182 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v183 = (v161 - v12);
  sub_1B6A24908(0, &qword_1EB95B650, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for ProcessEvent);
  v164 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v165 = v161 - v14;
  v15 = type metadata accessor for Sequence(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v169 = (v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v175 = v161 - v18;
  v181 = sub_1B6AB8DB0();
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v179 = v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1B6AB8E40();
  v171 = *(v172 - 1);
  MEMORY[0x1EEE9AC00](v172);
  v170 = v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v174);
  v22 = (v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6994AA4(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v161 - v27;
  v29 = sub_1B6AB90F0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v192 = v9;
  v168 = *(v9 + 88);
  v167 = OBJC_IVAR___AAAccessQueue_queue;
  v33 = *&v168[OBJC_IVAR___AAAccessQueue_queue];
  *v32 = v33;
  v34 = *(v30 + 104);
  v184 = *MEMORY[0x1E69E8020];
  v186 = v30 + 104;
  v185 = v34;
  v34(v32);
  v35 = v33;
  v36 = sub_1B6AB9110();
  v37 = *(v30 + 8);
  v188 = v29;
  v187 = v37;
  v37(v32, v29);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_91;
  }

  v189 = a9;
  if (a3)
  {
    if (*(&v190 + 1) >> 62)
    {
      if (*(&v190 + 1) >> 62 == 1)
      {
        v38 = [swift_getObjCClassFromMetadata() eventName];
        v39 = sub_1B6AB92E0();
        v41 = v40;
      }

      else
      {
        v39 = *(v190 + OBJC_IVAR___AARawEvent_name);
        v41 = *(v190 + OBJC_IVAR___AARawEvent_name + 8);
      }
    }

    else
    {
      v41 = 0xEC000000746E6576;
      v39 = 0x457972616D6D7553;
    }

    v42 = v192;
    swift_beginAccess();
    v43 = *(v42 + 112);
    if (!*(v43 + 16) || (, v44 = sub_1B6993940(v39, v41), v46 = v45, , (v46 & 1) == 0))
    {

      v68 = type metadata accessor for Tracker.Timer(0);
      (*(*(v68 - 8) + 56))(v28, 1, 1, v68);
      sub_1B6994FAC(v28, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
      v23 = v191;
      if (!v191)
      {
        return;
      }

      sub_1B6A16B30();
      v66 = swift_allocError();
      *v69 = xmmword_1B6AC0330;
      goto LABEL_25;
    }

    v47 = *(v43 + 56);
    v48 = type metadata accessor for Tracker.Timer(0);
    v49 = *(v48 - 8);
    v166 = v22;
    v50 = v49;
    sub_1B698A2A4(v47 + *(v49 + 72) * v44, v28, type metadata accessor for Tracker.Timer);

    (*(v50 + 56))(v28, 0, 1, v48);
    v22 = v166;
    sub_1B6994FAC(v28, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  }

  v51 = v192;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v53 = Strong;
  v166 = v22;
  v54 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v32 = v54;
  v55 = v188;
  v185(v32, v184, v188);
  v56 = v54;
  v57 = sub_1B6AB9110();
  v187(v32, v55);
  if ((v57 & 1) == 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  v58 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  sub_1B698A2A4(v53 + v58, v25, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B6995008(v25, type metadata accessor for SessionManager.SessionState);
    }

LABEL_16:
    v60 = swift_unknownObjectWeakLoadStrong();
    v23 = v191;
    if (!v60)
    {
LABEL_19:
      if (!v23)
      {
        return;
      }

      sub_1B6A16B30();
      v66 = swift_allocError();
      *v67 = 0;
      v67[1] = 0;
LABEL_25:
      v70 = v183;
      *v183 = v66;
      swift_storeEnumTagMultiPayload();
      (v23)(v70);
      goto LABEL_26;
    }

    v61 = v60;
    v62 = *(*(v60 + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v32 = v62;
    v63 = v188;
    v185(v32, v184, v188);
    v64 = v62;
    LOBYTE(v62) = sub_1B6AB9110();
    v187(v32, v63);
    if (v62)
    {
      v65 = *(v61 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options);
      swift_unknownObjectRelease();
      if (v65)
      {
        sub_1B6A1A6EC(v190, *(&v190 + 1), v177, v178, v176, v23, v189);
        return;
      }

      goto LABEL_19;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    swift_once();
    v192 = qword_1EDBCCB28;
    v117 = sub_1B6AB98F0();
    sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_1B6ABF500;
    *&v196 = 0;
    *(&v196 + 1) = 0xE000000000000000;
    v193 = v190;
    sub_1B6A24908(0, &qword_1EB95B658, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmit);
    sub_1B6AB9DF0();
    v119 = v196;
    v120 = MEMORY[0x1E69E6158];
    *(v118 + 56) = MEMORY[0x1E69E6158];
    v121 = sub_1B698CEC0();
    *(v118 + 64) = v121;
    *(v118 + 32) = v119;
    *&v196 = 0;
    *(&v196 + 1) = 0xE000000000000000;
    *&v193 = v23;
    sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    sub_1B6AB9DF0();
    v122 = v196;
    *(v118 + 96) = v120;
    *(v118 + 104) = v121;
    *(v118 + 72) = v122;
    sub_1B6AB8F70("Failed to create event from available data events, event=%{public}@, error=%{public}@", 85, 2, &dword_1B697C000, v192, v117, v118);

    v123 = v191;
    if (!v191)
    {

      return;
    }

    v70 = v183;
    *v183 = v23;
    swift_storeEnumTagMultiPayload();
    v124 = v23;
    v123(v70);

LABEL_26:
    sub_1B6A16B84(v70, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
    return;
  }

  v71 = *v25;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B6A1B07C(v190, *(&v190 + 1), &v196);
    v193 = v196;
    v194 = v197;
    v195 = v198;
    v163 = sub_1B69B8DBC(&v193);
    swift_unknownObjectRelease();
  }

  else
  {
    v163 = 0;
  }

  v72 = v170;
  sub_1B6AB8E30();
  v162 = sub_1B6AB8DD0();
  v74 = v73;
  (*(v171 + 8))(v72, v172);
  v75 = *(v180 + 16);
  v76 = v173;
  v173 = (v180 + 16);
  v172 = v75;
  v75(v179, v76, v181);
  *&v196 = 47;
  *(&v196 + 1) = 0xE100000000000000;

  v77 = MEMORY[0x1E69E7CC0];
  v78 = v51;
  do
  {
    v81 = v78[3];
    if (v81)
    {
      v82 = v78[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1B69B5A00(0, *(v77 + 2) + 1, 1, v77);
      }

      v84 = *(v77 + 2);
      v83 = *(v77 + 3);
      if (v84 >= v83 >> 1)
      {
        v77 = sub_1B69B5A00((v83 > 1), v84 + 1, 1, v77);
      }

      *(v77 + 2) = v84 + 1;
      v79 = &v77[16 * v84];
      *(v79 + 4) = v82;
      *(v79 + 5) = v81;
    }

    v80 = v78[19];

    v78 = v80;
  }

  while (v80);
  *&v193 = sub_1B69B919C(v77);
  sub_1B6980A40(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v85 = sub_1B6AB9290();
  v87 = v86;

  MEMORY[0x1B8C97BE0](v85, v87);

  v88 = v196;
  v161[1] = v71;
  if (!v163)
  {
    v90 = *(v71 + 16);
    v89 = *(v71 + 24);

    v91 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
LABEL_43:
    v94 = v71 + v91;
    v93 = *(v71 + v91);
    v92 = *(v94 + 8);

    goto LABEL_44;
  }

  v90 = v163[2];
  v89 = v163[3];
  v91 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
  v92 = *(v163 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
  if (!v92)
  {

    goto LABEL_43;
  }

  v93 = *(v163 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);

LABEL_44:
  v95 = v166;
  *v166 = v162;
  v95[1] = v74;
  v96 = v174;
  v97 = *(v180 + 32);
  v180 = *(v174 + 20);
  v97(v95 + v180, v179, v181);
  *(v95 + v96[6]) = v88;
  v98 = (v95 + v96[7]);
  *v98 = v90;
  v98[1] = v89;
  v99 = (v95 + v96[8]);
  *v99 = v93;
  v99[1] = v92;
  v28 = v175;
  v100 = v190;
  v101 = v95;
  v102 = *(&v190 + 1);
  sub_1B6A1B924(v190, *(&v190 + 1), v101, v175);
  v103 = v191;
  v104 = v189;
  if (!sub_1B6A20734(v100, v102, v191) || (sub_1B6A23928(v100, v102, v103, v104, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830) & 1) == 0 || (sub_1B6A21108(v100, v102, v103, v104) & 1) == 0)
  {

LABEL_49:
    v106 = v28;
    goto LABEL_50;
  }

  v105 = v192;
  sub_1B6A1D710(v190, v102, v166, v28, v177, v178, v169);
  v107 = *(v105 + 216);
  ObjectType = swift_getObjectType();
  (*(v107 + 8))(&v196, ObjectType, v107);
  v109 = v196;
  v110 = v168;
  v111 = *&v168[v167];
  *v32 = v111;
  v112 = v188;
  v185(v32, v184, v188);
  v113 = v111;
  v114 = sub_1B6AB9110();
  v115 = (v187)(v32, v112);
  if ((v114 & 1) == 0)
  {
    __break(1u);
LABEL_103:
    swift_once();
LABEL_83:
    v142 = qword_1EDBCCB28;
    v143 = sub_1B6AB98D0();
    sub_1B6AB8F70("Privacy-invalid sequence identified, will NOT submit...", 55, 2, &dword_1B697C000, v142, v143, MEMORY[0x1E69E7CC0]);
    v36 = v169;
    if (v109)
    {
      v145 = *v169;
      v144 = v169[1];
      sub_1B6A23D80();
      v146 = swift_allocError();
      *v147 = v145;
      v147[1] = v144;
      v148 = v183;
      *v183 = v146;
      swift_storeEnumTagMultiPayload();

      v109(v148);

      sub_1B6A16B84(v148, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
LABEL_92:
      v160 = v36;
      goto LABEL_93;
    }

LABEL_91:

    goto LABEL_92;
  }

  MEMORY[0x1EEE9AC00](v115);
  v116 = v169;
  v161[-2] = v109;
  v161[-1] = v116;
  v125 = sub_1B69BF2DC(v110, sub_1B69BFC98, &v161[-4]);

  if (!v125)
  {
    v109 = v191;
    if (qword_1EDBCCEE0 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_103;
  }

  v126 = v192;

  v127 = 0;
  v128 = 1;
  v129 = v165;
  do
  {
    swift_beginAccess();
    v23 = *(v126 + 168);
    if (v23 >> 62)
    {
      v130 = sub_1B6AB9E60();
      if (!v130)
      {
LABEL_74:

        v134 = 0;
        v23 = 0;
        goto LABEL_78;
      }
    }

    else
    {
      v130 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v130)
      {
        goto LABEL_74;
      }
    }

    v131 = v130 - 1;
    if (__OFSUB__(v130, 1))
    {
      goto LABEL_96;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {

      v133 = MEMORY[0x1B8C98510](v131, v23);
    }

    else
    {
      if ((v131 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v131 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v132 = *(v23 + 8 * v131 + 32);

      v133 = v132;
    }

    v134 = *&v133[OBJC_IVAR___AAGroup_name];
    v23 = *&v133[OBJC_IVAR___AAGroup_name + 8];

    v135 = *(v126 + 168);
    if (v135 >> 62)
    {
      v136 = sub_1B6AB9E60();
      if (!v136)
      {
LABEL_77:

        v127 = 0;
        v128 = 1;
        goto LABEL_78;
      }
    }

    else
    {
      v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v136)
      {
        goto LABEL_77;
      }
    }

    v137 = v136 - 1;
    if (__OFSUB__(v136, 1))
    {
      goto LABEL_99;
    }

    if ((v135 & 0xC000000000000001) != 0)
    {

      v140 = MEMORY[0x1B8C98510](v137, v135);

      v141 = v140 + OBJC_IVAR___AAGroup_contentType;
      v127 = *(v140 + OBJC_IVAR___AAGroup_contentType);
      v128 = *(v141 + 8);

      swift_unknownObjectRelease();
    }

    else
    {
      if ((v137 & 0x8000000000000000) != 0)
      {
        goto LABEL_100;
      }

      if (v137 >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_101;
      }

      v138 = *(v135 + 8 * v137 + 32) + OBJC_IVAR___AAGroup_contentType;
      v127 = *v138;
      v128 = *(v138 + 8);
    }

LABEL_78:
    v139 = *(v126 + 152);

    if (!v139)
    {
      goto LABEL_85;
    }

    v126 = v139;
  }

  while (!v23);

LABEL_85:
  v149 = *v169;
  v150 = v169[1];
  v151 = v164;
  v172(v129 + v164[11], v166 + v180, v181);
  sub_1B69C1678(v176, v129 + v151[14]);
  *v129 = v149;
  *(v129 + 8) = v150;
  *(v129 + 24) = 0x302E312E30;
  *(v129 + 32) = 0xE500000000000000;
  *(v129 + 16) = v125;
  v152 = (v129 + v151[12]);
  *v152 = v134;
  v152[1] = v23;
  v153 = v129 + v151[13];
  *v153 = v127;
  *(v153 + 8) = v128 & 1;
  *(v129 + v151[15]) = xmmword_1B6AC0320;
  v154 = swift_unknownObjectWeakLoadStrong();

  if (v154)
  {
    sub_1B6A11750(v129, &qword_1EB95B650, &type metadata for SummaryEvent, &off_1F2E7C830);
    swift_unknownObjectRelease();
  }

  if (!v191)
  {

    sub_1B6A16B84(v129, &qword_1EB95B650, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for ProcessEvent);
    v160 = v169;
LABEL_93:
    sub_1B6995008(v160, type metadata accessor for Sequence);
    goto LABEL_49;
  }

  v155 = v191;
  v156 = v129;
  v157 = v129;
  v158 = v28;
  v159 = v183;
  sub_1B6A23DD4(v156, v183, &qword_1EB95B650, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for ProcessEvent);
  swift_storeEnumTagMultiPayload();
  v155(v159);

  sub_1B6A16B84(v159, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  sub_1B6A16B84(v157, &qword_1EB95B650, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for ProcessEvent);
  sub_1B6995008(v169, type metadata accessor for Sequence);
  v106 = v158;
LABEL_50:
  sub_1B6994FAC(v106, qword_1EDBC9BF0, type metadata accessor for TimedData);
  sub_1B6995008(v166, type metadata accessor for EventData);
}

id sub_1B6A19D5C(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v78 = a7;
  v79 = a1;
  v75 = a4;
  v76 = a6;
  v68 = a5;
  v74 = a3;
  v80 = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v65 - v10;
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v77 = &v65 - v12;
  v13 = sub_1B6AB8E40();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EventData(0);
  v67 = *(v17 - 1);
  v18 = *(v67 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v71 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v65 - v20);
  sub_1B6AB8E30();
  v72 = sub_1B6AB8DD0();
  v73 = v22;
  (*(v14 + 8))(v16, v13);
  sub_1B6AB8DA0();
  *&v81[0] = 47;
  *(&v81[0] + 1) = 0xE100000000000000;

  v23 = MEMORY[0x1E69E7CC0];
  v24 = v8;
  v25 = v8;
  do
  {
    v28 = v25[3];
    if (v28)
    {
      v29 = v25[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1B69B5A00(0, *(v23 + 2) + 1, 1, v23);
      }

      v31 = *(v23 + 2);
      v30 = *(v23 + 3);
      if (v31 >= v30 >> 1)
      {
        v23 = sub_1B69B5A00((v30 > 1), v31 + 1, 1, v23);
      }

      *(v23 + 2) = v31 + 1;
      v26 = &v23[16 * v31];
      *(v26 + 4) = v29;
      *(v26 + 5) = v28;
    }

    v27 = v25[19];

    v25 = v27;
  }

  while (v27);
  v82 = sub_1B69B919C(v23);
  sub_1B6980A40(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v32 = sub_1B6AB9290();
  v34 = v33;

  MEMORY[0x1B8C97BE0](v32, v34);

  v35 = v81[0];
  v36 = v73;
  *v21 = v72;
  v21[1] = v36;
  *(v21 + v17[6]) = v35;
  v37 = (v21 + v17[7]);
  *v37 = 0x6F69737365536F6ELL;
  v37[1] = 0xE90000000000006ELL;
  *(v21 + v17[8]) = xmmword_1B6AC0340;
  v38 = v77;
  v40 = v79;
  v39 = v80;
  sub_1B6A1B274(v79, v80, v21, v77);
  type metadata accessor for Sequence(0);
  v41 = swift_allocBox();
  sub_1B6A1BFD4(v40, v39, v21, v38, v74, v75, v42);
  v74 = v41;
  v69 = sub_1B6A23FB4();
  v66 = v43;
  v72 = v44;
  LODWORD(v70) = v45;
  v46 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v73 = v46;
  *(v46 + 16) = result;
  v75 = result;
  if (result)
  {
    type metadata accessor for AccessTracker();
    v48 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = sub_1B6A55214;
    v48[6] = 0;
    v49 = swift_allocObject();
    swift_weakInit();
    sub_1B698A2A4(v21, v71, type metadata accessor for EventData);
    sub_1B69C1678(v68, v81);
    v50 = *(v67 + 80);
    v68 = v24;
    v51 = (v50 + 56) & ~v50;
    v52 = (v18 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 39) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v56 = v76;
    v55[2] = v49;
    v55[3] = v56;
    v57 = v79;
    v55[4] = v78;
    v55[5] = v57;
    v55[6] = v80;
    sub_1B6994AF8(v71, v55 + v51, type metadata accessor for EventData);
    *(v55 + v52) = v74;
    v58 = (v55 + v53);
    v59 = v66;
    *v58 = v69;
    v58[1] = v59;
    v60 = v55 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v60 = v72;
    v60[8] = v70 & 1;
    v61 = (v55 + v54);
    v62 = v81[1];
    *v61 = v81[0];
    v61[1] = v62;
    *(v55 + ((v54 + 39) & 0xFFFFFFFFFFFFFFF8)) = v73;
    type metadata accessor for SessionObserver();
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v63[3] = v48;
    v63[4] = sub_1B6A24784;
    v63[5] = v55;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B698BF94(v76);
    sub_1B6992B50(v79, v80);

    if (Strong)
    {
      sub_1B6A04C10(v63);
      swift_unknownObjectRelease();
    }

    sub_1B6994FAC(v77, qword_1EDBC9BF0, type metadata accessor for TimedData);
    sub_1B6995008(v21, type metadata accessor for EventData);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B6A1A6EC(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v78 = a7;
  v79 = a1;
  v75 = a4;
  v76 = a6;
  v68 = a5;
  v74 = a3;
  v80 = a2;
  sub_1B6A24908(0, &qword_1EB95B648, &type metadata for SummaryEvent, &off_1F2E7C830, type metadata accessor for EventSubmitResult);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v65 - v10;
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v77 = &v65 - v12;
  v13 = sub_1B6AB8E40();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EventData(0);
  v67 = *(v17 - 1);
  v18 = *(v67 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v71 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v65 - v20);
  sub_1B6AB8E30();
  v72 = sub_1B6AB8DD0();
  v73 = v22;
  (*(v14 + 8))(v16, v13);
  sub_1B6AB8DA0();
  *&v81[0] = 47;
  *(&v81[0] + 1) = 0xE100000000000000;

  v23 = MEMORY[0x1E69E7CC0];
  v24 = v8;
  v25 = v8;
  do
  {
    v28 = v25[3];
    if (v28)
    {
      v29 = v25[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1B69B5A00(0, *(v23 + 2) + 1, 1, v23);
      }

      v31 = *(v23 + 2);
      v30 = *(v23 + 3);
      if (v31 >= v30 >> 1)
      {
        v23 = sub_1B69B5A00((v30 > 1), v31 + 1, 1, v23);
      }

      *(v23 + 2) = v31 + 1;
      v26 = &v23[16 * v31];
      *(v26 + 4) = v29;
      *(v26 + 5) = v28;
    }

    v27 = v25[19];

    v25 = v27;
  }

  while (v27);
  v82 = sub_1B69B919C(v23);
  sub_1B6980A40(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v32 = sub_1B6AB9290();
  v34 = v33;

  MEMORY[0x1B8C97BE0](v32, v34);

  v35 = v81[0];
  v36 = v73;
  *v21 = v72;
  v21[1] = v36;
  *(v21 + v17[6]) = v35;
  v37 = (v21 + v17[7]);
  *v37 = 0x6F69737365536F6ELL;
  v37[1] = 0xE90000000000006ELL;
  *(v21 + v17[8]) = xmmword_1B6AC0340;
  v38 = v77;
  v40 = v79;
  v39 = v80;
  sub_1B6A1B924(v79, v80, v21, v77);
  type metadata accessor for Sequence(0);
  v41 = swift_allocBox();
  sub_1B6A1D710(v40, v39, v21, v38, v74, v75, v42);
  v74 = v41;
  v69 = sub_1B6A23FB4();
  v66 = v43;
  v72 = v44;
  LODWORD(v70) = v45;
  v46 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v73 = v46;
  *(v46 + 16) = result;
  v75 = result;
  if (result)
  {
    type metadata accessor for AccessTracker();
    v48 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = sub_1B6A55214;
    v48[6] = 0;
    v49 = swift_allocObject();
    swift_weakInit();
    sub_1B698A2A4(v21, v71, type metadata accessor for EventData);
    sub_1B69C1678(v68, v81);
    v50 = *(v67 + 80);
    v68 = v24;
    v51 = (v50 + 56) & ~v50;
    v52 = (v18 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 39) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v56 = v76;
    v55[2] = v49;
    v55[3] = v56;
    v57 = v79;
    v55[4] = v78;
    v55[5] = v57;
    v55[6] = v80;
    sub_1B6994AF8(v71, v55 + v51, type metadata accessor for EventData);
    *(v55 + v52) = v74;
    v58 = (v55 + v53);
    v59 = v66;
    *v58 = v69;
    v58[1] = v59;
    v60 = v55 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v60 = v72;
    v60[8] = v70 & 1;
    v61 = (v55 + v54);
    v62 = v81[1];
    *v61 = v81[0];
    v61[1] = v62;
    *(v55 + ((v54 + 39) & 0xFFFFFFFFFFFFFFF8)) = v73;
    type metadata accessor for SessionObserver();
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v63[3] = v48;
    v63[4] = sub_1B6A24204;
    v63[5] = v55;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B698BF94(v76);
    sub_1B6992B50(v79, v80);

    if (Strong)
    {
      sub_1B6A04C10(v63);
      swift_unknownObjectRelease();
    }

    sub_1B6994FAC(v77, qword_1EDBC9BF0, type metadata accessor for TimedData);
    sub_1B6995008(v21, type metadata accessor for EventData);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B6A1B07C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([ObjCClassFromMetadata respondsToSelector_])
      {
        v5 = [ObjCClassFromMetadata sessionGroup];
        v6 = &v5[OBJC_IVAR___AASessionGroup_groupName];
        swift_beginAccess();
        if (sub_1B6AB9340() == 0x746C7561666564 && v7 == 0xE700000000000000)
        {
        }

        else
        {
          v9 = sub_1B6ABA0F0();

          if ((v9 & 1) == 0)
          {
            v15 = *v6;
            v16 = *(v6 + 1);

            v17 = 1;
            goto LABEL_22;
          }
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
LABEL_22:
        *a3 = v15;
        *(a3 + 8) = v16;
        *(a3 + 16) = 0;
        *(a3 + 24) = v17;
        return;
      }
    }

    else
    {
      v10 = (*(a1 + OBJC_IVAR___AARawEvent_sessionGroup) + OBJC_IVAR___AASessionGroup_groupName);
      swift_beginAccess();
      if (sub_1B6AB9340() == 0x746C7561666564 && v11 == 0xE700000000000000)
      {
      }

      else
      {
        v13 = sub_1B6ABA0F0();

        if ((v13 & 1) == 0)
        {
          v14 = v10[1];
          *a3 = *v10;
          *(a3 + 8) = v14;
          *(a3 + 16) = 0;
          *(a3 + 24) = 1;

          return;
        }
      }
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
}

uint64_t sub_1B6A1B274@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v57 = a3;
  v62 = a1;
  v8 = 0xEC000000746E6576;
  v9 = 0x4564656764697242;
  v10 = sub_1B6AB8DB0();
  v59 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v55 - v13;
  sub_1B6994AA4(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - v15;
  v17 = type metadata accessor for Tracker.Timer(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v55 - v22;
  v23 = a2 >> 62;
  if (a2 >> 62)
  {
    if (v23 == 1)
    {
      v24 = [swift_getObjCClassFromMetadata() eventName];
      v9 = sub_1B6AB92E0();
      v8 = v25;
    }

    else
    {
      v9 = *(v62 + OBJC_IVAR___AARawEvent_name);
      v8 = *(v62 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  swift_beginAccess();
  v26 = *(v5 + 112);
  if (!*(v26 + 16))
  {

LABEL_12:
    v36 = type metadata accessor for TimedData(0);
    return (*(*(v36 - 8) + 56))(a4, 1, 1, v36);
  }

  v56 = v10;
  v27 = a4;

  v28 = sub_1B6993940(v9, v8);
  v30 = v29;

  if ((v30 & 1) == 0)
  {

    a4 = v27;
    goto LABEL_12;
  }

  sub_1B698A2A4(*(v26 + 56) + *(v18 + 72) * v28, v21, type metadata accessor for Tracker.Timer);

  v31 = v60;
  sub_1B6994AF8(v21, v60, type metadata accessor for Tracker.Timer);
  if (v23)
  {
    if (v23 == 1)
    {
      v32 = [swift_getObjCClassFromMetadata() eventName];
      v33 = sub_1B6AB92E0();
      v35 = v34;
    }

    else
    {
      v33 = *(v62 + OBJC_IVAR___AARawEvent_name);
      v35 = *(v62 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  else
  {
    v33 = 0x4564656764697242;
    v35 = 0xEC000000746E6576;
  }

  v38 = v27;
  swift_beginAccess();
  sub_1B6A96FA4(v33, v35, v16);
  sub_1B6994FAC(v16, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  swift_endAccess();

  v39 = v56;
  if (v23)
  {
    if (v23 == 1)
    {
      v40 = [swift_getObjCClassFromMetadata() eventName];
      v41 = sub_1B6AB92E0();
      v43 = v42;
    }

    else
    {
      v41 = *(v62 + OBJC_IVAR___AARawEvent_name);
      v43 = *(v62 + OBJC_IVAR___AARawEvent_name + 8);
    }

    v45 = v58;
    v44 = v59;
    v46 = v57;
  }

  else
  {
    v45 = v58;
    v44 = v59;
    v46 = v57;
    v41 = 0x4564656764697242;
    v43 = 0xEC000000746E6576;
  }

  swift_beginAccess();
  sub_1B6A96E90(v41, v43, v63);
  sub_1B6A23F44(v63, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType);
  swift_endAccess();

  v47 = *(v44 + 16);
  v48 = v61;
  v47(v61, v31, v39);
  v49 = type metadata accessor for EventData(0);
  v47(v45, v46 + *(v49 + 20), v39);
  v47(v38, v48, v39);
  v50 = type metadata accessor for TimedData(0);
  v47(&v38[*(v50 + 20)], v45, v39);
  sub_1B6AB8D00();
  v52 = v51;
  v53 = *(v44 + 8);
  v53(v45, v39);
  v53(v48, v39);
  result = sub_1B6995008(v31, type metadata accessor for Tracker.Timer);
  v54 = v52 * 1000.0;
  if (COERCE__INT64(fabs(v52 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v54 < 9.22337204e18)
  {
    *&v38[*(v50 + 24)] = v54;
    return (*(*(v50 - 8) + 56))(v38, 0, 1, v50);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B6A1B924@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v57 = a3;
  v62 = a1;
  v8 = 0xEC000000746E6576;
  v9 = 0x457972616D6D7553;
  v10 = sub_1B6AB8DB0();
  v59 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v55 - v13;
  sub_1B6994AA4(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - v15;
  v17 = type metadata accessor for Tracker.Timer(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v55 - v22;
  v23 = a2 >> 62;
  if (a2 >> 62)
  {
    if (v23 == 1)
    {
      v24 = [swift_getObjCClassFromMetadata() eventName];
      v9 = sub_1B6AB92E0();
      v8 = v25;
    }

    else
    {
      v9 = *(v62 + OBJC_IVAR___AARawEvent_name);
      v8 = *(v62 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  swift_beginAccess();
  v26 = *(v5 + 112);
  if (!*(v26 + 16))
  {

LABEL_12:
    v36 = type metadata accessor for TimedData(0);
    return (*(*(v36 - 8) + 56))(a4, 1, 1, v36);
  }

  v56 = v10;
  v27 = a4;

  v28 = sub_1B6993940(v9, v8);
  v30 = v29;

  if ((v30 & 1) == 0)
  {

    a4 = v27;
    goto LABEL_12;
  }

  sub_1B698A2A4(*(v26 + 56) + *(v18 + 72) * v28, v21, type metadata accessor for Tracker.Timer);

  v31 = v60;
  sub_1B6994AF8(v21, v60, type metadata accessor for Tracker.Timer);
  if (v23)
  {
    if (v23 == 1)
    {
      v32 = [swift_getObjCClassFromMetadata() eventName];
      v33 = sub_1B6AB92E0();
      v35 = v34;
    }

    else
    {
      v33 = *(v62 + OBJC_IVAR___AARawEvent_name);
      v35 = *(v62 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  else
  {
    v33 = 0x457972616D6D7553;
    v35 = 0xEC000000746E6576;
  }

  v38 = v27;
  swift_beginAccess();
  sub_1B6A96FA4(v33, v35, v16);
  sub_1B6994FAC(v16, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  swift_endAccess();

  v39 = v56;
  if (v23)
  {
    if (v23 == 1)
    {
      v40 = [swift_getObjCClassFromMetadata() eventName];
      v41 = sub_1B6AB92E0();
      v43 = v42;
    }

    else
    {
      v41 = *(v62 + OBJC_IVAR___AARawEvent_name);
      v43 = *(v62 + OBJC_IVAR___AARawEvent_name + 8);
    }

    v45 = v58;
    v44 = v59;
    v46 = v57;
  }

  else
  {
    v45 = v58;
    v44 = v59;
    v46 = v57;
    v41 = 0x457972616D6D7553;
    v43 = 0xEC000000746E6576;
  }

  swift_beginAccess();
  sub_1B6A96E90(v41, v43, v63);
  sub_1B6A23F44(v63, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType);
  swift_endAccess();

  v47 = *(v44 + 16);
  v48 = v61;
  v47(v61, v31, v39);
  v49 = type metadata accessor for EventData(0);
  v47(v45, v46 + *(v49 + 20), v39);
  v47(v38, v48, v39);
  v50 = type metadata accessor for TimedData(0);
  v47(&v38[*(v50 + 20)], v45, v39);
  sub_1B6AB8D00();
  v52 = v51;
  v53 = *(v44 + 8);
  v53(v45, v39);
  v53(v48, v39);
  result = sub_1B6995008(v31, type metadata accessor for Tracker.Timer);
  v54 = v52 * 1000.0;
  if (COERCE__INT64(fabs(v52 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v54 < 9.22337204e18)
  {
    *&v38[*(v50 + 24)] = v54;
    return (*(*(v50 - 8) + 56))(v38, 0, 1, v50);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B6A1BFD4@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v170 = a6;
  v169 = a5;
  v159 = a4;
  v161 = a3;
  v162 = a2;
  v160 = a1;
  v148 = a7;
  v176 = type metadata accessor for SequenceEntry.Kind(0);
  MEMORY[0x1EEE9AC00](v176);
  v178 = (&v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v165);
  v151 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for SequenceEntry(0);
  v167 = *(v175 - 8);
  v11 = MEMORY[0x1EEE9AC00](v175);
  v177 = (&v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v172 = &v146 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v171 = (&v146 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v154 = &v146 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v153 = (&v146 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v164 = &v146 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v163 = (&v146 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v158 = &v146 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v157 = (&v146 - v27);
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v156 = &v146 - v29;
  v168 = type metadata accessor for TimedData(0);
  v147 = *(v168 - 8);
  v30 = MEMORY[0x1EEE9AC00](v168);
  v149 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v155 = &v146 - v32;
  v166 = type metadata accessor for Sequence(0);
  MEMORY[0x1EEE9AC00](v166);
  v173 = (&v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v146);
  v150 = (&v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1B6AB90F0();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *(*(v8 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v38 = v39;
  v40 = *MEMORY[0x1E69E8020];
  v41 = *(v36 + 104);
  v41(v38, v40, v35);
  v42 = v39;
  v43 = sub_1B6AB9110();
  v44 = *(v36 + 8);
  v44(v38, v35);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_87;
  }

  sub_1B6A22150(v160, v162, &v187);
  LODWORD(v152) = v187;
  v174 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  v46 = 0;
  if (!Strong)
  {
    v55 = v160;
    v54 = v166;
LABEL_9:
    v56 = v152;
    goto LABEL_10;
  }

  v43 = Strong;
  v47 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v38 = v47;
  v41(v38, v40, v35);
  v48 = v47;
  v49 = sub_1B6AB9110();
  v44(v38, v35);
  if ((v49 & 1) == 0)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
LABEL_77:
    v134 = qword_1EDBCCB28;
    v135 = sub_1B6AB98F0();
    sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_1B6ABF500;
    if (v41)
    {
      if (v41 == 1)
      {
        v137 = [swift_getObjCClassFromMetadata() eventName];
        v138 = sub_1B6AB92E0();
        v140 = v139;
      }

      else
      {
        v138 = *(v43 + OBJC_IVAR___AARawEvent_name);
        v140 = *(v43 + OBJC_IVAR___AARawEvent_name + 8);
      }
    }

    else
    {
      v138 = 0x4564656764697242;
      v140 = 0xEC000000746E6576;
    }

    v143 = MEMORY[0x1E69E6158];
    *(v136 + 56) = MEMORY[0x1E69E6158];
    v144 = sub_1B698CEC0();
    *(v136 + 64) = v144;
    *(v136 + 32) = v138;
    *(v136 + 40) = v140;
    *&v187 = 0;
    *(&v187 + 1) = 0xE000000000000000;
    v183 = v162;
    v184 = v35;
    sub_1B6AB9DF0();

    v145 = v187;
    *(v136 + 96) = v143;
    *(v136 + 104) = v144;
    *(v136 + 72) = v145;
    sub_1B6AB8F70("Failed to create event %@ but graceful event creation enabled, error=%@", 71, 2, &dword_1B697C000, v134, v135, v136);
    goto LABEL_85;
  }

  v50 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v51 = v43 + v50;
  v52 = v150;
  sub_1B698A2A4(v51, v150, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v166;
  if (!EnumCaseMultiPayload)
  {
    v46 = *(*v52 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 8);

    v55 = v160;
    goto LABEL_9;
  }

  v55 = v160;
  v56 = v152;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B6995008(v52, type metadata accessor for SessionManager.SessionState);
  }

LABEL_10:
  v57 = 0xEC000000746E6576;
  v58 = 0x4564656764697242;
  v59 = v162 >> 62;
  if (v162 >> 62)
  {
    if (v59 == 1)
    {
      v60 = [swift_getObjCClassFromMetadata() eventName];
      v58 = sub_1B6AB92E0();
      v57 = v61;
    }

    else
    {
      v58 = *(v55 + OBJC_IVAR___AARawEvent_name);
      v57 = *(v55 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  v62 = *(v165 + 20);
  v63 = v54[5];
  v64 = sub_1B6AB8DB0();
  v65 = v173;
  (*(*(v64 - 8) + 16))(v173 + v63, v161 + v62, v64);
  sub_1B6A22340(v55, v162, &v187);
  v66 = v187;
  v67 = BYTE1(v187);
  v166 = v54[7];
  *(v65 + v166) = MEMORY[0x1E69E7CC0];
  *v65 = v58;
  v65[1] = v57;
  v68 = v65 + v54[6];
  *v68 = v56;
  *(v68 + 1) = v46;
  v68[16] = v66;
  v68[17] = v67;
  v150 = v59;
  if (!v59)
  {
    v70 = sub_1B69BB800(&type metadata for BridgedEvent, &off_1F2E74868);
    v69 = v174;
    v71 = *(v70 + 2);
    if (!v71)
    {
      goto LABEL_61;
    }

LABEL_19:
    v146 = v70;
    v72 = (v70 + 32);
    v152 = (v147 + 48);
    v73 = MEMORY[0x1E69E7CC0];
    v162 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B69BE328(v72, &v187);
      v74 = v187;
      sub_1B6980E70(&v188, &v183);
      v75 = v185;
      v76 = v186;
      __swift_project_boxed_opaque_existential_1(&v183, v185);
      if ((*(v76 + 16))(v75, v76))
      {
        v77 = v185;
        v78 = v186;
        __swift_project_boxed_opaque_existential_1(&v183, v185);
        v79 = (*(v78 + 8))(v77, v78);
        sub_1B69BEDE8(v79, v80, v169, v170, 0, &v179);

        if (v180)
        {
          sub_1B6980E70(&v179, &v181);
          sub_1B6982544(&v181, &v179);
          v81 = v171;
          *v171 = v74;
          sub_1B6980E70(&v179, v81 + *(v175 + 20));
          swift_storeEnumTagMultiPayload();
          sub_1B698A2A4(v81, v172, type metadata accessor for SequenceEntry);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_1B69BED6C(0, v73[2] + 1, 1, v73);
          }

          v83 = v73[2];
          v82 = v73[3];
          if (v83 >= v82 >> 1)
          {
            v73 = sub_1B69BED6C((v82 > 1), v83 + 1, 1, v73);
          }

          sub_1B6995008(v171, type metadata accessor for SequenceEntry);
          __swift_destroy_boxed_opaque_existential_1(&v181);
          v73[2] = v83 + 1;
          v84 = v73 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v83;
          v85 = &v190;
          goto LABEL_51;
        }

        sub_1B6A23F44(&v179, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
      }

      else
      {
        v86 = v185;
        v87 = v186;
        __swift_project_boxed_opaque_existential_1(&v183, v185);
        if (((*(v87 + 24))(v86, v87) & 1) == 0)
        {
          v88 = v185;
          v89 = v186;
          __swift_project_boxed_opaque_existential_1(&v183, v185);
          if (((*(v89 + 40))(v168, v168, v88, v89) & 1) == 0)
          {
            goto LABEL_33;
          }

          v90 = v156;
          sub_1B6994F40(v159, v156, qword_1EDBC9BF0, type metadata accessor for TimedData);
          if ((*v152)(v90, 1, v168) == 1)
          {
            sub_1B6994FAC(v90, qword_1EDBC9BF0, type metadata accessor for TimedData);
LABEL_33:
            v91 = v185;
            v92 = v186;
            __swift_project_boxed_opaque_existential_1(&v183, v185);
            if ((*(v92 + 40))(v165, v165, v91, v92))
            {
              v93 = v151;
              sub_1B698A2A4(v161, v151, type metadata accessor for EventData);
              v94 = v163;
              *v163 = v74;
              sub_1B6994AF8(v93, v94 + *(v175 + 20), type metadata accessor for EventData);
              swift_storeEnumTagMultiPayload();
              sub_1B698A2A4(v94, v164, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v73 = sub_1B69BED6C(0, v73[2] + 1, 1, v73);
              }

              v96 = v73[2];
              v95 = v73[3];
              if (v96 >= v95 >> 1)
              {
                v73 = sub_1B69BED6C((v95 > 1), v96 + 1, 1, v73);
              }

              sub_1B6995008(v163, type metadata accessor for SequenceEntry);
              v73[2] = v96 + 1;
              v84 = v73 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v96;
              v85 = &v188;
              goto LABEL_51;
            }

            v97 = v185;
            v98 = v186;
            __swift_project_boxed_opaque_existential_1(&v183, v185);
            v99 = (*(v98 + 8))(v97, v98);
            sub_1B69BEDE8(v99, v100, v169, v170, 0, &v179);

            if (v180)
            {
              sub_1B6980E70(&v179, &v181);
              sub_1B6982544(&v181, &v179);
              v101 = v153;
              *v153 = v74;
              sub_1B6980E70(&v179, v101 + *(v175 + 20));
              swift_storeEnumTagMultiPayload();
              sub_1B698A2A4(v101, v154, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v73 = sub_1B69BED6C(0, v73[2] + 1, 1, v73);
              }

              v103 = v73[2];
              v102 = v73[3];
              if (v103 >= v102 >> 1)
              {
                v73 = sub_1B69BED6C((v102 > 1), v103 + 1, 1, v73);
              }

              sub_1B6995008(v153, type metadata accessor for SequenceEntry);
              __swift_destroy_boxed_opaque_existential_1(&v181);
              v73[2] = v103 + 1;
              v84 = v73 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v103;
              v85 = &v182;
              goto LABEL_51;
            }

            sub_1B6A23F44(&v179, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
            v109 = v185;
            v110 = v186;
            __swift_project_boxed_opaque_existential_1(&v183, v185);
            v111 = (*(v110 + 32))(v109, v110);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v112 = v162;
            }

            else
            {
              v112 = sub_1B69E3EC4(0, *(v162 + 16) + 1, 1, v162);
            }

            v114 = *(v112 + 2);
            v113 = *(v112 + 3);
            if (v114 >= v113 >> 1)
            {
              v112 = sub_1B69E3EC4((v113 > 1), v114 + 1, 1, v112);
            }

            *(v112 + 2) = v114 + 1;
            v162 = v112;
            v115 = &v112[24 * v114];
            *(v115 + 2) = v74;
            *(v115 + 6) = v111;
          }

          else
          {
            v104 = v155;
            sub_1B6994AF8(v90, v155, type metadata accessor for TimedData);
            v105 = v149;
            sub_1B698A2A4(v104, v149, type metadata accessor for TimedData);
            v106 = v157;
            *v157 = v74;
            sub_1B6994AF8(v105, v106 + *(v175 + 20), type metadata accessor for TimedData);
            swift_storeEnumTagMultiPayload();
            sub_1B698A2A4(v106, v158, type metadata accessor for SequenceEntry);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_1B69BED6C(0, v73[2] + 1, 1, v73);
            }

            v108 = v73[2];
            v107 = v73[3];
            if (v108 >= v107 >> 1)
            {
              v73 = sub_1B69BED6C((v107 > 1), v108 + 1, 1, v73);
            }

            sub_1B6995008(v157, type metadata accessor for SequenceEntry);
            sub_1B6995008(v155, type metadata accessor for TimedData);
            v73[2] = v108 + 1;
            v84 = v73 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v108;
            v85 = &v184;
LABEL_51:
            sub_1B6994AF8(*(v85 - 32), v84, type metadata accessor for SequenceEntry);
            *(v173 + v166) = v73;
          }

          v69 = v174;
          goto LABEL_21;
        }
      }

LABEL_21:
      __swift_destroy_boxed_opaque_existential_1(&v183);
      v72 += 56;
      if (!--v71)
      {

        v116 = v162;
        goto LABEL_62;
      }
    }
  }

  v69 = v174;
  if (v59 == 1)
  {
    sub_1B69E1350(v55);
    v71 = *(v70 + 2);
    if (!v71)
    {
      goto LABEL_61;
    }

    goto LABEL_19;
  }

  sub_1B6A43710();
  v71 = *(v70 + 2);
  if (v71)
  {
    goto LABEL_19;
  }

LABEL_61:

  v116 = MEMORY[0x1E69E7CC0];
  v73 = MEMORY[0x1E69E7CC0];
LABEL_62:
  LODWORD(v41) = v150;
  if (!*(v116 + 2))
  {
LABEL_85:

    return sub_1B6994AF8(v173, v148, type metadata accessor for Sequence);
  }

  v117 = v73[2];
  v35 = MEMORY[0x1E69E7CC0];
  v162 = v116;
  if (!v117)
  {
    goto LABEL_75;
  }

  v181 = MEMORY[0x1E69E7CC0];
  sub_1B69E4D4C(0, v117, 0);
  v35 = v181;
  v118 = v73 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
  v119 = *(v167 + 72);
  do
  {
    v120 = v177;
    sub_1B698A2A4(v118, v177, type metadata accessor for SequenceEntry);
    v121 = *v120;
    v122 = v120[1];
    sub_1B698A2A4(v120 + *(v175 + 20), v178, type metadata accessor for SequenceEntry.Kind);
    v123 = swift_getEnumCaseMultiPayload();
    if (!v123)
    {
      v185 = v168;
      v186 = sub_1B69ACD84(&qword_1EDBCB008, type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v183);
      v125 = type metadata accessor for TimedData;
      goto LABEL_69;
    }

    if (v123 == 1)
    {
      v185 = v165;
      v186 = sub_1B69ACD84(&qword_1EDBCAAC0, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v183);
      v125 = type metadata accessor for EventData;
LABEL_69:
      sub_1B6994AF8(v178, boxed_opaque_existential_1, v125);
      goto LABEL_71;
    }

    sub_1B6980E70(v178, &v183);
LABEL_71:
    v126 = v185;
    v127 = __swift_project_boxed_opaque_existential_1(&v183, v185);
    *(&v189 + 1) = v126;
    v128 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(*(v126 - 8) + 16))(v128, v127, v126);

    sub_1B6995008(v177, type metadata accessor for SequenceEntry);
    *&v187 = v121;
    *(&v187 + 1) = v122;
    __swift_destroy_boxed_opaque_existential_1(&v183);
    v181 = v35;
    v130 = *(v35 + 16);
    v129 = *(v35 + 24);
    if (v130 >= v129 >> 1)
    {
      sub_1B69E4D4C((v129 > 1), v130 + 1, 1);
      v35 = v181;
    }

    *(v35 + 16) = v130 + 1;
    v131 = (v35 + 48 * v130);
    v132 = v187;
    v133 = v189;
    v131[3] = v188;
    v131[4] = v133;
    v131[2] = v132;
    v118 += v119;
    --v117;
  }

  while (v117);
  v69 = v174;
  LODWORD(v41) = v150;
LABEL_75:
  v43 = v160;
  if (*(v69 + 201))
  {
    if (qword_1EDBCCEE0 == -1)
    {
      goto LABEL_77;
    }

    goto LABEL_88;
  }

  sub_1B6A16B30();
  swift_allocError();
  *v141 = v162;
  v141[1] = v35;
  swift_willThrow();
  return sub_1B6995008(v173, type metadata accessor for Sequence);
}

uint64_t sub_1B6A1D710@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v170 = a6;
  v169 = a5;
  v159 = a4;
  v161 = a3;
  v162 = a2;
  v160 = a1;
  v148 = a7;
  v176 = type metadata accessor for SequenceEntry.Kind(0);
  MEMORY[0x1EEE9AC00](v176);
  v178 = (&v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v165);
  v151 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for SequenceEntry(0);
  v167 = *(v175 - 8);
  v11 = MEMORY[0x1EEE9AC00](v175);
  v177 = (&v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v172 = &v146 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v171 = (&v146 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v154 = &v146 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v153 = (&v146 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v164 = &v146 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v163 = (&v146 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v158 = &v146 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v157 = (&v146 - v27);
  sub_1B6994AA4(0, qword_1EDBC9BF0, type metadata accessor for TimedData);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v156 = &v146 - v29;
  v168 = type metadata accessor for TimedData(0);
  v147 = *(v168 - 8);
  v30 = MEMORY[0x1EEE9AC00](v168);
  v149 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v155 = &v146 - v32;
  v166 = type metadata accessor for Sequence(0);
  MEMORY[0x1EEE9AC00](v166);
  v173 = (&v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v146);
  v150 = (&v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1B6AB90F0();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *(*(v8 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v38 = v39;
  v40 = *MEMORY[0x1E69E8020];
  v41 = *(v36 + 104);
  v41(v38, v40, v35);
  v42 = v39;
  v43 = sub_1B6AB9110();
  v44 = *(v36 + 8);
  v44(v38, v35);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_87;
  }

  sub_1B6A22244(v160, v162, &v187);
  LODWORD(v152) = v187;
  v174 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  v46 = 0;
  if (!Strong)
  {
    v55 = v160;
    v54 = v166;
LABEL_9:
    v56 = v152;
    goto LABEL_10;
  }

  v43 = Strong;
  v47 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v38 = v47;
  v41(v38, v40, v35);
  v48 = v47;
  v49 = sub_1B6AB9110();
  v44(v38, v35);
  if ((v49 & 1) == 0)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
LABEL_77:
    v134 = qword_1EDBCCB28;
    v135 = sub_1B6AB98F0();
    sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_1B6ABF500;
    if (v41)
    {
      if (v41 == 1)
      {
        v137 = [swift_getObjCClassFromMetadata() eventName];
        v138 = sub_1B6AB92E0();
        v140 = v139;
      }

      else
      {
        v138 = *(v43 + OBJC_IVAR___AARawEvent_name);
        v140 = *(v43 + OBJC_IVAR___AARawEvent_name + 8);
      }
    }

    else
    {
      v138 = 0x457972616D6D7553;
      v140 = 0xEC000000746E6576;
    }

    v143 = MEMORY[0x1E69E6158];
    *(v136 + 56) = MEMORY[0x1E69E6158];
    v144 = sub_1B698CEC0();
    *(v136 + 64) = v144;
    *(v136 + 32) = v138;
    *(v136 + 40) = v140;
    *&v187 = 0;
    *(&v187 + 1) = 0xE000000000000000;
    v183 = v162;
    v184 = v35;
    sub_1B6AB9DF0();

    v145 = v187;
    *(v136 + 96) = v143;
    *(v136 + 104) = v144;
    *(v136 + 72) = v145;
    sub_1B6AB8F70("Failed to create event %@ but graceful event creation enabled, error=%@", 71, 2, &dword_1B697C000, v134, v135, v136);
    goto LABEL_85;
  }

  v50 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v51 = v43 + v50;
  v52 = v150;
  sub_1B698A2A4(v51, v150, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v166;
  if (!EnumCaseMultiPayload)
  {
    v46 = *(*v52 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 8);

    v55 = v160;
    goto LABEL_9;
  }

  v55 = v160;
  v56 = v152;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B6995008(v52, type metadata accessor for SessionManager.SessionState);
  }

LABEL_10:
  v57 = 0xEC000000746E6576;
  v58 = 0x457972616D6D7553;
  v59 = v162 >> 62;
  if (v162 >> 62)
  {
    if (v59 == 1)
    {
      v60 = [swift_getObjCClassFromMetadata() eventName];
      v58 = sub_1B6AB92E0();
      v57 = v61;
    }

    else
    {
      v58 = *(v55 + OBJC_IVAR___AARawEvent_name);
      v57 = *(v55 + OBJC_IVAR___AARawEvent_name + 8);
    }
  }

  v62 = *(v165 + 20);
  v63 = v54[5];
  v64 = sub_1B6AB8DB0();
  v65 = v173;
  (*(*(v64 - 8) + 16))(v173 + v63, v161 + v62, v64);
  sub_1B6A22340(v55, v162, &v187);
  v66 = v187;
  v67 = BYTE1(v187);
  v166 = v54[7];
  *(v65 + v166) = MEMORY[0x1E69E7CC0];
  *v65 = v58;
  v65[1] = v57;
  v68 = v65 + v54[6];
  *v68 = v56;
  *(v68 + 1) = v46;
  v68[16] = v66;
  v68[17] = v67;
  v150 = v59;
  if (!v59)
  {
    v70 = sub_1B69BB800(&type metadata for SummaryEvent, &off_1F2E7C830);
    v69 = v174;
    v71 = *(v70 + 2);
    if (!v71)
    {
      goto LABEL_61;
    }

LABEL_19:
    v146 = v70;
    v72 = (v70 + 32);
    v152 = (v147 + 48);
    v73 = MEMORY[0x1E69E7CC0];
    v162 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B69BE328(v72, &v187);
      v74 = v187;
      sub_1B6980E70(&v188, &v183);
      v75 = v185;
      v76 = v186;
      __swift_project_boxed_opaque_existential_1(&v183, v185);
      if ((*(v76 + 16))(v75, v76))
      {
        v77 = v185;
        v78 = v186;
        __swift_project_boxed_opaque_existential_1(&v183, v185);
        v79 = (*(v78 + 8))(v77, v78);
        sub_1B69BEDE8(v79, v80, v169, v170, 0, &v179);

        if (v180)
        {
          sub_1B6980E70(&v179, &v181);
          sub_1B6982544(&v181, &v179);
          v81 = v171;
          *v171 = v74;
          sub_1B6980E70(&v179, v81 + *(v175 + 20));
          swift_storeEnumTagMultiPayload();
          sub_1B698A2A4(v81, v172, type metadata accessor for SequenceEntry);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_1B69BED6C(0, v73[2] + 1, 1, v73);
          }

          v83 = v73[2];
          v82 = v73[3];
          if (v83 >= v82 >> 1)
          {
            v73 = sub_1B69BED6C((v82 > 1), v83 + 1, 1, v73);
          }

          sub_1B6995008(v171, type metadata accessor for SequenceEntry);
          __swift_destroy_boxed_opaque_existential_1(&v181);
          v73[2] = v83 + 1;
          v84 = v73 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v83;
          v85 = &v190;
          goto LABEL_51;
        }

        sub_1B6A23F44(&v179, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
      }

      else
      {
        v86 = v185;
        v87 = v186;
        __swift_project_boxed_opaque_existential_1(&v183, v185);
        if (((*(v87 + 24))(v86, v87) & 1) == 0)
        {
          v88 = v185;
          v89 = v186;
          __swift_project_boxed_opaque_existential_1(&v183, v185);
          if (((*(v89 + 40))(v168, v168, v88, v89) & 1) == 0)
          {
            goto LABEL_33;
          }

          v90 = v156;
          sub_1B6994F40(v159, v156, qword_1EDBC9BF0, type metadata accessor for TimedData);
          if ((*v152)(v90, 1, v168) == 1)
          {
            sub_1B6994FAC(v90, qword_1EDBC9BF0, type metadata accessor for TimedData);
LABEL_33:
            v91 = v185;
            v92 = v186;
            __swift_project_boxed_opaque_existential_1(&v183, v185);
            if ((*(v92 + 40))(v165, v165, v91, v92))
            {
              v93 = v151;
              sub_1B698A2A4(v161, v151, type metadata accessor for EventData);
              v94 = v163;
              *v163 = v74;
              sub_1B6994AF8(v93, v94 + *(v175 + 20), type metadata accessor for EventData);
              swift_storeEnumTagMultiPayload();
              sub_1B698A2A4(v94, v164, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v73 = sub_1B69BED6C(0, v73[2] + 1, 1, v73);
              }

              v96 = v73[2];
              v95 = v73[3];
              if (v96 >= v95 >> 1)
              {
                v73 = sub_1B69BED6C((v95 > 1), v96 + 1, 1, v73);
              }

              sub_1B6995008(v163, type metadata accessor for SequenceEntry);
              v73[2] = v96 + 1;
              v84 = v73 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v96;
              v85 = &v188;
              goto LABEL_51;
            }

            v97 = v185;
            v98 = v186;
            __swift_project_boxed_opaque_existential_1(&v183, v185);
            v99 = (*(v98 + 8))(v97, v98);
            sub_1B69BEDE8(v99, v100, v169, v170, 0, &v179);

            if (v180)
            {
              sub_1B6980E70(&v179, &v181);
              sub_1B6982544(&v181, &v179);
              v101 = v153;
              *v153 = v74;
              sub_1B6980E70(&v179, v101 + *(v175 + 20));
              swift_storeEnumTagMultiPayload();
              sub_1B698A2A4(v101, v154, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v73 = sub_1B69BED6C(0, v73[2] + 1, 1, v73);
              }

              v103 = v73[2];
              v102 = v73[3];
              if (v103 >= v102 >> 1)
              {
                v73 = sub_1B69BED6C((v102 > 1), v103 + 1, 1, v73);
              }

              sub_1B6995008(v153, type metadata accessor for SequenceEntry);
              __swift_destroy_boxed_opaque_existential_1(&v181);
              v73[2] = v103 + 1;
              v84 = v73 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v103;
              v85 = &v182;
              goto LABEL_51;
            }

            sub_1B6A23F44(&v179, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
            v109 = v185;
            v110 = v186;
            __swift_project_boxed_opaque_existential_1(&v183, v185);
            v111 = (*(v110 + 32))(v109, v110);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v112 = v162;
            }

            else
            {
              v112 = sub_1B69E3EC4(0, *(v162 + 16) + 1, 1, v162);
            }

            v114 = *(v112 + 2);
            v113 = *(v112 + 3);
            if (v114 >= v113 >> 1)
            {
              v112 = sub_1B69E3EC4((v113 > 1), v114 + 1, 1, v112);
            }

            *(v112 + 2) = v114 + 1;
            v162 = v112;
            v115 = &v112[24 * v114];
            *(v115 + 2) = v74;
            *(v115 + 6) = v111;
          }

          else
          {
            v104 = v155;
            sub_1B6994AF8(v90, v155, type metadata accessor for TimedData);
            v105 = v149;
            sub_1B698A2A4(v104, v149, type metadata accessor for TimedData);
            v106 = v157;
            *v157 = v74;
            sub_1B6994AF8(v105, v106 + *(v175 + 20), type metadata accessor for TimedData);
            swift_storeEnumTagMultiPayload();
            sub_1B698A2A4(v106, v158, type metadata accessor for SequenceEntry);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_1B69BED6C(0, v73[2] + 1, 1, v73);
            }

            v108 = v73[2];
            v107 = v73[3];
            if (v108 >= v107 >> 1)
            {
              v73 = sub_1B69BED6C((v107 > 1), v108 + 1, 1, v73);
            }

            sub_1B6995008(v157, type metadata accessor for SequenceEntry);
            sub_1B6995008(v155, type metadata accessor for TimedData);
            v73[2] = v108 + 1;
            v84 = v73 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v108;
            v85 = &v184;
LABEL_51:
            sub_1B6994AF8(*(v85 - 32), v84, type metadata accessor for SequenceEntry);
            *(v173 + v166) = v73;
          }

          v69 = v174;
          goto LABEL_21;
        }
      }

LABEL_21:
      __swift_destroy_boxed_opaque_existential_1(&v183);
      v72 += 56;
      if (!--v71)
      {

        v116 = v162;
        goto LABEL_62;
      }
    }
  }

  v69 = v174;
  if (v59 == 1)
  {
    sub_1B69E1350(v55);
    v71 = *(v70 + 2);
    if (!v71)
    {
      goto LABEL_61;
    }

    goto LABEL_19;
  }

  sub_1B6A43710();
  v71 = *(v70 + 2);
  if (v71)
  {
    goto LABEL_19;
  }

LABEL_61:

  v116 = MEMORY[0x1E69E7CC0];
  v73 = MEMORY[0x1E69E7CC0];
LABEL_62:
  LODWORD(v41) = v150;
  if (!*(v116 + 2))
  {
LABEL_85:

    return sub_1B6994AF8(v173, v148, type metadata accessor for Sequence);
  }

  v117 = v73[2];
  v35 = MEMORY[0x1E69E7CC0];
  v162 = v116;
  if (!v117)
  {
    goto LABEL_75;
  }

  v181 = MEMORY[0x1E69E7CC0];
  sub_1B69E4D4C(0, v117, 0);
  v35 = v181;
  v118 = v73 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
  v119 = *(v167 + 72);
  do
  {
    v120 = v177;
    sub_1B698A2A4(v118, v177, type metadata accessor for SequenceEntry);
    v121 = *v120;
    v122 = v120[1];
    sub_1B698A2A4(v120 + *(v175 + 20), v178, type metadata accessor for SequenceEntry.Kind);
    v123 = swift_getEnumCaseMultiPayload();
    if (!v123)
    {
      v185 = v168;
      v186 = sub_1B69ACD84(&qword_1EDBCB008, type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v183);
      v125 = type metadata accessor for TimedData;
      goto LABEL_69;
    }

    if (v123 == 1)
    {
      v185 = v165;
      v186 = sub_1B69ACD84(&qword_1EDBCAAC0, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v183);
      v125 = type metadata accessor for EventData;
LABEL_69:
      sub_1B6994AF8(v178, boxed_opaque_existential_1, v125);
      goto LABEL_71;
    }

    sub_1B6980E70(v178, &v183);
LABEL_71:
    v126 = v185;
    v127 = __swift_project_boxed_opaque_existential_1(&v183, v185);
    *(&v189 + 1) = v126;
    v128 = __swift_allocate_boxed_opaque_existential_1(&v188);
    (*(*(v126 - 8) + 16))(v128, v127, v126);

    sub_1B6995008(v177, type metadata accessor for SequenceEntry);
    *&v187 = v121;
    *(&v187 + 1) = v122;
    __swift_destroy_boxed_opaque_existential_1(&v183);
    v181 = v35;
    v130 = *(v35 + 16);
    v129 = *(v35 + 24);
    if (v130 >= v129 >> 1)
    {
      sub_1B69E4D4C((v129 > 1), v130 + 1, 1);
      v35 = v181;
    }

    *(v35 + 16) = v130 + 1;
    v131 = (v35 + 48 * v130);
    v132 = v187;
    v133 = v189;
    v131[3] = v188;
    v131[4] = v133;
    v131[2] = v132;
    v118 += v119;
    --v117;
  }

  while (v117);
  v69 = v174;
  LODWORD(v41) = v150;
LABEL_75:
  v43 = v160;
  if (*(v69 + 201))
  {
    if (qword_1EDBCCEE0 == -1)
    {
      goto LABEL_77;
    }

    goto LABEL_88;
  }

  sub_1B6A16B30();
  swift_allocError();
  *v141 = v162;
  v141[1] = v35;
  swift_willThrow();
  return sub_1B6995008(v173, type metadata accessor for Sequence);
}