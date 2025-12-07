uint64_t sub_29D6CC920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  sub_29D6CE834(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE8F4(0, &qword_2A1A24B50, MEMORY[0x29EDB8938]);
  v11 = v10;
  v49 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v48 - v13;
  v51 = sub_29D937898();
  v15 = *(v51 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v51, v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v48 - v21;
  if (sub_29D934198())
  {
    sub_29D934D28();
    v23 = sub_29D937878();
    v24 = sub_29D93A2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52 = v49;
      v53 = v3;
      *v25 = 136446210;
      swift_getMetatypeMetadata();
      v26 = sub_29D939DA8();
      v28 = v7;
      v29 = v6;
      v30 = a1;
      v31 = sub_29D6C2364(v26, v27, &v52);

      *(v25 + 4) = v31;
      a1 = v30;
      v6 = v29;
      v7 = v28;
      _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s]: In foreground mode, so will continue to listen for updates", v25, 0xCu);
      v32 = v49;
      sub_29D69417C(v49);
      MEMORY[0x29ED6BE30](v32, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    (*(v15 + 8))(v19, v51);
    if (v50)
    {
      v52 = v50;
      v53 = a1;
      v33 = MEMORY[0x29EDB89F8];
      sub_29D6CE120(0, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
      sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v33, MEMORY[0x29EDB8A00]);

      v34 = v48;
      sub_29D938148();
      sub_29D6CE9B0(&qword_2A1A24B40, sub_29D6CE834, MEMORY[0x29EDB8948]);
      v35 = sub_29D938418();
      (*(v7 + 8))(v34, v6);
    }

    else
    {
      v53 = a1;
      v46 = MEMORY[0x29EDB89F8];
      sub_29D6CE120(0, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
      sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v46, MEMORY[0x29EDB8A00]);
      return sub_29D938418();
    }
  }

  else
  {
    sub_29D934D28();
    v36 = sub_29D937878();
    v37 = sub_29D93A2A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v50 = a1;
      v40 = v39;
      v52 = v39;
      v53 = v3;
      *v38 = 136446210;
      swift_getMetatypeMetadata();
      v41 = sub_29D939DA8();
      v43 = sub_29D6C2364(v41, v42, &v52);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_29D677000, v36, v37, "[%{public}s]: In background mode, so will finish after 1 update", v38, 0xCu);
      sub_29D69417C(v40);
      v44 = v40;
      a1 = v50;
      MEMORY[0x29ED6BE30](v44, -1, -1);
      MEMORY[0x29ED6BE30](v38, -1, -1);
    }

    (*(v15 + 8))(v22, v51);
    v53 = a1;
    v45 = MEMORY[0x29EDB89F8];
    sub_29D6CE120(0, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
    sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v45, MEMORY[0x29EDB8A00]);
    sub_29D938498();
    sub_29D6CE9F8(&qword_2A1A224E8, &qword_2A1A24B50, MEMORY[0x29EDB8938], MEMORY[0x29EDB8940]);
    v35 = sub_29D938418();
    (v49[1])(v14, v11);
  }

  return v35;
}

uint64_t sub_29D6CCF7C()
{
  v1 = v0;
  v2 = sub_29D93A548();
  v20 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE280(0);
  v7 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE35C(0);
  v12 = v11;
  v22 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934188();
  sub_29D693E2C(v23, v23[3]);
  sub_29D934108();
  v16 = sub_29D934418();
  result = sub_29D69417C(v23);
  if (v16)
  {
    v18 = [objc_opt_self() defaultCenter];
    sub_29D93A558();

    swift_allocObject();
    swift_weakInit();
    sub_29D6CE4A4(0, &qword_2A1A25738, sub_29D6CE0BC, MEMORY[0x29EDC9C68]);
    sub_29D6CE9B0(&unk_2A1A248C0, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    sub_29D938468();

    (*(v20 + 8))(v5, v2);
    sub_29D6CE0BC();
    sub_29D6CE9B0(&qword_2A1A24B70, sub_29D6CE280, MEMORY[0x29EDB8908]);
    sub_29D938428();
    (*(v21 + 8))(v10, v7);
    sub_29D6CE9B0(&qword_2A1A24BA0, sub_29D6CE35C, MEMORY[0x29EDB88A0]);
    v19 = sub_29D938418();
    (*(v22 + 8))(v15, v12);
    *(v1 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_notificationPublisher) = v19;
  }

  return result;
}

uint64_t sub_29D6CD3A8()
{
  v1 = OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_context;
  v2 = sub_29D9341E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_domain;
  v4 = sub_29D934178();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ElectrocardiogramUpdateGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A24E58;
  if (!qword_2A1A24E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6CD4F8(uint64_t a1)
{
  result = sub_29D9341E8();
  if (v2 <= 0x3F)
  {
    result = sub_29D934178();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D6CD5F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_29D6CD66C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_29D934148();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934178();
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v12 = MEMORY[0x29EDC9E90];
    sub_29D6CE628(0, &qword_2A1A21F60, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
    v13 = swift_allocObject();
    v25[1] = v11;
    v14 = v13;
    v26 = xmmword_29D93DDB0;
    *(v13 + 16) = xmmword_29D93DDB0;
    sub_29D6CE628(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], v12);
    v15 = swift_allocObject();
    *(v15 + 16) = v26;
    *(v15 + 32) = sub_29D6D0388();
    *(v15 + 40) = v16;
    *(v14 + 32) = v15;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 32;
    v25[0] = sub_29D9341B8();
    sub_29D6CE4A4(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
    v17 = sub_29D933F58();
    v18 = v3;
    v19 = *(v17 - 8);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v26;
    (*(v19 + 104))(v21 + v20, *MEMORY[0x29EDC3758], v17);
    (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v18);
    sub_29D934158();
    v22 = sub_29D934018();
    v23 = MEMORY[0x29EDC37F8];
    *(a2 + 24) = v22;
    *(a2 + 32) = v23;
    sub_29D693F78(a2);
    sub_29D934008();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t *sub_29D6CD9B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59 = *v3;
  v60 = a2;
  v5 = sub_29D9341E8();
  v49 = v5;
  v52 = *(v5 - 8);
  v6 = v52;
  v57 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v56 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x29EDB8AE0];
  sub_29D6CE8F4(0, &qword_2A1A24A18, MEMORY[0x29EDB8AE0]);
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  MEMORY[0x2A1C7C4A8](v9, v11);
  v58 = &v46 - v12;
  v53 = MEMORY[0x29EDB8AC0];
  sub_29D6CE120(0, &qword_2A1A24A38, MEMORY[0x29EDB8AC0]);
  v14 = *(v13 - 8);
  v54 = v13;
  v55 = v14;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v51 = &v46 - v16;
  v48 = sub_29D934148();
  v17 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48, v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_29D934178();
  v21 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47, v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_notificationPublisher) = 0;
  v50 = *(v6 + 16);
  v64 = a1;
  v50(v3 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_context, a1, v5);
  v46 = sub_29D9341B8();
  sub_29D6CE4A4(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v25 = sub_29D933F58();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29D93DDB0;
  (*(v26 + 104))(v28 + v27, *MEMORY[0x29EDC3758], v25);
  (*(v17 + 104))(v20, *MEMORY[0x29EDC3898], v48);
  sub_29D934158();
  (*(v21 + 32))(v3 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_domain, v24, v47);
  sub_29D6CE0BC();
  v29 = v51;
  sub_29D938348();
  sub_29D6CE190(&qword_2A1A24A40, &qword_2A1A24A38, v53, MEMORY[0x29EDB8AC8]);
  v30 = v54;
  v31 = sub_29D938418();
  (*(v55 + 8))(v29, v30);
  v32 = OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_publisher;
  *(v3 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_publisher) = v31;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = v56;
  v35 = v49;
  v50(v56, v64, v49);
  v36 = v52;
  v37 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v38 = (v57 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v33;
  (*(v36 + 32))(v39 + v37, v34, v35);
  v40 = v59;
  *(v39 + v38) = v60;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
  v41 = MEMORY[0x29EDB89F8];
  sub_29D6CE120(0, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
  sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v41, MEMORY[0x29EDB8A00]);

  v42 = v58;
  sub_29D938378();
  sub_29D6CE9F8(&qword_2A1A24A20, &qword_2A1A24A18, v61, MEMORY[0x29EDB8AE8]);
  v43 = v62;
  v44 = sub_29D938418();
  (*(v63 + 8))(v42, v43);
  *(v3 + v32) = v44;

  sub_29D6CCF7C();
  (*(v36 + 8))(v64, v35);
  return v3;
}

unint64_t sub_29D6CE0BC()
{
  result = qword_2A1A25740;
  if (!qword_2A1A25740)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A25740);
  }

  return result;
}

void sub_29D6CE120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_29D6CE0BC();
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D6CE190(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D6CE120(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D6CE1D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D6CC110(v1 + v4, v6, v7, a1);
}

void sub_29D6CE280(uint64_t a1)
{
  if (!qword_2A1A24B68)
  {
    sub_29D93A548();
    sub_29D6CE4A4(255, &qword_2A1A25738, sub_29D6CE0BC, MEMORY[0x29EDC9C68]);
    sub_29D6CE9B0(&unk_2A1A248C0, MEMORY[0x29EDB9DF8], MEMORY[0x29EDB9DF0]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B68);
    }
  }
}

void sub_29D6CE35C(uint64_t a1)
{
  if (!qword_2A1A24B98)
  {
    sub_29D6CE280(255);
    sub_29D6CE0BC();
    sub_29D6CE9B0(&qword_2A1A24B70, sub_29D6CE280, MEMORY[0x29EDB8908]);
    v1 = sub_29D938078();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B98);
    }
  }
}

uint64_t sub_29D6CE410(uint64_t a1, uint64_t a2)
{
  sub_29D6CE4A4(0, &qword_2A1A25738, sub_29D6CE0BC, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D6CE4A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D6CE508(uint64_t a1)
{
  if (!qword_2A1A249F8)
  {
    sub_29D6CE59C(255);
    sub_29D6CE9B0(&qword_2A1A24AB0, sub_29D6CE59C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938388();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A249F8);
    }
  }
}

void sub_29D6CE59C(uint64_t a1)
{
  if (!qword_2A1A24AA8)
  {
    sub_29D6CE628(255, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v1 = sub_29D938238();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24AA8);
    }
  }
}

void sub_29D6CE628(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D6CE678@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_29D6CEA3C(v4, v5, a1);
}

uint64_t sub_29D6CE6EC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for ElectrocardiogramUpdateGenerator(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

unint64_t sub_29D6CE750()
{
  result = qword_2A1A24A70;
  if (!qword_2A1A24A70)
  {
    sub_29D6CE4A4(255, &qword_2A1A24A68, sub_29D6CE0BC, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24A70);
  }

  return result;
}

uint64_t sub_29D6CE7D8(uint64_t a1)
{
  updated = type metadata accessor for ElectrocardiogramUpdateGenerator(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

void sub_29D6CE834(uint64_t a1)
{
  if (!qword_2A1A24B38)
  {
    v1 = MEMORY[0x29EDB89F8];
    sub_29D6CE120(255, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
    sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v1, MEMORY[0x29EDB8A00]);
    v2 = sub_29D938138();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A24B38);
    }
  }
}

void sub_29D6CE8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x29EDB89F8];
    sub_29D6CE120(255, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
    v8 = v7;
    v9 = sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v6, MEMORY[0x29EDB8A00]);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D6CE9B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D6CE9F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D6CE8F4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D6CEA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v35 = sub_29D9341E8();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v35, v7);
  v8 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D050C(0);
  v10 = v9;
  v33[0] = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D0608(0);
  v39 = v14;
  v37 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D0848(0);
  v40 = v18;
  v38 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v42 = sub_29D817090();
  v34 = a2;
  LOBYTE(a1) = sub_29D934198();
  sub_29D6D05A0(0);
  v23 = v22;
  v33[1] = sub_29D6D0800(&qword_2A1A24AA0, sub_29D6D05A0, MEMORY[0x29EDB8A00]);
  v33[2] = v23;
  if (a1)
  {
    v24 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D6D0800(&qword_2A1A224D0, sub_29D6D050C, MEMORY[0x29EDB8940]);
    v24 = sub_29D938418();

    (*(v33[0] + 8))(v13, v10);
  }

  v42 = v24;
  v25 = v35;
  (*(v5 + 16))(v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v35);
  v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v27 = (v6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v5 + 32))(v28 + v26, v8, v25);
  *(v28 + v27) = v36;

  sub_29D938228();
  sub_29D6D05A0(0);
  sub_29D6CE59C(0);
  sub_29D6D0800(&qword_2A1A24AB0, sub_29D6CE59C, MEMORY[0x29EDB8A00]);
  sub_29D9384F8();

  sub_29D6D0800(&qword_2A1A24B10, sub_29D6D0608, MEMORY[0x29EDB89A8]);
  v29 = v39;
  sub_29D938488();
  (*(v37 + 8))(v17, v29);
  sub_29D6D0800(&qword_2A1A24B60, sub_29D6D0848, MEMORY[0x29EDB8928]);
  v30 = v40;
  v31 = sub_29D938418();
  result = (*(v38 + 8))(v21, v30);
  *v41 = v31;
  return result;
}

uint64_t sub_29D6CEF84@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a3;
  v37 = a4;
  sub_29D6D09E0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = sub_29D6CF280(v16, a2);
  v18 = v17;
  if (*(v17 + 16))
  {
    v20 = *(v17 + 32);
    v19 = *(v17 + 40);
    v21 = *(v17 + 48);
    v22 = *(v17 + 56);
    v23 = *(v17 + 64);
    v24 = v23 >> 5;
    if (v23 >> 5)
    {
      if (v24 == 1 || (v24 == 5 ? (v25 = (v19 | v20 | v21 | v22) == 0) : (v25 = 0), v25 && v23 == 160))
      {
        sub_29D8180E0();
      }
    }

    else
    {
      sub_29D935E88();
      sub_29D817D04();
      sub_29D6D0A78(v20, v19, v21, v22, v23, v33);
    }
  }

  else if (v16)
  {
    v26 = sub_29D939D68();
    v28 = v27;
    v29 = *(v36 + 16);
    type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
    inited = swift_initStackObject();
    inited[2] = v26;
    inited[3] = v28;
    inited[4] = v29;
    inited[5] = sub_29D816FF8;
    inited[6] = 0;
    v31 = v29;
    sub_29D8160F8(v15);

    v32 = sub_29D9339F8();
    LODWORD(v31) = (*(*(v32 - 8) + 48))(v15, 1, v32);
    sub_29D6D0BF0(v15, sub_29D6A08F8);
    if (v31 == 1)
    {
      sub_29D817ED4();
    }
  }

  v38 = v18;
  sub_29D6D07B0();
  sub_29D938338();
  sub_29D6D0800(&qword_2A1A24A58, sub_29D6D09E0, MEMORY[0x29EDB8AB8]);
  v34 = sub_29D938418();
  result = (*(v8 + 8))(v11, v7);
  *v37 = v34;
  return result;
}

uint64_t sub_29D6CF280(int a1, uint64_t a2)
{
  LODWORD(v91) = a1;
  v2 = sub_29D937898();
  v96 = *(v2 - 8);
  v97 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v83 = &v82 - v8;
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v85 = &v82 - v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v84 = &v82 - v13;
  v14 = sub_29D9340F8();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v92 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v82 - v20;
  sub_29D6C36D8(0);
  v87 = *(v22 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v90 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v88 = &v82 - v28;
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v95 = &v82 - v31;
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v35 = &v82 - v34;
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = &v82 - v37;
  sub_29D6D0388();
  sub_29D934188();
  sub_29D693E2C(&updated, v101);
  v39 = v15;
  sub_29D934128();

  sub_29D6D0B8C(v38, v35);
  v86 = *(v15 + 48);
  if (v86(v35, 1, v14) == 1)
  {
    sub_29D6D0BF0(v38, sub_29D6C36D8);
    sub_29D69417C(&updated);
    v89 = MEMORY[0x29EDCA190];
  }

  else
  {
    v40 = *(v15 + 32);
    v40(v21, v35, v14);
    sub_29D6D0A14(0, &qword_2A1A21F70, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v41 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_29D93DDB0;
    v89 = v42;
    v40((v42 + v41), v21, v14);
    sub_29D6D0BF0(v38, sub_29D6C36D8);
    sub_29D69417C(&updated);
  }

  v43 = sub_29D9341B8();
  updated = type metadata accessor for ElectrocardiogramUpdateGenerator(0);
  sub_29D6D0C9C();
  updated = sub_29D939DA8();
  v100 = v44;
  MEMORY[0x29ED6A240](95, 0xE100000000000000);
  v98 = v43;
  v45 = v43;
  v46 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v46);

  v47 = updated;
  v48 = v100;
  v94 = updated;
  if (v91)
  {
    v49 = v84;
    sub_29D934D28();
    sub_29D935E88();
    v50 = sub_29D937878();
    v51 = sub_29D93A2A8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      updated = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_29D6C2364(v94, v48, &updated);
      _os_log_impl(&dword_29D677000, v50, v51, "[%{public}s]: Electrocardiogram update hasn't been updated since the refresh interval; submitting the update feedItem", v52, 0xCu);
      sub_29D69417C(v53);
      v54 = v53;
      v39 = v15;
      MEMORY[0x29ED6BE30](v54, -1, -1);
      MEMORY[0x29ED6BE30](v52, -1, -1);
    }

    v91 = *(v96 + 8);
    v91(v49, v97);
    v55 = v90;
    v56 = v95;
    sub_29D6CFFDC(v95);
    v57 = 0;
    v47 = v94;
  }

  else
  {
    v58 = v85;
    sub_29D934D28();
    sub_29D935E88();
    v59 = sub_29D937878();
    v60 = sub_29D93A2A8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      updated = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_29D6C2364(v47, v48, &updated);
      _os_log_impl(&dword_29D677000, v59, v60, "[%{public}s]: Electrocardiogram update is up-to-date; deleting the feedItem", v61, 0xCu);
      sub_29D69417C(v62);
      v63 = v62;
      v39 = v15;
      MEMORY[0x29ED6BE30](v63, -1, -1);
      MEMORY[0x29ED6BE30](v61, -1, -1);
    }

    v91 = *(v96 + 8);
    v91(v58, v97);
    v57 = 1;
    v56 = v95;
    v55 = v90;
  }

  (*(v39 + 56))(v56, v57, 1, v14);
  sub_29D6D0A14(0, &qword_2A1A24890, sub_29D6C36D8, MEMORY[0x29EDC9E90]);
  v64 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v65 = swift_allocObject();
  sub_29D6D0B8C(v56, v65 + v64);
  v66 = v88;
  sub_29D6D0B8C(v65 + v64, v88);
  sub_29D6C37D4(v66, v55);
  if (v86(v55, 1, v14) == 1)
  {
    sub_29D6D0BF0(v55, sub_29D6C36D8);
  }

  else
  {
    v67 = *(v39 + 32);
    v67(v92, v55, v14);
    v68 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_29D68F864(0, *(v68 + 2) + 1, 1, v68);
    }

    v70 = *(v68 + 2);
    v69 = *(v68 + 3);
    if (v70 >= v69 >> 1)
    {
      v68 = sub_29D68F864((v69 > 1), v70 + 1, 1, v68);
    }

    *(v68 + 2) = v70 + 1;
    v67(&v68[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v70], v92, v14);
    v47 = v94;
    v56 = v95;
  }

  swift_setDeallocating();
  sub_29D6D0BF0(v65 + v64, sub_29D6C36D8);
  swift_deallocClassInstance();
  v71 = sub_29D939F58();

  v72 = v83;
  sub_29D934D28();
  sub_29D935E88();
  sub_29D935E88();
  v73 = sub_29D937878();
  v74 = sub_29D93A2A8();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    updated = v76;
    *v75 = 136446466;
    v77 = sub_29D6C2364(v47, v48, &updated);

    *(v75 + 4) = v77;
    *(v75 + 12) = 2082;
    v78 = MEMORY[0x29ED6A340](v71, MEMORY[0x29EDC3A38]);
    v80 = sub_29D6C2364(v78, v79, &updated);

    *(v75 + 14) = v80;
    _os_log_impl(&dword_29D677000, v73, v74, "[%{public}s]: Computed needed PluginFeedItemChanges: %{public}s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v76, -1, -1);
    MEMORY[0x29ED6BE30](v75, -1, -1);
  }

  else
  {
  }

  v91(v72, v97);
  sub_29D6D0BF0(v56, sub_29D6C36D8);
  return v71;
}

uint64_t sub_29D6CFEA8@<X0>(uint64_t *a1@<X8>)
{
  sub_29D6D09E0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = MEMORY[0x29EDCA190];
  sub_29D6D07B0();
  sub_29D938338();
  sub_29D6D0800(&qword_2A1A24A58, sub_29D6D09E0, MEMORY[0x29EDB8AB8]);
  v8 = sub_29D938418();
  result = (*(v4 + 8))(v7, v3);
  *a1 = v8;
  return result;
}

uint64_t sub_29D6CFFDC@<X0>(uint64_t a2@<X8>)
{
  v20 = a2;
  v2 = sub_29D9342A8();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9342D8();
  v6 = *(v5 - 8);
  v18 = v5;
  v19 = v6;
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D933F58();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D0388();
  type metadata accessor for ElectrocardiogramUpdateViewController(0);
  sub_29D933FF8();
  (*(v11 + 104))(v14, *MEMORY[0x29EDC3758], v10);
  sub_29D9341B8();
  sub_29D9340A8();
  (*(v21 + 104))(v17, *MEMORY[0x29EDC3910], v22);
  sub_29D9342E8();
  v15 = v18;
  sub_29D934068();
  (*(v19 + 8))(v9, v15);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D934098();
  sub_29D934088();
  sub_29D6D0CE4();
  return sub_29D934078();
}

uint64_t sub_29D6D0314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_29D6D0388()
{
  v0 = sub_29D933A58();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9341B8();
  v6 = sub_29D933FA8();

  if (v6)
  {
    v7 = [v6 identifier];

    sub_29D933A38();
    v8 = sub_29D933A18();
    v10 = v9;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_29D93AA18();

  v12 = 0xD000000000000020;
  v13 = 0x800000029D9599D0;
  MEMORY[0x29ED6A240](v8, v10);

  return v12;
}

void sub_29D6D050C(uint64_t a1)
{
  if (!qword_2A1A24B48)
  {
    sub_29D6D05A0(255);
    sub_29D6D0800(&qword_2A1A24AA0, sub_29D6D05A0, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938128();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B48);
    }
  }
}

void sub_29D6D05A0(uint64_t a1)
{
  if (!qword_2A1A24A98)
  {
    sub_29D6A0CD0();
    v1 = sub_29D938238();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24A98);
    }
  }
}

void sub_29D6D0608(uint64_t a1)
{
  if (!qword_2A1A24B08)
  {
    sub_29D6D06F4(255);
    sub_29D6D05A0(255);
    sub_29D6D0800(&qword_2A1A24B90, sub_29D6D06F4, MEMORY[0x29EDB88D8]);
    sub_29D6D0800(&qword_2A1A24AA0, sub_29D6D05A0, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938198();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B08);
    }
  }
}

void sub_29D6D06F4(uint64_t a1)
{
  if (!qword_2A1A24B88)
  {
    sub_29D6CE59C(255);
    sub_29D6A0CD0();
    sub_29D6D0800(&qword_2A1A24AB0, sub_29D6CE59C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9380B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B88);
    }
  }
}

void sub_29D6D07B0()
{
  if (!qword_2A1A249B8)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A249B8);
    }
  }
}

uint64_t sub_29D6D0800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D6D0848(uint64_t a1)
{
  if (!qword_2A1A24B58)
  {
    sub_29D6D0608(255);
    sub_29D6CE59C(255);
    sub_29D6D0800(&qword_2A1A24B10, sub_29D6D0608, MEMORY[0x29EDB89A8]);
    sub_29D6D0800(&qword_2A1A24AB0, sub_29D6CE59C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D938118();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B58);
    }
  }
}

uint64_t sub_29D6D0934@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D6CEF84(a1, v2 + v6, v7, a2);
}

void sub_29D6D0A14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_29D6D0A78(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 a5, double result)
{
  v7 = a5 >> 5;
  if (v7 <= 1)
  {
    if (a5 >> 5 && v7 != 1)
    {
      return result;
    }
  }

  else if (v7 != 2 && v7 != 3)
  {
    if (v7 == 4)
    {

      sub_29D6D0B14(a2, a3, a4, a5 & 0x1F, v12);
    }

    return result;
  }

  return result;
}

void sub_29D6D0B14(void *result, void *a2, void *a3, char a4, __n128 a5)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    result = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  sub_29D6D0B7C(result);
}

void sub_29D6D0B7C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_29D6D0B8C(uint64_t a1, uint64_t a2)
{
  sub_29D6C36D8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6D0BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ElectrocardiogramUpdateGenerator(uint64_t a1)
{
  result = qword_2A1A25408;
  if (!qword_2A1A25408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29D6D0C9C()
{
  result = qword_2A1A253A8[0];
  if (!qword_2A1A253A8[0])
  {
    type metadata accessor for ElectrocardiogramUpdateGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A253A8);
  }

  return result;
}

uint64_t sub_29D6D0CE4()
{
  v0 = sub_29D937898();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9341B8();
  updated = type metadata accessor for ElectrocardiogramUpdateGenerator(0);
  sub_29D6D0C9C();
  updated = sub_29D939DA8();
  v23 = v6;
  MEMORY[0x29ED6A240](95, 0xE100000000000000);
  v21[1] = v5;
  v7 = v5;
  v8 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v8);

  v10 = updated;
  v9 = v23;
  v11 = HKNRActivePairedDeviceSupportsECG2UpgradeBackgroundDelivery();
  sub_29D934D28();
  sub_29D935E88();
  v12 = sub_29D937878();
  v13 = sub_29D93A2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    updated = v15;
    *v14 = 136446466;
    v16 = sub_29D6C2364(v10, v9, &updated);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2082;
    if (v11)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v11)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_29D6C2364(v17, v18, &updated);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s]: Hide the feed item in Summary: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v15, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);
  }

  else
  {
  }

  (*(v1 + 8))(v4, v0);
  return v11;
}

void sub_29D6D0FA8(uint64_t a1)
{
  sub_29D6CE59C(319);
  if (v1 <= 0x3F)
  {
    sub_29D934178();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for IrregularRhythmNotificationsFeatureStatusActionHandler(uint64_t a1)
{
  result = qword_2A1A22B68;
  if (!qword_2A1A22B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6D10C4()
{
  ObjectType = swift_getObjectType();
  sub_29D6D22BC(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v85 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B805C(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v87 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9371A8();
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v86 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9346E8();
  v93 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D934C58();
  v95 = *(v14 - 8);
  v96 = v14;
  v16 = MEMORY[0x2A1C7C4A8](v14, v15);
  v92 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v94 = &v84 - v19;
  v20 = sub_29D936638();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D9369E8();
  v25 = MEMORY[0x29EDC2970];
  sub_29D6D2830(&qword_2A17B1E40, MEMORY[0x29EDC2970], MEMORY[0x29EDC2980]);
  sub_29D6D2830(&qword_2A17B3920, v25, MEMORY[0x29EDC2978]);
  sub_29D936628();
  v26 = *(v21 + 8);
  v26(v24, v20);
  v27 = v98[0];
  if (v98[0])
  {
    sub_29D936B88();
    sub_29D936608();
    v26(v24, v20);
    v97 = v27;
    sub_29D693E2C(v98, v98[3]);
    v28 = sub_29D936588();
    sub_29D69417C(v98);
    sub_29D936B88();
    v91 = sub_29D936618();
    v26(v24, v20);
    v84 = v0;
    sub_29D936B88();
    v29 = v94;
    sub_29D9347B8();
    v26(v24, v20);
    sub_29D9369B8();
    v30 = v93;
    v31 = (*(v93 + 88))(v13, v10);
    if (v31 == *MEMORY[0x29EDC1760])
    {
      v32 = *MEMORY[0x29EDBA6F8];
      v33 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v34 = v28;
      v35 = [v33 initWithFeatureIdentifier:v32 healthStore:v34 currentCountryCode:0];
      type metadata accessor for AtrialFibrillationFeatureStatusAvailability(0);
      v36 = swift_allocObject();
      sub_29D6D2354(v34, v35, v36);

      v37 = v95;
      v38 = v96;
      v39 = v92;
      (*(v95 + 16))(v92, v29, v96);
      v40 = objc_allocWithZone(type metadata accessor for AtrialFibrillationSettingsViewController(0));

      v42 = sub_29D706714(v41, v39);

      v43 = v91;
      v44 = [v91 navigationController];
      if (v44)
      {
        v45 = v44;
        [v44 pushViewController:v42 animated:1];

        (*(v37 + 8))(v29, v38);
      }

      else
      {
        (*(v37 + 8))(v29, v38);
      }
    }

    else
    {
      v54 = v28;
      v55 = v91;
      v56 = v29;
      v57 = v96;
      if (v31 == *MEMORY[0x29EDC1768])
      {
        v58 = *MEMORY[0x29EDBA6F8];
        v59 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
        v60 = v54;
        v61 = [v59 initWithFeatureIdentifier:v58 healthStore:v60 currentCountryCode:0];
        type metadata accessor for AtrialFibrillationFeatureStatusAvailability(0);
        v62 = swift_allocObject();
        v63 = sub_29D6D2354(v60, v61, v62);

        v64 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
        swift_beginAccess();
        v65 = &v63[v64];
        v66 = v87;
        sub_29D6D27C0(v65, v87, sub_29D6B805C);
        v68 = v88;
        v67 = v89;
        if ((*(v88 + 48))(v66, 1, v89) == 1)
        {
          sub_29D6D272C(v66, sub_29D6B805C);
          v69 = v55;
        }

        else
        {
          v74 = v86;
          (*(v68 + 32))(v86, v66, v67);
          v69 = v55;
          if (sub_29D937198())
          {
            v75 = v68;
            v76 = v95;
            v77 = v92;
            (*(v95 + 16))(v92, v56, v57);
            v78 = objc_allocWithZone(type metadata accessor for AtrialFibrillationSettingsViewController(0));

            v80 = sub_29D706714(v79, v77);
            v81 = v67;
            v82 = v80;

            sub_29D9365C8();
            sub_29D835258(1, v60, ObjectType, &off_2A24415C0);
            v83 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
            [v69 presentViewController:v83 animated:1 completion:0];

            (*(v75 + 8))(v86, v81);
            (*(v76 + 8))(v56, v57);
            return;
          }

          (*(v68 + 8))(v74, v67);
        }

        sub_29D6D1C34(v69, v60);

        (*(v95 + 8))(v56, v57);
      }

      else
      {
        v70 = v95;
        if (v31 == *MEMORY[0x29EDC1758] || v31 == *MEMORY[0x29EDC1750])
        {
          v71 = v85;
          sub_29D9369D8();
          v72 = sub_29D9336F8();
          v73 = *(v72 - 8);
          if ((*(v73 + 48))(v71, 1, v72) == 1)
          {
            (*(v70 + 8))(v56, v96);

            sub_29D6D272C(v71, sub_29D6D22BC);
          }

          else
          {
            sub_29D9336A8();

            (*(v70 + 8))(v56, v96);
            (*(v73 + 8))(v71, v72);
          }
        }

        else
        {
          (*(v95 + 8))(v29, v96);

          (*(v30 + 8))(v13, v10);
        }
      }
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v46 = sub_29D937898();
    sub_29D69C6C0(v46, qword_2A1A2C008);
    v47 = sub_29D937878();
    v48 = sub_29D93A298();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v98[0] = v50;
      *v49 = 136315138;
      v51 = sub_29D93AF08();
      v53 = sub_29D6C2364(v51, v52, v98);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_29D677000, v47, v48, "[%s] Could not access action handler user data!", v49, 0xCu);
      sub_29D69417C(v50);
      MEMORY[0x29ED6BE30](v50, -1, -1);
      MEMORY[0x29ED6BE30](v49, -1, -1);
    }
  }
}

void sub_29D6D1C34(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_29D933CE8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933C88();
  v11 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v12 = sub_29D933BB8();
  v13 = [v11 initWithCalendar_];

  (*(v7 + 8))(v10, v6);
  v14 = objc_allocWithZone(type metadata accessor for OnboardingDelegate());
  v15 = sub_29D6D20B4(a2, v13);
  v16 = qword_2A1A22B90;
  v17 = *&v3[qword_2A1A22B90];
  *&v3[qword_2A1A22B90] = v15;

  v18 = *&v3[v16];
  if (v18 && (v19 = *(v18 + OBJC_IVAR____TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate_onboardingManager)) != 0 && (v20 = [v19 onboardingNavigationController]) != 0)
  {
    v21 = v20;
    [v20 setModalInPresentation:1];
    [a1 showViewController:v21 sender:0];
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v23 = v3;
    v21 = sub_29D937878();
    v24 = sub_29D93A298();

    if (os_log_type_enabled(v21, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136446466;
      ObjectType = swift_getObjectType();
      sub_29D6D2274();
      v27 = sub_29D939DA8();
      v29 = sub_29D6C2364(v27, v28, &v31);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D959B20, &v31);
      _os_log_impl(&dword_29D677000, v21, v24, "[%{public}s.%{public}s] Onboarding navigation controller not initialized", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }
  }
}

uint64_t sub_29D6D1F44(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  *&v8[qword_2A1A22B90] = 0;
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D6D2060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IrregularRhythmNotificationsFeatureStatusActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_29D6D20B4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate_onboardingManager] = 0;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = objc_allocWithZone(MEMORY[0x29EDC52B0]);
  v8 = v6;
  v9 = [v7 initWithOnboardingType:0 isFirstTimeOnboarding:1 healthStore:a1 dateCache:a2 provenance:4 delegate:v8];

  v10 = *&v8[OBJC_IVAR____TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate_onboardingManager];
  *&v8[OBJC_IVAR____TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate_onboardingManager] = v9;

  return v8;
}

unint64_t sub_29D6D2274()
{
  result = qword_2A17B1E38;
  if (!qword_2A17B1E38)
  {
    type metadata accessor for IrregularRhythmNotificationsFeatureStatusActionHandler(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B1E38);
  }

  return result;
}

void sub_29D6D22F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_29D6D2354(void *a1, uint64_t a2, char *a3)
{
  sub_29D6D22F0(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v27 - v10;
  sub_29D6D278C(0);
  v14 = MEMORY[0x2A1C7C4A8](v12, v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v27 - v18;
  v28[3] = sub_29D6B8230();
  v28[4] = MEMORY[0x29EDC2EA8];
  v28[0] = a2;
  v20 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability__featureStatus;
  v21 = sub_29D9346E8();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_29D6D27C0(v19, v16, sub_29D6D278C);
  sub_29D938398();
  sub_29D6D272C(v19, sub_29D6D278C);
  (*(v8 + 32))(&a3[v20], v11, v7);
  v22 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
  v23 = sub_29D9371A8();
  (*(*(v23 - 8) + 56))(&a3[v22], 1, 1, v23);
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v24 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v24 = MEMORY[0x29EDCA1A0];
  }

  *&a3[OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_subscriptions] = v24;
  *(a3 + 2) = a1;
  sub_29D6945AC(v28, (a3 + 24));
  v25 = a1;
  sub_29D70C7C4();
  sub_29D693E2C(a3 + 3, *(a3 + 6));
  v27[0] = sub_29D937258();
  swift_allocObject();
  swift_weakInit();
  sub_29D6B7D8C(0);
  sub_29D6D2830(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D938588();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69417C(v28);
  return a3;
}

uint64_t sub_29D6D272C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D6D27C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6D2830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29D6D28E8(uint64_t *a1, uint64_t (*a2)(id), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_29D6D2948(v3, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_29D6D2948(uint64_t a1, uint64_t (*a2)(id), uint64_t (*a3)(void))
{
  v5 = sub_29D937A88();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  a2([v10 setTranslatesAutoresizingMaskIntoConstraints_]);
  v11 = sub_29D937A48();
  (*(v6 + 8))(v9, v5);
  [v10 setFont_];

  a3();
  if (v12)
  {
    v13 = sub_29D939D28();
  }

  else
  {
    v13 = 0;
  }

  [v10 setText_];

  [v10 setNumberOfLines_];
  return v10;
}

id sub_29D6D2AE8()
{
  v1 = OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel;
  v2 = *&v0[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel];
  }

  else
  {
    v4 = sub_29D6D2B4C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D6D2B4C(void *a1)
{
  v2 = sub_29D937A88();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D937AC8();
  v8 = sub_29D937A48();
  (*(v3 + 8))(v6, v2);
  [v7 setFont_];

  if (qword_2A17B0D60 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v9 = sub_29D939D28();

  [v7 setText_];

  v10 = [a1 tintColor];
  [v7 setTextColor_];

  [v7 setUserInteractionEnabled_];
  v11 = [objc_allocWithZone(MEMORY[0x29EDC7D28]) initWithTarget:a1 action:sel_learnMoreTapped];
  [v7 addGestureRecognizer_];

  [v7 setNumberOfLines_];
  return v7;
}

char *sub_29D6D2DB8(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___detailLabel] = 0;
  *&v2[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel] = 0;
  v5 = OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView_configuration;
  v56 = sub_29D937B88();
  v57 = *(v56 - 8);
  v55 = a1;
  (*(v57 + 16))(&v2[v5], a1, v56);
  v58.receiver = v2;
  v58.super_class = type metadata accessor for ConfirmDetailsLearnMoreView(0);
  v6 = objc_msgSendSuper2(&v58, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D937AE8();
  v8 = v7;
  sub_29D937AE8();
  v10 = v9;
  v11 = sub_29D6D2880();
  v12 = a2 - (v8 + v10);
  [v11 setPreferredMaxLayoutWidth_];

  v13 = sub_29D6D28B4();
  [v13 setPreferredMaxLayoutWidth_];

  v14 = OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel;
  v15 = *&v6[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel];
  v16 = v6;
  [v16 addSubview_];
  v17 = OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___detailLabel;
  [v16 addSubview_];
  v18 = sub_29D6D2AE8();
  [v16 addSubview_];

  v54 = objc_opt_self();
  sub_29D6A0C58();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29D941950;
  v20 = [*&v6[v14] topAnchor];
  v21 = [v16 &selRef_irregularHeartRhythmFooterLinkTitle];

  v22 = [v20 constraintEqualToAnchor_];
  *(v19 + 32) = v22;
  v23 = [*&v6[v14] leadingAnchor];
  v24 = [v16 leadingAnchor];

  v25 = [v23 constraintEqualToAnchor:v24 constant:v8];
  *(v19 + 40) = v25;
  v26 = [*&v6[v14] trailingAnchor];
  v27 = [v16 trailingAnchor];

  v28 = -v10;
  v29 = [v26 constraintLessThanOrEqualToAnchor:v27 constant:v28];

  *(v19 + 48) = v29;
  v30 = [*&v16[v17] topAnchor];
  v31 = [*&v6[v14] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:4.0];

  *(v19 + 56) = v32;
  v33 = [*&v16[v17] leadingAnchor];
  v34 = [v16 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor:v34 constant:v8];
  *(v19 + 64) = v35;
  v36 = [*&v16[v17] trailingAnchor];
  v37 = [v16 trailingAnchor];

  v38 = [v36 constraintLessThanOrEqualToAnchor:v37 constant:v28];
  *(v19 + 72) = v38;
  v39 = OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel;
  v40 = [*&v16[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel] topAnchor];
  v41 = [*&v16[v17] bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:2.0];

  *(v19 + 80) = v42;
  v43 = [*&v16[v39] leadingAnchor];
  v44 = [v16 leadingAnchor];

  v45 = [v43 constraintEqualToAnchor:v44 constant:v8];
  *(v19 + 88) = v45;
  v46 = [*&v16[v39] trailingAnchor];
  v47 = [v16 trailingAnchor];

  v48 = [v46 constraintLessThanOrEqualToAnchor:v47 constant:v28];
  *(v19 + 96) = v48;
  v49 = [*&v16[v39] bottomAnchor];
  v50 = [v16 bottomAnchor];

  v51 = [v49 constraintEqualToAnchor:v50 constant:-18.0];
  *(v19 + 104) = v51;
  sub_29D6D37A4();
  v52 = sub_29D939F18();

  [v54 activateConstraints_];

  (*(v57 + 8))(v55, v56);
  return v16;
}

uint64_t sub_29D6D34D0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_29D7307EC();
      sub_29D936978();
    }

    return sub_29D936978();
  }

  return result;
}

id sub_29D6D35C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmDetailsLearnMoreView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConfirmDetailsLearnMoreView(uint64_t a1)
{
  result = qword_2A17B1E70;
  if (!qword_2A17B1E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6D36FC(uint64_t a1)
{
  result = sub_29D937B88();
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

unint64_t sub_29D6D37A4()
{
  result = qword_2A17B81B0;
  if (!qword_2A17B81B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B81B0);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenPDFBarChart(uint64_t a1)
{
  result = qword_2A17B1E80;
  if (!qword_2A17B1E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6D3864(uint64_t a1)
{
  sub_29D6D3900();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AFibBurdenPDFChartViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D6D3900()
{
  if (!qword_2A17B1E90)
  {
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1E90);
    }
  }
}

uint64_t sub_29D6D3950@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void (**a2)(void)@<X1>, int a3@<W2>, void *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v116 = a5;
  v127 = a4;
  LODWORD(v126) = a3;
  v128 = a2;
  v131 = a1;
  v120 = a6;
  v114 = sub_29D938828();
  v125 = *(v114 - 8);
  MEMORY[0x2A1C7C4A8](v114, v6);
  v124 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D715C(0, &qword_2A17B1EB0, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v122 = &v105 - v10;
  sub_29D6D5E4C(0);
  v109 = v11;
  v107 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v106 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6560(0);
  v111 = v14;
  v110 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v108 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6738(0);
  v118 = v17;
  v113 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v112 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6858(0);
  v121 = v20;
  v119 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v115 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6EB0(0, &qword_2A17B1F58, sub_29D6D6A80, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v117 = v23;
  MEMORY[0x2A1C7C4A8](v23, v24);
  v123 = &v105 - v25;
  sub_29D6D6C48(0);
  v27 = v26;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v105 = (&v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v29, v31);
  v33 = &v105 - v32;
  v34 = sub_29D9339F8();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v39 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v37, v40);
  v42 = &v105 - v41;
  sub_29D6D6634(0);
  v130 = v43;
  MEMORY[0x2A1C7C4A8](v43, v44);
  v132 = &v105 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29D9331D8();
  v47 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46, v48);
  v50 = &v105 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for AFibBurdenPDFChartViewModel(0);
  v52 = 0.0;
  v53 = (v131 + *(result + 32));
  v54 = *v53;
  if (v54 != 2)
  {
    v52 = v53[2];
    if (v52 < 0.0)
    {
      goto LABEL_8;
    }
  }

  sub_29D8BE424(0.0, v52, v54 == 2, 3, v128, v126, v127, &v134);
  v128 = v47;
  v55 = v50;
  v56 = v46;
  v57 = v55;
  v47[2]();
  sub_29D9331A8();
  sub_29D933178();
  sub_29D6D706C(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  v58 = v34;
  result = sub_29D939CD8();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v127 = v56;
  v129 = v57;
  v59 = *(v35 + 32);
  v59(v33, v42, v34);
  v60 = v27;
  v59(&v33[*(v27 + 48)], v39, v58);
  v61 = v105;
  sub_29D6D6F1C(v33, v105, sub_29D6D6C48);
  v126 = *(v27 + 48);
  v62 = v132;
  v59(v132, v61, v58);
  v63 = *(v35 + 8);
  v63(v126 + v61, v58);
  sub_29D6D6F84(v33, v61, sub_29D6D6C48);
  v59((v62 + *(v130 + 36)), (v61 + *(v60 + 48)), v58);
  v64 = (v63)(v61, v58);
  v126 = &v105;
  MEMORY[0x2A1C7C4A8](v64, v65);
  v66 = v129;
  *(&v105 - 2) = v131;
  *(&v105 - 1) = v66;
  sub_29D6D5EB0(0);
  sub_29D6D6328();
  v67 = v106;
  sub_29D937E58();
  v68 = sub_29D938028();
  v105 = *(*(v68 - 8) + 56);
  v69 = v122;
  v105(v122, 1, 1, v68);
  v70 = sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C, MEMORY[0x29EDB8690]);
  v71 = sub_29D6D66C8();
  v72 = v108;
  v73 = v109;
  v74 = v130;
  sub_29D939348();
  v131 = MEMORY[0x29EDB8710];
  sub_29D6D71C0(v69, &qword_2A17B1EB0, MEMORY[0x29EDB8710]);
  v75 = (*(v107 + 8))(v67, v73);
  MEMORY[0x2A1C7C4A8](v75, v76);
  *(&v105 - 2) = v116;
  *&v135 = v73;
  *(&v135 + 1) = v74;
  *&v136 = v70;
  *(&v136 + 1) = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = MEMORY[0x29EDB8608];
  v79 = v112;
  v80 = v111;
  v81 = MEMORY[0x29EDB8600];
  sub_29D939328();
  (*(v110 + 8))(v72, v80);
  v133 = v134;
  v105(v69, 1, 1, v68);
  sub_29D6D7108(0, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  v83 = v82;
  *&v135 = v80;
  *(&v135 + 1) = v78;
  *&v136 = OpaqueTypeConformance2;
  *(&v136 + 1) = v81;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = sub_29D6D69EC();
  v86 = v115;
  v87 = v118;
  sub_29D939358();
  sub_29D6D71C0(v69, &qword_2A17B1EB0, v131);
  v88 = (*(v113 + 8))(v79, v87);
  MEMORY[0x2A1C7C4A8](v88, v89);
  *(&v105 - 2) = &v134;
  *&v135 = v87;
  *(&v135 + 1) = v83;
  *&v136 = v84;
  *(&v136 + 1) = v85;
  swift_getOpaqueTypeConformance2();
  v90 = v123;
  v91 = v121;
  sub_29D939338();
  (*(v119 + 8))(v86, v91);
  sub_29D9398B8();
  sub_29D938718();
  v92 = (v90 + *(v117 + 36));
  v93 = v136;
  *v92 = v135;
  v92[1] = v93;
  v92[2] = v137;
  KeyPath = swift_getKeyPath();
  v95 = [objc_opt_self() sharedApplication];
  v96 = [v95 userInterfaceLayoutDirection];

  sub_29D6D6CD4(v132);
  v97 = v125;
  v98 = MEMORY[0x29EDBC548];
  if (v96 != 1)
  {
    v98 = MEMORY[0x29EDBC540];
  }

  v99 = v124;
  v100 = v114;
  (*(v125 + 104))(v124, *v98, v114);
  sub_29D6D6D30(0);
  v102 = v120;
  v103 = (v120 + *(v101 + 36));
  sub_29D6D715C(0, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
  (*(v97 + 32))(v103 + *(v104 + 28), v99, v100);
  *v103 = KeyPath;
  sub_29D67BD84(v90, v102);
  (v128[1])(v129, v127);
  return sub_29D6D6E00(&v134);
}

uint64_t sub_29D6D46D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v87 = a3;
  v94 = sub_29D9339F8();
  v96 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94, v4);
  v76 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6EB0(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v91 = &v71 - v8;
  v82 = sub_29D937F78();
  v95 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82, v9);
  v75 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6290(0, &qword_2A17B1F00, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0]);
  v92 = v11;
  v81 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v80 = &v71 - v13;
  sub_29D6D61A0(0);
  v86 = v14;
  v85 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14, v15);
  v84 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v83 = &v71 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v79 = &v71 - v23;
  MEMORY[0x2A1C7C4A8](v22, v24);
  v90 = &v71 - v25;
  v26 = type metadata accessor for AFibBurdenPDFChartViewModel(0);
  v27 = v26 - 8;
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v26, v30);
  sub_29D6D5F24(0);
  v78 = v31;
  v77 = *(v31 - 8);
  v33 = MEMORY[0x2A1C7C4A8](v31, v32);
  v89 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33, v35);
  v37 = &v71 - v36;
  v98[0] = *(a1 + *(v27 + 28));
  sub_29D6D6F1C(a1, &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AFibBurdenPDFChartViewModel);
  v38 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v39 = swift_allocObject();
  sub_29D6D6F84(&v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38, type metadata accessor for AFibBurdenPDFChartViewModel);
  sub_29D6D715C(0, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
  sub_29D9331D8();
  sub_29D6D6028(0);
  sub_29D6D6118();
  v40 = MEMORY[0x29EDB8698];
  sub_29D6D6290(255, &qword_2A17B1EE0, MEMORY[0x29EDB86A0], MEMORY[0x29EDB8698]);
  v42 = v41;
  v43 = sub_29D937EA8();
  sub_29D935E88();
  v99 = v43;
  v100 = MEMORY[0x29EDBCA98];
  v101 = v40;
  v102 = MEMORY[0x29EDBCA88];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = v42;
  v100 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29D6D706C(&qword_2A17B1F88, type metadata accessor for AFibBurdenPDFChartPoint, &unk_29D951654);
  v88 = v37;
  sub_29D9397B8();
  sub_29D938C18();
  v45 = v76;
  sub_29D9331A8();
  v46 = v75;
  v47 = v94;
  sub_29D937D48();

  v48 = *(v96 + 8);
  v96 += 8;
  v74 = v48;
  v48(v45, v47);
  sub_29D937F48();
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  v72 = qword_2A17D0CC0;
  v99 = qword_2A17D0CC0;

  v49 = v80;
  v50 = v82;
  v51 = MEMORY[0x29EDBCA98];
  v52 = MEMORY[0x29EDB86E0];
  v53 = MEMORY[0x29EDBCA88];
  sub_29D937C48();
  v54 = *(v95 + 8);
  v95 += 8;
  v73 = v54;
  v54(v46, v50);
  sub_29D9386D8();
  v99 = v50;
  v100 = v51;
  v101 = v52;
  v102 = v53;
  v71 = swift_getOpaqueTypeConformance2();
  v55 = v92;
  sub_29D937C98();
  sub_29D6D70B4(v98);
  v81 = *(v81 + 8);
  (v81)(v49, v55);
  sub_29D938C18();
  sub_29D933178();
  v56 = v94;
  sub_29D937D48();

  v74(v45, v56);
  sub_29D937F48();
  v99 = v72;
  sub_29D937C48();

  v73(v46, v50);
  sub_29D9386D8();
  v57 = v79;
  v58 = v92;
  sub_29D937C98();
  sub_29D6D70B4(&v99);
  (v81)(v49, v58);
  v59 = v77;
  v60 = v89;
  v61 = v78;
  (*(v77 + 16))(v89, v88, v78);
  v97[0] = v60;
  v62 = v85;
  v63 = *(v85 + 16);
  v64 = v83;
  v65 = v90;
  v66 = v86;
  v63(v83, v90, v86);
  v97[1] = v64;
  v67 = v84;
  v63(v84, v57, v66);
  v97[2] = v67;
  sub_29D90AA34(v97, v87);
  v68 = *(v62 + 8);
  v68(v57, v66);
  v68(v65, v66);
  v69 = *(v59 + 8);
  v69(v88, v61);
  v68(v67, v66);
  v68(v64, v66);
  return (v69)(v89, v61);
}

uint64_t sub_29D6D5228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v79 = a3;
  v4 = sub_29D938C38();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v76 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D7108(0, &qword_2A17B1F90, MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v74 = v58 - v9;
  v72 = MEMORY[0x29EDB9D18];
  sub_29D6D715C(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v68 = v58 - v12;
  v13 = sub_29D933CC8();
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v63 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D9339F8();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = v58 - v23;
  sub_29D6D6EB0(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v25 - 8, v26);
  v62 = v58 - v27;
  v28 = sub_29D937EA8();
  v29 = *(v28 - 8);
  v69 = v28;
  v70 = v29;
  MEMORY[0x2A1C7C4A8](v28, v30);
  v67 = v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6290(0, &qword_2A17B1EE0, MEMORY[0x29EDB86A0], MEMORY[0x29EDB8698]);
  v71 = v32;
  v73 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v33);
  v66 = v58 - v34;
  v60 = sub_29D938C18();
  v58[3] = v35;
  v61 = a1;
  sub_29D9331A8();
  v36 = sub_29D933958();
  v37 = *(v17 + 8);
  v59 = v16;
  v37(v21, v16);
  sub_29D933178();
  v38 = sub_29D933958();
  v37(v21, v16);
  v39 = HKDateMid();

  sub_29D933998();
  v41 = v63;
  v40 = v64;
  v42 = v65;
  (*(v64 + 104))(v63, *MEMORY[0x29EDB9CA0], v65);
  v43 = sub_29D933CE8();
  v44 = v68;
  (*(*(v43 - 8) + 56))(v68, 1, 1, v43);
  sub_29D937D38();

  sub_29D6D71C0(v44, &qword_2A17B1F98, v72);
  (*(v40 + 8))(v41, v42);
  v37(v24, v59);
  sub_29D938C18();
  v80 = *(v61 + *(type metadata accessor for AFibBurdenPDFChartPoint(0) + 20));
  sub_29D937D48();

  v45 = v67;
  sub_29D937E78();
  v80 = sub_29D8F4468();
  v46 = MEMORY[0x29EDBCA98];
  v47 = MEMORY[0x29EDBCA88];
  v48 = v66;
  v49 = v69;
  v50 = MEMORY[0x29EDB8698];
  sub_29D937C48();

  v51 = v45;
  v52 = v49;
  (*(v70 + 8))(v51, v49);
  v53 = v76;
  v54 = v77;
  v55 = v78;
  (*(v77 + 104))(v76, *MEMORY[0x29EDBC6F8], v78);
  v80 = v52;
  v81 = v46;
  v82 = v50;
  v83 = v47;
  swift_getOpaqueTypeConformance2();
  v56 = v71;
  sub_29D937C38();
  (*(v54 + 8))(v53, v55);
  return (*(v73 + 8))(v48, v56);
}

uint64_t sub_29D6D5A74@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  sub_29D9356B8();
  v2 = sub_29D9356C8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_29D6D5B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D6D706C(&qword_2A17B1EA8, type metadata accessor for AFibBurdenPDFBarChart, &unk_29D941A68);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D6D5BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D6D706C(&qword_2A17B1EA8, type metadata accessor for AFibBurdenPDFBarChart, &unk_29D941A68);

  return a4(a1, a2, v6);
}

uint64_t sub_29D6D5C6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D6D706C(&qword_2A17B1EA0, type metadata accessor for AFibBurdenPDFBarChart, &unk_29D941A28);
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29D6D5DF4(uint64_t a1)
{
  result = sub_29D6D706C(&qword_2A17B1EA8, type metadata accessor for AFibBurdenPDFBarChart, &unk_29D941A68);
  *(a1 + 8) = result;
  return result;
}

void sub_29D6D5E4C(uint64_t a1)
{
  if (!qword_2A17B1EB8)
  {
    sub_29D6D5EB0(255);
    sub_29D6D6328();
    v1 = sub_29D937E68();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1EB8);
    }
  }
}

void sub_29D6D5EB0(uint64_t a1)
{
  if (!qword_2A17B1EC0)
  {
    sub_29D6D5F24(255);
    sub_29D6D61A0(255);
    v1 = sub_29D937BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1EC0);
    }
  }
}

void sub_29D6D5F24(uint64_t a1)
{
  if (!qword_2A17B1EC8)
  {
    sub_29D6D715C(255, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
    sub_29D9331D8();
    sub_29D6D6028(255);
    sub_29D6D6118();
    sub_29D6D706C(&qword_2A17B1EF0, MEMORY[0x29EDB98E8], MEMORY[0x29EDB98F8]);
    v1 = sub_29D9397E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1EC8);
    }
  }
}

void sub_29D6D6028(uint64_t a1)
{
  if (!qword_2A17B1ED8)
  {
    sub_29D6D6290(255, &qword_2A17B1EE0, MEMORY[0x29EDB86A0], MEMORY[0x29EDB8698]);
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1ED8);
    }
  }
}

unint64_t sub_29D6D6118()
{
  result = qword_2A17B1EE8;
  if (!qword_2A17B1EE8)
  {
    sub_29D6D715C(255, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1EE8);
  }

  return result;
}

void sub_29D6D61A0(uint64_t a1)
{
  if (!qword_2A17B1EF8)
  {
    sub_29D6D6290(255, &qword_2A17B1F00, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0]);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1EF8);
    }
  }
}

void sub_29D6D6290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29D6D6328()
{
  result = qword_2A17B1F08;
  if (!qword_2A17B1F08)
  {
    sub_29D6D5EB0(255);
    sub_29D6D644C();
    sub_29D6D6290(255, &qword_2A17B1F00, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0]);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1F08);
  }

  return result;
}

unint64_t sub_29D6D644C()
{
  result = qword_2A17B1F10;
  if (!qword_2A17B1F10)
  {
    sub_29D6D5F24(255);
    sub_29D6D6290(255, &qword_2A17B1EE0, MEMORY[0x29EDB86A0], MEMORY[0x29EDB8698]);
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1F10);
  }

  return result;
}

void sub_29D6D6560(uint64_t a1)
{
  if (!qword_2A17B1F18)
  {
    sub_29D6D5E4C(255);
    sub_29D6D6634(255);
    sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1F18);
    }
  }
}

void sub_29D6D6634(uint64_t a1)
{
  if (!qword_2A17B1F20)
  {
    sub_29D9339F8();
    sub_29D6D706C(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v1 = sub_29D939CE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1F20);
    }
  }
}

unint64_t sub_29D6D66C8()
{
  result = qword_2A17B1F30;
  if (!qword_2A17B1F30)
  {
    sub_29D6D6634(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1F30);
  }

  return result;
}

void sub_29D6D6738(uint64_t a1)
{
  if (!qword_2A17B1F38)
  {
    sub_29D6D6560(255);
    sub_29D6D5E4C(255);
    sub_29D6D6634(255);
    sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1F38);
    }
  }
}

void sub_29D6D6858(uint64_t a1)
{
  if (!qword_2A17B1F40)
  {
    sub_29D6D6738(255);
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D6D6560(255);
    sub_29D6D5E4C(255);
    sub_29D6D6634(255);
    sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1F40);
    }
  }
}

unint64_t sub_29D6D69EC()
{
  result = qword_2A17B1F50;
  if (!qword_2A17B1F50)
  {
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1F50);
  }

  return result;
}

void sub_29D6D6A80(uint64_t a1)
{
  if (!qword_2A17B1F60)
  {
    sub_29D6D6858(255);
    sub_29D6D6738(255);
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D6D6560(255);
    sub_29D6D5E4C(255);
    sub_29D6D6634(255);
    sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1F60);
    }
  }
}

void sub_29D6D6C48(uint64_t a1)
{
  if (!qword_2A17B1F68)
  {
    sub_29D9339F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B1F68);
    }
  }
}

uint64_t sub_29D6D6CD4(uint64_t a1)
{
  sub_29D6D6634(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6D6D30(uint64_t a1)
{
  if (!qword_2A17B1F70)
  {
    sub_29D6D6EB0(255, &qword_2A17B1F58, sub_29D6D6A80, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D6D715C(255, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1F70);
    }
  }
}

void sub_29D6D6EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29D6D6F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6D6F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6D6FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFibBurdenPDFChartViewModel(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D6D5228(a1, v6, a2);
}

uint64_t sub_29D6D706C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D6D7108(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x29EDC9AD8], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D6D715C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D6D71C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D6D715C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D6D7230()
{
  result = qword_2A17B1FA0;
  if (!qword_2A17B1FA0)
  {
    sub_29D6D6D30(255);
    sub_29D6D72B0();
    sub_29D6D74DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1FA0);
  }

  return result;
}

unint64_t sub_29D6D72B0()
{
  result = qword_2A17B1FA8;
  if (!qword_2A17B1FA8)
  {
    sub_29D6D6EB0(255, &qword_2A17B1F58, sub_29D6D6A80, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D6D6858(255);
    sub_29D6D6738(255);
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D6D6560(255);
    sub_29D6D5E4C(255);
    sub_29D6D6634(255);
    sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C, MEMORY[0x29EDB8690]);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1FA8);
  }

  return result;
}

unint64_t sub_29D6D74DC()
{
  result = qword_2A17B1FB0;
  if (!qword_2A17B1FB0)
  {
    sub_29D6D715C(255, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1FB0);
  }

  return result;
}

uint64_t sub_29D6D7564(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29D6D75AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D6D75FC()
{
  result = qword_2A1A244A8;
  if (!qword_2A1A244A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A244A8);
  }

  return result;
}

uint64_t sub_29D6D76E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D6D7728(char a1)
{
  if (a1)
  {
    [objc_opt_self() bradycardiaThresholdHeartRate];
    v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v2 = sub_29D93A6E8();
    v3 = sub_29D8EFDF0(v2, v1);
    v5 = v4;

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D93DDB0;
    v7 = MEMORY[0x29EDC99B0];
    *(v6 + 56) = MEMORY[0x29EDC99B0];
    *(v6 + 64) = sub_29D69AD24();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v8 = sub_29D939D38();
    v10 = v9;

    sub_29D9334A8();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29D93DDB0;
    v12 = *MEMORY[0x29EDC5250];
    v13 = MEMORY[0x29EDC9C10];
    *(v11 + 56) = MEMORY[0x29EDC9BA8];
    *(v11 + 64) = v13;
    *(v11 + 32) = v12;
    v14 = sub_29D939D38();
    v16 = v15;

    sub_29D6AA3B4(0, &qword_2A1A21F18, v7);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29D93F680;
    *(v17 + 32) = v8;
    *(v17 + 40) = v10;
    *(v17 + 48) = v14;
  }

  else
  {
    sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *(v17 + 32) = sub_29D9334A8();
    *(v17 + 40) = v18;
    v19 = sub_29D9334A8();
    v16 = v20;
    *(v17 + 48) = v19;
  }

  *(v17 + 56) = v16;
  return v17;
}

uint64_t sub_29D6D7AD4@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v22 - v5;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v2);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v22 - v9;
  v11 = sub_29D9346E8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A2C038;
  sub_29D9334A8();
  (*(v12 + 104))(v15, *MEMORY[0x29EDC1760], v11);
  v17 = v16;
  sub_29D934788();
  v18 = sub_29D934798();
  (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  sub_29D6D7728(1);
  sub_29D934818();
  v19 = sub_29D934358();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_29D934988();
  v20 = sub_29D9349A8();
  return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
}

uint64_t sub_29D6D7E70@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v25 - v4;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v25 - v8;
  v10 = sub_29D9346E8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A2C038;
  v25 = sub_29D9334A8();
  (*(v11 + 104))(v14, *MEMORY[0x29EDC1768], v10);
  v16 = v15;
  sub_29D934788();
  v17 = sub_29D934798();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  sub_29D9347E8();
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D93F680;
  *(v18 + 32) = sub_29D9334A8();
  *(v18 + 40) = v19;
  *(v18 + 48) = sub_29D9334A8();
  *(v18 + 56) = v20;
  sub_29D934818();
  v21 = sub_29D934358();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  v22 = v26;
  sub_29D934988();
  v23 = sub_29D9349A8();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

void sub_29D6D82C8(char *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v107 = &v99 - v7;
  v8 = sub_29D9346B8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v4);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v108 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v99 - v18;
  v20 = sub_29D9346E8();
  v109 = *(v20 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v20, v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v99 - v26;
  v111 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v111)
  {
    __break(1u);
    goto LABEL_52;
  }

  v110 = a2;
  v28 = sub_29D939D68();
  v30 = v29;
  if (v28 == sub_29D939D68() && v30 == v31)
  {

LABEL_6:
    v33 = sub_29D9349A8();
    (*(*(v33 - 8) + 56))(v110, 1, 1, v33);
    v34 = v111;

    return;
  }

  v32 = sub_29D93AD78();

  if (v32)
  {
    goto LABEL_6;
  }

  v35 = sub_29D939D68();
  v37 = v36;
  if (v35 == sub_29D939D68() && v37 == v38)
  {

    goto LABEL_14;
  }

  v39 = sub_29D93AD78();

  if ((v39 & 1) == 0)
  {
    v58 = sub_29D939D68();
    v60 = v59;
    if (v58 == sub_29D939D68() && v60 == v61)
    {

      goto LABEL_24;
    }

    v62 = sub_29D93AD78();

    if (v62)
    {

LABEL_24:
      v40 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      if (qword_2A1A257A0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_49;
    }

    v63 = sub_29D939D68();
    v65 = v64;
    if (v63 == sub_29D939D68() && v65 == v66)
    {

LABEL_31:
      v111 = sub_29D934848();
      v69 = v68;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v105 = qword_2A1A2C038;
      v106 = sub_29D9334A8();
      sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
      v70 = swift_allocObject();
      v103 = xmmword_29D93DDB0;
      *(v70 + 16) = xmmword_29D93DDB0;
      *(v70 + 56) = MEMORY[0x29EDC99B0];
      *(v70 + 64) = sub_29D69AD24();
      *(v70 + 32) = v111;
      *(v70 + 40) = v69;
      v104 = v69;
      sub_29D935E88();
      v106 = sub_29D939D38();
      v72 = v71;

      (*(v109 + 104))(v27, *MEMORY[0x29EDC1758], v20);
      sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
      v73 = swift_allocObject();
      *(v73 + 16) = v103;
      *(v73 + 32) = v106;
      *(v73 + 40) = v72;
      v102 = v72;
      *&v103 = v73;
      sub_29D935E88();
      v74 = sub_29D934828();
      v100 = v75;
      v101 = v74;
      (*(v9 + 104))(v12, *MEMORY[0x29EDC1720], v8);
      sub_29D934698();
      (*(v9 + 8))(v12, v8);
LABEL_34:
      v40 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      v48 = v111;
      goto LABEL_16;
    }

    v67 = sub_29D93AD78();

    if (v67)
    {

      goto LABEL_31;
    }

    v76 = sub_29D939D68();
    v78 = v77;
    if (v76 == sub_29D939D68() && v78 == v79)
    {

LABEL_39:
      v111 = sub_29D934858();
      v82 = v81;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v105 = qword_2A1A2C038;
      v106 = sub_29D9334A8();
      sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
      v83 = swift_allocObject();
      v103 = xmmword_29D93DDB0;
      *(v83 + 16) = xmmword_29D93DDB0;
      *(v83 + 56) = MEMORY[0x29EDC99B0];
      *(v83 + 64) = sub_29D69AD24();
      *(v83 + 32) = v111;
      *(v83 + 40) = v82;
      v104 = v82;
      sub_29D935E88();
      v106 = sub_29D939D38();
      v85 = v84;

      (*(v109 + 104))(v27, *MEMORY[0x29EDC1758], v20);
      sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
      v86 = swift_allocObject();
      *(v86 + 16) = v103;
      *(v86 + 32) = v106;
      *(v86 + 40) = v85;
      v102 = v85;
      *&v103 = v86;
      sub_29D935E88();
      v87 = sub_29D934828();
      v100 = v88;
      v101 = v87;
      (*(v9 + 104))(v12, *MEMORY[0x29EDC1728], v8);
      sub_29D934698();
      (*(v9 + 8))(v12, v8);
      goto LABEL_34;
    }

    v80 = sub_29D93AD78();

    if (v80)
    {
      goto LABEL_39;
    }

    if ((sub_29D9347F8() & 1) == 0)
    {
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v89 = qword_2A1A2C038;
      goto LABEL_48;
    }

    if (qword_2A1A257A0 == -1)
    {
LABEL_44:
      v89 = qword_2A1A2C038;
LABEL_48:
      v105 = v89;
      v90 = sub_29D9334A8();
      v92 = v91;
      (*(v109 + 104))(v27, *MEMORY[0x29EDC1750], v20);
      sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_29D93DDB0;
      *(v93 + 32) = v90;
      *(v93 + 40) = v92;
      *&v103 = v93;
      sub_29D935E88();
      v94 = sub_29D934808();
      v100 = v95;
      v101 = v94;
      v106 = MEMORY[0x29ED64C30](v90, v92);
      v102 = v96;

      v48 = sub_29D934808();
      v104 = v97;
      v98 = [objc_opt_self() bradycardiaLearnMoreLink];
      sub_29D939D68();

      sub_29D9336E8();

      v40 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      goto LABEL_16;
    }

LABEL_52:
    swift_once();
    goto LABEL_44;
  }

LABEL_14:
  v40 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  if (qword_2A1A257A0 != -1)
  {
LABEL_49:
    swift_once();
  }

LABEL_15:
  v105 = qword_2A1A2C038;
  v41 = sub_29D9334A8();
  v43 = v42;
  (*(v109 + 104))(v27, *MEMORY[0x29EDC1750], v20);
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_29D93DDB0;
  *(v44 + 32) = v41;
  *(v44 + 40) = v43;
  *&v103 = v44;
  sub_29D935E88();
  v45 = sub_29D934808();
  v100 = v46;
  v101 = v45;
  v106 = MEMORY[0x29ED64C30](v41, v43);
  v102 = v47;

  v48 = sub_29D934808();
  v104 = v49;
  v50 = [objc_opt_self() bradycardiaLearnMoreLink];
  sub_29D939D68();

  sub_29D9336E8();

LABEL_16:
  v111 = v48;
  v51 = v110;
  if (v40[244] != -1)
  {
    swift_once();
  }

  v52 = v105;
  sub_29D9334A8();
  v53 = v109;
  (*(v109 + 16))(v24, v27, v20);
  v54 = v52;
  v55 = v107;
  sub_29D934788();
  v56 = sub_29D934798();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  sub_29D6D962C(v19, v108);
  sub_29D934978();
  sub_29D6D96C0(v19);
  (*(v53 + 8))(v27, v20);
  v57 = sub_29D9349A8();
  (*(*(v57 - 8) + 56))(v51, 0, 1, v57);
}

uint64_t sub_29D6D9304@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1858];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D6D9378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D6D97B0();

  return MEMORY[0x2A1C60FD8](a1, a2, a3, v6);
}

uint64_t sub_29D6D93CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D6D97B0();

  return MEMORY[0x2A1C60FC0](a1, a2, v4);
}

unint64_t sub_29D6D9428()
{
  result = qword_2A1A244B0;
  if (!qword_2A1A244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A244B0);
  }

  return result;
}

uint64_t sub_29D6D947C()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D941B10;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA498]);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA908]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D6D9570(uint64_t a1)
{
  v2 = sub_29D6D9428();

  return MEMORY[0x2A1C61000](a1, v2);
}

uint64_t sub_29D6D95BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D6D9428();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, v6);
}

uint64_t sub_29D6D962C(uint64_t a1, uint64_t a2)
{
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6D96C0(uint64_t a1)
{
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6D974C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D6D97B0()
{
  result = qword_2A1A244B8;
  if (!qword_2A1A244B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A244B8);
  }

  return result;
}

uint64_t sub_29D6D9804@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v33 = &v27 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v32 = &v27 - v7;
  v28 = sub_29D9346E8();
  v8 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v29 = sub_29D9334A8();
  v16 = v15;

  v17 = [v13 bundleForClass_];
  v18 = sub_29D9334A8();
  v30 = v19;
  v31 = v18;

  (*(v8 + 104))(v11, *MEMORY[0x29EDC1750], v28);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A2C038;
  v21 = v32;
  sub_29D934788();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  sub_29D6CBFE8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93DDB0;
  v24 = v29;
  *(v23 + 32) = v29;
  *(v23 + 40) = v16;
  sub_29D935E88();
  sub_29D934808();
  MEMORY[0x29ED64C30](v24, v16);

  sub_29D934808();
  v25 = sub_29D9336F8();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  return sub_29D934978();
}

uint64_t sub_29D6D9C74@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v33 = &v27 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v32 = &v27 - v7;
  v28 = sub_29D9346E8();
  v8 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v29 = sub_29D9334A8();
  v16 = v15;

  v17 = [v13 bundleForClass_];
  v18 = sub_29D9334A8();
  v30 = v19;
  v31 = v18;

  (*(v8 + 104))(v11, *MEMORY[0x29EDC1750], v28);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A2C038;
  v21 = v32;
  sub_29D934788();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  sub_29D6CBFE8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93DDB0;
  v24 = v29;
  *(v23 + 32) = v29;
  *(v23 + 40) = v16;
  sub_29D935E88();
  sub_29D934808();
  MEMORY[0x29ED64C30](v24, v16);

  sub_29D934808();
  v25 = sub_29D9336F8();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  return sub_29D934978();
}

uint64_t sub_29D6DA0E4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v33 = &v27 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v32 = &v27 - v7;
  v28 = sub_29D9346E8();
  v8 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v29 = sub_29D9334A8();
  v16 = v15;

  v17 = [v13 bundleForClass_];
  v18 = sub_29D9334A8();
  v30 = v19;
  v31 = v18;

  (*(v8 + 104))(v11, *MEMORY[0x29EDC1750], v28);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A2C038;
  v21 = v32;
  sub_29D934788();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  sub_29D6CBFE8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93DDB0;
  v24 = v29;
  *(v23 + 32) = v29;
  *(v23 + 40) = v16;
  sub_29D935E88();
  sub_29D934808();
  MEMORY[0x29ED64C30](v24, v16);

  sub_29D934808();
  v25 = sub_29D9336F8();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  return sub_29D934978();
}

uint64_t sub_29D6DA554@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v35 = &v29 - v6;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v3);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v34 = &v29 - v9;
  v30 = sub_29D9346E8();
  v10 = *(v30 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v30, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v12);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v31 = sub_29D9334A8();
  v18 = v17;

  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_29D9334A8();
  v32 = v21;
  v33 = v20;

  (*(v10 + 104))(v14, *MEMORY[0x29EDC1750], v30);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v22 = qword_2A1A2C038;
  v23 = v34;
  sub_29D934788();
  v24 = sub_29D934798();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  sub_29D6CBFE8();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29D93DDB0;
  v26 = v31;
  *(v25 + 32) = v31;
  *(v25 + 40) = v18;
  sub_29D935E88();
  sub_29D934808();
  MEMORY[0x29ED64C30](v26, v18);

  sub_29D934808();
  v27 = sub_29D9336F8();
  (*(*(v27 - 8) + 56))(v35, 1, 1, v27);
  return sub_29D934978();
}

uint64_t sub_29D6DA9F4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v42 = &v34 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v41 = &v34 - v7;
  v37 = sub_29D9346E8();
  v40 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v14 = sub_29D9334A8();
  v16 = v15;

  v17 = [v12 &selRef:ObjCClassFromMetadata initWithIconImage:? titleText:? detailText:? tintColor:? + 3];
  sub_29D9334A8();

  sub_29D6E2800(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  v34 = xmmword_29D93DDB0;
  *(v18 + 16) = xmmword_29D93DDB0;
  *(v18 + 56) = MEMORY[0x29EDC99B0];
  *(v18 + 64) = sub_29D69AD24();
  v38 = v16;
  v39 = v14;
  *(v18 + 32) = v14;
  *(v18 + 40) = v16;
  sub_29D935E88();
  v19 = sub_29D939D38();
  v21 = v20;

  v22 = [v12 bundleForClass_];
  v23 = sub_29D9334A8();
  v35 = v24;
  v36 = v23;

  v25 = *MEMORY[0x29EDC1758];
  v26 = *(v40 + 13);
  v40 = v10;
  v26(v10, v25, v37);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v27 = qword_2A1A2C038;
  v28 = v41;
  sub_29D934788();
  v29 = sub_29D934798();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  sub_29D6CBFE8();
  v30 = swift_allocObject();
  *(v30 + 16) = v34;
  *(v30 + 32) = v19;
  *(v30 + 40) = v21;
  sub_29D935E88();
  v31 = [v12 bundleForClass_];
  sub_29D9334A8();

  v32 = sub_29D9336F8();
  (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
  return sub_29D934978();
}

uint64_t sub_29D6DAFD4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v36 = &v29 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v34 = &v29 - v7;
  v32 = sub_29D9346E8();
  v8 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v9);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D934848();
  v13 = v12;
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  sub_29D9334A8();

  sub_29D6E2800(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v17 = swift_allocObject();
  v31 = xmmword_29D93DDB0;
  *(v17 + 16) = xmmword_29D93DDB0;
  *(v17 + 56) = MEMORY[0x29EDC99B0];
  *(v17 + 64) = sub_29D69AD24();
  v35 = v11;
  *(v17 + 32) = v11;
  *(v17 + 40) = v13;
  v33 = v13;
  sub_29D935E88();
  v18 = sub_29D939D38();
  v20 = v19;

  v21 = [v15 bundleForClass_];
  v22 = v30;
  sub_29D9334A8();

  (*(v8 + 104))(v22, *MEMORY[0x29EDC1758], v32);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2C038;
  v24 = v34;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  sub_29D6CBFE8();
  v26 = swift_allocObject();
  *(v26 + 16) = v31;
  *(v26 + 32) = v18;
  *(v26 + 40) = v20;
  sub_29D935E88();
  sub_29D934828();
  v27 = sub_29D9336F8();
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  return sub_29D934978();
}

uint64_t sub_29D6DB4F4@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v37 = v36 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v36 - v7;
  v9 = sub_29D9346E8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_29D9334A8();
  v36[4] = v18;
  v36[5] = v17;

  v19 = *MEMORY[0x29EDC1768];
  v20 = *(v10 + 104);
  v36[3] = v13;
  v20(v13, v19, v9);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A2C038;
  sub_29D934788();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  v23 = sub_29D9347D8();
  v36[1] = v24;
  v36[2] = v23;
  sub_29D6CBFE8();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29D93F680;
  v26 = [v15 bundleForClass_];
  v36[0] = v8;
  v27 = sub_29D9334A8();
  v29 = v28;

  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  v30 = [v15 bundleForClass_];
  v31 = sub_29D9334A8();
  v33 = v32;

  *(v25 + 48) = v31;
  *(v25 + 56) = v33;
  sub_29D934818();
  v34 = sub_29D934358();
  (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
  return sub_29D934988();
}

uint64_t sub_29D6DB9B0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v37 = v36 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v36 - v7;
  v9 = sub_29D9346E8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_29D9334A8();
  v36[4] = v18;
  v36[5] = v17;

  v19 = *MEMORY[0x29EDC1768];
  v20 = *(v10 + 104);
  v36[3] = v13;
  v20(v13, v19, v9);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A2C038;
  sub_29D934788();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  v23 = sub_29D9347E8();
  v36[1] = v24;
  v36[2] = v23;
  sub_29D6CBFE8();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29D93F680;
  v26 = [v15 bundleForClass_];
  v36[0] = v8;
  v27 = sub_29D9334A8();
  v29 = v28;

  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  v30 = [v15 bundleForClass_];
  v31 = sub_29D9334A8();
  v33 = v32;

  *(v25 + 48) = v31;
  *(v25 + 56) = v33;
  sub_29D934818();
  v34 = sub_29D934358();
  (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
  return sub_29D934988();
}

uint64_t sub_29D6DBE6C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v35 = v34 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v34 - v7;
  v9 = sub_29D9346E8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_29D9334A8();
  v34[2] = v18;
  v34[3] = v17;

  v19 = *MEMORY[0x29EDC1760];
  v20 = *(v10 + 104);
  v34[1] = v13;
  v20(v13, v19, v9);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A2C038;
  sub_29D934788();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  sub_29D6CBFE8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93F680;
  v24 = [v15 bundleForClass_];
  v34[0] = v8;
  v25 = sub_29D9334A8();
  v27 = v26;

  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  v28 = [v15 bundleForClass_];
  v29 = sub_29D9334A8();
  v31 = v30;

  *(v23 + 48) = v29;
  *(v23 + 56) = v31;
  sub_29D934818();
  v32 = sub_29D934358();
  (*(*(v32 - 8) + 56))(v35, 1, 1, v32);
  return sub_29D934988();
}

uint64_t sub_29D6DC320@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v32 = v31 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v31 - v7;
  v9 = sub_29D9346E8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v31[2] = "DVERTISEMENT_TITLE";
  v17 = sub_29D9334A8();
  v31[3] = v18;
  v31[4] = v17;

  v19 = *MEMORY[0x29EDC1768];
  v20 = *(v10 + 104);
  v31[5] = v13;
  v20(v13, v19, v9);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A2C038;
  sub_29D934788();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  v31[1] = v8;
  if (qword_2A17B0D80 != -1)
  {
    swift_once();
  }

  v31[0] = sub_29D9334A8();
  sub_29D6CBFE8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93F680;
  v24 = [v15 bundleForClass_];
  v25 = sub_29D9334A8();
  v27 = v26;

  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  *(v23 + 48) = sub_29D9334A8();
  *(v23 + 56) = v28;
  v29 = sub_29D934358();
  (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
  return sub_29D934988();
}

uint64_t sub_29D6DC814@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v32 = v31 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v31 - v7;
  v9 = sub_29D9346E8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v31[2] = "DVERTISEMENT_TITLE";
  v17 = sub_29D9334A8();
  v31[3] = v18;
  v31[4] = v17;

  v19 = *MEMORY[0x29EDC1768];
  v20 = *(v10 + 104);
  v31[5] = v13;
  v20(v13, v19, v9);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A2C038;
  sub_29D934788();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  v31[1] = v8;
  if (qword_2A17B0D80 != -1)
  {
    swift_once();
  }

  v31[0] = sub_29D9334A8();
  sub_29D6CBFE8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93F680;
  v24 = [v15 bundleForClass_];
  v25 = sub_29D9334A8();
  v27 = v26;

  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  *(v23 + 48) = sub_29D9334A8();
  *(v23 + 56) = v28;
  v29 = sub_29D934358();
  (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
  return sub_29D934988();
}

uint64_t sub_29D6DCD08@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v32 = v31 - v4;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v31 - v7;
  v9 = sub_29D9346E8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v31[2] = "DVERTISEMENT_TITLE";
  v17 = sub_29D9334A8();
  v31[3] = v18;
  v31[4] = v17;

  v19 = *MEMORY[0x29EDC1760];
  v20 = *(v10 + 104);
  v31[5] = v13;
  v20(v13, v19, v9);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A2C038;
  sub_29D934788();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  v31[1] = v8;
  if (qword_2A17B0D80 != -1)
  {
    swift_once();
  }

  v31[0] = sub_29D9334A8();
  sub_29D6CBFE8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93F680;
  v24 = [v15 bundleForClass_];
  v25 = sub_29D9334A8();
  v27 = v26;

  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  *(v23 + 48) = sub_29D9334A8();
  *(v23 + 56) = v28;
  v29 = sub_29D934358();
  (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
  return sub_29D934988();
}

void sub_29D6DD1FC(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  if (a2())
  {
    v7 = [a1 highestPriorityUnsatisfiedRequirement];
    if (!v7)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v31 = sub_29D937898();
      sub_29D69C6C0(v31, qword_2A1A2C008);
      v32 = sub_29D937878();
      v33 = sub_29D93A2A8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v144 = v35;
        *v34 = 136446210;
        *(v34 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
        _os_log_impl(&dword_29D677000, v32, v33, "[%{public}s:FeatureStatusConfiguration] Onboarded, available, and enabled", v34, 0xCu);
        sub_29D69417C(v35);
        MEMORY[0x29ED6BE30](v35, -1, -1);
        MEMORY[0x29ED6BE30](v34, -1, -1);
      }

      v36 = sub_29D9371B8();
      v37 = [v36 areAllRequirementsSatisfied];

      if (v37)
      {
        sub_29D6DBE6C(a4);
      }

      else
      {
        sub_29D6DCD08(a4);
      }

      v38 = 0;
      goto LABEL_36;
    }

    v8 = v7;
    v9 = sub_29D939D68();
    v11 = v10;
    if (v9 == sub_29D939D68() && v11 == v12)
    {
    }

    else
    {
      v14 = sub_29D93AD78();

      if ((v14 & 1) == 0)
      {
        v15 = sub_29D939D68();
        v17 = v16;
        if (v15 == sub_29D939D68() && v17 == v18)
        {
        }

        else
        {
          v20 = sub_29D93AD78();

          if ((v20 & 1) == 0)
          {
            v21 = sub_29D939D68();
            v23 = v22;
            if (v21 == sub_29D939D68() && v23 == v24)
            {

LABEL_46:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v48 = sub_29D937898();
              sub_29D69C6C0(v48, qword_2A1A2C008);
              v49 = sub_29D937878();
              v50 = sub_29D93A2A8();
              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                v144 = v52;
                *v51 = 136446210;
                *(v51 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
                _os_log_impl(&dword_29D677000, v49, v50, "[%{public}s:FeatureStatusConfiguration] Heart rate app not installed, treating as unavailable", v51, 0xCu);
                sub_29D69417C(v52);
                MEMORY[0x29ED6BE30](v52, -1, -1);
                MEMORY[0x29ED6BE30](v51, -1, -1);
              }

              sub_29D6D9804(a4);
              goto LABEL_51;
            }

            v47 = sub_29D93AD78();

            if (v47)
            {
              goto LABEL_46;
            }

            v53 = sub_29D939D68();
            v55 = v54;
            if (v53 == sub_29D939D68() && v55 == v56)
            {

LABEL_56:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v58 = sub_29D937898();
              sub_29D69C6C0(v58, qword_2A1A2C008);
              v59 = sub_29D937878();
              v60 = sub_29D93A2A8();
              if (os_log_type_enabled(v59, v60))
              {
                v61 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                v144 = v62;
                *v61 = 136446210;
                *(v61 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
                _os_log_impl(&dword_29D677000, v59, v60, "[%{public}s:FeatureStatusConfiguration] Age gated, treating as unavailable", v61, 0xCu);
                sub_29D69417C(v62);
                MEMORY[0x29ED6BE30](v62, -1, -1);
                MEMORY[0x29ED6BE30](v61, -1, -1);
              }

              sub_29D6D9C74(a4);
              goto LABEL_51;
            }

            v57 = sub_29D93AD78();

            if (v57)
            {
              goto LABEL_56;
            }

            v63 = sub_29D939D68();
            v65 = v64;
            if (v63 == sub_29D939D68() && v65 == v66)
            {

LABEL_65:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v68 = sub_29D937898();
              sub_29D69C6C0(v68, qword_2A1A2C008);
              v69 = sub_29D937878();
              v70 = sub_29D93A2A8();
              if (!os_log_type_enabled(v69, v70))
              {
                goto LABEL_70;
              }

              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v144 = v72;
              *v71 = 136446210;
              *(v71 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
              v73 = "[%{public}s:FeatureStatusConfiguration] Country not supported on local device, treating as unavailable";
LABEL_69:
              _os_log_impl(&dword_29D677000, v69, v70, v73, v71, 0xCu);
              sub_29D69417C(v72);
              MEMORY[0x29ED6BE30](v72, -1, -1);
              MEMORY[0x29ED6BE30](v71, -1, -1);
LABEL_70:

              sub_29D6DA0E4(a4);
LABEL_51:

              v38 = 0;
              goto LABEL_36;
            }

            v67 = sub_29D93AD78();

            if (v67)
            {
              goto LABEL_65;
            }

            v74 = sub_29D939D68();
            v76 = v75;
            if (v74 == sub_29D939D68() && v76 == v77)
            {

LABEL_75:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v79 = sub_29D937898();
              sub_29D69C6C0(v79, qword_2A1A2C008);
              v69 = sub_29D937878();
              v70 = sub_29D93A2A8();
              if (!os_log_type_enabled(v69, v70))
              {
                goto LABEL_70;
              }

              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v144 = v72;
              *v71 = 136446210;
              *(v71 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
              v73 = "[%{public}s:FeatureStatusConfiguration] Country not supported on active remote device, treating as unavailable";
              goto LABEL_69;
            }

            v78 = sub_29D93AD78();

            if (v78)
            {
              goto LABEL_75;
            }

            v80 = sub_29D939D68();
            v82 = v81;
            if (v80 == sub_29D939D68() && v82 == v83)
            {

LABEL_83:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v85 = sub_29D937898();
              sub_29D69C6C0(v85, qword_2A1A2C008);
              v86 = sub_29D937878();
              v87 = sub_29D93A2A8();
              if (os_log_type_enabled(v86, v87))
              {
                v88 = swift_slowAlloc();
                v89 = swift_slowAlloc();
                v144 = v89;
                *v88 = 136446210;
                *(v88 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
                _os_log_impl(&dword_29D677000, v86, v87, "[%{public}s:FeatureStatusConfiguration] Capability not supported on active watch, treating as unavailable", v88, 0xCu);
                sub_29D69417C(v89);
                MEMORY[0x29ED6BE30](v89, -1, -1);
                MEMORY[0x29ED6BE30](v88, -1, -1);
              }

              sub_29D6DA554(a3, a4);
              goto LABEL_51;
            }

            v84 = sub_29D93AD78();

            if (v84)
            {
              goto LABEL_83;
            }

            v90 = sub_29D939D68();
            v92 = v91;
            if (v90 == sub_29D939D68() && v92 == v93)
            {

LABEL_92:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v95 = sub_29D937898();
              sub_29D69C6C0(v95, qword_2A1A2C008);
              v96 = sub_29D937878();
              v97 = sub_29D93A2A8();
              if (os_log_type_enabled(v96, v97))
              {
                v98 = swift_slowAlloc();
                v99 = swift_slowAlloc();
                v144 = v99;
                *v98 = 136446210;
                *(v98 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
                _os_log_impl(&dword_29D677000, v96, v97, "[%{public}s:FeatureStatusConfiguration] Age is not present, treating as unavailable", v98, 0xCu);
                sub_29D69417C(v99);
                MEMORY[0x29ED6BE30](v99, -1, -1);
                MEMORY[0x29ED6BE30](v98, -1, -1);
              }

              sub_29D6DA9F4(a4);
              goto LABEL_51;
            }

            v94 = sub_29D93AD78();

            if (v94)
            {
              goto LABEL_92;
            }

            v100 = sub_29D939D68();
            v102 = v101;
            if (v100 == sub_29D939D68() && v102 == v103)
            {

LABEL_101:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v105 = sub_29D937898();
              sub_29D69C6C0(v105, qword_2A1A2C008);
              v106 = sub_29D937878();
              v107 = sub_29D93A2A8();
              if (os_log_type_enabled(v106, v107))
              {
                v108 = swift_slowAlloc();
                v109 = swift_slowAlloc();
                v144 = v109;
                *v108 = 136446210;
                *(v108 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
                _os_log_impl(&dword_29D677000, v106, v107, "[%{public}s:FeatureStatusConfiguration] Heart rate is not enabled, treating as unavailable", v108, 0xCu);
                sub_29D69417C(v109);
                MEMORY[0x29ED6BE30](v109, -1, -1);
                MEMORY[0x29ED6BE30](v108, -1, -1);
              }

              sub_29D6DAFD4(a4);
              goto LABEL_51;
            }

            v104 = sub_29D93AD78();

            if (v104)
            {
              goto LABEL_101;
            }

            v110 = sub_29D939D68();
            v112 = v111;
            if (v110 == sub_29D939D68() && v112 == v113)
            {

LABEL_110:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v115 = sub_29D937898();
              sub_29D69C6C0(v115, qword_2A1A2C008);
              v116 = sub_29D937878();
              v117 = sub_29D93A2A8();
              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v119 = swift_slowAlloc();
                v144 = v119;
                *v118 = 136446210;
                *(v118 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
                _os_log_impl(&dword_29D677000, v116, v117, "[%{public}s:FeatureStatusConfiguration] Notification details not entered, treating as not onboarded", v118, 0xCu);
                sub_29D69417C(v119);
                MEMORY[0x29ED6BE30](v119, -1, -1);
                MEMORY[0x29ED6BE30](v118, -1, -1);
              }

              v120 = sub_29D9371B8();
              v121 = [v120 areAllRequirementsSatisfied];

              if (v121)
              {
                sub_29D6DB4F4(a4);
              }

              else
              {
                sub_29D6DC814(a4);
              }

              goto LABEL_51;
            }

            v114 = sub_29D93AD78();

            if (v114)
            {
              goto LABEL_110;
            }

            v122 = sub_29D939D68();
            v124 = v123;
            if (v122 == sub_29D939D68() && v124 == v125)
            {

LABEL_121:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v127 = sub_29D937898();
              sub_29D69C6C0(v127, qword_2A1A2C008);
              v128 = sub_29D937878();
              v129 = sub_29D93A2A8();
              if (os_log_type_enabled(v128, v129))
              {
                v130 = swift_slowAlloc();
                v131 = swift_slowAlloc();
                v144 = v131;
                *v130 = 136446210;
                *(v130 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
                _os_log_impl(&dword_29D677000, v128, v129, "[%{public}s:FeatureStatusConfiguration] Onboarded and available but feature disabled", v130, 0xCu);
                sub_29D69417C(v131);
                MEMORY[0x29ED6BE30](v131, -1, -1);
                MEMORY[0x29ED6BE30](v130, -1, -1);
              }

              v132 = sub_29D9371B8();
              v133 = [v132 areAllRequirementsSatisfied];

              if (v133)
              {
                sub_29D6DB9B0(a4);
              }

              else
              {
                sub_29D6DC320(a4);
              }

              goto LABEL_51;
            }

            v126 = sub_29D93AD78();

            if (v126)
            {
              goto LABEL_121;
            }

            if (qword_2A1A25718 != -1)
            {
              swift_once();
            }

            v134 = sub_29D937898();
            sub_29D69C6C0(v134, qword_2A1A2C008);
            v135 = a1;
            v26 = sub_29D937878();
            v136 = sub_29D93A298();
            if (!os_log_type_enabled(v26, v136))
            {

              goto LABEL_35;
            }

            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v144 = v138;
            *v137 = 136446466;
            *(v137 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
            *(v137 + 12) = 2082;
            v139 = [v135 highestPriorityUnsatisfiedRequirement];

            if (!v139)
            {
              __break(1u);
              return;
            }

            v140 = sub_29D939D68();
            v142 = v141;

            v143 = sub_29D6C2364(v140, v142, &v144);

            *(v137 + 14) = v143;
            _os_log_impl(&dword_29D677000, v26, v136, "[%{public}s:FeatureStatusConfiguration] Unhandled, unsatisfied requirement encountered: %{public}s", v137, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED6BE30](v138, -1, -1);
            v30 = v137;
            goto LABEL_20;
          }
        }

        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v46 = sub_29D937898();
        sub_29D69C6C0(v46, qword_2A1A2C008);
        v26 = sub_29D937878();
        v40 = sub_29D93A2A8();
        if (!os_log_type_enabled(v26, v40))
        {
LABEL_34:

          goto LABEL_35;
        }

        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v144 = v42;
        *v41 = 136446210;
        *(v41 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
        v43 = "[%{public}s:FeatureStatusConfiguration] Not background delivered, meaning we do not have a supported device yet";
LABEL_33:
        _os_log_impl(&dword_29D677000, v26, v40, v43, v41, 0xCu);
        sub_29D69417C(v42);
        MEMORY[0x29ED6BE30](v42, -1, -1);
        MEMORY[0x29ED6BE30](v41, -1, -1);
        goto LABEL_34;
      }
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v39 = sub_29D937898();
    sub_29D69C6C0(v39, qword_2A1A2C008);
    v26 = sub_29D937878();
    v40 = sub_29D93A2A8();
    if (!os_log_type_enabled(v26, v40))
    {
      goto LABEL_34;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v144 = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
    v43 = "[%{public}s:FeatureStatusConfiguration] Health app hidden, hiding";
    goto LABEL_33;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v25 = sub_29D937898();
  sub_29D69C6C0(v25, qword_2A1A2C008);
  v26 = sub_29D937878();
  v27 = sub_29D93A2A8();
  if (!os_log_type_enabled(v26, v27))
  {
    goto LABEL_35;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v144 = v29;
  *v28 = 136446210;
  *(v28 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v144);
  _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s:FeatureStatusConfiguration] Cardio fitness not visible, hiding", v28, 0xCu);
  sub_29D69417C(v29);
  MEMORY[0x29ED6BE30](v29, -1, -1);
  v30 = v28;
LABEL_20:
  MEMORY[0x29ED6BE30](v30, -1, -1);
LABEL_35:

  v38 = 1;
LABEL_36:
  v44 = sub_29D9349A8();
  v45 = *(*(v44 - 8) + 56);

  v45(a4, v38, 1, v44);
}

void sub_29D6DE7C4(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  if (a2())
  {
    v7 = [a1 highestPriorityUnsatisfiedRequirement];
    if (!v7)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v31 = sub_29D937898();
      sub_29D69C6C0(v31, qword_2A1A2C008);
      v32 = sub_29D937878();
      v33 = sub_29D93A2A8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v110 = v35;
        *v34 = 136446210;
        *(v34 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
        _os_log_impl(&dword_29D677000, v32, v33, "[%{public}s:FeatureStatusConfiguration] Background delivered and available but onboarding not acknowledged, showing onboarding promotion", v34, 0xCu);
        sub_29D69417C(v35);
        MEMORY[0x29ED6BE30](v35, -1, -1);
        MEMORY[0x29ED6BE30](v34, -1, -1);
      }

      v36 = sub_29D9371B8();
      v37 = [v36 areAllRequirementsSatisfied];

      if (v37)
      {
        sub_29D6DB4F4(a4);
      }

      else
      {
        sub_29D6DC814(a4);
      }

      v38 = 0;
      goto LABEL_36;
    }

    v8 = v7;
    v9 = sub_29D939D68();
    v11 = v10;
    if (v9 == sub_29D939D68() && v11 == v12)
    {
    }

    else
    {
      v14 = sub_29D93AD78();

      if ((v14 & 1) == 0)
      {
        v15 = sub_29D939D68();
        v17 = v16;
        if (v15 == sub_29D939D68() && v17 == v18)
        {
        }

        else
        {
          v20 = sub_29D93AD78();

          if ((v20 & 1) == 0)
          {
            v21 = sub_29D939D68();
            v23 = v22;
            if (v21 == sub_29D939D68() && v23 == v24)
            {

LABEL_46:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v48 = sub_29D937898();
              sub_29D69C6C0(v48, qword_2A1A2C008);
              v49 = sub_29D937878();
              v50 = sub_29D93A2A8();
              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                v110 = v52;
                *v51 = 136446210;
                *(v51 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
                _os_log_impl(&dword_29D677000, v49, v50, "[%{public}s:FeatureStatusConfiguration] Heart rate app not installed, treating as unavailable", v51, 0xCu);
                sub_29D69417C(v52);
                MEMORY[0x29ED6BE30](v52, -1, -1);
                MEMORY[0x29ED6BE30](v51, -1, -1);
              }

              sub_29D6D9804(a4);
              goto LABEL_51;
            }

            v47 = sub_29D93AD78();

            if (v47)
            {
              goto LABEL_46;
            }

            v53 = sub_29D939D68();
            v55 = v54;
            if (v53 == sub_29D939D68() && v55 == v56)
            {

LABEL_56:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v58 = sub_29D937898();
              sub_29D69C6C0(v58, qword_2A1A2C008);
              v59 = sub_29D937878();
              v60 = sub_29D93A2A8();
              if (os_log_type_enabled(v59, v60))
              {
                v61 = swift_slowAlloc();
                v62 = swift_slowAlloc();
                v110 = v62;
                *v61 = 136446210;
                *(v61 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
                _os_log_impl(&dword_29D677000, v59, v60, "[%{public}s:FeatureStatusConfiguration] Age gated, treating as unavailable", v61, 0xCu);
                sub_29D69417C(v62);
                MEMORY[0x29ED6BE30](v62, -1, -1);
                MEMORY[0x29ED6BE30](v61, -1, -1);
              }

              sub_29D6D9C74(a4);
              goto LABEL_51;
            }

            v57 = sub_29D93AD78();

            if (v57)
            {
              goto LABEL_56;
            }

            v63 = sub_29D939D68();
            v65 = v64;
            if (v63 == sub_29D939D68() && v65 == v66)
            {

LABEL_65:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v68 = sub_29D937898();
              sub_29D69C6C0(v68, qword_2A1A2C008);
              v69 = sub_29D937878();
              v70 = sub_29D93A2A8();
              if (!os_log_type_enabled(v69, v70))
              {
                goto LABEL_70;
              }

              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v110 = v72;
              *v71 = 136446210;
              *(v71 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
              v73 = "[%{public}s:FeatureStatusConfiguration] Country not supported on local device, treating as unavailable";
LABEL_69:
              _os_log_impl(&dword_29D677000, v69, v70, v73, v71, 0xCu);
              sub_29D69417C(v72);
              MEMORY[0x29ED6BE30](v72, -1, -1);
              MEMORY[0x29ED6BE30](v71, -1, -1);
LABEL_70:

              sub_29D6DA0E4(a4);
LABEL_51:

              v38 = 0;
              goto LABEL_36;
            }

            v67 = sub_29D93AD78();

            if (v67)
            {
              goto LABEL_65;
            }

            v74 = sub_29D939D68();
            v76 = v75;
            if (v74 == sub_29D939D68() && v76 == v77)
            {

LABEL_75:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v79 = sub_29D937898();
              sub_29D69C6C0(v79, qword_2A1A2C008);
              v69 = sub_29D937878();
              v70 = sub_29D93A2A8();
              if (!os_log_type_enabled(v69, v70))
              {
                goto LABEL_70;
              }

              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v110 = v72;
              *v71 = 136446210;
              *(v71 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
              v73 = "[%{public}s:FeatureStatusConfiguration] Country not supported on active remote device, treating as unavailable";
              goto LABEL_69;
            }

            v78 = sub_29D93AD78();

            if (v78)
            {
              goto LABEL_75;
            }

            v80 = sub_29D939D68();
            v82 = v81;
            if (v80 == sub_29D939D68() && v82 == v83)
            {

LABEL_83:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v85 = sub_29D937898();
              sub_29D69C6C0(v85, qword_2A1A2C008);
              v86 = sub_29D937878();
              v87 = sub_29D93A2A8();
              if (os_log_type_enabled(v86, v87))
              {
                v88 = swift_slowAlloc();
                v89 = swift_slowAlloc();
                v110 = v89;
                *v88 = 136446210;
                *(v88 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
                _os_log_impl(&dword_29D677000, v86, v87, "[%{public}s:FeatureStatusConfiguration] Capability not supported on active watch, treating as unavailable", v88, 0xCu);
                sub_29D69417C(v89);
                MEMORY[0x29ED6BE30](v89, -1, -1);
                MEMORY[0x29ED6BE30](v88, -1, -1);
              }

              sub_29D6DA554(a3, a4);
              goto LABEL_51;
            }

            v84 = sub_29D93AD78();

            if (v84)
            {
              goto LABEL_83;
            }

            v90 = sub_29D939D68();
            v92 = v91;
            if (v90 == sub_29D939D68() && v92 == v93)
            {

LABEL_92:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v95 = sub_29D937898();
              sub_29D69C6C0(v95, qword_2A1A2C008);
              v96 = sub_29D937878();
              v97 = sub_29D93A2A8();
              if (os_log_type_enabled(v96, v97))
              {
                v98 = swift_slowAlloc();
                v99 = swift_slowAlloc();
                v110 = v99;
                *v98 = 136446210;
                *(v98 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
                _os_log_impl(&dword_29D677000, v96, v97, "[%{public}s:FeatureStatusConfiguration] Heart rate is not enabled, treating as unavailable", v98, 0xCu);
                sub_29D69417C(v99);
                MEMORY[0x29ED6BE30](v99, -1, -1);
                MEMORY[0x29ED6BE30](v98, -1, -1);
              }

              sub_29D6DAFD4(a4);
              goto LABEL_51;
            }

            v94 = sub_29D93AD78();

            if (v94)
            {
              goto LABEL_92;
            }

            if (qword_2A1A25718 != -1)
            {
              swift_once();
            }

            v100 = sub_29D937898();
            sub_29D69C6C0(v100, qword_2A1A2C008);
            v101 = a1;
            v26 = sub_29D937878();
            v102 = sub_29D93A298();
            if (!os_log_type_enabled(v26, v102))
            {

              goto LABEL_35;
            }

            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v110 = v104;
            *v103 = 136446466;
            *(v103 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
            *(v103 + 12) = 2082;
            v105 = [v101 highestPriorityUnsatisfiedRequirement];

            if (!v105)
            {
              __break(1u);
              return;
            }

            v106 = sub_29D939D68();
            v108 = v107;

            v109 = sub_29D6C2364(v106, v108, &v110);

            *(v103 + 14) = v109;
            _os_log_impl(&dword_29D677000, v26, v102, "[%{public}s:FeatureStatusConfiguration] Unhandled, unsatisfied requirement encountered: %{public}s", v103, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED6BE30](v104, -1, -1);
            v30 = v103;
            goto LABEL_20;
          }
        }

        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v46 = sub_29D937898();
        sub_29D69C6C0(v46, qword_2A1A2C008);
        v26 = sub_29D937878();
        v40 = sub_29D93A2A8();
        if (!os_log_type_enabled(v26, v40))
        {
LABEL_34:

          goto LABEL_35;
        }

        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v110 = v42;
        *v41 = 136446210;
        *(v41 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
        v43 = "[%{public}s:FeatureStatusConfiguration] Not background delivered, meaning we do not have a supported device yet";
LABEL_33:
        _os_log_impl(&dword_29D677000, v26, v40, v43, v41, 0xCu);
        sub_29D69417C(v42);
        MEMORY[0x29ED6BE30](v42, -1, -1);
        MEMORY[0x29ED6BE30](v41, -1, -1);
        goto LABEL_34;
      }
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v39 = sub_29D937898();
    sub_29D69C6C0(v39, qword_2A1A2C008);
    v26 = sub_29D937878();
    v40 = sub_29D93A2A8();
    if (!os_log_type_enabled(v26, v40))
    {
      goto LABEL_34;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v110 = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
    v43 = "[%{public}s:FeatureStatusConfiguration] Health app hidden, hiding";
    goto LABEL_33;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v25 = sub_29D937898();
  sub_29D69C6C0(v25, qword_2A1A2C008);
  v26 = sub_29D937878();
  v27 = sub_29D93A2A8();
  if (!os_log_type_enabled(v26, v27))
  {
    goto LABEL_35;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v110 = v29;
  *v28 = 136446210;
  *(v28 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v110);
  _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s:FeatureStatusConfiguration] Cardio fitness not visible, hiding", v28, 0xCu);
  sub_29D69417C(v29);
  MEMORY[0x29ED6BE30](v29, -1, -1);
  v30 = v28;
LABEL_20:
  MEMORY[0x29ED6BE30](v30, -1, -1);
LABEL_35:

  v38 = 1;
LABEL_36:
  v44 = sub_29D9349A8();
  v45 = *(*(v44 - 8) + 56);

  v45(a4, v38, 1, v44);
}

void sub_29D6DF86C(void *a1@<X0>, NSObject *a3@<X2>, char *a4@<X8>)
{
  if ((sub_29D9347C8() & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v25 = sub_29D937898();
    sub_29D69C6C0(v25, qword_2A1A2C008);
    v26 = sub_29D937878();
    v27 = sub_29D93A2A8();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_33;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v131 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
    _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s] Cardio fitness not visible, hiding", v28, 0xCu);
    sub_29D69417C(v29);
    MEMORY[0x29ED6BE30](v29, -1, -1);
    v30 = v28;
    goto LABEL_20;
  }

  v7 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v7)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v31 = sub_29D937898();
    sub_29D69C6C0(v31, qword_2A1A2C008);
    v32 = sub_29D937878();
    v33 = sub_29D93A2A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v131 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
      _os_log_impl(&dword_29D677000, v32, v33, "[%{public}s:ActionHandler] Onboarded, available, and enabled, push feature settings", v34, 0xCu);
      sub_29D69417C(v35);
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v34, -1, -1);
    }

    sub_29D6E0EB0(a3, a4);
LABEL_26:
    v36 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
LABEL_41:
    swift_storeEnumTagMultiPayload();
    (*(*(v36 - 8) + 56))(a4, 0, 1, v36);
    v41 = 0;
    goto LABEL_42;
  }

  v8 = v7;
  v9 = sub_29D939D68();
  v11 = v10;
  if (v9 == sub_29D939D68() && v11 == v12)
  {

    goto LABEL_28;
  }

  v14 = sub_29D93AD78();

  if (v14)
  {
LABEL_28:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v37 = sub_29D937898();
    sub_29D69C6C0(v37, qword_2A1A2C008);
    v26 = sub_29D937878();
    v38 = sub_29D93A2A8();
    if (os_log_type_enabled(v26, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v131 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
      _os_log_impl(&dword_29D677000, v26, v38, "[%{public}s:ActionHandler] Health app hidden, no action", v39, 0xCu);
      sub_29D69417C(v40);
      MEMORY[0x29ED6BE30](v40, -1, -1);
      MEMORY[0x29ED6BE30](v39, -1, -1);
    }

    goto LABEL_33;
  }

  v15 = sub_29D939D68();
  v17 = v16;
  if (v15 == sub_29D939D68() && v17 == v18)
  {

    goto LABEL_35;
  }

  v20 = sub_29D93AD78();

  if (v20)
  {
LABEL_35:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v42 = sub_29D937898();
    sub_29D69C6C0(v42, qword_2A1A2C008);
    v43 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_40;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v131 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
    v47 = "[%{public}s:ActionHandler] Heart rate app not installed, open knowledge base article";
LABEL_39:
    _os_log_impl(&dword_29D677000, v43, v44, v47, v45, 0xCu);
    sub_29D69417C(v46);
    MEMORY[0x29ED6BE30](v46, -1, -1);
    MEMORY[0x29ED6BE30](v45, -1, -1);
LABEL_40:

    v36 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
    goto LABEL_41;
  }

  v21 = sub_29D939D68();
  v23 = v22;
  if (v21 == sub_29D939D68() && v23 == v24)
  {

LABEL_46:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v51 = sub_29D937898();
    sub_29D69C6C0(v51, qword_2A1A2C008);
    v43 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_40;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v131 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
    v47 = "[%{public}s:ActionHandler] Age gated, open knowledge base article";
    goto LABEL_39;
  }

  v50 = sub_29D93AD78();

  if (v50)
  {
    goto LABEL_46;
  }

  v52 = sub_29D939D68();
  v54 = v53;
  if (v52 == sub_29D939D68() && v54 == v55)
  {

LABEL_54:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v57 = sub_29D937898();
    sub_29D69C6C0(v57, qword_2A1A2C008);
    v43 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_40;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v131 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
    v47 = "[%{public}s:ActionHandler] Country not supported on local device, open knowledge base article";
    goto LABEL_39;
  }

  v56 = sub_29D93AD78();

  if (v56)
  {
    goto LABEL_54;
  }

  v58 = sub_29D939D68();
  v60 = v59;
  if (v58 == sub_29D939D68() && v60 == v61)
  {

LABEL_62:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v63 = sub_29D937898();
    sub_29D69C6C0(v63, qword_2A1A2C008);
    v43 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_40;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v131 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
    v47 = "[%{public}s:ActionHandler] Country not supported on active remote device, open knowledge base article";
    goto LABEL_39;
  }

  v62 = sub_29D93AD78();

  if (v62)
  {
    goto LABEL_62;
  }

  v64 = sub_29D939D68();
  v66 = v65;
  if (v64 == sub_29D939D68() && v66 == v67)
  {

LABEL_70:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v69 = sub_29D937898();
    sub_29D69C6C0(v69, qword_2A1A2C008);
    v43 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_40;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v131 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
    v47 = "[%{public}s:ActionHandler] Capability not supported on active watch, open knowledge base article";
    goto LABEL_39;
  }

  v68 = sub_29D93AD78();

  if (v68)
  {
    goto LABEL_70;
  }

  v70 = sub_29D939D68();
  v72 = v71;
  if (v70 == sub_29D939D68() && v72 == v73)
  {

LABEL_78:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v75 = sub_29D937898();
    sub_29D69C6C0(v75, qword_2A1A2C008);
    v43 = sub_29D937878();
    v76 = sub_29D93A2A8();
    if (os_log_type_enabled(v43, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v131 = v78;
      *v77 = 136446210;
      *(v77 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
      _os_log_impl(&dword_29D677000, v43, v76, "[%{public}s:ActionHandler] Age is not present, present health details", v77, 0xCu);
      sub_29D69417C(v78);
      MEMORY[0x29ED6BE30](v78, -1, -1);
      MEMORY[0x29ED6BE30](v77, -1, -1);
    }

    goto LABEL_40;
  }

  v74 = sub_29D93AD78();

  if (v74)
  {
    goto LABEL_78;
  }

  v79 = sub_29D939D68();
  v81 = v80;
  if (v79 == sub_29D939D68() && v81 == v82)
  {

LABEL_87:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v84 = sub_29D937898();
    sub_29D69C6C0(v84, qword_2A1A2C008);
    v43 = sub_29D937878();
    v85 = sub_29D93A2A8();
    if (os_log_type_enabled(v43, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v131 = v87;
      *v86 = 136446210;
      *(v86 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
      _os_log_impl(&dword_29D677000, v43, v85, "[%{public}s:ActionHandler] Heart rate is not enabled, deep link to heart rate settings", v86, 0xCu);
      sub_29D69417C(v87);
      MEMORY[0x29ED6BE30](v87, -1, -1);
      MEMORY[0x29ED6BE30](v86, -1, -1);
    }

    goto LABEL_40;
  }

  v83 = sub_29D93AD78();

  if (v83)
  {
    goto LABEL_87;
  }

  v88 = sub_29D939D68();
  v90 = v89;
  if (v88 == sub_29D939D68() && v90 == v91)
  {

LABEL_96:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v93 = sub_29D937898();
    sub_29D69C6C0(v93, qword_2A1A2C008);
    v43 = sub_29D937878();
    v94 = sub_29D93A2A8();
    if (!os_log_type_enabled(v43, v94))
    {
      goto LABEL_40;
    }

    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v131 = v96;
    *v95 = 136446210;
    *(v95 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
    v97 = "[%{public}s:ActionHandler] Not background delivered, present onboarding";
    goto LABEL_100;
  }

  v92 = sub_29D93AD78();

  if (v92)
  {
    goto LABEL_96;
  }

  v98 = sub_29D939D68();
  v100 = v99;
  if (v98 == sub_29D939D68() && v100 == v101)
  {

LABEL_106:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v103 = sub_29D937898();
    sub_29D69C6C0(v103, qword_2A1A2C008);
    v43 = sub_29D937878();
    v94 = sub_29D93A2A8();
    if (!os_log_type_enabled(v43, v94))
    {
      goto LABEL_40;
    }

    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v131 = v96;
    *v95 = 136446210;
    *(v95 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
    v97 = "[%{public}s:ActionHandler] Notification details not entered, present onboarding";
LABEL_100:
    _os_log_impl(&dword_29D677000, v43, v94, v97, v95, 0xCu);
    sub_29D69417C(v96);
    MEMORY[0x29ED6BE30](v96, -1, -1);
    MEMORY[0x29ED6BE30](v95, -1, -1);
    goto LABEL_40;
  }

  v102 = sub_29D93AD78();

  if (v102)
  {
    goto LABEL_106;
  }

  v104 = sub_29D939D68();
  v106 = v105;
  if (v104 == sub_29D939D68() && v106 == v107)
  {

LABEL_114:
    v109 = sub_29D9371B8();
    v110 = [v109 areAllRequirementsSatisfied];

    if (v110)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v111 = sub_29D937898();
      sub_29D69C6C0(v111, qword_2A1A2C008);
      v112 = sub_29D937878();
      v113 = sub_29D93A2A8();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v131 = v115;
        *v114 = 136446210;
        *(v114 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
        _os_log_impl(&dword_29D677000, v112, v113, "[%{public}s:ActionHandler] Onboarded and available but feature disabled, present feature settings and enable", v114, 0xCu);
        sub_29D69417C(v115);
        MEMORY[0x29ED6BE30](v115, -1, -1);
        MEMORY[0x29ED6BE30](v114, -1, -1);
      }

      sub_29D6E0EB0(a3, a4);
      v36 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
      goto LABEL_41;
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v116 = sub_29D937898();
    sub_29D69C6C0(v116, qword_2A1A2C008);
    v117 = sub_29D937878();
    v118 = sub_29D93A2A8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v131 = v120;
      *v119 = 136446210;
      *(v119 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
      _os_log_impl(&dword_29D677000, v117, v118, "[%{public}s:ActionHandler] Onboarded and available but feature inactive, push feature settings but do not enable", v119, 0xCu);
      sub_29D69417C(v120);
      MEMORY[0x29ED6BE30](v120, -1, -1);
      MEMORY[0x29ED6BE30](v119, -1, -1);
    }

    sub_29D6E0EB0(a3, a4);
    goto LABEL_26;
  }

  v108 = sub_29D93AD78();

  if (v108)
  {
    goto LABEL_114;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v121 = sub_29D937898();
  sub_29D69C6C0(v121, qword_2A1A2C008);
  v122 = a1;
  v26 = sub_29D937878();
  v123 = sub_29D93A298();
  if (!os_log_type_enabled(v26, v123))
  {

    goto LABEL_33;
  }

  v124 = swift_slowAlloc();
  v125 = swift_slowAlloc();
  v131 = v125;
  *v124 = 136446466;
  *(v124 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v131);
  *(v124 + 12) = 2082;
  v126 = [v122 highestPriorityUnsatisfiedRequirement];

  if (!v126)
  {
    __break(1u);
    return;
  }

  v127 = sub_29D939D68();
  v129 = v128;

  v130 = sub_29D6C2364(v127, v129, &v131);

  *(v124 + 14) = v130;
  _os_log_impl(&dword_29D677000, v26, v123, "[%{public}s:ActionHandler] Unhandled, unsatisfied requirement encountered: %{public}s", v124, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x29ED6BE30](v125, -1, -1);
  v30 = v124;
LABEL_20:
  MEMORY[0x29ED6BE30](v30, -1, -1);
LABEL_33:

  v41 = 1;
LABEL_42:
  v48 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData(0);
  v49 = *(*(v48 - 8) + 56);

  v49(a4, v41, 1, v48);
}

double sub_29D6E0EB0@<D0>(NSObject *a1@<X1>, char *a2@<X8>)
{
  v33[1] = a1;
  v3 = sub_29D9346E8();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v6, v9);
  v12 = v33 - v11;
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = v33 - v14;
  if (sub_29D934968())
  {
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v16 = sub_29D937898();
    sub_29D69C6C0(v16, qword_2A1A2C008);
    v17 = sub_29D937878();
    v18 = sub_29D93A298();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33[0] = v17;
      v21 = v20;
      *&v34[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, v34);
      v22 = v18;
      v23 = v33[0];
      _os_log_impl(&dword_29D677000, v33[0], v22, "[%{public}s] Expected to have primary description content but it's not present", v19, 0xCu);
      sub_29D69417C(v21);
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    else
    {
    }
  }

  sub_29D934958();
  v24 = *(v4 + 32);
  v24(v12, v15, v3);
  v25 = (*(v4 + 88))(v12, v3);
  if (v25 == *MEMORY[0x29EDC1760])
  {
    v26 = 1;
  }

  else if (v25 == *MEMORY[0x29EDC1768])
  {
    v26 = 2;
  }

  else
  {
    (*(v4 + 8))(v12, v3);
    v26 = 0;
  }

  sub_29D934958();
  v27 = sub_29D934968();
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x29EDCA190];
  }

  sub_29D6E21DC(v34);
  *a2 = v26;
  v29 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  v24(&a2[v29[5]], v8, v3);
  *&a2[v29[6]] = v28;
  v30 = &a2[v29[7]];
  v31 = v34[1];
  *v30 = v34[0];
  *(v30 + 1) = v31;
  result = *&v35;
  *(v30 + 2) = v35;
  return result;
}

void sub_29D6E11FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_29D9347C8() & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v23 = sub_29D937878();
    v24 = sub_29D93A2A8();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_33;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v93 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
    _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s] Cardio fitness not visible, hiding", v25, 0xCu);
    sub_29D69417C(v26);
    MEMORY[0x29ED6BE30](v26, -1, -1);
    v27 = v25;
    goto LABEL_20;
  }

  v4 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v4)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v28 = sub_29D937898();
    sub_29D69C6C0(v28, qword_2A1A2C008);
    v29 = sub_29D937878();
    v30 = sub_29D93A2A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v93 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
      _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s:ActionHandler] Not onboarded but no reason why we can't, present onboarding", v31, 0xCu);
      sub_29D69417C(v32);
      MEMORY[0x29ED6BE30](v32, -1, -1);
      MEMORY[0x29ED6BE30](v31, -1, -1);
    }

    v33 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
    goto LABEL_41;
  }

  v5 = v4;
  v6 = sub_29D939D68();
  v8 = v7;
  if (v6 == sub_29D939D68() && v8 == v9)
  {

    goto LABEL_27;
  }

  v11 = sub_29D93AD78();

  if (v11)
  {
LABEL_27:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v34 = sub_29D937898();
    sub_29D69C6C0(v34, qword_2A1A2C008);
    v23 = sub_29D937878();
    v35 = sub_29D93A2A8();
    if (!os_log_type_enabled(v23, v35))
    {
      goto LABEL_32;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v93 = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
    v38 = "[%{public}s:ActionHandler] Health app hidden, no action";
    goto LABEL_31;
  }

  v12 = sub_29D939D68();
  v14 = v13;
  if (v12 == sub_29D939D68() && v14 == v15)
  {

    goto LABEL_35;
  }

  v17 = sub_29D93AD78();

  if (v17)
  {
LABEL_35:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v40 = sub_29D937898();
    sub_29D69C6C0(v40, qword_2A1A2C008);
    v41 = sub_29D937878();
    v42 = sub_29D93A2A8();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_40;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v93 = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
    v45 = "[%{public}s:ActionHandler] Heart rate app not installed, open knowledge base article";
    goto LABEL_39;
  }

  v18 = sub_29D939D68();
  v20 = v19;
  if (v18 == sub_29D939D68() && v20 == v21)
  {

LABEL_46:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v49 = sub_29D937898();
    sub_29D69C6C0(v49, qword_2A1A2C008);
    v41 = sub_29D937878();
    v42 = sub_29D93A2A8();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_40;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v93 = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
    v45 = "[%{public}s:ActionHandler] Age gated, open knowledge base article";
LABEL_39:
    _os_log_impl(&dword_29D677000, v41, v42, v45, v43, 0xCu);
    sub_29D69417C(v44);
    MEMORY[0x29ED6BE30](v44, -1, -1);
    MEMORY[0x29ED6BE30](v43, -1, -1);
LABEL_40:

    v33 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
LABEL_41:
    swift_storeEnumTagMultiPayload();
    (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
    v39 = 0;
    goto LABEL_42;
  }

  v48 = sub_29D93AD78();

  if (v48)
  {
    goto LABEL_46;
  }

  v50 = sub_29D939D68();
  v52 = v51;
  if (v50 == sub_29D939D68() && v52 == v53)
  {

LABEL_54:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v55 = sub_29D937898();
    sub_29D69C6C0(v55, qword_2A1A2C008);
    v41 = sub_29D937878();
    v42 = sub_29D93A2A8();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_40;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v93 = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
    v45 = "[%{public}s:ActionHandler] Country not supported on local device, open knowledge base article";
    goto LABEL_39;
  }

  v54 = sub_29D93AD78();

  if (v54)
  {
    goto LABEL_54;
  }

  v56 = sub_29D939D68();
  v58 = v57;
  if (v56 == sub_29D939D68() && v58 == v59)
  {

LABEL_62:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v61 = sub_29D937898();
    sub_29D69C6C0(v61, qword_2A1A2C008);
    v41 = sub_29D937878();
    v42 = sub_29D93A2A8();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_40;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v93 = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
    v45 = "[%{public}s:ActionHandler] Country not supported on active remote device, open knowledge base article";
    goto LABEL_39;
  }

  v60 = sub_29D93AD78();

  if (v60)
  {
    goto LABEL_62;
  }

  v62 = sub_29D939D68();
  v64 = v63;
  if (v62 == sub_29D939D68() && v64 == v65)
  {

LABEL_70:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v67 = sub_29D937898();
    sub_29D69C6C0(v67, qword_2A1A2C008);
    v41 = sub_29D937878();
    v42 = sub_29D93A2A8();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_40;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v93 = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
    v45 = "[%{public}s:ActionHandler] Capability not supported on active watch, open knowledge base article";
    goto LABEL_39;
  }

  v66 = sub_29D93AD78();

  if (v66)
  {
    goto LABEL_70;
  }

  v68 = sub_29D939D68();
  v70 = v69;
  if (v68 == sub_29D939D68() && v70 == v71)
  {

LABEL_78:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v73 = sub_29D937898();
    sub_29D69C6C0(v73, qword_2A1A2C008);
    v41 = sub_29D937878();
    v74 = sub_29D93A2A8();
    if (os_log_type_enabled(v41, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v93 = v76;
      *v75 = 136446210;
      *(v75 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
      _os_log_impl(&dword_29D677000, v41, v74, "[%{public}s:ActionHandler] Heart rate is not enabled, deep link to heart rate settings", v75, 0xCu);
      sub_29D69417C(v76);
      MEMORY[0x29ED6BE30](v76, -1, -1);
      MEMORY[0x29ED6BE30](v75, -1, -1);
    }

    goto LABEL_40;
  }

  v72 = sub_29D93AD78();

  if (v72)
  {
    goto LABEL_78;
  }

  v77 = sub_29D939D68();
  v79 = v78;
  if (v77 == sub_29D939D68() && v79 == v80)
  {

LABEL_87:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v82 = sub_29D937898();
    sub_29D69C6C0(v82, qword_2A1A2C008);
    v23 = sub_29D937878();
    v35 = sub_29D93A2A8();
    if (!os_log_type_enabled(v23, v35))
    {
      goto LABEL_32;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v93 = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
    v38 = "[%{public}s:ActionHandler] Background delivered onboarding record not present, no action";
LABEL_31:
    _os_log_impl(&dword_29D677000, v23, v35, v38, v36, 0xCu);
    sub_29D69417C(v37);
    MEMORY[0x29ED6BE30](v37, -1, -1);
    MEMORY[0x29ED6BE30](v36, -1, -1);
LABEL_32:

    goto LABEL_33;
  }

  v81 = sub_29D93AD78();

  if (v81)
  {
    goto LABEL_87;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v83 = sub_29D937898();
  sub_29D69C6C0(v83, qword_2A1A2C008);
  v84 = a1;
  v23 = sub_29D937878();
  v85 = sub_29D93A298();
  if (!os_log_type_enabled(v23, v85))
  {

    goto LABEL_33;
  }

  v86 = swift_slowAlloc();
  v87 = swift_slowAlloc();
  v93 = v87;
  *v86 = 136446466;
  *(v86 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v93);
  *(v86 + 12) = 2082;
  v88 = [v84 highestPriorityUnsatisfiedRequirement];

  if (!v88)
  {
    __break(1u);
    return;
  }

  v89 = sub_29D939D68();
  v91 = v90;

  v92 = sub_29D6C2364(v89, v91, &v93);

  *(v86 + 14) = v92;
  _os_log_impl(&dword_29D677000, v23, v85, "[%{public}s:ActionHandler] Unhandled, unsatisfied requirement encountered: %{public}s", v86, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x29ED6BE30](v87, -1, -1);
  v27 = v86;
LABEL_20:
  MEMORY[0x29ED6BE30](v27, -1, -1);
LABEL_33:

  v39 = 1;
LABEL_42:
  v46 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData(0);
  v47 = *(*(v46 - 8) + 56);

  v47(a2, v39, 1, v46);
}

void sub_29D6E21DC(uint64_t *a1@<X8>)
{
  v2 = sub_29D9371B8();
  v3 = [v2 highestPriorityUnsatisfiedRequirement];

  if (v3)
  {
    v4 = sub_29D939D68();
    v6 = v5;
    if (v4 == sub_29D939D68() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_29D93AD78();

      if ((v9 & 1) == 0)
      {
        v10 = sub_29D939D68();
        v12 = v11;
        if (v10 == sub_29D939D68() && v12 == v13)
        {
        }

        else
        {
          v15 = sub_29D93AD78();

          if ((v15 & 1) == 0)
          {
            v16 = sub_29D939D68();
            v18 = v17;
            if (v16 == sub_29D939D68() && v18 == v19)
            {

LABEL_27:
              v33 = [objc_opt_self() cardioFitnessPairedDeviceRegionGatedFooterDescription];
              goto LABEL_20;
            }

            v48 = sub_29D93AD78();

            if (v48)
            {
              goto LABEL_27;
            }

            v49 = sub_29D939D68();
            v51 = v50;
            if (v49 == sub_29D939D68() && v51 == v52)
            {

LABEL_32:
              v54 = objc_opt_self();
              v55 = [v54 cardioFitnessWristDetectFooterDescriptionWithLink];
              v25 = sub_29D939D68();
              v27 = v56;

              v57 = [v54 cardioFitnessWristDetectFooterLinkTitle];
              v29 = sub_29D939D68();
              v31 = v58;

              v45 = [v54 cardioFitnessWristDetectFooterLinkURL];
              goto LABEL_24;
            }

            v53 = sub_29D93AD78();

            if (v53)
            {
              goto LABEL_32;
            }

            v59 = sub_29D9371B8();
            v60 = [v59 areAllRequirementsSatisfied];

            v22 = objc_opt_self();
            v23 = v22;
            if (!v60)
            {
              goto LABEL_21;
            }

            goto LABEL_16;
          }
        }

        v40 = objc_opt_self();
        v41 = [v40 cardioFitnessAgeDeletedFooterDescriptionWithLink];
        v25 = sub_29D939D68();
        v27 = v42;

        v43 = [v40 cardioFitnessAgeDeletedFooterLinkTitle];
        v29 = sub_29D939D68();
        v31 = v44;

        v45 = [v40 cardioFitnessAgeDeletedFooterLinkURL];
LABEL_24:
        v46 = v45;
        v37 = sub_29D939D68();
        v39 = v47;

        goto LABEL_25;
      }
    }

    v33 = [objc_opt_self() cardioFitnessAgeRestrictedFooterDescription];
LABEL_20:
    v34 = v33;
    v25 = sub_29D939D68();
    v27 = v35;

    v29 = 0;
    v31 = 0;
    v37 = 0;
    v39 = 0;
    goto LABEL_25;
  }

  v20 = sub_29D9371B8();
  v21 = [v20 areAllRequirementsSatisfied];

  v22 = objc_opt_self();
  v23 = v22;
  if (!v21)
  {
LABEL_21:
    v24 = [v22 cardioFitnessPregnantFooterDescriptionWithLink];
    goto LABEL_17;
  }

LABEL_16:
  v24 = [v22 cardioFitnessFooterDescriptionWithLink];
LABEL_17:
  v25 = sub_29D939D68();
  v27 = v26;

  v28 = [v23 cardioFitnessFooterLinkTitle];
  v29 = sub_29D939D68();
  v31 = v30;

  v32 = [v23 cardioFitnessFooterLinkURL];
  v36 = v32;
  v37 = sub_29D939D68();
  v39 = v38;

LABEL_25:
  *a1 = v25;
  a1[1] = v27;
  a1[2] = v29;
  a1[3] = v31;
  a1[4] = v37;
  a1[5] = v39;
}

void sub_29D6E2800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 initializeBufferWithCopyOfBuffer for AFibBurdenPDFChartViewModel.DataRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29D6E2880(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29D6E28C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D6E2934()
{
  v1 = *(v0 + 8);
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D6E296C(uint64_t a1, void *a2)
{
  v4 = sub_29D936378();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9360A8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29D936368() & 0xFE) == 2)
  {
    v14 = a2;
    sub_29D936098();
    sub_29D936088();
    (*(v10 + 8))(v13, v9);
    sub_29D6E2D58(0, v15);
    swift_getOpaqueTypeConformance2();
    sub_29D935438();
    sub_29D936978();
    swift_unknownObjectRetain();
    sub_29D9353F8();
    sub_29D936978();
    type metadata accessor for HKHRCardioFitnessChartDataSource(0);
    sub_29D6E2E8C(&qword_2A17B1FC0, type metadata accessor for HKHRCardioFitnessChartDataSource, MEMORY[0x29EDC24E8]);
    swift_unknownObjectRetain();
    sub_29D935408();
    sub_29D936978();
    swift_unknownObjectRelease_n();
  }

  else
  {
    (*(v5 + 16))(v8, a1, v4);
    type metadata accessor for HKHRCardioFitnessChartDataSource(0);
    swift_allocObject();
    v17 = a2;
    sub_29D877688(v17, v8);

    sub_29D6E2E8C(&qword_2A17B1FC0, type metadata accessor for HKHRCardioFitnessChartDataSource, MEMORY[0x29EDC24E8]);
    sub_29D935438();

    sub_29D9353F8();

    sub_29D6E2D58(0, v18);

    swift_getOpaqueTypeConformance2();
    sub_29D935418();
  }

  sub_29D6E2DB8(0, v16);
  sub_29D6E2E8C(&qword_2A17B1FD8, sub_29D6E2DB8, MEMORY[0x29EDC22A8]);

  v19 = sub_29D9353F8();

  return v19;
}

void sub_29D6E2D58(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B1FC8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1FC8);
    }
  }
}

void sub_29D6E2DB8(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B1FD0)
  {
    sub_29D6E2D58(255, a2);
    type metadata accessor for HKHRCardioFitnessChartDataSource(255);
    swift_getOpaqueTypeConformance2();
    sub_29D6E2E8C(&qword_2A17B1FC0, type metadata accessor for HKHRCardioFitnessChartDataSource, MEMORY[0x29EDC24E8]);
    v2 = sub_29D935C38();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B1FD0);
    }
  }
}

uint64_t sub_29D6E2E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AFibBurdenNotificationSettingsDisclosureCellViewController(uint64_t a1)
{
  result = qword_2A17B1FE0;
  if (!qword_2A17B1FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6E2F60()
{
  v1 = sub_29D939D68();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD000000000000020, 0x800000029D95A360);

  return v1;
}

double (*sub_29D6E2FD0(uint64_t *a1))(uint64_t a1)
{
  v4 = sub_29D939D68();
  v5 = v2;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD000000000000020, 0x800000029D95A360);

  *a1 = v4;
  a1[1] = v5;
  return sub_29D6C14A0;
}

uint64_t sub_29D6E306C(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000014, 0x800000029D959370);
  MEMORY[0x29ED6A240](0xD00000000000003ALL, 0x800000029D95A320);
  return 0;
}

uint64_t sub_29D6E3138(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD000000000000054, 0x800000029D95A2C0);
  return 0;
}

uint64_t sub_29D6E31D0(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000014, 0x800000029D959370);
  MEMORY[0x29ED6A240](0xD000000000000037, 0x800000029D95A230);
  return 0;
}

uint64_t sub_29D6E32A0(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000014, 0x800000029D959370);
  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D95A200);
  return 91;
}

uint64_t sub_29D6E3368(void *a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD00000000000004CLL, 0x800000029D95A270);
  v4 = a1;
  sub_29D6A0CD0();
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

id sub_29D6E3440(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D939D68();
    v6 = a4;
    v7 = sub_29D939D28();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for AFibBurdenNotificationSettingsDisclosureCellViewController(0);
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29D6E34E4(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AFibBurdenNotificationSettingsDisclosureCellViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D6E3560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenNotificationSettingsDisclosureCellViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6E35C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D6E5ED0();
    v3 = sub_29D93A9E8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_29D93AE58();
      sub_29D935E88();
      sub_29D939E18();
      result = sub_29D93AE98();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_29D93AD78();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA1A0];
  }

  return result;
}

uint64_t sub_29D6E3748(uint64_t a1)
{
  v2 = sub_29D933CC8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_29D6E5F28(0);
    v11 = sub_29D93A9E8();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_29D6E5480(&qword_2A17B2040, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D08]);
      v18 = sub_29D939C88();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_29D6E5480(&qword_2A17B2048, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D10]);
          v25 = sub_29D939CF8();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29D6E3A5C(uint64_t a1)
{
  v2 = sub_29D939BF8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_29D6E5FBC(0);
    v11 = sub_29D93A9E8();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_29D6E5480(&qword_2A17B2058, MEMORY[0x29EDBD1F0], MEMORY[0x29EDBD1F8]);
      v18 = sub_29D939C88();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_29D6E5480(&qword_2A17B2060, MEMORY[0x29EDBD1F0], MEMORY[0x29EDBD200]);
          v25 = sub_29D939CF8();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29D6E3D94(unint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_29D93A928();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_29D6E5AE4(0, a2, a3, a4, a5);
      v7 = sub_29D93A9E8();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_29D93A928();
      if (!v9)
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

  v7 = MEMORY[0x29EDCA1A0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x29ED6AE30](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_29D93A6F8();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_29D69567C(0, a3, a4);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_29D93A708();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        sub_29D936978();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
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
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_29D93A6F8();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_29D69567C(0, a3, a4);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_29D93A708();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_29D6E4080(uint64_t a1)
{
  v2 = sub_29D933F58();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_29D6E5E3C(0);
    v11 = sub_29D93A9E8();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_29D6E5480(&unk_2A1A25770, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A0]);
      v18 = sub_29D939C88();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_29D6E5480(&qword_2A1A247D8, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A8]);
          v25 = sub_29D939CF8();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

unint64_t sub_29D6E4394(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_29D93A928();
    if (result)
    {
LABEL_3:
      sub_29D6E56A8(0);
      result = sub_29D93A9E8();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_29D93A928();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x29ED6AE30](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_29D938278();
    sub_29D6E5480(&qword_2A17B2008, MEMORY[0x29EDB8A18], MEMORY[0x29EDB8A20]);
    result = sub_29D939C88();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_29D6E5480(&qword_2A17B2010, MEMORY[0x29EDB8A18], MEMORY[0x29EDB8A28]);
      do
      {
        result = sub_29D939CF8();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_29D6E461C(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_29D6E542C(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = v84 - v5;
  v97 = sub_29D934C58();
  v96 = *(v97 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v97, v7);
  v93 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v95 = v84 - v11;
  sub_29D6E542C(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v16 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v84 - v18;
  v20 = _s14descr2A243C641C15SettingsContentVMa(0);
  v100 = *(v20 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v20, v21);
  v24 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v94 = v84 - v27;
  MEMORY[0x2A1C7C4A8](v26, v28);
  v98 = v84 - v29;
  v30 = sub_29D9371A8();
  v99 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v31);
  v103 = v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_29D93A378();
  if (v33)
  {
    v34 = v33;
    v92 = v30;
    v91 = a1;
    v102 = ObjectType;
    v35 = *MEMORY[0x29EDBA6B0];
    v101 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v33];
    v36 = [v34 profileIdentifier];
    v37 = [v36 type];

    if (v37 == 1 && (v38 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v35 healthStore:v34]) != 0)
    {
      v39 = v38;
      v89 = v6;
      v40 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
      v41 = MEMORY[0x29EDC2EA8];
      v42 = v103;
      v90 = v39;
      sub_29D937278();
      v45 = sub_29D933F18();
      v46 = sub_29D933F08();
      v110 = v45;
      v111 = &off_2A2447A08;
      v109 = v46;
      sub_29D826468(v42, &v109, v19);
      sub_29D69417C(&v109);
      if ((*(v100 + 48))(v19, 1, v20) == 1)
      {
        sub_29D6E54E0(v19);
        if (qword_2A1A24678 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4(0);
        sub_29D69C6C0(v47, qword_2A1A2BF58);
        *(swift_allocObject() + 16) = v102;
        v109 = 0;
        sub_29D9371F8();
      }

      else
      {
        v48 = v98;
        sub_29D6AA104(v19, v98);
        v84[0] = v45;
        v49 = v94;
        sub_29D6E5560(v48, v94);
        v50 = v96;
        v51 = v95;
        v52 = v97;
        (*(v96 + 104))(v95, *MEMORY[0x29EDC1BF0], v97);
        v110 = v40;
        v111 = v41;
        v53 = v90;
        v109 = v90;
        sub_29D6E5560(v49, v24);
        sub_29D6945AC(&v109, &v108);
        v54 = *(v50 + 16);
        v88 = v50 + 16;
        v87 = v54;
        v54(v93, v51, v52);
        v86 = v34;
        v85 = v101;
        v101 = v53;
        v55 = v84[0];
        v56 = sub_29D933F08();
        v106 = v55;
        v107 = &off_2A244CEA8;
        v57 = v55;
        v105[0] = v56;
        v58 = objc_allocWithZone(type metadata accessor for AFibBurdenSpecifierDataSource(0));
        v59 = sub_29D693DDC(v105, v106);
        v90 = v84;
        MEMORY[0x2A1C7C4A8](v59, v59);
        v61 = (v84 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v62 + 16))(v61);
        v63 = *v61;
        v104[3] = v57;
        v104[4] = &off_2A244CEA8;
        v104[0] = v63;
        v84[1] = v56;
        if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
        {

          v64 = sub_29D6E4394(MEMORY[0x29EDCA190]);
        }

        else
        {

          v64 = MEMORY[0x29EDCA1A0];
        }

        v65 = v89;
        v89 = objc_allocWithZone(type metadata accessor for AFibBurdenSettingsViewController(0));
        *&v58[qword_2A17B7828] = v64;
        v66 = &v58[qword_2A17B7830];
        *v66 = 0;
        *(v66 + 1) = 0;
        v67 = qword_2A17B7840;
        v68 = *(v100 + 56);
        v68(&v58[qword_2A17B7840], 1, 1, v20);
        *&v58[qword_2A17D0E28 + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v58[qword_2A17D0E30 + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v58[qword_2A17B7810] = 256;
        v69 = v85;
        *&v58[qword_2A17B7818] = v85;
        sub_29D6945AC(&v108, &v58[qword_2A17B7820]);
        v70 = v86;
        *&v58[qword_2A17B7838] = v86;
        sub_29D6E5560(v24, v16);
        v68(v16, 0, 1, v20);
        swift_beginAccess();
        v71 = v70;
        v72 = v69;
        sub_29D6E55C4(v16, &v58[v67]);
        swift_endAccess();
        sub_29D6945AC(v104, &v58[qword_2A17B7848]);
        v73 = v93;
        v74 = v97;
        v87(v65, v93, v97);
        v75 = v96;
        (*(v96 + 56))(v65, 0, 1, v74);
        HKImproveHealthAndActivityAnalyticsAllowed();
        v76 = sub_29D934C48();
        sub_29D8C9560();

        v77 = *(v75 + 8);
        v77(v73, v74);
        sub_29D69417C(&v108);
        sub_29D6E5644(v24);
        sub_29D69417C(v104);
        sub_29D69417C(v105);
        sub_29D6E5480(&qword_2A17B1FF8, type metadata accessor for AFibBurdenSpecifierDataSource, &unk_29D953B90);
        v78 = v76;
        v79 = sub_29D9365D8();
        v80 = objc_opt_self();
        v81 = v79;
        v82 = [v80 aFibBurdenSectionTitle];
        if (!v82)
        {
          sub_29D939D68();
          v82 = sub_29D939D28();
        }

        [v81 setTitle_];

        v77(v95, v74);
        sub_29D6E5644(v94);
        sub_29D69417C(&v109);
        if (qword_2A1A24678 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4(0);
        sub_29D69C6C0(v83, qword_2A1A2BF58);
        *(swift_allocObject() + 16) = v102;
        v109 = 0;
        sub_29D9371C8();

        [v91 showViewController:v81 sender:0];

        sub_29D6E5644(v98);
      }

      (*(v99 + 8))(v103, v92);
    }

    else
    {
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4(0);
      sub_29D69C6C0(v43, qword_2A1A2BF58);
      *(swift_allocObject() + 16) = v102;
      v109 = 0;
      sub_29D9371F8();
    }
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v44, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    v109 = 0;
    sub_29D9371E8();
  }
}

void sub_29D6E542C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_29D6E5480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D6E54E0(uint64_t a1)
{
  sub_29D6E542C(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D6E5560(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2A243C641C15SettingsContentVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6E55C4(uint64_t a1, uint64_t a2)
{
  sub_29D6E542C(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6E5644(uint64_t a1)
{
  v2 = _s14descr2A243C641C15SettingsContentVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6E56A8(uint64_t a1)
{
  if (!qword_2A17B2000)
  {
    sub_29D938278();
    sub_29D6E5480(&qword_2A17B2008, MEMORY[0x29EDB8A18], MEMORY[0x29EDB8A20]);
    v1 = sub_29D93A9F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2000);
    }
  }
}

uint64_t sub_29D6E573C(uint64_t a1)
{
  v2 = sub_29D9357D8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_29D6E5A50(0);
    v11 = sub_29D93A9E8();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_29D6E5480(&qword_2A17B2020, MEMORY[0x29EDC2148], MEMORY[0x29EDC2150]);
      v18 = sub_29D939C88();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_29D6E5480(&qword_2A17B2028, MEMORY[0x29EDC2148], MEMORY[0x29EDC2158]);
          v25 = sub_29D939CF8();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29D6E5A50(uint64_t a1)
{
  if (!qword_2A17B2018)
  {
    sub_29D9357D8();
    sub_29D6E5480(&qword_2A17B2020, MEMORY[0x29EDC2148], MEMORY[0x29EDC2150]);
    v1 = sub_29D93A9F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2018);
    }
  }
}

void sub_29D6E5AE4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D69567C(255, a3, a4);
    sub_29D6E5B70(a5, a3, a4);
    v9 = sub_29D93A9F8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D6E5B70(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D69567C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D6E5BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D6E5DA8(0);
    v3 = sub_29D93A9E8();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      sub_29D939D68();
      sub_29D93AE58();
      v26 = v7;
      sub_29D939E18();
      v8 = sub_29D93AE98();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = sub_29D939D68();
        v17 = v16;
        if (v15 == sub_29D939D68() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = sub_29D93AD78();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

void sub_29D6E5DA8(uint64_t a1)
{
  if (!qword_2A1A21FB8)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_29D6E5480(&qword_2A1A22200, type metadata accessor for HKFeatureIdentifier, &unk_29D93E138);
    v1 = sub_29D93A9F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21FB8);
    }
  }
}

void sub_29D6E5E3C(uint64_t a1)
{
  if (!qword_2A1A248B8)
  {
    sub_29D933F58();
    sub_29D6E5480(&unk_2A1A25770, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A0]);
    v1 = sub_29D93A9F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A248B8);
    }
  }
}

void sub_29D6E5ED0()
{
  if (!qword_2A17B2030)
  {
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2030);
    }
  }
}

void sub_29D6E5F28(uint64_t a1)
{
  if (!qword_2A17B2038)
  {
    sub_29D933CC8();
    sub_29D6E5480(&qword_2A17B2040, MEMORY[0x29EDB9D00], MEMORY[0x29EDB9D08]);
    v1 = sub_29D93A9F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2038);
    }
  }
}

void sub_29D6E5FBC(uint64_t a1)
{
  if (!qword_2A17B2050)
  {
    sub_29D939BF8();
    sub_29D6E5480(&qword_2A17B2058, MEMORY[0x29EDBD1F0], MEMORY[0x29EDBD1F8]);
    v1 = sub_29D93A9F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2050);
    }
  }
}

uint64_t sub_29D6E6050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D6E6128(0);
    v2 = sub_29D93A9E8();
    v3 = v2 + 56;
    while (1)
    {
      sub_29D93AE58();
      MEMORY[0x29ED6B260](0);
      result = sub_29D93AE98();
      v5 = result & ~(-1 << *(v2 + 32));
      v6 = v5 >> 6;
      v7 = *(v3 + 8 * (v5 >> 6));
      v8 = 1 << v5;
      if ((v8 & v7) == 0)
      {
        *(v3 + 8 * v6) = v8 | v7;
        v9 = *(v2 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v11;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29D6E6128(uint64_t a1)
{
  if (!qword_2A17B2068)
  {
    sub_29D6E6184();
    v1 = sub_29D93A9F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2068);
    }
  }
}

unint64_t sub_29D6E6184()
{
  result = qword_2A17B2070;
  if (!qword_2A17B2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2070);
  }

  return result;
}

uint64_t sub_29D6E61E8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x7472617453746567;
    if (v1 != 1)
    {
      v5 = 0x726F577449776F68;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x7472617473;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 != 5)
    {
      v2 = 0x6974656C706D6F63;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0x746361466566696CLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_29D6E634C(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  sub_29D6E8304(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = v8;
  sub_29D6E8398();
  swift_allocObject();
  v17 = a2;
  sub_29D938368();
  sub_29D6E86B4(&qword_2A17B20B0, sub_29D6E8398, MEMORY[0x29EDB8AD8]);

  sub_29D938378();
  sub_29D6E86B4(&qword_2A17B20B8, sub_29D6E8304, MEMORY[0x29EDB8AE8]);
  v18 = sub_29D938418();

  (*(v11 + 8))(v14, v10);
  return v18;
}

uint64_t sub_29D6E65A0(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_29D6B805C(0);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  if (!a4)
  {
    v32 = Strong;
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    sub_29D693E2C((v32 + 16), *(v32 + 40));

    *&v42 = sub_29D8F0ED8();
    v34 = swift_allocObject();
    v34[2] = sub_29D6E8418;
    v34[3] = v17;
    v34[4] = v33;
    v34[5] = a7;
    v35 = swift_allocObject();
    v35[2] = v32;
    v35[3] = sub_29D6E8418;
    v35[4] = v17;
    v35[5] = a7;
    sub_29D6E85E4(0);
    sub_29D6E86B4(&qword_2A17B20E0, sub_29D6E85E4, MEMORY[0x29EDB8A00]);

    v36 = sub_29D938478();

    swift_beginAccess();
    *(v33 + 16) = v36;
  }

  if (a4 == 1)
  {
    v21 = Strong;

    v41[0] = a5;
    v41[1] = a6;
    sub_29D695734(0, &qword_2A17B20C0, &protocol descriptor for AFibBurdenOnboardingViewControllerProtocol, 0);
    sub_29D695734(0, &qword_2A17B20C8, &protocol descriptor for AFibBurdenOnboardingDetailsProviding, 1);
    v22 = a5;
    if (swift_dynamicCast())
    {
      sub_29D693E2C(&v42, *(&v43 + 1));
      v23 = sub_29D76FC80();
      sub_29D69417C(&v42);
      if (HIBYTE(v23) == 2 || v23 == 2)
      {
        goto LABEL_20;
      }

      if ((v23 & 0x100) == 0)
      {
        *&v42 = 0;
        v37 = 2;
        goto LABEL_21;
      }

      if ((v23 & 1) == 0)
      {
        *&v42 = 3;
        v37 = 2;
        goto LABEL_21;
      }

      v25 = *(*sub_29D693E2C((v21 + 16), *(v21 + 40)) + 104);
      v26 = *(*v25 + *MEMORY[0x29EDC9DE8] + 16);
      v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v25 + v27));
      sub_29D6E8508(v25 + v26, v16);
      os_unfair_lock_unlock((v25 + v27));

      v28 = sub_29D9371A8();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v16, 1, v28) != 1)
      {
        v39 = sub_29D9371B8();
        (*(v29 + 8))(v16, v28);
        v40 = [v39 isRequirementSatisfiedWithIdentifier_];

        if ((v40 & 1) == 0)
        {
          *&v42 = 0;
          v37 = 64;
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v30 = sub_29D6B805C;
      v31 = v16;
    }

    else
    {
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      v30 = sub_29D6E849C;
      v31 = &v42;
    }

    sub_29D6E856C(v31, v30);
LABEL_20:
    *&v42 = 0;
    v37 = 128;
LABEL_21:
    WORD4(v42) = v37;
    a1(&v42);
  }

  if (a4 != 6)
  {

    goto LABEL_20;
  }

  sub_29D693E2C((Strong + 56), *(Strong + 80));
  v19 = swift_allocObject();
  v19[2] = sub_29D6E8418;
  v19[3] = v17;
  v19[4] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_29D6E845C;
  *(v20 + 24) = v19;

  sub_29D933ED8();
}

uint64_t sub_29D6E6B88(void **a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (*a1)
  {
    v8 = v6;
    v9 = sub_29D933588();
    v10 = [v9 code];

    if (v10 == 109)
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v11 = sub_29D937898();
      sub_29D69C6C0(v11, qword_2A1A2BF28);
      v12 = sub_29D937878();
      v13 = sub_29D93A2A8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v29[0] = v15;
        *v14 = 136315138;
        v16 = sub_29D93AF08();
        v18 = sub_29D6C2364(v16, v17, v29);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_29D677000, v12, v13, "[%s] Location unavailable error encountered, returning cannot proceed with location unavailable", v14, 0xCu);
        sub_29D69417C(v15);
        MEMORY[0x29ED6BE30](v15, -1, -1);
        MEMORY[0x29ED6BE30](v14, -1, -1);
      }

      v19 = 2;
    }

    else
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v20 = sub_29D937898();
      sub_29D69C6C0(v20, qword_2A1A2BF28);
      v21 = sub_29D937878();
      v22 = sub_29D93A2A8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v29[0] = v24;
        *v23 = 136315138;
        v25 = sub_29D93AF08();
        v27 = sub_29D6C2364(v25, v26, v29);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_29D677000, v21, v22, "[%s] Location unavailable error encountered, returning cannot proceed with location unavailable", v23, 0xCu);
        sub_29D69417C(v24);
        MEMORY[0x29ED6BE30](v24, -1, -1);
        MEMORY[0x29ED6BE30](v23, -1, -1);
      }

      v19 = 5;
    }

    a2(v19, 2);
  }

  swift_beginAccess();
  *(a4 + 16) = 0;
}

uint64_t sub_29D6E6E70(void **a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  sub_29D6B805C(0);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v14 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = v89 - v16;
  v18 = *a1;
  if ([v18 isEligible])
  {
    v89[1] = a5;
    v89[2] = a4;
    v19 = a3;
    v20 = *(*sub_29D693E2C((a2 + 16), *(a2 + 40)) + 104);
    v21 = MEMORY[0x29EDC9DE8];
    v22 = *(*v20 + *MEMORY[0x29EDC9DE8] + 16);
    v23 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v20 + v23));
    sub_29D6E8508(v20 + v22, v17);
    os_unfair_lock_unlock((v20 + v23));

    v24 = sub_29D9371A8();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (v26(v17, 1, v24) == 1)
    {
      sub_29D6E856C(v17, sub_29D6B805C);
    }

    else
    {
      v43 = sub_29D9371B8();
      (*(v25 + 8))(v17, v24);
      v44 = [v43 isRequirementSatisfiedWithIdentifier_];

      if ((v44 & 1) == 0)
      {
        if (qword_2A1A24660 != -1)
        {
          swift_once();
        }

        v72 = sub_29D937898();
        sub_29D69C6C0(v72, qword_2A1A2BF28);
        v73 = sub_29D937878();
        v74 = sub_29D93A2A8();
        a3 = v19;
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v90[0] = v76;
          *v75 = 136315138;
          v77 = sub_29D93AF08();
          v79 = sub_29D6C2364(v77, v78, v90);

          *(v75 + 4) = v79;
          _os_log_impl(&dword_29D677000, v73, v74, "[%s] Heart rate disabled, returning cannot proceed", v75, 0xCu);
          sub_29D69417C(v76);
          MEMORY[0x29ED6BE30](v76, -1, -1);
          MEMORY[0x29ED6BE30](v75, -1, -1);
        }

        v41 = 1;
        v42 = 2;
        return a3(v41, v42);
      }
    }

    v45 = *(*sub_29D693E2C((a2 + 16), *(a2 + 40)) + 104);
    v46 = *(*v45 + *v21 + 16);
    v47 = (*(*v45 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v45 + v47));
    sub_29D6E8508(v45 + v46, v14);
    os_unfair_lock_unlock((v45 + v47));

    if (v26(v14, 1, v24) == 1)
    {
      sub_29D6E856C(v14, sub_29D6B805C);
      a3 = v19;
LABEL_19:
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v64 = sub_29D937898();
      sub_29D69C6C0(v64, qword_2A1A2BF28);
      v65 = sub_29D937878();
      v66 = sub_29D93A2A8();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v90[0] = v68;
        *v67 = 136315138;
        v69 = sub_29D93AF08();
        v71 = sub_29D6C2364(v69, v70, v90);

        *(v67 + 4) = v71;
        _os_log_impl(&dword_29D677000, v65, v66, "[%s] Determined can proceed", v67, 0xCu);
        sub_29D69417C(v68);
        MEMORY[0x29ED6BE30](v68, -1, -1);
        MEMORY[0x29ED6BE30](v67, -1, -1);
      }

      v41 = 0;
      v42 = 128;
      return a3(v41, v42);
    }

    v62 = sub_29D9371B8();
    (*(v25 + 8))(v14, v24);
    v63 = [v62 isRequirementSatisfiedWithIdentifier_];

    a3 = v19;
    if (v63)
    {
      goto LABEL_19;
    }

    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v80 = sub_29D937898();
    sub_29D69C6C0(v80, qword_2A1A2BF28);
    v81 = sub_29D937878();
    v82 = sub_29D93A2A8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v90[0] = v84;
      *v83 = 136315138;
      v85 = sub_29D93AF08();
      v87 = sub_29D6C2364(v85, v86, v90);

      *(v83 + 4) = v87;
      _os_log_impl(&dword_29D677000, v81, v82, "[%s] Wrist detect disabled, returning cannot proceed", v83, 0xCu);
      sub_29D69417C(v84);
      MEMORY[0x29ED6BE30](v84, -1, -1);
      MEMORY[0x29ED6BE30](v83, -1, -1);
    }

    v41 = 6;
    v42 = 2;
  }

  else if (([v18 ineligibilityReasons] & 0x39) != 0)
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v27 = sub_29D937898();
    sub_29D69C6C0(v27, qword_2A1A2BF28);
    v28 = v18;
    v29 = sub_29D937878();
    v30 = sub_29D93A2A8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v90[0] = v32;
      *v31 = 136315394;
      v33 = sub_29D93AF08();
      v35 = sub_29D6C2364(v33, v34, v90);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = [v28 ineligibilityReasonsDescription];
      v37 = sub_29D939D68();
      v39 = v38;

      v40 = sub_29D6C2364(v37, v39, v90);

      *(v31 + 14) = v40;
      _os_log_impl(&dword_29D677000, v29, v30, "[%s] Cannot proceed due to location based onboarding ineligibility (%s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v32, -1, -1);
      MEMORY[0x29ED6BE30](v31, -1, -1);
    }

    v41 = [v28 ineligibilityReasons];
    v42 = 1;
  }

  else
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v48 = sub_29D937898();
    sub_29D69C6C0(v48, qword_2A1A2BF28);
    v49 = v18;
    v50 = sub_29D937878();
    v51 = sub_29D93A2A8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v90[0] = v53;
      *v52 = 136315394;
      v54 = sub_29D93AF08();
      v56 = sub_29D6C2364(v54, v55, v90);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = [v49 ineligibilityReasonsDescription];
      v58 = sub_29D939D68();
      v60 = v59;

      v61 = sub_29D6C2364(v58, v60, v90);

      *(v52 + 14) = v61;
      _os_log_impl(&dword_29D677000, v50, v51, "[%s] Cannot proceed due to generic onboarding ineligibility (%s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v53, -1, -1);
      MEMORY[0x29ED6BE30](v52, -1, -1);
    }

    v41 = [v49 ineligibilityReasons];
    v42 = 0;
  }

  return a3(v41, v42);
}

uint64_t sub_29D6E7878(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1 == 1)
  {
    v5 = 64;
  }

  else if (a1 == 2)
  {
    a1 = 0;
    v5 = 128;
  }

  else
  {
    v6 = a1;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2BF28);
    v8 = sub_29D937878();
    v9 = sub_29D93A298();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315394;
      v12 = sub_29D93AF08();
      v14 = sub_29D6C2364(v12, v13, &v16);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v6;
      _os_log_impl(&dword_29D677000, v8, v9, "[%s] User encountered notification authorization status other than authorized or denied (%ld), proceeding", v10, 0x16u);
      sub_29D69417C(v11);
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    a1 = 0;
    v5 = 128;
  }

  return a2(a1, v5, a3, a4);
}

uint64_t sub_29D6E7A24()
{
  sub_29D69417C((v0 + 16));
  sub_29D69417C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for AFibBurdenOnboardingStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AFibBurdenOnboardingStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AFibBurdenOnboardingCannotProgressReason(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AFibBurdenOnboardingCannotProgressReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AFibBurdenOnboardingCannotProgressReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_29D6E7C78(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_29D6E7C90(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_29D6E7D00()
{
  if (!qword_2A17B2080)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2080);
    }
  }
}

unint64_t sub_29D6E7D54()
{
  result = qword_2A17B2088;
  if (!qword_2A17B2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2088);
  }

  return result;
}

uint64_t sub_29D6E7DA8()
{
  sub_29D6E7F3C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D693E2C((*v0 + 16), *(*v0 + 40));
  v10 = sub_29D8F1944();
  v9[7] = 0;
  sub_29D6D05A0(0);
  sub_29D6E86B4(&qword_2A1A24AA0, sub_29D6D05A0, MEMORY[0x29EDB8A00]);
  sub_29D938448();

  sub_29D6E86B4(&qword_2A17B2098, sub_29D6E7F3C, MEMORY[0x29EDB88C8]);
  v7 = sub_29D938418();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void sub_29D6E7F3C(uint64_t a1)
{
  if (!qword_2A17B2090)
  {
    sub_29D6D05A0(255);
    sub_29D6E86B4(&qword_2A1A24AA0, sub_29D6D05A0, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9380A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2090);
    }
  }
}

BOOL sub_29D6E7FD0(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      if ((a4 & 0xC0) == 0x40)
      {
        return ((a3 ^ a1) & 1) == 0;
      }
    }

    else if ((a4 & 0xC0) == 0x80 && !a3 && a4 == 128)
    {
      return 1;
    }
  }

  else if (a4 <= 0x3Fu)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (a4 == 1 && a1 == a3)
        {
          return 1;
        }
      }

      else if (a1 <= 2)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            if (a4 == 2 && a3 == 1)
            {
              return 1;
            }
          }

          else if (a4 == 2 && a3 == 2)
          {
            return 1;
          }
        }

        else if (a4 == 2 && !a3)
        {
          return 1;
        }
      }

      else if (a1 > 4)
      {
        if (a1 == 5)
        {
          if (a4 == 2 && a3 == 5)
          {
            return 1;
          }
        }

        else if (a4 == 2 && a3 == 6)
        {
          return 1;
        }
      }

      else if (a1 == 3)
      {
        if (a4 == 2 && a3 == 3)
        {
          return 1;
        }
      }

      else if (a4 == 2 && a3 == 4)
      {
        return 1;
      }
    }

    else if (!a4 && a1 == a3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_29D6E813C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (a4 != 2 || a3 != 1)
        {
          return 0;
        }
      }

      else if (a4 != 2 || a3 != 2)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3)
    {
      return 0;
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      if (a4 != 2 || a3 != 5)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3 != 6)
    {
      return 0;
    }
  }

  else if (a1 == 3)
  {
    if (a4 != 2 || a3 != 3)
    {
      return 0;
    }
  }

  else if (a4 != 2 || a3 != 4)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_29D6E8234(uint64_t result)
{
  if (result == 7)
  {
    return 0;
  }

  if (byte_2A243CF88 == result)
  {
    v1 = 0;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF89 == result)
  {
    v1 = 1u;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF8A == result)
  {
    v1 = 2u;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF8B == result)
  {
    v1 = 3u;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF8C == result)
  {
    v1 = 4u;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF8D == result)
  {
    v1 = 5u;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF8E == result)
  {
    return 7;
  }

  __break(1u);
  return result;
}

void sub_29D6E8304(uint64_t a1)
{
  if (!qword_2A17B20A0)
  {
    sub_29D6E8398();
    sub_29D6E86B4(&qword_2A17B20B0, sub_29D6E8398, MEMORY[0x29EDB8AD8]);
    v1 = sub_29D938388();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B20A0);
    }
  }
}

void sub_29D6E8398()
{
  if (!qword_2A17B20A8)
  {
    v0 = sub_29D938358();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B20A8);
    }
  }
}

uint64_t sub_29D6E8418(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 0x1FF;
  return v3(&v5);
}

void sub_29D6E849C(uint64_t a1)
{
  if (!qword_2A17B20D0)
  {
    sub_29D695734(255, &qword_2A17B20C8, &protocol descriptor for AFibBurdenOnboardingDetailsProviding, 1);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B20D0);
    }
  }
}

uint64_t sub_29D6E8508(uint64_t a1, uint64_t a2)
{
  sub_29D6B805C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6E856C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D6E85E4(uint64_t a1)
{
  if (!qword_2A17B20D8)
  {
    sub_29D6E8668();
    sub_29D695734(255, &qword_2A1A24850, MEMORY[0x29EDC9F18], 1);
    v1 = sub_29D938238();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B20D8);
    }
  }
}

unint64_t sub_29D6E8668()
{
  result = qword_2A17B7B30;
  if (!qword_2A17B7B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B7B30);
  }

  return result;
}

uint64_t sub_29D6E86B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AFibBurdenOnboardingProgressionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 9))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AFibBurdenOnboardingProgressionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_29D6E87A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_29D6E87D0(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AFibBurdenOnboardingWarningReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AFibBurdenOnboardingWarningReason(uint64_t result, unsigned int a2, unsigned int a3)
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