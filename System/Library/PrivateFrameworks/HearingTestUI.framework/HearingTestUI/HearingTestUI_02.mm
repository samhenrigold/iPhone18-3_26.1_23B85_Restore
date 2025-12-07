uint64_t sub_20CDA1D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v17 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    v12 = type metadata accessor for InconclusiveSession();
    (*(v17 + 16))(v11, v5, a2);
    result = sub_20CD97480(v11, v12, a2, a3);
    a4[3] = v12;
    a4[4] = &protocol witness table for InconclusiveSession;
    *a4 = result;
  }

  else
  {
    a4[3] = a2;
    a4[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    v15 = *(v17 + 16);

    return v15(boxed_opaque_existential_1, v5, a2);
  }

  return result;
}

uint64_t sub_20CDA1EB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v24 = a2;
  v25 = a5;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20CE12924();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HTThresholdsFromDefaultsSession();
  (*(v14 + 16))(v16, a1, v13);
  v18 = *(v10 + 16);
  v18(v12, v6, a3);
  v19 = sub_20CDD9CC8(v12, v16, v24, v17, a3, a4);
  if (v19)
  {
    v27 = v17;
    v28 = &protocol witness table for HTThresholdsFromDefaultsSession;
    *&v26 = v19;
    return sub_20CD75924(&v26, v25);
  }

  else
  {
    v21 = v25;
    v25[3] = a3;
    v21[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    return (v18)(boxed_opaque_existential_1, v6, a3);
  }
}

void sub_20CDA209C(uint64_t a1)
{
  if (!qword_27C8127E8)
  {
    sub_20CE12954();
    v1 = sub_20CE13F44();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8127E8);
    }
  }
}

uint64_t getEnumTagSinglePayload for SessionFactory(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SessionFactory(_WORD *result, int a2, int a3)
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

uint64_t sub_20CDA21D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C62616C69617661;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x616C696176616E75;
    v4 = 0xEB00000000656C62;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x676E69646E6570;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6C62616C69617661;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x616C696176616E75;
    v8 = 0xEB00000000656C62;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x676E69646E6570;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20CE14284();
  }

  return v11 & 1;
}

uint64_t sub_20CDA22F0()
{
  sub_20CE14384();
  sub_20CE139C4();

  return sub_20CE143B4();
}

uint64_t sub_20CDA23A0(uint64_t a1)
{
  sub_20CE139C4();
}

uint64_t sub_20CDA243C(uint64_t a1)
{
  sub_20CE14384();
  sub_20CE139C4();

  return sub_20CE143B4();
}

unint64_t sub_20CDA24E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20CDA2DE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20CDA2518(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x6C62616C69617661;
  if (v2 != 1)
  {
    v5 = 0x616C696176616E75;
    v4 = 0xEB00000000656C62;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E69646E6570;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_20CDA2584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = sub_20CE12C34();
    v4 = [v3 areAllRequirementsSatisfied];

    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    LOBYTE(v14) = v5;

    sub_20CE12DE4();

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v6 = sub_20CE12CB4();
    __swift_project_value_buffer(v6, qword_27C817780);
    v7 = sub_20CE12C94();
    v8 = sub_20CE13CD4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446466;
      v11 = sub_20CE14414();
      v13 = sub_20CD96DCC(v11, v12, &v14);

      *(v9 + 4) = v13;
      *(v9 + 12) = 1024;
      *(v9 + 14) = v4;
      _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] Updating availability of Hearing Aid to %{BOOL}d.", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x20F314110](v10, -1, -1);
      MEMORY[0x20F314110](v9, -1, -1);
    }
  }
}

uint64_t sub_20CDA2768(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_20CDA3248(0, &qword_27C8127F8, MEMORY[0x277CC9578], MEMORY[0x277D113A8]);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CDA2880, 0, 0);
}

uint64_t sub_20CDA2880()
{
  v0[8] = [*(v0[3] + 16) featureAvailabilityProviding];
  ObjectType = swift_getObjectType();
  sub_20CE13954();
  sub_20CE124E4();
  sub_20CE13D04();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_20CDA2998;
  v3 = v0[7];
  v4 = v0[2];

  return MEMORY[0x28216A550](v4, v3, ObjectType);
}

uint64_t sub_20CDA2998()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  swift_unknownObjectRelease();
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CDA2B70, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20CDA2B70()
{
  v14 = v0;
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v1 = sub_20CE12CB4();
  __swift_project_value_buffer(v1, qword_27C817780);
  v2 = sub_20CE12C94();
  v3 = sub_20CE13CB4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CD70000, v2, v3, "[%{public}s] Failed to update test's last completed date.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_20CDA2D08()
{

  return swift_deallocClassInstance();
}

unint64_t sub_20CDA2D90()
{
  result = qword_27C8127F0;
  if (!qword_27C8127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8127F0);
  }

  return result;
}

unint64_t sub_20CDA2DE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_20CE14234();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_20CDA2E30(uint64_t a1)
{
  v2 = v1;
  v21 = *v1;
  sub_20CDA3248(0, &qword_27C812800, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_20CDA32AC(0);
  v8 = *(v7 - 8);
  v19 = v7;
  v20 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v22) = 0;
  sub_20CDA3448();
  swift_allocObject();
  v1[4] = sub_20CE12E14();
  v1[5] = MEMORY[0x277D84FA0];
  v1[2] = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC058] healthStore:a1];
  v1[3] = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC038] healthStore:a1];
  sub_20CD83128(0, &qword_27C812838, 0x277CCD460);
  v22 = sub_20CE12C54();
  v11 = [objc_opt_self() mainRunLoop];
  v23 = v11;
  v12 = sub_20CE13F34();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_20CDA3378(0);
  sub_20CD83128(0, &qword_27C812818, 0x277CBEB88);
  sub_20CDA353C(&qword_27C812820, sub_20CDA3378, MEMORY[0x277CBCD90]);
  sub_20CDA33E0();
  sub_20CE12E64();
  sub_20CDA34A8(v6);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v15 = v21;
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  sub_20CDA353C(&qword_27C812840, sub_20CDA32AC, MEMORY[0x277CBCD60]);
  v16 = v19;
  sub_20CE12E84();

  (*(v20 + 8))(v10, v16);
  swift_beginAccess();
  sub_20CE12DB4();
  swift_endAccess();

  return v2;
}

void sub_20CDA3248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CDA32AC(uint64_t a1)
{
  if (!qword_27C812808)
  {
    sub_20CDA3378(255);
    sub_20CD83128(255, &qword_27C812818, 0x277CBEB88);
    sub_20CDA353C(&qword_27C812820, sub_20CDA3378, MEMORY[0x277CBCD90]);
    sub_20CDA33E0();
    v1 = sub_20CE12D94();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812808);
    }
  }
}

void sub_20CDA3378(uint64_t a1)
{
  if (!qword_27C812810)
  {
    sub_20CE12C24();
    v1 = sub_20CE12DA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812810);
    }
  }
}

unint64_t sub_20CDA33E0()
{
  result = qword_27C812828;
  if (!qword_27C812828)
  {
    sub_20CD83128(255, &qword_27C812818, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812828);
  }

  return result;
}

void sub_20CDA3448()
{
  if (!qword_27C812830)
  {
    v0 = sub_20CE12E04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812830);
    }
  }
}

uint64_t sub_20CDA34A8(uint64_t a1)
{
  sub_20CDA3248(0, &qword_27C812800, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CDA353C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CDA3584(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }
    }

    else if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_12;
  }

  if (a1 == 2)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_12;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CDA3760(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }
    }

    else if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_12;
  }

  if (a1 == 2)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_12;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CDA3948()
{
  sub_20CE14384();
  sub_20CE139C4();

  return sub_20CE143B4();
}

uint64_t sub_20CDA39F8(uint64_t a1)
{
  sub_20CE139C4();
}

uint64_t sub_20CDA3A94(uint64_t a1)
{
  sub_20CE14384();
  sub_20CE139C4();

  return sub_20CE143B4();
}

unint64_t sub_20CDA3B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20CDA3D88(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20CDA3B70(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "available";
  v4 = "audioDeviceIncompatible";
  v5 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = "audioDeviceNotInEar";
  }

  if (*v1)
  {
    v3 = "audioDeviceNotConnected";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t _s14BlockingReasonOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14BlockingReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20CDA3D34()
{
  result = qword_27C812848;
  if (!qword_27C812848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812848);
  }

  return result;
}

unint64_t sub_20CDA3D88(uint64_t a1, uint64_t a2)
{
  v2 = sub_20CE14234();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20CDA3DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CD9750C(v6);
  (*(*(a3 + 16) + 8))(v6, a2);
  return sub_20CD85934(v6);
}

uint64_t HTTonePlayer.play(tone:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_20CDA3E68, 0, 0);
}

uint64_t sub_20CDA3E68()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_20CDA3F5C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_20CDA3F5C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_20CDA4AB8;
  }

  else
  {

    v2 = sub_20CDA4AB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CDA4078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CDA4968(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_20CE128A4();
}

uint64_t sub_20CDA41C4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_20CDA4968(0);
    return sub_20CE13B44();
  }

  else
  {
    sub_20CDA4968(0);
    return sub_20CE13B54();
  }
}

uint64_t HTRequirementStatusManager.noiseStatus()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20CE12934();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE129E4();
  sub_20CD9750C(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t HTRequirementStatusManager.addNoiseStatusObserver(_:queue:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_20CE129B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_20CD7C388(a1, v9);
  sub_20CDA49E8(0, &qword_27C812850, &protocol descriptor for NoiseStatusObserver, 1);
  sub_20CDA49E8(0, &qword_27C812858, &protocol descriptor for NoiseRequirementStatusObserver, 0);
  result = swift_dynamicCast();
  if (result)
  {
    sub_20CE129A4();
    sub_20CE129F4();
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t HTRequirementStatusManager.removeNoiseStatusObserver(_:)(uint64_t a1)
{
  v2 = sub_20CE129B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_20CD7C388(a1, v8);
  sub_20CDA49E8(0, &qword_27C812850, &protocol descriptor for NoiseStatusObserver, 1);
  sub_20CDA49E8(0, &qword_27C812858, &protocol descriptor for NoiseRequirementStatusObserver, 0);
  result = swift_dynamicCast();
  if (result)
  {
    sub_20CE129A4();
    sub_20CE12A04();
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20CDA45AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20CE12934();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE129E4();
  sub_20CD9750C(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20CDA46D0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_20CDA46F4, 0, 0);
}

uint64_t sub_20CDA46F4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_20CDA47E8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_20CDA47E8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_20CDA4904;
  }

  else
  {

    v2 = sub_20CD8D1D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CDA4904()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20CDA4968(uint64_t a1)
{
  if (!qword_27C812860)
  {
    sub_20CDA49E8(255, &qword_281111358, MEMORY[0x277D84948], 1);
    v1 = sub_20CE13B64();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812860);
    }
  }
}

uint64_t sub_20CDA49E8(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_20CDA4A44(void *a1)
{
  sub_20CDA4968(0);

  return sub_20CDA41C4(a1);
}

id sub_20CDA4C8C()
{
  v1 = &v0[OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_cameraPosition];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  *&v0[OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_fillPercentage] = 1058642330;
  v2 = OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_blurAnimation;
  v3 = sub_20CE13914();
  v4 = [objc_opt_self() animationWithKeyPath_];

  [v4 setDuration_];
  [v4 setFillMode_];
  [v4 setRemovedOnCompletion_];
  *&v0[v2] = v4;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EvaluationVFXView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_options_, 0, 0.0, 0.0, 0.0, 0.0);
  sub_20CDA4F0C();

  return v5;
}

void sub_20CDA4F0C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_20CE12474();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v26[-v11];
  [v1 setInsetsLayoutMarginsFromSafeArea_];
  sub_20CDA14E4(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20CE16370;
  v14 = sub_20CE12CC4();
  v15 = MEMORY[0x277D74BF0];
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  *(swift_allocObject() + 16) = ObjectType;
  sub_20CE13E14();
  swift_unknownObjectRelease();

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v16 = qword_27C8179E8;
  v17 = sub_20CE13914();
  v18 = sub_20CE13914();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (v19)
  {
    sub_20CE12454();

    (*(v4 + 32))(v12, v10, v3);
    sub_20CD83128(0, &qword_27C812898, 0x277D78170);
    (*(v4 + 16))(v7, v12, v3);
    v20 = sub_20CDF5614(MEMORY[0x277D84F90]);
    v21 = sub_20CDA52D4(v7, v20);
    [v1 setWorld_];

    (*(v4 + 8))(v12, v3);
  }

  [v1 setRendersContinuously_];
  v22 = [v1 world];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 background];

    v25 = [objc_opt_self() clearColor];
    [v24 setContents_];
  }

  sub_20CDA5648();
  sub_20CDA57FC();
  sub_20CDA5A54();
  sub_20CDA5CC0();
  sub_20CDA5FB8();
  sub_20CDA63B8();
}

id sub_20CDA52D4(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_20CE12444();
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_20CDA6E3C();
    v5 = sub_20CE13874();
  }

  else
  {
    v5 = 0;
  }

  v14[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() worldWithURL:v4 options:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_20CE12474();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_20CE12394();

    swift_willThrow();
    v12 = sub_20CE12474();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_20CDA547C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C817768);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CD4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] Traits changed.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  sub_20CDA63B8();
}

void sub_20CDA5648()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v2 = [v0 layer];
  sub_20CDA6DE4(0, &qword_27C812888, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CE16370;
  *(v3 + 56) = sub_20CD83128(0, &qword_27C812890, 0x277CD9EA0);
  *(v3 + 32) = v1;
  v4 = v1;
  v5 = sub_20CE13AA4();

  [v2 setFilters_];

  v6 = sub_20CE13C54();
  v7 = sub_20CE13914();
  [v4 setValue:v6 forKey:v7];

  v8 = sub_20CE13914();
  [v4 setName_];
}

void sub_20CDA57FC()
{
  v1 = [v0 world];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rootNode];

    v4 = sub_20CE13914();
    v27 = [v3 childNodeWithName_];

    if (v27)
    {
      v5 = [v27 camera];
      if (v5)
      {
        v6 = v5;
        [v5 orthographicScale];
        v25 = v7;

        v8 = &v0[OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_cameraPosition];
        if (v0[OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_cameraPosition + 16])
        {
          [v0 bounds];
          v10 = v9 * 0.5;
          [v0 bounds];
          v12 = v11 * 0.5;
        }

        else
        {
          v10 = *v8;
          v12 = v8[1];
        }

        [v0 bounds];
        v14 = v13;
        [v0 bounds];
        v16 = v15;
        v17 = v10;
        v18 = -(((v17 / v14) + (v17 / v14)) + -1.0);
        v19 = v12;
        v20 = ((v19 / v16) + (v19 / v16)) + -1.0;
        if (v14 >= v16)
        {
          v22 = v14 / v16;
          *&v23 = v26 * (v22 * v18);
          *(&v23 + 1) = v26 * v20;
          [v27 setPosition_];
        }

        else
        {
          *&v21 = v26 * v18;
          *(&v21 + 1) = v26 * ((v16 / v14) * v20);
          [v27 setPosition_];
          v22 = v14 / v16;
        }

        v24 = 0.35;
        if (v22 < 0.8)
        {
          v24 = 0.6;
        }

        *&v0[OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_fillPercentage] = v24;
        sub_20CDA5A54();
      }
    }
  }
}

void sub_20CDA5A54()
{
  v1 = [v0 world];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 rootNode];

  v4 = sub_20CE13914();
  v5 = [v3 childNodeWithName_];

  if (!v5)
  {
    return;
  }

  v6 = [v5 graphController];
  if (!v6)
  {

    v19 = 0u;
    v20 = 0u;
LABEL_16:
    sub_20CD8CFF0(&v19);
    return;
  }

  v7 = v6;
  v8 = sub_20CE13914();
  v9 = [v7 valueForKey_];

  if (v9)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) != 0 && (v10 = [v0 world]) != 0 && (v11 = v10, v12 = objc_msgSend(v10, sel_rootNode), v11, v13 = sub_20CE13914(), v14 = objc_msgSend(v12, sel_childNodeWithName_, v13), v12, v13, v14) && (v15 = objc_msgSend(v14, sel_camera), v14, v15))
  {
    *&v16 = *&v17 / *&v0[OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_fillPercentage];
    [v15 setOrthographicScale_];
  }

  else
  {
  }
}

void sub_20CDA5CC0()
{
  v1 = [v0 world];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rootNode];

    v4 = sub_20CE13914();
    v5 = [v3 childNodeWithName_];

    if (v5)
    {
      v6 = [v5 graphController];
      if (v6)
      {
        v7 = v6;
        v8 = sub_20CE13C24();
        v9 = sub_20CE13914();
        [v7 setValue:v8 forKey:v9];
      }

      v10 = [v5 graphController];
      if (v10)
      {
        v11 = v10;
        v12 = sub_20CE13B14();
        v13 = sub_20CE13914();
        [v11 setValue:v12 forKey:v13];
      }

      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v5;
      v19[4] = sub_20CDA6DC4;
      v19[5] = v15;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 1107296256;
      v19[2] = sub_20CD95834;
      v19[3] = &block_descriptor_1;
      v16 = _Block_copy(v19);
      v17 = v5;

      v18 = [v14 scheduledTimerWithTimeInterval:0 repeats:v16 block:0.5];
      _Block_release(v16);
    }
  }
}

void sub_20CDA5F10(int a1, id a2)
{
  v2 = [a2 graphController];
  if (v2)
  {
    v3 = v2;
    v4 = sub_20CE13B14();
    v5 = sub_20CE13914();
    [v3 setValue:v4 forKey:v5];
  }
}

void sub_20CDA5FB8()
{
  v1 = [v0 world];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rootNode];

    v4 = sub_20CE13914();
    v5 = [v3 childNodeWithName_];

    if (v5)
    {
      v6 = sub_20CE13914();
      v7 = objc_opt_self();
      v8 = [v7 animationWithKeyPath_];

      v9 = *MEMORY[0x277CDA238];
      v27 = v8;
      [v27 setFillMode_];
      [v27 setRemovedOnCompletion_];
      v10 = sub_20CE13C54();
      [v27 setFromValue_];

      v11 = sub_20CE13C54();
      [v27 setToValue_];

      [v27 setDuration_];
      v12 = *MEMORY[0x277CDA7C0];
      v13 = objc_opt_self();
      v14 = [v13 functionWithName_];
      [v27 setTimingFunction_];

      v15 = sub_20CE13914();
      v16 = [v7 animationWithKeyPath_];

      v17 = v16;
      [v17 setFillMode_];
      [v17 setRemovedOnCompletion_];
      v18 = sub_20CE13C54();
      [v17 setFromValue_];

      v19 = sub_20CE13C54();
      [v17 setToValue_];

      [v17 setDuration_];
      v20 = [v13 functionWithName_];
      [v17 setTimingFunction_];

      v21 = [v0 layer];
      v22 = sub_20CE13914();
      [v21 addAnimation:v17 forKey:v22];

      v23 = [v5 graphController];
      if (v23)
      {
        v24 = v23;
        v25 = v27;
        v26 = sub_20CE13914();
        [v24 _vfxDeprecatedAddAnimation_forKey_];

        v17 = v5;
        v5 = v25;
      }
    }
  }
}

void sub_20CDA63B8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817768);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136446722;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v25);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20CD96DCC(0xD000000000000011, 0x800000020CE1CED0, &v25);
    *(v5 + 22) = 2080;
    v10 = [objc_opt_self() currentTraitCollection];
    v11 = [v10 userInterfaceStyle];

    v24 = v11;
    type metadata accessor for UIUserInterfaceStyle(0);
    v12 = sub_20CE13974();
    v14 = sub_20CD96DCC(v12, v13, &v25);

    *(v5 + 24) = v14;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] %s called and style is %s.", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v15 = [v1 world];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 rootNode];

    v18 = sub_20CE13914();
    v19 = [v17 childNodeWithName_];

    if (v19)
    {
      v20 = [objc_opt_self() currentTraitCollection];
      v21 = [v20 userInterfaceStyle];

      LODWORD(v22) = 1028443341;
      if (v21 != 2)
      {
        *&v22 = 1.0;
      }

      [v19 setOpacity_];
      v23 = [objc_opt_self() systemBackgroundColor];
      [v1 setBackgroundColor_];
    }
  }
}

void sub_20CDA66F0()
{
  v1 = [v0 world];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rootNode];

    v4 = sub_20CE13914();
    v5 = [v3 childNodeWithName_];

    if (v5)
    {
      v6 = sub_20CE13914();
      v7 = objc_opt_self();
      v8 = [v7 animationWithKeyPath_];

      v9 = *MEMORY[0x277CDA238];
      v26 = v8;
      [v26 setFillMode_];
      v10 = sub_20CE13C54();
      [v26 setToValue_];

      [v26 setDuration_];
      v11 = *MEMORY[0x277CDA7C0];
      v12 = objc_opt_self();
      v13 = [v12 functionWithName_];
      [v26 setTimingFunction_];

      v14 = sub_20CE13914();
      v15 = [v7 animationWithKeyPath_];

      v16 = v15;
      [v16 setFillMode_];
      v17 = sub_20CE13C54();
      [v16 setToValue_];

      [v16 setBeginTime_];
      [v16 setDuration_];
      v18 = [v12 functionWithName_];
      [v16 setTimingFunction_];

      v19 = [objc_allocWithZone(MEMORY[0x277CD9E00]) init];
      [v19 setRemovedOnCompletion_];
      sub_20CDA6DE4(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_20CE16F10;
      *(v20 + 32) = v26;
      *(v20 + 40) = v16;
      sub_20CD83128(0, &qword_27C812880, 0x277CD9DF8);
      v21 = sub_20CE13AA4();

      [v19 setAnimations_];

      v22 = [v5 graphController];
      if (v22)
      {
        v23 = v22;
        v24 = v19;
        v25 = sub_20CE13914();
        [v23 _vfxDeprecatedAddAnimation_forKey_];

        v5 = v24;
      }
    }
  }
}

void sub_20CDA6B08(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_blurAnimation];
  v3 = MEMORY[0x277D83B88];
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32;
  }

  v11 = MEMORY[0x277D83B88];
  v10[0] = v4;
  if (a1)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  __swift_project_boxed_opaque_existential_1(v10, MEMORY[0x277D83B88]);
  v6 = sub_20CE14274();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  [v2 setFromValue_];
  swift_unknownObjectRelease();
  v11 = v3;
  v10[0] = v5;
  __swift_project_boxed_opaque_existential_1(v10, v3);
  v7 = sub_20CE14274();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  [v2 setToValue_];
  swift_unknownObjectRelease();
  v8 = [v1 layer];
  v9 = sub_20CE13914();
  [v8 addAnimation:v2 forKey:v9];
}

id sub_20CDA6D5C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EvaluationVFXView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_20CDA6DE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20CDA6E3C()
{
  result = qword_27C811FB8;
  if (!qword_27C811FB8)
  {
    type metadata accessor for VFXWorldLoaderOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811FB8);
  }

  return result;
}

void sub_20CDA6E94()
{
  v1 = v0 + OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_cameraPosition;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_fillPercentage) = 1058642330;
  v2 = OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_blurAnimation;
  v3 = sub_20CE13914();
  v4 = [objc_opt_self() animationWithKeyPath_];

  [v4 setDuration_];
  [v4 setFillMode_];
  [v4 setRemovedOnCompletion_];
  *(v0 + v2) = v4;
  sub_20CE141B4();
  __break(1u);
}

uint64_t sub_20CDA6FD8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_20CDA8654(0);
  v2[4] = swift_task_alloc();
  v3 = sub_20CE129C4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CDA70DC, 0, 0);
}

void sub_20CDA70DC()
{
  v57 = v0;
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_20CE13914();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  sub_20CE0EEBC(v6);

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_20CDA86AC(v0[4]);
    v54 = (*MEMORY[0x277D12D98] + MEMORY[0x277D12D98]);
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_20CDA7C04;
    v8 = v0[9];

    v54(v8);
    return;
  }

  v9 = v0[9];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  (*(v12 + 32))(v10, v0[4], v11);
  v55 = *(v12 + 16);
  v55(v9, v10, v11);
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v13 = sub_20CE12CB4();
  __swift_project_value_buffer(v13, qword_27C817780);
  v14 = sub_20CE12C94();
  v15 = sub_20CE13CD4();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[8];
  v19 = v0[5];
  v18 = v0[6];
  if (v16)
  {
    v20 = swift_slowAlloc();
    v21 = v13;
    v22 = swift_slowAlloc();
    v56 = v22;
    *v20 = 136446210;
    *(v20 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v56);
    _os_log_impl(&dword_20CD70000, v14, v15, "[%{public}s] Using overridden fault check status.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v23 = v22;
    v13 = v21;
    MEMORY[0x20F314110](v23, -1, -1);
    MEMORY[0x20F314110](v20, -1, -1);
  }

  (*(v18 + 8))(v17, v19);
  v25 = v0 + 7;
  v24 = v0[7];
  v26 = v0[5];
  v27 = v0[6];
  v55(v24, v0[9], v26);
  v28 = (*(v27 + 88))(v24, v26);
  v29 = v28;
  v30 = *MEMORY[0x277D12D38];
  if (v28 == v30)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27C817780);
    v31 = sub_20CE12C94();
    v32 = sub_20CE13CD4();
    v25 = v0 + 9;
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_26;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v56 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v56);
    v35 = "[%{public}s] Fault check status returned with results unknown.";
    goto LABEL_25;
  }

  if (v28 == *MEMORY[0x277D12D48])
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27C817780);
    v31 = sub_20CE12C94();
    v32 = sub_20CE13CD4();
    v25 = v0 + 9;
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_26;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v56 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v56);
    v35 = "[%{public}s] Fault check status returned with insufficient measurements.";
    goto LABEL_25;
  }

  if (v28 == *MEMORY[0x277D12D50])
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27C817780);
    v31 = sub_20CE12C94();
    v32 = sub_20CE13CD4();
    v25 = v0 + 9;
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_26;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v56 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v56);
    v35 = "[%{public}s] Fault check status returned with status fail.";
    goto LABEL_25;
  }

  if (v28 == *MEMORY[0x277D12D58] || v28 == *MEMORY[0x277D12D60] || v28 == *MEMORY[0x277D12D68] || v28 == *MEMORY[0x277D12D70])
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27C817780);
    v39 = sub_20CE12C94();
    v40 = sub_20CE13CD4();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[9];
    v43 = v0[5];
    v44 = v0[6];
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56 = v46;
      *v45 = 136446210;
      *(v45 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v56);
      _os_log_impl(&dword_20CD70000, v39, v40, "[%{public}s] Fault check status returned with status pass.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x20F314110](v46, -1, -1);
      MEMORY[0x20F314110](v45, -1, -1);
    }

    (*(v44 + 8))(v42, v43);

    v38 = v0[1];
    goto LABEL_28;
  }

  if (v28 != *MEMORY[0x277D12D40])
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27C817780);
    v47 = sub_20CE12C94();
    v48 = sub_20CE13CB4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v56 = v50;
      *v49 = 136446466;
      *(v49 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v56);
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_20CD96DCC(0x29286E7572, 0xE500000000000000, &v56);
      _os_log_impl(&dword_20CD70000, v47, v48, "[%{public}s] %s Unhandled case of HTFaultStatusWithReason. Throwing HTFaultStatusResultUnknown.", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v50, -1, -1);
      MEMORY[0x20F314110](v49, -1, -1);
    }

    v51 = v0[9];
    v52 = v0[5];
    v53 = v0[6];
    (*(v53 + 104))(v0[3], v30, v52);
    type metadata accessor for PreTestError(0);
    swift_storeEnumTagMultiPayload();
    sub_20CD99698();
    swift_willThrowTypedImpl();
    v37 = *(v53 + 8);
    v37(v51, v52);
    goto LABEL_27;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_27C817780);
  v31 = sub_20CE12C94();
  v32 = sub_20CE13CD4();
  v25 = v0 + 9;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v56 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v56);
    v35 = "[%{public}s] Fault check status returned with fail on subsequent attempt.";
LABEL_25:
    _os_log_impl(&dword_20CD70000, v31, v32, v35, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x20F314110](v34, -1, -1);
    MEMORY[0x20F314110](v33, -1, -1);
  }

LABEL_26:

  v36 = v0[6];
  (*(v36 + 104))(v0[3], v29, v0[5]);
  type metadata accessor for PreTestError(0);
  swift_storeEnumTagMultiPayload();
  sub_20CD99698();
  swift_willThrowTypedImpl();
  v37 = *(v36 + 8);
LABEL_27:
  v37(*v25, v0[5]);

  v38 = v0[1];
LABEL_28:

  v38();
}

uint64_t sub_20CDA7C04()
{

  return MEMORY[0x2822009F8](sub_20CDA7D00, 0, 0);
}

uint64_t sub_20CDA7D00()
{
  v42 = v0;
  v1 = v0 + 9;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  (*(v3 + 16))(v4, v0[9], v2);
  v5 = (*(v3 + 88))(v4, v2);
  v6 = v5;
  v7 = *MEMORY[0x277D12D38];
  if (v5 == v7)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v8 = sub_20CE12CB4();
    __swift_project_value_buffer(v8, qword_27C817780);
    v9 = sub_20CE12C94();
    v10 = sub_20CE13CD4();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v41);
    v13 = "[%{public}s] Fault check status returned with results unknown.";
    goto LABEL_16;
  }

  if (v5 == *MEMORY[0x277D12D48])
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v14 = sub_20CE12CB4();
    __swift_project_value_buffer(v14, qword_27C817780);
    v9 = sub_20CE12C94();
    v10 = sub_20CE13CD4();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v41);
    v13 = "[%{public}s] Fault check status returned with insufficient measurements.";
    goto LABEL_16;
  }

  if (v5 == *MEMORY[0x277D12D50])
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v15 = sub_20CE12CB4();
    __swift_project_value_buffer(v15, qword_27C817780);
    v9 = sub_20CE12C94();
    v10 = sub_20CE13CD4();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v41);
    v13 = "[%{public}s] Fault check status returned with status fail.";
    goto LABEL_16;
  }

  if (v5 != *MEMORY[0x277D12D58] && v5 != *MEMORY[0x277D12D60] && v5 != *MEMORY[0x277D12D68] && v5 != *MEMORY[0x277D12D70])
  {
    if (v5 != *MEMORY[0x277D12D40])
    {
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v33 = sub_20CE12CB4();
      __swift_project_value_buffer(v33, qword_27C817780);
      v34 = sub_20CE12C94();
      v35 = sub_20CE13CB4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v41 = v37;
        *v36 = 136446466;
        *(v36 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v41);
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_20CD96DCC(0x29286E7572, 0xE500000000000000, &v41);
        _os_log_impl(&dword_20CD70000, v34, v35, "[%{public}s] %s Unhandled case of HTFaultStatusWithReason. Throwing HTFaultStatusResultUnknown.", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v37, -1, -1);
        MEMORY[0x20F314110](v36, -1, -1);
      }

      v38 = v0[9];
      v39 = v0[5];
      v40 = v0[6];
      (*(v40 + 104))(v0[3], v7, v39);
      type metadata accessor for PreTestError(0);
      swift_storeEnumTagMultiPayload();
      sub_20CD99698();
      swift_willThrowTypedImpl();
      v17 = *(v40 + 8);
      v17(v38, v39);
      v1 = v0 + 7;
      goto LABEL_18;
    }

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v32 = sub_20CE12CB4();
    __swift_project_value_buffer(v32, qword_27C817780);
    v9 = sub_20CE12C94();
    v10 = sub_20CE13CD4();
    if (!os_log_type_enabled(v9, v10))
    {
LABEL_17:

      v16 = v0[6];
      (*(v16 + 104))(v0[3], v6, v0[5]);
      type metadata accessor for PreTestError(0);
      swift_storeEnumTagMultiPayload();
      sub_20CD99698();
      swift_willThrowTypedImpl();
      v17 = *(v16 + 8);
LABEL_18:
      v17(*v1, v0[5]);

      v18 = v0[1];
      goto LABEL_19;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v41);
    v13 = "[%{public}s] Fault check status returned with fail on subsequent attempt.";
LABEL_16:
    _os_log_impl(&dword_20CD70000, v9, v10, v13, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x20F314110](v12, -1, -1);
    MEMORY[0x20F314110](v11, -1, -1);
    goto LABEL_17;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v23 = sub_20CE12CB4();
  __swift_project_value_buffer(v23, qword_27C817780);
  v24 = sub_20CE12C94();
  v25 = sub_20CE13CD4();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[9];
  v28 = v0[5];
  v29 = v0[6];
  if (v26)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_20CD96DCC(0xD000000000000010, 0x800000020CE174E0, &v41);
    _os_log_impl(&dword_20CD70000, v24, v25, "[%{public}s] Fault check status returned with status pass.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x20F314110](v31, -1, -1);
    MEMORY[0x20F314110](v30, -1, -1);
  }

  (*(v29 + 8))(v27, v28);

  v18 = v0[1];
LABEL_19:

  return v18();
}

uint64_t sub_20CDA8588(uint64_t a1)
{
  v2[2] = a1;
  type metadata accessor for PreTestError(0);
  v3 = swift_task_alloc();
  v2[3] = v3;
  v4 = *v1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_20CD99510;

  return sub_20CDA6FD8(v4, v3);
}

void sub_20CDA8654(uint64_t a1)
{
  if (!qword_27C8128A0)
  {
    sub_20CE129C4();
    v1 = sub_20CE13F44();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8128A0);
    }
  }
}

uint64_t sub_20CDA86AC(uint64_t a1)
{
  sub_20CDA8654(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *HearingTestNoiseInterruptionViewController.__allocating_init(interruptionType:noiseStatusProvider:)(unsigned __int8 *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a2, v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_20CDA99E4(a1, v10, v5, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

char *HearingTestNoiseInterruptionViewController.init(interruptionType:noiseStatusProvider:)(unsigned __int8 *a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_20CDA99E4(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

void sub_20CDA8BF0()
{
  v1 = v0;
  sub_20CDA9F9C(0);
  v3 = objc_allocWithZone(v2);

  v4 = sub_20CE12F84();
  v5 = [v0 contentView];
  v6 = v4;
  [v5 addSubview_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v1 contentView];
  [v6 hk:v7 alignCenterConstraintsWithView:?];

  v8 = [v6 leadingAnchor];
  v9 = [v1 contentView];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
  [v11 setActive_];

  v12 = [v6 trailingAnchor];
  v13 = [v1 contentView];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-16.0];
  [v15 setActive_];

  v17 = *&v1[OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_automationIdentifierBase];
  v16 = *&v1[OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_automationIdentifierBase + 8];
  v18 = MEMORY[0x277D837D0];
  sub_20CDAA04C(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20CE16360;
  *(v19 + 32) = v17;
  *(v19 + 40) = v16;
  strcpy((v19 + 48), "WaveformView");
  *(v19 + 61) = 0;
  *(v19 + 62) = -5120;
  sub_20CDAA04C(0, &qword_27C8121F0, v18, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v20 = sub_20CE13914();

  [v6 setAccessibilityIdentifier_];
}

id sub_20CDA8F34()
{
  v1 = v0;
  v2 = sub_20CE13F14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  result = [v0 secondaryContentView];
  if (result)
  {
    v10 = result;
    sub_20CE13ED4();
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    sub_20CE12354();
    sub_20CE13EE4();
    sub_20CDA9F50();
    (*(v3 + 16))(v6, v8, v2);
    v11 = sub_20CE13F24();
    [v11 addTarget:v1 action:sel_didTapHowtoReduceNoise forControlEvents:64];
    v12 = [v11 titleLabel];
    if (v12)
    {
      v13 = v12;
      [v12 setTextAlignment_];
    }

    v14 = v11;
    [v10 addSubview_];
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [v14 bottomAnchor];
    v16 = [v10 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    [v17 setActive_];
    v18 = [v14 centerXAnchor];

    v19 = [v10 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    [v20 setActive_];
    v21 = [v14 topAnchor];

    v22 = [v10 topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:16.0];

    [v23 setActive_];
    v24 = [v14 leadingAnchor];

    v25 = [v10 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:16.0];

    [v26 setActive_];
    v27 = [v14 trailingAnchor];

    v28 = [v10 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-16.0];

    [v29 setActive_];
    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

uint64_t sub_20CDA9500()
{
}

id HearingTestNoiseInterruptionViewController.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HearingTestNoiseInterruptionViewController(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20CDA95EC(uint64_t a1)
{
  v2 = v1;
  sub_20CD85874(a1, v29);
  if (v30 - 1 >= 2)
  {
    if (v30)
    {
      v9 = sub_20CE13AE4();
      *(v9 + 16) = 16;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      v24 = 1;
      *(v9 + 128) = 0u;
      *(v9 + 144) = 0u;
    }

    else
    {
      sub_20CD75924(v29, v31);
      v14 = v32;
      v15 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v16 = (*(v15 + 8))(v14, v15);
      v17 = *(v16 + 16);
      if (v17)
      {
        v28 = MEMORY[0x277D84F90];
        v18 = v16;
        sub_20CDB46B0(0, v17, 0);
        v19 = v18;
        v9 = v28;
        v20 = *(v28 + 16);
        v21 = 32;
        do
        {
          v22 = *(v19 + v21);
          v23 = *(v28 + 24);
          if (v20 >= v23 >> 1)
          {
            sub_20CDB46B0((v23 > 1), v20 + 1, 1);
            v19 = v18;
          }

          *(v28 + 16) = v20 + 1;
          *(v28 + 8 * v20 + 32) = v22;
          v21 += 4;
          ++v20;
          --v17;
        }

        while (v17);
      }

      else
      {

        v9 = MEMORY[0x277D84F90];
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v24 = 0;
    }
  }

  else
  {
    sub_20CD75924(v29, v31);
    v3 = v32;
    v4 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v5 = (*(v4 + 8))(v3, v4);
    v6 = *(v5 + 16);
    if (v6)
    {
      *&v29[0] = MEMORY[0x277D84F90];
      v7 = v5;
      sub_20CDB46B0(0, v6, 0);
      v8 = v7;
      v9 = *&v29[0];
      v10 = *(*&v29[0] + 16);
      v11 = 32;
      do
      {
        v12 = *(v8 + v11);
        *&v29[0] = v9;
        v13 = *(v9 + 24);
        if (v10 >= v13 >> 1)
        {
          sub_20CDB46B0((v13 > 1), v10 + 1, 1);
          v8 = v7;
          v9 = *&v29[0];
        }

        *(v9 + 16) = v10 + 1;
        *(v9 + 8 * v10 + 32) = v12;
        v11 += 4;
        ++v10;
        --v6;
      }

      while (v6);
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v24 = 1;
  }

  v25 = *(v2 + OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseModel);
  swift_beginAccess();
  if (v24 == *(v25 + 16))
  {
    *(v25 + 16) = v24;

    sub_20CDFFC50();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CDA9EF8();

    sub_20CE12AE4();
  }

  swift_getKeyPath();
  sub_20CDA9EF8();

  sub_20CE12AF4();

  sub_20CDAC38C(v9);
}

char *sub_20CDA99E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20CE12514();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = a4;
  v37[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v35 = *a1;
  v15 = OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v16 = (a3 + v15);
  v18 = qword_27C817868;
  v17 = unk_27C817870;
  v19 = MEMORY[0x277D837D0];
  sub_20CDAA04C(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20CE16360;
  *(v20 + 32) = v18;
  *(v20 + 40) = v17;
  *(v20 + 48) = 0xD000000000000012;
  *(v20 + 56) = 0x800000020CE1D080;
  *&v36[0] = v20;
  sub_20CDAA04C(0, &qword_27C8121F0, v19, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v21 = sub_20CE138C4();
  v23 = v22;

  *v16 = v21;
  v16[1] = v23;
  v24 = OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseModel;
  v25 = sub_20CE13AE4();
  *(v25 + 16) = 16;
  type metadata accessor for HTUINoiseView.Model(0);
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 96) = 0u;
  *(v25 + 112) = 0u;
  *(v25 + 128) = 0u;
  *(v25 + 144) = 0u;
  v26 = swift_allocObject();
  sub_20CE12B24();
  *(v26 + 16) = 1;
  type metadata accessor for NoiseWaveformView.Model(0);
  v27 = swift_allocObject();
  *(v27 + 32) = MEMORY[0x277D84F90];
  sub_20CE12B24();
  *(v27 + 16) = 1;
  *(v27 + 24) = v25;
  sub_20CDAC7A8();
  *(v26 + 24) = v27;
  *(a3 + v24) = v26;
  sub_20CD7C388(v37, v36);
  type metadata accessor for NoiseDataProvider();
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20CE12504();
  v29 = sub_20CE124F4();
  v31 = v30;
  (*(v11 + 8))(v13, v10);
  *(v28 + 72) = v29;
  *(v28 + 80) = v31;
  *(v28 + 88) = 0u;
  *(v28 + 104) = 0u;
  *(v28 + 120) = 0;
  *(v28 + 128) = -1;
  sub_20CD75924(v36, v28 + 32);
  *(a3 + OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseDataProvider) = v28;
  LOBYTE(v36[0]) = v35;
  v32 = sub_20CD83D04(v36, 0, 0, 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  *(*&v32[OBJC_IVAR____TtC13HearingTestUI42HearingTestNoiseInterruptionViewController_noiseDataProvider] + 24) = &off_2823BCC10;
  swift_unknownObjectWeakAssign();
  return v32;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t type metadata accessor for HearingTestNoiseInterruptionViewController(uint64_t a1)
{
  result = qword_27C8128B8;
  if (!qword_27C8128B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CDA9EF8()
{
  result = qword_27C8128C8;
  if (!qword_27C8128C8)
  {
    type metadata accessor for HTUINoiseView.Model(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8128C8);
  }

  return result;
}

unint64_t sub_20CDA9F50()
{
  result = qword_27C8127E0;
  if (!qword_27C8127E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8127E0);
  }

  return result;
}

void sub_20CDA9F9C(uint64_t a1)
{
  if (!qword_27C8128D0)
  {
    sub_20CDA9FF8();
    v1 = sub_20CE12F94();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8128D0);
    }
  }
}

unint64_t sub_20CDA9FF8()
{
  result = qword_27C8128D8;
  if (!qword_27C8128D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8128D8);
  }

  return result;
}

void sub_20CDAA04C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_20CDAA0A0(char a1)
{
  if (a1)
  {
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_6;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CDAA1A0(uint64_t a1)
{
  type metadata accessor for BinaryConfirmationSelectTableViewCell();
  sub_20CDAACC0();
  result = sub_20CE13974();
  qword_27C8178A8 = result;
  unk_27C8178B0 = v2;
  return result;
}

id sub_20CDAA1E4()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_27C8178B8 = result;
  return result;
}

void sub_20CDAA220()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_item;
  swift_beginAccess();
  sub_20CDAAC5C(&v0[v1], v12);
  if (!v13)
  {
    sub_20CD821F0(v12);
    return;
  }

  sub_20CD83038(0, &qword_27C812200, &protocol descriptor for DataSourceItem);
  if (swift_dynamicCast())
  {
    v2 = [v0 textLabel];
    if (v2)
    {
      v3 = v2;
      sub_20CDAA0A0(v10);
      v4 = sub_20CE13914();

      [v3 setText_];
    }

    if (v11)
    {
      v5 = sub_20CE13914();
      v6 = [objc_opt_self() systemImageNamed_];

      if (v6)
      {
        v7 = 1;
LABEL_11:

        v9 = *&v0[OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_accessoryImage];
        *&v0[OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_accessoryImage] = v6;

        v0[OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_accessoryIsSelected] = v7;
        sub_20CDAA428();
        return;
      }

      __break(1u);
    }

    else
    {
      v8 = sub_20CE13914();
      v6 = [objc_opt_self() systemImageNamed_];

      if (v6)
      {
        v7 = 0;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_20CDAA428()
{
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 pointSize];
  v3 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:v2];
  v10 = [*&v0[OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_accessoryImage] imageWithConfiguration_];
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  if (v0[OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_accessoryIsSelected] == 1)
  {
    v5 = [v0 tintColor];
  }

  else
  {
    if (qword_27C811D68 != -1)
    {
      swift_once();
    }

    v5 = qword_27C8178B8;
  }

  v6 = v5;
  [v4 setTintColor_];

  [v0 setAccessoryView_];
  v7 = [v0 textLabel];
  if (v7)
  {
    v8 = v7;
    v9 = v1;
    [v8 setFont_];

    v3 = v9;
  }
}

uint64_t sub_20CDAA78C()
{
  swift_getObjectType();
  sub_20CDA14E4(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CE16370;
  v1 = sub_20CE12D34();
  v2 = MEMORY[0x277D74DB8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_20CE13E14();
  swift_unknownObjectRelease();
}

id sub_20CDAA830(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BinaryConfirmationSelectTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20CDAA8D4()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CDAA428();
}

void sub_20CDAA974(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CE13914();
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    *&v2[OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_accessoryImage] = v5;
    v2[OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_accessoryIsSelected] = 0;
    v6 = &v2[OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_item];
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 4) = 0;
    if (a2)
    {
      v7 = sub_20CE13914();
    }

    else
    {
      v7 = 0;
    }

    v13.receiver = v2;
    v13.super_class = type metadata accessor for BinaryConfirmationSelectTableViewCell();
    v8 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, 3, v7);

    v9 = v8;
    v10 = [v9 textLabel];
    if (v10)
    {
      v11 = v10;
      [v10 setNumberOfLines_];
    }

    [v9 setSelectionStyle_];
    v12 = [objc_opt_self() secondarySystemBackgroundColor];
    [v9 setBackgroundColor_];

    sub_20CDAA78C();
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDAAB14()
{
  v1 = sub_20CE13914();
  v2 = [objc_opt_self() systemImageNamed_];

  if (!v2)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_accessoryImage) = v2;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_accessoryIsSelected) = 0;
  v3 = v0 + OBJC_IVAR____TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell_item;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  sub_20CE141B4();
  __break(1u);
}

void sub_20CDAABF4(uint64_t a1)
{
  if (!qword_27C812218)
  {
    sub_20CD83038(255, &qword_27C812200, &protocol descriptor for DataSourceItem);
    v1 = sub_20CE13F44();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812218);
    }
  }
}

uint64_t sub_20CDAAC5C(uint64_t a1, uint64_t a2)
{
  sub_20CDAABF4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CDAACC0()
{
  result = qword_27C8128F8;
  if (!qword_27C8128F8)
  {
    type metadata accessor for BinaryConfirmationSelectTableViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27C8128F8);
  }

  return result;
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

uint64_t sub_20CDAAD20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CDAAD68(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_20CDAADD8()
{
  result = qword_27C812900;
  if (!qword_27C812900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812900);
  }

  return result;
}

uint64_t sub_20CDAAE2C(uint64_t a1)
{
  result = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      goto LABEL_9;
    }

    if (a1 != 4)
    {
      if (a1 != 5)
      {
        return result;
      }

LABEL_9:
      if (qword_27C811DC8 == -1)
      {
        return sub_20CE12354();
      }

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      return result;
    }

LABEL_11:
    if (qword_27C811DC8 == -1)
    {
      return sub_20CE12354();
    }

    goto LABEL_16;
  }

  if (qword_27C811DC8 != -1)
  {
LABEL_16:
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CDAB020@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20CE129C4();
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 8)
  {
    v11 = *(v5 + 56);

    return v11(a2, 1, 1, v4);
  }

  else
  {
    v8 = **(&unk_277DACFC8 + a1);
    v9 = *(v5 + 104);
    v13 = v5;
    v9(v7, v8, v4);
    (*(v13 + 32))(a2, v7, v4);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

uint64_t HTFaultStatusWithReason.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_20CE129C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D12D38])
  {
    return 0xD00000000000001ALL;
  }

  if (v6 == *MEMORY[0x277D12D48])
  {
    return 0xD000000000000025;
  }

  if (v6 == *MEMORY[0x277D12D50])
  {
    return 0xD000000000000011;
  }

  if (v6 == *MEMORY[0x277D12D58])
  {
    return 0xD000000000000011;
  }

  if (v6 == *MEMORY[0x277D12D60])
  {
    return 0xD000000000000028;
  }

  if (v6 == *MEMORY[0x277D12D68])
  {
    return 0xD000000000000029;
  }

  if (v6 == *MEMORY[0x277D12D70])
  {
    return 0xD00000000000002DLL;
  }

  if (v6 == *MEMORY[0x277D12D40])
  {
    return 0xD000000000000024;
  }

  (*(v3 + 8))(v5, v2);
  return 0x6E776F6E6B6E75;
}

uint64_t sub_20CDAB434(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for PreTestError(0);
  v1[4] = swift_task_alloc();
  v4 = (*MEMORY[0x277D12DA0] + MEMORY[0x277D12DA0]);
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_20CDAB510;

  return v4(10);
}

uint64_t sub_20CDAB510(char a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_20CDAB610, 0, 0);
}

uint64_t sub_20CDAB610()
{
  if (*(v0 + 48) != 1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 16);
    swift_storeEnumTagMultiPayload();
    sub_20CD99698();
    swift_willThrowTypedImpl();
    sub_20CD99634(v2, v3);
  }

  v1 = *(v0 + 8);

  return v1();
}

double sub_20CDAB6D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_20CE13114();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  sub_20CDACBE4(0);
  sub_20CDAB814(a2, a1, (a3 + *(v6 + 44)));
  sub_20CE12F14();
  sub_20CE135F4();
  sub_20CE12F04();

  sub_20CDACFF0(0, &qword_27C812978, sub_20CDAD04C);
  v8 = (a3 + *(v7 + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_20CDAB814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = a2;
  v33 = a3;
  v4 = sub_20CE12F24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_20CDACCE8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v32 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  sub_20CE13B84();
  v31 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v35 = a1;
  sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
  sub_20CE12AF4();

  v15 = sub_20CDAD770(v14);

  v35 = v15;
  v29[1] = swift_getKeyPath();
  (*(v5 + 16))(v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v4);
  v16 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  (*(v5 + 32))(v17 + v16, v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20CDAD900;
  *(v18 + 24) = v17;
  sub_20CDAE0F0(0, &qword_27C812948, sub_20CDACDB0, MEMORY[0x277D83940]);
  sub_20CDACE14(0);
  sub_20CDACF68();
  sub_20CDAD9C8();

  sub_20CE135C4();
  LOBYTE(v35) = 1;
  v19 = *(v9 + 16);
  v20 = v32;
  v19(v32, v13, v8);
  v34 = 1;
  v21 = v35;
  v22 = v33;
  *v33 = 0;
  *(v22 + 8) = v21;
  sub_20CDACC7C(0);
  v24 = v23;
  v19(v22 + *(v23 + 48), v20, v8);
  v25 = v22 + *(v24 + 64);
  v26 = v34;
  *v25 = 0;
  v25[8] = v26;
  v27 = *(v9 + 8);
  v27(v13, v8);
  v27(v20, v8);
}

uint64_t sub_20CDABC54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v27 = a2;
  sub_20CDACE14(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CDADEF8(0, &qword_27C8129A8, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CE16360;
  swift_getKeyPath();
  *&v32 = a1;
  sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
  sub_20CE12AF4();

  if (*(a1 + 16))
  {
    sub_20CE134E4();
  }

  else
  {
    sub_20CE134D4();
  }

  v9 = sub_20CE134F4();

  *(v8 + 32) = v9;
  swift_getKeyPath();
  *&v32 = a1;
  sub_20CE12AF4();

  if (*(a1 + 16))
  {
    sub_20CE134E4();
  }

  else
  {
    sub_20CE134D4();
  }

  v10 = sub_20CE134F4();

  *(v8 + 40) = v10;
  MEMORY[0x20F312AF0](v8);
  sub_20CE13644();
  sub_20CE13654();
  sub_20CE12F74();
  v11 = v29;
  sub_20CE12F14();
  sub_20CE135F4();
  sub_20CE12F04();
  *&v28[22] = v33;
  *&v28[38] = v34;
  *&v28[6] = v32;
  v12 = &v7[*(v5 + 36)];
  v13 = *(sub_20CE12FE4() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_20CE13174();
  v16 = *(*(v15 - 8) + 104);
  v26 = v30;
  v25 = v31;
  v16(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #2.5 }

  *v12 = _Q0;
  sub_20CD922F4(0);
  *&v12[*(v22 + 36)] = 256;
  *v7 = v11;
  *(v7 + 24) = v25;
  *(v7 + 8) = v26;
  *(v7 + 20) = 256;
  v23 = *&v28[16];
  *(v7 + 42) = *v28;
  *(v7 + 58) = v23;
  *(v7 + 74) = *&v28[32];
  *(v7 + 11) = *&v28[46];
  sub_20CDAE088(v7, v27, sub_20CDACE14);
}

uint64_t sub_20CDAC044@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
  sub_20CE12AF4();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_20CDAC0EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
  sub_20CE12AF4();

  *a2 = *(v3 + 16);
  return result;
}

unsigned __int8 *sub_20CDAC1CC(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 == *(v1 + 16))
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
    sub_20CE12AE4();
  }

  return result;
}

uint64_t sub_20CDAC2E8()
{
  swift_getKeyPath();
  sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
  sub_20CE12AF4();
}

uint64_t sub_20CDAC38C(uint64_t a1)
{
  if (sub_20CDAD168(*(v1 + 24), a1))
  {
    *(v1 + 24) = a1;

    return sub_20CDAC7A8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
    sub_20CE12AE4();
  }
}

uint64_t sub_20CDAC4D4()
{
  swift_getKeyPath();
  sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
  sub_20CE12AF4();
}

uint64_t sub_20CDAC578@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
  sub_20CE12AF4();

  *a2 = *(v3 + 32);
}

uint64_t sub_20CDAC624(uint64_t result)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 32) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
    sub_20CE12AE4();
  }

  return result;
}

uint64_t sub_20CDAC7A8()
{
  swift_getKeyPath();
  sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
  sub_20CE12AF4();

  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];

    sub_20CDB46B0(0, v2, 0);
    v3 = v9;
    v4 = *(v9 + 16);
    v5 = 32;
    do
    {
      v6 = *(v1 + v5);
      v7 = *(v9 + 24);
      if (v4 >= v7 >> 1)
      {
        sub_20CDB46B0((v7 > 1), v4 + 1, 1);
      }

      *(v9 + 16) = v4 + 1;
      *(v9 + 8 * v4 + 32) = v6 / 90.0;
      v5 += 8;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return sub_20CDAC624(v3);
}

uint64_t sub_20CDAC918()
{

  v1 = OBJC_IVAR____TtCV13HearingTestUI17NoiseWaveformView5Model___observationRegistrar;
  v2 = sub_20CE12B34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NoiseWaveformView.Model(uint64_t a1)
{
  result = qword_27C812910;
  if (!qword_27C812910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CDACA18(uint64_t a1)
{
  result = sub_20CE12B34();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20CDACAF0@<X0>(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;

  v5 = MEMORY[0x20F312B20](v4, 0.5, 0.85, 0.0);
  swift_getKeyPath();
  sub_20CDADFDC(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model, &unk_20CE17844);
  sub_20CE12AF4();

  v6 = *(v3 + 32);
  *a1 = sub_20CDACBDC;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
}

void sub_20CDACBE4(uint64_t a1)
{
  if (!qword_27C812928)
  {
    sub_20CDAE0F0(255, &qword_27C812930, sub_20CDACC7C, MEMORY[0x277CE14B8]);
    v1 = sub_20CE12F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812928);
    }
  }
}

void sub_20CDACC7C(uint64_t a1)
{
  if (!qword_27C812938)
  {
    sub_20CDACCE8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C812938);
    }
  }
}

void sub_20CDACCE8(uint64_t a1)
{
  if (!qword_27C812940)
  {
    sub_20CDAE0F0(255, &qword_27C812948, sub_20CDACDB0, MEMORY[0x277D83940]);
    sub_20CDACE14(255);
    sub_20CDACF68();
    v1 = sub_20CE135D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812940);
    }
  }
}

void sub_20CDACDB0()
{
  if (!qword_27C812B70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C812B70);
    }
  }
}

void sub_20CDACE14(uint64_t a1)
{
  if (!qword_27C812950)
  {
    sub_20CDACFF0(255, &qword_27C812958, sub_20CDACE98);
    sub_20CD922F4(255);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812950);
    }
  }
}

void sub_20CDACE98(uint64_t a1)
{
  if (!qword_27C812960)
  {
    sub_20CDACF14();
    v1 = sub_20CE12EA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812960);
    }
  }
}

unint64_t sub_20CDACF14()
{
  result = qword_27C812968;
  if (!qword_27C812968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812968);
  }

  return result;
}

unint64_t sub_20CDACF68()
{
  result = qword_27C812970;
  if (!qword_27C812970)
  {
    sub_20CDAE0F0(255, &qword_27C812948, sub_20CDACDB0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812970);
  }

  return result;
}

void sub_20CDACFF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE12FD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CDAD04C(uint64_t a1)
{
  if (!qword_27C812980)
  {
    sub_20CDAE0F0(255, &qword_27C812930, sub_20CDACC7C, MEMORY[0x277CE14B8]);
    sub_20CDAD0E0();
    v1 = sub_20CE13574();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812980);
    }
  }
}

unint64_t sub_20CDAD0E0()
{
  result = qword_27C812988;
  if (!qword_27C812988)
  {
    sub_20CDAE0F0(255, &qword_27C812930, sub_20CDACC7C, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812988);
  }

  return result;
}

uint64_t sub_20CDAD168(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CDAD1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CD9AE3C(0);
  v7 = *(v6 - 8);
  v77 = v6;
  v78 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v72 = (v68 - v12);
  result = MEMORY[0x28223BE20](v11);
  v74 = v68 - v14;
  v76 = a1;
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_74;
  }

  v16 = *(a3 + 16);
  if (v16 >= v15)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = *(a3 + 16);
  }

  v75 = a2;
  if (!v17)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_16:
    v22 = *(v78 + 80);
    v23 = v20[3];

    if (v15 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v68[1] = v22;
    v69 = a3;
    v70 = (v22 + 32) & ~v22;
    v24 = v20 + v70;
    v25 = v23 >> 1;
    v73 = v16;
    if (v17)
    {
      v26 = v75;
      v27 = v76;
      if (v75 < v76)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v28 = type metadata accessor for ClassificationHighlightView.Model(0);
      v29 = 0;
      v30 = *(v28 - 8);
      result = v28 - 8;
      v31 = a3;
      v32 = v30;
      v33 = v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v25 -= v17;
      v34 = v27 - v26;
      while (v34 + v29)
      {
        v35 = v76 + v29;
        if (v76 + v29 >= v75)
        {
          goto LABEL_65;
        }

        if (v16 == v29)
        {
          goto LABEL_66;
        }

        v36 = v29 + 1;
        v37 = v33 + *(v32 + 72) * v29;
        v38 = *(v77 + 48);
        *v10 = v35;
        sub_20CDAE024(v37, v10 + v38);
        result = sub_20CDAE088(v10, v24, sub_20CD9AE3C);
        v24 += *(v78 + 72);
        v29 = v36;
        if (v17 == v36)
        {
          v39 = v76;
          v40 = v76 + v36;
          goto LABEL_26;
        }
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
    }

    else
    {
      v39 = v76;
      v40 = v76;
LABEL_26:
      v41 = v75;
      if (v40 == v75)
      {
LABEL_27:
        v42 = v20;
LABEL_28:
        v43 = v42[3];
        if (v43 >= 2)
        {
          v44 = v43 >> 1;
          v45 = __OFSUB__(v44, v25);
          v46 = v44 - v25;
          if (v45)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          v42[2] = v46;
        }

        return v42;
      }

      if (v75 < v39)
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if (v40 <= v75)
      {
        v47 = v75;
      }

      else
      {
        v47 = v40;
      }

      v71 = v47;
      v48 = v40;
      v49 = v69;
      while (v40 >= v39)
      {
        if (v71 == v48)
        {
          goto LABEL_68;
        }

        if (v73 == v17)
        {
          goto LABEL_27;
        }

        if (v17 >= v73)
        {
          goto LABEL_69;
        }

        v50 = type metadata accessor for ClassificationHighlightView.Model(0);
        v52 = *(v50 - 8);
        result = v50 - 8;
        v51 = v52;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_70;
        }

        v53 = v49 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v17;
        v54 = *(v77 + 48);
        v55 = v72;
        *v72 = v48;
        sub_20CDAE024(v53, v55 + v54);
        result = sub_20CDAE088(v55, v74, sub_20CD9AE3C);
        if (v25)
        {
          v42 = v20;
          v45 = __OFSUB__(v25--, 1);
          if (v45)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v56 = v20[3];
          if (((v56 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_71;
          }

          v57 = v56 & 0xFFFFFFFFFFFFFFFELL;
          if (v57 <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = v57;
          }

          sub_20CDAE0F0(0, &qword_27C812A08, sub_20CD9AE3C, MEMORY[0x277D84560]);
          v59 = *(v78 + 72);
          v60 = v70;
          v42 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v42);
          if (!v59)
          {
            goto LABEL_72;
          }

          v61 = result - v60;
          if (result - v60 == 0x8000000000000000 && v59 == -1)
          {
            goto LABEL_73;
          }

          v63 = v61 / v59;
          v42[2] = v58;
          v42[3] = 2 * (v61 / v59);
          v64 = v42 + v60;
          v65 = v20[3] >> 1;
          v66 = v65 * v59;
          v49 = v69;
          if (v20[2])
          {
            if (v42 < v20 || v64 >= v20 + v70 + v66)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v42 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v20[2] = 0;
          }

          v24 = &v64[v66];
          v67 = (v63 & 0x7FFFFFFFFFFFFFFFLL) - v65;

          v41 = v75;
          v39 = v76;
          v45 = __OFSUB__(v67, 1);
          v25 = v67 - 1;
          if (v45)
          {
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }
        }

        ++v48;
        result = sub_20CDAE088(v74, v24, sub_20CD9AE3C);
        v24 += *(v78 + 72);
        ++v17;
        v20 = v42;
        if (v41 == v48)
        {
          goto LABEL_28;
        }
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v17 <= 0)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_15:

    goto LABEL_16;
  }

  sub_20CDAE0F0(0, &qword_27C812A08, sub_20CD9AE3C, MEMORY[0x277D84560]);
  v18 = *(v78 + 72);
  v19 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v20 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v20);
  if (v18)
  {
    if (result - v19 == 0x8000000000000000 && v18 == -1)
    {
      goto LABEL_80;
    }

    v20[2] = v17;
    v20[3] = 2 * ((result - v19) / v18);
    goto LABEL_15;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

void *sub_20CDAD770(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 4;
    while (1)
    {
      v7 = v6[v4];
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        sub_20CDAE0F0(0, &qword_27C8129B0, sub_20CDACDB0, MEMORY[0x277D84560]);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[2 * v16 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v16);
          }

          v2[2] = 0;
        }

        v5 = (v15 + 16 * v16);
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v18 = __OFSUB__(v3--, 1);
      if (v18)
      {
        break;
      }

      *v5 = v4;
      v5[1] = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v19 = v2[3];
  if (v19 < 2)
  {
    return v2;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v3);
  v21 = v20 - v3;
  if (!v18)
  {
    v2[2] = v21;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20CDAD900@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_20CE12F24();
  v5 = *(v2 + 16);

  return sub_20CDABC54(v5, a1, a2);
}

unint64_t sub_20CDAD9C8()
{
  result = qword_27C812990;
  if (!qword_27C812990)
  {
    sub_20CDACE14(255);
    sub_20CDADA78();
    sub_20CDADFDC(&qword_27C812588, sub_20CD922F4, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812990);
  }

  return result;
}

unint64_t sub_20CDADA78()
{
  result = qword_27C812998;
  if (!qword_27C812998)
  {
    sub_20CDACFF0(255, &qword_27C812958, sub_20CDACE98);
    sub_20CDADFDC(&qword_27C8129A0, sub_20CDACE98, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812998);
  }

  return result;
}

uint64_t sub_20CDADB44()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_20CDADB90()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);

  return sub_20CDAC7A8();
}

unint64_t sub_20CDADBDC()
{
  result = qword_27C8129B8;
  if (!qword_27C8129B8)
  {
    sub_20CDADCBC(255);
    sub_20CDADFDC(&qword_27C8129F8, sub_20CDADD24, MEMORY[0x277CDF7D8]);
    sub_20CDADFDC(&qword_27C812A00, sub_20CDADE70, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8129B8);
  }

  return result;
}

void sub_20CDADCBC(uint64_t a1)
{
  if (!qword_27C8129C0)
  {
    sub_20CDADD24(255);
    sub_20CDADE70(255, v1);
    v2 = sub_20CE12FD4();
    if (!v3)
    {
      atomic_store(v2, &qword_27C8129C0);
    }
  }
}

void sub_20CDADD24(uint64_t a1)
{
  if (!qword_27C8129C8)
  {
    sub_20CDACFF0(255, &qword_27C812978, sub_20CDAD04C);
    sub_20CDADDA4();
    v1 = sub_20CE12F64();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8129C8);
    }
  }
}

unint64_t sub_20CDADDA4()
{
  result = qword_27C8129D0;
  if (!qword_27C8129D0)
  {
    sub_20CDACFF0(255, &qword_27C812978, sub_20CDAD04C);
    sub_20CDADFDC(&qword_27C8129D8, sub_20CDAD04C, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8129D0);
  }

  return result;
}

void sub_20CDADE70(uint64_t a1, __n128 a2)
{
  if (!qword_27C8129E0)
  {
    sub_20CDADEF8(255, &qword_27C8129E8, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    sub_20CDADF48();
    v2 = sub_20CE13184();
    if (!v3)
    {
      atomic_store(v2, &qword_27C8129E0);
    }
  }
}

void sub_20CDADEF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_20CDADF48()
{
  result = qword_27C8129F0;
  if (!qword_27C8129F0)
  {
    sub_20CDADEF8(255, &qword_27C8129E8, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8129F0);
  }

  return result;
}

uint64_t sub_20CDADFDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CDAE024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationHighlightView.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDAE088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20CDAE0F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDAE154()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_20CE13B84();
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v2 = [v1 presentedViewController];

    if (v2)
    {

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_20CDAE22C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong presentViewController:a1 animated:1 completion:0];
  }
}

void sub_20CDAE2B4(void *a1, char a2, void (*a3)(void *), uint64_t a4)
{
  if (a2)
  {
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = v4;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;

    v10 = v4;
    v11 = a1;
    sub_20CD95DDC(sub_20CDAE3C8, v8, sub_20CDAE3D4, v9);
  }

  else
  {
    a3(a1);

    sub_20CDDE960();
  }
}

void sub_20CDAE3DC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isAppleInternalInstall];

    if (v4)
    {
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v5 = sub_20CE12CB4();
      __swift_project_value_buffer(v5, qword_27C817780);
      v6 = sub_20CE12C94();
      v7 = sub_20CE13CD4();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v14 = v9;
        *v8 = 136446210;
        v10 = sub_20CE14414();
        v12 = sub_20CD96DCC(v10, v11, &v14);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] User tapped to debug VFX View.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x20F314110](v9, -1, -1);
        MEMORY[0x20F314110](v8, -1, -1);
      }

      type metadata accessor for EvaluationVFXViewController();
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v1 presentViewController:v13 animated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDAE604()
{
  v1 = v0;
  v41.receiver = v0;
  v41.super_class = type metadata accessor for EvaluationVFXViewController();
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = *&v1[OBJC_IVAR____TtC13HearingTestUIP33_082BE27A287B6DD65B327A94BB91711E27EvaluationVFXViewController_vfxView];
  [v5 addSubview_];

  v8 = [v1 view];
  [v7 hk:v8 alignConstraintsWithView:?];

  sub_20CDA6B08(0);
  v9 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  [v9 addTarget:v1 action:sel_handleTap forControlEvents:64];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 addSubview_];

  v12 = [v1 view];
  [v9 hk:v12 alignConstraintsWithView:?];

  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = sub_20CE13914();
  [v13 setText_];

  [v13 setTextAlignment_];
  [v13 setNumberOfLines_];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v15;
  v17 = v13;
  [v16 addSubview_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v17 centerXAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  v21 = [v19 centerXAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  [v22 setActive_];

  v23 = [v17 topAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 topAnchor];
  v28 = [v23 constraintEqualToSystemSpacingBelowAnchor:v27 multiplier:2.0];

  [v28 setActive_];
  v29 = [v17 trailingAnchor];

  v30 = [v1 view];
  if (!v30)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = v30;
  v32 = [v30 safeAreaLayoutGuide];

  v33 = [v32 trailingAnchor];
  v34 = [v29 constraintLessThanOrEqualToSystemSpacingAfterAnchor:v33 multiplier:2.0];

  [v34 setActive_];
  v35 = [v17 leadingAnchor];

  v36 = [v1 view];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 safeAreaLayoutGuide];

    v39 = [v38 leadingAnchor];
    v40 = [v35 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v39 multiplier:2.0];

    [v40 setActive_];
    return;
  }

LABEL_17:
  __break(1u);
}

void sub_20CDAEB94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id sub_20CDAEF7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EvaluationVFXViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id HTUIHowToReduceNoiseViewController.init()()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v1 = sub_20CE13914();

  sub_20CE12354();
  v2 = sub_20CE13914();

  v3 = type metadata accessor for HTUIHowToReduceNoiseViewController();
  v18.receiver = v0;
  v18.super_class = v3;
  v4 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_contentLayout_, v1, v2, 0, 2);

  v5 = v4;
  v6 = [v5 navigationItem];
  sub_20CE12354();
  v17 = v3;
  v16[0] = v5;
  v7 = sub_20CE13914();

  if (v3)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v9 = *(v3 - 1);
    MEMORY[0x28223BE20](v8);
    v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_20CE14274();
    (*(v9 + 8))(v11, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v14 = [v13 initWithTitle:v7 style:2 target:v12 action:{sel_didTapDone, v16[0]}];

  swift_unknownObjectRelease();
  [v6 setRightBarButtonItem_];

  return v5;
}

void sub_20CDAF330(uint64_t a1, __n128 a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for HTUIHowToReduceNoiseViewController();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v3 = [v2 headerView];
  [v3 setTitleStyle_];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v4 = sub_20CE13914();

  v5 = sub_20CE13914();
  v6 = sub_20CE13914();
  [v2 addBulletedListItemWithTitle:v4 description:v5 symbolName:{v6, 0xE000000000000000}];

  sub_20CE12354();
  v7 = sub_20CE13914();

  v8 = sub_20CE13914();
  v9 = sub_20CE13914();
  [v2 addBulletedListItemWithTitle:v7 description:v8 symbolName:{v9, 0xE000000000000000}];

  sub_20CE12354();
  v10 = sub_20CE13914();

  v11 = sub_20CE13914();
  v12 = sub_20CE13914();
  [v2 addBulletedListItemWithTitle:v10 description:v11 symbolName:{v12, 0xE000000000000000}];
}

id HTUIHowToReduceNoiseViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20CE13914();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20CE13914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20CE13914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HTUIHowToReduceNoiseViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20CE13914();

  if (a4)
  {
    v12 = sub_20CE13914();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

uint64_t sub_20CDAF978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id HTUIHowToReduceNoiseViewController.__deallocating_deinit(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HTUIHowToReduceNoiseViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_20CDAFAAC()
{
  v0 = sub_20CE12BA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20CE12BC4();
  __swift_allocate_value_buffer(v4, qword_27C8178D8);
  __swift_project_value_buffer(v4, qword_27C8178D8);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v5 = qword_27C8179E8;
  *v3 = xmmword_20CE17980;
  (*(v1 + 104))(v3, *MEMORY[0x277D10EF0], v0);
  v6 = v5;
  return sub_20CE12BB4();
}

uint64_t sub_20CDAFC34()
{
  v0 = sub_20CE12BA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20CE12BC4();
  __swift_allocate_value_buffer(v4, qword_27C8178F0);
  __swift_project_value_buffer(v4, qword_27C8178F0);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v5 = qword_27C8179E8;
  __asm { FMOV            V1.2D, #2.25 }

  *v3 = xmmword_20CE17990;
  v3[1] = _Q1;
  (*(v1 + 104))(v3, *MEMORY[0x277D10F00], v0);
  v11 = v5;
  return sub_20CE12BB4();
}

uint64_t sub_20CDAFDE0(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v5 = sub_20CE12BA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE12BC4();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v10 = qword_27C8179E8;
  *v8 = xmmword_20CE179A0;
  *(v8 + 2) = 0x3FE3333333333333;
  (*(v6 + 104))(v8, *MEMORY[0x277D10EF8], v5);
  v11 = v10;
  return sub_20CE12BB4();
}

uint64_t sub_20CDAFF74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CDAFF94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_20CDAFFCC()
{
  sub_20CD96354(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_20CE12464();
    v5 = sub_20CE12474();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) == 1)
    {
      __break(1u);
    }

    else
    {
      v7 = sub_20CE12444();
      (*(v6 + 8))(v2, v5);
      sub_20CDF565C(MEMORY[0x277D84F90]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_20CDB0168();
      v8 = sub_20CE13874();

      [v4 openURL:v7 options:v8 completionHandler:0];
    }
  }
}

unint64_t sub_20CDB0168()
{
  result = qword_27C811FD8;
  if (!qword_27C811FD8)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811FD8);
  }

  return result;
}

uint64_t sub_20CDB01C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE13104();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDB1258(0, &qword_27C812390, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ClassificationDescriptionView(0);
  sub_20CDB1698(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20CE12FA4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20CE13CC4();
    v13 = sub_20CE13294();
    sub_20CE12C84();

    sub_20CE130F4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ClassificationDescriptionView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20CE131C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_20CDB0AF8(0);
  return sub_20CDB041C(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_20CDB041C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for ClassificationDescriptionView(0);
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = v4;
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDB0CC8(0);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDB0C60(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v43 - v10;
  v11 = sub_20CE12FA4();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20CE13354();
  v14 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  v49 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a1[1];
  v56 = *a1;
  v57 = v17;
  sub_20CD935CC();

  v18 = sub_20CE13414();
  v20 = v19;
  v22 = v21;
  sub_20CE132D4();
  sub_20CE13304();
  sub_20CE13344();

  sub_20CDB01C0(v13);
  LOBYTE(v17) = sub_20CD9B320();
  (*(v43 + 8))(v13, v44);
  v23 = MEMORY[0x277CE0A10];
  if ((v17 & 1) == 0)
  {
    v23 = MEMORY[0x277CE0A18];
  }

  v24 = v45;
  (*(v14 + 104))(v16, *v23, v45);
  sub_20CE13374();

  (*(v14 + 8))(v16, v24);
  v25 = sub_20CE133E4();
  v27 = v26;
  LODWORD(v44) = v28;
  v45 = v29;

  sub_20CD93620(v18, v20, v22 & 1);

  v30 = v48;
  sub_20CDB13C8(a1, v48, type metadata accessor for ClassificationDescriptionView);
  v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v32 = swift_allocObject();
  sub_20CDB12BC(v30, v32 + v31);
  sub_20CDB0C08();
  sub_20CDB0D2C();
  v33 = v50;
  sub_20CE13554();
  v35 = a1[2];
  v34 = a1[3];
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20CE16360;
  *(v36 + 32) = v35;
  *(v36 + 40) = v34;
  *(v36 + 48) = 0xD000000000000019;
  *(v36 + 56) = 0x800000020CE1D860;
  v56 = v36;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  sub_20CDB1380(&qword_27C812A70, sub_20CDB0CC8, MEMORY[0x277CDF028]);
  v37 = v53;
  v38 = v52;
  sub_20CE134A4();

  (*(v51 + 8))(v33, v38);
  v39 = v54;
  sub_20CDB13C8(v37, v54, sub_20CDB0C60);
  v40 = v55;
  *v55 = v25;
  v40[1] = v27;
  LOBYTE(v35) = v44 & 1;
  *(v40 + 16) = v44 & 1;
  v40[3] = v45;
  *(v40 + 16) = 256;
  v40[5] = 0x4014000000000000;
  *(v40 + 48) = 0;
  sub_20CDB0B90(0);
  sub_20CDB13C8(v39, v40 + *(v41 + 64), sub_20CDB0C60);
  sub_20CD93B54(v25, v27, v35);

  sub_20CDB1430(v37);
  sub_20CDB1430(v39);
  sub_20CD93620(v25, v27, v35);
}

void sub_20CDB0AF8(uint64_t a1)
{
  if (!qword_27C812A18)
  {
    sub_20CDB1258(255, &qword_27C812A20, sub_20CDB0B90, MEMORY[0x277CE14B8]);
    v1 = sub_20CE12F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812A18);
    }
  }
}

void sub_20CDB0B90(uint64_t a1)
{
  if (!qword_27C812A28)
  {
    sub_20CDB0C08();
    sub_20CDB0C60(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C812A28);
    }
  }
}

void sub_20CDB0C08()
{
  if (!qword_27C812528)
  {
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812528);
    }
  }
}

void sub_20CDB0C60(uint64_t a1)
{
  if (!qword_27C812A30)
  {
    sub_20CDB0CC8(255);
    sub_20CE13264();
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812A30);
    }
  }
}

void sub_20CDB0CC8(uint64_t a1)
{
  if (!qword_27C812A38)
  {
    sub_20CDB0C08();
    sub_20CDB0D2C();
    v1 = sub_20CE13564();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812A38);
    }
  }
}

unint64_t sub_20CDB0D2C()
{
  result = qword_27C812A40;
  if (!qword_27C812A40)
  {
    sub_20CDB0C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812A40);
  }

  return result;
}

uint64_t sub_20CDB0DC0(uint64_t a1)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 32))(isCurrentExecutor);
}

uint64_t sub_20CDB0E64@<X0>(uint64_t a1@<X8>)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  sub_20CD935CC();
  v2 = sub_20CE13414();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 256;
  return result;
}

uint64_t sub_20CDB0FC4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20CE131C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_20CDB0AF8(0);
  return sub_20CDB041C(v2, (a2 + *(v4 + 44)));
}

uint64_t type metadata accessor for ClassificationDescriptionView(uint64_t a1)
{
  result = qword_27C812A48;
  if (!qword_27C812A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDB1080(uint64_t a1)
{
  sub_20CDB1258(319, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_20CDB113C(uint64_t a1)
{
  if (!qword_27C812A60)
  {
    sub_20CDB1258(255, &qword_27C812A20, sub_20CDB0B90, MEMORY[0x277CE14B8]);
    sub_20CDB11D0();
    v1 = sub_20CE13584();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812A60);
    }
  }
}

unint64_t sub_20CDB11D0()
{
  result = qword_27C812A68;
  if (!qword_27C812A68)
  {
    sub_20CDB1258(255, &qword_27C812A20, sub_20CDB0B90, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812A68);
  }

  return result;
}

void sub_20CDB1258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDB12BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationDescriptionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDB1320()
{
  v1 = *(type metadata accessor for ClassificationDescriptionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20CDB0DC0(v2);
}

uint64_t sub_20CDB1380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CDB13C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CDB1430(uint64_t a1)
{
  sub_20CDB0C60(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CDB148C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CE13104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDB1258(0, &qword_27C812390, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_20CDB1698(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20CE12FA4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_20CE13CC4();
    v13 = sub_20CE13294();
    sub_20CE12C84();

    sub_20CE130F4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20CDB1698(uint64_t a1, uint64_t a2)
{
  sub_20CDB1258(0, &qword_27C812390, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDB172C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  return swift_deallocClassInstance();
}

void sub_20CDB17AC()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D12B98]) init];
  v3 = v0[4];
  v0[4] = v2;
  v4 = v2;

  if (v4)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v1;
    v22 = sub_20CDB1F64;
    v23 = v6;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_20CD95834;
    v21 = &block_descriptor_2;
    v7 = _Block_copy(&v18);

    [v4 setDeviceRecordChangedHandler_];
    _Block_release(v7);
  }

  v8 = v0[4];
  if (v8)
  {
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v1;
    v22 = sub_20CDB2184;
    v23 = v10;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_20CDB3E40;
    v21 = &block_descriptor_16;
    v11 = _Block_copy(&v18);
    v12 = v8;

    [v12 setInterruptionHandler_];
    _Block_release(v11);

    v13 = v0[4];
    if (v13)
    {
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v1;
      v22 = sub_20CDB24DC;
      v23 = v15;
      v18 = MEMORY[0x277D85DD0];
      v19 = 1107296256;
      v20 = sub_20CDB24E4;
      v21 = &block_descriptor_25;
      v16 = _Block_copy(&v18);
      v17 = v13;

      [v17 activateWithCompletion_];
      _Block_release(v16);
    }
  }
}

void sub_20CDB1AB4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_20CE12DF4();

    sub_20CE12DF4();

    v4 = [a1 bluetoothUUID];
    v5 = sub_20CE13954();
    v7 = v6;

    v8 = [a1 hearingAidEnabled] == 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE092A0(v8, v5, v7, isUniquelyReferenced_nonNull_native);

    v10 = [a1 bluetoothUUID];
    v11 = sub_20CE13954();
    v13 = v12;

    v14 = [a1 mediaAssistEnabled] == 1;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_20CE092A0(v14, v11, v13, v15);

    sub_20CE12DE4();

    v39[0] = v39[1];

    sub_20CE12DE4();

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v16 = sub_20CE12CB4();
    __swift_project_value_buffer(v16, qword_27C817780);
    v17 = sub_20CE12C94();
    v18 = sub_20CE13CD4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39[0] = v20;
      *v19 = 136446466;
      v21 = sub_20CE14414();
      v23 = sub_20CD96DCC(v21, v22, v39);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;

      v24 = sub_20CE13894();
      v26 = v25;

      v27 = sub_20CD96DCC(v24, v26, v39);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_20CD70000, v17, v18, "[%{public}s] New HMDeviceRecords for Hearing Aid: %s.", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v20, -1, -1);
      MEMORY[0x20F314110](v19, -1, -1);
    }

    v28 = sub_20CE12C94();
    v29 = sub_20CE13CD4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136446466;
      v32 = sub_20CE14414();
      v34 = sub_20CD96DCC(v32, v33, v39);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;

      v35 = sub_20CE13894();
      v37 = v36;

      v38 = sub_20CD96DCC(v35, v37, v39);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_20CD70000, v28, v29, "[%{public}s] New HMDeviceRecords for Media Assist: %s.", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v31, -1, -1);
      MEMORY[0x20F314110](v30, -1, -1);
    }
  }
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_20CDB1F84(uint64_t a1, uint64_t a2)
{
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136446210;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] HearingModeService notified an interruption. Re-creating HMServiceClient.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 32);

    [v11 invalidate];
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 32);
    *(v12 + 32) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20CDB17AC();
  }

  return result;
}

void sub_20CDB218C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v5 = sub_20CE12CB4();
    __swift_project_value_buffer(v5, qword_27C817780);
    v6 = a1;
    v7 = sub_20CE12C94();
    v8 = sub_20CE13CB4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27[0] = v10;
      *v9 = 136446466;
      v11 = sub_20CE14414();
      v13 = sub_20CD96DCC(v11, v12, v27);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      swift_getErrorValue();
      v14 = sub_20CE14324();
      v16 = sub_20CD96DCC(v14, v15, v27);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] Failed to activate HMServiceClient. Error: %s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v10, -1, -1);
      MEMORY[0x20F314110](v9, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      [Strong invalidate];
    }

    else
    {
    }
  }

  else
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v19 = sub_20CE12CB4();
    __swift_project_value_buffer(v19, qword_27C817780);
    oslog = sub_20CE12C94();
    v20 = sub_20CE13CD4();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27[0] = v22;
      *v21 = 136446210;
      v23 = sub_20CE14414();
      v25 = sub_20CD96DCC(v23, v24, v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_20CD70000, oslog, v20, "[%{public}s] Successfully activated HMServiceClient.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x20F314110](v22, -1, -1);
      MEMORY[0x20F314110](v21, -1, -1);
    }

    else
    {
    }
  }
}

void sub_20CDB24E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void HearingTestStep.isSkipped.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (v1 - 7 >= 3)
    {
      v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v6 = sub_20CE13914();
      v4 = [v5 initWithSuiteName_];

      if (v4)
      {
        sub_20CE0F0FC();
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (v1 - 2 < 4)
    {
      v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v3 = sub_20CE13914();
      v4 = [v2 initWithSuiteName_];

      if (v4)
      {
        sub_20CE0F1E0();
LABEL_5:

        return;
      }

      __break(1u);
      goto LABEL_14;
    }

    if (*v0)
    {
      v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v8 = sub_20CE13914();
      v4 = [v7 initWithSuiteName_];

      if (v4)
      {
        sub_20CE0F018();
        goto LABEL_5;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
    }
  }
}

BOOL HearingTestStep.requiresActiveHTSession.getter()
{
  if (*v0)
  {
    v1 = *v0 == 9;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t HearingTestStep.hashValue.getter()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

unint64_t sub_20CDB2804()
{
  result = qword_27C812A78;
  if (!qword_27C812A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812A78);
  }

  return result;
}

unint64_t sub_20CDB285C()
{
  result = qword_27C812A80;
  if (!qword_27C812A80)
  {
    sub_20CDB28B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812A80);
  }

  return result;
}

void sub_20CDB28B4()
{
  if (!qword_27C812A88)
  {
    v0 = sub_20CE13B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812A88);
    }
  }
}

uint64_t getEnumTagSinglePayload for HearingTestStep(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HearingTestStep(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static AirWaveDeepLinkBuilder.makeDeepLinkURL()@<X0>(uint64_t a1@<X8>)
{
  sub_20CDB2D30(0, &qword_27C812600, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_20CE121F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE121E4();
  sub_20CE121D4();
  MEMORY[0x20F3116D0](0x6F69647561, 0xE500000000000000);
  sub_20CDB2D30(0, &unk_27C812A90, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  sub_20CE12194();
  *(swift_allocObject() + 16) = xmmword_20CE16370;
  sub_20CE12184();
  sub_20CE121A4();
  sub_20CE121B4();
  v9 = sub_20CE12474();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v4, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }

  return result;
}

void sub_20CDB2D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_20CDB2DB4@<X0>(void *a1@<X8>)
{
  v12 = MEMORY[0x277D84F90];
  sub_20CDB46F0(0, 16, 0);
  v2 = 0;
  v3 = v12;
  do
  {
    do
    {
      v11 = 0;
      result = MEMORY[0x20F314120](&v11, 8);
      v5 = 16777217 * v11;
    }

    while (v5 < 0xFFFF01);
    v6 = HIDWORD(v5);
    v7 = (vcvts_n_f32_u64(v6, 0x18uLL) * 100.0) + 0.0;
    if (v6 == 0x1000000)
    {
      v8 = 100.0;
    }

    else
    {
      v8 = v7;
    }

    v12 = v3;
    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_20CDB46F0((v9 > 1), v10 + 1, 1);
      v3 = v12;
    }

    ++v2;
    *(v3 + 16) = v10 + 1;
    *(v3 + 4 * v10 + 32) = v8;
  }

  while (v2 != 16);
  *a1 = v3;
  return result;
}

char *sub_20CDB2EE8@<X0>(void *a1@<X8>)
{
  v12 = MEMORY[0x277D84F90];
  sub_20CDB46F0(0, 16, 0);
  v2 = 0;
  v3 = v12;
  do
  {
    do
    {
      v11 = 0;
      result = MEMORY[0x20F314120](&v11, 8);
      v5 = 16777217 * v11;
    }

    while (v5 < 0xFFFF01);
    v6 = HIDWORD(v5);
    v7 = (vcvts_n_f32_u64(v6, 0x18uLL) * 20.0) + 0.0;
    if (v6 == 0x1000000)
    {
      v8 = 20.0;
    }

    else
    {
      v8 = v7;
    }

    v12 = v3;
    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_20CDB46F0((v9 > 1), v10 + 1, 1);
      v3 = v12;
    }

    ++v2;
    *(v3 + 16) = v10 + 1;
    *(v3 + 4 * v10 + 32) = v8;
  }

  while (v2 != 16);
  *a1 = v3;
  return result;
}

uint64_t MockNoiseStatusProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  MockNoiseStatusProvider.init()();
  return v0;
}

uint64_t MockNoiseStatusProvider.init()()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = 100;
  sub_20CDB4710(0, 100, 0);
  v4 = v16;
  do
  {
    sub_20CDB2DB4(&v15);
    v5 = v15;
    v16 = v4;
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_20CDB4710((v6 > 1), v7 + 1, 1);
      v4 = v16;
    }

    *(v4 + 16) = v7 + 1;
    *(v4 + 8 * v7 + 32) = v5;
    --v3;
  }

  while (v3);
  *(v1 + 16) = v4;
  v16 = v2;
  v8 = 100;
  sub_20CDB4710(0, 100, 0);
  v9 = v16;
  do
  {
    sub_20CDB2EE8(&v15);
    v10 = v15;
    v16 = v9;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_20CDB4710((v11 > 1), v12 + 1, 1);
      v9 = v16;
    }

    *(v9 + 16) = v12 + 1;
    *(v9 + 8 * v12 + 32) = v10;
    --v8;
  }

  while (v8);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  v13 = *(v1 + 16);
  *(v1 + 24) = v9;
  *(v1 + 32) = v13;
  *(v1 + 56) = 1;

  return v1;
}

uint64_t sub_20CDB31C0()
{
  v0 = sub_20CE136C4();
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x28223BE20](v0);
  v31 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20CE136E4();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20CE136B4();
  v3 = *(v37 - 8);
  v4 = MEMORY[0x28223BE20](v37);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (&v29 - v7);
  v9 = sub_20CE13704();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v36 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20CE13D84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20CD83128(0, &qword_27C812B88, 0x277D85CA0);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20CDB59A8(&qword_27C812B90, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  v15 = MEMORY[0x277D85278];
  sub_20CDB54FC(0, &qword_27C812B98, MEMORY[0x277D85278], MEMORY[0x277D83940]);
  sub_20CDB59F0(&qword_27C812BA0, &qword_27C812B98, v15);
  sub_20CE14044();
  v16 = sub_20CE13D94();
  v17 = v14;
  v18 = v40;
  (*(v12 + 8))(v17, v11);
  *(v18 + 40) = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v20 = v36;
  sub_20CE136F4();
  *v8 = 100;
  v21 = *(v3 + 104);
  v22 = v37;
  v21(v8, *MEMORY[0x277D85178], v37);
  *v6 = 0;
  v21(v6, *MEMORY[0x277D85168], v22);
  MEMORY[0x20F3132F0](v20, v8, v6, ObjectType);
  swift_unknownObjectRelease();
  v23 = *(v3 + 8);
  v23(v6, v22);
  v23(v8, v22);
  result = (*(v38 + 8))(v20, v39);
  if (*(v18 + 40))
  {
    swift_getObjectType();
    v25 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_20CDB5A54;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CDB3E40;
    aBlock[3] = &block_descriptor_36;
    v26 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v27 = v29;
    sub_20CE136D4();
    v28 = v31;
    sub_20CDB382C();
    sub_20CE13DA4();
    _Block_release(v26);
    swift_unknownObjectRelease();
    (*(v33 + 8))(v28, v34);
    (*(v30 + 8))(v27, v32);

    if (*(v18 + 40))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_20CE13DC4();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20CDB37D4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20CDB39B4();
  }

  return result;
}

uint64_t sub_20CDB382C()
{
  sub_20CE136C4();
  sub_20CDB59A8(&qword_27C812AB8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v0 = MEMORY[0x277D85198];
  sub_20CDB54FC(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_20CDB59F0(&qword_27C812AC8, &qword_27C812AC0, v0);
  return sub_20CE14044();
}

uint64_t sub_20CDB3928()
{
  if (*(v0 + 40))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_20CE13DB4();
    swift_unknownObjectRelease();
  }

  *(v0 + 40) = 0;
  swift_unknownObjectRelease();
  *(v0 + 32) = *(v0 + 24);
  *(v0 + 48) = 0;

  result = sub_20CDB31C0();
  *(v0 + 56) = 0;
  return result;
}

uint64_t sub_20CDB39B4()
{
  v1 = sub_20CE136C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20CE136E4();
  result = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[6];
  v11 = v0[4];
  v12 = *(v11 + 16);
  if (v10 == v12)
  {
    v10 = 0;
    v0[6] = 0;
  }

  if (v10 >= v12)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v11 + 8 * v10 + 32);
    v0[6] = v10 + 1;
    v14 = v0[13];
    if (v14)
    {
      v23 = v7;
      v24 = result;
      v15 = swift_allocObject();
      v22 = v2;
      v16 = v1;
      v17 = v15;
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v13;
      aBlock[4] = sub_20CDB583C;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CDB3E40;
      aBlock[3] = &block_descriptor_32;
      v19 = _Block_copy(aBlock);

      v20 = v14;

      sub_20CE136D4();
      v25 = MEMORY[0x277D84F90];
      sub_20CDB59A8(&qword_27C812AB8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v21 = MEMORY[0x277D85198];
      sub_20CDB54FC(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_20CDB59F0(&qword_27C812AC8, &qword_27C812AC0, v21);
      sub_20CE14044();
      MEMORY[0x20F313260](0, v9, v4, v19);
      _Block_release(v19);

      (*(v22 + 8))(v4, v16);
      (*(v23 + 8))(v9, v24);
    }
  }

  return result;
}

uint64_t sub_20CDB3D18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 56);
    v15 = &type metadata for MockNoiseData;
    v16 = &off_2823BD3B0;
    v13 = a2;
    v14 = 0;
    v17 = v5;
    swift_beginAccess();
    sub_20CDB5844(v4 + 64, v11);
    if (v12)
    {
      sub_20CD7C388(v11, v8);

      sub_20CDB5560(v11);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 8))(&v13, v6, v7);

      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }

    else
    {

      sub_20CDB5560(v11);
    }

    return sub_20CD85934(&v13);
  }

  return result;
}

uint64_t sub_20CDB3E40(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_20CDB3E84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    *(a1 + 24) = &type metadata for MockNoiseData;
    *(a1 + 32) = &off_2823BD3B0;
    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 40) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20CDB3EC0(uint64_t a1, void *a2)
{
  v3 = v2;
  v35 = sub_20CE136C4();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE136E4();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE136B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_20CE13704();
  v31 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  sub_20CD7C388(a1, aBlock);
  swift_beginAccess();
  sub_20CDB53E4(aBlock, v3 + 64);
  swift_endAccess();
  v20 = *(v3 + 104);
  *(v3 + 104) = a2;
  v21 = a2;

  sub_20CDB31C0();
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  v32 = sub_20CE13D44();
  sub_20CE136F4();
  *v12 = 5;
  (*(v10 + 104))(v12, *MEMORY[0x277D85188], v9);
  MEMORY[0x20F312C30](v17, v12);
  (*(v10 + 8))(v12, v9);
  v22 = *(v14 + 8);
  v22(v17, v13);
  aBlock[4] = sub_20CDB54DC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_3;
  v23 = _Block_copy(aBlock);

  v24 = v33;
  sub_20CE136D4();
  aBlock[6] = MEMORY[0x277D84F90];
  sub_20CDB59A8(&qword_27C812AB8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v25 = MEMORY[0x277D85198];
  sub_20CDB54FC(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_20CDB59F0(&qword_27C812AC8, &qword_27C812AC0, v25);
  v26 = v34;
  v27 = v35;
  sub_20CE14044();
  v28 = v32;
  MEMORY[0x20F313230](v19, v24, v26, v23);
  _Block_release(v23);

  (*(v38 + 8))(v26, v27);
  (*(v36 + 8))(v24, v37);
  v22(v19, v31);
}

uint64_t sub_20CDB43AC()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CDB3928();
}

uint64_t sub_20CDB444C()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  sub_20CDB53E4(v3, (v0 + 8));
  swift_endAccess();
  v1 = v0[13];
  v0[13] = 0;

  if (v0[5])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_20CE13DB4();
    swift_unknownObjectRelease();
  }

  v0[5] = 0;
  result = swift_unknownObjectRelease();
  v0[6] = 0;
  return result;
}

uint64_t MockNoiseStatusProvider.deinit()
{

  swift_unknownObjectRelease();
  sub_20CDB5560(v0 + 64);

  return v0;
}

uint64_t MockNoiseStatusProvider.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  sub_20CDB5560(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_20CDB45A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    *(a1 + 24) = &type metadata for MockNoiseData;
    *(a1 + 32) = &off_2823BD3B0;
    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 40) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_20CDB4630(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CDB4750(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CDB4650(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CDB489C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20CDB4670(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CDB49C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CDB4690(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CDB4BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CDB46B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CDB4CE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CDB46D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CDB4E00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CDB46F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CDB4F28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20CDB4710(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CDB5044(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20CDB4730(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CDB5184(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20CDB4750(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_20CDB54FC(0, &qword_27C812B50, sub_20CDB5934, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_20CDB5934(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20CDB489C(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CDB5AD8(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_20CDB49C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_20CDB54FC(0, &qword_27C812388, MEMORY[0x277D12CA8], MEMORY[0x277D84560]);
  v10 = *(sub_20CE12854() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_20CE12854() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_20CDB4BBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CDB54FC(0, &qword_27C812B40, sub_20CDB58D8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_20CDB4CE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CDB5AD8(0, &qword_27C812B80, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_20CDB4E00(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CDB54FC(0, &qword_27C8129B0, sub_20CDACDB0, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_20CDB4F28(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CDB5AD8(0, &qword_27C812BA8, MEMORY[0x277D83A90], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_20CDB5044(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_20CDB5A5C(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_20CDB5AD8(0, &qword_27C812BB8, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20CDB5184(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CDB5AD8(0, &unk_27C812B30, &type metadata for HearingTestInterruptionType, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t _s13HearingTestUI11NoiseStatusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_20CD85764(a1, v15);
  v3 = v16;
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  v4 = 0x7065636341746F4ELL;
  v5 = 0xED0000656C626174;
  if (v3 != 1)
  {
    v4 = 0x6572676F72506E49;
    v5 = 0xEA00000000007373;
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6261747065636341;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA0000000000656CLL;
  }

  sub_20CD85764(a2, v15);
  v8 = v16;
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  v9 = 0x7065636341746F4ELL;
  v10 = 0xED0000656C626174;
  if (v8 != 1)
  {
    v9 = 0x6572676F72506E49;
    v10 = 0xEA00000000007373;
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x6261747065636341;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xEA0000000000656CLL;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_20CE14284();
  }

  return v13 & 1;
}

uint64_t sub_20CDB53E4(uint64_t a1, uint64_t a2)
{
  sub_20CDB54FC(0, &unk_27C812AA0, sub_20CDB5478, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CDB5478()
{
  result = qword_27C812850;
  if (!qword_27C812850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C812850);
  }

  return result;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_20CDB54FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDB5560(uint64_t a1)
{
  sub_20CDB54FC(0, &unk_27C812AA0, sub_20CDB5478, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
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

uint64_t sub_20CDB5648(uint64_t a1, unsigned int a2)
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

uint64_t sub_20CDB5684(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_20CDB56D0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_20CDB5844(uint64_t a1, uint64_t a2)
{
  sub_20CDB54FC(0, &unk_27C812AA0, sub_20CDB5478, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CDB58D8()
{
  if (!qword_27C812B48)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C812B48);
    }
  }
}

void sub_20CDB5934(uint64_t a1)
{
  if (!qword_27C812B58)
  {
    sub_20CD83128(255, &unk_27C812B60, 0x277CCD7E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C812B58);
    }
  }
}

uint64_t sub_20CDB59A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CDB59F0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_20CDB54FC(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CDB5A5C(uint64_t a1)
{
  if (!qword_27C812BB0)
  {
    sub_20CDB5AD8(255, &qword_27C812BB8, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    v1 = sub_20CE14264();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812BB0);
    }
  }
}

void sub_20CDB5AD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t LabelledProgressView.Model.__allocating_init(title:titleAbbreviation:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 56) = 1;
  sub_20CE12B24();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 64) = a5;
  *(v10 + 48) = a5;
  return v10;
}

uint64_t LabelledProgressView.Model.init(title:titleAbbreviation:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 56) = 1;
  sub_20CE12B24();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 64) = a5;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t sub_20CDB5C40(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
    sub_20CE12AE4();
  }

  return result;
}

uint64_t sub_20CDB5D50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_20CE14284() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
    sub_20CE12AE4();
  }
}

uint64_t sub_20CDB5EB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_20CE14284() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
    sub_20CE12AE4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void sub_20CDB6020(double a1)
{
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
    sub_20CE12AE4();
  }
}

uint64_t sub_20CDB6138()
{
  swift_getKeyPath();
  sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
  sub_20CE12AF4();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_20CDB61E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
  sub_20CE12AF4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_20CDB6294(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_20CDB5D50(v1, v2);
}

uint64_t sub_20CDB62D4()
{
  swift_getKeyPath();
  sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
  sub_20CE12AF4();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_20CDB6384@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
  sub_20CE12AF4();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_20CDB6430(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_20CDB5EB0(v1, v2);
}

double sub_20CDB6470()
{
  swift_getKeyPath();
  sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
  sub_20CE12AF4();

  return *(v0 + 48);
}

double sub_20CDB6510@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
  sub_20CE12AF4();

  result = *(v3 + 48);
  *a2 = result;
  return result;
}

uint64_t sub_20CDB65E0()
{
  swift_getKeyPath();
  sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
  sub_20CE12AF4();

  return *(v0 + 56);
}

uint64_t sub_20CDB6680@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
  sub_20CE12AF4();

  *a2 = *(v3 + 56);
  return result;
}

void sub_20CDB6728()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_20CE12434();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CE12544();
  MEMORY[0x28223BE20](v6 - 8);
  sub_20CDB70C8(0);
  v8 = v7;
  v32 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = *(v0 + 64);
  if (*(v0 + 48) == v14)
  {
    *(v0 + 48) = v14;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v31 = v2;
    MEMORY[0x28223BE20](KeyPath);
    v28[-2] = v0;
    *&v28[-1] = v14;
    v36 = v0;
    sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
    sub_20CE12AE4();
  }

  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v16 = sub_20CE12CB4();
  __swift_project_value_buffer(v16, qword_27C817768);
  swift_retain_n();
  v17 = sub_20CE12C94();
  v18 = sub_20CE13CD4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38[0] = v31;
    *v19 = 136446722;
    v20 = sub_20CE14414();
    v30 = v18;
    v22 = sub_20CD96DCC(v20, v21, v38);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    swift_getKeyPath();
    v29 = v17;
    v28[2] = OBJC_IVAR____TtCV13HearingTestUI20LabelledProgressView5Model___observationRegistrar;
    v36 = v1;
    v28[1] = sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
    sub_20CE12AF4();

    v35 = *(v1 + 48);
    sub_20CE12534();
    sub_20CDA1354();
    sub_20CE123C4();
    sub_20CE12424();
    MEMORY[0x20F3118E0](v5, v8);
    (*(v33 + 8))(v5, v34);
    v23 = *(v32 + 8);
    v23(v11, v8);
    sub_20CDB7134(&qword_27C812BE8, sub_20CDB70C8, MEMORY[0x277CC9158]);
    sub_20CE13864();
    v23(v13, v8);
    v24 = sub_20CD96DCC(v36, v37, v38);

    *(v19 + 14) = v24;
    *(v19 + 22) = 1024;
    swift_getKeyPath();
    v36 = v1;
    sub_20CE12AF4();

    v25 = *(v1 + 56);

    *(v19 + 24) = v25;

    v26 = v29;
    _os_log_impl(&dword_20CD70000, v29, v30, "[%{public}s] Updating user-visible progress to %s. Animated: %{BOOL}d.", v19, 0x1Cu);
    v27 = v31;
    swift_arrayDestroy();
    MEMORY[0x20F314110](v27, -1, -1);
    MEMORY[0x20F314110](v19, -1, -1);
  }

  else
  {
  }
}

void sub_20CDB6D08(unsigned __int8 a1, double a2)
{
  v3 = v2;
  sub_20CE138D4();
  *(v2 + 64) = v7;
  v5 = (a1 ^ 1) & 1;
  if (v5 != *(v3 + 56))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CDB7134(&qword_27C812BE0, type metadata accessor for LabelledProgressView.Model, &protocol conformance descriptor for LabelledProgressView.Model);
    sub_20CE12AE4();

    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  *(v3 + 56) = v5;
  if (a1)
  {
LABEL_5:
    sub_20CDB6728();
  }
}

uint64_t LabelledProgressView.Model.deinit()
{

  v1 = OBJC_IVAR____TtCV13HearingTestUI20LabelledProgressView5Model___observationRegistrar;
  v2 = sub_20CE12B34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LabelledProgressView.Model.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCV13HearingTestUI20LabelledProgressView5Model___observationRegistrar;
  v2 = sub_20CE12B34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LabelledProgressView.Model(uint64_t a1)
{
  result = qword_27C812BC8;
  if (!qword_27C812BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CDB6FDC(uint64_t a1)
{
  result = sub_20CE12B34();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_20CDB70C8(uint64_t a1)
{
  if (!qword_27C812BD8)
  {
    sub_20CDA1354();
    v1 = sub_20CE123E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812BD8);
    }
  }
}

double sub_20CDB7124()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

uint64_t sub_20CDB7134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CDB718C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_20CDB71CC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_20CDB7250(uint64_t a1, uint64_t *a2)
{
  sub_20CD849AC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD7DC78(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_20CDB7308@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_stepStartTime;
  swift_beginAccess();
  return sub_20CD7DC78(v1 + v3, a1);
}

uint64_t sub_20CDB7360(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20CDB7440(uint64_t a1)
{
  v2 = [objc_opt_self() boldButton];
  v3 = sub_20CE13914();
  [v2 setTitle:v3 forState:0];

  [v2 addTarget:a1 action:sel_continueButtonTapped_ forControlEvents:64];
  v5 = *(a1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase);
  v4 = *(a1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase + 8);
  v6 = MEMORY[0x277D837D0];
  sub_20CDAA04C(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16360;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  strcpy((v7 + 48), "ContinueButton");
  *(v7 + 63) = -18;
  sub_20CDAA04C(0, &qword_27C8121F0, v6, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v8 = v2;

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [v8 setAccessibilityIdentifier_];

  return v8;
}

id sub_20CDB763C(uint64_t a1)
{
  v2 = [objc_opt_self() boldButton];
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v3 = sub_20CE13914();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:a1 action:sel_takeTestAgainButtonTapped_ forControlEvents:64];
  v5 = *(a1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase);
  v4 = *(a1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase + 8);
  v6 = MEMORY[0x277D837D0];
  sub_20CDAA04C(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16360;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = 0xD000000000000013;
  *(v7 + 56) = 0x800000020CE1DC50;
  sub_20CDAA04C(0, &qword_27C8121F0, v6, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v8 = v2;

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [v8 setAccessibilityIdentifier_];

  return v8;
}

id sub_20CDB78AC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_20CDB7910(uint64_t a1)
{
  v2 = [objc_opt_self() boldButton];
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v3 = sub_20CE13914();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:a1 action:sel_doneButtonTapped_ forControlEvents:64];
  v5 = *(a1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase);
  v4 = *(a1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase + 8);
  v6 = MEMORY[0x277D837D0];
  sub_20CDAA04C(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16360;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = 0x74747542656E6F44;
  *(v7 + 56) = 0xEA00000000006E6FLL;
  sub_20CDAA04C(0, &qword_27C8121F0, v6, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v8 = v2;

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [v8 setAccessibilityIdentifier_];

  return v8;
}

id sub_20CDB7BC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = sub_20CDB7C24(v4, a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

id sub_20CDB7C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:a2 target:a1 action:sel_cancelButtonTapped_];
  v9 = *(a1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase);
  v8 = *(a1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase + 8);
  v10 = MEMORY[0x277D837D0];
  sub_20CDAA04C(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20CE16360;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;
  sub_20CDAA04C(0, &qword_27C8121F0, v10, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v12 = v7;

  sub_20CE138C4();

  v13 = sub_20CE13914();

  [v12 setAccessibilityIdentifier_];

  return v12;
}

void sub_20CDB7E58(char a1, char a2)
{
  v3 = v2;
  v20 = MEMORY[0x277D84F90];
  v6 = [v3 buttonTray];
  if (a2)
  {
    v7 = sub_20CDB761C();
  }

  else
  {
    if (a1)
    {
      v8 = sub_20CDB788C();
      [v6 addButton_];

      sub_20CDB7B94();
      goto LABEL_7;
    }

    v7 = sub_20CDB7420();
  }

  v9 = v7;
  [v6 addButton_];

  sub_20CDB7B64();
LABEL_7:
  MEMORY[0x20F312FA0]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20CE13AD4();
  }

  sub_20CE13AF4();
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_20CE13914();
  v12 = [v10 initWithSuiteName_];

  if (v12)
  {
    sub_20CE11910();
    v14 = v13;

    if (v14)
    {
      v19[3] = type metadata accessor for HearingTestStepViewController(0);
      v19[0] = v3;
      v15 = v3;
      sub_20CDEA770(v19, sel_invokeTapToRadar);
      v16 = sub_20CD8CFF0(v19);
      MEMORY[0x20F312FA0](v16);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20CE13AD4();
      }

      sub_20CE13AF4();
    }

    v17 = [v3 navigationItem];
    sub_20CDB9CF4();
    v18 = sub_20CE13AA4();

    [v17 setRightBarButtonItems_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDB80DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v5 = a1;
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  v6 = *&v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager];
  v10 = v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_step];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v6;
  sub_20CDE44CC(v5, &v10, v8, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

void sub_20CDB8304()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager;
  v2 = *(*(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v6 = 4;
  v4 = *(v2 + 48);
  swift_unknownObjectRetain();
  v4(&v6, v0, &protocol witness table for HearingTestStepViewController, ObjectType, v2);
  swift_unknownObjectRelease();
  v5 = *(v0 + v1);
  sub_20CDDE960();
}

void sub_20CDB84E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = sub_20CE13914();
  [v3 setTitle:v4 forState:0];
}

void sub_20CDB8560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v11 = sub_20CDB7420();
        [v11 hidesBusyIndicator];
        goto LABEL_13;
      }

      if (a4 != 3)
      {
LABEL_9:
        sub_20CD95C28(a1, a2, a3, a4, 0);
LABEL_14:

        return;
      }

      v12 = *(*(Strong + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
      ObjectType = swift_getObjectType();
      v14 = 3;
    }

    else
    {
      if (a4)
      {
        if (a4 == 1)
        {
          v11 = sub_20CDB7420();
          [v11 showsBusyIndicator];
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_9;
      }

      v12 = *(*(Strong + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
      ObjectType = swift_getObjectType();
      v14 = 1;
    }

    v16 = v14;
    v15 = *(v12 + 48);
    swift_unknownObjectRetain();
    v15(&v16, v10, &protocol witness table for HearingTestStepViewController, ObjectType, v12);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20CDB86F4(char a1)
{
  sub_20CD849AC(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for HearingTestStepViewController(0);
  v19.receiver = v1;
  v19.super_class = v6;
  objc_msgSendSuper2(&v19, sel_viewDidAppear_, a1 & 1);
  v7 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager;
  v8 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager];
  v9 = *__swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager], *&v8[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24]);
  v10 = v8;
  sub_20CDB8E84(v1, v9);

  sub_20CE124D4();
  v11 = sub_20CE124E4();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v5, &v1[v12]);
  swift_endAccess();
  v13 = *(*&v1[v7] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v18[0] = 0;
  v15 = *(v13 + 48);
  swift_unknownObjectRetain();
  v15(v18, v1, &protocol witness table for HearingTestStepViewController, ObjectType, v13);
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for HearingTestStepViewController(uint64_t a1)
{
  result = qword_281111728;
  if (!qword_281111728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CDB8AF4()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1E0))();
  v2 = sub_20CDB97F4(v1);

  return v2;
}

id HearingTestStepViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20CE13914();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20CE13914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20CE13914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HearingTestStepViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestStepViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CDB8E24()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager);
  v5 = *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_step);
  v2 = v1;
  v3 = sub_20CDDFE8C(&v5);

  return v3;
}

void sub_20CDB8E84(void *a1, uint64_t a2)
{
  swift_getObjectType();
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v4 = sub_20CE12CB4();
  __swift_project_value_buffer(v4, qword_27C8177B0);
  v5 = a1;
  v6 = sub_20CE12C94();
  v7 = sub_20CE13CD4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136446466;
    nullsub_1();
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, &v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    type metadata accessor for HearingTestStepViewController(0);
    v13 = v5;
    v14 = sub_20CE13974();
    v16 = sub_20CD96DCC(v14, v15, &v25);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] Setting listener to %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener + 8) = &off_2823BD470;
  v17 = swift_unknownObjectWeakAssign();
  v18 = (*((*MEMORY[0x277D85000] & *v5) + 0x1E0))(v17);
  v19 = sub_20CDB97F4(v18);

  *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions) = v19;

  v20 = [objc_allocWithZone(MEMORY[0x277CBEB40]) initWithOrderedSet_];

  sub_20CE016F4(v21);

  v22 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v23 = sub_20CE13C34();

  v24 = [v22 initWithSet_];

  [v20 intersectOrderedSet_];
  sub_20CE01910(v20);
}

void sub_20CDB91B4(void *a1, uint64_t a2)
{
  swift_getObjectType();
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v4 = sub_20CE12CB4();
  __swift_project_value_buffer(v4, qword_27C8177B0);
  v5 = a1;
  v6 = sub_20CE12C94();
  v7 = sub_20CE13CD4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446466;
    nullsub_1();
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    type metadata accessor for HTUIEvaluationViewController(0);
    v13 = v5;
    v14 = sub_20CE13974();
    v16 = sub_20CD96DCC(v14, v15, &v22);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] Setting listener to %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener + 8) = &off_2823BDB50;
  swift_unknownObjectWeakAssign();
  *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions) = sub_20CDB97F4(&unk_2823BAFA0);

  v17 = [objc_allocWithZone(MEMORY[0x277CBEB40]) initWithOrderedSet_];

  sub_20CE016F4(v18);

  v19 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v20 = sub_20CE13C34();

  v21 = [v19 initWithSet_];

  [v17 intersectOrderedSet_];
  sub_20CE01910(v17);
}

void *sub_20CDB94AC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_getObjectType();
  v6 = a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    result = swift_unknownObjectRelease();
    if (v8 == a1)
    {
      if (qword_27C811D18 != -1)
      {
        swift_once();
      }

      v9 = sub_20CE12CB4();
      __swift_project_value_buffer(v9, qword_27C8177B0);
      v10 = a1;
      v11 = sub_20CE12C94();
      v12 = sub_20CE13CD4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v22 = v14;
        *v13 = 136446466;
        nullsub_1();
        v15 = sub_20CE14414();
        v17 = sub_20CD96DCC(v15, v16, &v22);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        a3(0);
        v18 = v10;
        v19 = sub_20CE13974();
        v21 = sub_20CD96DCC(v19, v20, &v22);

        *(v13 + 14) = v21;
        _os_log_impl(&dword_20CD70000, v11, v12, "[%{public}s] Unsetting listener from %s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v14, -1, -1);
        MEMORY[0x20F314110](v13, -1, -1);
      }

      *(v6 + 8) = 0;
      swift_unknownObjectWeakAssign();
      *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions) = MEMORY[0x277D84FA0];
    }
  }

  return result;
}

void sub_20CDB96D8()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_stepStartTime;
  v2 = sub_20CE124E4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v4 = (v0 + v3);
  v5 = unk_27C817870;
  *v4 = qword_27C817868;
  v4[1] = v5;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___continueButton) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___takeTestAgainButton) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___doneButton) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___doneBarButton) = 0;
  sub_20CE141B4();
  __break(1u);
}

uint64_t sub_20CDB97F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_20CDB9D40();
  result = MEMORY[0x20F313150](v2, &type metadata for HearingTestInterruptionType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_20CDD6734(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_20CDB9870(uint64_t a1)
{
  sub_20CD849AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_20CDB9CF4()
{
  result = qword_27C812220;
  if (!qword_27C812220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812220);
  }

  return result;
}

unint64_t sub_20CDB9D40()
{
  result = qword_27C812C00;
  if (!qword_27C812C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812C00);
  }

  return result;
}

BOOL sub_20CDB9D94(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    v5 = 1.0;
    if (a2)
    {
      v5 = 0.0;
    }

    [Strong setAlpha_];
  }

  return v4 == 0;
}

uint64_t sub_20CDB9E10(void (*a1)(uint64_t))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

id sub_20CDB9EC0(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v63 = a1;
  v5 = sub_20CE12BF4();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE12BC4();
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = &v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase];
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v12 = qword_27C817868;
  v11 = unk_27C817870;
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20CE16360;
  v57 = v12;
  *(v13 + 32) = v12;
  *(v13 + 40) = v11;
  *(v13 + 48) = 0xD000000000000015;
  *(v13 + 56) = 0x800000020CE1DD90;
  v66 = v13;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v62 = v11;

  v14 = sub_20CE138C4();
  v16 = v15;

  *v10 = v14;
  v10[1] = v16;
  sub_20CE13674();
  *&v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneImageView] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneCount] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_button] = 0;
  swift_unknownObjectWeakInit();
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_20CE12354();
  v19 = v9;
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      v54 = v17;
      v55 = v18;
      v53 = sub_20CE12354();
      if (qword_27C811D80 != -1)
      {
        swift_once();
      }

      v24 = 0;
      v52 = 0;
      v23 = 0;
      v25 = qword_27C8178F0;
      goto LABEL_22;
    }

    if (v9 == 5)
    {

      v29 = sub_20CE12354();
      v54 = sub_20CE12354();
      v55 = v30;
      v53 = v29;
      if (qword_27C811D88 != -1)
      {
        swift_once();
      }

      v24 = 0;
      v52 = 0;
      v23 = 0;
      v25 = qword_27C817908;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v54 = v17;
  v55 = v18;
  if (v9 != 2)
  {
    if (v9 == 3)
    {
      v26 = sub_20CE12354();
      v27 = sub_20CE12354();
      v23 = v28;
      v52 = v27;
      v53 = v26;
      if (qword_27C811D78 != -1)
      {
        swift_once();
      }

      v24 = 1;
      v25 = qword_27C8178D8;
      goto LABEL_22;
    }

LABEL_29:
    result = sub_20CE141B4();
    __break(1u);
    return result;
  }

  v20 = sub_20CE12354();
  v21 = sub_20CE12354();
  v23 = v22;
  v52 = v21;
  v53 = v20;
  if (qword_27C811D70 != -1)
  {
    swift_once();
  }

  v24 = 0;
  v25 = qword_27C8178C0;
LABEL_22:
  v31 = __swift_project_value_buffer(v7, v25);
  v32 = *(v56 + 16);
  v32(&v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animation], v31, v7);
  v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_supportsSampleTone] = v24;
  v32(v58, &v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animation], v7);
  (*(v59 + 104))(v61, *MEMORY[0x277D111B0], v60);
  v33 = objc_allocWithZone(sub_20CE12BE4());
  *&v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animationView] = sub_20CE12BD4();
  v34 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_stepStartTime;
  v35 = sub_20CE124E4();
  (*(*(v35 - 8) + 56))(&v3[v34], 1, 1, v35);
  v36 = &v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase];
  v37 = v62;
  *v36 = v57;
  v36[1] = v37;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___continueButton] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___takeTestAgainButton] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___doneButton] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___cancelButton] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___doneBarButton] = 0;
  v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_step] = v19;
  v38 = v63;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager] = v63;
  v39 = &v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_continueButtonTitle];
  v40 = v55;
  *v39 = v54;
  v39[1] = v40;
  v41 = v38;

  v42 = v41;
  v43 = sub_20CE13914();

  if (v23)
  {
    v44 = sub_20CE13914();
  }

  else
  {
    v44 = 0;
  }

  if (v24)
  {
    v45 = 4;
  }

  else
  {
    v45 = 1;
  }

  v46 = type metadata accessor for HearingTestStepViewController(0);
  v65.receiver = v3;
  v65.super_class = v46;
  v47 = objc_msgSendSuper2(&v65, sel_initWithTitle_detailText_icon_contentLayout_, v43, v44, 0, v45, v52, v53);

  v64 = v19;
  v48 = v47;
  sub_20CDDF904(&v64, &v66);
  sub_20CDB7E58(v66 == 10, 0);

  v49 = v48;
  v50 = [v49 headerView];
  [v50 setTitleStyle_];

  return v49;
}

uint64_t type metadata accessor for HearingTestPreEvaluationCoachingViewController(uint64_t a1)
{
  result = qword_281111690;
  if (!qword_281111690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDBAB20()
{
  v1 = v0;
  v2 = [v0 headerView];
  v4 = *&v0[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase];
  v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase + 8];
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20CE16360;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0x656C746954;
  *(v5 + 56) = 0xE500000000000000;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v6 = sub_20CE13914();

  [v2 setTitleAccessibilityIdentifier_];

  v7 = [v1 headerView];
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CE16360;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  *(v8 + 48) = 0x656C746974627553;
  *(v8 + 56) = 0xE800000000000000;

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [v7 setDetailTextAccessibilityIdentifier_];
}

uint64_t sub_20CDBAD48()
{
  swift_getObjectType();
  v1 = [v0 contentView];
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  sub_20CDBAE7C();
  sub_20CDBD3BC(0, &qword_27C8127C8, sub_20CDA153C, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CE16370;
  v4 = sub_20CE12CC4();
  v5 = MEMORY[0x277D74BF0];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_20CE13CF4();
  swift_unknownObjectRelease();
}

void sub_20CDBAE7C()
{
  v1 = [v0 contentView];
  v2 = OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animationView;
  [v1 addSubview_];

  [*&v0[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [*&v0[v2] topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  [v6 setActive_];

  v7 = [*&v0[v2] bottomAnchor];
  v8 = [v0 contentView];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  [v10 setActive_];

  v11 = [*&v0[v2] centerXAnchor];
  v12 = [v0 contentView];
  v13 = [v12 centerXAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  [v14 setActive_];
}

id sub_20CDBB0A8()
{
  v1 = v0;
  v2 = sub_20CE13E74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20CE13F14();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v39 - v11;
  result = [v1 secondaryContentView];
  if (result)
  {
    v14 = result;
    v39[0] = v6;
    sub_20CE13F04();
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    sub_20CE12354();
    sub_20CE13EE4();
    v15 = sub_20CE13914();
    v16 = [objc_opt_self() systemImageNamed_];

    sub_20CE13EC4();
    sub_20CE13E94();
    (*(v3 + 104))(v5, *MEMORY[0x277D74FD8], v2);
    sub_20CE13E84();
    sub_20CD83128(0, &qword_27C8127E0, 0x277D75220);
    (*(v7 + 16))(v10, v12, v39[0]);
    sub_20CD83128(0, &qword_27C812C10, 0x277D750C8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_20CE13E54();
    v17 = sub_20CE13F24();
    [v17 setSymbolAnimationEnabled_];
    v18 = *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase];
    v19 = *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase + 8];
    sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20CE16360;
    *(v20 + 32) = v18;
    *(v20 + 40) = v19;
    *(v20 + 48) = 0x7474754279616C50;
    *(v20 + 56) = 0xEA00000000006E6FLL;
    v39[1] = v20;
    sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
    sub_20CD81F60();
    v21 = v17;

    sub_20CE138C4();

    v22 = sub_20CE13914();

    [v21 setAccessibilityIdentifier_];

    v23 = [v21 imageView];
    v24 = *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneImageView];
    *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneImageView] = v23;

    v25 = *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_button];
    *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_button] = v21;
    v26 = v21;

    [v14 addSubview_];
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    v27 = [v26 bottomAnchor];
    v28 = [v14 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    [v29 setActive_];
    v30 = [v26 topAnchor];
    v31 = [v14 topAnchor];
    v32 = [v30 constraintEqualToSystemSpacingBelowAnchor:v31 multiplier:2.0];

    [v32 setActive_];
    v33 = [v26 trailingAnchor];
    v34 = [v14 trailingAnchor];
    v35 = [v33 constraintLessThanOrEqualToSystemSpacingAfterAnchor:v34 multiplier:1.0];

    [v35 setActive_];
    v36 = [v26 leadingAnchor];

    v37 = [v14 leadingAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    [v38 setActive_];
    return (*(v7 + 8))(v12, v39[0]);
  }

  return result;
}

void sub_20CDBB794(uint64_t a1, uint64_t a2)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong didTapPlaySample];
  }

  else
  {
  }
}

uint64_t sub_20CDBB864()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_20CE136A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v6 = sub_20CE12CB4();
  __swift_project_value_buffer(v6, qword_27C817780);
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v11 = sub_20CE14414();
    v13 = sub_20CD96DCC(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] Cleaning up sample tone infrastructure.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  sub_20CE128B4();

  v15 = *(v1 + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneImageView);
  if (v15)
  {
    v16 = v15;
    sub_20CE13694();
    sub_20CE13684();
    sub_20CDBD35C();
    sub_20CE13C94();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_20CDBBB04()
{
  [v0 cleanUp];
  v1 = *&v0[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager];
  v4 = v0[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_step];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = v1;
  sub_20CDE44CC(v0, &v4, v3, v2);
}

uint64_t sub_20CDBBC94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_20CE12924();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE12714();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20CE136A4();
  result = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_supportsSampleTone) == 1)
  {
    v16 = *(v1 + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneImageView);
    if (v16)
    {
      v40 = v13;
      v42 = v4;
      v43 = v3;
      v45 = result;
      v17 = qword_27C811D08;
      v41 = v16;
      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_20CE12CB4();
      __swift_project_value_buffer(v18, qword_27C817780);
      v19 = sub_20CE12C94();
      v20 = sub_20CE13CD4();
      v21 = os_log_type_enabled(v19, v20);
      v44 = ObjectType;
      if (v21)
      {
        v22 = swift_slowAlloc();
        v39 = v8;
        v23 = v22;
        v24 = swift_slowAlloc();
        v38 = v6;
        v25 = v24;
        v46 = v24;
        *v23 = 136446210;
        v26 = sub_20CE14414();
        v28 = v7;
        v29 = sub_20CD96DCC(v26, v27, &v46);

        *(v23 + 4) = v29;
        v7 = v28;
        _os_log_impl(&dword_20CD70000, v19, v20, "[%{public}s] User tapped to play sample. Playing sample...", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        v30 = v25;
        v6 = v38;
        MEMORY[0x20F314110](v30, -1, -1);
        v31 = v23;
        v8 = v39;
        MEMORY[0x20F314110](v31, -1, -1);
      }

      sub_20CDBCA28();
      v32 = *(v1 + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_button);
      if (v32)
      {
        [v32 setEnabled_];
      }

      sub_20CE13694();
      sub_20CE13684();
      sub_20CDBD35C();
      v33 = v41;
      sub_20CE13C84();
      (*(v40 + 8))(v15, v45);
      (*(v42 + 104))(v6, *MEMORY[0x277D12CD8], v43);

      sub_20CE126F4();
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      v36 = v44;
      *(v35 + 16) = v34;
      *(v35 + 24) = v36;

      sub_20CE128A4();

      (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

char *sub_20CDBC180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20CDBD3BC(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28[-v5];
  sub_20CE13B84();
  sub_20CE13B74();
  v7 = MEMORY[0x277D85700];
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v8 = sub_20CE12CB4();
  __swift_project_value_buffer(v8, qword_27C817780);
  v9 = sub_20CE12C94();
  v10 = sub_20CE13CD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136446210;
    v13 = sub_20CE14414();
    v15 = sub_20CD96DCC(v13, v14, v29);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] Sample finished playing.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v16 = v12;
    v7 = MEMORY[0x277D85700];
    MEMORY[0x20F314110](v16, -1, -1);
    MEMORY[0x20F314110](v11, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *&result[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneCount];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
      return result;
    }

    *&result[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneCount] = v20;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_button);
    v23 = Strong;
    v24 = v22;

    if (v22)
    {
      [v24 setEnabled_];
    }
  }

  v25 = sub_20CE13BB4();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);

  v26 = sub_20CE13B74();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v7;
  v27[4] = a2;
  sub_20CDDAF10(0, 0, v6, &unk_20CE18118, v27);
}