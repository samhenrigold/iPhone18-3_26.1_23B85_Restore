unint64_t sub_1C7C630F8()
{
  result = qword_1EC265398;
  if (!qword_1EC265398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265398);
  }

  return result;
}

unint64_t sub_1C7C6314C()
{
  result = qword_1EC2653A0;
  if (!qword_1EC2653A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2653A0);
  }

  return result;
}

unint64_t sub_1C7C631A0()
{
  result = qword_1EC2653A8;
  if (!qword_1EC2653A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2653A8);
  }

  return result;
}

uint64_t sub_1C7C631F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SESnapshot(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C63238()
{
  result = qword_1EC2653E0;
  if (!qword_1EC2653E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2653E0);
  }

  return result;
}

unint64_t sub_1C7C6328C()
{
  result = qword_1EC2653E8;
  if (!qword_1EC2653E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2653E8);
  }

  return result;
}

unint64_t sub_1C7C632E0()
{
  result = qword_1EC2653F0;
  if (!qword_1EC2653F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2653F0);
  }

  return result;
}

unint64_t sub_1C7C63338()
{
  result = qword_1EC265410;
  if (!qword_1EC265410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265410);
  }

  return result;
}

unint64_t sub_1C7C63390()
{
  result = qword_1EC265418;
  if (!qword_1EC265418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265418);
  }

  return result;
}

unint64_t sub_1C7C633E8()
{
  result = qword_1EC265420;
  if (!qword_1EC265420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265420);
  }

  return result;
}

void sub_1C7C63464(uint64_t a1)
{
  sub_1C7C634F8();
  if (v1 <= 0x3F)
  {
    sub_1C7C7D104();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C7C634F8()
{
  if (!qword_1EC265438)
  {
    v0 = sub_1C7C7D454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC265438);
    }
  }
}

uint64_t sub_1C7C63554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C7C6359C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C7C63608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C7C63664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1C7C637CC()
{
  result = qword_1EC265440;
  if (!qword_1EC265440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265440);
  }

  return result;
}

unint64_t sub_1C7C63824()
{
  result = qword_1EC265448;
  if (!qword_1EC265448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265448);
  }

  return result;
}

unint64_t sub_1C7C6387C()
{
  result = qword_1EC265450;
  if (!qword_1EC265450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265450);
  }

  return result;
}

unint64_t sub_1C7C638D4()
{
  result = qword_1EC265458;
  if (!qword_1EC265458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265458);
  }

  return result;
}

unint64_t sub_1C7C6392C()
{
  result = qword_1EC265460;
  if (!qword_1EC265460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265460);
  }

  return result;
}

unint64_t sub_1C7C63984()
{
  result = qword_1EC265468;
  if (!qword_1EC265468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265468);
  }

  return result;
}

unint64_t sub_1C7C639DC()
{
  result = qword_1EC265470;
  if (!qword_1EC265470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265470);
  }

  return result;
}

unint64_t sub_1C7C63A34()
{
  result = qword_1EC265478;
  if (!qword_1EC265478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265478);
  }

  return result;
}

unint64_t sub_1C7C63A8C()
{
  result = qword_1EC265480;
  if (!qword_1EC265480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265480);
  }

  return result;
}

unint64_t sub_1C7C63AE4()
{
  result = qword_1EC265488;
  if (!qword_1EC265488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265488);
  }

  return result;
}

unint64_t sub_1C7C63B3C()
{
  result = qword_1EC265490;
  if (!qword_1EC265490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265490);
  }

  return result;
}

unint64_t sub_1C7C63B94()
{
  result = qword_1EC265498;
  if (!qword_1EC265498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265498);
  }

  return result;
}

unint64_t sub_1C7C63BEC()
{
  result = qword_1EC2654A0;
  if (!qword_1EC2654A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654A0);
  }

  return result;
}

unint64_t sub_1C7C63C44()
{
  result = qword_1EC2654A8;
  if (!qword_1EC2654A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654A8);
  }

  return result;
}

unint64_t sub_1C7C63C9C()
{
  result = qword_1EC2654B0;
  if (!qword_1EC2654B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654B0);
  }

  return result;
}

unint64_t sub_1C7C63CF4()
{
  result = qword_1EC2654B8;
  if (!qword_1EC2654B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654B8);
  }

  return result;
}

unint64_t sub_1C7C63D4C()
{
  result = qword_1EC2654C0;
  if (!qword_1EC2654C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654C0);
  }

  return result;
}

unint64_t sub_1C7C63DA4()
{
  result = qword_1EC2654C8;
  if (!qword_1EC2654C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654C8);
  }

  return result;
}

unint64_t sub_1C7C63DFC()
{
  result = qword_1EC2654D0;
  if (!qword_1EC2654D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654D0);
  }

  return result;
}

unint64_t sub_1C7C63E54()
{
  result = qword_1EC2654D8;
  if (!qword_1EC2654D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654D8);
  }

  return result;
}

unint64_t sub_1C7C63EAC()
{
  result = qword_1EC2654E0;
  if (!qword_1EC2654E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654E0);
  }

  return result;
}

unint64_t sub_1C7C63F04()
{
  result = qword_1EC2654E8;
  if (!qword_1EC2654E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654E8);
  }

  return result;
}

unint64_t sub_1C7C63F5C()
{
  result = qword_1EC2654F0;
  if (!qword_1EC2654F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654F0);
  }

  return result;
}

unint64_t sub_1C7C63FB4()
{
  result = qword_1EC2654F8;
  if (!qword_1EC2654F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2654F8);
  }

  return result;
}

unint64_t sub_1C7C6400C()
{
  result = qword_1EC265500;
  if (!qword_1EC265500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265500);
  }

  return result;
}

unint64_t sub_1C7C64064()
{
  result = qword_1EC265508;
  if (!qword_1EC265508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265508);
  }

  return result;
}

unint64_t sub_1C7C640BC()
{
  result = qword_1EC265510;
  if (!qword_1EC265510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265510);
  }

  return result;
}

unint64_t sub_1C7C64114()
{
  result = qword_1EC265518;
  if (!qword_1EC265518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265518);
  }

  return result;
}

unint64_t sub_1C7C6416C()
{
  result = qword_1EC265520;
  if (!qword_1EC265520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265520);
  }

  return result;
}

unint64_t sub_1C7C641C4()
{
  result = qword_1EC265528;
  if (!qword_1EC265528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265528);
  }

  return result;
}

unint64_t sub_1C7C6421C()
{
  result = qword_1EC265530;
  if (!qword_1EC265530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265530);
  }

  return result;
}

uint64_t sub_1C7C64270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74656C6C6177 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616E6E656976 && a2 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666F72506D695365 && a2 == 0xEB00000000656C69 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6569667269756DLL && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

unint64_t sub_1C7C643D8()
{
  result = qword_1EC265538;
  if (!qword_1EC265538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265538);
  }

  return result;
}

uint64_t SESnapshot.addReservation(type:metadata:removeFromStaged:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 114) = a3;
  *(v4 + 240) = a2;
  *(v4 + 248) = v3;
  v6 = sub_1C7C7D104();
  *(v4 + 256) = v6;
  *(v4 + 264) = *(v6 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = *a1;
  *(v4 + 115) = *(a1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1C7C6454C, 0, 0);
}

uint64_t sub_1C7C6454C()
{
  v54 = v0;
  v53 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 288);
  v3 = *(v0 + 115);
  v50 = *(v0 + 280);
  v2 = v50;
  v51 = v1;
  v52 = v3;
  CredentialType.init(fromLegacy:)(&v50, v48);
  v5 = v48[0];
  v4 = v48[1];
  *(v0 + 296) = v48[0];
  *(v0 + 304) = v4;
  v6 = v49;
  *(v0 + 116) = v49;
  sub_1C7BDF708(v2, v1, v3);
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 240);
  v8 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v8, qword_1EC288338);
  sub_1C7BDF708(v5, v4, v6);
  v9 = v7;
  v10 = sub_1C7C7D194();
  v11 = sub_1C7C7D564();
  sub_1C7BEA9D8(v5, v4, v6);

  if (os_log_type_enabled(v10, v11))
  {
    v47 = v11;
    v12 = *(v0 + 240);
    v13 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v13 = 136315906;
    *(v13 + 4) = sub_1C7BE42F8(0xD00000000000002FLL, 0x80000001C7C9FCE0, &v50);
    *(v13 + 12) = 2080;
    *(v0 + 192) = v5;
    *(v0 + 200) = v4;
    *(v0 + 208) = v6;
    sub_1C7BDF708(v5, v4, v6);
    v14 = sub_1C7C7D324();
    v16 = sub_1C7BE42F8(v14, v15, &v50);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2080;
    v17 = objc_opt_self();
    *(v0 + 232) = 0;
    v18 = [v17 dataWithJSONObject:v12 options:0 error:v0 + 232];
    v19 = *(v0 + 232);
    if (!v18)
    {
      v41 = v19;
      sub_1C7C7CFD4();

      swift_willThrow();

      return swift_unexpectedError();
    }

    v20 = sub_1C7C7D054();
    v22 = v21;

    v23 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v24 = sub_1C7C7D024();
    v25 = [v23 initWithData:v24 encoding:1];

    result = sub_1C7BDF778(v20, v22);
    if (!v25)
    {
      __break(1u);
      return result;
    }

    v27 = *(v0 + 114);
    v28 = sub_1C7C7D304();
    v30 = v29;

    v31 = sub_1C7BE42F8(v28, v30, &v50);

    *(v13 + 24) = v31;
    *(v13 + 32) = 1024;
    *(v13 + 34) = v27;
    _os_log_impl(&dword_1C7B9A000, v10, v47, "%s (%s, %s, %{BOOL}d)", v13, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v46, -1, -1);
    MEMORY[0x1CCA6C990](v13, -1, -1);
  }

  if (*(v0 + 114) == 1)
  {
    v50 = v5;
    v51 = v4;
    v52 = v6;
    SESnapshot.removeFromSnapshot(credential:)(&v50);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264480, &qword_1C7C90020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7C8F930;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  sub_1C7BDF708(v5, v4, v6);
  SESnapshot.canFitWithReason(credentials:)(inited, &v50);
  swift_setDeallocating();
  sub_1C7C679BC(inited + 32);
  if ((v50 & 0x100) != 0)
  {
    v33 = *(v0 + 240);
    v34 = objc_opt_self();
    *(v0 + 216) = 0;
    v35 = [v34 dataWithPropertyList:v33 format:200 options:0 error:v0 + 216];
    v36 = *(v0 + 216);
    if (v35)
    {
      v37 = sub_1C7C7D054();
      v39 = v38;

      *(v0 + 312) = v37;
      *(v0 + 320) = v39;
      if (qword_1EC2621D8 != -1)
      {
        swift_once();
      }

      *(v0 + 120) = v5;
      *(v0 + 128) = v4;
      *(v0 + 136) = v6;
      v40 = swift_task_alloc();
      *(v0 + 328) = v40;
      *v40 = v0;
      v40[1] = sub_1C7C64C90;

      return SERInternalClient.addReservation(type:metadata:)(v0 + 96, v0 + 120, v37, v39);
    }

    v44 = *(v0 + 248);
    v45 = v36;
    sub_1C7C7CFD4();

    swift_willThrow();
    sub_1C7C6507C(v44, v5, v4, v6);
    sub_1C7BEA9D8(v5, v4, v6);
  }

  else
  {
    sub_1C7BEA9D8(v5, v4, v6);
    sub_1C7BEADA0();
    swift_allocError();
    *v42 = xmmword_1C7C90C50;
    *(v42 + 16) = 5;
    swift_willThrow();
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1C7C64C90()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C64DB8, 0, 0);
}

uint64_t sub_1C7C64DB8()
{
  v1 = *(v0 + 96);
  if (*(v0 + 113))
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 312);
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v26 = *(v0 + 248);
    v28 = *(v0 + 320);
    *(v0 + 144) = v1;
    *(v0 + 160) = v2;
    v6 = *(v0 + 116);
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 160);
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9;
    sub_1C7BDF778(v3, v28);
    sub_1C7C6507C(v26, v5, v4, v6);
    sub_1C7BEA9D8(v5, v4, v6);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v24 = *(v0 + 312);
    v25 = *(v0 + 320);
    v27 = *(v0 + 296);
    v29 = *(v0 + 304);
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v16 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
    v18 = *(v0 + 96);
    v19 = *(v0 + 116);
    (*(v14 + 16))(v13, v1 + OBJC_IVAR____TtC9SEService11Reservation_uuid, v15);
    v20 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
    swift_beginAccess();
    v21 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v17 + v20);
    *(v17 + v20) = 0x8000000000000000;
    sub_1C7C67F90(v21, v13, isUniquelyReferenced_nonNull_native);
    (*(v14 + 8))(v13, v15);
    *(v17 + v20) = v30;
    swift_endAccess();
    sub_1C7BDF778(v24, v25);
    sub_1C7C6507C(v16, v27, v29, v19);
    sub_1C7BEA9D8(v27, v29, v19);

    v23 = *(v0 + 8);

    return v23(v21);
  }
}

uint64_t sub_1C7C6507C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = *(a1 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v10 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + v10);
  v34 = v12;
  *(v9 + v10) = 0x8000000000000000;
  v13 = sub_1C7C70278(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v4) = v14;
  if (v12[3] >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_6:
    *(v9 + v10) = v12;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1C7C704D4(v18, isUniquelyReferenced_nonNull_native);
  v13 = sub_1C7C70278(a2, a3, a4);
  if ((v4 & 1) == (v19 & 1))
  {
    goto LABEL_6;
  }

LABEL_12:
  v13 = sub_1C7C7DAF4();
  __break(1u);
LABEL_13:
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_14;
  }

  v33 = v13;
  sub_1C7C71E84();
  v13 = v33;
  v12 = v34;
  *(v8 + v9) = v34;
  if ((v4 & 1) == 0)
  {
LABEL_15:
    v8 = v13;
    sub_1C7C4F658(v13, a2, a3, a4, 0, v12);
    sub_1C7BDF708(a2, a3, a4);
    v13 = v8;
  }

LABEL_16:
  v28 = v12[7];
  v29 = *(v28 + 8 * v13);
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
    while (1)
    {
      __break(1u);
LABEL_22:
      v32 = v13;
      sub_1C7C71E84();
      v13 = v32;
      v12 = v34;
      *(v9 + v10) = v34;
      if ((v4 & 1) == 0)
      {
LABEL_7:
        v4 = v13;
        sub_1C7C4F658(v13, a2, a3, a4, 0, v12);
        sub_1C7BDF708(a2, a3, a4);
        v13 = v4;
      }

LABEL_8:
      v20 = v12[7];
      v21 = *(v20 + 8 * v13);
      v17 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v17)
      {
LABEL_19:
        __break(1u);
      }

      else
      {
        *(v20 + 8 * v13) = v22;
        swift_endAccess();
        v9 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *(v8 + v9);
        v34 = v12;
        *(v8 + v9) = 0x8000000000000000;
        v13 = sub_1C7C70278(a2, a3, a4);
        v24 = v12[2];
        v25 = (v23 & 1) == 0;
        v17 = __OFADD__(v24, v25);
        v26 = v24 + v25;
        if (!v17)
        {
          LOBYTE(v4) = v23;
          if (v12[3] < v26)
          {
            sub_1C7C704D4(v26, isUniquelyReferenced_nonNull_native);
            v13 = sub_1C7C70278(a2, a3, a4);
            if ((v4 & 1) != (v27 & 1))
            {
              goto LABEL_12;
            }

LABEL_14:
            *(v8 + v9) = v12;
            if ((v4 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  *(v28 + 8 * v13) = v30;
  return swift_endAccess();
}

uint64_t SESnapshot.editReservation(uuid:newMetadata:)(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_1C7C7D104();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C65428, 0, 0);
}

uint64_t sub_1C7C65428()
{
  v48 = v0;
  v47[1] = *MEMORY[0x1E69E9840];
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v6, qword_1EC288338);
  (*(v2 + 16))(v1, v5, v3);
  v7 = v4;
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D564();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 96);
  if (!v10)
  {

    (*(v12 + 8))(v11, v13);
LABEL_8:
    v33 = *(v0 + 88);
    v34 = objc_opt_self();
    *(v0 + 64) = 0;
    v35 = [v34 dataWithPropertyList:v33 format:200 options:0 error:v0 + 64];
    v36 = *(v0 + 64);
    if (v35)
    {
      v37 = sub_1C7C7D054();
      v39 = v38;

      *(v0 + 120) = v37;
      *(v0 + 128) = v39;
      if (qword_1EC2621D8 != -1)
      {
        swift_once();
      }

      v40 = swift_task_alloc();
      *(v0 + 136) = v40;
      *v40 = v0;
      v40[1] = sub_1C7C65954;
      v41 = *(v0 + 80);

      return SERInternalClient.editReservation(uuid:metadata:)(v0 + 16, v41, v37, v39);
    }

    else
    {
      v42 = v36;
      sub_1C7C7CFD4();

      swift_willThrow();

      v43 = *(v0 + 8);

      return v43();
    }
  }

  v46 = *(v0 + 88);
  v14 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v47[0] = v45;
  *v14 = 136315650;
  *(v14 + 4) = sub_1C7BE42F8(0xD000000000000022, 0x80000001C7C9FD40, v47);
  *(v14 + 12) = 2080;
  v15 = sub_1C7C7D0A4();
  v17 = v16;
  (*(v12 + 8))(v11, v13);
  v18 = sub_1C7BE42F8(v15, v17, v47);

  *(v14 + 14) = v18;
  *(v14 + 22) = 2080;
  v19 = objc_opt_self();
  *(v0 + 72) = 0;
  v20 = [v19 dataWithJSONObject:v46 options:0 error:v0 + 72];
  v21 = *(v0 + 72);
  if (v20)
  {
    v22 = sub_1C7C7D054();
    v24 = v23;

    v25 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v26 = sub_1C7C7D024();
    v27 = [v25 initWithData:v26 encoding:1];

    result = sub_1C7BDF778(v22, v24);
    if (!v27)
    {
      __break(1u);
      return result;
    }

    v29 = sub_1C7C7D304();
    v31 = v30;

    v32 = sub_1C7BE42F8(v29, v31, v47);

    *(v14 + 24) = v32;
    _os_log_impl(&dword_1C7B9A000, v8, v9, "%s (%s, %s)", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v45, -1, -1);
    MEMORY[0x1CCA6C990](v14, -1, -1);

    goto LABEL_8;
  }

  v44 = v21;
  sub_1C7C7CFD4();

  swift_willThrow();

  return swift_unexpectedError();
}

uint64_t sub_1C7C65954()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C65A7C, 0, 0);
}

uint64_t sub_1C7C65A7C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  if (*(v0 + 33))
  {
    v3 = *(v0 + 32);
    *(v0 + 40) = *(v0 + 16);
    *(v0 + 56) = v3;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    sub_1C7BDF778(v1, v2);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v11 = *(v0 + 16);
    sub_1C7BDF778(v1, v2);

    v10 = *(v0 + 8);

    return v10(v11);
  }
}

uint64_t SESnapshot.findReservation(uuid:fromCache:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C7C65CCC;

  return sub_1C7C682F0(a1, v3);
}

uint64_t sub_1C7C65CCC(void *a1)
{
  v4 = *v2;

  v5 = *(v4 + 8);
  if (v1)
  {

    return v5();
  }

  else
  {
    v8 = *(v4 + 8);
    v7 = a1;

    return v8(v7);
  }
}

uint64_t SESnapshot.removeReservation(uuid:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_1C7C7D104();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C65EC8, 0, 0);
}

uint64_t sub_1C7C65EC8()
{
  v22 = v0;
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[20];
  v5 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v5, qword_1EC288338);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1C7C7D194();
  v7 = sub_1C7C7D564();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1C7BE42F8(0xD000000000000018, 0x80000001C7C9FD70, &v21);
    *(v12 + 12) = 2080;
    sub_1C7BED798(&qword_1EC265540, MEMORY[0x1E69695E0]);
    v14 = sub_1C7C7DA74();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1C7BE42F8(v14, v16, &v21);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1C7B9A000, v6, v7, "%s (%s)", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v13, -1, -1);
    MEMORY[0x1CCA6C990](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[25] = v18;
  *v18 = v0;
  v18[1] = sub_1C7C66178;
  v19 = v0[20];

  return sub_1C7C682F0(v19, 1);
}

uint64_t sub_1C7C66178(void *a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1C7C664C0;
  }

  else
  {
    *(v4 + 208) = a1;
    v6 = a1;
    v5 = sub_1C7C662AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C7C662AC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v3 = &v1[OBJC_IVAR____TtC9SEService11Reservation_type];
  v4 = *&v1[OBJC_IVAR____TtC9SEService11Reservation_type];
  *(v0 + 216) = v4;
  v5 = *(v3 + 1);
  *(v0 + 224) = v5;
  v6 = v3[16];
  *(v0 + 130) = v6;
  sub_1C7BDF708(v4, v5, v6);

  v7 = *(v2 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v8 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  *(v0 + 232) = v7;
  *(v0 + 240) = v8;
  swift_beginAccess();
  if (*(*(v7 + v8) + 16))
  {
    sub_1C7C70278(v4, v5, v6);
    v10 = v9;
    swift_endAccess();
    if (v10)
    {
      if (qword_1EC2621D8 != -1)
      {
        swift_once();
      }

      v11 = swift_task_alloc();
      *(v0 + 248) = v11;
      *v11 = v0;
      v11[1] = sub_1C7C6655C;
      v12 = *(v0 + 160);

      return SERInternalClient.removeReservation(uuid:)(v0 + 112, v12);
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_1C7BEA9D8(v4, v5, v6);
  sub_1C7BEADA0();
  swift_allocError();
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 5;
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C7C664C0()
{
  sub_1C7BEADA0();
  swift_allocError();
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 5;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C7C6655C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C66658, 0, 0);
}

uint64_t sub_1C7C66658()
{
  v1 = *(v0 + 112);
  if (*(v0 + 129))
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    sub_1C7BEA9D8(*(v0 + 216), *(v0 + 224), *(v0 + 130));
    *(v0 + 136) = v1;
    *(v0 + 144) = v2;
    *(v0 + 152) = v3;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;

    v8 = *(v0 + 8);
LABEL_21:

    return v8();
  }

  LOBYTE(v9) = v0 + 40;
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 130);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v11 + v10);
  v59 = v16;
  *(v11 + v10) = 0x8000000000000000;
  v17 = sub_1C7C70278(v13, v12, v14);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_25;
  }

  v12 = v18;
  if (v16[3] >= v22)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v25 = *(v0 + 130);
    sub_1C7C704D4(v22, isUniquelyReferenced_nonNull_native);
    v17 = sub_1C7C70278(v24, v23, v25);
    if ((v12 & 1) != (v26 & 1))
    {
      goto LABEL_13;
    }
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  v27 = v59[7];
  v28 = *(v27 + 8 * v17);
  v21 = __OFSUB__(v28, 1);
  v29 = v28 - 1;
  if (v21)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    do
    {
      __break(1u);
LABEL_28:
      v56 = v17;
      sub_1C7C71E84();
      v17 = v56;
      if (v12)
      {
        goto LABEL_9;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      v57 = v17;
      sub_1C7C71E84();
      v17 = v57;
      v37 = v59;
      *(v11 + v12) = v59;
      if ((v9 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_19:
      v50 = v37[7];
      v51 = *(v50 + 8 * v17);
      v21 = __OFSUB__(v51, 1);
      v52 = v51 - 1;
    }

    while (v21);
    v54 = *(v0 + 216);
    v53 = *(v0 + 224);
    v55 = *(v0 + 130);
    *(v50 + 8 * v17) = v52;
    swift_endAccess();
    sub_1C7BEA9D8(v54, v53, v55);

    v8 = *(v0 + 8);
    goto LABEL_21;
  }

  v31 = *(v0 + 232);
  v30 = *(v0 + 240);
  v32 = *(v0 + 216);
  v58 = *(v0 + 224);
  v33 = *(v0 + 160);
  v11 = *(v0 + 168);
  v34 = *(v0 + 130);
  *(v27 + 8 * v17) = v29;
  *(v31 + v30) = v59;
  swift_endAccess();
  swift_beginAccess();
  v35 = sub_1C7C66A48(v33);
  swift_endAccess();

  v12 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  swift_beginAccess();
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v11 + v12);
  v59 = v37;
  *(v11 + v12) = 0x8000000000000000;
  v17 = sub_1C7C70278(v32, v58, v34);
  v39 = v37[2];
  v40 = (v38 & 1) == 0;
  v21 = __OFADD__(v39, v40);
  v41 = v39 + v40;
  if (v21)
  {
    goto LABEL_26;
  }

  LOBYTE(v9) = v38;
  if (v37[3] >= v41)
  {
    if ((v36 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  v43 = *(v0 + 216);
  v42 = *(v0 + 224);
  v44 = *(v0 + 130);
  sub_1C7C704D4(v41, v36);
  v17 = sub_1C7C70278(v43, v42, v44);
  if ((v9 & 1) == (v45 & 1))
  {
LABEL_17:
    *(v11 + v12) = v37;
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v48 = *(v0 + 216);
    v47 = *(v0 + 224);
    v49 = *(v0 + 130);
    v9 = v17;
    sub_1C7C4F658(v17, v48, v47, v49, 0, v37);
    sub_1C7BDF708(v48, v47, v49);
    v17 = v9;
    goto LABEL_19;
  }

LABEL_13:

  return sub_1C7C7DAF4();
}

uint64_t sub_1C7C66A48(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C7C703E8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C7C72450();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1C7C7D104();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1C7C67A10(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t SESnapshot.reservations(fromCache:)(char a1)
{
  *(v2 + 112) = v1;
  *(v2 + 82) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20);
  *(v2 + 120) = v3;
  *(v2 + 128) = *(v3 - 8);
  *(v2 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C66BE0, 0, 0);
}

uint64_t sub_1C7C66BE0()
{
  v18 = v0;
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v1, qword_1EC288338);
  v2 = sub_1C7C7D194();
  v3 = sub_1C7C7D564();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 82);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1C7BE42F8(0xD000000000000018, 0x80000001C7C9FD90, &v17);
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_1C7B9A000, v2, v3, "%s (%{BOOL}d)", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x1CCA6C990](v6, -1, -1);
    MEMORY[0x1CCA6C990](v5, -1, -1);
  }

  if ((*(v0 + 82) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(*(v0 + 112) + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v8 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_1C7C67934(*(v9 + 16), 0);
    v12 = sub_1C7C6819C(&v17, v11 + 4, v10, v9);
    v13 = v17;

    sub_1C7C0040C(v13);
    if (v12 != v10)
    {
      __break(1u);
LABEL_9:
      if (qword_1EC2621D8 != -1)
      {
        swift_once();
      }

      v14 = swift_task_alloc();
      *(v0 + 144) = v14;
      *v14 = v0;
      v14[1] = sub_1C7C66EEC;

      return SERInternalClient.reservations()(v0 + 64);
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v0 + 8);

  return v16(v11);
}

uint64_t sub_1C7C66EEC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C66FE8, 0, 0);
}

void *sub_1C7C66FE8()
{
  v46 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (*(v0 + 81))
  {
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(*(v0 + 112) + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  if (v1 >> 62)
  {
    v28 = *(v0 + 64);
    v11 = sub_1C7C7D6D4();
    v1 = v28;
    if (v11)
    {
LABEL_7:
      v12 = v1;
      v45 = MEMORY[0x1E69E7CC0];
      result = sub_1C7C25BCC(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v40 = v2;
      v41 = v3;
      v42 = v10;
      v13 = 0;
      v14 = *(v0 + 128);
      v15 = v45;
      v16 = v12;
      v43 = v12 & 0xC000000000000001;
      v44 = *(v0 + 120);
      v17 = v12;
      do
      {
        if (v43)
        {
          v18 = MEMORY[0x1CCA6B7B0](v13, v16);
        }

        else
        {
          v18 = *(v16 + 8 * v13 + 32);
        }

        v19 = v18;
        v20 = *(v0 + 136);
        v21 = *(v44 + 48);
        v22 = OBJC_IVAR____TtC9SEService11Reservation_uuid;
        v23 = sub_1C7C7D104();
        (*(*(v23 - 8) + 16))(v20, v19 + v22, v23);
        *(v20 + v21) = v19;
        v45 = v15;
        v25 = *(v15 + 16);
        v24 = *(v15 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1C7C25BCC((v24 > 1), v25 + 1, 1);
          v15 = v45;
        }

        v26 = *(v0 + 136);
        ++v13;
        *(v15 + 16) = v25 + 1;
        sub_1C7C68B10(v26, v15 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25);
        v16 = v17;
      }

      while (v11 != v13);
      sub_1C7C68B80(v17, v40, v41, 0);
      v10 = v42;
      if (*(v15 + 16))
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  sub_1C7C68B80(v1, v2, v3, 0);
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264608, &qword_1C7C90808);
    v27 = sub_1C7C7D914();
    goto LABEL_20;
  }

LABEL_19:
  v27 = MEMORY[0x1E69E7CC8];
LABEL_20:
  v45 = v27;

  sub_1C7C31930(v29, 1, &v45);

  v30 = v45;
  v31 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  *(v10 + v31) = v30;

  v32 = *(*(v0 + 112) + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v33 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  v34 = *(v32 + v33);
  v35 = *(v34 + 16);
  if (!v35)
  {
LABEL_23:
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v36 = sub_1C7C67934(*(v34 + 16), 0);
  v37 = sub_1C7C6819C(&v45, v36 + 4, v35, v34);
  v38 = v45;

  sub_1C7C0040C(v38);
  if (v37 != v35)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_24:

  v39 = *(v0 + 8);

  return v39(v36);
}

uint64_t sub_1C7C6748C()
{
  v9 = v0;
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v1, qword_1EC288338);
  v2 = sub_1C7C7D194();
  v3 = sub_1C7C7D564();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1C7BE42F8(0xD000000000000013, 0x80000001C7C9FDB0, &v8);
    _os_log_impl(&dword_1C7B9A000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x1CCA6C990](v5, -1, -1);
    MEMORY[0x1CCA6C990](v4, -1, -1);
  }

  if (qword_1EC2621D8 != -1)
  {
    swift_once();
  }

  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_1C7C67678;

  return SERInternalClient.clearReservations()(v0 + 112);
}

uint64_t sub_1C7C67678()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C67774, 0, 0);
}

uint64_t sub_1C7C67774()
{
  v1 = *(v0 + 160);
  if (*(v0 + 129))
  {
    v2 = *(v0 + 128);
    *(v0 + 136) = *(v0 + 112);
    *(v0 + 152) = v2;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v3 = *(v0 + 136);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    v7 = *(v1 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
    v8 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
    swift_beginAccess();
    v9 = MEMORY[0x1E69E7CC8];
    *(v7 + v8) = MEMORY[0x1E69E7CC8];

    v10 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
    swift_beginAccess();
    *(v7 + v10) = v9;
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
    v13 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
    swift_beginAccess();
    v14 = MEMORY[0x1E69E7CC8];
    *(v12 + v13) = MEMORY[0x1E69E7CC8];

    v15 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
    swift_beginAccess();
    *(v12 + v15) = v14;
  }

  v11 = *(v0 + 8);

  return v11();
}

void *sub_1C7C67934(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265780, &unk_1C7C95D30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_1C7C67A10(int64_t a1, uint64_t a2)
{
  v40 = sub_1C7C7D104();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1C7C7D694();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1C7BED798(&unk_1EC264F40, MEMORY[0x1E69695B8]);
      v23 = sub_1C7C7D284();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1C7C67D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1C7C70278(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      sub_1C7C71E84();
      result = v21;
      goto LABEL_8;
    }

    sub_1C7C704D4(v18, a5 & 1);
    result = sub_1C7C70278(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = sub_1C7C7DAF4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * result) = a1;
  }

  else
  {
    sub_1C7C4F658(result, a2, a3, a4, a1, v23);

    return sub_1C7BDF708(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C7C67E60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C7C70200(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1C7C72170();
      result = v19;
      goto LABEL_8;
    }

    sub_1C7C70A64(v16, a4 & 1);
    result = sub_1C7C70200(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1C7C7DAF4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_1C7C4F6A8(result, a2, a3, a1, v21);
  }

  return result;
}

void sub_1C7C67F90(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C7C7D104();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1C7C703E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1C7C72450();
      goto LABEL_7;
    }

    sub_1C7C70F8C(v17, a3 & 1);
    v23 = sub_1C7C703E8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1C7C4F6F0(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1C7C7DAF4();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

void sub_1C7C6815C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  else if (a3 == 4)
  {
  }
}

void *sub_1C7C6819C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C7C682F0(uint64_t a1, char a2)
{
  *(v3 + 82) = a2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = sub_1C7C7D104();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C683C0, 0, 0);
}

uint64_t sub_1C7C683C0()
{
  v37 = v0;
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v5, qword_1EC288338);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1C7C7D194();
  v8 = sub_1C7C7D564();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  if (v9)
  {
    v33 = *(v0 + 82);
    v32 = v8;
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36[0] = v34;
    *v13 = 136315650;
    *(v13 + 4) = sub_1C7BE42F8(0xD000000000000020, 0x80000001C7C9FDD0, v36);
    *(v13 + 12) = 2080;
    v14 = sub_1C7C7D0A4();
    v35 = v6;
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1C7BE42F8(v14, v16, v36);
    v6 = v35;

    *(v13 + 14) = v18;
    *(v13 + 22) = 1024;
    *(v13 + 24) = v33;
    _os_log_impl(&dword_1C7B9A000, v7, v32, "%s (%s, %{BOOL}d)", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v34, -1, -1);
    MEMORY[0x1CCA6C990](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  *(v0 + 160) = v17;
  v19 = *(v0 + 82);
  v20 = *(*(v0 + 120) + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  *(v0 + 168) = v20;
  if (v19 == 1)
  {
    v21 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
    swift_beginAccess();
    v22 = *(v20 + v21);
    if (*(v22 + 16) && (v23 = sub_1C7C703E8(*(v0 + 112)), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
      swift_endAccess();

      v26 = *(v0 + 8);

      return v26(v25);
    }

    else
    {
      swift_endAccess();
      sub_1C7BEADA0();
      swift_allocError();
      *v30 = 0;
      *(v30 + 8) = 0;
      *(v30 + 16) = 5;
      swift_willThrow();

      v31 = *(v0 + 8);

      return v31();
    }
  }

  else
  {
    v6(*(v0 + 144), *(v0 + 112), *(v0 + 128));
    if (qword_1EC2621D8 != -1)
    {
      swift_once();
    }

    v28 = swift_task_alloc();
    *(v0 + 176) = v28;
    *v28 = v0;
    v28[1] = sub_1C7C6880C;
    v29 = *(v0 + 112);

    return SERInternalClient.findReservation(uuid:)(v0 + 64, v29);
  }
}

uint64_t sub_1C7C6880C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C7C68908, 0, 0);
}

uint64_t sub_1C7C68908()
{
  v1 = *(v0 + 64);
  if (*(v0 + 81))
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    (*(v0 + 160))(*(v0 + 144), *(v0 + 128));
    *(v0 + 88) = v1;
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    sub_1C7C15E5C();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;

    v8 = *(v0 + 8);

    return v8();
  }

  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v10 + v14);
  *(v10 + v14) = 0x8000000000000000;
  sub_1C7C67F90(v1, v12, isUniquelyReferenced_nonNull_native);
  v11(v12, v13);
  *(v10 + v14) = v19;
  result = swift_endAccess();
  if (!*(v19 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C7C703E8(*(v0 + 112));
  if ((v16 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v17 = *(*(v19 + 56) + 8 * result);

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t sub_1C7C68B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7C68B80(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_1C7C15F78(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t SECCredentialConfig.configUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C7C7D104();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SECCredentialConfig.configUUID.setter(uint64_t a1)
{
  v3 = sub_1C7C7D104();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SECCredentialConfig.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SECCredentialConfig(0) + 20));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  v7 = v3[4];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v7;
}

uint64_t type metadata accessor for SECCredentialConfig(uint64_t a1)
{
  result = qword_1EC2655F0;
  if (!qword_1EC2655F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 SECCredentialConfig.metadata.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = v1 + *(type metadata accessor for SECCredentialConfig(0) + 20);

  *v6 = v3;
  result = *(a1 + 1);
  *(v6 + 8) = result;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  return result;
}

__n128 SECCredentialConfig.init(configUUID:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[3];
  v8 = a2[4];
  v9 = sub_1C7C7D104();
  v12 = *(a2 + 1);
  (*(*(v9 - 8) + 32))(a3, a1, v9);
  v10 = a3 + *(type metadata accessor for SECCredentialConfig(0) + 20);
  *v10 = v6;
  result = v12;
  *(v10 + 8) = v12;
  *(v10 + 24) = v7;
  *(v10 + 32) = v8;
  return result;
}

unint64_t SECCredentialConfig.description.getter()
{
  sub_1C7C7D794();

  v0 = sub_1C7C7D0A4();
  MEMORY[0x1CCA6B380](v0);

  MEMORY[0x1CCA6B380](8202, 0xE200000000000000);
  type metadata accessor for SECCredentialConfig(0);
  v1 = SECMetadata.description.getter();
  MEMORY[0x1CCA6B380](v1);

  return 0xD000000000000012;
}

uint64_t static SECMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1C7C7DAA4() & 1) == 0 || (sub_1C7C699C4(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1C7C7DAA4();
}

uint64_t sub_1C7C6904C()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x55556769666E6F63;
  }
}

uint64_t sub_1C7C6908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x55556769666E6F63 && a2 == 0xEA00000000004449;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C69170(uint64_t a1)
{
  v2 = sub_1C7C6B668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C691AC(uint64_t a1)
{
  v2 = sub_1C7C6B668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SECCredentialConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265548, &qword_1C7C95D40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B668();
  sub_1C7C7DBA4();
  LOBYTE(v16) = 0;
  sub_1C7C7D104();
  sub_1C7BED798(&qword_1EC264680, MEMORY[0x1E69695B0]);
  sub_1C7C7DA44();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for SECCredentialConfig(0) + 20));
    v10 = v9[1];
    v12 = v9[2];
    v11 = v9[3];
    v13 = v9[4];
    v16 = *v9;
    v17 = v10;
    v18 = v12;
    v19 = v11;
    v20 = v13;
    v15[7] = 1;
    sub_1C7C6B6BC();

    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SECCredentialConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_1C7C7D104();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265560, &qword_1C7C95D48);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SECCredentialConfig(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B668();
  sub_1C7C7DB94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  LOBYTE(v30) = 0;
  sub_1C7BED798(&qword_1EC262F00, MEMORY[0x1E69695D0]);
  v15 = v29;
  v16 = v27;
  sub_1C7C7D9B4();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v34 = 1;
  sub_1C7C6B710();
  sub_1C7C7D9B4();
  (*(v28 + 8))(v9, v16);
  v18 = v32;
  v19 = v33;
  v20 = v23;
  v21 = v23 + *(v24 + 20);
  *v21 = v30;
  *(v21 + 8) = v31;
  *(v21 + 24) = v18;
  *(v21 + 32) = v19;
  sub_1C7C6B764(v20, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1C7C3B128(v20);
}

uint64_t SECMetadata.credentialTypes.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SECMetadata.credentialTypes.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SECMetadata.appletInstances.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SECMetadata.friendlyName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SECMetadata.friendlyName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall SECMetadata.init(credentialTypes:appletInstances:friendlyName:)(SEService::SECMetadata *__return_ptr retstr, Swift::String credentialTypes, Swift::OpaquePointer appletInstances, Swift::String friendlyName)
{
  retstr->credentialTypes = credentialTypes;
  retstr->appletInstances = appletInstances;
  retstr->friendlyName = friendlyName;
}

unint64_t SECMetadata.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C7C7D794();

  MEMORY[0x1CCA6B380](v1, v2);
  MEMORY[0x1CCA6B380](0xD000000000000013, 0x80000001C7C9FE40);
  v4 = MEMORY[0x1CCA6B440](v3, &type metadata for SECCredentialInfo);
  MEMORY[0x1CCA6B380](v4);

  return 0xD000000000000011;
}

uint64_t sub_1C7C699C4(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v19 = a2 + 32;
  v20 = result + 32;
  while (v3 != v2)
  {
    v4 = (v20 + 72 * v3);
    v5 = *v4;
    v6 = (v19 + 72 * v3);
    v7 = *v6;
    v8 = *(*v4 + 16);
    if (v8 != *(*v6 + 16))
    {
      return 0;
    }

    v9 = v4[1];
    v10 = v4[2];
    v31 = v4[3];
    v22 = v4[8];
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v29 = v6[4];
    v30 = v4[4];
    v27 = v6[5];
    v28 = v4[5];
    v25 = v6[6];
    v26 = v4[6];
    if (v8)
    {
      v14 = v5 == v7;
    }

    else
    {
      v14 = 1;
    }

    v23 = v6[7];
    v24 = v4[7];
    v21 = v6[8];
    if (!v14)
    {
      v16 = (v5 + 40);
      v17 = (v7 + 40);
      while (v8)
      {
        result = *(v16 - 1);
        if (result != *(v17 - 1) || *v16 != *v17)
        {
          result = sub_1C7C7DAA4();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v16 += 2;
        v17 += 2;
        if (!--v8)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    if (v9 == v11 && v10 == v12)
    {
      result = 0;
    }

    else
    {
      v15 = sub_1C7C7DAA4();
      result = 0;
      if ((v15 & 1) == 0)
      {
        return result;
      }
    }

    if (v31 == v13 && v30 == v29 && v28 == v27 && v26 == v25 && v24 == v23 && v22 == v21)
    {
      ++v3;
      result = 1;
      if (v3 != v2)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7C69B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C7C7DAA4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C7C69C2C()
{
  v1 = 0x6E4974656C707061;
  if (*v0 != 1)
  {
    v1 = 0x796C646E65697266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746E6564657263;
  }
}

uint64_t sub_1C7C69CA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C6C1CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C69CD0(uint64_t a1)
{
  v2 = sub_1C7C6B7C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C69D0C(uint64_t a1)
{
  v2 = sub_1C7C6B7C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SECMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265570, &qword_1C7C95D50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[2] = v1[3];
  v11 = v7;
  v10[1] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B7C8();
  sub_1C7C7DBA4();
  v16 = 0;
  v8 = v12;
  sub_1C7C7DA14();
  if (!v8)
  {
    v13 = v11;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265580, &qword_1C7C95D58);
    sub_1C7C6B870(&qword_1EC265588, sub_1C7C6B81C, MEMORY[0x1E69E6300]);
    sub_1C7C7DA44();
    v14 = 2;
    sub_1C7C7DA14();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SECMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265598, &qword_1C7C95D60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B7C8();
  sub_1C7C7DB94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  v9 = sub_1C7C7D984();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265580, &qword_1C7C95D58);
  v24 = 1;
  sub_1C7C6B870(&qword_1EC2655A0, sub_1C7C6B8E8, MEMORY[0x1E69E6330]);
  sub_1C7C7D9B4();
  v12 = v22;
  v23 = 2;
  v13 = sub_1C7C7D984();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v20;
  *v20 = v21;
  v17[1] = v11;
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = v15;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1C7C6A250(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1C7C7DAA4() & 1) == 0 || (sub_1C7C699C4(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1C7C7DAA4();
}

uint64_t SECCredentialInfo.modulesAIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SECCredentialInfo.packageAid.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SECCredentialInfo.packageAid.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

__n128 SECCredentialInfo.containerSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 SECCredentialInfo.containerSize.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

__n128 SECCredentialInfo.requiredMemoryForCredential.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u64[0];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 SECCredentialInfo.requiredMemoryForCredential.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v2;
  return result;
}

void __swiftcall SECCredentialInfo.init(modulesAIDs:packageAid:containerSize:requiredMemoryForCredential:)(SEService::SECCredentialInfo *__return_ptr retstr, Swift::OpaquePointer modulesAIDs, Swift::String packageAid, SEService::SECMemoryInfo containerSize, SEService::SECMemoryInfo requiredMemoryForCredential)
{
  v5 = *(containerSize.corSize + 16);
  v6 = *(containerSize.codSize + 16);
  retstr->modulesAIDs = modulesAIDs;
  retstr->packageAid = packageAid;
  *&retstr->containerSize.corSize = *containerSize.corSize;
  retstr->containerSize.nvmSize = v5;
  *&retstr->requiredMemoryForCredential.corSize = *containerSize.codSize;
  retstr->requiredMemoryForCredential.nvmSize = v6;
}

uint64_t SECCredentialInfo.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0x4173656C75646F6DLL, 0xED0000203A734449);
  v4 = MEMORY[0x1CCA6B440](v2, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA6B380](v4);

  MEMORY[0x1CCA6B380](0x67616B636170200ALL, 0xEE00203A64694165);
  MEMORY[0x1CCA6B380](v1, v3);
  MEMORY[0x1CCA6B380](0xD000000000000011, 0x80000001C7C9FE60);
  v5 = SECMemoryInfo.description.getter();
  MEMORY[0x1CCA6B380](v5);

  MEMORY[0x1CCA6B380](0xD00000000000001FLL, 0x80000001C7C9FE80);
  v6 = SECMemoryInfo.description.getter();
  MEMORY[0x1CCA6B380](v6);

  MEMORY[0x1CCA6B380](10, 0xE100000000000000);
  return 0;
}

unint64_t sub_1C7C6A67C()
{
  v1 = 0x4173656C75646F6DLL;
  v2 = 0x656E6961746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0x416567616B636170;
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

uint64_t sub_1C7C6A714@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C6C2F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C6A73C(uint64_t a1)
{
  v2 = sub_1C7C6B93C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C6A778(uint64_t a1)
{
  v2 = sub_1C7C6B93C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SECCredentialInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2655B0, &unk_1C7C95D68);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v26 = v1[2];
  v27 = v8;
  v11 = v1[5];
  v24 = v1[4];
  v25 = v10;
  v12 = v1[7];
  v22 = v1[6];
  v23 = v11;
  v13 = v1[8];
  v20 = v12;
  v21 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B93C();

  sub_1C7C7DBA4();
  v28 = v9;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
  sub_1C7C2500C(&unk_1EC2643F0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1C7C7DA44();

  if (!v2)
  {
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v17 = v22;
    LOBYTE(v28) = 1;
    sub_1C7C7DA14();
    v28 = v16;
    v29 = v15;
    v30 = v14;
    v31 = 2;
    sub_1C7C6B990();
    sub_1C7C7DA44();
    v28 = v17;
    v29 = v20;
    v30 = v21;
    v31 = 3;
    sub_1C7C7DA44();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SECCredentialInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2655C8, &qword_1C7C95D78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6B93C();
  sub_1C7C7DB94();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
  LOBYTE(v29) = 0;
  sub_1C7C2500C(&qword_1EC264408, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C7C7D9B4();
  v9 = v34;
  LOBYTE(v34) = 1;
  v10 = sub_1C7C7D984();
  v27 = v11;
  v28 = v9;
  v26 = v10;
  LOBYTE(v29) = 2;
  sub_1C7C6B9E4();
  sub_1C7C7D9B4();
  v24 = v34;
  v23 = v35;
  v25 = v36;
  v45 = 3;
  sub_1C7C7D9B4();
  (*(v6 + 8))(v8, v5);
  v22 = v43;
  v12 = v44;
  v21 = *(&v43 + 1);
  v13 = v28;
  v14 = v26;
  *&v29 = v28;
  *(&v29 + 1) = v26;
  v15 = v27;
  v16 = v24;
  *&v30 = v27;
  *(&v30 + 1) = v24;
  v17 = v23;
  *&v31 = v23;
  *(&v31 + 1) = v25;
  v32 = v43;
  v33 = v44;
  *(a2 + 64) = v44;
  v18 = v30;
  *a2 = v29;
  *(a2 + 16) = v18;
  v19 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v19;
  sub_1C7C6BA38(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v25;
  v40 = v22;
  v41 = v21;
  v42 = v12;
  return sub_1C7C6BA70(&v34);
}

SEService::SECMemoryInfo __swiftcall SECMemoryInfo.init(corSize:codSize:nvmSize:)(Swift::Int corSize, Swift::Int codSize, Swift::Int nvmSize)
{
  *v3 = corSize;
  v3[1] = codSize;
  v3[2] = nvmSize;
  result.nvmSize = nvmSize;
  result.codSize = codSize;
  result.corSize = corSize;
  return result;
}

uint64_t SECMemoryInfo.description.getter()
{
  sub_1C7C7D794();

  v0 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v0);

  MEMORY[0x1CCA6B380](0x7A6953646F63202CLL, 0xEB00000000203A65);
  v1 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v1);

  MEMORY[0x1CCA6B380](0x7A69536D766E202CLL, 0xEB00000000203A65);
  v2 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v2);

  return 0x3A657A6953726F63;
}

uint64_t sub_1C7C6B020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C6C478(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C6B048(uint64_t a1)
{
  v2 = sub_1C7C6BAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C6B084(uint64_t a1)
{
  v2 = sub_1C7C6BAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SECMemoryInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2655D8, &qword_1C7C95D80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6BAA0();
  sub_1C7C7DBA4();
  v13 = 0;
  sub_1C7C7DA34();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_1C7C7DA34();
  v11 = 2;
  sub_1C7C7DA34();
  return (*(v5 + 8))(v7, v4);
}

uint64_t SECMemoryInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2655E8, &qword_1C7C95D88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C6BAA0();
  sub_1C7C7DB94();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_1C7C7D9A4();
    v16 = 1;
    v14 = sub_1C7C7D9A4();
    v15 = 2;
    v11 = sub_1C7C7D9A4();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL _s9SEService17SECCredentialInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v20 = a1[7];
  v21 = a1[6];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v18 = a2[6];
  v19 = a1[8];
  v16 = a2[8];
  v17 = a2[7];
  if ((sub_1C7C69B9C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    result = 0;
  }

  else
  {
    v13 = sub_1C7C7DAA4();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v4 == v9 && v5 == v11 && v6 == v10)
  {
    return v21 == v18 && v20 == v17 && v19 == v16;
  }

  return result;
}

BOOL _s9SEService19SECCredentialConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_1C7C7D0D4())
  {
    v4 = *(type metadata accessor for SECCredentialConfig(0) + 20);
    v5 = a1 + v4;
    v6 = *(a1 + v4);
    v7 = *(a1 + v4 + 8);
    v9 = *(a1 + v4 + 16);
    v8 = *(a1 + v4 + 24);
    v10 = *(v5 + 32);
    v11 = (a2 + v4);
    v13 = v11[2];
    v12 = v11[3];
    v14 = v11[4];
    v15 = v6 == *v11 && v7 == v11[1];
    if (v15 || (sub_1C7C7DAA4()) && (sub_1C7C699C4(v9, v13))
    {
      v16 = v8 == v12 && v10 == v14;
      if (v16 || (sub_1C7C7DAA4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

unint64_t sub_1C7C6B668()
{
  result = qword_1EC265550;
  if (!qword_1EC265550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265550);
  }

  return result;
}

unint64_t sub_1C7C6B6BC()
{
  result = qword_1EC265558;
  if (!qword_1EC265558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265558);
  }

  return result;
}

unint64_t sub_1C7C6B710()
{
  result = qword_1EC265568;
  if (!qword_1EC265568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265568);
  }

  return result;
}

uint64_t sub_1C7C6B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SECCredentialConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7C6B7C8()
{
  result = qword_1EC265578;
  if (!qword_1EC265578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265578);
  }

  return result;
}

unint64_t sub_1C7C6B81C()
{
  result = qword_1EC265590;
  if (!qword_1EC265590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265590);
  }

  return result;
}

uint64_t sub_1C7C6B870(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC265580, &qword_1C7C95D58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C6B8E8()
{
  result = qword_1EC2655A8;
  if (!qword_1EC2655A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2655A8);
  }

  return result;
}

unint64_t sub_1C7C6B93C()
{
  result = qword_1EC2655B8;
  if (!qword_1EC2655B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2655B8);
  }

  return result;
}

unint64_t sub_1C7C6B990()
{
  result = qword_1EC2655C0;
  if (!qword_1EC2655C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2655C0);
  }

  return result;
}

unint64_t sub_1C7C6B9E4()
{
  result = qword_1EC2655D0;
  if (!qword_1EC2655D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2655D0);
  }

  return result;
}

unint64_t sub_1C7C6BAA0()
{
  result = qword_1EC2655E0;
  if (!qword_1EC2655E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2655E0);
  }

  return result;
}

uint64_t sub_1C7C6BB1C(uint64_t a1)
{
  result = sub_1C7C7D104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C7C6BBA4(uint64_t a1, int a2)
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

uint64_t sub_1C7C6BBEC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C7C6BC68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C7C6BCB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SECMemoryInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SECMemoryInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1C7C6BDB0()
{
  result = qword_1EC265600;
  if (!qword_1EC265600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265600);
  }

  return result;
}

unint64_t sub_1C7C6BE08()
{
  result = qword_1EC265608;
  if (!qword_1EC265608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265608);
  }

  return result;
}

unint64_t sub_1C7C6BE60()
{
  result = qword_1EC265610;
  if (!qword_1EC265610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265610);
  }

  return result;
}

unint64_t sub_1C7C6BEB8()
{
  result = qword_1EC265618;
  if (!qword_1EC265618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265618);
  }

  return result;
}

unint64_t sub_1C7C6BF10()
{
  result = qword_1EC265620;
  if (!qword_1EC265620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265620);
  }

  return result;
}

unint64_t sub_1C7C6BF68()
{
  result = qword_1EC265628;
  if (!qword_1EC265628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265628);
  }

  return result;
}

unint64_t sub_1C7C6BFC0()
{
  result = qword_1EC265630;
  if (!qword_1EC265630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265630);
  }

  return result;
}

unint64_t sub_1C7C6C018()
{
  result = qword_1EC265638;
  if (!qword_1EC265638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265638);
  }

  return result;
}

unint64_t sub_1C7C6C070()
{
  result = qword_1EC265640;
  if (!qword_1EC265640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265640);
  }

  return result;
}

unint64_t sub_1C7C6C0C8()
{
  result = qword_1EC265648;
  if (!qword_1EC265648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265648);
  }

  return result;
}

unint64_t sub_1C7C6C120()
{
  result = qword_1EC265650;
  if (!qword_1EC265650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265650);
  }

  return result;
}

unint64_t sub_1C7C6C178()
{
  result = qword_1EC265658;
  if (!qword_1EC265658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265658);
  }

  return result;
}

uint64_t sub_1C7C6C1CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6564657263 && a2 == 0xEF73657079546C61;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E4974656C707061 && a2 == 0xEF7365636E617473 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C646E65697266 && a2 == 0xEC000000656D614ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C6C2F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4173656C75646F6DLL && a2 == 0xEB00000000734449;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416567616B636170 && a2 == 0xEA00000000006469 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xED0000657A695372 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001C7C9E5C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C6C478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A6953726F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A6953646F63 && a2 == 0xE700000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A69536D766ELL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

unint64_t SEState.instances.getter()
{
  v1 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  v9 = v3;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v2 + 16))
    {
      v8 = *(v2 + 32 + 16 * v5);
      sub_1C7BFCFA8(v8, *(&v8 + 1));
      sub_1C7BFAE78(&v9, &v8);
      ++v5;
      sub_1C7BFCF38(v8, *(&v8 + 1));
      if (v4 == v5)
      {
        v6 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);

    sub_1C7BFCF38(v8, *(&v8 + 1));

    __break(1u);
  }

  else
  {
    v6 = v3;
LABEL_7:

    return v6;
  }

  return result;
}

void SEState.hasSunsprite.getter()
{
  v1 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (v4 < *(v2 + 16))
    {
      v6 = *v5;
      if (!(*v5 >> 62))
      {
        v7 = *(v5 - 1);
        v8 = &v7[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
        swift_beginAccess();
        v9 = *v8;
        v10 = *(v8 + 1);
        v11 = v8[16];
        if ((v11 - 1) >= 2)
        {
          if (v8[16] && !(v9 ^ 5 | v10))
          {
            v16 = v7;
            sub_1C7BEA9D8(v9, v10, 3u);
            sub_1C7BEA9D8(5, 0, 3u);

            sub_1C7BFCF38(v7, v6);
            return;
          }
        }

        else
        {
          sub_1C7BDF708(*v8, *(v8 + 1), v8[16]);
        }

        v12 = v7;
        sub_1C7BEA9D8(v9, v10, v11);
        sub_1C7BEA9D8(5, 0, 3u);
        sub_1C7BEA9D8(v9, v10, v11);
        v13 = *v8;
        v14 = *(v8 + 1);
        v15 = v8[16];
        if (v15)
        {
          sub_1C7BDF708(v13, v14, v15);
          sub_1C7BDF708(v13, v14, v15);
          sub_1C7BEA9D8(v13, v14, v15);
          sub_1C7BEA9D8(25, 0, 0);
          sub_1C7BFCF38(v7, v6);
          sub_1C7BEA9D8(v13, v14, v15);
        }

        else
        {
          sub_1C7BEA9D8(v13, v14, 0);
          sub_1C7BEA9D8(25, 0, 0);
          sub_1C7BFCF38(v7, v6);
          if (v13 == 25)
          {

            return;
          }
        }
      }

      ++v4;
      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void *SEState.friendlyDetails.getter()
{
  v1 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_1C7C72FB0(MEMORY[0x1E69E7CC0]);
  v4 = 0;
  v5 = *(v2 + 16);
  while (1)
  {
    v6 = 16 * v4 + 40;
    do
    {
      if (v5 == v4)
      {

        return v3;
      }

      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      ++v4;
      v7 = v6 + 16;
      v8 = *(v2 + v6);
      v9 = v8 >> 62 == 3 || v8 >> 62 == 0;
      v6 += 16;
    }

    while (!v9);
    v10 = *(v2 + v7 - 24);
    v11 = &v10[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
    swift_beginAccess();
    v13 = *v11;
    v12 = *(v11 + 1);
    v14 = v11[16];
    v33 = v10;
    v34 = v10;
    sub_1C7BFCFA8(v10, v8);
    sub_1C7BDF708(v13, v12, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1C7C70278(v13, v12, v14);
    v18 = v3[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_22;
    }

    v22 = v17;
    if (v3[3] < v21)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v28 = v16;
    sub_1C7C71FF8();
    v16 = v28;
    v24 = v34;
    if (v22)
    {
LABEL_16:
      v25 = v16;
      sub_1C7BEA9D8(v13, v12, v14);
      v26 = v3[7];
      v27 = *(v26 + 8 * v25);
      *(v26 + 8 * v25) = v33;

      sub_1C7BFCF38(v24, v8);
      continue;
    }

LABEL_18:
    v3[(v16 >> 6) + 8] |= 1 << v16;
    v29 = v3[6] + 24 * v16;
    *v29 = v13;
    *(v29 + 8) = v12;
    *(v29 + 16) = v14;
    *(v3[7] + 8 * v16) = v33;

    sub_1C7BFCF38(v24, v8);
    v30 = v3[2];
    v20 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v20)
    {
      goto LABEL_23;
    }

    v3[2] = v31;
  }

  sub_1C7C70798(v21, isUniquelyReferenced_nonNull_native);
  v16 = sub_1C7C70278(v13, v12, v14);
  if ((v22 & 1) == (v23 & 1))
  {
LABEL_15:
    v24 = v34;
    if (v22)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_24:
  result = sub_1C7C7DAF4();
  __break(1u);
  return result;
}

void sub_1C7C6CB5C(uint64_t a1@<X0>, int64x2_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v12 = v3 != 26 || v4 != 0 || v5 != 3;
    v31 = v12;
    v32 = v8;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        return;
      }

      v21 = *(v7 + 16 * v9 + 32);
      v22 = *(v7 + 16 * v9 + 40);
      v23 = v22 >> 62;
      v33 = v21;
      if ((v22 >> 62) > 1)
      {
        break;
      }

      if (!v23)
      {
        v13 = v21.i64[0];
        v37 = v3;
        v38 = v4;
        v39 = v5;
        v14 = v21.i64[0] + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
LABEL_13:
        swift_beginAccess();
        v15 = *v14;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        v34 = v15;
        v35 = v16;
        v36 = v17;
        sub_1C7BFCFA8(v13, v22);
        sub_1C7BFCFA8(v13, v22);
        sub_1C7BDF708(v3, v4, v5);
        v18 = v15;
        v8 = v32;
        sub_1C7BDF708(v18, v16, v17);
        v19 = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v37, &v34);
        sub_1C7BEA9D8(v3, v4, v5);
        sub_1C7BFCF38(v13, v22);
        sub_1C7BEA9D8(v34, v35, v36);
        v20 = v33.i64[0];
        if (v19)
        {
          goto LABEL_32;
        }

        goto LABEL_14;
      }

      if (v5 != 2)
      {
        goto LABEL_29;
      }

      v24 = v21.i64[0];
      if (v3 == *(v21.i64[0] + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid) && v4 == *(v21.i64[0] + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8))
      {
        sub_1C7BFCFA8(v21.i64[0], v22);
        sub_1C7BFCFA8(v24, v22);
        sub_1C7BDF708(v3, v4, 2u);
        sub_1C7BEA9D8(v3, v4, 2u);
        sub_1C7BFCF38(v24, v22);
LABEL_32:

LABEL_33:
        v27 = v33;
        goto LABEL_34;
      }

      v26 = sub_1C7C7DAA4();
      sub_1C7BFCFA8(v24, v22);
      sub_1C7BFCFA8(v24, v22);
      sub_1C7BDF708(v3, v4, 2u);
      sub_1C7BEA9D8(v3, v4, 2u);
      sub_1C7BFCF38(v24, v22);
      v20 = v33.i64[0];
      if (v26)
      {
        goto LABEL_32;
      }

LABEL_14:
      ++v9;
      sub_1C7BFCF38(v20, v22);
      if (v8 == v9)
      {
        goto LABEL_30;
      }
    }

    if (v23 == 2)
    {
      if (!v31)
      {
        v28 = v21.i64[0];
        sub_1C7BFCFA8(v21.i64[0], v22);
        v29 = v28;

        sub_1C7BEA9D8(26, 0, 3u);
        sub_1C7BFCF38(v28, v22);
        goto LABEL_33;
      }

LABEL_29:
      sub_1C7BFCFA8(v21.i64[0], v22);
      sub_1C7BDF708(v3, v4, v5);
      sub_1C7BEA9D8(v3, v4, v5);
      v20 = v33.i64[0];
      goto LABEL_14;
    }

    v13 = v21.i64[0];
    v37 = v3;
    v38 = v4;
    v39 = v5;
    v14 = v21.i64[0] + OBJC_IVAR____TtC9SEService16SEPackageDetails_type;
    goto LABEL_13;
  }

LABEL_30:

  v27 = vdupq_n_s64(0xF000000000000007);
LABEL_34:
  *a2 = v27;
}

void sub_1C7C6CEA4(uint64_t a1)
{
  v1 = a1;
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1C7C7D6D4();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C7C25C6C(0, v2 & ~(v2 >> 63), 0);
    v3 = v35;
    if (v29)
    {
      v4 = sub_1C7C7D844();
    }

    else
    {
      v4 = sub_1C7C7D684();
      v5 = *(v1 + 36);
    }

    v32 = v4;
    v33 = v5;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v27 = v2;
      v28 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v14 = v32;
        v15 = v34;
        v30 = v33;
        sub_1C7C72CB0(v31, v32, v33, v34, v1, &qword_1EC263470, 0x1E696AEC0, sub_1C7C70484, type metadata accessor for SEPackageDetails);
        v17 = v16;
        v18 = v31[0];
        v19 = sub_1C7C7D304();
        v21 = v20;

        v22 = v3;
        v35 = v3;
        v23 = *(v3 + 16);
        v24 = *(v22 + 24);
        if (v23 >= v24 >> 1)
        {
          sub_1C7C25C6C((v24 > 1), v23 + 1, 1);
          v22 = v35;
        }

        *(v22 + 16) = v23 + 1;
        v25 = (v22 + 24 * v23);
        v25[4] = v19;
        v25[5] = v21;
        v25[6] = v18;
        if (v29)
        {
          v1 = v28;
          if (!v15)
          {
            goto LABEL_26;
          }

          v3 = v22;
          if (sub_1C7C7D864())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          v13 = v6 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265790, &qword_1C7C968A0);
          v26 = sub_1C7C7D274();
          sub_1C7C7D8C4();
          v26(v31, 0);
        }

        else
        {
          v3 = v22;
          v1 = v28;
          sub_1C7C72880(v14, v30, v15, v28, &qword_1EC263470, 0x1E696AEC0, sub_1C7C70484);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          sub_1C7C322B0(v14, v30, v15);
          v32 = v8;
          v33 = v10;
          v34 = v12 & 1;
          v2 = v27;
          v13 = v6 + 1;
        }

        ++v6;
        if (v13 == v2)
        {
          sub_1C7C322B0(v32, v33, v34);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t SEState.description.getter()
{
  v1 = v0;
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0x6F6D654D65657246, 0xEC000000203A7972);
  v2 = [*(v0 + OBJC_IVAR____TtC9SEService7SEState_freeMemory) description];
  v3 = sub_1C7C7D304();
  v5 = v4;

  MEMORY[0x1CCA6B380](v3, v5);

  MEMORY[0x1CCA6B380](0x4979726F6D654D0ALL, 0xED0000203A6F666ELL);
  v6 = [*(v1 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) description];
  v7 = sub_1C7C7D304();
  v9 = v8;

  MEMORY[0x1CCA6B380](v7, v9);

  MEMORY[0x1CCA6B380](0xD000000000000011, 0x80000001C7C9FEA0);
  swift_beginAccess();

  v11 = MEMORY[0x1CCA6B440](v10, &type metadata for SEStorageCredential);
  v13 = v12;

  MEMORY[0x1CCA6B380](v11, v13);

  MEMORY[0x1CCA6B380](0x3A6570795445530ALL, 0xE900000000000020);
  v14 = *(v1 + OBJC_IVAR____TtC9SEService7SEState_seType);
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v15 = 0xE300000000000000;
      v16 = 5459781;
    }

    else if (v14 == 4)
    {
      v15 = 0xE400000000000000;
      v16 = 1869509962;
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x313242534F45;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC9SEService7SEState_seType))
  {
    if (v14 == 1)
    {
      v15 = 0xE300000000000000;
      v16 = 3356496;
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x303143333750;
    }
  }

  else
  {
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  MEMORY[0x1CCA6B380](v16, v15);

  return 0;
}

uint64_t SEState.stringValue.getter()
{
  swift_getObjectType();
  sub_1C7C7CFB4();
  swift_allocObject();
  sub_1C7C7CFA4();
  sub_1C7C74C20(&qword_1EC264F20, v0, type metadata accessor for SEState, &protocol conformance descriptor for SEState);
  v1 = sub_1C7C7CF94();
  v3 = v2;
  v4 = sub_1C7C7D034();
  sub_1C7BDF778(v1, v3);

  return v4;
}

uint64_t SEState.__allocating_init(seType:freeMemory:infoDictionary:)(char *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1C7C73434(a1, a2, a3);
  v9 = v8;

  return v9;
}

uint64_t SEState.init(seType:freeMemory:infoDictionary:)(char *a1, void *a2, uint64_t a3)
{
  sub_1C7C73434(a1, a2, a3);
  v5 = v4;

  return v5;
}

id SERMemoryInfo.__allocating_init(availableIndices:totalIndices:availablePersistentExcludingIndex:availableCommonPoolPersistent:reservedFlashForSE:reservedFlashForEUICC:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = a1;
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = a2;
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = a3;
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = a4;
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = a5;
  *&v13[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = a6;
  v15.receiver = v13;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id SEState.__allocating_init(seType:freeMemory:seStorageCredentials:memoryInfo:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR____TtC9SEService7SEState_seType] = *a1;
  *&v9[OBJC_IVAR____TtC9SEService7SEState_freeMemory] = a2;
  *&v9[OBJC_IVAR____TtC9SEService7SEState_memoryInfo] = a4;
  *&v9[OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials] = a3;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id SEState.init(seType:freeMemory:seStorageCredentials:memoryInfo:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC9SEService7SEState_seType] = *a1;
  *&v4[OBJC_IVAR____TtC9SEService7SEState_freeMemory] = a2;
  *&v4[OBJC_IVAR____TtC9SEService7SEState_memoryInfo] = a4;
  *&v4[OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials] = a3;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t SEState.debugDescription.getter()
{
  swift_getObjectType();
  sub_1C7C7D794();
  v0 = SEState.description.getter();

  v9 = v0;
  MEMORY[0x1CCA6B380](0x632067756265440ALL, 0xED0000203A65646FLL);
  sub_1C7C7CFB4();
  swift_allocObject();
  sub_1C7C7CFA4();
  sub_1C7C74C20(&qword_1EC264F20, v1, type metadata accessor for SEState, &protocol conformance descriptor for SEState);
  v2 = sub_1C7C7CF94();
  v4 = v3;
  v5 = sub_1C7C7D034();
  v7 = v6;
  sub_1C7BDF778(v2, v4);

  MEMORY[0x1CCA6B380](v5, v7);

  return v9;
}

uint64_t SEState.seStorageCredentials.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1C7C6DC34()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC288350);
  __swift_project_value_buffer(v0, qword_1EC288350);
  return sub_1C7C7D1A4();
}

Swift::Void __swiftcall SEState.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9SEService7SEState_seType);
  if (v4 > 2 || v4 == 1 || v4 == 2)
  {
    v5 = sub_1C7C7D2E4();

    v6 = sub_1C7C7D2E4();
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

    v7 = *(v2 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v8 = sub_1C7C7D2E4();
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

    v9 = *(v2 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo);
    v10 = sub_1C7C7D2E4();
    [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

    sub_1C7C7CEA4();
    swift_allocObject();
    sub_1C7C7CE94();
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656C0, &qword_1C7C96570);
    sub_1C7C7410C(&qword_1EC2656C8, sub_1C7C73A9C, MEMORY[0x1E69E6300]);
    v11 = sub_1C7C7CE84();
    v13 = v12;

    v14 = sub_1C7C7D024();
    v15 = sub_1C7C7D2E4();
    [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];

    sub_1C7BDF778(v11, v13);
  }

  else
  {
    __break(1u);
  }
}

id SEState.init(coder:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
  v6 = sub_1C7C7D5E4();
  if (!v6)
  {

LABEL_31:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  type metadata accessor for MemoryUsage();
  v8 = sub_1C7C7D5E4();
  if (!v8)
  {

    goto LABEL_31;
  }

  v9 = v8;
  v10._countAndFlagsBits = sub_1C7C7D304();
  SEType.init(plistString:)(v10);
  if (!v11)
  {
    if (v51 != 6)
    {
      v3[OBJC_IVAR____TtC9SEService7SEState_seType] = v51;
      v48 = OBJC_IVAR____TtC9SEService7SEState_freeMemory;
      *&v3[OBJC_IVAR____TtC9SEService7SEState_freeMemory] = v9;
      v12 = type metadata accessor for SERMemoryInfo();
      v13 = v9;
      v14 = sub_1C7C7D5E4();
      v49 = v13;
      if (!v14)
      {
        v15 = objc_allocWithZone(v12);
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = 0;
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = 0;
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = 0;
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = 0;
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = 0;
        *&v15[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = 0;
        v54.receiver = v15;
        v54.super_class = v12;
        v14 = objc_msgSendSuper2(&v54, sel_init);
      }

      v16 = OBJC_IVAR____TtC9SEService7SEState_memoryInfo;
      *&v3[OBJC_IVAR____TtC9SEService7SEState_memoryInfo] = v14;
      sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
      v17 = sub_1C7C7D5E4();
      if (v17)
      {
        v51 = xmmword_1C7C880C0;
        v18 = v17;
        sub_1C7C7D044();

        v13 = 0xF000000000000000;
      }

      type metadata accessor for SEPackageDetails();
      v19 = sub_1C7C7D5F4();
      if (v19)
      {
        sub_1C7C6CEA4(v19);
        v21 = v20;

        if (*(v21 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656D8, &qword_1C7C96578);
          v22 = sub_1C7C7D914();
        }

        else
        {
          v22 = MEMORY[0x1E69E7CC8];
        }

        v47 = v7;
        v48 = ObjectType;
        *&v51 = v22;

        sub_1C7C71AF4(v30, 1, &v51);

        v31 = v51;
        v53 = MEMORY[0x1E69E7CC0];
        v32 = v51 + 64;
        v33 = 1 << *(v51 + 32);
        v34 = -1;
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        v35 = v34 & *(v51 + 64);
        v16 = (v33 + 63) >> 6;

        for (i = 0; v35; i = v37)
        {
          v37 = i;
LABEL_26:
          v38 = __clz(__rbit64(v35)) | (v37 << 6);
          v39 = (*(v31 + 48) + 16 * v38);
          v40 = v39[1];
          v41 = *(*(v31 + 56) + 8 * v38);
          *&v51 = *v39;
          *(&v51 + 1) = v40;
          v52 = v41;

          v13 = v41;
          sub_1C7C73BB0(&v53, &v51);
          v35 &= v35 - 1;
        }

        while (1)
        {
          v37 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v37 >= v16)
          {

            *&v3[OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials] = v53;
            v50.receiver = v3;
            v50.super_class = v48;
            v42 = objc_msgSendSuper2(&v50, sel_init);

            return v42;
          }

          v35 = *(v32 + 8 * v37);
          ++i;
          if (v35)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        swift_once();
        v23 = sub_1C7C7D1B4();
        __swift_project_value_buffer(v23, qword_1EC288350);
        sub_1C7BED654(v32, v13);
        v24 = sub_1C7C7D194();
        v25 = sub_1C7C7D584();
        sub_1C7BE49C8(v32, v13);
        if (os_log_type_enabled(v24, v25))
        {
          log = v24;
          v26 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *&v51 = v44;
          *v26 = 136315138;
          v27 = sub_1C7C7D034();
          v45 = v32;
          v29 = sub_1C7BE42F8(v27, v28, &v51);

          *(v26 + 4) = v29;
          _os_log_impl(&dword_1C7B9A000, log, v25, "Failed to decode the SEStorageCredentials: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v44);
          MEMORY[0x1CCA6C990](v44, -1, -1);
          MEMORY[0x1CCA6C990](v26, -1, -1);

          sub_1C7BE49C8(v45, v13);
          goto LABEL_17;
        }

        sub_1C7BE49C8(v32, v13);
      }

      else
      {

LABEL_17:
      }

      goto LABEL_31;
    }

    __break(1u);

    __break(1u);
  }

  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1C7C6E92C()
{
  v1 = 0x657079546573;
  v2 = 0x6E4979726F6D656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x6F6D654D65657266;
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

uint64_t sub_1C7C6E9AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C742D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C6E9D4(uint64_t a1)
{
  v2 = sub_1C7C741D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C6EA10(uint64_t a1)
{
  v2 = sub_1C7C741D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SEState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SEState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656F0, &qword_1C7C96580);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C741D8();
  sub_1C7C7DBA4();
  LOBYTE(v14) = *(v3 + OBJC_IVAR____TtC9SEService7SEState_seType);
  LOBYTE(v13) = 0;
  sub_1C7C7422C();
  sub_1C7C7DA44();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    LOBYTE(v13) = 1;
    type metadata accessor for MemoryUsage();
    sub_1C7C74C20(&qword_1EC265240, 255, type metadata accessor for MemoryUsage, &protocol conformance descriptor for MemoryUsage);
    sub_1C7C7DA44();
    v14 = *(v3 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo);
    LOBYTE(v13) = 2;
    type metadata accessor for SERMemoryInfo();
    sub_1C7C74C20(&qword_1EC265710, v9, type metadata accessor for SERMemoryInfo, &protocol conformance descriptor for SERMemoryInfo);
    sub_1C7C7DA44();
    v10 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
    swift_beginAccess();
    v13 = *(v3 + v10);
    v12[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656C0, &qword_1C7C96570);
    sub_1C7C7410C(&qword_1EC2656C8, sub_1C7C73A9C, MEMORY[0x1E69E6300]);
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v8, v5);
}

void *SEState.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265718, &qword_1C7C96588);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C741D8();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_1C7C74280();
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService7SEState_seType) = v13;
    type metadata accessor for MemoryUsage();
    v14 = 1;
    sub_1C7C74C20(&qword_1EC264410, 255, type metadata accessor for MemoryUsage, &protocol conformance descriptor for MemoryUsage);
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService7SEState_freeMemory) = v13;
    type metadata accessor for SERMemoryInfo();
    v14 = 2;
    sub_1C7C74C20(&qword_1EC265730, v10, type metadata accessor for SERMemoryInfo, &protocol conformance descriptor for SERMemoryInfo);
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656C0, &qword_1C7C96570);
    v14 = 3;
    sub_1C7C7410C(&qword_1EC2656E0, sub_1C7C74184, MEMORY[0x1E69E6330]);
    sub_1C7C7D9B4();
    *(v1 + OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials) = v13;
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v12, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void *sub_1C7C6F200@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SEState.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id SERMemoryInfo.init(availableIndices:totalIndices:availablePersistentExcludingIndex:availableCommonPoolPersistent:reservedFlashForSE:reservedFlashForEUICC:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = a1;
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = a2;
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = a3;
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = a4;
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = a5;
  *&v6[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = a6;
  v8.receiver = v6;
  v8.super_class = type metadata accessor for SERMemoryInfo();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t static SERMemoryInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC265660 = a1;
  return result;
}

void sub_1C7C6F460(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices);
  v4 = sub_1C7C7D2E4();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices);
  v6 = sub_1C7C7D2E4();
  [a1 encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  v8 = sub_1C7C7D2E4();
  [a1 encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent);
  v10 = sub_1C7C7D2E4();
  [a1 encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE);
  v12 = sub_1C7C7D2E4();
  [a1 encodeInteger:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC);
  v14 = sub_1C7C7D2E4();
  [a1 encodeInteger:v13 forKey:v14];
}

id SERMemoryInfo.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C7C74448(a1);

  return v4;
}

id SERMemoryInfo.init(coder:)(void *a1)
{
  v2 = sub_1C7C74448(a1);

  return v2;
}

id sub_1C7C6F770(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C7C7D2E4();

  return v5;
}

uint64_t sub_1C7C6F7E0()
{
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000013, 0x80000001C7C9FFD0);
  v0 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v0);

  MEMORY[0x1CCA6B380](0xD000000000000010, 0x80000001C7C9FFF0);
  v1 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v1);

  MEMORY[0x1CCA6B380](0xD000000000000025, 0x80000001C7CA0010);
  v2 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v2);

  MEMORY[0x1CCA6B380](0xD000000000000021, 0x80000001C7CA0040);
  v3 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v3);

  MEMORY[0x1CCA6B380](0xD000000000000016, 0x80000001C7CA0070);
  v4 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v4);

  MEMORY[0x1CCA6B380](0xD000000000000019, 0x80000001C7CA0090);
  v5 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v5);

  MEMORY[0x1CCA6B380](93, 0xE100000000000000);
  return 0;
}

id SERMemoryInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C7C6FADC()
{
  v1 = *v0;
  if (v1 > 2)
  {
    v4 = 0xD000000000000015;
    if (v1 == 4)
    {
      v4 = 0xD000000000000012;
    }

    if (v1 == 3)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x646E496C61746F74;
    if (v1 != 1)
    {
      v2 = 0xD000000000000021;
    }

    if (*v0)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

uint64_t sub_1C7C6FBB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C74A1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C6FBDC(uint64_t a1)
{
  v2 = sub_1C7C74638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C6FC18(uint64_t a1)
{
  v2 = sub_1C7C74638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SERMemoryInfo.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SERMemoryInfo();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C7C6FC88(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265738, &qword_1C7C96590);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C74638();
  sub_1C7C7DBA4();
  v8[15] = 0;
  sub_1C7C7DA34();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1C7C7DA34();
  v8[13] = 2;
  sub_1C7C7DA34();
  v8[12] = 3;
  sub_1C7C7DA34();
  v8[11] = 4;
  sub_1C7C7DA34();
  v8[10] = 5;
  sub_1C7C7DA34();
  return (*(v4 + 8))(v6, v3);
}

void *SERMemoryInfo.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265748, &qword_1C7C96598);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C74638();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for SERMemoryInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = 0;
    *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices) = sub_1C7C7D9A4();
    v12 = 1;
    *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices) = sub_1C7C7D9A4();
    v12 = 2;
    *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex) = sub_1C7C7D9A4();
    v12 = 3;
    *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent) = sub_1C7C7D9A4();
    v12 = 4;
    *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE) = sub_1C7C7D9A4();
    v12 = 5;
    *(v1 + OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC) = sub_1C7C7D9A4();
    v10 = type metadata accessor for SERMemoryInfo();
    v11.receiver = v1;
    v11.super_class = v10;
    v3 = objc_msgSendSuper2(&v11, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void *sub_1C7C70188@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for SERMemoryInfo());
  result = SERMemoryInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C7C70200(uint64_t a1, uint64_t a2)
{
  sub_1C7C7DB64();
  sub_1C7C7D364();
  v4 = sub_1C7C7DB84();

  return sub_1C7C71610(a1, a2, v4);
}

unint64_t sub_1C7C70278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v8[9] = a1;
  v8[10] = a2;
  v9 = a3;
  sub_1C7C7DB64();
  CredentialType.hash(into:)(v8);
  v6 = sub_1C7C7DB84();

  return sub_1C7C716C8(a1, a2, v3, v6);
}

unint64_t sub_1C7C70304(uint64_t a1)
{
  v2 = sub_1C7C7D714();

  return sub_1C7C7179C(a1, v2);
}

unint64_t sub_1C7C703E8(uint64_t a1)
{
  sub_1C7C7D104();
  sub_1C7C74C20(&unk_1EC264F40, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1C7C7D284();

  return sub_1C7C71930(a1, v2);
}

uint64_t sub_1C7C704D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
  v35 = v4;
  result = sub_1C7C7D904();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v36 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_1C7BDF708(v23, v24, v25);
      }

      v38 = v23;
      v39 = v24;
      v40 = v25;
      sub_1C7C7DB64();
      CredentialType.hash(into:)(v37);
      result = sub_1C7C7DB84();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v36;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C7C70798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2657E0, &qword_1C7C968C0);
  v37 = v4;
  result = sub_1C7C7D904();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        sub_1C7BDF708(*v22, *(v22 + 8), *(v22 + 16));
        v27 = v26;
      }

      v40 = v23;
      v41 = v24;
      v42 = v25;
      sub_1C7C7DB64();
      CredentialType.hash(into:)(v39);
      result = sub_1C7C7DB84();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C7C70A64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657D8, &qword_1C7C968B8);
  v34 = v4;
  result = sub_1C7C7D904();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C7C7DB64();
      sub_1C7C7D364();
      result = sub_1C7C7DB84();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C7C70D2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1C7C7D904();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = sub_1C7C7D614();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_1C7C70F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C7C7D104();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264608, &qword_1C7C90808);
  v39 = v4;
  result = sub_1C7C7D904();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1C7C74C20(&unk_1EC264F40, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1C7C7D284();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C7C7136C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656D8, &qword_1C7C96578);
  v35 = v4;
  result = sub_1C7C7D904();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1C7C7DB64();
      sub_1C7C7D364();
      result = sub_1C7C7DB84();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1C7C71610(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C7C7DAA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C7C716C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v15[0] = a1;
  v15[1] = a2;
  v16 = a3;
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *(v8 + 8);
      v12 = *v8;
      v13 = v9;
      v14 = *(v8 + 16);
      sub_1C7BDF708(v12, v9, v14);
      v10 = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v12, v15);
      sub_1C7BEA9D8(v12, v13, v14);
      if (v10)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1C7C7179C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C7C74CE8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1CCA6B730](v9, a1);
      sub_1C7C2D790(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C7C71864(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1C7BED6A8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1C7C7D624();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1C7C71930(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1C7C7D104();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1C7C74C20(&unk_1EC265798, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1C7C7D2C4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void sub_1C7C71AF4(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1C7C70200(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1C7C7136C(v16, v5 & 1);
    v11 = sub_1C7C70200(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1C7C7DAF4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1C7C726C4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C7C7D794();
    MEMORY[0x1CCA6B380](0xD00000000000001BLL, 0x80000001C7C9EFC0);
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](39, 0xE100000000000000);
    sub_1C7C7D8D4();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_1C7C70200(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1C7C7136C(v33, 1);
        v29 = sub_1C7C70200(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_1C7C71E84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
  v2 = *v0;
  v3 = sub_1C7C7D8F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = sub_1C7BDF708(v19, v20, v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1C7C71FF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2657E0, &qword_1C7C968C0);
  v2 = *v0;
  v3 = sub_1C7C7D8F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_1C7BDF708(v19, v20, v23);
        result = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C7C72170()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657D8, &qword_1C7C968B8);
  v2 = *v0;
  v3 = sub_1C7C7D8F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1C7C72300(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C7C7D8F4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_1C7C72450()
{
  v1 = v0;
  v31 = sub_1C7C7D104();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264608, &qword_1C7C90808);
  v3 = *v0;
  v4 = sub_1C7C7D8F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_1C7C726C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2656D8, &qword_1C7C96578);
  v2 = *v0;
  v3 = sub_1C7C7D8F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1C7C72880(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6, void (*a7)())
{
  if (a3)
  {
    if (sub_1C7C7D874() == *(a4 + 36))
    {
      sub_1C7C7D884();
      sub_1C7BED6A8(0, a5, a6);
      swift_dynamicCast();
      a7();
      v11 = v10;

      if (v11)
      {
        sub_1C7C7D854();
        sub_1C7C7D8A4();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1C7C7D6A4();
}

void sub_1C7C72A9C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t *a6, void *a7, uint64_t (*a8)())
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_1C7C7D8B4();
      sub_1C7BED6A8(0, a6, a7);
      swift_dynamicCast();
      sub_1C7BED6A8(0, &qword_1EC2645D8, 0x1E696AD98);
      swift_dynamicCast();
      *a1 = v19;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_1C7C7D874() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1C7C7D884();
  sub_1C7BED6A8(0, a6, a7);
  swift_dynamicCast();
  a2 = a8();
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v16 = *(*(a5 + 48) + 8 * a2);
  v17 = *(*(a5 + 56) + 8 * a2);
  *a1 = v17;
  v16;
  v18 = v17;
}

void sub_1C7C72CB0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t *a6, void *a7, uint64_t (*a8)(), uint64_t (*a9)(void))
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_1C7C7D8B4();
      sub_1C7BED6A8(0, a6, a7);
      swift_dynamicCast();
      a9(0);
      swift_dynamicCast();
      *a1 = v20;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_1C7C7D874() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1C7C7D884();
  sub_1C7BED6A8(0, a6, a7);
  swift_dynamicCast();
  a2 = a8();
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v17 = *(*(a5 + 48) + 8 * a2);
  v18 = *(*(a5 + 56) + 8 * a2);
  *a1 = v18;
  v17;
  v19 = v18;
}

unint64_t sub_1C7C72E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
    v3 = sub_1C7C7D914();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_1C7BDF708(v5, v6, *(i - 8));
      result = sub_1C7C70278(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C7C72FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2657E0, &qword_1C7C968C0);
    v3 = sub_1C7C7D914();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_1C7BDF708(v5, v6, *(i - 8));
      v9 = v8;
      result = sub_1C7C70278(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C7C730F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657D8, &qword_1C7C968B8);
    v3 = sub_1C7C7D914();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C7C70200(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C7C73208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657A8, &qword_1C7C968A8);
    v3 = sub_1C7C7D914();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C7C74C68(v4, v13);
      result = sub_1C7C70304(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C7C74CD8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C7C73338(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C7C7D914();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1C7C70200(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C7C73434(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC9SEService7SEState_seType] = *a1;
  *&v4[OBJC_IVAR____TtC9SEService7SEState_freeMemory] = a2;
  v8 = type metadata accessor for SERMemoryInfo();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = 0;
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = 0;
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = 0;
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = 0;
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = 0;
  *&v9[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = 0;
  v62.receiver = v9;
  v62.super_class = v8;
  v10 = a2;
  v49 = v4;
  *&v4[OBJC_IVAR____TtC9SEService7SEState_memoryInfo] = objc_msgSendSuper2(&v62, sel_init);
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v56 = a3;

  v16 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  v54 = a3 + 64;
  v55 = v15;
  if (!v14)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    while (1)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = *(*(v56 + 56) + ((v16 << 9) | (8 * v18)));
      v20 = &v19[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
      swift_beginAccess();
      v22 = *v20;
      v23 = v20[16];
      if (v23 == 3)
      {
        break;
      }

      if (!v20[16])
      {
        v21.i32[0] = dword_1F474F9E0;
        if (vmaxv_u16(vceq_s16((vmovl_u8(v21).u64[0] & 0xFF00FF00FF00FFLL), (*&vdup_n_s16(v22) & 0xFF00FF00FF00FFLL))))
        {
          v24 = *(v20 + 1);
          v25 = *v20;
          if (v25 <= 0xA)
          {
            if (v25 == 9)
            {
              goto LABEL_34;
            }

            if (v25 == 10)
            {
LABEL_20:
              v27 = 1;
              goto LABEL_36;
            }

            goto LABEL_23;
          }

          if (v25 != 11)
          {
            if (v25 == 12)
            {
              goto LABEL_32;
            }

            goto LABEL_23;
          }

LABEL_35:
          v27 = 3;
          goto LABEL_36;
        }
      }

      v42 = 0;
LABEL_38:
      v44 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_1C7C2A9FC(0, *(v53 + 2) + 1, 1, v53);
      }

      v46 = *(v53 + 2);
      v45 = *(v53 + 3);
      if (v46 >= v45 >> 1)
      {
        v53 = sub_1C7C2A9FC((v45 > 1), v46 + 1, 1, v53);
      }

      *(v53 + 2) = v46 + 1;
      v47 = &v53[16 * v46];
      *(v47 + 4) = v19;
      *(v47 + 5) = v42;
      v15 = v55;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v24 = *(v20 + 1);
    if ((v22 - 11) > 3)
    {
      v42 = 0;
      goto LABEL_37;
    }

    v26 = v22 & 0xF;
    if (v26 <= 0xC)
    {
      if (v26 != 11)
      {
        if (v26 == 12)
        {
          goto LABEL_20;
        }

        goto LABEL_23;
      }

LABEL_34:
      v27 = 2;
LABEL_36:
      type metadata accessor for SEStorageCredential.Endpoints();
      v43 = swift_allocObject();
      *(v43 + 16) = v27;
      *(v43 + 24) = MEMORY[0x1E69E7CC0];
      v42 = v43 | 0xC000000000000000;
      sub_1C7BDF708(v22, v24, v23);
      sub_1C7BDF708(v22, v24, v23);
LABEL_37:
      v11 = v54;
      goto LABEL_38;
    }

    if (v26 == 13)
    {
      goto LABEL_35;
    }

    if (v26 == 14)
    {
LABEL_32:
      v27 = 0;
      goto LABEL_36;
    }

LABEL_23:
    v28 = v19;
    sub_1C7BDF708(v22, v24, v23);
    v29 = v28;
    sub_1C7BDF708(v22, v24, v23);
    if (qword_1EC262230 != -1)
    {
      swift_once();
    }

    v30 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v30, qword_1EC265818);
    sub_1C7BDF708(v22, v24, v23);
    v31 = sub_1C7C7D194();
    v32 = sub_1C7C7D584();
    sub_1C7BEA9D8(v22, v24, v23);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61[0] = v51;
      *v33 = 136315138;
      v58 = v22;
      v59 = v24;
      v60 = v23;
      sub_1C7BDF708(v22, v24, v23);
      sub_1C7C7D324();
      v50 = v32;
      v34 = sub_1C7C7D334();
      v52 = v29;
      v36 = v35;

      v37 = sub_1C7BE42F8(v34, v36, v61);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1C7B9A000, v31, v50, "Cannot initalize EndpointType using %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x1CCA6C990](v51, -1, -1);
      MEMORY[0x1CCA6C990](v33, -1, -1);

      sub_1C7BEA9D8(v22, v24, v23);
      v38 = v52;
    }

    else
    {

      sub_1C7BEA9D8(v22, v24, v23);
      v38 = v29;
    }

    sub_1C7C7D794();

    v61[0] = 0xD000000000000024;
    v61[1] = 0x80000001C7CA0150;
    v58 = v22;
    v59 = v24;
    v60 = v23;
    sub_1C7BDF708(v22, v24, v23);
    sub_1C7C7D324();
    v39 = sub_1C7C7D334();
    v41 = v40;

    sub_1C7BEA9D8(v22, v24, v23);
    MEMORY[0x1CCA6B380](v39, v41);

    v11 = v54;
    v15 = v55;
  }

  while (v14);
LABEL_5:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      *&v49[OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials] = v53;
      v57.receiver = v49;
      v57.super_class = ObjectType;
      objc_msgSendSuper2(&v57, sel_init);
      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1C7C73A9C()
{
  result = qword_1EC2656D0;
  if (!qword_1EC2656D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2656D0);
  }

  return result;
}

void *sub_1C7C73B14(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1C7C7D444();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void sub_1C7C73BB0(char **a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = &v6[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
  swift_beginAccess();
  v8 = *(v7 + 1);
  v10 = v7[16];
  v47[0] = *v7;
  v9 = v47[0];
  v47[1] = v8;
  v48 = v10;
  v49 = xmmword_1C7C84BB0;
  v50 = 0;
  v11 = v6;
  sub_1C7BDF708(v47[0], v8, v10);
  if (!_s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(v47, &v49))
  {
    if (v10)
    {
      if (v10 != 3 || __PAIR128__((v9 >= 0xB) + v8 - 1, v9 - 11) >= 4)
      {
        sub_1C7BEA9D8(v9, v8, v10);
LABEL_16:
        v24 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1C7C2A9FC(0, *(v24 + 16) + 1, 1, v24);
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          v24 = sub_1C7C2A9FC((v25 > 1), v26 + 1, 1, v24);
        }

        *(v24 + 16) = v26 + 1;
        v27 = v24 + 16 * v26;
        *(v27 + 32) = v11;
        *(v27 + 40) = 0;
LABEL_21:
        *a1 = v24;
        return;
      }
    }

    else if (!sub_1C7BDF6D8(v9, &unk_1F474FA10))
    {
      goto LABEL_16;
    }

    *&v49 = v9;
    *(&v49 + 1) = v8;
    v50 = v10;
    v19 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
    swift_beginAccess();
    v20 = *&v11[v19];
    if (v20 >> 62)
    {
      v21 = sub_1C7C7D6D4();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1C7BDF708(v9, v8, v10);
    v22 = sub_1C7C73B14(0x6E776F6E6B6E75, 0xE700000000000000, v21);
    v23 = sub_1C7C78C70(&v49, v22);
    if (v2)
    {

      sub_1C7BEA9D8(v9, v8, v10);
      return;
    }

    v51 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265780, &unk_1C7C95D30);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C7C96560;
    *&v49 = v9;
    *(&v49 + 1) = v8;
    v50 = v10;
    v29 = CredentialType.instanceAID.getter();
    v41 = v30;
    v42 = v29;
    v44 = v9;
    v45 = v8;
    v46 = v10;
    v24 = CredentialType.moduleAID.getter();
    if (!*(v24 + 16))
    {

      __break(1u);
      return;
    }

    sub_1C7BEA9D8(v9, v8, v10);
    if (*(v24 + 16))
    {
      v32 = *(v24 + 32);
      v31 = *(v24 + 40);

      v33 = type metadata accessor for SEApplet();
      v34 = objc_allocWithZone(v33);
      v35 = &v34[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
      *v35 = v42;
      *(v35 + 1) = v41;
      v36 = &v34[OBJC_IVAR____TtC9SEService8SEApplet_moduleIdentifier];
      *v36 = v32;
      *(v36 + 1) = v31;
      *&v34[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState] = 15;
      v43.receiver = v34;
      v43.super_class = v33;
      *(v28 + 32) = objc_msgSendSuper2(&v43, sel_init);
      *&v11[v19] = v28;

      v24 = *a1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v38 = *(v24 + 16);
        v37 = *(v24 + 24);
        if (v38 >= v37 >> 1)
        {
          v24 = sub_1C7C2A9FC((v37 > 1), v38 + 1, 1, v24);
        }

        v39 = v51 | 0xC000000000000000;
        *(v24 + 16) = v38 + 1;
        v40 = v24 + 16 * v38;
        *(v40 + 32) = v11;
        *(v40 + 40) = v39;
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    v24 = sub_1C7C2A9FC(0, *(v24 + 16) + 1, 1, v24);
    goto LABEL_25;
  }

  sub_1C7BEA9D8(v9, v8, v10);
  if (qword_1EC262220 != -1)
  {
    swift_once();
  }

  v12 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v12, qword_1EC288350);
  v13 = v11;

  v14 = sub_1C7C7D194();
  v15 = sub_1C7C7D584();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v47[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_1C7BE42F8(0x646F632874696E69, 0xEC000000293A7265, v47);
    *(v16 + 12) = 2048;
    *(v16 + 14) = 161;
    *(v16 + 22) = 2080;

    v18 = sub_1C7BE42F8(v5, v4, v47);

    *(v16 + 24) = v18;
    _os_log_impl(&dword_1C7B9A000, v14, v15, "%s:%ld Dropping Nightmare credential with AID %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v17, -1, -1);
    MEMORY[0x1CCA6C990](v16, -1, -1);
  }
}

uint64_t sub_1C7C7410C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2656C0, &qword_1C7C96570);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C74184()
{
  result = qword_1EC2656E8;
  if (!qword_1EC2656E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2656E8);
  }

  return result;
}

unint64_t sub_1C7C741D8()
{
  result = qword_1EC2656F8;
  if (!qword_1EC2656F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2656F8);
  }

  return result;
}

unint64_t sub_1C7C7422C()
{
  result = qword_1EC265700;
  if (!qword_1EC265700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265700);
  }

  return result;
}

unint64_t sub_1C7C74280()
{
  result = qword_1EC265720;
  if (!qword_1EC265720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265720);
  }

  return result;
}

uint64_t sub_1C7C742D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6D654D65657266 && a2 == 0xEA00000000007972 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E4979726F6D656DLL && a2 == 0xEA00000000006F66 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C7C9FEC0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

id sub_1C7C74448(void *a1)
{
  v3 = sub_1C7C7D2E4();
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableIndices] = v4;
  v5 = sub_1C7C7D2E4();
  v6 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_totalIndices] = v6;
  v7 = sub_1C7C7D2E4();
  v8 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex] = v8;
  v9 = sub_1C7C7D2E4();
  v10 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_availableCommonPoolPersistent] = v10;
  v11 = sub_1C7C7D2E4();
  v12 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForSE] = v12;
  v13 = sub_1C7C7D2E4();
  v14 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService13SERMemoryInfo_reservedFlashForEUICC] = v14;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SERMemoryInfo();
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_1C7C74638()
{
  result = qword_1EC265740;
  if (!qword_1EC265740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265740);
  }

  return result;
}

unint64_t sub_1C7C74810()
{
  result = qword_1EC265750;
  if (!qword_1EC265750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265750);
  }

  return result;
}

unint64_t sub_1C7C74868()
{
  result = qword_1EC265758;
  if (!qword_1EC265758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265758);
  }

  return result;
}

unint64_t sub_1C7C748C0()
{
  result = qword_1EC265760;
  if (!qword_1EC265760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265760);
  }

  return result;
}

unint64_t sub_1C7C74918()
{
  result = qword_1EC265768;
  if (!qword_1EC265768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265768);
  }

  return result;
}

unint64_t sub_1C7C74970()
{
  result = qword_1EC265770;
  if (!qword_1EC265770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265770);
  }

  return result;
}

unint64_t sub_1C7C749C8()
{
  result = qword_1EC265778;
  if (!qword_1EC265778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265778);
  }

  return result;
}

uint64_t sub_1C7C74A1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001C7C9FF20 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E496C61746F74 && a2 == 0xEC00000073656369 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001C7C9FF40 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001C7C9FF70 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C7C9FF90 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C7C9FFB0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1C7C74C20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C7C74C68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2657B0, &qword_1C7C93F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C7C74CD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static SESFeature.isEnabled(_:)(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for SESFeature.RuntimeFlag;
  v4[4] = sub_1C7C643D8();
  LOBYTE(v4[0]) = v1;
  v2 = sub_1C7C7D114();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

const char *SESFeature.RuntimeFlag.feature.getter()
{
  v1 = *v0;
  v2 = "secureElementCredential";
  v3 = "storageManagementVision";
  if (v1 != 5)
  {
    v3 = "storageManagementPairedWatch";
  }

  v4 = "storageManagementPhone";
  if (v1 != 3)
  {
    v4 = "storageManagementMac";
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = "secDynamicSE";
  if (v1 != 1)
  {
    v5 = "secGDPR";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SESFeature.RuntimeFlag.hashValue.getter()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

unint64_t sub_1C7C74EE8()
{
  result = qword_1EC2657F0;
  if (!qword_1EC2657F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2657F0);
  }

  return result;
}

const char *sub_1C7C74F50()
{
  v1 = *v0;
  v2 = "secureElementCredential";
  v3 = "storageManagementVision";
  if (v1 != 5)
  {
    v3 = "storageManagementPairedWatch";
  }

  v4 = "storageManagementPhone";
  if (v1 != 3)
  {
    v4 = "storageManagementMac";
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = "secDynamicSE";
  if (v1 != 1)
  {
    v5 = "secGDPR";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

SEService::SEType_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SEType.init(plistString:)(Swift::String plistString)
{
  object = plistString._object;
  countAndFlagsBits = plistString._countAndFlagsBits;
  v4 = v1;
  v5 = 3356496;
  v6 = byte_1F474FA08;
  if (byte_1F474FA08 > 2u)
  {
    v9 = 0xE400000000000000;
    v10 = 1869509962;
    if (byte_1F474FA08 != 4)
    {
      v10 = 0x313242534F45;
      v9 = 0xE600000000000000;
    }

    if (byte_1F474FA08 == 3)
    {
      v11 = 5459781;
    }

    else
    {
      v11 = v10;
    }

    if (byte_1F474FA08 == 3)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v9;
    }

    if (v11 != countAndFlagsBits)
    {
      goto LABEL_21;
    }

LABEL_20:
    if (v8 == plistString._object)
    {
      goto LABEL_92;
    }

    goto LABEL_21;
  }

  if (!byte_1F474FA08)
  {
    goto LABEL_22;
  }

  if (byte_1F474FA08 == 1)
  {
    v7 = 3356496;
  }

  else
  {
    v7 = 0x303143333750;
  }

  if (byte_1F474FA08 == 1)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v7 == countAndFlagsBits)
  {
    goto LABEL_20;
  }

LABEL_21:
  v12 = sub_1C7C7DAA4();

  if (v12)
  {
    goto LABEL_94;
  }

LABEL_22:
  v6 = byte_1F474FA09;
  if (byte_1F474FA09 > 2u)
  {
    if (byte_1F474FA09 == 3)
    {
      v14 = 0xE300000000000000;
      if (countAndFlagsBits != 5459781)
      {
        goto LABEL_40;
      }
    }

    else if (byte_1F474FA09 == 4)
    {
      v14 = 0xE400000000000000;
      if (countAndFlagsBits != 1869509962)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (countAndFlagsBits != 0x313242534F45)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_39;
  }

  if (!byte_1F474FA09)
  {
    goto LABEL_41;
  }

  if (byte_1F474FA09 == 1)
  {
    v13 = 3356496;
  }

  else
  {
    v13 = 0x303143333750;
  }

  if (byte_1F474FA09 == 1)
  {
    v14 = 0xE300000000000000;
  }

  else
  {
    v14 = 0xE600000000000000;
  }

  if (v13 == countAndFlagsBits)
  {
LABEL_39:
    if (v14 != object)
    {
      goto LABEL_40;
    }

LABEL_92:

    goto LABEL_94;
  }

LABEL_40:
  v15 = sub_1C7C7DAA4();

  if (v15)
  {
    goto LABEL_94;
  }

LABEL_41:
  v6 = byte_1F474FA0A;
  if (byte_1F474FA0A > 2u)
  {
    if (byte_1F474FA0A == 3)
    {
      v16 = 0xE300000000000000;
      v17 = 5459781;
    }

    else if (byte_1F474FA0A == 4)
    {
      v16 = 0xE400000000000000;
      v17 = 1869509962;
    }

    else
    {
      v16 = 0xE600000000000000;
      v17 = 0x313242534F45;
    }
  }

  else
  {
    if (!byte_1F474FA0A)
    {
      goto LABEL_54;
    }

    if (byte_1F474FA0A == 1)
    {
      v16 = 0xE300000000000000;
      v17 = 3356496;
    }

    else
    {
      v16 = 0xE600000000000000;
      v17 = 0x303143333750;
    }
  }

  if (v17 == countAndFlagsBits && v16 == object)
  {
    goto LABEL_92;
  }

  v18 = sub_1C7C7DAA4();

  if (v18)
  {
    goto LABEL_94;
  }

LABEL_54:
  v6 = byte_1F474FA0B;
  if (byte_1F474FA0B > 2u)
  {
    if (byte_1F474FA0B == 3)
    {
      v19 = 0xE300000000000000;
      v20 = 5459781;
    }

    else if (byte_1F474FA0B == 4)
    {
      v19 = 0xE400000000000000;
      v20 = 1869509962;
    }

    else
    {
      v19 = 0xE600000000000000;
      v20 = 0x313242534F45;
    }

LABEL_64:
    if (v20 == countAndFlagsBits && v19 == object)
    {
      goto LABEL_92;
    }

    v21 = sub_1C7C7DAA4();

    if (v21)
    {
      goto LABEL_94;
    }

    goto LABEL_67;
  }

  if (byte_1F474FA0B)
  {
    if (byte_1F474FA0B == 1)
    {
      v19 = 0xE300000000000000;
      v20 = 3356496;
    }

    else
    {
      v19 = 0xE600000000000000;
      v20 = 0x303143333750;
    }

    goto LABEL_64;
  }

LABEL_67:
  v6 = byte_1F474FA0C;
  if (byte_1F474FA0C > 2u)
  {
    if (byte_1F474FA0C == 3)
    {
      v22 = 0xE300000000000000;
      v23 = 5459781;
    }

    else if (byte_1F474FA0C == 4)
    {
      v22 = 0xE400000000000000;
      v23 = 1869509962;
    }

    else
    {
      v22 = 0xE600000000000000;
      v23 = 0x313242534F45;
    }
  }

  else
  {
    if (!byte_1F474FA0C)
    {
      goto LABEL_80;
    }

    if (byte_1F474FA0C == 1)
    {
      v22 = 0xE300000000000000;
      v23 = 3356496;
    }

    else
    {
      v22 = 0xE600000000000000;
      v23 = 0x303143333750;
    }
  }

  if (v23 == countAndFlagsBits && v22 == object)
  {
    goto LABEL_92;
  }

  v24 = sub_1C7C7DAA4();

  if ((v24 & 1) == 0)
  {
LABEL_80:
    v6 = byte_1F474FA0D;
    if (byte_1F474FA0D > 2u)
    {
      if (byte_1F474FA0D == 3)
      {
        v25 = 0xE300000000000000;
        v5 = 5459781;
      }

      else if (byte_1F474FA0D == 4)
      {
        v25 = 0xE400000000000000;
        v5 = 1869509962;
      }

      else
      {
        v25 = 0xE600000000000000;
        v5 = 0x313242534F45;
      }
    }

    else
    {
      if (!byte_1F474FA0D)
      {
        goto LABEL_96;
      }

      if (byte_1F474FA0D == 1)
      {
        v25 = 0xE300000000000000;
      }

      else
      {
        v25 = 0xE600000000000000;
        v5 = 0x303143333750;
      }
    }

    if (v5 == countAndFlagsBits && v25 == object)
    {
      goto LABEL_92;
    }

    v26 = sub_1C7C7DAA4();

    if (v26)
    {
      goto LABEL_94;
    }

LABEL_96:

    v6 = 6;
    goto LABEL_95;
  }

LABEL_94:

LABEL_95:
  *v4 = v6;
  return result;
}

SEService::SEType_optional __swiftcall SEType.init(hwType:)(Swift::Int hwType)
{
  if ((hwType - 3) >= 8)
  {
    v2 = 5;
  }

  else
  {
    v2 = 0x403020202010500uLL >> (8 * (hwType - 3));
  }

  *v1 = v2;
  return hwType;
}

SEService::SEType_optional __swiftcall SEType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x5040302010006uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C7C7558C()
{
  result = qword_1EC2657F8;
  if (!qword_1EC2657F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2657F8);
  }

  return result;
}

uint64_t sub_1C7C755E0()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1 + 1);
  return sub_1C7C7DB84();
}

uint64_t sub_1C7C75658(uint64_t a1)
{
  v2 = *v1;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v2 + 1);
  return sub_1C7C7DB84();
}

unint64_t sub_1C7C75768()
{
  result = qword_1EC265800;
  if (!qword_1EC265800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC265808, &qword_1C7C96A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265800);
  }

  return result;
}

unint64_t sub_1C7C757EC()
{
  result = qword_1EC265810;
  if (!qword_1EC265810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265810);
  }

  return result;
}

uint64_t sub_1C7C75840()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC288368);
  __swift_project_value_buffer(v0, qword_1EC288368);
  return sub_1C7C7D1A4();
}

id SEStorageCredential.packageDetails.getter()
{
  v1 = *(v0 + 8) >> 62;
  if (v1 != 3 && v1 != 0)
  {
    return 0;
  }

  v4 = *v0;
  v3 = *v0;
  return v4;
}

unint64_t SEStorageCredential.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8) >> 62;
  if (v2 <= 1)
  {
    if (v2)
    {
      sub_1C7C7D794();

      v14 = 0xD00000000000001ALL;
      v3 = ESIMProfileInfo.description.getter();
    }

    else
    {
      sub_1C7C7D794();

      v14 = 0xD000000000000024;
      v3 = SEPackageDetails.description.getter();
    }

    MEMORY[0x1CCA6B380](v3);
    goto LABEL_8;
  }

  if (v2 == 2)
  {
    sub_1C7C7D794();

    v14 = 0xD00000000000001FLL;
    v4 = [v1 description];
    v5 = sub_1C7C7D304();
    v7 = v6;

    MEMORY[0x1CCA6B380](v5, v7);
LABEL_8:

    return v14;
  }

  sub_1C7C7D794();

  v9 = SEPackageDetails.description.getter();
  MEMORY[0x1CCA6B380](v9);

  MEMORY[0x1CCA6B380](8254, 0xE200000000000000);
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000010, 0x80000001C7CA0290);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](0x203A736469202CLL, 0xE700000000000000);
  swift_beginAccess();

  v11 = MEMORY[0x1CCA6B440](v10, MEMORY[0x1E69E6158]);
  v13 = v12;

  MEMORY[0x1CCA6B380](v11, v13);

  MEMORY[0x1CCA6B380](125, 0xE100000000000000);
  MEMORY[0x1CCA6B380](0, 0xE000000000000000);

  return 0xD00000000000001ALL;
}

uint64_t sub_1C7C75C00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

double sub_1C7C75C60()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1C7C75C98(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t SEStorageCredential.Endpoints.__allocating_init(type:endpointIds:)(_BYTE *a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SEStorageCredential.Endpoints.init(type:endpointIds:)(_BYTE *a1, uint64_t a2)
{
  *(v2 + 16) = *a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1C7C75D8C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (*(result + 16))
  {
    if (v5 == 3 && __PAIR128__((v3 >= 0xB) + v4 - 1, v3 - 11) < 4)
    {
      v6 = 0x30102u >> (8 * (v3 - 11));
      goto LABEL_12;
    }
  }

  else if ((v3 - 9) < 4u)
  {
    v6 = 0x30102u >> (8 * ((v3 - 9) & 0x1F));
    goto LABEL_12;
  }

  if (qword_1EC262230 != -1)
  {
    swift_once();
  }

  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EC265818);
  sub_1C7BDF708(v3, v4, v5);
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D584();
  sub_1C7BEA9D8(v3, v4, v5);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v10 = 136315138;
    sub_1C7BDF708(v3, v4, v5);
    sub_1C7C7D324();
    v11 = sub_1C7C7D334();
    v13 = v12;

    v14 = sub_1C7BE42F8(v11, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v8, v9, "Cannot initalize EndpointType using %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1CCA6C990](v15, -1, -1);
    MEMORY[0x1CCA6C990](v10, -1, -1);
  }

  result = sub_1C7BEA9D8(v3, v4, v5);
  LOBYTE(v6) = 4;
LABEL_12:
  *a2 = v6;
  return result;
}

uint64_t sub_1C7C75FBC()
{
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000010, 0x80000001C7CA0290);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](0x203A736469202CLL, 0xE700000000000000);
  swift_beginAccess();

  v1 = MEMORY[0x1CCA6B440](v0, MEMORY[0x1E69E6158]);
  v3 = v2;

  MEMORY[0x1CCA6B380](v1, v3);

  MEMORY[0x1CCA6B380](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C7C760D8()
{
  if (*v0)
  {
    return 0x746E696F70646E65;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C7C76114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEB00000000736449)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C761F4(uint64_t a1)
{
  v2 = sub_1C7C78DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76230(uint64_t a1)
{
  v2 = sub_1C7C78DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SEStorageCredential.Endpoints.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C7C762C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265830, &unk_1C7C96B60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C78DF4();
  sub_1C7C7DBA4();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  sub_1C7C78E48();
  sub_1C7C7DA44();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 24);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
    sub_1C7C2500C(&unk_1EC2643F0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SEStorageCredential.Endpoints.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SEStorageCredential.Endpoints.init(from:)(a1);
  return v2;
}

uint64_t SEStorageCredential.Endpoints.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265848, &qword_1C7C96B70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C78DF4();
  sub_1C7C7DB94();
  if (v2)
  {
    type metadata accessor for SEStorageCredential.Endpoints();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = 0;
    sub_1C7C78EC0();
    sub_1C7C7D9B4();
    *(v1 + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
    v10 = 1;
    sub_1C7C2500C(&qword_1EC264408, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C7C7D9B4();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_1C7C76720@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SEStorageCredential.Endpoints();
  v5 = swift_allocObject();
  result = SEStorageCredential.Endpoints.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void static SEStorageCredential.find(in:withType:)(int64x2_t *a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v4 = a1[1].i64[0];
  v5 = vdupq_n_s64(0xF000000000000007);
  if (!v4)
  {
    goto LABEL_26;
  }

  v29 = v5;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = a1 + 2;
  v12 = *a2 != 26 || v7 != 0 || v8 != 3;
  while (1)
  {
    v18 = *v9;
    v19 = v9->u64[1];
    v20 = v19 >> 62;
    v30 = *v9;
    if ((v19 >> 62) <= 1)
    {
      break;
    }

    if (v20 != 2)
    {
LABEL_11:
      v13 = v9->i64[0];
      sub_1C7BFCFA8(v18.i64[0], v19);
      sub_1C7BFCFA8(v13, v19);
      sub_1C7BDF708(v6, v7, v8);
      v14 = v13;
      sub_1C7BEA9D8(v6, v7, v8);
      sub_1C7BFCF38(v13, v19);
      v34[0] = v6;
      v34[1] = v7;
      v35 = v8;
      v15 = &v14[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
      swift_beginAccess();
      v16 = *(v15 + 1);
      v17 = v15[16];
      v31 = *v15;
      v32 = v16;
      v33 = v17;
      sub_1C7BDF708(v31, v16, v17);
      LOBYTE(v15) = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(v34, &v31);

      sub_1C7BEA9D8(v31, v32, v33);
      v5 = v30;
      if (v15)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

    if (!v12)
    {
      v24 = v9->i64[0];
      sub_1C7BFCFA8(v18.i64[0], v19);
      v25 = v24;
      v26 = 26;
      v27 = 0;
      v28 = 3;
      goto LABEL_29;
    }

LABEL_24:
    sub_1C7BFCFA8(v18.i64[0], v19);
    sub_1C7BDF708(v6, v7, v8);
    sub_1C7BEA9D8(v6, v7, v8);
    v5.i64[0] = v30.i64[0];
LABEL_12:
    sub_1C7BFCF38(v5.i64[0], v19);
    ++v9;
    if (!--v4)
    {
      v5 = v29;
      goto LABEL_26;
    }
  }

  if (!v20)
  {
    goto LABEL_11;
  }

  if (v8 != 2)
  {
    goto LABEL_24;
  }

  v21 = v9->i64[0];
  if (v6 != *(v18.i64[0] + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid) || v7 != *(v18.i64[0] + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8))
  {
    v23 = sub_1C7C7DAA4();
    sub_1C7BFCFA8(v21, v19);
    sub_1C7BFCFA8(v21, v19);
    sub_1C7BDF708(v6, v7, 2u);
    sub_1C7BEA9D8(v6, v7, 2u);
    sub_1C7BFCF38(v21, v19);
    v5 = v30;
    if (v23)
    {
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  sub_1C7BFCFA8(v18.i64[0], v19);
  sub_1C7BFCFA8(v21, v19);
  sub_1C7BDF708(v6, v7, 2u);
  v26 = v6;
  v27 = v7;
  v28 = 2;
LABEL_29:
  sub_1C7BEA9D8(v26, v27, v28);
  sub_1C7BFCF38(v30.i64[0], v19);
  v5 = v30;
LABEL_26:
  *a3 = v5;
}

uint64_t sub_1C7C76A5C(uint64_t a1)
{
  v2 = sub_1C7C79064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76A98(uint64_t a1)
{
  v2 = sub_1C7C79064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C76AD4()
{
  v1 = 0x5063697373616C63;
  v2 = 0x6C6569667269756DLL;
  if (*v0 != 2)
  {
    v2 = 6386800;
  }

  if (*v0)
  {
    v1 = 1296651109;
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

uint64_t sub_1C7C76B50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C79FF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C76B78(uint64_t a1)
{
  v2 = sub_1C7C78F14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76BB4(uint64_t a1)
{
  v2 = sub_1C7C78F14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C76BF0(uint64_t a1)
{
  v2 = sub_1C7C79010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76C2C(uint64_t a1)
{
  v2 = sub_1C7C79010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C76C68(uint64_t a1)
{
  v2 = sub_1C7C78FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76CA4(uint64_t a1)
{
  v2 = sub_1C7C78FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C76CE0(uint64_t a1)
{
  v2 = sub_1C7C78F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C76D1C(uint64_t a1)
{
  v2 = sub_1C7C78F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SEStorageCredential.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265858, &qword_1C7C96B78);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265860, &qword_1C7C96B80);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265868, &qword_1C7C96B88);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265870, &qword_1C7C96B90);
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265878, &qword_1C7C96B98);
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = v2[1];
  v38 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C78F14();
  sub_1C7C7DBA4();
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 == 2)
    {
      LOBYTE(v43) = 2;
      sub_1C7C78FBC();
      v21 = v32;
      v20 = v40;
      sub_1C7C7D9E4();
      v43 = v38;
      type metadata accessor for MemoryUsage();
      sub_1C7C790B8(&qword_1EC265240, 255, type metadata accessor for MemoryUsage, &protocol conformance descriptor for MemoryUsage);
      v22 = v34;
      sub_1C7C7DA44();
      v23 = v33;
    }

    else
    {
      LOBYTE(v43) = 3;
      sub_1C7C78F68();
      v21 = v35;
      v20 = v40;
      sub_1C7C7D9E4();
      v43 = v38;
      v42 = 0;
      type metadata accessor for SEPackageDetails();
      sub_1C7C790B8(&qword_1EC265890, 255, type metadata accessor for SEPackageDetails, &protocol conformance descriptor for SEPackageDetails);
      v22 = v37;
      v27 = v39;
      sub_1C7C7DA44();
      if (!v27)
      {
        v43 = v18 & 0x3FFFFFFFFFFFFFFFLL;
        v42 = 1;
        type metadata accessor for SEStorageCredential.Endpoints();
        sub_1C7C790B8(&qword_1EC265898, v28, type metadata accessor for SEStorageCredential.Endpoints, &protocol conformance descriptor for SEStorageCredential.Endpoints);
        sub_1C7C7DA44();
      }

      v23 = v36;
    }

    (*(v23 + 8))(v21, v22);
  }

  else
  {
    if (v19)
    {
      LOBYTE(v43) = 1;
      sub_1C7C79010();
      v24 = v40;
      sub_1C7C7D9E4();
      v43 = v38;
      type metadata accessor for ESIMProfileInfo();
      sub_1C7C790B8(&qword_1EC2658B0, 255, type metadata accessor for ESIMProfileInfo, &protocol conformance descriptor for ESIMProfileInfo);
      v25 = v31;
      sub_1C7C7DA44();
      (*(v30 + 8))(v10, v25);
      return (*(v41 + 8))(v17, v24);
    }

    LOBYTE(v43) = 0;
    sub_1C7C79064();
    v20 = v40;
    sub_1C7C7D9E4();
    v43 = v38;
    type metadata accessor for SEPackageDetails();
    sub_1C7C790B8(&qword_1EC265890, 255, type metadata accessor for SEPackageDetails, &protocol conformance descriptor for SEPackageDetails);
    sub_1C7C7DA44();
    (*(v29 + 8))(v13, v11);
  }

  return (*(v41 + 8))(v17, v20);
}

uint64_t SEStorageCredential.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2658C0, &qword_1C7C96BA0);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v41 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2658C8, &qword_1C7C96BA8);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v50 = &v41 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2658D0, &qword_1C7C96BB0);
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2658D8, &qword_1C7C96BB8);
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2658E0, &unk_1C7C96BC0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1C7C78F14();
  v15 = v53;
  sub_1C7C7DB94();
  if (!v15)
  {
    v16 = v9;
    v42 = v7;
    v17 = v6;
    v18 = v50;
    v19 = v51;
    v53 = v11;
    v20 = v52;
    v21 = sub_1C7C7D9D4();
    v22 = (2 * *(v21 + 16)) | 1;
    v57 = v21;
    v58 = v21 + 32;
    v59 = 0;
    v60 = v22;
    v23 = sub_1C7BEAAD8();
    if (v23 == 4 || v59 != v60 >> 1)
    {
      v29 = sub_1C7C7D7C4();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
      *v31 = &type metadata for SEStorageCredential;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v53 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23 > 1u)
      {
        if (v23 == 2)
        {
          LOBYTE(v61) = 2;
          sub_1C7C78FBC();
          sub_1C7C7D944();
          type metadata accessor for MemoryUsage();
          sub_1C7C790B8(&qword_1EC264410, 255, type metadata accessor for MemoryUsage, &protocol conformance descriptor for MemoryUsage);
          v33 = v45;
          sub_1C7C7D9B4();
          (*(v48 + 8))(v18, v33);
          (*(v53 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v28 = v61;
          v27 = 0x8000000000000000;
        }

        else
        {
          LOBYTE(v61) = 3;
          sub_1C7C78F68();
          sub_1C7C7D944();
          type metadata accessor for SEPackageDetails();
          LOBYTE(v56) = 0;
          sub_1C7C790B8(&qword_1EC2658E8, 255, type metadata accessor for SEPackageDetails, &protocol conformance descriptor for SEPackageDetails);
          v37 = v47;
          sub_1C7C7D9B4();
          v38 = v53;
          v39 = v61;
          type metadata accessor for SEStorageCredential.Endpoints();
          v55 = 1;
          sub_1C7C790B8(&qword_1EC2658F0, v40, type metadata accessor for SEStorageCredential.Endpoints, &protocol conformance descriptor for SEStorageCredential.Endpoints);
          sub_1C7C7D9B4();
          (*(v49 + 8))(v19, v37);
          v28 = v39;
          (*(v38 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v27 = v56 | 0xC000000000000000;
        }
      }

      else if (v23)
      {
        LOBYTE(v61) = 1;
        sub_1C7C79010();
        sub_1C7C7D944();
        v34 = v53;
        v35 = v20;
        type metadata accessor for ESIMProfileInfo();
        sub_1C7C790B8(&qword_1EC2658F8, 255, type metadata accessor for ESIMProfileInfo, &protocol conformance descriptor for ESIMProfileInfo);
        v36 = v43;
        sub_1C7C7D9B4();
        (*(v46 + 8))(v17, v36);
        (*(v34 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v28 = v61;
        v27 = 0x4000000000000000;
        v20 = v35;
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_1C7C79064();
        v24 = v16;
        sub_1C7C7D944();
        v25 = v53;
        type metadata accessor for SEPackageDetails();
        sub_1C7C790B8(&qword_1EC2658E8, 255, type metadata accessor for SEPackageDetails, &protocol conformance descriptor for SEPackageDetails);
        v26 = v42;
        sub_1C7C7D9B4();
        (*(v44 + 8))(v24, v26);
        (*(v25 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v27 = 0;
        v28 = v61;
      }

      *v20 = v28;
      v20[1] = v27;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v54);
}

uint64_t sub_1C7C77DD0(uint64_t a1)
{
  v2 = sub_1C7C79250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C77E0C(uint64_t a1)
{
  v2 = sub_1C7C79250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C77E48(uint64_t a1)
{
  v2 = sub_1C7C791FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C77E84(uint64_t a1)
{
  v2 = sub_1C7C791FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C77EC0()
{
  v1 = 0x6F72696C41;
  v2 = 1701670728;
  if (*v0 != 2)
  {
    v2 = 0x6172647948;
  }

  if (*v0)
  {
    v1 = 0x616873696C41;
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

uint64_t sub_1C7C77F28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C7C7A16C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C7C77F50(uint64_t a1)
{
  v2 = sub_1C7C79100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C77F8C(uint64_t a1)
{
  v2 = sub_1C7C79100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C77FC8(uint64_t a1)
{
  v2 = sub_1C7C791A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C78004(uint64_t a1)
{
  v2 = sub_1C7C791A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C78040(uint64_t a1)
{
  v2 = sub_1C7C79154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C7807C(uint64_t a1)
{
  v2 = sub_1C7C79154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EndpointType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265900, &qword_1C7C96BD0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265908, &qword_1C7C96BD8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265910, &qword_1C7C96BE0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265918, &qword_1C7C96BE8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265920, &qword_1C7C96BF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C79100();
  sub_1C7C7DBA4();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1C7C791A8();
      v18 = v27;
      sub_1C7C7D9E4();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1C7C79154();
      v18 = v30;
      sub_1C7C7D9E4();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1C7C791FC();
    v18 = v24;
    sub_1C7C7D9E4();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1C7C79250();
  sub_1C7C7D9E4();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t EndpointType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](v1);
  return sub_1C7C7DB84();
}

uint64_t EndpointType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265950, &qword_1C7C96BF8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265958, &qword_1C7C96C00);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265960, &qword_1C7C96C08);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265968, &qword_1C7C96C10);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265970, &qword_1C7C96C18);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1C7C79100();
  v15 = v46;
  sub_1C7C7DB94();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1C7C7D9D4();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1C7BEAAD8();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1C7C7D7C4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2627F0, &qword_1C7C84F30);
      *v28 = &type metadata for EndpointType;
      sub_1C7C7D954();
      sub_1C7C7D7B4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1C7C791FC();
        v32 = v35;
        sub_1C7C7D944();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1C7C79250();
        v25 = v35;
        sub_1C7C7D944();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_0Tm(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1C7C791A8();
      v31 = v35;
      sub_1C7C7D944();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1C7C79154();
      v33 = v35;
      sub_1C7C7D944();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v47);
}

uint64_t sub_1C7C78BF0()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC265818);
  __swift_project_value_buffer(v0, qword_1EC265818);
  return sub_1C7C7D1A4();
}

uint64_t sub_1C7C78C70(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v16 = v3;
  v17 = v4;
  v18 = v5;
  sub_1C7BDF708(v3, v4, v5);
  sub_1C7C75D8C(&v16, &v14);
  v6 = v14;
  if (v14 == 4)
  {

    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1C7C7D794();

    v14 = 0xD000000000000024;
    v15 = 0x80000001C7CA0150;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    sub_1C7BDF708(v3, v4, v5);
    sub_1C7C7D324();
    v7 = sub_1C7C7D334();
    v9 = v8;

    sub_1C7BEA9D8(v3, v4, v5);
    MEMORY[0x1CCA6B380](v7, v9);

    v10 = v14;
    v11 = v15;
    sub_1C7BEADA0();
    swift_allocError();
    *v12 = v10;
    *(v12 + 8) = v11;
    *(v12 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    sub_1C7BEA9D8(v3, v4, v5);
    type metadata accessor for SEStorageCredential.Endpoints();
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = a2;
  }

  return result;
}

unint64_t sub_1C7C78DF4()
{
  result = qword_1EC265838;
  if (!qword_1EC265838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265838);
  }

  return result;
}

unint64_t sub_1C7C78E48()
{
  result = qword_1EC265840;
  if (!qword_1EC265840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265840);
  }

  return result;
}

unint64_t sub_1C7C78EC0()
{
  result = qword_1EC265850;
  if (!qword_1EC265850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265850);
  }

  return result;
}

unint64_t sub_1C7C78F14()
{
  result = qword_1EC265880;
  if (!qword_1EC265880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265880);
  }

  return result;
}

unint64_t sub_1C7C78F68()
{
  result = qword_1EC265888;
  if (!qword_1EC265888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265888);
  }

  return result;
}

unint64_t sub_1C7C78FBC()
{
  result = qword_1EC2658A0;
  if (!qword_1EC2658A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2658A0);
  }

  return result;
}

unint64_t sub_1C7C79010()
{
  result = qword_1EC2658A8;
  if (!qword_1EC2658A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2658A8);
  }

  return result;
}

unint64_t sub_1C7C79064()
{
  result = qword_1EC2658B8;
  if (!qword_1EC2658B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2658B8);
  }

  return result;
}

uint64_t sub_1C7C790B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1C7C79100()
{
  result = qword_1EC265928;
  if (!qword_1EC265928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265928);
  }

  return result;
}

unint64_t sub_1C7C79154()
{
  result = qword_1EC265930;
  if (!qword_1EC265930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265930);
  }

  return result;
}

unint64_t sub_1C7C791A8()
{
  result = qword_1EC265938;
  if (!qword_1EC265938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265938);
  }

  return result;
}

unint64_t sub_1C7C791FC()
{
  result = qword_1EC265940;
  if (!qword_1EC265940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265940);
  }

  return result;
}

unint64_t sub_1C7C79250()
{
  result = qword_1EC265948;
  if (!qword_1EC265948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265948);
  }

  return result;
}

unint64_t sub_1C7C792A8()
{
  result = qword_1EC265978;
  if (!qword_1EC265978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265978);
  }

  return result;
}

uint64_t sub_1C7C79308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFD && *(a1 + 16))
  {
    return (*a1 + 16381);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >> 2 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C7C79380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *result = a2 - 16381;
    *(result + 8) = 0;
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1C7C793FC(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

unint64_t sub_1C7C79604()
{
  result = qword_1EC265980;
  if (!qword_1EC265980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265980);
  }

  return result;
}

unint64_t sub_1C7C7965C()
{
  result = qword_1EC265988;
  if (!qword_1EC265988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265988);
  }

  return result;
}

unint64_t sub_1C7C796B4()
{
  result = qword_1EC265990;
  if (!qword_1EC265990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265990);
  }

  return result;
}

unint64_t sub_1C7C7970C()
{
  result = qword_1EC265998;
  if (!qword_1EC265998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265998);
  }

  return result;
}

unint64_t sub_1C7C79764()
{
  result = qword_1EC2659A0;
  if (!qword_1EC2659A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659A0);
  }

  return result;
}

unint64_t sub_1C7C797BC()
{
  result = qword_1EC2659A8;
  if (!qword_1EC2659A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659A8);
  }

  return result;
}

unint64_t sub_1C7C79814()
{
  result = qword_1EC2659B0;
  if (!qword_1EC2659B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659B0);
  }

  return result;
}

unint64_t sub_1C7C7986C()
{
  result = qword_1EC2659B8;
  if (!qword_1EC2659B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659B8);
  }

  return result;
}

unint64_t sub_1C7C798C4()
{
  result = qword_1EC2659C0;
  if (!qword_1EC2659C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659C0);
  }

  return result;
}

unint64_t sub_1C7C7991C()
{
  result = qword_1EC2659C8;
  if (!qword_1EC2659C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659C8);
  }

  return result;
}

unint64_t sub_1C7C79974()
{
  result = qword_1EC2659D0;
  if (!qword_1EC2659D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659D0);
  }

  return result;
}

unint64_t sub_1C7C799CC()
{
  result = qword_1EC2659D8;
  if (!qword_1EC2659D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659D8);
  }

  return result;
}

unint64_t sub_1C7C79A24()
{
  result = qword_1EC2659E0;
  if (!qword_1EC2659E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659E0);
  }

  return result;
}

unint64_t sub_1C7C79A7C()
{
  result = qword_1EC2659E8;
  if (!qword_1EC2659E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659E8);
  }

  return result;
}

unint64_t sub_1C7C79AD4()
{
  result = qword_1EC2659F0;
  if (!qword_1EC2659F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659F0);
  }

  return result;
}

unint64_t sub_1C7C79B2C()
{
  result = qword_1EC2659F8;
  if (!qword_1EC2659F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2659F8);
  }

  return result;
}

unint64_t sub_1C7C79B84()
{
  result = qword_1EC265A00;
  if (!qword_1EC265A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A00);
  }

  return result;
}

unint64_t sub_1C7C79BDC()
{
  result = qword_1EC265A08;
  if (!qword_1EC265A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A08);
  }

  return result;
}

unint64_t sub_1C7C79C34()
{
  result = qword_1EC265A10;
  if (!qword_1EC265A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A10);
  }

  return result;
}

unint64_t sub_1C7C79C8C()
{
  result = qword_1EC265A18;
  if (!qword_1EC265A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A18);
  }

  return result;
}

unint64_t sub_1C7C79CE4()
{
  result = qword_1EC265A20;
  if (!qword_1EC265A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A20);
  }

  return result;
}

unint64_t sub_1C7C79D3C()
{
  result = qword_1EC265A28;
  if (!qword_1EC265A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A28);
  }

  return result;
}

unint64_t sub_1C7C79D94()
{
  result = qword_1EC265A30;
  if (!qword_1EC265A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A30);
  }

  return result;
}

unint64_t sub_1C7C79DEC()
{
  result = qword_1EC265A38;
  if (!qword_1EC265A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A38);
  }

  return result;
}

unint64_t sub_1C7C79E44()
{
  result = qword_1EC265A40;
  if (!qword_1EC265A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A40);
  }

  return result;
}

unint64_t sub_1C7C79E9C()
{
  result = qword_1EC265A48;
  if (!qword_1EC265A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A48);
  }

  return result;
}

unint64_t sub_1C7C79EF4()
{
  result = qword_1EC265A50;
  if (!qword_1EC265A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A50);
  }

  return result;
}

unint64_t sub_1C7C79F4C()
{
  result = qword_1EC265A58;
  if (!qword_1EC265A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A58);
  }

  return result;
}

unint64_t sub_1C7C79FA4()
{
  result = qword_1EC265A60;
  if (!qword_1EC265A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265A60);
  }

  return result;
}

uint64_t sub_1C7C79FF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5063697373616C63 && a2 == 0xEE006567616B6361;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1296651109 && a2 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6569667269756DLL && a2 == 0xE900000000000064 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6386800 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C7A16C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72696C41 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616873696C41 && a2 == 0xE600000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701670728 && a2 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6172647948 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  LODWORD(v34) = a6;
  v35 = a5;
  v32 = a3;
  v33 = a4;
  v14 = sub_1C7C7D634();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - v17;
  v19 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a9 = a1;
  a9[1] = a2;
  v22 = v33;
  a9[2] = v32;
  a9[3] = v22;
  v25 = type metadata accessor for UserDefaultBacked(0, a8, v23, v24);
  *(a9 + *(v25 + 36)) = v34;
  v26 = a7;
  (*(v15 + 16))(v18, a7, v14);
  if ((*(v19 + 48))(v18, 1, a8) == 1)
  {
    v27 = *(v15 + 8);
    v27(a7, v14);
    v27(v18, v14);
    return (*(v19 + 32))(a9 + *(v25 + 32), v35, a8);
  }

  else
  {
    v34 = v25;
    v29 = *(v19 + 32);
    v29(v21, v18, a8);
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    (*(v15 + 8))(v26, v14);
    v31 = *(v19 + 8);
    if (has_internal_diagnostics)
    {
      v31(v35, a8);
      return (v29)(a9 + *(v34 + 32), v21, a8);
    }

    else
    {
      v31(v21, a8);
      return (v29)(a9 + *(v34 + 32), v35, a8);
    }
  }
}

void UserDefaultBacked.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1C7C7D634();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  if (*(v2 + *(a1 + 36)) == 1 && !os_variant_has_internal_diagnostics())
  {
    v17 = *(*(v5 - 8) + 16);
    v18 = v2 + *(a1 + 32);

    v17(a2, v18, v5);
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v10 = sub_1C7C7D2E4();
    v11 = [v9 initWithSuiteName_];

    if (v11)
    {
      v12 = sub_1C7C7D2E4();
      v13 = [v11 valueForKey_];

      if (v13)
      {
        sub_1C7C7D664();
        swift_unknownObjectRelease();
        sub_1C7C74CD8(v19, v20);
      }

      else
      {
        memset(v20, 0, sizeof(v20));
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC262EB0, &unk_1C7C97910);
      v14 = swift_dynamicCast();
      v15 = *(v5 - 8);
      v16 = *(v15 + 56);
      if (v14)
      {
        v16(v8, 0, 1, v5);
        (*(v15 + 32))(a2, v8, v5);
      }

      else
      {
        v16(v8, 1, 1, v5);
        (*(v15 + 16))(a2, v2 + *(a1 + 32), v5);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void (*UserDefaultBacked.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefaultBacked.wrappedValue.getter(a2, v11);
  return sub_1C7C7A944;
}

uint64_t UserDefaultBackedOptional.init(suiteName:key:internalOnly:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void UserDefaultBackedOptional.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 32) == 1 && !os_variant_has_internal_diagnostics())
  {
    v12 = *(*(*(a1 + 16) - 8) + 56);

    v12(a2, 1, 1);
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v6 = sub_1C7C7D2E4();
    v7 = [v5 initWithSuiteName_];

    if (v7)
    {
      v8 = sub_1C7C7D2E4();
      v9 = [v7 valueForKey_];

      if (v9)
      {
        sub_1C7C7D664();
        swift_unknownObjectRelease();
        sub_1C7C74CD8(&v13, v14);
      }

      else
      {
        memset(v14, 0, sizeof(v14));
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC262EB0, &unk_1C7C97910);
      v10 = *(a1 + 16);
      v11 = swift_dynamicCast();
      (*(*(v10 - 8) + 56))(a2, v11 ^ 1u, 1, v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C7C7ABA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = sub_1C7C7D634();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  (*(v9 + 16))(&v13 - v7, a1);
  v12 = type metadata accessor for UserDefaultBackedOptional(0, v5, v10, v11);
  UserDefaultBackedOptional.wrappedValue.setter(v8, v12);
}

void UserDefaultBackedOptional.wrappedValue.setter(char *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1C7C7D634();
  v21 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 32) == 1 && !os_variant_has_internal_diagnostics())
  {
    v19 = *(v21 + 8);

    v19(a1, v5);
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v13 = sub_1C7C7D2E4();
    v14 = [v12 initWithSuiteName_];

    if (v14)
    {
      (*(v21 + 16))(v8, a1, v5);
      if ((*(v9 + 48))(v8, 1, v4) == 1)
      {
        v15 = *(v21 + 8);
        v21 += 8;
        v15(v8, v5);
        v16 = sub_1C7C7D2E4();
        [v14 removeObjectForKey_];

        v15(a1, v5);
      }

      else
      {
        (*(v9 + 32))(v11, v8, v4);
        v17 = sub_1C7C7DA94();
        v18 = sub_1C7C7D2E4();
        [v14 setValue:v17 forKey:v18];

        swift_unknownObjectRelease();
        (*(v21 + 8))(a1, v5);
        (*(v9 + 8))(v11, v4);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void (*UserDefaultBackedOptional.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_1C7C7D634();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefaultBackedOptional.wrappedValue.getter(a2, v11);
  return sub_1C7C7B0E0;
}

void sub_1C7C7B0E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefaultBackedOptional.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UserDefaultBackedOptional.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefaultBackedCodable.init(suiteName:key:initial:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v12 = type metadata accessor for UserDefaultBackedCodable(0, a6, a7, a8);
  v13 = *(*(a6 - 8) + 32);
  v14 = a9 + *(v12 + 48);

  return v13(v14, a5, a6);
}

void UserDefaultBackedCodable.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1C7C7D634();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v10 = sub_1C7C7D2E4();
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    v12 = sub_1C7C7D2E4();
    v13 = [v11 objectForKey_];

    if (v13)
    {
      sub_1C7C7D664();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v20[0] = v18;
    v20[1] = v19;
    if (*(&v19 + 1))
    {
      if (swift_dynamicCast())
      {
        v17[0] = v2;
        v14 = v17[2];
        v15 = v17[3];
        sub_1C7C7CF84();
        swift_allocObject();
        sub_1C7C7CF74();
        sub_1C7C7CF64();
        sub_1C7BDF778(v14, v15);

        v16 = *(v5 - 8);
        (*(v16 + 56))(v8, 0, 1, v5);
        (*(v16 + 32))(a2, v8, v5);
        return;
      }
    }

    else
    {
      sub_1C7C7BE48(v20);
    }

    (*(*(v5 - 8) + 16))(a2, v2 + *(a1 + 48), v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C7C7B568(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

void (*UserDefaultBackedCodable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefaultBackedCodable.wrappedValue.getter(a2, v11);
  return sub_1C7C7B6E4;
}

void sub_1C7C7B6FC(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    a3(v5, v9);
    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {
    a3((*a1)[5], v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t UserDefaultBackedCodableOptional.init(suiteName:key:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void UserDefaultBackedCodableOptional.wrappedValue.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1C7C7D2E4();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = sub_1C7C7D2E4();
    v8 = [v6 objectForKey_];

    if (v8)
    {
      sub_1C7C7D664();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      if (swift_dynamicCast())
      {
        sub_1C7C7CF84();
        swift_allocObject();
        sub_1C7C7CF74();
        v9 = *(a1 + 16);
        sub_1C7C7CF64();
        sub_1C7BDF778(v10, v11);

        (*(*(v9 - 8) + 56))(a2, 0, 1);
        return;
      }
    }

    else
    {
      sub_1C7C7BE48(v14);
    }

    (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t UserDefaultBackedCodableOptional.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1C7C7C014(a1, a2);
  v3 = sub_1C7C7D634();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*UserDefaultBackedCodableOptional.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_1C7C7D634();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefaultBackedCodableOptional.wrappedValue.getter(a2, v11);
  return sub_1C7C7BC34;
}

void sub_1C7C7BC34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1C7C7C014(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1C7C7C014((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1C7C7BD20(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(a2 + 36)) != 1 || os_variant_has_internal_diagnostics())
  {
    v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v4 = sub_1C7C7D2E4();
    v5 = [v3 initWithSuiteName_];

    if (v5)
    {
      v6 = sub_1C7C7DA94();
      v7 = sub_1C7C7D2E4();
      [v5 setValue:v6 forKey:v7];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C7C7BE48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC262EB0, &unk_1C7C97910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C7C7BEB0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1C7C7D2E4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    sub_1C7C7CFB4();
    swift_allocObject();
    sub_1C7C7CFA4();
    v5 = sub_1C7C7CF94();
    v7 = v6;

    v8 = sub_1C7C7D024();
    v9 = sub_1C7C7D2E4();
    [v4 setValue:v8 forKey:?];
    sub_1C7BDF778(v5, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C7C7C014(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1C7C7D2E4();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    if ((*(*(*(a2 + 16) - 8) + 48))(a1, 1, *(a2 + 16)) == 1)
    {
      v12 = sub_1C7C7D2E4();
      [v6 removeObjectForKey_];
    }

    else
    {
      sub_1C7C7CFB4();
      swift_allocObject();
      sub_1C7C7CFA4();
      sub_1C7C7D634();
      swift_getWitnessTable();
      v7 = sub_1C7C7CF94();
      v9 = v8;

      v10 = sub_1C7C7D024();
      v11 = sub_1C7C7D2E4();
      [v6 setValue:v10 forKey:v11];
      sub_1C7BDF778(v7, v9);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C7C7C23C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C7C7C2C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C7C7C454(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1C7C7C6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C7C7C70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C7C7C754(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7C7C7B8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C7C7C838(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C7C7C9C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1C7C7CC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void getSBUserNotificationDismissOnLock_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  +[SESSessionManagerInterface interface];
}

void SESClientSetMachServiceName_cold_1(void *a1)
{
  v1 = a1;
  v2 = +[SESClient sharedClient];
  [(SESClient *)v2 setServiceName:v1];
}

uint64_t DERParseSequenceSpec()
{
  return MEMORY[0x1EEE62B90]();
}

{
  return MEMORY[0x1EEE62B98]();
}