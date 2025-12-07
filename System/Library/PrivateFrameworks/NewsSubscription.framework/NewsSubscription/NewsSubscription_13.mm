unint64_t sub_1D7871908()
{
  result = qword_1EC9CB188;
  if (!qword_1EC9CB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB188);
  }

  return result;
}

uint64_t sub_1D78719C4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D78724F4(255, &qword_1EC9CB140, &type metadata for Diagnosis, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7871A54()
{
  result = qword_1EC9CB1B8;
  if (!qword_1EC9CB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB1B8);
  }

  return result;
}

unint64_t sub_1D7871AB4()
{
  result = qword_1EC9CB1D8;
  if (!qword_1EC9CB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB1D8);
  }

  return result;
}

uint64_t objectdestroy_68Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D7871BA8()
{
  result = qword_1EC9CB1F0;
  if (!qword_1EC9CB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB1F0);
  }

  return result;
}

unint64_t sub_1D7871BFC()
{
  result = qword_1EC9CB1F8;
  if (!qword_1EC9CB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB1F8);
  }

  return result;
}

uint64_t sub_1D7871CB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D7871D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription19SignInWithAppleInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D7871DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_1D7871E10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D7871EA4()
{
  result = qword_1EC9CB200;
  if (!qword_1EC9CB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB200);
  }

  return result;
}

unint64_t sub_1D7871EFC()
{
  result = qword_1EC9CB208;
  if (!qword_1EC9CB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB208);
  }

  return result;
}

unint64_t sub_1D7871F54()
{
  result = qword_1EC9CB210;
  if (!qword_1EC9CB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB210);
  }

  return result;
}

unint64_t sub_1D7871FAC()
{
  result = qword_1EC9CB218;
  if (!qword_1EC9CB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB218);
  }

  return result;
}

unint64_t sub_1D7872004()
{
  result = qword_1EC9CB220;
  if (!qword_1EC9CB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB220);
  }

  return result;
}

unint64_t sub_1D787205C()
{
  result = qword_1EC9CB228;
  if (!qword_1EC9CB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB228);
  }

  return result;
}

unint64_t sub_1D78720B4()
{
  result = qword_1EC9CB230;
  if (!qword_1EC9CB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB230);
  }

  return result;
}

unint64_t sub_1D787210C()
{
  result = qword_1EC9CB238;
  if (!qword_1EC9CB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB238);
  }

  return result;
}

unint64_t sub_1D7872164()
{
  result = qword_1EC9CB240;
  if (!qword_1EC9CB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB240);
  }

  return result;
}

unint64_t sub_1D78721BC()
{
  result = qword_1EC9CB248;
  if (!qword_1EC9CB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB248);
  }

  return result;
}

unint64_t sub_1D7872214()
{
  result = qword_1EC9CB250;
  if (!qword_1EC9CB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB250);
  }

  return result;
}

unint64_t sub_1D787226C()
{
  result = qword_1EC9CB258;
  if (!qword_1EC9CB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB258);
  }

  return result;
}

unint64_t sub_1D78722C4()
{
  result = qword_1EC9CB260;
  if (!qword_1EC9CB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB260);
  }

  return result;
}

unint64_t sub_1D787231C()
{
  result = qword_1EC9CB268;
  if (!qword_1EC9CB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB268);
  }

  return result;
}

unint64_t sub_1D7872370()
{
  result = qword_1EC9CB278;
  if (!qword_1EC9CB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB278);
  }

  return result;
}

unint64_t sub_1D78723C4()
{
  result = qword_1EC9CB280;
  if (!qword_1EC9CB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB280);
  }

  return result;
}

unint64_t sub_1D7872418()
{
  result = qword_1EC9CB288;
  if (!qword_1EC9CB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB288);
  }

  return result;
}

uint64_t sub_1D787246C(uint64_t a1, uint64_t a2)
{
  sub_1D78724F4(0, &qword_1EC9CB298, &type metadata for SignInWithAppleInfo, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D78724F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7872544()
{
  result = qword_1EC9CB2A0;
  if (!qword_1EC9CB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2A0);
  }

  return result;
}

unint64_t sub_1D7872598()
{
  result = qword_1EC9CB2B0;
  if (!qword_1EC9CB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2B0);
  }

  return result;
}

uint64_t sub_1D78725EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D4579786F7270 && a2 == 0xEA00000000006C69;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64496E69616D6F64 && a2 == 0xE800000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4564726177726F66 && a2 == 0xEC0000006C69616DLL || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64496D616574 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D78B6724();

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

unint64_t sub_1D7872758()
{
  result = qword_1EC9CB2C0;
  if (!qword_1EC9CB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2C0);
  }

  return result;
}

void sub_1D78727AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D7872814()
{
  result = qword_1EC9CB2E0;
  if (!qword_1EC9CB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2E0);
  }

  return result;
}

unint64_t sub_1D7872868()
{
  result = qword_1EC9CB2E8;
  if (!qword_1EC9CB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2E8);
  }

  return result;
}

uint64_t sub_1D78728BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7872904()
{
  result = qword_1EC9CB2F8;
  if (!qword_1EC9CB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB2F8);
  }

  return result;
}

unint64_t sub_1D78729E4()
{
  result = qword_1EC9CB300;
  if (!qword_1EC9CB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB300);
  }

  return result;
}

unint64_t sub_1D7872A3C()
{
  result = qword_1EC9CB308;
  if (!qword_1EC9CB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB308);
  }

  return result;
}

unint64_t sub_1D7872A94()
{
  result = qword_1EC9CB310;
  if (!qword_1EC9CB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB310);
  }

  return result;
}

unint64_t sub_1D7872AEC()
{
  result = qword_1EC9CB318;
  if (!qword_1EC9CB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB318);
  }

  return result;
}

unint64_t sub_1D7872B44()
{
  result = qword_1EC9CB320;
  if (!qword_1EC9CB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB320);
  }

  return result;
}

unint64_t sub_1D7872B9C()
{
  result = qword_1EC9CB328;
  if (!qword_1EC9CB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB328);
  }

  return result;
}

unint64_t sub_1D7872BF4()
{
  result = qword_1EC9CB330;
  if (!qword_1EC9CB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB330);
  }

  return result;
}

unint64_t sub_1D7872C4C()
{
  result = qword_1EC9CB338;
  if (!qword_1EC9CB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB338);
  }

  return result;
}

unint64_t sub_1D7872CA4()
{
  result = qword_1EC9CB340;
  if (!qword_1EC9CB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB340);
  }

  return result;
}

unint64_t sub_1D7872CFC()
{
  result = qword_1EC9CB348;
  if (!qword_1EC9CB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB348);
  }

  return result;
}

unint64_t sub_1D7872D54()
{
  result = qword_1EC9CB350;
  if (!qword_1EC9CB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB350);
  }

  return result;
}

unint64_t sub_1D7872DA8()
{
  result = qword_1EC9CB358;
  if (!qword_1EC9CB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB358);
  }

  return result;
}

unint64_t sub_1D7872DFC()
{
  result = qword_1EC9CB360;
  if (!qword_1EC9CB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB360);
  }

  return result;
}

double sub_1D7872E88(uint64_t a1)
{
  v1 = sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE09C268;
  sub_1D775B7A8(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  swift_getErrorValue();
  v4 = sub_1D78B67B4();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D775ABD4();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_1D78B42D4(v1, &dword_1D7739000, v2, "Failed to fetch Configurable Offer Configs due to error: %@", 59, 2, v3);

  return result;
}

uint64_t ConfigurableOffersConfigFetcher.cachedConfigs.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  return sub_1D7872FCC(v2);
}

uint64_t sub_1D7872FCC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void *ConfigurableOffersConfigFetcher.deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  sub_1D775DDC0(*(v0 + 72));
  return v0;
}

uint64_t ConfigurableOffersConfigFetcher.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  sub_1D775DDC0(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7873064@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 72);
  *a1 = v2;
  return sub_1D7872FCC(v2);
}

unint64_t sub_1D78730B4()
{
  result = qword_1EC9CB370;
  if (!qword_1EC9CB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB370);
  }

  return result;
}

unint64_t sub_1D787311C()
{
  result = qword_1EC9CB378;
  if (!qword_1EC9CB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB378);
  }

  return result;
}

uint64_t sub_1D7873170@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 1) > 0x12)
  {
    *a2 = 13;
  }

  else
  {
    *a2 = byte_1D78C9246[result - 1];
  }

  return result;
}

uint64_t FCPaywallType.paywallType.getter(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return 0;
  }

  else
  {
    return qword_1D78C9260[a1];
  }
}

void HideMyEmailSignupModule.createViewController(for:)(uint64_t a1)
{
  v3 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_1D773C9B8(0, &qword_1EC9CB380, MEMORY[0x1E69D85F8]);
  sub_1D78B39F4();
  if (v13)
  {
    sub_1D7741E34(&v12, v14);
    v7 = sub_1D78B37C4();
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    type metadata accessor for HideMyEmailSignupViewController();
    sub_1D787354C(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    sub_1D7862ACC(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

    v10 = sub_1D78B39C4();

    if (v10)
    {
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      sub_1D78B4E44();
      sub_1D7873700(&qword_1EC9CB388, type metadata accessor for HideMyEmailSignupViewController, &unk_1D78CDBA0);
      v11 = v10;
      sub_1D78B4A94();

      __swift_destroy_boxed_opaque_existential_1(v14);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7873430(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6[3] = sub_1D78B37D4();
  v6[4] = sub_1D7873700(&qword_1EC9CB390, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
  v6[0] = a2;
  sub_1D773C9B8(0, &qword_1EC9CAF38, MEMORY[0x1E69D7778]);

  sub_1D78B38D4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HideMyEmailSignupDataModel(0);
  return sub_1D78B38D4();
}

uint64_t sub_1D787354C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HideMyEmailSignupDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D78735B0(void *a1)
{
  v3 = *(type metadata accessor for HideMyEmailSignupDataModel(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D7873430(a1, v4, v5);
}

uint64_t HideMyEmailSignupModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t HideMyEmailSignupModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7873700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL Paywall.PaywallType.purchaseType.getter()
{
  result = 1;
  if (((1 << (*v0 >> 4)) & 0x1B3) == 0)
  {
    return ((1 << (*v0 >> 4)) & 0xC) == 0 && *v0 != 96;
  }

  return result;
}

uint64_t Paywall.PaywallType.fcPaywallType.getter()
{
  v1 = *v0;
  v2 = v1 >> 4;
  if (v1 >> 4 <= 3)
  {
    v4 = 3;
    if (v1)
    {
      v4 = 4;
    }

    v5 = 1;
    if (v1)
    {
      v5 = 2;
    }

    if (v2 != 2)
    {
      v4 = v5;
    }

    v6 = (v1 & 1) == 0;
    v7 = 1;
    if (!v6)
    {
      v7 = 2;
    }

    v8 = 3;
    if (!v6)
    {
      v8 = 4;
    }

    if (v2)
    {
      v7 = v8;
    }

    if (v2 <= 1)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  else if (v1 >> 4 <= 5)
  {
    if (v2 == 4)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }

  else if (v2 == 8)
  {
    return 19;
  }

  else if (v2 == 7)
  {
    if (v1 == 112)
    {
      return 6;
    }

    else
    {
      return 12;
    }
  }

  else if (v1 == 96)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t Paywall.PaywallType.paywallType.getter()
{
  v1 = 1 << (*v0 >> 4);
  v2 = 2 * (*v0 != 96);
  if ((v1 & 0x19) != 0)
  {
    v2 = 1;
  }

  if ((v1 & 0x1A6) != 0)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

void Paywall.PaywallType.paywallSubtype.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) - 6;
  v5 = v2 & 1;
  if (v4 >= 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v3 > 3)
  {
    v5 = v6;
  }

  *a1 = v5;
}

uint64_t Paywall.isHardPaywall.getter()
{
  sub_1D7873930(v0, v2);
  if (v3)
  {
    if (v3 == 1)
    {
      sub_1D7873968(v2);
    }

    return 0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    return 1;
  }
}

uint64_t Paywall.isVisible.getter()
{
  sub_1D7873930(v0, v2);
  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    return 1;
  }

  if (v3 == 1)
  {
    sub_1D7873968(v2);
    return 1;
  }

  return 0;
}

uint64_t Paywall.SoftPaywallPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t Paywall.PaywallSubtype.description.getter()
{
  if (*v0)
  {
    return 0x646572616873;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t Paywall.PaywallSubtype.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D7873B58()
{
  result = qword_1EC9CB398;
  if (!qword_1EC9CB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB398);
  }

  return result;
}

unint64_t sub_1D7873BB0()
{
  result = qword_1EC9CB3A0;
  if (!qword_1EC9CB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB3A0);
  }

  return result;
}

uint64_t sub_1D7873C04()
{
  if (*v0)
  {
    return 0x646572616873;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription7PaywallO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_1D7873C58(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D7873C94(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D7873CE0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1D7873D18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1D7873D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Paywall.PaywallType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x78)
  {
    goto LABEL_17;
  }

  if (a2 + 136 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 136) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 136;
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

      return (*a1 | (v4 << 8)) - 136;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 136;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 0xFFFFFF8F | (16 * ((*a1 >> 1) & 7))) ^ 0x7F;
  if (v6 >= 0x77)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for Paywall.PaywallType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 136 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 136) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x78)
  {
    v4 = 0;
  }

  if (a2 > 0x77)
  {
    v5 = ((a2 - 120) >> 8) + 1;
    *result = a2 - 120;
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
    *result = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D7873F38(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x5F)
  {
    return v1 >> 4;
  }

  else
  {
    return (v1 & 1 | (2 * (v1 >> 4))) - 6;
  }
}

_BYTE *sub_1D7873F68(_BYTE *result, unsigned int a2)
{
  if (a2 < 6)
  {
    *result = *result & 1 | (16 * a2);
  }

  else
  {
    *result = (a2 & 1 | (16 * (a2 >> 1))) + 48;
  }

  return result;
}

uint64_t RequestIncompleteAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t RequestIncompleteAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t RequestIncompleteAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t RequestIncompleteAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D7874284()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874348()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D787443C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v6 = v0[4];

    MEMORY[0x1DA702FF0](32, 0xE100000000000000);
    MEMORY[0x1DA702FF0](v1, v2);
    return v6;
  }

  else
  {
    v4 = v0[4];
  }

  return v4;
}

uint64_t OsloSheetPurchaseDataModel.purchaseID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t OsloSheetPurchaseDataModel.postPurchaseDestination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);

  return sub_1D78360F0(v3, a1);
}

void sub_1D7874598(uint64_t a1)
{
  sub_1D78B3294();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SubscribeButtonDestination(319);
    if (v2 <= 0x3F)
    {
      sub_1D7756CA8(319, &qword_1EE090120, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1D773F178(319, &unk_1EE096460, MEMORY[0x1E6968FB0]);
        if (v4 <= 0x3F)
        {
          sub_1D773F178(319, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
          if (v5 <= 0x3F)
          {
            sub_1D7756CA8(319, &qword_1EE090C78, &type metadata for BundlePaywallTopOffsetConfiguration);
            if (v6 <= 0x3F)
            {
              sub_1D773F178(319, &unk_1EE08FBF0, sub_1D7874760);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D7874760()
{
  result = qword_1EE08FC00;
  if (!qword_1EE08FC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FC00);
  }

  return result;
}

uint64_t EntitlementsCacheExpiredSignIn.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t EntitlementsCacheExpiredSignIn.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t EntitlementsCacheExpiredSignIn.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t EntitlementsCacheExpiredSignIn.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t EntitlementsCacheExpiredSignIn.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874B44()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874C10()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874CD8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874D9C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7874E6C()
{
  MEMORY[0x1DA7044F0](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t SubscriptionNotSupportedInStorefrontAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5C94();

  return v2;
}

uint64_t SubscriptionNotSupportedInStorefrontAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5C94();

  return v2;
}

uint64_t SubscriptionNotSupportedInStorefrontAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SubscriptionNotSupportedInStorefrontAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D7875264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t WebAccessSubscriptionStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D787532C()
{
  result = qword_1EC9CB3B0;
  if (!qword_1EC9CB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB3B0);
  }

  return result;
}

void sub_1D78753B8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, char *a5)
{
  v36 = a3;
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D78B3294();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v35 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1D776F538(&a5[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_authenticationURL], v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_1D77C12C8(v12);
    sub_1D7875F98();
    v23 = swift_allocError();
    *v24 = 0;
    v36();
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
    v25 = *(v14 + 16);
    v35 = v21;
    v25(v18, v21, v13);
    v26 = *&a5[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_callbackURLScheme];
    v27 = *&a5[OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_callbackURLScheme + 8];
    v28 = swift_allocObject();
    v28[2] = v36;
    v28[3] = a4;
    v28[4] = sub_1D7812C98;
    v28[5] = v22;
    v28[6] = a5;
    objc_allocWithZone(MEMORY[0x1E695A950]);

    v29 = a5;
    v30 = sub_1D7875FFC(v18, v26, v27, sub_1D7875FEC, v28);
    v31 = OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_webSession;
    swift_beginAccess();
    v32 = *&v29[v31];
    *&v29[v31] = v30;

    v33 = *&v29[v31];
    if (v33)
    {
      [v33 setPresentationContextProvider_];
    }

    swift_beginAccess();
    v34 = *&v29[v31];
    if (v34)
    {
      swift_endAccess();
      [v34 start];
      (*(v14 + 8))(v35, v13);
    }

    else
    {
      (*(v14 + 8))(v35, v13);
      swift_endAccess();
    }
  }
}

void sub_1D7875738(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v31 = a7;
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D78B3294();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = a2;
    a3(a2);
    v21 = a2;
LABEL_8:

    goto LABEL_9;
  }

  sub_1D776F538(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D77C12C8(v14);
    sub_1D7875F98();
    v22 = swift_allocError();
    *v23 = 1;
    (a3)();
    v21 = v22;
    goto LABEL_8;
  }

  (*(v16 + 32))(v19, v14, v15);
  v24 = sub_1D781A0E0(0x745F737365636361, 0xEC0000006E656B6FLL);
  if (!v25)
  {
    sub_1D7875F98();
    v26 = swift_allocError();
    *v27 = 1;
    (a3)();
    (*(v16 + 8))(v19, v15);
    v21 = v26;
    goto LABEL_8;
  }

  a5(v24);

  (*(v16 + 8))(v19, v15);
LABEL_9:
  v28 = OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_webSession;
  v29 = v31;
  swift_beginAccess();
  v30 = *(v29 + v28);
  *(v29 + v28) = 0;
}

void sub_1D78759F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 + OBJC_IVAR____TtC16NewsSubscription22WebAccessAuthenticator_purchaseController);
  v12 = sub_1D78B5C44();
  v13 = sub_1D78B5C44();
  sub_1D7788448();
  v14 = sub_1D78B6104();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  v17[4] = sub_1D7875F84;
  v17[5] = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D7875C08;
  v17[3] = &block_descriptor_31;
  v16 = _Block_copy(v17);

  [v11 verifyAccessTokenWithTagID:v12 accessToken:v13 consumedArticleCount:0 serialCompletion:0 callbackQueue:v14 completion:v16];
  _Block_release(v16);
}

void sub_1D7875B68(char a1, uint64_t a2, id a3, void (*a4)(id), uint64_t a5, void (*a6)(char *, uint64_t))
{
  if (a3)
  {
    v8 = a3;
    a4(a3);
  }

  else
  {
    if (a1)
    {
      v10 = 0;
      v9 = &v10;
    }

    else
    {
      v11 = 1;
      v9 = &v11;
    }

    a6(v9, a2);
  }
}

uint64_t sub_1D7875C08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a4;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for WebAccessAuthenticator(uint64_t a1)
{
  result = qword_1EE093568;
  if (!qword_1EE093568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7875D9C(uint64_t a1)
{
  sub_1D776F504(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D7875E58()
{
  sub_1D78411D4(0, &qword_1EE08F220, MEMORY[0x1E69E6158]);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D7875EC8(uint64_t a1, uint64_t a2)
{
  sub_1D78411D4(0, &qword_1EC9CB430, &type metadata for WebAccessSubscriptionStatus);
  swift_allocObject();
  return sub_1D78B4174();
}

unint64_t sub_1D7875F98()
{
  result = qword_1EC9CB438;
  if (!qword_1EC9CB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB438);
  }

  return result;
}

id sub_1D7875FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1D78B3214();
  if (a3)
  {
    v12 = sub_1D78B5C44();
  }

  else
  {
    v12 = 0;
  }

  v17[4] = a4;
  v17[5] = a5;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D7876144;
  v17[3] = &block_descriptor_15_0;
  v13 = _Block_copy(v17);
  v14 = [v6 initWithURL:v11 callbackURLScheme:v12 completionHandler:v13];
  _Block_release(v13);

  v15 = sub_1D78B3294();
  (*(*(v15 - 8) + 8))(a1, v15);

  return v14;
}

uint64_t sub_1D7876144(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  if (a2)
  {
    sub_1D78B3254();
    v11 = sub_1D78B3294();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = sub_1D78B3294();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v13 = a3;
  v10(v9, a3);

  return sub_1D77C12C8(v9);
}

id sub_1D7876288(uint64_t a1, uint64_t a2, id a3)
{
  [a3 horizontalSizeClass];
  v5 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v32 = sub_1D78B61B4();
  v6 = qword_1D78C9B10[[a3 horizontalSizeClass] == 1];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v7 setAlignment_];
  [v7 setLineHeightMultiple_];
  v8 = [a3 horizontalSizeClass];
  v9 = 28.6;
  if (v8 == 1)
  {
    v9 = 22.0;
  }

  [v7 setMinimumLineHeight_];
  sub_1D787772C(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78C22A0;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v12 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v12);
  v14 = *(v13 + 8);
  v15 = v11;
  v14(v33, v12, v13);
  v16 = v33[2];
  sub_1D7784CF4(v33);
  v17 = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 40) = v16;
  v18 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v19 = MEMORY[0x1E69DB660];
  *(inited + 80) = v32;
  v20 = *v19;
  *(inited + 104) = v5;
  *(inited + 112) = v20;
  v21 = MEMORY[0x1E69E7DE0];
  *(inited + 120) = v6;
  v22 = *MEMORY[0x1E69DB688];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  *(inited + 184) = sub_1D773F004(0, &unk_1EE08FCD8, 0x1E69DB7C8);
  *(inited + 160) = v7;
  v23 = v18;
  v24 = v20;
  v25 = v22;
  v26 = v7;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v28 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v29 = sub_1D78B5BB4();

  v30 = [v27 initWithString:v28 attributes:v29];

  return v30;
}

id sub_1D78765EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v55 = a6;
  v50[2] = a5;
  v50[1] = a4;
  v53 = a2;
  v52 = a1;
  sub_1D787772C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v51 = v50 - v11;
  v57 = sub_1D78B3294();
  v54 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v12);
  v50[0] = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 horizontalSizeClass];
  v56 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v14 = sub_1D78B61B4();
  v15 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v16 = v14;
  v17 = [v15 init];
  [v17 setAlignment_];
  sub_1D787772C(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v19 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v21 = v7[5];
  v20 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v21);
  v22 = *(v20 + 8);
  v23 = v19;
  v22(v58, v21, v20);
  v24 = v58[3];
  sub_1D7784CF4(v58);
  v25 = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 40) = v24;
  v26 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v25;
  *(inited + 72) = v26;
  v27 = sub_1D773F004(0, &unk_1EE08FCD8, 0x1E69DB7C8);
  *(inited + 80) = v17;
  v28 = *MEMORY[0x1E69DB648];
  *(inited + 104) = v27;
  *(inited + 112) = v28;
  sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  *(inited + 144) = v56;
  v56 = v16;
  *(inited + 120) = v16;
  v29 = v26;
  v30 = v17;
  v31 = v28;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v33 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v34 = sub_1D78B5BB4();
  v35 = v51;

  v36 = [v32 initWithString:v33 attributes:v34];

  v37 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  sub_1D776F538(v55, v35);
  v38 = v54;
  v39 = v57;
  if ((*(v54 + 48))(v35, 1) == 1)
  {
    sub_1D77C12C8(v35);
  }

  else
  {
    v40 = v50[0];
    (*(v38 + 32))(v50[0], v35, v39);
    v55 = *MEMORY[0x1E69DB670];
    v41 = sub_1D78B3214();
    v42 = [v37 mutableString];
    v43 = v30;
    v44 = sub_1D78B5C44();
    v45 = [v42 rangeOfString_];
    v47 = v46;

    v30 = v43;
    [v37 addAttribute:v55 value:v41 range:{v45, v47}];

    (*(v38 + 8))(v40, v57);
  }

  v48 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

  return v48;
}

id sub_1D7876B9C(uint64_t a1, uint64_t a2, id a3)
{
  [a3 horizontalSizeClass];
  v4 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v20 = sub_1D78B61B4();
  sub_1D78B5CE4();
  sub_1D787772C(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v6 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v9 = *(v8 + 8);
  v10 = v6;
  v9(v21, v7, v8);
  v11 = v21[6];
  sub_1D7784CF4(v21);
  v12 = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  *(inited + 104) = v4;
  *(inited + 80) = v20;
  v14 = v13;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v16 = sub_1D78B5C44();

  type metadata accessor for Key(0);
  sub_1D778B060();
  v17 = sub_1D78B5BB4();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

id sub_1D7876E20(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  [a3 horizontalSizeClass];
  v5 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v6 = sub_1D78B61B4();
  sub_1D787772C(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v8 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v9 = MEMORY[0x1E69DB650];
  *(inited + 40) = v6;
  v10 = *v9;
  *(inited + 64) = v5;
  *(inited + 72) = v10;
  v12 = v4[5];
  v11 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
  v13 = *(v11 + 8);
  v14 = v6;
  v15 = v8;
  v16 = v10;
  v13(v23, v12, v11);
  v17 = v23[5];
  sub_1D7784CF4(v23);
  *(inited + 104) = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 80) = v17;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v20 = sub_1D78B5BB4();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

void sub_1D78770A0(void *a1, void *a2)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v6 = *(*v2 + 40);
    v7 = *(*v2 + 48);
    __swift_project_boxed_opaque_existential_1((*v2 + 16), v6);
    (*(v7 + 8))(v9, v6, v7);
    v5 = v9[1];
    sub_1D7784CF4(v9);
  }

  v8 = a2;
  [a1 setBackgroundColor_];
}

void sub_1D7877150(void *a1)
{
  v3 = *v1;
  [a1 setContentMode_];
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  (*(v5 + 8))(v7, v4, v5);
  v6 = v7[2];
  sub_1D7784CF4(v7);
  [a1 setTintColor_];
}

void sub_1D78771FC(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  (*(v4 + 8))(v6, v3, v4);
  v5 = v6[4];
  sub_1D7784CF4(v6);
  [a1 setBackgroundColor_];
}

void sub_1D78772FC(void *a1)
{
  v2 = [a1 titleLabel];
  if (v2)
  {
    v3 = v2;
    [v2 setLineBreakMode_];
  }

  v4 = [a1 titleLabel];
  if (v4)
  {
    v5 = v4;
    [v4 setTextAlignment_];
  }
}

void sub_1D78773FC(void *a1)
{
  v2 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  v3 = [a1 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setLineBreakMode_];
  }

  v5 = [a1 titleLabel];
  if (v5)
  {
    v6 = v5;
    [v5 setTextAlignment_];
  }
}

id sub_1D78774F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D787772C(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v7 = v5;
  v8 = sub_1D78B61B4();
  v9 = MEMORY[0x1E69DB650];
  *(inited + 40) = v8;
  v10 = *v9;
  *(inited + 64) = v6;
  *(inited + 72) = v10;
  v11 = v3[5];
  v12 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
  v13 = *(v12 + 8);
  v14 = v10;
  v13(v21, v11, v12);
  v15 = v21[7];
  sub_1D7784CF4(v21);
  *(inited + 104) = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 80) = v15;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v17 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v18 = sub_1D78B5BB4();

  v19 = [v16 initWithString:v17 attributes:v18];

  return v19;
}

void sub_1D787772C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D78777A4()
{
  v1 = v0;
  v2 = v0[23];
  v3 = v0[24];
  __swift_project_boxed_opaque_existential_1(v0 + 20, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    v4 = [objc_opt_self() sharedApplication];
    v5 = [v4 applicationState];

    if (v5 == 2)
    {
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v6 = qword_1EE09C268;
      v7 = sub_1D78B60A4();
      v8 = MEMORY[0x1E69E7CC0];

      sub_1D78B42C4("Ignoring verifying subscriptions as application is in background state", 70, 2, &dword_1D7739000, v6, v7, v8);
    }

    else
    {
      v9 = *__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      sub_1D78B41F4();
      sub_1D7788448();
      v10 = sub_1D78B6104();
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = 0;

      sub_1D78B4094();

      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      *(v12 + 24) = 0;

      v13 = sub_1D78B4014();
      sub_1D78B40D4();

      __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
      sub_1D787C424();
    }
  }
}

uint64_t sub_1D7877A04()
{
  v1 = v0;
  v2 = sub_1D78B5254();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B52A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 sharedAccount];
  [v13 reloadiTunesAccount];

  v14 = [v12 sharedAccount];
  v15 = [v14 isUserSignedIntoiTunes];

  sub_1D7788448();
  v16 = sub_1D78B6104();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v15;
  aBlock[4] = sub_1D7878750;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_11_1;
  v18 = _Block_copy(aBlock);

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7788538();
  sub_1D774C07C(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v11, v6, v18);
  _Block_release(v18);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

double sub_1D7877D18(uint64_t a1, char a2)
{
  sub_1D774C07C(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - v6;
  v8 = *(a1 + 104);
  ObjectType = swift_getObjectType();
  if ((*(v8 + 56))(ObjectType, v8))
  {
    goto LABEL_5;
  }

  v10 = *(a1 + 208);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
    swift_beginAccess();
    sub_1D787875C(v10 + v11, v7);
    v12 = type metadata accessor for PurchaseContext(0);
    if ((*(*(v12 - 8) + 48))(v7, 1, v12) != 1)
    {
      sub_1D77B9AA8(v7);
LABEL_5:
      v13 = (*(a1 + 200) ^ 1) & a2;
      v14 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = type metadata accessor for PurchaseContext(0);
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  }

  sub_1D77B9AA8(v7);
  v14 = 0;
  v13 = 1;
LABEL_8:
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE09C268;
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D78BCAB0;
  v18 = sub_1D775ABD4();
  v19 = 20302;
  if (v13)
  {
    v19 = 5457241;
  }

  v20 = 0xE200000000000000;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = v18;
  if (v13)
  {
    v20 = 0xE300000000000000;
  }

  *(v17 + 32) = v19;
  *(v17 + 40) = v20;
  v21 = sub_1D78B60A4();
  sub_1D78B42C4("Entitlements DidChange notification received. canVerifySubscriptions: %@", 72, 2, &dword_1D7739000, v16, v21, v17);

  if (v13)
  {
    v22 = *__swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
    sub_1D78B41F4();
    sub_1D7788448();
    v23 = sub_1D78B6104();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v14;

    sub_1D78B4094();

    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v14;

    v26 = sub_1D78B4014();
    sub_1D78B40D4();
  }

  else
  {
    v28 = sub_1D78B60A4();
    return sub_1D78B42C4("Entitlements DidChange notification ignored because of an ongoing purchase", 74, 2, &dword_1D7739000, v16, v28, MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1D7878154()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  swift_unknownObjectRelease();
  sub_1D78786A8(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));

  return swift_deallocClassInstance();
}

uint64_t sub_1D78781B4()
{
  v1 = v0;
  v2 = sub_1D78B5254();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B52A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedAccount];
  v13 = [v12 isUserSignedIntoiTunes];

  *(v1 + 200) = v13;
  sub_1D7788448();
  v14 = sub_1D78B6104();
  aBlock[4] = sub_1D78786A0;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_32;
  v15 = _Block_copy(aBlock);

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7788538();
  sub_1D774C07C(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void sub_1D7878484(uint64_t a1)
{
  if (*(a1 + 152) != 1)
  {
    return;
  }

  v15 = v1;
  v16 = v2;
  sub_1D774668C(a1 + 112, &v10);
  if (!v11)
  {
    sub_1D78786A8(&v10);
    goto LABEL_6;
  }

  sub_1D7741E34(&v10, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if ((*(v4 + 8))(v3, v4))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
LABEL_6:
    v5 = [objc_opt_self() sharedAccount];
    [v5 reloadiTunesAccount];

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v6 = qword_1EE09C268;
    v7 = sub_1D78B60A4();
    sub_1D78B42C4("Scene willEnterForeground verify subscription status", 52, 2, &dword_1D7739000, v6, v7, MEMORY[0x1E69E7CC0]);
    sub_1D78777A4();
    return;
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE09C268;
  v9 = sub_1D78B60A4();
  __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1D78786A8(uint64_t a1)
{
  sub_1D775B620(0, &qword_1EE094CE0, &qword_1EE094CE8, &protocol descriptor for SubscriptionStatusCheckBlockerType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D787875C(uint64_t a1, uint64_t a2)
{
  sub_1D774C07C(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ColorPaletteProviding.bundlePaywallColorPalette.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EE093DB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1EE09C2E0;
  v7[0] = xmmword_1EE09C2D0;
  v7[1] = *&qword_1EE09C2E0;
  v2 = xmmword_1EE09C2F0;
  v3 = *&qword_1EE09C300;
  v7[2] = xmmword_1EE09C2F0;
  v7[3] = *&qword_1EE09C300;
  *a1 = xmmword_1EE09C2D0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1D7878898(v7, &v6);
}

uint64_t ColorPaletteProviding.alacartePaywallColorPalette.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EE08EF10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1EE09C220;
  v7[0] = xmmword_1EE09C210;
  v7[1] = *&qword_1EE09C220;
  v2 = xmmword_1EE09C230;
  v3 = *&qword_1EE09C240;
  v7[2] = xmmword_1EE09C230;
  v7[3] = *&qword_1EE09C240;
  *a1 = xmmword_1EE09C210;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1D7878898(v7, &v6);
}

id ColorPaletteProviding.subscriptionOffersColorPalette.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC9C8440 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = qword_1EC9D9DC0;
  v2 = *algn_1EC9D9DC8;
  v3 = qword_1EC9D9DD0;
  v4 = unk_1EC9D9DD8;
  v6 = qword_1EC9D9DE0;
  v5 = unk_1EC9D9DE8;
  v14 = unk_1EC9D9DE8;
  *a1 = qword_1EC9D9DC0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v6;

  return v14;
}

uint64_t sub_1D7878ABC@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EE093DB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1EE09C2E0;
  v7[0] = xmmword_1EE09C2D0;
  v7[1] = *&qword_1EE09C2E0;
  v2 = xmmword_1EE09C2F0;
  v3 = *&qword_1EE09C300;
  v7[2] = xmmword_1EE09C2F0;
  v7[3] = *&qword_1EE09C300;
  *a1 = xmmword_1EE09C2D0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1D7878898(v7, &v6);
}

uint64_t sub_1D7878B44@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EE08EF10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1EE09C220;
  v7[0] = xmmword_1EE09C210;
  v7[1] = *&qword_1EE09C220;
  v2 = xmmword_1EE09C230;
  v3 = *&qword_1EE09C240;
  v7[2] = xmmword_1EE09C230;
  v7[3] = *&qword_1EE09C240;
  *a1 = xmmword_1EE09C210;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1D7878898(v7, &v6);
}

id sub_1D7878BCC@<X0>(void *a1@<X8>)
{
  if (qword_1EC9C8440 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v1 = qword_1EC9D9DC0;
  v2 = *algn_1EC9D9DC8;
  v3 = qword_1EC9D9DD0;
  v4 = unk_1EC9D9DD8;
  v6 = qword_1EC9D9DE0;
  v5 = unk_1EC9D9DE8;
  v14 = unk_1EC9D9DE8;
  *a1 = qword_1EC9D9DC0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v6;

  return v14;
}

unint64_t sub_1D7878C7C(void *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D78B3134();

  v5 = [PaywallModel.tag.getter() publisherPaidOfferableConfigurations];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return v4;
  }

  sub_1D7878F2C();
  v6 = sub_1D78B5EB4();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!sub_1D78B6534())
  {
LABEL_10:

    return v4;
  }

  v7 = sub_1D78B6534();
LABEL_5:

  if (v7 == 1)
  {
    return sub_1D7878F78(a1);
  }

  else
  {
    return sub_1D78798D0(a1);
  }
}

uint64_t sub_1D7878E68()
{
  v1 = v0[14];
  v10[12] = v0[13];
  v10[13] = v1;
  v2 = v0[16];
  v10[14] = v0[15];
  v10[15] = v2;
  v3 = v0[10];
  v10[8] = v0[9];
  v10[9] = v3;
  v4 = v0[12];
  v10[10] = v0[11];
  v10[11] = v4;
  v5 = v0[6];
  v10[4] = v0[5];
  v10[5] = v5;
  v6 = v0[8];
  v10[6] = v0[7];
  v10[7] = v6;
  v7 = v0[2];
  v10[0] = v0[1];
  v10[1] = v7;
  v8 = v0[4];
  v10[2] = v0[3];
  v10[3] = v8;
  sub_1D7772B44(v10);
  return swift_deallocClassInstance();
}

unint64_t sub_1D7878F2C()
{
  result = qword_1EE08FC48;
  if (!qword_1EE08FC48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FC48);
  }

  return result;
}

unint64_t sub_1D7878F78(void *a1)
{
  v2 = [a1 subscriptionPeriodInISO_8601];
  sub_1D78B5C74();

  v3 = sub_1D77DB4A0();
  v5 = v4;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_1D78B3134();

  if (!v5)
  {
    return v9;
  }

  v10 = [a1 introductoryOffer];
  if (!v10)
  {

    sub_1D774FE1C(0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D78BCB50;
    v26 = [a1 subscriptionPriceFormatted];
    v27 = sub_1D78B5C74();
    v29 = v28;

    v30 = MEMORY[0x1E69E6158];
    *(v25 + 56) = MEMORY[0x1E69E6158];
    v31 = sub_1D775ABD4();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    *(v25 + 96) = v30;
    *(v25 + 104) = v31;
    *(v25 + 64) = v31;
    *(v25 + 72) = v3;
    *(v25 + 80) = v5;
    sub_1D78B5C94();
    return v9;
  }

  v70 = v3;

  v11 = [a1 introductoryOffer];
  if (!v11)
  {
LABEL_7:
    swift_bridgeObjectRelease_n();
    return v9;
  }

  v12 = v11;
  v67 = ObjCClassFromMetadata;
  v68 = v9;
  v13 = [v7 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D78BCB50;
  v15 = [a1 subscriptionPriceFormatted];
  v16 = sub_1D78B5C74();
  v17 = v12;
  v19 = v18;

  v20 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1D775ABD4();
  *(v14 + 32) = v16;
  *(v14 + 40) = v19;
  v22 = v17;
  *(v14 + 96) = v20;
  *(v14 + 104) = v21;
  v66 = v21;
  *(v14 + 64) = v21;
  *(v14 + 72) = v70;
  *(v14 + 80) = v5;

  sub_1D78B5C94();

  v23 = [v17 subscriptionPeriodInISO_8601];
  if (v23)
  {
    v24 = v23;
    sub_1D78B5C74();
  }

  result = [v17 numOfPeriods];
  v9 = v68;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = sub_1D77DB734();
  v35 = v34;

  if (!v35)
  {

    goto LABEL_7;
  }

  v36 = [v17 offerType];
  if (v36 != 1)
  {
    if (v36 != 2)
    {
      if (v36 == 3)
      {

        v37 = [v7 bundleForClass_];
        sub_1D78B3134();

        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1D78BCAB0;
        *(v38 + 56) = MEMORY[0x1E69E6158];
        *(v38 + 64) = v66;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        v69 = sub_1D78B5C94();

        v39 = [v7 bundleForClass_];
        sub_1D78B3134();

        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1D78BCB50;
        v41 = [a1 subscriptionPriceFormatted];
        v42 = sub_1D78B5C74();
        v44 = v43;

        v45 = MEMORY[0x1E69E6158];
        *(v40 + 56) = MEMORY[0x1E69E6158];
        *(v40 + 64) = v66;
        *(v40 + 32) = v42;
        *(v40 + 40) = v44;
        *(v40 + 96) = v45;
        *(v40 + 104) = v66;
        v9 = v69;
        *(v40 + 72) = v70;
        *(v40 + 80) = v5;
        sub_1D78B5C94();

        return v9;
      }

      swift_bridgeObjectRelease_n();
      goto LABEL_7;
    }

    v71 = v33;
    v46 = v20;
    v47 = [v7 bundleForClass_];
    sub_1D78B3134();
    v48 = v22;

    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1D78BCB50;
    result = [v22 priceFormatted];
    if (result)
    {
      v50 = result;
      swift_bridgeObjectRelease_n();

      v51 = sub_1D78B5C74();
      v53 = v52;

      *(v49 + 56) = v46;
      *(v49 + 64) = v66;
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      *(v49 + 96) = v46;
      *(v49 + 104) = v66;
      *(v49 + 72) = v71;
      *(v49 + 80) = v35;
      v9 = sub_1D78B5C94();
LABEL_24:

      return v9;
    }

    goto LABEL_27;
  }

  v54 = [v17 subscriptionPeriodInISO_8601];
  if (v54)
  {
    v55 = v54;
    sub_1D78B5C74();
  }

  v56 = sub_1D77DB4A0();
  v58 = v57;

  if (!v58)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return v68;
  }

  v72 = v33;

  v59 = [v7 bundleForClass_];
  sub_1D78B3134();
  v48 = v17;

  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1D78BF690;
  result = [v17 priceFormatted];
  if (result)
  {
    v61 = result;
    swift_bridgeObjectRelease_n();

    v62 = sub_1D78B5C74();
    v64 = v63;

    v65 = MEMORY[0x1E69E6158];
    *(v60 + 56) = MEMORY[0x1E69E6158];
    *(v60 + 64) = v66;
    *(v60 + 32) = v62;
    *(v60 + 40) = v64;
    *(v60 + 96) = v65;
    *(v60 + 104) = v66;
    *(v60 + 72) = v56;
    *(v60 + 80) = v58;
    *(v60 + 136) = v65;
    *(v60 + 144) = v66;
    *(v60 + 112) = v72;
    *(v60 + 120) = v35;
    v9 = sub_1D78B5C94();
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1D78798D0(void *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_1D78B3134();

  v6 = [a1 introductoryOffer];
  if (!v6)
  {
    return v5;
  }

  v7 = [a1 introductoryOffer];
  if (!v7)
  {
    return v5;
  }

  v8 = v7;
  v9 = [v7 subscriptionPeriodInISO_8601];
  if (v9)
  {
    v10 = v9;
    sub_1D78B5C74();
  }

  result = [v8 numOfPeriods];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = sub_1D77DB734();
  v14 = v13;

  if (!v14)
  {
LABEL_19:

    return v5;
  }

  v15 = [v8 offerType];
  if (v15 != 1)
  {
    if (v15 != 2)
    {
      if (v15 == 3)
      {

        v16 = [v3 bundleForClass_];
        sub_1D78B3134();

        sub_1D774FE1C(0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1D78BCAB0;
        *(v17 + 56) = MEMORY[0x1E69E6158];
        *(v17 + 64) = sub_1D775ABD4();
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
LABEL_18:
        v5 = sub_1D78B5C94();

        goto LABEL_19;
      }

LABEL_20:

      swift_bridgeObjectRelease_n();
      return v5;
    }

    v18 = [v3 bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C(0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D78BCB50;
    v20 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v21 = sub_1D775ABD4();
    *(v19 + 64) = v21;
    *(v19 + 32) = v12;
    *(v19 + 40) = v14;

    result = [v8 priceFormatted];
    if (result)
    {
      v22 = result;
      swift_bridgeObjectRelease_n();

      v23 = sub_1D78B5C74();
      v25 = v24;

      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 72) = v23;
      *(v19 + 80) = v25;
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  v40 = v12;
  v26 = [v8 subscriptionPeriodInISO_8601];
  if (v26)
  {
    v27 = v26;
    sub_1D78B5C74();
  }

  v39 = sub_1D77DB4A0();
  v29 = v28;

  if (!v29)
  {
    goto LABEL_20;
  }

  v30 = v29;

  v31 = [v3 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D78C22A0;
  v33 = MEMORY[0x1E69E6158];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1D775ABD4();
  *(v32 + 64) = v34;
  *(v32 + 32) = v40;
  *(v32 + 40) = v14;

  result = [v8 priceFormatted];
  if (result)
  {
    v35 = result;

    swift_bridgeObjectRelease_n();

    v36 = sub_1D78B5C74();
    v38 = v37;

    *(v32 + 96) = v33;
    *(v32 + 104) = v34;
    *(v32 + 72) = v36;
    *(v32 + 80) = v38;
    *(v32 + 136) = v33;
    *(v32 + 144) = v34;
    *(v32 + 112) = v39;
    *(v32 + 120) = v30;
    *(v32 + 176) = v33;
    *(v32 + 184) = v34;
    *(v32 + 152) = v39;
    *(v32 + 160) = v30;

    goto LABEL_18;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t PostPurchaseDestination.overridenPostPurchaseDestination(with:postPurchaseUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v41 = a3;
  v40 = a2;
  v43 = a4;
  sub_1D776F504(0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v40 - v11;
  v13 = sub_1D78B3294();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v40 - v20;
  v22 = type metadata accessor for PostPurchaseDestination(0);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v40 - v28;
  if (a1 == 2)
  {
    v36 = v14;
    if (v41)
    {
      sub_1D78B3274();
      if ((*(v14 + 48))(v12, 1, v13) != 1)
      {
        v39 = *(v14 + 32);
        v39(v21, v12, v13);
        v39(v43, v21, v13);
        return swift_storeEnumTagMultiPayload();
      }

      sub_1D787AA1C(v12, sub_1D776F504);
    }

    v33 = v42;
    sub_1D787A9B8(v42, v26);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v36 + 32))(v9, v26, v13);
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    (*(v36 + 56))(v9, v37, 1, v13);
    if ((*(v36 + 48))(v9, 1, v13) == 1)
    {
      v34 = sub_1D776F504;
      v35 = v9;
      goto LABEL_17;
    }

    v38 = *(v36 + 32);
    v38(v18, v9, v13);
    v38(v43, v18, v13);
    return swift_storeEnumTagMultiPayload();
  }

  if (a1 == 1)
  {
    v33 = v42;
    sub_1D787A9B8(v42, &v40 - v28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = type metadata accessor for PostPurchaseDestination;
      v35 = v29;
LABEL_17:
      sub_1D787AA1C(v35, v34);
      return sub_1D787A9B8(v33, v43);
    }

    *v43 = *v29;
    return swift_storeEnumTagMultiPayload();
  }

  v30 = v42;
  v31 = v43;

  return sub_1D787A9B8(v30, v31);
}

uint64_t PostPurchaseDestination.postPurchaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PostPurchaseDestination(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787A9B8(v1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_1D78B3294();
  v9 = *(v8 - 8);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v8 - 8) + 32))(a1, v6, v8);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v9 + 56))(a1, v10, 1, v8);
}

NewsSubscription::PurchaseOrigin_optional __swiftcall PurchaseOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PurchaseOrigin.rawValue.getter()
{
  v1 = 0x50676E69646E616CLL;
  if (*v0 != 1)
  {
    v1 = 0x656C7A7A7570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656568536F6C736FLL;
  }
}

uint64_t sub_1D787A4D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x50676E69646E616CLL;
  v4 = 0xEB00000000656761;
  if (v2 != 1)
  {
    v3 = 0x656C7A7A7570;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656568536F6C736FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  v7 = 0x50676E69646E616CLL;
  v8 = 0xEB00000000656761;
  if (*a2 != 1)
  {
    v7 = 0x656C7A7A7570;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656568536F6C736FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D787A5E0()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

double sub_1D787A68C(uint64_t a1)
{
  sub_1D78B5D14();

  return result;
}

uint64_t sub_1D787A724(uint64_t a1)
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D787A7D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0xEB00000000656761;
  v5 = 0x50676E69646E616CLL;
  if (v2 != 1)
  {
    v5 = 0x656C7A7A7570;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656568536F6C736FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PostPurchaseDestination.purchaseOrigin.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PostPurchaseDestination(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787A9B8(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = sub_1D787AA1C(v7, type metadata accessor for PostPurchaseDestination);
    v9 = 3;
  }

  else
  {
    v9 = *v7;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1D787A9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostPurchaseDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D787AA1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D787AA7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x65756C61566C7275;
  v5 = 0x80000001D78CE270;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001D78CE270;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1702060386;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x65756C61566C7275;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1702060386;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D787AB70()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

double sub_1D787AC10(uint64_t a1)
{
  sub_1D78B5D14();

  return result;
}

uint64_t sub_1D787AC9C(uint64_t a1)
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

unint64_t sub_1D787AD38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D787BDFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D787AD68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x65756C61566C7275;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001D78CE270;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1702060386;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D787ADC4()
{
  v1 = 0x65756C61566C7275;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

unint64_t sub_1D787AE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D787BDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D787AE44(uint64_t a1)
{
  v2 = sub_1D787B58C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D787AE80(uint64_t a1)
{
  v2 = sub_1D787B58C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D787AEBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7107189;
  }

  else
  {
    v3 = 0x696472616F626E6FLL;
  }

  if (v2)
  {
    v4 = 0xEE00776F6C46676ELL;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7107189;
  }

  else
  {
    v5 = 0x696472616F626E6FLL;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xEE00776F6C46676ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D78B6724();
  }

  return v8 & 1;
}

uint64_t sub_1D787AF68()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

double sub_1D787AFF0(uint64_t a1)
{
  sub_1D78B5D14();

  return result;
}

uint64_t sub_1D787B064(uint64_t a1)
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D787B0E8(char *a2@<X8>)
{
  v3 = sub_1D78B6594();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D787B148(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (!*v1)
  {
    v2 = 0x696472616F626E6FLL;
  }

  v3 = 0xEE00776F6C46676ELL;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PostPurchaseDestination.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D78B3294();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PostPurchaseDestination(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787BA30(0, &qword_1EC9CB440, MEMORY[0x1E69E6F58]);
  v13 = v12;
  v26 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v23 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D787B58C();
  sub_1D78B6884();
  sub_1D787A9B8(v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v23;
    v17 = v24;
    (*(v23 + 32))(v7, v11, v24);
    v32 = 1;
    v31 = 0;
    sub_1D787B5E0();
    v19 = v25;
    sub_1D78B66B4();
    if (!v19)
    {
      v30 = 1;
      sub_1D787BAE8(&qword_1EC9CB458, MEMORY[0x1E6968FB8]);
      sub_1D78B66B4();
    }

    (*(v18 + 8))(v7, v17);
  }

  else
  {
    v20 = *v11;
    v29 = 0;
    sub_1D787B5E0();
    v21 = v25;
    sub_1D78B66B4();
    if (!v21)
    {
      v28 = v20;
      v27 = 2;
      sub_1D787B634();
      sub_1D78B66B4();
    }
  }

  return (*(v26 + 8))(v16, v13);
}

unint64_t sub_1D787B58C()
{
  result = qword_1EC9CB448;
  if (!qword_1EC9CB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB448);
  }

  return result;
}

unint64_t sub_1D787B5E0()
{
  result = qword_1EC9CB450;
  if (!qword_1EC9CB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB450);
  }

  return result;
}

unint64_t sub_1D787B634()
{
  result = qword_1EC9CB460;
  if (!qword_1EC9CB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB460);
  }

  return result;
}

uint64_t PostPurchaseDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_1D78B3294();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787BA30(0, &qword_1EC9CB468, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for PostPurchaseDestination(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D787B58C();
  v15 = v30;
  sub_1D78B6874();
  if (v15)
  {
    v21 = a1;
  }

  else
  {
    v24 = v14;
    v25 = v11;
    v30 = a1;
    v17 = v27;
    v16 = v28;
    v18 = v29;
    v34 = 0;
    sub_1D787BA94();
    sub_1D78B6614();
    if (v35)
    {
      v33 = 1;
      sub_1D787BAE8(&qword_1EC9CB478, MEMORY[0x1E6968FD0]);
      sub_1D78B6614();
      v19 = v18;
      (*(v17 + 8))(v10, v7);
      v20 = v24;
      (*(v26 + 32))(v24, v5, v16);
    }

    else
    {
      v31 = 2;
      sub_1D787BB90();
      sub_1D78B6614();
      v19 = v18;
      (*(v17 + 8))(v10, v7);
      v20 = v24;
      *v24 = v32;
    }

    swift_storeEnumTagMultiPayload();
    sub_1D787BB2C(v20, v19);
    v21 = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_1D787BA30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D787B58C();
    v7 = a3(a1, &type metadata for PostPurchaseDestination.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D787BA94()
{
  result = qword_1EC9CB470;
  if (!qword_1EC9CB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB470);
  }

  return result;
}

uint64_t sub_1D787BAE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D78B3294();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D787BB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostPurchaseDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D787BB90()
{
  result = qword_1EC9CB480;
  if (!qword_1EC9CB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB480);
  }

  return result;
}

unint64_t sub_1D787BBE8()
{
  result = qword_1EC9CB488;
  if (!qword_1EC9CB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB488);
  }

  return result;
}

unint64_t sub_1D787BCA0()
{
  result = qword_1EC9CB490;
  if (!qword_1EC9CB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB490);
  }

  return result;
}

unint64_t sub_1D787BCF8()
{
  result = qword_1EC9CB498;
  if (!qword_1EC9CB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB498);
  }

  return result;
}

unint64_t sub_1D787BD50()
{
  result = qword_1EC9CB4A0;
  if (!qword_1EC9CB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB4A0);
  }

  return result;
}

unint64_t sub_1D787BDA8()
{
  result = qword_1EC9CB4A8;
  if (!qword_1EC9CB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB4A8);
  }

  return result;
}

unint64_t sub_1D787BDFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D78B6594();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D787BE48()
{
  result = qword_1EC9CB4B0;
  if (!qword_1EC9CB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB4B0);
  }

  return result;
}

unint64_t sub_1D787BE9C()
{
  result = qword_1EC9CB4B8;
  if (!qword_1EC9CB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB4B8);
  }

  return result;
}

uint64_t sub_1D787BF14(uint64_t a1)
{
  v3 = type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier(0);
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = (&v15 - v10);
  v12 = *v1;
  sub_1D787C218(a1, &v15 + *(v9 + 20) - v10, type metadata accessor for HideMyEmailSignupDataModel);
  sub_1D774584C(v12 + 16, v11 + *(v3 + 24));
  *v11 = 0x6D726177657250;
  v11[1] = 0xE700000000000000;
  sub_1D787C218(v11, v7, type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier);
  sub_1D7815870(0);
  swift_allocObject();
  sub_1D787C280(&unk_1EC9CB4C8, type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier, &unk_1D78C79A4);
  v13 = sub_1D78B47A4();
  sub_1D787C2C8(v11, type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier);
  return v13;
}

uint64_t sub_1D787C098(uint64_t a1)
{
  updated = type metadata accessor for HideMyEmailSignupUpdateBlueprintModifier(0);
  v5 = MEMORY[0x1EEE9AC00](updated, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = (&v15 - v10);
  v12 = *v1;
  sub_1D787C218(a1, &v15 + *(v9 + 20) - v10, type metadata accessor for HideMyEmailSignupDataModel);
  sub_1D774584C(v12 + 16, v11 + *(updated + 24));
  *v11 = 0x657461647055;
  v11[1] = 0xE600000000000000;
  sub_1D787C218(v11, v7, type metadata accessor for HideMyEmailSignupUpdateBlueprintModifier);
  sub_1D7815870(0);
  swift_allocObject();
  sub_1D787C280(&qword_1EC9CB4C0, type metadata accessor for HideMyEmailSignupUpdateBlueprintModifier, &unk_1D78C4694);
  v13 = sub_1D78B47A4();
  sub_1D787C2C8(v11, type metadata accessor for HideMyEmailSignupUpdateBlueprintModifier);
  return v13;
}

uint64_t sub_1D787C218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D787C280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D787C2C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D787C328()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D787C38C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3AF4();
  sub_1D7770378(&v6[*(v3 + 48)], a1);
  return sub_1D786296C(v6);
}

void sub_1D787C424()
{
  v62 = sub_1D78B3394();
  v3 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v4);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v0;
  v63 = v0[4];
  v6 = [v63 purchaseLookUpEntriesByTagID];
  if (!v6)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v7 = v6;
  sub_1D773F004(0, &qword_1EE08FD80, 0x1E69B54E0);
  v8 = sub_1D78B5BC4();

  v9 = 0;
  v11 = v8 + 64;
  v10 = *(v8 + 64);
  v64 = v8;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  v57 = &v71;
  v58 = (v3 + 8);
  v56 = xmmword_1D78BF690;
  v59 = v15;
  v60 = v11;
  if ((v13 & v10) != 0)
  {
    while (1)
    {
      v16 = v68;
LABEL_11:
      v18 = __clz(__rbit64(v14)) | (v9 << 6);
      v19 = (*(v64 + 48) + 16 * v18);
      v20 = *v19;
      v2 = v19[1];
      v21 = *(*(v64 + 56) + 8 * v18);

      v1 = v21;
      if ([v1 purchaseType] != 2 || (sub_1D787CBD4(v1) & 1) == 0)
      {
        goto LABEL_20;
      }

      v22 = v16[2];
      v23 = sub_1D78B5C44();
      v24 = [v22 accessTokenForTagID_];

      if (!v24)
      {
        break;
      }

      v67 = v24;
      v25 = sub_1D78B5C74();
      v65 = v26;
      v27 = v16[3];
      v28 = sub_1D78B5C44();
      v66 = v1;
      v29 = [v1 lastVerificationTime];
      if (!v29)
      {

        __break(1u);
        goto LABEL_31;
      }

      v30 = v29;
      v31 = v61;
      sub_1D78B3364();

      v32 = sub_1D78B3324();
      (*v58)(v31, v62);
      v33 = [v27 consumedArticleIDsForTagID:v28 fromTime:v32];

      v34 = MEMORY[0x1E69E6158];
      v35 = sub_1D78B5EB4();

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v14 &= v14 - 1;
      v36 = qword_1EE09C268;
      sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v37 = swift_allocObject();
      *(v37 + 16) = v56;
      *(v37 + 56) = v34;
      v38 = sub_1D775ABD4();
      *(v37 + 32) = v20;
      *(v37 + 40) = v2;
      *(v37 + 96) = v34;
      *(v37 + 104) = v38;
      *(v37 + 64) = v38;
      *(v37 + 72) = v25;
      *(v37 + 80) = v65;
      v39 = *(v35 + 16);

      *(v37 + 136) = MEMORY[0x1E69E6530];
      *(v37 + 144) = MEMORY[0x1E69E65A8];
      *(v37 + 112) = v39;
      v40 = sub_1D78B60A4();
      sub_1D78B42C4("WebSubscriptionStatusChecker will start verification for tagID=%{public}@ accessToken=%@ consumedArticleIDs=%ld", 111, 2, &dword_1D7739000, v36, v40, v37);

      v1 = sub_1D78B5C44();
      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v41 = sub_1D78B6104();
      v42 = swift_allocObject();
      v42[2] = v20;
      v42[3] = v2;
      v2 = v68;
      v42[4] = v68;
      v73 = sub_1D787D7FC;
      v74 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v70 = 1107296256;
      v71 = sub_1D7875C08;
      v72 = &block_descriptor_5;
      v43 = _Block_copy(&aBlock);

      v44 = v67;
      [v63 verifyAccessTokenWithTagID:v1 accessToken:v67 consumedArticleCount:v39 serialCompletion:0 callbackQueue:v41 completion:v43];
      _Block_release(v43);

      v15 = v59;
      v11 = v60;
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v14 = v20;
    if ([v1 purchaseValidationState] == 2)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (qword_1EE08FB98 == -1)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_6:
    v16 = v68;
    while (1)
    {
      v17 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        goto LABEL_22;
      }

      v14 = *(v11 + 8 * v17);
      ++v9;
      if (v14)
      {
        v9 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_24:
  v45 = qword_1EE09C268;
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1D78BCAB0;
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = sub_1D775ABD4();
  *(v46 + 32) = v14;
  *(v46 + 40) = v2;
  v47 = sub_1D78B60A4();
  sub_1D78B42C4("WebSubscriptionStatusChecker accessToken is not available or the state is already expired for tagID=%{public}@, will show the expire alert", 138, 2, &dword_1D7739000, v45, v47, v46);

  [v63 updatePurchaseEntryToExpired_];
  v48 = v16[6];
  v49 = sub_1D78B60A4();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1D78B42C4("SubscriptionExpiryManager in showExpiredAlerts method", 53, 2, &dword_1D7739000, v45, v49, MEMORY[0x1E69E7CC0]);
  v51 = sub_1D78B60A4();
  sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert method", 58, 2, &dword_1D7739000, v45, v51, v50);
  if (*(v48 + 240) == 1)
  {
    v52 = *(v48 + 232);
    v73 = sub_1D77C005C;
    v74 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v70 = 1107296256;
    v71 = sub_1D779ECCC;
    v72 = &block_descriptor_33;
    v53 = _Block_copy(&aBlock);

    [v52 enqueueBlock_];
    _Block_release(v53);
  }

  else
  {
    v55 = sub_1D78B60A4();
    sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert not showing because bootstrapper not complete", 97, 2, &dword_1D7739000, v45, v55, MEMORY[0x1E69E7CC0]);
  }

  sub_1D779DCD8(v54);
LABEL_21:

LABEL_22:
}

uint64_t sub_1D787CBD4(void *a1)
{
  v2 = sub_1D78B3394();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v68 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v68 - v9;
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v68 - v16;
  sub_1D78B3384();
  result = [a1 lastVerificationTime];
  if (!result)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v19 = result;
  sub_1D78B3364();

  sub_1D78B3304();
  v21 = v20;
  v22 = *(v3 + 8);
  v22(v17, v2);
  v22(v14, v2);
  v23 = objc_opt_self();
  v24 = [v23 standardUserDefaults];
  v25 = [v24 integerForKey_];

  if ((NFInternalBuild() & (v25 > 0)) != 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 86400.0;
  }

  v27 = [v23 standardUserDefaults];
  v28 = [v27 integerForKey_];

  if (NFInternalBuild() && v28 >= 1)
  {
    v29 = v28;
    if (v26 >= v21)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v37 = [objc_msgSend(*(v69 + 40) appConfiguration)];
    swift_unknownObjectRelease();
    v29 = v37;
    if (v26 >= v21)
    {
LABEL_8:
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v30 = qword_1EE09C268;
      sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D78BCAB0;
      result = [a1 tagID];
      if (result)
      {
        v32 = result;
        v33 = sub_1D78B5C74();
        v35 = v34;

        *(v31 + 56) = MEMORY[0x1E69E6158];
        *(v31 + 64) = sub_1D775ABD4();
        *(v31 + 32) = v33;
        *(v31 + 40) = v35;
        v36 = sub_1D78B60A4();
        sub_1D78B42C4("WebSubscriptionStatusChecker no need to verify tagID=%{public}@ at this time", 76, 2, &dword_1D7739000, v30, v36, v31);

        return 0;
      }

      goto LABEL_34;
    }
  }

  if ([a1 purchaseValidationState] != 3)
  {
    if ([a1 purchaseValidationState] != 1)
    {
      return 0;
    }

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v49 = qword_1EE09C268;
    sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1D78BCAB0;
    result = [a1 tagID];
    if (!result)
    {
      goto LABEL_36;
    }

    v51 = result;
    v52 = sub_1D78B5C74();
    v54 = v53;

    *(v50 + 56) = MEMORY[0x1E69E6158];
    *(v50 + 64) = sub_1D775ABD4();
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    v55 = sub_1D78B60A4();
    sub_1D78B42C4("WebSubscriptionStatusChecker subscription state is valid, it's time to verify access token for tagID=%{public}@", 111, 2, &dword_1D7739000, v49, v55, v50);
LABEL_25:

    return 1;
  }

  sub_1D78B3384();
  result = [a1 lastVerificationFailureTime];
  if (!result)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = result;
  v39 = v68;
  sub_1D78B3364();

  sub_1D78B3304();
  v41 = v40;
  v22(v10, v2);
  v22(v39, v2);
  if (v41 >= v29)
  {
    sub_1D773F004(0, &qword_1EE08FB80, 0x1E69E9BF8);
    v56 = sub_1D78B6284();
    v57 = sub_1D78B60A4();
    sub_1D78B42C4("WebSubscriptionStatusChecker will update the subscription to expired and show expired alert", 91, 2, &dword_1D7739000, v56, v57, MEMORY[0x1E69E7CC0]);

    v58 = v69;
    [*(v69 + 32) updatePurchaseEntryToExpired_];
    v59 = *(v58 + 48);
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v60 = qword_1EE09C268;
    v61 = sub_1D78B60A4();
    v62 = MEMORY[0x1E69E7CC0];
    sub_1D78B42C4("SubscriptionExpiryManager in showExpiredAlerts method", 53, 2, &dword_1D7739000, v60, v61, MEMORY[0x1E69E7CC0]);
    v63 = sub_1D78B60A4();
    sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert method", 58, 2, &dword_1D7739000, v60, v63, v62);
    if (*(v59 + 240) == 1)
    {
      v64 = *(v59 + 232);
      aBlock[4] = sub_1D77C0170;
      aBlock[5] = v59;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D779ECCC;
      aBlock[3] = &block_descriptor_13_1;
      v65 = _Block_copy(aBlock);

      [v64 enqueueBlock_];
      _Block_release(v65);
    }

    else
    {
      v67 = sub_1D78B60A4();
      sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert not showing because bootstrapper not complete", 97, 2, &dword_1D7739000, v60, v67, MEMORY[0x1E69E7CC0]);
    }

    sub_1D779DCD8(v66);
    return 0;
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v42 = qword_1EE09C268;
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D78BCAB0;
  result = [a1 tagID];
  if (result)
  {
    v44 = result;
    v45 = sub_1D78B5C74();
    v47 = v46;

    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_1D775ABD4();
    *(v43 + 32) = v45;
    *(v43 + 40) = v47;
    v48 = sub_1D78B60A4();
    sub_1D78B42C4("WebSubscriptionStatusChecker lastVerificationFailureTime < tokenVerificationGracePeriod will verify access token again for tagID=%{public}@", 139, 2, &dword_1D7739000, v42, v48, v43);
    goto LABEL_25;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_1D787D424(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE09C268;
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D78BF690;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D775ABD4();
  *(v12 + 64) = v14;
  v15 = MEMORY[0x1E69E6370];
  v16 = MEMORY[0x1E69E63A8];
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 96) = v15;
  *(v12 + 104) = v16;
  *(v12 + 72) = a1 & 1;
  aBlock[0] = a3;

  v17 = a3;
  sub_1D775B620(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v18 = sub_1D78B5CC4();
  *(v12 + 136) = v13;
  *(v12 + 144) = v14;
  *(v12 + 112) = v18;
  *(v12 + 120) = v19;
  v20 = sub_1D78B60A4();
  sub_1D78B42C4("WebSubscriptionStatusChecker received verification response for tagID=%{public}@ subscribed=%d error=%{public}@", 111, 2, &dword_1D7739000, v11, v20, v12);

  if (!a3 || (aBlock[0] = a3, v21 = a3, sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]), sub_1D773F004(0, &qword_1EC9CB4D8, 0x1E696ABC0), (swift_dynamicCast() & 1) == 0) || ((v22 = [v33 code], v23 = *MEMORY[0x1E69B56A8], v33, v22 == v23) ? (v24 = v22 <= -1) : (v24 = 1), v24))
  {
    if ((a1 & 1) == 0)
    {
      v25 = *(a6 + 48);
      v26 = sub_1D78B60A4();
      v27 = MEMORY[0x1E69E7CC0];
      sub_1D78B42C4("SubscriptionExpiryManager in showExpiredAlerts method", 53, 2, &dword_1D7739000, v11, v26, MEMORY[0x1E69E7CC0]);
      v28 = sub_1D78B60A4();
      sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert method", 58, 2, &dword_1D7739000, v11, v28, v27);
      if (*(v25 + 240) == 1)
      {
        v29 = *(v25 + 232);
        aBlock[4] = sub_1D77C0170;
        aBlock[5] = v25;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D779ECCC;
        aBlock[3] = &block_descriptor_9;
        v30 = _Block_copy(aBlock);

        [v29 enqueueBlock_];
        _Block_release(v30);
      }

      else
      {
        v32 = sub_1D78B60A4();
        sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert not showing because bootstrapper not complete", 97, 2, &dword_1D7739000, v11, v32, MEMORY[0x1E69E7CC0]);
      }

      sub_1D779DCD8(v31);
    }
  }
}

uint64_t sub_1D787D7A4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t BundleSubscriptionExpiredAlert.title.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();

  v5 = [v4 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D78BCAB0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D775ABD4();
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = sub_1D78B5C94();

  return v7;
}

uint64_t BundleSubscriptionExpiredAlert.message.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  if (!v1)
  {
    goto LABEL_6;
  }

  v4 = *v0;
  v5 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
  }

  else
  {
LABEL_6:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D78BCAB0;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1D775ABD4();
    *(v8 + 32) = v2;
    *(v8 + 40) = v3;

    v4 = sub_1D78B5C94();
  }

  return v4;
}

uint64_t BundleSubscriptionExpiredAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D787DB68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D78B3134();

  return v4;
}

uint64_t sub_1D787DC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1D78B3134();

  return v6;
}

uint64_t sub_1D787DD20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D787DD68(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t static Presets.ConfigOffers.configOffer(merchandisingItemKeys:additionalMerchandisingItemKeys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_1D78B36C4();
  swift_allocObject();

  return sub_1D78B36B4();
}

uint64_t sub_1D787DEE8(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C86A8 != -1)
  {
    swift_once();
  }

  sub_1D7800004();
  sub_1D774E294(&qword_1EC9CB558, sub_1D7800004, MEMORY[0x1E69D6EE8]);
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C86A0 != -1)
  {
    swift_once();
  }

  return sub_1D78B3624();
}

uint64_t sub_1D787E190(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85B8 != -1)
  {
    swift_once();
  }

  return sub_1D78B3624();
}

uint64_t sub_1D787E284(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85B8 != -1)
  {
    swift_once();
  }

  return sub_1D78B3624();
}

uint64_t sub_1D787E3C0(void *a1)
{
  v2 = sub_1D78B3594();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787F188(a1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85F0 != -1)
  {
    swift_once();
  }

  v9 = 1;
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C8598 != -1)
  {
    swift_once();
  }

  v8 = 1;
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EE08F438 != -1)
  {
    swift_once();
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E69D6D08], v2);
  sub_1D774E294(&unk_1EE08F288, MEMORY[0x1E69D6D20], MEMORY[0x1E69D6D18]);
  sub_1D78B3624();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D787E688(void *a1)
{
  v2 = sub_1D78B3594();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D787F188(a1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85F8 != -1)
  {
    swift_once();
  }

  v9 = 1;
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C8598 != -1)
  {
    swift_once();
  }

  v8 = 0;
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EE08F450 != -1)
  {
    swift_once();
  }

  (*(v3 + 104))(v6, *MEMORY[0x1E69D6D08], v2);
  sub_1D774E294(&unk_1EE08F288, MEMORY[0x1E69D6D20], MEMORY[0x1E69D6D18]);
  sub_1D78B3624();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D787E94C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D78B3624();
}

uint64_t sub_1D787EA8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D78B3624();
}

uint64_t sub_1D787EBCC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D78B3624();
}

uint64_t sub_1D787ED0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D78B3624();
}

uint64_t sub_1D787EE4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D78B36C4();
  swift_allocObject();
  result = sub_1D78B36B4();
  *a3 = result;
  return result;
}

uint64_t sub_1D787EEA4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D78B3624();
}

double sub_1D787EFC4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85E8 != -1)
  {
    swift_once();
  }

  sub_1D78B3624();

  return result;
}

uint64_t sub_1D787F188(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85F8 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C85F0 != -1)
  {
    swift_once();
  }

  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EC9C8598 != -1)
  {
    swift_once();
  }

  sub_1D78B3624();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EE08F438 != -1)
  {
    swift_once();
  }

  sub_1D78B3594();
  sub_1D774E294(&unk_1EE08F288, MEMORY[0x1E69D6D20], MEMORY[0x1E69D6D18]);
  sub_1D78B3634();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_1EE08F450 != -1)
  {
    swift_once();
  }

  return sub_1D78B3634();
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D787F42C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D787F44C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

id BridgedFamilyStatusManager.__allocating_init(familyStatusManager:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC16NewsSubscription26BridgedFamilyStatusManager_familyStatusManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedFamilyStatusManager.init(familyStatusManager:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC16NewsSubscription26BridgedFamilyStatusManager_familyStatusManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1D787F588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D78B5734();
  sub_1D78B41F4();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D776AC18(a1, a2);
  v10 = sub_1D78B4014();
  sub_1D7756CA8(0, &unk_1EC9CA730, MEMORY[0x1E69E7CA8] + 8);
  sub_1D78B4094();

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  sub_1D776AC18(a3, a4);
  v12 = sub_1D78B4014();
  sub_1D78B40D4();
}

uint64_t sub_1D787F6F4@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v22[1] = a3;
  v7 = sub_1D78B5724();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B5734();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x1E69B60D0])
  {
    result = (*(v13 + 96))(v16, v12);
    if (a2)
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v24 = sub_1D77BFFAC();
      v23[0] = v19;
      a2(v23);
LABEL_7:
      result = sub_1D7756B84(v23);
      v21 = 0;
LABEL_10:
      *a4 = v21;
      return result;
    }

    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x1E69B60D8])
  {
    (*(v13 + 96))(v16, v12);
    (*(v8 + 32))(v11, v16, v7);
    if (a2)
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v24 = sub_1D77BFFAC();
      v23[0] = v20;
      a2(v23);
      (*(v8 + 8))(v11, v7);
      goto LABEL_7;
    }

    result = (*(v8 + 8))(v11, v7);
LABEL_9:
    v21 = 1;
    goto LABEL_10;
  }

  result = sub_1D78B6714();
  __break(1u);
  return result;
}

void sub_1D787FA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = objc_allocWithZone(MEMORY[0x1E69B68F8]);
  v11[4] = a2;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D7880210;
  v11[3] = a3;
  v8 = _Block_copy(v11);
  v9 = v3;

  v10 = [v7 initWithResolver_];
  _Block_release(v8);
  if (!v10)
  {
    __break(1u);
  }
}

double sub_1D787FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1D78B3A64();
  v8 = swift_allocObject();
  v8[2] = a5;
  v8[3] = a1;
  v8[4] = a2;
  v9 = a5;
  sub_1D776AC18(a1, a2);
  sub_1D78B3A54();

  return result;
}

uint64_t sub_1D787FBC8(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v27[1] = a3;
  v4 = sub_1D78B5724();
  v27[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7880360(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B5734();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v27 - v19;
  swift_getObjectType();
  sub_1D78B5AC4();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v20, v11, v12);
    (*(v13 + 16))(v17, v20, v12);
    v23 = (*(v13 + 88))(v17, v12);
    if (v23 == *MEMORY[0x1E69B60D0])
    {
      (*(v13 + 96))(v17, v12);
      if (a2)
      {
        v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v29 = sub_1D77BFFAC();
        v28[0] = v24;
        a2(v28);
LABEL_10:
        (*(v13 + 8))(v20, v12);
        return sub_1D7756B84(v28);
      }
    }

    else
    {
      if (v23 != *MEMORY[0x1E69B60D8])
      {
        result = sub_1D78B6714();
        __break(1u);
        return result;
      }

      (*(v13 + 96))(v17, v12);
      v25 = v27[0];
      (*(v27[0] + 32))(v7, v17, v4);
      if (a2)
      {
        v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v29 = sub_1D77BFFAC();
        v28[0] = v26;
        a2(v28);
        (*(v25 + 8))(v7, v4);
        goto LABEL_10;
      }

      (*(v25 + 8))(v7, v4);
    }

    return (*(v13 + 8))(v20, v12);
  }

  result = sub_1D78803B8(v11);
  if (a2)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v29 = sub_1D77BFFAC();
    v28[0] = v22;
    a2(v28);
    return sub_1D7756B84(v28);
  }

  return result;
}

void sub_1D7880028(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = objc_allocWithZone(MEMORY[0x1E69B68F8]);
  v14[4] = a4;
  v14[5] = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D7880210;
  v14[3] = a5;
  v10 = _Block_copy(v14);
  v11 = a1;

  v12 = [v9 initWithResolver_];
  _Block_release(v10);
  if (v12)
  {

    v13 = v12;
  }

  else
  {
    __break(1u);
  }
}

id BridgedFamilyStatusManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedFamilyStatusManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D7880210(uint64_t a1, void *aBlock, const void *a3)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1D78805BC;
  }

  else
  {
    v6 = 0;
  }

  v7 = _Block_copy(a3);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1D78805B4;
  }

  else
  {
    v8 = 0;
  }

  v4(v5, v6, v7, v8);
  sub_1D7744A7C(v7, v8);
  sub_1D7744A7C(v5, v6);

  return result;
}

void sub_1D7880360(uint64_t a1)
{
  if (!qword_1EC9CB568)
  {
    sub_1D78B5734();
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CB568);
    }
  }
}

uint64_t sub_1D78803B8(uint64_t a1)
{
  sub_1D7880360(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7880414(uint64_t a1, uint64_t a2)
{
  sub_1D779C6B0(a1, v10);
  v3 = v11;
  if (v11)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v4, v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_1D78B6704();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
  }

  (*(a2 + 16))(a2, v8);
  return swift_unknownObjectRelease();
}

void sub_1D7880550(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D78B31B4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1D7880630()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t AppLaunchUpsellTriggerResult.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D788070C()
{
  result = qword_1EC9CB570;
  if (!qword_1EC9CB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB570);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppLaunchUpsellTriggerResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLaunchUpsellTriggerResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id DismissibleDynamicViewController.__allocating_init(rootViewController:identifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier];
  *v8 = a2;
  *(v8 + 1) = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithRootViewController_, a1);

  return v9;
}

uint64_t DismissibleDynamicViewController.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier);

  return v1;
}

uint64_t sub_1D78809E8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7880A54(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D77C97C8;
}

id DismissibleDynamicViewController.init(rootViewController:identifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier];
  *v7 = a2;
  *(v7 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DismissibleDynamicViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithRootViewController_, a1);

  return v8;
}

uint64_t sub_1D7880C14()
{
  v1 = v0 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

id DismissibleDynamicViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id DismissibleDynamicViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id DismissibleDynamicViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D78B5C44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DismissibleDynamicViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissibleDynamicViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7881020()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier);

  return v1;
}

uint64_t DismissibleDynamicViewController.cardSplitViewPresentation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D78B48B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69D7B20])
  {
    v10 = MEMORY[0x1E69D80B8];
LABEL_5:
    v11 = *v10;
    v12 = sub_1D78B4B74();
    (*(*(v12 - 8) + 104))(a2, v11, v12);
    v13 = *MEMORY[0x1E69D80B0];
    v14 = sub_1D78B4B84();
    return (*(*(v14 - 8) + 104))(a2, v13, v14);
  }

  if (v9 == *MEMORY[0x1E69D7B18])
  {
    v10 = MEMORY[0x1E69D80C0];
    goto LABEL_5;
  }

  result = sub_1D78B6524();
  __break(1u);
  return result;
}

uint64_t sub_1D7881264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D78B48B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69D7B20])
  {
    v10 = MEMORY[0x1E69D80B8];
LABEL_5:
    v11 = *v10;
    v12 = sub_1D78B4B74();
    (*(*(v12 - 8) + 104))(a2, v11, v12);
    v13 = *MEMORY[0x1E69D80B0];
    v14 = sub_1D78B4B84();
    return (*(*(v14 - 8) + 104))(a2, v13, v14);
  }

  if (v9 == *MEMORY[0x1E69D7B18])
  {
    v10 = MEMORY[0x1E69D80C0];
    goto LABEL_5;
  }

  result = sub_1D78B6524();
  __break(1u);
  return result;
}

char *sub_1D7881588(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_choiceLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_addressPreviewLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v13 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_checkbox;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_titleLabel];
  v16 = v14;
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];

  return v16;
}

void sub_1D788182C()
{
  sub_1D78818B8(&qword_1EC9CAC70, &unk_1D78CA764);

  JUMPOUT(0x1DA702390);
}

uint64_t sub_1D78818B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HideMyEmailSignupChoiceView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D78818F8()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v2 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_choiceLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_addressPreviewLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_checkbox;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

void sub_1D7881A18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 48);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  sub_1D78B6054();
  v11 = [v7 horizontalSizeClass];
  if (v11 >= 3)
  {
    goto LABEL_36;
  }

  v12 = *a1;
  *&v13 = 0.0;
  v132 = *(*a1 + 16);
  v134 = a1;
  if (!v132)
  {
    v29 = 0;
    v25 = 0;
    v113 = 0;
    v114 = 0;
    v28 = 0;
    v115 = 0;
    v27 = 0.0;
    v24 = 0.0;
    v128 = 0.0;
    v124 = 0.0;
    v109 = 0.0;
    v110 = 0.0;
    v86 = 0.0;
    rect = 0.0;
    v126 = 0.0;
    v122 = 0.0;
    v93 = 0.0;
    goto LABEL_14;
  }

  v14 = dbl_1D78CA850[v11];
  v15 = v12[4];
  v16 = v12[5];
  v130 = v7;
  v18 = v12[6];
  v17 = v12[7];
  v20 = v12[8];
  v19 = v12[9];
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));

  v120 = sub_1D7895A80(v15, v16);
  sub_1D788236C(v120, v14, 1.79769313e308);
  v22 = v21;
  v24 = v23;
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v25 = sub_1D7895ED0(v18, v17, v20, v19);

  v7 = v130;

  v26 = [v130 horizontalSizeClass];
  if (v26 >= 3)
  {
    goto LABEL_36;
  }

  v128 = dbl_1D78CA850[v26];
  if (v132 == 1)
  {
    v27 = v22;
    v113 = 0;
    v114 = 0;
    v28 = 0;
    v115 = 0;
    v110 = 0.0;
    v124 = 50.0;
    v86 = 0.0;
    rect = 0.0;
    v109 = 0.0;
    v126 = 0.0;
    v122 = 0.0;
    v93 = 0.0;
    v29 = v120;
LABEL_13:
    a1 = v134;
    goto LABEL_14;
  }

  v117 = v25;
  v31 = v12[10];
  v30 = v12[11];
  v32 = v12[12];
  v33 = v12[13];
  v34 = v12[14];
  v35 = v12[15];
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));

  v36 = v31;
  v7 = v130;
  v115 = sub_1D7895A80(v36, v30);
  sub_1D788236C(v115, v14, 1.79769313e308);
  v93 = v37;
  v122 = v38;
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v39 = sub_1D7895ED0(v32, v33, v34, v35);

  v40 = [v130 horizontalSizeClass];
  if (v40 >= 3)
  {
    goto LABEL_36;
  }

  v126 = dbl_1D78CA850[v40];
  v114 = v39;
  if (v132 == 2)
  {
    v27 = v22;
    v113 = 0;
    v28 = 0;
    v110 = 0.0;
    v86 = 0.0;
    rect = 0.0;
    v124 = 50.0;
    v109 = 50.0;
LABEL_12:
    v29 = v120;
    v25 = v117;
    goto LABEL_13;
  }

  v42 = v12[16];
  v41 = v12[17];
  v43 = v12[18];
  v44 = v12[19];
  v45 = v12[20];
  v46 = v12[21];
  __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));

  v28 = sub_1D7895A80(v42, v41);
  sub_1D788236C(v28, v14, 1.79769313e308);
  v86 = v47;
  rect = v48;
  __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
  v49 = sub_1D7895ED0(v43, v44, v45, v46);
  v7 = v130;

  v50 = [v130 horizontalSizeClass];
  v113 = v49;
  if (v50 < 2)
  {
    v27 = v22;
    v110 = 310.0;
    *&v13 = 50.0;
    v124 = 50.0;
    v109 = 50.0;
    goto LABEL_12;
  }

  v29 = v120;
  v25 = v117;
  a1 = v134;
  if (v50 != 2)
  {
LABEL_36:
    sub_1D78B6524();
    __break(1u);
    return;
  }

  v27 = v22;
  v110 = 360.0;
  *&v13 = 50.0;
  v124 = 50.0;
  v109 = 50.0;
LABEL_14:
  __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
  v51 = sub_1D7896480(*(a1 + 32), *(a1 + 40));
  sub_1D78B6144();
  v83 = v53;
  v84 = v52;
  __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
  v54 = sub_1D7896684(*(a1 + 16), *(a1 + 24));
  v111 = *&v13;
  if ([v7 horizontalSizeClass] != 1 || (v55 = objc_msgSend(objc_opt_self(), sel_currentDevice), v56 = objc_msgSend(v55, sel_userInterfaceIdiom), v55, a1 = v134, v56 == 1))
  {
    v57 = v24;
  }

  else
  {
    v57 = v24;
  }

  sub_1D78B6144();
  v103 = v59;
  v104 = v58;
  v135.origin.x = 0.0;
  v131 = 0.0;
  v135.origin.y = 0.0;
  v135.size.width = v8;
  v135.size.height = v9;
  v136 = CGRectIntegral(v135);
  y = v136.origin.y;
  x = v136.origin.x;
  height = v136.size.height;
  width = v136.size.width;
  v60 = *(a1 + 8);
  v61 = 30.0;
  if (v132 != 3)
  {
    v61 = 50.0;
  }

  if (v60)
  {
    v62 = 50.0;
  }

  else
  {
    v62 = v61;
  }

  v137.size.width = sub_1D7882514(v7, v8, v9);
  v137.size.height = v137.size.width * 14.63 / 100.0;
  v137.origin.x = (v8 - v137.size.width) * 0.5;
  v137.origin.y = v10 + v62;
  v138 = CGRectIntegral(v137);
  v101 = v138.origin.y;
  v102 = v138.origin.x;
  v99 = v138.size.height;
  v100 = v138.size.width;
  v139.origin.y = CGRectGetMaxY(v138) + 31.0;
  v139.origin.x = (v8 - v27) * 0.5;
  v139.size.width = v27;
  v139.size.height = v57;
  v140 = CGRectIntegral(v139);
  v63 = v140.origin.x;
  v64 = v140.origin.y;
  v95 = v140.size.height;
  v96 = v140.size.width;
  MaxY = CGRectGetMaxY(v140);
  v116 = v9;
  v97 = v64;
  v98 = v63;
  if (v60)
  {
    v141.origin.y = MaxY + 31.0;
    v141.origin.x = (v8 - v128) * 0.5;
    v141.size.width = v128;
    v141.size.height = v124;
    v142 = CGRectIntegral(v141);
    v66 = v142.origin.x;
    v119 = v142.size.width;
    v121 = v142.origin.y;
    v118 = v142.size.height;
    v143.origin.y = CGRectGetMaxY(v142) + 16.0;
    v143.origin.x = (v8 - v126) * 0.5;
    v143.size.width = v126;
    v67 = v109;
    v143.size.height = v109;
    v144 = CGRectIntegral(v143);
    v87 = 0.0;
    recta = 0.0;
    v85 = 0.0;
    v92 = 0.0;
    v94 = 0.0;
    v91 = 0.0;
    v127 = v144.size.height;
    v129 = v144.size.width;
    v90 = 0.0;
    v123 = v144.origin.y;
    v125 = v144.origin.x;
  }

  else
  {
    v145.origin.y = MaxY + 16.0;
    v145.origin.x = (v8 - v128) * 0.5;
    v145.size.width = v128;
    v145.size.height = v124;
    v146 = CGRectIntegral(v145);
    v66 = v146.origin.x;
    v119 = v146.size.width;
    v121 = v146.origin.y;
    v118 = v146.size.height;
    v147.origin.y = CGRectGetMaxY(v146) + 16.0;
    v147.origin.x = (v8 - v93) * 0.5;
    v147.size.width = v93;
    v147.size.height = v122;
    v148 = CGRectIntegral(v147);
    v92 = v148.origin.y;
    v94 = v148.origin.x;
    v90 = v148.size.height;
    v91 = v148.size.width;
    v149.origin.y = CGRectGetMaxY(v148) + 16.0;
    v149.origin.x = (v8 - v126) * 0.5;
    v149.size.width = v126;
    v67 = v109;
    v149.size.height = v109;
    v150 = CGRectIntegral(v149);
    v123 = v150.origin.y;
    v125 = v150.origin.x;
    v127 = v150.size.height;
    v129 = v150.size.width;
    v151.origin.y = CGRectGetMaxY(v150) + 16.0;
    v151.origin.x = (v8 - v86) * 0.5;
    v151.size.width = v86;
    v151.size.height = rect;
    v144 = CGRectIntegral(v151);
    v131 = v144.origin.x;
    v87 = v144.size.width;
    recta = v144.origin.y;
    v85 = v144.size.height;
  }

  v133 = v8;
  v152.origin.y = CGRectGetMaxY(v144) + 16.0;
  v152.origin.x = (v8 - v110) * 0.5;
  v152.size.width = v110;
  v68 = v111;
  v152.size.height = v111;
  v153 = CGRectIntegral(v152);
  v69 = v153.origin.x;
  v70 = v153.origin.y;
  v71 = v153.size.width;
  v112 = v153.size.height;
  if (v68 <= 0.0)
  {
    v153.origin.y = v123;
    v153.origin.x = v125;
    v153.size.height = v127;
    v153.size.width = v129;
    if (v67 <= 0.0)
    {
      v153.origin.x = v66;
      v153.size.width = v119;
      v153.origin.y = v121;
      v153.size.height = v118;
    }
  }

  v72 = v66;
  v73 = CGRectGetMaxY(v153);
  v74 = 0.0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  if ((*(v134 + 48) & 1) == 0)
  {
    v154.size.width = v84;
    v154.origin.y = v73 + 20.0;
    v154.origin.x = (v133 - v84) * 0.5;
    v154.size.height = v83;
    *&v73 = CGRectIntegral(v154);
    v74 = v73;
    v75 = v78;
    v76 = v79;
    v77 = v80;
  }

  v81 = [v7 horizontalSizeClass];
  v82 = 20.0;
  if (v81 == 1)
  {
    v82 = 40.0;
  }

  v155.size.height = v103;
  v155.origin.x = (v133 - v104) * 0.5;
  v155.origin.y = v116 - (v103 + v82);
  v155.size.width = v104;
  v156 = CGRectIntegral(v155);
  *(a3 + 64) = v102;
  *(a3 + 72) = v101;
  *(a3 + 80) = v100;
  *(a3 + 88) = v99;
  *(a3 + 96) = v98;
  *(a3 + 104) = v97;
  *(a3 + 112) = v96;
  *(a3 + 120) = v95;
  *(a3 + 128) = v72;
  *(a3 + 136) = v121;
  *(a3 + 144) = v119;
  *(a3 + 152) = v118;
  *a3 = x;
  *(a3 + 8) = y;
  *(a3 + 16) = width;
  *(a3 + 24) = height;
  *(a3 + 32) = x;
  *(a3 + 40) = y;
  *(a3 + 48) = width;
  *(a3 + 56) = height;
  *(a3 + 160) = v94;
  *(a3 + 168) = v92;
  *(a3 + 176) = v91;
  *(a3 + 184) = v90;
  *(a3 + 192) = v125;
  *(a3 + 200) = v123;
  *(a3 + 208) = v129;
  *(a3 + 216) = v127;
  *(a3 + 224) = v131;
  *(a3 + 232) = recta;
  *(a3 + 240) = v87;
  *(a3 + 248) = v85;
  *(a3 + 256) = v69;
  *(a3 + 264) = v70;
  *(a3 + 272) = v71;
  *(a3 + 280) = v112;
  *(a3 + 288) = v74;
  *(a3 + 296) = v75;
  *(a3 + 304) = v76;
  *(a3 + 312) = v77;
  *(a3 + 320) = v156;
  *(a3 + 352) = v29;
  *(a3 + 360) = v115;
  *(a3 + 368) = v28;
  *(a3 + 376) = v25;
  *(a3 + 384) = v114;
  *(a3 + 392) = v113;
  *(a3 + 400) = v51;
  *(a3 + 408) = v54;
}

void sub_1D788236C(void *a1, double a2, double a3)
{
  v4 = sub_1D78B2FF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 string];
  v10 = sub_1D78B5C74();
  v12 = v11;

  v17[0] = v10;
  v17[1] = v12;
  sub_1D78B2FC4();
  sub_1D77BE06C();
  v13 = sub_1D78B62C4();
  v15 = v14;
  (*(v5 + 8))(v8, v4);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    sub_1D78B6144();
  }
}

double sub_1D7882514(void *a1, double a2, double a3)
{
  if ([a1 horizontalSizeClass] == 1 && (v5 = objc_msgSend(objc_opt_self(), sel_currentDevice), v6 = objc_msgSend(v5, sel_userInterfaceIdiom), v5, v6 != 1))
  {
    v7 = 60.5;
  }

  else
  {
    v7 = 40.5;
  }

  if (a3 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  return v8 * v7 / 100.0;
}

uint64_t sub_1D78825C4(uint64_t a1)
{
  v2 = sub_1D7890118();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7882618(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7890118();
  v5 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7882674(uint64_t a1)
{
  v2 = sub_1D7890118();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

NewsSubscription::BundleTrialStatus_optional __swiftcall BundleTrialStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D78826E4(uint64_t a1)
{
  v2 = sub_1D78900C4();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7882738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78900C4();
  v5 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7882794(uint64_t a1)
{
  v2 = sub_1D78900C4();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D788280C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F2C8 = result;
  return result;
}

uint64_t sub_1D7882A10()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F2B0 = result;
  return result;
}

uint64_t sub_1D7882C14()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE0954F8 = result;
  return result;
}

uint64_t sub_1D7882E18()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F2A0 = result;
  return result;
}

uint64_t sub_1D7883040()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB628 = result;
  return result;
}

uint64_t sub_1D78832F8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB630 = result;
  return result;
}

uint64_t sub_1D78834FC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D78B3394();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  sub_1D78B32E4();
  *v9 = 0xD00000000000001BLL;
  v9[1] = 0x80000001D78E05B0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  sub_1D774E200(0);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F2E8 = result;
  return result;
}

uint64_t sub_1D7883744()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = 0xD00000000000001BLL;
  v8[1] = 0x80000001D78E05B0;
  (*(v9 + 104))(v8, *MEMORY[0x1E69D6E98]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB638 = result;
  return result;
}

uint64_t sub_1D7883964()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = 0xD00000000000001BLL;
  v8[1] = 0x80000001D78E05B0;
  (*(v9 + 104))(v8, *MEMORY[0x1E69D6E98]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F2D8 = result;
  return result;
}

uint64_t sub_1D7883B84()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F310 = result;
  return result;
}

uint64_t sub_1D7883D54()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EC9CB640 = result;
  return result;
}

uint64_t sub_1D7883F24()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB648 = result;
  return result;
}

uint64_t sub_1D7884148()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  sub_1D78B5C74();
  v13[1] = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78BCB50;
  v13[0] = 0;
  sub_1D78B36A4();
  v13[0] = 1;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB650 = result;
  return result;
}

uint64_t sub_1D78844A8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v14[1] = v11;
  sub_1D78B5C74();
  v16 = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v12;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78C0D80;
  v15 = 0;
  sub_1D78B36A4();
  v15 = 1;
  sub_1D78B36A4();
  v15 = 2;
  sub_1D78B36A4();
  v15 = 3;
  sub_1D78B36A4();
  v15 = 4;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB658 = result;
  return result;
}

uint64_t sub_1D78848B8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v13[1] = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78C22A0;
  v13[0] = 0;
  sub_1D78B36A4();
  v13[0] = 1;
  sub_1D78B36A4();
  v13[0] = 2;
  sub_1D78B36A4();
  v13[0] = 3;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EE0955E0 = result;
  return result;
}

uint64_t sub_1D7884C78()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v13[1] = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78BF690;
  v13[0] = 0;
  sub_1D78B36A4();
  v13[0] = 1;
  sub_1D78B36A4();
  v13[0] = 2;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB660 = result;
  return result;
}

uint64_t sub_1D7885008()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000003FLL;
  v12[1] = 0x80000001D78E03F0;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB668 = result;
  return result;
}

uint64_t sub_1D7885248()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D78B3684();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.PaywallConfigs.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D78B5C74();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D78B35A4();
  qword_1EE095598 = result;
  return result;
}

uint64_t sub_1D7885430()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v13[1] = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78BF690;
  v13[0] = -1;
  sub_1D78B36A4();
  v13[0] = 0;
  sub_1D78B36A4();
  v13[0] = 1;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB670 = result;
  return result;
}

uint64_t sub_1D78857C0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000014;
  v12[1] = 0x80000001D78E0310;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB678 = result;
  return result;
}

uint64_t sub_1D78859F8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000004DLL;
  v12[1] = 0x80000001D78E0290;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB680 = result;
  return result;
}

uint64_t sub_1D7885C38()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000010;
  v12[1] = 0x80000001D78E0240;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB688 = result;
  return result;
}

uint64_t sub_1D7885E74()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB690 = result;
  return result;
}

uint64_t sub_1D788609C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000078;
  v12[1] = 0x80000001D78E0150;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB698 = result;
  return result;
}

uint64_t sub_1D78862DC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6A0 = result;
  return result;
}

uint64_t sub_1D7886500()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v13[1] = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78C0D80;
  v13[0] = 0;
  sub_1D78B36A4();
  v13[0] = 1;
  sub_1D78B36A4();
  v13[0] = 2;
  sub_1D78B36A4();
  v13[0] = 3;
  sub_1D78B36A4();
  v13[0] = 4;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB6A8 = result;
  return result;
}

uint64_t sub_1D788690C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6B0 = result;
  return result;
}

uint64_t sub_1D7886B30()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000015;
  v12[1] = 0x80000001D78DE780;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6B8 = result;
  return result;
}

uint64_t sub_1D7886D68()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000017;
  v12[1] = 0x80000001D78E0010;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6C0 = result;
  return result;
}

uint64_t sub_1D7886FA0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6C8 = result;
  return result;
}

uint64_t sub_1D78871C4()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6D0 = result;
  return result;
}

uint64_t Settings.BestOffers.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C16NewsSubscriptionE10BestOffersV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7887444()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F440 = result;
  return result;
}

uint64_t sub_1D7887614()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F458 = result;
  return result;
}

uint64_t sub_1D78877E4()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E80], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6D8 = result;
  return result;
}

uint64_t sub_1D7887A08()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3684();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v13[1] = v11;
  v15 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA870;
  v14 = 0;
  sub_1D78B36A4();
  v14 = 60;
  sub_1D78B36A4();
  v14 = 180;
  sub_1D78B36A4();
  v14 = 300;
  sub_1D78B36A4();
  v14 = 600;
  sub_1D78B36A4();
  v14 = 900;
  sub_1D78B36A4();
  v14 = 3600;
  sub_1D78B36A4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  result = sub_1D78B36D4();
  qword_1EC9CB6E0 = result;
  return result;
}

uint64_t sub_1D7887E84()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D78B5C74();
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6E8 = result;
  return result;
}

uint64_t sub_1D78880B0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v13[1] = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA870;
  v13[0] = 0;
  sub_1D78B36A4();
  v13[0] = 1;
  sub_1D78B36A4();
  v13[0] = 2;
  sub_1D78B36A4();
  v13[0] = 3;
  sub_1D78B36A4();
  v13[0] = 4;
  sub_1D78B36A4();
  v13[0] = 5;
  sub_1D78B36A4();
  v13[0] = 6;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB6F0 = result;
  return result;
}

uint64_t sub_1D788852C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB6F8 = result;
  return result;
}

uint64_t sub_1D7888754()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB700 = result;
  return result;
}

uint64_t sub_1D7888978()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB708 = result;
  return result;
}

uint64_t sub_1D7888B9C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB710 = result;
  return result;
}

uint64_t sub_1D7888DC0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB718 = result;
  return result;
}

uint64_t sub_1D7888FE4()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB720 = result;
  return result;
}

uint64_t sub_1D7889208()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v13[1] = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78C22A0;
  v13[0] = 0;
  sub_1D78B36A4();
  v13[0] = 1;
  sub_1D78B36A4();
  v13[0] = 2;
  sub_1D78B36A4();
  v13[0] = 3;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB728 = result;
  return result;
}

uint64_t sub_1D78895F4()
{
  v13 = sub_1D78B3694();
  v0 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v12[1] = "anding_page_override";
  v12[2] = v10;
  v15 = -1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E90], v4);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v9);
  sub_1D775C088(0, &qword_1EE095458, v9, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA880;
  v14 = -1;
  sub_1D78B36A4();
  v14 = 60;
  sub_1D78B36A4();
  v14 = 180;
  sub_1D78B36A4();
  v14 = 300;
  sub_1D78B36A4();
  v14 = 600;
  sub_1D78B36A4();
  v14 = 900;
  sub_1D78B36A4();
  v14 = 1200;
  sub_1D78B36A4();
  v14 = 1800;
  sub_1D78B36A4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6EA0], v13);
  result = sub_1D78B36D4();
  qword_1EC9CB730 = result;
  return result;
}

uint64_t sub_1D7889AD0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB738 = result;
  return result;
}

uint64_t sub_1D7889CF8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB740 = result;
  return result;
}

uint64_t sub_1D7889F20()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB748 = result;
  return result;
}

uint64_t sub_1D788A124()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB750 = result;
  return result;
}

uint64_t sub_1D788A328()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB758 = result;
  return result;
}

uint64_t sub_1D788A52C()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3684();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E80]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE095558 = result;
  return result;
}

uint64_t sub_1D788A730()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3684();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78903F0(0, &qword_1EE095448, sub_1D7890450, &type metadata for SettingsArticleAccess);
  v12[1] = "unt_maximum_limit";
  v12[2] = v10;
  v16 = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E80], v5);
  sub_1D775BF2C(0, &qword_1EE08FAC0, &qword_1EE095460, &type metadata for SettingsArticleAccess);
  sub_1D775C088(0, &qword_1EE095460, &type metadata for SettingsArticleAccess, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78BF690;
  v15 = 0;
  sub_1D78B36A4();
  v14 = 1;
  sub_1D78B36A4();
  v13 = 2;
  sub_1D78B36A4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  sub_1D78904A4();
  result = sub_1D78B36D4();
  qword_1EE095570 = result;
  return result;
}

uint64_t sub_1D788AAB0()
{
  v13 = sub_1D78B3694();
  v0 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v12[1] = "tions.offered_purchase_ids";
  v12[2] = v10;
  v15 = -1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E90], v4);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v9);
  sub_1D775C088(0, &qword_1EE095458, v9, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA890;
  v14 = -1;
  sub_1D78B36A4();
  v14 = 1;
  sub_1D78B36A4();
  v14 = 2;
  sub_1D78B36A4();
  v14 = 3;
  sub_1D78B36A4();
  v14 = 5;
  sub_1D78B36A4();
  v14 = 8;
  sub_1D78B36A4();
  v14 = 10;
  sub_1D78B36A4();
  v14 = 12;
  sub_1D78B36A4();
  v14 = 15;
  sub_1D78B36A4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6EA0], v13);
  result = sub_1D78B36D4();
  qword_1EC9CB760 = result;
  return result;
}

uint64_t sub_1D788AF2C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D78903F0(0, &qword_1EC9CB850, sub_1D7890348, &type metadata for BundleTrialStatus);
  v12[15] = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EC9CB860, &qword_1EC9CB868, &type metadata for BundleTrialStatus);
  sub_1D775C088(0, &qword_1EC9CB868, &type metadata for BundleTrialStatus, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78BF690;
  v12[14] = 0;
  sub_1D78B36A4();
  v12[13] = 1;
  sub_1D78B36A4();
  v12[12] = 2;
  sub_1D78B36A4();
  sub_1D789039C();
  result = sub_1D78B36D4();
  qword_1EC9CB768 = result;
  return result;
}

uint64_t sub_1D788B2B8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[1] = MEMORY[0x1E69E7CC0];
  sub_1D7890244(0);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB770 = result;
  return result;
}

uint64_t sub_1D788B4B8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[1] = MEMORY[0x1E69E7CC0];
  sub_1D7890244(0);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB778 = result;
  return result;
}

uint64_t sub_1D788B6DC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v13[1] = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA870;
  v13[0] = 0;
  sub_1D78B36A4();
  v13[0] = 60;
  sub_1D78B36A4();
  v13[0] = 180;
  sub_1D78B36A4();
  v13[0] = 300;
  sub_1D78B36A4();
  v13[0] = 600;
  sub_1D78B36A4();
  v13[0] = 900;
  sub_1D78B36A4();
  v13[0] = 3600;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EC9CB780 = result;
  return result;
}

uint64_t sub_1D788BB6C()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE08F398 = result;
  return result;
}

uint64_t sub_1D788BD70()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB788 = result;
  return result;
}

uint64_t sub_1D788BF78()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D78B3684();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.BundleSubscriptions.FreeUserEducationUpsellOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D78B5C74();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D78B35A4();
  qword_1EC9CB790 = result;
  return result;
}

uint64_t sub_1D788C160()
{
  v13 = sub_1D78B3694();
  v0 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v12[1] = "r_paywall_frequency";
  v12[2] = v10;
  v15 = -1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E90], v4);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v9);
  sub_1D775C088(0, &qword_1EE095458, v9, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA890;
  v14 = -1;
  sub_1D78B36A4();
  v14 = 1;
  sub_1D78B36A4();
  v14 = 2;
  sub_1D78B36A4();
  v14 = 3;
  sub_1D78B36A4();
  v14 = 5;
  sub_1D78B36A4();
  v14 = 8;
  sub_1D78B36A4();
  v14 = 10;
  sub_1D78B36A4();
  v14 = 12;
  sub_1D78B36A4();
  v14 = 15;
  sub_1D78B36A4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6EA0], v13);
  result = sub_1D78B36D4();
  qword_1EC9CB798 = result;
  return result;
}

uint64_t sub_1D788C5DC()
{
  v13 = sub_1D78B3694();
  v0 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v12[1] = "aywall_frequency";
  v12[2] = v10;
  v15 = -1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E90], v4);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v9);
  sub_1D775C088(0, &qword_1EE095458, v9, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA880;
  v14 = -1;
  sub_1D78B36A4();
  v14 = 60;
  sub_1D78B36A4();
  v14 = 180;
  sub_1D78B36A4();
  v14 = 300;
  sub_1D78B36A4();
  v14 = 600;
  sub_1D78B36A4();
  v14 = 900;
  sub_1D78B36A4();
  v14 = 1200;
  sub_1D78B36A4();
  v14 = 1800;
  sub_1D78B36A4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6EA0], v13);
  result = sub_1D78B36D4();
  qword_1EE08F328 = result;
  return result;
}

uint64_t sub_1D788CAB4()
{
  v13 = sub_1D78B3694();
  v0 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v12[1] = "aywall_maximum_limit";
  v12[2] = v10;
  v15 = -1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E90], v4);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v9);
  sub_1D775C088(0, &qword_1EE095458, v9, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA880;
  v14 = -1;
  sub_1D78B36A4();
  v14 = 60;
  sub_1D78B36A4();
  v14 = 180;
  sub_1D78B36A4();
  v14 = 300;
  sub_1D78B36A4();
  v14 = 600;
  sub_1D78B36A4();
  v14 = 900;
  sub_1D78B36A4();
  v14 = 1200;
  sub_1D78B36A4();
  v14 = 1800;
  sub_1D78B36A4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6EA0], v13);
  result = sub_1D78B36D4();
  qword_1EE08F350 = result;
  return result;
}

uint64_t sub_1D788CF8C()
{
  v13 = sub_1D78B3694();
  v0 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B3684();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v12[1] = "iptions.paywall_shown_date";
  v12[2] = v10;
  v15 = -1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E90], v4);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v9);
  sub_1D775C088(0, &qword_1EE095458, v9, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA880;
  v14 = -1;
  sub_1D78B36A4();
  v14 = 3;
  sub_1D78B36A4();
  v14 = 5;
  sub_1D78B36A4();
  v14 = 8;
  sub_1D78B36A4();
  v14 = 10;
  sub_1D78B36A4();
  v14 = 12;
  sub_1D78B36A4();
  v14 = 15;
  sub_1D78B36A4();
  v14 = 20;
  sub_1D78B36A4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6EA0], v13);
  result = sub_1D78B36D4();
  qword_1EE08F338 = result;
  return result;
}

uint64_t sub_1D788D3DC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7A0 = result;
  return result;
}

uint64_t sub_1D788D648()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EC9CB7A8 = result;
  return result;
}

uint64_t sub_1D788D818()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[0] = 0x514745335141364BLL;
  v10[1] = 0xEA00000000005037;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7B0 = result;
  return result;
}

uint64_t sub_1D788DA34()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[0] = 0xD000000000000015;
  v10[1] = 0x80000001D78DF470;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7B8 = result;
  return result;
}

uint64_t _s11TeaSettings0B0C16NewsSubscriptionE10BestOffersV15ConfigOverridesC3key12defaultValue6accessAHSSSg_SbAA6AccessOtcfc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D78B3684();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5);
  v9 = sub_1D78B35B4();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t sub_1D788DD60()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D78B3684();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.ALaCarteSubscriptions.SIWAConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D78B5C74();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D78B35A4();
  qword_1EC9CB7C0 = result;
  return result;
}

uint64_t sub_1D788DF48()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D78B5C74();
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EE095470 = result;
  return result;
}

uint64_t sub_1D788E178()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D78B3394();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  sub_1D78B32E4();
  *v9 = sub_1D78B5C74();
  v9[1] = v12;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  sub_1D774E200(0);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7C8 = result;
  return result;
}

uint64_t sub_1D788E3B4()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D78B5C74();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v12[1] = 0;
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7D0 = result;
  return result;
}

uint64_t sub_1D788E5D8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7D8 = result;
  return result;
}

uint64_t sub_1D788E7DC()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7E0 = result;
  return result;
}

uint64_t sub_1D788E9E0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1D774BB74(0, &qword_1EE095440, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7E8 = result;
  return result;
}

uint64_t sub_1D788EBE8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D78B3694();
  MEMORY[0x1EEE9AC00](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v10[15] = 0;
  sub_1D774BB74(0, &qword_1EE095438, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D78B3704();
  qword_1EC9CB7F0 = result;
  return result;
}

uint64_t sub_1D788EDEC()
{
  v0 = MEMORY[0x1E69E6370];
  v1 = MEMORY[0x1E69D6EF0];
  sub_1D774BB74(0, &qword_1EC9CA158, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E30]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v43 - v6;
  v8 = sub_1D78B3604();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B3514();
  __swift_allocate_value_buffer(v12, qword_1EC9CB7F8);
  v47 = __swift_project_value_buffer(v12, qword_1EC9CB7F8);
  sub_1D789016C(0, &qword_1EC9C9948, MEMORY[0x1E69D6E78]);
  v13 = *(sub_1D78B3674() - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v46 = *(v13 + 72);
  v44 = v14;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1D78BCB50;
  sub_1D789016C(0, &qword_1EC9CA160, sub_1D77C4E38);
  v45 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D78CA870;
  sub_1D774BB74(0, &qword_1EC9CA170, v0, v1, MEMORY[0x1E69D6E50]);
  v18 = v17;
  if (qword_1EE0954C0 != -1)
  {
    swift_once();
  }

  v19 = *(v54 + 104);
  v58 = *MEMORY[0x1E69D6D78];
  v57 = v19;
  v54 += 104;
  v19(v11);
  v20 = *MEMORY[0x1E69D6E28];
  v21 = *(v4 + 104);
  v52 = v4 + 104;
  v56 = v20;
  v55 = v21;
  v21(v7);

  v22 = sub_1D78B3654();
  *(v16 + 56) = v18;
  v50 = sub_1D78901C0();
  v51 = v8;
  *(v16 + 64) = v50;
  *(v16 + 32) = v22;
  v53 = v3;
  if (qword_1EE095510 != -1)
  {
    swift_once();
  }

  sub_1D775C088(0, &qword_1EE08FA00, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  v49 = xmmword_1D78C0D70;
  *(v23 + 16) = xmmword_1D78C0D70;
  sub_1D78B35E4();

  *(v23 + 32) = sub_1D78B3614();
  v57(v11, v58, v51);
  v55(v7, v56, v53);
  v24 = sub_1D78B3654();
  v25 = v50;
  *(v16 + 96) = v18;
  *(v16 + 104) = v25;
  *(v16 + 72) = v24;
  if (qword_1EE0954A8 != -1)
  {
    swift_once();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v49;

  *(v26 + 32) = sub_1D78B3614();
  v57(v11, v58, v51);
  v55(v7, v56, v53);
  v27 = sub_1D78B3654();
  v28 = v50;
  *(v16 + 136) = v18;
  *(v16 + 144) = v28;
  *(v16 + 112) = v27;
  if (qword_1EE095480 != -1)
  {
    swift_once();
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v49;

  *(v29 + 32) = sub_1D78B3614();
  v57(v11, v58, v51);
  v55(v7, v56, v53);
  v30 = sub_1D78B3654();
  v31 = v50;
  *(v16 + 176) = v18;
  *(v16 + 184) = v31;
  *(v16 + 152) = v30;
  if (qword_1EE095498 != -1)
  {
    swift_once();
  }

  v44 += v48;
  v32 = swift_allocObject();
  *(v32 + 16) = v49;

  *(v32 + 32) = sub_1D78B3614();
  v57(v11, v58, v51);
  v55(v7, v56, v53);
  v33 = sub_1D78B3654();
  v34 = v50;
  *(v16 + 216) = v18;
  *(v16 + 224) = v34;
  *(v16 + 192) = v33;
  v35 = v34;
  if (qword_1EE095500 != -1)
  {
    swift_once();
  }

  *&v49 = "Reset Last Seen Instance ID";
  v36 = v51;
  v57(v11, v58, v51);
  v55(v7, v56, v53);

  v37 = sub_1D78B3654();
  *(v16 + 256) = v18;
  *(v16 + 264) = v35;
  *(v16 + 232) = v37;
  if (qword_1EC9C8538 != -1)
  {
    swift_once();
  }

  v57(v11, v58, v36);
  v55(v7, v56, v53);

  v38 = sub_1D78B3654();
  *(v16 + 296) = v18;
  *(v16 + 304) = v35;
  *(v16 + 272) = v38;
  sub_1D78B3664();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D78BCAB0;
  if (qword_1EC9C8528 != -1)
  {
    swift_once();
  }

  v57(v11, v58, v36);
  v55(v7, v56, v53);

  v40 = sub_1D78B3654();
  v41 = v50;
  *(v39 + 56) = v18;
  *(v39 + 64) = v41;
  *(v39 + 32) = v40;
  sub_1D78B3664();
  return sub_1D78B3504();
}

uint64_t sub_1D788F860()
{
  v0 = MEMORY[0x1E69E6370];
  v1 = MEMORY[0x1E69D6EF0];
  sub_1D774BB74(0, &qword_1EC9CA158, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E30]);
  v33 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v26 - v5;
  v7 = sub_1D78B3604();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B3514();
  __swift_allocate_value_buffer(v12, qword_1EC9CB810);
  v28 = __swift_project_value_buffer(v12, qword_1EC9CB810);
  sub_1D789016C(0, &qword_1EC9C9948, MEMORY[0x1E69D6E78]);
  v13 = *(sub_1D78B3674() - 8);
  v26[1] = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D78BCAB0;
  sub_1D789016C(0, &qword_1EC9CA160, sub_1D77C4E38);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D78BF690;
  sub_1D774BB74(0, &qword_1EC9CA170, v0, v1, MEMORY[0x1E69D6E50]);
  v16 = v15;
  if (qword_1EC9C8720 != -1)
  {
    swift_once();
  }

  v17 = *(v8 + 104);
  v32 = *MEMORY[0x1E69D6D78];
  v34 = v8 + 104;
  v31 = v17;
  v17(v11);
  v18 = *(v3 + 104);
  v30 = *MEMORY[0x1E69D6E28];
  v29 = v18;
  v18(v6);

  v19 = sub_1D78B3654();
  *(v14 + 56) = v16;
  v20 = sub_1D78901C0();
  *(v14 + 64) = v20;
  *(v14 + 32) = v19;
  if (qword_1EC9C8728 != -1)
  {
    swift_once();
  }

  v31(v11, v32, v7);
  v21 = v33;
  v29(v6, v30, v33);

  v22 = sub_1D78B3654();
  *(v14 + 96) = v16;
  *(v14 + 104) = v20;
  *(v14 + 72) = v22;
  v26[0] = v20;
  if (qword_1EC9C8738 != -1)
  {
    swift_once();
  }

  v31(v11, v32, v7);
  v29(v6, v30, v21);

  v23 = sub_1D78B3654();
  v24 = v26[0];
  *(v14 + 136) = v16;
  *(v14 + 144) = v24;
  *(v14 + 112) = v23;
  sub_1D78B3664();
  return sub_1D78B3504();
}

uint64_t sub_1D788FDD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D78B3514();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_1D788FE68()
{
  result = qword_1EE0939D0;
  if (!qword_1EE0939D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0939D0);
  }

  return result;
}

unint64_t sub_1D788FEBC()
{
  result = qword_1EC9CB828;
  if (!qword_1EC9CB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB828);
  }

  return result;
}

unint64_t sub_1D78900C4()
{
  result = qword_1EC9CB840;
  if (!qword_1EC9CB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB840);
  }

  return result;
}

unint64_t sub_1D7890118()
{
  result = qword_1EE0939C8;
  if (!qword_1EE0939C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0939C8);
  }

  return result;
}

void sub_1D789016C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B66F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D78901C0()
{
  result = qword_1EC9CA178;
  if (!qword_1EC9CA178)
  {
    sub_1D774BB74(255, &qword_1EC9CA170, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA178);
  }

  return result;
}

void sub_1D7890244(uint64_t a1)
{
  if (!qword_1EC9CB848)
  {
    sub_1D775C088(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D78902CC();
    v1 = sub_1D78B36F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CB848);
    }
  }
}

unint64_t sub_1D78902CC()
{
  result = qword_1EC9CB558;
  if (!qword_1EC9CB558)
  {
    sub_1D775C088(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB558);
  }

  return result;
}

unint64_t sub_1D7890348()
{
  result = qword_1EC9CB858;
  if (!qword_1EC9CB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB858);
  }

  return result;
}

unint64_t sub_1D789039C()
{
  result = qword_1EC9CB870;
  if (!qword_1EC9CB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB870);
  }

  return result;
}

void sub_1D78903F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D78B36F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D7890450()
{
  result = qword_1EE0939D8;
  if (!qword_1EE0939D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0939D8);
  }

  return result;
}

unint64_t sub_1D78904A4()
{
  result = qword_1EE0939E0;
  if (!qword_1EE0939E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0939E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultPaidBundleViaOfferFeatureAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultPaidBundleViaOfferFeatureAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D78906CC()
{
  sub_1D77505D0();
  swift_allocObject();
  return sub_1D78B4104();
}

Swift::Bool __swiftcall AMSMarketingItem.isBundleHardwareOffer()()
{
  v0 = sub_1D78915CC();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 32 + 8 * v3);
      if (*(v4 + 16))
      {

        v5 = sub_1D777BBB4(0x6C69626967696C65, 0xEF65707954797469);
        if (v6 & 1) != 0 && (sub_1D777BE08(*(v4 + 56) + 32 * v5, &v18), (swift_dynamicCast()))
        {
          v18 = v16;
          v19 = v17;
          v16 = 0x4552415744524148;
          v17 = 0xEA0000000000315FLL;
          sub_1D77BE06C();
          v7 = sub_1D78B62F4();

          if (!v7 && *(v4 + 16) && (v8 = sub_1D777BBB4(0x5465636976726573, 0xEC00000073657079), (v9 & 1) != 0) && (sub_1D777BE08(*(v4 + 56) + 32 * v8, &v18), sub_1D7891C4C(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]), LOBYTE(v0) = swift_dynamicCast(), (v0 & 1) != 0))
          {
            v10 = 0x4552415744524170;
            v11 = -MEMORY[0x4552415744524158];
            v12 = -1;
            while (v11 + v12 != -1)
            {
              if (++v12 >= MEMORY[0x4552415744524158])
              {
                goto LABEL_24;
              }

              v13 = v10 + 16;
              v14 = *v10;
              v18 = *(v10 - 8);
              v19 = v14;
              v16 = 0x554C505F5357454ELL;
              v17 = 0xE900000000000053;
              v0 = sub_1D78B62F4();
              v10 = v13;
              if (!v0)
              {

                LOBYTE(v0) = 1;
                return v0;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      if (++v3 == v2)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_21:

    LOBYTE(v0) = 0;
  }

  return v0;
}

Swift::Bool __swiftcall AMSMarketingItem.isCIPOffer()()
{
  v0 = sub_1D78915CC();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
LABEL_23:

    LOBYTE(v0) = 0;
    return v0;
  }

  v3 = 0;
  while (v3 < *(v1 + 16))
  {
    v4 = *(v1 + 32 + 8 * v3);
    if (*(v4 + 16))
    {

      v5 = sub_1D777BBB4(0x6C69626967696C65, 0xEF65707954797469);
      if (v6 & 1) != 0 && (sub_1D777BE08(*(v4 + 56) + 32 * v5, &v20), (swift_dynamicCast()))
      {
        v7 = v19[0];
        v8 = v19[1];
        v20 = v19[0];
        v21 = v19[1];
        strcpy(v19, "HARD_BUNDLE");
        HIDWORD(v19[1]) = -352321536;
        sub_1D77BE06C();
        if (sub_1D78B62F4())
        {
          v20 = v7;
          v21 = v8;
          strcpy(v19, "EXTENDED_OFFER");
          HIBYTE(v19[1]) = -18;
          v9 = sub_1D78B62F4();

          if (v9)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        if (!*(v4 + 16))
        {
          goto LABEL_21;
        }

        v10 = sub_1D777BBB4(0x5465636976726573, 0xEC00000073657079);
        if ((v11 & 1) == 0)
        {
          goto LABEL_21;
        }

        sub_1D777BE08(*(v4 + 56) + 32 * v10, &v20);

        sub_1D7891C4C(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        LOBYTE(v0) = swift_dynamicCast();
        if (v0)
        {
          v12 = v19[0];
          v13 = (v19[0] + 40);
          v14 = -*(v19[0] + 16);
          v15 = -1;
          while (v14 + v15 != -1)
          {
            if (++v15 >= *(v12 + 16))
            {
              goto LABEL_25;
            }

            v16 = v13 + 2;
            v17 = *v13;
            v20 = *(v13 - 1);
            v21 = v17;
            strcpy(v19, "NEWS_PLUS");
            WORD1(v19[1]) = 0;
            HIDWORD(v19[1]) = -385875968;
            v0 = sub_1D78B62F4();
            v13 = v16;
            if (!v0)
            {

              LOBYTE(v0) = 1;
              return v0;
            }
          }

LABEL_21:
        }
      }

      else
      {
      }
    }

    if (++v3 == v2)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return v0;
}

uint64_t AMSMarketingItem.priceString(for:)(void *a1)
{
  AMSMarketingItem.value(for:offerDictKey:key:)(a1, 0xD000000000000010, 0x80000001D78E0930, 0x726F466563697270, 0xEF79616C70736944, &v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D7756B84(&v3);
    return 0;
  }
}

uint64_t AMSMarketingItem.priceDiff(for:)(void *a1)
{
  AMSMarketingItem.value(for:offerDictKey:key:)(a1, 0xD000000000000010, 0x80000001D78E0930, 0x6669446563697270, 0xE900000000000066, &v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D7756B84(&v3);
    return 0;
  }
}

uint64_t AMSMarketingItem.priceDiffString(for:)(void *a1)
{
  AMSMarketingItem.value(for:offerDictKey:key:)(a1, 0xD000000000000010, 0x80000001D78E0930, 0xD000000000000013, 0x80000001D78E0950, &v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D7756B84(&v3);
    return 0;
  }
}

BOOL AMSMarketingItem.trialEligible(for:)(void *a1)
{
  AMSMarketingItem.value(for:offerDictKey:key:)(a1, 0x7363697274656DLL, 0xE700000000000000, 0x6C69626967696C65, 0xEF65707954797469, &v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      v4 = v3;
      sub_1D77BE06C();
      v1 = sub_1D78B62F4();

      return v1 == 0;
    }
  }

  else
  {
    sub_1D7756B84(&v4);
  }

  return 0;
}

void AMSMarketingItem.upsellScenario(for:)(char *a1@<X8>)
{
  v3 = [v1 rawValues];
  sub_1D778CDF0();
  v4 = sub_1D78B5BC4();

  if (!*(v4 + 16))
  {
    goto LABEL_15;
  }

  v5 = sub_1D777BBB4(1635018093, 0xE400000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  swift_unknownObjectRetain();

  v16 = v7;
  sub_1D777CABC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v14 + 16))
  {
    goto LABEL_15;
  }

  v8 = sub_1D777BBB4(0x7363697274656DLL, 0xE700000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1D777BE08(*(v14 + 56) + 32 * v8, &v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  if (!*(v14 + 16) || (v10 = sub_1D777BBB4(0x63536C6C65737075, 0xEE006F6972616E65), (v11 & 1) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_1D777BE08(*(v14 + 56) + 32 * v10, &v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = v14;
  v17 = v15;
  sub_1D77BE06C();
  if (!sub_1D78B62F4())
  {

    v13 = 1;
    goto LABEL_17;
  }

  v16 = v14;
  v17 = v15;
  if (!sub_1D78B62F4())
  {

    v13 = 2;
    goto LABEL_17;
  }

  v16 = v14;
  v17 = v15;
  if (!sub_1D78B62F4())
  {

    v13 = 3;
    goto LABEL_17;
  }

  v16 = v14;
  v17 = v15;
  v12 = sub_1D78B62F4();

  if (v12)
  {
    goto LABEL_16;
  }

  v13 = 4;
LABEL_17:
  *a1 = v13;
}

uint64_t AMSMarketingItem.merchandisingItemKeysDictionary.getter()
{
  v0 = sub_1D78915CC();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);

    v2 = sub_1D789172C(v1);

    return v2;
  }

  else
  {

    return 0;
  }
}

void AMSMarketingItem.additionalAMSOffersMerchandisingItemKeysDictionaries.getter()
{
  v0 = sub_1D78915CC();
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {
    v2 = MEMORY[0x1E69E7CC0];
    v3 = v1 != 0;
    while (1)
    {
      v4 = v3;
      while (1)
      {
        if (v3 < (v1 != 0) || v4 >= v1)
        {
          __break(1u);
          return;
        }

        v5 = *(v0 + 32 + 8 * v4);
        if (*(v5 + 16))
        {
          break;
        }

LABEL_6:
        if (v1 == ++v4)
        {
          goto LABEL_2;
        }
      }

      v6 = sub_1D777BBB4(0xD000000000000015, 0x80000001D78E0970);
      if ((v7 & 1) == 0)
      {
        break;
      }

      sub_1D777BE08(*(v5 + 56) + 32 * v6, v13);

      sub_1D777CABC();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1D777AEA0(0, v2[2] + 1, 1, v2);
      }

      v9 = v2[2];
      v8 = v2[3];
      v10 = v9 + 1;
      if (v9 >= v8 >> 1)
      {
        v11 = sub_1D777AEA0((v8 > 1), v9 + 1, 1, v2);
        v10 = v9 + 1;
        v2 = v11;
      }

      v3 = v4 + 1;
      v2[2] = v10;
      v2[v9 + 4] = v12;
      if (v1 - 1 == v4)
      {
        goto LABEL_2;
      }
    }

    goto LABEL_6;
  }

LABEL_2:
}

uint64_t sub_1D78915CC()
{
  v1 = [v0 rawValues];
  sub_1D778CDF0();
  v2 = sub_1D78B5BC4();

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_1D777BBB4(0x7475626972747461, 0xEA00000000007365);
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  swift_unknownObjectRetain();

  v9[0] = v5;
  sub_1D777CABC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v10 + 16) || (v6 = sub_1D777BBB4(0x73726566666FLL, 0xE600000000000000), (v7 & 1) == 0))
  {
LABEL_8:

    return MEMORY[0x1E69E7CC0];
  }

  sub_1D777BE08(*(v10 + 56) + 32 * v6, v9);

  sub_1D7891C9C(0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D789172C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_1D777BBB4(0xD000000000000015, 0x80000001D78E0970);
  if (v3 & 1) != 0 && (sub_1D777BE08(*(a1 + 56) + 32 * v2, v6), sub_1D777CABC(), (swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void AMSMarketingItem.value(for:offerDictKey:key:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v13 = [v6 rawValues];
  sub_1D778CDF0();
  v14 = sub_1D78B5BC4();

  if (!*(v14 + 16))
  {
    goto LABEL_11;
  }

  v15 = sub_1D777BBB4(0x7475626972747461, 0xEA00000000007365);
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = *(*(v14 + 56) + 8 * v15);
  swift_unknownObjectRetain();

  *&v46[0] = v17;
  sub_1D777CABC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(v45 + 16))
  {
    goto LABEL_11;
  }

  v18 = sub_1D777BBB4(0x73726566666FLL, 0xE600000000000000);
  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1D777BE08(*(v45 + 56) + 32 * v18, v46);

  sub_1D7891C4C(0, &qword_1EE08FF98, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *a6 = 0u;
    a6[1] = 0u;
    return;
  }

  v20 = [a1 buyParams];
  if (!v20 || (v21 = v20, v37 = AMSBuyParams.purchaseID.getter(), v23 = v22, v21, (v43 = v23) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v25 = v45;
  v26 = MEMORY[0x1E69E7CA0];
  v44 = *(v45 + 16);
  if (!v44)
  {
LABEL_34:

    goto LABEL_11;
  }

  v27 = 0;
  v28 = v45 + 32;
  while (v27 < *(v25 + 16))
  {
    sub_1D777BE08(v28, v46);
    v24 = swift_dynamicCast();
    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!*(v45 + 16) || (v29 = sub_1D777BBB4(0x6D61726150797562, 0xE900000000000073), v26 = MEMORY[0x1E69E7CA0], (v30 & 1) == 0) || (sub_1D777BE08(*(v45 + 56) + 32 * v29, v46), (swift_dynamicCast() & 1) == 0))
    {

LABEL_14:
      v25 = v45;
      goto LABEL_15;
    }

    v41 = objc_allocWithZone(MEMORY[0x1E698C818]);
    v38 = sub_1D78B5C44();

    v31 = [v41 initWithString_];

    v39 = AMSBuyParams.purchaseID.getter();
    v42 = v32;

    if (!v42)
    {
      goto LABEL_32;
    }

    if (v39 == v37 && v42 == v43)
    {
    }

    else
    {
      v40 = sub_1D78B6724();

      if ((v40 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (!*(v45 + 16) || (v33 = sub_1D777BBB4(a2, a3), (v34 & 1) == 0))
    {
LABEL_32:

      v26 = MEMORY[0x1E69E7CA0];
      goto LABEL_14;
    }

    sub_1D777BE08(*(v45 + 56) + 32 * v33, v46);

    v26 = MEMORY[0x1E69E7CA0];
    v24 = swift_dynamicCast();
    if ((v24 & 1) == 0)
    {
      goto LABEL_14;
    }

    v26 = v45;
    v25 = v45;
    if (*(v45 + 16))
    {
      v24 = sub_1D777BBB4(a4, a5);
      if (v35)
      {
        goto LABEL_36;
      }
    }

    v26 = MEMORY[0x1E69E7CA0];
LABEL_15:
    ++v27;
    v28 += 32;
    if (v44 == v27)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  v36 = v24;

  sub_1D777BE08(*(v26 + 56) + 32 * v36, v46);

  sub_1D778D0A0(v46, a6);
}