void sub_29D88C220(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29D695734(0, a3, a4, 1);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_29D88C348(uint64_t a1)
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

  v3 = sub_29D6903BC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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

  sub_29D695734(0, &unk_2A1A246A0, MEMORY[0x29EDC3628], 0);
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

uint64_t sub_29D88C47C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_29D93A928();
LABEL_9:
  result = sub_29D93AA48();
  *v2 = result;
  return result;
}

uint64_t sub_29D88C51C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_29D88C564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D88C5D0(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v7 = *v3;
  sub_29D897AA8(0);
  v29 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *(v7 + qword_2A17D09A8 + 24)) = MEMORY[0x29EDCA1A0];
  *(v3 + *(*v3 + qword_2A17D09A8 + 32)) = 0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v13 = sub_29D937898();
  sub_29D69C6C0(v13, qword_2A1A2C008);
  v14 = sub_29D937878();
  v15 = sub_29D93A288();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    HIDWORD(v27) = v5;
    v5 = v16;
    v17 = swift_slowAlloc();
    v28 = a2;
    v18 = v17;
    v30 = v17;
    *v5 = 136446722;
    v19 = sub_29D93AF08();
    v21 = sub_29D6C2364(v19, v20, &v30);

    *(v5 + 4) = v21;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0xD000000000000036, 0x800000029D96ACE0, &v30);
    *(v5 + 22) = 2080;
    *(v5 + 24) = sub_29D6C2364(0xD00000000000002CLL, 0x800000029D96B020, &v30);
    _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s.%{public}s]: Initializing data source: %s", v5, 0x20u);
    swift_arrayDestroy();
    v22 = v18;
    a2 = v28;
    MEMORY[0x29ED6BE30](v22, -1, -1);
    v23 = v5;
    LOBYTE(v5) = BYTE4(v27);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  v24 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:a2];
  *(v4 + *(*v4 + qword_2A17D09A8 + 16)) = v24;
  (*(v9 + 104))(v12, *MEMORY[0x29EDC1FF8], v29);

  v25 = sub_29D935538();

  if (v5)
  {
    sub_29D8929F0(a2);
  }

  else
  {
    sub_29D894710(sub_29D897AA8, &unk_2A244B688, &unk_2A244B750, sub_29D897DF0);
  }

  return v25;
}

uint64_t sub_29D88C9BC(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v7 = *v3;
  sub_29D897708(0);
  v29 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *(v7 + qword_2A17D09A8 + 24)) = MEMORY[0x29EDCA1A0];
  *(v3 + *(*v3 + qword_2A17D09A8 + 32)) = 0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v13 = sub_29D937898();
  sub_29D69C6C0(v13, qword_2A1A2C008);
  v14 = sub_29D937878();
  v15 = sub_29D93A288();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    HIDWORD(v27) = v5;
    v5 = v16;
    v17 = swift_slowAlloc();
    v28 = a2;
    v18 = v17;
    v30 = v17;
    *v5 = 136446722;
    v19 = sub_29D93AF08();
    v21 = sub_29D6C2364(v19, v20, &v30);

    *(v5 + 4) = v21;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0xD000000000000036, 0x800000029D96ACE0, &v30);
    *(v5 + 22) = 2080;
    *(v5 + 24) = sub_29D6C2364(0xD00000000000003BLL, 0x800000029D96AFE0, &v30);
    _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s.%{public}s]: Initializing data source: %s", v5, 0x20u);
    swift_arrayDestroy();
    v22 = v18;
    a2 = v28;
    MEMORY[0x29ED6BE30](v22, -1, -1);
    v23 = v5;
    LOBYTE(v5) = BYTE4(v27);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  v24 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:a2];
  *(v4 + *(*v4 + qword_2A17D09A8 + 16)) = v24;
  (*(v9 + 104))(v12, *MEMORY[0x29EDC1FF8], v29);

  v25 = sub_29D935538();

  if (v5)
  {
    sub_29D893880(a2);
  }

  else
  {
    sub_29D894710(sub_29D897708, &unk_2A244B598, &unk_2A244B660, sub_29D897A78);
  }

  return v25;
}

uint64_t sub_29D88CDA8(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v7 = *v3;
  sub_29D8929B4(0);
  v29 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *(v7 + qword_2A17D09A8 + 24)) = MEMORY[0x29EDCA1A0];
  *(v3 + *(*v3 + qword_2A17D09A8 + 32)) = 0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v13 = sub_29D937898();
  sub_29D69C6C0(v13, qword_2A1A2C008);
  v14 = sub_29D937878();
  v15 = sub_29D93A288();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    HIDWORD(v27) = v5;
    v5 = v16;
    v17 = swift_slowAlloc();
    v28 = a2;
    v18 = v17;
    v30 = v17;
    *v5 = 136446722;
    v19 = sub_29D93AF08();
    v21 = sub_29D6C2364(v19, v20, &v30);

    *(v5 + 4) = v21;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0xD000000000000036, 0x800000029D96ACE0, &v30);
    *(v5 + 22) = 2080;
    *(v5 + 24) = sub_29D6C2364(0xD00000000000001DLL, 0x800000029D96AD20, &v30);
    _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s.%{public}s]: Initializing data source: %s", v5, 0x20u);
    swift_arrayDestroy();
    v22 = v18;
    a2 = v28;
    MEMORY[0x29ED6BE30](v22, -1, -1);
    v23 = v5;
    LOBYTE(v5) = BYTE4(v27);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  v24 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:a2];
  *(v4 + *(*v4 + qword_2A17D09A8 + 16)) = v24;
  (*(v9 + 104))(v12, *MEMORY[0x29EDC1FF8], v29);

  v25 = sub_29D935538();

  if (v5)
  {
    sub_29D89504C(a2);
  }

  else
  {
    sub_29D894710(sub_29D8929B4, &unk_2A244B1B0, &unk_2A244B278, sub_29D8962AC);
  }

  return v25;
}

uint64_t sub_29D88D194(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v6 = a2;
  v7 = *v3;
  sub_29D897E20(0, a2);
  v30 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + *(v7 + qword_2A17D09A8 + 24)) = MEMORY[0x29EDCA1A0];
  *(v3 + *(*v3 + qword_2A17D09A8 + 32)) = 0;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v13 = sub_29D937898();
  sub_29D69C6C0(v13, qword_2A1A2C008);
  v14 = sub_29D937878();
  v15 = sub_29D93A288();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    HIDWORD(v28) = v5;
    v5 = v16;
    v17 = swift_slowAlloc();
    v29 = v6;
    v18 = v17;
    v31 = v17;
    *v5 = 136446722;
    v19 = sub_29D93AF08();
    v21 = sub_29D6C2364(v19, v20, &v31);

    *(v5 + 4) = v21;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0xD000000000000036, 0x800000029D96ACE0, &v31);
    *(v5 + 22) = 2080;
    *(v5 + 24) = sub_29D6C2364(0xD00000000000006ELL, 0x800000029D96B050, &v31);
    _os_log_impl(&dword_29D677000, v14, v15, "[%{public}s.%{public}s]: Initializing data source: %s", v5, 0x20u);
    swift_arrayDestroy();
    v22 = v18;
    v6 = v29;
    MEMORY[0x29ED6BE30](v22, -1, -1);
    v23 = v5;
    LOBYTE(v5) = BYTE4(v28);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  v24 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:v6];
  *(v4 + *(*v4 + qword_2A17D09A8 + 16)) = v24;
  (*(v9 + 104))(v12, *MEMORY[0x29EDC1FF8], v30);

  v25 = sub_29D935538();

  if (v5)
  {
    sub_29D8962DC(v6, v26);
  }

  else
  {
    sub_29D894710(sub_29D897E20, &unk_2A244B778, &unk_2A244B840, sub_29D898398);
  }

  return v25;
}

uint64_t sub_29D88D580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4(0);
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v13 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v10 = sub_29D9371B8();
    v11 = [v10 areAllRequirementsSatisfied];

    v12 = MEMORY[0x29EDC2000];
    if (!v11)
    {
      v12 = MEMORY[0x29EDC1FF8];
    }

    (*(v5 + 104))(v8, *v12, v4);
    sub_29D935528();
  }

  return result;
}

uint64_t sub_29D88D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_29D897AA8(0);
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = sub_29D939FF8();
  v6[8] = sub_29D939FE8();
  v9 = swift_task_alloc();
  v6[9] = v9;
  *v9 = v6;
  v9[1] = sub_29D88D7E4;

  return sub_29D7023D4(0, a5);
}

uint64_t sub_29D88D7E4(char a1)
{
  *(*v1 + 80) = a1;

  v3 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D8983E0, v3, v2);
}

uint64_t sub_29D88D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_29D897708(0);
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = sub_29D939FF8();
  v6[8] = sub_29D939FE8();
  v9 = swift_task_alloc();
  v6[9] = v9;
  *v9 = v6;
  v9[1] = sub_29D88D7E4;

  return sub_29D7023D4(0, a5);
}

uint64_t sub_29D88DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_29D8929B4(0);
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = sub_29D939FF8();
  v6[8] = sub_29D939FE8();
  v9 = swift_task_alloc();
  v6[9] = v9;
  *v9 = v6;
  v9[1] = sub_29D88D7E4;

  return sub_29D7023D4(0, a5);
}

uint64_t sub_29D88DB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_29D897E20(0, a2);
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = sub_29D939FF8();
  v6[8] = sub_29D939FE8();
  v9 = swift_task_alloc();
  v6[9] = v9;
  *v9 = v6;
  v9[1] = sub_29D88D7E4;

  return sub_29D7023D4(0, a5);
}

uint64_t sub_29D88DC58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v9 = sub_29D9371A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v27 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = sub_29D93A028();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    (*(v10 + 16))(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    sub_29D939FF8();

    v20 = a3;
    v28 = a6;
    v21 = v20;
    v22 = sub_29D939FE8();
    v23 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x29EDCA390];
    *(v24 + 2) = v22;
    *(v24 + 3) = v25;
    *(v24 + 4) = v18;
    *(v24 + 5) = v21;
    (*(v10 + 32))(&v24[v23], &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v26 = v28;
    *&v24[(v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8] = v29;
    sub_29D6BEBA4(0, 0, v16, v26, v24);
  }

  return result;
}

uint64_t sub_29D88DECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_29D8929B4(0);
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = sub_29D939FF8();
  v6[8] = sub_29D939FE8();
  v9 = swift_task_alloc();
  v6[9] = v9;
  *v9 = v6;
  v9[1] = sub_29D88DFDC;

  return sub_29D7023D4(0, a5);
}

uint64_t sub_29D88DFDC(char a1)
{
  *(*v1 + 80) = a1;

  v3 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D88E120, v3, v2);
}

uint64_t sub_29D88E120()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  *(v5 + *(*v5 + qword_2A17D09A8 + 32)) = v1;
  v6 = sub_29D9371B8();
  v7 = [v6 areAllRequirementsSatisfied];

  v8 = MEMORY[0x29EDC2000];
  if ((v7 & v1) == 0)
  {
    v8 = MEMORY[0x29EDC1FF8];
  }

  (*(v3 + 104))(v2, *v8, v4);
  sub_29D935528();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_29D88E254(unint64_t a1)
{
  sub_29D897AA8(0);
  v20 = *(v2 - 8);
  v21 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v19 - v6;
  v8 = sub_29D9371A8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  if (a1 >> 62)
  {
    v13 = sub_29D93A928();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v13 > 0;
  v15 = sub_29D9371B8();
  v16 = [v15 areAllRequirementsSatisfied];

  v17 = MEMORY[0x29EDC2000];
  if ((v16 & v14) == 0)
  {
    v17 = MEMORY[0x29EDC1FF8];
  }

  (*(v20 + 104))(v7, *v17, v21);
  sub_29D935528();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_29D88E6BC(unint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v21 = *(v3 - 8);
  v22 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v20 - v7;
  v9 = sub_29D9371A8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  if (a1 >> 62)
  {
    v14 = sub_29D93A928();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v14 > 0;
  v16 = sub_29D9371B8();
  v17 = [v16 areAllRequirementsSatisfied];

  v18 = MEMORY[0x29EDC2000];
  if ((v17 & v15) == 0)
  {
    v18 = MEMORY[0x29EDC1FF8];
  }

  (*(v21 + 104))(v8, *v18, v22);
  sub_29D935528();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_29D88EB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_29D88EE1C(a1, a2, a3, a4);
  sub_29D935248();
  swift_allocObject();
  v5 = sub_29D935238();
  sub_29D935958();
  swift_allocObject();
  sub_29D935938();
  sub_29D85F948(0, &qword_2A17B1088, &qword_2A17B1090, MEMORY[0x29EDC2040], 0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D93F680;
  v7 = sub_29D8925D8(&qword_2A17B7028, sub_29D892420, MEMORY[0x29EDC24E8]);
  *(v6 + 32) = v4;
  *(v6 + 40) = v7;
  v8 = MEMORY[0x29EDC1EB0];
  *(v6 + 48) = v5;
  *(v6 + 56) = v8;
  sub_29D935968();
  swift_allocObject();

  v9 = sub_29D935978();

  sub_29D935948();
  sub_29D892620(0, &qword_2A17B7058, sub_29D892684, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93F680;
  *(inited + 32) = 1;
  v11 = sub_29D89275C();
  *(inited + 40) = v4;
  *(inited + 48) = v11;
  v12 = MEMORY[0x29EDC2908];
  *(inited + 56) = v7;
  *(inited + 64) = 2;
  *(inited + 72) = v9;
  *(inited + 80) = v12;
  *(inited + 88) = MEMORY[0x29EDC2280];
  sub_29D73FA18(inited);
  swift_setDeallocating();
  sub_29D892684(0);

  swift_arrayDestroy();
  sub_29D936658();
  swift_allocObject();

  v13 = sub_29D936648();
  v14 = sub_29D936338();
  sub_29D89290C(0);
  swift_allocObject();
  v15 = sub_29D88CDA8(v13, v14, 0);

  return v15;
}

uint64_t sub_29D88EE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_29D89716C();
  sub_29D88F074(a1, a2, a3, v4);
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v8 = sub_29D937898();
  sub_29D69C6C0(v8, qword_2A1A2BF10);

  v9 = sub_29D937878();
  v10 = sub_29D93A268();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446978;
    *(v11 + 4) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9514D0, &v20);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D96ADC0, &v20);
    *(v11 + 22) = 2080;
    v13 = sub_29D9357A8();
    v15 = sub_29D6C2364(v13, v14, &v20);

    *(v11 + 24) = v15;
    *(v11 + 32) = 2080;
    v16 = sub_29D9357A8();
    v18 = sub_29D6C2364(v16, v17, &v20);

    *(v11 + 34) = v18;
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s.%{public}s]: Making PrimarySecondaryDataSource with primaryDataSource: %s, secondaryDataSource: %s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);
  }

  sub_29D892420(0);
  swift_allocObject();
  return sub_29D935ED8();
}

uint64_t sub_29D88F074(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v45 = a4;
  v46 = a3;
  v43 = a1;
  v44 = a2;
  v4 = sub_29D9356A8();
  v49 = *(v4 - 8);
  v50 = v4;
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v47 = &v42 - v9;
  v10 = sub_29D936378();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v14 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D877C0C(0);
  v42 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v20 = sub_29D937898();
  sub_29D69C6C0(v20, qword_2A1A2BF10);
  v21 = sub_29D937878();
  v22 = sub_29D93A268();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v51[0] = v24;
    *v23 = 136446466;
    *(v23 + 4) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9514D0, v51);
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_29D6C2364(0xD000000000000033, 0x800000029D96ADF0, v51);
    _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s.%{public}s]: Creating Blood Pressure Journal summary data source", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v24, -1, -1);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  v25 = v43;
  sub_29D936318();
  sub_29D693E2C(v51, v51[3]);
  v26 = sub_29D933EC8();
  v27 = sub_29D93A598();

  sub_29D69417C(v51);
  sub_29D75A420(0);
  v29 = objc_allocWithZone(v28);
  v30 = v27;
  v31 = sub_29D936A38();
  (*(v11 + 16))(&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v10);
  v32 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v33 = swift_allocObject();
  v34 = v46;
  *(v33 + 16) = v44;
  *(v33 + 24) = v34;
  *(v33 + 32) = v45;
  (*(v11 + 32))(v33 + v32, v14, v10);
  *v19 = sub_29D8974E0;
  v19[1] = v33;
  (*(v16 + 104))(v19, *MEMORY[0x29EDC2720], v42);
  sub_29D877D44(0);
  swift_allocObject();
  v35 = v31;
  sub_29D935E88();
  sub_29D935328();
  sub_29D935588();

  v36 = v47;
  sub_29D935658();
  v37 = v48;
  sub_29D935618();
  v38 = v50;
  v39 = *(v49 + 8);
  v39(v36, v50);
  sub_29D89259C(0);
  sub_29D8925D8(&qword_2A17B7048, sub_29D89259C, MEMORY[0x29EDC1E90]);
  v40 = sub_29D9355A8();

  v39(v37, v38);
  return v40;
}

uint64_t sub_29D88F5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = sub_29D935DA8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6945AC(a1, v37);
  sub_29D695734(0, &qword_2A17B1140, MEMORY[0x29EDC18F8], 1);
  sub_29D934528();
  if (swift_dynamicCast())
  {
    v34 = v36;
    v35 = a1;
    v14 = sub_29D934508();
    v15 = sub_29D934288();
    v17 = sub_29D6A173C(v15, v16, v14);

    v18 = sub_29D936338();
    sub_29D88FA18(v18, v17 & 1, v37);

    v19 = sub_29D936338();
    v20 = v19;
    if (v17)
    {
      sub_29D890E60(v19, v13);
    }

    else
    {
      sub_29D8915E8(v19, a3, a4, v5, v13);
    }

    v27 = v35;

    sub_29D85F948(0, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8], 1);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_29D943EA0;
    v28 = v38;
    v29 = v39;
    v30 = sub_29D693E2C(v37, v38);
    *(v26 + 56) = v28;
    *(v26 + 64) = *(v29 + 8);
    v31 = sub_29D693F78((v26 + 32));
    (*(*(v28 - 8) + 16))(v31, v30, v28);
    sub_29D6945AC(v27, v26 + 72);
    *(v26 + 136) = v9;
    *(v26 + 144) = sub_29D8925D8(&qword_2A17B2708, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
    v32 = sub_29D693F78((v26 + 112));
    (*(v10 + 32))(v32, v13, v9);

    sub_29D69417C(v37);
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v21 = sub_29D937898();
    sub_29D69C6C0(v21, qword_2A1A2BF10);
    v22 = sub_29D937878();
    v23 = sub_29D93A288();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9514D0, v37);
      _os_log_impl(&dword_29D677000, v22, v23, "[%s] Item is not a FeedItem. Returning.", v24, 0xCu);
      sub_29D69417C(v25);
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }

    sub_29D85F948(0, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8], 1);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_29D93DDB0;
    sub_29D6945AC(a1, v26 + 32);
  }

  return v26;
}

void sub_29D88FA18(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v51 = a3;
  sub_29D892620(0, &qword_2A17B7090, MEMORY[0x29EDC23D8], MEMORY[0x29EDC9C68]);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v46 - v11;
  v13 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v15 = sub_29D939D18();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = v46 - v22;
  sub_29D937B88();
  v52 = swift_allocBox();
  sub_29D937B18();
  sub_29D937AF8();
  sub_29D939D08();
  if (a2)
  {
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v24 = qword_2A1A2BE98;
    (*(v16 + 16))(v20, v23, v15);
    sub_29D935E88();
    v25 = v24;
    sub_29D933A98();
    sub_29D939D98();
    (*(v16 + 8))(v23, v15);
    v26 = sub_29D935D58();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    v53 = &unk_2A243F128;

    sub_29D88BBC8(&unk_2A243F0F8);
    v53 = &unk_2A243D870;
    v27 = sub_29D935E88();
    sub_29D88BBC8(v27);
    v28 = sub_29D939F18();
    v29 = HKUIJoinStringsForAutomationIdentifier();

    if (v29)
    {
      sub_29D939D68();

      v30 = sub_29D935D78();
      v31 = v51;
      v51[3] = v30;
      v31[4] = sub_29D8925D8(&qword_2A17B70A0, MEMORY[0x29EDC23E0], MEMORY[0x29EDC23D0]);
      sub_29D693F78(v31);
      sub_29D935D68();
LABEL_10:

      return;
    }

    __break(1u);
  }

  else
  {
    v49 = a1;
    v50 = v9;
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v32 = qword_2A1A2BE98;
    v46[2] = unk_2A1A2BEA0;
    v48 = *(v16 + 16);
    v48(v20, v23, v15);
    sub_29D935E88();
    v47 = v32;
    sub_29D933A98();
    v33 = sub_29D939D98();
    v46[0] = v34;
    v46[1] = v33;
    v35 = *(v16 + 8);
    v35(v23, v15);
    v36 = sub_29D935D58();
    (*(*(v36 - 8) + 56))(v50, 1, 1, v36);

    sub_29D939D08();
    v48(v20, v23, v15);
    sub_29D935E88();
    v37 = v47;
    sub_29D933A98();
    sub_29D939D98();
    v35(v23, v15);
    v38 = swift_allocObject();
    v39 = v49;
    *(v38 + 16) = v49;
    v53 = &unk_2A243F188;
    v40 = v39;
    sub_29D88BBC8(&unk_2A243F158);
    v53 = &unk_2A243D870;
    v41 = sub_29D935E88();
    sub_29D88BBC8(v41);
    v42 = sub_29D939F18();
    v43 = HKUIJoinStringsForAutomationIdentifier();

    if (v43)
    {
      sub_29D939D68();

      v44 = sub_29D936848();
      v45 = v51;
      v51[3] = v44;
      v45[4] = sub_29D8925D8(&qword_2A17B7098, MEMORY[0x29EDC28D0], MEMORY[0x29EDC28C8]);
      sub_29D693F78(v45);
      sub_29D936838();
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_29D890164()
{
  sub_29D935D48();
  sub_29D93A348();
  sub_29D936828();
  sub_29D93A348();
  sub_29D936DB8();
  return sub_29D93A348();
}

uint64_t sub_29D8901CC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_29D937B88();
  v4 = swift_projectBox();
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a2, v4, v3);
}

void sub_29D89025C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
  if (a1 && (type metadata accessor for BloodPressureDataTypeDetailViewController(0), swift_dynamicCastClass()))
  {
    v5 = sub_29D7D0C64();
  }

  else
  {
    v5 = 5;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a1;
  v11[4] = sub_29D897634;
  v11[5] = v6;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1107296256;
  v11[2] = sub_29D6C1F54;
  v11[3] = &unk_2A244B3A8;
  v7 = _Block_copy(v11);
  v8 = v4;
  v9 = a2;
  v10 = a1;

  [v8 fetchActiveJournalWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_29D8903A8(void *a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v49 = a4;
  v51 = a1;
  v10 = sub_29D939968();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_29D939998();
  v50 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v48 = a5;
    v18 = a2;
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v19 = sub_29D937898();
    sub_29D69C6C0(v19, qword_2A1A2BF10);
    v20 = a2;
    v21 = sub_29D937878();
    v22 = sub_29D93A288();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v46 = a3;
      v24 = v23;
      v25 = swift_slowAlloc();
      v47 = v11;
      v26 = v25;
      aBlock[0] = v25;
      *v24 = 136446722;
      v45 = a6;
      *(v24 + 4) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9514D0, aBlock);
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D96AF70, aBlock);
      *(v24 + 22) = 2080;
      v53 = a2;
      v27 = a2;
      sub_29D695734(0, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
      v28 = sub_29D939DA8();
      v30 = sub_29D6C2364(v28, v29, aBlock);
      a6 = v45;

      *(v24 + 24) = v30;
      _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s.%{public}s]: Error fetching active journal from health store: %s", v24, 0x20u);
      swift_arrayDestroy();
      v31 = v26;
      v11 = v47;
      MEMORY[0x29ED6BE30](v31, -1, -1);
      v32 = v24;
      a3 = v46;
      MEMORY[0x29ED6BE30](v32, -1, -1);
    }

    else
    {
    }

    a5 = v48;
  }

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v33 = sub_29D93A468();
  v34 = swift_allocObject();
  v35 = v51;
  *(v34 + 16) = v51;
  *(v34 + 24) = a3;
  *(v34 + 32) = v49;
  *(v34 + 40) = a5;
  *(v34 + 48) = a6;
  aBlock[4] = sub_29D897644;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244B3F8;
  v36 = _Block_copy(aBlock);
  v37 = a6;
  v38 = v36;
  v39 = v37;
  v40 = v35;
  v41 = a3;
  v42 = a5;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D8925D8(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D892620(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v17, v14, v38);
  _Block_release(v38);

  (*(v11 + 8))(v14, v10);
  return (*(v50 + 8))(v17, v52);
}

void sub_29D8908C0(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v75[-v12];
  type metadata accessor for BloodPressureSettingsFacade();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a4;
  type metadata accessor for BloodPressureJournalSettingsViewModel(0);
  swift_allocObject();
  v15 = a1;
  v16 = a2;
  v17 = a4;
  v14[5] = sub_29D7F280C(a1, 1);
  v18 = sub_29D93A028();
  v19 = *(*(v18 - 8) + 56);
  v19(v13, 1, 1, v18);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v14;

  sub_29D6BEBA4(0, 0, v13, &unk_29D951580, v20);

  v19(v13, 1, 1, v18);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v17;
  v21[5] = v14;
  v22 = v17;

  sub_29D6BEBA4(0, 0, v13, &unk_29D9409E0, v21);

  v23 = objc_allocWithZone(type metadata accessor for BloodPressureJournalSettingsViewController(0));
  v24 = v22;

  v26 = sub_29D8D9220(v25, v7, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = v14;
  *(v27 + 24) = v26;
  v28 = v26;

  v29 = v28;
  v30 = sub_29D938D08();
  v32 = v31;
  v33 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v34 = (v32 + v33[8]);
  v35 = *v34;
  v36 = v34[1];
  *v34 = sub_29D6C2FD0;
  v34[1] = v27;
  sub_29D694784(v35, v36);
  v30(v75, 0);
  v37 = swift_allocObject();
  *(v37 + 16) = v24;
  *(v37 + 24) = v29;
  v38 = v24;
  v39 = v29;
  v40 = sub_29D938D08();
  v42 = (v41 + v33[5]);
  v43 = *v42;
  v44 = v42[1];
  *v42 = sub_29D6C2FD8;
  v42[1] = v37;
  sub_29D694784(v43, v44);
  v40(v75, 0);
  v45 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v46 = swift_allocObject();
  *(v46 + 16) = v14;
  *(v46 + 24) = v45;

  v47 = sub_29D938D08();
  v49 = (v48 + v33[6]);
  v50 = *v49;
  v51 = v49[1];
  *v49 = sub_29D6C2FE0;
  v49[1] = v46;
  sub_29D694784(v50, v51);
  v47(v75, 0);

  v52 = swift_allocObject();
  *(v52 + 16) = v38;
  *(v52 + 24) = v7;
  *(v52 + 32) = v39;
  v53 = v38;
  v54 = v39;
  v55 = sub_29D938D08();
  v57 = (v56 + v33[7]);
  v58 = *v57;
  v59 = v57[1];
  *v57 = sub_29D6C2FE8;
  v57[1] = v52;
  sub_29D694784(v58, v59);
  v55(v75, 0);
  v60 = swift_allocObject();
  *(v60 + 16) = v54;
  v61 = v54;
  v62 = sub_29D938D08();
  v64 = (v63 + v33[9]);
  v65 = *v64;
  v66 = v64[1];
  *v64 = sub_29D6C2FF8;
  v64[1] = v60;
  sub_29D694784(v65, v66);
  v62(v75, 0);
  v67 = swift_allocObject();
  *(v67 + 16) = v61;
  v68 = v61;
  v69 = sub_29D938D08();
  v71 = (v70 + v33[10]);
  v72 = *v71;
  v73 = v71[1];
  *v71 = sub_29D6C3000;
  v71[1] = v67;
  sub_29D694784(v72, v73);
  v69(v75, 0);

  v74 = [objc_allocWithZone(MEMORY[0x29EDC7B80]) initWithRootViewController_];
  if (a5)
  {
    [a5 presentViewController:v74 animated:1 completion:0];
  }
}

void sub_29D890E60(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v51 = a2;
  v50 = sub_29D936BE8();
  v48 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50, v2);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v56 = &v48 - v6;
  v7 = sub_29D935C78();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v52 = sub_29D939D18();
  v12 = *(v52 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v52, v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v48 - v18;
  v20 = sub_29D937A28();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29D937B88();
  v57 = *(v25 - 8);
  v58 = v25;
  MEMORY[0x2A1C7C4A8](v25, v26);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B78();
  (*(v21 + 104))(v24, *MEMORY[0x29EDC77D8], v20);
  v29 = sub_29D937A98();
  sub_29D937A78();
  v29(v61, 0);
  v30 = sub_29D937A98();
  sub_29D937A18();
  v30(v61, 0);
  v31 = objc_opt_self();
  v32 = [v31 linkColor];
  v33 = sub_29D937A98();
  sub_29D937A68();
  v33(v61, 0);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v34 = qword_2A1A2BE98;
  v35 = v52;
  (*(v12 + 16))(v16, v19, v52);
  sub_29D935E88();
  v36 = v34;
  sub_29D933A98();
  sub_29D939D98();
  (*(v12 + 8))(v19, v35);
  sub_29D937B48();
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 16) = v55;
  v39 = v58;
  v61[3] = v58;
  v61[4] = MEMORY[0x29EDC7800];
  v40 = sub_29D693F78(v61);
  (*(v57 + 16))(v40, v28, v39);
  *v59 = 1;
  (*(v53 + 104))();
  v41 = v38;

  v42 = v56;
  sub_29D9379D8();
  v43 = [v31 secondarySystemGroupedBackgroundColor];
  sub_29D9379B8();
  sub_29D933E48();
  sub_29D9379A8();
  v44 = sub_29D9379E8();
  (*(*(v44 - 8) + 56))(v42, 0, 1, v44);
  v60 = &unk_2A243F1E8;
  sub_29D88BBC8(&unk_2A243F1B8);
  v60 = &unk_2A243D870;
  v45 = sub_29D935E88();
  sub_29D88BBC8(v45);
  v46 = sub_29D939F18();
  v47 = HKUIJoinStringsForAutomationIdentifier();

  if (v47)
  {
    sub_29D939D68();

    (*(v48 + 104))(v49, *MEMORY[0x29EDC2A38], v50);
    sub_29D935D98();

    (*(v57 + 8))(v28, v58);
  }

  else
  {
    __break(1u);
  }
}

void sub_29D8915E8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v64 = a1;
  v65 = a3;
  v62 = a2;
  v58 = a5;
  v57 = sub_29D936BE8();
  v55 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57, v5);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v67 = &v54 - v9;
  v10 = sub_29D935C78();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v59 = sub_29D939D18();
  v15 = *(v59 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v59, v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v54 - v21;
  v23 = sub_29D937A28();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D937B88();
  v68 = *(v28 - 8);
  v69 = v28;
  MEMORY[0x2A1C7C4A8](v28, v29);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B78();
  (*(v24 + 104))(v27, *MEMORY[0x29EDC77D8], v23);
  v32 = sub_29D937A98();
  sub_29D937A78();
  v32(v71, 0);
  v33 = sub_29D937A98();
  sub_29D937A18();
  v33(v71, 0);
  v34 = objc_opt_self();
  v35 = [v34 linkColor];
  v36 = sub_29D937A98();
  sub_29D937A68();
  v36(v71, 0);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v37 = qword_2A1A2BE98;
  v38 = v59;
  (*(v15 + 16))(v19, v22, v59);
  sub_29D935E88();
  v39 = v37;
  sub_29D933A98();
  sub_29D939D98();
  (*(v15 + 8))(v22, v38);
  sub_29D937B48();
  v40 = swift_allocObject();
  v42 = v64;
  v41 = v65;
  v43 = v62;
  *(v40 + 16) = v64;
  *(v40 + 24) = v43;
  *(v40 + 32) = v41;
  *(v40 + 40) = v63;
  v44 = v69;
  v71[3] = v69;
  v71[4] = MEMORY[0x29EDC7800];
  v45 = sub_29D693F78(v71);
  (*(v68 + 16))(v45, v31, v44);
  v46 = v66;
  *v66 = 1;
  (*(v60 + 104))(v46, *MEMORY[0x29EDC22C0], v61);
  v47 = v42;
  sub_29D935E88();

  v48 = v67;
  sub_29D9379D8();
  v49 = [v34 secondarySystemGroupedBackgroundColor];
  sub_29D9379B8();
  sub_29D933E48();
  sub_29D9379A8();
  v50 = sub_29D9379E8();
  (*(*(v50 - 8) + 56))(v48, 0, 1, v50);
  v70 = &unk_2A243F248;
  sub_29D88BBC8(&unk_2A243F218);
  v70 = &unk_2A243D870;
  v51 = sub_29D935E88();
  sub_29D88BBC8(v51);
  v52 = sub_29D939F18();
  v53 = HKUIJoinStringsForAutomationIdentifier();

  if (v53)
  {
    sub_29D939D68();

    (*(v55 + 104))(v56, *MEMORY[0x29EDC2A38], v57);
    sub_29D935D98();

    (*(v68 + 8))(v31, v69);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D891D9C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x29EDB9BC8];
  sub_29D892620(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v22 - v11;
  type metadata accessor for BloodPressureJournalLoggingFlowManager();
  *(swift_initStackObject() + 16) = a2;
  type metadata accessor for BloodPressureJournalLoggingAnalyticsUtilities();
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = a2;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = 0;
  v13[5] = v14;
  v15 = sub_29D9339F8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = a2;
  sub_29D8D1130(0, 6, a5, v12, 2, 2);
  sub_29D8975A0(v12, &qword_2A1A25780, v8);
  type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  if (swift_dynamicCastClass())
  {
    v17 = sub_29D7D0C64();
  }

  else
  {
    v17 = 5;
  }

  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v18 = swift_allocObject();
  v18[4] = 0;
  v18[5] = 0;
  v18[2] = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = 0;
  v18[3] = v19;
  v20 = v16;
  sub_29D6AA594(v17, 5);

  sub_29D783980(a1, 1, a5, 0);
}

uint64_t sub_29D891FE8(void *a1, void *a2)
{
  v4 = sub_29D939968();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D939998();
  v9 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  if (swift_dynamicCastClass())
  {
    v13 = sub_29D7D0C64();
  }

  else
  {
    v13 = 5;
  }

  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v14 = swift_allocObject();
  v14[4] = 0;
  v14[5] = 0;
  v14[2] = a2;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = 0;
  v14[3] = v15;
  v16 = a2;
  sub_29D6AA594(v13, 3);

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v17 = sub_29D93A468();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  aBlock[4] = sub_29D897570;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244B308;
  v19 = _Block_copy(aBlock);
  v20 = v16;
  v21 = a1;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D8925D8(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D892620(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v12, v8, v19);
  _Block_release(v19);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v24);
}

uint64_t sub_29D892364(void *a1, void *a2)
{
  type metadata accessor for BloodPressureJournalCreationFlowManager();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = a1;
  v5 = a1;
  v6 = sub_29D89AE08(0, 0, 0, 7);
  [a2 presentViewController:v6 animated:1 completion:0];

  swift_setDeallocating();
}

void sub_29D892420(uint64_t a1)
{
  if (!qword_2A17B7030)
  {
    sub_29D892508(255);
    sub_29D75A38C(255);
    v1 = MEMORY[0x29EDC2110];
    sub_29D8925D8(&qword_2A17B7050, sub_29D892508, MEMORY[0x29EDC2110]);
    sub_29D8925D8(&qword_2A17B3C00, sub_29D75A38C, v1);
    v2 = sub_29D935EE8();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B7030);
    }
  }
}

void sub_29D892508(uint64_t a1)
{
  if (!qword_2A17B7038)
  {
    sub_29D89259C(255);
    sub_29D8925D8(&qword_2A17B7048, sub_29D89259C, MEMORY[0x29EDC1E90]);
    v1 = sub_29D9357B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7038);
    }
  }
}

uint64_t sub_29D8925D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D892620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D892684(uint64_t a1)
{
  if (!qword_2A17B7060)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29D8926F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B7060);
    }
  }
}

unint64_t sub_29D8926F4()
{
  result = qword_2A17B37D8;
  if (!qword_2A17B37D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B37D8);
  }

  return result;
}

unint64_t sub_29D89275C()
{
  result = qword_2A17B7068;
  if (!qword_2A17B7068)
  {
    sub_29D892420(255);
    v1 = MEMORY[0x29EDC2108];
    sub_29D8925D8(&qword_2A17B7070, sub_29D892508, MEMORY[0x29EDC2108]);
    sub_29D8925D8(&qword_2A17B7078, sub_29D75A38C, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7068);
  }

  return result;
}

uint64_t sub_29D892838(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D88E254(v2);
  }

  return result;
}

uint64_t sub_29D892898(unint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D88E6BC(v4, a3);
  }

  return result;
}

void sub_29D892948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D8929F0(void *a1)
{
  v77 = a1;
  v2 = *v1;
  sub_29D897AA8(0);
  v74 = v3;
  v73 = *(v3 - 1);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v72 = (v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_29D93A248();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v78 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733548(0);
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v85 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73370C(0);
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v88 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x29EDC9C68];
  sub_29D892620(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v82 = v69 - v18;
  sub_29D710880(0);
  v80 = *(v19 - 1);
  v81 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v79 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v15);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v25 = v69 - v24;
  v26 = sub_29D9371A8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v34 = v69 - v33;
  v35 = *(v2 + qword_2A17D09A8 + 16);
  v91 = v1;
  v36 = *(v1 + v35);
  v37 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v38 = v77;
  v75 = v37;
  v76 = v36;
  sub_29D937278();
  v77 = v38;
  v70 = v2;
  v39 = sub_29D93A028();
  v40 = *(*(v39 - 8) + 56);
  v71 = v25;
  v40(v25, 1, 1, v39);
  (*(v27 + 16))(v31, v34, v26);
  sub_29D939FF8();
  v74 = v38;
  v41 = v91;

  v42 = sub_29D939FE8();
  v43 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v44 = (v28 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = MEMORY[0x29EDCA390];
  *(v45 + 2) = v42;
  *(v45 + 3) = v46;
  v47 = v74;
  *(v45 + 4) = v41;
  *(v45 + 5) = v47;
  (*(v27 + 32))(&v45[v43], v31, v26);
  *&v45[v44] = v2;
  sub_29D6BEBA4(0, 0, v71, &unk_29D9515B8, v45);

  (*(v27 + 8))(v34, v26);
  v48 = v77;
  v92 = sub_29D937288();
  v69[1] = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v49 = sub_29D93A468();
  v94 = v49;
  v75 = sub_29D93A448();
  v50 = *(v75 - 8);
  v74 = *(v50 + 56);
  v76 = v50 + 56;
  v51 = v82;
  (v74)(v82, 1, 1, v75);
  sub_29D6B7D8C(0);
  v69[0] = MEMORY[0x29EDB8A00];
  sub_29D8925D8(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  v73 = sub_29D706380();
  v52 = v79;
  sub_29D938538();
  v72 = MEMORY[0x29EDCA298];
  sub_29D8975A0(v51, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = v48;
  v54[4] = v70;
  v71 = MEMORY[0x29EDB89E8];
  sub_29D8925D8(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
  v55 = v48;
  v56 = v81;
  sub_29D938588();

  (v80)[1](v52, v56);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v57 = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6A0C58();
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_29D940030;
  *(v58 + 32) = v57;
  v92 = 0;
  v93 = 0xE000000000000000;
  v81 = v57;
  sub_29D93AA18();

  v92 = sub_29D93AF08();
  v93 = v59;
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D95D280);
  v60 = v78;
  sub_29D93A258();

  v61 = swift_allocObject();
  *(v61 + 16) = v55;
  *(v61 + 24) = v55;
  v80 = v55;
  sub_29D938228();
  sub_29D895F60(0);
  sub_29D895EDC(0);
  sub_29D8925D8(&qword_2A1A22238, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
  sub_29D8925D8(&qword_2A17B34D0, sub_29D895EDC, v69[0]);
  v62 = v85;
  v63 = v84;
  sub_29D938508();

  (*(v83 + 8))(v60, v63);
  v64 = sub_29D93A468();
  v92 = v64;
  (v74)(v51, 1, 1, v75);
  sub_29D8925D8(&qword_2A17B34E0, sub_29D733548, MEMORY[0x29EDB89A8]);
  v66 = v87;
  v65 = v88;
  sub_29D938538();
  sub_29D8975A0(v51, &unk_2A1A248F0, v72);
  (*(v86 + 8))(v62, v66);

  swift_allocObject();
  swift_weakInit();
  sub_29D8925D8(&qword_2A17B34F0, sub_29D73370C, v71);
  v67 = v90;
  sub_29D938478();

  (*(v89 + 8))(v65, v67);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D893880(void *a1)
{
  v77 = a1;
  v2 = *v1;
  sub_29D897708(0);
  v74 = v3;
  v73 = *(v3 - 1);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v72 = (v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_29D93A248();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v78 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733548(0);
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v85 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73370C(0);
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v88 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x29EDC9C68];
  sub_29D892620(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v82 = v69 - v18;
  sub_29D710880(0);
  v80 = *(v19 - 1);
  v81 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v79 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v15);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v25 = v69 - v24;
  v26 = sub_29D9371A8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v34 = v69 - v33;
  v35 = *(v2 + qword_2A17D09A8 + 16);
  v91 = v1;
  v36 = *(v1 + v35);
  v37 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v38 = v77;
  v75 = v37;
  v76 = v36;
  sub_29D937278();
  v77 = v38;
  v70 = v2;
  v39 = sub_29D93A028();
  v40 = *(*(v39 - 8) + 56);
  v71 = v25;
  v40(v25, 1, 1, v39);
  (*(v27 + 16))(v31, v34, v26);
  sub_29D939FF8();
  v74 = v38;
  v41 = v91;

  v42 = sub_29D939FE8();
  v43 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v44 = (v28 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = MEMORY[0x29EDCA390];
  *(v45 + 2) = v42;
  *(v45 + 3) = v46;
  v47 = v74;
  *(v45 + 4) = v41;
  *(v45 + 5) = v47;
  (*(v27 + 32))(&v45[v43], v31, v26);
  *&v45[v44] = v2;
  sub_29D6BEBA4(0, 0, v71, &unk_29D951598, v45);

  (*(v27 + 8))(v34, v26);
  v48 = v77;
  v92 = sub_29D937288();
  v69[1] = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v49 = sub_29D93A468();
  v94 = v49;
  v75 = sub_29D93A448();
  v50 = *(v75 - 8);
  v74 = *(v50 + 56);
  v76 = v50 + 56;
  v51 = v82;
  (v74)(v82, 1, 1, v75);
  sub_29D6B7D8C(0);
  v69[0] = MEMORY[0x29EDB8A00];
  sub_29D8925D8(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  v73 = sub_29D706380();
  v52 = v79;
  sub_29D938538();
  v72 = MEMORY[0x29EDCA298];
  sub_29D8975A0(v51, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = v48;
  v54[4] = v70;
  v71 = MEMORY[0x29EDB89E8];
  sub_29D8925D8(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
  v55 = v48;
  v56 = v81;
  sub_29D938588();

  (v80)[1](v52, v56);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v57 = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6A0C58();
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_29D940030;
  *(v58 + 32) = v57;
  v92 = 0;
  v93 = 0xE000000000000000;
  v81 = v57;
  sub_29D93AA18();

  v92 = sub_29D93AF08();
  v93 = v59;
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D95D280);
  v60 = v78;
  sub_29D93A258();

  v61 = swift_allocObject();
  *(v61 + 16) = v55;
  *(v61 + 24) = v55;
  v80 = v55;
  sub_29D938228();
  sub_29D895F60(0);
  sub_29D895EDC(0);
  sub_29D8925D8(&qword_2A1A22238, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
  sub_29D8925D8(&qword_2A17B34D0, sub_29D895EDC, v69[0]);
  v62 = v85;
  v63 = v84;
  sub_29D938508();

  (*(v83 + 8))(v60, v63);
  v64 = sub_29D93A468();
  v92 = v64;
  (v74)(v51, 1, 1, v75);
  sub_29D8925D8(&qword_2A17B34E0, sub_29D733548, MEMORY[0x29EDB89A8]);
  v66 = v87;
  v65 = v88;
  sub_29D938538();
  sub_29D8975A0(v51, &unk_2A1A248F0, v72);
  (*(v86 + 8))(v62, v66);

  swift_allocObject();
  swift_weakInit();
  sub_29D8925D8(&qword_2A17B34F0, sub_29D73370C, v71);
  v67 = v90;
  sub_29D938478();

  (*(v89 + 8))(v65, v67);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D894710(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v51 = a2;
  v6 = *v4;
  sub_29D892620(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v49 = v48 - v9;
  sub_29D710880(0);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v50 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1(0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v56 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = v48 - v19;
  v21 = sub_29D9371A8();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v6;
  v48[1] = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v26 = sub_29D9371B8();
  LODWORD(a1) = [v26 areAllRequirementsSatisfied];

  v27 = MEMORY[0x29EDC2000];
  if (!a1)
  {
    v27 = MEMORY[0x29EDC1FF8];
  }

  (*(v14 + 104))(v20, *v27, v13);
  sub_29D935528();
  (*(v22 + 8))(v25, v21);
  v28 = v57;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v29 = sub_29D937898();
  sub_29D69C6C0(v29, qword_2A1A2C008);

  v30 = sub_29D937878();
  v31 = sub_29D93A268();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v58[0] = v33;
    *v32 = 136446722;
    v34 = sub_29D93AF08();
    v36 = sub_29D6C2364(v34, v35, v58);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_29D6C2364(0xD00000000000001ELL, 0x800000029D96ADA0, v58);
    *(v32 + 22) = 2080;
    sub_29D935518();
    v37 = sub_29D939DA8();
    v39 = sub_29D6C2364(v37, v38, v58);

    *(v32 + 24) = v39;
    _os_log_impl(&dword_29D677000, v30, v31, "[%{public}s.%{public}s]: Visibility: %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v33, -1, -1);
    MEMORY[0x29ED6BE30](v32, -1, -1);
  }

  v58[0] = sub_29D937288();
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v40 = sub_29D93A468();
  v58[3] = v40;
  v41 = sub_29D93A448();
  v42 = v49;
  (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
  sub_29D6B7D8C(0);
  sub_29D8925D8(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D706380();
  v43 = v50;
  sub_29D938538();
  sub_29D8975A0(v42, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v28;
  sub_29D8925D8(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
  v46 = v53;
  sub_29D938588();

  (*(v52 + 8))(v43, v46);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D89504C(void *a1)
{
  v77 = a1;
  v2 = *v1;
  sub_29D8929B4(0);
  v74 = v3;
  v73 = *(v3 - 1);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v72 = (v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_29D93A248();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v78 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733548(0);
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v85 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73370C(0);
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v88 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x29EDC9C68];
  sub_29D892620(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  v82 = v69 - v18;
  sub_29D710880(0);
  v80 = *(v19 - 1);
  v81 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v79 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v15);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v25 = v69 - v24;
  v26 = sub_29D9371A8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v34 = v69 - v33;
  v35 = *(v2 + qword_2A17D09A8 + 16);
  v91 = v1;
  v36 = *(v1 + v35);
  v37 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v38 = v77;
  v75 = v37;
  v76 = v36;
  sub_29D937278();
  v77 = v38;
  v70 = v2;
  v39 = sub_29D93A028();
  v40 = *(*(v39 - 8) + 56);
  v71 = v25;
  v40(v25, 1, 1, v39);
  (*(v27 + 16))(v31, v34, v26);
  sub_29D939FF8();
  v74 = v38;
  v41 = v91;

  v42 = sub_29D939FE8();
  v43 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v44 = (v28 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = MEMORY[0x29EDCA390];
  *(v45 + 2) = v42;
  *(v45 + 3) = v46;
  v47 = v74;
  *(v45 + 4) = v41;
  *(v45 + 5) = v47;
  (*(v27 + 32))(&v45[v43], v31, v26);
  *&v45[v44] = v2;
  sub_29D6BEBA4(0, 0, v71, &unk_29D951568, v45);

  (*(v27 + 8))(v34, v26);
  v48 = v77;
  v92 = sub_29D937288();
  v69[1] = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v49 = sub_29D93A468();
  v94 = v49;
  v75 = sub_29D93A448();
  v50 = *(v75 - 8);
  v74 = *(v50 + 56);
  v76 = v50 + 56;
  v51 = v82;
  (v74)(v82, 1, 1, v75);
  sub_29D6B7D8C(0);
  v69[0] = MEMORY[0x29EDB8A00];
  sub_29D8925D8(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  v73 = sub_29D706380();
  v52 = v79;
  sub_29D938538();
  v72 = MEMORY[0x29EDCA298];
  sub_29D8975A0(v51, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = v48;
  v54[4] = v70;
  v71 = MEMORY[0x29EDB89E8];
  sub_29D8925D8(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
  v55 = v48;
  v56 = v81;
  sub_29D938588();

  (v80)[1](v52, v56);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v57 = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6A0C58();
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_29D940030;
  *(v58 + 32) = v57;
  v92 = 0;
  v93 = 0xE000000000000000;
  v81 = v57;
  sub_29D93AA18();

  v92 = sub_29D93AF08();
  v93 = v59;
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D95D280);
  v60 = v78;
  sub_29D93A258();

  v61 = swift_allocObject();
  *(v61 + 16) = v55;
  *(v61 + 24) = v55;
  v80 = v55;
  sub_29D938228();
  sub_29D895F60(0);
  sub_29D895EDC(0);
  sub_29D8925D8(&qword_2A1A22238, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
  sub_29D8925D8(&qword_2A17B34D0, sub_29D895EDC, v69[0]);
  v62 = v85;
  v63 = v84;
  sub_29D938508();

  (*(v83 + 8))(v60, v63);
  v64 = sub_29D93A468();
  v92 = v64;
  (v74)(v51, 1, 1, v75);
  sub_29D8925D8(&qword_2A17B34E0, sub_29D733548, MEMORY[0x29EDB89A8]);
  v66 = v87;
  v65 = v88;
  sub_29D938538();
  sub_29D8975A0(v51, &unk_2A1A248F0, v72);
  (*(v86 + 8))(v62, v66);

  swift_allocObject();
  swift_weakInit();
  sub_29D8925D8(&qword_2A17B34F0, sub_29D73370C, v71);
  v67 = v90;
  sub_29D938478();

  (*(v89 + 8))(v65, v67);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

void sub_29D895EDC(uint64_t a1)
{
  if (!qword_2A17B34C8)
  {
    sub_29D895F60(255);
    sub_29D695734(255, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
    v1 = sub_29D938238();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B34C8);
    }
  }
}

void sub_29D895F60(uint64_t a1)
{
  if (!qword_2A17B2958)
  {
    sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    v1 = sub_29D939FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2958);
    }
  }
}

uint64_t sub_29D89603C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_29D6C383C;

  return sub_29D88DA38(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_29D896174(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_29D6C383C;

  return sub_29D88DECC(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_29D8962DC(void *a1, uint64_t a2)
{
  v78 = a1;
  v3 = *v2;
  sub_29D897E20(0, a2);
  v75 = v4;
  v74 = *(v4 - 1);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v73 = (v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_29D93A248();
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v79 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D733548(0);
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v86 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D73370C(0);
  v90 = *(v13 - 8);
  v91 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v89 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x29EDC9C68];
  sub_29D892620(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v83 = v70 - v19;
  sub_29D710880(0);
  v81 = *(v20 - 1);
  v82 = v20;
  MEMORY[0x2A1C7C4A8](v20, v21);
  v80 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D892620(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], v16);
  MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  v26 = v70 - v25;
  v27 = sub_29D9371A8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = v70 - v34;
  v36 = *(v3 + qword_2A17D09A8 + 16);
  v92 = v2;
  v37 = *(v2 + v36);
  v38 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  v39 = v78;
  v76 = v38;
  v77 = v37;
  sub_29D937278();
  v78 = v39;
  v71 = v3;
  v40 = sub_29D93A028();
  v41 = *(*(v40 - 8) + 56);
  v72 = v26;
  v41(v26, 1, 1, v40);
  (*(v28 + 16))(v32, v35, v27);
  sub_29D939FF8();
  v75 = v39;
  v42 = v92;

  v43 = sub_29D939FE8();
  v44 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v45 = (v29 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = MEMORY[0x29EDCA390];
  *(v46 + 2) = v43;
  *(v46 + 3) = v47;
  v48 = v75;
  *(v46 + 4) = v42;
  *(v46 + 5) = v48;
  (*(v28 + 32))(&v46[v44], v32, v27);
  *&v46[v45] = v3;
  sub_29D6BEBA4(0, 0, v72, &unk_29D9515D8, v46);

  (*(v28 + 8))(v35, v27);
  v49 = v78;
  v93 = sub_29D937288();
  v70[1] = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v50 = sub_29D93A468();
  v95 = v50;
  v76 = sub_29D93A448();
  v51 = *(v76 - 8);
  v75 = *(v51 + 56);
  v77 = v51 + 56;
  v52 = v83;
  (v75)(v83, 1, 1, v76);
  sub_29D6B7D8C(0);
  v70[0] = MEMORY[0x29EDB8A00];
  sub_29D8925D8(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  v74 = sub_29D706380();
  v53 = v80;
  sub_29D938538();
  v73 = MEMORY[0x29EDCA298];
  sub_29D8975A0(v52, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v49;
  v55[4] = v71;
  v72 = MEMORY[0x29EDB89E8];
  sub_29D8925D8(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
  v56 = v49;
  v57 = v82;
  sub_29D938588();

  (v81)[1](v53, v57);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v58 = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  sub_29D6A0C58();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_29D940030;
  *(v59 + 32) = v58;
  v93 = 0;
  v94 = 0xE000000000000000;
  v82 = v58;
  sub_29D93AA18();

  v93 = sub_29D93AF08();
  v94 = v60;
  MEMORY[0x29ED6A240](0xD000000000000015, 0x800000029D95D280);
  v61 = v79;
  sub_29D93A258();

  v62 = swift_allocObject();
  *(v62 + 16) = v56;
  *(v62 + 24) = v56;
  v81 = v56;
  sub_29D938228();
  sub_29D895F60(0);
  sub_29D895EDC(0);
  sub_29D8925D8(&qword_2A1A22238, MEMORY[0x29EDC2E88], MEMORY[0x29EDC2E80]);
  sub_29D8925D8(&qword_2A17B34D0, sub_29D895EDC, v70[0]);
  v63 = v86;
  v64 = v85;
  sub_29D938508();

  (*(v84 + 8))(v61, v64);
  v65 = sub_29D93A468();
  v93 = v65;
  (v75)(v52, 1, 1, v76);
  sub_29D8925D8(&qword_2A17B34E0, sub_29D733548, MEMORY[0x29EDB89A8]);
  v67 = v88;
  v66 = v89;
  sub_29D938538();
  sub_29D8975A0(v52, &unk_2A1A248F0, v73);
  (*(v87 + 8))(v63, v67);

  swift_allocObject();
  swift_weakInit();
  sub_29D8925D8(&qword_2A17B34F0, sub_29D73370C, v72);
  v68 = v91;
  sub_29D938478();

  (*(v90 + 8))(v66, v68);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();
}

uint64_t sub_29D89716C()
{
  v0 = sub_29D9356A8();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v26[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v26[-1] - v7;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v9 = sub_29D937898();
  sub_29D69C6C0(v9, qword_2A1A2BF10);
  v10 = sub_29D937878();
  v11 = sub_29D93A268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D9514D0, v26);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD000000000000031, 0x800000029D96AFA0, v26);
    _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s.%{public}s]: Creating Blood Pressure Journal set up data source", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  sub_29D936318();
  sub_29D693E2C(v26, v26[3]);
  v14 = sub_29D933EC8();
  v15 = sub_29D93A598();

  sub_29D69417C(v26);
  sub_29D75A420(0);
  v17 = objc_allocWithZone(v16);
  v18 = v15;
  v19 = sub_29D936A38();
  sub_29D935658();
  sub_29D935618();
  v20 = *(v1 + 8);
  v20(v5, v0);
  v21 = sub_29D935638();
  *v22 = 0x4034000000000000;
  v21(v26, 0);
  sub_29D8925D8(&unk_2A17B6100, sub_29D75A420, MEMORY[0x29EDC2988]);
  v23 = sub_29D9355A8();

  v20(v8, v0);
  return v23;
}

uint64_t sub_29D8974E0(uint64_t a1, uint64_t a2)
{
  sub_29D936378();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);

  return sub_29D88F5F8(a1, a2, v5, v6, v7);
}

uint64_t sub_29D897578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D8975A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D892620(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D897654(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29D6C383C;

  return sub_29D7C4B94(a1, v4, v5, v6);
}

void sub_29D897708(uint64_t a1)
{
  if (!qword_2A17B70A8)
  {
    sub_29D8344D8(255);
    sub_29D8925D8(&qword_2A17B5F48, sub_29D8344D8, MEMORY[0x29EDC1E08]);
    v1 = sub_29D935508();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B70A8);
    }
  }
}

uint64_t sub_29D897808(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_29D6C383C;

  return sub_29D88D928(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_29D897940(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_29D6C383C;

  return sub_29D88D928(a1, v7, v8, v9, v10, v1 + v6);
}

void sub_29D897AA8(uint64_t a1)
{
  if (!qword_2A17B70B0)
  {
    sub_29D6FC6EC(255);
    sub_29D8925D8(&qword_2A17B2720, sub_29D6FC6EC, MEMORY[0x29EDC2110]);
    v1 = sub_29D935508();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B70B0);
    }
  }
}

uint64_t sub_29D897B80(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_29D6C383C;

  return sub_29D88D6D4(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_29D897CB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_29D6C383C;

  return sub_29D88D6D4(a1, v7, v8, v9, v10, v1 + v6);
}

void sub_29D897E20(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B70B8)
  {
    sub_29D897EB4(255, a2);
    sub_29D8925D8(&qword_2A17B70D0, sub_29D897EB4, MEMORY[0x29EDC2030]);
    v2 = sub_29D935508();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B70B8);
    }
  }
}

void sub_29D897EB4(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B70C0)
  {
    sub_29D897F30(255, a2);
    v4 = v3;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v7 = type metadata accessor for BloodPressureJournalHighlightsDataSource(a1, v4, OpaqueTypeConformance2, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_2A17B70C0);
    }
  }
}

void sub_29D897F30(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B70C8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B70C8);
    }
  }
}

uint64_t sub_29D897F90(uint64_t a1)
{

  return MEMORY[0x2A1C733A0](v1, a1, 7);
}

uint64_t sub_29D898048(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_29D6C383C;

  return sub_29D88DB48(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_29D898180()
{
  v1 = sub_29D9371A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_29D936978();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29D898260(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_29D9371A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_29D6C383C;

  return sub_29D88DB48(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t type metadata accessor for AFibBurdenPDFChartPoint(uint64_t a1)
{
  result = qword_2A17B70E0;
  if (!qword_2A17B70E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D898458(uint64_t a1)
{
  sub_29D9331D8();
  if (v1 <= 0x3F)
  {
    sub_29D8984E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D8984E4(uint64_t a1)
{
  if (!qword_2A17B70F0)
  {
    sub_29D6E6184();
    v1 = sub_29D93A128();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B70F0);
    }
  }
}

unint64_t sub_29D898554()
{
  result = qword_2A17B1EF0;
  if (!qword_2A17B1EF0)
  {
    sub_29D9331D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1EF0);
  }

  return result;
}

uint64_t sub_29D8985AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D9331D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_29D898618()
{
  result = qword_2A17B70F8;
  if (!qword_2A17B70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B70F8);
  }

  return result;
}

uint64_t sub_29D89866C()
{
  sub_29D8997CC(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v36 = &v31 - v2;
  sub_29D6BE524(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D899A34(0);
  v35 = v9;
  v37 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D899B44(0);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v34 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for CMVO2MaxRetrocomputeStatePublisher());
  v17 = sub_29D843650(0);
  v18 = *&v17[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject];
  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);

  os_unfair_lock_unlock((v18 + 24));
  v40 = v19;
  *(swift_allocObject() + 16) = v17;
  sub_29D899AD0(0, &qword_2A1A22368, sub_29D843F8C, MEMORY[0x29EDB8A60]);
  sub_29D89991C(0);
  sub_29D8999AC();
  v20 = v17;
  sub_29D938428();

  sub_29D899C24(&qword_2A1A22710, sub_29D6BE524, MEMORY[0x29EDB88A0]);
  v21 = sub_29D938418();
  (*(v5 + 8))(v8, v4);

  v40 = v21;
  *(swift_allocObject() + 16) = v33;
  sub_29D899AD0(0, &qword_2A1A22398, sub_29D89991C, MEMORY[0x29EDB89F8]);
  sub_29D6BCA50();
  v22 = v32;
  sub_29D938468();

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v23 = sub_29D93A468();
  v40 = v23;
  v24 = sub_29D93A448();
  v25 = v36;
  (*(*(v24 - 8) + 56))(v36, 1, 1, v24);
  sub_29D899C24(&qword_2A17B7120, sub_29D899A34, MEMORY[0x29EDB8908]);
  sub_29D706380();
  v27 = v34;
  v26 = v35;
  sub_29D938538();
  sub_29D7339C0(v25);

  (*(v37 + 8))(v22, v26);
  sub_29D899C24(&qword_2A17B7128, sub_29D899B44, MEMORY[0x29EDB89E8]);
  v28 = v38;
  v29 = sub_29D938418();
  (*(v39 + 8))(v27, v28);
  return v29;
}

uint64_t sub_29D898C04()
{
  v1 = v0;
  v2 = *v0;
  sub_29D7C0358(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[4])
  {
    v9 = v1[4];
  }

  else
  {
    v9 = sub_29D89866C();
  }

  v12[1] = v9;
  *(swift_allocObject() + 16) = v2;
  sub_29D6AD548();
  sub_29D8997CC(0, &qword_2A17B4F50, MEMORY[0x29EDC2240], MEMORY[0x29EDC9A40]);
  sub_29D899C24(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);

  sub_29D938468();

  sub_29D899C24(&qword_2A17B4F70, sub_29D7C0358, MEMORY[0x29EDB8908]);
  sub_29D9383F8();
  (*(v5 + 8))(v8, v4);
  sub_29D936458();
  sub_29D935588();

  sub_29D7BFFF8(0);
  sub_29D899C24(&qword_2A17B4F00, sub_29D7BFFF8, MEMORY[0x29EDC1E90]);
  v10 = sub_29D9355C8();

  return v10;
}

uint64_t sub_29D898F04@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D933A58();
  v5 = *(v4 - 8);
  result = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_29D8997CC(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    sub_29D9359D8();
    v10 = swift_allocObject();
    v15 = xmmword_29D93DDB0;
    *(v10 + 16) = xmmword_29D93DDB0;
    sub_29D75A518(0);
    v11 = swift_allocObject();
    *(v11 + 16) = v15;
    sub_29D899830(v16);
    *(v11 + 56) = &type metadata for CenteredLabelWithSpinnerItem;
    *(v11 + 64) = sub_29D69F490();
    v12 = swift_allocObject();
    *(v11 + 32) = v12;
    v13 = v16[1];
    v12[1] = v16[0];
    v12[2] = v13;
    v14 = v16[3];
    v12[3] = v16[2];
    v12[4] = v14;
    sub_29D933A48();
    sub_29D933A18();
    (*(v5 + 8))(v9, v4);
    result = sub_29D9359C8();
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  *a2 = v10;
  return result;
}

uint64_t sub_29D899144()
{
  type metadata accessor for CenteredLabelWithSpinnerCell();
  sub_29D899C24(&qword_2A17B7108, type metadata accessor for CenteredLabelWithSpinnerCell, &unk_29D93FED0);
  return sub_29D93A348();
}

uint64_t sub_29D8991B4()
{
  sub_29D8997CC(0, &qword_2A17B7100, MEMORY[0x29EDC2078], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v14[-v2];
  v4 = sub_29D9356A8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D935698();
  v9 = sub_29D935638();
  *(v10 + 16) = 0;
  v9(v14, 0);
  v11 = sub_29D935648();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  sub_29D935688();
  sub_29D9364F8();
  v12 = sub_29D935608();
  (*(v5 + 8))(v8, v4);
  return v12;
}

void sub_29D899380(uint64_t a1@<X0>, BOOL *a3@<X8>)
{
  v4 = *a1;
  if (*(a1 + 8))
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2C008);
    v6 = v4;
    v7 = sub_29D937878();
    v8 = sub_29D93A288();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136446466;
      v11 = sub_29D93AF08();
      v13 = sub_29D6C2364(v11, v12, &v28);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
      v14 = sub_29D939DA8();
      v16 = sub_29D6C2364(v14, v15, &v28);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s] Failed to get retrocompute state: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }

    else
    {

      sub_29D6BE118(v4);
    }

    v27 = 0;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2C008);
    sub_29D899C18(v4);
    v18 = v4;
    v19 = sub_29D937878();
    v20 = sub_29D93A2A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136446466;
      v23 = sub_29D93AF08();
      v25 = sub_29D6C2364(v23, v24, &v28);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2048;
      v26 = [v18 status];
      sub_29D6BE118(v4);
      *(v21 + 14) = v26;
      sub_29D6BE118(v4);
      _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s] Received retrocompute status: %ld", v21, 0x16u);
      sub_29D69417C(v22);
      MEMORY[0x29ED6BE30](v22, -1, -1);
      MEMORY[0x29ED6BE30](v21, -1, -1);
    }

    else
    {
      sub_29D6BE118(v4);
      sub_29D6BE118(v4);
    }

    v27 = [v18 status] == 2;
  }

  *a3 = v27;
}

uint64_t sub_29D8996EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D89976C()
{
  v1 = *(*v0 + 16);
  sub_29D935E88();
  return v1;
}

void sub_29D8997CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D899830(void *a1@<X8>)
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_29D9334A8();
  v6 = v5;

  *a1 = 0xD000000000000014;
  a1[1] = 0x800000029D96B170;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = 0x4020000000000000;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
}

void sub_29D89991C(uint64_t a1)
{
  if (!qword_2A1A21EB8)
  {
    sub_29D69567C(255, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6B7370(255, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    v1 = sub_29D93AEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21EB8);
    }
  }
}

unint64_t sub_29D8999AC()
{
  result = qword_2A1A22370;
  if (!qword_2A1A22370)
  {
    sub_29D899AD0(255, &qword_2A1A22368, sub_29D843F8C, MEMORY[0x29EDB8A60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22370);
  }

  return result;
}

void sub_29D899A34(uint64_t a1)
{
  if (!qword_2A17B7110)
  {
    sub_29D899AD0(255, &qword_2A1A22398, sub_29D89991C, MEMORY[0x29EDB89F8]);
    sub_29D6BCA50();
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7110);
    }
  }
}

void sub_29D899AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D899B44(uint64_t a1)
{
  if (!qword_2A17B7118)
  {
    sub_29D899A34(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D899C24(&qword_2A17B7120, sub_29D899A34, MEMORY[0x29EDB8908]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7118);
    }
  }
}

uint64_t sub_29D899C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ArticleIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D899DCC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0xD00000000000002BLL;
    v6 = 0xD00000000000001FLL;
    if (a1 != 3)
    {
      v6 = 0xD000000000000025;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000030;
    if (!a1)
    {
      v7 = 0xD000000000000024;
    }

    if (a1 <= 1u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 == 9)
    {
      v1 = 0xD000000000000034;
    }

    else
    {
      v1 = 0xD000000000000035;
    }

    if (a1 == 8)
    {
      v2 = 0xD000000000000034;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD000000000000039;
    if (a1 == 6)
    {
      v3 = 0xD000000000000037;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000038;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

id sub_29D899F00@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        a3[3] = &type metadata for CardioFitnessOverviewArticleDataProvider;
        a3[4] = sub_29D89AC24();
        a3[5] = sub_29D89AC78();
        *a3 = a1;

        return a1;
      }

      else
      {
        a3[3] = &type metadata for HeartRateArticleDataProvider;
        a3[4] = sub_29D7ED1DC();
        result = sub_29D7ED230();
        a3[5] = result;
      }
    }

    else if (a2 == 2)
    {
      v6 = *MEMORY[0x29EDBA6C0];
      v7 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v8 = a1;
      v9 = [v7 initWithFeatureIdentifier:v6 healthStore:v8 currentCountryCode:0];
      v18 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
      v19 = MEMORY[0x29EDC2EA8];
      *&v17 = v9;
      v10 = type metadata accessor for LowCardioFitnessArticleDataProvider(0);
      v11 = swift_allocObject();
      v12 = OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___featureStatus;
      sub_29D6B805C(0);
      (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
      *(v11 + OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___showBridgeLink) = 2;
      *(v11 + 16) = v8;
      sub_29D6959E8(&v17, v11 + 24);
      a3[3] = v10;
      a3[4] = sub_29D89ABDC(qword_2A1A25918, type metadata accessor for LowCardioFitnessArticleDataProvider, &unk_29D9542F0);
      result = sub_29D89ABDC(&qword_2A1A25910, type metadata accessor for LowCardioFitnessArticleDataProvider, &unk_29D954288);
      a3[5] = result;
      *a3 = v11;
    }

    else
    {
      if (a2 == 3)
      {
        a3[3] = &type metadata for AFibBurdenArticleProviderLearnAboutAFib;
        a3[4] = sub_29D89AB34();
        result = sub_29D89AB88();
      }

      else
      {
        a3[3] = &type metadata for AFibBurdenArticleProviderLearnAboutAFibBurden;
        a3[4] = sub_29D89AA8C();
        result = sub_29D89AAE0();
      }

      a3[5] = result;
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v5 = 0;
    }

    else if (a2 == 9)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v14 = sub_29D9049B4(v5);
    a3[3] = &type metadata for BloodPressureJournalArticleDataProvider;
    a3[4] = sub_29D89A894();
    result = sub_29D89A8E8();
    a3[5] = result;
    *a3 = v14;
  }

  else if (a2 == 5)
  {
    a3[3] = &type metadata for HypertensionNotificationsArticleDataProvider;
    a3[4] = sub_29D89A9E4();
    result = sub_29D89AA38();
    a3[5] = result;
    *a3 = 0;
  }

  else if (a2 == 6)
  {
    a3[3] = &type metadata for HypertensionNotificationsArticleDataProvider;
    a3[4] = sub_29D89A9E4();
    result = sub_29D89AA38();
    a3[5] = result;
    *a3 = 1;
  }

  else
  {
    a3[3] = &type metadata for HypertensionNotificationsFIGOArticleDataProvider;
    a3[4] = sub_29D89A93C();
    result = sub_29D89A990();
    a3[5] = result;
  }

  return result;
}

id sub_29D89A248(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1)
    {
      v2 = MEMORY[0x29EDBA870];
    }

    else
    {
      v2 = MEMORY[0x29EDBA908];
    }

    if (a1 - 1 >= 2)
    {
      v1 = v2;
    }

    else
    {
      v1 = MEMORY[0x29EDBA970];
    }

    goto LABEL_12;
  }

  if (a1 - 5 >= 3)
  {
    if (a1 - 8 >= 3)
    {
      v1 = MEMORY[0x29EDBA870];
    }

    else
    {
      v1 = MEMORY[0x29EDBA890];
    }

LABEL_12:
    sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
    return [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  }

  return 0;
}

uint64_t sub_29D89A304(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_29D899DCC(*a1);
  v5 = v4;
  if (v3 == sub_29D899DCC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();
  }

  return v8 & 1;
}

uint64_t sub_29D89A38C()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D899DCC(v1);
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D89A3F0(uint64_t a1)
{
  sub_29D899DCC(*v1);
  sub_29D939E18();

  return result;
}

uint64_t sub_29D89A444(uint64_t a1)
{
  v2 = *v1;
  sub_29D93AE58();
  sub_29D899DCC(v2);
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D89A4A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D89ACCC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_29D89A4D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_29D899DCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_29D89A510@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29D937898();
  v7 = *(v6 - 1);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935E88();
  v11 = sub_29D89ACCC(a1, a2);
  if (v11 == 11)
  {
    sub_29D934D28();
    sub_29D935E88();
    v12 = sub_29D937878();
    v13 = sub_29D93A288();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v14 = 136446466;
      v15 = sub_29D939DA8();
      v17 = sub_29D6C2364(v15, v16, &v26);
      v25 = v6;
      v18 = v17;

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_29D6C2364(a1, a2, &v26);
      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] Article identifier %{public}s could not be found", v14, 0x16u);
      v19 = v24;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v14, -1, -1);

      (*(v7 + 8))(v10, v25);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    v20 = v11;
    v25 = sub_29D935748();
    sub_29D899F00(v25, v20, a3);
    v21 = v25;
  }

  return result;
}

void sub_29D89A7EC()
{
  if (!qword_2A17B7138)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7138);
    }
  }
}

unint64_t sub_29D89A840()
{
  result = qword_2A17B7140;
  if (!qword_2A17B7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7140);
  }

  return result;
}

unint64_t sub_29D89A894()
{
  result = qword_2A1A235A8;
  if (!qword_2A1A235A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A235A8);
  }

  return result;
}

unint64_t sub_29D89A8E8()
{
  result = qword_2A1A235A0;
  if (!qword_2A1A235A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A235A0);
  }

  return result;
}

unint64_t sub_29D89A93C()
{
  result = qword_2A1A22DA0[0];
  if (!qword_2A1A22DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A22DA0);
  }

  return result;
}

unint64_t sub_29D89A990()
{
  result = qword_2A1A22D98;
  if (!qword_2A1A22D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22D98);
  }

  return result;
}

unint64_t sub_29D89A9E4()
{
  result = qword_2A1A23018[0];
  if (!qword_2A1A23018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A23018);
  }

  return result;
}

unint64_t sub_29D89AA38()
{
  result = qword_2A1A23010;
  if (!qword_2A1A23010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23010);
  }

  return result;
}

unint64_t sub_29D89AA8C()
{
  result = qword_2A1A247C0;
  if (!qword_2A1A247C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A247C0);
  }

  return result;
}

unint64_t sub_29D89AAE0()
{
  result = qword_2A1A247B8;
  if (!qword_2A1A247B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A247B8);
  }

  return result;
}

unint64_t sub_29D89AB34()
{
  result = qword_2A1A247D0;
  if (!qword_2A1A247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A247D0);
  }

  return result;
}

unint64_t sub_29D89AB88()
{
  result = qword_2A1A247C8;
  if (!qword_2A1A247C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A247C8);
  }

  return result;
}

uint64_t sub_29D89ABDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D89AC24()
{
  result = qword_2A1A257B0;
  if (!qword_2A1A257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A257B0);
  }

  return result;
}

unint64_t sub_29D89AC78()
{
  result = qword_2A1A257A8;
  if (!qword_2A1A257A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A257A8);
  }

  return result;
}

unint64_t sub_29D89ACCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

id sub_29D89AD18()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:*(v0 + 16)];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_29D89AD9C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v1 + 24) = 0;
    *(v0 + 32) = v1;
    v3 = v2;
  }

  return v1;
}

char *sub_29D89AE08(char a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v6 = a2;
  if (sub_29D89B76C())
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v8 = sub_29D937898();
    sub_29D69C6C0(v8, qword_2A1A2BF10);
    v9 = sub_29D937878();
    v10 = sub_29D93A2A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v75 = v12;
      *v11 = 136446210;
      v13 = sub_29D93AF08();
      v15 = sub_29D6C2364(v13, v14, &v75);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] Presenting blood pressure journal onboarding", v11, 0xCu);
      sub_29D69417C(v12);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }

    v16 = *(v5 + 16);
    v17 = type metadata accessor for BloodPressureJournalOnboardingMainViewController();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC5Heart48BloodPressureJournalOnboardingMainViewController_coordinator] = 0;
    v18[OBJC_IVAR____TtC5Heart48BloodPressureJournalOnboardingMainViewController_navigateToDetailRoomUponOnboardingCompletion] = a1 & 1;
    v18[OBJC_IVAR____TtC5Heart48BloodPressureJournalOnboardingMainViewController_provenance] = v6;
    v19 = *MEMORY[0x29EDBA6B8];
    v20 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
    v21 = v16;
    v22 = [v20 initWithFeatureIdentifier:v19 healthStore:v21];
    type metadata accessor for BloodPressureJournalOnboardingFlowManager();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    type metadata accessor for BloodPressureJournalOnboardingModel();
    v24 = swift_allocObject();
    *(v24 + 48) = 0;
    *(v24 + 16) = 2;
    *(v24 + 24) = v23;
    *(v24 + 32) = v21;
    *(v24 + 40) = v6;
    type metadata accessor for BloodPressureJournalOnboardingStageViewControllerFactory();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v73.receiver = v18;
    v73.super_class = v17;
    v26 = v21;

    v27 = objc_msgSendSuper2(&v73, sel_initWithNibName_bundle_, 0, 0);
    [v27 setModalPresentationStyle_];
    [v27 setModalInPresentation_];
    v28 = type metadata accessor for BloodPressureJournalOnboardingCoordinator();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_rootViewController + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = &off_2A244C080;
    swift_unknownObjectWeakAssign();
    *&v29[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_model] = v24;
    *&v29[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_vcFactory] = v25;
    *&v29[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_healthStore] = v26;
    v29[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_provenance] = v6;
    v29[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_source] = a3;
    v72.receiver = v29;
    v72.super_class = v28;
    v30 = v26;

    v31 = objc_msgSendSuper2(&v72, sel_init);
    sub_29D8AE24C();

    v32 = &OBJC_IVAR____TtC5Heart48BloodPressureJournalOnboardingMainViewController_coordinator;
    v33 = v6;
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v34 = sub_29D937898();
    sub_29D69C6C0(v34, qword_2A1A2BF10);
    v35 = sub_29D937878();
    v36 = sub_29D93A2A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v75 = v38;
      *v37 = 136446210;
      v39 = sub_29D93AF08();
      v41 = sub_29D6C2364(v39, v40, &v75);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_29D677000, v35, v36, "[%{public}s] Presenting blood pressure journal creation", v37, 0xCu);
      sub_29D69417C(v38);
      MEMORY[0x29ED6BE30](v38, -1, -1);
      MEMORY[0x29ED6BE30](v37, -1, -1);
    }

    v42 = *(v5 + 16);
    v43 = type metadata accessor for BloodPressureJournalCreationMainViewController();
    v44 = objc_allocWithZone(v43);
    *&v44[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_coordinator] = 0;
    *&v44[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController____lazy_storage___bpjControl] = 0;
    v44[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_navigateToDetailRoomUponCompletion] = a1 & 1;
    *&v44[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_healthStore] = v42;
    type metadata accessor for BloodPressureJournalBestPracticesManager();
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    v46 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
    v47 = v42;
    v48 = sub_29D939D28();
    v49 = [v46 initWithCategory:2 domainName:v48 healthStore:v47];

    *(v45 + 24) = v49;
    type metadata accessor for BloodPressureJournalCreationModel(0);
    v50 = swift_allocObject();
    v75 = 0;
    v76 = 1;
    sub_29D7B7CA4(0);
    v51 = v47;

    sub_29D938398();
    v52 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_morningReminderTime;
    if (qword_2A17B0C48 != -1)
    {
      swift_once();
    }

    v53 = sub_29D9339F8();
    v54 = sub_29D69C6C0(v53, qword_2A17B4D48);
    v55 = *(*(v53 - 8) + 16);
    v55(v50 + v52, v54, v53);
    v56 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_eveningReminderTime;
    if (qword_2A17B0C50 != -1)
    {
      swift_once();
    }

    v57 = sub_29D69C6C0(v53, qword_2A17B4D60);
    v55(v50 + v56, v57, v53);
    v58 = v50 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate;
    *v58 = 0u;
    *(v58 + 16) = 0u;
    *(v58 + 32) = 0;
    *(v50 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___eventSubmissionManager) = 0;
    *(v50 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel____lazy_storage___loggingAnalyticsUtilities) = 0;
    *(v50 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_healthStore) = v51;
    *(v50 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bestPracticesManager) = v45;
    v33 = v6;
    *(v50 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_provenance) = v6;
    *(v50 + OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_flowType) = 1;
    type metadata accessor for BloodPressureJournalCreationViewControllerFactory();
    v59 = swift_allocObject();
    *(v59 + 16) = v50;
    v44[OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_provenance] = v6;
    v79.receiver = v44;
    v79.super_class = v43;

    v60 = objc_msgSendSuper2(&v79, sel_initWithNibName_bundle_, 0, 0);
    v77 = v43;
    v78 = &off_2A2443630;
    v75 = v60;
    v61 = OBJC_IVAR____TtC5Heart33BloodPressureJournalCreationModel_bpjControlDelegate;
    swift_beginAccess();
    v62 = v60;
    sub_29D89BB10(&v75, v50 + v61);
    swift_endAccess();
    [v62 setModalPresentationStyle_];
    [v62 setModalInPresentation_];
    v63 = type metadata accessor for BloodPressureJournalCreationCoordinator();
    v64 = objc_allocWithZone(v63);
    *&v64[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_rootViewController + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = &off_2A2443640;
    swift_unknownObjectWeakAssign();
    *&v64[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_model] = v50;
    *&v64[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_vcFactory] = v59;
    *&v64[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_healthStore] = v51;
    v64[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_isInNavigationController] = 0;
    v64[OBJC_IVAR____TtC5Heart39BloodPressureJournalCreationCoordinator_source] = a3;
    v74.receiver = v64;
    v74.super_class = v63;
    v65 = v51;

    v27 = v62;

    v31 = objc_msgSendSuper2(&v74, sel_init);
    sub_29D73CE68();

    v32 = &OBJC_IVAR____TtC5Heart46BloodPressureJournalCreationMainViewController_coordinator;
  }

  v66 = *v32;
  v67 = *&v27[v66];
  *&v27[v66] = v31;

  sub_29D89AD9C();
  v68 = sub_29D89B76C();
  sub_29D8B530C(0, a4, v33, (v68 & 1) == 0, 2);

  return v27;
}

id sub_29D89B76C()
{
  v0 = sub_29D9371A8();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v13 - v7;
  v9 = sub_29D89AD18();
  sub_29D6B8230();
  sub_29D937278();

  (*(v1 + 32))(v8, v5, v0);
  v10 = sub_29D9371B8();
  v11 = [v10 areAllRequirementsSatisfied];

  (*(v1 + 8))(v8, v0);
  return v11;
}

uint64_t sub_29D89BAA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D89BB10(uint64_t a1, uint64_t a2)
{
  sub_29D89BB74(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D89BB74(uint64_t a1)
{
  if (!qword_2A17B4DC0)
  {
    sub_29D6B7370(255, &qword_2A17B73B0, &protocol descriptor for BloodPressureJournalControlDelegate);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4DC0);
    }
  }
}

uint64_t type metadata accessor for AFibFeaturesPromotionTileActionHandler(uint64_t a1)
{
  result = qword_2A17B7158;
  if (!qword_2A17B7158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D89BC74()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v6, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v11[1] = 0;
  sub_29D9371C8();

  v7 = objc_allocWithZone(type metadata accessor for AFibFeaturesOnboardingViewController(0));
  v8 = sub_29D92154C();
  *&v8[qword_2A17B8220 + 8] = &off_2A244BA38;
  swift_unknownObjectWeakAssign();
  v9 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  sub_29D936B88();
  v10 = sub_29D936618();
  (*(v2 + 8))(v5, v1);
  [v10 presentViewController:v9 animated:1 completion:0];
}

uint64_t sub_29D89BE88(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x2928706154646964, 0xE800000000000000);
  MEMORY[0x29ED6A240](0xD000000000000018, 0x800000029D96B3F0);
  return 91;
}

void sub_29D89BF48(char a1)
{
  ObjectType = swift_getObjectType();
  v103 = sub_29D933CE8();
  v3 = *(v103 - 8);
  MEMORY[0x2A1C7C4A8](v103, v4);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  v8 = MEMORY[0x2A1C7C4A8](v102, v7);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v105 = &v94 - v11;
  v12 = sub_29D936638();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v15, v18);
  v21 = &v94 - v20;
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v94 - v23;
  v106 = v1;
  sub_29D936B88();
  v25 = (v13 + 8);
  v107 = v25;
  if ((a1 & 1) == 0)
  {
    sub_29D936608();
    v43 = *v25;
    ObjectType = v25 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v24, v12);
    sub_29D693E2C(aBlock, v119);
    v103 = sub_29D936588();
    sub_29D69417C(aBlock);
    v100 = v24;
    sub_29D936B88();
    v44 = sub_29D936618();
    v43(v24, v12);
    sub_29D93A388();

    sub_29D936B88();
    sub_29D936608();
    v99 = v12;
    v43(v21, v12);
    sub_29D693E2C(v117, v117[3]);
    sub_29D9365A8();
    sub_29D936B88();
    sub_29D936608();
    v43(v17, v12);
    sub_29D693E2C(v115, v115[3]);
    sub_29D936598();
    swift_storeEnumTagMultiPayload();
    v45 = type metadata accessor for AFibBurdenOnboardingController();
    v46 = objc_allocWithZone(v45);
    *&v46[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = 0;
    v46[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion] = 1;
    v114.receiver = v46;
    v114.super_class = v45;
    v102 = objc_msgSendSuper2(&v114, sel_initWithNibName_bundle_, 0, 0);
    [v102 setModalPresentationStyle_];
    v47 = *MEMORY[0x29EDBA6B0];
    v48 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
    v49 = v103;
    v50 = [v48 initWithFeatureIdentifier:v47 healthStore:v103];
    v51 = v49;
    v52 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F8] healthStore:v49];
    v53 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
    v54 = v50;
    v97 = v54;
    v55 = [v53 initWithFeatureIdentifier:v47 healthStore:v51];
    sub_29D6945AC(v116, &v111);
    v98 = v52;
    v56 = sub_29D71B714(v54, v55, v98, &v111);
    v96 = v56;

    sub_29D6945AC(aBlock, &v111);
    sub_29D6945AC(v116, &v108);
    type metadata accessor for AFibBurdenOnboardingViewControllerFactory();
    v57 = swift_allocObject();
    sub_29D679D3C(&v111, v57 + 16);
    sub_29D679D3C(&v108, v57 + 64);
    *(v57 + 56) = 1;
    v58 = sub_29D933F18();

    v59 = sub_29D933F08();
    v60 = type metadata accessor for AFibBurdenOnboardingFlowManager();
    v112 = v60;
    v113 = &off_2A244DAB0;
    *&v111 = v56;
    v109 = v58;
    v110 = &off_2A24417F8;
    *&v108 = v59;
    v61 = type metadata accessor for AFibBurdenOnboardingModel();
    v62 = swift_allocObject();
    v63 = sub_29D693DDC(&v111, v60);
    v95 = &v94;
    MEMORY[0x2A1C7C4A8](v63, v63);
    v65 = (&v94 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v65);
    v67 = sub_29D693DDC(&v108, v109);
    MEMORY[0x2A1C7C4A8](v67, v67);
    v69 = (&v94 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69);
    v71 = *v65;
    v72 = *v69;
    v62[5] = v60;
    v62[6] = &off_2A244DAB0;
    v62[2] = v71;
    v62[10] = v58;
    v62[11] = &off_2A24417F8;
    v62[7] = v72;
    sub_29D69417C(&v108);
    sub_29D69417C(&v111);
    v73 = v104;
    sub_29D71B998(v105, v104);

    v74 = HKHRAFibBurdenLogForCategory();
    v75 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
    v76 = v103;
    v77 = [v75 initWithLoggingCategory:v74 healthDataSource:v103];

    v112 = v61;
    v113 = &off_2A2441928;
    *&v111 = v62;
    type metadata accessor for AFibBurdenOnboardingCoordinator(0);
    v78 = swift_allocObject();
    v79 = sub_29D693DDC(&v111, v61);
    v95 = &v94;
    MEMORY[0x2A1C7C4A8](v79, v79);
    v81 = (&v94 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v82 + 16))(v81);
    v83 = *v81;
    v109 = v61;
    v110 = &off_2A2441928;
    *&v108 = v83;
    *(v78 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;
    v84 = v78 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
    *(v78 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController + 8) = 0;
    swift_unknownObjectWeakInit();
    sub_29D6945AC(&v108, v78 + 16);
    sub_29D71B998(v73, v78 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext);
    *(v84 + 8) = &off_2A24497D8;
    v85 = v102;
    swift_unknownObjectWeakAssign();

    *(v78 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory) = v57;
    *(v78 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_healthStore) = v76;
    *(v78 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager) = v77;

    v86 = v76;
    v87 = v77;
    sub_29D862C98();

    sub_29D71B9FC(v73);
    sub_29D69417C(&v108);
    sub_29D69417C(&v111);

    sub_29D71B9FC(v105);
    sub_29D69417C(v116);
    sub_29D69417C(aBlock);
    *&v85[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = v78;
    v41 = v85;

    v42 = v107;

    sub_29D69417C(v115);
    sub_29D69417C(v117);
    v36 = v106;
    v12 = v99;
    v37 = v100;
    goto LABEL_8;
  }

  sub_29D936608();
  (*v25)(v24, v12);
  sub_29D693E2C(aBlock, v119);
  v26 = sub_29D936588();
  sub_29D69417C(aBlock);
  sub_29D933C88();
  v27 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v28 = sub_29D933BB8();
  v29 = [v27 initWithCalendar_];

  (*(v3 + 8))(v6, v103);
  v30 = objc_allocWithZone(MEMORY[0x29EDC52B0]);
  v31 = v106;
  v32 = [v30 initWithOnboardingType:0 isFirstTimeOnboarding:1 healthStore:v26 dateCache:v29 provenance:3 delegate:v106];

  v33 = qword_2A17B7150;
  v34 = *&v31[qword_2A17B7150];
  *&v31[qword_2A17B7150] = v32;
  v35 = v32;

  v36 = v31;
  v37 = v24;
  if (v35)
  {
    sub_29D6B73CC();
    v38 = sub_29D93A6D8();
    [v35 setHasAtrialFibrillationDiagnosis_];
  }

  v39 = *&v36[v33];
  if (v39)
  {
    v40 = [v39 onboardingNavigationController];
    if (v40)
    {
      v41 = v40;
      v42 = v107;
LABEL_8:
      v88 = v41;
      sub_29D936B88();
      v89 = sub_29D936618();
      (*v42)(v37, v12);
      v90 = swift_allocObject();
      *(v90 + 16) = v36;
      *(v90 + 24) = v88;
      v120 = sub_29D89DB8C;
      v121 = v90;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D6C1F10;
      v119 = &unk_2A244BB60;
      v91 = _Block_copy(aBlock);
      v92 = v36;

      [v89 dismissViewControllerAnimated:1 completion:v91];

      _Block_release(v91);
      return;
    }
  }

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v93, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  aBlock[0] = 0;
  sub_29D9371F8();
}

uint64_t sub_29D89CB90(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000030, 0x800000029D96B370);
  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D96B3B0);
  return 0;
}

void sub_29D89CC5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  v8 = sub_29D936618();
  (*(v4 + 8))(v7, v3);
  [v8 presentViewController:a2 animated:1 completion:0];
}

void sub_29D89CD58()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v1, v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v18[-1] - v8;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v10, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v18[0] = 0;
  sub_29D9371C8();

  sub_29D936B88();
  sub_29D936608();
  v11 = *(v2 + 8);
  v11(v9, v1);
  sub_29D693E2C(v18, v18[3]);

  sub_29D69417C(v18);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D7191F0();
  v12 = objc_allocWithZone(sub_29D934568());
  v13 = sub_29D934558();
  v14 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  sub_29D936B88();
  v15 = sub_29D936618();
  v11(v6, v1);
  v16 = [v15 presentedViewController];

  if (v16)
  {
    [v16 presentViewController:v14 animated:1 completion:0];
  }
}

uint64_t sub_29D89D098(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000029, 0x800000029D96B340);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D9693B0);
  return 91;
}

uint64_t sub_29D89D160(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D96B230);
  MEMORY[0x29ED6A240](0xD00000000000003DLL, 0x800000029D96B260);
  return 0;
}

void sub_29D89D22C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v8, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v16[1] = 0;
  sub_29D9371C8();

  v9 = *(v1 + qword_2A17B7150);
  *(v1 + qword_2A17B7150) = 0;

  sub_29D936B88();
  v10 = sub_29D936618();
  (*(v4 + 8))(v7, v3);
  v11 = [v10 tabBarController];

  if (v11)
  {
    v12 = [objc_opt_self() atrialFibrillationEventType];
    if (v12)
    {
      v13 = v12;
      type metadata accessor for AFibFeaturesPromotionTileActionHandler(0);
      sub_29D89DB34(&qword_2A17B5C28, type metadata accessor for AFibFeaturesPromotionTileActionHandler, &unk_29D951970);
      v14 = sub_29D936AF8();
      if (v14)
      {
        v15 = v14;
        sub_29D74E500(v14, 0);

        v11 = v13;
        v13 = v15;
      }

      v11 = v13;
    }
  }
}

uint64_t sub_29D89D49C(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000017, 0x800000029D96B2F0);
  MEMORY[0x29ED6A240](0xD000000000000026, 0x800000029D96B310);
  return 91;
}

void sub_29D89D564(void *a1)
{
  v1 = a1;
  sub_29D89D22C();
}

uint64_t sub_29D89D5AC(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D96B2A0);
  MEMORY[0x29ED6A240](0xD000000000000026, 0x800000029D96B2C0);
  return 91;
}

void sub_29D89D674(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = qword_2A1A24678;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v5, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  sub_29D9371C8();

  v6 = *&v4[qword_2A17B7150];
  *&v4[qword_2A17B7150] = 0;
}

uint64_t sub_29D89D770(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  *&v8[qword_2A17B7150] = 0;
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D89D88C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibFeaturesPromotionTileActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D89D928()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v6, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v8[1] = 0;
  sub_29D9371C8();

  sub_29D936B88();
  v7 = sub_29D936618();
  (*(v2 + 8))(v5, v1);
  [v7 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_29D89DB34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D89DB94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for BloodPressureJournalOnboardingNeedWayToMeasureViewController(uint64_t a1)
{
  result = qword_2A17B7190;
  if (!qword_2A17B7190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D89DC64()
{
  v1 = v0;
  swift_getObjectType();
  sub_29D6D22BC(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v6 = sub_29D937898();
  sub_29D69C6C0(v6, qword_2A1A2C008);
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D968040, &v22);
    _os_log_impl(&dword_29D677000, v7, v8, "[%s.%{public}s]: Learn more tapped", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v14 = *(v1 + qword_2A17B7180);
  v15 = *(v14 + 32);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;
  LOBYTE(v14) = *(v14 + 40);
  v17 = v15;
  sub_29D8B530C(3, 12, v14, 0, 2);

  sub_29D9336E8();
  v18 = sub_29D9336F8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v5, 1, v18) == 1)
  {
    return sub_29D6D96C0(v5);
  }

  sub_29D9336A8();
  return (*(v19 + 8))(v5, v18);
}

void sub_29D89DF48(void *a1)
{
  v1 = a1;
  sub_29D89DC64();
}

id sub_29D89DF90()
{
  v1 = qword_2A17B7188;
  v2 = *&v0[qword_2A17B7188];
  if (v2)
  {
    v3 = *&v0[qword_2A17B7188];
  }

  else
  {
    sub_29D89DFF4(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29D89DFF4(void *a1)
{
  v2 = [objc_opt_self() accessoryButton];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemBlueColor];
  [v4 setTintColor_];

  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v6 = sub_29D939D28();

  [v4 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v4 addTarget:a1 action:sel_learnMoreButtonTapped forControlEvents:64];
  sub_29D88BBC8(&unk_2A243F3A0);
  v7 = sub_29D939F18();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (v8)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v9 = sub_29D939D28();

    [a1 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D89E218()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BloodPressureJournalOnboardingNeedWayToMeasureViewController(0);
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_29D88BBC8(&unk_2A243F3E0);
  v2 = sub_29D939F18();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v4 = sub_29D939D28();

    v5 = [v1 headerView];
    v6 = sub_29D89DF90();
    [v5 addAccessoryButton_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D89E370(void *a1)
{
  v1 = a1;
  sub_29D89E218();
}

uint64_t sub_29D89E3B8()
{
  v1 = v0;
  v2 = *&v0[qword_2A17B7180];
  v3 = *(v2 + 32);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  LOBYTE(v2) = *(v2 + 40);
  v5 = v3;
  sub_29D8B530C(3, 2, v2, 0, 2);

  v7 = *&v0[qword_2A17B7178];
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_29D8A49D4(v1, v7);

    return sub_29D936978();
  }

  return result;
}

void sub_29D89E47C(void *a1)
{
  v1 = a1;
  sub_29D89E3B8();
}

void sub_29D89E4F4()
{
  sub_29D936978();

  v1 = *(v0 + qword_2A17B7188);
}

id sub_29D89E544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalOnboardingNeedWayToMeasureViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D89E57C(uint64_t a1)
{
  sub_29D936978();

  v2 = *(a1 + qword_2A17B7188);
}

uint64_t sub_29D89E5E0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B7178);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D89E5FC(uint64_t a1)
{
  v2 = (v1 + qword_2A17B7178);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_2A17B7188) = 0;
  *(v1 + qword_2A17B7180) = a1;
  objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingEmptyViewController(0));
  sub_29D935F88();
  swift_allocObject();

  sub_29D935F98();
  sub_29D936D88();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D74059C();

  return sub_29D936A98();
}

id sub_29D89E7A8(uint64_t a1)
{
  v171 = *v1;
  v177 = sub_29D9344B8();
  v170 = *(v177 - 8);
  MEMORY[0x2A1C7C4A8](v177, v3);
  v168 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC(0);
  v176 = v5;
  v174 = *(v5 - 1);
  v7 = MEMORY[0x2A1C7C4A8](v5, v6);
  v166 = v8;
  v167 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v173 = &v159 - v10;
  sub_29D8A2AF0(0, &qword_2A1A21ED0, sub_29D69BECC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v175 = &v159 - v13;
  v14 = sub_29D9341E8();
  v178 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14, v15);
  v182 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v159 - v19;
  v21 = sub_29D937898();
  v180 = *(v21 - 8);
  v181 = v21;
  v23 = MEMORY[0x2A1C7C4A8](v21, v22);
  v25 = &v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v23, v26);
  v169 = &v159 - v28;
  MEMORY[0x2A1C7C4A8](v27, v29);
  v31 = &v159 - v30;
  v32 = sub_29D9341B8();
  v33 = v32;
  v34 = sub_29D933FE8();
  v35 = sub_29D933FD8();
  v172 = v33;

  if (v35)
  {
    sub_29D934D28();
    v36 = v178[2];
    v185 = (v178 + 2);
    v183 = v36;
    v36(v20, a1, v14);
    v37 = sub_29D937878();
    v38 = sub_29D93A2A8();
    v39 = os_log_type_enabled(v37, v38);
    v179 = a1;
    v184 = v14;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = v14;
      v165 = swift_slowAlloc();
      v188[0] = v165;
      *v40 = 136446466;
      *&v192 = v171;
      swift_getMetatypeMetadata();
      v42 = sub_29D939DA8();
      v44 = sub_29D6C2364(v42, v43, v188);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      v45 = sub_29D9341B8();
      v46 = sub_29D933FC8();
      v48 = v47;

      (v178[1])(v20, v41);
      v49 = sub_29D6C2364(v46, v48, v188);
      v50 = v179;

      *(v40 + 14) = v49;
      _os_log_impl(&dword_29D677000, v37, v38, "[%{public}s]: returning pipeline for sourceProfile %{public}s", v40, 0x16u);
      v51 = v165;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v51, -1, -1);
      MEMORY[0x29ED6BE30](v40, -1, -1);
    }

    else
    {
      v50 = a1;

      (v178[1])(v20, v14);
    }

    (*(v180 + 8))(v31, v181);
    sub_29D934188();
    v62 = v50;
    sub_29D693E2C(&v192, *(&v193 + 1));
    v63 = sub_29D934118();
    sub_29D69417C(&v192);
    v64 = v175;
    sub_29D9341D8();
    v162 = *(v174 + 56);
    v163 = v174 + 56;
    v162(v64, 0, 1, v176);
    v65 = sub_29D73B0B8(v64);
    v67 = v66;
    sub_29D8A162C(v64);
    v68 = objc_allocWithZone(MEMORY[0x29EDBABF8]);
    v69 = v63;
    v164 = v65;
    v165 = v67;
    v70 = sub_29D939D28();
    v160 = [v68 initWithHealthStore:v69 currentCountryCode:v70];
    v161 = v69;

    sub_29D8A16B8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D951A30;
    v72 = MEMORY[0x29EDC3C28];
    *(inited + 56) = v177;
    *(inited + 64) = v72;
    v178 = sub_29D693F78((inited + 32));
    v73 = v182;
    v74 = v62;
    v75 = v184;
    v76 = v183;
    v183(v182, v74, v184);
    v77 = *MEMORY[0x29EDBA6C0];
    sub_29D8A1488(0, &qword_2A1A21F58, &qword_2A1A24740, MEMORY[0x29EDC3BA0], MEMORY[0x29EDC9E90]);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_29D93F680;
    v79 = type metadata accessor for CardioFitnessHealthChecklistFeedItemProvider();
    v80 = swift_allocObject();
    *(v78 + 56) = v79;
    *(v78 + 64) = sub_29D8A2F58(&qword_2A1A23108, type metadata accessor for CardioFitnessHealthChecklistFeedItemProvider, &unk_29D94CA40);
    *(v78 + 32) = v80;
    v81 = type metadata accessor for CardioFitnessPromotionFeedItemProvider();
    v82 = swift_allocObject();
    *(v78 + 96) = v81;
    *(v78 + 104) = sub_29D8A2F58(qword_2A1A23680, type metadata accessor for CardioFitnessPromotionFeedItemProvider, &unk_29D9550D4);
    *(v78 + 72) = v82;
    v83 = v77;
    v84 = v179;
    sub_29D9344A8();
    v76(v73, v84, v75);
    v85 = sub_29D77B37C(v73);
    *(inited + 96) = type metadata accessor for CardioFitnessClassificationStatusGeneratorPipeline(0);
    *(inited + 104) = sub_29D8A2F58(&qword_2A1A22D58, type metadata accessor for CardioFitnessClassificationStatusGeneratorPipeline, &unk_29D94725C);
    *(inited + 72) = v85;
    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v86 = result;

      v87 = [v86 isCompanionCapable];
      if (v87)
      {
        v88 = type metadata accessor for CardioFitnessRetroComputeGeneratorPipeline(0);
        v76(v73, v84, v184);
        v89 = sub_29D6B82C4(v73);
        v90 = sub_29D8A2F58(qword_2A1A23310, type metadata accessor for CardioFitnessRetroComputeGeneratorPipeline, &unk_29D940888);
      }

      else
      {
        v88 = 0;
        v90 = 0;
        v89 = 0;
        *(inited + 120) = 0;
        *(inited + 128) = 0;
      }

      *(inited + 136) = v88;
      *(inited + 144) = v90;
      *(inited + 112) = v89;
      v91 = v173;
      sub_29D9341D8();
      type metadata accessor for HeartFeatureStatusAvailabilityProvider();
      v92 = 32;
      v93 = swift_allocObject();
      v94 = (*(v174 + 80) + 16) & ~*(v174 + 80);
      v95 = swift_allocObject();
      sub_29D73B8E4(v91, v95 + v94);
      *(v93 + 16) = sub_29D8A173C;
      *(v93 + 24) = v95;
      v183(v73, v84, v184);
      v96 = type metadata accessor for HeartFeatureStatusGeneratorPipeline(0);
      swift_allocObject();
      v97 = sub_29D7C902C(v73, v93);

      *(inited + 176) = v96;
      *(inited + 184) = sub_29D8A2F58(qword_2A1A25648, type metadata accessor for HeartFeatureStatusGeneratorPipeline, &unk_29D94A044);
      *(inited + 152) = v97;
      v98 = v161;
      v178 = v160;
      sub_29D9341D8();
      v99 = v91;
      v100 = v175;
      sub_29D69C6F8(v99, v175);
      v162(v100, 0, 1, v176);
      sub_29D73B0B8(v100);
      sub_29D8A162C(v100);
      v101 = *MEMORY[0x29EDBA6F8];
      v102 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v103 = v98;
      v104 = sub_29D939D28();

      v105 = [v102 initWithFeatureIdentifier:v101 healthStore:v103 currentCountryCode:v104];

      v106 = v173;
      v107 = v167;
      sub_29D69C6F8(v173, v167);
      v108 = objc_allocWithZone(type metadata accessor for HeartPromotionAvailability(0));
      v109 = v178;
      v110 = sub_29D8A17AC(v103, v178, v105, v107, v108);
      sub_29D7CA238(v106);
      v176 = v103;

      v111 = v182;
      v112 = v179;
      v183(v182, v179, v184);
      v113 = type metadata accessor for HeartPromotionGeneratorPipeline(0);
      swift_allocObject();
      v114 = sub_29D857808(v111, v110);

      *(inited + 216) = v113;
      *(inited + 224) = sub_29D8A2F58(&qword_2A1A25708, type metadata accessor for HeartPromotionGeneratorPipeline, &unk_29D94EB70);
      *(inited + 192) = v114;
      sub_29D89FBB0(v112, (inited + 232));
      sub_29D89FDA0(v112, (inited + 272));
      v115 = sub_29D89FF54(v112, v164, v165);

      *(inited + 336) = type metadata accessor for ElectrocardiogramUpdateGeneratorPipeline(0);
      *(inited + 344) = sub_29D8A2F58(qword_2A1A24E68, type metadata accessor for ElectrocardiogramUpdateGeneratorPipeline, &unk_29D9417D8);
      *(inited + 312) = v115;
      v116 = v112;
      sub_29D8A031C(v112, (inited + 352));
      sub_29D8A04C0(v112, (inited + 392));
      sub_29D8A0664(v112, (inited + 432));
      sub_29D8A0808(v112, (inited + 472));
      v117 = v182;
      v118 = v112;
      v119 = v183;
      v120 = v184;
      v183(v182, v118, v184);
      v121 = type metadata accessor for AFibBurdenNotificationSettingsGeneratorPipeline(0);
      swift_allocObject();
      v122 = sub_29D7DBCDC(v117);
      *(inited + 536) = v121;
      *(inited + 544) = sub_29D8A2F58(&unk_2A1A22FD0, type metadata accessor for AFibBurdenNotificationSettingsGeneratorPipeline, &unk_29D94AA30);
      *(inited + 512) = v122;
      v119(v117, v116, v120);
      v123 = type metadata accessor for AFibBurdenRescindedGeneratorPipeline(0);
      swift_allocObject();
      v124 = sub_29D8C2448(v117);
      *(inited + 576) = v123;
      *(inited + 584) = sub_29D8A2F58(&qword_2A1A238A0, type metadata accessor for AFibBurdenRescindedGeneratorPipeline, &unk_29D953888);
      *(inited + 552) = v124;
      v125 = sub_29D850CA4(v116);
      *(inited + 616) = type metadata accessor for RelatedSampleTypesGeneratorPipeline(0);
      *(inited + 624) = sub_29D8A2F58(&qword_2A1A23970, type metadata accessor for RelatedSampleTypesGeneratorPipeline, &unk_29D94E534);
      *(inited + 592) = v125;
      v126 = MEMORY[0x29EDCA190];
      do
      {
        sub_29D8A20F8(inited + v92, &v192);
        v186[0] = v192;
        v186[1] = v193;
        v187 = v194;
        if (*(&v193 + 1))
        {
          sub_29D679D3C(v186, v188);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v191[0] = v126;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v126 = sub_29D6903A0(0, v126[2] + 1, 1, v126);
            v191[0] = v126;
          }

          v129 = v126[2];
          v128 = v126[3];
          if (v129 >= v128 >> 1)
          {
            v126 = sub_29D6903A0((v128 > 1), v129 + 1, 1, v126);
            v191[0] = v126;
          }

          v130 = v189;
          v131 = v190;
          v132 = sub_29D693DDC(v188, v189);
          MEMORY[0x2A1C7C4A8](v132, v132);
          v134 = &v159 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v135 + 16))(v134);
          sub_29D693D44(v129, v134, v191, v130, v131);
          sub_29D69417C(v188);
        }

        else
        {
          sub_29D8A2188(v186);
        }

        v92 += 40;
      }

      while (v92 != 632);

      v136 = v182;
      v137 = v179;
      v183(v182, v179, v184);
      v138 = type metadata accessor for HypertensionNotificationsSettingsGeneratorPipeline(0);
      swift_allocObject();
      v139 = sub_29D8E8BAC(v136);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v126 = sub_29D6903A0(0, v126[2] + 1, 1, v126);
      }

      v140 = v168;
      v141 = v169;
      v143 = v126[2];
      v142 = v126[3];
      if (v143 >= v142 >> 1)
      {
        v126 = sub_29D6903A0((v142 > 1), v143 + 1, 1, v126);
      }

      *(&v193 + 1) = v138;
      v194 = sub_29D8A2F58(&qword_2A1A22C88, type metadata accessor for HypertensionNotificationsSettingsGeneratorPipeline, &unk_29D954724);
      *&v192 = v139;
      v126[2] = v143 + 1;
      sub_29D679D3C(&v192, &v126[5 * v143 + 4]);
      v183(v136, v137, v184);
      v144 = *MEMORY[0x29EDBA6F0];
      *(&v193 + 1) = &type metadata for HypertensionNotificationsFeatureStatusFeedItemProvider;
      v194 = sub_29D76C1AC();
      *&v192 = sub_29D67BF28;
      *(&v192 + 1) = 0;
      v145 = v144;
      sub_29D934498();
      v147 = v126[2];
      v146 = v126[3];
      if (v147 >= v146 >> 1)
      {
        v126 = sub_29D6903A0((v146 > 1), v147 + 1, 1, v126);
      }

      v148 = v177;
      *(&v193 + 1) = v177;
      v194 = MEMORY[0x29EDC3C28];
      v149 = sub_29D693F78(&v192);
      v150 = v170;
      (*(v170 + 16))(v149, v140, v148);
      v126[2] = v147 + 1;
      sub_29D679D3C(&v192, &v126[5 * v147 + 4]);
      (*(v150 + 8))(v140, v148);
      v188[0] = v126;
      sub_29D934D28();
      v151 = sub_29D937878();
      v152 = sub_29D93A2A8();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        *&v186[0] = v154;
        *v153 = 136446210;
        *&v192 = v171;
        swift_getMetatypeMetadata();
        v155 = sub_29D939DA8();
        v157 = sub_29D6C2364(v155, v156, v186);

        *(v153 + 4) = v157;
        _os_log_impl(&dword_29D677000, v151, v152, "[%{public}s] Creating blood pressure onboarding pipeline", v153, 0xCu);
        sub_29D69417C(v154);
        MEMORY[0x29ED6BE30](v154, -1, -1);
        MEMORY[0x29ED6BE30](v153, -1, -1);
      }

      (*(v180 + 8))(v141, v181);
      v158 = sub_29D8A27FC(v137);
      sub_29D88C1F8(v158);

      return v188[0];
    }

    else
    {
      __break(1u);
    }
  }

  else if (v32)
  {
    v52 = v180;
    sub_29D934D28();
    v53 = sub_29D937878();
    v54 = sub_29D93A2A8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v188[0] = v56;
      *v55 = 136446210;
      *&v192 = v171;
      swift_getMetatypeMetadata();
      v57 = sub_29D939DA8();
      v59 = sub_29D6C2364(v57, v58, v188);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_29D677000, v53, v54, "[%{public}s] Creating ArticlesGeneratorPipeline for single profile", v55, 0xCu);
      sub_29D69417C(v56);
      MEMORY[0x29ED6BE30](v56, -1, -1);
      MEMORY[0x29ED6BE30](v55, -1, -1);
    }

    (*(v52 + 8))(v25, v181);
    sub_29D8A1488(0, &unk_2A1A24880, &qword_2A1A25758, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9E90]);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_29D93DDB0;
    sub_29D8A0808(a1, (v60 + 32));

    return v60;
  }

  else
  {
    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t sub_29D89FBB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9341B8();
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D96B5F0);
  v10 = sub_29D933FB8();
  MEMORY[0x29ED6A240](v10);

  v11 = v21;
  v12 = v22;
  v13 = type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider();
  swift_allocObject();
  v14 = sub_29D907334(v11, v12);
  (*(v5 + 16))(v8, a1, v4);
  v15 = *MEMORY[0x29EDBA6D0];
  v23 = v13;
  v24 = sub_29D8A2F58(&qword_2A1A22A48, type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider, &unk_29D95564C);
  v21 = v14;
  v16 = sub_29D9344B8();
  v17 = MEMORY[0x29EDC3C28];
  a2[3] = v16;
  a2[4] = v17;
  sub_29D693F78(a2);
  v18 = v15;
  return sub_29D934498();
}

uint64_t sub_29D89FDA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934188();
  sub_29D693E2C(v18, v19);
  v9 = sub_29D934118();
  v10 = type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfigurationProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_29D69417C(v18);
  (*(v5 + 16))(v8, a1, v4);
  v12 = *MEMORY[0x29EDBA6D0];
  v19 = v10;
  v20 = sub_29D8A2F58(&qword_2A1A22878, type metadata accessor for ElectrocardiogramRecordingOnboardingPromotionConfigurationProvider, &unk_29D94A144);
  v18[0] = v11;
  v13 = sub_29D9344B8();
  v14 = MEMORY[0x29EDC3C28];
  a2[3] = v13;
  a2[4] = v14;
  sub_29D693F78(a2);
  v15 = v12;
  return sub_29D934498();
}

uint64_t *sub_29D89FF54(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v6 = *v3;
  v7 = sub_29D9341E8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v12 = sub_29D937898();
  sub_29D69C6C0(v12, qword_2A1A2BF40);
  sub_29D935E88();
  v13 = sub_29D937878();
  v14 = sub_29D93A2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = a1;
    v17 = v16;
    v35 = v16;
    v36[0] = v6;
    *v15 = 136446466;
    swift_getMetatypeMetadata();
    v18 = sub_29D939DA8();
    v20 = sub_29D6C2364(v18, v19, &v35);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v36[0] = v34;
    v36[1] = a3;
    sub_29D8A2A00(0, &qword_2A1A22290, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29D935E88();
    v21 = sub_29D939DA8();
    v23 = sub_29D6C2364(v21, v22, &v35);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s] Creating Electrocardiogram update pipeline for single country: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v24 = v17;
    a1 = v33;
    MEMORY[0x29ED6BE30](v24, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  v25 = *MEMORY[0x29EDBA6D0];
  sub_29D934188();
  sub_29D693E2C(v36, v36[3]);
  v26 = sub_29D934118();
  if (a3)
  {
    a3 = sub_29D939D28();
  }

  v27 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v25 healthStore:v26 currentCountryCode:a3];

  sub_29D69417C(v36);
  v28 = *(v8 + 16);
  v28(v11, a1, v7);
  type metadata accessor for ElectrocardiogramUpdateAvailability(0);
  swift_allocObject();
  v29 = v27;
  v30 = sub_29D818FD8(v11, v29);

  v28(v11, a1, v7);
  type metadata accessor for ElectrocardiogramUpdateGeneratorPipeline(0);
  swift_allocObject();
  v31 = sub_29D6CD9B8(v11, v30);

  return v31;
}

uint64_t sub_29D8A031C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_29D93AA18();

  v21 = 0xD000000000000028;
  v22 = 0x800000029D96B5C0;
  v9 = sub_29D9341B8();
  v10 = sub_29D933FB8();
  v12 = v11;

  MEMORY[0x29ED6A240](v10, v12);

  v13 = v21;
  v14 = v22;
  (*(v5 + 16))(v8, a1, v4);
  v15 = *MEMORY[0x29EDBA700];
  v23 = &type metadata for LowHeartRateNotificationsHealthChecklistConfigurationProvider;
  v24 = sub_29D6D75FC();
  v21 = v13;
  v22 = v14;
  v16 = sub_29D9344B8();
  v17 = MEMORY[0x29EDC3C28];
  a2[3] = v16;
  a2[4] = v17;
  sub_29D693F78(a2);
  v18 = v15;
  return sub_29D934498();
}

uint64_t sub_29D8A04C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_29D93AA18();

  v21 = 0xD000000000000029;
  v22 = 0x800000029D96B590;
  v9 = sub_29D9341B8();
  v10 = sub_29D933FB8();
  v12 = v11;

  MEMORY[0x29ED6A240](v10, v12);

  v13 = v21;
  v14 = v22;
  (*(v5 + 16))(v8, a1, v4);
  v15 = *MEMORY[0x29EDBA6E8];
  v23 = &type metadata for HighHeartRateNotificationsHealthChecklistConfigurationProvider;
  v24 = sub_29D7F2E74();
  v21 = v13;
  v22 = v14;
  v16 = sub_29D9344B8();
  v17 = MEMORY[0x29EDC3C28];
  a2[3] = v16;
  a2[4] = v17;
  sub_29D693F78(a2);
  v18 = v15;
  return sub_29D934498();
}

uint64_t sub_29D8A0664@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D9341E8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_29D93AA18();

  v21 = 0xD00000000000002BLL;
  v22 = 0x800000029D96B560;
  v9 = sub_29D9341B8();
  v10 = sub_29D933FB8();
  v12 = v11;

  MEMORY[0x29ED6A240](v10, v12);

  v13 = v21;
  v14 = v22;
  (*(v5 + 16))(v8, a1, v4);
  v15 = *MEMORY[0x29EDBA6F8];
  v23 = &type metadata for IrregularRhythmNotificationsHealthChecklistConfigurationProvider;
  v24 = sub_29D77C744();
  v21 = v13;
  v22 = v14;
  v16 = sub_29D9344B8();
  v17 = MEMORY[0x29EDC3C28];
  a2[3] = v16;
  a2[4] = v17;
  sub_29D693F78(a2);
  v18 = v15;
  return sub_29D934498();
}

void sub_29D8A0808(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = sub_29D9341E8();
  v4 = *(v36 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v36, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v34 - v10;
  v12 = objc_opt_self();
  v13 = [v12 sharedBehavior];
  if (!v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  v15 = [v13 features];

  if (!v15)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = [v15 chutney];

  if (v16)
  {
    v17 = sub_29D8A2210();
  }

  else
  {
    v17 = sub_29D73FB40(MEMORY[0x29EDCA190]);
  }

  v18 = v17;
  v19 = [v12 sharedBehavior];
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [v19 features];

  if (!v21)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v22 = [v21 hermit];

  v35 = a2;
  if (v22)
  {
    v23 = sub_29D8A23CC();
  }

  else
  {
    v23 = sub_29D73FB40(MEMORY[0x29EDCA190]);
  }

  v24 = v23;
  v34 = v4;
  v25 = *(v4 + 16);
  v26 = v36;
  v25(v11, a1, v36);
  sub_29D934188();
  sub_29D693E2C(v37, v37[3]);
  v27 = sub_29D934118();
  v28 = sub_29D8A2578(v27);

  sub_29D69417C(v37);
  v29 = type metadata accessor for HeartArticlesGeneratorPipeline(0);
  v30 = swift_allocObject();
  *(v30 + qword_2A1A243F8) = v28;
  *(v30 + qword_2A1A243F0) = v18;
  *(v30 + qword_2A1A24400) = v24;
  v25(v8, v11, v26);
  swift_bridgeObjectRetain_n();
  sub_29D935E88();
  sub_29D935E88();
  v31 = sub_29D9376F8();
  v32 = sub_29D71C6CC(v11, v28, v18, v24);

  if (v32)
  {
    v37[0] = v32;
    sub_29D6C320C(0);
    sub_29D8A2F58(&qword_2A1A24AE0, sub_29D6C320C, MEMORY[0x29EDB8A00]);
    sub_29D938418();
    sub_29D937708();
  }

  (*(v34 + 8))(v11, v36);
  v33 = v35;
  v35[3] = v29;
  v33[4] = sub_29D8A2F58(&qword_2A1A243E8, type metadata accessor for HeartArticlesGeneratorPipeline, MEMORY[0x29EDC1580]);
  *v33 = v31;
}

uint64_t sub_29D8A0BF8@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

void sub_29D8A0C54(uint64_t a1, uint64_t a2)
{
  v67 = sub_29D937898();
  v4 = *(v67 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v67, v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = &v65 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v65 - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && a1)
  {
    v17 = v16;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = sub_29D933E98();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 profileIdentifier];
      v21 = [v20 type];

      if (v21 != 1)
      {
        sub_29D9372E8();
        swift_unknownObjectRetain();
        v55 = sub_29D937878();
        v56 = sub_29D93A2A8();
        sub_29D936978();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v70 = v66;
          *v57 = 136446466;
          v58 = sub_29D93AF08();
          v60 = sub_29D6C2364(v58, v59, &v70);

          *(v57 + 4) = v60;
          *(v57 + 12) = 2080;
          v68 = a1;
          v69 = v17;
          sub_29D695734(0, &qword_2A17B71A8, MEMORY[0x29EDC36B0], 0);
          swift_unknownObjectRetain();
          v61 = sub_29D939DA8();
          v63 = sub_29D6C2364(v61, v62, &v70);

          *(v57 + 14) = v63;
          _os_log_impl(&dword_29D677000, v55, v56, "[%{public}s] Heart plugin only supports primary profile, ignoring context: %s", v57, 0x16u);
          v64 = v66;
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v64, -1, -1);
          MEMORY[0x29ED6BE30](v57, -1, -1);
        }

        (*(v4 + 8))(v15, v67);
LABEL_18:
        sub_29D936978();

        return;
      }

      v70 = MEMORY[0x29EDCA190];
      v22 = [objc_opt_self() sharedBehavior];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 features];

        if (v24)
        {
          v25 = [v24 chutney];

          if (v25)
          {
            sub_29D8A2B54(0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_29D93F680;
            type metadata accessor for BloodPressureJournalSetUpJournalExecutor();
            v27 = swift_allocObject();
            v27[2] = a1;
            v27[3] = v17;
            v27[4] = v19;
            v28 = sub_29D8A2F58(&qword_2A1A24580, type metadata accessor for BloodPressureJournalSetUpJournalExecutor, &unk_29D94FB50);
            *(inited + 32) = v27;
            *(inited + 40) = v28;
            type metadata accessor for BloodPressureJournalSummaryExecutor();
            v29 = swift_allocObject();
            v68 = sub_29D939D68();
            v69 = v30;
            v31 = v19;
            swift_unknownObjectRetain();
            v32 = v31;
            sub_29D935E88();
            MEMORY[0x29ED6A240](0xD00000000000001DLL, 0x800000029D96B630);

            v33 = v69;
            v29[2] = v68;
            v29[3] = v33;
            v29[4] = a1;
            v29[5] = v17;
            v29[6] = v32;
            v34 = sub_29D8A2F58(&unk_2A1A23AB0, type metadata accessor for BloodPressureJournalSummaryExecutor, &unk_29D948E48);
            *(inited + 48) = v29;
            *(inited + 56) = v34;
            sub_29D88C348(inited);

            return;
          }

          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      sub_29D9372E8();
      swift_unknownObjectRetain();
      v45 = sub_29D937878();
      v46 = sub_29D93A2A8();
      sub_29D936978();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v70 = v48;
        *v47 = 136446466;
        v49 = sub_29D93AF08();
        v51 = sub_29D6C2364(v49, v50, &v70);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v68 = a1;
        v69 = v17;
        sub_29D695734(0, &qword_2A17B71A8, MEMORY[0x29EDC36B0], 0);
        swift_unknownObjectRetain();
        v52 = sub_29D939DA8();
        v54 = sub_29D6C2364(v52, v53, &v70);

        *(v47 + 14) = v54;
        _os_log_impl(&dword_29D677000, v45, v46, "[%{public}s] Heart plugin cannot perform work without a health store, ignoring context: %s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v48, -1, -1);
        MEMORY[0x29ED6BE30](v47, -1, -1);
      }

      (*(v4 + 8))(v12, v67);
      sub_29D936978();
    }
  }

  else
  {
    sub_29D9372E8();
    swift_unknownObjectRetain();
    v35 = sub_29D937878();
    v36 = sub_29D93A2A8();
    sub_29D936978();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v70 = v38;
      *v37 = 136446466;
      v39 = sub_29D93AF08();
      v41 = sub_29D6C2364(v39, v40, &v70);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v68 = a1;
      v69 = a2;
      sub_29D695734(0, &qword_2A17B71A0, MEMORY[0x29EDC34B8], 0);
      swift_unknownObjectRetain();
      v42 = sub_29D939DA8();
      v44 = sub_29D6C2364(v42, v43, &v70);

      *(v37 + 14) = v44;
      _os_log_impl(&dword_29D677000, v35, v36, "[%{public}s] Heart plugin cannot perform work without a HealthPlatformOrchestrationContext, ignoring context: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v38, -1, -1);
      MEMORY[0x29ED6BE30](v37, -1, -1);
    }

    (*(v4 + 8))(v8, v67);
  }
}

void sub_29D8A1488(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D695734(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D8A1530@<X0>(_WORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  *a4 = v6;
  return result;
}

uint64_t sub_29D8A15C0(__int16 *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_29D9383D8();
}

uint64_t sub_29D8A162C(uint64_t a1)
{
  sub_29D8A2AF0(0, &qword_2A1A21ED0, sub_29D69BECC, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8A16B8(uint64_t a1)
{
  if (!qword_2A1A21F68)
  {
    sub_29D8A1488(255, &unk_2A1A24778, &qword_2A1A25758, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21F68);
    }
  }
}

uint64_t sub_29D8A173C(uint64_t a1)
{
  sub_29D69BECC(0);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_29D7C80F8(a1, v4);
}

char *sub_29D8A17AC(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v85 = a4;
  v81 = a1;
  v82 = a2;
  sub_29D69BECC(0);
  v84 = v7;
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v78 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v77 = &v75 - v12;
  v80 = sub_29D934358();
  v79 = *(v80 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v80, v13);
  v76 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v75 = &v75 - v17;
  v18 = MEMORY[0x29EDB8B00];
  sub_29D8A2A00(0, &qword_2A1A222A0, &type metadata for HeartFeaturePromotionResult, MEMORY[0x29EDB8B00]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v75 - v23;
  sub_29D8A2A00(0, &qword_2A1A222A8, &type metadata for HeartPromotionResult, v18);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = &v75 - v29;
  v91 = sub_29D6B8230();
  v92 = MEMORY[0x29EDC2EA8];
  v83 = v91;
  v90[0] = a3;
  v31 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__atrialFibrillationAvailabilityResult;
  LOWORD(v86) = 2;
  sub_29D938398();
  v32 = *(v27 + 32);
  v32(&a5[v31], v30, v26);
  v33 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__aFibBurdenAvailabilityResult;
  LODWORD(v86) = 131074;
  sub_29D938398();
  v34 = *(v21 + 32);
  v34(&a5[v33], v24, v20);
  v35 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__aFibFeaturesAvailabilityResult;
  LOWORD(v86) = 2;
  sub_29D938398();
  v32(&a5[v35], v30, v26);
  v36 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__hypertensionNotificationsAvailabilityResult;
  LODWORD(v86) = 131074;
  sub_29D938398();
  v34(&a5[v36], v24, v20);
  v37 = &a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_hypertensionNotificationsFeatureStatusManager];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 4) = 0;
  v38 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__hypertensionNotificationsFeatureStatus;
  sub_29D887064(0);
  swift_allocObject();
  *&a5[v38] = sub_29D934678();
  v39 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__irregularRhythmNotificationsFeatureStatus;
  swift_allocObject();
  *&a5[v39] = sub_29D934678();
  v40 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability__aFibBurdenFeatureStatus;
  swift_allocObject();
  *&a5[v40] = sub_29D934678();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v41 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v41 = MEMORY[0x29EDCA1A0];
  }

  *&a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_subscriptions] = v41;
  v43 = v81;
  v42 = v82;
  *&a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_healthStore] = v81;
  *&a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_heartRhythmAvailability] = v42;
  sub_29D6945AC(v90, &a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_irregularRhythmNotificationsStatusManager]);
  v44 = v43;
  v45 = v42;
  v46 = [v44 profileIdentifier];
  v47 = [v46 type];

  if (v47 == 1)
  {
    v48 = *MEMORY[0x29EDBA6B0];
    v49 = v77;
    sub_29D69C6F8(v85, v77);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_29D7CA238(v49);
      v50 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v48 healthStore:v44];
    }

    else
    {
      v53 = v79;
      v54 = v75;
      v55 = v80;
      (*(v79 + 32))(v75, v49, v80);
      sub_29D934348();
      v56 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v57 = sub_29D939D28();

      v50 = [v56 initWithFeatureIdentifier:v48 healthStore:v44 currentCountryCode:v57];

      (*(v53 + 8))(v54, v55);
    }

    v52 = MEMORY[0x29EDC2EA8];
    v51 = v83;
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  v58 = &a5[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_aFibBurdenFeatureStatusManager];
  *v58 = v50;
  *(v58 + 1) = 0;
  *(v58 + 2) = 0;
  *(v58 + 3) = v51;
  *(v58 + 4) = v52;
  v59 = type metadata accessor for HeartPromotionAvailability(0);
  v89.receiver = a5;
  v89.super_class = v59;
  v60 = objc_msgSendSuper2(&v89, sel_init);
  v61 = [v44 profileIdentifier];
  v62 = [v61 type];

  if (v62 == 1)
  {
    v63 = *MEMORY[0x29EDBA6F0];
    v64 = v78;
    sub_29D69C6F8(v85, v78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_29D7CA238(v64);
      v65 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v63 healthStore:v44];
      *(&v87 + 1) = v83;
      v88 = MEMORY[0x29EDC2EA8];
      *&v86 = v65;
    }

    else
    {
      v66 = v79;
      v67 = v76;
      (*(v79 + 32))(v76, v64, v80);
      sub_29D934348();
      v68 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v69 = sub_29D939D28();

      v70 = [v68 initWithFeatureIdentifier:v63 healthStore:v44 currentCountryCode:v69];

      *(&v87 + 1) = v83;
      v88 = MEMORY[0x29EDC2EA8];
      *&v86 = v70;
      (*(v66 + 8))(v67, v80);
    }
  }

  else
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
  }

  v71 = OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_hypertensionNotificationsFeatureStatusManager;
  swift_beginAccess();
  sub_29D772BC0(&v86, &v60[v71]);
  swift_endAccess();
  [*&v60[OBJC_IVAR____TtC5Heart26HeartPromotionAvailability_heartRhythmAvailability] addHeartRhythmAvailabilityObserver_];
  sub_29D8828C8();
  sub_29D883338();
  sub_29D882DD0();
  LOWORD(v71) = sub_29D884360(0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOWORD(v86) = v71;
  v72 = v60;
  sub_29D9383D8();
  sub_29D883BDC();
  sub_29D883868();
  v73 = sub_29D884360(2);
  swift_getKeyPath();
  swift_getKeyPath();
  LOWORD(v86) = v73;
  sub_29D9383D8();
  sub_29D7CA238(v85);
  sub_29D69417C(v90);
  return v72;
}

uint64_t sub_29D8A20F8(uint64_t a1, uint64_t a2)
{
  sub_29D8A1488(0, &unk_2A1A24778, &qword_2A1A25758, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8A2188(uint64_t a1)
{
  sub_29D8A1488(0, &unk_2A1A24778, &qword_2A1A25758, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_29D8A2210()
{
  v0 = MEMORY[0x29EDC9E90];
  sub_29D8A2AF0(0, &qword_2A1A21F00, sub_29D8A2A50, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D943EA0;
  *(inited + 32) = 0;
  sub_29D8A2AF0(0, &qword_2A1A24878, sub_29D694718, v0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D93DDB0;
  v3 = sub_29D9049B4(0);
  *(v2 + 56) = &type metadata for BloodPressureJournalArticleDataProvider;
  v4 = sub_29D89A894();
  *(v2 + 64) = v4;
  v5 = sub_29D89A8E8();
  *(v2 + 72) = v5;
  *(v2 + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D93DDB0;
  v7 = sub_29D9049B4(1);
  *(v6 + 56) = &type metadata for BloodPressureJournalArticleDataProvider;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  *(v6 + 32) = v7;
  *(inited + 56) = v6;
  *(inited + 64) = 2;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D93DDB0;
  v9 = sub_29D9049B4(2);
  *(v8 + 56) = &type metadata for BloodPressureJournalArticleDataProvider;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 32) = v9;
  *(inited + 72) = v8;
  v10 = sub_29D73FB40(inited);
  swift_setDeallocating();
  sub_29D8A2A50(0);
  swift_arrayDestroy();
  return v10;
}

void *sub_29D8A23CC()
{
  v0 = MEMORY[0x29EDC9E90];
  sub_29D8A2AF0(0, &qword_2A1A21F00, sub_29D8A2A50, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D943EA0;
  *(inited + 32) = 0;
  sub_29D8A2AF0(0, &qword_2A1A24878, sub_29D694718, v0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D93DDB0;
  *(v2 + 56) = &type metadata for HypertensionNotificationsArticleDataProvider;
  v3 = sub_29D89A9E4();
  *(v2 + 64) = v3;
  v4 = sub_29D89AA38();
  *(v2 + 72) = v4;
  *(v2 + 32) = 0;
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93DDB0;
  *(v5 + 56) = &type metadata for HypertensionNotificationsArticleDataProvider;
  *(v5 + 64) = v3;
  *(v5 + 72) = v4;
  *(v5 + 32) = 1;
  *(inited + 56) = v5;
  *(inited + 64) = 2;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29D93DDB0;
  *(v6 + 56) = &type metadata for HypertensionNotificationsFIGOArticleDataProvider;
  *(v6 + 64) = sub_29D89A93C();
  *(v6 + 72) = sub_29D89A990();
  *(inited + 72) = v6;
  v7 = sub_29D73FB40(inited);
  swift_setDeallocating();
  sub_29D8A2A50(0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_29D8A2578(void *a1)
{
  sub_29D8A2AF0(0, &qword_2A1A24878, sub_29D694718, MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29D944EA0;
  *(v2 + 56) = &type metadata for HeartRateArticleDataProvider;
  *(v2 + 64) = sub_29D7ED1DC();
  *(v2 + 72) = sub_29D7ED230();
  *(v2 + 104) = &type metadata for CardioFitnessOverviewArticleDataProvider;
  *(v2 + 112) = sub_29D89AC24();
  *(v2 + 120) = sub_29D89AC78();
  *(v2 + 80) = a1;
  v3 = *MEMORY[0x29EDBA6C0];
  v4 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
  v5 = a1;
  v6 = [v4 initWithFeatureIdentifier:v3 healthStore:v5 currentCountryCode:0];
  v13 = sub_29D6B8230();
  v14 = MEMORY[0x29EDC2EA8];
  *&v12 = v6;
  v7 = type metadata accessor for LowCardioFitnessArticleDataProvider(0);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___featureStatus;
  sub_29D8A2AF0(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *(v8 + OBJC_IVAR____TtC5Heart35LowCardioFitnessArticleDataProvider____lazy_storage___showBridgeLink) = 2;
  *(v8 + 16) = v5;
  sub_29D679D3C(&v12, v8 + 24);
  *(v2 + 152) = v7;
  *(v2 + 160) = sub_29D8A2F58(qword_2A1A25918, type metadata accessor for LowCardioFitnessArticleDataProvider, &unk_29D9542F0);
  *(v2 + 168) = sub_29D8A2F58(&qword_2A1A25910, type metadata accessor for LowCardioFitnessArticleDataProvider, &unk_29D954288);
  *(v2 + 128) = v8;
  *(v2 + 200) = &type metadata for AFibBurdenArticleProviderLearnAboutAFib;
  *(v2 + 208) = sub_29D89AB34();
  *(v2 + 216) = sub_29D89AB88();
  *(v2 + 248) = &type metadata for AFibBurdenArticleProviderLearnAboutAFibBurden;
  *(v2 + 256) = sub_29D89AA8C();
  *(v2 + 264) = sub_29D89AAE0();
  return v2;
}

uint64_t sub_29D8A27FC(uint64_t a1)
{
  v2 = sub_29D9341E8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8A1488(0, &unk_2A1A24880, &qword_2A1A25758, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29D93F680;
  v8 = *(v3 + 16);
  v8(v6, a1, v2);
  v9 = *MEMORY[0x29EDBA6B8];
  v16[4] = &type metadata for BloodPressureJournalPromotionTileFeedItemProvider;
  v16[5] = sub_29D6B3DF8();
  v10 = sub_29D9344B8();
  v11 = MEMORY[0x29EDC3C28];
  *(v7 + 56) = v10;
  *(v7 + 64) = v11;
  sub_29D693F78((v7 + 32));
  v12 = v9;
  sub_29D934498();
  v8(v6, a1, v2);
  v13 = type metadata accessor for BloodPressureJournalNotificationSettingsGeneratorPipeline(0);
  swift_allocObject();
  v14 = sub_29D6BEEAC(v6);
  *(v7 + 96) = v13;
  *(v7 + 104) = sub_29D8A2F58(&qword_2A1A22B58, type metadata accessor for BloodPressureJournalNotificationSettingsGeneratorPipeline, &unk_29D9409A4);
  *(v7 + 72) = v14;
  return v7;
}

void sub_29D8A2A00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D8A2A50(uint64_t a1)
{
  if (!qword_2A1A21FF8)
  {
    type metadata accessor for HKBloodPressureClassificationGuidelines(255);
    sub_29D8A2AF0(255, &qword_2A1A22288, sub_29D694718, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A21FF8);
    }
  }
}

void sub_29D8A2AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D8A2B54(uint64_t a1)
{
  if (!qword_2A1A21F28)
  {
    sub_29D695734(255, &unk_2A1A246A0, MEMORY[0x29EDC3628], 0);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21F28);
    }
  }
}

void sub_29D8A2BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (v7 && a1)
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = sub_29D933E98();
    if (!v9)
    {
      sub_29D936978();
      return;
    }

    v10 = v9;
    v11 = [objc_opt_self() sharedBehavior];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 features];

      if (v13)
      {
        v14 = [v13 chutney];

        if (v14)
        {
          sub_29D8A1488(0, &qword_2A1A21F48, &qword_2A1A246D0, MEMORY[0x29EDC34A8], MEMORY[0x29EDC9E90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_29D943EA0;
          v16 = type metadata accessor for BloodPressureJournalInputSignal();
          v17 = objc_allocWithZone(MEMORY[0x29EDC51F8]);
          swift_unknownObjectRetain();
          v18 = v10;
          v19 = [v17 initWithHealthStore_];
          v20 = [objc_allocWithZone(MEMORY[0x29EDBAA48]) initWithHealthStore_];

          v21 = *(v7 + 8);
          swift_unknownObjectRetain();
          v22 = sub_29D8401E4(a1, a3, a4, v19, v20, sub_29D83C9E0, 0, v16, ObjectType, v21);
          *(inited + 56) = v16;
          *(inited + 64) = sub_29D8A2F58(&qword_2A1A23DB0, type metadata accessor for BloodPressureJournalInputSignal, &unk_29D94D3A4);
          *(inited + 32) = v22;
          v23 = sub_29D934468();
          swift_unknownObjectRetain();
          v24 = v18;
          swift_unknownObjectRetain();
          v25 = sub_29D934458();
          *(inited + 96) = v23;
          *(inited + 104) = sub_29D8A2F58(&qword_2A1A24738, MEMORY[0x29EDC3BF0], MEMORY[0x29EDC3BD8]);
          *(inited + 72) = v25;
          v26 = sub_29D9343B8();
          swift_unknownObjectRetain();
          v27 = v24;
          swift_unknownObjectRetain();
          v28 = sub_29D9343A8();
          *(inited + 136) = v26;
          *(inited + 144) = sub_29D8A2F58(&qword_2A1A24748, MEMORY[0x29EDC3AC0], MEMORY[0x29EDC3AA0]);
          *(inited + 112) = v28;
          sub_29D88C454(inited);
          sub_29D936978();
        }

        else
        {
          sub_29D936978();
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_29D8A2F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D8A3054(void *a1)
{
  v2 = v1;
  v4 = [a1 healthDataSource];
  if (v4)
  {
    v5 = v4;
    v6 = sub_29D73F010(MEMORY[0x29EDCA190]);
    if (*(v2 + 16))
    {
      if (*(v2 + 16) == 1)
      {
        v7 = 0xEA00000000006465;
        v8 = 0x7765695620464450;
      }

      else
      {
        v7 = 0x800000029D95EF70;
        v8 = 0xD00000000000001ALL;
      }
    }

    else
    {
      v8 = 0xD000000000000010;
      v7 = 0x800000029D95EF90;
    }

    v9 = MEMORY[0x29EDC99B0];
    v32 = MEMORY[0x29EDC99B0];
    *&v31 = v8;
    *(&v31 + 1) = v7;
    sub_29D6940E0(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v30, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v33 = v6;
    v11 = sub_29D939D68();
    v13 = v12;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v14 = sub_29D937898();
    v15 = sub_29D69C6C0(v14, qword_2A1A2BF28);
    type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent();
    v16 = sub_29D93A308();
    v32 = v9;
    *&v31 = v16;
    *(&v31 + 1) = v17;
    sub_29D6940E0(&v31, v30);
    v18 = v33;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v30, v11, v13, v19);

    v33 = v18;
    v20 = sub_29D939D68();
    v22 = v21;
    v23 = [a1 environmentDataSource];
    v24 = sub_29D8A3B60(v5, v23);

    v32 = sub_29D6B73CC();
    *&v31 = v24;
    sub_29D6940E0(&v31, v30);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v30, v20, v22, v25);

    v33 = v18;
    v26 = sub_29D7DB630(v5, *MEMORY[0x29EDBA6B0], 1, v15);
    if (v27)
    {
      v32 = v9;
      *&v31 = v26;
      *(&v31 + 1) = v27;
      sub_29D6940E0(&v31, v30);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C(v30, 0x5665727574616566, 0xEE006E6F69737265, v28);
      sub_29D936978();
      return v18;
    }

    else
    {
      sub_29D8C42F8(0x5665727574616566, 0xEE006E6F69737265, &v31);
      sub_29D936978();
      sub_29D6FE6B0(&v31);
      return v33;
    }
  }

  else
  {
    result = sub_29D93AB28();
    __break(1u);
  }

  return result;
}

unint64_t sub_29D8A34CC()
{
  result = qword_2A17B71B0;
  if (!qword_2A17B71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B71B0);
  }

  return result;
}

id sub_29D8A3520(void *a1, void *a2, uint64_t a3)
{

  return sub_29D8A3630(a1, a2, a3, type metadata accessor for AFibBurdenOnboardingErrorAnalyticsEvent, &qword_2A17B71C0, type metadata accessor for AFibBurdenOnboardingErrorAnalyticsEvent);
}

id sub_29D8A35A8(void *a1, void *a2, uint64_t a3)
{

  return sub_29D8A3630(a1, a2, a3, type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent, &qword_2A17B71B8, type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent);
}

id sub_29D8A3630(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v50[1] = *MEMORY[0x29EDCA608];
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 currentDate];
  sub_29D933998();

  v17 = sub_29D933958();
  (*(v12 + 8))(v15, v11);
  v50[0] = 0;
  v18 = [a1 ageWithCurrentDate:v17 error:v50];

  v19 = v50[0];
  if (v18)
  {
    v20 = *MEMORY[0x29EDBAFA8];
    v21 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    v22 = v18;
    v23 = v19;
    v24 = [v21 initWithInteger_];
    v25 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    if (v25)
    {

      return v25;
    }

    v42 = sub_29D937878();
    v43 = sub_29D93A288();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50[0] = v45;
      *v44 = 136446210;
      v49 = a4(0);
      sub_29D8A3FE0(0, a5, 255, a6);
      v46 = sub_29D939DA8();
      v48 = sub_29D6C2364(v46, v47, v50);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_29D677000, v42, v43, "[%{public}s] Error when bucketing retrieved age", v44, 0xCu);
      sub_29D69417C(v45);
      MEMORY[0x29ED6BE30](v45, -1, -1);
      MEMORY[0x29ED6BE30](v44, -1, -1);
    }

    v41 = *MEMORY[0x29EDBA360];
  }

  else
  {
    v27 = v50[0];
    v28 = sub_29D933598();

    swift_willThrow();
    v29 = v28;
    v30 = sub_29D937878();
    v31 = sub_29D93A288();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50[0] = v33;
      *v32 = 136446466;
      v49 = a4(0);
      sub_29D8A3FE0(0, a5, 255, a6);
      v34 = sub_29D939DA8();
      v36 = sub_29D6C2364(v34, v35, v50);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v49 = v28;
      v37 = v28;
      sub_29D6A0CD0();
      v38 = sub_29D939DA8();
      v40 = sub_29D6C2364(v38, v39, v50);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_29D677000, v30, v31, "[%{public}s] Error when retrieving bucketed age: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v32, -1, -1);
    }

    v41 = *MEMORY[0x29EDBA360];
  }

  return v41;
}

id sub_29D8A3AD8(void *a1, void *a2, uint64_t a3)
{

  return sub_29D8A3630(a1, a2, a3, type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent, &qword_2A17B5390, type metadata accessor for AFibBurdenNotificationInteractionAnalyticsEvent);
}

id sub_29D8A3B60(void *a1, void *a2)
{
  v44[1] = *MEMORY[0x29EDCA608];
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 currentDate];
  sub_29D933998();

  v10 = sub_29D933958();
  (*(v5 + 8))(v8, v4);
  v44[0] = 0;
  v11 = [a1 ageWithCurrentDate:v10 error:v44];

  v12 = v44[0];
  if (v11)
  {
    v13 = *MEMORY[0x29EDBAFA8];
    v14 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    v15 = v11;
    v16 = v12;
    v17 = [v14 initWithInteger_];
    v18 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    if (!v18)
    {
      v19 = sub_29D937878();
      v20 = sub_29D93A288();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44[0] = v22;
        *v21 = 136446210;
        v43 = type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent();
        sub_29D8A3FE0(0, &qword_2A17B5388, v23, type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent);
        v24 = sub_29D939DA8();
        v26 = sub_29D6C2364(v24, v25, v44);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_29D677000, v19, v20, "[%{public}s] Error when bucketing retrieved age", v21, 0xCu);
        sub_29D69417C(v22);
        MEMORY[0x29ED6BE30](v22, -1, -1);
        MEMORY[0x29ED6BE30](v21, -1, -1);
      }

      v18 = *MEMORY[0x29EDBA360];
    }
  }

  else
  {
    v27 = v44[0];
    v28 = sub_29D933598();

    swift_willThrow();
    v29 = v28;
    v30 = sub_29D937878();
    v31 = sub_29D93A288();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44[0] = v33;
      *v32 = 136446466;
      v43 = type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent();
      sub_29D8A3FE0(0, &qword_2A17B5388, v34, type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent);
      v35 = sub_29D939DA8();
      v37 = sub_29D6C2364(v35, v36, v44);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v43 = v28;
      v38 = v28;
      sub_29D6A0CD0();
      v39 = sub_29D939DA8();
      v41 = sub_29D6C2364(v39, v40, v44);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_29D677000, v30, v31, "[%{public}s] Error when retrieving bucketed age: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v32, -1, -1);
    }

    v18 = *MEMORY[0x29EDBA360];
  }

  return v18;
}

uint64_t sub_29D8A3FE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressureJournalOnboardingIntroViewController(uint64_t a1)
{
  result = qword_2A17B71D8;
  if (!qword_2A17B71D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8A40D0()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for BloodPressureJournalOnboardingIntroViewController(0);
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  sub_29D88BBC8(&unk_2A243F420);
  v2 = sub_29D939F18();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v4 = sub_29D939D28();

  v5 = [v1 scrollView];
  sub_29D88BBC8(&unk_2A243F460);
  v6 = sub_29D939F18();
  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v8 = sub_29D939D28();

  [v5 setAccessibilityIdentifier_];

  v9 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243F4A0);
  v10 = sub_29D939F18();
  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v12 = sub_29D939D28();

  [v9 setTitleAccessibilityIdentifier_];

  v13 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243F4E0);
  v14 = sub_29D939F18();
  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v16 = sub_29D939D28();

  [v13 setDetailTextAccessibilityIdentifier_];

  v17 = [v1 navigationItem];
  v18 = [v17 rightBarButtonItem];

  if (!v18)
  {
    return;
  }

  sub_29D88BBC8(&unk_2A243F520);
  v19 = sub_29D939F18();
  v20 = HKUIJoinStringsForAutomationIdentifier();

  if (!v20)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v21 = sub_29D939D28();

  [v18 setAccessibilityIdentifier_];
}

void sub_29D8A453C(void *a1)
{
  v1 = a1;
  sub_29D8A40D0();
}

uint64_t sub_29D8A4584()
{
  v1 = v0;
  v2 = *&v0[qword_2A17B71D0];
  v3 = *(v2 + 32);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  LOBYTE(v2) = *(v2 + 40);
  v5 = v3;
  sub_29D8B530C(1, 0, v2, 0, 2);

  v7 = *&v0[qword_2A17B71C8];
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_29D8A49E4(v1, v7, 0, &off_2A244BCA0);

    return sub_29D936978();
  }

  return result;
}

void sub_29D8A4654(void *a1)
{
  v1 = a1;
  sub_29D8A4584();
}

uint64_t sub_29D8A46CC()
{
  sub_29D936978();
}

id sub_29D8A470C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalOnboardingIntroViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8A4744(uint64_t a1)
{
  sub_29D936978();
}

uint64_t sub_29D8A4798(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B71C8);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D8A47B4(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = *&a2[OBJC_IVAR____TtC5Heart41BloodPressureJournalOnboardingCoordinator_model];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = 1;
  *(v6 + 32) = a1;
  *(v6 + 40) = &off_2A2448840;
  *(v6 + 48) = ObjectType;
  v13 = a1;
  v14 = &off_2A2448840;
  sub_29D695734(0, &qword_2A17B71E8, &protocol descriptor for BloodPressureJournalOnboardingStageViewController, 0);
  sub_29D695734(0, &qword_2A17B71F0, &protocol descriptor for BloodPressureJournalOnboardingCuffAccessProviding, 1);
  v7 = a1;
  v8 = a2;
  if (swift_dynamicCast())
  {
    sub_29D679D3C(v11, v15);
    *(v5 + 16) = *(*sub_29D693E2C(v15, v16) + qword_2A17B6448);
    if (*(*sub_29D693E2C(v15, v16) + qword_2A17B6448))
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_29D8A4C20;
      *(v9 + 24) = v6;

      sub_29D76CA44(sub_29D8A4D00, v9);
    }

    else
    {
      sub_29D8AEC18(0, v8, 1, v7, &off_2A2448840, ObjectType);
    }

    return sub_29D69417C(v15);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_29D8A4C38(v11);
    sub_29D8AEC18(1, v8, 1, v7, &off_2A2448840, ObjectType);
  }
}

void sub_29D8A49E4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = a2;
  sub_29D8AEC18(0, v10, a3, v9, a4, ObjectType);
}

uint64_t sub_29D8A4A78(uint64_t a1)
{
  v2 = (v1 + qword_2A17B71C8);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_2A17B71D0) = a1;
  objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingEmptyViewController(0));
  sub_29D935F88();
  swift_allocObject();

  sub_29D935F98();
  sub_29D936D88();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D74059C();

  return sub_29D936A98();
}

uint64_t sub_29D8A4C38(uint64_t a1)
{
  sub_29D8A4C94(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8A4C94(uint64_t a1)
{
  if (!qword_2A17B71F8)
  {
    sub_29D695734(255, &qword_2A17B71F0, &protocol descriptor for BloodPressureJournalOnboardingCuffAccessProviding, 1);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B71F8);
    }
  }
}

uint64_t sub_29D8A4D08(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA898];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    if (a1 == 4)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA930];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
    v3 = MEMORY[0x29EDBA4A8];
  }

  else
  {
    if (!a1)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA870];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    if (a1 == 1)
    {
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v1 = MEMORY[0x29EDBA848];
      return MEMORY[0x29ED6A6C0](*v1);
    }

    sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
    v3 = MEMORY[0x29EDBA4D0];
  }

  return MEMORY[0x29ED6A6B0](*v3);
}

id sub_29D8A4E50(uint64_t a1, unsigned __int8 a2)
{
  result = [objc_opt_self() sharedInstanceForHealthStore_];
  if (result)
  {
    v4 = result;
    v5 = sub_29D8A4D08(a2);
    v6 = [v4 displayTypeForObjectType_];

    if (!v6)
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v7 = sub_29D937898();
      sub_29D69C6C0(v7, qword_2A1A2BF28);
      v8 = sub_29D937878();
      v9 = sub_29D93A288();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v22 = v11;
        *v10 = 136446466;
        sub_29D8A5454();
        v12 = sub_29D939DA8();
        v14 = sub_29D6C2364(v12, v13, &v22);

        *(v10 + 4) = v14;
        *(v10 + 12) = 2080;
        v15 = sub_29D8A4D08(a2);
        v16 = [v15 description];

        v17 = sub_29D939D68();
        v19 = v18;

        v20 = sub_29D6C2364(v17, v19, &v22);

        *(v10 + 14) = v20;
        _os_log_impl(&dword_29D677000, v8, v9, "[%{public}s] DisplayType not found for quantityType %s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v11, -1, -1);
        MEMORY[0x29ED6BE30](v10, -1, -1);
      }

      sub_29D8A53C0();
      swift_allocError();
      *v21 = 0;
      swift_willThrow();
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_29D8A50D4(char *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2 || a3 == 5)
  {
    return [objc_opt_self() secondUnit];
  }

  v6 = [objc_opt_self() sharedInstanceForHealthStore_];
  v7 = [v6 createHKUnitPreferenceController];

  v8 = [v7 unitForDisplayType_];
  if (v8)
  {
    a1 = v8;
  }

  else
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2BF28);
    v10 = sub_29D937878();
    v11 = sub_29D93A288();
    if (os_log_type_enabled(v10, v11))
    {
      a1 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *a1 = 136446466;
      v23 = v12;
      sub_29D8A5454();
      v13 = sub_29D939DA8();
      v15 = sub_29D6C2364(v13, v14, &v23);

      *(a1 + 4) = v15;
      *(a1 + 6) = 2080;
      v16 = sub_29D8A4D08(a3);
      v17 = [v16 description];

      v18 = sub_29D939D68();
      v20 = v19;

      v21 = sub_29D6C2364(v18, v20, &v23);

      *(a1 + 14) = v21;
      _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s] Unit not found for sampleType %s", a1, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](a1, -1, -1);
    }

    sub_29D8A53C0();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_29D8A53C0()
{
  result = qword_2A17B7200;
  if (!qword_2A17B7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7200);
  }

  return result;
}

unint64_t sub_29D8A5454()
{
  result = qword_2A17B7208;
  if (!qword_2A17B7208)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B7208);
  }

  return result;
}

unint64_t sub_29D8A54C0()
{
  result = qword_2A17B7210;
  if (!qword_2A17B7210)
  {
    sub_29D8A5518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7210);
  }

  return result;
}

void sub_29D8A5518()
{
  if (!qword_2A17B7218)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B7218);
    }
  }
}

unint64_t sub_29D8A556C()
{
  result = qword_2A17B7220;
  if (!qword_2A17B7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7220);
  }

  return result;
}

unint64_t sub_29D8A55C8()
{
  result = qword_2A17B7228;
  if (!qword_2A17B7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7228);
  }

  return result;
}

uint64_t sub_29D8A561C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2A1C73D48](sub_29D8A563C, 0, 0);
}

uint64_t sub_29D8A563C()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v0[4]];
  v0[6] = v1;
  sub_29D8A7C2C();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_29D8A5724;

  return sub_29D795B64(v1);
}

uint64_t sub_29D8A5724()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D8A59C4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[9] = v3;
    *v3 = v2;
    v3[1] = sub_29D8A58B0;
    v4 = v2[4];

    return sub_29D796FD8(v4);
  }
}

uint64_t sub_29D8A58B0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_29D8A5C44;
  }

  else
  {
    v2 = sub_29D8A5BDC;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D8A59C4()
{
  v17 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A17D0DB8);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, v16);
    *(v7 + 12) = 2080;
    v0[2] = v6;
    v9 = v6;
    sub_29D695734(0, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
    v10 = sub_29D939DA8();
    v12 = sub_29D6C2364(v10, v11, v16);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Error when onboarding feature: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v13 = v0[6];
  sub_29D8A6CDC();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_29D8A5BDC()
{
  v1 = *(v0 + 48);
  sub_29D8A6CDC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D8A5C44()
{
  v17 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A17D0DB8);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, v16);
    *(v7 + 12) = 2080;
    v0[3] = v6;
    v9 = v6;
    sub_29D695734(0, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
    v10 = sub_29D939DA8();
    v12 = sub_29D6C2364(v10, v11, v16);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Error when running test: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v13 = v0[6];
  sub_29D8A6CDC();
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_29D8A5E7C()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v0[38] = v1;
  v2 = [objc_allocWithZone(MEMORY[0x29EDBACE8]) initWithHealthStore_];
  v0[39] = v2;
  v3 = sub_29D939D28();
  v0[40] = v3;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_29D8A6000;
  v4 = swift_continuation_init();
  sub_29D8A80CC(0);
  v0[25] = v5;
  v0[18] = MEMORY[0x29EDCA5F8];
  v0[19] = 1107296256;
  v0[20] = sub_29D8A6EF0;
  v0[21] = &unk_2A244BE60;
  v0[22] = v4;
  [v2 createProfileOfType:100 displayName:v3 completion:v0 + 18];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D8A6000()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_29D8A63A4;
  }

  else
  {
    v2 = sub_29D8A6110;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D8A6110()
{
  v20 = v0;
  v1 = v0[40];
  v2 = v0[34];
  v0[42] = v2;
  v3 = v2;

  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  v0[43] = sub_29D69C6C0(v4, qword_2A17D0DB8);
  v5 = sub_29D937878();
  v6 = sub_29D93A2A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, &v19);
    *(v7 + 12) = 2080;
    v9 = v3;
    v10 = [v9 description];
    v11 = sub_29D939D68();
    v13 = v12;

    v14 = sub_29D6C2364(v11, v13, &v19);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_29D677000, v5, v6, "[%s] Created profile with identifier %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v15 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v0[44] = v15;
  [v15 setProfileIdentifier_];

  [v15 resume];
  sub_29D939FF8();
  v0[45] = sub_29D939FE8();
  v17 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D8A65C4, v17, v16);
}

uint64_t sub_29D8A63A4(uint64_t a1)
{
  v19 = v1;
  v2 = *(v1 + 320);
  swift_willThrow();

  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 328);
  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A17D0DB8);
  v5 = v3;
  v6 = sub_29D937878();
  v7 = sub_29D93A288();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 328);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, v18);
    *(v9 + 12) = 2080;
    *(v1 + 280) = v8;
    v11 = v8;
    sub_29D695734(0, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
    v12 = sub_29D939DA8();
    v14 = sub_29D6C2364(v12, v13, v18);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_29D677000, v6, v7, "[%s] Error when creating temporary profile: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  swift_willThrow();
  v15 = *(v1 + 312);

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_29D8A65C4()
{
  v1 = *(v0 + 352);

  v2 = [v1 viewControllerFactory];
  v3 = [v2 createHKUnitPreferenceController];

  v4 = swift_task_alloc();
  *(v0 + 368) = v4;
  *v4 = v0;
  v4[1] = sub_29D8A66B8;
  v5 = *(v0 + 352);

  return sub_29D8A561C(v5);
}

uint64_t sub_29D8A66B8()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_29D8A69F4;
  }

  else
  {
    v2 = sub_29D8A67CC;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D8A67CC()
{
  v1 = v0[42];
  v2 = v0[39];
  v0[10] = v0;
  v0[11] = sub_29D8A68E4;
  v3 = swift_continuation_init();
  sub_29D74D4C4(0);
  v0[33] = v4;
  v0[26] = MEMORY[0x29EDCA5F8];
  v0[27] = 1107296256;
  v0[28] = sub_29D8A6FF0;
  v0[29] = &unk_2A244BE88;
  v0[30] = v3;
  [v2 deleteProfile:v1 completion:v0 + 26];

  return MEMORY[0x2A1C73CC0](v0 + 10);
}

uint64_t sub_29D8A68E4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_29D8A6AF0;
  }

  else
  {
    v2 = sub_29D8A6A70;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D8A69F4()
{
  v1 = *(v0 + 312);

  v2 = *(v0 + 304);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29D8A6A70()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29D8A6AF0(uint64_t a1)
{
  v19 = v1;
  v2 = *(v1 + 384);
  swift_willThrow();
  v3 = v2;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 384);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, v18);
    *(v7 + 12) = 2080;
    *(v1 + 288) = v6;
    v9 = v6;
    sub_29D695734(0, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
    v10 = sub_29D939DA8();
    v12 = sub_29D6C2364(v10, v11, v18);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Error when deleting temporary profile: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v13 = *(v1 + 352);
  v14 = *(v1 + 312);
  swift_willThrow();

  v15 = *(v1 + 304);
  v16 = *(v1 + 8);

  return v16();
}

void sub_29D8A6CDC()
{
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A17D0DB8);

  v1 = sub_29D937878();
  v2 = sub_29D93A2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, &v11);
    *(v3 + 12) = 2080;
    v5 = *MEMORY[0x29EDBA6B0];
    v6 = sub_29D93A518();
    v8 = v7;

    v9 = sub_29D6C2364(v6, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&dword_29D677000, v1, v2, "[%s] Tearing down overrides for feature with identifier %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  else
  {

    v5 = *MEMORY[0x29EDBA6B0];
  }

  v10 = [objc_allocWithZone(MEMORY[0x29EDBAB90]) initWithFeatureIdentifier_];
  [v10 resetAllRequirementSatisfactionOverrides];
}

uint64_t *sub_29D8A6EF0(uint64_t a1, void *a2, void *a3)
{
  sub_29D695734(0, &qword_2A17B72C8, &protocol descriptor for TemporaryHealthStorePPTTestRunner, 0);
  result = sub_29D693E2C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D695734(0, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_29D8A6FF0(uint64_t a1, int a2, void *a3)
{
  sub_29D695734(0, &qword_2A17B72C8, &protocol descriptor for TemporaryHealthStorePPTTestRunner, 0);
  result = sub_29D693E2C((a1 + 32), *(a1 + 56));
  if (a2)
  {

    return swift_continuation_throwingResume();
  }

  else if (a3)
  {
    sub_29D695734(0, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D8A70D0()
{
  v0 = sub_29D937898();
  sub_29D6FD494(v0, qword_2A17D0DB8);
  sub_29D69C6C0(v0, qword_2A17D0DB8);
  return sub_29D937888();
}

void sub_29D8A7140(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_29D6C2E78(0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D935078();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_29D935E88();
  sub_29D935088();
  v16 = sub_29D935068();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  if (!a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29D935E88();
  v19 = sub_29D93ABF8();

  if (v19 > 2)
  {
    if (a1)
    {
      v24 = sub_29D939D28();
      *&v32[0] = 0;
      *(&v32[0] + 1) = 0xE000000000000000;
      sub_29D93AA18();

      *&v32[0] = 0xD000000000000011;
      *(&v32[0] + 1) = 0x800000029D96B860;
      MEMORY[0x29ED6A240](v16, v18);

      v25 = sub_29D939D28();

      [a1 failedTest:v24 withFailure:v25];

      return;
    }

    goto LABEL_16;
  }

  if (!a1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  if (v19 > 1u)
  {

    v26 = v32;
  }

  else
  {
    v20 = type metadata accessor for AFibBurdenPDFExportPPTTestRunner(0);
    swift_allocObject();
    sub_29D935E88();
    sub_29D935E88();
    v21 = sub_29D7904B4(v16, v18, a1, a4);
    sub_29D8A7ECC(v32);
    *(v32 + 8) = v31[0];
    *&v32[0] = v21;
    *(&v32[1] + 1) = v20;
    v33 = &off_2A2444DE8;
    sub_29D8A7F94(v32, &v29);
    if (v30)
    {
      sub_29D679D3C(&v29, v31);
      v22 = sub_29D93A028();
      (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
      sub_29D6945AC(v31, &v29);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v16;
      v23[5] = v18;
      sub_29D679D3C(&v29, (v23 + 6));
      v23[11] = ObjectType;
      sub_29D6BEBA4(0, 0, v10, &unk_29D951E90, v23);

      sub_29D69417C(v31);
      sub_29D8A7ECC(v32);
      return;
    }

    sub_29D8A7ECC(v32);
    v26 = &v29;
  }

  sub_29D8A7ECC(v26);
}

uint64_t sub_29D8A75E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2A1C73D48](sub_29D8A760C, 0, 0);
}

uint64_t sub_29D8A760C()
{
  v14 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  *(v0 + 48) = sub_29D69C6C0(v1, qword_2A17D0DB8);
  sub_29D935E88();
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, &v13);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_29D6C2364(v5, v4, &v13);
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Running test with name %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  sub_29D693E2C(*(v0 + 32), *(*(v0 + 32) + 24));
  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_29D8A7838;

  return sub_29D8A5E5C();
}

uint64_t sub_29D8A7838()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_29D8A7A8C;
  }

  else
  {
    v2 = sub_29D8A794C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D8A794C()
{
  v10 = v0;
  sub_29D935E88();
  v1 = sub_29D937878();
  v2 = sub_29D93A2A8();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_29D6C2364(v4, v3, &v9);
    _os_log_impl(&dword_29D677000, v1, v2, "Successfully completed run of test with name %s", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_29D8A7A8C()
{
  v15 = v0;
  sub_29D935E88();
  v1 = sub_29D937878();
  v2 = sub_29D93A2A8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[8];
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_29D6C2364(v5, v4, &v14);
    _os_log_impl(&dword_29D677000, v1, v2, "[%s] Failed run of test with name %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    v11 = v3;
  }

  else
  {
    v11 = v0[8];
  }

  v12 = v0[1];

  return v12();
}

double sub_29D8A7C2C()
{
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v0 = sub_29D937898();
  sub_29D69C6C0(v0, qword_2A17D0DB8);

  v1 = sub_29D937878();
  v2 = sub_29D93A2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D96B8D0, &v19);
    *(v3 + 12) = 2080;
    v5 = *MEMORY[0x29EDBA6B0];
    v6 = sub_29D93A518();
    v8 = v7;

    v9 = sub_29D6C2364(v6, v8, &v19);

    *(v3 + 14) = v9;
    _os_log_impl(&dword_29D677000, v1, v2, "[%s] Setting up overrides for feature with identifier %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v4, -1, -1);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  else
  {

    v5 = *MEMORY[0x29EDBA6B0];
  }

  v10 = [objc_allocWithZone(MEMORY[0x29EDBAB90]) initWithFeatureIdentifier_];
  v11 = HKAllFeatureAvailabilityRequirementIdentifiers();
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v12 = sub_29D939F38();

  v13 = *(v12 + 16);
  if (v13)
  {
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      v16 = v15;
      v17 = sub_29D93A6D8();
      [v10 overrideSatisfactionOfRequirementWithIdentifier:v16 isSatisfied:v17];

      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_29D8A7ECC(uint64_t a1)
{
  sub_29D8A7F28(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8A7F28(uint64_t a1)
{
  if (!qword_2A17B7298)
  {
    sub_29D695734(255, &qword_2A17B72A0, &protocol descriptor for HeartPPTTestRunner, 1);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7298);
    }
  }
}

uint64_t sub_29D8A7F94(uint64_t a1, uint64_t a2)
{
  sub_29D8A7F28(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8A7FF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D6AC948;

  return sub_29D8A75E8(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

void sub_29D8A80CC(uint64_t a1)
{
  if (!qword_2A17B72A8)
  {
    sub_29D69567C(255, &unk_2A17B72B0, 0x29EDBACE0);
    sub_29D695734(255, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
    v1 = sub_29D93A038();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B72A8);
    }
  }
}

uint64_t sub_29D8A8360(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v63 = a5;
  v64 = a6;
  v60 = a3;
  v62 = a2;
  sub_29D8AA048(0);
  v54 = v9;
  v53 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v52 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = sub_29D9341E8();
  v12 = *(v61 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v61, v14);
  sub_29D8AA0DC(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v55 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D8AA2A4(0);
  v21 = v20;
  MEMORY[0x2A1C7C4A8](v20, v22);
  v65 = v6;
  v57 = v17;
  v58 = v24;
  v56 = &v50[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (BYTE2(a1) && BYTE2(a1) != 1)
  {
    v59 = 1;
  }

  else
  {
    v59 = sub_29D93AD78();
  }

  sub_29D8AA5D4(a4, &v66, sub_29D8AA390);
  if (v67)
  {
    v53 = v16;
    v51 = HIBYTE(a1);
    v54 = v21;
    sub_29D679D3C(&v66, v68);
    v25 = v69;
    v26 = v70;
    sub_29D693E2C(v68, v69);
    v52 = (*(v26 + 8))(v25, v26);
    *&v66 = v52;
    v27 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v28 = v61;
    (*(v12 + 16))(v27, v60, v61);
    v29 = (*(v12 + 80) + 37) & ~*(v12 + 80);
    v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = v59 & 1;
    v32 = v65;
    *(v31 + 24) = v65;
    *(v31 + 32) = v62 & 1;
    *(v31 + 33) = a1;
    *(v31 + 35) = BYTE2(a1);
    *(v31 + 36) = v51;
    (*(v12 + 32))(v31 + v29, v27, v28);
    v33 = (v31 + v30);
    v34 = v63;
    v35 = v64;
    *v33 = v63;
    v33[1] = v35;
    sub_29D7C3D48(v34, v35);
    sub_29D8AA1AC(0);
    sub_29D8AA728(0, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D8AA25C(&qword_2A1A22448, sub_29D8AA1AC, MEMORY[0x29EDB8A00]);
    v36 = v55;
    sub_29D938468();

    *(swift_allocObject() + 16) = v32;
    sub_29D6D09E0(0);
    sub_29D8AA25C(&qword_2A1A22640, sub_29D8AA0DC, MEMORY[0x29EDB8908]);
    sub_29D8AA25C(&qword_2A1A24A58, sub_29D6D09E0, MEMORY[0x29EDB8AB8]);
    v37 = v56;
    v38 = v53;
    sub_29D938488();

    (*(v57 + 8))(v36, v38);
    sub_29D8AA25C(&qword_2A1A22518, sub_29D8AA2A4, MEMORY[0x29EDB8928]);
    v39 = v54;
    v40 = sub_29D938418();
    (*(v58 + 8))(v37, v39);
    sub_29D69417C(v68);
  }

  else
  {
    sub_29D8AA63C(&v66, sub_29D8AA390);
    v41 = v61;
    (*(v12 + 16))(&v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v60, v61);
    v42 = (*(v12 + 80) + 30) & ~*(v12 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v65;
    *(v43 + 24) = v59 & 1;
    *(v43 + 25) = v62 & 1;
    *(v43 + 26) = a1;
    (*(v12 + 32))(v43 + v42, &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v41);
    v44 = (v43 + ((v13 + v42 + 7) & 0xFFFFFFFFFFFFFFF8));
    v45 = v63;
    v46 = v64;
    *v44 = v63;
    v44[1] = v46;
    sub_29D7C3D48(v45, v46);
    sub_29D6D09E0(0);
    sub_29D8AA25C(&qword_2A1A24A58, sub_29D6D09E0, MEMORY[0x29EDB8AB8]);
    v47 = v52;
    sub_29D938378();
    sub_29D8AA25C(&qword_2A1A222E8, sub_29D8AA048, MEMORY[0x29EDB8AE8]);
    v48 = v54;
    v40 = sub_29D938418();
    (*(v53 + 8))(v47, v48);
  }

  return v40;
}

uint64_t sub_29D8A8B58@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v11 = a4;
  v12 = a3;
  v16 = sub_29D9339F8();
  v17 = (*(*(v16 - 8) + 48))(a1, 1, v16) != 1;
  result = sub_29D8A8C24((a2 | v17) & 1, v12, v11, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_29D8A8C24(int a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v106 = a6;
  v105 = a5;
  v110 = a3;
  v112 = a1;
  sub_29D6C36D8(0);
  v113 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v116 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v115 = &v92 - v15;
  v102 = sub_29D9342D8();
  v101 = *(v102 - 8);
  MEMORY[0x2A1C7C4A8](v102, v16);
  v100 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8AA570(0, &unk_2A1A25748, MEMORY[0x29EDC3918], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v107 = &v92 - v20;
  v109 = sub_29D9342A8();
  v108 = *(v109 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v109, v21);
  v98 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v99 = &v92 - v25;
  v104 = sub_29D934A18();
  v103 = *(v104 - 8);
  MEMORY[0x2A1C7C4A8](v104, v26);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29D9340F8();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v114 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v36 = &v92 - v35;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v37 = sub_29D937898();
  v38 = sub_29D69C6C0(v37, qword_2A1A2C008);
  v39 = sub_29D937878();
  v40 = sub_29D93A2A8();
  v41 = os_log_type_enabled(v39, v40);
  v117 = v38;
  v118 = v30;
  v111 = v36;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v119[0] = v97;
    *v42 = 136446722;
    v43 = sub_29D93AF08();
    v45 = v29;
    v46 = sub_29D6C2364(v43, v44, v119);

    *(v42 + 4) = v46;
    v29 = v45;
    *(v42 + 12) = 1026;
    *(v42 + 14) = v112 & 1;
    *(v42 + 18) = 1026;
    *(v42 + 20) = a2 & 1;
    _os_log_impl(&dword_29D677000, v39, v40, "[%{public}s] hideInDiscover: %{BOOL,public}d shouldShowPromotion: %{BOOL,public}d", v42, 0x18u);
    v47 = v97;
    sub_29D69417C(v97);
    MEMORY[0x29ED6BE30](v47, -1, -1);
    MEMORY[0x29ED6BE30](v42, -1, -1);
  }

  v48 = MEMORY[0x29EDCA190];
  if (a2)
  {
    v95 = v29;
    sub_29D8AA570(0, &qword_2A1A21F70, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v94 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v93 = swift_allocObject();
    v92 = xmmword_29D93DDB0;
    *(v93 + 16) = xmmword_29D93DDB0;
    (v7[17])();
    (v7[13])();
    (v7[16])();
    v96 = a4;
    v49 = sub_29D9341B8();
    v50 = v7[15];
    v97 = v7;
    v50();
    if (v48 >> 62 && sub_29D93A928())
    {
      sub_29D872AC4(MEMORY[0x29EDCA190]);
    }

    sub_29D934038();

    (*(v103 + 8))(v28, v104);
    if (BYTE2(v110))
    {
      v7 = v97;
      v29 = v95;
      if (BYTE2(v110) != 1)
      {
        v58 = v107;
        (*(v108 + 56))(v107, 1, 1, v109);
        sub_29D8AA69C(v58);
        v59 = v111;
LABEL_13:
        sub_29D8AA728(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = v92;
        *(inited + 32) = sub_29D934248();
        *(inited + 40) = v61;
        v62 = sub_29D9340C8();
        sub_29D7AF194(inited);
        swift_setDeallocating();
        sub_29D6AA360(inited + 32);
        v63 = v62(v119, 0);
        v64 = v7[14];
        v64(v63);
        sub_29D83511C();
        v65 = sub_29D93A0F8();

        v66 = sub_29D9340C8();
        sub_29D7A6488(v65);
        v67 = v66(v119, 0);
        v68 = (v64)(v67);
        sub_29D8E8608(v68);

        sub_29D9340B8();
        sub_29D934088();
        sub_29D934078();
        (*(v118 + 32))(v93 + v94, v59, v29);
        goto LABEL_14;
      }

      v51 = MEMORY[0x29EDC3900];
    }

    else
    {
      v51 = MEMORY[0x29EDC3908];
      v7 = v97;
      v29 = v95;
    }

    v59 = v111;
    v52 = v108;
    v53 = v107;
    v54 = v109;
    (*(v108 + 104))(v107, *v51, v109);
    (*(v52 + 56))(v53, 0, 1, v54);
    v55 = v99;
    (*(v52 + 32))(v99, v53, v54);
    (*(v52 + 16))(v98, v55, v54);
    v56 = v100;
    sub_29D9342E8();
    v57 = v102;
    sub_29D934068();
    (*(v101 + 8))(v56, v57);
    (*(v52 + 8))(v55, v54);
    goto LABEL_13;
  }

LABEL_14:
  sub_29D8AA570(0, &qword_2A1A24890, sub_29D6C36D8, MEMORY[0x29EDC9E90]);
  v69 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v70 = swift_allocObject();
  sub_29D934188();
  sub_29D693E2C(v119, v119[3]);
  (v7[13])();
  sub_29D934128();

  sub_29D69417C(v119);
  v71 = v115;
  sub_29D8AA5D4(v70 + v69, v115, sub_29D6C36D8);
  v72 = v71;
  v73 = v116;
  sub_29D6C37D4(v72, v116);
  v74 = v118;
  if ((*(v118 + 48))(v73, 1, v29) == 1)
  {
    sub_29D8AA63C(v73, sub_29D6C36D8);
  }

  else
  {
    v75 = *(v74 + 32);
    v75(v114, v73, v29);
    v76 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_29D68F864(0, *(v76 + 2) + 1, 1, v76);
    }

    v78 = *(v76 + 2);
    v77 = *(v76 + 3);
    if (v78 >= v77 >> 1)
    {
      v76 = sub_29D68F864((v77 > 1), v78 + 1, 1, v76);
    }

    *(v76 + 2) = v78 + 1;
    v75(&v76[((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v78], v114, v29);
  }

  swift_setDeallocating();
  sub_29D8AA63C(v70 + v69, sub_29D6C36D8);
  swift_deallocClassInstance();
  v79 = sub_29D939F58();

  sub_29D935E88();
  sub_29D935E88();
  v80 = sub_29D937878();
  v81 = sub_29D93A2A8();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v119[0] = v83;
    *v82 = 136446466;
    v84 = sub_29D93AF08();
    v86 = sub_29D6C2364(v84, v85, v119);

    *(v82 + 4) = v86;
    *(v82 + 12) = 2080;
    v87 = MEMORY[0x29ED6A340](v79, MEMORY[0x29EDC3A38]);
    v89 = v88;

    v90 = sub_29D6C2364(v87, v89, v119);

    *(v82 + 14) = v90;
    _os_log_impl(&dword_29D677000, v80, v81, "%{public}s Submitting these changes: %s", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v83, -1, -1);
    MEMORY[0x29ED6BE30](v82, -1, -1);
  }

  else
  {
  }

  return v79;
}

uint64_t sub_29D8A9B88(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2C008);
  v4 = v2;
  v5 = sub_29D937878();
  v6 = sub_29D93A288();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v12 = sub_29D93ADF8();
    v14 = sub_29D6C2364(v12, v13, &v16);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] error fetching onboarding title dismissed date: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  v16 = MEMORY[0x29EDCA190];
  sub_29D8AA728(0, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  return sub_29D938338();
}

uint64_t sub_29D8A9D88(uint64_t a1, int a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_29D8A8C24(a2, a3, a4, a5, a6, a7);
  sub_29D8AA728(0, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  return sub_29D938338();
}

uint64_t sub_29D8A9E10()
{
  v1 = OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeartFeaturePromotionGenerator(uint64_t a1)
{
  result = qword_2A1A243A0;
  if (!qword_2A1A243A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8A9F10(uint64_t a1)
{
  result = sub_29D934178();
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

uint64_t sub_29D8A9FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D8AA048(uint64_t a1)
{
  if (!qword_2A1A222E0)
  {
    sub_29D6D09E0(255);
    sub_29D8AA25C(&qword_2A1A24A58, sub_29D6D09E0, MEMORY[0x29EDB8AB8]);
    v1 = sub_29D938388();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A222E0);
    }
  }
}

void sub_29D8AA0DC(uint64_t a1)
{
  if (!qword_2A1A22638)
  {
    sub_29D8AA1AC(255);
    sub_29D8AA728(255, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D8AA25C(&qword_2A1A22448, sub_29D8AA1AC, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22638);
    }
  }
}

void sub_29D8AA1AC(uint64_t a1)
{
  if (!qword_2A1A22440)
  {
    sub_29D8AA570(255, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    sub_29D6B7370(255, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    v1 = sub_29D938238();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22440);
    }
  }
}

uint64_t sub_29D8AA25C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D8AA2A4(uint64_t a1)
{
  if (!qword_2A1A22510)
  {
    sub_29D8AA0DC(255);
    sub_29D6D09E0(255);
    sub_29D8AA25C(&qword_2A1A22640, sub_29D8AA0DC, MEMORY[0x29EDB8908]);
    sub_29D8AA25C(&qword_2A1A24A58, sub_29D6D09E0, MEMORY[0x29EDB8AB8]);
    v1 = sub_29D938118();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22510);
    }
  }
}

void sub_29D8AA390(uint64_t a1)
{
  if (!qword_2A1A233D8)
  {
    sub_29D6B7370(255, qword_2A1A233E0, &protocol descriptor for OnboardingTilePreviouslyDismissedProvider);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A233D8);
    }
  }
}

uint64_t sub_29D8AA3F8()
{
  v1 = *(sub_29D9341E8() - 8);
  v2 = (*(v1 + 80) + 30) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 26);
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_29D8A9D88(v3, v4, v5, v6, v0 + v2, v8, v9);
}

uint64_t sub_29D8AA4A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 37) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 32);
  v9 = *(v2 + 33);
  v10 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_29D8A8B58(a1, v7, v8, v9, v2 + v6, v11, v12, a2);
}

void sub_29D8AA570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D8AA5D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D8AA63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8AA69C(uint64_t a1)
{
  sub_29D8AA570(0, &unk_2A1A25748, MEMORY[0x29EDC3918], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D8AA728(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D8AA778()
{
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D9334A8();

  return v2;
}

uint64_t sub_29D8AA840()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;

  return sub_29D934788();
}

uint64_t sub_29D8AA8CC()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D941B10;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA490]);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  sub_29D6E3724(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t type metadata accessor for HealthCalendarViewModel(uint64_t a1)
{
  result = qword_2A17B7330;
  if (!qword_2A17B7330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D8AAA44(uint64_t a1)
{
  sub_29D933CE8();
  if (v1 <= 0x3F)
  {
    sub_29D8AC534(319, &qword_2A17B1528, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9A40]);
    if (v2 <= 0x3F)
    {
      sub_29D9331D8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void *sub_29D8AAB10(uint64_t a1)
{
  v2 = v1;
  v129 = a1;
  v130 = sub_29D9331D8();
  v127 = *(v130 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v130, v3);
  v125 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v135 = &v117 - v7;
  v8 = MEMORY[0x29EDC9C68];
  sub_29D8AC534(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v119 = &v117 - v11;
  v122 = sub_29D933CC8();
  v121 = *(v122 - 8);
  MEMORY[0x2A1C7C4A8](v122, v12);
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8AC534(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], v8);
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v120 = &v117 - v17;
  v134 = sub_29D9339F8();
  v18 = *(v134 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v134, v19);
  v124 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v118 = &v117 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = &v117 - v27;
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v32 = &v117 - v31;
  v34 = MEMORY[0x2A1C7C4A8](v30, v33);
  v36 = &v117 - v35;
  MEMORY[0x2A1C7C4A8](v34, v37);
  v39 = &v117 - v38;
  v40 = *(type metadata accessor for HealthCalendarViewModel(0) + 24);
  v137 = v39;
  sub_29D9331A8();
  sub_29D933178();
  v41 = sub_29D933BB8();
  v42 = sub_29D933AF8();
  v123 = v40;
  sub_29D933178();
  v43 = sub_29D933958();
  v44 = *(v18 + 8);
  v131 = v28;
  v132 = v44;
  v45 = v28;
  v46 = v134;
  v133 = v18 + 8;
  v44(v45, v134);
  v47 = [v41 hk:v42 startOfWeekWithFirstWeekday:v43 beforeDate:1 addingWeeks:?];

  sub_29D933998();
  v48 = v121;
  v49 = v122;
  (*(v121 + 104))(v14, *MEMORY[0x29EDB9CB8], v122);
  v50 = v120;
  v126 = v32;
  v51 = v18;
  v136 = v2;
  sub_29D933C38();
  (*(v48 + 8))(v14, v49);
  v52 = v46;
  if ((*(v18 + 48))(v50, 1, v46) == 1)
  {
    sub_29D8AC39C(v50, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v53 = v36;
    v54 = v137;
    v55 = v132;
  }

  else
  {
    v56 = v118;
    (*(v18 + 32))(v118, v50, v46);
    (*(v18 + 24))(v36, v56, v46);
    v53 = v36;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v57 = sub_29D937898();
    sub_29D69C6C0(v57, qword_2A1A2C008);
    v58 = sub_29D937878();
    v59 = sub_29D93A268();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v139 = v61;
      *v60 = 136315394;
      *(v60 + 4) = sub_29D6C2364(0xD000000000000017, 0x800000029D951F50, &v139);
      *(v60 + 12) = 2080;
      swift_beginAccess();
      v62 = v119;
      sub_29D933A98();
      v63 = sub_29D933AA8();
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
      v64 = sub_29D933908();
      v66 = v65;
      sub_29D8AC39C(v62, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
      v67 = sub_29D6C2364(v64, v66, &v139);

      *(v60 + 14) = v67;
      _os_log_impl(&dword_29D677000, v58, v59, "[%s] OuterEnd changed to %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v61, -1, -1);
      MEMORY[0x29ED6BE30](v60, -1, -1);

      v68 = v118;
    }

    else
    {

      v68 = v56;
    }

    v55 = v132;
    v132(v68, v52);
    v54 = v137;
  }

  v69 = sub_29D933BB8();
  v70 = sub_29D933AF8();
  v71 = v131;
  sub_29D9331A8();
  v72 = sub_29D933958();
  v55(v71, v52);
  v73 = [v69 hk:v70 startOfWeekWithFirstWeekday:v72 beforeDate:0 addingWeeks:?];

  sub_29D933998();
  (*(v51 + 40))(v54, v71, v52);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v74 = sub_29D937898();
  v75 = sub_29D69C6C0(v74, qword_2A1A2C008);
  v76 = sub_29D937878();
  v77 = sub_29D93A268();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v123 = v75;
    v80 = v79;
    v139 = v79;
    *v78 = 136315394;
    *(v78 + 4) = sub_29D6C2364(0xD000000000000017, 0x800000029D951F50, &v139);
    *(v78 + 12) = 2080;
    swift_beginAccess();
    v81 = v53;
    v82 = v119;
    sub_29D933A98();
    v83 = sub_29D933AA8();
    (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
    v84 = sub_29D933908();
    v86 = v85;
    v87 = v82;
    v53 = v81;
    sub_29D8AC39C(v87, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
    v88 = sub_29D6C2364(v84, v86, &v139);
    v54 = v137;

    *(v78 + 14) = v88;
    _os_log_impl(&dword_29D677000, v76, v77, "[%s] OuterStart changed to %s", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v80, -1, -1);
    MEMORY[0x29ED6BE30](v78, -1, -1);
  }

  v89 = v127;
  swift_beginAccess();
  v90 = *(v51 + 16);
  v90(v131, v54, v52);
  swift_beginAccess();
  v90(v124, v53, v52);
  v91 = v135;
  sub_29D933188();
  v92 = v125;
  v93 = v130;
  (*(v89 + 16))(v125, v91, v130);
  v94 = sub_29D937878();
  v95 = sub_29D93A268();
  v96 = os_log_type_enabled(v94, v95);
  v128 = v53;
  if (v96)
  {
    v97 = v89;
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v138[0] = v99;
    *v98 = 136315394;
    *(v98 + 4) = sub_29D6C2364(0xD000000000000017, 0x800000029D951F50, v138);
    *(v98 + 12) = 2080;
    sub_29D8AC344();
    v100 = sub_29D93AD38();
    v101 = v92;
    v103 = v102;
    v131 = *(v97 + 8);
    v131(v101, v93);
    v104 = sub_29D6C2364(v100, v103, v138);

    *(v98 + 14) = v104;
    _os_log_impl(&dword_29D677000, v94, v95, "[%s] OuterInterval = %s", v98, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v99, -1, -1);
    MEMORY[0x29ED6BE30](v98, -1, -1);
  }

  else
  {

    v131 = *(v89 + 8);
    v131(v92, v93);
  }

  v106 = v135;
  v105 = v136;
  v107 = sub_29D8AB8A4(v136);
  MEMORY[0x2A1C7C4A8](v107, v108);
  *(&v117 - 2) = v105;
  v109 = sub_29D8237B0(sub_29D8AC2F8, (&v117 - 4), v129);
  v110 = sub_29D7AF3A0(v109);

  MEMORY[0x2A1C7C4A8](v111, v112);
  *(&v117 - 4) = v110;
  *(&v117 - 3) = v106;
  *(&v117 - 2) = v105;
  v113 = sub_29D79E4D8(sub_29D8AC324, (&v117 - 6), v107);
  v114 = v134;
  v115 = v132;
  v132(v126, v134);

  v131(v106, v93);
  v115(v128, v114);
  v115(v137, v114);
  return v113;
}

uint64_t sub_29D8AB8A4(uint64_t a1)
{
  v55 = a1;
  v54 = sub_29D933CC8();
  v2 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54, v3);
  v52 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDB9BC8];
  sub_29D8AC534(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v51 = &v41 - v8;
  v9 = sub_29D9339F8();
  v10 = *(v9 - 8);
  v11 = v10;
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v56 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v41 - v17;
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v22 = &v41 - v21;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v41 - v24;
  sub_29D8AC534(0, &qword_2A17B1438, v5, MEMORY[0x29EDC9E90]);
  v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v44 = *(v10 + 72);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D93DDB0;
  v43 = v26;
  sub_29D9331A8();
  v47 = v1;
  sub_29D9331A8();
  sub_29D933AD8();
  v28 = v25;
  v29 = *(v11 + 8);
  v11 += 8;
  v45 = v29;
  v29(v22, v9);
  v50 = *(v2 + 104);
  v49 = *MEMORY[0x29EDB9CB8];
  v53 = v2 + 104;
  v48 = (v2 + 8);
  v30 = (v11 + 40);
  v31 = (v11 + 24);
  v46 = v11;
  v42 = (v11 + 8);
  v32 = v51;
  while (1)
  {
    v33 = v52;
    v34 = v54;
    v50(v52, v49, v54);
    v35 = v28;
    sub_29D933C38();
    (*v48)(v33, v34);
    result = (*v30)(v32, 1, v9);
    if (result == 1)
    {
      break;
    }

    v37 = *v31;
    (*v31)(v18, v32, v9);
    if ((sub_29D9331B8() & 1) == 0)
    {
      v40 = v45;
      v45(v18, v9);
      v40(v35, v9);
      return v27;
    }

    (*v42)(v56, v18, v9);
    v39 = *(v27 + 16);
    v38 = *(v27 + 24);
    if (v39 >= v38 >> 1)
    {
      v27 = sub_29D690338((v38 > 1), v39 + 1, 1, v27);
    }

    v45(v28, v9);
    *(v27 + 16) = v39 + 1;
    v37((v27 + v43 + v39 * v44), v56, v9);
    v37(v28, v18, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D8ABD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v43 = a3;
  v46 = a4;
  v6 = sub_29D933318();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9339F8();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8AC534(0, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent, MEMORY[0x29EDC9C68]);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v37 - v18;
  v20 = type metadata accessor for HealthCalendarDayContent(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v22(v19, 1, 1, v20);
  if (sub_29D6A1834(a1, a2))
  {
    v42 = a1;
    v23 = 0;
  }

  else if (sub_29D9331B8() & 1) != 0 && (type metadata accessor for HealthCalendarViewModel(0), (sub_29D9331B8()))
  {
    v42 = a1;
    v23 = 1;
  }

  else
  {
    if (sub_29D9331B8() & 1) == 0 || (type metadata accessor for HealthCalendarViewModel(0), (sub_29D9331B8()))
    {
      v22(v46, 1, 1, v20);
      return sub_29D8AC39C(v19, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent);
    }

    v42 = a1;
    v23 = 2;
  }

  sub_29D8AC39C(v19, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent);
  (*(v44 + 16))(v19, v42, v45);
  v19[*(v20 + 20)] = v23;
  v19[*(v20 + 24)] = 0;
  v22(v19, 0, 1, v20);
  sub_29D8AC40C(v19, v16);
  v24 = *(v21 + 48);
  v25 = v24(v16, 1, v20);
  sub_29D8AC39C(v16, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent);
  if (v25 != 1 && !v24(v19, 1, v20))
  {
    type metadata accessor for HealthCalendarViewModel(0);
    v26 = v41;
    sub_29D9331A8();
    v27 = sub_29D933988();
    (*(v44 + 8))(v26, v45);
    if (v27)
    {
      v28 = 1;
    }

    else
    {
      sub_29D8AC534(0, &qword_2A17B1A90, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
      v30 = sub_29D933CC8();
      v31 = *(v30 - 8);
      v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_29D93DDB0;
      (*(v31 + 104))(v33 + v32, *MEMORY[0x29EDB9CB8], v30);
      sub_29D6E3748(v33);
      swift_setDeallocating();
      (*(v31 + 8))(v33 + v32, v30);
      swift_deallocClassInstance();
      v34 = v38;
      sub_29D933B48();

      v35 = sub_29D9332A8();
      LOBYTE(v30) = v36;
      (*(v39 + 8))(v34, v40);
      v28 = (v35 == 1) & ~v30;
    }

    v19[*(v20 + 24)] = v28;
  }

  return sub_29D8AC4A0(v19, v46);
}