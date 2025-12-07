uint64_t sub_29D87285C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D872890()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8728C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8728F8(unint64_t a1, unint64_t a2)
{
  sub_29D7CE038();
  if (a2 >> 62)
  {
    v4 = sub_29D93AB78();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_29D93AA18();
    v6 = 0xD000000000000046;
    v5 = 0x800000029D969F20;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_29D93AA18();
  v5 = 0x800000029D969ED0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x29ED6A240](v6, v5);
  v8 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v8);

  MEMORY[0x29ED6A240](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v9);

  result = sub_29D93AB38();
  __break(1u);
  return result;
}

void sub_29D872AC4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29D93A928())
    {
LABEL_3:
      sub_29D872D84(0);
      v3 = sub_29D93A9E8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29D93A928();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = sub_29D8728F8(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_29D93A6F8();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_29D7CE038();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_29D93A708();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        sub_29D936978();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_29D93A6F8();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_29D7CE038();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_29D93A708();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_29D872D84(uint64_t a1)
{
  if (!qword_2A1A248B0)
  {
    sub_29D7CE038();
    sub_29D873EAC(&qword_2A1A24938, 255, sub_29D7CE038, MEMORY[0x29EDCA2F0]);
    v1 = sub_29D93A9F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A248B0);
    }
  }
}

void *sub_29D872E1C(void *a1)
{
  v2 = MEMORY[0x29EDC9E80];
  sub_29D8733A8(0, &qword_2A17B6C30, sub_29D8732AC, &type metadata for BloodPressureJournalOnboardingPromotionStatus.PromotedCodingKeys, MEMORY[0x29EDC9E80]);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v31 = &v26 - v5;
  sub_29D8733A8(0, &qword_2A17B6C40, sub_29D873300, &type metadata for BloodPressureJournalOnboardingPromotionStatus.NotPromotedCodingKeys, v2);
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v26 - v9;
  sub_29D8733A8(0, &qword_2A17B6C50, sub_29D873354, &type metadata for BloodPressureJournalOnboardingPromotionStatus.CodingKeys, v2);
  v12 = v11;
  v32 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v26 - v14;
  sub_29D693E2C(a1, a1[3]);
  sub_29D873354();
  v16 = v33;
  sub_29D93AEC8();
  if (v16)
  {
    goto LABEL_7;
  }

  v18 = v30;
  v17 = v31;
  v27 = v7;
  v33 = a1;
  v19 = v15;
  v20 = sub_29D93AC98();
  if (*(v20 + 16) != 1)
  {
    v22 = sub_29D93AA78();
    swift_allocError();
    v24 = v23;
    sub_29D6CA748(0);
    *v24 = &type metadata for BloodPressureJournalOnboardingPromotionStatus;
    sub_29D93AC18();
    sub_29D93AA58();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x29EDC9DB8], v22);
    swift_willThrow();
    (*(v32 + 8))(v15, v12);
    sub_29D936978();
    a1 = v33;
LABEL_7:
    sub_29D69417C(a1);
    return a1;
  }

  v26 = v20;
  a1 = *(v20 + 32);
  if (a1)
  {
    v35 = 1;
    sub_29D8732AC();
    sub_29D93AC08();
    v21 = v32;
    (*(v28 + 8))(v17, v29);
  }

  else
  {
    v34 = 0;
    sub_29D873300();
    sub_29D93AC08();
    v21 = v32;
    (*(v18 + 8))(v10, v27);
  }

  (*(v21 + 8))(v19, v12);
  sub_29D936978();
  sub_29D69417C(v33);
  return a1;
}

unint64_t sub_29D8732AC()
{
  result = qword_2A17B6C38;
  if (!qword_2A17B6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C38);
  }

  return result;
}

unint64_t sub_29D873300()
{
  result = qword_2A17B6C48;
  if (!qword_2A17B6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C48);
  }

  return result;
}

unint64_t sub_29D873354()
{
  result = qword_2A17B6C58;
  if (!qword_2A17B6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C58);
  }

  return result;
}

void sub_29D8733A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29D873410()
{
  v0 = sub_29D937308();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  sub_29D6A0C58();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D940030;
  sub_29D9372F8();
  v3 = MEMORY[0x29EDC9E90];
  sub_29D873DEC(0, &qword_2A1A21F38, sub_29D873D88, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93DDB0;
  sub_29D873DEC(0, &unk_2A1A21F08, type metadata accessor for HKFeatureIdentifier, v3);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  v6 = *MEMORY[0x29EDBA6B8];
  *(inited + 32) = *MEMORY[0x29EDBA6B8];
  v7 = v6;
  sub_29D6E5BC0(inited);
  swift_setDeallocating();
  sub_29D873E50(inited + 32);
  *(v4 + 56) = sub_29D934378();
  *(v4 + 64) = sub_29D873EAC(&qword_2A1A24758, 255, MEMORY[0x29EDC3AB0], MEMORY[0x29EDC3AA8]);
  sub_29D693F78((v4 + 32));
  sub_29D934368();
  sub_29D937328();
  swift_allocObject();
  *(v2 + 32) = sub_29D937318();
  return v2;
}

uint64_t sub_29D87360C()
{
  v0 = sub_29D937368();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x2A1C7C4A8](v0, v1);
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29D9373B8();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9373E8();
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D873DEC(0, &qword_2A1A246C8, MEMORY[0x29EDC3AC0], MEMORY[0x29EDC34D8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v43 - v13;
  v15 = MEMORY[0x29EDC9C68];
  sub_29D873DEC(0, &qword_2A1A24750, MEMORY[0x29EDC3AB8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v19 = &v43 - v18;
  sub_29D873DEC(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], v15);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v23 = &v43 - v22;
  v24 = sub_29D9371A8();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9343B8();
  sub_29D937348();
  sub_29D873EAC(&qword_2A1A24748, 255, MEMORY[0x29EDC3AC0], MEMORY[0x29EDC3AA0]);
  sub_29D937478();
  (*(v11 + 8))(v14, v10);
  v29 = sub_29D934398();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v19, 1, v29) == 1)
  {
    sub_29D873D18(v19, &qword_2A1A24750, MEMORY[0x29EDC3AB8]);
    (*(v25 + 56))(v23, 1, 1, v24);
LABEL_8:
    sub_29D873D18(v23, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    return MEMORY[0x29EDCA190];
  }

  v31 = sub_29D934388();
  (*(v30 + 8))(v19, v29);
  if (*(v31 + 16) && (v32 = sub_29D6959E0(), (v33 & 1) != 0))
  {
    (*(v25 + 16))(v23, *(v31 + 56) + *(v25 + 72) * v32, v24);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v25 + 56))(v23, v34, 1, v24);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    goto LABEL_8;
  }

  v36 = *(v25 + 32);
  v44 = v28;
  v36(v28, v23, v24);
  v37 = sub_29D9371B8();
  v38 = [v37 areAllRequirementsSatisfied];

  sub_29D873DEC(0, &qword_2A1A21F40, sub_29D872458, MEMORY[0x29EDC9E90]);
  sub_29D872458(0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_29D93DDB0;
  sub_29D9373D8();
  v41 = v48;
  v40 = v49;
  v42 = v46;
  (*(v48 + 104))(v46, *MEMORY[0x29EDC3508], v49);
  sub_29D9373A8();
  (*(v41 + 8))(v42, v40);
  v50 = v38;
  sub_29D8724C0();
  sub_29D872514();
  sub_29D937438();
  (*(v25 + 8))(v44, v24);
  return v39;
}

uint64_t sub_29D873D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D873DEC(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D873D88()
{
  result = qword_2A1A246B0;
  if (!qword_2A1A246B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A246B0);
  }

  return result;
}

void sub_29D873DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D873E50(uint64_t a1)
{
  type metadata accessor for HKFeatureIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D873EAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_29D873F38()
{
  result = qword_2A17B6C78;
  if (!qword_2A17B6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C78);
  }

  return result;
}

unint64_t sub_29D873F90()
{
  result = qword_2A17B6C80;
  if (!qword_2A17B6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C80);
  }

  return result;
}

unint64_t sub_29D873FE8()
{
  result = qword_2A17B6C88;
  if (!qword_2A17B6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C88);
  }

  return result;
}

unint64_t sub_29D874040()
{
  result = qword_2A17B6C90;
  if (!qword_2A17B6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C90);
  }

  return result;
}

unint64_t sub_29D874098()
{
  result = qword_2A17B6C98;
  if (!qword_2A17B6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C98);
  }

  return result;
}

unint64_t sub_29D8740F0()
{
  result = qword_2A17B6CA0;
  if (!qword_2A17B6CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6CA0);
  }

  return result;
}

unint64_t sub_29D874148()
{
  result = qword_2A17B6CA8;
  if (!qword_2A17B6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6CA8);
  }

  return result;
}

unint64_t sub_29D8741A0()
{
  result = qword_2A17B6CB0;
  if (!qword_2A17B6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6CB0);
  }

  return result;
}

uint64_t type metadata accessor for HKHRCardioFitnessChartDataSource(uint64_t a1)
{
  result = qword_2A17B6CF0;
  if (!qword_2A17B6CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D874250(uint64_t a1)
{
  result = sub_29D936378();
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

uint64_t sub_29D874314(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = a1;
  v25 = a4;
  sub_29D877C0C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_29D936378();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v12 + 32))(v17 + v16, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v18 = swift_allocObject();
  *(v18 + 2) = sub_29D877CAC;
  *(v18 + 3) = v17;
  v19 = v24;
  *(v18 + 4) = v24;
  *v10 = sub_29D877D38;
  v10[1] = v18;
  (*(v7 + 104))(v10, *MEMORY[0x29EDC2720], v6);
  sub_29D877D44(0);
  swift_allocObject();

  v20 = v19;
  v21 = v25;
  sub_29D935328();
  sub_29D877DD8(0);
  swift_allocObject();
  v22 = sub_29D9357C8();

  return v22;
}

uint64_t sub_29D8745CC()
{
  v1 = v0;
  if (*(v0 + qword_2A17B6CC8))
  {

    v2 = sub_29D8752B0();
  }

  else
  {
    v2 = 0;
  }

  *(v0 + qword_2A17B6CE0) = v2;

  if (v2)
  {
    swift_allocObject();
    swift_weakInit();
    sub_29D77B9D8();
    sub_29D8770D4(&qword_2A1A223F0, sub_29D77B9D8, MEMORY[0x29EDB8A00]);
    v3 = sub_29D938588();
  }

  else
  {
    v3 = 0;
  }

  *(v1 + qword_2A17B6CE8) = v3;
}

uint64_t sub_29D874718(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_29D939968();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D939998();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    aBlock = 0;
    v27 = 0xE000000000000000;
    v23[1] = result;
    v24 = v9;
    if (v13)
    {
      v15 = 0xD000000000000024;
    }

    else
    {
      v15 = 0xD000000000000026;
    }

    if (v13)
    {
      v16 = "ssificationUnavailable";
    }

    else
    {
      v16 = "Source:secondaryDataSource:)";
    }

    v25 = v8;
    MEMORY[0x29ED6A240](v15, v16 | 0x8000000000000000);

    v17 = sub_29D877904(aBlock, v27, v13);

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v18 = sub_29D93A468();
    v19 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v17;
    v30 = sub_29D877B98;
    v31 = v20;
    aBlock = MEMORY[0x29EDCA5F8];
    v27 = 1107296256;
    v28 = sub_29D6C1F10;
    v29 = &unk_2A244A4C8;
    v21 = _Block_copy(&aBlock);

    sub_29D939988();
    aBlock = MEMORY[0x29EDCA190];
    sub_29D8770D4(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    v22 = MEMORY[0x29EDCA248];
    sub_29D87711C(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D877F4C(&qword_2A1A24980, &qword_2A1A24990, v22);
    sub_29D93A888();
    MEMORY[0x29ED6A880](0, v12, v7, v21);
    _Block_release(v21);

    (*(v4 + 8))(v7, v3);
    return (*(v24 + 8))(v12, v25);
  }

  return result;
}

uint64_t sub_29D874AFC(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x29EDCA608];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_29D935B38();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v2 = sub_29D936398();

    v3 = sub_29D9369F8();

    v8[0] = 0;
    LODWORD(v2) = [v3 performFetch_];

    if (v2)
    {
      v4 = v8[0];
    }

    else
    {
      v5 = v8[0];
      v6 = sub_29D933598();

      swift_willThrow();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_29D9363B8();
  }

  return result;
}

id sub_29D874CB4@<X0>(void *a1@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 32);

    if (v5 == 2)
    {
      v6 = 0;
    }

    else
    {
      if (v5)
      {
        v7 = 0xD000000000000024;
      }

      else
      {
        v7 = 0xD000000000000026;
      }

      if (v5)
      {
        v8 = "ssificationUnavailable";
      }

      else
      {
        v8 = "Source:secondaryDataSource:)";
      }

      MEMORY[0x29ED6A240](v7, v8 | 0x8000000000000000);

      v6 = 0xE000000000000000;
    }
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 2;
  }

  v9 = sub_29D936358();
  v10 = sub_29D93A5E8();
  a3[3] = &type metadata for CardioFitnessChartItem;
  a3[4] = sub_29D877E38();
  v11 = swift_allocObject();
  *a3 = v11;
  *(v11 + 16) = a1;
  *(v11 + 24) = v5;
  *(v11 + 32) = 0;
  *(v11 + 40) = v6;
  *(v11 + 48) = v9;
  *(v11 + 56) = v10;

  return a1;
}

uint64_t sub_29D874E08(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void, void), uint64_t a4, uint64_t a5)
{
  v8 = sub_29D937898();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6945AC(a1, v37);
  sub_29D6FC5F4();
  sub_29D934528();
  if (swift_dynamicCast())
  {
    v13 = v36;
    v14 = [v36 userData];
    if (v14)
    {
      v15 = v14;
      v16 = sub_29D933738();
      v35 = v13;
      v17 = a3;
      v18 = v9;
      v19 = v16;
      v21 = v20;

      v22 = sub_29D933718();
      v23 = v19;
      v9 = v18;
      a3 = v17;
      v13 = v35;
      sub_29D6AA284(v23, v21);
    }

    else
    {
      v22 = 0;
    }

    v24 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

    if (v24)
    {
      sub_29D87711C(0, &qword_2A17B1138, sub_29D6FC5F4, MEMORY[0x29EDC9E90]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_29D93DDB0;
      a3(v37, v24, a5);
      v26 = v38;
      v27 = v39;
      v28 = sub_29D693E2C(v37, v38);
      *(v25 + 56) = v26;
      *(v25 + 64) = *(v27 + 8);
      v29 = sub_29D693F78((v25 + 32));
      (*(*(v26 - 8) + 16))(v29, v28, v26);

      sub_29D69417C(v37);
    }

    else
    {
      sub_29D937858();
      v30 = sub_29D937878();
      v31 = sub_29D93A298();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_29D677000, v30, v31, "Unable to decode sharable charting model", v32, 2u);
        MEMORY[0x29ED6BE30](v32, -1, -1);
      }

      (*(v9 + 8))(v12, v8);
      return MEMORY[0x29EDCA190];
    }

    return v25;
  }

  else
  {
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_29D93AA18();
    MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D96A220);
    sub_29D93AB08();
    MEMORY[0x29ED6A240](93, 0xE100000000000000);
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8751D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D9356A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935678();
  v7 = sub_29D935608();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_29D8752B0()
{
  sub_29D876DC0(0);
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x29EDCA298];
  sub_29D87711C(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v41 = &v38 - v6;
  sub_29D77B7D0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D877098(0);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D876FCC(0);
  v45 = *(v18 - 8);
  v46 = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v47 = sub_29D937288();
  sub_29D6B7D8C(0);
  v22 = MEMORY[0x29EDB8A00];
  sub_29D8770D4(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D938468();

  v23 = MEMORY[0x29EDB8908];
  sub_29D8770D4(&qword_2A1A22608, sub_29D77B7D0, MEMORY[0x29EDB8908]);
  v24 = sub_29D938418();
  (*(v9 + 8))(v12, v8);
  v47 = v24;
  sub_29D77B9D8();
  sub_29D8770D4(&qword_2A1A223F0, sub_29D77B9D8, v22);

  sub_29D938468();
  v25 = v21;

  v47 = *(v0 + 24);
  v26 = v47;
  v27 = sub_29D93A448();
  v28 = v41;
  (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  sub_29D8770D4(&qword_2A17B6D38, sub_29D877098, v23);
  sub_29D706380();
  v29 = v26;
  v30 = v42;
  sub_29D938538();
  sub_29D877EDC(v28, &unk_2A1A248F0, v44);

  (*(v43 + 8))(v17, v30);
  v31 = *(v0 + 32);
  if (v31 == 2)
  {
    sub_29D8770D4(&qword_2A17B6D48, sub_29D876FCC, MEMORY[0x29EDB89E8]);
    v32 = v46;
    v33 = sub_29D938418();
  }

  else
  {
    sub_29D877E8C(0, &qword_2A17B6D50, &type metadata for CardioFitnessClassificationStatus, MEMORY[0x29EDC9E90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_29D93DDB0;
    *(v34 + 32) = v31 & 1;
    sub_29D8770D4(&qword_2A17B6D48, sub_29D876FCC, MEMORY[0x29EDB89E8]);
    v35 = v38;
    v32 = v46;
    sub_29D938518();

    sub_29D8770D4(&qword_2A17B6D58, sub_29D876DC0, MEMORY[0x29EDB88B0]);
    v36 = v40;
    v33 = sub_29D938418();
    (*(v39 + 8))(v35, v36);
  }

  (*(v45 + 8))(v25, v32);
  return v33;
}

uint64_t *sub_29D875970(uint64_t a1)
{
  v44 = a1;
  v37 = *v1;
  v2 = sub_29D937898();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29D93A458();
  v5 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D93A438();
  MEMORY[0x2A1C7C4A8](v9, v10);
  v11 = sub_29D939998();
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v13 = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v41 = "Item mapping function. [";
  v42 = v13;
  sub_29D939988();
  v46 = MEMORY[0x29EDCA190];
  sub_29D8770D4(&unk_2A1A24900, MEMORY[0x29EDCA288], MEMORY[0x29EDCA290]);
  v14 = MEMORY[0x29EDCA288];
  sub_29D87711C(0, &unk_2A1A24970, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  v15 = v1;
  sub_29D877F4C(&qword_2A1A24960, &unk_2A1A24970, v14);
  sub_29D93A888();
  (*(v5 + 104))(v8, *MEMORY[0x29EDCA2A8], v43);
  v16 = v44;
  v1[3] = sub_29D93A498();
  *(v1 + 32) = 2;
  sub_29D936368();
  v17 = sub_29D9354E8();
  v19 = v18;
  if (v17 == sub_29D9354E8() && v19 == v20)
  {

LABEL_5:
    v22 = *MEMORY[0x29EDBA6C0];
    v23 = sub_29D936338();
    v24 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v22 healthStore:v23];

    v15[2] = v24;
    v25 = sub_29D875F2C();
    if (v25 == 2)
    {
      v25 = sub_29D87678C();
    }

    v26 = sub_29D936378();
    (*(*(v26 - 8) + 8))(v16, v26);
    *(v15 + 32) = v25;
    return v15;
  }

  v21 = sub_29D93AD78();

  if (v21)
  {
    goto LABEL_5;
  }

  v27 = v38;
  sub_29D937858();
  v28 = sub_29D937878();
  v29 = sub_29D93A2A8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136446210;
    v46 = v37;
    swift_getMetatypeMetadata();
    v32 = sub_29D939DA8();
    v34 = sub_29D6C2364(v32, v33, &v45);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s] Non-primary profiles will not have feature availability / onboarding completion for Cardio Fitness feature, passing back nil onboarding status observer", v30, 0xCu);
    sub_29D69417C(v31);
    MEMORY[0x29ED6BE30](v31, -1, -1);
    MEMORY[0x29ED6BE30](v30, -1, -1);
  }

  v35 = sub_29D936378();
  (*(*(v35 - 8) + 8))(v16, v35);
  (*(v39 + 8))(v27, v40);

  type metadata accessor for HKHRCardioFitnessChartDataSource.HKHRCardioFitnessClassificationProvider();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_29D875F2C()
{
  v1 = v0;
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  v63 = v2;
  v64 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v62 = &v58 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v60 = &v58 - v12;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v59 = &v58 - v14;
  v15 = sub_29D936338();
  sub_29D933F48();
  v16 = [v15 profileIdentifier];
  sub_29D77B228(v16);

  sub_29D936318();
  sub_29D693E2C(v66, v66[3]);
  v17 = sub_29D933EC8();
  v18 = sub_29D933F38();

  sub_29D69417C(v66);
  if (!v18)
  {
    sub_29D937858();

    v26 = v15;
    v27 = sub_29D937878();
    v28 = sub_29D93A2A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v1;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v65 = v29;
      v66[0] = v32;
      *v30 = 136446466;
      type metadata accessor for HKHRCardioFitnessChartDataSource.HKHRCardioFitnessClassificationProvider();

      v33 = sub_29D939DA8();
      v35 = sub_29D6C2364(v33, v34, v66);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2112;
      v36 = [v26 profileIdentifier];
      *(v30 + 14) = v36;
      *v31 = v36;
      _os_log_impl(&dword_29D677000, v27, v28, "[%{public}s] Unable to find classification data plugin storage for profile with identifier %@.", v30, 0x16u);
      sub_29D6ACA3C(v31);
      MEMORY[0x29ED6BE30](v31, -1, -1);
      sub_29D69417C(v32);
      MEMORY[0x29ED6BE30](v32, -1, -1);
      MEMORY[0x29ED6BE30](v30, -1, -1);
    }

    else
    {
    }

    (*(v64 + 8))(v62, v63);
    return 2;
  }

  v19 = v0;
  v62 = v15;
  v20 = [v18 data];
  if (!v20)
  {
    v37 = v60;
    sub_29D937858();

    v38 = sub_29D937878();
    v39 = sub_29D93A288();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v62;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65 = v19;
      v66[0] = v43;
      *v42 = 136446210;
      type metadata accessor for HKHRCardioFitnessChartDataSource.HKHRCardioFitnessClassificationProvider();

      v44 = sub_29D939DA8();
      v46 = sub_29D6C2364(v44, v45, v66);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_29D677000, v38, v39, "[%{public}s] Classification data plugin storage did not contain any data", v42, 0xCu);
      sub_29D69417C(v43);
      MEMORY[0x29ED6BE30](v43, -1, -1);
      MEMORY[0x29ED6BE30](v42, -1, -1);
    }

    else
    {
    }

    (*(v64 + 8))(v37, v63);
    return 2;
  }

  v21 = v20;
  v22 = sub_29D933738();
  v24 = v23;

  sub_29D9330D8();
  swift_allocObject();
  sub_29D9330C8();
  sub_29D876D6C();
  sub_29D9330B8();
  v25 = v0;

  v47 = LOBYTE(v66[0]);
  v48 = v59;
  sub_29D937858();

  v49 = sub_29D937878();
  v50 = sub_29D93A2A8();

  if (os_log_type_enabled(v49, v50))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v65 = v25;
    v66[0] = v53;
    *v52 = 136446210;
    type metadata accessor for HKHRCardioFitnessChartDataSource.HKHRCardioFitnessClassificationProvider();

    v54 = sub_29D939DA8();
    v56 = sub_29D6C2364(v54, v55, v66);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_29D677000, v49, v50, "[%{public}s] Using initial classification status from plugin data.", v52, 0xCu);
    sub_29D69417C(v53);
    MEMORY[0x29ED6BE30](v53, -1, -1);
    MEMORY[0x29ED6BE30](v52, -1, -1);
    sub_29D6AA284(v22, v24);

    (*(v64 + 8))(v59, v63);
  }

  else
  {

    sub_29D6AA284(v22, v24);
    (*(v64 + 8))(v48, v63);
  }

  return v47;
}

id sub_29D87678C()
{
  v0 = sub_29D937898();
  MEMORY[0x2A1C7C4A8](v0, v1);
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v7 = sub_29D9371B8();
  v8 = [v7 areAllRequirementsSatisfied];

  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_29D876AEC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D876B5C()
{
  v1 = qword_2A17B6CC0;
  v2 = sub_29D936378();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_29D876C24()
{
  v0 = sub_29D935EF8();

  v1 = qword_2A17B6CC0;
  v2 = sub_29D936378();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_29D876CEC()
{
  sub_29D876C24();

  return swift_deallocClassInstance();
}

unint64_t sub_29D876D6C()
{
  result = qword_2A17B6D00;
  if (!qword_2A17B6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6D00);
  }

  return result;
}

void sub_29D876DC0(uint64_t a1)
{
  if (!qword_2A17B6D08)
  {
    sub_29D876EAC(255);
    sub_29D876FCC(255);
    sub_29D8770D4(&qword_2A17B6D40, sub_29D876EAC, MEMORY[0x29EDB89C0]);
    sub_29D8770D4(&qword_2A17B6D48, sub_29D876FCC, MEMORY[0x29EDB89E8]);
    v1 = sub_29D938088();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6D08);
    }
  }
}

void sub_29D876EAC(uint64_t a1)
{
  if (!qword_2A17B6D10)
  {
    sub_29D877E8C(255, &qword_2A17B6D18, &type metadata for CardioFitnessClassificationStatus, MEMORY[0x29EDC9A40]);
    sub_29D876F50();
    v1 = sub_29D9381B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6D10);
    }
  }
}

unint64_t sub_29D876F50()
{
  result = qword_2A17B6D20;
  if (!qword_2A17B6D20)
  {
    sub_29D877E8C(255, &qword_2A17B6D18, &type metadata for CardioFitnessClassificationStatus, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6D20);
  }

  return result;
}

void sub_29D876FCC(uint64_t a1)
{
  if (!qword_2A17B6D28)
  {
    sub_29D877098(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D8770D4(&qword_2A17B6D38, sub_29D877098, MEMORY[0x29EDB8908]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6D28);
    }
  }
}

uint64_t sub_29D8770D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D87711C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D877180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D8770D4(a4, a5, MEMORY[0x29EDB8A00]);
    v8 = sub_29D9380F8();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

char *sub_29D87721C@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  *(v2 + 32) = *result;
  *a2 = v3;
  return result;
}

uint64_t sub_29D877234(void *a1)
{
  v2 = MEMORY[0x29EDB98E8];
  sub_29D87711C(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v32 - v5;
  sub_29D934528();
  sub_29D87711C(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v32 = xmmword_29D93DDB0;
  *(v10 + 16) = xmmword_29D93DDB0;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x29EDC3710], v7);
  v11 = MEMORY[0x29EDC9E90];
  sub_29D877E8C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  v33 = xmmword_29D940030;
  *(v12 + 16) = xmmword_29D940030;
  *(v12 + 32) = a1;
  v13 = sub_29D9331D8();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_29D877E8C(0, &qword_2A17B50A8, MEMORY[0x29EDC37E0], v11);
  v14 = swift_allocObject();
  *(v14 + 16) = v32;
  v15 = a1;
  v16 = sub_29D936338();
  v17 = sub_29D93A208();

  *(v14 + 32) = v17;
  v18 = MEMORY[0x29ED648C0](v10, v12, v6, v14);

  sub_29D877EDC(v6, &qword_2A17B3A18, v2);
  v19 = v18;
  v20 = sub_29D9344F8();

  v21 = swift_allocObject();
  *(v21 + 16) = v33;
  v22 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v23 = sub_29D939D28();
  v24 = [v22 initWithKey:v23 ascending:0];

  *(v21 + 32) = v24;
  sub_29D69567C(0, &qword_2A17B50C0, 0x29EDBA0F0);
  v25 = sub_29D939F18();

  [v20 setSortDescriptors_];

  v26 = v20;
  sub_29D936318();
  sub_29D693E2C(v34, v34[3]);
  v27 = sub_29D933EC8();
  [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v26 managedObjectContext:v27 sectionNameKeyPath:0 cacheName:0];

  sub_29D69417C(v34);
  sub_29D75A420(0);
  v29 = objc_allocWithZone(v28);
  v30 = sub_29D936A38();

  return v30;
}

uint64_t sub_29D877688(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_2A17B6CC8;
  *(v3 + qword_2A17B6CC8) = 0;
  *(v3 + qword_2A17B6CE0) = 0;
  *(v3 + qword_2A17B6CE8) = 0;
  *(v3 + qword_2A17B6CB8) = a1;
  v12 = *(v7 + 16);
  v12(v3 + qword_2A17B6CC0, a2, v6);
  v12(v10, a2, v6);
  type metadata accessor for HKHRCardioFitnessChartDataSource.HKHRCardioFitnessClassificationProvider();
  swift_allocObject();
  v13 = a1;
  *(v3 + v11) = sub_29D875970(v10);

  v14 = sub_29D877234(v13);
  v15 = *(v3 + v11);

  sub_29D874314(v13, a2, v15, v14);

  *(v3 + qword_2A17B6CD8) = sub_29D935798();
  v16 = *(v3 + v11);
  if (v16)
  {
    v17 = *(v16 + 32);
  }

  else
  {
    v17 = 2;
  }

  v18 = sub_29D936358();
  type metadata accessor for CardioFitnessChartSection(0);
  swift_allocObject();
  v19 = v13;
  v20 = sub_29D8BBE88(v19, v17, v18);

  *(v3 + qword_2A17B6CD0) = v20;

  v21 = sub_29D935ED8();

  sub_29D8745CC();

  (*(v7 + 8))(a2, v6);
  return v21;
}

id sub_29D877904(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_29D933A58();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() _quantityTypeWithCode_];
  if (result)
  {
    v12 = result;
    v13 = MEMORY[0x29EDC9E90];
    sub_29D87711C(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    sub_29D9359D8();
    v14 = swift_allocObject();
    v18 = xmmword_29D93DDB0;
    *(v14 + 16) = xmmword_29D93DDB0;
    sub_29D87711C(0, &qword_2A17B1138, sub_29D6FC5F4, v13);
    v15 = swift_allocObject();
    *(v15 + 16) = v18;
    *(v15 + 56) = &type metadata for CardioFitnessChartItem;
    *(v15 + 64) = sub_29D877BB8();
    v16 = swift_allocObject();
    *(v15 + 32) = v16;
    *(v16 + 16) = v12;
    *(v16 + 24) = a3 & 1;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    sub_29D935E88();
    v17 = v12;
    sub_29D933A48();
    sub_29D933A18();
    (*(v7 + 8))(v10, v6);
    sub_29D9359C8();

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D877BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D877BB8()
{
  result = qword_2A17B6D60;
  if (!qword_2A17B6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6D60);
  }

  return result;
}

void sub_29D877C0C(uint64_t a1)
{
  if (!qword_2A17B6D68)
  {
    sub_29D75A420(255);
    sub_29D8770D4(&unk_2A17B6100, sub_29D75A420, MEMORY[0x29EDC2988]);
    v1 = sub_29D9363A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6D68);
    }
  }
}

id sub_29D877CAC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_29D936378();

  return sub_29D874CB4(a1, a2);
}

void sub_29D877D44(uint64_t a1)
{
  if (!qword_2A17B6D70)
  {
    sub_29D75A420(255);
    sub_29D8770D4(&unk_2A17B6100, sub_29D75A420, MEMORY[0x29EDC2988]);
    v1 = sub_29D935338();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6D70);
    }
  }
}

void sub_29D877DD8(uint64_t a1)
{
  if (!qword_2A17B6D78)
  {
    sub_29D877D44(255);
    v1 = sub_29D9357B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6D78);
    }
  }
}

unint64_t sub_29D877E38()
{
  result = qword_2A17B6D80;
  if (!qword_2A17B6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6D80);
  }

  return result;
}

void sub_29D877E8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D877EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D87711C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D877F4C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D87711C(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D877FF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a1) == 1)
  {
    v6 = v4;
    sub_29D88BBC8(a3);
    v7 = sub_29D939F18();

    v8 = HKUIJoinStringsForAutomationIdentifier();

    if (v8)
    {
      sub_29D6AA360(a4);
      [v6 hxui:v8 addContinueButtonWithAccessibilityIdentifier:?];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_29D8780BC(char a1)
{
  *&v1[OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_isInOnboardingModalFlow] = a1;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v3 = sub_29D939D28();

  sub_29D9334A8();
  v4 = sub_29D939D28();

  v7.receiver = v1;
  v7.super_class = type metadata accessor for AFibBurdenOnboardingHowItWorksViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithTitle_detailText_icon_contentLayout_, v3, v4, 0, 1, 0xE000000000000000);

  return v5;
}

void sub_29D878238()
{
  sub_29D877FF0(&OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_isInOnboardingModalFlow, &unk_2A243D6E0, &unk_2A243D6B0, &unk_2A243D6D0);

  if (*(v0 + OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_isInOnboardingModalFlow) == 1)
  {
  }

  v2 = [v0 navigationItem];
  [v2 setBackButtonDisplayMode_];

  sub_29D87855C();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A2C038;
  v4 = sub_29D939D28();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  v12 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
  [v12 setContentMode_];
  v6 = [v0 contentView];
  [v6 addSubview_];

  v7 = [v0 contentView];
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  v9 = [v0 contentView];
  [v12 hk:v9 alignConstraintsWithView:?];

  v10 = [v12 heightAnchor];
  v11 = [v10 constraintEqualToConstant_];

  [v11 setActive_];
  sub_29D93A538();
}

void sub_29D87855C()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_isInOnboardingModalFlow];
  v3 = [v1 headerView];
  if (v2 != 1)
  {
    if (qword_2A17B0BD8 != -1)
    {
      swift_once();
    }

    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D959530);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D957120);
    v11 = sub_29D939D28();

    [v3 setAccessibilityIdentifier_];

    v12 = [v1 headerView];
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D959530);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0x656C746954, 0xE500000000000000);
    v13 = sub_29D939D28();

    [v12 setTitleAccessibilityIdentifier_];

    v9 = [v1 headerView];
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D959530);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0x7470697263736544, 0xEB000000006E6F69);
    v14 = sub_29D939D28();

    goto LABEL_9;
  }

  sub_29D88BBC8(&unk_2A243EF40);
  v4 = sub_29D939F18();

  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_29D6AA360(&unk_2A243EF60);
  [v3 setAccessibilityIdentifier_];

  v6 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243EFB0);
  v7 = sub_29D939F18();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_29D6AA360(aTitle_13);
  [v6 setTitleAccessibilityIdentifier_];

  v9 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243F020);
  v10 = sub_29D939F18();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  if (!v14)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_29D6AA360(aDescription_2);
LABEL_9:
  [v9 setDetailTextAccessibilityIdentifier_];
}

id sub_29D878BD0(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AFibBurdenOnboardingHowItWorksViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D878C6C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart44AFibBurdenOnboardingHowItWorksViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D878CB8()
{
  v1 = [v0 navigationItem];
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D93A738();
  v3 = sub_29D93A2E8();
  [v1 setRightBarButtonItem_];
}

void sub_29D878EB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for HealthCalendarDaysOfWeekRow(uint64_t a1)
{
  result = qword_2A17B6D98;
  if (!qword_2A17B6D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D878F78(uint64_t a1)
{
  sub_29D878EB4(319, &qword_2A17B5848, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29D878EB4(319, &qword_2A17B1618, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC390]);
    if (v2 <= 0x3F)
    {
      sub_29D878EB4(319, &qword_2A17B1610, type metadata accessor for MonitorHypertensionJournalViewSpecs, MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29D8790C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDB9D18];
  sub_29D878EB4(0, &qword_2A17B5A20, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v17 - v12;
  sub_29D87B4A0(v2, &v17 - v12, &qword_2A17B5A20, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_29D933CE8();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    sub_29D93A298();
    v16 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_29D8792EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D938B68();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDBC7B8];
  sub_29D878EB4(0, &qword_2A17B1600, MEMORY[0x29EDBC7B8], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for HealthCalendarDaysOfWeekRow(0);
  sub_29D87B4A0(v1 + *(v13 + 20), v12, &qword_2A17B1600, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_29D938C58();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    sub_29D93A298();
    v16 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_29D879518()
{
  v1 = v0;
  v2 = sub_29D933CE8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D938C58();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v29 - v14;
  sub_29D8792EC(&v29 - v14);
  (*(v8 + 104))(v12, *MEMORY[0x29EDBC770], v7);
  v16 = sub_29D80ED48(v15, v12);
  v17 = *(v8 + 8);
  v17(v12, v7);
  v17(v15, v7);
  sub_29D8790C8(v6);
  v18 = (v3 + 8);
  if (v16)
  {
    v19 = sub_29D933BE8();
  }

  else
  {
    v19 = sub_29D933BD8();
  }

  v20 = v19;
  v21 = *v18;
  (*v18)(v6, v2);
  sub_29D8790C8(v6);
  v22 = sub_29D933AF8();
  v21(v6, v2);
  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = *(v20 + 16);
  if (v1 < v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v23 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    sub_29D84FCCC(v20, v20 + 32, v22 - 1, (2 * v1) | 1);
    v24 = v26;
    if (*(v20 + 16) == v23)
    {
      goto LABEL_9;
    }

LABEL_14:
    sub_29D84FCCC(v20, v20 + 32, 0, (2 * v23) | 1);
    v28 = v27;

    v20 = v28;
    goto LABEL_9;
  }

  if (v22 != 1)
  {
    goto LABEL_13;
  }

  sub_29D935E88();
  v24 = v20;
  if (v1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v30 = v24;
  sub_29D88BBC8(v20);
  return v30;
}

uint64_t sub_29D8797EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = type metadata accessor for HealthCalendarDaysOfWeekRow(0);
  v4 = v3 - 8;
  v113 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v114 = v6;
  v115 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D87ADC4(0, &qword_2A17B6DE0, sub_29D87AC68, sub_29D87AEC0, MEMORY[0x29EDBCB28]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v117 = (&v112 - v9);
  sub_29D87ABC4(0);
  v116 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v120 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D87AB60(0, &qword_2A17B6DD0, sub_29D87ABC4, MEMORY[0x29EDBC498]);
  v124 = v13;
  v15 = MEMORY[0x2A1C7C4A8](v13, v14);
  v130 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v121 = &v112 - v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v135 = &v112 - v21;
  v22 = type metadata accessor for MonitorHypertensionJournalViewSpecs(0);
  MEMORY[0x2A1C7C4A8](v22, v23);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D87AA74(0);
  v27 = v26;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v126 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v33 = &v112 - v32;
  sub_29D87AB60(0, &qword_2A17B6DC0, sub_29D87AA74, MEMORY[0x29EDBC5F8]);
  v132 = v34;
  v36 = MEMORY[0x2A1C7C4A8](v34, v35);
  v129 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v134 = &v112 - v40;
  v42 = MEMORY[0x2A1C7C4A8](v39, v41);
  v125 = &v112 - v43;
  v45 = MEMORY[0x2A1C7C4A8](v42, v44);
  v127 = &v112 - v46;
  v48 = MEMORY[0x2A1C7C4A8](v45, v47);
  v50 = &v112 - v49;
  MEMORY[0x2A1C7C4A8](v48, v51);
  v53 = &v112 - v52;
  sub_29D939798();
  v118 = *(v4 + 32);
  sub_29D6998E4(v25);
  v123 = v22;
  v54 = *&v25[*(v22 + 28)];

  v112 = v25;
  sub_29D87B440(v25, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  KeyPath = swift_getKeyPath();
  v122 = v27;
  v56 = &v33[*(v27 + 36)];
  *v56 = KeyPath;
  v56[1] = v54;
  v57 = *(a1 + *(v4 + 36));
  sub_29D9398A8();
  v119 = v57;
  sub_29D9388E8();
  sub_29D87B234(v33, v50, sub_29D87AA74);
  v58 = &v50[*(v132 + 36)];
  v59 = v141;
  *(v58 + 4) = v140;
  *(v58 + 5) = v59;
  *(v58 + 6) = v142;
  v60 = v137;
  *v58 = v136;
  *(v58 + 1) = v60;
  v61 = v139;
  *(v58 + 2) = v138;
  *(v58 + 3) = v61;
  v133 = v53;
  sub_29D87B29C(v50, v53, &qword_2A17B6DC0, sub_29D87AA74, MEMORY[0x29EDBC5F8]);
  v62 = sub_29D938B98();
  v63 = v117;
  *v117 = v62;
  v63[1] = 0;
  *(v63 + 16) = 1;
  sub_29D87B054(0);
  *&v150[0] = sub_29D879518();
  swift_getKeyPath();
  v128 = a1;
  v64 = a1;
  v65 = v115;
  sub_29D87B3D8(v64, v115, type metadata accessor for HealthCalendarDaysOfWeekRow);
  v66 = (*(v113 + 80) + 16) & ~*(v113 + 80);
  v67 = swift_allocObject();
  sub_29D87B234(v65, v67 + v66, type metadata accessor for HealthCalendarDaysOfWeekRow);
  sub_29D87B1E4(0, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D87AD20(0);
  sub_29D87AE44();
  sub_29D87AF38();
  sub_29D9397C8();
  sub_29D9398A8();
  sub_29D9388E8();
  v68 = v63;
  v69 = v120;
  sub_29D87B13C(v68, v120);
  v70 = (v69 + *(v116 + 36));
  v71 = v148;
  v70[4] = v147;
  v70[5] = v71;
  v70[6] = v149;
  v72 = v144;
  *v70 = v143;
  v70[1] = v72;
  v73 = v146;
  v70[2] = v145;
  v70[3] = v73;
  sub_29D87B1E4(0, &qword_2A17B2590, MEMORY[0x29EDBC970], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93F680;
  LOBYTE(v22) = sub_29D9390E8();
  *(inited + 32) = v22;
  v75 = sub_29D9390F8();
  *(inited + 33) = v75;
  v76 = sub_29D939118();
  sub_29D939118();
  v77 = v69;
  if (sub_29D939118() != v22)
  {
    v76 = sub_29D939118();
  }

  sub_29D939118();
  v78 = sub_29D939118();
  v79 = v135;
  v80 = v126;
  if (v78 != v75)
  {
    v76 = sub_29D939118();
  }

  v81 = v112;
  sub_29D6998E4(v112);
  sub_29D87B440(v81, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  sub_29D938618();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = v121;
  sub_29D87B234(v77, v121, sub_29D87ABC4);
  v91 = v90 + *(v124 + 36);
  *v91 = v76;
  *(v91 + 8) = v83;
  *(v91 + 16) = v85;
  *(v91 + 24) = v87;
  *(v91 + 32) = v89;
  *(v91 + 40) = 0;
  sub_29D87B29C(v90, v79, &qword_2A17B6DD0, sub_29D87ABC4, MEMORY[0x29EDBC498]);
  sub_29D939798();
  sub_29D6998E4(v81);
  v92 = *(v81 + *(v123 + 28));

  sub_29D87B440(v81, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  v93 = swift_getKeyPath();
  v94 = (v80 + *(v122 + 36));
  *v94 = v93;
  v94[1] = v92;
  sub_29D9398A8();
  sub_29D9388E8();
  v95 = v125;
  sub_29D87B234(v80, v125, sub_29D87AA74);
  v96 = (v95 + *(v132 + 36));
  v97 = v150[5];
  v96[4] = v150[4];
  v96[5] = v97;
  v96[6] = v150[6];
  v98 = v150[1];
  *v96 = v150[0];
  v96[1] = v98;
  v99 = v150[3];
  v96[2] = v150[2];
  v96[3] = v99;
  v100 = MEMORY[0x29EDBC5F8];
  v101 = v127;
  sub_29D87B29C(v95, v127, &qword_2A17B6DC0, sub_29D87AA74, MEMORY[0x29EDBC5F8]);
  v102 = v134;
  sub_29D87B30C(v133, v134, &qword_2A17B6DC0, sub_29D87AA74, v100);
  v103 = v79;
  v104 = v130;
  sub_29D87B30C(v103, v130, &qword_2A17B6DD0, sub_29D87ABC4, MEMORY[0x29EDBC498]);
  v105 = v129;
  sub_29D87B30C(v101, v129, &qword_2A17B6DC0, sub_29D87AA74, v100);
  v106 = v102;
  v107 = v131;
  sub_29D87B30C(v106, v131, &qword_2A17B6DC0, sub_29D87AA74, v100);
  sub_29D87A9B8(0);
  v109 = v108;
  sub_29D87B30C(v104, v107 + *(v108 + 48), &qword_2A17B6DD0, sub_29D87ABC4, MEMORY[0x29EDBC498]);
  sub_29D87B30C(v105, v107 + *(v109 + 64), &qword_2A17B6DC0, sub_29D87AA74, v100);
  sub_29D87B37C(v101, &qword_2A17B6DC0, sub_29D87AA74, v100);
  v110 = MEMORY[0x29EDBC498];
  sub_29D87B37C(v135, &qword_2A17B6DD0, sub_29D87ABC4, MEMORY[0x29EDBC498]);
  sub_29D87B37C(v133, &qword_2A17B6DC0, sub_29D87AA74, v100);
  sub_29D87B37C(v105, &qword_2A17B6DC0, sub_29D87AA74, v100);
  sub_29D87B37C(v104, &qword_2A17B6DD0, sub_29D87ABC4, v110);
  return sub_29D87B37C(v134, &qword_2A17B6DC0, sub_29D87AA74, v100);
}

double sub_29D87A42C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_29D938C68();
  v16 = 1;
  sub_29D87A5F0(v5, v6, a2, &v18);
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v25 = v18;
  v26 = v19;
  v30[2] = v20;
  v30[3] = v21;
  v31 = v22;
  v30[0] = v18;
  v30[1] = v19;
  sub_29D87B3D8(&v25, v14, sub_29D69A85C);
  sub_29D87B440(v30, sub_29D69A85C);
  *&v15[23] = v26;
  *&v15[39] = v27;
  *&v15[55] = v28;
  v15[71] = v29;
  *&v15[7] = v25;
  LOBYTE(a2) = v16;
  sub_29D9398A8();
  sub_29D9388E8();
  *&v17[55] = v21;
  *&v17[71] = v22;
  *&v17[87] = v23;
  *&v17[103] = v24;
  *&v17[7] = v18;
  *&v17[23] = v19;
  *&v17[39] = v20;
  v8 = *v15;
  *(a3 + 33) = *&v15[16];
  v9 = *&v15[48];
  *(a3 + 49) = *&v15[32];
  *(a3 + 65) = v9;
  *(a3 + 17) = v8;
  v10 = *&v17[80];
  *(a3 + 153) = *&v17[64];
  *(a3 + 169) = v10;
  *(a3 + 185) = *&v17[96];
  v11 = *&v17[16];
  *(a3 + 89) = *v17;
  *(a3 + 105) = v11;
  result = *&v17[32];
  v13 = *&v17[48];
  *(a3 + 121) = *&v17[32];
  *a3 = v7;
  *(a3 + 8) = 0;
  *(a3 + 16) = a2;
  *(a3 + 81) = *&v15[64];
  *(a3 + 200) = *&v17[111];
  *(a3 + 137) = v13;
  return result;
}

uint64_t sub_29D87A5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v33 = type metadata accessor for MonitorHypertensionJournalViewSpecs(0) - 8;
  MEMORY[0x2A1C7C4A8](v33, v7);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9391E8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v36 = a2;
  sub_29D69AB60();
  sub_29D935E88();
  v14 = sub_29D9392F8();
  v16 = v15;
  v18 = v17;
  sub_29D939228();
  (*(v10 + 104))(v13, *MEMORY[0x29EDBC9B0], v9);
  sub_29D939208();

  (*(v10 + 8))(v13, v9);
  sub_29D939178();
  sub_29D9391D8();

  v19 = sub_29D9392C8();
  v21 = v20;
  LOBYTE(a1) = v22;

  sub_29D69ABB4(v14, v16, v18 & 1);

  type metadata accessor for HealthCalendarDaysOfWeekRow(0);
  v23 = v32;
  sub_29D6998E4(v32);

  sub_29D87B440(v23, type metadata accessor for MonitorHypertensionJournalViewSpecs);
  v24 = sub_29D9392A8();
  v26 = v25;
  LOBYTE(v16) = v27;
  v29 = v28;
  sub_29D69ABB4(v19, v21, a1 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a4 = v24;
  *(a4 + 8) = v26;
  *(a4 + 16) = v16 & 1;
  *(a4 + 24) = v29;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 48) = result;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  return result;
}

uint64_t sub_29D87A8DC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_29D938C68();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29D87A920(0);
  return sub_29D8797EC(v2, a2 + *(v4 + 44));
}

void sub_29D87A920(uint64_t a1)
{
  if (!qword_2A17B6DA8)
  {
    sub_29D878EB4(255, &qword_2A17B6DB0, sub_29D87A9B8, MEMORY[0x29EDBCC28]);
    v1 = sub_29D938788();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6DA8);
    }
  }
}

void sub_29D87A9B8(uint64_t a1)
{
  if (!qword_2A17B6DB8)
  {
    sub_29D87AB60(255, &qword_2A17B6DC0, sub_29D87AA74, MEMORY[0x29EDBC5F8]);
    sub_29D87AB60(255, &qword_2A17B6DD0, sub_29D87ABC4, MEMORY[0x29EDBC498]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B6DB8);
    }
  }
}

void sub_29D87AA74(uint64_t a1)
{
  if (!qword_2A17B6DC8)
  {
    sub_29D9397A8();
    sub_29D87AAF4(255, &qword_2A17B2518, &qword_2A17B1730, MEMORY[0x29EDBCA98]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6DC8);
    }
  }
}

void sub_29D87AAF4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D87B1E4(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29D939088();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D87AB60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29D938838();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D87ABC4(uint64_t a1)
{
  if (!qword_2A17B6DD8)
  {
    sub_29D87ADC4(255, &qword_2A17B6DE0, sub_29D87AC68, sub_29D87AEC0, MEMORY[0x29EDBCB28]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6DD8);
    }
  }
}

void sub_29D87AC68(uint64_t a1)
{
  if (!qword_2A17B6DE8)
  {
    sub_29D87B1E4(255, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    sub_29D87AD20(255);
    sub_29D87AE44();
    v1 = sub_29D9397E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6DE8);
    }
  }
}

void sub_29D87AD20(uint64_t a1)
{
  if (!qword_2A17B6DF0)
  {
    sub_29D87ADC4(255, &qword_2A17B6DF8, sub_29D69A85C, sub_29D80E018, MEMORY[0x29EDBCB50]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6DF0);
    }
  }
}

void sub_29D87ADC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_29D87AE44()
{
  result = qword_2A17B6E00;
  if (!qword_2A17B6E00)
  {
    sub_29D87B1E4(255, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E00);
  }

  return result;
}

unint64_t sub_29D87AEC0()
{
  result = qword_2A17B6E08;
  if (!qword_2A17B6E08)
  {
    sub_29D87AC68(255);
    sub_29D87AF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E08);
  }

  return result;
}

unint64_t sub_29D87AF38()
{
  result = qword_2A17B6E10;
  if (!qword_2A17B6E10)
  {
    sub_29D87AD20(255);
    sub_29D87AFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E10);
  }

  return result;
}

unint64_t sub_29D87AFB8()
{
  result = qword_2A17B6E18;
  if (!qword_2A17B6E18)
  {
    sub_29D87ADC4(255, &qword_2A17B6DF8, sub_29D69A85C, sub_29D80E018, MEMORY[0x29EDBCB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E18);
  }

  return result;
}

void sub_29D87B054(uint64_t a1)
{
  if (!qword_2A17B6E20)
  {
    sub_29D87AC68(255);
    v1 = sub_29D938788();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6E20);
    }
  }
}

double sub_29D87B0BC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HealthCalendarDaysOfWeekRow(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D87A42C(a1, v6, a2);
}

uint64_t sub_29D87B13C(uint64_t a1, uint64_t a2)
{
  sub_29D87ADC4(0, &qword_2A17B6DE0, sub_29D87AC68, sub_29D87AEC0, MEMORY[0x29EDBCB28]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D87B1E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D87B234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D87B29C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_29D87AB60(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_29D87B30C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_29D87AB60(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_29D87B37C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_29D87AB60(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29D87B3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D87B440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D87B4A0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D878EB4(0, a3, a4, MEMORY[0x29EDBC388]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_29D87B520()
{
  result = qword_2A17B6E28;
  if (!qword_2A17B6E28)
  {
    sub_29D87B578(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E28);
  }

  return result;
}

void sub_29D87B578(uint64_t a1)
{
  if (!qword_2A17B6E30)
  {
    sub_29D878EB4(255, &qword_2A17B6DB0, sub_29D87A9B8, MEMORY[0x29EDBCC28]);
    sub_29D87B60C();
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6E30);
    }
  }
}

unint64_t sub_29D87B60C()
{
  result = qword_2A17B6E38;
  if (!qword_2A17B6E38)
  {
    sub_29D878EB4(255, &qword_2A17B6DB0, sub_29D87A9B8, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E38);
  }

  return result;
}

uint64_t _s14descr2A243C641C15SettingsContentVMa(uint64_t a1)
{
  result = qword_2A1A241D0;
  if (!qword_2A1A241D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D87B708(uint64_t a1)
{
  sub_29D9346E8();
  if (v1 <= 0x3F)
  {
    sub_29D87D764(319, &qword_2A1A241E0, &_s14descr2A243C641C15SettingsContentV6HeaderVN, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      sub_29D87D764(319, &qword_2A1A241E8, &_s14descr2A243C641C15SettingsContentV6FooterVN, MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s14descr2A243C641C15SettingsContentV11SwitchStateVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s14descr2A243C641C15SettingsContentV11SwitchStateVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_29D87B98C(void *a1, unsigned int a2)
{
  sub_29D87E314(0, &qword_2A17B6EC8, sub_29D87E2C0, &_s14descr2A243C641C15SettingsContentV11SwitchStateV10CodingKeysON, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v11 - v8;
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E2C0();
  sub_29D93AED8();
  v13 = 0;
  sub_29D93ACF8();
  if (!v2)
  {
    v12 = 1;
    sub_29D93ACF8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_29D87BB18()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

void sub_29D87BB58(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_29D93AD78() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000029D96A3B0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();

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

uint64_t sub_29D87BC3C(uint64_t a1)
{
  v2 = sub_29D87E2C0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D87BC78(uint64_t a1)
{
  v2 = sub_29D87E2C0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D87BCB4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_29D87DC8C(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_29D87BCEC(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_29D87B98C(a1, v2 | *v1);
}

void sub_29D87BD60(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6554726564616568 && a2 == 0xEA00000000007478)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29D87BDF0(uint64_t a1)
{
  v2 = sub_29D87E26C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D87BE2C(uint64_t a1)
{
  v2 = sub_29D87E26C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D87BE68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_29D87E314(0, &qword_2A17B6EA0, sub_29D87E26C, &_s14descr2A243C641C15SettingsContentV6HeaderV10CodingKeysON, MEMORY[0x29EDC9E80]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v15 - v8;
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E26C();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v10 = v16;
  v11 = sub_29D93AC58();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_29D69417C(a1);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

uint64_t sub_29D87C018(void *a1)
{
  sub_29D87E314(0, &qword_2A17B6EB0, sub_29D87E26C, &_s14descr2A243C641C15SettingsContentV6HeaderV10CodingKeysON, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E26C();
  sub_29D93AED8();
  sub_29D93ACE8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D87C180(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_29D93AD78();
  }
}

uint64_t sub_29D87C1B0(void *a1)
{
  sub_29D87E314(0, &qword_2A17B6E98, sub_29D87E218, &_s14descr2A243C641C15SettingsContentV6FooterV10CodingKeysON, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10 - v7;
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E218();
  sub_29D93AED8();
  v13 = 0;
  sub_29D93ACE8();
  if (!v1)
  {
    v12 = 1;
    sub_29D93ACB8();
    v11 = 2;
    sub_29D93ACB8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D87C35C(void *a1)
{
  v3 = v1;
  sub_29D87E314(0, &qword_2A17B6E68, sub_29D87D95C, &_s14descr2A243C641C15SettingsContentV10CodingKeysON, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v19 - v9;
  sub_29D693E2C(a1, a1[3]);
  sub_29D87D95C();
  sub_29D93AED8();
  LOBYTE(v19[0]) = 0;
  sub_29D9346E8();
  sub_29D87D9B0(&qword_2A17B1D68, MEMORY[0x29EDC1778]);
  sub_29D93AD18();
  if (!v2)
  {
    v11 = _s14descr2A243C641C15SettingsContentVMa(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = v12[1];
    LOBYTE(v19[0]) = v13;
    BYTE1(v19[0]) = v12;
    v20 = 1;
    sub_29D87DAF0();
    sub_29D93AD18();
    v14 = (v3 + v11[6]);
    v15 = *v14;
    LOBYTE(v14) = v14[1];
    LOBYTE(v19[0]) = v15;
    BYTE1(v19[0]) = v14;
    v20 = 2;
    sub_29D93AD18();
    v19[0] = *(v3 + v11[7]);
    v20 = 3;
    sub_29D87DB44();
    sub_29D93ACD8();
    v16 = (v3 + v11[8]);
    v17 = v16[1];
    v19[0] = *v16;
    v19[1] = v17;
    v19[2] = v16[2];
    v20 = 4;
    sub_29D87DB98();
    sub_29D93ACD8();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_29D87C640(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_29D9346E8();
  v26 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D87E314(0, &qword_2A17B6E40, sub_29D87D95C, &_s14descr2A243C641C15SettingsContentV10CodingKeysON, MEMORY[0x29EDC9E80]);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v24 - v8;
  v10 = _s14descr2A243C641C15SettingsContentVMa(0);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(a1, a1[3]);
  sub_29D87D95C();
  v30 = v9;
  v14 = v31;
  sub_29D93AEC8();
  if (v14)
  {
    sub_29D69417C(a1);
  }

  else
  {
    v15 = v26;
    LOBYTE(v32) = 0;
    sub_29D87D9B0(&qword_2A17B1D10, MEMORY[0x29EDC1788]);
    v16 = v27;
    sub_29D93AC88();
    (*(v15 + 32))(v13, v16, v3);
    v35 = 1;
    sub_29D87D9F4();
    sub_29D93AC88();
    v17 = BYTE1(v32);
    v18 = &v13[v10[5]];
    *v18 = v32;
    v18[1] = v17;
    v35 = 2;
    sub_29D93AC88();
    v19 = BYTE1(v32);
    v20 = &v13[v10[6]];
    *v20 = v32;
    v20[1] = v19;
    v35 = 3;
    sub_29D87DA48();
    sub_29D93AC48();
    v21 = v28;
    *&v13[v10[7]] = v32;
    v35 = 4;
    sub_29D87DA9C();
    sub_29D93AC48();
    (*(v21 + 8))(v30, v29);
    v22 = &v13[v10[8]];
    v23 = v33;
    *v22 = v32;
    *(v22 + 1) = v23;
    *(v22 + 2) = v34;
    sub_29D6E5560(v13, v25);
    sub_29D69417C(a1);
    sub_29D6E5644(v13);
  }
}

uint64_t sub_29D87CB08()
{
  v1 = 0x694C7265746F6F66;
  if (*v0 != 1)
  {
    v1 = 0x4C52556B6E696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65547265746F6F66;
  }
}

uint64_t sub_29D87CB68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D87DE6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D87CB90(uint64_t a1)
{
  v2 = sub_29D87E218();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D87CBCC(uint64_t a1)
{
  v2 = sub_29D87E218();

  return MEMORY[0x2A1C73280](a1, v2);
}

double sub_29D87CC08@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_29D87DF94(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_29D87CC64(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_29D87D4B8(v7, v8) & 1;
}

unint64_t sub_29D87CCAC()
{
  v1 = *v0;
  v2 = 0x5365727574616566;
  v3 = 0x726564616568;
  if (v1 != 3)
  {
    v3 = 0x7265746F6F66;
  }

  if (v1 == 2)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_29D87CD54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D87E7DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D87CD88(uint64_t a1)
{
  v2 = sub_29D87D95C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D87CDC4(uint64_t a1)
{
  v2 = sub_29D87D95C();

  return MEMORY[0x2A1C73280](a1, v2);
}

BOOL sub_29D87CE34(uint64_t a1, uint64_t a2)
{
  if ((sub_29D9346D8() & 1) == 0)
  {
    return 0;
  }

  v4 = _s14descr2A243C641C15SettingsContentVMa(0);
  result = 0;
  v6 = v4[5];
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  if (v8 == *v9 && ((*(v7 + 1) ^ v9[1]) & 1) == 0)
  {
    result = 0;
    v10 = v4[6];
    v11 = a1 + v10;
    v12 = *(a1 + v10);
    v13 = (a2 + v10);
    if (v12 == *v13 && ((*(v11 + 1) ^ v13[1]) & 1) == 0)
    {
      v14 = v4[7];
      v15 = (a1 + v14);
      v16 = *(a1 + v14 + 8);
      v17 = (a2 + v14);
      v18 = v17[1];
      if (v16)
      {
        if (!v18)
        {
          return 0;
        }

        if (*v15 != *v17 || v16 != v18)
        {
          v20 = v4;
          v21 = sub_29D93AD78();
          v4 = v20;
          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v18)
      {
        return 0;
      }

      v22 = v4[8];
      v23 = *(a1 + v22);
      v24 = *(a1 + v22 + 8);
      v25 = *(a1 + v22 + 24);
      v74 = *(a1 + v22 + 16);
      v26 = *(a1 + v22 + 32);
      v27 = *(a1 + v22 + 40);
      v28 = (a2 + v22);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = v28[3];
      v33 = v28[4];
      v34 = v28[5];
      if (v24)
      {
        if (v30)
        {
          v68 = v26;
          if (v23 == v29 && v24 == v30 || (v35 = v24, v36 = v27, v37 = v23, v38 = v25, v39 = sub_29D93AD78(), v25 = v38, v23 = v37, v27 = v36, v24 = v35, (v39 & 1) != 0))
          {
            if (v25)
            {
              if (!v32)
              {
                v64 = v31;
                v44 = v25;
                sub_29D87DBEC(v29, v30, v64, 0, v33, v34);
                v45 = v74;
                v46 = v68;
                sub_29D87DBEC(v23, v24, v74, v44, v68, v27);
                goto LABEL_37;
              }

              if (v74 != v31 || v25 != v32)
              {
                v71 = v27;
                v40 = v23;
                v41 = v25;
                v42 = sub_29D93AD78();
                v25 = v41;
                v23 = v40;
                v27 = v71;
                if ((v42 & 1) == 0)
                {
                  v43 = v31;
                  v44 = v25;
                  sub_29D87DBEC(v29, v30, v43, v32, v33, v34);
                  v45 = v74;
                  v46 = v68;
                  sub_29D87DBEC(v23, v24, v74, v44, v68, v71);

LABEL_37:

LABEL_41:

                  v51 = v23;
                  v53 = v24;
                  v52 = v45;
                  v54 = v44;
                  goto LABEL_42;
                }
              }

              goto LABEL_30;
            }

            if (!v32)
            {
LABEL_30:
              if (v27)
              {
                if (!v34)
                {
                  v67 = v31;
                  v44 = v25;
                  sub_29D87DBEC(v29, v30, v67, v32, v33, 0);
                  v45 = v74;
                  v46 = v68;
                  sub_29D87DBEC(v23, v24, v74, v44, v68, v27);

                  goto LABEL_41;
                }

                v70 = v25;
                if (v68 == v33 && v27 == v34)
                {
                  sub_29D87DBEC(v29, v30, v31, v32, v68, v27);
                  sub_29D87DBEC(v23, v24, v74, v70, v68, v27);

                  v57 = v23;
                  v58 = v24;
                  v59 = v74;
                  v60 = v70;
                  v61 = v68;
                  v62 = v27;
LABEL_49:
                  sub_29D87DC3C(v57, v58, v59, v60, v61, v62);
                  return 1;
                }

                v73 = sub_29D93AD78();
                sub_29D87DBEC(v29, v30, v31, v32, v33, v34);
                sub_29D87DBEC(v23, v24, v74, v70, v68, v27);

                sub_29D87DC3C(v23, v24, v74, v70, v68, v27);
                return (v73 & 1) != 0;
              }

              v65 = v23;
              v66 = v25;
              if (!v34)
              {
                sub_29D87DBEC(v29, v30, v31, v32, v33, 0);
                sub_29D87DBEC(v65, v24, v74, v66, v68, 0);

                v57 = v65;
                v58 = v24;
                v59 = v74;
                v60 = v66;
                v61 = v68;
                v62 = 0;
                goto LABEL_49;
              }

              sub_29D87DBEC(v29, v30, v31, v32, v33, v34);
              sub_29D87DBEC(v65, v24, v74, v66, v68, 0);

              v51 = v65;
              v53 = v24;
              v52 = v74;
              v54 = v66;
              v55 = v68;
              v56 = 0;
LABEL_43:
              sub_29D87DC3C(v51, v53, v52, v54, v55, v56);
              return 0;
            }

            sub_29D87DBEC(v29, v30, v31, v32, v33, v34);
            v46 = v68;
            sub_29D87DBEC(v23, v24, v74, 0, v68, v27);

            v51 = v23;
            v53 = v24;
            v52 = v74;
            v54 = 0;
          }

          else
          {
            v63 = v25;
            sub_29D87DBEC(v29, v30, v31, v32, v33, v34);
            v46 = v68;
            sub_29D87DBEC(v23, v24, v74, v63, v68, v27);

            v51 = v23;
            v53 = v24;
            v52 = v74;
            v54 = v63;
          }

LABEL_42:
          v55 = v46;
          v56 = v27;
          goto LABEL_43;
        }
      }

      else if (!v30)
      {
        return 1;
      }

      v69 = *v28;
      v72 = v28[2];
      v47 = v28[1];
      v48 = v28[5];
      v49 = v27;
      v50 = v25;
      sub_29D87DBEC(*v28, v47, v72, v32, v33, v48);
      sub_29D87DBEC(v23, v24, v74, v50, v26, v49);
      sub_29D87DC3C(v23, v24, v74, v50, v26, v49);
      v51 = v69;
      v52 = v72;
      v53 = v47;
      v54 = v32;
      v55 = v33;
      v56 = v48;
      goto LABEL_43;
    }
  }

  return result;
}

uint64_t sub_29D87D4B8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_29D93AD78() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_29D93AD78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_29D93AD78() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_29D87D57C(char a1)
{
  sub_29D87D764(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D93F680;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = sub_29D9334A8();
  *(v1 + 40) = v2;
  v3 = sub_29D9334A8();
  v5 = v4;

  *(v1 + 48) = v3;
  *(v1 + 56) = v5;
  sub_29D87D764(0, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D738398(v6);
  v7 = sub_29D939CA8();

  return v7;
}

void sub_29D87D764(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D87D7B4()
{
  sub_29D87D764(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D93F680;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_29D9334A8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_29D9334A8();
  *(v0 + 56) = v2;
  sub_29D87D764(0, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D738398(v3);
  v4 = sub_29D939CA8();

  return v4;
}

unint64_t sub_29D87D95C()
{
  result = qword_2A17B6E48;
  if (!qword_2A17B6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E48);
  }

  return result;
}

uint64_t sub_29D87D9B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D9346E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D87D9F4()
{
  result = qword_2A17B6E50;
  if (!qword_2A17B6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E50);
  }

  return result;
}

unint64_t sub_29D87DA48()
{
  result = qword_2A17B6E58;
  if (!qword_2A17B6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E58);
  }

  return result;
}

unint64_t sub_29D87DA9C()
{
  result = qword_2A17B6E60;
  if (!qword_2A17B6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E60);
  }

  return result;
}

unint64_t sub_29D87DAF0()
{
  result = qword_2A17B6E70;
  if (!qword_2A17B6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E70);
  }

  return result;
}

unint64_t sub_29D87DB44()
{
  result = qword_2A17B6E78;
  if (!qword_2A17B6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E78);
  }

  return result;
}

unint64_t sub_29D87DB98()
{
  result = qword_2A17B6E80;
  if (!qword_2A17B6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E80);
  }

  return result;
}

double sub_29D87DBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    sub_29D935E88();
    sub_29D935E88();

    sub_29D935E88();
  }

  return result;
}

double sub_29D87DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29D87DC8C(void *a1)
{
  sub_29D87E314(0, &qword_2A17B6EB8, sub_29D87E2C0, &_s14descr2A243C641C15SettingsContentV11SwitchStateV10CodingKeysON, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v13 - v7;
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E2C0();
  sub_29D93AEC8();
  if (v1)
  {
    return sub_29D69417C(a1);
  }

  v15 = 0;
  v9 = sub_29D93AC68();
  v14 = 1;
  v11 = sub_29D93AC68();
  (*(v5 + 8))(v8, v4);
  sub_29D69417C(a1);
  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFFFE | v9 & 1;
}

uint64_t sub_29D87DE6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65547265746F6F66 && a2 == 0xEA00000000007478 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694C7265746F6F66 && a2 == 0xEA00000000006B6ELL || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C52556B6E696CLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_29D93AD78();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29D87DF94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  sub_29D87E314(0, &qword_2A17B6E88, sub_29D87E218, &_s14descr2A243C641C15SettingsContentV6FooterV10CodingKeysON, MEMORY[0x29EDC9E80]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v22 - v8;
  sub_29D693E2C(a1, a1[3]);
  sub_29D87E218();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v10 = v6;
  v11 = v25;
  v28 = 0;
  v12 = sub_29D93AC58();
  v14 = v13;
  v24 = v12;
  v27 = 1;
  v22 = sub_29D93AC28();
  v23 = v15;
  v26 = 2;
  v16 = sub_29D93AC28();
  v17 = v9;
  v19 = v18;
  (*(v10 + 8))(v17, v5);
  result = sub_29D69417C(a1);
  *v11 = v24;
  v11[1] = v14;
  v21 = v23;
  v11[2] = v22;
  v11[3] = v21;
  v11[4] = v16;
  v11[5] = v19;
  return result;
}

unint64_t sub_29D87E218()
{
  result = qword_2A17B6E90;
  if (!qword_2A17B6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6E90);
  }

  return result;
}

unint64_t sub_29D87E26C()
{
  result = qword_2A17B6EA8;
  if (!qword_2A17B6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EA8);
  }

  return result;
}

unint64_t sub_29D87E2C0()
{
  result = qword_2A17B6EC0;
  if (!qword_2A17B6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EC0);
  }

  return result;
}

void sub_29D87E314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_29D87E3C0()
{
  result = qword_2A17B6ED0;
  if (!qword_2A17B6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6ED0);
  }

  return result;
}

unint64_t sub_29D87E418()
{
  result = qword_2A17B6ED8;
  if (!qword_2A17B6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6ED8);
  }

  return result;
}

unint64_t sub_29D87E470()
{
  result = qword_2A17B6EE0;
  if (!qword_2A17B6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EE0);
  }

  return result;
}

unint64_t sub_29D87E4C8()
{
  result = qword_2A17B6EE8;
  if (!qword_2A17B6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EE8);
  }

  return result;
}

unint64_t sub_29D87E520()
{
  result = qword_2A17B6EF0;
  if (!qword_2A17B6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EF0);
  }

  return result;
}

unint64_t sub_29D87E578()
{
  result = qword_2A17B6EF8;
  if (!qword_2A17B6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6EF8);
  }

  return result;
}

unint64_t sub_29D87E5D0()
{
  result = qword_2A17B6F00;
  if (!qword_2A17B6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F00);
  }

  return result;
}

unint64_t sub_29D87E628()
{
  result = qword_2A17B6F08;
  if (!qword_2A17B6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F08);
  }

  return result;
}

unint64_t sub_29D87E680()
{
  result = qword_2A17B6F10;
  if (!qword_2A17B6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F10);
  }

  return result;
}

unint64_t sub_29D87E6D8()
{
  result = qword_2A17B6F18;
  if (!qword_2A17B6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F18);
  }

  return result;
}

unint64_t sub_29D87E730()
{
  result = qword_2A17B6F20;
  if (!qword_2A17B6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F20);
  }

  return result;
}

unint64_t sub_29D87E788()
{
  result = qword_2A17B6F28;
  if (!qword_2A17B6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F28);
  }

  return result;
}

uint64_t sub_29D87E7DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000029D96A370 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5365727574616566 && a2 == 0xED00006863746977 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000029D96A390 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_29D93AD78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_29D93AD78();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_29D87E99C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9346E8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = v30 - v9;
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v30 - v12;
  v14 = sub_29D934798();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CBC0C();
  v19 = sub_29D934758();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v30[0] = objc_opt_self();
    v20 = [v30[0] isBradycardiaDetectionEnabled];
    v21 = *(v3 + 104);
    v30[1] = v19;
    v31 = a1;
    if (v20)
    {
      v22 = *MEMORY[0x29EDC1760];
      v21(v13, v22, v2);
    }

    else
    {
      v21(v13, *MEMORY[0x29EDC1768], v2);
      v22 = *MEMORY[0x29EDC1760];
    }

    v21(v10, v22, v2);
    v24 = sub_29D9346D8();
    v25 = *(v3 + 8);
    v25(v10, v2);
    v25(v13, v2);
    sub_29D6CBCA0(v24 & 1);
    if ([v30[0] isBradycardiaDetectionEnabled])
    {
      v26 = v22;
    }

    else
    {
      v26 = *MEMORY[0x29EDC1768];
    }

    v27 = v32;
    v21(v32, v26, v2);
    sub_29D9347C8();
    sub_29D9347A8();
    v25(v27, v2);
    a1 = v31;
    sub_29D9368E8();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v28 = sub_29D9368F8();
  return (*(*(v28 - 8) + 56))(a1, v23, 1, v28);
}

uint64_t sub_29D87ED68@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() isBradycardiaDetectionEnabled];
  v3 = sub_29D9346E8();
  v4 = *(*(v3 - 8) + 104);
  v5 = MEMORY[0x29EDC1760];
  if (!v2)
  {
    v5 = MEMORY[0x29EDC1768];
  }

  v6 = *v5;

  return v4(a1, v6, v3);
}

id sub_29D87EE30()
{
  v0 = objc_opt_self();
  if (![v0 isBradycardiaDetectionEnabled])
  {
    return 0;
  }

  v1 = [v0 bradycardiaThresholdHeartRate];
  v2 = [objc_opt_self() _countPerMinuteUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

  return v3;
}

void sub_29D87EEE8(void *a1)
{
  [a1 _beatsPerMinute];
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  [objc_opt_self() setBradycardiaThresholdHeartRate_];
}

id sub_29D87EF6C()
{
  v0 = objc_opt_self();

  return [v0 setBradycardiaThresholdHeartRate_];
}

uint64_t sub_29D87EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D6945AC(a2 + 16, v4);
  sub_29D693E2C(v4, v4[3]);
  sub_29D936808();
  sub_29D69417C(v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_29D9367C8();
    return sub_29D936978();
  }

  return result;
}

uint64_t sub_29D87F040(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_29D87F094()
{
  sub_29D69417C((v0 + 16));
  sub_29D68B77C(v0 + 56);
  sub_29D68B77C(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_29D87F14C()
{
  sub_29D744388(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = v27 - v2;
  sub_29D7061EC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D706220(0);
  v28 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7062B4(0);
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D744388(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  sub_29D8809E8(&qword_2A1A249F0, sub_29D7061EC, MEMORY[0x29EDB8AF8]);
  sub_29D938548();
  (*(v6 + 8))(v9, v5);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v20 = sub_29D93A468();
  v31 = v20;
  v21 = sub_29D93A448();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  sub_29D8809E8(&qword_2A17B2A18, sub_29D706220, MEMORY[0x29EDB8918]);
  sub_29D706380();
  v22 = v28;
  sub_29D938538();
  sub_29D7339C0(v3);

  (*(v11 + 8))(v14, v22);
  swift_allocObject();
  v23 = v27[1];
  swift_unknownObjectWeakInit();
  sub_29D8809E8(&qword_2A17B2A28, sub_29D7062B4, MEMORY[0x29EDB89E8]);
  v24 = v29;
  v25 = sub_29D938588();

  (*(v30 + 8))(v19, v24);
  *(v23 + qword_2A17B6F38) = v25;
}

uint64_t sub_29D87F624()
{
}

uint64_t sub_29D87F67C()
{
}

uint64_t sub_29D87F7A0()
{
}

id sub_29D87F7F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D87F838(uint64_t a1)
{
}

id sub_29D87F88C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_29D744388(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = v18 - v8;
  *(v3 + qword_2A17B6F38) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x29EDBABF8]) initWithHealthStore_];
  type metadata accessor for BradycardiaFeatureStatusAvailability(0);
  swift_allocObject();
  *(v3 + qword_2A17B6F30) = sub_29D9320E4(v10);
  v11 = type metadata accessor for BradycardiaThresholdSpecifierConfiguration();
  swift_allocObject();

  v13 = sub_29D7428F0(v12);
  sub_29D6CBBE8();
  v14 = sub_29D934C58();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v9, a2, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  v18[4] = v11;
  v18[5] = sub_29D8809E8(&qword_2A17B6F88, type metadata accessor for BradycardiaThresholdSpecifierConfiguration, &unk_29D95094C);
  v18[1] = v13;

  v16 = sub_29D936E88();
  sub_29D87F14C();

  (*(v15 + 8))(a2, v14);
  return v16;
}

char *sub_29D87FB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = sub_29D934C58();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a2, v7);
  v12 = objc_allocWithZone(type metadata accessor for BradycardiaSettingsDataSource(0));
  v13 = sub_29D87F88C(a1, v11);
  v14 = qword_2A17B6F60;
  *(v4 + qword_2A17B6F60) = v13;
  v15 = v13;
  sub_29D936EB8();

  type metadata accessor for BradycardiaSettingsViewControllerDelegate();
  v16 = swift_allocObject();
  *(v16 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 80) = 0;
  swift_unknownObjectWeakInit();
  sub_29D679D3C(&v29, v16 + 16);
  *(v4 + qword_2A17B6F68) = v16;
  v17 = *(v4 + v14);
  sub_29D8809E8(&qword_2A17B6F80, type metadata accessor for BradycardiaSettingsViewControllerDelegate, &unk_29D950904);

  v18 = v17;
  v19 = sub_29D9365D8();
  sub_29D6CBB5C();
  v20 = sub_29D939D28();

  [v19 setTitle_];

  v21 = qword_2A17B6F68;
  v22 = *&v19[qword_2A17B6F68];
  v23 = *&v19[qword_2A17B6F60];

  v24 = v23;
  sub_29D936E98();
  v26 = v25;

  *(v22 + 64) = v26;
  swift_unknownObjectWeakAssign();

  sub_29D936978();
  *(*&v19[v21] + 80) = MEMORY[0x29EDC2810];
  swift_unknownObjectWeakAssign();
  sub_29D9365E8();

  (*(v8 + 8))(a2, v7);
  return v19;
}

uint64_t sub_29D87FDF4()
{
  v0 = objc_opt_self();
  if ([v0 isBradycardiaDetectionEnabled])
  {
    v1 = [v0 bradycardiaThresholdHeartRate];
    v2 = [objc_opt_self() _countPerMinuteUnit];
    v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

    [v3 _beatsPerMinute];
    v5 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
    v6 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D8EFDF0(v5, v6);

    v7 = sub_29D939D28();

    v8 = [v0 bradycardiaHeartThresholdFooterDescriptionWithThresholdValue_];

    v9 = sub_29D939D68();
  }

  else
  {
    v10 = sub_29D939D28();
    v8 = [v0 bradycardiaHeartThresholdFooterDescriptionWithThresholdValue_];

    v9 = sub_29D939D68();
  }

  return v9;
}

uint64_t sub_29D87FFC0()
{
  v0 = [objc_opt_self() bradycardiaHeartRateOptions];
  sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
  v1 = sub_29D939F38();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x29EDCA190];
  }

  v2 = sub_29D93A928();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v13 = MEMORY[0x29EDCA190];
  result = sub_29D93AAD8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = objc_opt_self();
    v6 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED6AE30](v6, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      [v7 doubleValue];
      v10 = v9;
      v11 = [v4 _countPerMinuteUnit];
      v12 = [v5 quantityWithUnit:v11 doubleValue:v10];

      sub_29D93AAB8();
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
    }

    while (v2 != v6);

    return v13;
  }

  return result;
}

uint64_t sub_29D8801B0(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_54;
  }

  v5 = v4;
  v6 = [v4 identifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_29D939D68();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_29D936918();
  v11 = sub_29D936908();
  if (v10)
  {
    if (v8 == v11 && v10 == v12)
    {

      goto LABEL_11;
    }

    v13 = sub_29D93AD78();

    if (v13)
    {
LABEL_11:
      sub_29D6945AC(v2 + 16, &aBlock);
      sub_29D693E2C(&aBlock, v57);
      sub_29D936818();
      sub_29D69417C(&aBlock);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        sub_29D9367B8();
        sub_29D936978();
      }

      return sub_29D936978();
    }
  }

  else
  {
  }

  v49[2] = a1;
  v14 = *(v2 + 40);
  v15 = sub_29D693E2C((v2 + 16), v14);
  v49[1] = v49;
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v15, v15);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18);
  v19 = sub_29D9367D8();
  (*(v16 + 8))(v18, v14);
  if (v19 >> 62)
  {
LABEL_49:
    v20 = sub_29D93A928();
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_50:

    return sub_29D936978();
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_50;
  }

LABEL_15:
  v21 = 0;
  v52 = v19 & 0xFFFFFFFFFFFFFF8;
  v53 = v19 & 0xC000000000000001;
  v50 = v20;
  v51 = v5;
  while (1)
  {
    if (v53)
    {
      v22 = MEMORY[0x29ED6AE30](v21, v19);
    }

    else
    {
      if (v21 >= *(v52 + 16))
      {
        goto LABEL_48;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v25 = [v5 identifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_29D939D68();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    sub_29D6945AC(v2 + 16, &aBlock);
    a1 = v57;
    sub_29D693E2C(&aBlock, v57);
    v30 = sub_29D9367E8();
    if (v29)
    {
      break;
    }

    sub_29D69417C(&aBlock);
LABEL_17:
    ++v21;
    v5 = v51;
    if (v24 == v50)
    {
      goto LABEL_50;
    }
  }

  if (v27 == v30 && v29 == v31)
  {

    sub_29D69417C(&aBlock);

    goto LABEL_34;
  }

  a1 = sub_29D93AD78();

  sub_29D69417C(&aBlock);
  if ((a1 & 1) == 0)
  {

    goto LABEL_17;
  }

LABEL_34:
  [v23 _beatsPerMinute];
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    sub_29D936978();
    aBlock = 0;
    v55 = 0xE000000000000000;
    sub_29D93AA18();

    aBlock = 0xD000000000000021;
    v55 = 0x800000029D96A580;
    v60 = a1;
    swift_unknownObjectRetain();
    v48 = sub_29D939DA8();
    MEMORY[0x29ED6A240](v48);

    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  v33 = v32;
  if ([objc_opt_self() bradycardiaWarningThreshold] > v32 || (v34 = *(v2 + 40), v35 = sub_29D693E2C((v2 + 16), v34), v36 = *(v34 - 8), MEMORY[0x2A1C7C4A8](v35, v35), v38 = v49 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), (*(v36 + 16))(v38), v39 = sub_29D9367F8(), (*(v36 + 8))(v38, v34), v39) && (sub_29D69567C(0, &qword_2A17B4700, 0x29EDBACF8), v40 = v23, v41 = sub_29D93A708(), v39, v40, (v41 & 1) != 0))
  {
    sub_29D6945AC(v2 + 16, &aBlock);
    sub_29D693E2C(&aBlock, v57);
    sub_29D936808();
    sub_29D69417C(&aBlock);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_29D9367B8();
      sub_29D936978();
    }
  }

  else
  {
    v42 = objc_opt_self();
    v43 = swift_allocObject();
    *(v43 + 16) = v2;
    *(v43 + 24) = v23;
    v58 = sub_29D8809C8;
    v59 = v43;
    aBlock = MEMORY[0x29EDCA5F8];
    v55 = 1107296256;
    v56 = sub_29D87F040;
    v57 = &unk_2A244AA30;
    v44 = _Block_copy(&aBlock);
    v23 = v23;

    v45 = [v42 hkhr:v33 bradycardiaConfirmationControllerWithValue:v44 confirmHandler:0 cancelHandler:?];
    _Block_release(v44);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v46 = sub_29D936F08();
      sub_29D936978();
      [v46 presentViewController:v45 animated:1 completion:0];
    }
  }

  return sub_29D936978();
}

uint64_t sub_29D8809D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8809E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D880A30@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D937B88();
  v3 = MEMORY[0x29EDC7800];
  a1[3] = v2;
  a1[4] = v3;
  sub_29D693F78(a1);
  sub_29D937B38();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B48();
  v4 = [objc_opt_self() hk_appTintColor];
  v5 = sub_29D937A98();
  sub_29D937A68();
  return v5(v7, 0);
}

uint64_t sub_29D880B6C(uint64_t a1)
{
  v2 = sub_29D880EA0();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D880BB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_29D93AD78();
  }
}

uint64_t sub_29D880BE8()
{
  sub_29D93AE58();
  sub_29D939E18();
  return sub_29D93AE98();
}

uint64_t sub_29D880C3C(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();
  return sub_29D93AE98();
}

id sub_29D880C84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v10 = v2[4];
  a2[3] = a1;
  a2[4] = sub_29D880F50();
  v8 = swift_allocObject();
  *a2 = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v7;
  v8[5] = v6;
  v8[6] = v10;
  sub_29D935E88();
  sub_29D935E88();

  return v10;
}

uint64_t sub_29D880D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = type metadata accessor for AFibBurdenPDFProvider();
  v4 = swift_allocObject();
  v4[2] = v2;
  v5 = sub_29D935EC8();
  v6 = v2;
  v7 = sub_29D935E98();
  v8 = MEMORY[0x29EDC24D0];
  v4[6] = v5;
  v4[7] = v8;
  v4[3] = v7;
  v9 = HKHRAFibBurdenLogForCategory();
  v10 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v9 healthDataSource:v6];

  v4[8] = v10;
  v12[3] = v3;
  v12[4] = sub_29D8812E0(&qword_2A17B6FA8, type metadata accessor for AFibBurdenPDFProvider, &unk_29D946048);
  v12[0] = v4;
  sub_29D93A398();
  return sub_29D69417C(v12);
}

unint64_t sub_29D880EA0()
{
  result = qword_2A17B6F90;
  if (!qword_2A17B6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F90);
  }

  return result;
}

unint64_t sub_29D880EFC()
{
  result = qword_2A17B6F98;
  if (!qword_2A17B6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6F98);
  }

  return result;
}

unint64_t sub_29D880F50()
{
  result = qword_2A17B6FA0;
  if (!qword_2A17B6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FA0);
  }

  return result;
}

uint64_t sub_29D880FA4(void *a1)
{
  v3 = sub_29D939968();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D939998();
  v8 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6FC794();
  v12 = sub_29D93A468();
  v13 = *v1;
  v25 = v1[1];
  v26 = v13;
  v14 = *(v1 + 4);
  v15 = swift_allocObject();
  v16 = v1[1];
  *(v15 + 24) = *v1;
  *(v15 + 16) = a1;
  *(v15 + 40) = v16;
  *(v15 + 56) = *(v1 + 4);
  aBlock[4] = sub_29D8812BC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244AAD0;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  sub_29D738808(&v26, v23);
  sub_29D738808(&v25, v23);
  v19 = v14;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D8812E0(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D8812E0(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v11, v7, v17);
  _Block_release(v17);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v22);
}

uint64_t sub_29D8812C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8812E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D8813F0(void *a1)
{
  v2 = [a1 healthDataSource];
  if (v2)
  {
    v3 = v2;
    v4 = sub_29D73F010(MEMORY[0x29EDCA190]);
    v5 = sub_29D8818C8();
    v6 = MEMORY[0x29EDC99B0];
    v37 = MEMORY[0x29EDC99B0];
    *&v36 = v5;
    *(&v36 + 1) = v7;
    sub_29D6940E0(&v36, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v4;
    sub_29D69242C(v35, 0xD00000000000001BLL, 0x800000029D96A7B0, isUniquelyReferenced_nonNull_native);
    v9 = v38;
    v10 = sub_29D8819E4();
    v37 = v6;
    *&v36 = v10;
    *(&v36 + 1) = v11;
    sub_29D6940E0(&v36, v35);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v35, 0xD000000000000010, 0x800000029D96A7D0, v12);
    v38 = v9;
    v13 = HKHRAFibBurdenDetermineIsFocusModeOn();
    if (v13)
    {
      v14 = v13;
      v37 = sub_29D6B73CC();
      *&v36 = v14;
      sub_29D6940E0(&v36, v35);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C(v35, 0x4D7375636F467369, 0xED00006E4F65646FLL, v15);
      v38 = v9;
    }

    else
    {
      sub_29D8C42F8(0x4D7375636F467369, 0xED00006E4F65646FLL, &v36);
      sub_29D6FE6B0(&v36);
    }

    v16 = sub_29D939D68();
    v18 = v17;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v19 = sub_29D937898();
    v20 = sub_29D69C6C0(v19, qword_2A1A2BF28);
    type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent();
    v21 = sub_29D93A308();
    v37 = v6;
    *&v36 = v21;
    *(&v36 + 1) = v22;
    sub_29D6940E0(&v36, v35);
    v23 = v38;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v35, v16, v18, v24);

    v38 = v23;
    v25 = sub_29D939D68();
    v27 = v26;
    v28 = [a1 environmentDataSource];
    v29 = sub_29D8A3AD8(v3, v28, v20);

    v37 = sub_29D6B73CC();
    *&v36 = v29;
    sub_29D6940E0(&v36, v35);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v35, v25, v27, v30);

    v38 = v23;
    v31 = sub_29D7DB5A8(v3, *MEMORY[0x29EDBA6B0], 0, v20);
    if (v32)
    {
      v37 = v6;
      *&v36 = v31;
      *(&v36 + 1) = v32;
      sub_29D6940E0(&v36, v35);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C(v35, 0x5665727574616566, 0xEE006E6F69737265, v33);
      sub_29D936978();
      return v23;
    }

    else
    {
      sub_29D8C42F8(0x5665727574616566, 0xEE006E6F69737265, &v36);
      sub_29D936978();
      sub_29D6FE6B0(&v36);
      return v38;
    }
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8818C8()
{
  v1 = 0x7461642077656976;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (sub_29D939D68() == v2 && v4 == v3)
  {
    goto LABEL_12;
  }

  v6 = sub_29D93AD78();

  if (v6)
  {
    return v1;
  }

  v1 = 0x7373696D736964;
  if (sub_29D939D68() == v2 && v7 == v3)
  {
LABEL_12:

    return v1;
  }

  v9 = sub_29D93AD78();

  if ((v9 & 1) == 0)
  {
    return sub_29D939D68();
  }

  return v1;
}

uint64_t sub_29D8819E4()
{
  v1 = *(v0 + 16);
  v2 = [v1 content];
  v3 = [v2 categoryIdentifier];

  v4 = sub_29D939D68();
  v6 = v5;

  if (sub_29D939D68() == v4 && v7 == v6)
  {

LABEL_8:

    v10 = [v1 content];
    v11 = [v10 userInfo];

    v12 = sub_29D939C68();
    *&v19[0] = 0xD000000000000012;
    *(&v19[0] + 1) = 0x800000029D96A6F0;
    sub_29D93A9A8();
    if (*(v12 + 16) && (v13 = sub_29D6908F8(v20), (v14 & 1) != 0))
    {
      sub_29D694294(*(v12 + 56) + 32 * v13, v19);
      sub_29D69466C(v20);

      sub_29D6FE6B0(v19);
      return 0xD000000000000021;
    }

    else
    {

      sub_29D69466C(v20);
      memset(v19, 0, sizeof(v19));
      sub_29D6FE6B0(v19);
      return 0xD000000000000024;
    }
  }

  v9 = sub_29D93AD78();

  if (v9)
  {
    goto LABEL_8;
  }

  if (sub_29D939D68() == v4 && v16 == v6)
  {
  }

  else
  {
    v18 = sub_29D93AD78();

    if ((v18 & 1) == 0)
    {
      return sub_29D939D68();
    }
  }

  return 0xD000000000000010;
}

uint64_t sub_29D881C74()
{

  sub_29D69417C((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t PromotionAvailabilityState.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x6E6564646968;
}

uint64_t sub_29D881D54(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E6564646968;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x800000029D9572F0;
  if (v3 == 1)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x6E6564646968;
  }

  if (v3 == 1)
  {
    v4 = 0x800000029D9572F0;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0x800000029D9572D0;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0x800000029D9572D0;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29D93AD78();
  }

  return v11 & 1;
}

uint64_t sub_29D881E2C()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D881ED8(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D881F70(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D882018@<X0>(Swift::String *a1@<X0>, Heart::PromotionAvailabilityState_optional *a2@<X8>)
{
  result = _s5Heart26PromotionAvailabilityStateO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_29D882048(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6564646968;
  if (v2 == 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x800000029D9572F0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v5)
  {
    v3 = 0x800000029D9572D0;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_29D88217C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000029D96AA00 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_29D882210(uint64_t a1)
{
  v2 = sub_29D88682C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D88224C(uint64_t a1)
{
  v2 = sub_29D88682C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t PromotionUserData.encode(to:)(void *a1, char a2)
{
  sub_29D8875CC(0, &qword_2A17B6FB0, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v11[-v8];
  sub_29D693E2C(a1, a1[3]);
  sub_29D88682C();
  sub_29D93AED8();
  v11[15] = a2;
  sub_29D886880();
  sub_29D93AD18();
  return (*(v6 + 8))(v9, v5);
}

void *sub_29D8823F8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_29D8868D4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_29D882494(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  return v3;
}

uint64_t sub_29D882514(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  return v3;
}

uint64_t sub_29D8825BC(uint64_t a1, uint64_t a2)
{
  sub_29D887064(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_29D934648();
}

id sub_29D882658()
{
  [*&v0[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_heartRhythmAvailability] removeHeartRhythmAvailabilityObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartPromotionAvailability(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8828C8()
{
  ObjectType = swift_getObjectType();
  sub_29D693E2C((v0 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_irregularRhythmNotificationsStatusManager), *(v0 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_irregularRhythmNotificationsStatusManager + 24));
  sub_29D937258();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = ObjectType;
  sub_29D6B7D8C(0);
  sub_29D887518(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D938588();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

void *sub_29D882A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v28 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v14 = sub_29D937898();
    sub_29D69C6C0(v14, qword_2A1A2C008);
    v15 = sub_29D937878();
    v16 = sub_29D93A2A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136446210;
      v19 = sub_29D93AF08();
      v21 = sub_29D6C2364(v19, v20, &v28);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s]: Received IRN feature status update", v17, 0xCu);
      sub_29D69417C(v18);
      MEMORY[0x29ED6BE30](v18, -1, -1);
      MEMORY[0x29ED6BE30](v17, -1, -1);
    }

    v22 = sub_29D9371A8();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v11, a1, v22);
    (*(v23 + 56))(v11, 0, 1, v22);
    sub_29D887064(0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D6E8508(v11, v8);
    v28 = v13;
    v24 = v13;
    sub_29D934658();
    sub_29D8870E8(v11, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    v25 = sub_29D884360(0);
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v28) = v25;
    v26 = v24;
    sub_29D9383D8();
    sub_29D883BDC();
    sub_29D883868();
    v27 = sub_29D884360(2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v28) = v27;
    return sub_29D9383D8();
  }

  return result;
}

uint64_t sub_29D882DD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_hypertensionNotificationsFeatureStatusManager;
  swift_beginAccess();
  sub_29D7C0420(v1 + v3, v14);
  v4 = v15;
  if (!v15)
  {
    return sub_29D7C0518(v14);
  }

  v5 = sub_29D693E2C(v14, v15);
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v5, v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  sub_29D7C0518(v14);
  v9 = sub_29D937258();
  (*(v6 + 8))(v8, v4);
  v13[1] = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = ObjectType;
  sub_29D6B7D8C(0);
  sub_29D887518(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D938588();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

void sub_29D883020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v25 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v14 = sub_29D937898();
    sub_29D69C6C0(v14, qword_2A1A2C008);
    v15 = sub_29D937878();
    v16 = sub_29D93A2A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446210;
      v19 = sub_29D93AF08();
      v21 = sub_29D6C2364(v19, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s]: Hypertension Notifications promotion status did update", v17, 0xCu);
      sub_29D69417C(v18);
      MEMORY[0x29ED6BE30](v18, -1, -1);
      MEMORY[0x29ED6BE30](v17, -1, -1);
    }

    v22 = sub_29D9371A8();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v11, a1, v22);
    (*(v23 + 56))(v11, 0, 1, v22);
    sub_29D887064(0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D6E8508(v11, v8);
    v25 = v13;
    v24 = v13;
    sub_29D934658();
    sub_29D8870E8(v11, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    sub_29D883BDC();
  }
}

uint64_t sub_29D883338()
{
  ObjectType = swift_getObjectType();
  sub_29D7C0420(v0 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_aFibBurdenFeatureStatusManager, v5);
  if (!v6)
  {
    return sub_29D7C0518(v5);
  }

  sub_29D693E2C(v5, v6);
  sub_29D937258();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = ObjectType;
  sub_29D6B7D8C(0);
  sub_29D887518(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D938588();

  sub_29D69417C(v5);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

void *sub_29D8834C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v20 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v15, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a3;
    v20 = 0;
    sub_29D9371C8();

    v16 = sub_29D9371A8();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v12, a1, v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    sub_29D887064(0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D6E8508(v12, v9);
    v20 = v14;
    v18 = v14;
    sub_29D934658();
    sub_29D8870E8(v12, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    sub_29D883868();
    v19 = sub_29D884360(2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v20) = v19;
    v18;
    sub_29D9383D8();
    LOWORD(v16) = sub_29D884360(0);
    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v20) = v16;
    return sub_29D9383D8();
  }

  return result;
}

uint64_t sub_29D8837D4(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D96AB20);
  return 91;
}

uint64_t sub_29D883868()
{
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v17 - v3;
  v5 = sub_29D9371A8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D887064(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v19[0] = v0;
  v10 = v0;
  sub_29D934648();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_29D8870E8(v4, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  }

  (*(v6 + 32))(v9, v4, v5);
  sub_29D7C0420(v10 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_aFibBurdenFeatureStatusManager, &v17);
  if (v18)
  {
    sub_29D6959E8(&v17, v19);
    sub_29D693E2C(v19, v19[3]);
    v12 = sub_29D937248();
    v13 = sub_29D883EC8(v9, 1, v12, 1);

    if (sub_29D884360(2) > 1u)
    {
      v15 = HIWORD(v13);
    }

    else
    {
      v14 = sub_29D93AD78();

      if (v14)
      {
        LOBYTE(v15) = BYTE2(v13);
      }

      else
      {
        LOBYTE(v15) = 2;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOWORD(v17) = v13;
    BYTE2(v17) = v15;
    BYTE3(v17) = HIBYTE(v13);
    v16 = v10;
    sub_29D9383D8();
    (*(v6 + 8))(v9, v5);
    return sub_29D69417C(v19);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return sub_29D7C0518(&v17);
  }
}

uint64_t sub_29D883BDC()
{
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v16 - v3;
  v5 = sub_29D9371A8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D887064(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v19[0] = v0;
  v10 = v0;
  sub_29D934648();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_29D8870E8(v4, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  }

  (*(v6 + 32))(v9, v4, v5);
  v12 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_hypertensionNotificationsFeatureStatusManager;
  swift_beginAccess();
  sub_29D7C0420(v10 + v12, &v17);
  if (v18)
  {
    sub_29D6959E8(&v17, v19);
    sub_29D693E2C(v19, v19[3]);
    v13 = sub_29D937248();
    v14 = sub_29D883EC8(v9, 1, v13, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    LODWORD(v17) = v14;
    v15 = v10;
    sub_29D9383D8();
    (*(v6 + 8))(v9, v5);
    return sub_29D69417C(v19);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return sub_29D7C0518(&v17);
  }
}

uint64_t sub_29D883EC8(uint64_t a1, int a2, void *a3, char a4)
{
  v5 = v4;
  v9 = sub_29D9371B8();
  v10 = [v9 areAllRequirementsSatisfied];

  v50 = a3;
  if (a4)
  {
    v11 = sub_29D937198();
    v12 = v10 | v11;
    if (!v10 || (v11 & 1) != 0)
    {
      goto LABEL_11;
    }

    if (a2)
    {
LABEL_5:
      v12 = 0;
      v13 = a2 << 24;
      v14 = sub_29D885180(a3) << 16;
      goto LABEL_16;
    }
  }

  else
  {
    if (a2)
    {
      v15 = v10;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      goto LABEL_5;
    }
  }

  v12 = 0;
LABEL_11:
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v16 = sub_29D937898();
  sub_29D69C6C0(v16, qword_2A1A2C008);
  v17 = v5;
  v18 = a3;
  v19 = sub_29D937878();
  v20 = sub_29D93A2A8();

  if (os_log_type_enabled(v19, v20))
  {
    v49 = v12;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v51 = v22;
    *v21 = 136446722;
    swift_getObjectType();
    sub_29D88701C();
    v23 = sub_29D939DA8();
    v25 = sub_29D6C2364(v23, v24, &v51);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_29D6C2364(0xD000000000000063, 0x800000029D96AAB0, &v51);
    *(v21 + 22) = 2082;
    v26 = sub_29D93A518();
    v28 = sub_29D6C2364(v26, v27, &v51);

    *(v21 + 24) = v28;
    _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s.%{public}s] %{public}s discover promotion should be hidden.", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v22, -1, -1);
    v29 = v21;
    v12 = v49;
    MEMORY[0x29ED6BE30](v29, -1, -1);
  }

  v13 = 0;
  v14 = 0x20000;
LABEL_16:
  v30 = sub_29D9371B8();
  v31 = [v30 areAllRequirementsSatisfied];

  if (v31 && (v12 & 1) == 0 && a2)
  {
    v32 = sub_29D885180(v50);
    v33 = a2 << 8;
    v34 = v32;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v35 = sub_29D937898();
    sub_29D69C6C0(v35, qword_2A1A2C008);
    v36 = v5;
    v37 = v50;
    v38 = sub_29D937878();
    v39 = sub_29D93A2A8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v40 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v42 = sub_29D939DA8();
      v44 = sub_29D6C2364(v42, v43, &v51);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_29D6C2364(0xD000000000000063, 0x800000029D96AAB0, &v51);
      *(v40 + 22) = 2082;
      v45 = sub_29D93A518();
      v47 = sub_29D6C2364(v45, v46, &v51);

      *(v40 + 24) = v47;
      _os_log_impl(&dword_29D677000, v38, v39, "[%{public}s.%{public}s] %{public}s non-discover promotion should be hidden.", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v41, -1, -1);
      MEMORY[0x29ED6BE30](v40, -1, -1);
    }

    v33 = 0;
    v34 = 2;
  }

  return v13 | v14 | v34 | v33;
}

uint64_t sub_29D884360(uint64_t a1)
{
  if (sub_29D8848C4(a1))
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = sub_29D887144(a1) & 1;
  }

  v4 = sub_29D8848C4(a1);
  v5 = sub_29D884C94(a1);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v6 = sub_29D937898();
  sub_29D69C6C0(v6, qword_2A1A2C008);
  v7 = v1;
  v8 = sub_29D937878();
  v9 = sub_29D93A2A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v4;
    v11 = 0xD000000000000012;
    v12 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v12 = 136447746;
    v43 = v7;
    swift_getObjectType();
    sub_29D88701C();
    v13 = sub_29D939DA8();
    v15 = sub_29D6C2364(v13, v14, &v44);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D96AA90, &v44);
    *(v12 + 22) = 2082;
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0x6472754262694661;
      }

      else
      {
        v11 = 0x7461654662694661;
      }

      if (a1 == 1)
      {
        v16 = 0xEA00000000006E65;
      }

      else
      {
        v16 = 0xEC00000073657275;
      }
    }

    else
    {
      v16 = 0x800000029D96AA70;
    }

    v17 = sub_29D6C2364(v11, v16, &v44);

    *(v12 + 24) = v17;
    *(v12 + 32) = 2082;
    v18 = sub_29D939DA8();
    v20 = sub_29D6C2364(v18, v19, &v44);

    *(v12 + 34) = v20;
    *(v12 + 42) = 2082;
    if (v10)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v10)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = sub_29D6C2364(v21, v22, &v44);

    *(v12 + 44) = v23;
    *(v12 + 52) = 2082;
    v24 = sub_29D6C2364(0x65736C6166, 0xE500000000000000, &v44);

    *(v12 + 54) = v24;
    *(v12 + 62) = 2082;
    if (v5)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v5)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_29D6C2364(v25, v26, &v44);
    v4 = v10;

    *(v12 + 64) = v27;
    _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s.%{public}s] promotion: %{public}s (shouldAdvertisePromotionType: %{public}s, isOnboardingCompleted: %{public}s, isRescinded: %{public}s, isExcluded: %{public}s)", v12, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v42, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);

    v7 = v43;
  }

  else
  {
  }

  if ((v3 == 0) | (v4 | v5) & 1)
  {
    v28 = v7;
    v29 = sub_29D937878();
    v30 = sub_29D93A2A8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v3;
      v32 = 0xD000000000000012;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v35 = sub_29D939DA8();
      v37 = sub_29D6C2364(v35, v36, &v44);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D96AA90, &v44);
      *(v33 + 22) = 2082;
      if (a1)
      {
        if (a1 == 1)
        {
          v32 = 0x6472754262694661;
        }

        else
        {
          v32 = 0x7461654662694661;
        }

        if (a1 == 1)
        {
          v38 = 0xEA00000000006E65;
        }

        else
        {
          v38 = 0xEC00000073657275;
        }
      }

      else
      {
        v38 = 0x800000029D96AA70;
      }

      LODWORD(v3) = v31;
      v40 = sub_29D6C2364(v32, v38, &v44);

      *(v33 + 24) = v40;
      _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s.%{public}s] %{public}s promotion should be hidden.", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v34, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);
    }

    v39 = 2;
  }

  else
  {
    v39 = sub_29D884D48(a1);
  }

  return v39 | (v3 << 8);
}

uint64_t sub_29D8848DC(char a1, uint64_t (*a2)(uint64_t))
{
  v26 = a2;
  v4 = sub_29D9371A8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v26 - v15;
  if (!a1)
  {
    sub_29D887064(0);
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v2;
    v20 = v2;
    sub_29D934648();

    if ((*(v5 + 48))(v16, 1, v4))
    {
      v18 = MEMORY[0x29EDC2D78];
      v19 = v16;
      goto LABEL_7;
    }

    (*(v5 + 16))(v8, v16, v4);
    v24 = MEMORY[0x29EDC2D78];
    v25 = v16;
LABEL_14:
    sub_29D8870E8(v25, &unk_2A1A24700, v24);
    v21 = sub_29D937198();
    (*(v5 + 8))(v8, v4);
    return v21 & 1;
  }

  if (a1 == 1)
  {
    sub_29D887064(0);
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v2;
    v17 = v2;
    sub_29D934648();

    if ((*(v5 + 48))(v13, 1, v4))
    {
      v18 = MEMORY[0x29EDC2D78];
      v19 = v13;
LABEL_7:
      sub_29D8870E8(v19, &unk_2A1A24700, v18);
      v21 = 1;
      return v21 & 1;
    }

    (*(v5 + 16))(v8, v13, v4);
    v24 = MEMORY[0x29EDC2D78];
    v25 = v13;
    goto LABEL_14;
  }

  v21 = 1;
  if (v26(1))
  {
    return v21 & 1;
  }

  v22 = v26;

  return v22(0);
}

uint64_t sub_29D884C94(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    v2 = 0;
  }

  else if (sub_29D884360(2) > 1u)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_29D93AD78();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_29D884D48(char a1)
{
  if (sub_29D885510())
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = v1;
    v5 = sub_29D937878();
    v6 = sub_29D93A2A8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = 0xD000000000000012;
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28 = v9;
      *v8 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v10 = sub_29D939DA8();
      v12 = sub_29D6C2364(v10, v11, &v28);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D96AA50, &v28);
      *(v8 + 22) = 2082;
      if (a1)
      {
        if (a1 == 1)
        {
          v7 = 0x6472754262694661;
        }

        else
        {
          v7 = 0x7461654662694661;
        }

        if (a1 == 1)
        {
          v13 = 0xEA00000000006E65;
        }

        else
        {
          v13 = 0xEC00000073657275;
        }
      }

      else
      {
        v13 = 0x800000029D96AA70;
      }

      v25 = sub_29D6C2364(v7, v13, &v28);

      *(v8 + 24) = v25;
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s.%{public}s] Age set. Showing %{public}s promotion with high priority.", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v14 = sub_29D937898();
    sub_29D69C6C0(v14, qword_2A1A2C008);
    v15 = v1;
    v16 = sub_29D937878();
    v17 = sub_29D93A2A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = 0xD000000000000012;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v21 = sub_29D939DA8();
      v23 = sub_29D6C2364(v21, v22, &v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D96AA50, &v28);
      *(v19 + 22) = 2082;
      if (a1)
      {
        if (a1 == 1)
        {
          v18 = 0x6472754262694661;
        }

        else
        {
          v18 = 0x7461654662694661;
        }

        if (a1 == 1)
        {
          v24 = 0xEA00000000006E65;
        }

        else
        {
          v24 = 0xEC00000073657275;
        }
      }

      else
      {
        v24 = 0x800000029D96AA70;
      }

      v27 = sub_29D6C2364(v18, v24, &v28);

      *(v19 + 24) = v27;
      _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s.%{public}s] Age not set. Showing %{public}s promotion with low priority.", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v20, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    return 1;
  }
}

uint64_t sub_29D885180(void *a1)
{
  if (sub_29D885510())
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = v1;
    v5 = a1;
    v6 = sub_29D937878();
    v7 = sub_29D93A2A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v10 = sub_29D939DA8();
      v12 = sub_29D6C2364(v10, v11, &v30);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_29D6C2364(0xD000000000000028, 0x800000029D96AA20, &v30);
      *(v8 + 22) = 2082;
      v13 = sub_29D93A518();
      v15 = sub_29D6C2364(v13, v14, &v30);

      *(v8 + 24) = v15;
      _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s] Age set. Showing %{public}s promotion with high priority.", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2C008);
    v18 = v1;
    v19 = a1;
    v20 = sub_29D937878();
    v21 = sub_29D93A2A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446722;
      swift_getObjectType();
      sub_29D88701C();
      v24 = sub_29D939DA8();
      v26 = sub_29D6C2364(v24, v25, &v30);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_29D6C2364(0xD000000000000028, 0x800000029D96AA20, &v30);
      *(v22 + 22) = 2082;
      v27 = sub_29D93A518();
      v29 = sub_29D6C2364(v27, v28, &v30);

      *(v22 + 24) = v29;
      _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s.%{public}s] Age not set. Showing %{public}s promotion with low priority.", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);
    }

    return 1;
  }
}

BOOL sub_29D885510()
{
  v15[1] = *MEMORY[0x29EDCA608];
  sub_29D886FC8(0, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = v15 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_healthStore);
  v15[0] = 0;
  v6 = [v5 dateOfBirthComponentsWithError_];
  v7 = v15[0];
  if (v6)
  {
    sub_29D933298();
    v8 = v7;

    v9 = 0;
  }

  else
  {
    v10 = v15[0];
    v11 = sub_29D933598();

    swift_willThrow();
    v9 = 1;
  }

  v12 = sub_29D933318();
  (*(*(v12 - 8) + 56))(v4, v9, 1, v12);
  sub_29D8870E8(v4, &qword_2A17B2D20, MEMORY[0x29EDB9950]);
  return v6 != 0;
}

uint64_t sub_29D8856E8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s]: Heart rhythm availability did update", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  v10 = sub_29D884360(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v10;
  v11 = v1;
  sub_29D9383D8();
  sub_29D883BDC();
  sub_29D883868();
  v12 = sub_29D884360(2);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v12;
  v13 = v11;
  return sub_29D9383D8();
}

uint64_t sub_29D88592C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_hypertensionNotificationsFeatureStatusManager;
  swift_beginAccess();
  sub_29D7C0420(v3 + v4, v9);
  if (v9[3])
  {
    sub_29D6945AC(v9, v8);
    sub_29D7C0518(v9);
    sub_29D693E2C(v8, v8[3]);
    sub_29D937238();
    v5 = sub_29D9371A8();
    (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
    return sub_29D69417C(v8);
  }

  else
  {
    sub_29D7C0518(v9);
    v7 = sub_29D9371A8();
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

uint64_t sub_29D885C2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D693E2C((*a1 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_irregularRhythmNotificationsStatusManager), *(*a1 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_irregularRhythmNotificationsStatusManager + 24));
  sub_29D937238();
  v3 = sub_29D9371A8();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_29D885EF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D7C0420(*a1 + OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_aFibBurdenFeatureStatusManager, v6);
  if (v7)
  {
    sub_29D693E2C(v6, v7);
    sub_29D937238();
    v4 = sub_29D9371A8();
    (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
    return sub_29D69417C(v6);
  }

  else
  {
    sub_29D7C0518(v6);
    v3 = sub_29D9371A8();
    return (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  }
}

uint64_t sub_29D8860CC(uint64_t a1, void *a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  swift_getObjectType();
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD00000000000003CLL, 0x800000029D95D3F0);
  v4 = a2;
  sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

uint64_t sub_29D8861B8@<X0>(_DWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  *a4 = v6;
  return result;
}

uint64_t sub_29D886234(int *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_29D9383D8();
}

uint64_t sub_29D8862A4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = MEMORY[0x29EDC2D78];
  sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v20 - v15;
  sub_29D6E8508(a1, v20 - v15);
  v17 = *a2;
  sub_29D887064(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D6E8508(v16, v13);
  v20[1] = v17;
  v18 = v17;
  sub_29D934658();
  return sub_29D8870E8(v16, &unk_2A1A24700, v8);
}

uint64_t sub_29D8863E8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  sub_29D887064(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_29D934648();
}

BOOL sub_29D886488(unsigned __int16 a1, unsigned __int16 a2)
{
  v3 = 0x6E6564646968;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x6E6564646968;
    }

    if (v4 == 1)
    {
      v6 = 0x800000029D9572F0;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0x800000029D9572D0;
    v5 = 0xD000000000000015;
  }

  v7 = a2;
  v8 = a1;
  v9 = 0xE600000000000000;
  if (a2 == 1)
  {
    v3 = 0xD000000000000014;
    v9 = 0x800000029D9572F0;
  }

  if (a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xD000000000000015;
  }

  if (a2)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x800000029D9572D0;
  }

  if (v5 == v10 && v6 == v11)
  {
  }

  else
  {
    v12 = sub_29D93AD78();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  return (v7 ^ v8) < 0x100;
}

uint64_t sub_29D8865A0(unsigned int a1, unsigned int a2)
{
  v4 = 0x6E6564646968;
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x6E6564646968;
    }

    if (v5 == 1)
    {
      v7 = 0x800000029D9572F0;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    v8 = a2;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_16:
    v10 = 0x800000029D9572D0;
    v9 = 0xD000000000000015;
    goto LABEL_17;
  }

  v7 = 0x800000029D9572D0;
  v6 = 0xD000000000000015;
  v8 = a2;
  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (v8 == 1)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v9 = 0x6E6564646968;
  }

  if (v8 == 1)
  {
    v10 = 0x800000029D9572F0;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

LABEL_17:
  v11 = a2 >> 8;
  if (v6 == v9 && v7 == v10)
  {

    if (v11 != BYTE1(a1))
    {
      return 0;
    }

LABEL_23:
    if (BYTE2(a1))
    {
      if (BYTE2(a1) == 1)
      {
        v14 = 0x800000029D9572F0;
        v15 = 0xD000000000000014;
        v16 = BYTE2(a2);
        if (!BYTE2(a2))
        {
          goto LABEL_31;
        }

LABEL_28:
        if (v16 == 1)
        {
          v17 = 0x800000029D9572F0;
          v4 = 0xD000000000000014;
        }

        else
        {
          v17 = 0xE600000000000000;
        }

        goto LABEL_33;
      }

      v14 = 0xE600000000000000;
      v15 = 0x6E6564646968;
      v16 = BYTE2(a2);
      if (BYTE2(a2))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = 0x800000029D9572D0;
      v15 = 0xD000000000000015;
      v16 = BYTE2(a2);
      if (BYTE2(a2))
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    v17 = 0x800000029D9572D0;
    v4 = 0xD000000000000015;
LABEL_33:
    v18 = HIBYTE(a1);
    v19 = HIBYTE(a2);
    if (v15 == v4 && v14 == v17)
    {

      goto LABEL_37;
    }

    v20 = sub_29D93AD78();

    if (v20)
    {
LABEL_37:
      if (v18 == v19)
      {
        return 1;
      }
    }

    return 0;
  }

  v12 = sub_29D93AD78();

  result = 0;
  if ((v12 & 1) != 0 && v11 == BYTE1(a1))
  {
    goto LABEL_23;
  }

  return result;
}

unint64_t _s5Heart26PromotionAvailabilityStateO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29D88682C()
{
  result = qword_2A17B6FB8;
  if (!qword_2A17B6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FB8);
  }

  return result;
}

unint64_t sub_29D886880()
{
  result = qword_2A17B6FC0;
  if (!qword_2A17B6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FC0);
  }

  return result;
}

void *sub_29D8868D4(void *a1)
{
  sub_29D8875CC(0, &qword_2A17B6FF0, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v11[-v7];
  v9 = sub_29D693E2C(a1, a1[3]);
  sub_29D88682C();
  sub_29D93AEC8();
  if (!v1)
  {
    sub_29D887630();
    sub_29D93AC88();
    (*(v5 + 8))(v8, v4);
    v9 = v11[15];
  }

  sub_29D69417C(a1);
  return v9;
}

unint64_t sub_29D886A70()
{
  result = qword_2A17B6FC8;
  if (!qword_2A17B6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FC8);
  }

  return result;
}

uint64_t type metadata accessor for HeartPromotionAvailability(uint64_t a1)
{
  result = qword_2A1A24408;
  if (!qword_2A1A24408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D886B38(uint64_t a1)
{
  sub_29D886C68(319, &qword_2A1A222A8, &type metadata for HeartPromotionResult);
  if (v1 <= 0x3F)
  {
    sub_29D886C68(319, &qword_2A1A222A0, &type metadata for HeartFeaturePromotionResult);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D886C68(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29D9383E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for HeartFeaturePromotionResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[4])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeartFeaturePromotionResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartPromotionResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for HeartPromotionResult(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D886EBC()
{
  result = qword_2A17B6FD0;
  if (!qword_2A17B6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FD0);
  }

  return result;
}

unint64_t sub_29D886F14()
{
  result = qword_2A17B6FD8;
  if (!qword_2A17B6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FD8);
  }

  return result;
}

unint64_t sub_29D886F6C()
{
  result = qword_2A17B6FE0;
  if (!qword_2A17B6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FE0);
  }

  return result;
}

void sub_29D886FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D88701C()
{
  result = qword_2A1A25710;
  if (!qword_2A1A25710)
  {
    type metadata accessor for HeartPromotionAvailability(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A25710);
  }

  return result;
}

void sub_29D887064(uint64_t a1)
{
  if (!qword_2A1A24730)
  {
    type metadata accessor for HeartPromotionAvailability(255);
    sub_29D886FC8(255, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    v1 = sub_29D934668();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24730);
    }
  }
}

uint64_t sub_29D8870E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D886FC8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_29D887144(char a1)
{
  while (1)
  {
    v2 = a1;
    v3 = sub_29D9371A8();
    v4 = *(v3 - 8);
    MEMORY[0x2A1C7C4A8](v3, v5);
    v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_29D886FC8(0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
    v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x2A1C7C4A8](v10, v13);
    v15 = &v26 - v14;
    if (!v2)
    {
      break;
    }

    if (v2 == 1)
    {
      sub_29D887064(0);
      swift_getKeyPath();
      swift_getKeyPath();
      v27 = v1;
      v16 = v1;
      sub_29D934648();

      if ((*(v4 + 48))(v12, 1, v3))
      {
        v17 = MEMORY[0x29EDC2D78];
        v18 = v12;
LABEL_7:
        sub_29D8870E8(v18, &unk_2A1A24700, v17);
        return 0;
      }

      (*(v4 + 16))(v7, v12, v3);
      v22 = MEMORY[0x29EDC2D78];
      v23 = v12;
      goto LABEL_14;
    }

    v21 = sub_29D887144(0);
    result = 0;
    if ((v21 & 1) == 0)
    {
      return result;
    }

    a1 = 1;
    v1 = v28;
  }

  sub_29D887064(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v1;
  v19 = v1;
  sub_29D934648();

  if ((*(v4 + 48))(v15, 1, v3))
  {
    v17 = MEMORY[0x29EDC2D78];
    v18 = v15;
    goto LABEL_7;
  }

  (*(v4 + 16))(v7, v15, v3);
  v22 = MEMORY[0x29EDC2D78];
  v23 = v15;
LABEL_14:
  sub_29D8870E8(v23, &unk_2A1A24700, v22);
  v24 = sub_29D9371B8();
  (*(v4 + 8))(v7, v3);
  v25 = [v24 areAllRequirementsSatisfied];

  return v25;
}

uint64_t sub_29D887518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D887578()
{
  result = qword_2A17B6FE8;
  if (!qword_2A17B6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FE8);
  }

  return result;
}

void sub_29D8875CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D88682C();
    v7 = a3(a1, &type metadata for PromotionUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D887630()
{
  result = qword_2A17B6FF8;
  if (!qword_2A17B6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6FF8);
  }

  return result;
}

unint64_t sub_29D887698()
{
  result = qword_2A17B7000;
  if (!qword_2A17B7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7000);
  }

  return result;
}

id sub_29D8876EC@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_29D72CCA4(0, &qword_2A17B3428, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v78 = v68 - v8;
  sub_29D72CCA4(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = v68 - v11;
  v13 = sub_29D933CE8();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 != 3)
    {
      v77 = v14;
      if (a1 == 4)
      {
        sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
        v29 = v17;
        v30 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA930]);
        v75 = v30;
        v31 = *(v14 + 16);
        v31(v29, v3, v13);
        v32 = v31;
        v33 = *(v3 + *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory(0) + 20));
        v34 = type metadata accessor for AFibBurdenPDFChartDailySumQuery(0);
        a2[3] = v34;
        a2[4] = &off_2A2445540;
        v35 = sub_29D693F78(a2);
        v73 = v29;
        v74 = v32;
        v32(v35, v29, v13);
        v36 = v34[5];
        v69 = v35;
        *(v35 + v36) = v33;
        *(v35 + v34[6]) = v30;
        *(v35 + v34[9]) = 0;
        v32(v12, v29, v13);
        v72 = *(v14 + 56);
        v72(v12, 0, 1, v13);
        v70 = sub_29D933D38();
        v71 = *(*(v70 - 8) + 56);
        v37 = v78;
        (v71)(v78, 1, 1, v70);
        v38 = v33;
        v75 = v75;
        sub_29D933308();
        v39 = v73;
        v74(v12, v73, v13);
        v72(v12, 0, 1, v13);
        (v71)(v37, 1, 1, v70);
        sub_29D933308();

        return (*(v77 + 8))(v39, v13);
      }

      else
      {
        sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
        v52 = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4A8]);
        v75 = v52;
        v53 = v14;
        v54 = *(v14 + 16);
        v54(v17, v3, v13);
        v55 = v54;
        v74 = v54;
        v56 = *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory(0) + 20);
        v76 = v12;
        v57 = v13;
        v58 = *(v3 + v56);
        v59 = type metadata accessor for AFibBurdenPDFChartDailySumQuery(0);
        a2[3] = v59;
        a2[4] = &off_2A2445540;
        v60 = sub_29D693F78(a2);
        v55(v60, v17, v57);
        v61 = v59[5];
        v71 = v60;
        *(v60 + v61) = v58;
        *(v60 + v59[6]) = v52;
        *(v60 + v59[9]) = 1;
        v62 = v76;
        v55(v76, v17, v57);
        v72 = *(v53 + 56);
        v72(v62, 0, 1, v57);
        v69 = sub_29D933D38();
        v63 = *(v69 - 8);
        v64 = *(v63 + 56);
        v70 = v63 + 56;
        v65 = v78;
        v64(v78, 1, 1, v69);
        v68[1] = v59[7];
        v66 = v58;
        v75 = v75;
        v67 = v76;
        sub_29D933308();
        v74(v67, v17, v57);
        v72(v67, 0, 1, v57);
        v64(v65, 1, 1, v69);
        sub_29D933308();

        return (*(v77 + 8))(v17, v57);
      }
    }

    sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
    v47 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA898]);
    v48 = type metadata accessor for AFibBurdenPDFChartAverageQuery(0);
    a2[3] = v48;
    a2[4] = &off_2A2442D58;
    v49 = sub_29D693F78(a2);
    (*(v14 + 16))(v49, v3, v13);
    v46 = *(v3 + *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory(0) + 20));
    *(v49 + *(v48 + 20)) = v46;
    *(v49 + *(v48 + 24)) = v47;
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v18 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA848]);
      v75 = v18;
      v19 = *(v14 + 16);
      v19(v17, v3, v13);
      v20 = v19;
      v21 = *(v3 + *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory(0) + 20));
      v22 = type metadata accessor for AFibBurdenPDFChartDailySumQuery(0);
      a2[3] = v22;
      a2[4] = &off_2A2445540;
      v23 = sub_29D693F78(a2);
      v74 = v20;
      v20(v23, v17, v13);
      *(v23 + v22[5]) = v21;
      *(v23 + v22[6]) = v18;
      *(v23 + v22[9]) = 0;
      v20(v12, v17, v13);
      v77 = v14;
      v72 = *(v14 + 56);
      v72(v12, 0, 1, v13);
      v70 = sub_29D933D38();
      v24 = *(v70 - 8);
      v25 = *(v24 + 56);
      v71 = (v24 + 56);
      v25(v78, 1, 1, v70);
      v69 = v22[7];
      v26 = v21;
      v75 = v75;
      v27 = v78;
      sub_29D933308();
      v74(v12, v17, v13);
      v72(v12, 0, 1, v13);
      v25(v27, 1, 1, v70);
      sub_29D933308();

      return (*(v77 + 8))(v17, v13);
    }

    v50 = type metadata accessor for AFibBurdenPDFChartSleepQuery(0);
    a2[3] = v50;
    a2[4] = &off_2A244E8D8;
    v51 = sub_29D693F78(a2);
    (*(v14 + 16))(v51, v3, v13);
    v46 = *(v3 + *(type metadata accessor for AFibBurdenPDFChartPointProviderFactory(0) + 20));
    *(v51 + *(v50 + 20)) = v46;
  }

  else
  {
    sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
    v40 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    v41 = type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery(0);
    a2[3] = v41;
    a2[4] = &off_2A244EDB8;
    v42 = sub_29D693F78(a2);
    (*(v14 + 16))(v42, v3, v13);
    v43 = type metadata accessor for AFibBurdenPDFChartPointProviderFactory(0);
    v44 = *(v3 + *(v43 + 24));
    v78 = *(v3 + *(v43 + 20));
    *(v42 + v41[5]) = v78;
    *(v42 + v41[6]) = v40;
    *(v42 + v41[7]) = v44;
    v45 = v44;
    v46 = v78;
  }

  return v46;
}

uint64_t type metadata accessor for AFibBurdenPDFChartPointProviderFactory(uint64_t a1)
{
  result = qword_2A17B7008;
  if (!qword_2A17B7008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8883E0(uint64_t a1)
{
  result = sub_29D933CE8();
  if (v2 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v3 <= 0x3F)
    {
      result = sub_29D934948();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id sub_29D88848C()
{
  *&v0[OBJC_IVAR____TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController_symbolView;
  type metadata accessor for CardioFitnessOnboardingSetupCompleteSymbolView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_29D9334A8();

  v4 = sub_29D939D28();

  v8.receiver = v0;
  v8.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteViewController();
  v5 = objc_msgSendSuper2(&v8, sel_initWithTitle_detailText_icon_contentLayout_, v4, 0, 0, 2, 0xE000000000000000);

  v6 = v5;
  sub_29D8885E8();

  return v6;
}

void sub_29D8885E8()
{
  v1 = [v0 headerView];
  v2 = [v1 customIconContainerView];

  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController_symbolView];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 setClipsToBounds_];
    [v2 addSubview_];
    v4 = objc_opt_self();
    sub_29D6A0C58();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29D941B10;
    v6 = [v3 centerXAnchor];
    v7 = [v2 centerXAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v8;
    v9 = [v3 centerYAnchor];
    v10 = [v2 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v5 + 40) = v11;
    sub_29D6D37A4();
    v12 = sub_29D939F18();

    [v4 activateConstraints_];
  }
}

void sub_29D888800(__n128 a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_29D9334A8();

  v4 = sub_29D939D28();

  v5 = [v1 navigationItem];
  [v5 setHidesBackButton_];
}

id sub_29D888B68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardioFitnessOnboardingSetupCompleteViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D888C0C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart50CardioFitnessOnboardingSetupCompleteViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

uint64_t sub_29D888C68(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2C008);
  v9 = a1;
  v10 = sub_29D937878();
  v11 = sub_29D93A2A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446722;
    nullsub_1();
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v22);
    *(v12 + 22) = 2082;
    v17 = sub_29D939DA8();
    v19 = sub_29D6C2364(v17, v18, &v22);

    *(v12 + 24) = v19;
    _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  ObjectType = swift_getObjectType();
  return sub_29D828F94(a2, a3, v9, a4, 0, ObjectType);
}

uint64_t sub_29D888EB8(void *a1, uint64_t a2, char a3, uint64_t (*a4)(id, void, uint64_t))
{
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v7 = sub_29D937898();
  sub_29D69C6C0(v7, qword_2A1A2C008);
  v8 = a1;
  v9 = sub_29D937878();
  v10 = sub_29D93A2A8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446722;
    nullsub_1();
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D969A70, &v20);
    *(v11 + 22) = 2082;
    v16 = sub_29D939DA8();
    v18 = sub_29D6C2364(v16, v17, &v20);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s.%{public}s]: Primary button tapped for stage: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  return a4(v8, 0, a2);
}

void sub_29D8890C0(void *a1, char a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = a3;
  v7 = a1;
  sub_29D828F94(v8, 0, v7, &off_2A24404E0, a2 & 1, ObjectType);
}

uint64_t sub_29D88914C(void *a1, char a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = 2;
  *(v7 + 32) = a1;
  *(v7 + 40) = &off_2A2444A28;
  *(v7 + 48) = a2 & 1;
  *(v7 + 56) = ObjectType;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_29D8894B4;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a1;
  v9[4] = &off_2A2444A28;
  v9[5] = sub_29D8894CC;
  v9[6] = v8;
  v9[7] = ObjectType;
  v10 = a1;
  v11 = a3;
  v12 = v10;

  sub_29D8FF944(sub_29D8894D4, v9);
}

uint64_t sub_29D8892A4(void *a1, char *a2)
{
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = a1;
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446722;
    nullsub_1();
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_29D6C2364(0xD000000000000031, 0x800000029D96AC40, &v18);
    *(v8 + 22) = 2082;
    v13 = sub_29D939DA8();
    v15 = sub_29D6C2364(v13, v14, &v18);

    *(v8 + 24) = v15;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s.%{public}s]: Secondary button tapped for stage: %{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  ObjectType = swift_getObjectType();
  return sub_29D828F94(a2, 3, v5, &off_2A244AFE8, 1, ObjectType);
}

uint64_t sub_29D8894E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  v28 = a2;
  v29 = a3;
  v7 = type metadata accessor for BloodPressureDayCoordinate(0);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v27 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v24 - v14;
  v26 = *(a1 + 16);
  if (v26)
  {
    v16 = 0;
    v17 = MEMORY[0x29EDCA190];
    v24 = a4;
    v25 = a1;
    while (v16 < *(a1 + 16))
    {
      v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v19 = *(v8 + 72);
      sub_29D88B7A0(a1 + v18 + v19 * v16, v15, type metadata accessor for BloodPressureDayCoordinate);
      v20 = a4(v15, v28, v29);
      if (v4)
      {
        sub_29D88B740(v15, type metadata accessor for BloodPressureDayCoordinate);

        goto LABEL_15;
      }

      if (v20)
      {
        sub_29D88B860(v15, v27, type metadata accessor for BloodPressureDayCoordinate);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D7EE738(0, *(v17 + 16) + 1, 1);
          v17 = v30;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_29D7EE738((v22 > 1), v23 + 1, 1);
          v17 = v30;
        }

        *(v17 + 16) = v23 + 1;
        result = sub_29D88B860(v27, v17 + v18 + v23 * v19, type metadata accessor for BloodPressureDayCoordinate);
        a4 = v24;
        a1 = v25;
      }

      else
      {
        result = sub_29D88B740(v15, type metadata accessor for BloodPressureDayCoordinate);
      }

      if (v26 == ++v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x29EDCA190];
LABEL_15:

    return v17;
  }

  return result;
}

void sub_29D889768(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17[3] = a1;
  v4 = sub_29D9331D8();
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  v9 = *(v8 + 16);
  v11 = (v10 + 16);
  v12 = (v10 + 8);
  sub_29D935E88();
  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (v9 == v13)
    {
LABEL_5:

      return;
    }

    if (v13 >= *(v8 + 16))
    {
      break;
    }

    v15 = type metadata accessor for BloodPressurePDFSampleInterval(0);
    ++v13;
    (*v11)(v7, v8 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)) + *(*(v15 - 8) + 72) * v14 + *(v15 + 20), v4);
    v16 = sub_29D9331B8();
    (*v12)(v7, v4);
    if (v16)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_29D889924(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17[3] = a1;
  v4 = sub_29D9331D8();
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a3;
  v9 = *(v8 + 16);
  v11 = (v10 + 16);
  v12 = (v10 + 8);
  sub_29D935E88();
  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (v9 == v13)
    {
LABEL_5:

      return;
    }

    if (v13 >= *(v8 + 16))
    {
      break;
    }

    v15 = type metadata accessor for BloodPressurePDFSampleInterval(0);
    ++v13;
    (*v11)(v7, v8 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)) + *(*(v15 - 8) + 72) * v14 + *(v15 + 20), v4);
    v16 = sub_29D9331B8();
    (*v12)(v7, v4);
    if (v16)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_29D889AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7CDA98(0);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D88B7A0(a1, v12, sub_29D7CDA98);
  v13 = sub_29D933318();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29D88B740(v12, sub_29D7CDA98);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v15 = sub_29D937898();
    sub_29D69C6C0(v15, qword_2A1A2BF10);
    (*(v5 + 16))(v8, a2, v4);
    v16 = sub_29D937878();
    v17 = sub_29D93A288();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D9513F0, &v29);
      *(v18 + 12) = 2080;
      sub_29D88B808();
      v20 = sub_29D93AD38();
      v22 = v21;
      (*(v5 + 8))(v8, v4);
      v23 = sub_29D6C2364(v20, v22, &v29);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s] Could not get date of birth components to determine age on interval date: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return 0;
  }

  else
  {
    v24 = sub_29D933288();
    (*(v14 + 8))(v12, v13);
    v25 = sub_29D933958();
    [v24 hk:v25 ageWithCurrentDate:?];

    v26 = sub_29D93A138();
    return v26;
  }
}

uint64_t sub_29D889E9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v210 = a3;
  v195 = a6;
  v222 = *MEMORY[0x29EDCA608];
  v10 = type metadata accessor for BloodPressureDayCoordinate(0);
  v209 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10, v11);
  v203 = v194 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v194 - v15;
  v204 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v201 = *(v204 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v204, v17);
  v199 = v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v202 = v194 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  *&v200 = v194 - v25;
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = v194 - v27;
  v29 = MEMORY[0x29EDCA190];
  *&v213 = MEMORY[0x29EDCA190];
  *(&v213 + 1) = sub_29D73F938(MEMORY[0x29EDCA190]);
  LOWORD(v214) = 1;
  *(&v214 + 1) = v29;
  v215 = sub_29D73F938(v29);
  *&v212 = a2;
  *(&v212 + 1) = a4;
  *&v220[0] = 0;
  v30 = a2;
  v205 = a4;
  v31 = [v30 categoriesForClassificationGuidelines:a4 error:v220];
  v32 = *&v220[0];
  if (!v31)
  {
    v54 = *&v220[0];

    v55 = sub_29D933598();

    swift_willThrow();
    if (qword_2A1A24658 != -1)
    {
      goto LABEL_144;
    }

    goto LABEL_19;
  }

  v33 = v31;
  v194[2] = a1;
  v207 = v30;
  type metadata accessor for HKBloodPressureClassificationCategory(0);
  v194[1] = v34;
  v35 = sub_29D939F38();
  v36 = v32;

  *&v213 = v35;
  v37 = *(v35 + 16);
  v198 = a5;
  v208 = v10;
  v206 = v35;
  v197 = v28;
  if (v37)
  {
    v38 = v35 + 32;
    sub_29D935E88();
    v39 = v206;
    v30 = 0;
    v40 = *(&v213 + 1);
    while (1)
    {
      if (v30 >= *(v39 + 16))
      {
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        swift_once();
LABEL_19:
        v56 = sub_29D937898();
        sub_29D69C6C0(v56, qword_2A1A2BF10);
        v57 = sub_29D937878();
        v58 = sub_29D93A288();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *&v220[0] = v60;
          *v59 = 136446466;
          *(v59 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D9513F0, v220);
          *(v59 + 12) = 2080;
          v61 = sub_29D93A628();
          v63 = sub_29D6C2364(v61, v62, v220);

          *(v59 + 14) = v63;
          _os_log_impl(&dword_29D677000, v57, v58, "[%{public}s] Could not get categories for guideline: %s", v59, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v60, -1, -1);
          MEMORY[0x29ED6BE30](v59, -1, -1);
        }

        else
        {
        }

        goto LABEL_126;
      }

      v41 = *(v38 + 8 * v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v220[0] = v40;
      v43 = sub_29D6959E0();
      v45 = v40[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_129;
      }

      v49 = v44;
      if (v40[3] < v48)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v53 = v43;
      sub_29D69380C();
      v43 = v53;
      v40 = *&v220[0];
      if ((v49 & 1) == 0)
      {
LABEL_13:
        v40[(v43 >> 6) + 8] |= 1 << v43;
        *(v40[6] + 8 * v43) = v41;
        *(v40[7] + 8 * v43) = 0;
        v51 = v40[2];
        v47 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v47)
        {
          goto LABEL_132;
        }

        v40[2] = v52;
        goto LABEL_5;
      }

LABEL_4:
      *(v40[7] + 8 * v43) = 0;

LABEL_5:
      ++v30;
      v39 = v206;
      if (v37 == v30)
      {
        *(&v213 + 1) = v40;
        a5 = v198;
        v28 = v197;
        goto LABEL_22;
      }
    }

    sub_29D6919A8(v48, isUniquelyReferenced_nonNull_native);
    v43 = sub_29D6959E0();
    if ((v49 & 1) != (v50 & 1))
    {
      *(&v213 + 1) = v40;
LABEL_152:
      result = sub_29D93ADC8();
      __break(1u);
      return result;
    }

LABEL_12:
    v40 = *&v220[0];
    if ((v49 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  sub_29D935E88();
LABEL_22:
  *&v220[0] = MEMORY[0x29EDCA190];
  v64 = v207;
  if (a5)
  {
    *&v216 = 0;
    sub_29D935E88();
    v65 = [v64 categoriesForClassificationGuidelines:2 error:&v216];
    v66 = v216;
    if (!v65)
    {
      v100 = v216;

      swift_bridgeObjectRelease_n();
      v101 = sub_29D933598();

      swift_willThrow();
      if (qword_2A1A24658 != -1)
      {
        goto LABEL_150;
      }

      goto LABEL_62;
    }

    v67 = v65;
    v68 = sub_29D939F38();
    v69 = v66;

    *(&v214 + 1) = v68;
    v70 = *(v68 + 16);
    if (v70)
    {
      sub_29D935E88();
      v71 = 0;
      v72 = v215;
      while (1)
      {
        if (v71 >= *(v68 + 16))
        {
          goto LABEL_133;
        }

        v73 = *(v68 + 8 * v71 + 32);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        *&v216 = v72;
        v30 = sub_29D6959E0();
        v76 = v72[2];
        v77 = (v75 & 1) == 0;
        v78 = v76 + v77;
        if (__OFADD__(v76, v77))
        {
          goto LABEL_134;
        }

        v79 = v75;
        if (v72[3] >= v78)
        {
          if ((v74 & 1) == 0)
          {
            sub_29D69380C();
          }
        }

        else
        {
          sub_29D6919A8(v78, v74);
          v80 = sub_29D6959E0();
          if ((v79 & 1) != (v81 & 1))
          {
            v215 = v72;
            goto LABEL_152;
          }

          v30 = v80;
        }

        v64 = v207;
        v72 = v216;
        if (v79)
        {
          *(*(v216 + 56) + 8 * v30) = 0;
        }

        else
        {
          *(v216 + 8 * (v30 >> 6) + 64) |= 1 << v30;
          *(v72[6] + 8 * v30) = v73;
          *(v72[7] + 8 * v30) = 0;
          v82 = v72[2];
          v47 = __OFADD__(v82, 1);
          v83 = v82 + 1;
          if (v47)
          {
            goto LABEL_137;
          }

          v72[2] = v83;
        }

        if (v70 == ++v71)
        {
          v215 = v72;

          v28 = v197;
          break;
        }
      }
    }

    v84 = v198;
    v85 = *(v198 + 16);
    if (v85)
    {
      v86 = 0;
      v87 = MEMORY[0x29EDCA190];
      v88 = v202;
      do
      {
        if (v86 >= *(v84 + 16))
        {
          goto LABEL_135;
        }

        v30 = (*(v201 + 80) + 32) & ~*(v201 + 80);
        v89 = *(v201 + 72);
        sub_29D88B7A0(v84 + v30 + v89 * v86, v28, type metadata accessor for BloodPressurePDFSampleInterval);
        if (v28[*(v204 + 24)] == 1)
        {
          sub_29D88B860(v28, v200, type metadata accessor for BloodPressurePDFSampleInterval);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          *&v216 = v87;
          if ((v90 & 1) == 0)
          {
            sub_29D7EE660(0, *(v87 + 16) + 1, 1);
            v87 = v216;
          }

          v92 = *(v87 + 16);
          v91 = *(v87 + 24);
          if (v92 >= v91 >> 1)
          {
            sub_29D7EE660((v91 > 1), v92 + 1, 1);
            v87 = v216;
          }

          *(v87 + 16) = v92 + 1;
          sub_29D88B860(v200, v87 + v30 + v92 * v89, type metadata accessor for BloodPressurePDFSampleInterval);
          v88 = v202;
          v28 = v197;
        }

        else
        {
          sub_29D88B740(v28, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        ++v86;
      }

      while (v85 != v86);
      v93 = v84;
      v94 = 0;
      v95 = v93 + v30;
      v96 = MEMORY[0x29EDCA190];
      v201 = v85;
      do
      {
        if (v94 >= *(v198 + 16))
        {
          goto LABEL_136;
        }

        sub_29D88B7A0(v95, v88, type metadata accessor for BloodPressurePDFSampleInterval);
        if (v88[*(v204 + 24)] == 2)
        {
          sub_29D88B860(v88, v199, type metadata accessor for BloodPressurePDFSampleInterval);
          v97 = swift_isUniquelyReferenced_nonNull_native();
          *&v216 = v96;
          if ((v97 & 1) == 0)
          {
            sub_29D7EE660(0, *(v96 + 16) + 1, 1);
            v96 = v216;
          }

          v99 = *(v96 + 16);
          v98 = *(v96 + 24);
          if (v99 >= v98 >> 1)
          {
            sub_29D7EE660((v98 > 1), v99 + 1, 1);
            v96 = v216;
          }

          *(v96 + 16) = v99 + 1;
          sub_29D88B860(v199, v96 + v30 + v99 * v89, type metadata accessor for BloodPressurePDFSampleInterval);
          v88 = v202;
          v85 = v201;
        }

        else
        {
          sub_29D88B740(v88, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        ++v94;
        v95 += v89;
      }

      while (v85 != v94);
      v64 = v207;
    }

    else
    {
      v87 = MEMORY[0x29EDCA190];
      v96 = MEMORY[0x29EDCA190];
    }

    sub_29D88BF3C(v87);
    sub_29D88BF3C(v96);
  }

  v110 = sub_29D935E88();
  v111 = sub_29D8894E4(v110, &v212, v220, sub_29D889768);
  v112 = sub_29D935E88();
  v113 = sub_29D8894E4(v112, &v212, v220, sub_29D889924);
  v115 = *(v111 + 16);
  LOBYTE(v214) = v115 != 0;
  v204 = v113;
  v116 = *(v113 + 16);
  BYTE1(v214) = v116 != 0;
  v201 = v111;
  if (!v115)
  {
    goto LABEL_96;
  }

  v117 = 0;
  *&v200 = v111 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
  v197 = "er";
  *&v114 = 136446466;
  v196 = v114;
  while (1)
  {
    if (v117 >= *(v111 + 16))
    {
      goto LABEL_130;
    }

    sub_29D88B7A0(v200 + *(v209 + 72) * v117, v16, type metadata accessor for BloodPressureDayCoordinate);
    v118 = sub_29D889AE0(v210, v16);
    v30 = sub_29D93A618();
    v119 = sub_29D93A618();
    v202 = v118;
    v120 = *(&v213 + 1);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    *&v216 = v120;
    v123 = sub_29D6959E0();
    v124 = *(v120 + 16);
    v125 = (v122 & 1) == 0;
    v126 = v124 + v125;
    if (__OFADD__(v124, v125))
    {
      goto LABEL_138;
    }

    v127 = v122;
    if (*(v120 + 24) >= v126)
    {
      if ((v121 & 1) == 0)
      {
        sub_29D69380C();
      }
    }

    else
    {
      sub_29D6919A8(v126, v121);
      v128 = sub_29D6959E0();
      if ((v127 & 1) != (v129 & 1))
      {
        goto LABEL_152;
      }

      v123 = v128;
    }

    v64 = v207;
    if ((v127 & 1) == 0)
    {
      goto LABEL_139;
    }

    v130 = v216;
    v131 = *(v216 + 56);
    v132 = *(v131 + 8 * v123);
    v47 = __OFADD__(v132, 1);
    v133 = v132 + 1;
    if (v47)
    {
      goto LABEL_140;
    }

    *(v131 + 8 * v123) = v133;
    *(&v213 + 1) = v130;
    v134 = sub_29D939D68();
    v136 = v135;
    if (v134 != sub_29D939D68() || v136 != v137)
    {
      break;
    }

LABEL_86:

    v111 = v201;
LABEL_71:
    ++v117;
    sub_29D88B740(v16, type metadata accessor for BloodPressureDayCoordinate);
    if (v115 == v117)
    {
      v116 = *(v204 + 16);
LABEL_96:
      v154 = v203;
      if (!v116)
      {
LABEL_124:

        sub_29D88B740(v210, sub_29D7CDA98);

        goto LABEL_127;
      }

      v155 = 0;
      v205 = v204 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
      v202 = "er";
      *&v114 = 136446466;
      v200 = v114;
      v156 = v116;
      while (1)
      {
        if (v155 >= *(v204 + 16))
        {
          goto LABEL_131;
        }

        sub_29D88B7A0(v205 + *(v209 + 72) * v155, v154, type metadata accessor for BloodPressureDayCoordinate);
        v157 = sub_29D889AE0(v210, v154);
        v158 = sub_29D93A618();
        v159 = sub_29D93A618();
        v160 = v215;
        v161 = swift_isUniquelyReferenced_nonNull_native();
        *&v216 = v160;
        v162 = sub_29D6959E0();
        v164 = *(v160 + 16);
        v165 = (v163 & 1) == 0;
        v47 = __OFADD__(v164, v165);
        v166 = v164 + v165;
        if (v47)
        {
          goto LABEL_141;
        }

        v30 = v163;
        if (*(v160 + 24) < v166)
        {
          break;
        }

        if (v161)
        {
          goto LABEL_105;
        }

        v188 = v162;
        sub_29D69380C();
        v162 = v188;
        if ((v30 & 1) == 0)
        {
          goto LABEL_142;
        }

LABEL_106:
        v168 = v216;
        v169 = *(v216 + 56);
        v170 = *(v169 + 8 * v162);
        v47 = __OFADD__(v170, 1);
        v171 = v170 + 1;
        if (v47)
        {
          goto LABEL_143;
        }

        *(v169 + 8 * v162) = v171;
        v215 = v168;
        v172 = sub_29D939D68();
        v174 = v173;
        if (v172 == sub_29D939D68() && v174 == v175)
        {

          goto LABEL_98;
        }

        v30 = sub_29D93AD78();

        if (v30)
        {

          goto LABEL_98;
        }

        v176 = v215;
        v177 = swift_isUniquelyReferenced_nonNull_native();
        *&v216 = v176;
        v178 = sub_29D6959E0();
        v180 = *(v176 + 16);
        v181 = (v179 & 1) == 0;
        v47 = __OFADD__(v180, v181);
        v182 = v180 + v181;
        if (v47)
        {
          goto LABEL_148;
        }

        v30 = v179;
        if (*(v176 + 24) >= v182)
        {
          if ((v177 & 1) == 0)
          {
            v189 = v178;
            sub_29D69380C();
            v178 = v189;
            if ((v30 & 1) == 0)
            {
LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

            goto LABEL_118;
          }
        }

        else
        {
          sub_29D6919A8(v182, v177);
          v178 = sub_29D6959E0();
          if ((v30 & 1) != (v183 & 1))
          {
            goto LABEL_152;
          }
        }

        if ((v30 & 1) == 0)
        {
          goto LABEL_123;
        }

LABEL_118:
        v184 = v216;
        v185 = *(v216 + 56);
        v186 = *(v185 + 8 * v178);
        v47 = __OFADD__(v186, 1);
        v187 = v186 + 1;
        if (v47)
        {
          goto LABEL_149;
        }

        *(v185 + 8 * v178) = v187;

        v215 = v184;
LABEL_98:
        ++v155;
        v154 = v203;
        sub_29D88B740(v203, type metadata accessor for BloodPressureDayCoordinate);
        if (v156 == v155)
        {
          goto LABEL_124;
        }
      }

      sub_29D6919A8(v166, v161);
      v162 = sub_29D6959E0();
      if ((v30 & 1) != (v167 & 1))
      {
        goto LABEL_152;
      }

LABEL_105:
      if ((v30 & 1) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_106;
    }
  }

  v138 = sub_29D93AD78();

  if (v138)
  {

    goto LABEL_86;
  }

  v139 = *(&v213 + 1);
  v140 = swift_isUniquelyReferenced_nonNull_native();
  *&v216 = v139;
  v141 = sub_29D6959E0();
  v143 = *(v139 + 16);
  v144 = (v142 & 1) == 0;
  v47 = __OFADD__(v143, v144);
  v145 = v143 + v144;
  if (!v47)
  {
    v146 = v142;
    if (*(v139 + 24) >= v145)
    {
      v111 = v201;
      if ((v140 & 1) == 0)
      {
        v153 = v141;
        sub_29D69380C();
        v111 = v201;
        v141 = v153;
      }
    }

    else
    {
      sub_29D6919A8(v145, v140);
      v141 = sub_29D6959E0();
      if ((v146 & 1) != (v147 & 1))
      {
        goto LABEL_152;
      }

      v111 = v201;
    }

    v148 = v202;
    if ((v146 & 1) == 0)
    {
      goto LABEL_146;
    }

    v149 = v216;
    v150 = *(v216 + 56);
    v151 = *(v150 + 8 * v141);
    v47 = __OFADD__(v151, 1);
    v152 = v151 + 1;
    if (v47)
    {
      goto LABEL_147;
    }

    *(v150 + 8 * v141) = v152;

    *(&v213 + 1) = v149;
    goto LABEL_71;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  swift_once();
LABEL_62:
  v102 = sub_29D937898();
  sub_29D69C6C0(v102, qword_2A1A2BF10);
  v103 = sub_29D937878();
  v104 = sub_29D93A288();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v216 = v106;
    *v105 = 136446466;
    *(v105 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D9513F0, &v216);
    *(v105 + 12) = 2080;
    v107 = sub_29D93A628();
    v109 = sub_29D6C2364(v107, v108, &v216);

    *(v105 + 14) = v109;
    _os_log_impl(&dword_29D677000, v103, v104, "[%{public}s] Could not get categories for guideline: %s", v105, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v106, -1, -1);
    MEMORY[0x29ED6BE30](v105, -1, -1);
  }

  else
  {
  }

LABEL_126:
  sub_29D88B740(v210, sub_29D7CDA98);
LABEL_127:
  v216 = v212;
  v217 = v213;
  v218 = v214;
  v219 = v215;
  v220[0] = v212;
  v220[1] = v213;
  v220[2] = v214;
  v221 = v215;
  sub_29D88B708(&v216, v211);
  result = sub_29D7FF824(v220);
  v191 = v217;
  v192 = v218;
  v193 = v195;
  *v195 = v216;
  v193[1] = v191;
  v193[2] = v192;
  *(v193 + 6) = v219;
  return result;
}

uint64_t sub_29D88B740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D88B7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D88B808()
{
  result = qword_2A17B7B10;
  if (!qword_2A17B7B10)
  {
    sub_29D9339F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7B10);
  }

  return result;
}

uint64_t sub_29D88B860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D88B8D8(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = *(v1 + 56);
        v4 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingGetStartedViewController(0));
        sub_29D6F327C(v3);
      }

      else
      {
        v7 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingHowItWorksViewController());
        sub_29D8780BC(1);
      }
    }

    else
    {
      v6 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingStartViewController(0));
      sub_29D843318(1, 0, 0);
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingShouldKnowViewController(0));
      sub_29D8B0F4C(1);
    }

    else
    {
      sub_29D6945AC(v1 + 16, v11);
      sub_29D6945AC(v1 + 64, v10);
      v9 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingSetupCompleteViewController(0));
      sub_29D920BB8(v11, v10);
    }
  }

  else if (a1 == 3)
  {
    v2 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingResultsViewController());
    sub_29D85FAE0(1);
  }

  else
  {
    v8 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingLifeFactorsViewController());
    sub_29D738970(1);
  }
}

uint64_t sub_29D88BA4C()
{
  sub_29D69417C((v0 + 16));
  sub_29D69417C((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t static String.hypertensionAccessibilityIdentifier(_:)(uint64_t a1)
{
  sub_29D782F64(0, &qword_2A1A21F18, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D93F680;
  *(v1 + 32) = sub_29D939D68();
  *(v1 + 40) = v2;
  *(v1 + 48) = 0xD000000000000019;
  *(v1 + 56) = 0x800000029D95FDD0;
  v3 = sub_29D935E88();
  sub_29D88BBC8(v3);
  sub_29D782F64(0, &qword_2A17B3628, MEMORY[0x29EDC9A40]);
  sub_29D738398(v4);
  v5 = sub_29D939CA8();

  return v5;
}

void sub_29D88BBC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_29D68F740(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_29D88BCEC(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_29D93A928();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_29D93A928();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_29D88C47C(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_29D88BDE4(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_29D68FADC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29D694718();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_29D88BF94(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_29D88C100(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v3 = sub_29D93AA48();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29D6C320C(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}