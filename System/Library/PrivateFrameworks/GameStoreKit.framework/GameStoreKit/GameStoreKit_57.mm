void sub_24EBD19C4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = sub_24F91F648();
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v64 = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (!v11)
    {
      return;
    }

    v6 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v12 = *(v11 + v6);
    sub_24E60169C(&v64, v62, &unk_27F237670, &qword_24F989C80);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v6) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_36:
      v12 = sub_24E617130(0, v12[2] + 1, 1, v12);
      *(v11 + v6) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_24E617130((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v12[v15 + 4] = v10;
    *(v11 + v6) = v12;
    swift_endAccess();
    goto LABEL_7;
  }

  v59 = v9;
  v61 = v7;
  v16 = *a1;
  v17 = a1[3];
  *(v1 + qword_27F39CC10) = *a1;

  v18 = *(v1 + *(*v1 + 688));
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  *(v19 + 24) = v16;
  *(v19 + 32) = 65792;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24EBD4BAC;
  *(v20 + 24) = v19;
  aBlock[4] = sub_24E9727C0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_144;
  v21 = _Block_copy(aBlock);
  swift_bridgeObjectRetain_n();

  dispatch_sync(v18, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return;
  }

  if (v17)
  {
    v23 = v17;
    swift_beginAccess();
    v24 = v1[3];
    v60 = v1;
    if (v24)
    {
      swift_beginAccess();

      sub_24EA0A8D8(v25);
      v1 = v60;
      swift_endAccess();

      v26 = v61;
      if (v1[3])
      {
        swift_beginAccess();

        sub_24EA0A904(v27);
        v1 = v60;
        swift_endAccess();
      }
    }

    else
    {

      v26 = v61;
    }

    v28 = *(v1 + *(*v1 + 736));
    if (v28)
    {
      v55 = *(*v1 + 736);
      v29 = *(v28 + 32);
      v57 = v23;
      v12 = *(v23 + 16);
      v11 = v12 + 8;
      v30 = 1 << *(v12 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & v12[8];
      v33 = (v30 + 63) >> 6;
      v10 = (v26 + 48);
      v54 = (v26 + 32);
      swift_bridgeObjectRetain_n();
      v56 = v29;

      v34 = 0;
      v58 = MEMORY[0x277D84F90];
      while (1)
      {
        v35 = v34;
        if (!v32)
        {
          break;
        }

LABEL_23:
        v36 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        sub_24E60169C(*(v12[7] + ((v34 << 9) | (8 * v36))) + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_27F22EC30, &qword_24F939880);
        if ((*v10)(v5, 1, v6) == 1)
        {
          sub_24E601704(v5, &unk_27F22EC30, &qword_24F939880);
        }

        else
        {
          v53 = *v54;
          v53(v59, v5, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_24E616878(0, *(v58 + 2) + 1, 1, v58);
          }

          v37 = v61;
          v39 = *(v58 + 2);
          v38 = *(v58 + 3);
          v40 = v39 + 1;
          if (v39 >= v38 >> 1)
          {
            v52 = v39 + 1;
            v51 = v39;
            v43 = sub_24E616878((v38 > 1), v39 + 1, 1, v58);
            v40 = v52;
            v39 = v51;
            v58 = v43;
          }

          v42 = v58;
          v41 = v59;
          *(v58 + 2) = v40;
          v53(&v42[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v39], v41, v6);
        }
      }

      while (1)
      {
        v34 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v34 >= v33)
        {
          break;
        }

        v32 = v11[v34];
        ++v35;
        if (v32)
        {
          goto LABEL_23;
        }
      }

      v44 = sub_24ED6555C(v58);

      if (v44)
      {
        type metadata accessor for PageRefreshGate(0);
        swift_allocObject();

        v46 = sub_24EA69948(v45);
        *(v60 + v55) = v46;

        v47 = swift_allocObject();
        swift_weakInit();
        swift_beginAccess();
        v48 = *(v46 + 16);
        v49 = *(v46 + 24);
        *(v46 + 16) = sub_24EBD4CA8;
        *(v46 + 24) = v47;

        sub_24E824448(v48, v49);
      }
    }

LABEL_7:
  }
}

void sub_24EBD2160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = v4;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v10[4] = sub_24E9727C0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_578;
  v9 = _Block_copy(v10);

  sub_24EBD4BA0(a1, v4);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_24EBD22F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = v4;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v10[4] = sub_24E9727C0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_264;
  v9 = _Block_copy(v10);

  sub_24EBD4BA0(a1, v4);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_24EBD2488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = v4;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v10[4] = sub_24E9727C0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_524;
  v9 = _Block_copy(v10);

  sub_24EBD4BA0(a1, v4);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_24EBD261C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = v4;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v10[4] = sub_24E9727C0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_420;
  v9 = _Block_copy(v10);

  sub_24EBD4BA0(a1, v4);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_24EBD27B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = v4;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v10[4] = sub_24E9727C0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_368;
  v9 = _Block_copy(v10);

  sub_24EBD4BA0(a1, v4);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_24EBD2944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = v4;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v10[4] = sub_24E9727C0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_199;
  v9 = _Block_copy(v10);

  sub_24EBD4BA0(a1, v4);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_24EBD2AD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = v4;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v10[4] = sub_24E9727C0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_472;
  v9 = _Block_copy(v10);

  sub_24EBD4BA0(a1, v4);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_24EBD2C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = v4;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v10[4] = sub_24E9727C0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_316;
  v9 = _Block_copy(v10);

  sub_24EBD4BA0(a1, v4);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_24EBD2E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = v4;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54C8;
  *(v8 + 24) = v7;
  v10[4] = sub_24E9727C0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_134;
  v9 = _Block_copy(v10);

  sub_24EBD4BA0(a1, v4);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_24EBD2F94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(v2 + *(*v2 + 688));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = v4;
  *(v7 + 33) = 257;
  *(v7 + 35) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EBD54A4;
  *(v8 + 24) = v7;
  v10[4] = sub_24E9727C0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E971290;
  v10[3] = &block_descriptor_82_1;
  v9 = _Block_copy(v10);

  sub_24EBD4BA0(a1, v4);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t sub_24EBD3128@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EBD5384();
  sub_24F922E28();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  v7 = v6[9];
  v8 = MEMORY[0x277D84F90];
  sub_24F0692A4(MEMORY[0x277D84F90], &v17);
  *(a1 + v7) = v17;
  v9 = v6[10];
  *(a1 + v9) = sub_24E60A838(v8);
  v10 = v6[11];
  *(a1 + v10) = sub_24E60A960(v8);
  *(a1 + v6[12]) = MEMORY[0x277D84FA0];
  *&v17 = 0;
  *(&v17 + 1) = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA55CE0);
  sub_24F91F6A8();
  v11 = sub_24F91F668();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x253050C20](v11, v13);

  v15 = *(&v17 + 1);
  v16 = (a1 + v6[13]);
  *v16 = v17;
  v16[1] = v15;
  return result;
}

uint64_t sub_24EBD3C38(uint64_t a1, uint64_t a2)
{
  sub_24E9B7D88(a1, v6);
  v3 = *(*a2 + 704);
  swift_beginAccess();
  sub_24EBD46D4(v6, a2 + v3);
  swift_endAccess();
  sub_24E9B7D88(a2 + v3, v5);
  sub_24F92AD88();
  sub_24E94E128(v5);
  return sub_24E94E128(v6);
}

uint64_t sub_24EBD3D68(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_27F210040 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9287F8();
  v4 = __swift_project_value_buffer(v3, qword_27F2230B8);
  return a2(v4);
}

uint64_t (*sub_24EBD3DD8(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD51F4;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD3E50(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4DB8;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD3EC8(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD50EC;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD3F40(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4FC0;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD3FB8(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4F08;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD4030(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4CB0;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD40A8(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD505C;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD4120(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4E7C;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD4198(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD4BC4;
  *(v2 + 24) = a1;

  return sub_24EBD5700;
}

uint64_t (*sub_24EBD4210(uint64_t a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EBD469C;
  *(v2 + 24) = a1;

  return sub_24EBD46CC;
}

unint64_t sub_24EBD4288(__n128 a1)
{
  result = qword_27F2394E0;
  if (!qword_27F2394E0)
  {
    sub_24F92BE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2394E0);
  }

  return result;
}

uint64_t type metadata accessor for GenericDiffablePagePresenter(uint64_t a1)
{
  result = qword_27F22ABD8;
  if (!qword_27F22ABD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24EBD432C@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27F39BE28);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_24EBD4388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39BE30;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24EBD43E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39BE38;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EBD4440(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39BE38;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EBD4730(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v18 = *(a1 + 16);
  if (!v18)
  {
    return 1;
  }

  v3 = 0;
  v17 = a1 + 32;
  v4 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v5 = *(v17 + v3);
      sub_24F92D068();
      v6 = v5 ? 7304045 : 1701736302;
      v7 = v5 ? 0xE300000000000000 : 0xE400000000000000;
      sub_24F92B218();

      v8 = sub_24F92D0B8();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_4:
    if (++v3 == v18)
    {
      return 1;
    }
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(a2 + 48) + v10) ? 7304045 : 1701736302;
    v13 = *(*(a2 + 48) + v10) ? 0xE300000000000000 : 0xE400000000000000;
    if (v12 == v6 && v13 == v7)
    {
      break;
    }

    v15 = sub_24F92CE08();

    if (v15)
    {
      return 0;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v4 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void sub_24EBD48E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v27 = v6 + 56;

      v11 = 0;
LABEL_13:
      while (v9)
      {
        v12 = v9;
LABEL_19:
        v9 = (v12 - 1) & v12;
        if (*(v6 + 16))
        {
          v14 = *(*(v4 + 48) + (__clz(__rbit64(v12)) | (v11 << 6)));
          sub_24F92D068();
          v15 = v14 ? 7304045 : 1701736302;
          v16 = v14 ? 0xE300000000000000 : 0xE400000000000000;
          sub_24F92B218();

          v26 = v9;
          v17 = sub_24F92D0B8();
          v18 = -1 << *(v6 + 32);
          v19 = v17 & ~v18;
          if ((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
          {
            v25 = v4;
            v20 = ~v18;
            while (1)
            {
              if (*(*(v6 + 48) + v19))
              {
                v21 = 7304045;
              }

              else
              {
                v21 = 1701736302;
              }

              if (*(*(v6 + 48) + v19))
              {
                v22 = 0xE300000000000000;
              }

              else
              {
                v22 = 0xE400000000000000;
              }

              if (v21 == v15 && v22 == v16)
              {

                return;
              }

              v24 = sub_24F92CE08();

              if (v24)
              {
                break;
              }

              v19 = (v19 + 1) & v20;
              if (((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
              {
                v4 = v25;
                v9 = v26;
                goto LABEL_13;
              }
            }

            return;
          }
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return;
        }

        v12 = *(v5 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void sub_24EBD4B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_24EBD1220(v2);
}

double sub_24EBD4BA0(uint64_t a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_24EBD4C14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_24EBD4C54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_24EBD0A4C(v2);
}

uint64_t sub_24EBD4CE0()
{

  return swift_deallocObject();
}

void sub_24EBD4D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_24EBCF2D0(v2);
}

uint64_t sub_24EBD4DF8(__int128 *a1)
{
  v2 = *(a1 + 2);
  v4 = *a1;
  v5 = v2;
  v6 = *(a1 + 24);
  return (*(*v1 + 1200))(&v4);
}

void sub_24EBD4EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_24EBD0278(v2);
}

void sub_24EBD4F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_24EBCEAFC(v2);
}

void sub_24EBD5008(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_24EBCE328(v2);
}

void sub_24EBD50A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_24EBCFAA4(v2);
}

void sub_24EBD5134(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_24EBCDB54(v2);
}

uint64_t objectdestroy_201Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24EBD5224(__int128 *a1)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = v2;
  return (*(*v1 + 1208))(&v4);
}

void sub_24EBD5280(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_24EBCD380(v2);
}

uint64_t objectdestroyTm_28()
{

  sub_24E96513C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24EBD5328(__int128 *a1)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = v2;
  return (*(*v1 + 1176))(&v4);
}

unint64_t sub_24EBD5384()
{
  result = qword_27F22AF18;
  if (!qword_27F22AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF18);
  }

  return result;
}

GameStoreKit::TopShelf::Style_optional __swiftcall TopShelf.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TopShelf.Style.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C6573756F726163;
  }

  else
  {
    return 0x7465736E69;
  }
}

uint64_t sub_24EBD57D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEF736E6F69746341;
  if (v2 != 1)
  {
    v3 = 0xEF736C6961746544;
  }

  if (*a1)
  {
    v4 = 0x6C6573756F726163;
  }

  else
  {
    v4 = 0x7465736E69;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0xEF736E6F69746341;
  if (*a2 != 1)
  {
    v6 = 0xEF736C6961746544;
  }

  if (*a2)
  {
    v7 = 0x6C6573756F726163;
  }

  else
  {
    v7 = 0x7465736E69;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

uint64_t sub_24EBD58C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EBD5980(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EBD5A24()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EBD5AE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEF736E6F69746341;
  if (v2 != 1)
  {
    v4 = 0xEF736C6961746544;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x6C6573756F726163;
  }

  else
  {
    v6 = 0x7465736E69;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t TopShelf.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  TopShelf.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *TopShelf.init(deserializing:using:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v55 = a2;
  v44 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v43 - v6;
  v7 = sub_24F92AC28();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v50 = a1;
  sub_24F928398();
  sub_24EBD6204();
  sub_24F928248();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v51 = v20;
  v52 = v12;
  v20(v18, v12);
  v21 = v57;
  if (v57 == 3)
  {
    v22 = sub_24F92AC38();
    sub_24EBD6600(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v23 = 0x656C797473;
    v23[1] = 0xE500000000000000;
    v23[2] = v44;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D22530], v22);
    swift_willThrow();
    v51(v50, v52);
    type metadata accessor for TopShelf();
    swift_deallocPartialClassInstance();
    (*(v53 + 8))(v55, v54);
    return v3;
  }

  *(v3 + 16) = v57;
  type metadata accessor for TopShelfPromotionItem(0);
  v25 = v3;
  v43 = v3;
  v26 = v50;
  sub_24F928398();
  (*(v53 + 16))(v11, v55, v54);
  sub_24EBD6600(&qword_27F22AF28, type metadata accessor for TopShelfPromotionItem, &protocol conformance descriptor for TopShelfItem);
  sub_24F929548();
  v25[3] = v56;
  sub_24F928398();
  v27 = v45;
  sub_24F9282B8();
  v29 = v51;
  v28 = v52;
  v51(v15, v52);
  v31 = v48;
  v30 = v49;
  v32 = (*(v48 + 48))(v27, 1, v49);
  v24 = v43;
  if (v32 == 1)
  {
    sub_24E8F2EE8(v27);
    v29(v26, v28);
    v33 = MEMORY[0x277D84F90];
    v35 = v54;
    v34 = v55;
    v36 = v53;
LABEL_10:
    v24[4] = v33;
    (*(v36 + 8))(v34, v35);
    return v24;
  }

  v44 = v19;
  (*(v31 + 32))(v46, v27, v30);
  v37 = v47;
  if (v21)
  {
    v38 = type metadata accessor for TopShelfCarouselItem(0);
  }

  else
  {
    v38 = type metadata accessor for TopShelfInsetItem(0);
  }

  v35 = v54;
  v34 = v55;
  v36 = v53;
  v55 = &v43;
  MEMORY[0x28223BE20](v38);
  *(&v43 - 2) = v39;
  *(&v43 - 1) = v34;
  type metadata accessor for TopShelfItem(0);
  v40 = v46;
  v41 = sub_24F92ABB8();
  if (!v37)
  {
    v33 = v41;
    v51(v26, v52);
    (*(v48 + 8))(v40, v49);
    goto LABEL_10;
  }

  type metadata accessor for TopShelf();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_24EBD6204()
{
  result = qword_27F22AF20;
  if (!qword_27F22AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF20);
  }

  return result;
}

uint64_t sub_24EBD627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  (*(v6 + 16))(v8, a3, v5);
  type metadata accessor for TopShelfItem(0);
  sub_24EBD6600(&qword_27F22AF38, type metadata accessor for TopShelfItem, &protocol conformance descriptor for TopShelfItem);
  return sub_24F929548();
}

uint64_t TopShelf.deinit()
{

  return v0;
}

uint64_t TopShelf.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24EBD64F4()
{
  result = qword_27F22AF30;
  if (!qword_27F22AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF30);
  }

  return result;
}

uint64_t *sub_24EBD6548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TopShelf();
  v7 = swift_allocObject();
  result = TopShelf.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBD6600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EBD6648(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 valueWithNewObjectInContext_];
  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v5;
  v7 = type metadata accessor for MSOPageIntent(0);
  v8 = v6;
  *&v32 = sub_24F91F398();
  *(&v32 + 1) = v9;
  v10 = &off_279691000;
  v11 = [v4 valueWithObject:sub_24F92CF68() inContext:a1];
  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_24F92C328();
  v12 = (v2 + *(v7 + 24));
  v13 = v12[1];
  if (v13)
  {
    *&v32 = *v12;
    *(&v32 + 1) = v13;

    v14 = a1;
    v15 = sub_24F92CDE8();
    sub_24EB715C4(&v32);
  }

  else
  {
    v16 = a1;
    v15 = 0;
  }

  v17 = [v4 valueWithObject:v15 inContext:a1];
  swift_unknownObjectRelease();

  if (!v17)
  {
    goto LABEL_21;
  }

  sub_24F92C328();
  v18 = *(v2 + *(v7 + 28));
  if (!v18)
  {
    v32 = 0u;
    v33 = 0u;
    goto LABEL_16;
  }

  v19 = *(v18 + 16);
  if (v19)
  {
    v30 = v4;
    v31 = v8;
    v20 = sub_24EAE678C(v19, 0);
    v21 = sub_24EAE7C84(&v32, v20 + 4, v19, v18);
    v22 = v32;
    swift_bridgeObjectRetain_n();
    sub_24E6586B4(v22);
    if (v21 == v19)
    {
      v4 = v30;
      v8 = v31;
      v10 = &off_279691000;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_19;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_13:
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *(&v33 + 1) = v23;
  *&v32 = v20;

  if (v23)
  {
    v24 = __swift_project_boxed_opaque_existential_1(&v32, v23);
    v25 = *(v23 - 8);
    v26 = MEMORY[0x28223BE20](v24);
    v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    v18 = sub_24F92CDE8();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_1(&v32);
  }

  else
  {
    v18 = 0;
  }

LABEL_16:
  v29 = [v4 v10[249]];
  swift_unknownObjectRelease();
  if (v29)
  {
    sub_24F92C328();

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_24EBD6A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EBD6ACC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MSOPageIntent(uint64_t a1)
{
  result = qword_27F22AF40;
  if (!qword_27F22AF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EBD6BBC(uint64_t a1)
{
  sub_24F91F4A8();
  if (v1 <= 0x3F)
  {
    sub_24EBD6C68();
    if (v2 <= 0x3F)
    {
      sub_24EBD6CB8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EBD6C68()
{
  if (!qword_27F22AF50)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22AF50);
    }
  }
}

void sub_24EBD6CB8(uint64_t a1)
{
  if (!qword_27F22AF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F21E480, &unk_24F944D20);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22AF58);
    }
  }
}

uint64_t sub_24EBD6DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t StatePath<A>.init(_:)(uint64_t a1, __n128 a2)
{
  v3 = sub_24F91FA78();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7.n128_f64[0] = (*(v4 + 16))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_24EBD6F8C(v7);
  v8 = sub_24F92B418();
  v9 = sub_24E8E89B4(v8);

  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0, &qword_24F9664A0);
  sub_24EBD6FE4();
  sub_24F92AD58();
  return (*(v4 + 8))(a1, v3);
}

unint64_t sub_24EBD6F8C(__n128 a1)
{
  result = qword_27F22AF70;
  if (!qword_27F22AF70)
  {
    sub_24F91FA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF70);
  }

  return result;
}

unint64_t sub_24EBD6FE4()
{
  result = qword_27F22AF78;
  if (!qword_27F22AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2214E0, &qword_24F9664A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF78);
  }

  return result;
}

GameStoreKit::FamilyCircleAction::EventType_optional __swiftcall FamilyCircleAction.EventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FamilyCircleAction.EventType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C696D6146646461;
  }

  else
  {
    return 0x6574616974696E69;
  }
}

uint64_t sub_24EBD70F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C696D6146646461;
  }

  else
  {
    v3 = 0x6574616974696E69;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEF7265626D654D79;
  }

  if (*a2)
  {
    v5 = 0x6C696D6146646461;
  }

  else
  {
    v5 = 0x6574616974696E69;
  }

  if (*a2)
  {
    v6 = 0xEF7265626D654D79;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EBD71A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EBD7238(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EBD72B4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EBD7340@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24EBD73A0(uint64_t *a1@<X8>)
{
  v2 = 0x6574616974696E69;
  if (*v1)
  {
    v2 = 0x6C696D6146646461;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF7265626D654D79;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FamilyCircleAction.clientName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_clientName);

  return v1;
}

char *FamilyCircleAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v46 = *v3;
  v5 = sub_24F9285B8();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v51 = a1;
  sub_24F928398();
  v22 = sub_24F928348();
  v24 = v23;
  v47 = v11;
  v25 = v21;
  v26 = *(v11 + 8);
  v26(v25, v10);
  if (v24)
  {
    v27 = &v3[OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_clientName];
    *v27 = v22;
    v27[1] = v24;
    v28 = v51;
    sub_24F928398();
    sub_24EBD7A7C();
    sub_24F928248();
    v26(v18, v10);
    v3[OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_eventType] = v55 & 1;
    sub_24F928398();
    sub_24F9281F8();
    v46 = v26;
    v26(v15, v10);
    v29 = sub_24F928E68();
    v30 = *(v29 - 8);
    v31 = v28;
    if ((*(v30 + 48))(v9, 1, v29) == 1)
    {
      sub_24E601704(v9, qword_27F221C40, &unk_24F967D80);
      v32 = 0;
    }

    else
    {
      v32 = sub_24F928E48();
      (*(v30 + 8))(v9, v29);
    }

    *&v3[OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_additionalParameters] = v32;
    v37 = v48;
    (*(v47 + 16))(v48, v31, v10);
    v39 = v52;
    v38 = v53;
    v40 = v49;
    v41 = v54;
    (*(v52 + 16))(v49, v54, v53);
    v42 = v50;
    v43 = Action.init(deserializing:using:)(v37, v40);
    if (!v42)
    {
      v3 = v43;
    }

    (*(v39 + 8))(v41, v38);
    v46(v31, v10);
  }

  else
  {
    v33 = v26;
    v34 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v35 = 0x614E746E65696C63;
    v36 = v46;
    v35[1] = 0xEA0000000000656DLL;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    v33(v51, v10);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

unint64_t sub_24EBD7A7C()
{
  result = qword_27F22AF80;
  if (!qword_27F22AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF80);
  }

  return result;
}

uint64_t FamilyCircleAction.__allocating_init(clientName:eventType:additionalParameters:actionMetrics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = *a3;
  v16 = (v14 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_clientName);
  *v16 = a1;
  v16[1] = a2;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_eventType) = v15;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_additionalParameters) = a4;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v14 + v17, a5, v18);
  v20 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
  v22 = (v14 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = v14 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v33, &v30);
  if (*(&v31 + 1))
  {
    v24 = v31;
    *v23 = v30;
    *(v23 + 16) = v24;
    *(v23 + 32) = v32;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v29[1] = v25;
    v29[2] = v27;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v19 + 8))(a5, v18);
  sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  return v14;
}

uint64_t FamilyCircleAction.init(clientName:eventType:additionalParameters:actionMetrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a4;
  v11 = sub_24F91F6B8();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *a3;
  v21 = (v6 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_clientName);
  *v21 = a1;
  v21[1] = a2;
  v22 = a5;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_eventType) = v19;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit18FamilyCircleAction_additionalParameters) = v33;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  (*(v18 + 16))(v20, a5, v17);
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  v24 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_24E65E064(v42, &v36);
  if (*(&v37 + 1))
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v31 + 8))(v13, v32);
    v34 = v25;
    v35 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v18 + 8))(v22, v17);
  sub_24E601704(v42, &qword_27F235830, &qword_24F93B8C0);
  v28 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v28 + 32) = v41;
  v29 = v40;
  *v28 = v39;
  *(v28 + 16) = v29;
  sub_24E65E0D4(v16, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  (*(v18 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v6;
}

uint64_t sub_24EBD813C()
{
}

uint64_t FamilyCircleAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t FamilyCircleAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

unint64_t sub_24EBD83C0()
{
  result = qword_27F22AF88;
  if (!qword_27F22AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22AF88);
  }

  return result;
}

uint64_t type metadata accessor for FamilyCircleAction(uint64_t a1)
{
  result = qword_27F22AF90;
  if (!qword_27F22AF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchResultsContextCard.__allocating_init(message:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t SearchResultsContextCard.init(message:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t SearchResultsContextCard.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchResultsContextCard.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchResultsContextCard.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v25[0] = *v4;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F928388();
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  v28 = a1;
  sub_24F928398();
  v17 = *(v8 + 16);
  v27 = a2;
  v17(v10, a2, v7);
  type metadata accessor for LinkableText();
  swift_allocObject();
  v18 = LinkableText.init(deserializing:using:)(v16, v10);
  if (v3)
  {
    (*(v8 + 8))(v27, v7);
    (*(v11 + 8))(v28, v26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[2] = v18;
    v25[1] = type metadata accessor for Action(0);
    v19 = v28;
    sub_24F928398();
    v20 = v27;
    v21 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, v27);
    (*(v8 + 8))(v20, v7);
    v22 = *(v11 + 8);
    v23 = v26;
    v22(v19, v26);
    v22(v13, v23);
    v4[3] = v21;
  }

  return v4;
}

double SearchResultsContextCard.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t SearchResultsContextCard.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F929608();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t SearchResultsContextCard.deinit()
{

  return v0;
}

uint64_t SearchResultsContextCard.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EBD89E0@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 24);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24EBD8B4C(&qword_27F216DE8, 255, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

void *sub_24EBD8A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchResultsContextCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EBD8B4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_24EBD8DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v6 = v4;
  v45 = a1;
  v37 = *v4;
  v43 = sub_24F929AB8();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v35 - v8;
  v9 = sub_24F929158();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  v13 = v49;
  v14 = qword_27F39B498;
  swift_beginAccess();
  v36 = *(v10 + 16);
  v36(v12, &v4[v14], v9);
  type metadata accessor for PendingPageRender(0);
  swift_allocObject();

  v46 = v13;
  v16 = PendingPageRender.init(bag:metricsPipeline:)(v15, v12);
  swift_beginAccess();
  *(v6 + 3) = v16;

  if (v16)
  {
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = &v16[OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider];
    swift_beginAccess();
    *v18 = a3;
    *(v18 + 1) = v17;
  }

  v19 = *(v6 + 3);
  if (v19)
  {
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = (v19 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];
    *v21 = v44;
    v21[1] = v20;

    sub_24E824448(v22, v23);
  }

  swift_beginAccess();
  if (byte_27F22D288 == 1)
  {
    goto LABEL_17;
  }

  v24 = v45;
  if (!v45)
  {
    sub_24F92D1E8();
    sub_24F9286A8();
    if (qword_27F2108A8 != -1)
    {
      swift_once();
    }

    v25 = v38;
    sub_24F92A448();
    v26 = v40;
    sub_24F92A408();
    (*(v39 + 8))(v25, v26);
    v36(v12, &v6[v14], v9);
    sub_24F92A0F8();
    swift_allocObject();
    v24 = sub_24F92A0E8();
  }

  swift_beginAccess();
  *(v6 + 4) = v24;

  v27 = &v6[qword_27F39B480];
  swift_beginAccess();
  v28 = v27[1];
  if (v28 && *(v6 + 4))
  {
    v29 = *v27;
    v30 = qword_27F210658;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = v43;
    __swift_project_value_buffer(v43, qword_27F22E3B8);
    v47 = v29;
    v48 = v28;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v32, qword_27F22E400);
    v33 = v41;
    sub_24F929A48();

    sub_24F92A098();

    (*(v42 + 8))(v33, v31);
  }

  else
  {
LABEL_17:
  }

  return result;
}

uint64_t sub_24EBD94B0@<X0>(char *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030, &unk_24F98A430);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v95 = &v85 - v5;
  v103 = sub_24F929AB8();
  v100 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v85 - v8;
  v10 = sub_24F928818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v88 = v4;
    v89 = v3;
    v94 = a2;
    v101 = *(Strong + qword_27F39B4A0);
    swift_beginAccess();
    sub_24E60169C(v15 + 40, v108, &qword_27F224F98, &unk_24F974A70);
    v16 = v109;
    if (v109)
    {
      v99 = v110;
      v17 = __swift_project_boxed_opaque_existential_1(v108, v109);
      v18 = *(v16 - 8);
      v19 = MEMORY[0x28223BE20](v17);
      v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      swift_unknownObjectRetain();
      sub_24E601704(v108, &qword_27F224F98, &unk_24F974A70);
      sub_24F92AD48();
      (*(v18 + 8))(v21, v16);
      v22 = sub_24F9286C8();
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_24E601704(v108, &qword_27F224F98, &unk_24F974A70);
      v22 = 0;
    }

    v26 = v100;
    v97 = v22;
    v27 = (v15 + qword_27F39B480);
    swift_beginAccess();
    v29 = *v27;
    v28 = v27[1];
    v30 = (v15 + qword_27F39B490);
    swift_beginAccess();
    v31 = v30[1];
    v86 = *v30;
    v32 = qword_27F210278;
    v33 = v101;
    swift_unknownObjectRetain();
    v99 = v28;

    v98 = v31;

    if (v32 != -1)
    {
      swift_once();
    }

    v34 = off_27F229AB8;
    swift_beginAccess();
    v91 = *(v34 + 88);
    v35 = *(*v15 + 192);
    swift_beginAccess();
    sub_24E60169C(v15 + v35, v108, &qword_27F224FA0, &qword_24F975FD0);
    v36 = *(*v15 + 200);
    swift_beginAccess();
    sub_24E60169C(v15 + v36, v107, qword_27F224FA8, &qword_24F974A80);
    swift_beginAccess();
    v37 = v34[18];
    v38 = (v15 + *(*v15 + 216));
    swift_beginAccess();
    v39 = *v38;
    v90 = v38[1];
    v40 = (v15 + *(*v15 + 208));
    swift_beginAccess();
    v41 = *v40;
    v87 = v40[1];
    v96 = v41;
    swift_unknownObjectRetain();
    v100 = v37;

    v92 = v39;
    swift_unknownObjectRetain();
    sub_24F929AA8();
    v42 = qword_27F210660;
    swift_unknownObjectRetain();
    v43 = v33;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
    __swift_project_value_buffer(v44, qword_27F22E3D0);
    v106[0] = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
    v45 = v102;
    sub_24F929A48();
    v46 = *(v26 + 8);
    v47 = v103;
    v46(v9, v103);
    v93 = v43;
    swift_unknownObjectRelease();
    v48 = *(v26 + 32);
    v49 = v45;
    v50 = v46;
    v48(v9, v49, v47);
    if (v99)
    {
      *&v106[0] = v29;
      *(&v106[0] + 1) = v99;
      if (qword_27F210670 != -1)
      {
        swift_once();
      }

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
      __swift_project_value_buffer(v51, qword_27F22E400);
      v52 = v102;
      sub_24F929A48();
      v53 = v103;
      v50(v9, v103);
      v48(v9, v52, v53);
    }

    v54 = v102;
    if (v98)
    {
      *&v106[0] = v86;
      *(&v106[0] + 1) = v98;
      if (qword_27F210678 != -1)
      {
        swift_once();
      }

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
      __swift_project_value_buffer(v55, qword_27F22E418);
      sub_24F929A48();
      v56 = v103;
      v50(v9, v103);
      v48(v9, v54, v56);
    }

    v57 = v48;
    *&v101 = v50;
    LOBYTE(v106[0]) = 0;
    if (qword_27F210680 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
    __swift_project_value_buffer(v58, qword_27F22E430);
    v59 = v102;
    sub_24F929A48();
    v60 = v103;
    v61 = v101;
    (v101)(v9, v103);
    v57(v9, v59, v60);
    if (v97)
    {
      *&v106[0] = v97;
      v62 = v58;
      v63 = v95;
      sub_24F929A78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
      sub_24F929A48();
      v64 = v63;
      v58 = v62;
      (*(v88 + 8))(v64, v89);
      v65 = v103;
      v61(v9, v103);
      v57(v9, v59, v65);
    }

    v66 = v92;
    if (v91 != 2)
    {
      LOBYTE(v106[0]) = v91 & 1;
      if (qword_27F210688 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v58, qword_27F22E448);
      v67 = v102;
      sub_24F929A48();
      v68 = v103;
      v61(v9, v103);
      v57(v9, v67, v68);
    }

    sub_24E60169C(v108, &v104, &qword_27F224FA0, &qword_24F975FD0);
    if (v105)
    {
      sub_24E612C80(&v104, v106);
      v69 = v102;
      if (qword_27F210690 != -1)
      {
        swift_once();
      }

      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
      __swift_project_value_buffer(v70, qword_27F22E460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);
      sub_24F929A48();
      __swift_destroy_boxed_opaque_existential_1(v106);
      v71 = v103;
      v61(v9, v103);
      v57(v9, v69, v71);
    }

    else
    {
      sub_24E601704(&v104, &qword_27F224FA0, &qword_24F975FD0);
      v69 = v102;
    }

    v72 = v66;
    sub_24E60169C(v107, &v104, qword_27F224FA8, &qword_24F974A80);
    v73 = v100;
    if (v105)
    {
      sub_24E612C80(&v104, v106);
      if (qword_27F210698 != -1)
      {
        swift_once();
      }

      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
      __swift_project_value_buffer(v74, qword_27F22E478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);
      sub_24F929A48();
      __swift_destroy_boxed_opaque_existential_1(v106);
      v75 = v103;
      (v101)(v9, v103);
      v57(v9, v69, v75);
      v73 = v100;
      if (!v100)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_24E601704(&v104, qword_27F224FA8, &qword_24F974A80);
      if (!v73)
      {
LABEL_42:
        if (v96)
        {
          *&v106[0] = v96;
          *(&v106[0] + 1) = v87;
          v79 = qword_27F2106A8;
          swift_unknownObjectRetain();
          if (v79 != -1)
          {
            swift_once();
          }

          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058, &unk_24F974C30);
          __swift_project_value_buffer(v80, qword_27F22E4A8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060, &unk_24F98A440);
          sub_24F929A48();
          v81 = v103;
          (v101)(v9, v103);
          swift_unknownObjectRelease();
          v57(v9, v69, v81);
        }

        if (v72)
        {
          *&v106[0] = v72;
          *(&v106[0] + 1) = v90;
          v82 = qword_27F2106A0;
          swift_unknownObjectRetain();
          if (v82 != -1)
          {
            swift_once();
          }

          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
          __swift_project_value_buffer(v83, qword_27F22E490);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
          sub_24F929A48();

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v84 = v103;
          (v101)(v9, v103);
          sub_24E601704(v107, qword_27F224FA8, &qword_24F974A80);
          sub_24E601704(v108, &qword_27F224FA0, &qword_24F975FD0);
          swift_unknownObjectRelease();
          v57(v9, v69, v84);
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();

          sub_24E601704(v107, qword_27F224FA8, &qword_24F974A80);
          sub_24E601704(v108, &qword_27F224FA0, &qword_24F975FD0);
        }

        return (v57)(v94, v9, v103);
      }
    }

    *&v106[0] = v73;
    v76 = qword_27F2106B0;

    if (v76 != -1)
    {
      swift_once();
    }

    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
    __swift_project_value_buffer(v77, qword_27F22E4C0);
    type metadata accessor for Action(0);
    sub_24F929A48();
    v78 = v103;
    (v101)(v9, v103);

    v57(v9, v69, v78);
    goto LABEL_42;
  }

  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v23 = v103;
  v24 = __swift_project_value_buffer(v103, qword_27F22E3B8);
  return (*(v100 + 16))(a2, v24, v23);
}

double sub_24EBDA498(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    *(v3 + 24) = 0;
  }

  return result;
}

double sub_24EBDA510(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(*v3 + 176);
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *v7 >> 62;
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
      sub_24E5FCA4C(v9, v10);
LABEL_20:
      sub_24EB931F0(a1, a2, a3);
      sub_24EB93188(v8, v9, v10);
      sub_24EB93188(a1, a2, a3);
      v18 = *v7;
      v19 = *(v7 + 8);
      v20 = *(v7 + 16);
      sub_24EB931F0(*v7, v19, v20);
      sub_24F92AD88();
      v13 = v18;
      v14 = v19;
      v15 = v20;
      return sub_24EB93188(v13, v14, v15);
    }

    if (v8 == 0x8000000000000000 && (v10 | v9) == 0)
    {
      if (a1 >> 62 != 2 || a1 != 0x8000000000000000 || a3 | a2)
      {
        goto LABEL_20;
      }

      sub_24EB93188(0x8000000000000000, 0, 0);
      v13 = 0x8000000000000000;
    }

    else
    {
      if (a1 >> 62 != 2 || a1 != 0x8000000000000008 || a3 | a2)
      {
        goto LABEL_20;
      }

      sub_24EB93188(0x8000000000000008, 0, 0);
      v13 = 0x8000000000000008;
    }

    v14 = 0;
    v15 = 0;
  }

  else
  {
    if (a1 >> 62)
    {

      goto LABEL_20;
    }

    sub_24EB931F0(*v7, *(v7 + 8), *(v7 + 16));
    sub_24EB931F0(a1, a2, a3);
    sub_24EB93188(v8, v9, v10);
    v13 = a1;
    v14 = a2;
    v15 = a3;
  }

  return sub_24EB93188(v13, v14, v15);
}

char *sub_24EBDA710()
{

  sub_24E601704(v0 + 40, &qword_27F224F98, &unk_24F974A70);
  v1 = qword_27F39B498;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_24EB93188(*(v0 + *(*v0 + 176)), *(v0 + *(*v0 + 176) + 8), *(v0 + *(*v0 + 176) + 16));

  sub_24E601704(v0 + *(*v0 + 192), &qword_27F224FA0, &qword_24F975FD0);
  sub_24E601704(v0 + *(*v0 + 200), qword_27F224FA8, &qword_24F974A80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

char *sub_24EBDA8E0()
{

  sub_24E601704(v0 + 40, &qword_27F224F98, &unk_24F974A70);
  v1 = qword_27F39B498;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_24EBDED8C(*(v0 + *(*v0 + 176)), *(v0 + *(*v0 + 176) + 8), *(v0 + *(*v0 + 176) + 16), *(v0 + *(*v0 + 176) + 24));

  sub_24E601704(v0 + *(*v0 + 192), &qword_27F224FA0, &qword_24F975FD0);
  sub_24E601704(v0 + *(*v0 + 200), qword_27F224FA8, &qword_24F974A80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

BOOL static TopChartsDiffablePagePresenter.SegmentPresentersState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL sub_24EBDAB10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TopChartsDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_24EBDE3C4(a1, a2, a3);

  return v6;
}

uint64_t TopChartsDiffablePagePresenter.init(objectGraph:pageUrl:sidePackedPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24EBDE3C4(a1, a2, a3);

  return v3;
}

uint64_t sub_24EBDAC08(uint64_t a1)
{
  v2 = v1;
  v17[1] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFF0, &qword_24F98A340);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B010, &qword_24F98A408);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14 = qword_27F22AFE8;
  swift_beginAccess();
  sub_24E60169C(v2 + v14, v9, &qword_27F22AFF0, &qword_24F98A340);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &qword_27F22AFF0, &qword_24F98A340);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (a1)
    {
      sub_24F92AD78();
    }

    (*(v11 + 8))(v13, v10);
  }

  if (*(v2 + qword_27F22AFA8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B018, &unk_24F9BEA90);
    sub_24E602068(&qword_27F22B020, &qword_27F22B018, &unk_24F9BEA90, MEMORY[0x277D22570]);

    sub_24F9288B8();
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 56))(v6, v15, 1, v10);
  swift_beginAccess();
  sub_24E61DA68(v6, v2 + v14, &qword_27F22AFF0, &qword_24F98A340);
  return swift_endAccess();
}

uint64_t TopChartsDiffablePagePresenter.pageUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39BE58;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F228530, &unk_24F93C6E0);
}

uint64_t TopChartsDiffablePagePresenter.initialSegmentIndex.getter()
{
  v1 = qword_27F39BE68;
  swift_beginAccess();
  return *(v0 + v1);
}

double TopChartsDiffablePagePresenter.segmentPresenters.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t TopChartsDiffablePagePresenter.segmentPresentersState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_27F39BE78;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24EBDB0D0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_24EBDB124(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27F39BE80);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  sub_24F92AD88();
}

uint64_t TopChartsDiffablePagePresenter.selectedCategoryIndexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39BE88;
  swift_beginAccess();
  v4 = sub_24F91FA78();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

Swift::Void __swiftcall TopChartsDiffablePagePresenter.viewDidAppear()()
{
  swift_beginAccess();
  if (*(v0 + 32))
  {

    sub_24F92A0A8();
  }
}

double TopChartsDiffablePagePresenter.viewWillDisappear(forReason:)(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 32))
  {

    sub_24F92A0B8();
  }

  return result;
}

Swift::Void __swiftcall TopChartsDiffablePagePresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = (v1 + *(*v1 + 176));
  swift_beginAccess();
  v7 = v6 + 1;
  v8 = *v6;
  if ((*v6 >> 62) >= 2 && (v8 == 0x8000000000000000 ? (v9 = *(v6 + 1) == 0) : (v9 = 0), v9))
  {
    *v6 = 0x8000000000000008;
    *v7 = 0;
    v6[2] = 0;
    sub_24EB931F0(0x8000000000000000, 0, 0);
    sub_24EB93188(0x8000000000000000, 0, 0);
    sub_24EBDA510(0x8000000000000000, 0, 0);
    sub_24EB93188(0x8000000000000000, 0, 0);
    if (*(v1 + qword_27F22AFA8))
    {

      TopChartsDiffablePageContentPresenter.fetchPage()();
    }
  }

  else if (ignoringCache)
  {
    v10 = v6[1];
    v11 = v6[2];
    *v6 = 0x8000000000000000;
    *v7 = 0;
    v6[2] = 0;
    sub_24EB931F0(v8, v10, v11);
    sub_24EB93188(v8, v10, v11);
    sub_24EBDA510(v8, v10, v11);
    sub_24EB93188(v8, v10, v11);
    sub_24EBD8DD4(0, &unk_2861E7A78, sub_24EBDED54, sub_24EBDED70);
    v12 = qword_27F39BE58;
    swift_beginAccess();
    sub_24E60169C(v1 + v12, v5, &qword_27F228530, &unk_24F93C6E0);
    v13 = sub_24EBDB5A0(v5);
    sub_24E601704(v5, &qword_27F228530, &unk_24F93C6E0);
    v14 = *(v1 + qword_27F22AFA8);
    *(v1 + qword_27F22AFA8) = v13;

    sub_24EBDAC08(v14);

    TopChartsDiffablePagePresenter.update(ignoringCache:)(1);
  }
}

uint64_t sub_24EBDB5A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-v4];
  v6 = qword_27F39BE58;
  swift_beginAccess();
  sub_24E9CBF30(a1, v1 + v6, &qword_27F228530, &unk_24F93C6E0);
  swift_endAccess();
  v7 = v1[2];
  sub_24E60169C(a1, v5, &qword_27F228530, &unk_24F93C6E0);
  swift_beginAccess();
  v8 = v1[3];
  swift_beginAccess();
  v9 = v1[4];
  type metadata accessor for TopChartsDiffablePageContentPresenter(0);
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v11 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B018, &unk_24F9BEA90);
  swift_allocObject();

  *(v10 + v12) = sub_24F92ADA8();
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = v7;
  sub_24F929158();
  sub_24F928FD8();

  sub_24F92A758();
  sub_24E911D90(v5, v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v10 + v11) = 0;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = v8;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = v9;
  return v10;
}

void sub_24EBDB7C8(uint64_t a1)
{
  v3 = type metadata accessor for PresenterError(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  if (v12 < 0)
  {
    v14 = qword_27F39BE58;
    swift_beginAccess();
    sub_24E60169C(v1 + v14, v5 + *(v3 + 20), &qword_27F228530, &unk_24F93C6E0);
    *v5 = v11;
    swift_beginAccess();
    v15 = v1[3];
    if (v15)
    {
      sub_24EBDED0C(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v16 = swift_allocError();
      sub_24EBDEC38(v5, v17);
      v18 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v19 = *(v15 + v18);
      sub_24EBDED00(v11, v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + v18) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_24E617130(0, v19[2] + 1, 1, v19);
        *(v15 + v18) = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_24E617130((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      v19[v22 + 4] = v16;
      *(v15 + v18) = v19;
      swift_endAccess();
    }

    else
    {
      v33 = v11;
    }

    sub_24EBDED0C(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v34 = swift_allocError();
    sub_24EBDEC38(v5, v35);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = v34 | 0x4000000000000000;
    v38 = (v1 + *(*v1 + 176));
    swift_beginAccess();
    v39 = *v38;
    v40 = v38[1];
    v41 = v38[2];
    *v38 = v37;
    v38[1] = sub_24EBDEC9C;
    v38[2] = v36;

    sub_24EB931F0(v39, v40, v41);
    sub_24EB93188(v39, v40, v41);
    sub_24EBDA510(v39, v40, v41);
    sub_24EB93188(v39, v40, v41);
    sub_24EBDECA4(v5);
  }

  else
  {
    if (v12)
    {
      sub_24EBDBD6C(v11, 1);
      v13 = (v1 + *(*v1 + 176));
    }

    else
    {
      v23 = v8;
      v24 = v1;
      sub_24EBDBD6C(v11, 0);
      swift_beginAccess();
      v25 = v1[3];
      if (v25)
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v27 = v26;
        (*(v7 + 8))(v10, v23);
        v28 = v25 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
        swift_beginAccess();
        *v28 = v27;
        *(v28 + 8) = 0;
        v29 = *(v25 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
        swift_beginAccess();
        *(v29 + 40) = 1;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }

        v1 = v24;
      }

      v13 = (v1 + *(*v1 + 176));
    }

    swift_beginAccess();
    v30 = *v13;
    v31 = v13[1];
    v32 = v13[2];
    v13[1] = 0;
    v13[2] = 0;
    *v13 = v11;
    sub_24EBDED00(v11, v12);
    sub_24EB931F0(v30, v31, v32);
    sub_24EB93188(v30, v31, v32);
    sub_24EBDA510(v30, v31, v32);
    sub_24EB93188(v30, v31, v32);
  }
}

uint64_t sub_24EBDBD6C(uint64_t a1, int a2)
{
  v3 = v2;
  v96 = a2;
  v5 = sub_24F91F648();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_24F928188();
  v116 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92BEE8();
  v9 = *(v8 - 8);
  v114 = v8;
  v115 = v9;
  MEMORY[0x28223BE20](v8);
  v113 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24F92BE88();
  MEMORY[0x28223BE20](v112);
  v111 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DC8();
  MEMORY[0x28223BE20](v12 - 8);
  v110 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v117 = &v90 - v15;
  v16 = sub_24F91FA78();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for TopChartsPage(0);
  *(&v122 + 1) = v94;
  v123 = &protocol witness table for BasePage;
  v93 = sub_24EBDED0C(&qword_27F22B030, type metadata accessor for TopChartsPage, &protocol conformance descriptor for BasePage);
  v124 = v93;
  *&v121 = a1;
  swift_beginAccess();

  sub_24E9CBF30(&v121, (v2 + 40), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24F2F0038();
  sub_24E601704(&v121, &qword_27F224F98, &unk_24F974A70);
  v21 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title);
  v20 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_title + 8);
  v22 = &v3[qword_27F39BE60];
  swift_beginAccess();
  *v22 = v21;
  *(v22 + 1) = v20;

  v23 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_initialSegmentIndex);
  v24 = qword_27F39BE68;
  swift_beginAccess();
  *&v3[v24] = v23;
  v25 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle);
  v26 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categoriesButtonTitle + 8);
  v27 = &v3[qword_27F39BE80];
  swift_beginAccess();
  *v27 = v25;
  *(v27 + 1) = v26;

  *&v121 = v25;
  *(&v121 + 1) = v26;

  sub_24F92AD88();

  v28 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId + 8);
  v29 = &v3[qword_27F22AFD8];
  *v29 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_genreId);
  *(v29 + 1) = v28;

  v30 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId + 8);
  v31 = &v3[qword_27F22AFE0];
  *v31 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_ageBandId);
  *(v31 + 1) = v30;

  v32 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_categories);
  v33 = qword_27F22AFC0;
  swift_beginAccess();
  *&v3[v33] = v32;

  *&v121 = *&v3[v33];

  sub_24F92AD88();

  v35 = sub_24EBDCECC(v34);

  MEMORY[0x2530453D0](v35);
  v36 = qword_27F39BE88;
  swift_beginAccess();
  (*(v17 + 40))(&v3[v36], v19, v16);
  swift_endAccess();
  v95 = a1;
  v37 = *(a1 + OBJC_IVAR____TtC12GameStoreKit13TopChartsPage_segments);
  if (v37 >> 62)
  {
    v38 = sub_24F92C738();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    v119[0] = MEMORY[0x277D84F90];
    result = sub_24F92C978();
    if (v38 < 0)
    {
      __break(1u);
      return result;
    }

    v106 = sub_24E74EC40();
    v41 = &v3[qword_27F39B490];
    v42 = *(v3 + 2);
    v103 = v37 & 0xC000000000000001;
    v104 = v42;
    v102 = "commonOnboardingStatus";
    swift_beginAccess();
    swift_beginAccess();
    v105 = v41;
    swift_beginAccess();
    v43 = v37;
    v44 = 0;
    v101 = (v115 + 104);
    v97 = (v116 + 8);
    v100 = *MEMORY[0x277D85260];
    v107 = v38;
    v108 = v37;
    v109 = v3;
    do
    {
      v116 = v44;
      if (v103)
      {
        v52 = MEMORY[0x253052270](v44, v43);
      }

      else
      {
        v52 = *(v43 + 8 * v44 + 32);
      }

      v54 = *(v3 + 3);
      v53 = *(v3 + 4);
      type metadata accessor for TopChartDiffableSegmentPresenter(0);
      v55 = swift_allocObject();
      v56 = (v55 + qword_27F39C068);
      *v56 = 0;
      v56[1] = 0;
      v57 = (v55 + qword_27F39C070);
      *v57 = 0;
      v57[1] = 0;
      *(v55 + qword_27F22BCD8) = v52;
      v59 = *(v52 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName);
      v58 = *(v52 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shortName + 8);
      swift_beginAccess();
      *v56 = v59;
      v56[1] = v58;
      v61 = *(v52 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName);
      v60 = *(v52 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_longName + 8);
      swift_beginAccess();
      *v57 = v61;
      v57[1] = v60;
      *(v55 + qword_27F22BCC8) = v54;
      *(v55 + qword_27F22BCD0) = v53;
      v62 = sub_24F91F4A8();
      v63 = *(*(v62 - 8) + 56);

      v63(v117, 1, 1, v62);
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
      *(v55 + qword_27F39CC00) = 0;
      *(v55 + qword_27F39CC10) = MEMORY[0x277D84F90];
      *(v55 + qword_27F2326C8) = 0;
      v64 = *(*v55 + 640);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACC0, &unk_24F98A450);
      v66 = *(*(v65 - 8) + 56);
      v66(v55 + v64, 1, 1, v65);
      v67 = *(*v55 + 648);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
      (*(*(v68 - 8) + 56))(v55 + v67, 1, 1, v68);
      v69 = *(*v55 + 656);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACB0, &qword_24F98A460);
      (*(*(v70 - 8) + 56))(v55 + v69, 1, 1, v70);
      v66(v55 + *(*v55 + 664), 1, 1, v65);
      v71 = *(*v55 + 672);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
      (*(*(v72 - 8) + 56))(v55 + v71, 1, 1, v72);
      v73 = *(*v55 + 680);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
      (*(*(v74 - 8) + 56))(v55 + v73, 1, 1, v74);
      v75 = *(*v55 + 688);

      v115 = v54;

      sub_24F927DA8();
      v118 = MEMORY[0x277D84F90];
      sub_24EBDED0C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
      sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
      sub_24F92C6A8();
      (*v101)(v113, v100, v114);
      *(v55 + v75) = sub_24F92BF38();
      sub_24EBD3128(v55 + *(*v55 + 696));
      v76 = (v55 + *(*v55 + 704));
      *v76 = 0u;
      v76[1] = 0u;
      *(v76 + 25) = 0u;
      v77 = *(*v55 + 712);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
      swift_allocObject();
      *(v55 + v77) = sub_24F92ADA8();
      v78 = *(*v55 + 720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
      swift_allocObject();
      *(v55 + v78) = sub_24F92ADA8();
      v79 = *(*v55 + 728);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
      swift_allocObject();
      *(v55 + v79) = sub_24F92ADA8();
      *(v55 + *(*v55 + 736)) = 0;
      v80 = (v55 + *(*v55 + 752));
      *v80 = 0;
      v80[1] = 0;
      sub_24E60169C(v117, v55 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
      sub_24E60169C(&v121, v55 + *(*v55 + 744), &qword_27F229490, &unk_24F984C40);
      v81 = type metadata accessor for InlineUnifiedMessagePresenter();
      v120.receiver = objc_allocWithZone(v81);
      v120.super_class = v81;
      *(v55 + qword_27F39CC08) = objc_msgSendSuper2(&v120, sel_init);
      if (v53)
      {
        sub_24F92A0F8();
        v118 = v53;

        v82 = v98;
        sub_24F928168();
        v45 = sub_24F928F88();
        (*v97)(v82, v99);
      }

      else
      {
        v45 = v104;
      }

      v46 = v116;
      v47 = sub_24EBBA0E0(v45, 0, 0, 0);
      v44 = v46 + 1;
      v48 = *(*v47 + 1112);

      *(v47 + qword_27F39CC00) = v48(v52);

      sub_24EBC6C24(0);

      sub_24E601704(&v121, &qword_27F229490, &unk_24F984C40);
      sub_24E601704(v117, &qword_27F228530, &unk_24F93C6E0);
      v50 = *v105;
      v49 = *(v105 + 1);
      v51 = (v47 + qword_27F39B490);
      swift_beginAccess();
      *v51 = v50;
      v51[1] = v49;

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v43 = v108;
      v3 = v109;
    }

    while (v107 != v44);
    v39 = v119[0];
  }

  v83 = qword_27F39BE70;
  swift_beginAccess();
  *&v3[v83] = v39;

  v84 = v96;
  v85 = v96 & 1;
  v86 = qword_27F39BE78;
  swift_beginAccess();
  v3[v86] = v85;
  *&v121 = *&v3[v83];

  sub_24F92AD88();

  if (v84)
  {
    swift_beginAccess();
    if (*(v3 + 3))
    {

      v87 = v90;
      sub_24F91F638();
      sub_24F91F5E8();
      v89 = v88;
      (*(v91 + 8))(v87, v92);
      PendingPageRender.initialRequestEndTime.setter(v89, 0);
    }
  }

  result = swift_beginAccess();
  if (*(v3 + 3))
  {
    v123 = &protocol witness table for BasePage;
    v124 = v93;
    *(&v122 + 1) = v94;
    *&v121 = v95;

    PendingPageRender.use(pageRenderEventFrom:)(&v121);

    return sub_24E601704(&v121, &qword_27F224F98, &unk_24F974A70);
  }

  return result;
}

double sub_24EBDCE70(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    TopChartsDiffablePagePresenter.update(ignoringCache:)(1);
  }

  return result;
}

uint64_t sub_24EBDCECC(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_34:
    v4 = sub_24F92C738();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = (v1 + qword_27F22AFE0);
      v19 = (v1 + qword_27F22AFD8);
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x253052270](v5, a1);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_24F93DE60;
            *(v16 + 32) = v5;
            v20 = v16;
            sub_24EA0B3B4(v2);

            return v20;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v7 = *(a1 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_30;
          }
        }

        v2 = sub_24EBDCECC(v9);

        if (*(v2 + 16))
        {
          goto LABEL_31;
        }

        v10 = v4;

        v11 = 0;
        v2 = v6[1];
        v12 = v7[5];
        v13 = (v2 | v12) == 0;
        if (v2 && v12)
        {
          if (*v6 == v7[4] && v2 == v12)
          {
            v11 = 1;
            v13 = 1;
          }

          else
          {
            v11 = sub_24F92CE08();
            v13 = v11;
          }
        }

        v14 = v19[1];
        v15 = v7[3];
        if (v14)
        {
          if (v15)
          {
            if (*v19 == v7[2] && v14 == v15)
            {
              if ((v11 | v13))
              {
                goto LABEL_32;
              }
            }

            else if ((v11 | sub_24F92CE08() & v13))
            {
              goto LABEL_32;
            }

            goto LABEL_5;
          }
        }

        else if (!v15)
        {
          if (v13)
          {
            goto LABEL_32;
          }

          goto LABEL_5;
        }

        if (v2 && v13)
        {
LABEL_32:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_24F93DE60;
          *(v18 + 32) = v5;

          return v18;
        }

LABEL_5:

        ++v5;
        v4 = v10;
      }

      while (v8 != v10);
    }
  }

  return MEMORY[0x277D84F90];
}

double TopChartsDiffablePagePresenter.update(toCategoryAt:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_24EBDD2F0(a1, v4);
  if (v7)
  {
    v9 = v7;
    v10 = OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_url;
    v11 = sub_24F91F4A8();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v6, v9 + v10, v11);
    (*(v12 + 56))(v6, 0, 1, v11);
    v13 = qword_27F39BE58;
    swift_beginAccess();
    sub_24E61DA68(v6, v1 + v13, &qword_27F228530, &unk_24F93C6E0);
    swift_endAccess();
    TopChartsDiffablePagePresenter.update(ignoringCache:)(1);
  }

  return result;
}

uint64_t sub_24EBDD2F0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0, &qword_24F98A328);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8, &qword_24F98A330);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = qword_27F22AFC0;
  swift_beginAccess();
  v17 = *(v3 + v16);
  v18 = *(v6 + 16);
  v32 = a1;
  v18(v11, a1, v5);
  (*(v6 + 32))(v8, v11, v5);
  v19 = MEMORY[0x277CC9AF8];
  sub_24EBDED0C(&qword_27F22AF70, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B20]);

  sub_24F92B3F8();
  v31 = *(v13 + 44);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8, &qword_24F98A338) + 36);
  sub_24EBDED0C(&qword_27F22AFD0, v19, MEMORY[0x277CC9B30]);
  sub_24F92BC08();
  if (*&v15[v20] == v33[0])
  {
    v21 = 0;
LABEL_3:
    *&v15[v31] = v21;
    sub_24E601704(v15, &qword_27F22AFB8, &qword_24F98A330);

    return 0;
  }

  else
  {
    v21 = 0;
    while (1)
    {
      v23 = sub_24F92BC88();
      v25 = *v24;
      v23(v33, 0);
      sub_24F92BC18();
      ++v21;
      result = sub_24F91FA28();
      if (v21 >= result)
      {
        break;
      }

      swift_beginAccess();
      v26 = *(v3 + v16);
      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x253052270](v25);
        swift_endAccess();
        v17 = *(v28 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v29 = MEMORY[0x253052270](v25, v17);
LABEL_17:

          sub_24E601704(v15, &qword_27F22AFB8, &qword_24F98A330);
          return v29;
        }

        if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v27 = *(v26 + 8 * v25 + 32);
        swift_endAccess();
        v17 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      if (*&v15[v20] == v33[0])
      {
        goto LABEL_3;
      }
    }

    *&v15[v31] = v21;
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v17 + 8 * v25 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t TopChartsDiffablePagePresenter.categoryCount(at:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_24F91FA78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB0, &qword_24F98A328);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29[-1] - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFB8, &qword_24F98A330);
  MEMORY[0x28223BE20](v28);
  v13 = &v29[-1] - v12;
  v14 = qword_27F22AFC0;
  swift_beginAccess();
  v15 = *(v3 + v14);
  (*(v6 + 16))(v11, a1, v5);
  (*(v6 + 32))(v8, v11, v5);
  v16 = MEMORY[0x277CC9AF8];
  sub_24EBDED0C(&qword_27F22AF70, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B20]);

  sub_24F92B3F8();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AFC8, &qword_24F98A338) + 36);
  sub_24EBDED0C(&qword_27F22AFD0, v16, MEMORY[0x277CC9B30]);
  sub_24F92BC08();
  if (*&v13[v17] != v29[0])
  {
    v21 = 0;
    while (1)
    {

      v22 = sub_24F92BC88();
      v24 = *v23;
      v22(v29, 0);
      sub_24F92BC18();
      v18 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      swift_beginAccess();
      v25 = *(v3 + v14);
      if ((v25 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x253052270](v24);
        swift_endAccess();
        v15 = *(v27 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v26 = *(v25 + 8 * v24 + 32);
        swift_endAccess();
        v15 = *(v26 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
      }

      sub_24F92BC08();
      ++v21;
      if (*&v13[v17] == v29[0])
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = 0;
LABEL_3:
  *&v13[*(v28 + 36)] = v18;
  sub_24E601704(v13, &qword_27F22AFB8, &qword_24F98A330);
  if (v15 >> 62)
  {
LABEL_18:
    v19 = sub_24F92C738();
    goto LABEL_5;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  return v19;
}

uint64_t TopChartsDiffablePagePresenter.categoryTitle(at:)(uint64_t a1, __n128 a2)
{
  v2 = sub_24EBDD2F0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName + 8))
  {
    v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName);
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName);
  }

  return v3;
}

uint64_t TopChartsDiffablePagePresenter.categoryArtwork(at:)(uint64_t a1, __n128 a2)
{
  v2 = sub_24EBDD2F0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork);

  return v3;
}

uint64_t TopChartsDiffablePagePresenter.hasChildren(at:)(uint64_t a1, __n128 a2)
{
  result = sub_24EBDD2F0(a1, a2);
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
    if (v3 >> 62)
    {
      v4 = sub_24F92C738();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v4 > 0;
  }

  return result;
}

uint64_t TopChartsDiffablePagePresenter.isCategorySelected(at:)(uint64_t a1, __n128 a2)
{
  v2 = sub_24EBDD2F0(a1, a2);
  v3 = sub_24EBDDCC8(v2);

  return v3 & 1;
}

uint64_t sub_24EBDDCC8(void *a1)
{
  v2 = *(v1 + qword_27F22AFE0 + 8);
  if (!a1)
  {
    v7 = v2 == 0;
    LOBYTE(v9) = v2 == 0;
    v10 = v2 == 0;
    if (*(v1 + qword_27F22AFD8 + 8))
    {
      goto LABEL_26;
    }

    if (!v2)
    {
      return v10 & 1;
    }

LABEL_35:
    if ((v10 & 1) == 0)
    {
      return v10 & 1;
    }

    goto LABEL_36;
  }

  v4 = *(v1 + qword_27F22AFE0);
  v6 = a1[4];
  v5 = a1[5];
  v7 = v2 == 0;

  if (v2)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4 == v6 && v2 == v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_24F92CE08();
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = 1;
LABEL_17:
  v11 = *(v1 + qword_27F22AFD8);
  v12 = *(v1 + qword_27F22AFD8 + 8);
  v14 = a1[2];
  v13 = a1[3];

  if (!v12)
  {
    if (v13)
    {

      goto LABEL_26;
    }

    v10 = v9;
    if (!v2)
    {
      return v10 & 1;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    if (v11 == v14 && v12 == v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_24F92CE08();
    }

    if (!v2 || ((v9 ^ 1) & 1) != 0)
    {
      v10 = v16 & v9;
      return v10 & 1;
    }

LABEL_36:
    v10 = 1;
    return v10 & 1;
  }

LABEL_26:
  v10 = 0;
  if (!v7 && (v9 & 1) != 0)
  {
    goto LABEL_36;
  }

  return v10 & 1;
}

uint64_t sub_24EBDDE84()
{
  sub_24E601704(v0 + qword_27F39BE58, &qword_27F228530, &unk_24F93C6E0);

  v1 = qword_27F39BE88;
  v2 = sub_24F91FA78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return sub_24E601704(v0 + qword_27F22AFE8, &qword_27F22AFF0, &qword_24F98A340);
}

char *TopChartsDiffablePagePresenter.deinit()
{
  v0 = sub_24EBDA710();
  sub_24E601704(&v0[qword_27F39BE58], &qword_27F228530, &unk_24F93C6E0);

  v1 = qword_27F39BE88;
  v2 = sub_24F91FA78();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  sub_24E601704(&v0[qword_27F22AFE8], &qword_27F22AFF0, &qword_24F98A340);
  return v0;
}

uint64_t TopChartsDiffablePagePresenter.__deallocating_deinit()
{
  TopChartsDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EBDE17C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_27F39BE88;
  swift_beginAccess();
  v5 = sub_24F91FA78();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_24EBDE22C(uint64_t a1, __n128 a2)
{
  v2 = sub_24EBDD2F0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName + 8))
  {
    v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_longName);
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_shortName);
  }

  return v3;
}

uint64_t sub_24EBDE2B8(uint64_t a1, __n128 a2)
{
  v2 = sub_24EBDD2F0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_artwork);

  return v3;
}

uint64_t sub_24EBDE310(uint64_t a1, __n128 a2)
{
  result = sub_24EBDD2F0(a1, a2);
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC12GameStoreKit16TopChartCategory_children);
    if (v3 >> 62)
    {
      v4 = sub_24F92C738();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v4 > 0;
  }

  return result;
}

uint64_t sub_24EBDE388(uint64_t a1, __n128 a2)
{
  v2 = sub_24EBDD2F0(a1, a2);
  v3 = sub_24EBDDCC8(v2);

  return v3 & 1;
}

uint64_t sub_24EBDE3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v6 = sub_24F929158();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = &v35 - v9;
  v10 = qword_27F39BE58;
  v11 = sub_24F91F4A8();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  *(v3 + qword_27F22AFA8) = 0;
  v12 = (v3 + qword_27F39BE60);
  v12->_countAndFlagsBits = 0;
  v12->_object = 0;
  *(v3 + qword_27F39BE68) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v3 + qword_27F39BE70) = MEMORY[0x277D84F90];
  *(v3 + qword_27F39BE78) = 2;
  v14 = (v3 + qword_27F39BE80);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v3 + qword_27F22AFD8);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v3 + qword_27F22AFE0);
  *v16 = 0;
  v16[1] = 0;
  *(v3 + qword_27F22AFC0) = v13;
  sub_24F91FA68();
  v17 = qword_27F39BE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B038, &qword_24F98A468);
  swift_allocObject();
  *(v3 + v17) = sub_24F92ADA8();
  v18 = qword_27F39BE98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B040, &qword_24F98A470);
  swift_allocObject();
  *(v3 + v18) = sub_24F92ADA8();
  v19 = qword_27F39BEA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B048, &qword_24F98A478);
  swift_allocObject();
  *(v3 + v19) = sub_24F92ADA8();
  v20 = qword_27F22AFE8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B010, &qword_24F98A408);
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  swift_beginAccess();
  v35 = a2;
  sub_24E9CBF30(a2, v3 + v10, &qword_27F228530, &unk_24F93C6E0);
  swift_endAccess();
  v22._object = 0x800000024FA56020;
  v22._countAndFlagsBits = 0xD000000000000015;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = localizedString(_:comment:)(v22, v23);
  swift_beginAccess();
  *v12 = v24;

  v26 = sub_24EBB9A2C(v25, 0, 0, 0);
  sub_24E60169C(a2, v39, &qword_27F228530, &unk_24F93C6E0);
  swift_beginAccess();
  v27 = *(v26 + 24);
  swift_beginAccess();
  v28 = *(v26 + 32);
  type metadata accessor for TopChartsDiffablePageContentPresenter(0);
  v29 = swift_allocObject();
  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v30 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v31 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B018, &unk_24F9BEA90);
  swift_allocObject();

  v32 = v37;

  *(v29 + v31) = sub_24F92ADA8();
  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = a1;
  sub_24F928FD8();

  v33 = v36;
  sub_24F92A758();

  (*(v38 + 32))(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_metricsPipeline, v33, v6);
  sub_24E911D90(v39, v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v29 + v30) = v32;

  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = v27;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = v28;
  *(v26 + qword_27F22AFA8) = v29;

  sub_24EBDAC08(0);

  sub_24E601704(v35, &qword_27F228530, &unk_24F93C6E0);
  return v26;
}

double sub_24EBDE930@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + qword_27F39BE80);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t type metadata accessor for TopChartsDiffablePagePresenter(uint64_t a1)
{
  result = qword_27F22AFF8;
  if (!qword_27F22AFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EBDE9D8(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    sub_24F91FA78();
    if (v2 <= 0x3F)
    {
      sub_24EBDEB58(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_24EBDEB58(uint64_t a1)
{
  if (!qword_27F22B008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B010, &qword_24F98A408);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22B008);
    }
  }
}

uint64_t sub_24EBDEBCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_24EBDEC04(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_24EBDB7C8(&v2);
}

uint64_t sub_24EBDEC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresenterError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBDECA4(uint64_t a1)
{
  v2 = type metadata accessor for PresenterError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24EBDED00(void *a1, char a2)
{
  if (a2 < 0)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_24EBDED0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24EBDED8C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {

    return sub_24E824448(a2, a3);
  }

  else if (!a4)
  {
  }

  return result;
}

uint64_t PrivacyDefinitionLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t PrivacyDefinitionLayout.Metrics.definitionTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t PrivacyDefinitionLayout.Metrics.bottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t PrivacyDefinitionLayout.Metrics.init(titleTopSpace:definitionTopSpace:bottomMargin:maxTextWidth:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 152) = 0;
  *(a5 + 136) = 0u;
  *(a5 + 120) = 0u;
  v9 = a5 + 120;
  sub_24E612C80(a1, a5);
  sub_24E612C80(a2, a5 + 40);
  sub_24E612C80(a3, a5 + 80);

  return sub_24EA63A70(a4, v9);
}

uint64_t PrivacyDefinitionLayout.init(metrics:titleLabel:definitionLabel:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = a1[7];
  a4[6] = a1[6];
  a4[7] = v6;
  v7 = a1[9];
  a4[8] = a1[8];
  a4[9] = v7;
  v8 = a1[3];
  a4[2] = a1[2];
  a4[3] = v8;
  v9 = a1[5];
  a4[4] = a1[4];
  a4[5] = v9;
  v10 = a1[1];
  *a4 = *a1;
  a4[1] = v10;
  sub_24E612C80(a2, (a4 + 10));

  return sub_24E612C80(a3, a4 + 200);
}

double static PrivacyDefinitionLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v27 = a2;
  v5 = sub_24F9225E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922618();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v25 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E930DFC(a1 + 120, v28);
  v15 = v29;
  if (v29)
  {
    v23 = a1;
    v24 = v9;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_24E8ED7D8(v15);
    a1 = v23;
    v9 = v24;
    sub_24F9223A8();
    (*(v12 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_24E930E6C(v28);
  }

  (*(v6 + 104))(v26, *MEMORY[0x277D22788], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93A400;
  sub_24E615E00(a1, v28);
  v17 = sub_24F9229A8();
  v18 = MEMORY[0x277D228E0];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 40, v28);
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  __swift_allocate_boxed_opaque_existential_1((v16 + 72));
  sub_24F9229B8();
  v19 = v25;
  sub_24F9225F8();
  sub_24F9225D8();
  v21 = v20;
  (*(v9 + 8))(v19, v8);
  return v21;
}

uint64_t PrivacyDefinitionLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EBDF6A8(&v17);
  v11 = v17;
  v12 = v18;
  sub_24E930DFC(v3 + 120, &v17);
  v13 = v19;
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1(&v17, v19);
    sub_24E8ED7D8(v13);
    v14 = sub_24F9223A8();
    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(&v17);
    if (v14 <= a2)
    {
      a2 = v14;
    }
  }

  else
  {
    sub_24E930E6C(&v17);
  }

  LOBYTE(v17) = v11;
  v18 = v12;
  _VerticalFlowLayout.measurements(fitting:in:)(a1, a2, a3);
}

double sub_24EBDF6A8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v3 = MEMORY[0x277D84F90];
  *(a1 + 8) = MEMORY[0x277D84F90];
  v4 = v1[23];
  v5 = v1[24];
  v6 = __swift_project_boxed_opaque_existential_1(v1 + 20, v4);
  *(&v33 + 1) = v4;
  *&v34 = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  sub_24E615E00(&v32, v41);
  sub_24E615E00(v1, v43);
  v42 = 1;
  v46 = 8;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  sub_24E9D682C(v41, &v32);
  v8 = sub_24E617A24(0, 1, 1, v3);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_24E617A24((v9 > 1), v10 + 1, 1, v8);
  }

  sub_24E9D6888(v41);
  *(v8 + 2) = v10 + 1;
  v11 = &v8[136 * v10];
  v12 = v36;
  v14 = v33;
  v13 = v34;
  *(v11 + 5) = v35;
  *(v11 + 6) = v12;
  *(v11 + 3) = v14;
  *(v11 + 4) = v13;
  v16 = v38;
  v15 = v39;
  v17 = v37;
  *(v11 + 20) = v40;
  *(v11 + 8) = v16;
  *(v11 + 9) = v15;
  *(v11 + 7) = v17;
  *(v11 + 2) = v32;
  *(a1 + 8) = v8;
  v18 = v1[28];
  v19 = v1[29];
  v20 = __swift_project_boxed_opaque_existential_1(v1 + 25, v18);
  *(&v33 + 1) = v18;
  *&v34 = *(v19 + 8);
  v21 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v18 - 8) + 16))(v21, v20, v18);
  sub_24E615E00((v1 + 10), v44);
  sub_24E615E00(&v32, v41);
  sub_24E615E00((v1 + 5), v43);
  v42 = 1;
  v46 = 8;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  sub_24E9D682C(v41, &v32);
  v23 = *(v8 + 2);
  v22 = *(v8 + 3);
  if (v23 >= v22 >> 1)
  {
    v8 = sub_24E617A24((v22 > 1), v23 + 1, 1, v8);
  }

  sub_24E9D6888(v41);
  *(v8 + 2) = v23 + 1;
  v24 = &v8[136 * v23];
  v25 = v36;
  v27 = v33;
  v26 = v34;
  *(v24 + 5) = v35;
  *(v24 + 6) = v25;
  *(v24 + 3) = v27;
  *(v24 + 4) = v26;
  v29 = v38;
  v28 = v39;
  v30 = v37;
  *(v24 + 20) = v40;
  *(v24 + 8) = v29;
  *(v24 + 9) = v28;
  *(v24 + 7) = v30;
  result = *&v32;
  *(v24 + 2) = v32;
  *(a1 + 8) = v8;
  return result;
}

uint64_t PrivacyDefinitionLayout.placeChildren(relativeTo:in:)@<X0>(CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, uint64_t x8_0@<X8>)
{
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EBDF6A8(&v23);
  v16 = v23;
  v17 = v24;
  sub_24E930DFC(v6 + 120, &v23);
  v18 = v25;
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(&v23, v25);
    sub_24E8ED7D8(v18);
    v19 = sub_24F9223A8();
    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    v26.origin.x = a2;
    v26.origin.y = a3;
    v26.size.width = a4;
    v26.size.height = a5;
    Width = CGRectGetWidth(v26);
    if (Width >= v19)
    {
      a4 = v19;
    }

    else
    {
      a4 = Width;
    }
  }

  else
  {
    sub_24E930E6C(&v23);
  }

  LOBYTE(v23) = v16;
  v24 = v17;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(x8_0, a2, a3, a4, a5);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_24EBDFB8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_24EBDFBD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EBDFC60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_24EBDFCA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PersonalizationData.msoContext.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24EBDFD34(v2, v3);
}

uint64_t sub_24EBDFD34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 PersonalizationData.msoContext.setter(uint64_t a1)
{
  sub_24EBDFDB8(*v1, v1[1], v1[2], v1[3]);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v4;
  return result;
}

double sub_24EBDFDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double static PersonalizationData.empty.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *PersonalizationDataProvider.__allocating_init(dataSources:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_24EBE147C(a1);

  return v2;
}

void *PersonalizationDataProvider.init(dataSources:)(uint64_t a1)
{
  v1 = sub_24EBE147C(a1);

  return v1;
}

uint64_t sub_24EBDFEBC(char *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213920, &unk_24F989EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = v1;
  v3 = sub_24F45DB90(inited);
  swift_setDeallocating();
  v4 = sub_24EBDFF44(v3);

  return v4;
}

uint64_t sub_24EBDFF44(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);

  v5 = sub_24EBE05BC(v4, a1, sub_24EBE0FE8, sub_24EBE0FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B050, &qword_24F9B0EE0);
  v24 = 0u;
  v25 = 0u;
  result = sub_24F92A988();
  v7 = result;
  if (*(v5 + 2))
  {
    v8 = 0;
    v9 = 1 << v5[32];
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v5 + 7);
    v12 = (v9 + 63) >> 6;
    v13 = &unk_2861E7BB0;
    while (v11)
    {
      v14 = v11;
LABEL_11:
      v11 = (v14 - 1) & v14;
      v16 = *(v2 + 16);
      if (*(v16 + 16))
      {
        result = sub_24E76E444(*(*(v5 + 6) + (__clz(__rbit64(v14)) | (v8 << 6))));
        if (v17)
        {
          v21 = *(v16 + 56);
          v18 = v13;
          v19 = result;
          v23 = swift_allocObject();
          v22 = *(v21 + 16 * v19);
          v13 = v18;
          *(v23 + 16) = v22;
          *(&v25 + 1) = sub_24F929638();
          v26 = MEMORY[0x277D21FB0];
          __swift_allocate_boxed_opaque_existential_1(&v24);
          swift_unknownObjectRetain_n();
          sub_24F929628();
          sub_24EBE17D4();
          v20 = sub_24F92A9B8();

          swift_unknownObjectRelease();

          result = __swift_destroy_boxed_opaque_existential_1(&v24);
          v7 = v20;
        }
      }
    }

    while (1)
    {
      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_14;
      }

      v14 = *&v5[8 * v15 + 56];
      ++v8;
      if (v14)
      {
        v8 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return v7;
  }

  return result;
}

uint64_t sub_24EBE0184(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_24F91EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *a1;
  v19[3] = type metadata accessor for PersonalizationDataProvider();
  v19[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B060, &qword_24F98A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0xD00000000000003ALL;
  *(inited + 40) = 0x800000024FA560B0;
  *(inited + 48) = v9;

  v11 = sub_24E60E3D8(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &qword_27F22B068, &qword_24F98A748);
  if (qword_27F210F50 != -1)
  {
    swift_once();
  }

  v12 = qword_27F23ABD8;
  sub_24E94E17C(v19, v18);
  v13 = v12;
  sub_24E954AC4(v11);

  sub_24F91EB18();
  sub_24E601704(v19, &qword_27F2129B0, &unk_24F945320);
  v14 = [objc_opt_self() defaultCenter];
  v15 = sub_24F91EAF8();
  [v14 postNotification_];

  LOBYTE(v19[0]) = v9;
  sub_24F9280C8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EBE03D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(&v7, ObjectType, a2);
  v6 = v7;
  return sub_24EBE0184(&v6, v4);
}

uint64_t PersonalizationDataProvider.deinit()
{

  return v0;
}

uint64_t PersonalizationDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24EBE04BC(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_24EBE05BC(a1, a2, sub_24EBE0830, sub_24EBE0830);
}

void *sub_24EBE053C(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_24EBE05BC(a1, a2, sub_24EBE0C0C, sub_24EBE0C0C);
}

void *sub_24EBE05BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_24EBE0798(v15, v10, a2, a1, a4);

    MEMORY[0x2530542D0](v15, -1, -1);
  }

  return v13;
}

void *sub_24EBE0798(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

unint64_t *sub_24EBE0830(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_24F92D068();

      sub_24F92B218();
      v26 = sub_24F92D0B8();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24F7A8670(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_24F92D068();

      sub_24F92B218();
      v39 = sub_24F92D0B8();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_24F92CE08() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_24EBE0C0C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_24F92D068();

      sub_24F92B218();
      v26 = sub_24F92D0B8();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24F7A8894(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_24F92D068();

      sub_24F92B218();
      v39 = sub_24F92D0B8();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_24F92CE08() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EBE0FE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_38:
    v28 = 0;
    v29 = v4 + 56;
    v30 = 1 << *(v4 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v56 = 0;
    v58 = v31 & *(v4 + 56);
    v50 = (v30 + 63) >> 6;
    v32 = a4 + 56;
LABEL_42:
    while (v58)
    {
      v33 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
LABEL_49:
      v54 = v33 | (v28 << 6);
      v36 = *(*(v4 + 48) + v54);
      sub_24F92D068();
      if (v36)
      {
        v37 = 7304045;
      }

      else
      {
        v37 = 1701736302;
      }

      if (v36)
      {
        v38 = 0xE300000000000000;
      }

      else
      {
        v38 = 0xE400000000000000;
      }

      sub_24F92B218();

      result = sub_24F92D0B8();
      v39 = a4;
      v40 = -1 << *(a4 + 32);
      v41 = result & ~v40;
      if ((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        while (1)
        {
          v43 = *(*(v39 + 48) + v41) ? 7304045 : 1701736302;
          v44 = *(*(v39 + 48) + v41) ? 0xE300000000000000 : 0xE400000000000000;
          if (v43 == v37 && v44 == v38)
          {
            break;
          }

          v46 = sub_24F92CE08();

          if (v46)
          {
            goto LABEL_71;
          }

          v41 = (v41 + 1) & v42;
          v39 = a4;
          if (((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            v4 = a3;
            goto LABEL_42;
          }
        }

LABEL_71:
        *(v52 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
        v47 = __OFADD__(v56++, 1);
        v4 = a3;
        if (v47)
        {
          __break(1u);
LABEL_74:
          v5 = v56;
          goto LABEL_75;
        }
      }
    }

    v34 = v28;
    while (1)
    {
      v28 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v28 >= v50)
      {
        goto LABEL_74;
      }

      v35 = *(v29 + 8 * v28);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v58 = (v35 - 1) & v35;
        goto LABEL_49;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v9 = *(a4 + 56);
    v7 = a4 + 56;
    v8 = v9;
    v10 = 1 << *(v7 - 24);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v53 = v11 & v8;
    v48 = (v10 + 63) >> 6;
    v49 = v7;
    v57 = a3 + 56;
LABEL_6:
    while (v53)
    {
      v12 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v13 = v12 | (v6 << 6);
      v4 = a3;
      v14 = a4;
LABEL_13:
      v17 = *(*(v14 + 48) + v13);
      sub_24F92D068();
      if (v17)
      {
        v18 = 7304045;
      }

      else
      {
        v18 = 1701736302;
      }

      if (v17)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      sub_24F92B218();

      result = sub_24F92D0B8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      v4 = 1 << v21;
      if (((1 << v21) & *(v57 + 8 * (v21 >> 6))) != 0)
      {
        v55 = v5;
        v23 = ~v20;
        while (1)
        {
          v24 = *(*(a3 + 48) + v21) ? 7304045 : 1701736302;
          v25 = *(*(a3 + 48) + v21) ? 0xE300000000000000 : 0xE400000000000000;
          if (v24 == v18 && v25 == v19)
          {
            break;
          }

          v27 = sub_24F92CE08();

          if (v27)
          {
            goto LABEL_35;
          }

          v21 = (v21 + 1) & v23;
          v22 = v21 >> 6;
          v4 = 1 << v21;
          if ((*(v57 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            v5 = v55;
            goto LABEL_6;
          }
        }

LABEL_35:
        v52[v22] |= v4;
        v5 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
          goto LABEL_38;
        }
      }
    }

    v15 = v6;
    v4 = a3;
    v14 = a4;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v48)
      {
LABEL_75:

        return sub_24F7A8AB8(v52, a2, v5, v4);
      }

      v16 = *(v49 + 8 * v6);
      ++v15;
      if (v16)
      {
        v53 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) | (v6 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24EBE147C(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABC8, &qword_24F989BA8);
  swift_allocObject();
  v1[4] = sub_24F9280D8();
  v4 = *(a1 + 16);
  if (v4)
  {
    v31 = a1;
    v5 = (a1 + 32);
    v6 = MEMORY[0x277D84F98];
    v7 = *(a1 + 16);
    while (1)
    {
      v32 = *v5;
      ObjectType = swift_getObjectType();
      v9 = *(*(&v32 + 1) + 32);
      swift_unknownObjectRetain();
      v9(&v34, ObjectType, *(&v32 + 1));
      v10 = v34;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v6;
      v12 = sub_24E76E444(v10);
      v14 = v6[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

      v18 = v13;
      if (v6[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v22 = v12;
      sub_24E8B3000();
      v12 = v22;
      v6 = v33;
      if ((v18 & 1) == 0)
      {
LABEL_11:
        v6[(v12 >> 6) + 8] |= 1 << v12;
        *(v6[6] + v12) = v10;
        *(v6[7] + 16 * v12) = v32;
        swift_unknownObjectRelease();
        v20 = v6[2];
        v16 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v16)
        {
          goto LABEL_21;
        }

        v6[2] = v21;
        goto LABEL_4;
      }

LABEL_3:
      *(v6[7] + 16 * v12) = v32;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_4:
      ++v5;
      if (!--v7)
      {
        v2 = v1;
        v1[2] = v6;

        v1[3] = sub_24F4434C0(v23);
        v24 = (v31 + 40);
        do
        {
          v25 = *v24;
          v26 = swift_getObjectType();
          v27 = *(v25 + 16);
          swift_unknownObjectRetain();

          v27(v28, &protocol witness table for PersonalizationDataProvider, v26, v25);
          swift_unknownObjectRelease();
          v24 += 2;
          --v4;
        }

        while (v4);
        return v2;
      }
    }

    sub_24E8A27F8(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_24E76E444(v10);
    if ((v18 & 1) != (v19 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  v1[2] = MEMORY[0x277D84F98];

  v1[3] = sub_24F4434C0(v29);
  return v2;
}

uint64_t sub_24EBE1734()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EBE176C(_OWORD *a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (*(v3 + 40))(v7, ObjectType, v3);
}

unint64_t sub_24EBE17D4()
{
  result = qword_27F22B058;
  if (!qword_27F22B058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B050, &qword_24F9B0EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B058);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit10MSOContextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24EBE1994()
{
  result = sub_24F92B098();
  qword_27F22B070 = result;
  return result;
}

id static ArcadePageScrollToShelfNotification.notificationName.getter()
{
  if (qword_27F2103B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22B070;

  return v1;
}

double static TextMeasurable.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, void *a11)
{
  v24[3] = a1;
  v16 = sub_24F922588();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0.0;
  }

  v24[2] = a6;
  sub_24E6C065C();
  v24[0] = a4;
  v24[1] = a7;

  v20 = [a11 traitCollection];
  MEMORY[0x253051BF0](a3, v20);

  sub_24F922578();
  sub_24F922568();
  v22 = v21;
  (*(v17 + 8))(v19, v16);
  return v22;
}

double static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, double a9, double a10)
{
  v35 = a7;
  v36 = a6;
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_24F922378();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F922588();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  sub_24E934D5C(a2, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v24 = a1;
    sub_24E934E3C(v15);
    v25 = v24;
    sub_24F922548();
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_24E6C065C();
    v27 = a1;
    v28 = [a8 traitCollection];
    MEMORY[0x253051BF0](v19, v28);

    sub_24F922558();
    (*(v17 + 8))(v19, v16);
  }

  sub_24F922568();
  v26 = v29;

  (*(v21 + 8))(v23, v20);
  return v26;
}

uint64_t sub_24EBE1F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  refreshed = type metadata accessor for RefreshAppStateUpdateRegistryAction(0);
  v10 = *(refreshed - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  sub_24E862F68(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24EBE28F0(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F98A828;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EBE2170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_24EBE2234;

  return MEMORY[0x28217F228](v4 + 2, v5, v5);
}

uint64_t sub_24EBE2234()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24EBE275C;
  }

  else
  {
    v2 = sub_24EBE2348;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EBE2348()
{
  v22 = v0;
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  v0[11] = v3;
  v4 = *v1;
  v5 = v1[1];
  v6 = sub_24F92B098();
  v7 = [objc_opt_self() applicationProxyForSystemPlaceholder_];

  if (v7)
  {

LABEL_7:
    swift_unknownObjectRelease();
    v16 = v0[6];
    v17 = *MEMORY[0x277D21CA8];
    v18 = sub_24F928AE8();
    (*(*(v18 - 8) + 104))(v16, v17, v18);
    v19 = v0[1];

    return v19();
  }

  v8 = v0[7];
  v21[0] = v4;
  v21[1] = v5;
  v9 = *(v8 + 32);
  if (!sub_24EBE2A90(v3, v2, v21, v9))
  {
    goto LABEL_7;
  }

  v10 = v0[7];
  ObjectType = swift_getObjectType();
  v0[4] = v4;
  v0[5] = v5;
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  v20 = (*(v2 + 80) + **(v2 + 80));
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_24EBE25B0;

  return v20(v0 + 4, v9, v12, v13, ObjectType, v2);
}

uint64_t sub_24EBE25B0()
{

  return MEMORY[0x2822009F8](sub_24EBE26AC, 0, 0);
}

uint64_t sub_24EBE26AC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 48);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_24EBE2790()
{
  result = qword_27F216318;
  if (!qword_27F216318)
  {
    type metadata accessor for RefreshAppStateUpdateRegistryAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216318);
  }

  return result;
}

uint64_t sub_24EBE27F0()
{
  v1 = (type metadata accessor for RefreshAppStateUpdateRegistryAction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EBE28F0(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshAppStateUpdateRegistryAction(0);
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_24EBE2954(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for RefreshAppStateUpdateRegistryAction(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EBE2170(a1, v7, v1 + v6, v4);
}

uint64_t sub_24EBE2A48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

BOOL sub_24EBE2A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  ObjectType = swift_getObjectType();
  v14 = v6;
  v15 = v7;
  (*(a2 + 56))(&v14, ObjectType, a2);
  v10 = v9;
  v11 = swift_getObjectType();
  (*(v10 + 16))(&v14, v11, v10);
  if (v16 >> 60 == 7)
  {
    v12 = [v15 integerValue];
    sub_24E88D2AC(&v14);
    swift_unknownObjectRelease();
    return v12 < a4;
  }

  else
  {
    sub_24E88D2AC(&v14);
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_24EBE2B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F924B38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EBE2C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F924B38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_24EBE2D4C(uint64_t a1)
{
  sub_24F924B38();
  if (v1 <= 0x3F)
  {
    sub_24EBE2DF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EBE2DF0()
{
  if (!qword_27F22B108)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22B108);
    }
  }
}

uint64_t sub_24EBE2E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v55 = a3;
  v4 = sub_24F924E88();
  v39 = v4;
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  v46 = *(a2 + 24);
  v43 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v48 = &v35 - v8;
  v9 = sub_24F924368();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v12 = sub_24F925108();
  v44 = AssociatedTypeWitness;
  v45 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_24F9254C8();
  v40 = v12;
  v13 = sub_24F924038();
  v47 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v60 = WitnessTable;
  v61 = v17;
  v36 = v13;
  v18 = swift_getWitnessTable();
  v38 = v18;
  v37 = sub_24EBE3EA8(&qword_27F22B140, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  v56 = v13;
  v57 = v4;
  v58 = v18;
  v59 = v37;
  v41 = MEMORY[0x277CDE6B0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v35 = &v35 - v23;
  sub_24F924348();
  v24 = v48;
  sub_24F923F58();
  v25 = v15;
  v26 = v44;
  sub_24F926278();
  (*(v51 + 8))(v24, v26);
  (*(v49 + 8))(v11, v50);
  v27 = v52;
  sub_24F9243A8();
  v28 = v36;
  v29 = v39;
  v30 = v38;
  v31 = v37;
  sub_24F9261D8();
  (*(v54 + 8))(v27, v29);
  (*(v47 + 8))(v25, v28);
  v56 = v28;
  v57 = v29;
  v58 = v30;
  v59 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v35;
  sub_24E7896B8();
  v33 = *(v42 + 8);
  v33(v21, OpaqueTypeMetadata2);
  sub_24E7896B8();
  return (v33)(v32, OpaqueTypeMetadata2);
}

uint64_t sub_24EBE3450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v28 = a3;
  v27 = sub_24F924E88();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B110, &qword_24F98A8A0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v12 = &v24 + *(v11 + 36) - v9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B118, &qword_24F98A8A8);
  sub_24F924348();
  v14 = *(v3 + 4);
  v15 = *(a2 + 24);
  v16 = *(type metadata accessor for RoundedRectWithOutsets(0) + 24);
  v17 = sub_24F924B38();
  v18 = *(*(v17 - 8) + 16);
  v19 = *v3;
  v24 = v3[1];
  v25 = v19;
  v18(&v12[v16], v3 + v15, v17);
  v20 = v24;
  *v12 = v25;
  *(v12 + 1) = v20;
  *(v12 + 4) = v14;
  v12[*(v13 + 36)] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B120, &unk_24F98A8B0);
  (*(*(v21 - 8) + 16))(v10, v26, v21);
  sub_24F9243A8();
  sub_24EBE3704();
  sub_24EBE3EA8(&qword_27F22B140, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  v22 = v27;
  sub_24F9261D8();
  (*(v5 + 8))(v7, v22);
  return sub_24EBE37E8(v10);
}

unint64_t sub_24EBE3704()
{
  result = qword_27F22B128;
  if (!qword_27F22B128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B110, &qword_24F98A8A0);
    sub_24E602068(&qword_27F22B130, &qword_27F22B120, &unk_24F98A8B0, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F22B138, &qword_27F22B118, &qword_24F98A8A8, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B128);
  }

  return result;
}

uint64_t sub_24EBE37E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B110, &qword_24F98A8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EBE3864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_24F924B38();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24EBE38F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_24F924B38();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24EBE396C(uint64_t a1)
{
  result = sub_24F924B38();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EBE39F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B110, &qword_24F98A8A0);
  sub_24F924E88();
  sub_24EBE3704();
  sub_24EBE3EA8(&qword_27F22B140, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  return swift_getOpaqueTypeConformance2();
}

double sub_24EBE3AE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = sub_24F924B38();
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + *(a1 + 24));
  sub_24F925AD8();
  result = *&v15;
  v13 = v16;
  *a2 = v15;
  *(a2 + 16) = v13;
  *(a2 + 32) = v17;
  return result;
}

void (*sub_24EBE3C34(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24EBE3CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBE3EA8(qword_27F22B178, type metadata accessor for RoundedRectWithOutsets, &unk_24F98A980);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24EBE3D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBE3EA8(qword_27F22B178, type metadata accessor for RoundedRectWithOutsets, &unk_24F98A980);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24EBE3DE4(uint64_t a1)
{
  v2 = sub_24EBE3EA8(qword_27F22B178, type metadata accessor for RoundedRectWithOutsets, &unk_24F98A980);

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24EBE3EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EBE3F38(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EBE3FC0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void sub_24EBE4118(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_24EBE4348(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShapeHoverEffectModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_24F925108();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24F9254C8();
  sub_24F924038();
  sub_24F924E88();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24EBE3EA8(&qword_27F22B140, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t MediumLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  sub_24EBE4664(a1, a9 + 280);
  sub_24E615E00(a2, a9);
  sub_24E60169C(a3, a9 + 40, &unk_27F22B200, &unk_24F9674C0);
  sub_24E615E00(a4, a9 + 80);
  sub_24E615E00(a5, a9 + 120);
  sub_24E60169C(a6, a9 + 160, &unk_27F22B200, &unk_24F9674C0);
  sub_24E615E00(a7, a9 + 200);
  __swift_project_boxed_opaque_existential_1(a8, a8[3]);
  sub_24F922268();
  __swift_destroy_boxed_opaque_existential_1(a7);
  sub_24E601704(a6, &unk_27F22B200, &unk_24F9674C0);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  sub_24E601704(a3, &unk_27F22B200, &unk_24F9674C0);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_24EBE469C(a1);
  return __swift_destroy_boxed_opaque_existential_1(a8);
}

uint64_t MediumLockupLayout.Metrics.init(artworkSize:artworkMargin:headingSpace:titleSpace:titleWithHeadingRegularSpace:titleWithHeadingShortSpace:subtitleRegularSpace:subtitleShortSpace:tertiaryTitleRegularSpace:tertiaryTitleShortSpace:offerTextRegularSpace:offerTextShortSpace:offerButtonTopMargin:offerButtonBottomMargin:offerButtonSize:layoutMargins:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21)
{
  v33 = *a2;
  *a9 = *a1;
  *(a9 + 8) = v33;
  sub_24E612C80(a3, a9 + 16);
  sub_24E612C80(a4, a9 + 56);
  sub_24E612C80(a5, a9 + 96);
  sub_24E612C80(a6, a9 + 136);
  sub_24E612C80(a7, a9 + 176);
  sub_24E612C80(a8, a9 + 216);
  sub_24E612C80(a16, a9 + 256);
  sub_24E612C80(a17, a9 + 296);
  sub_24E612C80(a18, a9 + 336);
  sub_24E612C80(a19, a9 + 376);
  sub_24E612C80(a20, a9 + 416);
  result = sub_24E612C80(a21, a9 + 456);
  *(a9 + 496) = a10;
  *(a9 + 504) = a11;
  *(a9 + 512) = a12;
  *(a9 + 520) = a13;
  *(a9 + 528) = a14;
  *(a9 + 536) = a15;
  return result;
}

void MediumLockupLayout.Metrics.artworkSize.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

void MediumLockupLayout.Metrics.artworkMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

uint64_t MediumLockupLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t MediumLockupLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return sub_24E612C80(a1, v1 + 56);
}

uint64_t MediumLockupLayout.Metrics.titleWithHeadingRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));

  return sub_24E612C80(a1, v1 + 96);
}

uint64_t MediumLockupLayout.Metrics.titleWithHeadingShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 136));

  return sub_24E612C80(a1, v1 + 136);
}

uint64_t MediumLockupLayout.Metrics.subtitleRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 176));

  return sub_24E612C80(a1, v1 + 176);
}

uint64_t MediumLockupLayout.Metrics.subtitleShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 216));

  return sub_24E612C80(a1, v1 + 216);
}

uint64_t MediumLockupLayout.Metrics.tertiaryTitleRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 256));

  return sub_24E612C80(a1, v1 + 256);
}

uint64_t MediumLockupLayout.Metrics.tertiaryTitleShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 296));

  return sub_24E612C80(a1, v1 + 296);
}

uint64_t MediumLockupLayout.Metrics.offerTextRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 336));

  return sub_24E612C80(a1, v1 + 336);
}

uint64_t MediumLockupLayout.Metrics.offerTextShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 376));

  return sub_24E612C80(a1, v1 + 376);
}

uint64_t MediumLockupLayout.Metrics.offerButtonTopMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 416));

  return sub_24E612C80(a1, v1 + 416);
}

uint64_t MediumLockupLayout.Metrics.offerButtonBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 456));

  return sub_24E612C80(a1, v1 + 456);
}

void MediumLockupLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[64] = a1;
  v4[65] = a2;
  v4[66] = a3;
  v4[67] = a4;
}

uint64_t sub_24EBE5058@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v140 = sub_24F922868();
  v7 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v9 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_24F9227F8();
  v145 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_24F922838();
  v152 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_24F922848();
  v12 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v144 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v137 = &v128 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v128 - v17;
  MEMORY[0x28223BE20](v19);
  v143 = &v128 - v20;
  MEMORY[0x28223BE20](v21);
  v136 = &v128 - v22;
  sub_24E60169C((v3 + 5), &v170, &unk_27F22B200, &unk_24F9674C0);
  if (!*(&v171 + 1))
  {
LABEL_5:
    sub_24E601704(&v170, &unk_27F22B200, &unk_24F9674C0);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
  v23 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(&v170);
  if ((v23 & 1) == 0)
  {
    sub_24E60169C((v4 + 5), &v170, &unk_27F22B200, &unk_24F9674C0);
    if (*(&v171 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
      v154 = sub_24F9221E8();
      __swift_destroy_boxed_opaque_existential_1(&v170);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_6:
  v154 = 0;
LABEL_7:
  __swift_project_boxed_opaque_existential_1(v4 + 25, v4[28]);
  if (sub_24F922238())
  {
    v156 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v4 + 25, v4[28]);
    v156 = sub_24F9221E8();
  }

  __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
  if (sub_24F922238())
  {
    v142 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
    v142 = sub_24F9221E8();
  }

  sub_24E60169C((v4 + 20), &v170, &unk_27F22B200, &unk_24F9674C0);
  if (!*(&v171 + 1))
  {
LABEL_17:
    sub_24E601704(&v170, &unk_27F22B200, &unk_24F9674C0);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
  v24 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(&v170);
  if ((v24 & 1) == 0)
  {
    sub_24E60169C((v4 + 20), &v170, &unk_27F22B200, &unk_24F9674C0);
    if (*(&v171 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
      v155 = sub_24F9221E8();
      __swift_destroy_boxed_opaque_existential_1(&v170);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_18:
  v155 = 0;
LABEL_19:
  v25 = sub_24F92BF78();
  v141 = v9;
  v138 = v18;
  v139 = v7;
  v151 = a1;
  if (v25)
  {
    v153 = 1;
  }

  else
  {
    v153 = sub_24F92BF98();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B258, &unk_24F9A9D10);
  v26 = swift_allocObject();
  v27 = v154;
  v26[32] = v154 & 1;
  v28 = v155;
  v29 = v156 & 1;
  v26[33] = v156 & 1;
  v30 = v28 & 1;
  v26[34] = v28 & 1;
  v31 = MEMORY[0x277D84F90];
  if (v27)
  {
    *&v170 = MEMORY[0x277D84F90];
    sub_24F4581EC(0, 1, 1);
    v31 = v170;
    v33 = *(v170 + 16);
    v32 = *(v170 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_24F4581EC((v32 > 1), v33 + 1, 1);
      v31 = v170;
    }

    *(v31 + 16) = v33 + 1;
    *(v31 + v33 + 32) = 1;
  }

  if (v156)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v170 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24F4581EC(0, *(v31 + 16) + 1, 1);
      v31 = v170;
    }

    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_24F4581EC((v35 > 1), v36 + 1, 1);
      v31 = v170;
    }

    *(v31 + 16) = v36 + 1;
    *(v31 + v36 + 32) = v29;
  }

  if (v155)
  {
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v170 = v31;
    if ((v37 & 1) == 0)
    {
      sub_24F4581EC(0, *(v31 + 16) + 1, 1);
      v31 = v170;
    }

    v39 = *(v31 + 16);
    v38 = *(v31 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_24F4581EC((v38 > 1), v39 + 1, 1);
      v31 = v170;
    }

    *(v31 + 16) = v39 + 1;
    *(v31 + v39 + 32) = v30;
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  v40 = *(v31 + 16);

  if ((sub_24F92BF98() & 1) != 0 && v40 < 2)
  {
    if (v154)
    {
      sub_24E60169C((v4 + 5), &v170, &unk_27F22B200, &unk_24F9674C0);
    }

    else
    {
      v172 = 0;
      v170 = 0u;
      v171 = 0u;
    }

    sub_24E615E00((v4 + 10), &v167);
    sub_24E615E00((v4 + 15), &v164);
    if (v155)
    {
      sub_24E60169C((v4 + 20), &v161, &unk_27F22B200, &unk_24F9674C0);
    }

    else
    {
      v163 = 0;
      v161 = 0u;
      v162 = 0u;
    }

    v44 = 4 - v40;
    if (v156)
    {
      sub_24E615E00((v4 + 25), &v158);
    }

    else
    {
      v160 = 0;
      v158 = 0u;
      v159 = 0u;
    }

    a2[3] = &type metadata for MultilineTextLayout;
    a2[4] = sub_24EBE83DC();
    a2[5] = sub_24EBE8430();
    v45 = swift_allocObject();
    *a2 = v45;
    sub_24E615E00((v4 + 37), v45 + 216);
    sub_24E615E00((v4 + 42), v45 + 256);
    sub_24E615E00((v4 + 57), v45 + 296);
    sub_24E615E00((v4 + 67), v157);
    *(v45 + 336) = 0u;
    *(v45 + 352) = 0u;
    *(v45 + 368) = 0u;
    *(v45 + 384) = 0u;
    *(v45 + 400) = 0u;
    sub_24EA63A70(v157, v45 + 336);
    *(v45 + 416) = 2;
    *(v45 + 424) = v44;
    v46 = v171;
    *(v45 + 16) = v170;
    *(v45 + 32) = v46;
    *(v45 + 48) = v172;
    sub_24E612C80(&v167, v45 + 56);
    result = sub_24E612C80(&v164, v45 + 96);
    v47 = v162;
    *(v45 + 136) = v161;
    *(v45 + 152) = v47;
    *(v45 + 168) = v163;
    v48 = v159;
    *(v45 + 176) = v158;
    *(v45 + 192) = v48;
    *(v45 + 208) = v160;
    return result;
  }

  if (((v40 == 0) & v153) != 0)
  {
    sub_24E615E00((v4 + 10), &v170);
    sub_24E615E00((v4 + 15), &v167);
    sub_24E615E00((v4 + 42), &v164);
    sub_24E615E00((v4 + 57), &v161);
    sub_24E615E00((v4 + 57), &v158);
    v41 = sub_24F922B38();
    v42 = MEMORY[0x277D229C8];
    a2[3] = v41;
    a2[4] = v42;
    a2[5] = MEMORY[0x277D229D0];
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_24F922B28();
  }

  sub_24E60169C((v4 + 5), &v170, &unk_27F22B200, &unk_24F9674C0);
  if (*(&v171 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
    sub_24F922478();
    __swift_destroy_boxed_opaque_existential_1(&v170);
  }

  else
  {
    sub_24E601704(&v170, &unk_27F22B200, &unk_24F9674C0);
  }

  sub_24E60169C((v4 + 5), &v170, &unk_27F22B200, &unk_24F9674C0);
  if (*(&v171 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
    sub_24F922458();
    __swift_destroy_boxed_opaque_existential_1(&v170);
  }

  else
  {
    sub_24E601704(&v170, &unk_27F22B200, &unk_24F9674C0);
  }

  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  sub_24F922458();
  __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
  sub_24F922458();
  sub_24E60169C((v4 + 20), &v170, &unk_27F22B200, &unk_24F9674C0);
  if (*(&v171 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
    sub_24F922478();
    __swift_destroy_boxed_opaque_existential_1(&v170);
  }

  else
  {
    sub_24E601704(&v170, &unk_27F22B200, &unk_24F9674C0);
  }

  sub_24E60169C((v4 + 20), &v170, &unk_27F22B200, &unk_24F9674C0);
  v130 = v12;
  if (*(&v171 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
    sub_24F922458();
    __swift_destroy_boxed_opaque_existential_1(&v170);
  }

  else
  {
    sub_24E601704(&v170, &unk_27F22B200, &unk_24F9674C0);
  }

  sub_24E60169C((v4 + 5), &v167, &unk_27F22B200, &unk_24F9674C0);
  v49 = MEMORY[0x277D22848];
  if (v168)
  {
    sub_24E612C80(&v167, &v170);
    if (v154)
    {
      v50 = *(&v171 + 1);
      v51 = v172;
      v52 = __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
      v168 = v50;
      v169 = *(v51 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v167);
      (*(*(v50 - 8) + 16))(boxed_opaque_existential_1, v52, v50);
      v54 = *v49;
      v55 = v152;
      v57 = v146;
      v56 = v147;
      (*(v152 + 104))(v146, v54, v147);
      v58 = MEMORY[0x277D84F90];
      *&v164 = MEMORY[0x277D84F90];
      sub_24EBE8394(&qword_27F22B210, MEMORY[0x277D22838], MEMORY[0x277D22840]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
      sub_24E8EF568();
      v59 = v148;
      v60 = v150;
      sub_24F92C6A8();
      sub_24F922818();
      (*(v145 + 8))(v59, v60);
      (*(v55 + 8))(v57, v56);
      __swift_destroy_boxed_opaque_existential_1(&v167);
      v61 = sub_24E6179D8(0, 1, 1, v58);
      v63 = v61[2];
      v62 = v61[3];
      if (v63 >= v62 >> 1)
      {
        v61 = sub_24E6179D8((v62 > 1), v63 + 1, 1, v61);
      }

      v61[2] = v63 + 1;
      (*(v130 + 32))(v61 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v63, v136, v149);
      __swift_destroy_boxed_opaque_existential_1(&v170);
      v49 = MEMORY[0x277D22848];
      goto LABEL_70;
    }

    __swift_destroy_boxed_opaque_existential_1(&v170);
    v61 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_24E601704(&v167, &unk_27F22B200, &unk_24F9674C0);
    v61 = MEMORY[0x277D84F90];
    if (v154)
    {
LABEL_70:
      v64 = 52;
      if (v153 & 1 | ((v156 & 1) == 0))
      {
        v64 = 47;
      }

      goto LABEL_75;
    }
  }

  v64 = 42;
LABEL_75:
  sub_24E615E00(&v4[v64], &v170);
  v65 = v4[13];
  v66 = v4[14];
  v67 = __swift_project_boxed_opaque_existential_1(v4 + 10, v65);
  v168 = v65;
  v169 = *(v66 + 8);
  v68 = __swift_allocate_boxed_opaque_existential_1(&v167);
  (*(*(v65 - 8) + 16))(v68, v67, v65);
  v69 = *v49;
  v70 = v152;
  v71 = *(v152 + 104);
  v73 = v146;
  v72 = v147;
  LODWORD(v136) = v69;
  v151 = v152 + 104;
  v135 = v71;
  v71(v146);
  *&v164 = MEMORY[0x277D84F90];
  v74 = sub_24EBE8394(&qword_27F22B210, MEMORY[0x277D22838], MEMORY[0x277D22840]);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
  v76 = sub_24E8EF568();
  v77 = v148;
  v132 = v76;
  v133 = v75;
  v78 = v150;
  v134 = v74;
  sub_24F92C6A8();
  sub_24F922818();
  v128 = *(v145 + 8);
  v128(v77, v78);
  v79 = *(v70 + 8);
  v152 = v70 + 8;
  v131 = v79;
  v79(v73, v72);
  __swift_destroy_boxed_opaque_existential_1(&v167);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v61 = sub_24E6179D8(0, v61[2] + 1, 1, v61);
  }

  v81 = v61[2];
  v80 = v61[3];
  if (v81 >= v80 >> 1)
  {
    v61 = sub_24E6179D8((v80 > 1), v81 + 1, 1, v61);
  }

  v61[2] = v81 + 1;
  v82 = v130 + 32;
  v83 = *(v130 + 32);
  v130 = (*(v130 + 80) + 32) & ~*(v130 + 80);
  v129 = *(v82 + 40);
  v84 = v143;
  v143 = v83;
  (v83)(v61 + v130 + v129 * v81, v84, v149);
  if (v142)
  {
    v85 = 62;
    if (v153 & 1 | (((v156 | v155) & 1) == 0))
    {
      v85 = 57;
    }

    sub_24E615E00(&v4[v85], &v167);
    v86 = v4[18];
    v87 = v4[19];
    v88 = __swift_project_boxed_opaque_existential_1(v4 + 15, v86);
    v165 = v86;
    v166 = *(v87 + 8);
    v89 = __swift_allocate_boxed_opaque_existential_1(&v164);
    (*(*(v86 - 8) + 16))(v89, v88, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260, &qword_24F965BD0);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_24F93DE60;
    sub_24F9227E8();
    *&v161 = v90;
    v91 = v148;
    v92 = v150;
    sub_24F92C6A8();
    v94 = v146;
    v93 = v147;
    v135(v146, v136, v147);
    sub_24F922818();
    v131(v94, v93);
    v95 = v128;
    v128(v91, v92);
    __swift_destroy_boxed_opaque_existential_1(&v164);
    v97 = v61[2];
    v96 = v61[3];
    if (v97 >= v96 >> 1)
    {
      v61 = sub_24E6179D8((v96 > 1), v97 + 1, 1, v61);
    }

    __swift_destroy_boxed_opaque_existential_1(&v167);
    v61[2] = v97 + 1;
    (v143)(v61 + v130 + v97 * v129, v138, v149);
  }

  else
  {
    v95 = v128;
  }

  sub_24E60169C((v4 + 20), &v164, &unk_27F22B200, &unk_24F9674C0);
  if (v165)
  {
    sub_24E612C80(&v164, &v167);
    if (v155)
    {
      v98 = 72;
      if (v153 & 1 | ((((v142 | v156) | v154) & 1) == 0))
      {
        v98 = 67;
      }

      sub_24E615E00(&v4[v98], &v164);
      v99 = v168;
      v100 = v169;
      v101 = __swift_project_boxed_opaque_existential_1(&v167, v168);
      *(&v162 + 1) = v99;
      v163 = *(v100 + 8);
      v102 = __swift_allocate_boxed_opaque_existential_1(&v161);
      (*(*(v99 - 8) + 16))(v102, v101, v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260, &qword_24F965BD0);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_24F93DE60;
      sub_24F9227E8();
      *&v158 = v103;
      v104 = v148;
      v105 = v150;
      sub_24F92C6A8();
      v107 = v146;
      v106 = v147;
      v135(v146, v136, v147);
      sub_24F922818();
      v108 = v107;
      v95 = v128;
      v131(v108, v106);
      v95(v104, v105);
      __swift_destroy_boxed_opaque_existential_1(&v161);
      v110 = v61[2];
      v109 = v61[3];
      if (v110 >= v109 >> 1)
      {
        v61 = sub_24E6179D8((v109 > 1), v110 + 1, 1, v61);
      }

      __swift_destroy_boxed_opaque_existential_1(&v164);
      v61[2] = v110 + 1;
      (v143)(v61 + v130 + v110 * v129, v137, v149);
    }

    __swift_destroy_boxed_opaque_existential_1(&v167);
  }

  else
  {
    sub_24E601704(&v164, &unk_27F22B200, &unk_24F9674C0);
  }

  v111 = 82;
  if (v153 & 1 | ((v154 & 1) == 0))
  {
    v111 = 77;
  }

  sub_24E615E00(&v4[v111], &v167);
  v112 = v4[28];
  v113 = v4[29];
  v114 = __swift_project_boxed_opaque_existential_1(v4 + 25, v112);
  v165 = v112;
  v166 = *(v113 + 8);
  v115 = __swift_allocate_boxed_opaque_existential_1(&v164);
  (*(*(v112 - 8) + 16))(v115, v114, v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260, &qword_24F965BD0);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_24F93DE60;
  sub_24F9227E8();
  *&v161 = v116;
  v117 = v148;
  v118 = v150;
  sub_24F92C6A8();
  v120 = v146;
  v119 = v147;
  v135(v146, v136, v147);
  sub_24F922818();
  v131(v120, v119);
  v95(v117, v118);
  __swift_destroy_boxed_opaque_existential_1(&v164);
  v122 = v61[2];
  v121 = v61[3];
  if (v122 >= v121 >> 1)
  {
    v61 = sub_24E6179D8((v121 > 1), v122 + 1, 1, v61);
  }

  v124 = v140;
  v123 = v141;
  v125 = v139;
  v61[2] = v122 + 1;
  (v143)(v61 + v130 + v122 * v129, v144, v149);
  (*(v125 + 104))(v123, *MEMORY[0x277D22868], v124);
  v165 = sub_24F922418();
  v166 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v164);
  sub_24F922408();
  v126 = sub_24F922888();
  v127 = MEMORY[0x277D22878];
  a2[3] = v126;
  a2[4] = v127;
  a2[5] = MEMORY[0x277D22880];
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_24F922878();
  __swift_destroy_boxed_opaque_existential_1(&v167);
  return __swift_destroy_boxed_opaque_existential_1(&v170);
}

uint64_t MediumLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v129 = a2;
  v123 = sub_24F922938();
  v120 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = &v92 - v11;
  v124 = sub_24F922998();
  v121 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_24F9227B8();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F9227C8();
  v116 = *(v14 - 8);
  v117 = v14;
  MEMORY[0x28223BE20](v14);
  v115 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F9227F8();
  v110 = *(v16 - 8);
  v111 = v16;
  MEMORY[0x28223BE20](v16);
  v108 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_24F922838();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F922868();
  v98 = *(v19 - 8);
  v99 = v19;
  MEMORY[0x28223BE20](v19);
  v125 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F922888();
  v127 = *(v21 - 8);
  v128 = v21;
  MEMORY[0x28223BE20](v21);
  v126 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F92CDB8();
  v94 = *(v23 - 8);
  v95 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24F922A98();
  v100 = *(v26 - 8);
  v101 = v26;
  MEMORY[0x28223BE20](v26);
  v102 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24F922AA8();
  v104 = *(v28 - 8);
  v105 = v28;
  MEMORY[0x28223BE20](v28);
  v103 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F9223F8();
  v31 = *(v30 - 8);
  v96 = v30;
  v97 = v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v92 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v92 - v38;
  sub_24F92C1C8();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [a1 traitCollection];
  sub_24EBE5058(v48, v144);

  v49 = *(v6 + 35);
  v138[0] = a1;
  (*(*v49 + 104))(v139, v138);
  v50 = *v139;
  v51 = *&v139[1];
  v52 = *(v7 + 36);
  v138[0] = a1;
  (*(*v52 + 104))(v139, v138);
  v53 = v139[0];
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 3));
  sub_24F922268();
  v130 = a1;
  v54 = [a1 traitCollection];
  LOBYTE(v48) = sub_24F92BF98();

  if (v48)
  {
    sub_24F9223D8();
    __swift_project_boxed_opaque_existential_1(v143, v143[3]);
    sub_24F9222B8();
    v128 = sub_24F922AE8();
    v140 = v128;
    v141 = MEMORY[0x277D22998];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v139);
    Resize.init(_:size:)(v138, boxed_opaque_existential_1, v50, v51);
    sub_24F9223E8();
    v56 = v96;
    v57 = v97;
    v93 = v39;
    v58 = *(v97 + 8);
    v58(v33, v96);
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_1(v139);
    __swift_project_boxed_opaque_existential_1(v144, v145);
    sub_24F9222B8();
    sub_24F9223E8();
    __swift_destroy_boxed_opaque_existential_1(v139);
    v58(v36, v56);
    __swift_project_boxed_opaque_existential_1(v7 + 30, *(v7 + 33));
    sub_24F9222B8();
    v60 = v7[97];
    v61 = v7[98];
    v62 = v128;
    v140 = v128;
    v63 = MEMORY[0x277D22998];
    v141 = MEMORY[0x277D22998];
    v64 = __swift_allocate_boxed_opaque_existential_1(v139);
    Resize.init(_:size:)(v138, v64, v60, v61);
    (*(v100 + 104))(v102, *MEMORY[0x277D22948], v101);
    v136 = v56;
    v137 = MEMORY[0x277D226E0];
    v65 = __swift_allocate_boxed_opaque_existential_1(v135);
    v66 = v93;
    (*(v57 + 16))(v65, v93, v56);
    v138[3] = v62;
    v138[4] = v63;
    v67 = __swift_allocate_boxed_opaque_existential_1(v138);
    Resize.init(_:size:)(v135, v67, v45, v47);
    v68 = v103;
    sub_24F922AB8();
    v69 = [v130 traitCollection];
    sub_24EBE7594(v69, v41, v43, v45, v47);

    sub_24F922128();
    (*(v104 + 8))(v68, v105);
    v59(v66, v56);
  }

  else
  {
    v70 = *(v7 + 95);
    __swift_project_boxed_opaque_existential_1(v7 + 92, v70);
    sub_24E8ED7D8(v70);
    v71 = sub_24F9223A8();
    (*(v94 + 8))(v25, v95);
    (*(v98 + 104))(v125, *MEMORY[0x277D22870], v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
    sub_24F922848();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    v72 = v71 + v7[98];
    v140 = MEMORY[0x277D85048];
    v141 = MEMORY[0x277D225F8];
    *v139 = v72;
    v74 = v106;
    v73 = v107;
    v75 = v109;
    (*(v107 + 104))(v106, *MEMORY[0x277D22848], v109);
    v138[0] = MEMORY[0x277D84F90];
    sub_24EBE8394(&qword_27F22B210, MEMORY[0x277D22838], MEMORY[0x277D22840]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
    sub_24E8EF568();
    v76 = v108;
    v77 = v111;
    sub_24F92C6A8();
    sub_24F922818();
    (*(v110 + 8))(v76, v77);
    (*(v73 + 8))(v74, v75);
    __swift_destroy_boxed_opaque_existential_1(v139);
    v78 = sub_24F922418();
    v79 = MEMORY[0x277D226F0];
    v140 = v78;
    v141 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(v139);
    sub_24F922408();
    v80 = v126;
    sub_24F922878();
    v81 = v128;
    v140 = v128;
    v141 = MEMORY[0x277D22878];
    v142 = MEMORY[0x277D22880];
    v82 = __swift_allocate_boxed_opaque_existential_1(v139);
    (*(v127 + 16))(v82, v80, v81);
    sub_24E8F997C(v144, v138);
    (*(v112 + 104))(v113, *MEMORY[0x277D22828], v114);
    sub_24E615E00((v7 + 87), v135);
    v83 = v115;
    sub_24F9227A8();
    v84 = v117;
    v140 = v117;
    v141 = MEMORY[0x277D22830];
    v85 = __swift_allocate_boxed_opaque_existential_1(v139);
    v86 = v116;
    (*(v116 + 16))(v85, v83, v84);
    sub_24E615E00(v143, v138);
    v136 = MEMORY[0x277D85048];
    v137 = MEMORY[0x277D225F8];
    v135[0] = v53;
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
    v131[3] = v78;
    v131[4] = v79;
    __swift_allocate_boxed_opaque_existential_1(v131);
    sub_24F922408();
    v87 = *MEMORY[0x277D228C8];
    v88 = *(v120 + 104);
    v89 = v123;
    v88(v119, v87, v123);
    v88(v122, v87, v89);
    v90 = v118;
    sub_24F922978();
    sub_24F922958();
    (*(v121 + 8))(v90, v124);
    (*(v86 + 8))(v83, v84);
    (*(v127 + 8))(v126, v128);
  }

  __swift_destroy_boxed_opaque_existential_1(v143);
  return __swift_destroy_boxed_opaque_existential_1(v144);
}

uint64_t sub_24EBE7594(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_24F922C78();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B238, &unk_24F98AD20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_24F922A88();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v33 - v24;
  sub_24F922AA8();
  sub_24EBE8394(&qword_27F22B240, MEMORY[0x277D22968], MEMORY[0x277D22958]);
  v39 = a1;
  sub_24F9225C8();
  v33 = v25;
  v34 = v17;
  (*(v17 + 16))(v19, v25, v16);
  v26 = MEMORY[0x277D22930];
  sub_24EBE8394(&qword_27F22B248, MEMORY[0x277D22930], MEMORY[0x277D22938]);
  sub_24F92B3F8();
  sub_24EBE8394(&qword_27F22B250, v26, MEMORY[0x277D22940]);
  sub_24F92C4D8();
  v27 = v40;
  v28 = v40 + 48;
  v29 = *(v40 + 48);
  if (v29(v15, 1, v10) != 1)
  {
    v30 = *(v27 + 32);
    v40 = v27 + 32;
    v35 = (v27 + 8);
    v36 = v30;
    v37 = v15;
    v38 = v28;
    do
    {
      v36(v12, v15, v10);
      sub_24F922C58();
      __swift_project_boxed_opaque_existential_1(v41, v41[3]);
      sub_24F922C68();
      [v39 layoutDirection];
      sub_24F92C1E8(a2, a3, a4, a5);
      v15 = v37;
      sub_24F922C38();
      (*v35)(v12, v10);
      __swift_destroy_boxed_opaque_existential_1(v41);
      sub_24F92C4D8();
    }

    while (v29(v15, 1, v10) != 1);
  }

  v31 = *(v34 + 8);
  v31(v22, v16);
  return (v31)(v33, v16);
}

uint64_t sub_24EBE7A40(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EBE8340();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double _s12GameStoreKit18MediumLockupLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(double *a1, void *a2, double a3)
{
  v26 = sub_24F92CDB8();
  v5 = *(v26 - 8);
  *&v6 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 traitCollection];
  v10 = sub_24F92BF98();
  v25 = v5;
  if (v10)
  {
    sub_24E615E00((a1 + 2), v29);
    sub_24E615E00((a1 + 7), v30);
    sub_24E615E00((a1 + 22), v31);
    sub_24E615E00((a1 + 32), v27);
    memset(v32, 0, sizeof(v32));
    sub_24EA63A70(v27, v32);
    v33 = xmmword_24F93A400;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_24F9223B8();
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    sub_24F9223B8();
    sub_24E60169C(&v32[40], v27, &qword_27F22F780, &qword_24F968620);
    if (v28)
    {
      __swift_project_boxed_opaque_existential_1(v27, v28);
      sub_24F9223B8();
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_24E601704(v27, &qword_27F22F780, &qword_24F968620);
    }

    sub_24EBE8534(v29);
  }

  else
  {
    v24 = v9;
    v11 = sub_24F92BF78();
    v12 = *(a1 + 10);
    __swift_project_boxed_opaque_existential_1(a1 + 7, v12);
    v13 = v26;
    sub_24E8ED7D8(v12);
    sub_24F9223A8();
    v14 = *(v5 + 8);
    v14(v8, v13);
    if (v11)
    {
      v15 = *(a1 + 25);
      __swift_project_boxed_opaque_existential_1(a1 + 22, v15);
    }

    else
    {
      v16 = *(a1 + 30);
      __swift_project_boxed_opaque_existential_1(a1 + 27, v16);
      sub_24E8ED7D8(v16);
      sub_24F9223A8();
      v14(v8, v13);
      v15 = *(a1 + 45);
      __swift_project_boxed_opaque_existential_1(a1 + 42, v15);
    }

    sub_24E8ED7D8(v15);
    sub_24F9223A8();
    v14(v8, v13);
    v9 = v24;
  }

  v17 = *(a1 + 55);
  __swift_project_boxed_opaque_existential_1(a1 + 52, v17);
  sub_24E8ED7D8(v17);
  sub_24F9223A8();
  v18 = *(v25 + 8);
  v18(v8, v26);
  v19 = *a1;
  v27[0] = a2;
  (*(*v19 + 104))(v29, v27);
  if (sub_24F92BF98())
  {
    *v29 = a1[1];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a2, v8);
    v18(v8, v26);
  }

  else
  {
    v20 = *(a1 + 60);
    __swift_project_boxed_opaque_existential_1(a1 + 57, v20);
    sub_24E8ED7D8(v20);
    sub_24F9223A8();
    v18(v8, v26);
  }

  sub_24F92C248();
  v22 = v21;

  return v22;
}

unint64_t sub_24EBE8044()
{
  result = qword_27F22B228;
  if (!qword_27F22B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B228);
  }

  return result;
}

uint64_t sub_24EBE80A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 824))
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

uint64_t sub_24EBE80E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 824) = 1;
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

    *(result + 824) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EBE8218(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 544))
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

uint64_t sub_24EBE8260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 536) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 544) = 1;
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

    *(result + 544) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EBE8340()
{
  result = qword_27F22B230;
  if (!qword_27F22B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B230);
  }

  return result;
}

uint64_t sub_24EBE8394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EBE83DC()
{
  result = qword_27F22B268;
  if (!qword_27F22B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B268);
  }

  return result;
}

unint64_t sub_24EBE8430()
{
  result = qword_27F22B270;
  if (!qword_27F22B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B270);
  }

  return result;
}

uint64_t sub_24EBE8484()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  }

  if (v0[25])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  }

  if (v0[30])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  if (v0[45])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  }

  if (v0[50])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  }

  return swift_deallocObject();
}

uint64_t sub_24EBE85A8(uint64_t a1)
{
  v2 = sub_24EBE8734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EBE85E4(uint64_t a1)
{
  v2 = sub_24EBE8734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayActiveCallPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B278, &qword_24F98AD50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBE8734();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EBE8734()
{
  result = qword_27F22B280;
  if (!qword_27F22B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B280);
  }

  return result;
}

uint64_t sub_24EBE87D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B278, &qword_24F98AD50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EBE8734();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EBE8908()
{
  result = qword_27F22B288;
  if (!qword_27F22B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B288);
  }

  return result;
}

unint64_t sub_24EBE8960()
{
  result = qword_27F22B290;
  if (!qword_27F22B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B290);
  }

  return result;
}

uint64_t ArcadeFooter.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeFooter.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ArcadeFooter.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v69 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = v68 - v6;
  v82 = sub_24F9285B8();
  v7 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = v68 - v12;
  v13 = sub_24F91F6B8();
  v81 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v73 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v75 = v68 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v68 - v22;
  sub_24F928398();
  v24 = sub_24F928348();
  v88 = v16;
  if (v25)
  {
    v83 = v24;
    v84 = v25;
    sub_24F92C7F8();
    v26 = *(v17 + 8);
    v81 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27 = v23;
    v28 = v16;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v30 = v13;
    v32 = v31;
    (*(v81 + 8))(v15, v30);
    v83 = v29;
    v84 = v32;
    sub_24F92C7F8();
    v26 = *(v17 + 8);
    v81 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27 = v23;
    v28 = v88;
  }

  v78 = v26;
  v26(v27, v28);
  v76 = a1;
  v33 = v86;
  *(v3 + 3) = v85;
  *(v3 + 4) = v33;
  v3[10] = v87;
  v72 = sub_24F929608();
  v34 = v75;
  sub_24F928398();
  v71 = v7;
  v35 = *(v7 + 16);
  v36 = v79;
  v37 = v82;
  v35(v77, v79, v82);
  v38 = v70;
  sub_24F929548();
  v72 = OBJC_IVAR____TtC12GameStoreKit12ArcadeFooter_impressionMetrics;
  sub_24E65E0D4(v38, v3 + OBJC_IVAR____TtC12GameStoreKit12ArcadeFooter_impressionMetrics);
  v39 = v80;
  v35(v80, v36, v37);
  type metadata accessor for Action(0);
  v40 = v76;
  sub_24F928398();
  v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v34, v39);
  v42 = v78;
  v78(v34, v88);
  v43 = v42;
  v3[2] = v41;
  type metadata accessor for Footnote();
  sub_24F928398();
  v35(v77, v36, v82);
  sub_24EBE99C8(&qword_27F22B298, type metadata accessor for Footnote, &protocol conformance descriptor for Footnote);
  sub_24F929548();
  v3[3] = v85;
  v44 = v73;
  sub_24F928398();
  v45 = v74;
  sub_24F9282B8();
  v43(v44, v88);
  v46 = sub_24F92AC28();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v45, 1, v46);
  if (v48 == 1)
  {
    sub_24E601704(v45, &qword_27F2213B0, &qword_24F965EC0);
    v3[4] = 0;
    v49 = sub_24F92AC38();
    sub_24EBE99C8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v50 = MEMORY[0x277D84F90];
    *v51 = v69;
    v51[1] = v50;
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D22538], v49);
    swift_willThrow();
    v52 = *(v71 + 8);
    v53 = v82;
    v52(v79, v82);
    v78(v40, v88);
    v52(v80, v53);

    sub_24E6585F8((v3 + 6));
    sub_24E601704(v3 + v72, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for ArcadeFooter(0);
    swift_deallocPartialClassInstance();
    return v3;
  }

  v55 = v71;
  v54 = v72;
  MEMORY[0x28223BE20](v48);
  v68[-2] = v80;
  type metadata accessor for ImpressionableArtwork(0);
  v56 = v68[1];
  v57 = sub_24F92ABB8();
  v77 = v56;
  if (!v56)
  {
    v58 = v57;
    (*(v47 + 8))(v45, v46);
    v3[4] = v58;
    v60 = v75;
    v59 = v76;
    sub_24F928398();
    v61 = JSONObject.appStoreColor.getter();
    v62 = *(v55 + 8);
    v63 = v82;
    v62(v79, v82);
    v64 = v59;
    v65 = v88;
    v66 = v78;
    v78(v64, v88);
    v66(v60, v65);
    v3[5] = v61;
    v62(v80, v63);
    return v3;
  }

  sub_24E6585F8((v3 + 6));
  sub_24E601704(v3 + v54, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for ArcadeFooter(0);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ArcadeFooter(uint64_t a1)
{
  result = qword_27F22B2B0;
  if (!qword_27F22B2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EBE93E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24EBE99C8(&qword_27F225B18, type metadata accessor for ImpressionableArtwork, &protocol conformance descriptor for ImpressionableArtwork);
  return sub_24F929548();
}

void *ArcadeFooter.backgroundColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *sub_24EBE961C()
{
  result = *(v0 + 32);
  if (result)
  {
    return sub_24E8E8794(result);
  }

  return result;
}

uint64_t ArcadeFooter.deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeFooter_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t ArcadeFooter.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeFooter_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

void *sub_24EBE97B0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArcadeFooter(0);
  v7 = swift_allocObject();
  result = ArcadeFooter.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void *sub_24EBE981C()
{
  result = *(*v0 + 32);
  if (result)
  {
    return sub_24E8E8794(result);
  }

  return result;
}

uint64_t sub_24EBE9840(uint64_t a1)
{
  result = sub_24EBE99C8(&qword_27F22B2A8, type metadata accessor for ArcadeFooter, &protocol conformance descriptor for ArcadeFooter);
  *(a1 + 8) = result;
  return result;
}

void sub_24EBE98B8(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EBE99C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppEventSearchResult.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v78 = sub_24F91F6B8();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v92 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - v8;
  v89 = sub_24F928388();
  v91 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v79 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v73 - v12;
  MEMORY[0x28223BE20](v13);
  v82 = &v73 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v18 - 8);
  v81 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v85 = &v73 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  sub_24F929608();
  sub_24F928398();
  v87 = v5;
  v25 = *(v5 + 16);
  v26 = v9;
  v27 = v9;
  v28 = v4;
  v25(v27, a2, v4);
  v88 = v24;
  sub_24F929548();
  v29 = v92;
  v90 = a2;
  v25(v92, a2, v28);
  type metadata accessor for MixedMediaLockup(0);
  sub_24F928398();
  v93 = v28;
  v25(v26, v29, v28);
  sub_24EBEB938(&qword_27F22B2C0, type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);
  v30 = v17;
  sub_24F929548();
  if (!v102[0])
  {
    v43 = sub_24F92AC38();
    sub_24EBEB938(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v44 = 0x70756B636F6CLL;
    v45 = v86;
    v44[1] = 0xE600000000000000;
    v44[2] = v45;
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D22530], v43);
    swift_willThrow();
    v40 = v87 + 8;
    v46 = *(v87 + 8);
    v47 = v93;
    v46(v90, v93);
    (*(v91 + 8))(v94, v89);
    v46(v29, v47);
LABEL_7:
    sub_24E601704(v88, &qword_27F213E68, &unk_24F93BC80);
    return v40;
  }

  v31 = v86;
  v80 = v102[0];
  type metadata accessor for AppEvent(0);
  sub_24F928398();
  v74 = v25;
  v25(v26, v29, v93);
  sub_24EBEB938(&qword_27F225728, type metadata accessor for AppEvent, &protocol conformance descriptor for AppPromotion);
  sub_24F929548();
  if (!v102[0])
  {
    v48 = sub_24F92AC38();
    sub_24EBEB938(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v49 = 0x746E657645707061;
    v49[1] = 0xE800000000000000;
    v49[2] = v31;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();

    v50 = *(v87 + 8);
    v40 = v93;
    v50(v90, v93);
    (*(v91 + 8))(v94, v89);
    v50(v29, v40);
    goto LABEL_7;
  }

  v73 = v26;
  v75 = v102[0];
  v32 = v82;
  v33 = v94;
  sub_24F928398();
  v34 = sub_24F928278();
  v35 = v91 + 8;
  v36 = *(v91 + 8);
  v37 = v89;
  v36(v32, v89);
  v38 = v83;
  sub_24F928398();
  sub_24EABA874();
  v39 = v84;
  sub_24F928218();
  v86 = v39;
  if (v39)
  {

    v40 = v38;
    v41 = *(v87 + 8);
    v42 = v93;
    v41(v90, v93);
    v36(v33, v37);
    v36(v40, v37);
    v41(v92, v42);
    sub_24E601704(v88, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    LODWORD(v82) = v34;
    v36(v38, v37);
    LODWORD(v84) = LOBYTE(v102[0]);
    v51 = v79;
    sub_24F928398();
    v52 = sub_24F928348();
    v54 = v37;
    v55 = v92;
    if (v53)
    {
      v100 = v52;
      v101 = v53;
    }

    else
    {
      v56 = v76;
      sub_24F91F6A8();
      v91 = sub_24F91F668();
      v58 = v57;
      (*(v77 + 8))(v56, v78);
      v100 = v91;
      v101 = v58;
      v55 = v92;
    }

    sub_24F92C7F8();
    v36(v51, v54);
    v59 = type metadata accessor for Action(0);
    sub_24F928398();
    v60 = static Action.tryToMakeInstance(byDeserializing:using:)(v30, v55);
    v91 = v35;
    v36(v30, v54);
    sub_24E60169C(v88, v85, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for SearchAdOpportunity();
    sub_24F928398();
    v74(v73, v90, v93);
    sub_24EBEB938(&qword_27F227228, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
    sub_24F929548();
    v83 = v102[7];
    type metadata accessor for AppEventSearchResult(0);
    v40 = swift_allocObject();
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent) = 0;
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup) = v80;
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_appEvent) = v75;
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_alwaysShowAppEvent) = v82 & 1;
    *(v40 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_clickAction) = v60;
    sub_24E60169C(v102, &v100, &qword_27F235830, &qword_24F93B8C0);
    if (v60)
    {
      v82 = sub_24EBEB938(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
    }

    else
    {
      v59 = 0;
      v82 = 0;
    }

    v61 = v87;
    v87 = v59;
    sub_24E60169C(v85, v81, &qword_27F213E68, &unk_24F93BC80);
    *(v40 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_24E60169C(&v100, &v97, &qword_27F235830, &qword_24F93B8C0);
    v62 = v90;
    if (*(&v98 + 1))
    {
      v63 = v98;
      *(v40 + 24) = v97;
      *(v40 + 40) = v63;
      *(v40 + 56) = v99;
    }

    else
    {

      v64 = v76;
      sub_24F91F6A8();
      v65 = sub_24F91F668();
      v67 = v66;
      (*(v77 + 8))(v64, v78);
      v95 = v65;
      v96 = v67;
      sub_24F92C7F8();
      sub_24E601704(&v97, &qword_27F235830, &qword_24F93B8C0);
    }

    v68 = *(v61 + 8);
    v69 = v93;
    v68(v62, v93);
    v36(v94, v89);
    sub_24E601704(&v100, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v85, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v102, &qword_27F235830, &qword_24F93B8C0);
    v68(v92, v69);
    sub_24E601704(v88, &qword_27F213E68, &unk_24F93BC80);
    *(v40 + 64) = v60;
    *(v40 + 72) = 0;
    v70 = v87;
    *(v40 + 80) = 0;
    *(v40 + 88) = v70;
    *(v40 + 96) = v82;
    sub_24E65E0D4(v81, v40 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
    *(v40 + 17) = 6;
    *(v40 + 16) = v84;
    v71 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v40 + v71) = v83;
  }

  return v40;
}

uint64_t sub_24EBEA878()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EBEA8DC@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppEventSearchResult(0);
  *a1 = v1;
}

uint64_t sub_24EBEA920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_appEvent);
  *(v1 + 16) = xmmword_24F93DE60;
  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup);
  *(v1 + 56) = type metadata accessor for Lockup(0);
  *(v1 + 64) = sub_24EBEB938(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v1 + 32) = v3;

  return v1;
}

void sub_24EBEA9DC(char *a1@<X8>)
{
  if (*(v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t AppEventSearchResult.__allocating_init(id:lockup:appEvent:alwaysShowAppEvent:clickAction:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v38 = a7;
  v14 = sub_24F91F6B8();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v35 - v18;
  v20 = swift_allocObject();
  v21 = *a6;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent) = 0;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup) = a2;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_appEvent) = a3;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_alwaysShowAppEvent) = a4;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_clickAction) = a5;
  sub_24E60169C(a1, v44, &qword_27F235830, &qword_24F93B8C0);
  if (a5)
  {
    v22 = type metadata accessor for Action(0);
    v23 = sub_24EBEB938(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = v38;
  sub_24E60169C(v38, v19, &qword_27F213E68, &unk_24F93BC80);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v44, &v41, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v42 + 1))
  {
    v25 = v42;
    *(v20 + 24) = v41;
    *(v20 + 40) = v25;
    *(v20 + 56) = v43;
  }

  else
  {

    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v14;
    v28 = v22;
    v29 = v21;
    v30 = a1;
    v32 = v31;
    (*(v36 + 8))(v16, v27);
    v39 = v26;
    v40 = v32;
    v24 = v38;
    a1 = v30;
    v21 = v29;
    v22 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v24, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v44, &qword_27F235830, &qword_24F93B8C0);
  *(v20 + 64) = a5;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = v22;
  *(v20 + 96) = v23;
  sub_24E65E0D4(v19, v20 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v20 + 17) = 6;
  *(v20 + 16) = v21;
  v33 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v20 + v33) = v37;
  return v20;
}

uint64_t AppEventSearchResult.init(id:lockup:appEvent:alwaysShowAppEvent:clickAction:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v35 = a8;
  v36 = a7;
  v16 = sub_24F91F6B8();
  v33 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v32 - v20;
  v34 = *a6;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent) = 0;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup) = a2;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_appEvent) = a3;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_alwaysShowAppEvent) = a4;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_clickAction) = a5;
  sub_24E60169C(a1, v45, &qword_27F235830, &qword_24F93B8C0);
  if (a5)
  {
    v22 = type metadata accessor for Action(0);
    v23 = sub_24EBEB938(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = v36;
  sub_24E60169C(v36, v21, &qword_27F213E68, &unk_24F93BC80);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v45, &v39, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {

    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v26 = a1;
    v28 = v27;
    (*(v33 + 8))(v18, v16);
    v37 = v25;
    v38 = v28;
    v24 = v36;
    a1 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v24, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v45, &qword_27F235830, &qword_24F93B8C0);
  v29 = v43;
  *(v9 + 24) = v42;
  *(v9 + 40) = v29;
  *(v9 + 56) = v44;
  *(v9 + 64) = a5;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = v22;
  *(v9 + 96) = v23;
  sub_24E65E0D4(v21, v9 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v9 + 17) = 6;
  *(v9 + 16) = v34;
  v30 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v9 + v30) = v35;

  return v9;
}

uint64_t type metadata accessor for AppEventSearchResult(uint64_t a1)
{
  result = qword_27F22B2D0;
  if (!qword_27F22B2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EBEB168()
{
  v25 = sub_24F91F6B8();
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  sub_24E65864C(v0 + 24, v33);
  v9 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup);
  v26 = *(v0 + 16);
  sub_24E60169C(v9 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v8, &qword_27F213E68, &unk_24F93BC80);
  v10 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  v11 = *(v0 + v10);
  type metadata accessor for AppSearchResult(0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup) = v9;
  swift_beginAccess();
  *(v12 + v13) = 1;
  sub_24E60169C(v33, v32, &qword_27F235830, &qword_24F93B8C0);
  v14 = *(v9 + 264);
  if (v14)
  {
    v15 = type metadata accessor for Action(0);
    v16 = sub_24EBEB938(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  sub_24E60169C(v8, v5, &qword_27F213E68, &unk_24F93BC80);
  *(v12 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v32, &v29, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v30 + 1))
  {
    v17 = v30;
    *(v12 + 24) = v29;
    *(v12 + 40) = v17;
    *(v12 + 56) = v31;
  }

  else
  {

    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v24 + 8))(v2, v25);
    v27 = v18;
    v28 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v32, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v8, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  *(v12 + 64) = v14;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = v15;
  *(v12 + 96) = v16;
  sub_24E65E0D4(v5, v12 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v12 + 17) = 0;
  *(v12 + 16) = v26;
  v21 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v12 + v21) = v11;
  return v12;
}

double sub_24EBEB5A4()
{

  return result;
}

uint64_t AppEventSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t AppEventSearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EBEB7A4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AppEventSearchResult(0);
  *a1 = v3;
}

uint64_t sub_24EBEB7EC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00, &unk_24F93B6F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(*(v1 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_appEvent) + OBJC_IVAR____TtC12GameStoreKit8AppEvent_lockup);
  *(v2 + 56) = type metadata accessor for Lockup(0);
  *(v2 + 64) = sub_24EBEB938(&qword_27F2289F8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

void sub_24EBEB8AC(char *a1@<X8>)
{
  if (*(*v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t sub_24EBEB8E0(uint64_t a1)
{
  result = sub_24EBEB938(&qword_27F22B2C8, type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EBEB938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EBEB980@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24EBEB9D8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t AnnotationViewModel.init(annotation:forceExpanded:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_24EA4AD18(a1, a3);
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 48);
  }

  result = sub_24EA4AD74(a1);
  *(a3 + 152) = v6;
  return result;
}

double AnnotationViewModel.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24EBEBC44(v1 + 112, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24EBEBC44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22B2E0, &qword_24F98B0E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBEBCB4()
{
  result = v0[3];
  if (result)
  {
    v2 = v0[2];
LABEL_10:

    return v2;
  }

  v3 = v0[4];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_9:
    v2 = 0;
    goto LABEL_10;
  }

  v4 = v0[3];
  v5 = sub_24F92C738();
  result = v4;
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v2 = *(MEMORY[0x253052270](0, v3) + 40);

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(*(v3 + 32) + 40);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

BOOL AnnotationViewModel.canBeExpanded.getter()
{
  if (*(v0 + 152))
  {
    return 0;
  }

  if (*(v0 + 24))
  {
    return 1;
  }

  v2 = *(v0 + 32);
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    if (sub_24F92C738() > 1)
    {
      return 1;
    }

    v4 = sub_24EBEBCB4();
    v6 = v11;
    if (sub_24F92C738())
    {
      goto LABEL_8;
    }

LABEL_19:
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
  {
    return 1;
  }

  v4 = sub_24EBEBCB4();
  v6 = v5;
  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_8:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x253052270](0, v2);
    v9 = *(v12 + 40);
    v8 = *(v12 + 48);

    v3 = v2 >> 62;
    swift_unknownObjectRelease();
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = *(v2 + 32);
  v9 = *(v7 + 40);
  v8 = *(v7 + 48);

  if (!v6)
  {
LABEL_22:
    if (!v8)
    {
      goto LABEL_24;
    }

LABEL_23:

    return 1;
  }

LABEL_11:
  if (!v8)
  {
    goto LABEL_23;
  }

  if (v4 == v9 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      return 1;
    }
  }

LABEL_24:
  if (v3)
  {
    v13 = sub_24F92C738();
  }

  else
  {
    v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(*(v2 + 32) + 72);
        if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
        {
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return 1;
          }

          goto LABEL_33;
        }
      }

      else
      {
        __break(1u);
      }

      goto LABEL_41;
    }

LABEL_36:
    v16 = *(MEMORY[0x253052270](0, v2) + 72);

    swift_unknownObjectRelease();
    if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_42;
    }

LABEL_41:
    v17 = sub_24F92C738();
LABEL_42:

    if (v17)
    {
      return 1;
    }
  }

LABEL_33:
  v15 = *(v0 + 56);
  if (!v15)
  {
    return 0;
  }

  return *(v15 + 24) != 0;
}