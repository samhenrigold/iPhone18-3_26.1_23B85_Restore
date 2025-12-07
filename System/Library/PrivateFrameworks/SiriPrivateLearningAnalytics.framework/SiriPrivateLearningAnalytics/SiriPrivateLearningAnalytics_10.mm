uint64_t _s28SiriPrivateLearningAnalytics15TrialEnrollmentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_222B02F78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_222B02F78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_222B02F78() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_222AEE5A0()
{
  result = qword_27D01E468;
  if (!qword_27D01E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E468);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_222AEE618(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_222AEE674(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_222AEE6E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_222AEE72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222AEE838()
{
  result = qword_27D01E478;
  if (!qword_27D01E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E478);
  }

  return result;
}

unint64_t sub_222AEE890()
{
  result = qword_27D01E480;
  if (!qword_27D01E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E480);
  }

  return result;
}

unint64_t sub_222AEE8E8()
{
  result = qword_27D01E488;
  if (!qword_27D01E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E488);
  }

  return result;
}

uint64_t sub_222AEE93C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D7461657274 && a2 == 0xEB00000000644974;
  if (v4 || (sub_222B02F78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL || (sub_222B02F78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974756F6C6C6F72 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_222B02F78();

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

unint64_t sub_222AEEA64()
{
  result = qword_280CB8450;
  if (!qword_280CB8450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB8450);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_222AEEB30()
{
  result = qword_280CB89F8[0];
  if (!qword_280CB89F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CB89F8);
  }

  return result;
}

unint64_t sub_222AEEB98()
{
  result = qword_27D01E4B8;
  if (!qword_27D01E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E4B8);
  }

  return result;
}

uint64_t TrialStatusResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  TrialStatusResolver.init()();
  return v0;
}

uint64_t TrialPrivateLearningSuggestionsStatusResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  TrialPrivateLearningSuggestionsStatusResolver.init()();
  return v0;
}

_OWORD *TrialStatusResolver.init()()
{
  v1 = v0;
  *(v0 + 154) = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v2 = [objc_opt_self() clientWithIdentifier_];
  v7[3] = sub_222A35F0C();
  v7[4] = &off_2835F93A8;
  v7[0] = v2;
  sub_222A42E40(v7, v9);
  *&v8 = 0xD000000000000027;
  *(&v8 + 1) = 0x8000000222B160A0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  *(&v10 + 1) = sub_222A3AB94(MEMORY[0x277D84F90]);
  sub_222AEC4E8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  v3 = v12;
  v1[5] = v11;
  v1[6] = v3;
  v1[7] = v13;
  v4 = v9[0];
  v1[1] = v8;
  v1[2] = v4;
  v5 = v10;
  v1[3] = v9[1];
  v1[4] = v5;
  return v1;
}

__n128 TrialStatusResolver.__allocating_init(trialManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 154) = 0u;
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  result = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = result;
  return result;
}

_OWORD *TrialStatusResolver.init(trialManager:)(_OWORD *a1)
{
  *(v1 + 154) = 0u;
  v1[8] = 0u;
  v1[9] = 0u;
  v2 = a1[5];
  v1[5] = a1[4];
  v1[6] = v2;
  v1[7] = a1[6];
  v3 = a1[1];
  v1[1] = *a1;
  v1[2] = v3;
  v4 = a1[3];
  v1[3] = a1[2];
  v1[4] = v4;
  return v1;
}

uint64_t sub_222AEEDE4()
{
  swift_beginAccess();

  v1 = sub_222AEEE7C(v0, 0xD00000000000002ELL, 0x8000000222B0FD80, 0xD000000000000030, 0x8000000222B160D0, 0);

  return v1 & 1;
}

uint64_t sub_222AEEE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (*(a1 + 16) && (v10 = sub_222A26EC8(a2, a3), (v11 & 1) != 0))
  {
    v12 = qword_280CBA628;
    v13 = *(*(a1 + 56) + 8 * v10);
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_222B02148();
    __swift_project_value_buffer(v14, qword_280CBC458);
    v15 = v13;

    v16 = sub_222B02128();
    v17 = sub_222B028D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_222A230FC(a4, a5, &v26);
      *(v18 + 12) = 1024;
      *(v18 + 14) = [v15 BOOLeanValue];

      _os_log_impl(&dword_222A1C000, v16, v17, "Trial: Factor %s retrieved from trial. Level is %{BOOL}d", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223DC7E30](v19, -1, -1);
      MEMORY[0x223DC7E30](v18, -1, -1);
    }

    else
    {
    }

    a6 = [v15 BOOLeanValue];
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_280CBC458);

    v21 = sub_222B02128();
    v22 = sub_222B028E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_222A230FC(a4, a5, &v26);
      *(v23 + 12) = 1024;
      *(v23 + 14) = a6 & 1;
      _os_log_impl(&dword_222A1C000, v21, v22, "Trial: Factor was not retrieved from trial. Using default level for %s: %{BOOL}d", v23, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223DC7E30](v24, -1, -1);
      MEMORY[0x223DC7E30](v23, -1, -1);
    }
  }

  return a6 & 1;
}

uint64_t sub_222AEF16C()
{
  swift_beginAccess();

  v1 = sub_222AEEE7C(v0, 0xD000000000000021, 0x8000000222B0FDB0, 0xD000000000000021, 0x8000000222B16110, 0);

  return v1 & 1;
}

uint64_t sub_222AEF234(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();

  v7 = sub_222AEEE7C(v6, a1, a2, a1, a2, a3);

  return v7 & 1;
}

uint64_t sub_222AEF2BC()
{
  swift_beginAccess();

  v1 = sub_222AEEE7C(v0, 0xD00000000000002ELL, 0x8000000222B0FD80, 0xD000000000000030, 0x8000000222B160D0, 0);

  return v1 & 1;
}

double sub_222AEF358@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  *a1 = *(v3 + 80);
  *(a1 + 8) = *(v3 + 88);
  *(a1 + 24) = *(v3 + 104);
  *(a1 + 40) = v4;

  return result;
}

uint64_t sub_222AEF3F8(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();

  v7 = sub_222AEEE7C(v6, a1, a2, a1, a2, a3);

  return v7 & 1;
}

_OWORD *TrialPrivateLearningSuggestionsStatusResolver.init()()
{
  v1 = v0;
  *(v0 + 153) = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v2 = [objc_opt_self() clientWithIdentifier_];
  v7[3] = sub_222A35F0C();
  v7[4] = &off_2835F93A8;
  v7[0] = v2;
  sub_222A42E40(v7, v9);
  *&v8 = 0xD00000000000002ALL;
  *(&v8 + 1) = 0x8000000222B16140;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  *(&v10 + 1) = sub_222A3AB94(MEMORY[0x277D84F90]);
  sub_222AEC4E8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  v3 = v12;
  v1[5] = v11;
  v1[6] = v3;
  v1[7] = v13;
  v4 = v9[0];
  v1[1] = v8;
  v1[2] = v4;
  v5 = v10;
  v1[3] = v9[1];
  v1[4] = v5;
  return v1;
}

uint64_t sub_222AEF574()
{
  swift_beginAccess();

  v1 = sub_222AEEE7C(v0, 0xD00000000000001CLL, 0x8000000222B0FE90, 0xD00000000000001ELL, 0x8000000222B16170, 0);

  return v1 & 1;
}

double sub_222AEF610@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *a1 = *(v1 + 80);
  *(a1 + 8) = *(v1 + 88);
  *(a1 + 24) = *(v1 + 104);
  *(a1 + 40) = v3;

  return result;
}

double sub_222AEF68C()
{
  swift_beginAccess();
  sub_222AEC4E8();
  swift_endAccess();
  return result;
}

uint64_t sub_222AEF6D8()
{
  swift_beginAccess();
  sub_222AEEAC8(v0 + 16, v3);
  countAndFlagsBits = TrialManager.makeLogString()()._countAndFlagsBits;
  sub_222AEEB00(v3);
  return countAndFlagsBits;
}

double sub_222AEF770(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  a4();
  swift_beginAccess();
  sub_222AEEAC8(v6 + 16, v20);
  v10 = v22;
  v11 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v13 = v20[0];
  v12 = v20[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(v11 + 16);

  v16 = v15(v13, v12, a1, a6, v14, v10, v11);

  v24[3] = &type metadata for DefaultTrialNotificationToken;
  v24[4] = &off_2835F9670;
  v24[0] = v16;
  sub_222AEEB00(v20);
  swift_beginAccess();
  sub_222AF19D4(v24, v7 + 128);
  swift_endAccess();
  return result;
}

double sub_222AEF8B0()
{
  swift_beginAccess();
  sub_222AF1A44(v0 + 128, &v2);
  if (*(&v3 + 1))
  {
    sub_222A1E5A8(&v2, v5);
    swift_beginAccess();
    sub_222AEEAC8(v0 + 16, &v2);
    sub_222AECC44(v5);
    sub_222AEEB00(&v2);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_222AF1AB4(&v2);
  }

  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  swift_beginAccess();
  sub_222AF19D4(&v2, v0 + 128);
  swift_endAccess();
  return result;
}

uint64_t TrialPrivateLearningSuggestionsStatusResolver.deinit()
{
  sub_222AEEB00(v0 + 16);
  sub_222AF1AB4(v0 + 128);
  return v0;
}

uint64_t sub_222AEF9B8(uint64_t a1)
{
  sub_222AEEB00(v1 + 16);
  sub_222AF1AB4(v1 + 128);

  return swift_deallocClassInstance();
}

uint64_t sub_222AEFA04()
{
  swift_beginAccess();

  v1 = sub_222AEEE7C(v0, 0xD00000000000001CLL, 0x8000000222B0FE90, 0xD00000000000001ELL, 0x8000000222B16170, 0);

  return v1 & 1;
}

double sub_222AEFAA0()
{
  swift_beginAccess();
  sub_222AEC4E8();
  swift_endAccess();
  return result;
}

uint64_t TrialSiriUnderstandingTMDCStatusResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  TrialSiriUnderstandingTMDCStatusResolver.init()();
  return v0;
}

uint64_t TrialSiriUnderstandingTMDCStatusResolver.init()()
{
  v1 = v0;
  v2 = sub_222B01988();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentLocale];
  sub_222B01918();

  v6 = [objc_opt_self() sharedPreferences];
  CurrentLocales.init(deviceLocale:siriPreferences:)(v4, v6, v24);
  v8 = v24[4];
  v7 = v24[5];
  v10 = v24[6];
  v9 = v24[7];

  sub_222AF1B1C(v24);
  *(v1 + 16) = v8;
  *(v1 + 24) = v7;
  *(v1 + 32) = v10;
  *(v1 + 40) = v9;
  v11 = [objc_opt_self() clientWithIdentifier_];
  v17[3] = sub_222A35F0C();
  v17[4] = &off_2835F93A8;
  v17[0] = v11;
  sub_222A42E40(v17, v19);
  *&v18 = 0xD000000000000017;
  *(&v18 + 1) = 0x8000000222B16190;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  *(&v20 + 1) = sub_222A3AB94(MEMORY[0x277D84F90]);
  sub_222AEC4E8();
  __swift_destroy_boxed_opaque_existential_0(v17);
  v12 = v22;
  *(v1 + 112) = v21;
  *(v1 + 128) = v12;
  *(v1 + 144) = v23;
  v13 = v19[0];
  *(v1 + 48) = v18;
  *(v1 + 64) = v13;
  v14 = v20;
  *(v1 + 80) = v19[1];
  *(v1 + 96) = v14;
  return v1;
}

double sub_222AEFD14()
{
  v1 = sub_222AEFD78(*(v0 + 104), 0x7365726854703270, 0xEC000000646C6F68, 0x7365726854703270, 0xEE002928646C6F68, 2.0);

  return sub_222AF07C4(v1, 2.0);
}

double sub_222AEFD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6)
{
  if (*(a1 + 16) && (v10 = sub_222A26EC8(a2, a3), (v11 & 1) != 0))
  {
    v12 = qword_280CBA628;
    v13 = *(*(a1 + 56) + 8 * v10);
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_222B02148();
    __swift_project_value_buffer(v14, qword_280CBC458);
    v15 = v13;

    v16 = sub_222B02128();
    v17 = sub_222B028D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_222A230FC(a4, a5, &v28);
      *(v18 + 12) = 2048;
      [v15 doubleValue];
      *(v18 + 14) = v20;
      _os_log_impl(&dword_222A1C000, v16, v17, "Trial: Factor %s retrieved from trial. Value is %f", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223DC7E30](v19, -1, -1);
      MEMORY[0x223DC7E30](v18, -1, -1);
    }

    [v15 doubleValue];
    a6 = v21;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_280CBC458);

    v23 = sub_222B02128();
    v24 = sub_222B028E8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_222A230FC(a4, a5, &v28);
      *(v25 + 12) = 2048;
      *(v25 + 14) = a6;
      _os_log_impl(&dword_222A1C000, v23, v24, "Trial: Factor was not retrieved from trial. Using default level for %s: %f", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223DC7E30](v26, -1, -1);
      MEMORY[0x223DC7E30](v25, -1, -1);
    }
  }

  return a6;
}

double sub_222AF0060()
{
  v1 = sub_222AEFD78(*(v0 + 104), 0xD000000000000016, 0x8000000222B161B0, 0xD000000000000018, 0x8000000222B161D0, 900.0);

  return sub_222AF07C4(v1, 900.0);
}

double sub_222AF00DC()
{
  v1 = sub_222AEFD78(*(v0 + 104), 0xD000000000000028, 0x8000000222B161F0, 0xD00000000000002ALL, 0x8000000222B16220, 450.0);

  return sub_222AF07C4(v1, 450.0);
}

uint64_t sub_222AF0158()
{
  v1 = sub_222AEEE7C(*(v0 + 104), 0x746E755263646D74, 0xEB00000000656D69, 0xD000000000000016, 0x8000000222B16250, 0) & 1;

  return sub_222AF0ADC(v1, 0);
}

uint64_t sub_222AF01C4()
{
  v1 = sub_222AEEE7C(*(v0 + 104), 0xD000000000000016, 0x8000000222B16270, 0xD000000000000021, 0x8000000222B16290, 0) & 1;

  return sub_222AF0ADC(v1, 0);
}

uint64_t sub_222AF0230()
{
  v1 = sub_222AEEE7C(*(v0 + 104), 0x746E755263646D74, 0xEF6C6C6143656D69, 0xD00000000000001ALL, 0x8000000222B162C0, 0) & 1;

  return sub_222AF0ADC(v1, 0);
}

uint64_t sub_222AF02A0()
{
  v1 = sub_222AEEE7C(*(v0 + 104), 0xD000000000000012, 0x8000000222B162E0, 0xD00000000000001DLL, 0x8000000222B16300, 0) & 1;

  return sub_222AF0ADC(v1, 0);
}

uint64_t sub_222AF030C()
{
  v1 = sub_222AEEE7C(*(v0 + 104), 0xD000000000000017, 0x8000000222B16320, 0xD000000000000022, 0x8000000222B16340, 0) & 1;

  return sub_222AF0ADC(v1, 0);
}

void sub_222AF03BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (*(a1 + 16))
  {
    v12 = sub_222A26EC8(a2, a3);
    if (v13)
    {
      v14 = qword_280CBA628;
      v15 = *(*(a1 + 56) + 8 * v12);
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = sub_222B02148();
      __swift_project_value_buffer(v16, qword_280CBC458);
      v17 = v15;

      v18 = sub_222B02128();
      v19 = sub_222B028D8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v34 = v21;
        *v20 = 136315394;
        *(v20 + 4) = sub_222A230FC(a4, a5, &v34);
        *(v20 + 12) = 2080;
        v22 = [v17 stringValue];

        if (!v22)
        {
LABEL_17:
          __break(1u);
          return;
        }

        v23 = sub_222B02388();
        v25 = v24;

        v26 = sub_222A230FC(v23, v25, &v34);

        *(v20 + 14) = v26;
        _os_log_impl(&dword_222A1C000, v18, v19, "Trial: Factor %s retrieved from trial. Value is %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v21, -1, -1);
        MEMORY[0x223DC7E30](v20, -1, -1);
      }

      else
      {
      }

      v32 = [v17 stringValue];
      if (v32)
      {
        v33 = v32;
        sub_222B02388();

        return;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v27 = sub_222B02148();
  __swift_project_value_buffer(v27, qword_280CBC458);

  v28 = sub_222B02128();
  v29 = sub_222B028E8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_222A230FC(a4, a5, &v34);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_222A230FC(a6, a7, &v34);
    _os_log_impl(&dword_222A1C000, v28, v29, "Trial: Factor was not retrieved from trial. Using default level for %s: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v31, -1, -1);
    MEMORY[0x223DC7E30](v30, -1, -1);
  }
}

double sub_222AF0760@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 112);
  *(a1 + 8) = *(v1 + 120);
  *(a1 + 24) = *(v1 + 136);
  *(a1 + 40) = v2;

  return result;
}

double sub_222AF07C4(double a1, double a2)
{
  sub_222AF03BC(v2[13], 0x6F4C746567726174, 0xEC000000656C6163, 0x6F4C746567726174, 0xEE002928656C6163, 7104878, 0xE300000000000000);
  v6 = v5;
  v8 = v7;
  v10 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  v30 = v10;
  v31 = v9;

  MEMORY[0x223DC66E0](45, 0xE100000000000000);
  MEMORY[0x223DC66E0](v11, v12);
  if (v6 == v10 && v8 == v31)
  {

LABEL_8:

    return a1;
  }

  v14 = sub_222B02F78();

  if (v14)
  {
    goto LABEL_8;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v15 = sub_222B02148();
  __swift_project_value_buffer(v15, qword_280CBC458);

  v16 = sub_222B02128();
  v17 = sub_222B028D8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v18 = 136315906;
    v19 = sub_222A230FC(v6, v8, &v29);

    *(v18 + 4) = v19;
    *(v18 + 12) = 2080;
    v30 = v10;
    v31 = v9;

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v11, v12);
    v20 = sub_222A230FC(v30, v31, &v29);

    *(v18 + 14) = v20;
    *(v18 + 22) = 2080;
    v21 = sub_222B027C8();
    v23 = sub_222A230FC(v21, v22, &v29);

    *(v18 + 24) = v23;
    *(v18 + 32) = 2080;
    v24 = sub_222B027C8();
    v26 = sub_222A230FC(v24, v25, &v29);

    *(v18 + 34) = v26;
    _os_log_impl(&dword_222A1C000, v16, v17, "targetLocale: %s is not equal to siriLocale: %s, using: default:%s instead of factorLevel:%s", v18, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v28, -1, -1);
    MEMORY[0x223DC7E30](v18, -1, -1);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_222AF0ADC(char a1, char a2)
{
  sub_222AF03BC(v2[13], 0x6F4C746567726174, 0xEC000000656C6163, 0x6F4C746567726174, 0xEE002928656C6163, 7104878, 0xE300000000000000);
  v6 = v5;
  v8 = v7;
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  v32 = v9;
  v33 = v10;

  MEMORY[0x223DC66E0](45, 0xE100000000000000);
  MEMORY[0x223DC66E0](v11, v12);
  if (v6 == v9 && v8 == v33)
  {

LABEL_8:

    return a1 & 1;
  }

  v30 = a2;
  v14 = sub_222B02F78();

  if (v14)
  {
    goto LABEL_8;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v16 = sub_222B02148();
  __swift_project_value_buffer(v16, qword_280CBC458);

  v17 = sub_222B02128();
  v18 = sub_222B028D8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v19 = 136315906;
    v28 = v18;
    v20 = sub_222A230FC(v6, v8, &v31);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2080;
    v32 = v9;
    v33 = v10;

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v11, v12);
    v21 = sub_222A230FC(v32, v33, &v31);

    *(v19 + 14) = v21;
    *(v19 + 22) = 2080;
    if (v30)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v30)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v24 = sub_222A230FC(v22, v23, &v31);

    *(v19 + 24) = v24;
    *(v19 + 32) = 2080;
    if (a1)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (a1)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_222A230FC(v25, v26, &v31);

    *(v19 + 34) = v27;
    _os_log_impl(&dword_222A1C000, v17, v28, "targetLocale: %s is not equal to siriLocale: %s, using: default:%s instead of factorLevel:%s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v29, -1, -1);
    MEMORY[0x223DC7E30](v19, -1, -1);

    a1 = v30;
  }

  else
  {

    a1 = v30;
  }

  return a1 & 1;
}

uint64_t TrialSiriUnderstandingTMDCStatusResolver.deinit()
{

  sub_222AEEB00(v0 + 48);
  return v0;
}

uint64_t TrialSiriUnderstandingTMDCStatusResolver.__deallocating_deinit()
{

  sub_222AEEB00(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t RECTIFITrialStatusResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  RECTIFITrialStatusResolver.init()();
  return v0;
}

_OWORD *RECTIFITrialStatusResolver.init()()
{
  v1 = v0;
  *(v0 + 128) = 0;
  *(v0 + 130) = 0;
  *(v0 + 136) = xmmword_222B0ED80;
  *(v0 + 152) = xmmword_222B0ED90;
  *(v0 + 168) = xmmword_222B0DC60;
  *(v0 + 184) = 0xD000000000000017;
  *(v0 + 192) = 0x8000000222B16370;
  v2 = [objc_opt_self() clientWithIdentifier_];
  v7[3] = sub_222A35F0C();
  v7[4] = &off_2835F93A8;
  v7[0] = v2;
  sub_222A42E40(v7, v9);
  *&v8 = 0xD00000000000001ALL;
  *(&v8 + 1) = 0x8000000222B16390;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  *(&v10 + 1) = sub_222A3AB94(MEMORY[0x277D84F90]);
  sub_222AEC4E8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  v3 = v12;
  v1[5] = v11;
  v1[6] = v3;
  v1[7] = v13;
  v4 = v9[0];
  v1[1] = v8;
  v1[2] = v4;
  v5 = v10;
  v1[3] = v9[1];
  v1[4] = v5;
  return v1;
}

uint64_t RECTIFITrialStatusResolver.deinit()
{
  sub_222AEEB00(v0 + 16);

  return v0;
}

uint64_t RECTIFITrialStatusResolver.__deallocating_deinit()
{
  sub_222AEEB00(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222AF19D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4C0, &qword_222B0EDA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AF1A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4C0, &qword_222B0EDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AF1AB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4C0, &qword_222B0EDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UserFeedbackLearnedEntitySuggestion.init(entity:needsConfirmation:suggestionId:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = *(type metadata accessor for UserFeedbackLearnedEntitySuggestion(0) + 24);
  v7 = sub_222B018D8();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a3, v7);
}

uint64_t type metadata accessor for UserFeedbackLearnedEntitySuggestion(uint64_t a1)
{
  result = qword_27D01E4E0;
  if (!qword_27D01E4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UserFeedbackLearnedEntitySuggestion.suggestionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserFeedbackLearnedEntitySuggestion(0) + 24);
  v4 = sub_222B018D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_222AF251C@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_222A34E48(v1 + 16, &v5, &qword_27D01E4D8, &qword_222B0F0D0);
  if (*(&v6 + 1) == 1)
  {
    sub_222A34F20(&v5, &qword_27D01E4D8, &qword_222B0F0D0);
    sub_222AF25F8(a1);
    sub_222A34E48(a1, &v5, &qword_27D01E4C8, &qword_222B0F0B8);
    swift_beginAccess();
    sub_222AF445C(&v5, v1 + 16);
    swift_endAccess();
  }

  else
  {
    result = *&v5;
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_222AF25F8@<D0>(uint64_t a1@<X8>)
{
  v2 = static Config.universalSuggestionsStoreFilePath.getter();
  v4 = v3;
  v5 = type metadata accessor for UniversalSuggestionsStoreCoreData();
  swift_allocObject();
  v6 = sub_222AB99B4(v2, v4, 0);
  if (v6)
  {
    v7 = v6;
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v8 = sub_222B02148();
    __swift_project_value_buffer(v8, qword_280CBC458);
    v9 = sub_222B02128();
    v10 = sub_222B028D8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_222A1C000, v9, v10, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: lazily initialised storage", v11, 2u);
      MEMORY[0x223DC7E30](v11, -1, -1);
    }

    *(a1 + 24) = v5;
    *(a1 + 32) = &protocol witness table for UniversalSuggestionsStoreCoreData;
    *a1 = v7;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_280CBC458);
    v14 = sub_222B02128();
    v15 = sub_222B028E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Failed to initialise Universal Suggestions store", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t UserFeedbackLearnedEntitySuggester.__allocating_init()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  v3 = &type metadata for SiriAnalyticsSharedPLUSEventLogTarget;
  if (v2)
  {
    v3 = &type metadata for DisabledPLUSEventLogTarget;
  }

  v4 = &protocol witness table for DisabledPLUSEventLogTarget;
  if (!v2)
  {
    v4 = &protocol witness table for SiriAnalyticsSharedPLUSEventLogTarget;
  }

  v13 = v3;
  v14 = v4;
  v5 = type metadata accessor for SiriUserFeedbackLearningPlatformFeatures.SiriUserFeedbackLearningPlatformFeatureManager();
  swift_allocObject();
  v10 = v5;
  v11 = &protocol witness table for FeatureManager;
  *&v9 = SiriUserFeedbackLearningPlatformFeatures.SiriUserFeedbackLearningPlatformFeatureManager.init()();
  type metadata accessor for UserFeedbackLearnedEntitySuggester();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *(v6 + 40) = xmmword_222B0B300;
  type metadata accessor for PLUSUniversalSuggestionsRuntimeLogger();
  v7 = swift_allocObject();
  sub_222A1E5A8(&v12, v7 + 16);
  *(v6 + 56) = v7;
  sub_222A1E5A8(&v9, v6 + 64);
  return v6;
}

uint64_t sub_222AF2968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v135 = a2;
  v138 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D688, &unk_222B08940);
  MEMORY[0x28223BE20](v8 - 8);
  v129 = &v124 - v9;
  v130 = type metadata accessor for UniversalSuggestionCandidate(0);
  v131 = *(v130 - 8);
  v10 = MEMORY[0x28223BE20](v130);
  v127 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v128 = &v124 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v124 - v15;
  v17 = sub_222B018D8();
  v136 = *(v17 - 8);
  v137 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v134 = &v124 - v21;
  v22 = sub_222B02098();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222B01C18();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v126 = v26;
    v27 = a1;
    v28 = qword_27D01C4D0;
    v133 = v27;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = sub_222B020C8();
    __swift_project_value_buffer(v29, qword_27D024610);
    sub_222B020B8();
    sub_222B02068();
    v132 = sub_222A6EF34("runUniversalSuggestionsQuery", 28, 2, v25);
    (*(v23 + 8))(v25, v22);
    if (a3)
    {
      sub_222B01858();
      v31 = v136;
      v30 = v137;
      if ((*(v136 + 48))(v16, 1, v137) != 1)
      {
        v32 = *(v31 + 32);
        v33 = v134;
        v32(v134, v16, v30);
        sub_222A42E40(v5[7] + 16, v147);
        v34 = *(v31 + 16);
        v135 = v31 + 16;
        v125 = v34;
        v34(v20, v33, v30);
        type metadata accessor for PLUSUniversalSuggestionsRuntimeRequestLogger(0);
        v35 = swift_allocObject();
        (*(v14 + 56))(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, 1, 1, v13);
        sub_222A1E5A8(v147, v35 + 16);
        v32((v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId), v20, v30);
        (*(v31 + 56))(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, 1, 1, v30);
        v36 = v5[11];
        v37 = v5[12];
        __swift_project_boxed_opaque_existential_1(v5 + 8, v36);
        if (qword_27D01C4B8 != -1)
        {
          swift_once();
        }

        v38 = qword_27D01CE98;
        v39 = type metadata accessor for AnyFeature();
        v145 = v39;
        v146 = &protocol witness table for AnyFeature;
        v143 = v38;
        v40 = *(v37 + 8);

        v41 = v40(&v143, v36, v37);
        __swift_destroy_boxed_opaque_existential_0(&v143);
        v42 = v5[11];
        v43 = v5[12];
        __swift_project_boxed_opaque_existential_1(v5 + 8, v42);
        if (qword_280CB7AD0 != -1)
        {
          swift_once();
        }

        v145 = v39;
        v146 = &protocol witness table for AnyFeature;
        v143 = qword_280CB7AD8;
        v44 = *(v43 + 8);

        v45 = v44(&v143, v42, v43);
        __swift_destroy_boxed_opaque_existential_0(&v143);
        v46 = v137;
        if (v45)
        {

          sub_222AF251C(&v143);
          if (v145)
          {
            sub_222A42E40(&v143, v140);
            sub_222A34F20(&v143, &qword_27D01E4C8, &qword_222B0F0B8);
            v47 = v141;
            v48 = v142;
            __swift_project_boxed_opaque_existential_1(v140, v141);
            v139 = v126;
            v49 = v129;
            (*(v48 + 24))(&v139, v47, v48);
            __swift_destroy_boxed_opaque_existential_0(v140);
            v50 = v130;
            if ((*(v131 + 48))(v49, 1, v130) != 1)
            {
              v51 = v128;
              sub_222AF4234(v49, v128);
              v52 = (v51 + *(v50 + 24));
              v53 = type metadata accessor for UniversalCandidate(0);
              v54 = *(v53 + 20);
              v129 = v52;
              v55 = *&v52[v54];
              v56 = qword_280CBA628;

              if (v56 != -1)
              {
                swift_once();
              }

              v57 = sub_222B02148();
              v58 = __swift_project_value_buffer(v57, qword_280CBC458);
              v59 = v127;
              sub_222AF42F4(v51, v127);
              v126 = v58;
              v60 = sub_222B02128();
              v61 = sub_222B028D8();
              if (os_log_type_enabled(v60, v61))
              {
                v62 = swift_slowAlloc();
                v124 = v55;
                v63 = v62;
                v64 = swift_slowAlloc();
                v65 = v50;
                v66 = v64;
                v140[0] = v64;
                *v63 = 136315138;
                v143 = *(v59 + *(v65 + 24) + *(v53 + 20));
                v143 = sub_222A67AA8(v143);
                v144 = v67;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D690, &qword_222B0F0C0);
                v68 = sub_222B023D8();
                v69 = v59;
                v71 = v70;
                sub_222AF4298(v69);
                v72 = sub_222A230FC(v68, v71, v140);

                *(v63 + 4) = v72;
                _os_log_impl(&dword_222A1C000, v60, v61, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Found %s", v63, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v66);
                MEMORY[0x223DC7E30](v66, -1, -1);
                v73 = v63;
                v55 = v124;
                MEMORY[0x223DC7E30](v73, -1, -1);
              }

              else
              {

                sub_222AF4298(v59);
              }

              v108 = *(v53 + 24);
              v109 = v129;
              v110 = *&v129[v108];
              v111 = v128;
              if (v110 < 0.0)
              {
                v112 = sub_222B02128();
                v113 = sub_222B028D8();
                if (os_log_type_enabled(v112, v113))
                {
                  v114 = swift_slowAlloc();
                  *v114 = 0;
                  _os_log_impl(&dword_222A1C000, v112, v113, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Dropping suggestion candidate because it has a low score", v114, 2u);
                  MEMORY[0x223DC7E30](v114, -1, -1);
                }

                sub_222AF40FC(v41 & 1, MEMORY[0x277D84F90]);
                swift_setDeallocating();
                __swift_destroy_boxed_opaque_existential_0((v35 + 16));
                sub_222A34F20(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, &unk_27D01DA50, &unk_222B04E20);
                v106 = *(v136 + 8);
                v106(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v46);
                sub_222A34F20(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, &qword_27D01D5C8, &qword_222B0F0B0);
                swift_deallocClassInstance();

                sub_222AF4298(v111);
LABEL_51:
                v106(v134, v46);
                v107 = type metadata accessor for UserFeedbackLearnedEntitySuggestion(0);
                (*(*(v107 - 8) + 56))(v138, 1, 1, v107);
                sub_222AF3DB4(v132);
                goto LABEL_38;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4D0, &qword_222B0F0C8);
              v115 = (*(v131 + 80) + 32) & ~*(v131 + 80);
              v116 = swift_allocObject();
              *(v116 + 16) = xmmword_222B05250;
              sub_222AF42F4(v111, v116 + v115);
              sub_222AF40FC(v41 & 1, v116);
              swift_setDeallocating();
              sub_222AF4298(v116 + v115);
              swift_deallocClassInstance();
              if ((v41 & 1) == 0)
              {
                v118 = sub_222B02128();
                v119 = sub_222B028D8();
                if (os_log_type_enabled(v118, v119))
                {
                  v120 = swift_slowAlloc();
                  *v120 = 0;
                  _os_log_impl(&dword_222A1C000, v118, v119, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Surfacing of suggestions is disabled, skipping providing a result", v120, 2u);
                  MEMORY[0x223DC7E30](v120, -1, -1);
                }

                sub_222AF4298(v111);
                (*(v136 + 8))(v134, v46);
                v121 = type metadata accessor for UserFeedbackLearnedEntitySuggestion(0);
                (*(*(v121 - 8) + 56))(v138, 1, 1, v121);
                sub_222AF3DB4(v132);
              }

              (*(v136 + 8))(v134, v46);

              if (v110 >= 0.4)
              {
                v117 = *v111;
              }

              else
              {
                v117 = 1;
              }

              v122 = type metadata accessor for UserFeedbackLearnedEntitySuggestion(0);
              v123 = v138;
              v125(v138 + *(v122 + 24), v109, v46);
              sub_222AF4298(v111);
              *v123 = v55;
              *(v123 + 8) = v117;
              (*(*(v122 - 8) + 56))(v123, 0, 1, v122);
LABEL_37:
              sub_222AF3DB4(v132);
LABEL_38:
            }
          }

          else
          {
            sub_222A34F20(&v143, &qword_27D01E4C8, &qword_222B0F0B8);
            v49 = v129;
            (*(v131 + 56))(v129, 1, 1, v130);
          }

          sub_222A34F20(v49, &qword_27D01D688, &unk_222B08940);
          if (qword_280CBA628 != -1)
          {
            swift_once();
          }

          v97 = sub_222B02148();
          __swift_project_value_buffer(v97, qword_280CBC458);

          v98 = sub_222B02128();
          v99 = sub_222B028D8();

          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v140[0] = v101;
            *v100 = 136315138;
            v143 = v126;
            v143 = sub_222A67AA8(v126);
            v144 = v102;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D690, &qword_222B0F0C0);
            v103 = sub_222B023D8();
            v105 = sub_222A230FC(v103, v104, v140);

            *(v100 + 4) = v105;
            _os_log_impl(&dword_222A1C000, v98, v99, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Could not retrieve a suggestion candidate from database for entity %s", v100, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v101);
            MEMORY[0x223DC7E30](v101, -1, -1);
            MEMORY[0x223DC7E30](v100, -1, -1);
          }

          sub_222AF40FC(v41 & 1, MEMORY[0x277D84F90]);

          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_0((v35 + 16));
          sub_222A34F20(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, &unk_27D01DA50, &unk_222B04E20);
          v106 = *(v136 + 8);
          v106(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v46);
          sub_222A34F20(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, &qword_27D01D5C8, &qword_222B0F0B0);
          swift_deallocClassInstance();
          goto LABEL_51;
        }

        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v92 = sub_222B02148();
        __swift_project_value_buffer(v92, qword_280CBC458);
        v93 = sub_222B02128();
        v94 = sub_222B028D8();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 67109376;
          *(v95 + 4) = v41 & 1;
          *(v95 + 8) = 1024;
          *(v95 + 10) = 0;
          _os_log_impl(&dword_222A1C000, v93, v94, "Universal User Feedback suggestions is disabled, skipping; isSurfacingEnabled=%{BOOL}d, isOfflineLearningEnabled=%{BOOL}d", v95, 0xEu);
          MEMORY[0x223DC7E30](v95, -1, -1);
        }

        sub_222A63EE8(0);
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_0((v35 + 16));
        sub_222A34F20(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, &unk_27D01DA50, &unk_222B04E20);
        v96 = *(v136 + 8);
        v96(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v46);
        sub_222A34F20(v35 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, &qword_27D01D5C8, &qword_222B0F0B0);
        swift_deallocClassInstance();
        v96(v134, v46);
LABEL_36:
        v91 = type metadata accessor for UserFeedbackLearnedEntitySuggestion(0);
        (*(*(v91 - 8) + 56))(v138, 1, 1, v91);
        goto LABEL_37;
      }
    }

    else
    {
      (*(v136 + 56))(v16, 1, 1, v137);
    }

    sub_222A34F20(v16, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v83 = sub_222B02148();
    __swift_project_value_buffer(v83, qword_280CBC458);

    v84 = sub_222B02128();
    v85 = sub_222B028E8();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v147[0] = v87;
      *v86 = 136315138;
      if (a3)
      {
        v88 = v135;
      }

      else
      {
        v88 = 0x3E6C696E3CLL;
      }

      if (a3)
      {
        v89 = a3;
      }

      else
      {
        v89 = 0xE500000000000000;
      }

      v90 = sub_222A230FC(v88, v89, v147);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_222A1C000, v84, v85, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: cannot emit events due to null identifiers, requestId: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x223DC7E30](v87, -1, -1);
      MEMORY[0x223DC7E30](v86, -1, -1);
    }

    goto LABEL_36;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v74 = sub_222B02148();
  __swift_project_value_buffer(v74, qword_280CBC458);
  v75 = sub_222B02128();
  v76 = sub_222B028D8();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_222A1C000, v75, v76, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: unsupported entity type", v77, 2u);
    MEMORY[0x223DC7E30](v77, -1, -1);
  }

  v78 = type metadata accessor for UserFeedbackLearnedEntitySuggestion(0);
  v79 = *(*(v78 - 8) + 56);
  v80 = v78;
  v81 = v138;

  return v79(v81, 1, 1, v80);
}

uint64_t sub_222AF3DB4(uint64_t a1)
{
  v1 = sub_222B020D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222B02098();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D01C4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_222B020C8();
  __swift_project_value_buffer(v9, qword_27D024610);
  v10 = sub_222B020B8();
  sub_222B020E8();
  v11 = sub_222B029F8();
  if (sub_222B02B08())
  {

    sub_222B02118();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_222B02078();
    _os_signpost_emit_with_name_impl(&dword_222A1C000, v10, v11, v14, "runUniversalSuggestionsQuery", v12, v13, 2u);
    MEMORY[0x223DC7E30](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t UserFeedbackLearnedEntitySuggester.deinit()
{
  sub_222A34F20(v0 + 16, &qword_27D01E4D8, &qword_222B0F0D0);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  return v0;
}

uint64_t UserFeedbackLearnedEntitySuggester.__deallocating_deinit()
{
  sub_222A34F20(v0 + 16, &qword_27D01E4D8, &qword_222B0F0D0);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_222AF40FC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionCandidate(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222A639C4(a2);
  sub_222A63EE8(a1);
  if ((a1 & 1) == 0)
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v10 = *(v5 + 72);
      do
      {
        sub_222AF42F4(v9, v7);
        v11 = *(v4 + 24);
        type metadata accessor for PLUSSuggestionMetadata();
        inited = swift_initStackObject();
        *(inited + 16) = 512;
        sub_222A643E0(&v7[v11], inited);
        sub_222AF4298(v7);
        v9 += v10;
        --v8;
      }

      while (v8);
    }
  }
}

uint64_t sub_222AF4234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionCandidate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AF4298(uint64_t a1)
{
  v2 = type metadata accessor for UniversalSuggestionCandidate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222AF42F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionCandidate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AF4394(uint64_t a1)
{
  result = sub_222B01C38();
  if (v2 <= 0x3F)
  {
    result = sub_222B018D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222AF445C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4D8, &qword_222B0F0D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222AF44CC(uint64_t a1)
{
  v2 = sub_222B02BC8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_222AF4F2C(v2, *(a1 + 36), 0, a1);

  return v4;
}

void sub_222AF4548(void *a1, void *a2, void *a3)
{
  v44 = a3;
  v6 = [a1 entity];
  v7 = [v6 name];

  if (!v7)
  {
    return;
  }

  v8 = sub_222B02388();
  v10 = v9;

  if (v8 == 0xD000000000000011 && 0x8000000222B11A30 == v10)
  {
  }

  else
  {
    v12 = sub_222B02F78();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  v13 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v14 = [a1 primitiveValueForKey_];

  if (v14)
  {
    sub_222B02BA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43[0] = v41;
  v43[1] = v42;
  if (!*(&v42 + 1))
  {
    sub_222A34F20(v43, &unk_27D01CB00, &qword_222B08ED0);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v39 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesGroundTruthName) && v40 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesGroundTruthName + 8) || (sub_222B02F78() & 1) != 0)
  {
    goto LABEL_26;
  }

  if ((v39 != *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptGroundTruthName) || v40 != *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptGroundTruthName + 8)) && (sub_222B02F78() & 1) == 0)
  {
    if (v39 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomeGroundTruthName) && v40 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomeGroundTruthName + 8))
    {
    }

    else
    {
      v18 = sub_222B02F78();

      if ((v18 & 1) == 0)
      {
LABEL_34:
        v19 = [a2 destinationEntityName];
        if (v19)
        {
          v20 = v19;
          v36 = a2;
          v21 = objc_opt_self();
          v22 = [v44 destinationContext];
          v23 = [v21 insertNewObjectForEntityForName:v20 inManagedObjectContext:v22];

          v38 = v23;
          v24 = [v23 entity];
          v25 = [v24 attributesByName];

          sub_222A82948();
          v26 = sub_222B022B8();

          v37 = v26 + 64;
          v27 = 1 << *(v26 + 32);
          v28 = -1;
          if (v27 < 64)
          {
            v28 = ~(-1 << v27);
          }

          v29 = v28 & *(v26 + 64);
          v30 = (v27 + 63) >> 6;

          v31 = 0;
          if (v29)
          {
            goto LABEL_43;
          }

          while (1)
          {
            v32 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v32 >= v30)
            {

              [v44 associateSourceInstance:a1 withDestinationInstance:v38 forEntityMapping:v36];

              return;
            }

            v29 = *(v37 + 8 * v32);
            ++v31;
            if (v29)
            {
              v31 = v32;
              do
              {
LABEL_43:
                v29 &= v29 - 1;

                v33 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
                v34 = [a1 valueForKey_];

                v35 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

                [v38 setValue:v34 forKey:v35];
                swift_unknownObjectRelease();
              }

              while (v29);
              continue;
            }
          }

          __break(1u);
        }

        return;
      }
    }

    if ((sub_222AF4AEC(a1) & 1) == 0)
    {
      return;
    }

    goto LABEL_34;
  }

  v15 = sub_222AF4F80(*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptTaskAttribute), *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptTaskAttribute + 8), a1);
  if (!v16)
  {
    goto LABEL_34;
  }

  if (v15 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesSiriKitTaskName) && v16 == *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesSiriKitTaskName + 8))
  {
LABEL_26:

    return;
  }

  v17 = sub_222B02F78();

  if ((v17 & 1) == 0)
  {
    goto LABEL_34;
  }
}

uint64_t sub_222AF4AEC(void *a1)
{
  v2 = sub_222AF550C(*&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomDomainAttribute], *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomDomainAttribute + 8], a1);
  if (!v2 || (v3 = sub_222AF44CC(v2), v5 = v4, , !v5))
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v9 = sub_222B02148();
    __swift_project_value_buffer(v9, qword_280CBC458);
    v10 = v1;
    v11 = sub_222B02128();
    v12 = sub_222B028D8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_222A230FC(*&v10[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptTaskAttribute], *&v10[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptTaskAttribute + 8], &v16);
      _os_log_impl(&dword_222A1C000, v11, v12, "Encoded ground truth missing expected attribute %s. Skipping its migration.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DC7E30](v14, -1, -1);
      MEMORY[0x223DC7E30](v13, -1, -1);
    }

    goto LABEL_14;
  }

  if (v3 == *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesDomainEnumValue] && v5 == *&v1[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesDomainEnumValue + 8])
  {

LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v7 = sub_222B02F78();

  v8 = v7 ^ 1;
  return v8 & 1;
}

id sub_222AF4CC0()
{
  v1 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesGroundTruthName];
  *v1 = 0xD000000000000013;
  *(v1 + 1) = 0x8000000222B16B60;
  v2 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptGroundTruthName];
  *v2 = 0xD000000000000018;
  *(v2 + 1) = 0x8000000222B0FF70;
  v3 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_promptTaskAttribute];
  *v3 = 0x5474706D6F72705FLL;
  *(v3 + 1) = 0xEB000000006B7361;
  v4 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesSiriKitTaskName];
  *v4 = 0xD000000000000029;
  *(v4 + 1) = 0x8000000222B16B80;
  v5 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomeGroundTruthName];
  *v5 = 0xD000000000000023;
  *(v5 + 1) = 0x8000000222B16BB0;
  v6 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_suggestionOutcomDomainAttribute];
  *v6 = 0x6E69616D6F64;
  *(v6 + 1) = 0xE600000000000000;
  v7 = &v0[OBJC_IVAR____TtC28SiriPrivateLearningAnalytics39GroundTruthModelV3toV4CoreDataMigration_messagesDomainEnumValue];
  *v7 = 0x736567617373656DLL;
  *(v7 + 1) = 0xE800000000000000;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for GroundTruthModelV3toV4CoreDataMigration();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_222AF4E1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroundTruthModelV3toV4CoreDataMigration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222AF4F2C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_222AF4F80(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v7 = [a3 valueForKey_];

  if (v7)
  {
    sub_222B02BA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    sub_222A34F20(&v39, &unk_27D01CB00, &qword_222B08ED0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = objc_opt_self();
  v9 = sub_222B01788();
  *&v39 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:&v39];

  if (!v10)
  {
    v18 = v39;
    v19 = sub_222B01628();

    swift_willThrow();
LABEL_16:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_280CBC458);
    v21 = v19;
    v22 = sub_222B02128();
    v23 = sub_222B028E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_222A1C000, v22, v23, "Failed to decode ground truth to JSON during migration. Skipping copy. Error=%@", v24, 0xCu);
      sub_222A34F20(v25, &qword_27D01E4B0, &qword_222B0A530);
      MEMORY[0x223DC7E30](v25, -1, -1);
      MEMORY[0x223DC7E30](v24, -1, -1);
      sub_222A26530(v35, v36);
    }

    else
    {
      sub_222A26530(v35, v36);
    }

    return 0;
  }

  v11 = v39;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E528, &unk_222B0F218);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(v37 + 16) || (v12 = sub_222A26EC8(0x64616F6C796170, 0xE700000000000000), (v13 & 1) == 0))
  {
    sub_222A26530(v35, v36);

    return 0;
  }

  sub_222A25344(*(v37 + 56) + 32 * v12, &v39);

  if (!swift_dynamicCast() || (v14 = sub_222B01778(), v16 = v15, , v16 >> 60 == 15))
  {
LABEL_12:
    sub_222A26530(v35, v36);
    return 0;
  }

  v34 = v14;
  v28 = sub_222B01788();
  *&v39 = 0;
  v29 = [v8 JSONObjectWithData:v28 options:0 error:&v39];

  if (!v29)
  {
    v33 = v39;
    v19 = sub_222B01628();

    swift_willThrow();
    sub_222A398A4(v34, v16);
    goto LABEL_16;
  }

  v30 = v39;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_222A26530(v35, v36);
    sub_222A398A4(v34, v16);
    return 0;
  }

  if (*(v37 + 16) && (v31 = sub_222A26EC8(a1, a2), (v32 & 1) != 0))
  {
    sub_222A25344(*(v37 + 56) + 32 * v31, &v39);
    sub_222A26530(v35, v36);
    sub_222A398A4(v34, v16);
  }

  else
  {
    sub_222A26530(v35, v36);
    sub_222A398A4(v34, v16);

    v39 = 0u;
    v40 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01CB00, &qword_222B08ED0);
  if (swift_dynamicCast())
  {
    return v37;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222AF550C(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v7 = [a3 valueForKey_];

  if (v7)
  {
    sub_222B02BA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    sub_222A34F20(&v39, &unk_27D01CB00, &qword_222B08ED0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = objc_opt_self();
  v9 = sub_222B01788();
  *&v39 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:&v39];

  if (!v10)
  {
    v17 = v39;
    v18 = sub_222B01628();

    swift_willThrow();
LABEL_16:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v19 = sub_222B02148();
    __swift_project_value_buffer(v19, qword_280CBC458);
    v20 = v18;
    v21 = sub_222B02128();
    v22 = sub_222B028E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_222A1C000, v21, v22, "Failed to decode ground truth to JSON during migration. Skipping copy. Error=%@", v23, 0xCu);
      sub_222A34F20(v24, &qword_27D01E4B0, &qword_222B0A530);
      MEMORY[0x223DC7E30](v24, -1, -1);
      MEMORY[0x223DC7E30](v23, -1, -1);
      sub_222A26530(v35, v36);
    }

    else
    {
      sub_222A26530(v35, v36);
    }

    return 0;
  }

  v11 = v39;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E528, &unk_222B0F218);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!*(v37 + 16) || (v12 = sub_222A26EC8(0x64616F6C796170, 0xE700000000000000), (v13 & 1) == 0))
  {
    sub_222A26530(v35, v36);

    return 0;
  }

  sub_222A25344(*(v37 + 56) + 32 * v12, &v39);

  if (!swift_dynamicCast() || (v34 = sub_222B01778(), v15 = v14, , v15 >> 60 == 15))
  {
LABEL_12:
    sub_222A26530(v35, v36);
    return 0;
  }

  v33 = v15;
  v27 = sub_222B01788();
  *&v39 = 0;
  v28 = [v8 JSONObjectWithData:v27 options:0 error:&v39];

  if (!v28)
  {
    v32 = v39;
    v18 = sub_222B01628();

    swift_willThrow();
    sub_222A398A4(v34, v33);
    goto LABEL_16;
  }

  v29 = v39;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_222A26530(v35, v36);
    sub_222A398A4(v34, v33);
    return 0;
  }

  if (*(v37 + 16) && (v30 = sub_222A26EC8(a1, a2), (v31 & 1) != 0))
  {
    sub_222A25344(*(v37 + 56) + 32 * v30, &v39);
    sub_222A26530(v35, v36);
    sub_222A398A4(v34, v33);
  }

  else
  {
    sub_222A26530(v35, v36);
    sub_222A398A4(v34, v33);

    v39 = 0u;
    v40 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01CB00, &qword_222B08ED0);
  if (swift_dynamicCast())
  {
    return v37;
  }

  else
  {
    return 0;
  }
}

uint64_t OldestRecordEvictionPolicy.evictionCandidates(count:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    [v5 setFetchLimit_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_222B06DF0;
    sub_222AF5C04();

    *(v7 + 32) = sub_222B02908();
    v8 = sub_222B025D8();

    [v6 setSortDescriptors_];

    v9 = sub_222B02A68();
    return v9;
  }

  else
  {

    return sub_222B02658();
  }
}

unint64_t sub_222AF5C04()
{
  result = qword_280CB8448;
  if (!qword_280CB8448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CB8448);
  }

  return result;
}

uint64_t sub_222AF5C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222AF5CEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84FA0];
  while (v8)
  {
    v12 = v8;
LABEL_10:
    v8 = (v12 - 1) & v12;
    v14 = *(a1 + 16);
    if (*(v14 + 16))
    {
      v15 = *(*(v5 + 48) + ((v10 << 8) | (4 * __clz(__rbit64(v12)))));
      v16 = sub_222A2E3A4();
      if (v17)
      {
        v49 = *(*(v14 + 56) + 8 * v16);
        if (v4[2] && (v18 = sub_222A2E3A4(), (v19 & 1) != 0))
        {
          v50 = *(v4[7] + 8 * v18);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_222A96EDC(v49);
          v20 = v50;
          v50 = v11;
          v48 = sub_222AF6144(v20, &v50);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v4;
          v22 = sub_222A2E3A4();
          v24 = v4[2];
          v25 = (v23 & 1) == 0;
          v26 = __OFADD__(v24, v25);
          v27 = v24 + v25;
          if (v26)
          {
            goto LABEL_39;
          }

          if (v4[3] >= v27)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v45 = v22;
              v46 = v23;
              sub_222A2BB60();
              v23 = v46;
              v22 = v45;
            }
          }

          else
          {
            v28 = v23;
            sub_222A27EC0(v27, isUniquelyReferenced_nonNull_native);
            v22 = sub_222A2E3A4();
            if ((v28 & 1) != (v29 & 1))
            {
              goto LABEL_41;
            }

            v23 = v28;
          }

          v11 = MEMORY[0x277D84FA0];
          v4 = v50;
          if (v23)
          {
            v37 = v50[7];
            v38 = v48;
LABEL_32:
            *(v37 + 8 * v22) = v38;
          }

          else
          {
            v50[(v22 >> 6) + 8] |= 1 << v22;
            *(v4[6] + 4 * v22) = v15;
            *(v4[7] + 8 * v22) = v48;
            v41 = v4[2];
            v26 = __OFADD__(v41, 1);
            v42 = v41 + 1;
            if (v26)
            {
              goto LABEL_40;
            }

            v4[2] = v42;
          }
        }

        else
        {

          v30 = swift_isUniquelyReferenced_nonNull_native();
          v50 = v4;
          v22 = sub_222A2E3A4();
          v32 = v4[2];
          v33 = (v31 & 1) == 0;
          v26 = __OFADD__(v32, v33);
          v34 = v32 + v33;
          if (v26)
          {
            goto LABEL_37;
          }

          if (v4[3] >= v34)
          {
            if ((v30 & 1) == 0)
            {
              v43 = v22;
              v44 = v31;
              sub_222A2BB60();
              v31 = v44;
              v22 = v43;
            }
          }

          else
          {
            v35 = v31;
            sub_222A27EC0(v34, v30);
            v22 = sub_222A2E3A4();
            if ((v35 & 1) != (v36 & 1))
            {
              goto LABEL_41;
            }

            v31 = v35;
          }

          v11 = MEMORY[0x277D84FA0];
          v4 = v50;
          if (v31)
          {
            v37 = v50[7];
            v38 = v49;
            goto LABEL_32;
          }

          v50[(v22 >> 6) + 8] |= 1 << v22;
          *(v4[6] + 4 * v22) = v15;
          *(v4[7] + 8 * v22) = v49;
          v39 = v4[2];
          v26 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v26)
          {
            goto LABEL_38;
          }

          v4[2] = v40;
        }
      }
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CCC0, &qword_222B04E18);
      result = swift_allocObject();
      *(result + 16) = v4;
      return result;
    }

    v12 = *(v5 + 64 + 8 * v13);
    ++v10;
    if (v12)
    {
      v10 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  type metadata accessor for SISchemaComponentName(0);
  result = sub_222B030B8();
  __break(1u);
  return result;
}

uint64_t sub_222AF6144(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v32 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v39 = v16;
  v17 = *(v15 + 56);
  v33 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v18 = (a1 + v33);
  v36 = (v15 + 16);
  v37 = (v15 - 8);
  v43 = MEMORY[0x277D84F90];
  v34 = v15;
  v35 = a2;
  v38 = v17;
  do
  {
    v20 = v39;
    v39(v13, v18, v4);
    v21 = v41;
    v22 = v15;
    v20(v41, v13, v4);
    v23 = v13;
    v24 = v40;
    LOBYTE(v20) = sub_222AE4114(v40, v21);
    v25 = *v37;
    (*v37)(v24, v4);
    if (v20)
    {
      v26 = *v36;
      (*v36)(v42, v23, v4);
      v27 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v27;
      v13 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222A23D50(0, *(v27 + 16) + 1, 1);
        v27 = v44;
      }

      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_222A23D50((v29 > 1), v30 + 1, 1);
        v27 = v44;
      }

      *(v27 + 16) = v30 + 1;
      v43 = v27;
      v19 = v38;
      v26((v27 + v33 + v30 * v38), v42, v4);
      v15 = v34;
    }

    else
    {
      v25(v23, v4);
      v13 = v23;
      v19 = v38;
      v15 = v22;
    }

    v18 += v19;
    --v14;
  }

  while (v14);
  return v43;
}

uint64_t CurrentLocales.init(deviceLocale:siriPreferences:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E550, &qword_222B0F340);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_222B01968();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E558, &qword_222B0F348);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54 - v13;
  sub_222B01978();
  sub_222B01958();
  (*(v9 + 8))(v11, v8);
  v15 = sub_222B01908();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_222A34F20(v14, &qword_27D01E558, &qword_222B0F348);
    v60 = 0xEC000000746E6574;
    v61 = 0x736978652D6E6F6ELL;
  }

  else
  {
    v17 = sub_222B018F8();
    v60 = v18;
    v61 = v17;
    (*(v16 + 8))(v14, v15);
  }

  v19 = 0x736978652D6E6F6ELL;
  sub_222B01948();
  v20 = sub_222B01938();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v7, 1, v20) == 1)
  {
    sub_222A34F20(v7, &qword_27D01E550, &qword_222B0F340);
    v58 = 0xEC000000746E6574;
    v59 = 0x736978652D6E6F6ELL;
  }

  else
  {
    v22 = sub_222B018F8();
    v58 = v23;
    v59 = v22;
    (*(v21 + 8))(v7, v20);
  }

  v24 = [v63 languageCode];
  if (v24)
  {
    v25 = v24;
    v26 = sub_222B02388();
    v28 = v27;
  }

  else
  {
    v26 = 0x736978652D6E6F6ELL;
    v28 = 0xEC000000746E6574;
  }

  v66 = v26;
  v67 = v28;
  v64 = 45;
  v65 = 0xE100000000000000;
  sub_222A397FC();
  v29 = sub_222B02B68();
  if (v29[2])
  {
    v30 = v29[4];
    v56 = v29[5];
    v57 = v30;
  }

  else
  {
    v56 = 0xEC000000746E6574;
    v57 = 0x736978652D6E6F6ELL;
  }

  v66 = v26;
  v67 = v28;
  v64 = 45;
  v65 = 0xE100000000000000;
  v31 = sub_222B02B68();

  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = (v31 + 16 + 16 * v32);
    v34 = *v33;
    v54 = v33[1];
    v55 = v34;
  }

  else
  {
    v54 = 0xEC000000746E6574;
    v55 = 0x736978652D6E6F6ELL;
  }

  v35 = [v63 outputVoice];
  v62 = a1;
  if (v35 && (v36 = v35, v37 = [v35 languageCode], v36, v37))
  {
    v19 = sub_222B02388();
    v39 = v38;
  }

  else
  {
    v39 = 0xEC000000746E6574;
  }

  v66 = v19;
  v67 = v39;
  v64 = 45;
  v65 = 0xE100000000000000;
  v40 = sub_222B02B68();
  if (v40[2])
  {
    v41 = v40[4];
    v42 = v40[5];
  }

  else
  {
    v41 = 0x736978652D6E6F6ELL;
    v42 = 0xEC000000746E6574;
  }

  v66 = v19;
  v67 = v39;
  v64 = 45;
  v65 = 0xE100000000000000;
  v43 = sub_222B02B68();

  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = (v43 + 16 + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
  }

  else
  {
    v47 = 0x736978652D6E6F6ELL;
    v46 = 0xEC000000746E6574;
  }

  v48 = sub_222B01988();
  result = (*(*(v48 - 8) + 8))(v62, v48);
  v50 = v60;
  *a3 = v61;
  *(a3 + 8) = v50;
  v51 = v58;
  *(a3 + 16) = v59;
  *(a3 + 24) = v51;
  v52 = v56;
  *(a3 + 32) = v57;
  *(a3 + 40) = v52;
  v53 = v54;
  *(a3 + 48) = v55;
  *(a3 + 56) = v53;
  *(a3 + 64) = v41;
  *(a3 + 72) = v42;
  *(a3 + 80) = v47;
  *(a3 + 88) = v46;
  strcpy((a3 + 96), "non-existent");
  *(a3 + 109) = 0;
  *(a3 + 110) = -5120;
  return result;
}

uint64_t sub_222AF69D0(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_222AF6A7C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_222B024B8();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_222B024B8();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

SiriPrivateLearningAnalytics::Locale __swiftcall Locale.init(language:region:)(Swift::String language, Swift::String region)
{
  *v2 = language;
  v2[1] = region;
  result.region = region;
  result.language = language;
  return result;
}

uint64_t LocalesController.currentLocales.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v13 = v1[5];
  v2 = v13;
  v14 = v3;
  v15 = v1[7];
  v4 = v15;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  v6 = v1[4];
  v11 = v1[3];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_222AF894C(v10, &v9);
}

uint64_t LocalesController.__allocating_init(currentLocales:supportedLocalesStore:)(_OWORD *a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = a1[5];
  *(v4 + 80) = a1[4];
  *(v4 + 96) = v5;
  *(v4 + 112) = a1[6];
  v6 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  v7 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v7;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  *(v4 + 128) = (*(v9 + 16))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v4;
}

uint64_t LocalesController.init(currentLocales:supportedLocalesStore:)(_OWORD *a1, void *a2)
{
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  *(v2 + 112) = a1[6];
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  v6 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v6;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  *(v2 + 128) = (*(v8 + 16))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v2;
}

void sub_222AF6D00()
{
  v1 = v0[16];
  v11 = v1;
  v2 = (v1 + 56);
  v12 = -*(v1 + 16);
  v3 = -1;
  while (v12 + v3 != -1)
  {
    if (++v3 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v2 - 1);
    v5 = *v2;
    v13 = *(v2 - 3);
    v15 = *(v2 - 2);
    swift_bridgeObjectRetain_n();

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v6, v5);
    v8 = v13;
    v7 = v15;
    v9 = v0[4];
    v10 = v0[5];
    v14 = v0[2];
    v16 = v0[3];

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v9, v10);
    if (v8 == v14 && v7 == v16)
    {

      return;
    }

    v2 += 4;
    v4 = sub_222B02F78();

    if (v4)
    {
      return;
    }
  }
}

void sub_222AF6E88()
{
  v1 = v0[16];
  v11 = v1;
  v2 = (v1 + 56);
  v12 = -*(v1 + 16);
  v3 = -1;
  while (v12 + v3 != -1)
  {
    if (++v3 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v2 - 1);
    v5 = *v2;
    v13 = *(v2 - 3);
    v15 = *(v2 - 2);
    swift_bridgeObjectRetain_n();

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v6, v5);
    v8 = v13;
    v7 = v15;
    v9 = v0[8];
    v10 = v0[9];
    v14 = v0[6];
    v16 = v0[7];

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v9, v10);
    if (v8 == v14 && v7 == v16)
    {

      return;
    }

    v2 += 4;
    v4 = sub_222B02F78();

    if (v4)
    {
      return;
    }
  }
}

void sub_222AF7010()
{
  v1 = v0[16];
  v11 = v1;
  v2 = (v1 + 56);
  v12 = -*(v1 + 16);
  v3 = -1;
  while (v12 + v3 != -1)
  {
    if (++v3 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v2 - 1);
    v5 = *v2;
    v13 = *(v2 - 3);
    v15 = *(v2 - 2);
    swift_bridgeObjectRetain_n();

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v6, v5);
    v8 = v13;
    v7 = v15;
    v9 = v0[12];
    v10 = v0[13];
    v14 = v0[10];
    v16 = v0[11];

    MEMORY[0x223DC66E0](95, 0xE100000000000000);
    MEMORY[0x223DC66E0](v9, v10);
    if (v8 == v14 && v7 == v16)
    {

      return;
    }

    v2 += 4;
    v4 = sub_222B02F78();

    if (v4)
    {
      return;
    }
  }
}

void *LocalesController.deinit()
{

  return v0;
}

uint64_t LocalesController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double CurrentLocales.device.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

double CurrentLocales.siri.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

double CurrentLocales.siriVoice.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  *a1 = v1[8];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

uint64_t CurrentLocales.emptyIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void __swiftcall CurrentLocales.init(device:siri:siriVoice:)(SiriPrivateLearningAnalytics::CurrentLocales *__return_ptr retstr, SiriPrivateLearningAnalytics::Locale device, SiriPrivateLearningAnalytics::Locale siri, SiriPrivateLearningAnalytics::Locale siriVoice)
{
  v4 = *device.language._countAndFlagsBits;
  v5 = *(device.language._countAndFlagsBits + 16);
  v6 = *(device.language._countAndFlagsBits + 24);
  v7 = *device.language._object;
  v8 = *(device.language._object + 2);
  v9 = *(device.language._object + 3);
  v10 = *device.region._countAndFlagsBits;
  v11 = *(device.region._countAndFlagsBits + 16);
  v12 = *(device.region._countAndFlagsBits + 24);
  strcpy(&retstr->emptyIdentifier, "non-existent");
  BYTE5(retstr->emptyIdentifier._object) = 0;
  HIWORD(retstr->emptyIdentifier._object) = -5120;
  retstr->device.language = v4;
  retstr->device.region._countAndFlagsBits = v5;
  retstr->device.region._object = v6;
  retstr->siri.language = v7;
  retstr->siri.region._countAndFlagsBits = v8;
  retstr->siri.region._object = v9;
  retstr->siriVoice.language = v10;
  retstr->siriVoice.region._countAndFlagsBits = v11;
  retstr->siriVoice.region._object = v12;
}

uint64_t CurrentLocales.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v18 = v0[4];
  v19 = v0[5];
  v20 = v0[6];
  v21 = v0[7];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v0[10];
  v25 = v0[11];
  v17 = MEMORY[0x277D84F90];

  sub_222A23AE4(0, 3, 0);
  v5 = v17;
  swift_bridgeObjectRetain_n();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v4, v3);

  v7 = *(v17 + 16);
  v6 = *(v17 + 24);
  if (v7 >= v6 >> 1)
  {
    sub_222A23AE4((v6 > 1), v7 + 1, 1);
    v5 = v17;
  }

  *(v5 + 16) = v7 + 1;
  v8 = v5 + 16 * v7;
  *(v8 + 32) = v2;
  *(v8 + 40) = v1;
  swift_bridgeObjectRetain_n();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v20, v21);

  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_222A23AE4((v9 > 1), v10 + 1, 1);
  }

  *(v5 + 16) = v10 + 1;
  v11 = v5 + 16 * v10;
  *(v11 + 32) = v18;
  *(v11 + 40) = v19;
  swift_bridgeObjectRetain_n();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v24, v25);

  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_222A23AE4((v12 > 1), v13 + 1, 1);
  }

  *(v5 + 16) = v13 + 1;
  v14 = v5 + 16 * v13;
  *(v14 + 32) = v22;
  *(v14 + 40) = v23;
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
  sub_222A69918();
  v15 = sub_222B02328();

  return v15;
}

SiriPrivateLearningAnalytics::SupportedLocalesStorePath __swiftcall SupportedLocalesStorePath.init(bundle:fileName:)(NSBundle bundle, Swift::String fileName)
{
  *v2 = bundle;
  *(v2 + 8) = fileName;
  result.fileName = fileName;
  result.bundle = bundle;
  return result;
}

__n128 SupportedLocalesPListStore.__allocating_init(storePath:)(__n128 *a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v4 = a1[1].n128_u64[0];
  v2[1] = *a1;
  v2[2].n128_u64[1] = 0xD000000000000010;
  v2[3].n128_u64[0] = 0x8000000222B16BE0;
  v2[2].n128_u64[0] = v4;
  return result;
}

uint64_t SupportedLocalesPListStore.init(storePath:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 40) = 0xD000000000000010;
  *(v1 + 48) = 0x8000000222B16BE0;
  *(v1 + 32) = v2;
  return v1;
}

char *sub_222AF7798()
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = v0[2];
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v5 = [v2 pathForResource:v3 ofType:v4];

  if (!v5 || (v6 = [objc_opt_self() defaultManager], v7 = objc_msgSend(v6, sel_contentsAtPath_, v5), v6, v5, !v7))
  {
LABEL_21:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v31 = sub_222B02148();
    __swift_project_value_buffer(v31, qword_280CBC458);
    v19 = sub_222B02128();
    v20 = sub_222B028E8();
    v18 = 0x27D01C000uLL;
    v1 = &qword_27D01E530;
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_26;
    }

    v21 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44[0] = v14;
    *v21 = 136315138;
    if (qword_27D01C568 == -1)
    {
LABEL_25:
      v32 = v1[1];
      v33 = v1[2];
      v34 = v1[3];
      v45 = *v1;
      v46 = v32;

      MEMORY[0x223DC66E0](95, 0xE100000000000000);
      MEMORY[0x223DC66E0](v33, v34);
      v35 = sub_222A230FC(v45, v46, v44);

      *(v21 + 4) = v35;
      _os_log_impl(&dword_222A1C000, v19, v20, "Couldn't get supported locales, falling back to %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DC7E30](v14, -1, -1);
      MEMORY[0x223DC7E30](v21, -1, -1);
LABEL_26:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD78, &qword_222B0BCC0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_222B05250;
      if (*(v18 + 1384) != -1)
      {
        swift_once();
      }

      v36 = v1[1];
      v37 = v1[2];
      v38 = v1[3];
      *(v22 + 32) = *v1;
      *(v22 + 40) = v36;
      *(v22 + 48) = v37;
      *(v22 + 56) = v38;

      return v22;
    }

LABEL_33:
    swift_once();
    goto LABEL_25;
  }

  v8 = sub_222B01798();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = sub_222B01788();
  v45 = 0;
  v13 = [v11 propertyListWithData:v12 options:0 format:0 error:&v45];

  v14 = v45;
  if (!v13)
  {
    v29 = v45;
    v30 = sub_222B01628();

    swift_willThrow();
    sub_222A26530(v8, v10);

    goto LABEL_21;
  }

  v15 = v45;
  sub_222B02BA8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E560, &qword_222B0F350);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_222A26530(v8, v10);
    goto LABEL_21;
  }

  if (!*(v44[0] + 16) || (v16 = sub_222A26EC8(v0[5], v0[6]), (v17 & 1) == 0))
  {
    sub_222A26530(v8, v10);

    goto LABEL_21;
  }

  v40 = v8;
  v41 = v10;
  v18 = *(*(v44[0] + 56) + 8 * v16);

  v43 = *(v18 + 16);
  if (v43)
  {
    v19 = 0;
    v20 = OS_LOG_TYPE_DEFAULT;
    v21 = v18 + 40;
    v22 = MEMORY[0x277D84F90];
    v42 = v18;
    while (v19 < *(v18 + 16))
    {
      v23 = *v21;
      v44[0] = *(v21 - 8);
      v44[1] = v23;
      sub_222AF7CFC(v44, &v45);
      v1 = v45;
      v14 = v46;
      v25 = v47;
      v24 = v48;
      if (v46)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_222AA9D70(0, *(v22 + 16) + 1, 1, v22);
        }

        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        if (v27 >= v26 >> 1)
        {
          v22 = sub_222AA9D70((v26 > 1), v27 + 1, 1, v22);
        }

        *(v22 + 16) = v27 + 1;
        v28 = (v22 + 32 * v27);
        v28[4] = v1;
        v28[5] = v14;
        v28[6] = v25;
        v28[7] = v24;
        v18 = v42;
      }

      else
      {
        sub_222AF8984(v45, 0, v47, v48);
      }

      v19 = (v19 + 1);
      v21 += 16;
      if (v43 == v19)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_31:
  sub_222A26530(v40, v41);

  return v22;
}

void sub_222AF7CFC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v17[0] = *a1;
  sub_222A397FC();
  v5 = sub_222B02B68();
  if (v5[2])
  {
    v7 = v5[4];
    v6 = v5[5];

    v17[0] = v3;
    v17[1] = v4;
    v8 = (sub_222B02B68() + 16);
    if (*v8)
    {
      v9 = &v8[2 * *v8];
      v11 = *v9;
      v10 = v9[1];

      *a2 = v7;
      a2[1] = v6;
      a2[2] = v11;
      a2[3] = v10;
      return;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v12 = sub_222B02148();
  __swift_project_value_buffer(v12, qword_280CBC458);

  v13 = sub_222B02128();
  v14 = sub_222B028E8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_222A230FC(v3, v4, v17);
    _os_log_impl(&dword_222A1C000, v13, v14, "Supported locales has unexpect format %s, expected language_region format", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DC7E30](v16, -1, -1);
    MEMORY[0x223DC7E30](v15, -1, -1);
  }

  *a2 = 0u;
  *(a2 + 1) = 0u;
}

void *SupportedLocalesPListStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SupportedLocalesPListStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 sub_222AF7FB0@<Q0>(__n128 *a1@<X0>, __n128 **a2@<X8>)
{
  type metadata accessor for SupportedLocalesPListStore();
  v4 = swift_allocObject();
  result = *a1;
  v6 = a1[1].n128_u64[0];
  v4[1] = *a1;
  v4[2].n128_u64[1] = 0xD000000000000010;
  v4[3].n128_u64[0] = 0x8000000222B16BE0;
  v4[2].n128_u64[0] = v6;
  *a2 = v4;
  return result;
}

uint64_t static LocaleError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222B02F78();
  }
}

void sub_222AF8068()
{
  qword_27D01E530 = 28261;
  *algn_27D01E538 = 0xE200000000000000;
  qword_27D01E540 = 21333;
  unk_27D01E548 = 0xE200000000000000;
}

double static Locale.enUSDefaultLocale.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D01C568 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D01E538;
  v2 = qword_27D01E540;
  v3 = unk_27D01E548;
  *a1 = qword_27D01E530;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

SiriPrivateLearningAnalytics::Locale __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Locale.init(from:separator:)(Swift::String from, Swift::String separator)
{
  object = separator._object;
  countAndFlagsBits = separator._countAndFlagsBits;
  v5 = from._object;
  v6 = from._countAndFlagsBits;
  v7 = v2;
  v31 = separator;
  v30[2] = &v31;
  if ((sub_222AF6A7C(sub_222AAA99C, v30, from._countAndFlagsBits, from._object) & 1) == 0)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_280CBC458);

    v21 = sub_222B02128();
    v22 = sub_222B028E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31._countAndFlagsBits = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_222A230FC(v6, v5, &v31._countAndFlagsBits);
      *(v23 + 12) = 2080;
      v25 = sub_222A230FC(countAndFlagsBits, object, &v31._countAndFlagsBits);

      *(v23 + 14) = v25;
      v26 = "Locale %s does not contain %s separator";
LABEL_13:
      _os_log_impl(&dword_222A1C000, v21, v22, v26, v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v24, -1, -1);
      MEMORY[0x223DC7E30](v23, -1, -1);
LABEL_15:

      sub_222AF89C8();
      swift_allocError();
      *v29 = v6;
      v29[1] = v5;
      v16 = swift_willThrow();
      goto LABEL_19;
    }

LABEL_14:

    goto LABEL_15;
  }

  v31._countAndFlagsBits = v6;
  v31._object = v5;
  v30[4] = countAndFlagsBits;
  v30[5] = object;
  sub_222A397FC();
  v8 = sub_222B02B68();
  v9 = v8[2];
  if (!v9)
  {

    if (qword_280CBA628 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v10 = v8[2];
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v9 > v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
LABEL_11:
    v27 = sub_222B02148();
    __swift_project_value_buffer(v27, qword_280CBC458);

    v21 = sub_222B02128();
    v22 = sub_222B028E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31._countAndFlagsBits = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_222A230FC(v6, v5, &v31._countAndFlagsBits);
      *(v23 + 12) = 2080;
      v28 = sub_222A230FC(countAndFlagsBits, object, &v31._countAndFlagsBits);

      *(v23 + 14) = v28;
      v26 = "Locale %s has unexpected format, expected <language>%s<region>";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = v8[5];
  v12 = v8[4];
  v13 = &v8[2 * v9 + 4];
  v15 = *(v13 - 16);
  v14 = *(v13 - 8);

  *v7 = v12;
  v7[1] = v11;
  v7[2] = v15;
  v7[3] = v14;
LABEL_19:
  result.region._object = v19;
  result.region._countAndFlagsBits = v18;
  result.language._object = v17;
  result.language._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_222AF84D4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;

  MEMORY[0x223DC66E0](a1, 0xE100000000000000);
  MEMORY[0x223DC66E0](v3, v4);
  return v6;
}

uint64_t Locale.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v2, v3);
  sub_222B02448();
}

uint64_t Locale.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222B03128();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v1, v2);
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AF8650()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v1, v2);
  return v4;
}

uint64_t sub_222AF86B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222B03128();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v1, v2);
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AF8744(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v2, v3);
  sub_222B02448();
}

uint64_t sub_222AF87C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_222B03128();

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v2, v3);
  sub_222B02448();

  return sub_222B03168();
}

uint64_t _s28SiriPrivateLearningAnalytics6LocaleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v10 = *a1;

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v2, v3);

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v6, v7);
  if (v10 == __PAIR128__(v4, v5))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222B02F78();
  }

  return v8 & 1;
}

void sub_222AF8984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_222AF89C8()
{
  result = qword_27D01E568;
  if (!qword_27D01E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E568);
  }

  return result;
}

unint64_t sub_222AF8A20()
{
  result = qword_280CB4C50;
  if (!qword_280CB4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4C50);
  }

  return result;
}

uint64_t sub_222AF8C34(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E578, &unk_222B0F6F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = objc_opt_self();
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_222B02C88();

  v16 = a1;
  v17 = a2;
  MEMORY[0x223DC66E0](0xD000000000000013, 0x8000000222B16D70);
  v11 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v12 = [v10 newPrivateStreamDefaultConfigurationWithStoreBasePath_];

  v13 = [v12 pruningPolicy];
  if (v13)
  {
    v14 = v13;
    [v13 setFilterByAgeOnRead_];
  }

  sub_222A250BC(0, qword_280CB8460, 0x277CF19A0);
  sub_222B01A28();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics13BiomeQuerying_intentStream, v9, v6);
  return v3;
}

void sub_222AF8E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x223DC7570]();
  sub_222AF8EE0(a1, a2, a3, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

unint64_t sub_222AF8EE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X5>, uint64_t *a5@<X8>)
{
  result = sub_222AF9FF0(a1, a2, a3);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    v9 = result;
    if (result >> 62)
    {
      goto LABEL_17;
    }

    v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v21 = a5;
        v28 = MEMORY[0x277D84F90];
        result = sub_222A23E34(0, v10 & ~(v10 >> 63), 0);
        if (v10 < 0)
        {
          break;
        }

        v11 = 0;
        v12 = v28;
        v24 = v9 & 0xC000000000000001;
        v22 = v9 & 0xFFFFFFFFFFFFFF8;
        v23 = v9;
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v24)
          {
            v14 = MEMORY[0x223DC6F00](v11, v9);
          }

          else
          {
            if (v11 >= *(v22 + 16))
            {
              goto LABEL_16;
            }

            v14 = *(v9 + 8 * v11 + 32);
          }

          v15 = v14;
          sub_222AF9120(v14, &v26);
          a5 = 0;
          v16 = v26;
          v25 = v27;

          v28 = v12;
          v18 = *(v12 + 16);
          v17 = *(v12 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_222A23E34((v17 > 1), v18 + 1, 1);
            v12 = v28;
          }

          *(v12 + 16) = v18 + 1;
          v19 = v12 + 32 * v18;
          *(v19 + 32) = v16;
          *(v19 + 40) = v25;
          *(v19 + 56) = 0;
          ++v11;
          v9 = v23;
          if (v13 == v10)
          {

            a5 = v21;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v10 = sub_222B02DC8();
        if (!v10)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:

      v12 = MEMORY[0x277D84F90];
LABEL_20:
      v20 = sub_222AFAD90(v12);

      *a5 = v20;
    }
  }

  return result;
}

void sub_222AF9120(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [a1 interaction];
  v6 = sub_222B01798();
  v8 = v7;

  v9 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_222A55AB8(v6, v8);
  v10 = sub_222A8B560(v6, v8);
  if (v2)
  {
    sub_222A26530(v6, v8);
    v11 = v2;
    sub_222B02C88();
    MEMORY[0x223DC66E0](0xD00000000000002ALL, 0x8000000222B16D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    sub_222B02D98();
    MEMORY[0x223DC66E0](0x766520726F66203BLL, 0xEC00000020746E65);
    v12 = [a1 description];
    v13 = sub_222B02388();
    v15 = v14;

    MEMORY[0x223DC66E0](v13, v15);

    sub_222AFAA84();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    swift_willThrow();

    sub_222A26530(v6, v8);
  }

  else
  {
    v17 = v10;
    sub_222A26530(v6, v8);
    sub_222A250BC(0, &qword_27D01D948, 0x277CD3D58);
    sub_222B02388();
    v18 = v17;
    v19 = sub_222B02AB8();

    if (v19)
    {

      v20 = [a1 bundleID];
      v21 = sub_222B02388();
      v23 = v22;
      sub_222A26530(v6, v8);

      *a2 = v19;
      a2[1] = v21;
      a2[2] = v23;
    }

    else
    {
      sub_222B02C88();
      MEMORY[0x223DC66E0](0xD000000000000031, 0x8000000222B16D30);
      v24 = [a1 description];
      v25 = sub_222B02388();
      v27 = v26;

      MEMORY[0x223DC66E0](v25, v27);

      sub_222AFAA84();
      swift_allocError();
      *v28 = 0;
      v28[1] = 0xE000000000000000;
      swift_willThrow();

      sub_222A26530(v6, v8);
    }
  }
}

uint64_t sub_222AF94A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v50 = v5;
  v9 = *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E238, &qword_222B0D8B8);
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v47 = &v42 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E588, &qword_222B0F700);
  MEMORY[0x28223BE20](v54);
  v52 = &v42 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E590, &qword_222B0F708);
  MEMORY[0x28223BE20](v58);
  v53 = &v42 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E598, &unk_222B0F710);
  MEMORY[0x28223BE20](v60);
  v55 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE70, &qword_222B051B0);
  v59 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v56 = v17;
  v57 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = &v42 - v18;
  v19 = *(a2 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v42 = a1;
    v43 = v15;
    v44 = v9;
    v45 = a3;
    v46 = v4;
    v62 = MEMORY[0x277D84F90];
    sub_222A23AE4(0, v19, 0);
    v20 = v62;
    v21 = (a2 + 32);
    do
    {
      v61 = *v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D210, &qword_222B06C50);
      v22 = sub_222B023D8();
      v24 = v23;
      v62 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_222A23AE4((v25 > 1), v26 + 1, 1);
        v20 = v62;
      }

      *(v20 + 16) = v26 + 1;
      v27 = v20 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      ++v21;
      --v19;
    }

    while (v19);
    a3 = v45;
    v15 = v43;
    v9 = v44;
  }

  v28 = sub_222B017F8();
  [v28 timeIntervalSinceReferenceDate];
  v30 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E578, &unk_222B0F6F0);
  sub_222A352E8(&qword_280CB82E0, &qword_27D01E578, &unk_222B0F6F0, MEMORY[0x277CF1818]);
  v31 = v47;
  sub_222B01A58();
  v32 = v49;
  v33 = sub_222B019F8();
  (*(v48 + 8))(v31, v32);
  v62 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E318, &unk_222B0E048);
  sub_222A250BC(0, qword_280CB8460, 0x277CF19A0);
  sub_222A352E8(&qword_27D01E5A0, &qword_27D01E318, &unk_222B0E048, &unk_222B0CD38);
  sub_222B02F28();
  *(swift_allocObject() + 16) = trunc(v30);
  sub_222A352E8(&qword_27D01E5A8, &qword_27D01E588, &qword_222B0F700, MEMORY[0x277D859D8]);
  sub_222B02E08();
  *(swift_allocObject() + 16) = v20;
  v34 = MEMORY[0x277D859A0];
  sub_222A352E8(&qword_27D01E5B0, &qword_27D01E590, &qword_222B0F708, MEMORY[0x277D859A0]);
  sub_222B02E08();
  *(swift_allocObject() + 16) = v9;
  sub_222A352E8(&qword_27D01E5B8, &qword_27D01E598, &unk_222B0F710, v34);
  v35 = v51;
  sub_222B02F28();
  v37 = v59 + 32;
  v36 = *(v59 + 32);
  v38 = v57;
  v36(v57, v35, v15);
  v39 = (*(v37 + 48) + 16) & ~*(v37 + 48);
  v40 = swift_allocObject();
  result = (v36)(v40 + v39, v38, v15);
  *a3 = sub_222AFACC8;
  a3[1] = v40;
  return result;
}

uint64_t sub_222AF9B78(void *a1, id *a2)
{
  *a1 = [*a2 eventBody];
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_222AF9BF0(void *a1, double a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_222AF9C18, 0, 0);
}

uint64_t sub_222AF9C18()
{
  v1 = *(v0 + 16);
  [*(v0 + 24) absoluteTimestamp];
  v3 = *(v0 + 8);

  return v3(v2 >= v1);
}

uint64_t sub_222AF9C8C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 32) = a2;
  *(v2 + 40) = v3;
  return MEMORY[0x2822009F8](sub_222AF9CB0, 0, 0);
}

uint64_t sub_222AF9CB0()
{
  v1 = [*(v0 + 40) intentClass];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    v4 = sub_222B02388();
    v6 = v5;

    *(v0 + 16) = v4;
    *(v0 + 24) = v6;
    v7 = swift_task_alloc();
    *(v7 + 16) = v0 + 16;
    v8 = sub_222AF69D0(sub_222AAAACC, v7, v2);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v8 & 1);
}

uint64_t sub_222AF9DA8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v3[5] = *a2;
  return MEMORY[0x2822009F8](sub_222AF9DD0, 0, 0);
}

uint64_t sub_222AF9DD0()
{
  v7 = v0;
  sub_222AF9120(*(v0 + 40), &v5);
  v1 = *(v0 + 24);
  v2 = v6;
  *v1 = v5;
  *(v1 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_222AF9FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E238, &qword_222B0D8B8);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = v38 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E570, &unk_222B0F6E0);
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = v38 - v8;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v38[1] = a1;
    v38[2] = a3;
    v45[0] = MEMORY[0x277D84F90];
    sub_222A23AE4(0, v9, 0);
    v11 = v45[0];
    v12 = (a2 + 32);
    do
    {
      v44 = *v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D210, &qword_222B06C50);
      v13 = sub_222B023D8();
      v15 = v14;
      v45[0] = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_222A23AE4((v16 > 1), v17 + 1, 1);
        v11 = v45[0];
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      ++v12;
      --v9;
    }

    while (v9);
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v19 = sub_222B017F8();
  [v19 timeIntervalSinceReferenceDate];
  v21 = v20;

  v22 = trunc(v21);
  v23 = sub_222B017F8();
  [v23 timeIntervalSinceReferenceDate];
  v25 = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = v10;
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E578, &unk_222B0F6F0);
  sub_222A352E8(&qword_280CB82E0, &qword_27D01E578, &unk_222B0F6F0, MEMORY[0x277CF1818]);
  v28 = v39;
  sub_222B01A58();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v25;
  *(v29 + 32) = v11;
  sub_222A352E8(&qword_280CB82E8, &qword_27D01E238, &qword_222B0D8B8, MEMORY[0x277CF1760]);
  v30 = v41;
  v31 = v42;
  sub_222B019C8();

  (*(v40 + 8))(v28, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  *(v32 + 24) = v25;
  sub_222A352E8(&qword_280CB82F0, &qword_27D01E570, &unk_222B0F6E0, MEMORY[0x277CF1740]);

  v33 = v46;

  (*(v43 + 8))(v31, v33);
  swift_beginAccess();
  v34 = *(v27 + 24);
  if (v34)
  {
    v35 = *(v27 + 16);
    sub_222AFAA84();
    swift_allocError();
    *v36 = v35;
    v36[1] = v34;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v35 = *(v26 + 16);
  }

  return v35;
}

uint64_t sub_222AFA538(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = [a1 eventBody];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 intentClass];
    if (v9)
    {
      v10 = v9;
      v11 = sub_222B02388();
      v13 = v12;

      v14 = [v8 absoluteTimestamp];
      if (v15 >= a3 && v15 <= a4)
      {
        v19[0] = v11;
        v19[1] = v13;
        MEMORY[0x28223BE20](v14);
        v18[2] = v19;
        v16 = sub_222AF69D0(sub_222AAA918, v18, a2);

        return v16 & 1;
      }
    }
  }

  v16 = 0;
  return v16 & 1;
}

id sub_222AFA664(void *a1, uint64_t a2)
{
  result = [a1 state];
  if (result)
  {
    [a1 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
    v5 = sub_222B023D8();
    v7 = v6;
    swift_beginAccess();
    *(a2 + 16) = v5;
    *(a2 + 24) = v7;
  }

  return result;
}

BOOL sub_222AFA70C(void *a1, uint64_t a2, double a3)
{
  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    v8 = v7;
    MEMORY[0x223DC6810]();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222B02648();
    }

    sub_222B02688();
    swift_endAccess();
    [v8 absoluteTimestamp];
    v10 = v9;

    v11 = v10 > a3;
  }

  else
  {
    [a1 timestamp];
    v11 = v12 > a3 + 5.0;
  }

  return !v11;
}

SiriPrivateLearningAnalytics::AppInteraction __swiftcall AppInteraction.init(interaction:bundleID:)(INInteraction interaction, Swift::String bundleID)
{
  *v2 = interaction;
  *(v2 + 8) = bundleID;
  result.bundleID = bundleID;
  result.interaction = interaction;
  return result;
}

uint64_t sub_222AFA828()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics13BiomeQuerying_intentStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E578, &unk_222B0F6F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AppInteraction.bundleID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t type metadata accessor for BiomeQuerying(uint64_t a1)
{
  result = qword_280CB9FA8;
  if (!qword_280CB9FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222AFA95C(uint64_t a1)
{
  sub_222AFA9EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_222AFA9EC(uint64_t a1)
{
  if (!qword_280CBA1E0)
  {
    sub_222A250BC(255, qword_280CB8460, 0x277CF19A0);
    v1 = sub_222B01A18();
    if (!v2)
    {
      atomic_store(v1, &qword_280CBA1E0);
    }
  }
}

unint64_t sub_222AFAA84()
{
  result = qword_27D01E580;
  if (!qword_27D01E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E580);
  }

  return result;
}

uint64_t sub_222AFAAD8(void *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A4D6A0;

  return sub_222AF9BF0(a1, v4);
}

uint64_t sub_222AFAB7C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222AFB144;

  return sub_222AF9C8C(a1, v4);
}

uint64_t sub_222AFAC18(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222A34620;

  return sub_222AF9DA8(a1, a2, v6);
}

uint64_t sub_222AFACC8@<X0>(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE70, &qword_222B051B0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_222A33B94(v4, a1);
}

void sub_222AFAD44(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

char *sub_222AFAD90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = (a1 + 56);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v3 - 1);
      if (*v3)
      {
        v9 = v7;
        v10 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
        if (swift_dynamicCast())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_222AA9E7C(0, *(v2 + 2) + 1, 1, v2);
          }

          v12 = *(v2 + 2);
          v11 = *(v2 + 3);
          if (v12 >= v11 >> 1)
          {
            v2 = sub_222AA9E7C((v11 > 1), v12 + 1, 1, v2);
          }

          sub_222AFAD44(v7, v6, v8, 1);
          *(v2 + 2) = v12 + 1;
          v5 = &v2[16 * v12];
          *(v5 + 4) = v26;
          *(v5 + 5) = v27;
        }

        else
        {

          v26 = 0;
          v27 = 0xE000000000000000;
          sub_222B02D98();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_222AA9E7C(0, *(v2 + 2) + 1, 1, v2);
          }

          v21 = *(v2 + 2);
          v20 = *(v2 + 3);
          if (v21 >= v20 >> 1)
          {
            v2 = sub_222AA9E7C((v20 > 1), v21 + 1, 1, v2);
          }

          sub_222AFAD44(v7, v6, v8, 1);
          *(v2 + 2) = v21 + 1;
          v22 = &v2[16 * v21];
          *(v22 + 4) = 0;
          *(v22 + 5) = 0xE000000000000000;
        }
      }

      else
      {
        v25 = *(v3 - 2);
        v13 = v7;
        swift_bridgeObjectRetain_n();
        v14 = v13;
        v15 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_222AA9F88(0, *(v4 + 2) + 1, 1, v4);
        }

        v17 = *(v4 + 2);
        v16 = *(v4 + 3);
        v18 = v4;
        if (v17 >= v16 >> 1)
        {
          v18 = sub_222AA9F88((v16 > 1), v17 + 1, 1, v4);
        }

        sub_222AFAD44(v7, v25, v8, 0);
        *(v18 + 2) = v17 + 1;
        v4 = v18;
        v19 = &v18[24 * v17];
        *(v19 + 4) = v14;
        *(v19 + 5) = v25;
        *(v19 + 6) = v8;
        v2 = v15;
      }

      v3 += 32;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
  }

  if (*(v2 + 2))
  {

    sub_222AFB0D0();
    swift_allocError();
    *v23 = v2;
    swift_willThrow();
  }

  else
  {
  }

  return v4;
}

unint64_t sub_222AFB0D0()
{
  result = qword_27D01E5C0;
  if (!qword_27D01E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E5C0);
  }

  return result;
}

uint64_t UniversalSuggestionSummary.suggestionSurfacedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UniversalSuggestionSummary(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t UniversalSuggestionSummaryExtractor.init(suggestionStore:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 40))(v4, v5);
  type metadata accessor for UniversalSELFPlusStoreIdMapper();
  v7 = swift_allocObject();
  v8 = sub_222A3A8B0(MEMORY[0x277D84F90]);
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *a2 = v7;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t UniversalSuggestionSummaryExtractor.extract(from:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E5C8, &unk_222B0F888);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v44 = type metadata accessor for UniversalSuggestionSummary(0);
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *v1;
  v46 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222B02DC8())
  {
    if (i)
    {
      v8 = 0;
      v9 = a1 & 0xC000000000000001;
      v45 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v9)
        {
          v10 = MEMORY[0x223DC6F00](v8, a1);
        }

        else
        {
          if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v10 = *(a1 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_52;
        }

        if ([v10 anyEventType] == 38)
        {
          sub_222B02D18();
          sub_222B02D48();
          sub_222B02D58();
          sub_222B02D28();
          v9 = v45;
        }

        else
        {
        }

        ++v8;
        if (v12 == i)
        {
          v13 = v46;
          v46 = MEMORY[0x277D84F90];
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_57;
        }
      }
    }

    v13 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_17:
      if ((v13 & 0x4000000000000000) == 0)
      {
        v14 = *(v13 + 16);
        goto LABEL_19;
      }
    }

LABEL_57:
    v14 = sub_222B02DC8();
LABEL_19:
    v15 = 0;
    v45 = MEMORY[0x277D84F90];
    if (v14)
    {
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x223DC6F00](v15, v13);
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_51;
          }

          v28 = *(v13 + 8 * v15 + 32);
        }

        v29 = v28;
        v30 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v31 = [v28 payload];
        if (v31)
        {
          v23 = v31;
          v24 = sub_222B01798();
          v26 = v25;

          a1 = sub_222B01788();
          sub_222A26530(v24, v26);
        }

        else
        {
          a1 = 0;
        }

        v27 = [objc_allocWithZone(MEMORY[0x277D59C50]) initWithData_];

        ++v15;
        if (v27)
        {
          MEMORY[0x223DC6810]();
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222B02648();
          }

          sub_222B02688();
          v45 = v46;
          v15 = v30;
          if (v14 == v30)
          {
            goto LABEL_20;
          }
        }

        else if (v14 == v15)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_20:

    v16 = v45;
    if (!(v45 >> 62))
    {
      v17 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        break;
      }

      goto LABEL_22;
    }

    v35 = v45;
    v17 = sub_222B02DC8();
    v16 = v35;
    if (!v17)
    {
      break;
    }

LABEL_22:
    v18 = 0;
    v19 = v16 & 0xC000000000000001;
    v20 = v16 & 0xFFFFFFFFFFFFFF8;
    v21 = (v41 + 48);
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v19)
      {
        v32 = MEMORY[0x223DC6F00](v18, v16);
      }

      else
      {
        if (v18 >= *(v20 + 16))
        {
          goto LABEL_55;
        }

        v32 = *(v16 + 8 * v18 + 32);
      }

      a1 = v32;
      v33 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v46 = v42;
      sub_222AFB84C(v32, v5);

      if ((*v21)(v5, 1, v44) == 1)
      {
        sub_222A34F20(v5, &qword_27D01E5C8, &unk_222B0F888);
      }

      else
      {
        sub_222AFC77C(v5, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_222AA933C(0, v22[2] + 1, 1, v22);
        }

        a1 = v22[2];
        v34 = v22[3];
        if (a1 >= v34 >> 1)
        {
          v22 = sub_222AA933C((v34 > 1), a1 + 1, 1, v22);
        }

        v22[2] = a1 + 1;
        sub_222AFC77C(v43, v22 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * a1);
      }

      v16 = v45;
      ++v18;
      if (v33 == v17)
      {
        goto LABEL_60;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_60:

  if (v22[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_222B05250;
    v37 = type metadata accessor for UniversalSuggestionSummaries(0);
    v38 = swift_allocObject();
    *(v38 + 16) = v22;
    *(v36 + 56) = v37;
    v39 = sub_222AFC900(&qword_27D01E5D0, type metadata accessor for UniversalSuggestionSummaries, &protocol conformance descriptor for TypedNamedFeature<A>);
    result = v36;
    *(v36 + 64) = v39;
    *(v36 + 32) = v38;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_222AFB84C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = MEMORY[0x28223BE20](v99);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v101 = &v94 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v102 = &v94 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v94 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v94 - v15;
  v17 = sub_222B018D8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v103 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v94 - v21;
  v100 = *v2;
  v23 = [a1 eventMetadata];
  if (!v23)
  {
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v23 plusId];

  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = [v25 value];
  if (!v26)
  {

LABEL_14:
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_15;
  }

  v97 = v22;
  v27 = v26;
  v28 = sub_222B01798();
  v98 = a2;
  v29 = v28;
  v30 = v17;
  v32 = v31;

  sub_222A67044(v29, v32, v16);
  v33 = v29;
  a2 = v98;
  sub_222A26530(v33, v32);
  v34 = *(v18 + 48);
  if (v34(v16, 1, v30) == 1)
  {
LABEL_15:
    sub_222A34F20(v16, &unk_27D01DA50, &unk_222B04E20);
LABEL_16:
    v52 = type metadata accessor for UniversalSuggestionSummary(0);
    v53 = *(*(v52 - 8) + 56);
    v54 = a2;
    return v53(v54, 1, 1, v52);
  }

  v35 = v97;
  v96 = *(v18 + 32);
  v96(v97, v16, v30);
  v36 = [a1 plusSuggesterSuggestionMetadataReported];
  if (!v36)
  {
    (*(v18 + 8))(v35, v30);
    goto LABEL_24;
  }

  v37 = v36;
  v38 = v30;
  v39 = [v36 suggestionDomainMetadata];
  if (!v39)
  {

    (*(v18 + 8))(v97, v30);
    goto LABEL_24;
  }

  v95 = v37;
  v40 = v39;
  v41 = [v39 suggestionGenerationDomain];

  v42 = v41 == 2;
  v43 = v97;
  if (!v42)
  {
    (*(v18 + 8))(v97, v30);

LABEL_24:
    a2 = v98;
    goto LABEL_16;
  }

  v44 = v95;
  v45 = [v95 suggestionLinkId];
  if (!v45)
  {

LABEL_22:
    (*(v18 + 8))(v43, v38);
    (*(v18 + 56))(v14, 1, 1, v38);
    goto LABEL_23;
  }

  v46 = v45;
  v47 = [v45 value];
  if (!v47)
  {

    goto LABEL_22;
  }

  v48 = v47;
  v49 = sub_222B01798();
  v94 = v50;

  v51 = v94;
  sub_222A67044(v49, v94, v14);

  sub_222A26530(v49, v51);
  if (v34(v14, 1, v38) == 1)
  {
    (*(v18 + 8))(v97, v38);

LABEL_23:
    sub_222A34F20(v14, &unk_27D01DA50, &unk_222B04E20);
    goto LABEL_24;
  }

  v56 = v103;
  v96(v103, v14, v38);
  v57 = [v95 suggestionSurfaced] - 1;
  v58 = v38;
  v59 = v97;
  if (v57 >= 3)
  {
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_222B02C88();
    MEMORY[0x223DC66E0](0xD00000000000003BLL, 0x8000000222B16DE0);
    v76 = sub_222B02AA8();
    MEMORY[0x223DC66E0](v76);

    v77 = v105;
    v78 = v106;
    sub_222AFC8AC();
    v79 = swift_allocError();
    *v80 = v77;
    v80[1] = v78;
    swift_willThrow();
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v81 = sub_222B02148();
    __swift_project_value_buffer(v81, qword_280CBC458);
    v82 = v79;
    v83 = sub_222B02128();
    v84 = sub_222B028E8();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v105 = v86;
      *v85 = 136315138;
      v104 = v79;
      v87 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
      v88 = sub_222B023D8();
      v90 = sub_222A230FC(v88, v89, &v105);

      *(v85 + 4) = v90;
      _os_log_impl(&dword_222A1C000, v83, v84, "Unable to convert suggestion surfaced value for suggestion summary: %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x223DC7E30](v86, -1, -1);
      MEMORY[0x223DC7E30](v85, -1, -1);

      v91 = *(v18 + 8);
      v91(v103, v58);
    }

    else
    {

      v91 = *(v18 + 8);
      v91(v103, v38);
    }

    v91(v59, v58);
    v52 = type metadata accessor for UniversalSuggestionSummary(0);
    v53 = *(*(v52 - 8) + 56);
    v54 = v98;
    return v53(v54, 1, 1, v52);
  }

  v60 = v102;
  sub_222AC5E48(v56, v97, v102);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v61 = sub_222B02148();
  __swift_project_value_buffer(v61, qword_280CBC458);
  v62 = v101;
  sub_222A6E45C(v60, v101);
  v63 = sub_222B02128();
  v64 = sub_222B028D8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = v38;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v105 = v67;
    *v66 = 136315138;
    sub_222A6E45C(v62, v7);
    v68 = sub_222B023D8();
    v69 = v65;
    v71 = v70;
    sub_222A34F20(v62, &unk_27D01DA50, &unk_222B04E20);
    v72 = sub_222A230FC(v68, v71, &v105);

    *(v66 + 4) = v72;
    v60 = v102;
    _os_log_impl(&dword_222A1C000, v63, v64, "makeSuggestionSummary candidateId: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x223DC7E30](v67, -1, -1);
    MEMORY[0x223DC7E30](v66, -1, -1);

    v73 = *(v18 + 8);
    v73(v103, v69);
    v74 = v97;
    v75 = v69;
  }

  else
  {

    sub_222A34F20(v62, &unk_27D01DA50, &unk_222B04E20);
    v73 = *(v18 + 8);
    v73(v103, v38);
    v74 = v59;
    v75 = v38;
  }

  v73(v74, v75);
  v92 = v98;
  sub_222A65A04(v60, v98);
  v93 = type metadata accessor for UniversalSuggestionSummary(0);
  *(v92 + *(v93 + 20)) = v57;
  return (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
}

uint64_t UniversalSuggestionSummaries.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E5D8, &qword_222B0F898);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t UniversalSuggestionSummaries.init(value:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E5D8, &qword_222B0F898);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t UniversalSuggestionSummaries.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222AFC3C4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for UniversalSuggestionSummaries(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222AFC3FC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for UniversalSuggestionSummaries(0);
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E5D8, &qword_222B0F898);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

BOOL _s28SiriPrivateLearningAnalytics26UniversalSuggestionSummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D6A8, &unk_222B08A00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_222A6E45C(a1, &v21 - v13);
  sub_222A6E45C(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_222A6E45C(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_222AFC900(&qword_280CB8300, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v18 = sub_222B02338();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_222A34F20(v14, &unk_27D01DA50, &unk_222B04E20);
      if (v18)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_222A34F20(v14, &qword_27D01D6A8, &unk_222B08A00);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_222A34F20(v14, &unk_27D01DA50, &unk_222B04E20);
LABEL_9:
  v20 = type metadata accessor for UniversalSuggestionSummary(0);
  return *(a1 + *(v20 + 20)) == *(a2 + *(v20 + 20));
}

uint64_t sub_222AFC77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionSummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_222AFC828(uint64_t a1)
{
  sub_222A658D8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_222AFC8AC()
{
  result = qword_27D01E600;
  if (!qword_27D01E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E600);
  }

  return result;
}

uint64_t sub_222AFC900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_222AFC948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DAA0, &qword_222B049A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05260;
  if (qword_280CB4CB0 != -1)
  {
    swift_once();
  }

  v1 = qword_280CB4CC0;
  *(inited + 32) = qword_280CB4CB8;
  *(inited + 40) = v1;
  v2 = qword_280CB4C80;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_280CB4C90;
  *(inited + 48) = qword_280CB4C88;
  *(inited + 56) = v3;

  v4 = sub_222AFCB80(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v4;
}

id sub_222AFCB80(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v4 = v1;
  v5 = sub_222AFD5F4(a1);

  sub_222A22758(v5);

  v6 = sub_222B025D8();

  [v3 addObjectsFromArray_];

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);
  v8 = v3;
  v9 = sub_222B02128();
  v10 = sub_222B028C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_222A1C000, v9, v10, "DiagnosticExtension - Final set of URLS: %@", v11, 0xCu);
    sub_222A8DF88(v12);
    MEMORY[0x223DC7E30](v12, -1, -1);
    MEMORY[0x223DC7E30](v11, -1, -1);
  }

  return v8;
}

id DiagnosticExtensionFileFinder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticExtensionFileFinder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticExtensionFileFinder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DiagnosticExtensionFileFinder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticExtensionFileFinder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222AFCE88(unint64_t a1)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v2 = sub_222B01748();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v70 = v69 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v69 - v9;
  v76 = MEMORY[0x277D84F90];
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v11 = sub_222B02148();
  v12 = __swift_project_value_buffer(v11, qword_280CBC458);
  v13 = *(v3 + 16);
  v75 = a1;
  v71 = v13;
  v13(v10, a1, v2);
  v72 = v12;
  v14 = sub_222B02128();
  v15 = sub_222B028C8();
  v16 = os_log_type_enabled(v14, v15);
  v73 = v2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v77[0] = v18;
    *v17 = 136315138;
    sub_222A470A4();
    v19 = sub_222B02F38();
    v21 = v20;
    v74 = v6;
    v22 = v3;
    v23 = *(v3 + 8);
    v23(v10, v2);
    v24 = sub_222A230FC(v19, v21, v77);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_222A1C000, v14, v15, "DiagnosticExtension - Gathering files from: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223DC7E30](v18, -1, -1);
    v25 = v17;
    v26 = v23;
    v3 = v22;
    v6 = v74;
    MEMORY[0x223DC7E30](v25, -1, -1);
  }

  else
  {

    v26 = *(v3 + 8);
    v26(v10, v2);
  }

  v27 = [objc_opt_self() defaultManager];
  v28 = v75;
  v29 = sub_222B016A8();
  v77[0] = 0;
  v30 = [v27 contentsOfDirectoryAtURL:v29 includingPropertiesForKeys:0 options:0 error:v77];

  v31 = v77[0];
  if (v30)
  {
    v32 = sub_222B025F8();
    v33 = v31;

    v34 = *(v32 + 16);
    if (v34)
    {
      v77[0] = MEMORY[0x277D84F90];
      sub_222B02D38();
      v35 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v69[1] = v32;
      v36 = v32 + v35;
      v37 = *(v3 + 72);
      v74 = (v3 + 8);
      v75 = v37;
      v38 = v70;
      v39 = v71;
      v40 = v73;
      do
      {
        v39(v38, v36, v40);
        sub_222B01738();
        v41 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
        v42 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

        [v41 initFileURLWithPath_];

        v26(v38, v40);
        sub_222B02D18();
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        v36 += v75;
        --v34;
      }

      while (v34);

      v43 = v77[0];
    }

    else
    {

      v43 = MEMORY[0x277D84F90];
    }

    v60 = sub_222B02128();
    v61 = sub_222B028C8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v77[0] = v63;
      *v62 = 136315138;
      v64 = sub_222AFD980();
      v65 = MEMORY[0x223DC6850](v43, v64);
      v67 = sub_222A230FC(v65, v66, v77);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_222A1C000, v60, v61, "DiagnosticExtension - URLS: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x223DC7E30](v63, -1, -1);
      MEMORY[0x223DC7E30](v62, -1, -1);
    }

    sub_222A97008(v43);
  }

  else
  {
    v44 = v77[0];
    v45 = sub_222B01628();

    swift_willThrow();
    v46 = v73;
    v71(v6, v28, v73);
    v47 = v45;
    v48 = sub_222B02128();
    v49 = sub_222B028E8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = v6;
      v75 = swift_slowAlloc();
      v77[0] = v75;
      *v50 = 136315394;
      sub_222A470A4();
      v52 = sub_222B02F38();
      v54 = v53;
      v26(v51, v46);
      v55 = sub_222A230FC(v52, v54, v77);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      swift_getErrorValue();
      v56 = sub_222B030C8();
      v58 = sub_222A230FC(v56, v57, v77);

      *(v50 + 14) = v58;
      _os_log_impl(&dword_222A1C000, v48, v49, "DiagnosticExtension - Error while enumerating files %s: %s", v50, 0x16u);
      v59 = v75;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v59, -1, -1);
      MEMORY[0x223DC7E30](v50, -1, -1);
    }

    else
    {

      v26(v6, v46);
    }
  }

  return v76;
}

uint64_t sub_222AFD5F4(uint64_t a1)
{
  v36 = sub_222B01748();
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 16);
  if (!v34)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v33 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  v32 = (v2 + 8);
  v6 = &qword_27D01DB90;
  while (1)
  {

    v8 = v35;
    sub_222B01688();
    v9 = sub_222AFCE88(v8);
    (*v32)(v8, v36);

    v10 = v9 >> 62;
    if (v9 >> 62)
    {
      v11 = sub_222B02DC8();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v5 >> 62;
    if (v5 >> 62)
    {
      v29 = sub_222B02DC8();
      v14 = v29 + v11;
      if (__OFADD__(v29, v11))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v12)
      {
        v15 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_222B02DC8();
      goto LABEL_15;
    }

    if (v12)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_222B02CC8();
    v5 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v40 = v11;
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v17 >> 1) - v16) < v40)
    {
      goto LABEL_36;
    }

    v37 = v4;
    v38 = v5;
    v20 = v15 + 8 * v16 + 32;
    v31 = v15;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_38;
      }

      sub_222AFD9CC();
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v6, &qword_222B0B2E8);
        v22 = sub_222A6E1A4(v39, i, v9);
        v24 = v6;
        v25 = *v23;
        (v22)(v39, 0);
        *(v20 + 8 * i) = v25;
        v6 = v24;
      }
    }

    else
    {
      sub_222AFD980();
      swift_arrayInitWithCopy();
    }

    v4 = v37;
    v5 = v38;
    if (v40 >= 1)
    {
      v26 = *(v31 + 16);
      v27 = __OFADD__(v26, v40);
      v28 = v26 + v40;
      if (v27)
      {
        goto LABEL_37;
      }

      *(v31 + 16) = v28;
    }

LABEL_4:
    if (++v4 == v34)
    {
      return v5;
    }
  }

  v19 = v15;
  result = sub_222B02DC8();
  v15 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v40 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_222AFD980()
{
  result = qword_27D01C9F8;
  if (!qword_27D01C9F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01C9F8);
  }

  return result;
}

unint64_t sub_222AFD9CC()
{
  result = qword_27D01DB98;
  if (!qword_27D01DB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01DB90, &qword_222B0B2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DB98);
  }

  return result;
}

void static RuntimeSuggestionLog.record(requestId:suggestionId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_222B01748();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v54 - v15;
  v16 = sub_222B023C8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v60 = a2;

  MEMORY[0x223DC66E0](58, 0xE100000000000000);
  MEMORY[0x223DC66E0](a3, a4);
  v20 = v59;
  v21 = v60;

  MEMORY[0x223DC66E0](10, 0xE100000000000000);
  sub_222B023B8();
  v58 = sub_222B02398();
  v23 = v22;

  (*(v17 + 8))(v19, v16);
  if (v23 >> 60 == 15)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v24 = sub_222B02148();
    __swift_project_value_buffer(v24, qword_280CBC458);

    v25 = sub_222B02128();
    v26 = sub_222B028E8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v59 = v28;
      *v27 = 136315138;
      v29 = sub_222A230FC(v20, v21, &v59);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_222A1C000, v25, v26, "RuntimeSuggestionLog failed to convert entry to data for writing: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x223DC7E30](v28, -1, -1);
      MEMORY[0x223DC7E30](v27, -1, -1);
    }

    else
    {
    }

LABEL_13:

    return;
  }

  sub_222AFE3C4(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v30 = v23;

    sub_222A34F20(v10, &qword_27D01D458, &unk_222B07E00);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v31 = sub_222B02148();
    __swift_project_value_buffer(v31, qword_280CBC458);
    v25 = sub_222B02128();
    v32 = sub_222B028E8();
    if (os_log_type_enabled(v25, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_222A1C000, v25, v32, "RuntimeSuggestionLog no container access", v33, 2u);
      MEMORY[0x223DC7E30](v33, -1, -1);
    }

    sub_222A398A4(v58, v30);
    goto LABEL_13;
  }

  v55 = v23;
  v34 = v57;
  (*(v12 + 32))(v57, v10, v11);
  v35 = objc_opt_self();
  v36 = [v35 defaultManager];
  sub_222B01728();
  v37 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v38 = [v36 fileExistsAtPath_];

  if (v38)
  {
    sub_222AFF42C();
    v39 = v56;
    v40 = v11;
    (*(v12 + 16))(v56, v34, v11);
    v41 = v34;
    v42 = sub_222AFE650(v39);
    sub_222B02898();
    v52 = v58;
    v53 = sub_222B01788();
    [v42 writeData_];

    [v42 closeFile];
  }

  else
  {
    v40 = v11;
    v43 = [v35 defaultManager];
    sub_222B01728();
    v44 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

    v52 = v58;
    v42 = sub_222B01788();
    [v43 createFileAtPath:v44 contents:v42 attributes:0];

    v41 = v34;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v45 = sub_222B02148();
  __swift_project_value_buffer(v45, qword_280CBC458);

  v46 = sub_222B02128();
  v47 = sub_222B028D8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v41;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59 = v50;
    *v49 = 136315138;
    v51 = sub_222A230FC(v20, v21, &v59);

    *(v49 + 4) = v51;
    _os_log_impl(&dword_222A1C000, v46, v47, "RuntimeSuggestionLog recorded: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x223DC7E30](v50, -1, -1);
    MEMORY[0x223DC7E30](v49, -1, -1);
    sub_222A398A4(v52, v55);

    (*(v12 + 8))(v48, v40);
  }

  else
  {

    sub_222A398A4(v52, v55);

    (*(v12 + 8))(v41, v40);
  }
}

uint64_t sub_222AFE3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_222B01F68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_222B01748();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222A81B0C(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_222A34F20(v8, &qword_27D01D458, &unk_222B07E00);
    v13 = 1;
  }

  else
  {
    sub_222B01F58();
    sub_222B016C8();
    (*(v3 + 8))(v5, v2);
    v14 = *(v10 + 8);
    v14(v8, v9);
    sub_222B016E8();
    v14(v12, v9);
    v13 = 0;
  }

  return (*(v10 + 56))(a1, v13, 1, v9);
}

id sub_222AFE650(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_222B016A8();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_222B01748();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_222B01628();

    swift_willThrow();
    v9 = sub_222B01748();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

unint64_t static RuntimeSuggestionLog.readAll()()
{
  v0 = sub_222B01558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222B023C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = sub_222B01748();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222AFE3C4(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_222A34F20(v7, &qword_27D01D458, &unk_222B07E00);
    if (qword_280CBA628 != -1)
    {
LABEL_26:
      swift_once();
    }

    v12 = sub_222B02148();
    __swift_project_value_buffer(v12, qword_280CBC458);
    v13 = sub_222B02128();
    v14 = sub_222B028E8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222A1C000, v13, v14, "RuntimeSuggestionLog no container access", v15, 2u);
      MEMORY[0x223DC7E30](v15, -1, -1);
    }

    return sub_222A3ACA4(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_222B023B8();
    v17 = sub_222B02348();
    v59 = 0;
    v60 = v11;
    v61 = v9;
    v62 = v8;
    v66 = v17;
    v67 = v18;
    sub_222B01548();
    sub_222A397FC();
    v19 = sub_222B02B58();
    (*(v1 + 8))(v3, v0);

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = v19 + 40;
      v57 = v20 - 1;
      v63 = MEMORY[0x277D84F90];
      v58 = v19 + 40;
      do
      {
        v23 = (v22 + 16 * v21);
        v24 = v21;
        while (1)
        {
          if (v24 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v21 = v24 + 1;
          v25 = *v23;
          v66 = *(v23 - 1);
          v67 = v25;
          v64 = 58;
          v65 = 0xE100000000000000;
          sub_222AFF478();

          v26 = sub_222B02858();
          if (v26[2] > 1uLL)
          {
            break;
          }

          v23 += 2;
          ++v24;
          if (v20 == v21)
          {
            goto LABEL_20;
          }
        }

        v28 = v26[6];
        v27 = v26[7];
        v30 = v26[4];
        v29 = v26[5];
        v31 = v26[9];
        v55 = v26[8];
        v56 = v29;
        v54 = v31;
        v32 = v26[10];
        v33 = v26[11];
        v52 = v30;
        v53 = v32;
        v51 = v26;

        v34 = MEMORY[0x223DC6660](v52, v56, v28, v27);
        v56 = v35;

        v36 = MEMORY[0x223DC6660](v55, v54, v53, v33);
        v55 = v37;

        v38 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_222AAA0A8(0, v63[2] + 1, 1, v63);
        }

        v40 = v63[2];
        v39 = v63[3];
        if (v40 >= v39 >> 1)
        {
          v63 = sub_222AAA0A8((v39 > 1), v40 + 1, 1, v63);
        }

        v41 = v63;
        v63[2] = v40 + 1;
        v42 = &v41[4 * v40];
        v43 = v55;
        v44 = v56;
        v42[4] = v38;
        v42[5] = v44;
        v42[6] = v36;
        v42[7] = v43;
        v22 = v58;
      }

      while (v57 != v24);
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

LABEL_20:

    v45 = v63;
    if (v63[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CD98, &qword_222B04F00);
      v46 = sub_222B02DF8();
    }

    else
    {
      v46 = MEMORY[0x277D84F98];
    }

    v48 = v61;
    v47 = v62;
    v49 = v59;
    v50 = v60;
    v66 = v46;
    sub_222AFF4CC(v45, 1, &v66);

    if (v49)
    {

      __break(1u);
    }

    else
    {
      (*(v48 + 8))(v50, v47);
      return v66;
    }
  }

  return result;
}

void static RuntimeSuggestionLog.clear()()
{
  v33[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v32[-v1];
  v3 = sub_222B01748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_222AFE3C4(v2);
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = objc_opt_self();
    v12 = [v11 defaultManager];
    sub_222B01728();
    v13 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

    v14 = [v12 fileExistsAtPath_];

    if (v14)
    {
      v15 = [v11 defaultManager];
      v16 = sub_222B016A8();
      v33[0] = 0;
      v17 = [v15 removeItemAtURL:v16 error:v33];

      if (!v17)
      {
        v23 = v33[0];
        v24 = sub_222B01628();

        swift_willThrow();
        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v25 = sub_222B02148();
        __swift_project_value_buffer(v25, qword_280CBC458);
        v26 = v24;
        v20 = sub_222B02128();
        v27 = sub_222B028E8();

        if (os_log_type_enabled(v20, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138412290;
          v30 = v24;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v28 + 4) = v31;
          *v29 = v31;
          _os_log_impl(&dword_222A1C000, v20, v27, "RuntimeSuggestionLog failed to clear log: %@", v28, 0xCu);
          sub_222A34F20(v29, &qword_27D01E4B0, &qword_222B0A530);
          MEMORY[0x223DC7E30](v29, -1, -1);
          MEMORY[0x223DC7E30](v28, -1, -1);

LABEL_20:
          (*(v4 + 8))(v6, v3);
          return;
        }

LABEL_19:
        goto LABEL_20;
      }

      v18 = v33[0];
    }

    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v19 = sub_222B02148();
    __swift_project_value_buffer(v19, qword_280CBC458);
    v20 = sub_222B02128();
    v21 = sub_222B028D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_222A1C000, v20, v21, "RuntimeSuggestionLog cleared", v22, 2u);
      MEMORY[0x223DC7E30](v22, -1, -1);
    }

    goto LABEL_19;
  }

  sub_222A34F20(v2, &qword_27D01D458, &unk_222B07E00);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v7 = sub_222B02148();
  __swift_project_value_buffer(v7, qword_280CBC458);
  v8 = sub_222B02128();
  v9 = sub_222B028E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222A1C000, v8, v9, "RuntimeSuggestionLog no container access", v10, 2u);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }
}

unint64_t sub_222AFF42C()
{
  result = qword_27D01E608;
  if (!qword_27D01E608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01E608);
  }

  return result;
}

unint64_t sub_222AFF478()
{
  result = qword_27D01E610;
  if (!qword_27D01E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E610);
  }

  return result;
}

unint64_t sub_222AFF4CC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 56);
  v39 = *(result + 48);
  v10 = *a3;

  result = sub_222A26EC8(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_222A2B60C(v15, i & 1);
    result = sub_222A26EC8(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_222B030B8();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = (v18[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    v23 = (v18[7] + 16 * result);
    *v23 = v39;
    v23[1] = v9;
    v24 = v18[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v25;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_222A2DE94();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  v20 = (v18[7] + 16 * v19);
  *v20 = v39;
  v20[1] = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 88); ; i += 4)
    {
      v7 = *(i - 3);
      v9 = *(i - 2);
      v3 = *(i - 1);
      v6 = *i;
      v28 = *a3;

      result = sub_222A26EC8(v7, v9);
      v30 = v28[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        break;
      }

      v8 = v29;
      if (v28[3] < v32)
      {
        sub_222A2B60C(v32, 1);
        result = sub_222A26EC8(v7, v9);
        if ((v8 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      v34 = *a3;
      if (v8)
      {
        v26 = result;

        v27 = (v34[7] + 16 * v26);
        *v27 = v3;
        v27[1] = v6;
      }

      else
      {
        v34[(result >> 6) + 8] |= 1 << result;
        v35 = (v34[6] + 16 * result);
        *v35 = v7;
        v35[1] = v9;
        v36 = (v34[7] + 16 * result);
        *v36 = v3;
        v36[1] = v6;
        v37 = v34[2];
        v14 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v34[2] = v38;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

void *sub_222AFF778(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59DB8]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D59DE8]) init];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x277D59DF8]) init];
      if (v6)
      {
        v7 = v6;
        v8 = [objc_allocWithZone(MEMORY[0x277D59E28]) init];
        if (v8)
        {
          v9 = v8;
          v10 = a1 + *(type metadata accessor for UniversalSuggestionCandidate(0) + 24);
          v11 = type metadata accessor for UniversalCandidate(0);
          if (*(v10 + *(v11 + 28)) > 0.0)
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }

          [v5 setSurfacedBeforeStatus_];
          [v9 setConfidence_];
          [v7 setUniversalSuggestion_];
          [v3 setSuggestionValue_];
          [v3 setSuggestionMetadata_];

          return v3;
        }

        v3 = v5;
      }

      else
      {
        v7 = v5;
      }

      v3 = v7;
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v13 = sub_222B02148();
  __swift_project_value_buffer(v13, qword_280CBC458);
  v14 = sub_222B02128();
  v15 = sub_222B028E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_222A230FC(0xD000000000000017, 0x8000000222B16E90, &v19);
    _os_log_impl(&dword_222A1C000, v14, v15, "PLUSSchemaUniversalSuggestionsMessageConstructor.%s:  failed to create PLUS SELF event templates", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223DC7E30](v17, -1, -1);
    MEMORY[0x223DC7E30](v16, -1, -1);
  }

  return 0;
}

NSObject *sub_222AFF9F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_222B018D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D59DE0]) init];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  v13 = sub_222AFF778(a2);
  if (!v13)
  {

LABEL_10:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v21 = sub_222B02148();
    __swift_project_value_buffer(v21, qword_280CBC458);
    v12 = sub_222B02128();
    v22 = sub_222B028E8();
    if (os_log_type_enabled(v12, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_222A230FC(0xD000000000000024, 0x8000000222B16EB0, &v30);
      _os_log_impl(&dword_222A1C000, v12, v22, "PLUSSchemaUniversalSuggestionsMessageConstructor.%s:  failed to create PLUS SELF event templates", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223DC7E30](v24, -1, -1);
      MEMORY[0x223DC7E30](v23, -1, -1);
    }

    goto LABEL_14;
  }

  v14 = v13;
  type metadata accessor for PLUSLoggingIdGenerator();
  v15 = type metadata accessor for UniversalSuggestionCandidate(0);
  static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)(a1, a2 + *(v15 + 24), v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    v26 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v27 = sub_222B01878();
    v28 = [v26 initWithNSUUID_];

    [v12 setSuggestionId:v28];
    [v12 setGeneratedSuggestion:v14];

    (*(v8 + 8))(v10, v7);
    return v12;
  }

  sub_222A264C8(v6);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v16 = sub_222B02148();
  __swift_project_value_buffer(v16, qword_280CBC458);
  v17 = sub_222B02128();
  v18 = sub_222B028E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_222A230FC(0xD000000000000024, 0x8000000222B16EB0, &v30);
    _os_log_impl(&dword_222A1C000, v17, v18, "PLUSSchemaUniversalSuggestionsMessageConstructor.%s:  cannot generate a suggestion link id", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223DC7E30](v20, -1, -1);
    MEMORY[0x223DC7E30](v19, -1, -1);
  }

LABEL_14:
  return 0;
}

uint64_t SiriCorrectionsUndoResponse.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E618, &qword_222B0FA50);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t SiriCorrectionsUndoResponse.init(value:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E618, &qword_222B0FA50);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t SiriCorrectionsUndoResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222B00000(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for SiriCorrectionsUndoResponse(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222B00038(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for SiriCorrectionsUndoResponse(0);
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E618, &qword_222B0FA50);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

void *sub_222B000AC(unint64_t a1)
{
  v1 = a1;
  v38 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222B02DC8())
  {
    if (i)
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x223DC6F00](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_69;
        }

        if ([v4 anyEventType] == 61)
        {
          sub_222B02D18();
          sub_222B02D48();
          sub_222B02D58();
          sub_222B02D28();
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          v7 = v38;
          v38 = MEMORY[0x277D84F90];
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_76;
        }
      }
    }

    v7 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_17:
      if ((v7 & 0x4000000000000000) == 0)
      {
        v8 = *(v7 + 16);
        goto LABEL_19;
      }
    }

LABEL_76:
    v8 = sub_222B02DC8();
LABEL_19:
    v9 = 0;
    v37 = MEMORY[0x277D84F90];
    if (v8)
    {
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x223DC6F00](v9, v7);
        }

        else
        {
          if (v9 >= *(v7 + 16))
          {
            goto LABEL_68;
          }

          v27 = *(v7 + 8 * v9 + 32);
        }

        v28 = v27;
        v1 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v29 = [v27 payload];
        if (v29)
        {
          v21 = v29;
          v22 = sub_222B01798();
          v24 = v23;

          v25 = sub_222B01788();
          sub_222A26530(v22, v24);
        }

        else
        {
          v25 = 0;
        }

        v26 = [objc_allocWithZone(MEMORY[0x277D5A630]) initWithData_];

        ++v9;
        if (v26)
        {
          MEMORY[0x223DC6810]();
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222B02648();
          }

          sub_222B02688();
          v37 = v38;
          v9 = v1;
          if (v8 == v1)
          {
            goto LABEL_20;
          }
        }

        else if (v8 == v9)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_20:

    v38 = MEMORY[0x277D84F90];
    v10 = v37;
    if (v37 >> 62)
    {
      v11 = sub_222B02DC8();
      v10 = v37;
    }

    else
    {
      v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v13 = 0;
      v1 = v10 & 0xC000000000000001;
      v14 = MEMORY[0x277D84F90];
LABEL_24:
      v15 = v13;
      while (1)
      {
        if (v1)
        {
          v16 = MEMORY[0x223DC6F00](v15, v10);
        }

        else
        {
          if (v15 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v16 = *(v10 + 8 * v15 + 32);
        }

        v17 = v16;
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v18 = [v16 undoChecked];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 checkUndoResponse];

          if (v20)
          {
            MEMORY[0x223DC6810]();
            if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_222B02648();
            }

            sub_222B02688();
            v10 = v37;
            v14 = v38;
            v12 = MEMORY[0x277D84F90];
            if (v13 != v11)
            {
              goto LABEL_24;
            }

            goto LABEL_55;
          }
        }

        else
        {
        }

        ++v15;
        v10 = v37;
        if (v13 == v11)
        {
          v12 = MEMORY[0x277D84F90];
          goto LABEL_55;
        }
      }

LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_55:

    v38 = v12;
    if (!(v14 >> 62))
    {
      v1 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v1)
      {
        break;
      }

      goto LABEL_57;
    }

    v1 = sub_222B02DC8();
    if (!v1)
    {
      break;
    }

LABEL_57:
    v30 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x223DC6F00](v30, v14);
      }

      else
      {
        if (v30 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v31 = *(v14 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      type metadata accessor for SiriCorrectionsUndoResponse(0);
      *(swift_allocObject() + 16) = v32;
      MEMORY[0x223DC6810]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222B02648();
      }

      sub_222B02688();
      ++v30;
      if (v33 == v1)
      {
        v34 = v38;
        goto LABEL_80;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_80:

  v35 = sub_222A2222C(v34);

  return v35;
}

uint64_t type metadata accessor for SiriCorrectionsUndoResponse(uint64_t a1)
{
  result = qword_27D01E620;
  if (!qword_27D01E620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id UniversalCandidateCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id UniversalCandidateCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for UniversalCandidateCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id UniversalCandidateCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalCandidateCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_222B00844@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lastUpdated];
  *a2 = v4;
  return result;
}

id sub_222B0088C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 candidateForUniversalSuggestion];
  *a2 = result;
  return result;
}

id static UniversalCandidateCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_222B0094C()
{
  result = qword_27D01E630;
  if (!qword_27D01E630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01DA50, &unk_222B04E20);
    sub_222AE00D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01E630);
  }

  return result;
}

void sub_222B009D0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 candidateEntity];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222B01798();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222B00A38(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_222B01788();
  }

  v4 = v3;
  [v2 setCandidateEntity_];
}

uint64_t sub_222B00AB0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 id];
  if (v3)
  {
    v4 = v3;
    sub_222B01898();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222B018D8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_222B00B54(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_222A6E45C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_222B01878();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

uint64_t sub_222B00C80@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 id];
  if (v3)
  {
    v4 = v3;
    sub_222B01898();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_222B018D8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id UniversalRuntimeSuggestionCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id UniversalRuntimeSuggestionCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id UniversalRuntimeSuggestionCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalRuntimeSuggestionCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static UniversalRuntimeSuggestionCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222B00F2C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_222A6E45C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_222B01878();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}

void sub_222B01058(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 queryEntityName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222B02388();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_222B010C0(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setQueryEntityName_];
}

id UniversalSuggestionCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id UniversalSuggestionCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for UniversalSuggestionCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id UniversalSuggestionCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalSuggestionCoreDataRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_222B012C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 candidates];
  *a2 = result;
  return result;
}

id static UniversalSuggestionCoreDataRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_222B0137C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_222A6E45C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_222B01878();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setId_];
}