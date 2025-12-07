uint64_t sub_1D6AB9AFC()
{
  v21 = MEMORY[0x1E69E7CD0];
  v1 = type metadata accessor for BundleSession(0);
  if (*(v0 + *(v1 + 40)) == 1)
  {
    v2 = 0x80000001D73E4300;
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000018;
    v2 = 0x80000001D73E42A0;
  }

  sub_1D5B860D0(&v20, v3, v2);

  v4 = *(v0 + *(v1 + 36));
  sub_1D6AB8740(v4, &v21);
  v5 = v4 >> 62;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_38:
    if (!sub_1D7263BFC())
    {
      goto LABEL_20;
    }

    v7 = sub_1D7263BFC();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
LABEL_17:
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  v8 = 0;
  do
  {
    if (v7 == v8)
    {
      v12 = "newsletters-subscribed-none";
      v13 = 0xD00000000000001ALL;
      goto LABEL_32;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA6FB460](v8, v4);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_35;
      }

      v9 = *(v4 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v11 = [v9 enrollment];

    ++v8;
  }

  while (v11 == 2);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
  if (sub_1D7263BFC())
  {
    v14 = sub_1D7263BFC();
LABEL_22:
    v15 = 0;
    v5 = v4 & 0xC000000000000001;
    while (v14 != v15)
    {
      if (v5)
      {
        v16 = MEMORY[0x1DA6FB460](v15, v4);
      }

      else
      {
        if (v15 >= *(v6 + 16))
        {
          goto LABEL_37;
        }

        v16 = *(v4 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_36;
      }

      v18 = [v16 enrollment];

      ++v15;
      if (v18 != 1)
      {
        return v21;
      }
    }
  }

LABEL_31:
  v12 = "newsletters-unsubscribed";
  v13 = 0xD00000000000001BLL;
LABEL_32:
  sub_1D5B860D0(&v20, v13, v12 | 0x8000000000000000);

  return v21;
}

double sub_1D6AB9D78(id *a1)
{
  v1 = *a1;
  v2 = [*a1 identifier];
  if (v2)
  {
    v4 = v2;
    sub_1D726207C();

    v5 = sub_1D726210C();
    v7 = v6;

    v8 = [v1 enrollment];
    if (!v8)
    {
      goto LABEL_6;
    }

    if (v8 == 1)
    {
      sub_1D7263D4C();

      strcpy(v11, "newsletters-");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      MEMORY[0x1DA6F9910](v5, v7);

      v9 = 0x63736275736E752DLL;
      v10 = 0xED00006465626972;
      goto LABEL_8;
    }

    if (v8 == 2)
    {
      sub_1D7263D4C();

      strcpy(v11, "newsletters-");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      MEMORY[0x1DA6F9910](v5, v7);

      v9 = 0x697263736275732DLL;
      v10 = 0xEB00000000646562;
    }

    else
    {
LABEL_6:
      sub_1D7263D4C();

      strcpy(v11, "newsletters-");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      MEMORY[0x1DA6F9910](v5, v7);

      v9 = 0x6E776F6E6B6E752DLL;
      v10 = 0xE800000000000000;
    }

LABEL_8:
    MEMORY[0x1DA6F9910](v9, v10);
    sub_1D5B860D0(v11, v11[0], v11[1]);
  }

  return result;
}

uint64_t _s8NewsFeed13BundleSessionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for BundleSession(0);
  if ((sub_1D72588AC() & 1) == 0)
  {
    goto LABEL_43;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = 0xE700000000000000;
      v9 = 0x64657269707865;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_11:
      v10 = 0xE600000000000000;
      if (v9 != 0x657669746361)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v8 = 0xE800000000000000;
    v9 = 0x64656C6261736964;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v9 = 0x657669746361;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

LABEL_6:
  if (v7 == 1)
  {
    v10 = 0xE700000000000000;
    if (v9 != 0x64657269707865)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    if (v9 != 0x64656C6261736964)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  if (v8 == v10)
  {

    goto LABEL_19;
  }

LABEL_18:
  v12 = sub_1D72646CC();

  if ((v12 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_19:
  v13 = 0xED000064656E696DLL;
  v14 = 0x7265746544746F6ELL;
  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (v16 == 1)
    {
      v18 = 0xE600000000000000;
      v19 = 0x6465696E6564;
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v19 = 0x7A69726F68747561;
      v18 = 0xEA00000000006465;
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v19 = 0x7265746544746F6ELL;
    v18 = 0xED000064656E696DLL;
    if (!v17)
    {
      goto LABEL_28;
    }
  }

  if (v17 != 1)
  {
    v13 = 0xEA00000000006465;
    if (v19 != 0x7A69726F68747561)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v13 = 0xE600000000000000;
  v14 = 0x6465696E6564;
LABEL_28:
  if (v19 != v14)
  {
LABEL_33:
    v20 = sub_1D72646CC();

    if ((v20 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (v18 != v13)
  {
    goto LABEL_33;
  }

LABEL_34:
  v21 = v4[8];
  v22 = a1 + v21;
  v23 = *(a1 + v21);
  v24 = a2 + v21;
  v25 = *(a2 + v21);
  v26 = 0;
  if (v23 < 0)
  {
    if ((v25 & 0x8000000000000000) == 0 || ((v25 ^ v23) & 1) != 0 || *(v22 + 1) != *(v24 + 1))
    {
      return v26 & 1;
    }
  }

  else if (v25 < 0 || ((v25 ^ v23) & 1) != 0)
  {
    return v26 & 1;
  }

  if ((sub_1D635D3FC(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10]))
  {
    v26 = *(a1 + v4[11]) ^ *(a2 + v4[11]) ^ 1;
    return v26 & 1;
  }

LABEL_43:
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_1D6ABA278()
{
  result = qword_1EDF11EC8;
  if (!qword_1EDF11EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11EC8);
  }

  return result;
}

unint64_t sub_1D6ABA2CC()
{
  result = qword_1EC891258;
  if (!qword_1EC891258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891258);
  }

  return result;
}

void sub_1D6ABA320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6ABA278();
    v7 = a3(a1, &type metadata for BundleSession.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6ABA384()
{
  result = qword_1EC891260;
  if (!qword_1EC891260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891260);
  }

  return result;
}

unint64_t sub_1D6ABA3D8()
{
  result = qword_1EC891270;
  if (!qword_1EC891270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891270);
  }

  return result;
}

uint64_t sub_1D6ABA42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6ABA490(uint64_t a1)
{
  v2 = type metadata accessor for BundleSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6ABA510()
{
  result = qword_1EC891278;
  if (!qword_1EC891278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891278);
  }

  return result;
}

unint64_t sub_1D6ABA568()
{
  result = qword_1EC891280;
  if (!qword_1EC891280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891280);
  }

  return result;
}

unint64_t sub_1D6ABA5C0()
{
  result = qword_1EDF11EB8;
  if (!qword_1EDF11EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11EB8);
  }

  return result;
}

unint64_t sub_1D6ABA618()
{
  result = qword_1EDF11EC0;
  if (!qword_1EDF11EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11EC0);
  }

  return result;
}

unint64_t sub_1D6ABA66C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

id LocationDetectionManager.observableMostFrequentLocation.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observableMostFrequentLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t LocationDetectionManager.mostFrequentLocation.getter()
{

  sub_1D725B96C();

  return v1;
}

void sub_1D6ABA8A0(void *a1@<X8>)
{

  sub_1D725B96C();

  *a1 = v2;
}

double sub_1D6ABA8F8(id *a1)
{
  v1 = *a1;

  sub_1D725B97C();

  return result;
}

BOOL LocationDetectionManager.authorized.getter(__n128 a1)
{
  if (qword_1EDF29DF0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDFFCAB0;
  v3 = sub_1D7262EBC();
  return [*(v1 + OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_locationManager) _authorizationStatus] - 3 < 2;
}

id LocationDetectionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double LocationDetectionManager.removeObserver(_:)(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v12 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_21:
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v10 = v3;
    v11 = v1;
    v3 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v3, v4);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v1 = v11;
          v8 = v12;
          v3 = v10;
          goto LABEL_19;
        }
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_16;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        v1 = &v12;
        sub_1D7263EAC();
      }

      ++v3;
      if (v6 == v5)
      {
        goto LABEL_17;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(v1 + v3) = v8;

  return result;
}

uint64_t LocationDetectionManager.isAuthorized()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D6ABADC8;
  v2 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 24, 0, 0, 0x726F687475417369, 0xEE00292864657A69, sub_1D6ABAEDC, 0, v2);
}

uint64_t sub_1D6ABADC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6ABAEC4, 0, 0);
}

double sub_1D6ABAEDC(uint64_t a1)
{
  sub_1D6ABBB80();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2, v6);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v7);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  _s8NewsFeed24LocationDetectionManagerC24fetchAuthorizationStatus10completionyySo010CLLocationE0C_So015CLAuthorizationH0Vtc_tFZ_0(sub_1D6ABBBE0, v9);

  return result;
}

uint64_t sub_1D6ABB1A4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D6ABB28C;
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v1 + 32, 0, 0, 0x726F687475417369, 0xEE00292864657A69, sub_1D6ABAEDC, 0, v3);
}

uint64_t sub_1D6ABB28C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6ABB388, 0, 0);
}

uint64_t sub_1D6ABB388()
{
  v1 = *(v0 + 16);
  v1[2](v1, *(v0 + 32));
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

id LocationDetectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LocationDetectionManager.requiresPresentation()()
{
  sub_1D6ABB84C();
  swift_allocObject();
  return sub_1D725BBAC();
}

double sub_1D6ABB528(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D6ABBB0C;
  *(v5 + 24) = v4;

  _s8NewsFeed24LocationDetectionManagerC24fetchAuthorizationStatus10completionyySo010CLLocationE0C_So015CLAuthorizationH0Vtc_tFZ_0(sub_1D6ABBB44, v5);

  return result;
}

void (*LocationDetectionManager.presentationAction()())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D6ABB89C;
}

void sub_1D6ABB62C(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = &v6[OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_onUserInteractedWithLocationAuthorizationTCC];
    v9 = *&v6[OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_onUserInteractedWithLocationAuthorizationTCC];
    v10 = *&v6[OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_onUserInteractedWithLocationAuthorizationTCC + 8];
    *v8 = sub_1D6ABBADC;
    v8[1] = v7;

    sub_1D5B74328(v9, v10);
    [*&v6[OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_locationManager] requestWhenInUseAuthorization];
  }

  else
  {
    v11 = sub_1D725E8CC();
    sub_1D5B641B0(&qword_1EC891328, MEMORY[0x1E69D8050], MEMORY[0x1E69D8058]);
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69D8048], v11);
    a1(v12, 1);
  }
}

uint64_t sub_1D6ABB7A0()
{
  sub_1D6ABB84C();
  swift_allocObject();
  return sub_1D725BBAC();
}

void (*sub_1D6ABB7F0())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D6ABBC60;
}

void sub_1D6ABB84C()
{
  if (!qword_1EDF17948)
  {
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17948);
    }
  }
}

uint64_t sub_1D6ABB8A4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return sub_1D6ABB1A4(v2);
}

uint64_t sub_1D6ABB950()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D5B64680;

  return sub_1D6DCEEAC(v2, v3, v4);
}

uint64_t sub_1D6ABBA10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6DCEF94(a1, v4, v5, v6);
}

uint64_t sub_1D6ABBB0C(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1D6ABBB80()
{
  if (!qword_1EC891330)
  {
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC891330);
    }
  }
}

uint64_t type metadata accessor for DebugFormatLayoutModel(uint64_t a1)
{
  result = qword_1EC891338;
  if (!qword_1EC891338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6ABBD20(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_1D6ABBC8C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6ABBDEC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D6998094(0, v2, 0);
    v3 = v24;
    v6 = (a1 + 32);
    do
    {
      v7 = *a2;
      v8 = v6[3];
      v9 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v8);
      v10 = *(v9 + 40);

      v10(&v22, v8, v9);
      v11 = v22;
      LOBYTE(v9) = sub_1D61851A4(v22, *(&v22 + 1), v7);

      sub_1D5BF6680(v11, *(&v11 + 1));
      if (v9)
      {
        v12 = 0;
      }

      else
      {
        v13 = v6[3];
        v14 = v6[4];
        __swift_project_boxed_opaque_existential_1(v6, v13);
        (*(v14 + 40))(v21, v13, v14);
        sub_1D5FEAEF8(&v22, v21[0], v21[1]);
        sub_1D5BF6680(v22, *(&v22 + 1));
        v12 = 1;
      }

      sub_1D5B68374(v6, &v22);
      v23[24] = v12;
      v24 = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D6998094((v15 > 1), v16 + 1, 1);
        v3 = v24;
      }

      *(v3 + 16) = v16 + 1;
      v17 = (v3 + 48 * v16);
      v18 = v22;
      v19 = *v23;
      *(v17 + 57) = *&v23[9];
      v17[2] = v18;
      v17[3] = v19;
      v6 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1D6ABBFAC()
{
  sub_1D6ABBC8C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69F80E4(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DebugFormatLayoutModel(0);
  sub_1D6AC2DFC(v0 + *(v9 + 32), v4, sub_1D6ABBC8C);
  v10 = type metadata accessor for FormatSourceMapEntry(0);
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    sub_1D6AC314C(v4, sub_1D6ABBC8C);
    v11 = type metadata accessor for FormatSourceMapContext(0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  else
  {
    sub_1D6AC2DFC(&v4[*(v10 + 24)], v8, sub_1D69F80E4);
    sub_1D6AC314C(v4, type metadata accessor for FormatSourceMapEntry);
    v12 = type metadata accessor for FormatSourceMapContext(0);
    if ((*(*(v12 - 8) + 48))(v8, 1, v12) != 1)
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v15 = sub_1D6B98AF0(v14);
        v18 = MEMORY[0x1E69E7CD0];
        v16 = sub_1D6ABBDEC(v15, &v18);

        return v16;
      }

      sub_1D6AC314C(v8, type metadata accessor for FormatSourceMapContext);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6ABC250()
{
  v1 = *(v0 + 40);
  if (v1 > 2)
  {
    v4 = *v0;
    if (v1 == 3)
    {
      result = 0x6E6F74747542;
      switch((v4 >> 59) & 0x1E | (v4 >> 2) & 1)
      {
        case 1uLL:
          result = 1954047316;
          break;
        case 2uLL:
          result = 2003134806;
          break;
        case 3uLL:
          return result;
        case 4uLL:
          if (*(*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 152))
          {
            result = 0x756F72476B73614DLL;
          }

          else
          {
            result = 0x70756F7247;
          }

          break;
        case 5uLL:
          result = 0x6465626D45626557;
          break;
        case 6uLL:
          result = 0x6569566574617453;
          break;
        case 7uLL:
          result = 0x6D6F74737543;
          break;
        case 8uLL:
          result = 0x63697274654D6441;
          break;
        case 9uLL:
          result = 1633904973;
          break;
        case 0xAuLL:
          result = 0x4D6465726579614CLL;
          break;
        case 0xBuLL:
          result = 0x6F65646956;
          break;
        case 0xCuLL:
          result = 0x766F436575737349;
          break;
        case 0xDuLL:
          result = 0xD000000000000010;
          break;
        case 0xEuLL:
          result = 0x616C506F65646956;
          break;
        case 0xFuLL:
          result = 0x73736572676F7250;
          break;
        case 0x10uLL:
          result = 1835365449;
          break;
        case 0x11uLL:
          result = 0x6D45656C7A7A7550;
          break;
        case 0x12uLL:
          result = 0x65726F736E6F7053;
          break;
        default:
          result = 0x6567616D49;
          break;
      }
    }

    else
    {
      if (v1 == 4)
      {

        v10 = 0x28206E6F74747542;
        sub_1D71C0F40();
        v6 = v5;
        v8 = v7;

        MEMORY[0x1DA6F9910](v6, v8);
      }

      else
      {
        v9 = v0[1];

        v10 = 0x28206574617453;
        MEMORY[0x1DA6F9910](v4, v9);
      }

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      return v10;
    }
  }

  else
  {
    v2 = 1835365449;
    if (v1 != 1)
    {
      v2 = 0x656D656C70707553;
    }

    if (*(v0 + 40))
    {
      return v2;
    }

    else
    {
      return 0x697461726F636544;
    }
  }

  return result;
}

uint64_t sub_1D6ABC93C(uint64_t a1, __n128 a2)
{
  v3 = *v2;
  v4 = *(v2 + 40);
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        v6 = v2[1];
      }

      else
      {
        v6 = *(v2[2] + 32);
      }

LABEL_13:
      v7 = *(v6 + 48);
      goto LABEL_14;
    }

    v7 = sub_1D6EE8B60(a2);
  }

  else
  {
    if (*(v2 + 40))
    {
      if (v4 == 1)
      {
        v5 = &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
      }

      else
      {
        v5 = &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
      }

      v6 = *(v3 + *v5);
      goto LABEL_13;
    }

    v7 = *(v3 + 16);
  }

LABEL_14:

  return v7;
}

uint64_t sub_1D6ABC9F0(__n128 a1)
{
  v2 = *(v1 + 40);
  if (*(v1 + 40) <= 2u)
  {
    if (!*(v1 + 40))
    {
      return v2;
    }

    if (v2 == 1)
    {
      v3 = &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    else
    {
      v3 = &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    v4 = *(*v1 + *v3);
    goto LABEL_13;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      v4 = *(v1 + 8);
    }

    else
    {
      v4 = *(*(v1 + 16) + 32);
    }

LABEL_13:
    v2 = *(v4 + 64);
    goto LABEL_14;
  }

  v2 = sub_1D6EE8E64(a1);
LABEL_14:

  return v2;
}

uint64_t sub_1D6ABCAA4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);
  if (*(v0 + 40) > 2u)
  {
    if (v4 == 3)
    {
      v4 = 1954047348;
      switch((v2 >> 59) & 0x1E | (v2 >> 2) & 1)
      {
        case 1uLL:
          return v4;
        case 2uLL:
          v4 = 2003134838;
          break;
        case 3uLL:
          v4 = 0x6E6F74747562;
          break;
        case 4uLL:
          v4 = 0x70756F7267;
          break;
        case 5uLL:
          v4 = 0x6465626D45626577;
          break;
        case 6uLL:
          v4 = 0x6569566574617473;
          break;
        case 7uLL:
          v4 = 0x6D6F74737563;
          break;
        case 8uLL:
          v4 = 0x63697274654D6461;
          break;
        case 9uLL:
          v4 = 1633905005;
          break;
        case 0xAuLL:
          v4 = 0x4D6465726579616CLL;
          break;
        case 0xBuLL:
          v4 = 0x6F65646976;
          break;
        case 0xCuLL:
          v4 = 0x766F436575737369;
          break;
        case 0xDuLL:
          v4 = 0xD000000000000010;
          break;
        case 0xEuLL:
          v4 = 0x616C506F65646976;
          break;
        case 0xFuLL:
          v4 = 0x73736572676F7270;
          break;
        case 0x10uLL:
          v4 = 1835365481;
          break;
        case 0x11uLL:
          v4 = 0x6D45656C7A7A7570;
          break;
        case 0x12uLL:
          v4 = 0x65726F736E6F7073;
          break;
        default:
          v4 = 0x6567616D69;
          break;
      }
    }

    else
    {
      if (v4 == 4)
      {
        v8 = *(v1 + 96);

        v4 = sub_1D6EE5A3C(v8);
      }

      else
      {
        v10 = *(*(v3 + 32) + 96);

        v4 = sub_1D6EE5A3C(v10);
      }
    }
  }

  else if (*(v0 + 40))
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    if (v4 == 1)
    {
      sub_1D6AC2C20(v2, v1, v3, v5, v6, 1u);

      v4 = sub_1D6EE5A3C(v7);

      sub_1D6AC2D2C(v2, v1, v3, v5, v6, 1u);
    }

    else
    {
      sub_1D6AC2C20(v2, v1, v3, v5, v6, 2u);

      v4 = sub_1D6EE5A3C(v9);

      sub_1D6AC2D2C(v2, v1, v3, v5, v6, 2u);
    }
  }

  return v4;
}

__n128 sub_1D6ABCE58()
{
  result = *(v0 + 8);
  v2 = *(v0 + 40);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      result.n128_f64[0] = sub_1D6EE5E70();
      result.n128_u64[1] = v5;
    }

    else
    {
      if (v2 == 4)
      {
        v4 = *(v0 + 8);

        swift_beginAccess();
        v8 = *(v4 + 16);
      }

      else
      {
        v7 = *(result.n128_u64[1] + 32);

        swift_beginAccess();
        v8 = *(v7 + 16);
      }

      return v8;
    }
  }

  else if (*(v0 + 40))
  {
    if (v2 == 1)
    {
      v3 = &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    else
    {
      v3 = &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    v6 = *(*v0 + *v3);
    swift_beginAccess();
    return v6[1];
  }

  return result;
}

void sub_1D6ABCF84(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      sub_1D6EE6210(a1);
      return;
    }

    v3 = *(v1 + 16);
    if (v2 != 4)
    {
      v3 = *(v3 + 40);
    }
  }

  else
  {
    if (!*(v1 + 40))
    {
      *a1 = 0;
      return;
    }

    v3 = *(*v1 + 40);
  }

  *a1 = v3;
}

double sub_1D6ABD018(__n128 a1)
{
  v2 = *(v1 + 40);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      sub_1D6EE5E70();
    }

    else
    {
      if (v2 == 4)
      {

        swift_beginAccess();
      }

      else
      {

        swift_beginAccess();
      }
    }
  }

  else if (*(v1 + 40))
  {
    swift_beginAccess();
  }

  return 0.0;
}

uint64_t sub_1D6ABD140(__n128 a1)
{
  result = 0;
  v3 = *v1;
  v4 = *(v1 + 40);
  if (v4 > 2)
  {
    if (v4 - 4 >= 2)
    {
      return sub_1D6EE65AC(a1);
    }
  }

  else if (*(v1 + 40))
  {
    if (v4 != 1)
    {
      if (*(v3 + 56))
      {
        return 0;
      }

      else
      {
        return *(v3 + 48);
      }
    }
  }

  else if (*(v3 + 88))
  {
    return -100;
  }

  else
  {
    return *(v3 + 80);
  }

  return result;
}

uint64_t sub_1D6ABD1C8()
{
  v1 = *v0;
  if (*(v0 + 40) > 2u)
  {
    if (*(v0 + 40) - 4 >= 2)
    {
      v4 = 0;
      switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
      {
        case 1uLL:
        case 5uLL:
          v6 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          goto LABEL_32;
        case 2uLL:
          v7 = qword_1EDF31DD0;
          v8 = type metadata accessor for FormatViewData;
          v9 = sub_1D6AC2EDC;
          goto LABEL_23;
        case 3uLL:
        case 6uLL:
        case 8uLL:
        case 0xDuLL:
        case 0x12uLL:
          return v4;
        case 4uLL:
          v2 = *(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 192);
          if (!v2)
          {
            return 0;
          }

          goto LABEL_4;
        case 7uLL:
          v2 = *(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 128);
          if (!v2)
          {
            return 0;
          }

          goto LABEL_4;
        case 9uLL:
          v7 = &qword_1EC884E90;
          v8 = type metadata accessor for FormatMicaData;
          v9 = type metadata accessor for FormatMicaNodeLayoutAttributes;
LABEL_23:
          sub_1D6AC2FE0(0, v7, v8, v9);
          v6 = *(swift_projectBox() + *(v15 + 48));
          goto LABEL_32;
        case 0xAuLL:
          v10 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
          goto LABEL_29;
        case 0xBuLL:
          v11 = &qword_1EC884E78;
          v12 = type metadata accessor for FormatVideoData;
          v13 = sub_1D6AC2E64;
          goto LABEL_19;
        case 0xCuLL:
          v10 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
          goto LABEL_29;
        case 0xEuLL:
          v11 = &qword_1EC880340;
          v12 = type metadata accessor for FormatVideoPlayerData;
          v13 = sub_1D6AC2DC8;
LABEL_19:
          sub_1D6AC2FE0(0, v11, v12, v13);
          v10 = *(swift_projectBox() + *(v14 + 48));
LABEL_29:
          v2 = *(v10 + 144);
          if (!v2)
          {
            return 0;
          }

          goto LABEL_4;
        case 0xFuLL:
          v6 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          goto LABEL_32;
        case 0x10uLL:
          sub_1D6AC2FE0(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
          v2 = *(*(swift_projectBox() + *(v16 + 48)) + 32);
          if (!v2)
          {
            return 0;
          }

          goto LABEL_4;
        case 0x11uLL:
          v17 = *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          if (!*(v17 + 104))
          {
            return 0;
          }

          v3 = (v17 + 112);
          goto LABEL_8;
        default:
          v6 = *(v1 + 24);
LABEL_32:
          v2 = *(v6 + 96);
          if (!v2)
          {
            return 0;
          }

          goto LABEL_4;
      }
    }
  }

  else
  {
    if (!*(v0 + 40))
    {
      v3 = (v1 + 16);
      goto LABEL_8;
    }

    v2 = *(v1 + 32);
    if (v2)
    {
LABEL_4:
      v3 = (v2 + 32);
LABEL_8:
      v4 = *v3;

      return v4;
    }
  }

  return 0;
}

uint64_t sub_1D6ABD490()
{
  sub_1D6ABBC8C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69F80E4(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DebugFormatLayoutModel(0);
  sub_1D6AC2DFC(v0 + *(v9 + 32), v4, sub_1D6ABBC8C);
  v10 = type metadata accessor for FormatSourceMapEntry(0);
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    v11 = sub_1D6ABBC8C;
    v12 = v4;
  }

  else
  {
    sub_1D6AC2DFC(&v4[*(v10 + 24)], v8, sub_1D69F80E4);
    sub_1D6AC314C(v4, type metadata accessor for FormatSourceMapEntry);
    v13 = type metadata accessor for FormatSourceMapContext(0);
    if ((*(*(v13 - 8) + 48))(v8, 1, v13) != 1)
    {
      v14 = sub_1D60682B0();
      sub_1D6AC314C(v8, type metadata accessor for FormatSourceMapContext);
      return v14;
    }

    v11 = sub_1D69F80E4;
    v12 = v8;
  }

  sub_1D6AC314C(v12, v11);
  if (qword_1EC87DBF0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC9BAD18;

  return v14;
}

void *sub_1D6ABD6E0(uint64_t a1)
{
  v459 = *MEMORY[0x1E69E9840];
  sub_1D6AC2BB8(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  *&v418 = &v401 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v417 = type metadata accessor for FormatVideoPlayerData(0);
  *&v416 = *(v417 - 8);
  v7 = MEMORY[0x1EEE9AC00](v417, v6);
  v422 = &v401 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FCC6B8(0, v7);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v411 = &v401 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatShareAttributionData(0);
  v409 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v413 = &v401 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC2BEC(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v414 = &v401 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = type metadata accessor for FormatVideoData(0);
  v410 = *(v412 - 8);
  MEMORY[0x1EEE9AC00](v412, v18);
  *&v419 = &v401 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v424 = sub_1D726035C();
  v423.n128_u64[0] = *(v424 - 8);
  MEMORY[0x1EEE9AC00](v424, v20);
  v22 = &v401 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v421 = (&v401 - v25);
  v26 = type metadata accessor for FormatAdMetricsData(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  *&v420 = &v401 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FormatMicaData(0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v401 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC30E8(0, &qword_1EC88B638, MEMORY[0x1E69D87C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  *&v415 = &v401 - v35;
  sub_1D6A69418(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v401 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FormatButtonNodeData(0);
  v408 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v401 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D6ABD018(v44);
  sub_1D6A9DF10(a1, &v449, 0.0, 0.0, v45, v46);
  v48 = *v1;
  v47 = *(v1 + 8);
  v50 = *(v1 + 16);
  v49 = *(v1 + 24);
  v51 = *(v1 + 32);
  v52 = *(v1 + 40);
  if (v52 > 2)
  {
    if (v52 != 3)
    {
LABEL_6:
      sub_1D6202060(&v449);
      return 0;
    }

    switch((v48 >> 59) & 0x1E | (v48 >> 2) & 1)
    {
      case 1uLL:
        v254 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v406 = *(v1 + 8);
        v255 = v406;
        v407 = v50;
        v256 = v50;
        v257 = MEMORY[0x1E69E6F90];
        v258 = v49;
        v230 = v51;
        v259 = v48;
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v260 = swift_allocObject();
        *(v260 + 16) = xmmword_1D7270C10;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v261 = v254[12];
        sub_1D6AC2C20(v259, v255, v256, v258, v230, 3u);
        v262 = sub_1D6DB1418(&v433, v261);
        *(v260 + 56) = &type metadata for FormatInspection;
        *(v260 + 64) = &off_1F51E3FD0;
        *(v260 + 32) = v262;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v257);
        sub_1D5EA74B8(0);
        v264 = (*(*(v263 - 8) + 80) + 32) & ~*(*(v263 - 8) + 80);
        v265 = swift_allocObject();
        *(v265 + 16) = xmmword_1D7273AE0;
        v266 = v254[19];
        v267 = v254[20];

        sub_1D711F844(1701667150, 0xE400000000000000, v266, v267, (v265 + v264));
        v268 = type metadata accessor for FormatInspectionItem(0);
        (*(*(v268 - 8) + 56))(v265 + v264, 0, 1, v268);
        sub_1D6795150(0x6D614E2077656956, 0xE900000000000065, 0, 0, v265, &v433);
        swift_setDeallocating();
        sub_1D6AC314C(v265 + v264, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v260 + 96) = &type metadata for FormatInspectionGroup;
        *(v260 + 104) = &off_1F518B2C0;
        v269 = swift_allocObject();
        *(v260 + 72) = v269;
        v270 = v434;
        *(v269 + 16) = v433;
        *(v269 + 32) = v270;
        *(v269 + 48) = v435;
        v59 = sub_1D7073500(v260);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v449);
        v72 = v259;
        v73 = v406;
        v74 = v407;
        v75 = v258;
        goto LABEL_26;
      case 2uLL:
        v406 = *(v1 + 8);
        v206 = v406;
        v407 = v50;
        v207 = v49;
        v404 = v49;
        v405 = v51;
        v208 = v51;
        v209 = v48;
        sub_1D6AC2FE0(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, sub_1D6AC2EDC);
        v211 = (swift_projectBox() + *(v210 + 48));
        v212 = *v211;
        v213 = v211[2];
        *&v424 = v211[3];
        v214 = v211[4];
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v215 = *(v212 + 96);
        v216 = v206;
        v217 = v407;
        sub_1D6AC2C20(v209, v216, v407, v207, v208, 3u);

        v218 = v213;
        v219 = v424;
        sub_1D5EBC314(v213, v424, v214);

        v59 = sub_1D679BC28(&v433, v215);

        sub_1D5EBC358(v218, v219, v214);

        sub_1D6202060(&v449);
        v72 = v209;
        v73 = v406;
        v74 = v217;
        goto LABEL_59;
      case 3uLL:
        v228 = *(v1 + 8);
        v229 = *(v1 + 16);
        v404 = *(v1 + 24);
        v230 = v51;
        v231 = v48;
        sub_1D6AC2FE0(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, sub_1D6AC305C);
        v403 = v231;
        v232 = swift_projectBox();
        sub_1D6AC2DFC(v232, v43, type metadata accessor for FormatButtonNodeData);
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v233 = swift_allocObject();
        *(v233 + 16) = xmmword_1D7273AE0;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        sub_1D6AC2DFC(v43, v39, type metadata accessor for FormatButtonNodeData);
        (*(v408 + 56))(v39, 0, 1, v40);
        v234 = v231;
        v235 = v404;
        sub_1D6AC2C20(v234, v228, v229, v404, v230, 3u);
        v236 = sub_1D6A687D0(&v433, v39);
        sub_1D6AC314C(v39, sub_1D6A69418);
        *(v233 + 56) = &type metadata for FormatInspection;
        *(v233 + 64) = &off_1F51E3FD0;
        *(v233 + 32) = v236;
        v59 = sub_1D7073500(v233);
        swift_setDeallocating();
        sub_1D6AC314C(v233 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v449);
        sub_1D6AC314C(v43, type metadata accessor for FormatButtonNodeData);
        v72 = v403;
        v73 = v228;
        v74 = v229;
        v75 = v235;
LABEL_26:
        v76 = v230;
        break;
      case 4uLL:
        v163 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v422 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v164 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v423.n128_u64[0] = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        *&v424 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v165 = v47;
        v406 = v47;
        v407 = v50;
        v166 = v50;
        v167 = v49;
        v404 = v49;
        v405 = v51;
        v168 = v51;
        v169 = v48;
        v403 = v48;
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v170 = swift_allocObject();
        *(v170 + 16) = xmmword_1D7273AE0;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v171 = *(v163 + 192);
        sub_1D6AC2C20(v169, v165, v166, v167, v168, 3u);

        v172 = v423.n128_u64[0];
        v173 = v424;
        sub_1D5EBC314(v423.n128_i64[0], v164, v424);

        v174 = sub_1D6010808(&v433, v171);

        *(v170 + 56) = &type metadata for FormatInspection;
        *(v170 + 64) = &off_1F51E3FD0;
        *(v170 + 32) = v174;
        v59 = sub_1D7073500(v170);
        swift_setDeallocating();
        sub_1D6AC314C(v170 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v449);

        sub_1D5EBC358(v172, v164, v173);
        goto LABEL_58;
      case 5uLL:
        v406 = *(v1 + 8);
        v407 = v50;
        v404 = v49;
        v405 = v51;
        v403 = v48;
        v281 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        *&v424 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v282 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        v283 = MEMORY[0x1E69E6F90];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v284 = swift_allocObject();
        v420 = xmmword_1D7279970;
        *(v284 + 16) = xmmword_1D7279970;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v283);
        v286 = v285;
        sub_1D5EA74B8(0);
        v288 = v287;
        v289 = *(v287 - 8);
        v290 = *(v289 + 72);
        v291 = (*(v289 + 80) + 32) & ~*(v289 + 80);
        *&v418 = *(v289 + 80);
        *&v419 = v286;
        v292 = swift_allocObject();
        *(v292 + 16) = xmmword_1D7273AE0;
        v293 = v291;
        v294 = v292 + v291;
        v422 = v281;
        v423.n128_u64[0] = v288;
        v421 = v290;
        swift_beginAccess();
        if (!v282)
        {
          v282 = v281;
        }

        v363 = *(v282 + 80);
        v416 = *(v282 + 64);
        v417 = v363;
        v364 = type metadata accessor for FormatInspectionItem(0);
        v365 = v294 + *(v364 + 24);
        v366 = v417;
        *v365 = v416;
        *(v365 + 16) = v366;
        *(v365 + 32) = 0;
        *(v365 + 40) = 0;
        *(v365 + 48) = 1;
        v367 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v367 - 8) + 56))(v365, 0, 1, v367);
        v368 = v293;
        *(v292 + v293) = xmmword_1D72E27B0;
        *(v294 + 16) = 0;
        *(v294 + 24) = 0;
        v369 = v294 + *(v364 + 28);
        *v369 = 0;
        *(v369 + 8) = 0;
        *(v369 + 16) = -1;
        v370 = *(v364 - 8);
        *&v416 = *(v370 + 56);
        *&v417 = v370 + 56;
        (v416)(v294, 0, 1, v364);

        sub_1D6795150(0x20746E65746E6F43, 0xED0000656D617246, 0, 0, v292, &v443);
        swift_setDeallocating();
        sub_1D6AC314C(v294, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v284 + 56) = &type metadata for FormatInspectionGroup;
        *(v284 + 64) = &off_1F518B2C0;
        v371 = swift_allocObject();
        *(v284 + 32) = v371;
        v372 = v444;
        *(v371 + 16) = v443;
        *(v371 + 32) = v372;
        *(v371 + 48) = *&v445[0];
        v373 = v421;
        v374 = 2 * v421;
        v375 = swift_allocObject();
        *(v375 + 16) = v420;
        v376 = (v375 + v368);
        v377 = v422;
        v378 = *(v422 + 168);
        v379 = *(v422 + 176);

        v380 = sub_1D711F844(0x6E6F697461636F4CLL, 0xE800000000000000, v378, v379, v376);
        v381 = v416;
        (v416)(v376, 0, 1, v364, v380);
        if (*(v377 + 184))
        {
          v382 = 0x6567616D49;
        }

        else
        {
          v382 = 0x7765695620626557;
        }

        if (*(v377 + 184))
        {
          v383 = 0xE500000000000000;
        }

        else
        {
          v383 = 0xE800000000000000;
        }

        v384 = sub_1D711F844(0x6E697265646E6552, 0xE900000000000067, v382, v383, v373 + v376);
        v381(v373 + v376, 0, 1, v364, v384);
        v385 = v415;
        sub_1D6AC13F8(v424, v415);
        sub_1D712E754(0x6769666E6F43, 0xE600000000000000, v385, &v376[v374]);
        (v381)(&v376[v374], 0, 1, v364);
        sub_1D6795150(0x72756769666E6F43, 0xED00006E6F697461, 0, 0, v375, &v425);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        *(v284 + 96) = &type metadata for FormatInspectionGroup;
        *(v284 + 104) = &off_1F518B2C0;
        v386 = swift_allocObject();
        *(v284 + 72) = v386;
        v387 = v426;
        *(v386 + 16) = v425;
        *(v386 + 32) = v387;
        *(v386 + 48) = *&v427[0];
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v388 = sub_1D6193AA8(&v433, *(v377 + 96));
        *(v284 + 136) = &type metadata for FormatInspection;
        *(v284 + 144) = &off_1F51E3FD0;
        *(v284 + 112) = v388;
        v59 = sub_1D7073500(v284);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        goto LABEL_57;
      case 6uLL:
        v301 = *(*((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 72);
        v403 = v48;
        if (v301 < 0)
        {
          v305 = v47;
          v304 = v50;
          v179 = v49;
          v180 = v51;
          sub_1D6AC2C20(v48, v47, v50, v49, v51, 3u);
        }

        else
        {
          v303 = *(a1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter);
          v302 = *(a1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_commandCenter + 8);
          v180 = v51;
          v179 = v49;
          v304 = v50;
          v305 = v47;

          sub_1D6CC591C(v303, v302, &v433);
          v433 = __PAIR128__(v435, *(&v434 + 1));
          sub_1D69D10F8(0);
          swift_allocObject();

          sub_1D725AB4C();
        }

        v389 = MEMORY[0x1E69E6F90];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v390 = swift_allocObject();
        v424 = xmmword_1D7273AE0;
        *(v390 + 16) = xmmword_1D7273AE0;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v389);
        sub_1D5EA74B8(0);
        v392 = (*(*(v391 - 8) + 80) + 32) & ~*(*(v391 - 8) + 80);
        v393 = swift_allocObject();
        *(v393 + 16) = v424;
        sub_1D725AB5C();
        sub_1D711F844(0x6574617453, 0xE500000000000000, v433, *(&v433 + 1), (v393 + v392));
        v394 = type metadata accessor for FormatInspectionItem(0);
        (*(*(v394 - 8) + 56))(v393 + v392, 0, 1, v394);
        sub_1D6795150(0x614D206574617453, 0xED0000656E696863, 0, 0, v393, &v433);
        swift_setDeallocating();
        sub_1D6AC314C(v393 + v392, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v390 + 56) = &type metadata for FormatInspectionGroup;
        *(v390 + 64) = &off_1F518B2C0;
        v395 = swift_allocObject();
        *(v390 + 32) = v395;
        v396 = v434;
        *(v395 + 16) = v433;
        *(v395 + 32) = v396;
        *(v395 + 48) = v435;
        v59 = sub_1D7073500(v390);
        swift_setDeallocating();
        sub_1D6AC314C(v390 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v449);

        v72 = v403;
        v73 = v305;
        v74 = v304;
        goto LABEL_54;
      case 7uLL:
        v237 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v406 = *(v1 + 8);
        v407 = v50;
        v238 = MEMORY[0x1E69E6F90];
        v404 = v49;
        v405 = v51;
        v403 = v48;
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v239 = swift_allocObject();
        *(v239 + 16) = xmmword_1D7270C10;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v238);
        sub_1D5EA74B8(0);
        v241 = (*(*(v240 - 8) + 80) + 32) & ~*(*(v240 - 8) + 80);
        v242 = swift_allocObject();
        *(v242 + 16) = xmmword_1D7273AE0;
        v243 = (v242 + v241);

        v244 = sub_1D7264C5C();
        v246 = v245;
        v247 = type metadata accessor for FormatInspectionItem(0);
        v248 = (v243 + *(v247 + 24));
        *v248 = 0;
        v248[1] = 0xE000000000000000;
        v249 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v249 - 8) + 56))(v248, 0, 1, v249);
        *v243 = v244;
        v243[1] = v246;
        v243[2] = 0;
        v243[3] = 0;
        v250 = v243 + *(v247 + 28);
        *v250 = 0;
        *(v250 + 1) = 0;
        v250[16] = -1;
        (*(*(v247 - 8) + 56))(v243, 0, 1, v247);
        sub_1D6795150(0x4320656372756F53, 0xEC0000007373616CLL, 0, 0, v242, &v425);
        swift_setDeallocating();
        sub_1D6AC314C(v243, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v239 + 56) = &type metadata for FormatInspectionGroup;
        *(v239 + 64) = &off_1F518B2C0;
        v251 = swift_allocObject();
        *(v239 + 32) = v251;
        v252 = v426;
        *(v251 + 16) = v425;
        *(v251 + 32) = v252;
        *(v251 + 48) = *&v427[0];
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v253 = sub_1D615AE50(&v433, *(v237 + 128));
        *(v239 + 96) = &type metadata for FormatInspection;
        *(v239 + 104) = &off_1F51E3FD0;
        *(v239 + 72) = v253;
        v59 = sub_1D7073500(v239);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        goto LABEL_57;
      case 8uLL:
        v318 = *(v1 + 32);
        v319 = *(v1 + 24);
        v320 = *(v1 + 16);
        v321 = *(v1 + 8);
        v322 = *v1;
        sub_1D61CAFE8(0);
        v324 = v323;
        v325 = swift_projectBox();
        v326 = *(v325 + *(v324 + 64));
        sub_1D6AC2DFC(v325, v420, type metadata accessor for FormatAdMetricsData);
        v403 = v322;
        v327 = v322;
        v406 = v321;
        v407 = v320;
        v328 = v319;
        v329 = v318;
        sub_1D6AC2C20(v327, v321, v320, v319, v318, 3u);

        sub_1D72603AC();
        sub_1D726038C();
        v330 = v421;
        sub_1D7260CCC();

        sub_1D6AC2F90(0, &qword_1EC88EB30, &type metadata for FormatInspectionGroup, MEMORY[0x1E69E6F90]);
        v331 = swift_allocObject();
        *(v331 + 16) = xmmword_1D7270C10;
        (*(v423.n128_u64[0] + 16))(v22, v330, v424);
        sub_1D62E5070(v22, &v443);
        v332 = v444;
        *(v331 + 32) = v443;
        *(v331 + 48) = v332;
        *(v331 + 64) = *&v445[0];
        v333 = sub_1D72602CC();
        sub_1D62E5478(v333, &v425);
        v334 = v426;
        *(v331 + 72) = v425;
        *(v331 + 88) = v334;
        *(v331 + 104) = *&v427[0];
        if (v326)
        {
          sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
          sub_1D5EA74B8(0);
          v336 = (*(*(v335 - 8) + 80) + 32) & ~*(*(v335 - 8) + 80);
          v337 = swift_allocObject();
          *(v337 + 16) = xmmword_1D7273AE0;
          v338 = v337 + v336;
          swift_beginAccess();
          v339 = type metadata accessor for FormatInspectionItem(0);
          v340 = v338 + *(v339 + 24);
          v341 = *(v326 + 80);
          *v340 = *(v326 + 64);
          *(v340 + 16) = v341;
          *(v340 + 32) = 0;
          *(v340 + 40) = 0;
          *(v340 + 48) = 1;
          v342 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v342 - 8) + 56))(v340, 0, 1, v342);
          *v338 = xmmword_1D731C260;
          *(v338 + 16) = 0;
          *(v338 + 24) = 0;
          v343 = v338 + *(v339 + 28);
          *v343 = 0;
          *(v343 + 8) = 0;
          *(v343 + 16) = -1;
          (*(*(v339 - 8) + 56))(v338, 0, 1, v339);

          sub_1D6795150(0x2079636176697250, 0xEE0072656B72614DLL, 0, 0, v337, &v433);
          swift_setDeallocating();
          sub_1D6AC314C(v338, sub_1D5EA74B8);
          swift_deallocClassInstance();
          v331 = sub_1D698BB14(1, 3, 1, v331);

          *(v331 + 16) = 3;
          v344 = v434;
          *(v331 + 112) = v433;
          *(v331 + 128) = v344;
          *(v331 + 144) = v435;
        }

        v345 = sub_1D5F63640(v331);

        v59 = sub_1D7073500(v345);

        sub_1D6202060(&v449);

        (*(v423.n128_u64[0] + 8))(v421, v424);
        sub_1D6AC314C(v420, type metadata accessor for FormatAdMetricsData);
        v72 = v403;
        v73 = v406;
        v74 = v407;
        v75 = v328;
        v76 = v329;
        break;
      case 9uLL:
        v406 = *(v1 + 8);
        v407 = v50;
        v186 = v50;
        v187 = v49;
        v404 = v49;
        v405 = v51;
        v188 = v51;
        v189 = v48;
        sub_1D6AC2FE0(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
        v191 = v190;
        v403 = v189;
        v192 = swift_projectBox();
        v193 = *(v192 + *(v191 + 48));
        v402 = v32;
        sub_1D6AC2DFC(v192, v32, type metadata accessor for FormatMicaData);
        v194 = MEMORY[0x1E69E6F90];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v195 = swift_allocObject();
        *(v195 + 16) = xmmword_1D7279970;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v196 = *(v193 + 96);
        sub_1D6AC2C20(v189, v406, v186, v187, v188, 3u);

        v197 = sub_1D6D90460(&v433, v196);

        *(v195 + 56) = &type metadata for FormatInspection;
        *(v195 + 64) = &off_1F51E3FD0;
        *(v195 + 32) = v197;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v198 = v402;
        v199 = sub_1D671FE3C(&v433, &v402[*(v29 + 20)]);
        *(v195 + 96) = &type metadata for FormatInspection;
        *(v195 + 104) = &off_1F51E3FD0;
        *(v195 + 72) = v199;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v194);
        sub_1D5EA74B8(0);
        v201 = (*(*(v200 - 8) + 80) + 32) & ~*(*(v200 - 8) + 80);
        v202 = swift_allocObject();
        *(v202 + 16) = xmmword_1D7273AE0;
        sub_1D712EA64(0x65646F4D206E7552, 0xE800000000000000, *(v198 + *(v29 + 24)) | (*(v198 + *(v29 + 24) + 4) << 32), (v202 + v201));
        v203 = type metadata accessor for FormatInspectionItem(0);
        (*(*(v203 - 8) + 56))(v202 + v201, 0, 1, v203);
        sub_1D6795150(0x656E696C656D6954, 0xE800000000000000, 0, 0, v202, &v433);
        swift_setDeallocating();
        sub_1D6AC314C(v202 + v201, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v195 + 136) = &type metadata for FormatInspectionGroup;
        *(v195 + 144) = &off_1F518B2C0;
        v204 = swift_allocObject();
        *(v195 + 112) = v204;
        v205 = v434;
        *(v204 + 16) = v433;
        *(v204 + 32) = v205;
        *(v204 + 48) = v435;
        v59 = sub_1D7073500(v195);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v449);

        v143 = type metadata accessor for FormatMicaData;
        v144 = v198;
        goto LABEL_20;
      case 0xAuLL:
        v306 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        *&v424 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v307 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v423.n128_u64[0] = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        LODWORD(v422) = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v308 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
        v309 = v47;
        v406 = v47;
        v407 = v50;
        v310 = v50;
        v311 = v49;
        v312 = v51;
        v313 = v48;
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v314 = swift_allocObject();
        *(v314 + 16) = xmmword_1D7270C10;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v315 = *(v308 + 144);
        sub_1D6AC2C20(v313, v309, v310, v311, v312, 3u);
        v316 = sub_1D67AEC44(&v433, v315);
        *(v314 + 56) = &type metadata for FormatInspection;
        *(v314 + 64) = &off_1F51E3FD0;
        *(v314 + 32) = v316;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v425.n128_u64[0] = v424;
        v425.n128_u64[1] = v306;
        v426.n128_u64[0] = v423.n128_u64[0];
        v426.n128_u64[1] = v307;
        LOBYTE(v427[0]) = v422;

        v317 = sub_1D71A29F4(&v433, &v425);
        sub_1D6AC2E98(v425.n128_i64[0], v425.n128_i64[1]);
        *(v314 + 96) = &type metadata for FormatInspection;
        *(v314 + 104) = &off_1F51E3FD0;
        *(v314 + 72) = v317;
        v59 = sub_1D7073500(v314);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v449);
        v72 = v313;
        v73 = v406;
        v74 = v407;
        goto LABEL_43;
      case 0xBuLL:
        v406 = *(v1 + 8);
        v407 = v50;
        v145 = v49;
        v404 = v49;
        v405 = v51;
        v146 = v51;
        v147 = v48;
        sub_1D6AC2FE0(0, &qword_1EC884E78, type metadata accessor for FormatVideoData, sub_1D6AC2E64);
        v149 = v148;
        v403 = v147;
        v150 = swift_projectBox();
        v151 = (v150 + *(v149 + 48));
        v152 = *v151;
        v153 = v151[1];
        v154 = v151[3];
        *&v420 = v151[2];
        *&v424 = v151[4];
        v155 = v424;
        v421 = type metadata accessor for FormatVideoData;
        v422 = v153;
        sub_1D6AC2DFC(v150, v419, type metadata accessor for FormatVideoData);
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v156 = swift_allocObject();
        *(v156 + 16) = xmmword_1D7270C10;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v423.n128_u64[0] = v152;
        v157 = *(v152 + 144);
        sub_1D6AC2C20(v147, v406, v407, v145, v146, 3u);

        v158 = v420;
        sub_1D5EBC314(v420, v154, v155);

        v159 = sub_1D6889468(&v433, v157);

        *(v156 + 56) = &type metadata for FormatInspection;
        *(v156 + 64) = &off_1F51E3FD0;
        *(v156 + 32) = v159;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v160 = v419;
        v161 = v414;
        sub_1D6AC2DFC(v419, v414, v421);
        (*(v410 + 56))(v161, 0, 1, v412);
        v162 = sub_1D6B681E4(&v433, v161);
        sub_1D6AC314C(v161, sub_1D6AC2BEC);
        *(v156 + 96) = &type metadata for FormatInspection;
        *(v156 + 104) = &off_1F51E3FD0;
        *(v156 + 72) = v162;
        v59 = sub_1D7073500(v156);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v449);

        sub_1D5EBC358(v158, v154, v424);
        v143 = type metadata accessor for FormatVideoData;
        v144 = v160;
        goto LABEL_20;
      case 0xCuLL:
        v175 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v443 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v444 = v175;
        v445[0] = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        *(v445 + 9) = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x39);
        v176 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
        v177 = v47;
        v406 = v47;
        v407 = v50;
        v178 = v50;
        v179 = v49;
        v180 = v51;
        v181 = v48;
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v182 = swift_allocObject();
        *(v182 + 16) = xmmword_1D7270C10;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v183 = *(v176 + 144);
        sub_1D6AC2C20(v181, v177, v178, v179, v180, 3u);
        v184 = sub_1D615EEF4(&v433, v183);
        *(v182 + 56) = &type metadata for FormatInspection;
        *(v182 + 64) = &off_1F51E3FD0;
        *(v182 + 32) = v184;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v430 = v443;
        v431 = v444;
        v432[0] = v445[0];
        *(v432 + 9) = *(v445 + 9);
        sub_1D5EBC4A0(&v443, &v425);
        v185 = sub_1D70B3C30(&v433, &v430);
        v425 = v430;
        v426 = v431;
        v427[0] = v432[0];
        *(v427 + 9) = *(v432 + 9);
        sub_1D6AC2CBC(&v425, &qword_1EC891358, &type metadata for FormatIssueCoverData, *(v432 + 9));
        *(v182 + 96) = &type metadata for FormatInspection;
        *(v182 + 104) = &off_1F51E3FD0;
        *(v182 + 72) = v185;
        v59 = sub_1D7073500(v182);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v449);
        v72 = v181;
        v73 = v406;
        v74 = v407;
LABEL_54:
        v75 = v179;
        v76 = v180;
        break;
      case 0xDuLL:
        v118 = *(v1 + 8);
        v119 = *(v1 + 16);
        v120 = *(v1 + 24);
        v405 = *(v1 + 32);
        v295 = v48;
        sub_1D6AC2FE0(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
        v296 = swift_projectBox();
        v297 = v413;
        sub_1D6AC2DFC(v296, v413, type metadata accessor for FormatShareAttributionData);
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v298 = swift_allocObject();
        *(v298 + 16) = xmmword_1D7273AE0;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v299 = v411;
        sub_1D6AC2DFC(v297, v411, type metadata accessor for FormatShareAttributionData);
        (*(v409 + 56))(v299, 0, 1, v12);
        v121 = v405;
        sub_1D6AC2C20(v295, v118, v119, v120, v405, 3u);
        v300 = sub_1D5FCC280(&v433, v299);
        sub_1D6AC314C(v299, sub_1D5FCC6B8);
        *(v298 + 56) = &type metadata for FormatInspection;
        *(v298 + 64) = &off_1F51E3FD0;
        *(v298 + 32) = v300;
        v59 = sub_1D7073500(v298);
        swift_setDeallocating();
        sub_1D6AC314C(v298 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v449);
        sub_1D6AC314C(v297, type metadata accessor for FormatShareAttributionData);
        v72 = v295;
        goto LABEL_32;
      case 0xEuLL:
        v406 = *(v1 + 8);
        v407 = v50;
        v126 = v49;
        v404 = v49;
        v405 = v51;
        v127 = v51;
        v128 = v48;
        sub_1D6AC2FE0(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, sub_1D6AC2DC8);
        v130 = v129;
        v403 = v128;
        v131 = swift_projectBox();
        v132 = (v131 + *(v130 + 48));
        v133 = *v132;
        v421 = v132[1];
        v134 = v132[3];
        *&v419 = v132[2];
        *&v424 = v132[4];
        v135 = v424;
        *&v420 = type metadata accessor for FormatVideoPlayerData;
        sub_1D6AC2DFC(v131, v422, type metadata accessor for FormatVideoPlayerData);
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_1D7270C10;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v423.n128_u64[0] = v133;
        v137 = *(v133 + 144);
        sub_1D6AC2C20(v128, v406, v407, v126, v127, 3u);

        v138 = v419;
        sub_1D5EBC314(v419, v134, v135);

        v139 = sub_1D719D288(&v433, v137);

        *(v136 + 56) = &type metadata for FormatInspection;
        *(v136 + 64) = &off_1F51E3FD0;
        *(v136 + 32) = v139;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v140 = v422;
        v141 = v418;
        sub_1D6AC2DFC(v422, v418, v420);
        (*(v416 + 56))(v141, 0, 1, v417);
        v142 = sub_1D6AE5DA0(&v433, v141);
        sub_1D6AC314C(v141, sub_1D6AC2BB8);
        *(v136 + 96) = &type metadata for FormatInspection;
        *(v136 + 104) = &off_1F51E3FD0;
        *(v136 + 72) = v142;
        v59 = sub_1D7073500(v136);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v449);

        sub_1D5EBC358(v138, v134, v424);
        v143 = type metadata accessor for FormatVideoPlayerData;
        v144 = v140;
LABEL_20:
        sub_1D6AC314C(v144, v143);
        goto LABEL_58;
      case 0xFuLL:
        v220 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v221 = *(v220 + 96);
        v222 = v47;
        v223 = v50;
        v224 = v49;
        v225 = v51;
        v226 = v48;
        sub_1D6AC2C20(v48, v47, v50, v49, v51, 3u);

        v227 = sub_1D61805AC(&v433, v221);
        goto LABEL_40;
      case 0x10uLL:
        v118 = *(v1 + 8);
        v119 = *(v1 + 16);
        v120 = *(v1 + 24);
        v121 = *(v1 + 32);
        v122 = *v1;
        sub_1D6AC2FE0(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
        v124 = *(swift_projectBox() + *(v123 + 48));
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v125 = *(v124 + 32);
        sub_1D6AC2C20(v122, v118, v119, v120, v121, 3u);

        v59 = sub_1D69F3870(&v433, v125);

        sub_1D6202060(&v449);
        v72 = v122;
LABEL_32:
        v73 = v118;
        v74 = v119;
        v75 = v120;
        v76 = v121;
        break;
      case 0x11uLL:
        v271 = *(v1 + 8);
        v407 = *(v1 + 16);
        v404 = v49;
        v405 = v51;
        v272 = v48;
        v274 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v273 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v275 = MEMORY[0x1E69E6F90];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v276 = swift_allocObject();
        *(v276 + 16) = xmmword_1D7270C10;
        sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v275);
        sub_1D5EA74B8(0);
        v278 = (*(*(v277 - 8) + 80) + 32) & ~*(*(v277 - 8) + 80);
        v279 = swift_allocObject();
        *(v279 + 16) = xmmword_1D7273AE0;
        v280 = v279 + v278;
        swift_beginAccess();
        if (!v273)
        {
          v273 = v274;
        }

        v347 = v273[5];
        v423 = v273[4];
        v424 = v347;
        v348 = type metadata accessor for FormatInspectionItem(0);
        v349 = v280 + *(v348 + 24);
        v350 = v424;
        *v349 = v423;
        *(v349 + 16) = v350;
        *(v349 + 32) = 0;
        *(v349 + 40) = 0;
        *(v349 + 48) = 1;
        v351 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v351 - 8) + 56))(v349, 0, 1, v351);
        *v280 = xmmword_1D72E27B0;
        *(v280 + 16) = 0;
        *(v280 + 24) = 0;
        v352 = v280 + *(v348 + 28);
        *v352 = 0;
        *(v352 + 8) = 0;
        *(v352 + 16) = -1;
        (*(*(v348 - 8) + 56))(v280, 0, 1, v348);
        v403 = v272;
        v353 = v272;
        v354 = v407;
        v311 = v404;
        v312 = v405;
        sub_1D6AC2C20(v353, v271, v407, v404, v405, 3u);
        sub_1D6795150(0x20746E65746E6F43, 0xED0000656D617246, 0, 0, v279, &v446);
        swift_setDeallocating();
        sub_1D6AC314C(v280, sub_1D5EA74B8);
        swift_deallocClassInstance();
        *(v276 + 56) = &type metadata for FormatInspectionGroup;
        *(v276 + 64) = &off_1F518B2C0;
        v355 = swift_allocObject();
        *(v276 + 32) = v355;
        v356 = v447;
        *(v355 + 16) = v446;
        *(v355 + 32) = v356;
        *(v355 + 48) = v448;
        v439 = v455;
        v440 = v456;
        v441 = v457;
        v442 = v458;
        v435 = v451;
        v436 = v452;
        v437 = v453;
        v438 = v454;
        v433 = v449;
        v434 = v450;
        v357 = v274[7];
        v443 = v274[6];
        v444 = v357;
        v358 = v274[9];
        v360 = v274[6];
        v359 = v274[7];
        v445[0] = v274[8];
        v445[1] = v358;
        v430 = v360;
        v431 = v359;
        v361 = v274[9];
        v432[0] = v274[8];
        v432[1] = v361;
        sub_1D6AC2F10(&v443, &v425, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v361);
        v362 = sub_1D6A5355C(&v433, &v430);
        v425 = v430;
        v426 = v431;
        v427[0] = v432[0];
        v427[1] = v432[1];
        sub_1D6AC2CBC(&v425, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v432[0]);
        *(v276 + 96) = &type metadata for FormatInspection;
        *(v276 + 104) = &off_1F51E3FD0;
        *(v276 + 72) = v362;
        v59 = sub_1D7073500(v276);
        swift_setDeallocating();
        sub_1D5E4F358(0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1D6202060(&v449);
        v72 = v403;
        v73 = v271;
        v74 = v354;
LABEL_43:
        v75 = v311;
        v76 = v312;
        break;
      case 0x12uLL:
        goto LABEL_6;
      default:
        v78 = *(v48 + 16);
        v79 = *(v48 + 24);
        if (v78 >> 61 == 1 && (v80 = v78 & 0x1FFFFFFFFFFFFFFFLL, v81 = *(v80 + 56), v82 = *(v80 + 120), v427[1] = *(v80 + 104), v428 = v82, v83 = *(v80 + 88), v429 = *(v80 + 136), v84 = *(v80 + 72), v425 = v81, v426 = v84, v427[0] = v83, v81.n128_u64[1]))
        {
          *&v424 = v79;
          v418 = v427[1];
          v419 = v428;
          v423.n128_u32[0] = v429;
          v406 = v47;
          v407 = v50;
          v85 = MEMORY[0x1E69E6F90];
          v404 = v49;
          v405 = v51;
          v86 = v48;
          sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          v87 = swift_allocObject();
          *(v87 + 16) = xmmword_1D7279970;
          sub_1D6AC30E8(0, &qword_1EC880490, sub_1D5EA74B8, v85);
          v422 = v88;
          sub_1D5EA74B8(0);
          v90 = *(v89 - 8);
          v421 = *(v90 + 72);
          v91 = (*(v90 + 80) + 32) & ~*(v90 + 80);
          v92 = swift_allocObject();
          v420 = xmmword_1D7273AE0;
          *(v92 + 16) = xmmword_1D7273AE0;
          v93 = (v92 + v91);
          v94 = type metadata accessor for FormatInspectionItem(0);
          v95 = v92 + v91 + *(v94 + 24);
          v96 = v427[0];
          *v95 = v426;
          *(v95 + 16) = v96;
          *(v95 + 32) = 0u;
          *(v95 + 48) = 4;
          v97 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v97 - 8) + 56))(v95, 0, 1, v97);
          *v93 = xmmword_1D72E27B0;
          v93[1] = 0u;
          v98 = v92 + v91 + *(v94 + 28);
          *v98 = 0u;
          *(v98 + 16) = -1;
          v99 = *(*(v94 - 8) + 56);
          v99(v92 + v91, 0, 1, v94);
          v403 = v86;
          v100.n128_f64[0] = sub_1D6AC2C20(v86, v406, v407, v404, v405, 3u);
          sub_1D6AC2F10(&v425, &v433, &qword_1EDF28820, &type metadata for FormatImageRequestData, v100);
          sub_1D6795150(0x6953206567616D49, 0xEA0000000000657ALL, 0, 0, v92, &v446);
          swift_setDeallocating();
          sub_1D6AC314C(v92 + v91, sub_1D5EA74B8);
          swift_deallocClassInstance();
          *(v87 + 56) = &type metadata for FormatInspectionGroup;
          *(v87 + 64) = &off_1F518B2C0;
          v101 = swift_allocObject();
          *(v87 + 32) = v101;
          v102 = v447;
          *(v101 + 16) = v446;
          *(v101 + 32) = v102;
          *(v101 + 48) = v448;
          v103 = swift_allocObject();
          v104 = v420;
          *(v103 + 16) = v420;
          sub_1D6AC2CBC(&v425, &qword_1EDF28820, &type metadata for FormatImageRequestData, v104);
          if (v423.n128_u8[0])
          {
            v105 = 0;
            v106 = 0uLL;
            v107 = v424;
            v108 = 0uLL;
            v109 = 1;
          }

          else
          {
            v109 = 0;
            v105 = 5;
            v108 = v418;
            v106 = v419;
            v107 = v424;
          }

          v443 = v108;
          v444 = v106;
          *&v445[0] = 0;
          *(&v445[0] + 1) = v109;
          LOBYTE(v445[1]) = v105;
          sub_1D7124DC4(0, 0xE000000000000000, &v443, (v103 + v91));
          v99(v103 + v91, 0, 1, v94);
          sub_1D6795150(0x6150206567616D49, 0xEA00000000006874, 0, 0, v103, &v430);
          swift_setDeallocating();
          sub_1D6AC314C(v103 + v91, sub_1D5EA74B8);
          swift_deallocClassInstance();
          *(v87 + 96) = &type metadata for FormatInspectionGroup;
          *(v87 + 104) = &off_1F518B2C0;
          v397 = swift_allocObject();
          *(v87 + 72) = v397;
          v398 = v431;
          *(v397 + 16) = v430;
          *(v397 + 32) = v398;
          *(v397 + 48) = v432[0].n128_u64[0];
          v439 = v455;
          v440 = v456;
          v441 = v457;
          v442 = v458;
          v435 = v451;
          v436 = v452;
          v437 = v453;
          v438 = v454;
          v433 = v449;
          v434 = v450;
          v399 = sub_1D6FAFFB8(&v433, *(v107 + 96));
          *(v87 + 136) = &type metadata for FormatInspection;
          *(v87 + 144) = &off_1F51E3FD0;
          *(v87 + 112) = v399;
          v59 = sub_1D7073500(v87);
          swift_setDeallocating();
          sub_1D5E4F358(0);
LABEL_57:
          swift_arrayDestroy();
          swift_deallocClassInstance();
          sub_1D6202060(&v449);
LABEL_58:
          v72 = v403;
          v73 = v406;
          v74 = v407;
LABEL_59:
          v75 = v404;
          v76 = v405;
        }

        else
        {
          v439 = v455;
          v440 = v456;
          v441 = v457;
          v442 = v458;
          v435 = v451;
          v436 = v452;
          v437 = v453;
          v438 = v454;
          v433 = v449;
          v434 = v450;
          v346 = *(v79 + 96);
          v222 = v47;
          v223 = v50;
          v224 = v49;
          v225 = v51;
          v226 = v48;
          sub_1D6AC2C20(v48, v47, v50, v49, v51, 3u);

          v227 = sub_1D6FAFFB8(&v433, v346);
LABEL_40:
          v59 = v227;

          sub_1D6202060(&v449);
          v72 = v226;
          v73 = v222;
          v74 = v223;
          v75 = v224;
          v76 = v225;
        }

        break;
    }

    v77 = 3;
LABEL_61:
    sub_1D6AC2D2C(v72, v73, v74, v75, v76, v77);
    return v59;
  }

  if (!*(v1 + 40))
  {
    v406 = *(v1 + 8);
    v407 = v50;
    v60 = v49;
    v404 = v49;
    v405 = v51;
    v61 = v51;
    v62 = v48;
    sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v63 = swift_allocObject();
    v415 = xmmword_1D7273AE0;
    *(v63 + 16) = xmmword_1D7273AE0;
    *&v424 = *(v62 + 24);
    v64 = *(v62 + 40);
    v65 = *(v62 + 64);
    v421 = *(v62 + 56);
    v422 = *(v62 + 72);
    v423.n128_u64[0] = v64;
    v66 = *(v62 + 104);
    *&v416 = *(v62 + 96);
    *&v418 = v66;
    *&v420 = *(v62 + 112);
    LODWORD(v419) = *(v62 + 120) | (*(v62 + 122) << 16);
    v67 = swift_allocObject();
    *(v67 + 16) = v415;
    v439 = v455;
    v440 = v456;
    v441 = v457;
    v442 = v458;
    v435 = v451;
    v436 = v452;
    v437 = v453;
    v438 = v454;
    v433 = v449;
    v434 = v450;
    v425.n128_u64[0] = v65;
    sub_1D6AC2C20(v62, v406, v407, v60, v61, 0);
    *&v417 = v65;

    v68 = v420;
    v69 = v419;
    sub_1D62B7DCC(v420, v419);

    sub_1D6AAFB58(&v433, v425.n128_u64);
    v71 = v70;
    sub_1D5C84FF4(v425.n128_i64[0]);
    *(v67 + 56) = &type metadata for FormatInspection;
    *(v67 + 64) = &off_1F51E3FD0;
    *(v67 + 32) = v71;
    *&v415 = sub_1D7073500(v67);
    swift_setDeallocating();
    sub_1D6AC314C(v67 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();

    sub_1D62B6F70(v68, v69);
    *(v63 + 56) = &type metadata for FormatInspection;
    *(v63 + 64) = &off_1F51E3FD0;
    *(v63 + 32) = v415;
    v59 = sub_1D7073500(v63);
    swift_setDeallocating();
    sub_1D6AC314C(v63 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    sub_1D6202060(&v449);
    v72 = v62;
    v73 = v406;
    v74 = v407;
    v75 = v404;
    v76 = v405;
    v77 = 0;
    goto LABEL_61;
  }

  if (v52 != 1)
  {
    v110 = *(v1 + 8);
    v111 = *(v1 + 16);
    v112 = *(v1 + 24);
    v113 = *(v1 + 32);
    v114 = *v1;
    sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1D7273AE0;
    v439 = v455;
    v440 = v456;
    v441 = v457;
    v442 = v458;
    v435 = v451;
    v436 = v452;
    v437 = v453;
    v438 = v454;
    v433 = v449;
    v434 = v450;
    v116 = *(v114 + 32);
    sub_1D6AC2C20(v114, v110, v111, v112, v113, 2u);

    v117 = sub_1D71C7B18(&v433, v116);

    *(v115 + 56) = &type metadata for FormatInspection;
    *(v115 + 64) = &off_1F51E3FD0;
    *(v115 + 32) = v117;
    v59 = sub_1D7073500(v115);
    swift_setDeallocating();
    sub_1D6AC314C(v115 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    sub_1D6202060(&v449);
    v72 = v114;
    v73 = v110;
    v74 = v111;
    v75 = v112;
    v76 = v113;
    v77 = 2;
    goto LABEL_61;
  }

  v439 = v455;
  v440 = v456;
  v441 = v457;
  v442 = v458;
  v435 = v451;
  v436 = v452;
  v437 = v453;
  v438 = v454;
  v433 = v449;
  v434 = v450;
  v53 = *(v48 + 32);
  v54 = v47;
  v55 = v50;
  v56 = v49;
  v57 = v51;
  v58 = v48;
  sub_1D6AC2C20(v48, v47, v50, v49, v51, 1u);

  v59 = sub_1D69F3870(&v433, v53);
  sub_1D6AC2D2C(v58, v54, v55, v56, v57, 1u);

  sub_1D6202060(&v449);
  return v59;
}

uint64_t sub_1D6AC13F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B57CA0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725B76C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC2DFC(*(a1 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_config) + OBJC_IVAR____TtC8NewsFeed24FormatWebEmbedDataConfig_json, v7, sub_1D5B57CA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D6AC314C(v7, sub_1D5B57CA0);
    v13 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v18[3] = v8;
    v18[4] = sub_1D6AC3090();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(v9 + 16))(boxed_opaque_existential_1, v12, v8);
    sub_1D725F89C();
    (*(v9 + 8))(v12, v8);
    v13 = 0;
  }

  v15 = sub_1D725F88C();
  return (*(*(v15 - 8) + 56))(a2, v13, 1, v15);
}

void *sub_1D6AC1630(uint64_t a1)
{

  sub_1D6ABD018(v3);
  sub_1D6A9DF10(a1, &v75, 0.0, 0.0, v4, v5);
  if (*(v1 + 40) == 3)
  {
    v8 = *v1;
    v7 = *(v1 + 8);
    v9 = *(v1 + 16);
    v10 = *(v1 + 24);
    v64 = *(v1 + 32);
    switch((v8 >> 59) & 0x1E | (v8 >> 2) & 1)
    {
      case 1uLL:
      case 6uLL:
      case 7uLL:
        v11 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        goto LABEL_19;
      case 2uLL:
        sub_1D6AC2FE0(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, sub_1D6AC2EDC);
        v26 = (swift_projectBox() + *(v25 + 48));
        v27 = v26[1];
        v28 = v26[3];
        v58 = v26[2];
        v29 = v26[4];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1D7273AE0;
        v71 = v81;
        v72 = v82;
        v73 = v83;
        v74 = v84;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v70 = v80;
        v65 = v75;
        v66 = v76;
        if (v27)
        {
          v31 = *(v27 + 16);
        }

        else
        {
          v31 = 0;
        }

        sub_1D6AC2C20(v8, v7, v9, v10, v64, 3u);

        sub_1D5EBC314(v58, v28, v29);
        v52 = sub_1D6A4785C(&v65, v31);

        *(v30 + 56) = &type metadata for FormatInspection;
        *(v30 + 64) = &off_1F51E3FD0;
        *(v30 + 32) = v52;
        v44 = sub_1D7073500(v30);
        swift_setDeallocating();
        sub_1D6AC314C(v30 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v75);

        sub_1D5EBC358(v58, v28, v29);
        v45 = v8;
        v46 = v7;
        v47 = v9;
        v48 = v10;
        goto LABEL_32;
      case 3uLL:
        sub_1D6AC2FE0(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, sub_1D6AC305C);
        v36 = (swift_projectBox() + *(v35 + 48));
        v37 = v36[1];
        v38 = v36[2];
        v39 = v36[3];
        v59 = v36[4];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1D7273AE0;
        v71 = v81;
        v72 = v82;
        v73 = v83;
        v74 = v84;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v70 = v80;
        v65 = v75;
        v66 = v76;
        if (v37)
        {
          v41 = *(v37 + 16);
        }

        else
        {
          v41 = 0;
        }

        v61 = v9;
        v62 = v10;
        sub_1D6AC2C20(v8, v7, v9, v10, v64, 3u);

        sub_1D5EBC314(v38, v39, v59);
        v54 = v38;
        v55 = sub_1D6A4785C(&v65, v41);

        *(v40 + 56) = &type metadata for FormatInspection;
        *(v40 + 64) = &off_1F51E3FD0;
        *(v40 + 32) = v55;
        v44 = sub_1D7073500(v40);
        swift_setDeallocating();
        sub_1D6AC314C(v40 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v75);

        sub_1D5EBC358(v54, v39, v59);
        v45 = v8;
        v46 = v7;
        v47 = v61;
        goto LABEL_31;
      case 4uLL:
        v20 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v21 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v22 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v57 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1D7273AE0;
        v71 = v81;
        v72 = v82;
        v73 = v83;
        v74 = v84;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v70 = v80;
        v65 = v75;
        v66 = v76;
        if (v20)
        {
          v24 = *(v20 + 16);
        }

        else
        {
          v24 = 0;
        }

        v63 = v7;
        sub_1D6AC2C20(v8, v7, v9, v10, v64, 3u);

        sub_1D5EBC314(v21, v22, v57);
        v50 = v21;
        v51 = sub_1D6A4785C(&v65, v24);

        *(v23 + 56) = &type metadata for FormatInspection;
        *(v23 + 64) = &off_1F51E3FD0;
        *(v23 + 32) = v51;
        v44 = sub_1D7073500(v23);
        swift_setDeallocating();
        sub_1D6AC314C(v23 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v75);

        sub_1D5EBC358(v50, v22, v57);
        v45 = v8;
        v46 = v63;
        v47 = v9;
        v48 = v10;
        goto LABEL_32;
      case 5uLL:
      case 8uLL:
      case 9uLL:
      case 0xDuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
        goto LABEL_2;
      case 0xAuLL:
        v11 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
        goto LABEL_19;
      case 0xBuLL:
        sub_1D6AC2FE0(0, &qword_1EC884E78, type metadata accessor for FormatVideoData, sub_1D6AC2E64);
        v13 = (swift_projectBox() + *(v12 + 48));
        v14 = v13[1];
        v15 = v13[2];
        v56 = v13[4];
        v60 = v13[3];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v16 = swift_allocObject();
        v17 = v14;
        *(v16 + 16) = xmmword_1D7273AE0;
        v71 = v81;
        v72 = v82;
        v73 = v83;
        v74 = v84;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v70 = v80;
        v65 = v75;
        v66 = v76;
        if (v14)
        {
          v18 = v15;
          v19 = *(v17 + 16);
          goto LABEL_15;
        }

        v18 = v15;
        v19 = 0;
        break;
      case 0xCuLL:
        v11 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x58);
        goto LABEL_19;
      case 0xEuLL:
        sub_1D6AC2FE0(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, sub_1D6AC2DC8);
        v33 = (swift_projectBox() + *(v32 + 48));
        v34 = v33[1];
        v18 = v33[2];
        v56 = v33[4];
        v60 = v33[3];
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1D7273AE0;
        v71 = v81;
        v72 = v82;
        v73 = v83;
        v74 = v84;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v70 = v80;
        v65 = v75;
        v66 = v76;
        if (v34)
        {
          v19 = *(v34 + 16);
LABEL_15:
        }

        else
        {
          v19 = 0;
        }

        break;
      default:
        v11 = *(v8 + 32);
LABEL_19:
        sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1D7273AE0;
        v71 = v81;
        v72 = v82;
        v73 = v83;
        v74 = v84;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v70 = v80;
        v65 = v75;
        v66 = v76;
        if (v11)
        {
          v11 = *(v11 + 16);
        }

        sub_1D6AC2C20(v8, v7, v9, v10, v64, 3u);
        v43 = sub_1D6A4785C(&v65, v11);

        *(v42 + 56) = &type metadata for FormatInspection;
        *(v42 + 64) = &off_1F51E3FD0;
        *(v42 + 32) = v43;
        v44 = sub_1D7073500(v42);
        swift_setDeallocating();
        sub_1D6AC314C(v42 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();
        sub_1D6202060(&v75);
        v45 = v8;
        v46 = v7;
        v47 = v9;
        v48 = v10;
        v49 = v64;
        goto LABEL_33;
    }

    v62 = v10;
    sub_1D6AC2C20(v8, v7, v9, v10, v64, 3u);

    sub_1D5EBC314(v18, v60, v56);
    v53 = sub_1D6A4785C(&v65, v19);

    *(v16 + 56) = &type metadata for FormatInspection;
    *(v16 + 64) = &off_1F51E3FD0;
    *(v16 + 32) = v53;
    v44 = sub_1D7073500(v16);
    swift_setDeallocating();
    sub_1D6AC314C(v16 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    sub_1D6202060(&v75);

    sub_1D5EBC358(v18, v60, v56);
    v45 = v8;
    v46 = v7;
    v47 = v9;
LABEL_31:
    v48 = v62;
LABEL_32:
    v49 = v64;
LABEL_33:
    sub_1D6AC2D2C(v45, v46, v47, v48, v49, 3u);
    return v44;
  }

  else
  {
LABEL_2:
    sub_1D6202060(&v75);
    return 0;
  }
}

uint64_t sub_1D6AC2140()
{
  if (*(v0 + 40) != 3)
  {
    return 0;
  }

  v1 = *v0;
  result = 0;
  switch((v1 >> 59) & 0x1E | (v1 >> 2) & 1)
  {
    case 1uLL:
      if (!*(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 96))
      {
        return 0;
      }

      goto LABEL_20;
    case 2uLL:
      sub_1D6AC2FE0(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, sub_1D6AC2EDC);
      if (!*(*(swift_projectBox() + *(v3 + 48)) + 96))
      {
        return 0;
      }

      goto LABEL_20;
    case 3uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xDuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
      return result;
    case 4uLL:
      if (!*(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 192))
      {
        return 0;
      }

      goto LABEL_20;
    case 9uLL:
      sub_1D6AC2FE0(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
      if (!*(*(swift_projectBox() + *(v7 + 48)) + 96))
      {
        return 0;
      }

      goto LABEL_20;
    case 0xAuLL:
      if (!*(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x38) + 144))
      {
        return 0;
      }

      goto LABEL_20;
    case 0xBuLL:
      v4 = &qword_1EC884E78;
      v5 = type metadata accessor for FormatVideoData;
      v6 = sub_1D6AC2E64;
      goto LABEL_19;
    case 0xCuLL:
      if (!*(*((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x50) + 144))
      {
        return 0;
      }

      goto LABEL_20;
    case 0xEuLL:
      v4 = &qword_1EC880340;
      v5 = type metadata accessor for FormatVideoPlayerData;
      v6 = sub_1D6AC2DC8;
LABEL_19:
      sub_1D6AC2FE0(0, v4, v5, v6);
      if (*(*(swift_projectBox() + *(v8 + 48)) + 144))
      {
        goto LABEL_20;
      }

      return 0;
    default:
      if (!*(*(v1 + 24) + 96))
      {
        return 0;
      }

LABEL_20:

      break;
  }

  return result;
}

uint64_t sub_1D6AC236C(__n128 a1)
{
  v2 = *(v1 + 40);
  if (*(v1 + 40) <= 2u)
  {
    if (!*(v1 + 40))
    {
      return v2;
    }

    if (v2 == 1)
    {
      v3 = &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    else
    {
      v3 = &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
    }

    v4 = *(*v1 + *v3);
    goto LABEL_13;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      v4 = *(v1 + 8);
    }

    else
    {
      v4 = *(*(v1 + 16) + 32);
    }

LABEL_13:
    v2 = *(v4 + 80);
    goto LABEL_14;
  }

  v2 = sub_1D6EE9168(a1);
LABEL_14:

  return v2;
}

void sub_1D6AC2420(uint64_t a1@<X8>)
{
  v2 = 0uLL;
  if (*(v1 + 40) == 3 && ((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1) == 4 && (v3 = *(*((*v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 152)) != 0)
  {
    v4 = 0;
    v5 = *(v3 + 16);
    v2 = *(v5 + 48);
    v6 = *(v5 + 64);
  }

  else
  {
    v4 = 1;
    v6 = 0uLL;
  }

  *a1 = v2;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
}

uint64_t sub_1D6AC2480()
{
  if (*(v0 + 40) == 3 && ((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1) == 4 && (v1 = *(*((*v0 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 152)) != 0 && *(*(v1 + 16) + 80))
  {
  }

  else
  {
    return 0;
  }
}

void *sub_1D6AC24EC(uint64_t a1)
{

  sub_1D6ABD018(v3);
  sub_1D6A9DF10(a1, v23, 0.0, 0.0, v4, v5);
  if (*(v1 + 40) == 3 && (v8 = *v1, ((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1) == 4))
  {
    v10 = *(v1 + 8);
    v9 = *(v1 + 16);
    v12 = *(v1 + 24);
    v11 = *(v1 + 32);
    v13 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v18 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v19 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v20 = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    sub_1D6AC30E8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v21[6] = v23[6];
    v21[7] = v23[7];
    v21[8] = v23[8];
    v22 = v24;
    v21[2] = v23[2];
    v21[3] = v23[3];
    v21[4] = v23[4];
    v21[5] = v23[5];
    v21[0] = v23[0];
    v21[1] = v23[1];
    v15 = *(v13 + 152);
    if (v15)
    {
      v16 = *(*(v15 + 16) + 80);
    }

    else
    {
      v16 = 0;
    }

    sub_1D6AC2C20(v8, v10, v9, v12, v11, 3u);

    sub_1D5EBC314(v19, v18, v20);
    v17 = sub_1D6735C3C(v21, v16);

    *(inited + 56) = &type metadata for FormatInspection;
    *(inited + 64) = &off_1F51E3FD0;
    *(inited + 32) = v17;
    v6 = sub_1D7073500(inited);
    swift_setDeallocating();
    sub_1D6AC314C(inited + 32, sub_1D5E4F358);
    sub_1D6202060(v23);
    sub_1D6AC2D2C(v8, v10, v9, v12, v11, 3u);

    sub_1D5EBC358(v19, v18, v20);
  }

  else
  {
    sub_1D6202060(v23);
    return 0;
  }

  return v6;
}

char *sub_1D6AC2758()
{
  v1 = v0;
  if (sub_1D6AC2A8C())
  {
    if (*(v0 + 40) > 2u)
    {
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73E4810);
      type metadata accessor for CGRect(0);
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](0x2065687420666F20, 0xEE00746E65726170);
      v6 = 1;
      result = sub_1D6995C30(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v4 = *(result + 2);
      v7 = *(result + 3);
      v5 = v4 + 1;
      if (v4 >= v7 >> 1)
      {
        v6 = 1;
        result = sub_1D6995C30((v7 > 1), v4 + 1, 1, result);
      }
    }

    else
    {
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73E4810);
      type metadata accessor for CGRect(0);
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](0xD00000000000005DLL, 0x80000001D73E4830);
      result = sub_1D6995C30(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v4 = *(result + 2);
      v3 = *(result + 3);
      v5 = v4 + 1;
      if (v4 >= v3 >> 1)
      {
        result = sub_1D6995C30((v3 > 1), v4 + 1, 1, result);
      }

      v6 = 0;
    }

    *(result + 2) = v5;
    v8 = &result[40 * v4];
    v8[32] = v6;
    *(v8 + 5) = 0xD000000000000017;
    *(v8 + 6) = 0x80000001D73E47F0;
    *(v8 + 7) = 0;
    *(v8 + 8) = 0xE000000000000000;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v1 + 40) == 3 && ((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1) == 5;
  if (v9 && *(*((*v1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) + 184) == 1)
  {
    v10 = result;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v10;
    }

    else
    {
      result = sub_1D6995C30(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(result + 2);
    v11 = *(result + 3);
    if (v12 >= v11 >> 1)
    {
      result = sub_1D6995C30((v11 > 1), v12 + 1, 1, result);
    }

    *(result + 2) = v12 + 1;
    v13 = &result[40 * v12];
    v13[32] = 1;
    *(v13 + 5) = 0xD00000000000001ALL;
    *(v13 + 6) = 0x80000001D73E4770;
    *(v13 + 7) = 0xD000000000000057;
    *(v13 + 8) = 0x80000001D73E4790;
  }

  return result;
}

BOOL sub_1D6AC2A8C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  if (*(v0 + 40) > 2u)
  {
    goto LABEL_8;
  }

  CGRectGetHeight(*(v0 + 112));
  if (sub_1D725A63C())
  {
    sub_1D6ABCE58();
    *&v18.origin.x = sub_1D6ABCE58().n128_u64[0];
    CGRectGetMinY(v18);
    sub_1D72632EC();
    goto LABEL_9;
  }

  v19.origin.x = v1;
  v19.origin.y = v2;
  v19.size.width = v3;
  v19.size.height = v4;
  CGRectGetWidth(v19);
  if ((sub_1D725A63C() & 1) == 0)
  {
LABEL_8:
    *&v5 = sub_1D6ABCE58().n128_u64[0];
    goto LABEL_9;
  }

  *&v9 = sub_1D6ABCE58().n128_u64[0];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  *&v20.origin.x = sub_1D6ABCE58().n128_u64[0];
  v16.n128_f64[0] = CGRectGetMinX(v20);
  if (v16.n128_f64[0] <= 0.0)
  {
    v16.n128_f64[0] = 0.0;
  }

  MEMORY[0x1DA6FA970](v16, v9, v11, v13, v15);
LABEL_9:
  v22.origin.x = v5;
  v22.origin.y = v6;
  v22.size.width = v7;
  v22.size.height = v8;
  v21.origin.x = v1;
  v21.origin.y = v2;
  v21.size.width = v3;
  v21.size.height = v4;
  return !CGRectContainsRect(v21, v22);
}

double sub_1D6AC2C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 2u)
  {
    switch(a6)
    {
      case 5u:

        break;
      case 4u:

        break;
      case 3u:
        break;
      default:
        return result;
    }
  }

  else if (a6 >= 3u)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D6AC2CBC(uint64_t a1, unint64_t *a2, uint64_t a3, __n128 a4)
{
  sub_1D6AC2F90(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_1D6AC2D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 2u)
  {
    switch(a6)
    {
      case 5u:

        break;
      case 4u:

        break;
      case 3u:
        break;
      default:
        return result;
    }
  }

  else if (a6 >= 3u)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D6AC2DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1D6AC2E98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D6AC2F10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  sub_1D6AC2F90(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1D6AC2F90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D6AC2FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D6AC3090()
{
  result = qword_1EDF3BAA8;
  if (!qword_1EDF3BAA8)
  {
    sub_1D725B76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BAA8);
  }

  return result;
}

void sub_1D6AC30E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6AC314C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6AC31AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_1D6AC3DDC(a2, a1, a3);
  v20 = *(a3 + 16);
  FormatOptionValue.type.getter(v4, &v19);
  FormatPropertyDefinition.type.getter(&v20);
  v5 = FormatOptionType.rawValue.getter();
  v7 = v6;
  if (v5 == FormatOptionType.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v9 = sub_1D72646CC();

    if ((v9 & 1) == 0)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v11 = v10;
      v12 = FormatPropertyDefinition.identifier.getter();
      v14 = v13;
      v15 = FormatPropertyDefinition.type.getter(&v19);
      v16 = v19;
      v20 = *(a3 + 16);
      FormatOptionValue.type.getter(v15, &v18);
      v17 = v18;
      *v11 = v12;
      *(v11 + 8) = v14;
      *(v11 + 16) = v16;
      *(v11 + 17) = v17;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6AC4D8C(a3, type metadata accessor for FormatOption);
    }
  }
}

double FormatOptionConverter.convert(option:context:)@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 + 16);
  v8 = *a2;
  v9 = v5;
  v6 = sub_1D6AC33DC(&v8);
  FormatOptionConverter.convert(option:contextProperties:)(a1, v6, a3);

  return result;
}

unint64_t sub_1D6AC33DC(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (!*(v1[10] + 16))
      {
        goto LABEL_15;
      }
    }

    else if (!*(v1[9] + 16))
    {
      goto LABEL_15;
    }
  }

  else if (v5 == 2)
  {
    if (!*(v1[11] + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v5 != 3)
    {
    }

    if (!*(v1[12] + 16))
    {
      goto LABEL_15;
    }
  }

  sub_1D5B69D90(v3, v4);
  if (v6)
  {
  }

LABEL_15:
  v8 = MEMORY[0x1E69E7CC0];

  return sub_1D605B0B0(v8);
}

uint64_t FormatOptionConverter.convert(option:contextProperties:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = v3;
  v32 = a3;
  v8 = type metadata accessor for FormatCompilerProperty(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = a1[1];
  if (*(a2 + 16) && (v19 = sub_1D5B69D90(*a1, a1[1]), (v20 & 1) != 0))
  {
    sub_1D5D67568(*(a2 + 56) + *(v9 + 72) * v19, v12, type metadata accessor for FormatCompilerProperty);
    sub_1D6AC6034(v12, v16, type metadata accessor for FormatCompilerProperty);
    v21 = v32;
    sub_1D6AC4104(v32, a1, v16);
    result = sub_1D6AC4D8C(v16, type metadata accessor for FormatCompilerProperty);
    if (!v4)
    {
      v23 = type metadata accessor for FormatOption(0);
      return (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
    }
  }

  else
  {
    v24 = v5[6];
    v25 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v24);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73E49A0);
    MEMORY[0x1DA6F9910](v17, v18);
    MEMORY[0x1DA6F9910](0x6B636170206E6920, 0xEC00000020656761);
    v26 = v5[2];
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);

    MEMORY[0x1DA6F9910](v27, v28);

    MEMORY[0x1DA6F9910](0xD000000000000061, 0x80000001D73E49C0);
    (*(v25 + 40))(v30, v31, v24, v25);

    v29 = type metadata accessor for FormatOption(0);
    return (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
  }

  return result;
}

void *FormatOptionConverter.convert(options:context:)(uint64_t a1, __int128 *a2)
{
  v6 = type metadata accessor for FormatCompilerProperty(0);
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v64 = &v58 - v11;
  sub_1D5D27E1C(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v58 - v14;
  v74 = type metadata accessor for FormatOption(0);
  v16 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v17);
  v73 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v62 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v58 - v24);
  v26 = *(a1 + 16);
  if (v26)
  {
    v63 = v3;
    v27 = *(a2 + 16);
    v76 = *a2;
    v77 = v27;
    v72 = v2;
    v28 = sub_1D6AC33DC(&v76);
    v61 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v29 = a1 + v61;
    v30 = *(v16 + 72);
    v69 = (v16 + 56);
    v65 = "Discarding option ";
    v66 = "sparkles.rectangle.stack";
    v78 = MEMORY[0x1E69E7CC0];
    v67 = v15;
    v68 = (v16 + 48);
    v70 = v30;
    v71 = v28;
    while (1)
    {
      sub_1D5D67568(v29, v25, type metadata accessor for FormatOption);
      v32 = *v25;
      v33 = v25[1];
      if (*(v28 + 16) && (v34 = sub_1D5B69D90(*v25, v25[1]), (v35 & 1) != 0))
      {
        v36 = v59;
        sub_1D5D67568(*(v28 + 56) + *(v60 + 72) * v34, v59, type metadata accessor for FormatCompilerProperty);
        v37 = v36;
        v38 = v64;
        sub_1D6AC6034(v37, v64, type metadata accessor for FormatCompilerProperty);
        v39 = v63;
        sub_1D6AC4104(v15, v25, v38);
        if (v39)
        {
          sub_1D6AC4D8C(v64, type metadata accessor for FormatCompilerProperty);
          sub_1D6AC4D8C(v25, type metadata accessor for FormatOption);

          return v78;
        }

        v63 = 0;
        sub_1D6AC4D8C(v64, type metadata accessor for FormatCompilerProperty);
        v40 = 0;
      }

      else
      {
        v41 = v25;
        v42 = v72;
        v43 = v72[6];
        v44 = v72[7];
        v75 = __swift_project_boxed_opaque_existential_1(v72 + 3, v43);
        *&v76 = 0;
        *(&v76 + 1) = 0xE000000000000000;
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0xD000000000000012, v66 | 0x8000000000000000);
        MEMORY[0x1DA6F9910](v32, v33);
        MEMORY[0x1DA6F9910](0x6B636170206E6920, 0xEC00000020656761);
        v45 = v42[2];
        v25 = v41;
        v46 = *(v45 + 16);
        v47 = *(v45 + 24);

        MEMORY[0x1DA6F9910](v46, v47);

        MEMORY[0x1DA6F9910](0xD000000000000061, v65 | 0x8000000000000000);
        v48 = *(v44 + 40);
        v49 = v44;
        v15 = v67;
        v48(v76, *(&v76 + 1), v43, v49);

        v40 = 1;
      }

      v50 = v74;
      (*v69)(v15, v40, 1, v74);
      sub_1D6AC4D8C(v25, type metadata accessor for FormatOption);
      if ((*v68)(v15, 1, v50) == 1)
      {
        sub_1D6AC4DEC(v15, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v31 = v70;
        v28 = v71;
      }

      else
      {
        v51 = v62;
        sub_1D6AC6034(v15, v62, type metadata accessor for FormatOption);
        sub_1D6AC6034(v51, v73, type metadata accessor for FormatOption);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v78 = sub_1D5CEABA0(0, v78[2] + 1, 1, v78);
        }

        v54 = v78[2];
        v53 = v78[3];
        if (v54 >= v53 >> 1)
        {
          v78 = sub_1D5CEABA0((v53 > 1), v54 + 1, 1, v78);
        }

        v55 = v78;
        v78[2] = v54 + 1;
        v56 = v55 + v61 + v54 * v70;
        v31 = v70;
        sub_1D6AC6034(v73, v56, type metadata accessor for FormatOption);
      }

      v29 += v31;
      if (!--v26)
      {

        return v78;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6AC3DDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for FormatEnumPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AC5FCC(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[2];
  v20 = *(v19 + 56);
  sub_1D5D67568(a1, v17, type metadata accessor for FormatPropertyDefinition);
  *&v17[v20] = v18;
  if (swift_getEnumCaseMultiPayload() != 3)
  {

LABEL_6:
    sub_1D5D67568(a2, a3, type metadata accessor for FormatOption);
    v30 = sub_1D6AC5FCC;
    return sub_1D6AC4D8C(v17, v30);
  }

  sub_1D5D67568(v17, v13, type metadata accessor for FormatPropertyDefinition);
  if (v18 >> 60 != 5)
  {

    sub_1D6AC4D8C(v13, type metadata accessor for FormatEnumPropertyDefinition);
    goto LABEL_6;
  }

  v21 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v35 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v22 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  sub_1D6AC6034(v13, v9, type metadata accessor for FormatEnumPropertyDefinition);
  v23 = *a2;
  v24 = a2[1];
  v34 = v23;
  v25 = swift_allocObject();
  v26 = *(v9 + 5);
  v33 = *(v9 + 4);

  sub_1D6AC4D8C(v9, type metadata accessor for FormatEnumPropertyDefinition);
  v27 = v34;
  *(v25 + 16) = v33;
  *(v25 + 24) = v26;
  *(v25 + 32) = v35;
  *(v25 + 40) = v21;
  *(v25 + 48) = v22;
  *a3 = v27;
  *(a3 + 1) = v24;
  *(a3 + 2) = v25 | 0x1000000000000000;
  *(a3 + 3) = 1;
  v28 = *(type metadata accessor for FormatOption(0) + 28);
  v29 = type metadata accessor for FormatVersionRequirement(0);
  (*(*(v29 - 8) + 56))(&a3[v28], 1, 1, v29);

  v30 = type metadata accessor for FormatPropertyDefinition;
  return sub_1D6AC4D8C(v17, v30);
}

void sub_1D6AC4104(char *a1@<X8>, uint64_t *a2@<X0>, uint64_t a3@<X1>)
{
  sub_1D6AC42C0(a2, a3, a1);
  if (!v3)
  {
    v5 = FormatCompilerProperty.type.getter(&v19);
    v20 = *(a1 + 2);
    FormatOptionValue.type.getter(v5, &v18);
    v6 = FormatOptionType.rawValue.getter();
    v8 = v7;
    if (v6 == FormatOptionType.rawValue.getter() && v8 == v9)
    {
    }

    else
    {
      v10 = sub_1D72646CC();

      if ((v10 & 1) == 0)
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        v12 = v11;
        v14 = *a1;
        v13 = *(a1 + 1);

        v15 = FormatCompilerProperty.type.getter(&v19);
        v16 = v19;
        v20 = *(a1 + 2);
        FormatOptionValue.type.getter(v15, &v18);
        v17 = v18;
        *v12 = v14;
        *(v12 + 8) = v13;
        *(v12 + 16) = v16;
        *(v12 + 17) = v17;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D6AC4D8C(a1, type metadata accessor for FormatOption);
      }
    }
  }
}

uint64_t sub_1D6AC42C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = v4;
  v88 = a2;
  v103 = a3;
  sub_1D6AC4E74(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v84 - v14;
  v16 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[2];
  v25 = v24 >> 60;
  if ((v24 >> 60) > 4)
  {
    if (v25 <= 0xD)
    {
      if (((1 << v25) & 0x36C0) != 0)
      {
        return sub_1D5D67568(a1, v103, type metadata accessor for FormatOption);
      }

      if (v25 == 8)
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        v27 = v26;
        v29 = *a1;
        v28 = a1[1];

        FormatCompilerProperty.type.getter(&v96);
        v30 = v96;
        v31 = 0x80000001D73E4B20;
        *v27 = v29;
        *(v27 + 8) = v28;
        *(v27 + 16) = v30;
        v32 = 0xD00000000000002CLL;
LABEL_14:
        *(v27 + 24) = v32;
        *(v27 + 32) = v31;
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }

      if (v25 == 11)
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        v27 = v51;
        v53 = *a1;
        v52 = a1[1];

        FormatCompilerProperty.type.getter(&v96);
        v54 = v96;
        v31 = 0x80000001D73E4AF0;
        *v27 = v53;
        *(v27 + 8) = v52;
        *(v27 + 16) = v54;
        v32 = 0xD00000000000002DLL;
        goto LABEL_14;
      }
    }

    v56 = (v24 & 0xFFFFFFFFFFFFFFFLL);
    v57 = v56[3];
    v86 = v56[2];
    v87 = v56[4];
    sub_1D5D67568(v88, v19, type metadata accessor for FormatCompilerProperty);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v58 = v57;
      sub_1D6AC6034(v19, v23, type metadata accessor for FormatCompilerEnumProperty);
      v59 = (*(v3 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
      swift_beginAccess();
      v60 = v59[1];
      v61 = *(v23 + 2);
      v62 = *(v23 + 3);
      if (*(v60 + 16))
      {
        v63 = *v59;
        v85 = v58;

        v84 = v63;

        v64 = sub_1D5B69D90(v61, v62);
        if (v65)
        {
          sub_1D5D67568(*(v60 + 56) + *(v8 + 72) * v64, v15, sub_1D6AC4E74);
          v66 = *(v15 + 3);
          v98 = *(v15 + 2);
          v99 = v66;
          v100 = *(v15 + 4);
          v101 = v15[80];
          v67 = *(v15 + 1);
          v96 = *v15;
          v97 = v67;
          sub_1D62B7D1C(&v96, &v90);
          sub_1D6AC4D8C(v15, sub_1D6AC4E74);

          v69 = *a1;
          v68 = a1[1];
          v70 = swift_allocObject();
          v92 = v98;
          v93 = v99;
          v94 = v100;
          v95 = v101;
          v90 = v96;
          v91 = v97;
          v102[0] = v86;
          v102[1] = v85;
          v102[2] = v87;

          FormatOptionEnum.init(type:value:)(&v90, v102, (v70 + 16));
          if (v5)
          {

            sub_1D6AC4D8C(v23, type metadata accessor for FormatCompilerEnumProperty);
            return swift_deallocUninitializedObject();
          }

          v81 = v103;
          *v103 = v69;
          *(v81 + 1) = v68;
          *(v81 + 2) = v70 | 0x1000000000000000;
          *(v81 + 3) = 1;
          v82 = *(type metadata accessor for FormatOption(0) + 28);
          v83 = type metadata accessor for FormatVersionRequirement(0);
          (*(*(v83 - 8) + 56))(&v81[v82], 1, 1, v83);
          return sub_1D6AC4D8C(v23, type metadata accessor for FormatCompilerEnumProperty);
        }
      }

      type metadata accessor for FormatLayoutError(0);
      sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v78 = v77;
      sub_1D6AC4ED0(0);
      v80 = *(v79 + 48);
      *v78 = v61;
      v78[1] = v62;
      sub_1D5D67568(v88, v78 + v80, type metadata accessor for FormatCompilerProperty);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return sub_1D6AC4D8C(v23, type metadata accessor for FormatCompilerEnumProperty);
    }

    sub_1D6AC4D8C(v19, type metadata accessor for FormatCompilerProperty);
    return sub_1D5D67568(a1, v103, type metadata accessor for FormatOption);
  }

  if ((v25 - 2) < 3 || !v25)
  {
    return sub_1D5D67568(a1, v103, type metadata accessor for FormatOption);
  }

  v33 = (v24 & 0xFFFFFFFFFFFFFFFLL);
  v34 = v33[3];
  v86 = v33[2];
  v35 = v33[5];
  v87 = v33[4];
  v36 = v33[6];
  v37 = (*(v3 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
  swift_beginAccess();
  v38 = v37[1];
  v85 = *v37;
  v39 = *(v38 + 16);

  v88 = v35;
  v40 = v36;
  v41 = v86;

  if (!v39)
  {
LABEL_24:
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B573D8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v71 = v41;
    v71[1] = v34;
    v71[2] = v41;
    v71[3] = v34;
    v72 = v88;
    v71[4] = v87;
    v71[5] = v72;
    v71[6] = v40;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v42 = sub_1D5B69D90(v41, v34);
  if ((v43 & 1) == 0)
  {

    goto LABEL_24;
  }

  sub_1D5D67568(*(v38 + 56) + *(v8 + 72) * v42, v11, sub_1D6AC4E74);
  v44 = *(v11 + 3);
  v98 = *(v11 + 2);
  v99 = v44;
  v100 = *(v11 + 4);
  v101 = v11[80];
  v45 = *(v11 + 1);
  v96 = *v11;
  v97 = v45;
  sub_1D62B7D1C(&v96, &v90);
  sub_1D6AC4D8C(v11, sub_1D6AC4E74);

  v46 = v34;
  v47 = v41;
  v49 = *a1;
  v48 = a1[1];
  v50 = swift_allocObject();
  v92 = v98;
  v93 = v99;
  v94 = v100;
  v95 = v101;
  v90 = v96;
  v91 = v97;
  v89[0] = v47;
  v89[1] = v46;
  v89[2] = v87;
  v89[3] = v88;
  v89[4] = v40;

  FormatOptionEnum.init(type:value:)(&v90, v89, (v50 + 16));
  if (v5)
  {

    return swift_deallocUninitializedObject();
  }

  v73 = v50 | 0x1000000000000000;
  v74 = v103;
  *v103 = v49;
  *(v74 + 1) = v48;
  *(v74 + 2) = v73;
  *(v74 + 3) = 1;
  v75 = *(type metadata accessor for FormatOption(0) + 28);
  v76 = type metadata accessor for FormatVersionRequirement(0);
  return (*(*(v76 - 8) + 56))(&v74[v75], 1, 1, v76);
}

uint64_t FormatOptionConverter.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t FormatOptionConverter.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6AC4D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6AC4DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D27E1C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6AC4E74(uint64_t a1)
{
  if (!qword_1EDF33890)
  {
    v2 = sub_1D5B4C700();
    v4 = type metadata accessor for FormatObject(a1, &type metadata for FormatType, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF33890);
    }
  }
}

void sub_1D6AC4ED0(uint64_t a1)
{
  if (!qword_1EDF1B6F8)
  {
    type metadata accessor for FormatCompilerProperty(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B6F8);
    }
  }
}

void *sub_1D6AC4F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v19 - v14;
  (*(v8 + 32))(&v19 - v14, v13);
  v16 = swift_allocObject();
  (*(v8 + 16))(v10, v15, a4);
  v17 = sub_1D6AC5098(a1, v10, v16, a4, a5);
  (*(v8 + 8))(v15, a4);
  return v17;
}

void *sub_1D6AC5098(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E6720];
  sub_1D5D27E1C(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v132 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v129 - v16;
  sub_1D5D27E1C(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet, v10);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v140 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v129 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v139 = (&v129 - v27);
  v138 = type metadata accessor for FormatCompilerSlotDefinition(0);
  v28 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v29);
  v146 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156[3] = a4;
  v156[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v156);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  a3[2] = a1;
  sub_1D5B68374(v156, (a3 + 3));
  v32 = a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions;
  v155 = *(a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions);
  sub_1D5D27E1C(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
  v34 = v33;
  v35 = sub_1D5D66C8C();
  v36 = sub_1D5B573D8(&qword_1EDF28988, type metadata accessor for FormatCompilerProperty, &protocol conformance descriptor for FormatCompilerProperty);

  v142 = v36;
  v37 = sub_1D72623AC();
  v130 = a3;
  a3[8] = v37;
  v38 = *(v32 + 8);
  v133 = *(v38 + 16);
  if (v133)
  {
    v141 = v35;
    v136 = v24;
    v131 = v17;
    v129 = a1;
    v135 = v28;
    v134 = v38 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v137 = v38;

    v39 = 0;
    v145 = 0;
    v40 = MEMORY[0x1E69E7CC8];
    v41 = MEMORY[0x1E69E7CC8];
    v42 = MEMORY[0x1E69E7CC8];
    v43 = MEMORY[0x1E69E7CC8];
    v44 = v146;
    v143 = v34;
    while (1)
    {
      if (v39 >= *(v137 + 16))
      {
        goto LABEL_79;
      }

      v150 = v43;
      v45 = *(v135 + 72);
      v144 = v39;
      sub_1D5D67568(v134 + v45 * v39, v44, type metadata accessor for FormatCompilerSlotDefinition);
      v155 = *(v44 + 48);
      v154 = sub_1D72623AC();
      v151 = *(v138 + 40);
      v46 = v139;
      sub_1D6AC5F4C(v44 + v151, v139, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      v47 = type metadata accessor for FormatCompilerSlotDefinitionItemSet(0);
      v48 = *(*(v47 - 8) + 48);
      v49 = v48(v46, 1, v47);
      v149 = v42;
      if (v49 == 1)
      {
        sub_1D6AC4DEC(v46, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v153 = MEMORY[0x1E69E7CC8];
      }

      else
      {
        v50 = *v46;

        sub_1D6AC4D8C(v46, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v155 = v50;
        v153 = sub_1D72623AC();
      }

      v51 = v151;
      v52 = v136;
      sub_1D6AC5F4C(v146 + v151, v136, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      if (v48(v52, 1, v47) == 1)
      {
        sub_1D6AC4DEC(v52, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v152 = MEMORY[0x1E69E7CC8];
        v42 = v149;
      }

      else
      {
        v53 = v131;
        sub_1D6AC5F4C(v52 + *(v47 + 20), v131, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
        sub_1D6AC4D8C(v52, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v54 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
        if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
        {
          sub_1D6AC4DEC(v53, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
          v152 = MEMORY[0x1E69E7CC8];
        }

        else
        {
          v55 = *v53;

          sub_1D6AC4D8C(v53, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
          v155 = v55;
          v152 = sub_1D72623AC();
        }

        v42 = v149;
      }

      v56 = v140;
      sub_1D6AC5F4C(v146 + v51, v140, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      if (v48(v56, 1, v47) == 1)
      {
        v57 = sub_1D6AC4DEC(v56, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v151 = MEMORY[0x1E69E7CC8];
        v59 = v146;
      }

      else
      {
        v60 = v132;
        sub_1D6AC5F4C(v56 + *(v47 + 20), v132, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
        sub_1D6AC4D8C(v56, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
        v61 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary(0);
        if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
        {
          v57 = sub_1D6AC4DEC(v60, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
          v151 = MEMORY[0x1E69E7CC8];
          v59 = v146;
        }

        else
        {
          v62 = *(v60 + 8);

          v57 = sub_1D6AC4D8C(v60, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
          v59 = v146;
          if (v62)
          {
            v155 = v62;
            v151 = sub_1D72623AC();
          }

          else
          {
            v151 = MEMORY[0x1E69E7CC8];
          }
        }

        v42 = v149;
      }

      if ((*(v59 + 64) & 0x8000000000000000) != 0)
      {
        break;
      }

      MEMORY[0x1EEE9AC00](v57, v58);
      *(&v129 - 2) = v59;
      v63 = v145;
      v65 = sub_1D5D6791C(sub_1D5D67AA0, (&v129 - 4), 0, v64);
      v66 = v65;
      v148 = *(v65 + 16);
      v145 = v63;
      if (v148)
      {
        v67 = 0;
        v68 = (v65 + 40);
        v147 = v65;
        while (1)
        {
          if (v67 >= *(v66 + 16))
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v70 = *(v68 - 1);
          v69 = *v68;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v155 = v40;
          v72 = sub_1D5B69D90(v70, v69);
          v74 = v40[2];
          v75 = (v73 & 1) == 0;
          v76 = __OFADD__(v74, v75);
          v77 = v74 + v75;
          if (v76)
          {
            goto LABEL_71;
          }

          v78 = v73;
          if (v40[3] < v77)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_33;
          }

          v81 = v72;
          sub_1D6D7FBBC();
          v72 = v81;
          v80 = v155;
          if (v78)
          {
LABEL_34:
            *(v80[7] + 8 * v72) = v154;

            goto LABEL_38;
          }

LABEL_36:
          v80[(v72 >> 6) + 8] |= 1 << v72;
          v82 = (v80[6] + 16 * v72);
          *v82 = v70;
          v82[1] = v69;
          *(v80[7] + 8 * v72) = v154;
          v83 = v80[2];
          v76 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v76)
          {
            goto LABEL_75;
          }

          v80[2] = v84;

LABEL_38:

          v85 = swift_isUniquelyReferenced_nonNull_native();
          v155 = v41;
          v86 = sub_1D5B69D90(v70, v69);
          v88 = v41[2];
          v89 = (v87 & 1) == 0;
          v76 = __OFADD__(v88, v89);
          v90 = v88 + v89;
          if (v76)
          {
            goto LABEL_72;
          }

          v91 = v87;
          if (v41[3] < v90)
          {
            sub_1D5D67BA8(v90, v85);
            v86 = sub_1D5B69D90(v70, v69);
            if ((v91 & 1) != (v92 & 1))
            {
              goto LABEL_81;
            }

LABEL_43:
            v93 = v155;
            if (v91)
            {
              goto LABEL_44;
            }

            goto LABEL_46;
          }

          if (v85)
          {
            goto LABEL_43;
          }

          v94 = v86;
          sub_1D6D7FBBC();
          v86 = v94;
          v93 = v155;
          if (v91)
          {
LABEL_44:
            *(v93[7] + 8 * v86) = v153;

            goto LABEL_48;
          }

LABEL_46:
          v93[(v86 >> 6) + 8] |= 1 << v86;
          v95 = (v93[6] + 16 * v86);
          *v95 = v70;
          v95[1] = v69;
          *(v93[7] + 8 * v86) = v153;
          v96 = v93[2];
          v76 = __OFADD__(v96, 1);
          v97 = v96 + 1;
          if (v76)
          {
            goto LABEL_76;
          }

          v93[2] = v97;

LABEL_48:

          v98 = swift_isUniquelyReferenced_nonNull_native();
          v155 = v42;
          v99 = sub_1D5B69D90(v70, v69);
          v101 = v42[2];
          v102 = (v100 & 1) == 0;
          v76 = __OFADD__(v101, v102);
          v103 = v101 + v102;
          if (v76)
          {
            goto LABEL_73;
          }

          v104 = v100;
          if (v42[3] >= v103)
          {
            if ((v98 & 1) == 0)
            {
              v126 = v99;
              sub_1D6D7FBBC();
              v99 = v126;
            }
          }

          else
          {
            sub_1D5D67BA8(v103, v98);
            v99 = sub_1D5B69D90(v70, v69);
            if ((v104 & 1) != (v105 & 1))
            {
              goto LABEL_81;
            }
          }

          v106 = v155;
          v149 = v80;
          if (v104)
          {
            v107 = v93;
            v108 = v155;
            *(v155[7] + 8 * v99) = v152;
          }

          else
          {
            v155[(v99 >> 6) + 8] |= 1 << v99;
            v109 = (v106[6] + 16 * v99);
            *v109 = v70;
            v109[1] = v69;
            *(v106[7] + 8 * v99) = v152;
            v110 = v106[2];
            v76 = __OFADD__(v110, 1);
            v111 = v110 + 1;
            if (v76)
            {
              goto LABEL_77;
            }

            v107 = v93;
            v108 = v106;
            v106[2] = v111;
          }

          v112 = v150;
          v113 = swift_isUniquelyReferenced_nonNull_native();
          v155 = v112;
          v115 = sub_1D5B69D90(v70, v69);
          v116 = v112[2];
          v117 = (v114 & 1) == 0;
          v118 = v116 + v117;
          if (__OFADD__(v116, v117))
          {
            goto LABEL_74;
          }

          v119 = v114;
          if (v112[3] >= v118)
          {
            if ((v113 & 1) == 0)
            {
              sub_1D6D7FBBC();
            }
          }

          else
          {
            sub_1D5D67BA8(v118, v113);
            v120 = sub_1D5B69D90(v70, v69);
            if ((v119 & 1) != (v121 & 1))
            {
              goto LABEL_81;
            }

            v115 = v120;
          }

          v42 = v108;
          v41 = v107;
          if (v119)
          {

            v150 = v155;
            *(v155[7] + 8 * v115) = v151;

            v40 = v149;
          }

          else
          {
            v122 = v155;
            v155[(v115 >> 6) + 8] |= 1 << v115;
            v123 = (v122[6] + 16 * v115);
            *v123 = v70;
            v123[1] = v69;
            *(v122[7] + 8 * v115) = v151;
            v124 = v122[2];
            v76 = __OFADD__(v124, 1);
            v125 = v124 + 1;
            v40 = v149;
            if (v76)
            {
              goto LABEL_78;
            }

            v150 = v122;
            v122[2] = v125;
          }

          ++v67;
          v68 += 2;
          v66 = v147;
          if (v148 == v67)
          {
            goto LABEL_3;
          }
        }

        sub_1D5D67BA8(v77, isUniquelyReferenced_nonNull_native);
        v72 = sub_1D5B69D90(v70, v69);
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_81;
        }

LABEL_33:
        v80 = v155;
        if (v78)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }

LABEL_3:
      v39 = v144 + 1;

      v44 = v146;
      sub_1D6AC4D8C(v146, type metadata accessor for FormatCompilerSlotDefinition);
      v43 = v150;
      if (v39 == v133)
      {
        v127 = v150;

        goto LABEL_69;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    result = sub_1D726493C();
    __break(1u);
  }

  else
  {

    v127 = MEMORY[0x1E69E7CC8];
    v42 = MEMORY[0x1E69E7CC8];
    v41 = MEMORY[0x1E69E7CC8];
    v40 = MEMORY[0x1E69E7CC8];
LABEL_69:
    __swift_destroy_boxed_opaque_existential_1(v156);
    result = v130;
    v130[9] = v40;
    result[10] = v41;
    result[11] = v42;
    result[12] = v127;
  }

  return result;
}

uint64_t sub_1D6AC5F4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5D27E1C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6AC5FCC(uint64_t a1)
{
  if (!qword_1EDF25CB8)
  {
    type metadata accessor for FormatPropertyDefinition(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF25CB8);
    }
  }
}

uint64_t sub_1D6AC6034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double static Commands.copyArticle.getter()
{
  if (qword_1EDF3B028 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D6AC60FC(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B543A4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v28 - v9;
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 identifier];
  if (!v17)
  {
    sub_1D726207C();
    v17 = sub_1D726203C();
  }

  v18 = [a1 routeURL];
  if (v18)
  {
    v19 = v18;
    sub_1D72584EC();

    v20 = sub_1D725844C();
    (*(v12 + 8))(v16, v11);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() nss:v17 NewsURLForArticleID:v20 routeURL:?];

  if (v21)
  {
    sub_1D72584EC();

    (*(v12 + 56))(v10, 0, 1, v11);
    sub_1D5E3E404(v10);
    if (qword_1EDF3B028 != -1)
    {
      swift_once();
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = objc_opt_self();

    v24 = [v23 bundleForClass_];
    sub_1D725811C();

    if (qword_1EDF1BBB8 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDF1BBC0;
    (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
    v28[1] = a1;
    sub_1D725D3DC();
    swift_allocObject();
    v26 = v25;
    swift_unknownObjectRetain();
    return sub_1D725D3AC();
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1D5E3E404(v10);
    return 0;
  }
}

uint64_t type metadata accessor for FormatDerivedDataBinderResult(uint64_t a1)
{
  result = qword_1EC891360;
  if (!qword_1EC891360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6AC65D0(uint64_t a1)
{
  sub_1D5C8F9E0(319);
  if (v1 <= 0x3F)
  {
    sub_1D6AC6674(319);
    if (v2 <= 0x3F)
    {
      sub_1D5B81B04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D6AC6674(uint64_t a1)
{
  if (!qword_1EC891370)
  {
    type metadata accessor for FormatDerivedDataBindingSlotResult(255);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC891370);
    }
  }
}

uint64_t sub_1D6AC66DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D6AC6CE4(0, &qword_1EC891388, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AC6C90();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v5)
  {
    v15 = 1;
    sub_1D72643FC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6AC685C(uint64_t a1)
{
  v2 = sub_1D6AC6C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6AC6898(uint64_t a1)
{
  v2 = sub_1D6AC6C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6AC68D4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6AC6A9C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_1D6AC6924(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5F3D224();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = 0x696669746E656449;
  *(v11 + 40) = 0xEA00000000007265;
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69E61C8];
  *(v11 + 72) = MEMORY[0x1E69E6158];
  *(v11 + 80) = v13;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 88) = 0;
  *(v11 + 96) = 1701667150;
  *(v11 + 104) = 0xE400000000000000;
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = a3;
  *(v11 + 120) = a4;
  *(v11 + 152) = 0;
  *(inited + 56) = &type metadata for DebugInspectionDataSection;
  *(inited + 64) = &off_1F5132800;
  *(inited + 32) = 0x656C7A7A7550;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v11;

  sub_1D60F3E18(inited);
  a5[3] = &type metadata for DebugInspectionDataSource;
  a5[4] = &off_1F51328C8;
  *a5 = v14;
}

uint64_t sub_1D6AC6A9C(void *a1)
{
  sub_1D6AC6CE4(0, &qword_1EC891378, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6AC6C90();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D72642BC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6AC6C90()
{
  result = qword_1EC891380;
  if (!qword_1EC891380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891380);
  }

  return result;
}

void sub_1D6AC6CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6AC6C90();
    v7 = a3(a1, &type metadata for DebugInspectionPuzzle.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6AC6D5C()
{
  result = qword_1EC891390;
  if (!qword_1EC891390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891390);
  }

  return result;
}

unint64_t sub_1D6AC6DB4()
{
  result = qword_1EC891398;
  if (!qword_1EC891398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891398);
  }

  return result;
}

unint64_t sub_1D6AC6E0C()
{
  result = qword_1EC8913A0;
  if (!qword_1EC8913A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913A0);
  }

  return result;
}

void sub_1D6AC6E60(char **a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = v4[1];
  v11 = v4[2];
  v10 = v4[3];
  v31 = *v4;
  v32 = v9;
  v33 = v11;
  v34 = v10;
  v12 = a2[5];
  v28 = a2[4];
  v29 = v12;
  v30 = a2[6];
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  v14 = a2[3];
  v26 = a2[2];
  v27 = v14;
  sub_1D62B2F7C(a1, &v24, a3, a4);
  if (!v5)
  {
    v15 = (v9 >> 59) & 2 | (v9 >> 2) & 1;
    if (v15 <= 1)
    {
      if (!v15)
      {
        sub_1D5FE94C8(&v24, 3);
        sub_1D5FE94C8(&v24, 4);
        return;
      }

      sub_1D5FE94C8(&v24, 8);
      sub_1D5FE94C8(&v24, 7);
      sub_1D5FE94C8(&v24, 6);
      v20 = v8 & 1;
      *&v24 = v20;
      *(&v24 + 1) = v9 & 0xEFFFFFFFFFFFFFFBLL;
      *&v25 = v11;
      *(&v25 + 1) = v10;

      sub_1D6AC6E60(a1, a2, v21, v22);
      v18 = v20;
      v19 = v9 & 0xEFFFFFFFFFFFFFFBLL;
      goto LABEL_8;
    }

    if (v15 == 2)
    {
      v35 = 0;
      sub_1D5FE94C8(&v24, 11);
      sub_1D5FE94C8(&v24, 10);
      sub_1D5FE94C8(&v24, 9);
      *&v24 = v8 & 1;
      *(&v24 + 1) = v9 & 0xEFFFFFFFFFFFFFFBLL | 4;
      *&v25 = v11;
      *(&v25 + 1) = v10;

      sub_1D6AC6E60(a1, a2, v16, v17);
      v18 = v8 & 1;
      v19 = v9 & 0xEFFFFFFFFFFFFFFBLL | 4;
LABEL_8:
      sub_1D5F580D0(v18, v19, v11, v10);
      return;
    }

    if (v9 != 0x1000000000000004 || v10 | v11 | v8)
    {
      sub_1D5FE94C8(&v24, 0);
      v23 = 2;
    }

    else
    {
      sub_1D5FE94C8(&v24, 0);
      v23 = 1;
    }

    sub_1D5FE94C8(&v24, v23);
  }
}

double static FormatTagIconStyle.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EDF1C278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDF1C280;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_1D6AC90B0(0, &qword_1EDF19860, sub_1D5F3FE7C);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0x4020000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  *(v6 + 32) = v5;
  *(v6 + 40) = 0;
  *a1 = 1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;

  return result;
}

_BYTE *FormatTagIconStyle.init(prefersSource:font:padding:cornerRadius:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *a5 = *result;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  return result;
}

void sub_1D6AC722C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *v4;
  v7 = v4[1];
  v10 = v4[2];
  v9 = v4[3];
  v11 = (v7 >> 59) & 2 | (v7 >> 2) & 1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      if (v7 == 0x1000000000000004 && !(v9 | v10 | v8))
      {
        v53 = *(a3 + 96);
        v133 = *(a3 + 80);
        v134 = v53;
        v135 = *(a3 + 112);
        v136 = *(a3 + 128);
        v54 = *(a3 + 64);
        v131 = *(a3 + 48);
        v132 = v54;
        v55 = swift_allocObject();
        *&v119[39] = *(a3 + 80);
        *&v119[55] = *(a3 + 96);
        *&v119[71] = *(a3 + 112);
        v56 = *(a3 + 64);
        *&v119[7] = *(a3 + 48);
        *(v55 + 16) = a1;
        LOBYTE(v126) = 1;
        v119[87] = *(a3 + 128);
        *&v119[23] = v56;
        v57 = swift_allocObject();
        *(v57 + 16) = 0u;
        *(v57 + 32) = 0u;
        *(v57 + 81) = *&v119[32];
        *(v57 + 97) = *&v119[48];
        *(v57 + 113) = *&v119[64];
        *(v57 + 49) = *v119;
        *(v57 + 48) = 1;
        *(v57 + 129) = *&v119[80];
        *(v57 + 65) = *&v119[16];
        *(v57 + 144) = sub_1D6AC916C;
        *(v57 + 152) = v55;
        *a4 = v57 | 0x2000000000000000;
        sub_1D673F334(&v131, &v126);
        swift_unknownObjectRetain();
        return;
      }

      v58 = *(a3 + 96);
      v133 = *(a3 + 80);
      v134 = v58;
      v135 = *(a3 + 112);
      v136 = *(a3 + 128);
      v59 = *(a3 + 64);
      v131 = *(a3 + 48);
      v132 = v59;
      v60 = swift_allocObject();
      *&v120[39] = *(a3 + 80);
      *&v120[55] = *(a3 + 96);
      *&v120[71] = *(a3 + 112);
      v61 = *(a3 + 64);
      *&v120[7] = *(a3 + 48);
      *(v60 + 16) = a1;
      LOBYTE(v126) = 1;
      v120[87] = *(a3 + 128);
      *&v120[23] = v61;
      v62 = swift_allocObject();
      *(v62 + 16) = 0u;
      *(v62 + 32) = 0u;
      *(v62 + 81) = *&v120[32];
      *(v62 + 97) = *&v120[48];
      *(v62 + 113) = *&v120[64];
      *(v62 + 49) = *v120;
      *(v62 + 48) = 1;
      *(v62 + 129) = *&v120[80];
      *(v62 + 65) = *&v120[16];
      *(v62 + 144) = sub_1D6AC9164;
      *(v62 + 152) = v60;
      *a4 = v62 | 0x2000000000000000;
      swift_unknownObjectRetain();
      goto LABEL_57;
    }

    v116 = a2;
    v27 = *(a3 + 32);
    v28 = *(a3 + 16) * v27;
    v29 = v27 * *(a3 + 24);
    LOBYTE(v131) = 11;
    swift_getObjectType();
    v30 = sub_1D6F1DD74(a1, &v131);
    if (v30)
    {
      if (v28 <= 210.0 && v29 <= 210.0)
      {
        v63 = v30;
        v127 = sub_1D5C169F4();
        v128 = sub_1D5EECFF8();
        *&v126 = v63;
        v64 = *(a3 + 96);
        v133 = *(a3 + 80);
        v134 = v64;
        v135 = *(a3 + 112);
        v136 = *(a3 + 128);
        v65 = *(a3 + 64);
        v131 = *(a3 + 48);
        v132 = v65;
        v130 = 1;
        *&v124[23] = v65;
        *&v124[7] = v131;
        v124[87] = v136;
        *&v124[71] = v135;
        *&v124[39] = v133;
        *&v124[55] = v64;
        v66 = swift_allocObject();
        sub_1D5B63F14(&v126, v66 + 16);
        v67 = v130;
        v68 = swift_allocObject();
        *(v68 + 16) = 0u;
        *(v68 + 32) = 0u;
        *(v68 + 48) = v67;
        *(v68 + 81) = *&v124[32];
        *(v68 + 97) = *&v124[48];
        *(v68 + 113) = *&v124[64];
        *(v68 + 129) = *&v124[80];
        *(v68 + 49) = *v124;
        *(v68 + 65) = *&v124[16];
        v69 = sub_1D6AC91D8;
        goto LABEL_56;
      }
    }

    LOBYTE(v131) = 10;
    v32 = sub_1D6F1DD74(a1, &v131);
    if (v32)
    {
      if (v28 <= 480.0 && v29 <= 480.0)
      {
        v74 = v32;
        v127 = sub_1D5C169F4();
        v128 = sub_1D5EECFF8();
        *&v126 = v74;
        v75 = *(a3 + 96);
        v133 = *(a3 + 80);
        v134 = v75;
        v135 = *(a3 + 112);
        v136 = *(a3 + 128);
        v76 = *(a3 + 64);
        v131 = *(a3 + 48);
        v132 = v76;
        v130 = 1;
        *&v125[23] = v76;
        *&v125[7] = v131;
        v125[87] = v136;
        *&v125[71] = v135;
        *&v125[39] = v133;
        *&v125[55] = v75;
        v66 = swift_allocObject();
        sub_1D5B63F14(&v126, v66 + 16);
        v77 = v130;
        v68 = swift_allocObject();
        *(v68 + 16) = 0u;
        *(v68 + 32) = 0u;
        *(v68 + 81) = *&v125[32];
        *(v68 + 97) = *&v125[48];
        *(v68 + 113) = *&v125[64];
        *(v68 + 49) = *v125;
        *(v68 + 48) = v77;
        *(v68 + 129) = *&v125[80];
        *(v68 + 65) = *&v125[16];
        v69 = sub_1D6AC91D8;
        goto LABEL_56;
      }
    }

    LOBYTE(v131) = 9;
    v34 = sub_1D6F1DD74(a1, &v131);
    if (!v34)
    {
      v115 = v9;
      if (qword_1EDF1BB50 != -1)
      {
        swift_once();
      }

      v111 = qword_1EDFFC828;
      v109 = sub_1D7262EBC();
      sub_1D6AC90B0(0, &qword_1EDF3C5E0, sub_1D5B8EA84);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1D7273AE0;
      v83 = [a1 identifier];
      v84 = sub_1D726207C();
      v86 = v85;

      *(v82 + 56) = MEMORY[0x1E69E6158];
      *(v82 + 64) = sub_1D5B7E2C0();
      *(v82 + 32) = v84;
      *(v82 + 40) = v86;
      sub_1D725C30C("Missing alternate sports logo of any quality for tag=%{public}@, fallback to normal logo", 88, 2, &dword_1D5B42000, v111, v109, v82);

      *&v131 = v8 & 1;
      *(&v131 + 1) = v7 & 0xEFFFFFFFFFFFFFFBLL | 4;
      goto LABEL_64;
    }

    v35 = v34;
    v127 = sub_1D5C169F4();
    v128 = sub_1D5EECFF8();
    *&v126 = v35;
    v36 = *(a3 + 96);
    v133 = *(a3 + 80);
    v134 = v36;
    v135 = *(a3 + 112);
    v136 = *(a3 + 128);
    v37 = *(a3 + 64);
    v131 = *(a3 + 48);
    v132 = v37;
    v130 = 1;
    *&v129[23] = v37;
    *&v129[7] = v131;
    v129[87] = v136;
    *&v129[71] = v135;
    *&v129[39] = v133;
    *&v129[55] = v36;
    v66 = swift_allocObject();
    sub_1D5B63F14(&v126, v66 + 16);
    v38 = v130;
    v68 = swift_allocObject();
    *(v68 + 16) = 0u;
    *(v68 + 32) = 0u;
    v39 = *&v129[48];
    *(v68 + 81) = *&v129[32];
    *(v68 + 97) = v39;
    *(v68 + 113) = *&v129[64];
    v40 = *&v129[16];
    *(v68 + 49) = *v129;
    *(v68 + 48) = v38;
    *(v68 + 129) = *&v129[80];
    *(v68 + 65) = v40;
    v69 = sub_1D6723C3C;
LABEL_56:
    *(v68 + 144) = v69;
    *(v68 + 152) = v66;
    *a4 = v68 | 0x2000000000000000;
LABEL_57:
    sub_1D673F334(&v131, &v126);
    return;
  }

  v116 = a2;
  if (v11)
  {
    v41 = *(a3 + 32);
    v42 = *(a3 + 16) * v41;
    v43 = v41 * *(a3 + 24);
    LOBYTE(v131) = 8;
    swift_getObjectType();
    v44 = sub_1D6F1DD74(a1, &v131);
    if (v44)
    {
      if (v42 <= 210.0 && v43 <= 210.0)
      {
        v70 = v44;
        v127 = sub_1D5C169F4();
        v128 = sub_1D5EECFF8();
        *&v126 = v70;
        v71 = *(a3 + 96);
        v133 = *(a3 + 80);
        v134 = v71;
        v135 = *(a3 + 112);
        v136 = *(a3 + 128);
        v72 = *(a3 + 64);
        v131 = *(a3 + 48);
        v132 = v72;
        v130 = 1;
        *&v121[23] = v72;
        *&v121[7] = v131;
        v121[87] = v136;
        *&v121[71] = v135;
        *&v121[39] = v133;
        *&v121[55] = v71;
        v66 = swift_allocObject();
        sub_1D5B63F14(&v126, v66 + 16);
        v73 = v130;
        v68 = swift_allocObject();
        *(v68 + 16) = 0u;
        *(v68 + 32) = 0u;
        *(v68 + 81) = *&v121[32];
        *(v68 + 97) = *&v121[48];
        *(v68 + 113) = *&v121[64];
        *(v68 + 49) = *v121;
        *(v68 + 48) = v73;
        *(v68 + 129) = *&v121[80];
        *(v68 + 65) = *&v121[16];
        v69 = sub_1D6AC91D8;
        goto LABEL_56;
      }
    }

    LOBYTE(v131) = 7;
    v46 = sub_1D6F1DD74(a1, &v131);
    if (v46)
    {
      if (v42 <= 480.0 && v43 <= 480.0)
      {
        v78 = v46;
        v127 = sub_1D5C169F4();
        v128 = sub_1D5EECFF8();
        *&v126 = v78;
        v79 = *(a3 + 96);
        v133 = *(a3 + 80);
        v134 = v79;
        v135 = *(a3 + 112);
        v136 = *(a3 + 128);
        v80 = *(a3 + 64);
        v131 = *(a3 + 48);
        v132 = v80;
        v130 = 1;
        *&v122[23] = v80;
        *&v122[7] = v131;
        v122[87] = v136;
        *&v122[71] = v135;
        *&v122[39] = v133;
        *&v122[55] = v79;
        v66 = swift_allocObject();
        sub_1D5B63F14(&v126, v66 + 16);
        v81 = v130;
        v68 = swift_allocObject();
        *(v68 + 16) = 0u;
        *(v68 + 32) = 0u;
        *(v68 + 81) = *&v122[32];
        *(v68 + 97) = *&v122[48];
        *(v68 + 113) = *&v122[64];
        *(v68 + 49) = *v122;
        *(v68 + 48) = v81;
        *(v68 + 129) = *&v122[80];
        *(v68 + 65) = *&v122[16];
        v69 = sub_1D6AC91D8;
        goto LABEL_56;
      }
    }

    LOBYTE(v131) = 6;
    v48 = sub_1D6F1DD74(a1, &v131);
    if (v48)
    {
      v49 = v48;
      v127 = sub_1D5C169F4();
      v128 = sub_1D5EECFF8();
      *&v126 = v49;
      v50 = *(a3 + 96);
      v133 = *(a3 + 80);
      v134 = v50;
      v135 = *(a3 + 112);
      v136 = *(a3 + 128);
      v51 = *(a3 + 64);
      v131 = *(a3 + 48);
      v132 = v51;
      v130 = 1;
      *&v123[23] = v51;
      *&v123[7] = v131;
      v123[87] = v136;
      *&v123[71] = v135;
      *&v123[39] = v133;
      *&v123[55] = v50;
      v66 = swift_allocObject();
      sub_1D5B63F14(&v126, v66 + 16);
      v52 = v130;
      v68 = swift_allocObject();
      *(v68 + 16) = 0u;
      *(v68 + 32) = 0u;
      *(v68 + 81) = *&v123[32];
      *(v68 + 97) = *&v123[48];
      *(v68 + 113) = *&v123[64];
      *(v68 + 49) = *v123;
      *(v68 + 48) = v52;
      *(v68 + 129) = *&v123[80];
      *(v68 + 65) = *&v123[16];
      v69 = sub_1D6AC91D8;
      goto LABEL_56;
    }

    v115 = v9;
    if (qword_1EDF1BB50 != -1)
    {
      swift_once();
    }

    v112 = qword_1EDFFC828;
    v110 = sub_1D7262EBC();
    sub_1D6AC90B0(0, &qword_1EDF3C5E0, sub_1D5B8EA84);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1D7273AE0;
    v88 = [a1 identifier];
    v89 = sub_1D726207C();
    v91 = v90;

    *(v87 + 56) = MEMORY[0x1E69E6158];
    *(v87 + 64) = sub_1D5B7E2C0();
    *(v87 + 32) = v89;
    *(v87 + 40) = v91;
    sub_1D725C30C("Missing sports logo of any quality for tag=%{public}@, fallback to icon", 71, 2, &dword_1D5B42000, v112, v110, v87);

    *&v131 = v8 & 1;
    *(&v131 + 1) = v7 & 0xEFFFFFFFFFFFFFFBLL;
LABEL_64:
    *&v132 = v10;
    *(&v132 + 1) = v115;

    sub_1D6AC722C(a1, v116, a3, a4);
    sub_1D5F580D0(v131, *(&v131 + 1), v132, *(&v132 + 1));
    return;
  }

  v114 = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a1;
  sub_1D6AC90B0(0, &qword_1EDF021A8, sub_1D6AC9104);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_1D7270C10;
  v16 = sub_1D6AC9048;
  if (v8)
  {
    v17 = sub_1D6AC90A8;
  }

  else
  {
    v17 = sub_1D6AC9048;
  }

  if (v8)
  {
    v18 = v13;
  }

  else
  {
    v18 = v12;
  }

  if ((v8 & 1) == 0)
  {
    v16 = sub_1D6AC90A8;
  }

  *(v14 + 32) = v17;
  *(v14 + 40) = v18;
  if (v8)
  {
    v19 = v12;
  }

  else
  {
    v19 = v13;
  }

  *(v14 + 48) = v16;
  *(v14 + 56) = v19;
  swift_unknownObjectRetain_n();
  swift_retain_n();

  v20 = *(v15 + 32);

  v20(&v131, v21);

  v22 = v131;
  if ((~v131 & 0xF000000000000007) != 0 || (v23 = *(v15 + 48), v24 = , v23(&v131, v24), , v22 = v131, (~v131 & 0xF000000000000007) != 0))
  {

    *a4 = v22;
  }

  else
  {

    *&v131 = v7;

    v25 = v137;
    v26 = sub_1D5F4FDC4(v116);
    if (v25)
    {
    }

    else
    {
      v113 = v26;

      *&v131 = v116;
      v137 = 0;
      v92 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v93 = v92();
      v94 = v137;
      v95 = sub_1D5E02AFC(v93, v10);

      if (v94)
      {
      }

      else
      {
        *&v131 = v116;
        v96 = v92();
        v97 = sub_1D5E02AFC(v96, v114);

        v137 = 0;
        ObjectType = swift_getObjectType();
        v98 = FCTagProviding.iconColor.getter();
        v99 = objc_opt_self();
        v100 = v113;
        v101 = [v99 whiteColor];
        v102 = [v98 _isSimilarToColor_withinPercentage_];

        if (v102)
        {
          v103 = [v99 blackColor];

          v98 = v103;
        }

        v104 = swift_allocObject();
        v105 = *(a3 + 16);
        v106 = *(a3 + 24);
        *&v131 = v97;
        *(&v131 + 1) = v98;
        *&v132 = v100;
        *(&v132 + 1) = v95;
        FCTagProviding.createTagImage(imageSize:style:)(&v131, ObjectType, v105, v106);
        v108 = v107;

        *(v104 + 16) = v108;
        *a4 = v104;
      }
    }
  }
}

double sub_1D6AC81A4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == 2)
  {
    v11 = 0;
    swift_getObjectType();
    v6 = &v11;
  }

  else
  {
    v7 = [a1 userInterfaceStyle];
    if (v7 >= 2)
    {
      if (v7 == 2)
      {
        v12 = 0;
        swift_getObjectType();
        v6 = &v12;
      }

      else
      {
        v14 = 1;
        swift_getObjectType();
        v6 = &v14;
      }
    }

    else
    {
      v13 = 1;
      swift_getObjectType();
      v6 = &v13;
    }
  }

  v8 = sub_1D6F1DD74(a3, v6);
  if (v8)
  {
    v9 = v8;
    *(a4 + 24) = sub_1D5C169F4();
    *(a4 + 32) = sub_1D5EECFF8();
    *a4 = v9;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_1D6AC828C@<D0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    v9 = 0;
    swift_getObjectType();
    v5 = &v9;
  }

  else
  {
    v10 = 2;
    swift_getObjectType();
    v5 = &v10;
  }

  v6 = sub_1D6F1DD74(a2, v5);
  if (v6)
  {
    v7 = v6;
    *(a3 + 24) = sub_1D5C169F4();
    *(a3 + 32) = sub_1D5EECFF8();
    *a3 = v7;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D6AC8328@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  LOBYTE(v22[0]) = 3;
  swift_getObjectType();
  result = sub_1D6F1DD74(a1, v22);
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    v9 = *(a2 + 80);
    v10 = *(a2 + 112);
    v22[3] = *(a2 + 96);
    v22[4] = v10;
    v23 = *(a2 + 128);
    v11 = *(a2 + 64);
    v22[0] = *(a2 + 48);
    v22[1] = v11;
    v22[2] = v9;
    v12 = swift_allocObject();
    __asm { FMOV            V1.2D, #1.0 }

    *(v8 + 16) = xmmword_1D731C7A0;
    *(v8 + 32) = _Q1;
    v18 = *(a2 + 96);
    *(v8 + 88) = *(a2 + 80);
    *(v8 + 104) = v18;
    *(v8 + 120) = *(a2 + 112);
    v19 = *(a2 + 64);
    *(v8 + 56) = *(a2 + 48);
    *(v12 + 16) = v7;
    *(v8 + 48) = 0;
    *(v8 + 136) = *(a2 + 128);
    *(v8 + 72) = v19;
    v20 = v8 | 0x2000000000000000;
    *(v8 + 144) = sub_1D6AC9174;
    *(v8 + 152) = v12;
    result = sub_1D673F334(v22, v21);
  }

  else
  {
    v20 = 0xF000000000000007;
  }

  *a3 = v20;
  return result;
}

id sub_1D6AC844C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if ((*(a1 + 16) >= 75.0 || *(a1 + 24) >= 75.0) && (LOBYTE(v16[0]) = 5, swift_getObjectType(), (result = sub_1D6F1DD74(a2, v16)) != 0) || (LOBYTE(v16[0]) = 4, swift_getObjectType(), (result = sub_1D6F1DD74(a2, v16)) != 0))
  {
    v7 = result;
    v8 = swift_allocObject();
    v9 = *(a1 + 80);
    v10 = *(a1 + 112);
    v16[3] = *(a1 + 96);
    v16[4] = v10;
    v17 = *(a1 + 128);
    v11 = *(a1 + 64);
    v16[0] = *(a1 + 48);
    v16[1] = v11;
    v16[2] = v9;
    v12 = swift_allocObject();
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    v13 = *(a1 + 96);
    *(v8 + 88) = *(a1 + 80);
    *(v8 + 104) = v13;
    *(v8 + 120) = *(a1 + 112);
    v14 = *(a1 + 64);
    *(v8 + 56) = *(a1 + 48);
    *(v12 + 16) = v7;
    *(v8 + 48) = 1;
    *(v8 + 136) = *(a1 + 128);
    *(v8 + 72) = v14;
    *(v8 + 144) = sub_1D6AC91D4;
    *(v8 + 152) = v12;
    *a3 = v8 | 0x2000000000000000;
    return sub_1D673F334(v16, v15);
  }

  else
  {
    *a3 = 0xF000000000000007;
  }

  return result;
}

uint64_t FormatTagIconPreferredSource.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

void _s8NewsFeed18FormatTagIconStyleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v3 = a1[2];
    v2 = a1[3];
    v5 = a2[2];
    v4 = a2[3];
    v6 = a1[1];
    v8 = a2[1];
    v9 = v6;
    if (static FormatFont.== infix(_:_:)(&v9, &v8))
    {
      sub_1D633A310(v3, v5);
      if (v7)
      {

        sub_1D633A310(v2, v4);
      }
    }
  }
}

uint64_t _s8NewsFeed16FormatTagBindingV5ImageO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = (v2 >> 59) & 2 | (v2 >> 2) & 1;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v2 == 0x1000000000000004 && (v4 | v5 | v3) == 0)
      {
        if (((v6 >> 59) & 2 | (v6 >> 2) & 1) == 3 && v6 == 0x1000000000000004 && (v8 | v9 | v7) == 0)
        {
          sub_1D5F580D0(0, 0x1000000000000004uLL, 0, 0);
          sub_1D5F580D0(0, 0x1000000000000004uLL, 0, 0);
          v12 = 1;
          return v12 & 1;
        }
      }

      else if (((v6 >> 59) & 2 | (v6 >> 2) & 1) == 3 && v7 == 1 && v6 == 0x1000000000000004 && (v8 | v9) == 0)
      {
        v12 = 1;
        sub_1D5F580D0(1, 0x1000000000000004uLL, 0, 0);
        sub_1D5F580D0(1, 0x1000000000000004uLL, 0, 0);
        return v12 & 1;
      }

LABEL_34:
      sub_1D5F58484(*a2, a2[1]);
      sub_1D5F58484(v3, v2);
      sub_1D5F580D0(v3, v2, v5, v4);
      sub_1D5F580D0(v7, v6, v9, v8);
      v12 = 0;
      return v12 & 1;
    }

    if (((v6 >> 59) & 2 | (v6 >> 2) & 1) != 2)
    {
      goto LABEL_34;
    }

LABEL_9:
    LOBYTE(v24) = v3 & 1;
    v25 = v2 & 0xEFFFFFFFFFFFFFFBLL;
    v26 = v5;
    v27 = v4;
    LOBYTE(v20) = v7 & 1;
    v21 = v6 & 0xEFFFFFFFFFFFFFFBLL;
    goto LABEL_10;
  }

  if (v10)
  {
    if (((v6 >> 59) & 2 | (v6 >> 2) & 1) != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_9;
  }

  if ((v6 >> 59) & 2 | (v6 >> 2) & 1)
  {
    goto LABEL_34;
  }

  LOBYTE(v24) = v3 & 1;
  v25 = v2;
  v26 = v5;
  v27 = v4;
  LOBYTE(v20) = v7 & 1;
  v21 = v6;
LABEL_10:
  v22 = v9;
  v23 = v8;
  sub_1D5F58484(v7, v6);
  sub_1D5F58484(v3, v2);
  sub_1D5F58484(v7, v6);
  sub_1D5F58484(v3, v2);
  _s8NewsFeed18FormatTagIconStyleV2eeoiySbAC_ACtFZ_0(&v24, &v20);
  v12 = v11;
  sub_1D5F580D0(v3, v2, v5, v4);
  sub_1D5F580D0(v7, v6, v9, v8);
  sub_1D5F580D0(v7, v6, v9, v8);
  sub_1D5F580D0(v3, v2, v5, v4);
  return v12 & 1;
}

unint64_t sub_1D6AC8B28(uint64_t a1)
{
  result = sub_1D66BE2BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AC8B90()
{
  result = qword_1EC8913B0;
  if (!qword_1EC8913B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913B0);
  }

  return result;
}

unint64_t sub_1D6AC8BE4(uint64_t a1)
{
  result = sub_1D6AC8C0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AC8C0C()
{
  result = qword_1EC8913B8;
  if (!qword_1EC8913B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913B8);
  }

  return result;
}

unint64_t sub_1D6AC8CA0()
{
  result = qword_1EC8913C0;
  if (!qword_1EC8913C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913C0);
  }

  return result;
}

unint64_t sub_1D6AC8CF8()
{
  result = qword_1EC8913C8;
  if (!qword_1EC8913C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913C8);
  }

  return result;
}

unint64_t sub_1D6AC8D4C(uint64_t a1)
{
  result = sub_1D6AC8D74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AC8D74()
{
  result = qword_1EC8913D0;
  if (!qword_1EC8913D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913D0);
  }

  return result;
}

uint64_t sub_1D6AC8E08(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t get_enum_tag_for_layout_string_8NewsFeed16FormatTagBindingV5ImageO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >> 2;
  v3 = (v1 >> 2) & 1 | (v1 >> 59) & 2;
  if (v3 == 3)
  {
    return (v2 & 0xFFFFFFFE | *a1 & 1) + 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6AC8E8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D6AC8EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 2 * -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D6AC8F3C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = ((a2 << 59) | (4 * a2)) & 0x1000000000000004 | result[1] & 0xEFFFFFFFFFFFFFF8;
    *result &= 1uLL;
    result[1] = v2;
  }

  else
  {
    *result = (a2 - 3) & 1;
    result[1] = (4 * (a2 - 3)) | 0x1000000000000004;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

uint64_t sub_1D6AC8FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D6AC8FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_48Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

void sub_1D6AC90B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6AC9104()
{
  result = qword_1EDF12970;
  if (!qword_1EDF12970)
  {
    sub_1D5B49CBC(255, &qword_1EDF12978, &type metadata for FormatImage);
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDF12970);
  }

  return result;
}

id sub_1D6AC9178@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_1D5C169F4();
  a1[4] = sub_1D5EECFF8();
  *a1 = v4;

  return v4;
}

void sub_1D6AC91DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 32);
  *v60 = *(a2 + 16);
  *&v60[16] = v11;
  v61[0] = *(a2 + 48);
  *(v61 + 15) = *(a2 + 63);
  v12 = sub_1D688DD04(a1);
  if (v6)
  {
    goto LABEL_21;
  }

  v13 = *(a3 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v50 = v12;
  if (!v13)
  {
LABEL_20:
    v59[0] = a4;
    v59[1] = a5;

    sub_1D70BE5B0(v59, a6, v60);

    v40 = *v60;
    v41 = v14;
    v42 = *&v60[24];
    v43 = *&v61[0];
    sub_1D6AC9CBC(0, v44, v45, v46);
    v58 = *&v60[8];
    v47 = swift_allocObject();
    *(v47 + 16) = v50;
    *(v47 + 24) = v41;
    *(v47 + 32) = v40;
    *(v47 + 40) = v58;
    *(v47 + 56) = v42;
    *(v47 + 64) = v43;
    return;
  }

  v48 = a4;
  v59[0] = MEMORY[0x1E69E7CC0];
  v56 = v13;
  sub_1D6997A40(0, v13, 0);
  v14 = v59[0];
  v15 = *(a3 + 32);
  v16 = *(a3 + 40);
  v17 = *(a3 + 48);
  v18 = *(a3 + 56);
  if (*(a6 + 16))
  {
    v19 = (a3 + 104);
    v20 = *(a3 + 64);
    v51 = a6;
    while (1)
    {
      sub_1D5D03180(v15, v16, v17);

      sub_1D5D03180(v15, v16, v17);
      v21 = sub_1D5B69D90(v18, v20);
      if ((v22 & 1) == 0)
      {
        v55 = v16;
        v57 = v20;
        v53 = v17;
        v32 = v15;
        goto LABEL_14;
      }

      v23 = (*(a6 + 56) + 40 * v21);
      v24 = v23[1];
      v25 = v23[2];
      v52 = v23[3];
      v54 = *v23;
      v26 = v23[4];

      v62 = v26;

      sub_1D5D07BA8(v15, v16, v17);

      v59[0] = v14;
      v28 = *(v14 + 16);
      v27 = *(v14 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D6997A40((v27 > 1), v28 + 1, 1);
        v14 = v59[0];
      }

      *(v14 + 16) = v28 + 1;
      v29 = v14 + (v28 << 6);
      *(v29 + 32) = v15;
      *(v29 + 40) = v16;
      *(v29 + 48) = v17;
      v30 = *&v60[3];
      *(v29 + 49) = *v60;
      *(v29 + 52) = v30;
      *(v29 + 56) = v54;
      *(v29 + 64) = v24;
      *(v29 + 72) = v25;
      *(v29 + 80) = v52;
      *(v29 + 88) = v62;
      if (v56 == 1)
      {
        break;
      }

      --v56;
      v15 = *(v19 - 4);
      v16 = *(v19 - 3);
      v17 = *(v19 - 16);
      v18 = *(v19 - 1);
      v20 = *v19;
      v19 += 5;
      a6 = v51;
      if (!*(v51 + 16))
      {
        goto LABEL_12;
      }
    }

    a6 = v51;
    a4 = v48;
    goto LABEL_20;
  }

  v20 = *(a3 + 64);
LABEL_12:
  sub_1D5D03180(v15, v16, v17);
  v57 = v20;

  v31 = v16;
  v32 = v15;
  v55 = v31;
  v53 = v17;
  sub_1D5D03180(v15, v31, v17);
LABEL_14:
  v33 = type metadata accessor for FormatLayoutError(0);
  sub_1D5D285FC();
  v62 = v33;
  swift_allocError();
  v35 = v34;
  v36 = *(a6 + 16);
  if (!v36)
  {
    v39 = v57;

    v37 = MEMORY[0x1E69E7CC0];
    v38 = v32;
    goto LABEL_18;
  }

  v37 = sub_1D5B9A6D8(*(a6 + 16), 0);
  v49 = sub_1D5E2A8BC();

  sub_1D5B87E38(*v60);
  if (v49 == v36)
  {
    v38 = v32;
    v39 = v57;
LABEL_18:
    *v35 = v18;
    v35[1] = v39;
    v35[2] = v37;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D5D07BA8(v38, v55, v53);

    sub_1D5D07BA8(v38, v55, v53);

LABEL_21:

    return;
  }

  __break(1u);
}

void sub_1D6AC9624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1D688DD04(a1);
  if (v5)
  {
  }

  else
  {
    v22 = v8;
    v9 = *(a3 + 16);
    if (v9)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1D6999C9C(0, v9, 0);
      v10 = v25;
      v11 = a3 + 56;
      v23 = a5;
      do
      {
        v24 = v10;
        v12 = *(v11 - 24);
        v13 = *(v11 - 16);
        v14 = *(v11 - 8);
        sub_1D5D03180(v12, v13, v14);

        sub_1D5D03180(v12, v13, v14);
        v15 = sub_1D5E42CB0(a5);
        sub_1D5D07BA8(v12, v13, v14);

        v10 = v24;
        v17 = *(v24 + 16);
        v16 = *(v24 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D6999C9C((v16 > 1), v17 + 1, 1);
          v10 = v24;
        }

        v11 += 32;
        *(v10 + 16) = v17 + 1;
        v18 = v10 + 32 * v17;
        *(v18 + 32) = v12;
        *(v18 + 40) = v13;
        *(v18 + 48) = v14;
        *(v18 + 56) = v15;
        --v9;
        a5 = v23;
      }

      while (v9);
      v19 = v10;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = sub_1D5E42CB0(a5);

    sub_1D6AC9C64(0);
    v21 = swift_allocObject();
    v21[2] = v22;
    v21[3] = v19;
    v21[4] = v20;
  }
}

uint64_t sub_1D6AC987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v18 = *a1;
  v19 = v9;
  v20 = v10;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v15 = *a2;
  v16 = v11;
  v17 = v12;
  sub_1D5D03180(v18, v9, v10);
  sub_1D5D03180(v15, v11, v12);
  v13 = _s8NewsFeed18FormatCommandStateO2eeoiySbAC_ACtFZ_0(&v18, &v15);
  sub_1D5D07BA8(v15, v16, v17);
  sub_1D5D07BA8(v18, v19, v20);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatCommandValue.CaseValue(0, a3, a4, a5);
  return sub_1D7261FBC() & 1;
}

uint64_t static FormatCommandValue.== infix(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *(*a1 + 32);
  v15[0] = *(*a1 + 16);
  v15[1] = v10;
  v16[0] = *(v8 + 48);
  *(v16 + 15) = *(v8 + 63);
  v11 = *(v9 + 32);
  v13[0] = *(v9 + 16);
  v13[1] = v11;
  v14[0] = *(v9 + 48);
  *(v14 + 15) = *(v9 + 63);
  if ((static FormatCommandBinding.== infix(_:_:)(v15, v13) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatCommandValue.CaseValue(0, a3, a4, a5);
  swift_getWitnessTable();
  if ((sub_1D726280C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatCommandValue(0, a3, a4, a5);
  return sub_1D7261FBC() & 1;
}

uint64_t sub_1D6AC9B08(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6AC9BAC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6AC9C28(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1D6AC9C64(uint64_t a1)
{
  if (!qword_1EDF0D020)
  {
    v2 = sub_1D62B7E2C();
    v5 = type metadata accessor for FormatCommandActionValue(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDF0D020);
    }
  }
}

void sub_1D6AC9CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EDF263C0[0])
  {
    v4 = type metadata accessor for FormatCommandActionValue(0, &type metadata for FormatStateMachineEvent, a3, a4);
    if (!v5)
    {
      atomic_store(v4, qword_1EDF263C0);
    }
  }
}

uint64_t sub_1D6AC9D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v44 = a3;
  sub_1D5F7BAC0();
  v43 = v5;
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35 - v10;
  sub_1D6ACA9A4(0);
  v40 = v12;
  v38 = *(v12 - 8);
  v13 = v38;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v45 = &unk_1F5119338;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  sub_1D5E4B3E4();
  sub_1D6ACAB18(&qword_1EC8913F0, sub_1D5E4B3E4, MEMORY[0x1E69E6338]);
  sub_1D6ACAA68();
  sub_1D6ACAAC4();

  v37 = v20;
  sub_1D72619DC();
  v45 = 0;
  v46 = 1;
  sub_1D7260EDC();
  v35 = v11;
  sub_1D72617DC();
  v22 = *(v13 + 16);
  v36 = v16;
  v23 = v20;
  v24 = v40;
  v22(v16, v23, v40);
  v26 = v41;
  v25 = v42;
  v27 = *(v41 + 16);
  v28 = v43;
  v27(v42, v11, v43);
  v29 = v44;
  v30.n128_f64[0] = v22(v44, v16, v24);
  sub_1D6ACA934(0, v30);
  v27(&v29[*(v31 + 48)], v25, v28);
  v32 = *(v26 + 8);
  v32(v35, v28);
  v33 = *(v38 + 8);
  v33(v37, v24);
  v32(v25, v28);
  return (v33)(v36, v24);
}

uint64_t sub_1D6ACA0BC@<X0>(char *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *a1;
  v6 = v11;

  sub_1D6ACA180(&v11, a3, v12);
  v7 = v12[0];
  v8 = v12[1];
  type metadata accessor for DebugFormatPackageTree(0);
  sub_1D6ACAB18(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree, &unk_1D7380468);
  result = sub_1D7260F8C();
  *a4 = result;
  *(a4 + 8) = v10;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  return result;
}

void sub_1D6ACA180(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v59[0] = a3;
  v59[1] = a2;
  sub_1D5B592C0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v60 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (v59 - v13);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (v59 - v17);
  v19 = type metadata accessor for FormatCompilerOptions(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v59 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v59 - v29;
  v31 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  if (!v31)
  {
    sub_1D72600CC();

    v45 = *(v61 + 16);

    sub_1D5E4B804(v45 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v30, type metadata accessor for FormatCompilerOptions);

    v46 = v60;
    sub_1D5E4B804(&v30[*(v19 + 24)], v60, sub_1D5B592C0);
    sub_1D5E4B924(v30, type metadata accessor for FormatCompilerOptions);
    sub_1D5E4B86C(v46, v18);
    v36 = *v18;
    v37 = v18[1];
    v47 = v18[2];
    v48 = v18[3];
    v49 = v18[4];
    v39 = v18[5];
    sub_1D5E4B8D0(*v18, v37, v47, v48, v49, v39);
    sub_1D5E4B924(v18, type metadata accessor for FormatCompilerOptions.Newsroom);
    if (v37 != 1)
    {

      v40 = v36;
      v41 = v37;
      v42 = v47;
      v43 = v48;
      v44 = v49;
      goto LABEL_7;
    }

LABEL_9:
    v57 = v59[0];
    *v59[0] = 0;
    *(v57 + 8) = 0;
    return;
  }

  if (v31 != 1)
  {
    sub_1D72600CC();

    v51 = *(v61 + 16);

    sub_1D5E4B804(v51 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v22, type metadata accessor for FormatCompilerOptions);

    v52 = v60;
    sub_1D5E4B804(&v22[*(v19 + 24)], v60, sub_1D5B592C0);
    sub_1D5E4B924(v22, type metadata accessor for FormatCompilerOptions);
    sub_1D5E4B86C(v52, v10);
    v53 = *v10;
    v54 = v10[1];
    v55 = v10[2];
    v56 = v10[3];
    v36 = v10[4];
    v37 = v10[5];
    sub_1D5E4B8D0(*v10, v54, v55, v56, v36, v37);
    sub_1D5E4B924(v10, type metadata accessor for FormatCompilerOptions.Newsroom);
    if (v54 != 1)
    {

      v40 = v53;
      v41 = v54;
      v42 = v55;
      v43 = v56;
      v44 = v36;
      v50 = v37;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1D72600CC();

  v32 = *(v61 + 16);

  sub_1D5E4B804(v32 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v26, type metadata accessor for FormatCompilerOptions);

  v33 = v60;
  sub_1D5E4B804(&v26[*(v19 + 24)], v60, sub_1D5B592C0);
  sub_1D5E4B924(v26, type metadata accessor for FormatCompilerOptions);
  sub_1D5E4B86C(v33, v14);
  v34 = *v14;
  v35 = v14[1];
  v36 = v14[2];
  v37 = v14[3];
  v38 = v14[4];
  v39 = v14[5];
  sub_1D5E4B8D0(*v14, v35, v36, v37, v38, v39);
  sub_1D5E4B924(v14, type metadata accessor for FormatCompilerOptions.Newsroom);
  if (v35 == 1)
  {
    goto LABEL_9;
  }

  v40 = v34;
  v41 = v35;
  v42 = v36;
  v43 = v37;
  v44 = v38;
LABEL_7:
  v50 = v39;
LABEL_11:
  sub_1D5E4B984(v40, v41, v42, v43, v44, v50);
  v58 = v59[0];
  *v59[0] = v36;
  *(v58 + 8) = v37;
}

double sub_1D6ACA6EC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x6D6F6F727377654ELL;
  *(a1 + 8) = 0xE800000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1D6ACA720()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v1;
  *(v3 + 40) = 3;
  *(v3 + 48) = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  *(v4 + 40) = 3;
  *(v4 + 48) = 1;
  swift_retain_n();
  sub_1D72619BC();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  sub_1D6ACA8DC(0, v6);
  sub_1D5F7BB40();
  sub_1D6ACAB18(&qword_1EC891400, sub_1D6ACA8DC, MEMORY[0x1E6981F48]);

  return sub_1D7260FFC();
}

void sub_1D6ACA8DC(uint64_t a1, __n128 a2)
{
  if (!qword_1EC8913D8)
  {
    sub_1D6ACA934(255, a2);
    v2 = sub_1D7261A9C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8913D8);
    }
  }
}

void sub_1D6ACA934(uint64_t a1, __n128 a2)
{
  if (!qword_1EC8913E0)
  {
    sub_1D6ACA9A4(255);
    sub_1D5F7BAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8913E0);
    }
  }
}

void sub_1D6ACA9A4(uint64_t a1)
{
  if (!qword_1EC8913E8)
  {
    sub_1D5E4B3E4();
    sub_1D6ACAB18(&qword_1EC8913F0, sub_1D5E4B3E4, MEMORY[0x1E69E6338]);
    sub_1D6ACAA68();
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8913E8);
    }
  }
}

unint64_t sub_1D6ACAA68()
{
  result = qword_1EC8913F8;
  if (!qword_1EC8913F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8913F8);
  }

  return result;
}

unint64_t sub_1D6ACAAC4()
{
  result = qword_1EC891408;
  if (!qword_1EC891408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891408);
  }

  return result;
}

uint64_t sub_1D6ACAB18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6ACAB60(uint64_t a1, __n128 a2)
{
  if (!qword_1EC891418)
  {
    sub_1D6ACA8DC(255, a2);
    sub_1D5F7BB40();
    sub_1D6ACAB18(&qword_1EC891400, sub_1D6ACA8DC, MEMORY[0x1E6981F48]);
    v2 = sub_1D726100C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC891418);
    }
  }
}

void sub_1D6ACAC18(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v5 >> 6;
  if (v5 >> 6 <= 1)
  {
    if (!v6)
    {
      sub_1D5FCCDD4(*(a1 + 16), a2);
      return;
    }

    sub_1D5FCCDD4([*(a1 + 16) eventLeagueTag], a2);
    goto LABEL_14;
  }

  if (v6 != 2)
  {
    v12 = v4 | v5 ^ 0xC0;
    v13 = [swift_unknownObjectRetain() eventCompetitorTags];
    v15 = v13;
    if (v12)
    {
      if (!v13)
      {
        v16 = MEMORY[0x1E69E7CC0];
        goto LABEL_25;
      }
    }

    else if (!v13)
    {
      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_25;
    }

    sub_1D5EC01D0();
    v16 = sub_1D726267C();

LABEL_25:
    _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v16, v14);
    swift_unknownObjectRelease();
    sub_1D726353C();
    v26 = v19;
    v27 = v18;
    v21 = v20;
    v23 = v22;

    v24 = swift_allocObject();
    v25.f64[0] = v27;
    v25.f64[1] = v26;
    *(v24 + 16) = vmulq_f64(v25, vdupq_n_s64(0x406FE00000000000uLL));
    *(v24 + 32) = v21 * 255.0;
    *(v24 + 40) = v23;
    *(v24 + 48) = 0;
    *a2 = v24 | 0x6000000000000000;
    return;
  }

  v7 = [*(a1 + 16) eventCompetitorTags];
  if (v7)
  {
    v8 = v7;
    sub_1D5EC01D0();
    v9 = sub_1D726267C();

    if (!(v9 >> 62))
    {
      goto LABEL_7;
    }

LABEL_21:
    v10 = sub_1D7263BFC();
    if (v4 < v10)
    {
      goto LABEL_8;
    }

LABEL_22:

    type metadata accessor for FormatLayoutError(0);
    sub_1D6ACCD9C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v17 = v10;
    v17[1] = v4;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_21;
  }

LABEL_7:
  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 >= v10)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1DA6FB460](v4, v9);
    goto LABEL_12;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 8 * v4 + 32);
    swift_unknownObjectRetain();
LABEL_12:

    sub_1D5FCCDD4(v11, a2);
LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

uint64_t sub_1D6ACAF6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6ACB050(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6ACB120(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6ACB200@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6ACD008(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6ACB230(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746E657665;
  v5 = 0xEA0000000000726FLL;
  v6 = 0x74697465706D6F63;
  v7 = 0xD000000000000010;
  v8 = 0x80000001D73BBC40;
  if (v2 != 3)
  {
    v7 = 0xD000000000000011;
    v8 = 0x80000001D73BBC60;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x65756761656CLL;
    v3 = 0xE600000000000000;
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

void sub_1D6ACB3C4(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  *&v107 = a3;
  v121 = a4;
  v8 = type metadata accessor for FormatInspectionItem(0);
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (v14 <= 1)
  {
    v102 = v4;
    if (v14)
    {
      v57 = MEMORY[0x1E69E6F90];
      sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
      v58 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = swift_allocObject();
      v105 = xmmword_1D7273AE0;
      *(v16 + 16) = xmmword_1D7273AE0;
      v59 = *(a2 + 16);
      v60 = [objc_msgSend(v59 eventLeagueTag)];
      swift_unknownObjectRelease();
      v61 = sub_1D726207C();
      *&v106 = v62;

      sub_1D67D08C0(0, &qword_1EC8803C0, sub_1D5E4F38C, v57);
      inited = swift_initStackObject();
      *(inited + 16) = v105;
      v64 = *(v107 + 112);
      v114 = *(v107 + 96);
      v115 = v64;
      v116 = *(v107 + 128);
      v117 = *(v107 + 144);
      v65 = *(v107 + 48);
      v110 = *(v107 + 32);
      v111 = v65;
      v66 = *(v107 + 80);
      v112 = *(v107 + 64);
      v113 = v66;
      v67 = *(v107 + 16);
      v108 = *v107;
      v109 = v67;
      v68 = [v59 eventLeagueTag];
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D5FCF5FC(v68, &v118);
      swift_unknownObjectRelease_n();
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(inited + 64) = &off_1F518B2C0;
      v69 = swift_allocObject();
      *(inited + 32) = v69;
      *(v69 + 48) = v120;
      v70 = v119;
      *(v69 + 16) = v118;
      *(v69 + 32) = v70;
      v71 = sub_1D5F62BFC(inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
      v72 = sub_1D7073500(v71);

      v36 = 0x65756761654CLL;
      v37 = (v16 + v58);
      v38 = 0xE600000000000000;
      v39 = v72;
      v40 = v61;
      v41 = v106;
    }

    else
    {
      v22 = MEMORY[0x1E69E6F90];
      sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
      *&v106 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = swift_allocObject();
      v104 = xmmword_1D7273AE0;
      *(v16 + 16) = xmmword_1D7273AE0;
      v23 = *(a2 + 16);
      swift_getObjectType();
      v24 = [v23 displayName];
      v25 = sub_1D726207C();
      *&v105 = v26;

      sub_1D67D08C0(0, &qword_1EC8803C0, sub_1D5E4F38C, v22);
      v27 = swift_initStackObject();
      *(v27 + 16) = v104;
      v28 = *(v107 + 112);
      v114 = *(v107 + 96);
      v115 = v28;
      v116 = *(v107 + 128);
      v117 = *(v107 + 144);
      v29 = *(v107 + 48);
      v110 = *(v107 + 32);
      v111 = v29;
      v30 = *(v107 + 80);
      v112 = *(v107 + 64);
      v113 = v30;
      v31 = *(v107 + 16);
      v108 = *v107;
      v109 = v31;
      sub_1D5FCF5FC(v23, &v118);
      *(v27 + 56) = &type metadata for FormatInspectionGroup;
      *(v27 + 64) = &off_1F518B2C0;
      v32 = swift_allocObject();
      *(v27 + 32) = v32;
      *(v32 + 48) = v120;
      v33 = v119;
      *(v32 + 16) = v118;
      *(v32 + 32) = v33;
      v34 = sub_1D5F62BFC(v27);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v27 + 32));
      v35 = sub_1D7073500(v34);

      v36 = 0x746E657645;
      v37 = (v16 + v106);
      v38 = 0xE500000000000000;
      v39 = v35;
      v40 = v25;
      v41 = v105;
    }

    sub_1D711AD20(v36, v38, v39, v40, v41, v37);
    goto LABEL_41;
  }

  if (v14 != 2)
  {
    if (v14 == 3)
    {
      sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
      v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      v17 = v16 + v15;
      v18 = [swift_unknownObjectRetain() eventCompetitorTags];
      if (v18)
      {
        v20 = v18;
        sub_1D5EC01D0();
        v21 = sub_1D726267C();
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      v73 = v121;
      _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v21, v19);
      swift_unknownObjectRelease();
      sub_1D726353C();
      v106 = v75;
      v107 = v74;
      v77 = v76;
      v79 = v78;

      v80 = swift_allocObject();
      *&v81.f64[0] = v107;
      *&v81.f64[1] = v106;
      *(v80 + 16) = vmulq_f64(v81, vdupq_n_s64(0x406FE00000000000uLL));
      *(v80 + 32) = v77 * 255.0;
      *(v80 + 40) = v79;
      *(v80 + 48) = 0;
      v82 = *(v8 + 24);
      *(v17 + v82) = v80 | 0x6000000000000000;
      v83 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v83 - 8) + 56))(v17 + v82, 0, 1, v83);
      v84 = xmmword_1D731D190;
    }

    else
    {
      sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
      v52 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      v17 = v16 + v52;
      v53 = [swift_unknownObjectRetain() eventCompetitorTags];
      if (v53)
      {
        v55 = v53;
        sub_1D5EC01D0();
        v56 = sub_1D726267C();
      }

      else
      {
        v56 = MEMORY[0x1E69E7CC0];
      }

      v73 = v121;
      _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v56, v54);
      swift_unknownObjectRelease();
      sub_1D726353C();
      v106 = v86;
      v107 = v85;
      v88 = v87;
      v90 = v89;

      v91 = swift_allocObject();
      *&v92.f64[0] = v107;
      *&v92.f64[1] = v106;
      *(v91 + 16) = vmulq_f64(v92, vdupq_n_s64(0x406FE00000000000uLL));
      *(v91 + 32) = v88 * 255.0;
      *(v91 + 40) = v90;
      *(v91 + 48) = 0;
      v93 = *(v8 + 24);
      *(v17 + v93) = v91 | 0x6000000000000000;
      v94 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v94 - 8) + 56))(v17 + v93, 0, 1, v94);
      v84 = xmmword_1D731D180;
    }

    *v17 = v84;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    v95 = v17 + *(v8 + 28);
    *v95 = 0;
    *(v95 + 8) = 0;
    *(v95 + 16) = -1;
    goto LABEL_42;
  }

  v42 = [*(a2 + 16) eventCompetitorTags];
  if (!v42)
  {
LABEL_40:
    sub_1D67D08C0(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
    v101 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    v108 = 0u;
    v109 = 0u;
    sub_1D711B5C0(0x74697465706D6F43, 0xEA0000000000726FLL, &v108, (v16 + v101));
LABEL_41:
    v73 = v121;
LABEL_42:
    *v73 = v16;
    return;
  }

  v43 = v42;
  sub_1D5EC01D0();
  v44 = sub_1D726267C();

  v45 = v44;
  v46 = v44 & 0xFFFFFFFFFFFFFF8;
  v47 = v44 >> 62;
  if (v47)
  {
    goto LABEL_36;
  }

  v48 = *(v46 + 16);
  if (!v48)
  {
LABEL_39:

    goto LABEL_40;
  }

  while (1)
  {
    v49 = v45;
    *&v108 = MEMORY[0x1E69E7CC0];
    sub_1D6997AF0(0, v48 & ~(v48 >> 63), 0);
    if (v48 < 0)
    {
      break;
    }

    v16 = v108;
    v50 = v49;
    v102 = v5;
    v103 = v49 & 0xFFFFFFFFFFFFFF8;
    if (v47)
    {
      v51 = sub_1D7263BFC();
      v50 = v49;
    }

    else
    {
      v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    *&v105 = v50 & 0xC000000000000001;
    *&v106 = v51 & ~(v51 >> 63);
    *&v104 = v50;
    v47 = v48;
    while (v106 != v5)
    {
      if (v105)
      {
        v96 = MEMORY[0x1DA6FB460](v5);
      }

      else
      {
        if (v5 >= *(v103 + 16))
        {
          goto LABEL_35;
        }

        v96 = *(v50 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      sub_1D6ACBE9C(v5, v96, v13);
      swift_unknownObjectRelease();
      *&v108 = v16;
      v98 = *(v16 + 16);
      v97 = *(v16 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_1D6997AF0((v97 > 1), v98 + 1, 1);
        v16 = v108;
      }

      ++v5;
      *(v16 + 16) = v98 + 1;
      sub_1D5EC04A0(v13, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v98, type metadata accessor for FormatInspectionItem);
      v50 = v104;
      if (v48 == v5)
      {

        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v99 = v45;
    if (!sub_1D7263BFC())
    {
      goto LABEL_39;
    }

    v100 = sub_1D7263BFC();
    v45 = v99;
    v48 = v100;
    if (!v100)
    {

      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_41;
    }
  }

  __break(1u);
}

void sub_1D6ACBE9C(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  strcpy(&v16, "Competitor [");
  BYTE13(v16) = 0;
  HIWORD(v16) = -5120;
  *&v17[0] = a1;
  v5 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  v6 = v16;
  swift_getObjectType();
  v7 = [a2 displayName];
  v8 = sub_1D726207C();
  v10 = v9;

  sub_1D67D08C0(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5FCF5FC(a2, v17);
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v12 = swift_allocObject();
  *(inited + 32) = v12;
  *(v12 + 48) = v18;
  v13 = v17[1];
  *(v12 + 16) = v17[0];
  *(v12 + 32) = v13;
  v14 = sub_1D5F62BFC(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  v15 = sub_1D7073500(v14);

  sub_1D711AD20(v6, *(&v6 + 1), v15, v8, v10, a3);
}

double sub_1D6ACC0AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  sub_1D67D08C0(0, qword_1EDF103F0, type metadata accessor for FormatJsonKeyValue, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v25 - v7);
  v9 = type metadata accessor for FormatJsonKeyValue(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v16 = 0;
  v17 = *(a2 + 16);
  v30[0] = *a2;
  v30[1] = v17;
  v31 = *(a2 + 32);
  v26 = v18;
  v19 = (v18 + 48);
  v20 = MEMORY[0x1E69E7CC0];
  v27 = a1;
  do
  {
    v29 = byte_1F50F37B8[v16 + 32];
    sub_1D6ACC38C(&v29, a1, v30, v8);
    if ((*v19)(v8, 1, v9) == 1)
    {
      sub_1D67D05C8(v8, v21);
    }

    else
    {
      sub_1D5EC04A0(v8, v15, type metadata accessor for FormatJsonKeyValue);
      sub_1D5EC04A0(v15, v28, type metadata accessor for FormatJsonKeyValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D698F454(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1D698F454((v22 > 1), v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_1D5EC04A0(v28, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for FormatJsonKeyValue);
      a1 = v27;
    }

    ++v16;
  }

  while (v16 != 5);
  *v25 = v20;
  type metadata accessor for FormatJson(0);
  swift_storeEnumTagMultiPayload();
  return result;
}

void *sub_1D6ACC38C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *&v71 = a2;
  v8 = type metadata accessor for FormatJson(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v16 = MEMORY[0x1EEE9AC00](v13, v14).n128_u64[0];
  v17 = *a1;
  v18 = *(a3 + 16);
  if (v17 <= 1)
  {
    if (v17)
    {
      v44 = [*(a3 + 16) eventLeagueTag];
      v23 = type metadata accessor for FormatJsonKeyValue(0);
      sub_1D5FCEDAC(v44, (a4 + *(v23 + 20)));
      swift_unknownObjectRelease();
      v24 = 0x65756761656CLL;
      v25 = 0xE600000000000000;
    }

    else
    {
      v23 = type metadata accessor for FormatJsonKeyValue(0);
      sub_1D5FCEDAC(v18, (a4 + *(v23 + 20)));
      v24 = 0x746E657665;
      v25 = 0xE500000000000000;
    }

    *a4 = v24;
    a4[1] = v25;
    goto LABEL_33;
  }

  if (v17 != 2)
  {
    if (v17 == 3)
    {
      v19 = [swift_unknownObjectRetain() eventCompetitorTags];
      if (v19)
      {
        v21 = v19;
        sub_1D5EC01D0();
        v22 = sub_1D726267C();
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v22, v20);
      swift_unknownObjectRelease();
      sub_1D726353C();
      v70 = v48;
      v71 = v47;
      v50 = v49;
      v52 = v51;

      v53 = swift_allocObject();
      *&v54.f64[0] = v71;
      *&v54.f64[1] = v70;
      *(v53 + 16) = vmulq_f64(v54, vdupq_n_s64(0x406FE00000000000uLL));
      *(v53 + 32) = v50 * 255.0;
      *(v53 + 40) = v52;
      *(v53 + 48) = 0;
      v55 = v53 | 0x6000000000000000;
      v23 = type metadata accessor for FormatJsonKeyValue(0);
      *(a4 + *(v23 + 20)) = v55;
      swift_storeEnumTagMultiPayload();
      v56 = 0x80000001D73BBC40;
      v57 = 0xD000000000000010;
    }

    else
    {
      v40 = [swift_unknownObjectRetain() eventCompetitorTags];
      if (v40)
      {
        v42 = v40;
        sub_1D5EC01D0();
        v43 = sub_1D726267C();
      }

      else
      {
        v43 = MEMORY[0x1E69E7CC0];
      }

      _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v43, v41);
      swift_unknownObjectRelease();
      sub_1D726353C();
      v70 = v59;
      v71 = v58;
      v61 = v60;
      v63 = v62;

      v64 = swift_allocObject();
      *&v65.f64[0] = v71;
      *&v65.f64[1] = v70;
      *(v64 + 16) = vmulq_f64(v65, vdupq_n_s64(0x406FE00000000000uLL));
      *(v64 + 32) = v61 * 255.0;
      *(v64 + 40) = v63;
      *(v64 + 48) = 0;
      v66 = v64 | 0x6000000000000000;
      v23 = type metadata accessor for FormatJsonKeyValue(0);
      *(a4 + *(v23 + 20)) = v66;
      swift_storeEnumTagMultiPayload();
      v56 = 0x80000001D73BBC60;
      v57 = 0xD000000000000011;
    }

    *a4 = v57;
    a4[1] = v56;
    goto LABEL_33;
  }

  v68 = (v67 - v15);
  v26 = [v18 eventCompetitorTags];
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v28 = v26;
    sub_1D5EC01D0();
    v29 = sub_1D726267C();

    v30 = v29;
    if (!(v29 >> 62))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_10:
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v69 = v8;
      if (v31)
      {
        goto LABEL_11;
      }

LABEL_26:

      v35 = MEMORY[0x1E69E7CC0];
LABEL_27:
      v46 = v68;
      *v68 = v35;
      swift_storeEnumTagMultiPayload();
      *a4 = 0x74697465706D6F63;
      a4[1] = 0xEA0000000000726FLL;
      v23 = type metadata accessor for FormatJsonKeyValue(0);
      sub_1D5EC04A0(v46, a4 + *(v23 + 20), type metadata accessor for FormatJson);
LABEL_33:
      type metadata accessor for FormatJsonKeyValue(0);
      return (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
    }
  }

  v45 = v30;
  v31 = sub_1D7263BFC();
  v30 = v45;
  v69 = v8;
  if (!v31)
  {
    goto LABEL_26;
  }

LABEL_11:
  v32 = v30;
  v67[0] = a4;
  v67[1] = v4;
  v72 = v27;
  result = sub_1D6997B90(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v35 = v72;
    v36 = v32;
    *&v70 = v32 & 0xC000000000000001;
    do
    {
      if (v70)
      {
        v37 = MEMORY[0x1DA6FB460](v34, v36);
      }

      else
      {
        v37 = *(v36 + 8 * v34 + 32);
        swift_unknownObjectRetain();
      }

      sub_1D5FCEDAC(v37, v12);
      swift_unknownObjectRelease();
      v72 = v35;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D6997B90((v38 > 1), v39 + 1, 1);
        v35 = v72;
      }

      ++v34;
      *(v35 + 16) = v39 + 1;
      sub_1D5EC04A0(v12, v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v39, type metadata accessor for FormatJson);
      v36 = v32;
    }

    while (v31 != v34);

    a4 = v67[0];
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

BOOL _s8NewsFeed24FormatSportsEventBindingV5ColorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    if (!v6)
    {
      if (v5 >= 0x40)
      {
        return 0;
      }

      return (v4 ^ v2) == 0;
    }

    if ((v5 & 0xC0) == 0x40)
    {
      return (v4 ^ v2) == 0;
    }

    return 0;
  }

  if (v6 == 2)
  {
    if ((v5 & 0xC0) != 0x80)
    {
      return 0;
    }

    return ((v5 ^ v3) & 0x3F) == 0 && v2 == v4;
  }

  else
  {
    if (!(v2 | v3 ^ 0xC0))
    {
      v9 = v5 >= 0xC0 && v4 == 0;
      return v9 && v5 == 192;
    }

    v10 = v5 >= 0xC0 && v4 == 1;
    return v10 && v5 == 192;
  }
}

unint64_t sub_1D6ACCA48(uint64_t a1)
{
  result = sub_1D6ACCA70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6ACCA70()
{
  result = qword_1EC891420;
  if (!qword_1EC891420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891420);
  }

  return result;
}

unint64_t sub_1D6ACCAC4(void *a1)
{
  a1[1] = sub_1D667EB6C();
  a1[2] = sub_1D66FE1CC();
  result = sub_1D6ACCAFC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6ACCAFC()
{
  result = qword_1EC891438;
  if (!qword_1EC891438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891438);
  }

  return result;
}

uint64_t _s5ColorOwet_3(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 5 && *(a1 + 9))
  {
    return (*a1 + 5);
  }

  v3 = ((*(a1 + 8) >> 3) & 4 | (*(a1 + 8) >> 6)) ^ 7;
  if (v3 >= 4)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s5ColorOwst_3(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 4)
  {
    *(result + 8) = 0;
    *result = a2 - 5;
    if (a3 >= 5)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 5)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 32 - (a2 << 6);
    }
  }

  return result;
}

uint64_t sub_1D6ACCBF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D6ACCC0C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 0x1F | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

void sub_1D6ACCCA0()
{
  if (!qword_1EC891448)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC891448);
    }
  }
}

unint64_t sub_1D6ACCCF4()
{
  result = qword_1EC891450;
  if (!qword_1EC891450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC891450);
  }

  return result;
}

unint64_t sub_1D6ACCD48()
{
  result = qword_1EDF0CEA8;
  if (!qword_1EDF0CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CEA8);
  }

  return result;
}

uint64_t sub_1D6ACCD9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6ACCDE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v29 = *(a1 + 144);
  v5 = *(a1 + 112);
  v28[6] = *(a1 + 96);
  v28[7] = v5;
  v28[8] = *(a1 + 128);
  v6 = *(a1 + 48);
  v28[2] = *(a1 + 32);
  v28[3] = v6;
  v7 = *(a1 + 80);
  v28[4] = *(a1 + 64);
  v28[5] = v7;
  v8 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v8;
  v9 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v9;
  v27 = *(a2 + 32);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v23 = byte_1F50F7450[v4 + 32];
    sub_1D6ACB3C4(&v23, v26, v28, v24);
    v11 = *&v24[0];
    v12 = *(*&v24[0] + 16);
    v13 = v10[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= v10[3] >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_1D698BAE0(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (*(v11 + 16))
      {
LABEL_13:
        v17 = (v10[3] >> 1) - v10[2];
        type metadata accessor for FormatInspectionItem(0);
        if (v17 < v12)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v18 = v10[2];
          v19 = __OFADD__(v18, v12);
          v20 = v18 + v12;
          if (v19)
          {
            goto LABEL_21;
          }

          v10[2] = v20;
        }

        goto LABEL_3;
      }
    }

    if (v12)
    {
      goto LABEL_19;
    }

LABEL_3:
    if (++v4 == 5)
    {
      v21 = sub_1D5F62998(v10);

      sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v21, v24);

      v22 = v24[1];
      *a3 = v24[0];
      *(a3 + 16) = v22;
      *(a3 + 32) = v25;
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_1D6ACD008(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for FormatItemNodeData(uint64_t a1)
{
  result = qword_1EDF2DD20;
  if (!qword_1EDF2DD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6ACD0C8(uint64_t a1)
{
  type metadata accessor for FeedItem(319);
  if (v1 <= 0x3F)
  {
    sub_1D725D80C();
    if (v2 <= 0x3F)
    {
      sub_1D5F2F868();
      if (v3 <= 0x3F)
      {
        sub_1D6ACD194(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D6ACD194(uint64_t a1)
{
  if (!qword_1EDF1AD80)
  {
    sub_1D5E2A6E4();
    v1 = sub_1D7262BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AD80);
    }
  }
}

void *WeatherKitService.__allocating_init(weatherServiceProvider:stringBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = swift_allocObject();
  if (qword_1EDF18798 != -1)
  {
    swift_once();
  }

  sub_1D6ACD510();
  swift_allocObject();

  v8[4] = sub_1D725977C();
  sub_1D725A91C();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D6ACFF6C(0, &qword_1EDF17AF8, MEMORY[0x1E6984BE8], MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v8[2] = sub_1D725B7AC();
  v8[3] = a3;
  return v8;
}

void *WeatherKitService.init(weatherServiceProvider:stringBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  if (qword_1EDF18798 != -1)
  {
    swift_once();
  }

  sub_1D6ACD510();
  swift_allocObject();

  v3[4] = sub_1D725977C();
  sub_1D725A91C();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D6ACFF6C(0, &qword_1EDF17AF8, MEMORY[0x1E6984BE8], MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v3[2] = sub_1D725B7AC();
  v3[3] = a3;
  return v3;
}

void sub_1D6ACD510()
{
  if (!qword_1EDF181C0)
  {
    v0 = sub_1D725976C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF181C0);
    }
  }
}

uint64_t sub_1D6ACD568@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1D6ACD598@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t WeatherKitService.deinit()
{

  return v0;
}

uint64_t WeatherKitService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WeatherKitService.weather(for:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D7261B5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v21[-v11];
  v13 = *a1;
  v14 = a1[1];
  sub_1D6ACFF6C(0, &qword_1EDF17A88, sub_1D6ACD8FC, MEMORY[0x1E69D6B18]);
  sub_1D7261B4C();

  sub_1D725972C();

  sub_1D7261BAC();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v22 = v2;
  v23 = v13;
  v24 = v14;
  swift_allocObject();
  sub_1D725BBAC();
  v16 = sub_1D725B92C();
  sub_1D725BB9C();

  v15(v12, v4);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v18 = sub_1D725B92C();
  type metadata accessor for FeedWeather(0);
  v19 = sub_1D725BA9C();

  return v19;
}

void sub_1D6ACD8FC(uint64_t a1, uint64_t a2)
{
  if (!qword_1EDF189F0)
  {
    MEMORY[0x1EEE9AC00](0, a2);
    sub_1D7258E5C();
    sub_1D6ACDA10(255);
    sub_1D5FD2A8C(255);
    sub_1D6ACDB5C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDF189F0);
    }
  }
}

void sub_1D6ACDA10(uint64_t a1)
{
  if (!qword_1EDF189A8)
  {
    sub_1D7258E0C();
    v1 = MEMORY[0x1E6984B10];
    sub_1D6ACDB14(&qword_1EDF189F8, MEMORY[0x1E6984B10], MEMORY[0x1E6984B28]);
    sub_1D6ACDB14(&qword_1EDF18A08, v1, MEMORY[0x1E6984B18]);
    sub_1D6ACDB14(&qword_1EDF18A00, v1, MEMORY[0x1E6984B20]);
    v2 = sub_1D7258F2C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF189A8);
    }
  }
}

uint64_t sub_1D6ACDB14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6ACDB90(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_1D6ACD8FC(0, a2);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v20 = a3;
  *&v20[1] = a4;
  sub_1D6AD0064(a1, v11, sub_1D6ACD8FC);
  v12 = v8[14];
  v13 = v8[18];
  v14 = v8[22];
  v15 = sub_1D6ACDD48(v20, v11, &v11[v12], &v11[v13], &v11[v14]);
  sub_1D6AD00CC(&v11[v14], sub_1D6ACDB5C);
  sub_1D5FD2A8C(0);
  (*(*(v16 - 8) + 8))(&v11[v13], v16);
  sub_1D6ACDA10(0);
  (*(*(v17 - 8) + 8))(&v11[v12], v17);
  v18 = sub_1D7258E5C();
  (*(*(v18 - 8) + 8))(v11, v18);
  return v15;
}

uint64_t sub_1D6ACDD48(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void (*a5)(char *, uint64_t))
{
  v227 = a5;
  v228 = a4;
  v234 = a3;
  sub_1D6ACFF6C(0, &qword_1EDF18A10, MEMORY[0x1E6984AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v187 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v209 = &v179 - v12;
  sub_1D6ACFF6C(0, &qword_1EDF43B60, sub_1D61D3F98, MEMORY[0x1E6968070]);
  v186 = v13;
  v185 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v212 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v217 = &v179 - v18;
  v207 = sub_1D7258CFC();
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207, v19);
  v205 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6ACFE40(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v204 = &v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1D7261CAC();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v24);
  v216 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_1D7258F1C();
  v226 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222, v26);
  v202 = &v179 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v179 - v30;
  v181 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v181, v32);
  v184 = &v179 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v210 = &v179 - v36;
  sub_1D6ACD8FC(0, v37);
  v39 = v38;
  MEMORY[0x1EEE9AC00](v38, v40);
  v211 = &v179 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v214 = &v179 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v215 = &v179 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v203 = &v179 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v220 = &v179 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v213 = &v179 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v194 = &v179 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v179 - v62;
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v179 - v66;
  v68 = *a1;
  v69 = a1[1];
  v70 = sub_1D7258E5C();
  v71 = *(v70 - 8);
  v72 = *(v71 + 16);
  v200 = v71 + 16;
  v201 = v72;
  v73 = v70;
  (v72)(v67, a2);
  v74 = *(v39 + 48);
  sub_1D6ACDA10(0);
  v76 = *(v75 - 8);
  v231 = v75;
  v232 = v76;
  v77 = *(v76 + 16);
  v198 = v76 + 16;
  v199 = v77;
  v77(&v67[v74], v234, v75);
  v78 = *(v39 + 64);
  sub_1D5FD2A8C(0);
  v80 = *(v79 - 8);
  v233 = v79;
  v234 = v80;
  v81 = *(v80 + 16);
  v196 = v80 + 16;
  v197 = v81;
  v81(&v67[v78], v228, v79);
  v82 = *(v39 + 80);
  v195 = sub_1D6ACDB5C;
  sub_1D6AD0064(v227, &v67[v82], sub_1D6ACDB5C);
  v229 = v67;
  v225 = v63;
  v218 = sub_1D6ACD8FC;
  sub_1D6AD0064(v67, v63, sub_1D6ACD8FC);
  v192 = *(v39 + 48);
  v190 = *(v39 + 64);
  v189 = *(v39 + 80);
  v191 = v31;
  sub_1D7258E4C();
  v83 = v71 + 8;
  v84 = *(v71 + 8);
  v230 = v73;
  v84(v63, v73);
  v224 = v83;
  v85 = v194;
  sub_1D6AD0064(v67, v194, sub_1D6ACD8FC);
  v221 = v39;
  v188 = *(v39 + 48);
  v86 = *(v39 + 64);
  v87 = *(v39 + 80);
  v88 = v85;
  sub_1D7258E1C();
  v228 = v84;
  v84(v85, v73);
  v180 = sub_1D7258EEC();
  v179 = v89;
  v90 = *(v226 + 8);
  v226 += 8;
  v219 = v90;
  v90(v31, v222);
  v193 = sub_1D6ACDB5C;
  sub_1D6AD00CC(v85 + v87, sub_1D6ACDB5C);
  v91 = v233;
  v92 = v234 + 8;
  v93 = *(v234 + 8);
  v93((v85 + v86), v233);
  v227 = v93;
  v234 = v92;
  v94 = v231;
  v96 = v232 + 8;
  v95 = *(v232 + 8);
  v95(v88 + v188, v231);
  v223 = v95;
  v232 = v96;
  v97 = v225;
  v98 = v221;
  sub_1D6AD00CC(&v225[v189], sub_1D6ACDB5C);
  v93((v97 + v190), v91);
  v95(v97 + v192, v94);
  v99 = v229;
  v100 = v213;
  v101 = v218;
  sub_1D6AD0064(v229, v213, v218);
  v102 = v202;
  sub_1D7258E4C();
  v103 = v230;
  v228(v100, v230);
  sub_1D5F59310(&v236);
  v219(v102, v222);
  v235 = v236;
  v104 = v225;
  v105 = v101;
  sub_1D6AD0064(v99, v225, v101);
  v202 = v98[12];
  v192 = v98[16];
  v190 = v98[20];
  v106 = v191;
  sub_1D7258E4C();
  v107 = v228;
  v228(v104, v103);
  sub_1D6AD0064(v99, v88, v105);
  v108 = v98[12];
  v189 = v98[16];
  v188 = v98[20];
  sub_1D7258E1C();
  v107(v88, v103);
  sub_1D7258EDC();
  v219(v106, v222);
  v109 = v193;
  sub_1D6AD00CC(v88 + v188, v193);
  v110 = v233;
  v111 = v227;
  v227((v88 + v189), v233);
  v112 = v231;
  v113 = v223;
  v223(v88 + v108, v231);
  v114 = v225;
  sub_1D6AD00CC(&v225[v190], v109);
  v111((v114 + v192), v110);
  v115 = v112;
  v113(&v202[v114], v112);
  v116 = v220;
  sub_1D6AD0064(v229, v220, v218);
  v117 = v98[12];
  v118 = v98[16];
  v119 = v98[20];
  v120 = v203;
  v201(v203, v116, v230);
  v121 = v120 + v98[12];
  v226 = v117;
  v199(v121, v116 + v117, v115);
  v197(v120 + v98[16], v116 + v118, v233);
  sub_1D6AD0064(v116 + v119, v120 + v98[20], v195);
  v122 = v205;
  sub_1D7258CEC();
  v123 = v204;
  sub_1D7261CBC();
  (*(v206 + 8))(v122, v207);
  v124 = sub_1D7261C7C();
  v125 = *(v124 - 8);
  if ((*(v125 + 48))(v123, 1, v124) == 1)
  {
    sub_1D6AD00CC(v120, sub_1D6ACD8FC);
    sub_1D6AD00CC(v123, sub_1D6ACFE40);
    v218 = 0;
    v219 = 0;
  }

  else
  {
    v126 = sub_1D7261C6C();
    v218 = v127;
    v219 = v126;
    sub_1D6AD00CC(v120, sub_1D6ACD8FC);
    (*(v125 + 8))(v123, v124);
  }

  v128 = v220;
  sub_1D6AD00CC(v220 + v119, sub_1D6ACDB5C);
  v129 = (v128 + v118);
  v130 = v233;
  v131 = v227;
  v227(v129, v233);
  v223(v128 + v226, v231);
  v132 = v230;
  v133 = v228;
  v228(v128, v230);
  v134 = v229;
  LODWORD(v220) = sub_1D7258E1C();
  v135 = v215;
  sub_1D6AD0064(v134, v215, sub_1D6ACD8FC);
  sub_1D7258E2C();
  v133(v135, v132);
  v136 = v214;
  sub_1D6AD0064(v134, v214, sub_1D6ACD8FC);
  v137 = *(v221 + 16);
  v138 = v209;
  sub_1D5FCFE8C(v209);
  v131((v136 + v137), v130);
  v139 = sub_1D7258DFC();
  v140 = *(v139 - 8);
  v141 = *(v140 + 48);
  result = v141(v138, 1, v139);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1D7258DEC();
    v209 = *(v140 + 8);
    (v209)(v138, v139);
    v143 = v211;
    sub_1D6AD0064(v134, v211, sub_1D6ACD8FC);
    v144 = v221;
    v145 = *(v221 + 16);
    v146 = v187;
    sub_1D5FCFE8C(v187);
    v147 = v146;
    v227((v143 + v145), v233);
    result = v141(v146, 1, v139);
    if (result != 1)
    {
      v226 = v144[12];
      v208 = v144[16];
      v222 = v144[20];
      v148 = v181;
      v149 = v210;
      v150 = v210 + *(v181 + 36);
      v151 = type metadata accessor for FeedWeather.Temperature(0);
      sub_1D7258DDC();
      (v209)(v147, v139);
      v152 = v225;
      sub_1D6AD0064(v229, v225, sub_1D6ACD8FC);
      v209 = v144[12];
      v207 = v144[16];
      v153 = v144[20];
      sub_1D7258E3C();
      v228(v152, v230);
      *v149 = v68;
      *(v149 + 8) = v69;
      v154 = v179;
      *(v149 + 16) = v180;
      *(v149 + 24) = v154;
      *(v149 + 32) = v235;
      (*(v182 + 32))(v149 + v148[7], v216, v183);
      v155 = (v149 + v148[10]);
      v156 = v218;
      *v155 = v219;
      v155[1] = v156;
      *(v149 + v148[8]) = (v220 & 1) == 0;
      v157 = *(v185 + 32);
      v158 = v186;
      v157(v150, v217, v186);
      v157(v150 + *(v151 + 20), v212, v158);
      v221 = sub_1D6ACDB5C;
      sub_1D6AD00CC(v152 + v153, sub_1D6ACDB5C);
      v227((v152 + v207), v233);
      v159 = v231;
      v160 = v223;
      v223(v152 + v209, v231);
      v161 = v211;
      v162 = v222;
      sub_1D6AD00CC(v211 + v222, sub_1D6ACDB5C);
      v163 = v226;
      v160(v161 + v226, v159);
      v164 = v230;
      v165 = v228;
      v228(v161, v230);
      v166 = v214;
      v167 = v214 + v162;
      v168 = v221;
      sub_1D6AD00CC(v167, v221);
      v160(v166 + v163, v159);
      v165(v166, v164);
      v169 = v215;
      v170 = v222;
      sub_1D6AD00CC(v215 + v222, v168);
      v171 = v208;
      v172 = v233;
      v173 = v227;
      v227((v169 + v208), v233);
      v174 = v231;
      v175 = v223;
      v223(v169 + v226, v231);
      v176 = v213;
      sub_1D6AD00CC(v213 + v170, v221);
      v173((v176 + v171), v172);
      v175(v176 + v226, v174);
      v177 = v210;
      sub_1D6AD0064(v210, v184, type metadata accessor for FeedWeather);
      sub_1D6ACFF6C(0, &qword_1EDF17A68, type metadata accessor for FeedWeather, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v178 = sub_1D725BB1C();
      sub_1D6AD00CC(v177, type metadata accessor for FeedWeather);
      sub_1D6AD00CC(v229, sub_1D6ACD8FC);
      return v178;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6ACF0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  sub_1D6ACFF6C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v21 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = sub_1D726294C();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
  *(v20 + 56) = sub_1D6ACFE74;
  *(v20 + 64) = v18;
  *(v20 + 72) = a3;
  *(v20 + 80) = a4;

  sub_1D6BD1334(0, 0, v17, &unk_1D731D430, v20);
}

uint64_t sub_1D6ACF2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  sub_1D6ACD8FC(0, a2);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7258E5C();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = v11[14];
  sub_1D6ACDA10(0);
  (*(*(v17 - 8) + 16))(&v14[v16], a2, v17);
  v18 = v11[18];
  sub_1D5FD2A8C(0);
  (*(*(v19 - 8) + 16))(&v14[v18], a3, v19);
  sub_1D6AD0064(a4, &v14[v11[22]], sub_1D6ACDB5C);
  a5(v14);
  return sub_1D6AD00CC(v14, sub_1D6ACD8FC);
}

uint64_t sub_1D6ACF45C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 64) = a9;
  *(v10 + 72) = a10;
  *(v10 + 48) = a7;
  *(v10 + 56) = a8;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 24) = a6;
  v11 = MEMORY[0x1E6984BB8];
  sub_1D6ACFF6C(0, &qword_1EDF189D8, sub_1D6ACDB5C, MEMORY[0x1E6984BB8]);
  *(v10 + 80) = v12;
  *(v10 + 88) = *(v12 - 8);
  *(v10 + 96) = swift_task_alloc();
  sub_1D6ACFF6C(0, &qword_1EDF189D0, sub_1D5FD2A8C, v11);
  *(v10 + 104) = v13;
  *(v10 + 112) = *(v13 - 8);
  *(v10 + 120) = swift_task_alloc();
  sub_1D6ACFF6C(0, &qword_1EDF189C8, sub_1D6ACDA10, v11);
  *(v10 + 128) = v14;
  *(v10 + 136) = *(v14 - 8);
  *(v10 + 144) = swift_task_alloc();
  sub_1D6ACFF6C(0, &qword_1EDF189E0, MEMORY[0x1E6984B50], v11);
  *(v10 + 152) = v15;
  *(v10 + 160) = *(v15 - 8);
  *(v10 + 168) = swift_task_alloc();
  sub_1D6ACFFD0(0, v16);
  *(v10 + 176) = v17;
  *(v10 + 184) = swift_task_alloc();
  *(v10 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6ACF70C, 0, 0);
}

uint64_t sub_1D6ACF70C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 22);
  v4 = v0[4];
  v3 = v0[5];
  v5 = v2[12];
  v15 = v2[16];
  v17 = v2[20];
  sub_1D725B77C();
  v0[25] = v0[2];
  v6 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v4 longitude:v3];
  *(v0 + 26) = v6;
  *(v0 + 27) = sub_1D7258E5C();
  sub_1D7258E9C();
  sub_1D6ACDA10(0);
  *(v0 + 28) = v7;
  sub_1D7258E7C();
  sub_1D5FD2A8C(0);
  *(v0 + 29) = v8;
  sub_1D7258E6C();
  sub_1D6ACDB5C(0);
  sub_1D7258E8C();
  v9 = swift_task_alloc();
  *(v0 + 30) = v9;
  *v9 = v0;
  v9[1] = sub_1D6ACF8CC;
  v10 = *(v0 + 24);
  v11 = *(v0 + 21);
  v12 = *(v0 + 18);
  v13 = *(v0 + 15);

  return MEMORY[0x1EEDE7600](v10, v1 + v5, v1 + v15, v1 + v17, v6, v11, v12, v13);
}

uint64_t sub_1D6ACF8CC()
{
  v12 = *(*v1 + 208);
  v16 = *(*v1 + 168);
  v2 = *(*v1 + 160);
  v15 = *(*v1 + 152);
  v14 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v13 = *(*v1 + 128);
  v11 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 80);
  *(*v1 + 248) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v11, v5);
  (*(v3 + 8))(v14, v13);
  (*(v2 + 8))(v16, v15);
  if (v0)
  {
    v9 = sub_1D6ACFD7C;
  }

  else
  {
    v9 = sub_1D6ACFBA0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D6ACFBA0(__n128 a1)
{
  v2 = v1[28];
  v3 = v1[29];
  v13 = v1[27];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[22];
  v7 = v1[6];
  sub_1D6AD0064(v5, v4, sub_1D6ACFFD0);
  v8 = v6[12];
  v9 = v6[16];
  v10 = v6[20];
  v7(v4, v4 + v8, v4 + v9, v4 + v10);
  sub_1D6AD00CC(v5, sub_1D6ACFFD0);
  sub_1D6AD00CC(v4 + v10, sub_1D6ACDB5C);
  (*(*(v3 - 8) + 8))(v4 + v9, v3);
  (*(*(v2 - 8) + 8))(v4 + v8, v2);
  (*(*(v13 - 8) + 8))(v4);

  v11 = v1[1];

  return v11();
}

uint64_t sub_1D6ACFD7C()
{
  v1 = *(v0 + 248);
  (*(v0 + 64))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6ACFE7C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v12 = *(v1 + 9);
  v11 = *(v1 + 10);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1D5B64684;

  return sub_1D6ACF45C(v7, v8, a1, v4, v5, v6, v9, v10, v12, v11);
}

void sub_1D6ACFF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6ACFFD0(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF189E8)
  {
    sub_1D7258E5C();
    sub_1D6ACDA10(255);
    sub_1D5FD2A8C(255);
    sub_1D6ACDB5C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDF189E8);
    }
  }
}

uint64_t sub_1D6AD0064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6AD00CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double FormatSponsoredBannerNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatSponsoredBannerNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatSponsoredBannerNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

unint64_t FormatSponsoredBannerNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatSponsoredBannerNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

double FormatSponsoredBannerNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double sub_1D6AD03BC(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  sub_1D5EB1500(v2);
  *(v3 + 56) = v2;
  return sub_1D5EB15C4(v4);
}

double FormatSponsoredBannerNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  return sub_1D5EB15C4(v3);
}

void FormatSponsoredBannerNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}