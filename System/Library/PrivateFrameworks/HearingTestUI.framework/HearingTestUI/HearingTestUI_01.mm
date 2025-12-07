void *sub_20CD8A7E0()
{
  v1 = v0;
  sub_20CD8AF8C(0);
  v2 = *v0;
  v3 = sub_20CE141E4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_20CD8A930()
{
  if (!qword_27C812348)
  {
    v0 = sub_20CE13C64();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812348);
    }
  }
}

uint64_t sub_20CD8A98C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_20CD8A9E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_20CD8A9F8()
{
  v1 = v0;
  sub_20CD8AEE8(0, &qword_27C812350, MEMORY[0x277D84F70] + 8);
  v2 = *v0;
  v3 = sub_20CE141E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_20CD8A98C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20CD8A9E8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_20CD8ABA4(uint64_t a1)
{
  if (!qword_27C812358)
  {
    sub_20CD83128(255, &qword_27C813590, 0x277D82BB8);
    v1 = sub_20CE14214();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812358);
    }
  }
}

void *sub_20CD8AC1C()
{
  v1 = v0;
  sub_20CD8AEE8(0, &qword_27C812368, MEMORY[0x277D839B0]);
  v2 = *v0;
  v3 = sub_20CE141E4();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

id sub_20CD8AD88()
{
  v1 = v0;
  sub_20CD8ABA4(0);
  v2 = *v0;
  v3 = sub_20CE141E4();
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

void sub_20CD8AEE8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_20CE14214();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CD8AF40(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_20CE14264();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CD8AF8C(uint64_t a1)
{
  if (!qword_27C812370)
  {
    sub_20CD8B088(255, &qword_27C812378, MEMORY[0x277D12CA8], MEMORY[0x277D83940]);
    v1 = sub_20CE14214();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812370);
    }
  }
}

uint64_t sub_20CD8B024(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_20CD8B030()
{
  result = qword_27C812380;
  if (!qword_27C812380)
  {
    sub_20CE12924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812380);
  }

  return result;
}

void sub_20CD8B088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CD8B0F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE13104();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD8C3B0(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BothEarsClassificationView(0);
  sub_20CD8C838(v1 + *(v10 + 20), v9, sub_20CD8C3B0);
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

__n128 BothEarsClassificationView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for BothEarsClassificationView(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_20CD8C3B0(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  *(a2 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t type metadata accessor for BothEarsClassificationView(uint64_t a1)
{
  result = qword_27C812410;
  if (!qword_27C812410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BothEarsClassificationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  sub_20CD8C3E4(0);
  v21 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD8C598(0, &qword_27C8123D0, sub_20CD8C61C, sub_20CD8C3E4, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  sub_20CD8C61C(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CE12FA4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD8B0F0(v13);
  v14 = sub_20CD8B86C();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    *v9 = sub_20CE131B4();
    *(v9 + 1) = 0x4024000000000000;
    v9[16] = 0;
    sub_20CE13B84();
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20CD8C7D0(0, &qword_27C812400, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
    sub_20CD8BB58(&v9[*(v15 + 44)]);

    sub_20CD8C838(v9, v6, sub_20CD8C61C);
    swift_storeEnumTagMultiPayload();
    sub_20CD8C6D8(&qword_27C8123E8, sub_20CD8C61C, MEMORY[0x277CE1198]);
    sub_20CD8C720();
    sub_20CE13214();
    v16 = sub_20CD8C61C;
    v17 = v9;
  }

  else
  {
    *v3 = sub_20CE13114();
    *(v3 + 1) = 0x4024000000000000;
    v3[16] = 0;
    sub_20CE13B84();
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20CD8C7D0(0, &qword_27C8123E0, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
    sub_20CD8BB58(&v3[*(v18 + 44)]);

    *&v3[*(v21 + 36)] = 256;
    sub_20CD8C838(v3, v6, sub_20CD8C3E4);
    swift_storeEnumTagMultiPayload();
    sub_20CD8C6D8(&qword_27C8123E8, sub_20CD8C61C, MEMORY[0x277CE1198]);
    sub_20CD8C720();
    sub_20CE13214();
    v16 = sub_20CD8C3E4;
    v17 = v3;
  }

  return sub_20CD8C8A0(v17, v16);
}

uint64_t sub_20CD8B86C()
{
  v1 = sub_20CE12FA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  v12 = v5 == *MEMORY[0x277CDF9F8] || v5 == *MEMORY[0x277CDF9E0] || v5 == *MEMORY[0x277CDF9E8] || v5 == *MEMORY[0x277CDF9D8] || v5 == *MEMORY[0x277CDF9F0] || v5 == *MEMORY[0x277CDFA00] || v5 == *MEMORY[0x277CDFA10] || v5 == *MEMORY[0x277CDF988];
  v13 = v12;
  if (!v12)
  {
    v14 = v5 == *MEMORY[0x277CDF998] || v5 == *MEMORY[0x277CDF9A8];
    v15 = v14 || v5 == *MEMORY[0x277CDF9B8];
    if (!v15 && v5 != *MEMORY[0x277CDF9D0])
    {
      if (qword_27C811D00 != -1)
      {
        swift_once();
      }

      v17 = sub_20CE12CB4();
      __swift_project_value_buffer(v17, qword_27C817768);
      v18 = sub_20CE12C94();
      v19 = sub_20CE13CB4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24 = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_20CD96DCC(0x5463696D616E7944, 0xEF657A6953657079, &v24);
        _os_log_impl(&dword_20CD70000, v18, v19, "[%{public}s] Unhandled new DynamicTypeSize case.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x20F314110](v21, -1, -1);
        MEMORY[0x20F314110](v20, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
    }
  }

  return v13 ^ 1u;
}

uint64_t sub_20CD8BB58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v62 = type metadata accessor for SingleEarClassificationView(0);
  MEMORY[0x28223BE20](v62);
  v4 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD8C598(0, &qword_27C8123C0, type metadata accessor for SingleEarClassificationView, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  sub_20CD8C4FC(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v51 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v51 - v16;
  MEMORY[0x28223BE20](v15);
  v63 = &v51 - v17;
  v18 = v1[1];
  v60 = v7;
  v61 = v6;
  v59 = v9;
  if (v18)
  {
    v20 = v2[5];
    v53 = v2[4];
    v19 = v53;
    v54 = v20;
    v21 = v2[2];
    v22 = *v2;
    v51 = v2[3];
    v52 = v22;
    *(v4 + *(v62 + 20)) = swift_getKeyPath();
    sub_20CD8CBD4(0, &qword_27C812430, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *v4 = v22;
    v4[1] = v18;
    v23 = v51;
    v4[2] = v21;
    v4[3] = v23;
    v4[4] = v19;
    v4[5] = v20;
    v24 = v2[12];
    v25 = v2[13];
    sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20CE16360;
    *(v26 + 32) = v24;
    *(v26 + 40) = v25;
    v27 = v63;
    *(v26 + 48) = 0x7261457466654CLL;
    *(v26 + 56) = 0xE700000000000000;
    v64 = v26;
    v28 = v21;
    v29 = v59;
    sub_20CD8CC38(v52, v18, v28, v23, v53, v54);
    sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
    sub_20CD81F60();

    sub_20CE138C4();

    sub_20CD8C6D8(&qword_27C812438, type metadata accessor for SingleEarClassificationView, &protocol conformance descriptor for SingleEarClassificationView);
    v6 = v61;
    sub_20CE134A4();
    v30 = v60;

    sub_20CD8C8A0(v4, type metadata accessor for SingleEarClassificationView);
    sub_20CD8CC88(v29, v27);
    v31 = *(v30 + 56);
    v31(v27, 0, 1, v6);
  }

  else
  {
    v31 = *(v7 + 56);
    v31(v63, 1, 1, v6);
  }

  v32 = v2[7];
  if (v32)
  {
    v33 = v2[10];
    v34 = v2[11];
    v35 = v2[9];
    v53 = v2[8];
    v36 = v53;
    v37 = v2[6];
    KeyPath = swift_getKeyPath();
    v54 = v31;
    *(v4 + *(v62 + 20)) = KeyPath;
    sub_20CD8CBD4(0, &qword_27C812430, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *v4 = v37;
    v4[1] = v32;
    v4[2] = v36;
    v4[3] = v35;
    v4[4] = v33;
    v4[5] = v34;
    v39 = v2[12];
    v40 = v2[13];
    sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20CE16360;
    *(v41 + 32) = v39;
    *(v41 + 40) = v40;
    *(v41 + 48) = 0x7261457468676952;
    *(v41 + 56) = 0xE800000000000000;
    v64 = v41;
    sub_20CD8CC38(v37, v32, v53, v35, v33, v34);
    sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
    sub_20CD81F60();
    v31 = v54;

    sub_20CE138C4();

    sub_20CD8C6D8(&qword_27C812438, type metadata accessor for SingleEarClassificationView, &protocol conformance descriptor for SingleEarClassificationView);
    v42 = v59;
    v6 = v61;
    sub_20CE134A4();

    sub_20CD8C8A0(v4, type metadata accessor for SingleEarClassificationView);
    v43 = v55;
    sub_20CD8CC88(v42, v55);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v43 = v55;
  }

  v31(v43, v44, 1, v6);
  v45 = v63;
  v46 = v56;
  sub_20CD8C838(v63, v56, sub_20CD8C4FC);
  v47 = v57;
  sub_20CD8C838(v43, v57, sub_20CD8C4FC);
  v48 = v58;
  sub_20CD8C838(v46, v58, sub_20CD8C4FC);
  sub_20CD8C498(0);
  sub_20CD8C838(v47, v48 + *(v49 + 48), sub_20CD8C4FC);
  sub_20CD8C8A0(v43, sub_20CD8C4FC);
  sub_20CD8C8A0(v45, sub_20CD8C4FC);
  sub_20CD8C8A0(v47, sub_20CD8C4FC);
  return sub_20CD8C8A0(v46, sub_20CD8C4FC);
}

__n128 BothEarsClassificationView.Model.init(leftEar:rightEar:automationIdBase:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v5;
  v6 = *a2;
  v7 = a2[1];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v6;
  result = a2[2];
  *(a5 + 64) = v7;
  *(a5 + 80) = result;
  *(a5 + 96) = a3;
  *(a5 + 104) = a4;
  return result;
}

uint64_t sub_20CD8C2E8(uint64_t a1)
{
  v2 = sub_20CE12FA4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20CE13044();
}

void sub_20CD8C3E4(uint64_t a1)
{
  if (!qword_27C812398)
  {
    sub_20CD8C444(255);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812398);
    }
  }
}

void sub_20CD8C498(uint64_t a1)
{
  if (!qword_27C8123B0)
  {
    sub_20CD8C4FC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8123B0);
    }
  }
}

void sub_20CD8C4FC(uint64_t a1)
{
  if (!qword_27C8123B8)
  {
    sub_20CD8C598(255, &qword_27C8123C0, type metadata accessor for SingleEarClassificationView, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v1 = sub_20CE13F44();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8123B8);
    }
  }
}

void sub_20CD8C598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_20CD8C63C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_20CD8C464(255);
    v7 = v6;
    v8 = sub_20CD8C6D8(&qword_27C8123C8, sub_20CD8C464, MEMORY[0x277CE14C0]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_20CD8C6D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20CD8C720()
{
  result = qword_27C8123F0;
  if (!qword_27C8123F0)
  {
    sub_20CD8C3E4(255);
    sub_20CD8C6D8(&qword_27C8123F8, sub_20CD8C444, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8123F0);
  }

  return result;
}

void sub_20CD8C7D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CD8C464(255);
    v5 = sub_20CE12F54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20CD8C838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CD8C8A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20CD8C944(uint64_t a1)
{
  sub_20CD8CBD4(319, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t get_enum_tag_for_layout_string_13HearingTestUI27SingleEarClassificationViewV5ModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_20CD8CA2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CD8CA74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20CD8CAE0()
{
  result = qword_27C812420;
  if (!qword_27C812420)
  {
    sub_20CD8C598(255, &qword_27C812428, sub_20CD8C61C, sub_20CD8C3E4, MEMORY[0x277CE0338]);
    sub_20CD8C6D8(&qword_27C8123E8, sub_20CD8C61C, MEMORY[0x277CE1198]);
    sub_20CD8C720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812420);
  }

  return result;
}

void sub_20CD8CBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CD8CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_20CD8CC88(uint64_t a1, uint64_t a2)
{
  sub_20CD8C598(0, &qword_27C8123C0, type metadata accessor for SingleEarClassificationView, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20CD8CD40(uint64_t a1, uint64_t a2)
{
  sub_20CD8CF38(a1, v9);
  if (v9[3])
  {
    sub_20CD8D04C();
    if (swift_dynamicCast())
    {
      [v8 presentViewController:a2 animated:1 completion:0];

      return;
    }
  }

  else
  {
    sub_20CD8CFF0(v9);
  }

  if (qword_27C811D28 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C8177E0);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CB4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_20CD96DCC(0xD00000000000001FLL, 0x800000020CE16AA0, v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20CD96DCC(0xD000000000000028, 0x800000020CE1C010, v9);
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] %s aborting as the sender is not a UIViewController.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }
}

uint64_t sub_20CD8CF38(uint64_t a1, uint64_t a2)
{
  sub_20CD8CF9C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CD8CF9C()
{
  if (!qword_27C812D30)
  {
    v0 = sub_20CE13F44();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812D30);
    }
  }
}

uint64_t sub_20CD8CFF0(uint64_t a1)
{
  sub_20CD8CF9C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CD8D04C()
{
  result = qword_27C812440;
  if (!qword_27C812440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812440);
  }

  return result;
}

uint64_t sub_20CD8D098()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_20CD8D0F4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_20CD8D164(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_20CD8D1EC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 32))(v1, v2);
}

void sub_20CD8D244()
{
  v1 = v0;
  v2 = sub_20CE137B4();
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x28223BE20](v2);
  v96 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD8DC24(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE12CB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20CE13954();
  v13 = v12;
  v14 = MEMORY[0x277D839B0];
  v102 = MEMORY[0x277D839B0];
  LOBYTE(v101) = 1;
  sub_20CD8A9E8(&v101, v100);
  v15 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = v15;
  sub_20CE09150(v100, v11, v13, isUniquelyReferenced_nonNull_native);

  v17 = v99;
  v18 = *(v1 + 16);
  if (v18 != 2)
  {
    v19 = sub_20CE13954();
    v21 = v20;
    v102 = v14;
    LOBYTE(v101) = v18;
    sub_20CD8A9E8(&v101, v100);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v17;
    sub_20CE09150(v100, v19, v21, v22);

    v17 = v99;
  }

  v23 = *(v1 + 17);
  if (v23 != 2)
  {
    v24 = sub_20CE13954();
    v26 = v25;
    v102 = v14;
    LOBYTE(v101) = v23;
    sub_20CD8A9E8(&v101, v100);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v17;
    sub_20CE09150(v100, v24, v26, v27);

    v17 = v99;
  }

  v94 = v17;
  v95 = v1;
  v28 = *v1;
  v29 = v1[1];
  if (qword_27C811D28 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v7, qword_27C8177E0);
  v31 = [objc_allocWithZone(MEMORY[0x277CCD438]) initWithFeatureIdentifier:*MEMORY[0x277CCC058] healthStore:v28];
  v32 = *(v8 + 16);
  v32(v10, v30, v7);
  type metadata accessor for HearingTestPairedDeviceFeatureAttributesDataSource(0);
  swift_allocObject();

  sub_20CDC3488(v31, v29, v10);

  sub_20CD8E6E4();
  v32(v10, v30, v7);
  sub_20CE137E4();
  swift_allocObject();

  sub_20CE137D4();

  v33 = v96;
  sub_20CE137C4();
  sub_20CE137A4();
  (*(v97 + 8))(v33, v98);
  v34 = sub_20CE13774();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v6, 1, v34) != 1)
  {
    v36 = sub_20CE13764();
    (*(v35 + 8))(v6, v34);
    v37 = [v36 featureVersion];
    v38 = sub_20CE13954();
    v40 = v39;

    v41 = HIBYTE(v40) & 0xF;
    v42 = v38 & 0xFFFFFFFFFFFFLL;
    if ((v40 & 0x2000000000000000) != 0)
    {
      v43 = HIBYTE(v40) & 0xF;
    }

    else
    {
      v43 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (!v43)
    {

LABEL_72:

      goto LABEL_73;
    }

    if ((v40 & 0x1000000000000000) != 0)
    {
      LOBYTE(v100[0]) = 0;
      v46 = sub_20CD8DCE4(v38, v40, 10);
      v64 = v93;
LABEL_71:

      if ((v64 & 1) == 0)
      {
        v67 = sub_20CE13954();
        v69 = v68;
        v70 = [v36 updateVersion];
        v71 = sub_20CE13954();
        v73 = v72;

        v102 = MEMORY[0x277D837D0];
        *&v101 = v71;
        *(&v101 + 1) = v73;
        sub_20CD8A9E8(&v101, v100);
        v74 = v94;
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v99 = v74;
        sub_20CE09150(v100, v67, v69, v75);

        v76 = v99;
        v77 = sub_20CE13954();
        v79 = v78;
        v102 = MEMORY[0x277D83B88];
        *&v101 = v46;
        sub_20CD8A9E8(&v101, v100);
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v99 = v76;
        sub_20CE09150(v100, v77, v79, v80);

        v66 = v99;
        v65 = v95;
        goto LABEL_75;
      }

      goto LABEL_72;
    }

    if ((v40 & 0x2000000000000000) != 0)
    {
      *&v101 = v38;
      *(&v101 + 1) = v40 & 0xFFFFFFFFFFFFFFLL;
      if (v38 == 43)
      {
        if (v41)
        {
          if (--v41)
          {
            v46 = 0;
            v56 = &v101 + 1;
            while (1)
            {
              v57 = *v56 - 48;
              if (v57 > 9)
              {
                break;
              }

              v58 = 10 * v46;
              if ((v46 * 10) >> 64 != (10 * v46) >> 63)
              {
                break;
              }

              v46 = v58 + v57;
              if (__OFADD__(v58, v57))
              {
                break;
              }

              ++v56;
              if (!--v41)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_86:
        __break(1u);
        return;
      }

      if (v38 != 45)
      {
        if (v41)
        {
          v46 = 0;
          v61 = &v101;
          while (1)
          {
            v62 = *v61 - 48;
            if (v62 > 9)
            {
              break;
            }

            v63 = 10 * v46;
            if ((v46 * 10) >> 64 != (10 * v46) >> 63)
            {
              break;
            }

            v46 = v63 + v62;
            if (__OFADD__(v63, v62))
            {
              break;
            }

            ++v61;
            if (!--v41)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v41)
      {
        if (--v41)
        {
          v46 = 0;
          v50 = &v101 + 1;
          while (1)
          {
            v51 = *v50 - 48;
            if (v51 > 9)
            {
              break;
            }

            v52 = 10 * v46;
            if ((v46 * 10) >> 64 != (10 * v46) >> 63)
            {
              break;
            }

            v46 = v52 - v51;
            if (__OFSUB__(v52, v51))
            {
              break;
            }

            ++v50;
            if (!--v41)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v38 & 0x1000000000000000) != 0)
      {
        v44 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v44 = sub_20CE14124();
      }

      v45 = *v44;
      if (v45 == 43)
      {
        if (v42 >= 1)
        {
          v41 = v42 - 1;
          if (v42 != 1)
          {
            v46 = 0;
            if (v44)
            {
              v53 = v44 + 1;
              while (1)
              {
                v54 = *v53 - 48;
                if (v54 > 9)
                {
                  goto LABEL_69;
                }

                v55 = 10 * v46;
                if ((v46 * 10) >> 64 != (10 * v46) >> 63)
                {
                  goto LABEL_69;
                }

                v46 = v55 + v54;
                if (__OFADD__(v55, v54))
                {
                  goto LABEL_69;
                }

                ++v53;
                if (!--v41)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_85;
      }

      if (v45 != 45)
      {
        if (v42)
        {
          v46 = 0;
          if (v44)
          {
            while (1)
            {
              v59 = *v44 - 48;
              if (v59 > 9)
              {
                goto LABEL_69;
              }

              v60 = 10 * v46;
              if ((v46 * 10) >> 64 != (10 * v46) >> 63)
              {
                goto LABEL_69;
              }

              v46 = v60 + v59;
              if (__OFADD__(v60, v59))
              {
                goto LABEL_69;
              }

              ++v44;
              if (!--v42)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v46 = 0;
        LOBYTE(v41) = 1;
        goto LABEL_70;
      }

      if (v42 >= 1)
      {
        v41 = v42 - 1;
        if (v42 != 1)
        {
          v46 = 0;
          if (v44)
          {
            v47 = v44 + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                goto LABEL_69;
              }

              v49 = 10 * v46;
              if ((v46 * 10) >> 64 != (10 * v46) >> 63)
              {
                goto LABEL_69;
              }

              v46 = v49 - v48;
              if (__OFSUB__(v49, v48))
              {
                goto LABEL_69;
              }

              ++v47;
              if (!--v41)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v41) = 0;
LABEL_70:
          LOBYTE(v100[0]) = v41;
          v64 = v41;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  sub_20CD8E73C(v6);
LABEL_73:
  v66 = v94;
  v65 = v95;
LABEL_75:
  if ((v65[4] & 1) == 0)
  {
    v81 = v65[3];
    v82 = sub_20CE13954();
    v84 = v83;
    v85 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v102 = sub_20CD8E798();
    *&v101 = v85;
    sub_20CD8A9E8(&v101, v100);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v66;
    sub_20CE09150(v100, v82, v84, v86);

    v66 = v99;
  }

  if ((v65[6] & 1) == 0)
  {
    v87 = v65[5];
    v88 = sub_20CE13954();
    v90 = v89;
    v91 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v102 = sub_20CD8E798();
    *&v101 = v91;
    sub_20CD8A9E8(&v101, v100);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v66;
    sub_20CE09150(v100, v88, v90, v92);
  }
}

void sub_20CD8DC24(uint64_t a1)
{
  if (!qword_27C812448)
  {
    sub_20CE13774();
    v1 = sub_20CE13F44();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812448);
    }
  }
}

void *sub_20CD8DC7C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_20CD8E7E4();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_20CD8DCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_20CE13A64();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_20CD8E270(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_20CE14124();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_20CD8E270(uint64_t a1, unint64_t a2)
{
  v2 = sub_20CE13A74();
  v6 = sub_20CD8E2F0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_20CD8E2F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_20CE13F54();
    if (!v9 || (v10 = v9, v11 = sub_20CD8DC7C(v9, 0), v12 = sub_20CD8E448(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_20CE139B4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_20CE139B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_20CE14124();
LABEL_4:

  return sub_20CE139B4();
}

unint64_t sub_20CD8E448(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_20CD8E668(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_20CE13A34();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_20CE14124();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_20CD8E668(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_20CE13A14();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

unint64_t sub_20CD8E668(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_20CE13A44();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x20F312F30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_20CD8E6E4()
{
  result = qword_27C812450;
  if (!qword_27C812450)
  {
    type metadata accessor for HearingTestPairedDeviceFeatureAttributesDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812450);
  }

  return result;
}

uint64_t sub_20CD8E73C(uint64_t a1)
{
  sub_20CD8DC24(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CD8E798()
{
  result = qword_27C812458;
  if (!qword_27C812458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812458);
  }

  return result;
}

void sub_20CD8E7E4()
{
  if (!qword_27C812460)
  {
    v0 = sub_20CE14264();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812460);
    }
  }
}

id sub_20CD8E834()
{
  v1 = v0;
  v2 = [v0 name];
  if (v2)
  {
    v3 = v2;
    sub_20CE13954();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v1 productName];
  if (v6)
  {
    v7 = v6;
    sub_20CE13954();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v1 hardwareVersion];
  if (v10)
  {
    v11 = v10;
    sub_20CE13954();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v1 firmwareVersion];
  if (v14)
  {
    v15 = v14;
    sub_20CE13954();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v1 identifier];
  if (v18)
  {
    v19 = v18;
    sub_20CE13954();
    v21 = v20;

    if (v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
    if (v5)
    {
LABEL_15:
      v22 = sub_20CE13914();

      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  v22 = 0;
  if (v9)
  {
LABEL_16:
    v23 = sub_20CE13914();

    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_22:
  v23 = 0;
  if (v13)
  {
LABEL_17:
    v24 = sub_20CE13914();

    if (v17)
    {
      goto LABEL_18;
    }

LABEL_24:
    v25 = 0;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_25:
    v26 = 0;
    goto LABEL_26;
  }

LABEL_23:
  v24 = 0;
  if (!v17)
  {
    goto LABEL_24;
  }

LABEL_18:
  v25 = sub_20CE13914();

  if (!v21)
  {
    goto LABEL_25;
  }

LABEL_19:
  v26 = sub_20CE13914();

LABEL_26:
  v27 = [objc_allocWithZone(MEMORY[0x277CCD2E8]) initWithName:v22 manufacturer:0 model:v23 hardwareVersion:v24 firmwareVersion:v25 softwareVersion:0 localIdentifier:v26 UDIDeviceIdentifier:0];

  return v27;
}

uint64_t HearingTestFlowAnalyticsData.__allocating_init(entryPoint:)(uint64_t a1)
{
  v2 = swift_allocObject();
  HearingTestFlowAnalyticsData.init(entryPoint:)(a1);
  return v2;
}

uint64_t HearingTestFlowAnalyticsData.init(entryPoint:)(uint64_t a1)
{
  v3 = sub_20CE125B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 1;
  v7 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_flowStartTime;
  v8 = sub_20CE124E4();
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v10 = (v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_pairedHeadPhoneProductType);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_airPodsFirmware);
  *v11 = 0;
  v11[1] = 0;
  v9(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousTestCompleteDate, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasCongestionSelected) = 2;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasLoudEnvironmentExposureSelected) = 2;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_isOlderThanMinimumAge) = 2;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram) = 0;
  v12 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_leftNoiseMetrics;
  v13 = sub_20CE12984();
  v14 = *(*(v13 - 8) + 56);
  v14(v1 + v12, 1, 1, v13);
  v14(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_rightNoiseMetrics, 1, 1, v13);
  v15 = v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreLeft;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreRight;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreLeft;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreRight;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_stationaryNoiseCount) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_instantaneousNoiseCount) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalNoiseCount) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_interruptionCount) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalInterruptionDuration) = 0;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_endReason) = 5;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousSubmissions) = MEMORY[0x277D84FA0];
  v19 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_calendar;
  v20 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  sub_20CE12574();

  (*(v4 + 32))(v1 + v19, v6, v3);
  *(v1 + 16) = a1;
  return v1;
}

void sub_20CD8EDF0(char *a1)
{
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_endReason) == 5)
  {
    *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_endReason) = *a1;
  }

  else
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v2 = sub_20CE12CB4();
    __swift_project_value_buffer(v2, qword_27C817780);
    oslog = sub_20CE12C94();
    v3 = sub_20CE13CC4();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v16 = v5;
      *v4 = 136446722;
      v6 = sub_20CE14414();
      v8 = sub_20CD96DCC(v6, v7, &v16);

      *(v4 + 4) = v8;
      *(v4 + 12) = 2080;
      v9 = sub_20CE13974();
      v11 = sub_20CD96DCC(v9, v10, &v16);

      *(v4 + 14) = v11;
      *(v4 + 22) = 2080;
      v12 = sub_20CE13974();
      v14 = sub_20CD96DCC(v12, v13, &v16);

      *(v4 + 24) = v14;
      _os_log_impl(&dword_20CD70000, oslog, v3, "[%{public}s] Attempt to set endReason again. There should be one endReason per flow. current endReason %s new endReason %s", v4, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v5, -1, -1);
      MEMORY[0x20F314110](v4, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_20CD8F034(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  v6 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_instantaneousNoiseCount);
  if (__OFADD__(v6, result & 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_instantaneousNoiseCount) = v6 + (result & 1);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  result = (*(v8 + 16))(v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_stationaryNoiseCount);
  if (__OFADD__(v9, result & 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_stationaryNoiseCount) = v9 + (result & 1);
  v10 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalNoiseCount);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (!v11)
  {
    *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalNoiseCount) = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_20CD8F120(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v140 = sub_20CE12984();
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v105[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CD90ED8(0, &qword_27C8124A8, MEMORY[0x277D12D30]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v130 = &v105[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v136 = &v105[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v105[-v13];
  MEMORY[0x28223BE20](v12);
  v117 = &v105[-v14];
  v15 = sub_20CE124E4();
  v139 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v122 = &v105[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v121 = &v105[-v18];
  v19 = MEMORY[0x277CC9578];
  sub_20CD90ED8(0, &qword_281111770, MEMORY[0x277CC9578]);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v105[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v105[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v105[-v27];
  v29 = *a1;
  LODWORD(a1) = *a2;
  v30 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousSubmissions;
  swift_beginAccess();
  v31 = *(v3 + v30);
  v133 = a1;
  v132 = v29;
  v32 = v29 | (a1 << 8);

  v33 = sub_20CD900D4(v32, v31);

  swift_beginAccess();
  sub_20CDD5CA4(v142, v32);
  swift_endAccess();
  v34 = *(v3 + 24);
  v128 = *(v3 + 16);
  v127 = v34;
  v129 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_endReason);
  v35 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_pairedHeadPhoneProductType + 8);
  *&v126 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_pairedHeadPhoneProductType);
  v36 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_airPodsFirmware + 8);
  *&v124 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_airPodsFirmware);
  v125 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasCongestionSelected);
  v123 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasLoudEnvironmentExposureSelected);
  v37 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_flowStartTime;
  swift_beginAccess();
  v134 = v28;
  sub_20CD911AC(v3 + v37, v28, &qword_281111770, v19);
  v135 = v26;
  v38 = v26;
  v39 = v139;
  sub_20CD911AC(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousTestCompleteDate, v38, &qword_281111770, v19);
  sub_20CD911AC(v3 + v37, v23, &qword_281111770, v19);
  v40 = *(v39 + 48);
  v138 = v15;
  LODWORD(v119) = v40(v23, 1, v15);
  if (v119 == 1)
  {

    v41 = 0;
  }

  else
  {
    v42 = v121;
    v43 = v138;
    (*(v39 + 32))(v121, v23, v138);

    v44 = v122;
    sub_20CE124D4();
    sub_20CE12494();
    v41 = v45;
    v46 = *(v39 + 8);
    v46(v44, v43);
    v46(v42, v43);
  }

  v47 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_interruptionCount);
  v48 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalInterruptionDuration);
  v49 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram;
  v50 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram);
  v51 = v141;
  v131 = v33;
  *(&v126 + 1) = v35;
  *(&v124 + 1) = v36;
  v122 = v47;
  v121 = v48;
  v118 = v50;
  if (!v50)
  {
    v116 = 0;
    goto LABEL_10;
  }

  result = [v50 leftEarDiagnostic];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v53 = result;
  v54 = *(v3 + v49);
  v116 = v53;
  if (!v54)
  {
LABEL_10:
    v115 = 0;
    v114 = 1;
    v55 = v140;
    goto LABEL_11;
  }

  result = [v54 rightEarDiagnostic];
  v55 = v140;
  if (result < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v115 = result;
  v114 = 0;
LABEL_11:
  v113 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_instantaneousNoiseCount);
  v112 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_stationaryNoiseCount);
  v111 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_totalNoiseCount);
  v56 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_leftNoiseMetrics;
  swift_beginAccess();
  v57 = v117;
  sub_20CD911AC(v3 + v56, v117, &qword_27C8124A8, MEMORY[0x277D12D30]);
  v58 = *(v51 + 48);
  v59 = v58(v57, 1, v55);
  v60 = v120;
  v110 = v59;
  if (v59)
  {
    sub_20CD90E7C(v57, &qword_27C8124A8, MEMORY[0x277D12D30]);
    v61 = 0;
  }

  else
  {
    v62 = v137;
    (*(v51 + 16))(v137, v57, v55);
    sub_20CD90E7C(v57, &qword_27C8124A8, MEMORY[0x277D12D30]);
    sub_20CE126B4();
    v55 = v140;
    v61 = v63;
    (*(v51 + 8))(v62, v140);
  }

  v64 = v136;
  v65 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_rightNoiseMetrics;
  swift_beginAccess();
  sub_20CD911AC(v3 + v65, v60, &qword_27C8124A8, MEMORY[0x277D12D30]);
  v66 = v58(v60, 1, v55);
  if (v66)
  {
    sub_20CD90E7C(v60, &qword_27C8124A8, MEMORY[0x277D12D30]);
    v67 = 0;
  }

  else
  {
    v68 = v141;
    v69 = v137;
    (*(v141 + 16))(v137, v60, v55);
    sub_20CD90E7C(v60, &qword_27C8124A8, MEMORY[0x277D12D30]);
    sub_20CE126B4();
    v55 = v140;
    v67 = v70;
    v71 = v68;
    v64 = v136;
    (*(v71 + 8))(v69, v140);
  }

  sub_20CD911AC(v3 + v56, v64, &qword_27C8124A8, MEMORY[0x277D12D30]);
  v72 = v58(v64, 1, v55);
  if (v72)
  {
    sub_20CD90E7C(v64, &qword_27C8124A8, MEMORY[0x277D12D30]);
    v73 = 0;
  }

  else
  {
    v74 = v141;
    v75 = v137;
    (*(v141 + 16))(v137, v64, v55);
    sub_20CD90E7C(v64, &qword_27C8124A8, MEMORY[0x277D12D30]);
    sub_20CE12704();
    v55 = v140;
    v73 = v76;
    (*(v74 + 8))(v75, v140);
  }

  v77 = v3 + v65;
  v78 = v130;
  sub_20CD911AC(v77, v130, &qword_27C8124A8, MEMORY[0x277D12D30]);
  v79 = v58(v78, 1, v55);
  if (v79)
  {
    sub_20CD90E7C(v78, &qword_27C8124A8, MEMORY[0x277D12D30]);
    v80 = 0;
  }

  else
  {
    v81 = v141;
    v82 = v137;
    (*(v141 + 16))(v137, v78, v55);
    sub_20CD90E7C(v78, &qword_27C8124A8, MEMORY[0x277D12D30]);
    sub_20CE12704();
    v80 = v83;
    (*(v81 + 8))(v82, v55);
  }

  LODWORD(v141) = v79 != 0;
  LODWORD(v140) = v72 != 0;
  v109 = v66 != 0;
  v108 = v110 != 0;
  v107 = v118 == 0;
  v106 = v119 == 1;
  v137 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreLeft);
  LODWORD(v136) = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreLeft + 8);
  v130 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreRight);
  LODWORD(v120) = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreRight + 8);
  v119 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreLeft);
  LODWORD(v118) = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreLeft + 8);
  v117 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreRight);
  v110 = *(v3 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreRight + 8);
  type metadata accessor for HearingTestFlowMetric(0);
  v84 = swift_allocObject();
  *(v84 + 40) = 16;
  *(v84 + 48) = 0;
  *(v84 + 56) = 0;
  *(v84 + 64) = 5;
  *(v84 + 72) = 0;
  *(v84 + 80) = 0;
  *(v84 + 104) = 514;
  *(v84 + 106) = 2;
  v85 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime;
  v86 = *(v139 + 56);
  v87 = v138;
  v86(v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_flowStartTime, 1, 1, v138);
  v88 = OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate;
  v86(v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_previousTestCompleteDate, 1, 1, v87);
  v89 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stepDuration;
  *v89 = 0;
  *(v89 + 8) = 1;
  v90 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_evaluationDuration;
  *v90 = 0;
  *(v90 + 8) = 1;
  v91 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalDuration;
  *v91 = 0;
  *(v91 + 8) = 1;
  v92 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalInterruptionDuration;
  *v92 = 0;
  *(v92 + 8) = 1;
  v93 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftEarClassification;
  *v93 = 0;
  *(v93 + 8) = 1;
  v94 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightEarClassification;
  *v94 = 0;
  *(v94 + 8) = 1;
  *(v84 + 16) = v132;
  v95 = v127;
  *(v84 + 24) = v128;
  *(v84 + 32) = v95;
  *(v84 + 40) = v133;
  *(v84 + 48) = 0;
  *(v84 + 56) = 0;
  *(v84 + 64) = v129;
  v96 = v126;
  *(v84 + 88) = v124;
  *(v84 + 72) = v96;
  *(v84 + 104) = (v131 & 1) == 0;
  *(v84 + 105) = v125;
  *(v84 + 106) = v123;
  swift_beginAccess();
  sub_20CD83094(v134, v84 + v85);
  swift_endAccess();
  swift_beginAccess();
  sub_20CD83094(v135, v84 + v88);
  swift_endAccess();
  *v89 = 0;
  *(v89 + 8) = 1;
  *v90 = 0;
  *(v90 + 8) = 1;
  *v91 = v41;
  *(v91 + 8) = v106;
  *(v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_interruptionCount) = v122;
  *v92 = v121;
  *(v92 + 8) = 0;
  *v93 = v116;
  *(v93 + 8) = v107;
  *v94 = v115;
  *(v94 + 8) = v114;
  *(v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_instantaneousNoiseCount) = v113;
  *(v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_stationaryNoiseCount) = v112;
  *(v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_totalNoiseCount) = v111;
  v97 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftInstNoise;
  *v97 = v61;
  *(v97 + 8) = v108;
  v98 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightInstNoise;
  *v98 = v67;
  *(v98 + 8) = v109;
  v99 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_leftStatNoise;
  *v99 = v73;
  *(v99 + 8) = v140;
  v100 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_rightStatNoise;
  *v100 = v80;
  *(v100 + 8) = v141;
  v101 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreLeft;
  *v101 = v137;
  *(v101 + 8) = v136;
  v102 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitScoreRight;
  *v102 = v130;
  *(v102 + 8) = v120;
  v103 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreLeft;
  *v103 = v119;
  *(v103 + 8) = v118;
  v104 = v84 + OBJC_IVAR____TtC13HearingTestUI21HearingTestFlowMetric_fitConfidenceScoreRight;
  *v104 = v117;
  *(v104 + 8) = v110;
  return v84;
}

uint64_t sub_20CD900D4(__int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = HIBYTE(a1);
  sub_20CE14384();
  HearingTestFlowAnalyticsStep.rawValue.getter();
  sub_20CE139C4();

  sub_20CE143A4();
  if (v4 != 16)
  {
    HearingTestFlowActionType.rawValue.getter();
    sub_20CE139C4();
  }

  v6 = sub_20CE143B4();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v22 = ~v7;
  while (2)
  {
    v9 = (*(a2 + 48) + 2 * v8);
    v10 = v9[1];
    v11 = 0xEF64657472617453;
    v12 = 0x20676E6974746547;
    switch(*v9)
    {
      case 1:
        v12 = 0xD00000000000001DLL;
        v11 = 0x800000020CE1A690;
        break;
      case 2:
        v12 = 0xD00000000000001ELL;
        v11 = 0x800000020CE1A6B0;
        break;
      case 3:
        break;
      case 4:
        v12 = 0xD000000000000013;
        v11 = 0x800000020CE1A6E0;
        break;
      case 5:
        v12 = 0xD000000000000011;
        v11 = 0x800000020CE1A700;
        break;
      case 6:
        v12 = 0xD000000000000026;
        v11 = 0x800000020CE1A720;
        break;
      case 7:
        v12 = 0xD000000000000026;
        v11 = 0x800000020CE1A750;
        break;
      case 8:
        v12 = 0xD000000000000026;
        v11 = 0x800000020CE1A780;
        break;
      case 9:
        v12 = 0xD000000000000026;
        v11 = 0x800000020CE1A7B0;
        break;
      case 0xA:
        v11 = 0xEA00000000006E6FLL;
        v12 = 0x697461756C617645;
        break;
      case 0xB:
        v12 = 0xD00000000000002FLL;
        v11 = 0x800000020CE1A7F0;
        break;
      case 0xC:
        v11 = 0xE700000000000000;
        v12 = 0x73746C75736552;
        break;
      case 0xD:
        v12 = 0xD000000000000010;
        v11 = 0x800000020CE1A830;
        break;
      case 0xE:
        v12 = 0x7075727265746E49;
        v11 = 0xEC0000006E6F6974;
        break;
      case 0xF:
        v12 = 0xD000000000000014;
        v11 = 0x800000020CE1A850;
        break;
      default:
        v12 = 0xD000000000000013;
        v11 = 0x800000020CE1A670;
        break;
    }

    v13 = 0x20676E6974746547;
    v14 = 0xEF64657472617453;
    switch(v3)
    {
      case 1:
        v14 = 0x800000020CE1A690;
        if (v12 != 0xD00000000000001DLL)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 2:
        v14 = 0x800000020CE1A6B0;
        if (v12 != 0xD00000000000001ELL)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 3:
        goto LABEL_54;
      case 4:
        v14 = 0x800000020CE1A6E0;
        if (v12 != 0xD000000000000013)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 5:
        v14 = 0x800000020CE1A700;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 6:
        v14 = 0x800000020CE1A720;
        if (v12 != 0xD000000000000026)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 7:
        v14 = 0x800000020CE1A750;
        if (v12 != 0xD000000000000026)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 8:
        v14 = 0x800000020CE1A780;
        if (v12 != 0xD000000000000026)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 9:
        v14 = 0x800000020CE1A7B0;
        if (v12 != 0xD000000000000026)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 10:
        v14 = 0xEA00000000006E6FLL;
        v13 = 0x697461756C617645;
LABEL_54:
        if (v12 == v13)
        {
          goto LABEL_55;
        }

        goto LABEL_58;
      case 11:
        v14 = 0x800000020CE1A7F0;
        if (v12 != 0xD00000000000002FLL)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 12:
        v14 = 0xE700000000000000;
        if (v12 != 0x73746C75736552)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 13:
        v14 = 0x800000020CE1A830;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 14:
        v14 = 0xEC0000006E6F6974;
        if (v12 != 0x7075727265746E49)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      case 15:
        v14 = 0x800000020CE1A850;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      default:
        v14 = 0x800000020CE1A670;
        if (v12 != 0xD000000000000013)
        {
          goto LABEL_58;
        }

LABEL_55:
        if (v11 == v14)
        {
        }

        else
        {
LABEL_58:
          v15 = sub_20CE14284();

          if ((v15 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v16 = v4;
        v17 = 0xEA00000000007265;
        v18 = 0x746E452070657453;
        switch(v10)
        {
          case 0:
            goto LABEL_75;
          case 1:
            v16 = 107;
            v17 = 0xE900000000000074;
            v18 = 0x78654E2065766F4DLL;
            goto LABEL_75;
          case 2:
            v17 = 0xE90000000000006BLL;
            v18 = 0x6361422065766F4DLL;
            goto LABEL_75;
          case 3:
            v17 = 0xE400000000000000;
            v18 = 1701736260;
            goto LABEL_75;
          case 4:
            v18 = 0x46206C65636E6143;
            v17 = 0xEB00000000776F6CLL;
            goto LABEL_75;
          case 5:
            v18 = 0x764F207472617453;
            goto LABEL_75;
          case 6:
            v16 = 38;
            v18 = 0xD000000000000010;
            v17 = 0x800000020CE1A8A0;
            goto LABEL_75;
          case 7:
            v16 = 38;
            v18 = 0xD000000000000014;
            v17 = 0x800000020CE1A8C0;
            goto LABEL_75;
          case 8:
            v17 = 0xE700000000000000;
            v18 = 0x73736563637553;
            goto LABEL_75;
          case 9:
            v17 = 0xE700000000000000;
            v18 = 0x6572756C696146;
            goto LABEL_75;
          case 10:
            v18 = 0x74654420776F6853;
            v17 = 0xEC000000736C6961;
            goto LABEL_75;
          case 11:
            v18 = 0x74724120776F6853;
            v17 = 0xEC000000656C6369;
            goto LABEL_75;
          case 12:
            v16 = 38;
            v18 = 0xD000000000000015;
            v17 = 0x800000020CE1A900;
            goto LABEL_75;
          case 13:
            v16 = 38;
            v18 = 0xD00000000000001CLL;
            v17 = 0x800000020CE1A920;
            goto LABEL_75;
          case 14:
            v16 = 38;
            v18 = 0xD000000000000010;
            v17 = 0x800000020CE1A940;
            goto LABEL_75;
          case 15:
            v16 = 38;
            v18 = 0xD000000000000012;
            v17 = 0x800000020CE1A960;
            break;
          default:
            if (v4 != 16)
            {
              goto LABEL_9;
            }

            return 1;
        }

        break;
    }

LABEL_75:
    v19 = 0x746E452070657453;
    v20 = 0xEA00000000007265;
    switch(v16)
    {
      case 0:
        goto LABEL_103;
      case 1:
        v20 = 0xE900000000000074;
        if (v18 != 0x78654E2065766F4DLL)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 2:
        v20 = 0xE90000000000006BLL;
        if (v18 != 0x6361422065766F4DLL)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 3:
        v20 = 0xE400000000000000;
        if (v18 != 1701736260)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 4:
        v20 = 0xEB00000000776F6CLL;
        if (v18 != 0x46206C65636E6143)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 5:
        if (v18 != 0x764F207472617453)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 6:
        v20 = 0x800000020CE1A8A0;
        if (v18 != 0xD000000000000010)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 7:
        v20 = 0x800000020CE1A8C0;
        if (v18 != 0xD000000000000014)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 8:
        v20 = 0xE700000000000000;
        if (v18 != 0x73736563637553)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 9:
        v20 = 0xE700000000000000;
        if (v18 != 0x6572756C696146)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 10:
        v19 = 0x74654420776F6853;
        v20 = 0xEC000000736C6961;
LABEL_103:
        if (v18 == v19)
        {
          goto LABEL_104;
        }

        goto LABEL_105;
      case 11:
        v20 = 0xEC000000656C6369;
        if (v18 != 0x74724120776F6853)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 12:
        v20 = 0x800000020CE1A900;
        if (v18 != 0xD000000000000015)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 13:
        v20 = 0x800000020CE1A920;
        if (v18 != 0xD00000000000001CLL)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 14:
        v20 = 0x800000020CE1A940;
        if (v18 != 0xD000000000000010)
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      case 15:
        v20 = 0x800000020CE1A960;
        if (v18 != 0xD000000000000012)
        {
          goto LABEL_105;
        }

LABEL_104:
        if (v17 != v20)
        {
LABEL_105:
          v21 = sub_20CE14284();

          if (v21)
          {
            return 1;
          }

LABEL_9:
          v8 = (v8 + 1) & v22;
          if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      default:
        goto LABEL_9;
    }
  }
}

void sub_20CD90B28()
{
  v1 = v0;
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
    v11 = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20CD96DCC(0xD00000000000001BLL, 0x800000020CE1C220, &v11);
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] %s called.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_endReason) = 5;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasCongestionSelected) = 2;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_hasLoudEnvironmentExposureSelected) = 2;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_isOlderThanMinimumAge) = 2;
  v10 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram);
  *(v1 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_audiogram) = 0;
}

uint64_t HearingTestFlowAnalyticsData.deinit()
{
  v1 = MEMORY[0x277CC9578];
  sub_20CD90E7C(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_flowStartTime, &qword_281111770, MEMORY[0x277CC9578]);

  sub_20CD90E7C(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_previousTestCompleteDate, &qword_281111770, v1);

  v2 = MEMORY[0x277D12D30];
  sub_20CD90E7C(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_leftNoiseMetrics, &qword_27C8124A8, MEMORY[0x277D12D30]);
  sub_20CD90E7C(v0 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_rightNoiseMetrics, &qword_27C8124A8, v2);

  v3 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_calendar;
  v4 = sub_20CE125B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_20CD90E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_20CD90ED8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_20CD90ED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t HearingTestFlowAnalyticsData.__deallocating_deinit()
{
  HearingTestFlowAnalyticsData.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HearingTestFlowAnalyticsData(uint64_t a1)
{
  result = qword_27C8124B0;
  if (!qword_27C8124B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CD90FD8(uint64_t a1)
{
  sub_20CD90ED8(319, &qword_281111770, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_20CD90ED8(319, &qword_27C8124A8, MEMORY[0x277D12D30]);
    if (v2 <= 0x3F)
    {
      sub_20CE125B4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20CD911AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_20CD90ED8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CD91218()
{
  v2 = sub_20CE13954();
  v3 = v0;
  result = MEMORY[0x20F312EF0](0x676E69726165482ELL, 0xEC00000074736554);
  qword_27C817868 = v2;
  unk_27C817870 = v3;
  return result;
}

uint64_t sub_20CD91284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CE13104();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDF3E0];
  v8 = MEMORY[0x277CDF458];
  sub_20CD93AF0(0, &qword_27C812430, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for SingleEarClassificationView(0);
  sub_20CD93964(v1 + *(v12 + 20), v11, &qword_27C812430, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20CE12EB4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_20CE13CC4();
    v15 = sub_20CE13294();
    sub_20CE12C84();

    sub_20CE130F4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SingleEarClassificationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_20CE13244();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v62 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = sub_20CE12EB4();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v6 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CD9273C(0, &qword_27C8124C0, sub_20CD91D8C, sub_20CD922F4);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v57[-v8];
  sub_20CD923D0(0);
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x28223BE20](v10);
  v64 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20CD9273C(0, &qword_27C812590, sub_20CD923D0, MEMORY[0x277CDE470]);
  v69 = v12;
  MEMORY[0x28223BE20](v12);
  v72 = &v57[-v13];
  v60 = sub_20CE13114();
  v89 = 0;
  v63 = v1;
  sub_20CD927B0(v1, &v74);
  v102 = v86;
  v103[0] = v87[0];
  *(v103 + 9) = *(v87 + 9);
  v98 = v82;
  v99 = v83;
  v100 = v84;
  v101 = v85;
  v94 = v78;
  v95 = v79;
  v96 = v80;
  v97 = v81;
  v90 = v74;
  v91 = v75;
  v92 = v76;
  v93 = v77;
  v104[11] = v85;
  v104[12] = v86;
  v105[0] = v87[0];
  *(v105 + 9) = *(v87 + 9);
  v104[8] = v82;
  v104[9] = v83;
  v104[10] = v84;
  v104[4] = v78;
  v104[5] = v79;
  v104[6] = v80;
  v104[7] = v81;
  v104[0] = v74;
  v104[1] = v75;
  v104[2] = v76;
  v104[3] = v77;
  v14 = MEMORY[0x277CE14B8];
  sub_20CD93964(&v90, v73, &qword_27C8124E0, sub_20CD91EF8, MEMORY[0x277CE14B8]);
  sub_20CD939D4(v104, &qword_27C8124E0, sub_20CD91EF8, v14);
  *(&v88[11] + 7) = v101;
  *(&v88[12] + 7) = v102;
  *(&v88[13] + 7) = v103[0];
  v88[14] = *(v103 + 9);
  *(&v88[7] + 7) = v97;
  *(&v88[8] + 7) = v98;
  *(&v88[9] + 7) = v99;
  *(&v88[10] + 7) = v100;
  *(&v88[3] + 7) = v93;
  *(&v88[4] + 7) = v94;
  *(&v88[5] + 7) = v95;
  *(&v88[6] + 7) = v96;
  *(v88 + 7) = v90;
  *(&v88[1] + 7) = v91;
  *(&v88[2] + 7) = v92;
  v58 = v89;
  v15 = sub_20CE132A4();
  v73[0] = 0;
  v59 = sub_20CE135F4();
  v17 = v16;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = v63;
  sub_20CD91284(v6);
  v19 = sub_20CD93330(v6);
  (*(v4 + 8))(v6, v61);

  v20 = &v9[*(v71 + 36)];
  v21 = *(sub_20CE12FE4() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_20CE13174();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #16.0 }

  *v20 = _Q0;
  sub_20CD922F4(0);
  *&v20[*(v29 + 36)] = 256;
  v30 = v88[10];
  *(v9 + 193) = v88[11];
  v31 = v88[13];
  *(v9 + 209) = v88[12];
  *(v9 + 225) = v31;
  *(v9 + 241) = v88[14];
  v32 = v88[6];
  *(v9 + 129) = v88[7];
  v33 = v88[9];
  *(v9 + 145) = v88[8];
  *(v9 + 161) = v33;
  *(v9 + 177) = v30;
  v34 = v88[2];
  *(v9 + 65) = v88[3];
  v35 = v88[5];
  *(v9 + 81) = v88[4];
  *(v9 + 97) = v35;
  *(v9 + 113) = v32;
  v36 = v88[1];
  *(v9 + 17) = v88[0];
  *(v9 + 33) = v36;
  *v9 = v60;
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = v58;
  *(v9 + 49) = v34;
  v9[264] = v15;
  *(v9 + 17) = xmmword_20CE16C10;
  *(v9 + 18) = xmmword_20CE16C10;
  v9[304] = 0;
  v37 = v59;
  *(v9 + 39) = v19;
  *(v9 + 40) = v37;
  *(v9 + 41) = v17;
  v38 = v62;
  sub_20CE13234();
  v39 = sub_20CD92484();
  v40 = v64;
  sub_20CE13494();
  (*(v65 + 8))(v38, v66);
  sub_20CD93BEC(v9, &qword_27C8124C0, sub_20CD91D8C, sub_20CD922F4, sub_20CD9273C);
  v41 = v18[1];
  *&v74 = *v18;
  *(&v74 + 1) = v41;
  sub_20CD935CC();

  v42 = sub_20CE13414();
  v44 = v43;
  v46 = v45;
  *&v74 = v71;
  *(&v74 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v47 = v68;
  sub_20CE13464();
  sub_20CD93620(v42, v44, v46 & 1);

  (*(v67 + 8))(v40, v47);
  v48 = v18[5];
  *&v74 = v18[4];
  *(&v74 + 1) = v48;

  MEMORY[0x20F312EF0](8236, 0xE200000000000000);
  v50 = v18[2];
  v49 = v18[3];

  MEMORY[0x20F312EF0](v50, v49);

  v51 = sub_20CE13414();
  v53 = v52;
  LOBYTE(v40) = v54;
  v55 = v72;
  sub_20CE12FB4();
  sub_20CD93620(v51, v53, v40 & 1);

  return sub_20CD72D30(v55);
}

void sub_20CD91D8C(uint64_t a1)
{
  if (!qword_27C8124C8)
  {
    sub_20CD92128(255, &qword_27C8124D0, sub_20CD91E44, MEMORY[0x277CDF928]);
    sub_20CD922A0(255, &qword_27C812540, MEMORY[0x277CE0F78], MEMORY[0x277CE0F70], MEMORY[0x277CE0318]);
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8124C8);
    }
  }
}

void sub_20CD91E44(uint64_t a1)
{
  if (!qword_27C8124D8)
  {
    sub_20CD93AF0(255, &qword_27C8124E0, sub_20CD91EF8, MEMORY[0x277CE14B8]);
    sub_20CD9223C(&qword_27C812538, &qword_27C8124E0, sub_20CD91EF8);
    v1 = sub_20CE13574();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8124D8);
    }
  }
}

void sub_20CD91EF8(uint64_t a1)
{
  if (!qword_27C8124E8)
  {
    sub_20CD91F60(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8124E8);
    }
  }
}

void sub_20CD91F60(uint64_t a1)
{
  if (!qword_27C8124F0)
  {
    sub_20CD93AF0(255, &qword_27C8124F8, sub_20CD92014, MEMORY[0x277CE14B8]);
    sub_20CD9223C(&qword_27C812530, &qword_27C8124F8, sub_20CD92014);
    v1 = sub_20CE13584();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8124F0);
    }
  }
}

void sub_20CD92014(uint64_t a1)
{
  if (!qword_27C812500)
  {
    v1 = MEMORY[0x277CE0BD8];
    v2 = MEMORY[0x277CDFAB8];
    sub_20CD922A0(255, &qword_27C812508, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    v3 = MEMORY[0x277CDFC50];
    sub_20CD92128(255, &qword_27C812510, sub_20CD9218C, MEMORY[0x277CDFC50]);
    sub_20CD922A0(255, &qword_27C812528, v1, v3, v2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata, &qword_27C812500);
    }
  }
}

void sub_20CD92128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_20CE12FD4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CD9218C(uint64_t a1)
{
  if (!qword_27C812518)
  {
    sub_20CD921EC();
    v1 = sub_20CE12FD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812518);
    }
  }
}

void sub_20CD921EC()
{
  if (!qword_27C812520)
  {
    v0 = sub_20CE13254();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812520);
    }
  }
}

uint64_t sub_20CD9223C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_20CD93AF0(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CD922A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_20CD922F4(uint64_t a1)
{
  if (!qword_27C812548)
  {
    sub_20CE12FE4();
    sub_20CD92388(&qword_27C812550, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    v1 = sub_20CE12ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812548);
    }
  }
}

uint64_t sub_20CD92388(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20CD923D0(uint64_t a1)
{
  if (!qword_27C812558)
  {
    sub_20CD9273C(255, &qword_27C8124C0, sub_20CD91D8C, sub_20CD922F4);
    sub_20CD92484();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C812558);
    }
  }
}

unint64_t sub_20CD92484()
{
  result = qword_27C812560;
  if (!qword_27C812560)
  {
    sub_20CD9273C(255, &qword_27C8124C0, sub_20CD91D8C, sub_20CD922F4);
    sub_20CD92564();
    sub_20CD92388(&qword_27C812588, sub_20CD922F4, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812560);
  }

  return result;
}

unint64_t sub_20CD92564()
{
  result = qword_27C812568;
  if (!qword_27C812568)
  {
    sub_20CD91D8C(255);
    sub_20CD925E4();
    sub_20CD926B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812568);
  }

  return result;
}

unint64_t sub_20CD925E4()
{
  result = qword_27C812570;
  if (!qword_27C812570)
  {
    sub_20CD92128(255, &qword_27C8124D0, sub_20CD91E44, MEMORY[0x277CDF928]);
    sub_20CD92388(&qword_27C812578, sub_20CD91E44, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812570);
  }

  return result;
}

unint64_t sub_20CD926B8()
{
  result = qword_27C812580;
  if (!qword_27C812580)
  {
    sub_20CD922A0(255, &qword_27C812540, MEMORY[0x277CE0F78], MEMORY[0x277CE0F70], MEMORY[0x277CE0318]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812580);
  }

  return result;
}

void sub_20CD9273C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_20CE12FD4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_20CD927B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_20CE131C4();
  LOBYTE(v43[0]) = 1;
  sub_20CD92B04(a1, &v45);
  v38 = v55;
  v39 = v56;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  v28 = v45;
  v29 = v46;
  v41[10] = v55;
  v41[11] = v56;
  v41[6] = v51;
  v41[7] = v52;
  v41[8] = v53;
  v41[9] = v54;
  v41[2] = v47;
  v41[3] = v48;
  v41[4] = v49;
  v41[5] = v50;
  v40 = v57[0];
  v42 = v57[0];
  v41[0] = v45;
  v41[1] = v46;
  v5 = MEMORY[0x277CE14B8];
  sub_20CD93964(&v28, v58, &qword_27C8124F8, sub_20CD92014, MEMORY[0x277CE14B8]);
  sub_20CD939D4(v41, &qword_27C8124F8, sub_20CD92014, v5);
  *(&v27[9] + 7) = v37;
  *(&v27[10] + 7) = v38;
  *(&v27[11] + 7) = v39;
  *(&v27[12] + 7) = v40;
  *(&v27[5] + 7) = v33;
  *(&v27[6] + 7) = v34;
  *(&v27[7] + 7) = v35;
  *(&v27[8] + 7) = v36;
  *(&v27[1] + 7) = v29;
  *(&v27[2] + 7) = v30;
  *(&v27[3] + 7) = v31;
  *(&v27[4] + 7) = v32;
  *(v27 + 7) = v28;
  v6 = v43[0];
  v43[0] = v4;
  v43[1] = 0;
  LOBYTE(v44[0]) = v6;
  v7 = v27[8];
  *(&v44[9] + 1) = v27[9];
  v8 = v27[9];
  *(&v44[10] + 1) = v27[10];
  v9 = v27[10];
  *(&v44[11] + 1) = v27[11];
  *(&v44[11] + 10) = *(&v27[11] + 9);
  v10 = v27[4];
  *(&v44[5] + 1) = v27[5];
  v11 = v27[5];
  *(&v44[6] + 1) = v27[6];
  v12 = v27[6];
  *(&v44[7] + 1) = v27[7];
  v13 = v27[7];
  *(&v44[8] + 1) = v27[8];
  v14 = v27[0];
  *(&v44[1] + 1) = v27[1];
  v15 = v27[1];
  *(&v44[2] + 1) = v27[2];
  v16 = v27[2];
  *(&v44[3] + 1) = v27[3];
  v17 = v27[3];
  *(&v44[4] + 1) = v27[4];
  *(v44 + 1) = v27[0];
  v55 = v44[9];
  v56 = v44[10];
  v57[0] = v44[11];
  *(v57 + 10) = *(&v27[11] + 9);
  v51 = v44[5];
  v52 = v44[6];
  v53 = v44[7];
  v54 = v44[8];
  v47 = v44[1];
  v48 = v44[2];
  v49 = v44[3];
  v50 = v44[4];
  v45 = v4;
  v46 = v44[0];
  v18 = v44[10];
  *(a2 + 160) = v44[9];
  *(a2 + 176) = v18;
  v19 = v57[1];
  *(a2 + 192) = v57[0];
  *(a2 + 208) = v19;
  v20 = v52;
  *(a2 + 96) = v51;
  *(a2 + 112) = v20;
  v21 = v54;
  *(a2 + 128) = v53;
  *(a2 + 144) = v21;
  v22 = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v22;
  v23 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v23;
  v24 = v46;
  *a2 = v45;
  *(a2 + 16) = v24;
  v69 = v8;
  v70 = v9;
  v71[0] = v27[11];
  *(v71 + 9) = *(&v27[11] + 9);
  v65 = v11;
  v66 = v12;
  v67 = v13;
  v68 = v7;
  v61 = v15;
  v62 = v16;
  v63 = v17;
  v64 = v10;
  v26[224] = 1;
  *(a2 + 224) = 0;
  *(a2 + 232) = 1;
  v58[0] = v4;
  v58[1] = 0;
  v59 = v6;
  v60 = v14;
  sub_20CD93A30(v43, v26);
  sub_20CD93A94(v58);
}

uint64_t sub_20CD92B04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v93 = a2;
  sub_20CD93AF0(0, &qword_27C8125C0, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  KeyPath = &v82 - v4;
  v95 = sub_20CE13354();
  v85 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v84 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  v94 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[1];
  v118 = *a1;
  v119 = v6;
  v98 = sub_20CD935CC();

  v7 = sub_20CE13414();
  v9 = v8;
  v11 = v10;
  sub_20CE132C4();
  sub_20CE13314();
  sub_20CE13344();

  v12 = sub_20CE133E4();
  v14 = v13;
  v16 = v15;
  v97 = a1;

  sub_20CD93620(v7, v9, v11 & 1);

  LODWORD(v118) = sub_20CE13224();
  v17 = sub_20CE133C4();
  v91 = v18;
  v92 = v17;
  v99 = v19;
  v90 = v20;
  sub_20CD93620(v12, v14, v16 & 1);

  sub_20CE135F4();
  sub_20CE12F04();
  v88 = v120;
  v89 = v118;
  v86 = v123;
  v87 = v122;
  v107 = 1;
  v106 = v119;
  v105 = v121;
  v21 = v97[5];
  v110 = v97[4];
  v111 = v21;

  v22 = sub_20CE13414();
  v24 = v23;
  v26 = v25;
  sub_20CE13324();
  v28 = v84;
  v27 = v85;
  v29 = v95;
  (*(v85 + 104))(v84, *MEMORY[0x277CE0A10], v95);
  sub_20CE13374();

  (*(v27 + 8))(v28, v29);
  v30 = sub_20CE133E4();
  v32 = v31;
  v34 = v33;

  sub_20CD93620(v22, v24, v26 & 1);

  sub_20CE13314();
  v35 = sub_20CE133A4();
  v37 = v36;
  LOBYTE(v7) = v38;
  v95 = v39;
  sub_20CD93620(v30, v32, v34 & 1);

  v40 = *MEMORY[0x277CE09A0];
  v41 = sub_20CE132F4();
  v42 = *(v41 - 8);
  v43 = KeyPath;
  (*(v42 + 104))(KeyPath, v40, v41);
  (*(v42 + 56))(v43, 0, 1, v41);
  v44 = sub_20CE13394();
  v46 = v45;
  LOBYTE(v40) = v47;
  sub_20CD93620(v35, v37, v7 & 1);

  sub_20CD939D4(v43, &qword_27C8125C0, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  sub_20CE13504();
  v48 = sub_20CE133B4();
  v83 = v49;
  v84 = v48;
  LOBYTE(v37) = v50;
  v85 = v51;

  sub_20CD93620(v44, v46, v40 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v95) = v37 & 1;
  LOBYTE(v110) = v37 & 1;
  v52 = v97[3];
  v110 = v97[2];
  v111 = v52;

  v53 = sub_20CE13414();
  v55 = v54;
  LOBYTE(v41) = v56;
  sub_20CE132C4();
  v57 = sub_20CE133E4();
  v59 = v58;
  LOBYTE(v28) = v60;

  sub_20CD93620(v53, v55, v41 & 1);

  LODWORD(v110) = sub_20CE13224();
  v61 = sub_20CE133C4();
  v63 = v62;
  LOBYTE(v53) = v64;
  v66 = v65;
  sub_20CD93620(v57, v59, v28 & 1);

  v67 = v90 & 1;
  v103 = v90 & 1;
  v68 = v107;
  v69 = v106;
  v70 = v105;
  v102 = v90 & 1;
  v71 = v83;
  v72 = v84;
  *&v108 = v84;
  *(&v108 + 1) = v83;
  v109[0] = v95;
  *&v109[1] = v104[0];
  *&v109[4] = *(v104 + 3);
  v73 = v85;
  *&v109[8] = v85;
  *&v109[16] = KeyPath;
  *&v109[24] = 0;
  v109[26] = 1;
  v101 = 0;
  LOBYTE(v41) = v53 & 1;
  v100 = v53 & 1;
  v74 = v53 & 1;
  v76 = v92;
  v75 = v93;
  v77 = v99;
  *v93 = v92;
  v75[1] = v77;
  *(v75 + 16) = v67;
  v75[3] = v91;
  v75[4] = 0;
  *(v75 + 40) = v68;
  v75[6] = v89;
  *(v75 + 56) = v69;
  v78 = v87;
  v75[8] = v88;
  *(v75 + 72) = v70;
  v75[10] = v78;
  v75[11] = v86;
  v79 = v108;
  v80 = *v109;
  *(v75 + 123) = *&v109[11];
  *(v75 + 6) = v79;
  *(v75 + 7) = v80;
  v75[18] = 0x4010000000000000;
  *(v75 + 152) = 0;
  v75[20] = v61;
  v75[21] = v63;
  *(v75 + 176) = v74;
  v75[23] = v66;
  *(v75 + 96) = 256;
  sub_20CD93B54(v76, v77, v67);

  sub_20CD93B64(&v108, &v110);
  sub_20CD93B54(v61, v63, v41);

  sub_20CD93620(v61, v63, v41);

  v110 = v72;
  v111 = v71;
  v112 = v95;
  *v113 = v104[0];
  *&v113[3] = *(v104 + 3);
  v114 = v73;
  v115 = KeyPath;
  v116 = 0;
  v117 = 1;
  sub_20CD93BEC(&v110, &qword_27C812510, sub_20CD9218C, MEMORY[0x277CDFC50], sub_20CD92128);
  sub_20CD93620(v76, v99, v103);
}

void __swiftcall SingleEarClassificationView.Model.init(title:classification:sensitivity:)(HearingTestUI::SingleEarClassificationView::Model *__return_ptr retstr, Swift::String title, Swift::String classification, Swift::String sensitivity)
{
  retstr->title = title;
  retstr->classification = classification;
  retstr->sensitivity = sensitivity;
}

uint64_t sub_20CD93330(uint64_t a1)
{
  v2 = sub_20CE12EB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CDF3D0] || v6 == *MEMORY[0x277CDF3C0])
  {
    sub_20CE134C4();
    v7 = sub_20CE134F4();
  }

  else
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v8 = sub_20CE12CB4();
    __swift_project_value_buffer(v8, qword_27C817768);
    v9 = sub_20CE12C94();
    v10 = sub_20CE13CB4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_20CD96DCC(0x746E6174736E6F43, 0xE900000000000073, &v15);
      _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] Missing adoption for new case of ColorScheme.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x20F314110](v12, -1, -1);
      MEMORY[0x20F314110](v11, -1, -1);
    }

    sub_20CE134C4();
    v7 = sub_20CE134F4();

    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

unint64_t sub_20CD935CC()
{
  result = qword_27C813560;
  if (!qword_27C813560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813560);
  }

  return result;
}

uint64_t sub_20CD93620(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t type metadata accessor for SingleEarClassificationView(uint64_t a1)
{
  result = qword_27C8125A0;
  if (!qword_27C8125A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CD936C0(uint64_t a1)
{
  sub_20CD93AF0(319, &qword_27C812598, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
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

uint64_t sub_20CD93780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20CD937C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20CD93824()
{
  result = qword_27C8125B0;
  if (!qword_27C8125B0)
  {
    sub_20CD9273C(255, &qword_27C812590, sub_20CD923D0, MEMORY[0x277CDE470]);
    sub_20CD9273C(255, &qword_27C8124C0, sub_20CD91D8C, sub_20CD922F4);
    sub_20CD92484();
    swift_getOpaqueTypeConformance2();
    sub_20CD92388(&qword_27C8125B8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8125B0);
  }

  return result;
}

uint64_t sub_20CD93964(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_20CD93AF0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_20CD939D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_20CD93AF0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_20CD93A30(uint64_t a1, uint64_t a2)
{
  sub_20CD91F60(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD93A94(uint64_t a1)
{
  sub_20CD91F60(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CD93AF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CD93B54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20CD93B64(uint64_t a1, uint64_t a2)
{
  sub_20CD92128(0, &qword_27C812510, sub_20CD9218C, MEMORY[0x277CDFC50]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD93BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_20CD93C4C(uint64_t a1, uint64_t *a2)
{
  sub_20CD849AC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD7DC78(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_20CD93D04@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  swift_beginAccess();
  return sub_20CD7DC78(v1 + v3, a1);
}

uint64_t sub_20CD93D5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20CD93E20(void *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  v7 = sub_20CE124E4();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_axIdBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v9 = &v3[v8];
  v10 = unk_27C817870;
  *v9 = qword_27C817868;
  *(v9 + 1) = v10;
  *&v3[OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager] = a1;

  v11 = a1;
  NoResultsViewController.Mode.title.getter();
  v12 = sub_20CE13914();

  v19 = v5;
  sub_20CD940C8();
  v13 = sub_20CE13914();

  v18.receiver = v3;
  v18.super_class = type metadata accessor for NoResultsViewController(0);
  v14 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, 0, 2);

  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setHidesBackButton_];

  return v15;
}

uint64_t NoResultsViewController.Mode.title.getter()
{
  if (*v0)
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

uint64_t sub_20CD940C8()
{
  if (*v0)
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

void sub_20CD941CC()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for NoResultsViewController(0);
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_20CD94BCC();
  v2 = [v0 headerView];
  [v2 setTitleStyle_];

  sub_20CE12864();
  sub_20CE12A14();
  v3 = [objc_opt_self() boldButton];
  sub_20CD94340(v3, v1);
  v4 = [objc_opt_self() linkButton];
  sub_20CD94594(v4, v1);
  v5 = [v1 buttonTray];
  [v5 addButton_];

  v6 = [v1 buttonTray];
  [v6 addButton_];
}

void sub_20CD94340(void *a1, uint64_t a2)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v4 = sub_20CE13914();

  [a1 setTitle:v4 forState:{0, 0xE000000000000000}];

  [a1 addTarget:a2 action:sel_didTapRestart forControlEvents:64];
  v6 = *(a2 + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_axIdBase);
  v5 = *(a2 + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_axIdBase + 8);
  v7 = MEMORY[0x277D837D0];
  sub_20CD95440(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CE16360;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  strcpy((v8 + 48), "RestartButton");
  *(v8 + 62) = -4864;
  sub_20CD95440(0, &qword_27C8121F0, v7, MEMORY[0x277D83940]);
  sub_20CD95490(&qword_27C813740, &qword_27C8121F0, v7, MEMORY[0x277D83958]);

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [a1 setAccessibilityIdentifier_];
}

void sub_20CD94594(void *a1, uint64_t a2)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v4 = sub_20CE13914();

  [a1 setTitle:v4 forState:{0, 0xE000000000000000}];

  [a1 addTarget:a2 action:sel_didTapEnd forControlEvents:64];
  v6 = *(a2 + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_axIdBase);
  v5 = *(a2 + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_axIdBase + 8);
  v7 = MEMORY[0x277D837D0];
  sub_20CD95440(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CE16360;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = 0x6F74747542646E45;
  *(v8 + 56) = 0xE90000000000006ELL;
  sub_20CD95440(0, &qword_27C8121F0, v7, MEMORY[0x277D83940]);
  sub_20CD95490(&qword_27C813740, &qword_27C8121F0, v7, MEMORY[0x277D83958]);

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [a1 setAccessibilityIdentifier_];
}

uint64_t NoResultsViewController.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

uint64_t sub_20CD94BCC()
{
  sub_20CD849AC(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_20CE124C4();
  v4 = sub_20CE124E4();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v3, v0 + v5);
  swift_endAccess();
  v6 = *(*(v0 + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v11[0] = 0;
  v8 = *(v6 + 48);
  swift_unknownObjectRetain();
  v8(v11, v0, &protocol witness table for NoResultsViewController, ObjectType, v6);
  return swift_unknownObjectRelease();
}

id NoResultsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id NoResultsViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

uint64_t sub_20CD94F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

id NoResultsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoResultsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NoResultsViewController(uint64_t a1)
{
  result = qword_27C8125F0;
  if (!qword_27C8125F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CD950E8()
{
  result = qword_27C8125D0;
  if (!qword_27C8125D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8125D0);
  }

  return result;
}

void sub_20CD95188(uint64_t a1)
{
  sub_20CD849AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for NoResultsViewController.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NoResultsViewController.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_20CD95440(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_20CD95490(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CD95440(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_20CD954E8@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result isAppleInternalInstall];

  if (v4)
  {
    v5 = [objc_opt_self() defaultWorkspace];
    if (v5)
    {
      v6 = v5;
      v7 = sub_20CE13914();
      v8 = [v6 applicationIsInstalled_];

      if (v8)
      {
        static AirWaveDeepLinkBuilder.makeDeepLinkURL()(a1);

LABEL_13:
        v9 = 0;
        goto LABEL_14;
      }
    }

    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v10 = sub_20CE12CB4();
    __swift_project_value_buffer(v10, qword_27C817768);
    v11 = sub_20CE12C94();
    v12 = sub_20CE13CD4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_20CD96DCC(5001813, 0xE300000000000000, &v17);
      _os_log_impl(&dword_20CD70000, v11, v12, "[%{public}s] AirWave is not installed; falling back to Tap-To-Radar", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x20F314110](v14, -1, -1);
      MEMORY[0x20F314110](v13, -1, -1);
    }

    sub_20CD95740();
    goto LABEL_13;
  }

  v9 = 1;
LABEL_14:
  v15 = sub_20CE12474();
  v16 = *(*(v15 - 8) + 56);

  return v16(a1, v9, 1, v15);
}

void sub_20CD95740()
{
  v0 = objc_opt_self();
  v1 = sub_20CE13914();
  v2 = sub_20CE13914();
  v3 = [v0 hk:0 tapToRadarURLForBundleID:1568147 component:v1 title:v2 description:0 classification:0 reproducibility:0 keywords:2 autoDiagnostics:0 attachments:0 collaborationContactHandles:2 diagnosticExtensionOptions:?];

  sub_20CE12454();
}

void sub_20CD95834(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_20CD9589C()
{
  swift_getObjectType();
  sub_20CD96354(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() sharedBehavior];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isAppleInternalInstall];

    if (v5)
    {
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
        v20 = v10;
        *v9 = 136446210;
        v11 = sub_20CE14414();
        v13 = sub_20CD96DCC(v11, v12, &v20);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] User tapped to create a Radar.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x20F314110](v10, -1, -1);
        MEMORY[0x20F314110](v9, -1, -1);
      }

      sub_20CD954E8(v2);
      v14 = sub_20CE12474();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v2, 1, v14) == 1)
      {
        sub_20CD963AC(v2);
      }

      else
      {
        v16 = [objc_opt_self() defaultWorkspace];
        if (v16)
        {
          v17 = v16;
          v18 = sub_20CE12444();
          [v17 openSensitiveURL:v18 withOptions:0];
        }

        (*(v15 + 8))(v2, v14);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CD95B70(void *a1)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_20CD9589C();
}

void sub_20CD95C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = sub_20CE13914();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_20CE13914();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v10 = sub_20CE13914();

  v12 = [objc_opt_self() actionWithTitle:v10 style:0 handler:{0, 0xE000000000000000}];

  [v9 addAction_];
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = v5;
  }

  [v11 presentViewController:v9 animated:1 completion:0];
}

void sub_20CD95DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v6 = sub_20CE13914();

  v23 = [objc_opt_self() alertControllerWithTitle:0 message:v6 preferredStyle:{0, 0xE000000000000000}];

  sub_20CE12354();

  v7 = sub_20CE13914();

  v29 = a3;
  v30 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_20CD95834;
  v28 = &block_descriptor;
  v8 = _Block_copy(&aBlock);

  v20 = objc_opt_self();
  v9 = [v20 actionWithTitle:v7 style:0 handler:{v8, 0xE000000000000000}];
  _Block_release(v8);

  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v10 = qword_27C817868;
  v11 = unk_27C817870;
  v19 = qword_27C817868;
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20CE16360;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  *(v12 + 48) = 0xD000000000000010;
  *(v12 + 56) = 0x800000020CE1C5A0;
  aBlock = v12;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v13 = sub_20CE13914();

  [v9 setAccessibilityIdentifier_];

  sub_20CE12354();

  v14 = sub_20CE13914();

  v29 = a1;
  v30 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_20CD95834;
  v28 = &block_descriptor_3;
  v15 = _Block_copy(&aBlock);

  v16 = [v20 actionWithTitle:v14 style:2 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20CE16360;
  *(v17 + 32) = v19;
  *(v17 + 40) = v11;
  strcpy((v17 + 48), "Alert.Cancel");
  *(v17 + 61) = 0;
  *(v17 + 62) = -5120;
  aBlock = v17;

  sub_20CE138C4();

  v18 = sub_20CE13914();

  [v16 setAccessibilityIdentifier_];

  [v23 addAction_];
  [v23 addAction_];
  [v24 presentViewController:v23 animated:1 completion:0];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CD96354(uint64_t a1)
{
  if (!qword_27C812600)
  {
    sub_20CE12474();
    v1 = sub_20CE13F44();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812600);
    }
  }
}

uint64_t sub_20CD963AC(uint64_t a1)
{
  sub_20CD96354(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD96410(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_20CE126A4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  sub_20CE13B84();
  v3[10] = sub_20CE13B74();
  v6 = sub_20CE13B24();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x2822009F8](sub_20CD9653C, v6, v5);
}

uint64_t sub_20CD9653C()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_20CD96670;
  v5 = v0[9];
  v6 = v0[3];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_20CD96670()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_20CD96790, v3, v2);
}

uint64_t sub_20CD96790()
{
  v37 = v0;
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  (*(v3 + 16))(v2, v1, v4);
  v5 = (*(v3 + 88))(v2, v4);
  v6 = v5;
  if (v5 == *MEMORY[0x277D12C78])
  {
    (*(v0[7] + 96))(v0[8], v0[6]);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v7 = sub_20CE12CB4();
    __swift_project_value_buffer(v7, qword_27C817768);
    v8 = sub_20CE12C94();
    v9 = sub_20CE13CD4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136446210;
      v12 = sub_20CE14414();
      v14 = sub_20CD96DCC(v12, v13, &v36);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_20CD70000, v8, v9, "[%{public}s] Real results are being ignored. Forcing inconclusive results.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x20F314110](v11, -1, -1);
      MEMORY[0x20F314110](v10, -1, -1);
    }

    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[6];
    v18 = v0[7];
    v19 = v0[2];
    sub_20CD7C52C(0);
    v21 = *(v20 + 48);
    v22 = *MEMORY[0x277D12C88];
    v23 = sub_20CE12724();
    (*(*(v23 - 8) + 104))(v19, v22, v23);
    sub_20CD7C2DC(0);
    swift_storeEnumTagMultiPayload();
    sub_20CE127D4();
    (*(v18 + 8))(v16, v17);
    (*(v18 + 104))(v19, v6, v17);
    v24 = sub_20CE127E4();
    (*(*(v24 - 8) + 8))(v15 + v21, v24);
    sub_20CD96BB0(v15);
  }

  else
  {
    v25 = v0[8];
    v26 = v0[9];
    v27 = v0[6];
    v28 = v0[7];
    v29 = v0[2];
    if (v5 == *MEMORY[0x277D12C70])
    {
      (*(v28 + 96))(v0[8], v0[6]);
      sub_20CD7C468(0);
      v31 = *(v30 + 64);
      (*(v28 + 32))(v29, v26, v27);
      v32 = sub_20CE12744();
      (*(*(v32 - 8) + 8))(v25 + v31, v32);
      v33 = sub_20CE12714();
      (*(*(v33 - 8) + 8))(v25, v33);
    }

    else
    {
      (*(v28 + 32))(v0[2], v0[9], v0[6]);
      (*(v28 + 8))(v25, v27);
    }
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_20CD96BB0(uint64_t a1)
{
  sub_20CD7C2DC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD96C0C(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t InconclusiveSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_20CD96CC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CD7C660;

  return sub_20CD96410(a1, a2);
}

uint64_t sub_20CD96D6C(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 16))(a1, v3, v4);
}

unint64_t sub_20CD96DCC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20CD96E98(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20CD8A98C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_20CD96E98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20CD96FA4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20CE14124();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_20CD96FA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_20CD96FF0(a1, a2);
  sub_20CD97120(&unk_2823BADC0);
  return v3;
}

void *sub_20CD96FF0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20CD8DC7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20CE14124();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20CE13A04();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CD8DC7C(v10, 0);
        result = sub_20CE140C4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20CD97120(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_20CD9720C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_20CD9720C(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CD8E7E4();
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

uint64_t dispatch thunk of InconclusiveSession.hearingTestStatusWithAverageNoise(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CD7C660;

  return v8(a1, a2);
}

uint64_t sub_20CD97480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for InconclusiveSession();
  v7 = swift_allocObject();
  sub_20CD75924(&v9, v7 + 16);
  return v7;
}

uint64_t sub_20CD9750C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20CE12914();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE12934();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277D12CF8])
  {
    (*(v9 + 96))(v11, v8);
    v13 = *(v5 + 32);
    v13(v7, v11, v4);
    *(a1 + 24) = v4;
    *(a1 + 32) = &protocol witness table for HTEnviNoiseData;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    result = (v13)(boxed_opaque_existential_1, v7, v4);
    *(a1 + 40) = 0;
  }

  else if (v12 == *MEMORY[0x277D12D08])
  {
    (*(v9 + 96))(v11, v8);
    v16 = *(v5 + 32);
    v16(v7, v11, v4);
    *(a1 + 24) = v4;
    *(a1 + 32) = &protocol witness table for HTEnviNoiseData;
    v17 = __swift_allocate_boxed_opaque_existential_1(a1);
    result = (v16)(v17, v7, v4);
    *(a1 + 40) = 1;
  }

  else if (v12 == *MEMORY[0x277D12D00])
  {
    (*(v9 + 96))(v11, v8);
    v18 = *(v5 + 32);
    v18(v7, v11, v4);
    *(a1 + 24) = v4;
    *(a1 + 32) = &protocol witness table for HTEnviNoiseData;
    v19 = __swift_allocate_boxed_opaque_existential_1(a1);
    result = (v18)(v19, v7, v4);
    *(a1 + 40) = 2;
  }

  else
  {
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v20 = sub_20CE12CB4();
    __swift_project_value_buffer(v20, qword_27C8177B0);
    v21 = sub_20CE12C94();
    v22 = sub_20CE13CC4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_20CD96DCC(0xD000000000000011, 0x800000020CE1C670, &v27);
      _os_log_impl(&dword_20CD70000, v21, v22, "[%{public}s] Unknown case of HTEnviNoiseStatus.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x20F314110](v24, -1, -1);
      MEMORY[0x20F314110](v23, -1, -1);
    }

    v25 = MEMORY[0x277D84F90];
    *(a1 + 24) = &type metadata for EmptyNoiseData;
    *(a1 + 32) = &off_2823BC360;
    *a1 = v25;
    *(a1 + 8) = 0;
    *(a1 + 40) = 0;
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_20CD9797C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_20CD979C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HKHealthStore.latestAudiogramForHearingTestInitialData()()
{
  v1[6] = v0;
  v1[7] = swift_getObjectType();
  sub_20CD98BB0(0, &qword_27C812608, MEMORY[0x277CCB610]);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_20CE124E4();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_20CE125A4();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = sub_20CE125B4();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  sub_20CD849AC(0);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD97C48, 0, 0);
}

uint64_t sub_20CD97C48()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_20CE12594();
  v4 = (*(v2 + 104))(v1, *MEMORY[0x277CC9988], v3);
  if (__OFSUB__(0, *MEMORY[0x277D11270]))
  {
    __break(1u);
  }

  else
  {
    v36 = v0[20];
    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[16];
    v34 = v0[21];
    v35 = v0[17];
    v9 = v0[15];
    v33 = v0[14];
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[11];
    sub_20CE124D4();
    sub_20CE12584();
    v13 = v11;
    v14 = *(v10 + 8);
    v14(v13, v12);
    (*(v9 + 8))(v8, v33);
    (*(v7 + 8))(v6, v35);
    sub_20CD7DC78(v34, v36);
    if ((*(v10 + 48))(v36, 1, v12) == 1)
    {
      v15 = 0;
    }

    else
    {
      v16 = v0[20];
      v17 = v0[11];
      v15 = sub_20CE124A4();
      v14(v16, v17);
    }

    v18 = objc_opt_self();
    v19 = [v18 predicateForSamplesWithStartDate:v15 endDate:0 options:0];
    v0[22] = v19;

    v20 = [v18 predicateForObjectsWithMetadataKey_];
    v0[23] = v20;
    sub_20CD98B04();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_20CE16F10;
    *(v21 + 32) = v19;
    *(v21 + 40) = v20;
    sub_20CD83128(0, &qword_27C812618, 0x277CCAC30);
    v22 = v19;
    v23 = v20;
    v24 = sub_20CE13AA4();

    v25 = [objc_opt_self() andPredicateWithSubpredicates_];
    v0[24] = v25;

    v26 = MEMORY[0x277CCB570];
    sub_20CD98B58(0, &qword_27C812620, &qword_27C812628, MEMORY[0x277CCB570]);
    sub_20CD98BB0(0, &qword_27C812628, v26);
    *(swift_allocObject() + 16) = xmmword_20CE16370;
    sub_20CD83128(0, &qword_27C812630, 0x277CCD038);
    v27 = [swift_getObjCClassFromMetadata() audiogramSampleType];
    sub_20CD83128(0, &qword_27C812610, 0x277CCD8A8);
    v28 = v25;
    sub_20CE13834();

    v29 = MEMORY[0x277CC89F0];
    sub_20CD98B58(0, &qword_27C812638, &qword_27C812640, MEMORY[0x277CC89F0]);
    sub_20CD98BB0(0, &qword_27C812640, v29);
    *(swift_allocObject() + 16) = xmmword_20CE16370;
    KeyPath = swift_getKeyPath();
    MEMORY[0x20F3117D0](KeyPath, 1);
    sub_20CE13844();
    v31 = swift_task_alloc();
    v0[25] = v31;
    *v31 = v0;
    v31[1] = sub_20CD9815C;
    v5 = v0[8];
    v4 = v0[6];
  }

  return MEMORY[0x282120380](v4, v5);
}

uint64_t sub_20CD9815C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_20CD98744;
  }

  else
  {
    v4 = sub_20CD98270;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CD98270()
{
  v56 = v0;
  v1 = v0[26];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[26];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v27 = sub_20CE12CB4();
    __swift_project_value_buffer(v27, qword_27C817780);
    v28 = sub_20CE12C94();
    v29 = sub_20CE13CD4();
    v30 = os_log_type_enabled(v28, v29);
    v32 = v0[23];
    v31 = v0[24];
    v33 = v0[21];
    v34 = v0[22];
    v35 = v0[9];
    v36 = v0[10];
    v37 = v0[8];
    if (v30)
    {
      v54 = v0[10];
      v52 = v0[21];
      v38 = swift_slowAlloc();
      v50 = v37;
      v39 = swift_slowAlloc();
      v55 = v39;
      *v38 = 136446210;
      v40 = sub_20CE14414();
      v48 = v34;
      v42 = sub_20CD96DCC(v40, v41, &v55);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_20CD70000, v28, v29, "[%{public}s] Could not find Hearing Test generated audiogram sample for hearing test initial data", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x20F314110](v39, -1, -1);
      MEMORY[0x20F314110](v38, -1, -1);

      (*(v35 + 8))(v54, v50);
      v43 = v52;
    }

    else
    {

      (*(v35 + 8))(v36, v37);
      v43 = v33;
    }

    sub_20CD85070(v43);
    v1 = 0;
    goto LABEL_22;
  }

LABEL_28:
  v2 = sub_20CE141C4();
  v3 = v0[26];
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v3 + 32;
  while (1)
  {
    if (v5)
    {
      v8 = MEMORY[0x20F313610](v4, v0[26]);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_27;
      }

      v8 = *(v7 + 8 * v4);
    }

    v9 = v8;
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v1 = v11;
      if ([v11 isFirstPartyHearingTestResult])
      {
        break;
      }
    }

    ++v4;
    if (v10 == v2)
    {
      goto LABEL_16;
    }
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v12 = sub_20CE12CB4();
  __swift_project_value_buffer(v12, qword_27C817780);
  v13 = sub_20CE12C94();
  v14 = sub_20CE13CD4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[24];
  v53 = v0[23];
  v17 = v0[21];
  v18 = v0[22];
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[8];
  if (v15)
  {
    v51 = v0[8];
    v49 = v0[10];
    v22 = swift_slowAlloc();
    v47 = v18;
    v23 = swift_slowAlloc();
    v55 = v23;
    *v22 = 136446210;
    v24 = sub_20CE14414();
    v46 = v17;
    v26 = sub_20CD96DCC(v24, v25, &v55);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20CD70000, v13, v14, "[%{public}s] Found a compatible sample", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x20F314110](v23, -1, -1);
    MEMORY[0x20F314110](v22, -1, -1);

    (*(v19 + 8))(v49, v51);
    sub_20CD85070(v46);
  }

  else
  {

    (*(v19 + 8))(v20, v21);
    sub_20CD85070(v17);
  }

LABEL_22:

  v44 = v0[1];

  return v44(v1);
}

uint64_t sub_20CD98744()
{
  v35 = v0;
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = v1;
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CB4();

  v33 = v5;
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  if (v6)
  {
    v31 = v0[24];
    v32 = v0[22];
    v15 = swift_slowAlloc();
    v30 = v8;
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136446466;
    v17 = sub_20CE14414();
    v29 = v10;
    v19 = sub_20CD96DCC(v17, v18, &v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v28 = v14;
    v20 = *(v0[3] - 8);
    swift_task_alloc();
    (*(v20 + 16))();
    v21 = sub_20CE13984();
    v23 = v22;

    v24 = sub_20CD96DCC(v21, v23, &v34);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_20CD70000, v4, v33, "[%{public}s] Failed to fetch latest audiogram: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v16, -1, -1);
    MEMORY[0x20F314110](v15, -1, -1);

    (*(v13 + 8))(v12, v28);
    v25 = v29;
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v25 = v10;
  }

  sub_20CD85070(v25);

  v26 = v0[1];

  return v26(0);
}

void sub_20CD98AA4(id *a1)
{
  v1 = [*a1 startDate];
  sub_20CE124B4();
}

void sub_20CD98B04()
{
  if (!qword_27C812230)
  {
    v0 = sub_20CE14264();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812230);
    }
  }
}

void sub_20CD98B58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_20CD98BB0(255, a3, a4);
    v5 = sub_20CE14264();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CD98BB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_20CD83128(255, &qword_27C812610, 0x277CCD8A8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_20CD98C2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_20CE12924();
  v2[4] = swift_task_alloc();
  v3 = sub_20CE12714();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD98D18, 0, 0);
}

uint64_t sub_20CD98D18()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  sub_20CE12704();
  sub_20CE126E4();
  sub_20CE126C4();
  sub_20CE126F4();
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_20CD98E98;
  v5 = v0[7];

  return v7(v5, v2, v3);
}

uint64_t sub_20CD98E98()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CD99050, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20CD99050()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CD990E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CD7C660;

  return sub_20CD98C2C(a1);
}

uint64_t sub_20CD9917C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20CD991C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_20CD99210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_20CD99234, 0, 0);
}

uint64_t sub_20CD99234()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 24);
  v3 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 0;
    if (!v3)
    {
      v5 = *(v1 + 16);
      v6 = *(v0 + 48);
      swift_beginAccess();
      v7 = *(v6 + 32);

      sub_20CD996F0(v5, v2);
      v8 = [v5 productName];
      if (v8)
      {
        v9 = v8;
        v10 = sub_20CE13954();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v14 = (v7 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_pairedHeadPhoneProductType);
      *v14 = v10;
      v14[1] = v12;

      v15 = *(v6 + 32);

      v16 = [v5 firmwareVersion];
      if (v16)
      {
        v17 = v16;
        v18 = sub_20CE13954();
        v20 = v19;
        sub_20CD99704(v5, v2);
      }

      else
      {
        sub_20CD99704(v5, v2);
        v18 = 0;
        v20 = 0;
      }

      v21 = (v15 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_airPodsFirmware);
      *v21 = v18;
      v21[1] = v20;

      v13 = *(v0 + 8);
      goto LABEL_12;
    }
  }

  **(v0 + 56) = v4;
  type metadata accessor for PreTestError(0);
  swift_storeEnumTagMultiPayload();
  sub_20CD99698();
  swift_willThrowTypedImpl();
  v13 = *(v0 + 8);
LABEL_12:

  return v13();
}

uint64_t sub_20CD99438(uint64_t a1)
{
  v2[2] = a1;
  type metadata accessor for PreTestError(0);
  v3 = swift_task_alloc();
  v2[3] = v3;
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_20CD99510;

  return sub_20CD99210(v5, v4, v3);
}

uint64_t sub_20CD99510()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    sub_20CD99634(*(v2 + 24), *(v2 + 16));
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_20CD99634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreTestError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CD99698()
{
  result = qword_27C812648;
  if (!qword_27C812648)
  {
    type metadata accessor for PreTestError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812648);
  }

  return result;
}

uint64_t sub_20CD996F0(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0xBFu)
  {
    return swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t sub_20CD99704(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0xBFu)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t type metadata accessor for ClassificationInfoView(uint64_t a1)
{
  result = qword_27C812650;
  if (!qword_27C812650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CD9978C(uint64_t a1)
{
  sub_20CD9AFE8(319, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20CD9AFE8(319, &qword_27C812598, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_20CD998BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CD99904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CD99998@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_20CD9AB60(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = type metadata accessor for BothEarsClassificationView(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD9AB38(0);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD9AB10(0);
  v42 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_20CE13B84();
  v43 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = a1[5];
  v50 = a1[4];
  v51 = v23;
  v52 = a1[6];
  v24 = a1[2];
  v49 = a1[3];
  v48 = v24;
  v25 = *a1;
  v47 = a1[1];
  v46 = v25;
  v26 = *(v8 + 20);
  *(v10 + v26) = swift_getKeyPath();
  sub_20CD9AFE8(0, &qword_27C812390, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v27 = v51;
  v10[4] = v50;
  v10[5] = v27;
  v10[6] = v52;
  v28 = v47;
  *v10 = v46;
  v10[1] = v28;
  v29 = v49;
  v10[2] = v48;
  v10[3] = v29;
  sub_20CD9B04C(&v46, v53);
  sub_20CE135F4();
  sub_20CE12FF4();
  sub_20CD9B0A8(v10, v13, type metadata accessor for BothEarsClassificationView);
  v30 = &v13[*(v41 + 36)];
  v31 = v53[5];
  *(v30 + 4) = v53[4];
  *(v30 + 5) = v31;
  *(v30 + 6) = v53[6];
  v32 = v53[1];
  *v30 = v53[0];
  *(v30 + 1) = v32;
  v33 = v53[3];
  *(v30 + 2) = v53[2];
  *(v30 + 3) = v33;
  LOBYTE(v26) = sub_20CE132A4();
  sub_20CD9B0A8(v13, v20, sub_20CD9AB38);
  v34 = &v20[*(v42 + 36)];
  *v34 = v26;
  *(v34 + 8) = xmmword_20CE17020;
  *(v34 + 24) = xmmword_20CE17020;
  v34[40] = 0;
  sub_20CD9B0A8(v20, v22, sub_20CD9AB10);
  sub_20CD99ED8(a1, v7);
  sub_20CD9B110(v22, v17, sub_20CD9AB10);
  v35 = v45;
  sub_20CD9B110(v7, v45, sub_20CD9AB60);
  v36 = v44;
  sub_20CD9B110(v17, v44, sub_20CD9AB10);
  sub_20CD9AA98(0);
  v38 = v36 + *(v37 + 48);
  *v38 = 0x402C000000000000;
  *(v38 + 8) = 0;
  sub_20CD9B110(v35, v36 + *(v37 + 64), sub_20CD9AB60);
  sub_20CD9B1E4(v7, sub_20CD9AB60);
  sub_20CD9B1E4(v22, sub_20CD9AB10);
  sub_20CD9B1E4(v35, sub_20CD9AB60);
  sub_20CD9B1E4(v17, sub_20CD9AB10);
}

uint64_t sub_20CD99ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_20CD9AD40(0);
  v42 = v3;
  v45 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v50 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v38 - v6;
  v7 = sub_20CE135B4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  sub_20CD9AC58(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v47 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  sub_20CE13B84();
  v46 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = sub_20CE13114();
  *(v17 + 1) = 0;
  v17[16] = 0;
  sub_20CD9B178(0, &qword_27C8126F8, sub_20CD9ACEC, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_20CD9A424(a1, &v17[*(v18 + 44)]);
  sub_20CE135A4();
  v53 = sub_20CDAD1C4(0, *(*(a1 + 160) + 16), *(a1 + 160));
  swift_getKeyPath();
  sub_20CD9AE08(0);
  sub_20CD9AEA4(0);
  v41 = v12;
  sub_20CD9B2D8(&qword_27C8126F0, sub_20CD9AE08, MEMORY[0x277D83980]);
  v43 = v17;
  sub_20CD9B2D8(&qword_27C812700, sub_20CD9AEA4, MEMORY[0x277CE14C0]);
  v19 = v49;
  sub_20CE135C4();
  v20 = v47;
  sub_20CD9B110(v17, v47, sub_20CD9AC58);
  v52 = 0;
  v39 = *(v8 + 16);
  v39(v48, v12, v7);
  v51 = 0;
  v21 = v45;
  v22 = v7;
  v40 = *(v45 + 16);
  v23 = v50;
  v24 = v19;
  v25 = v42;
  v40(v50, v24, v42);
  v26 = v44;
  sub_20CD9B110(v20, v44, sub_20CD9AC58);
  sub_20CD9ABC8(0);
  v28 = v27;
  v29 = v26 + *(v27 + 48);
  v30 = v52;
  v31 = v8;
  *v29 = 0x4034000000000000;
  *(v29 + 8) = v30;
  v32 = v48;
  v39((v26 + *(v27 + 64)), v48, v22);
  v33 = v26 + *(v28 + 80);
  v34 = v51;
  *v33 = 0x4034000000000000;
  *(v33 + 8) = v34;
  v40((v26 + *(v28 + 96)), v23, v25);
  v35 = *(v21 + 8);
  v35(v49, v25);
  v36 = *(v31 + 8);
  v36(v41, v22);
  sub_20CD9B1E4(v43, sub_20CD9AC58);
  v35(v50, v25);
  v36(v32, v22);
  sub_20CD9B1E4(v47, sub_20CD9AC58);
}

uint64_t sub_20CD9A424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ClassificationDescriptionView(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 128);
  v12 = *(a1 + 152);
  *v9 = *(a1 + 112);
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  v17 = *(a1 + 136);
  *(v9 + 24) = v17;
  *(v9 + 5) = v12;
  v13 = *(v4 + 20);
  *&v9[v13] = swift_getKeyPath();
  sub_20CD9AFE8(0, &qword_27C812390, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_20CD9B110(v9, v7, type metadata accessor for ClassificationDescriptionView);
  sub_20CD9B110(v7, a2, type metadata accessor for ClassificationDescriptionView);
  sub_20CD9AD20(0);
  v15 = a2 + *(v14 + 48);
  *v15 = 0;
  *(v15 + 8) = 1;

  sub_20CD9B1E4(v9, type metadata accessor for ClassificationDescriptionView);
  sub_20CD9B1E4(v7, type metadata accessor for ClassificationDescriptionView);
}

uint64_t sub_20CD9A64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  sub_20CD9AE3C(0);
  v3 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ClassificationHighlightView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD9AF5C(0);
  v10 = v9;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  sub_20CE13B84();
  v30 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CD9B110(v29, v5, sub_20CD9AE3C);
  sub_20CD9B0A8(&v5[*(v3 + 48)], v8, type metadata accessor for ClassificationHighlightView.Model);
  v19 = *(v6 + 20);
  *&v8[v19] = swift_getKeyPath();
  sub_20CD9AFE8(0, &qword_27C812390, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_20CE135F4();
  sub_20CE12FF4();
  sub_20CD9B0A8(v8, v16, type metadata accessor for ClassificationHighlightView);
  v20 = &v16[*(v10 + 36)];
  v21 = v37;
  *(v20 + 4) = v36;
  *(v20 + 5) = v21;
  *(v20 + 6) = v38;
  v22 = v33;
  *v20 = v32;
  *(v20 + 1) = v22;
  v23 = v35;
  *(v20 + 2) = v34;
  *(v20 + 3) = v23;
  sub_20CD9B0A8(v16, v18, sub_20CD9AF5C);
  sub_20CD9B110(v18, v13, sub_20CD9AF5C);
  v24 = v31;
  sub_20CD9B110(v13, v31, sub_20CD9AF5C);
  sub_20CD9AED8(0);
  v26 = v24 + *(v25 + 48);
  *v26 = 0x4038000000000000;
  *(v26 + 8) = 0;
  sub_20CD9B1E4(v18, sub_20CD9AF5C);
  sub_20CD9B1E4(v13, sub_20CD9AF5C);
}

uint64_t sub_20CD9A9F4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_20CE131B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_20CD9B178(0, &qword_27C812660, sub_20CD9AA64, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  return sub_20CD99998(v2, a2 + *(v4 + 44));
}

void sub_20CD9AA98(uint64_t a1)
{
  if (!qword_27C812670)
  {
    sub_20CD9AB10(255);
    sub_20CD9AB60(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C812670);
    }
  }
}

void sub_20CD9ABC8(uint64_t a1)
{
  if (!qword_27C812698)
  {
    sub_20CD9AC58(255);
    sub_20CE135B4();
    sub_20CD9AD40(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27C812698);
    }
  }
}

void sub_20CD9AC58(uint64_t a1)
{
  if (!qword_27C8126A0)
  {
    sub_20CD9ACEC(255);
    sub_20CD9B2D8(&qword_27C8126B8, sub_20CD9ACEC, MEMORY[0x277CE14C0]);
    v1 = sub_20CE13574();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8126A0);
    }
  }
}

void sub_20CD9AD40(uint64_t a1)
{
  if (!qword_27C8126C0)
  {
    sub_20CD9AE08(255);
    sub_20CD9AEA4(255);
    sub_20CD9B2D8(&qword_27C8126F0, sub_20CD9AE08, MEMORY[0x277D83980]);
    v1 = sub_20CE135D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8126C0);
    }
  }
}

void sub_20CD9AE3C(uint64_t a1)
{
  if (!qword_27C8126D0)
  {
    type metadata accessor for ClassificationHighlightView.Model(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8126D0);
    }
  }
}

void sub_20CD9AEF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_20CD9AF84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_20CE12FD4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CD9AFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CD9B0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CD9B110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_20CD9B178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_20CE12F54();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_20CD9B1E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20CD9B244(uint64_t a1)
{
  if (!qword_27C812710)
  {
    sub_20CD9AA64(255);
    sub_20CD9B2D8(&qword_27C812718, sub_20CD9AA64, MEMORY[0x277CE14C0]);
    v1 = sub_20CE13584();
    if (!v2)
    {
      atomic_store(v1, &qword_27C812710);
    }
  }
}

uint64_t sub_20CD9B2D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CD9B320()
{
  v1 = sub_20CE12FA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 != *MEMORY[0x277CDF9F8] && v5 != *MEMORY[0x277CDF9E0] && v5 != *MEMORY[0x277CDF9E8] && v5 != *MEMORY[0x277CDF9D8] && v5 != *MEMORY[0x277CDF9F0] && v5 != *MEMORY[0x277CDFA00] && v5 != *MEMORY[0x277CDFA10] && v5 != *MEMORY[0x277CDF988])
  {
    if (v5 == *MEMORY[0x277CDF998] || v5 == *MEMORY[0x277CDF9A8] || v5 == *MEMORY[0x277CDF9B8] || v5 == *MEMORY[0x277CDF9D0])
    {
      return 1;
    }

    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v17 = sub_20CE12CB4();
    __swift_project_value_buffer(v17, qword_27C817768);
    v18 = sub_20CE12C94();
    v19 = sub_20CE13CB4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_20CD96DCC(0x5463696D616E7944, 0xEF657A6953657079, &v23);
      _os_log_impl(&dword_20CD70000, v18, v19, "[%{public}s] Unhandled new DynamicTypeSize case.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x20F314110](v21, -1, -1);
      MEMORY[0x20F314110](v20, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return 0;
}

id sub_20CD9B610()
{
  v0 = sub_20CE13EB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20CE13E74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE13F14();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  sub_20CE13EF4();
  (*(v5 + 104))(v7, *MEMORY[0x277D74FD8], v4);
  sub_20CE13E84();
  (*(v1 + 104))(v3, *MEMORY[0x277D75020], v0);
  sub_20CE13E64();
  sub_20CE13EA4();
  sub_20CD83128(0, &qword_27C8127E0, 0x277D75220);
  (*(v9 + 16))(v12, v14, v8);
  v15 = sub_20CE13F24();
  if (qword_27C811D50 != -1)
  {
    swift_once();
  }

  [v15 setTintColor_];
  if (qword_27C811D58 != -1)
  {
    swift_once();
  }

  [v15 setTitleColor:qword_27C817898 forState:0];
  v16 = [v15 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setTextAlignment_];
  }

  v18 = qword_27C811D38;
  v19 = v15;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = qword_27C812720;
  v20 = *algn_27C812728;
  v22 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20CE16360;
  *(v23 + 32) = v21;
  *(v23 + 40) = v20;
  strcpy((v23 + 48), "ActionButton");
  *(v23 + 61) = 0;
  *(v23 + 62) = -5120;
  v26[1] = v23;
  sub_20CDA1464(0, &qword_27C8121F0, v22, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v24 = sub_20CE13914();

  [v19 setAccessibilityIdentifier_];

  (*(v9 + 8))(v14, v8);
  return v19;
}

uint64_t sub_20CD9BADC()
{
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v1 = qword_27C817868;
  v0 = unk_27C817870;
  v2 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CE16360;
  *(v3 + 32) = v1;
  *(v3 + 40) = v0;
  *(v3 + 48) = 0x697461756C617645;
  *(v3 + 56) = 0xEA00000000006E6FLL;
  sub_20CDA1464(0, &qword_27C8121F0, v2, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v4 = sub_20CE138C4();
  v6 = v5;

  qword_27C812720 = v4;
  *algn_27C812728 = v6;
  return result;
}

id sub_20CD9BC2C()
{
  v1 = sub_20CE13384();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LabelledProgressView(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView;
  v10 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView);
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_progressViewModel);
    v21 = *(v6 + 20);
    v22 = 0x4008000000000000;
    v13 = *(v2 + 104);
    v13(v4, *MEMORY[0x277CE0AA0], v1);
    sub_20CDA1354();

    sub_20CE12EE4();
    v22 = 0x4020000000000000;
    v13(v4, *MEMORY[0x277CE0A90], v1);
    sub_20CE12EE4();
    *v8 = v12;
    sub_20CDA13A8(0);
    v15 = objc_allocWithZone(v14);
    v16 = v0;
    v17 = sub_20CE12F84();
    v18 = *(v0 + v9);
    *(v16 + v9) = v17;
    v11 = v17;

    v10 = 0;
  }

  v19 = v10;
  return v11;
}

void sub_20CD9BE44(void *a1)
{
  [a1 setNumberOfLines_];
  [a1 setTextAlignment_];
  [a1 setAdjustsFontSizeToFitWidth_];
  sub_20CD83128(0, &qword_27C812758, 0x277D74300);
  v2 = sub_20CE13E04();
  [a1 setFont_];

  if (qword_27C811D40 != -1)
  {
    swift_once();
  }

  [a1 setTextColor_];
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v3 = sub_20CE13914();

  [a1 setText_];

  if (qword_27C811D38 != -1)
  {
    swift_once();
  }

  v5 = qword_27C812720;
  v4 = *algn_27C812728;
  v6 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16360;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = 0x65636E6164697547;
  *(v7 + 56) = 0xE800000000000000;
  sub_20CDA1464(0, &qword_27C8121F0, v6, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v8 = sub_20CE13914();

  [a1 setAccessibilityIdentifier_];
}

id HTUIEvaluationViewController.View.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HTUIEvaluationViewController.View.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_didTapHearHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton;
  *&v5[v11] = sub_20CD9B610();
  *&v5[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView] = 0;
  v12 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_metalAnimation;
  *&v5[v12] = [objc_allocWithZone(type metadata accessor for EvaluationVFXView()) init];
  v13 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageTitle;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTextAlignment_];
  [v14 setAdjustsFontSizeToFitWidth_];
  if (qword_27C811D40 != -1)
  {
    swift_once();
  }

  v48 = qword_27C817880;
  [v14 setTextColor_];
  sub_20CD83128(0, &qword_27C812758, 0x277D74300);
  v15 = sub_20CE13E04();
  [v14 setFont_];

  if (qword_27C811D38 != -1)
  {
    swift_once();
  }

  v17 = qword_27C812720;
  v16 = *algn_27C812728;
  v18 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20CE16360;
  v49 = v17;
  *(v19 + 32) = v17;
  *(v19 + 40) = v16;
  *(v19 + 48) = 0x656C746954;
  *(v19 + 56) = 0xE500000000000000;
  v51 = v19;
  sub_20CDA1464(0, &qword_27C8121F0, v18, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v20 = sub_20CE13914();

  [v14 setAccessibilityIdentifier_];

  *&v5[v13] = v14;
  v21 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageBody;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_27C811D48 != -1)
  {
    swift_once();
  }

  [v22 setTextColor_];
  [v22 setNumberOfLines_];
  [v22 setTextAlignment_];
  [v22 setAdjustsFontSizeToFitWidth_];
  v23 = sub_20CE13E04();
  [v22 setFont_];

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20CE16360;
  *(v24 + 32) = v17;
  *(v24 + 40) = v16;
  *(v24 + 48) = 2036625218;
  *(v24 + 56) = 0xE400000000000000;
  v51 = v24;

  sub_20CE138C4();

  v25 = sub_20CE13914();

  [v22 setAccessibilityIdentifier_];

  *&v5[v21] = v22;
  v26 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageStack;
  v27 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v27 setSpacing_];
  [v27 setAxis_];
  [v27 setAlignment_];
  *&v5[v26] = v27;
  v28 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_guidanceTitle;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_20CD9BE44(v29);
  *&v5[v28] = v29;
  v47 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_completionLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v30 setTextAlignment_];
  [v30 setNumberOfLines_];
  [v30 setAdjustsFontSizeToFitWidth_];
  [v30 setTextColor_];
  v31 = sub_20CE13E04();
  [v30 setFont_];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v32 = sub_20CE12354();
  sub_20CE0B9C8(v32, v33, 0xD000000000000015, 0x800000020CE1C710);

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20CE16360;
  *(v34 + 32) = v17;
  *(v34 + 40) = v16;
  strcpy((v34 + 48), "CompletionText");
  *(v34 + 63) = -18;

  sub_20CE138C4();

  v35 = sub_20CE13914();

  [v30 setAccessibilityIdentifier_];

  *&v5[v47] = v30;
  v36 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_captionLabel;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v37 setNumberOfLines_];
  [v37 setTextAlignment_];
  [v37 setTextColor_];
  v38 = sub_20CE13E04();
  [v37 setFont_];

  sub_20CE12354();
  v39 = sub_20CE13914();

  [v37 setText_];

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20CE16360;
  *(v40 + 32) = v49;
  *(v40 + 40) = v16;
  *(v40 + 48) = 0x6E6F6974706143;
  *(v40 + 56) = 0xE700000000000000;
  v51 = v40;

  sub_20CE138C4();

  v41 = sub_20CE13914();

  [v37 setAccessibilityIdentifier_];

  *&v5[v36] = v37;
  v42 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_progressViewModel;
  type metadata accessor for LabelledProgressView.Model(0);
  v43 = swift_allocObject();
  *(v43 + 32) = 0;
  *(v43 + 40) = 0;
  *(v43 + 56) = 1;
  sub_20CE12B24();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0xE000000000000000;

  *(v43 + 64) = 0;
  *(v43 + 40) = 0;
  *(v43 + 48) = 0;
  *(v43 + 32) = 0;
  *&v5[v42] = v43;
  v44 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_tapHearButton;
  *&v5[v44] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v5[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state] = 2;
  *&v5[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_marginDependentConstraints] = MEMORY[0x277D84F90];
  v50.receiver = v5;
  v50.super_class = type metadata accessor for HTUIEvaluationViewController.View();
  v45 = objc_msgSendSuper2(&v50, sel_initWithFrame_, a1, a2, a3, a4);
  sub_20CD9CD14();
  [v45 setupSubviews];
  sub_20CD9D190();

  return v45;
}

uint64_t sub_20CD9CD14()
{
  swift_getObjectType();
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_20CDA14B4;
  *(v3 + 24) = v2;
  v11[4] = sub_20CDA14BC;
  v11[5] = v3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_20CD9D01C;
  v11[3] = &block_descriptor_91;
  v4 = _Block_copy(v11);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = [objc_opt_self() systemBackgroundColor];
    [v5 setBackgroundColor_];

    [*&v5[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_tapHearButton] addTarget:v5 action:sel_didTapHear forControlEvents:64];
    sub_20CDA14E4(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20CE16370;
    v9 = sub_20CE12D34();
    v10 = MEMORY[0x277D74DB8];
    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    sub_20CE13E14();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CD9CF60(uint64_t a1)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);
  sub_20CD9EDC8(&v3);
}

id sub_20CD9D044()
{
  v1 = *&v0[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageStack];
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  [v0 addSubview_];
  v2 = sub_20CD9BC2C();
  [v0 addSubview_];

  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_tapHearButton];

  return [v0 addSubview_];
}

void sub_20CD9D190()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_20CDA05FC(v3);
  v5 = sub_20CD9BC2C();
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView;
  v7 = [*&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView] leadingAnchor];
  v8 = [v1 safeAreaLayoutGuide];
  v9 = [v8 &selRef_initWithName_manufacturer_model_hardwareVersion_firmwareVersion_softwareVersion_localIdentifier_UDIDeviceIdentifier_ + 1];

  v10 = [v7 constraintEqualToAnchor_];
  [v10 setActive_];

  v11 = [*&v1[v6] trailingAnchor];
  v12 = [v1 safeAreaLayoutGuide];
  v13 = [v12 &selRef_mediaAssistEnabled + 4];

  v14 = [v11 &selRef_class + 5];
  [v14 &selRef:1 worldWithURL:? options:? error:?];

  v15 = [*&v1[v6] topAnchor];
  v16 = [v1 safeAreaLayoutGuide];
  v17 = [v16 &selRef_handleTap];

  v18 = [v15 constraintEqualToAnchor:v17 constant:14.0];
  [v18 &selRef:1 worldWithURL:? options:? error:?];

  v19 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_metalAnimation];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [v19 &selRef_handleTap];
  v21 = [v1 &selRef_handleTap];
  v22 = [v20 &selRef_class + 5];

  [v22 &selRef:1 worldWithURL:? options:? error:?];
  v23 = [v19 bottomAnchor];
  v24 = [v1 &selRef_healthDataSource + 5];
  v25 = [v23 &selRef_class + 5];

  [v25 &selRef:1 worldWithURL:? options:? error:?];
  v26 = [v19 leadingAnchor];
  v27 = [v1 leadingAnchor];
  v28 = [v26 &selRef_class + 5];

  [v28 &selRef:1 worldWithURL:? options:? error:?];
  v29 = [v19 &selRef_mediaAssistEnabled + 4];
  v30 = [v1 &selRef_mediaAssistEnabled + 4];
  v31 = [v29 &selRef_class + 5];

  [v31 &selRef:1 worldWithURL:? options:? error:?];
  v32 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v1 addLayoutGuide_];
  v33 = [v32 &selRef_handleTap];
  v34 = [v1 &selRef_handleTap];
  v35 = [v33 &selRef_class + 5];

  [v35 &selRef:1 worldWithURL:? options:? error:?];
  v36 = [v32 heightAnchor];
  v37 = [v1 &selRef_initWithFrame_ + 2];
  v38 = [v36 constraintEqualToAnchor:v37 multiplier:0.47];

  [v38 &selRef:1 worldWithURL:? options:? error:?];
  v39 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageStack];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = [v39 centerXAnchor];
  v41 = [v1 safeAreaLayoutGuide];
  v42 = [v41 &selRef_zone + 2];

  v43 = [v40 &selRef_class + 5];
  [v43 &selRef:1 worldWithURL:? options:? error:?];

  v44 = [v39 centerYAnchor];
  v162 = v32;
  v45 = [v32 bottomAnchor];
  v46 = [v44 &selRef_class + 5];

  [v46 &selRef:1 worldWithURL:? options:? error:?];
  sub_20CDA1464(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CE16F10;
  v48 = [v39 leadingAnchor];
  v49 = [v1 safeAreaLayoutGuide];
  v50 = [v49 leadingAnchor];

  v51 = [v48 constraintGreaterThanOrEqualToAnchor:v50 constant:v4];
  *(inited + 32) = v51;
  v52 = [v39 trailingAnchor];
  v53 = [v1 safeAreaLayoutGuide];
  v54 = [v53 trailingAnchor];

  v55 = [v52 constraintLessThanOrEqualToAnchor:v54 constant:-v4];
  *(inited + 40) = v55;
  v164 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_marginDependentConstraints;
  swift_beginAccess();
  sub_20CDE528C(inited);
  swift_endAccess();
  v56 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v1 addLayoutGuide_];
  v57 = [v56 topAnchor];
  v58 = [v1 safeAreaLayoutGuide];
  v59 = [v58 topAnchor];

  v60 = [v57 constraintEqualToAnchor_];
  [v60 &selRef:1 worldWithURL:? options:? error:?];

  v61 = [v56 heightAnchor];
  v62 = [v1 safeAreaLayoutGuide];
  v63 = [v62 heightAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 multiplier:0.82];
  [v64 &selRef:1 worldWithURL:? options:? error:?];

  v65 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  [v1 addLayoutGuide_];
  v163 = v65;
  v66 = [v65 topAnchor];
  v67 = [v1 safeAreaLayoutGuide];
  v68 = [v67 topAnchor];

  v69 = [v66 constraintEqualToAnchor_];
  [v69 &selRef:1 worldWithURL:? options:? error:?];

  v70 = [v65 heightAnchor];
  v71 = [v1 safeAreaLayoutGuide];
  v72 = [v71 heightAnchor];

  v73 = [v70 constraintEqualToAnchor:v72 multiplier:0.94];
  [v73 &selRef:1 worldWithURL:? options:? error:?];

  v74 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_guidanceTitle];
  [v74 setTranslatesAutoresizingMaskIntoConstraints_];
  v75 = [v74 centerXAnchor];
  v76 = [v1 safeAreaLayoutGuide];
  v77 = [v76 centerXAnchor];

  v78 = [v75 constraintEqualToAnchor_];
  [v78 &selRef:1 worldWithURL:? options:? error:?];

  v79 = [v74 centerYAnchor];
  v161 = v56;
  v80 = [v56 bottomAnchor];
  v81 = [v79 &selRef_class + 5];

  [v81 &selRef:1 worldWithURL:? options:? error:?];
  v82 = swift_initStackObject();
  *(v82 + 16) = xmmword_20CE16350;
  v83 = [v74 bottomAnchor];
  v84 = [v1 safeAreaLayoutGuide];
  v85 = [v84 bottomAnchor];

  v86 = [v83 constraintLessThanOrEqualToAnchor:v85 constant:-v4];
  *(v82 + 32) = v86;
  v87 = [v74 leadingAnchor];
  v88 = [v1 &off_277DAD130 + 2];
  v89 = [v88 leadingAnchor];

  v90 = [v87 constraintGreaterThanOrEqualToAnchor:v89 constant:v4];
  *(v82 + 40) = v90;
  v91 = [v74 trailingAnchor];
  v92 = [v1 &off_277DAD130 + 2];
  v93 = [v92 trailingAnchor];

  v94 = [v91 constraintLessThanOrEqualToAnchor:v93 constant:-v4];
  *(v82 + 48) = v94;
  swift_beginAccess();
  sub_20CDE528C(v82);
  swift_endAccess();
  v95 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_completionLabel];
  [v95 setTranslatesAutoresizingMaskIntoConstraints_];
  v96 = [v95 centerXAnchor];
  v97 = [v1 &off_277DAD130 + 2];
  v98 = [v97 centerXAnchor];

  v99 = [v96 constraintEqualToAnchor_];
  [v99 setActive_];

  v100 = [v95 bottomAnchor];
  v101 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_captionLabel];
  v102 = [v101 topAnchor];
  v103 = [v100 constraintLessThanOrEqualToAnchor:v102 constant:-v4];

  [v103 setActive_];
  v104 = [v95 centerYAnchor];
  v105 = [*&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageTitle] centerYAnchor];
  v106 = [v104 constraintEqualToAnchor_];

  LODWORD(v107) = 1144750080;
  [v106 setPriority_];
  v160 = v106;
  [v106 setActive_];
  v108 = swift_initStackObject();
  *(v108 + 16) = xmmword_20CE16F10;
  v109 = [v95 leadingAnchor];
  v110 = [v1 safeAreaLayoutGuide];
  v111 = [v110 leadingAnchor];

  v112 = [v109 constraintGreaterThanOrEqualToAnchor:v111 constant:v4];
  *(v108 + 32) = v112;
  v113 = [v95 trailingAnchor];
  v114 = [v1 safeAreaLayoutGuide];
  v115 = [v114 trailingAnchor];

  v116 = [v113 constraintLessThanOrEqualToAnchor:v115 constant:-v4];
  *(v108 + 40) = v116;
  swift_beginAccess();
  sub_20CDE528C(v108);
  swift_endAccess();
  [v101 setTranslatesAutoresizingMaskIntoConstraints_];
  v117 = [v101 centerXAnchor];
  v118 = [v1 safeAreaLayoutGuide];
  v119 = [v118 centerXAnchor];

  v120 = [v117 constraintEqualToAnchor_];
  [v120 setActive_];

  v121 = swift_initStackObject();
  *(v121 + 16) = xmmword_20CE16350;
  v122 = [v101 bottomAnchor];
  v123 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton];
  v124 = [v123 topAnchor];
  v125 = [v122 constraintEqualToAnchor:v124 constant:v4 * -0.5];

  *(v121 + 32) = v125;
  v126 = [v101 leadingAnchor];
  v127 = [v1 &off_277DAD130 + 2];
  v128 = [v127 leadingAnchor];

  v129 = [v126 constraintGreaterThanOrEqualToAnchor:v128 constant:v4];
  *(v121 + 40) = v129;
  v130 = [v101 trailingAnchor];
  v131 = [v1 &off_277DAD130 + 2];
  v132 = [v131 trailingAnchor];

  v133 = [v130 constraintLessThanOrEqualToAnchor:v132 constant:-v4];
  *(v121 + 48) = v133;
  swift_beginAccess();
  sub_20CDE528C(v121);
  swift_endAccess();
  [v123 setTranslatesAutoresizingMaskIntoConstraints_];
  v134 = [v123 bottomAnchor];
  v135 = [v163 bottomAnchor];
  v136 = [v134 constraintEqualToAnchor_];

  [v136 setActive_];
  v137 = [v123 centerXAnchor];
  v138 = [v1 safeAreaLayoutGuide];
  v139 = [v138 centerXAnchor];

  v140 = [v137 constraintEqualToAnchor_];
  [v140 setActive_];

  v141 = [v123 widthAnchor];
  v142 = [v141 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v143) = 1144750080;
  [v142 setPriority_];
  [v142 setActive_];

  v144 = swift_initStackObject();
  *(v144 + 16) = xmmword_20CE16F10;
  v145 = [v123 leadingAnchor];
  v146 = [v1 safeAreaLayoutGuide];
  v147 = [v146 leadingAnchor];

  v148 = [v145 constraintGreaterThanOrEqualToAnchor:v147 constant:v4];
  *(v144 + 32) = v148;
  v149 = [v123 &selRef_mediaAssistEnabled + 4];
  v150 = [v1 safeAreaLayoutGuide];
  v151 = [v150 &selRef_mediaAssistEnabled + 4];

  v152 = [v149 constraintLessThanOrEqualToAnchor:v151 constant:-v4];
  *(v144 + 40) = v152;
  swift_beginAccess();
  sub_20CDE528C(v144);
  swift_endAccess();
  v153 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_tapHearButton];
  [v153 setTranslatesAutoresizingMaskIntoConstraints_];
  [v153 hk:v1 alignConstraintsWithView:?];
  v154 = *&v1[v164];
  if (v154 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20CE141C4())
  {

    if (!i)
    {
      break;
    }

    v156 = 0;
    while (1)
    {
      if ((v154 & 0xC000000000000001) != 0)
      {
        v157 = MEMORY[0x20F313610](v156, v154);
      }

      else
      {
        if (v156 >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v157 = *(v154 + 8 * v156 + 32);
      }

      v158 = v157;
      v159 = v156 + 1;
      if (__OFADD__(v156, 1))
      {
        break;
      }

      sub_20CE13B84();
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v158 setActive_];

      ++v156;
      if (v159 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_13:
}

void sub_20CD9E86C(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for HTUIEvaluationViewController.View();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_metalAnimation];
  [v1 bounds];
  v3 = CGRectGetWidth(v17) * 0.5;
  [*&v1[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_guidanceTitle] frame];
  MinY = CGRectGetMinY(v18);
  v5 = sub_20CD9BC2C();
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  MaxY = CGRectGetMaxY(v19);
  v15 = v2 + OBJC_IVAR____TtC13HearingTestUI17EvaluationVFXView_cameraPosition;
  *v15 = v3;
  *(v15 + 8) = (MinY + MaxY) * 0.5;
  *(v15 + 16) = 0;
  sub_20CDA57FC();
}

id sub_20CD9E994()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_20CDA05FC(v3);
  v5 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_marginDependentConstraints;
  swift_beginAccess();
  v15 = v1;
  v6 = *&v1[v5];
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20CE141C4())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x20F313610](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_20CE13B84();
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v12 constant];
      if (v9 <= 0.0)
      {
        v10 = -v4;
      }

      else
      {
        v10 = v4;
      }

      [v12 setConstant_];

      ++v8;
      if (v13 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_16:

  v16.receiver = v15;
  v16.super_class = type metadata accessor for HTUIEvaluationViewController.View();
  return objc_msgSendSuper2(&v16, sel_updateConstraints);
}

uint64_t sub_20CD9EBB4(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);
  v3 = v2 - 2;
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  if (v3 < 3)
  {
    v4 = v3;
  }

  v6 = v4;
  return sub_20CD9EDC8(&v6);
}

void sub_20CD9EC1C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_20CD9EDC8(char *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *a1;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12CB4();
  __swift_project_value_buffer(v5, qword_27C817768);
  v6 = sub_20CE12C94();
  v7 = sub_20CE13CD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock = v9;
    *v8 = 136446466;
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, &aBlock);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v37[0] = v4;
    v13 = sub_20CE13974();
    v15 = sub_20CD96DCC(v13, v14, &aBlock);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] Transitioning to %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  v16 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state;
  *(v2 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state) = v4;
  sub_20CD9F384();
  sub_20CD9F6A4();
  sub_20CD9FB1C();
  sub_20CDA6B08(*(v2 + v16) - 2 < 3);
  v17 = *(v2 + v16) - 2 < 3;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20CDA1600;
  *(v21 + 24) = v19;
  v42 = sub_20CDA1604;
  v43 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_20CDB3E40;
  v41 = &block_descriptor_58;
  v22 = _Block_copy(&aBlock);

  [v20 animateWithDuration:v22 animations:0.2];

  _Block_release(v22);
  v23 = *(v2 + v16) != 4;
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_20CDA1600;
  *(v26 + 24) = v25;
  v42 = sub_20CDA1604;
  v43 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_20CDB3E40;
  v41 = &block_descriptor_70;
  v27 = _Block_copy(&aBlock);

  [v20 animateWithDuration:v27 animations:0.2];

  _Block_release(v27);
  LOBYTE(v27) = *(v2 + v16) != 4;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_20CDA1600;
  *(v30 + 24) = v29;
  v42 = sub_20CDA1604;
  v43 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_20CDB3E40;
  v41 = &block_descriptor_82;
  v31 = _Block_copy(&aBlock);

  [v20 animateWithDuration:v31 animations:0.2];

  _Block_release(v31);
  v32 = *(v2 + v16);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = 1.0;
    if ((v32 - 2) < 3)
    {
      v34 = 0.0;
    }

    v35 = Strong;
    [Strong setAlpha_];
  }

  return MEMORY[0x20F3141E0](v37);
}

void sub_20CD9F384()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state;
  v3 = v0[OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state];
  if ((v3 - 2) >= 3)
  {
    if (v3)
    {
      if (qword_27C811DC8 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_27C811DC8 == -1)
    {
LABEL_6:
      v4 = sub_20CE12354();
      sub_20CDB5D50(v4, v5);
      v15 = 0xE000000000000000;
      v6 = sub_20CE12354();
      sub_20CDB5EB0(v6, v7);
      goto LABEL_7;
    }

    swift_once();
    goto LABEL_6;
  }

LABEL_7:
  [v0 updateProgressTo:1 immediately:{0.0, v15}];
  v8 = sub_20CD9BC2C();
  v9 = v1[v2] - 2 < 3;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20CDA1600;
  *(v13 + 24) = v11;
  aBlock[4] = sub_20CDA1604;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_46;
  v14 = _Block_copy(aBlock);

  [v12 animateWithDuration:v14 animations:0.2];

  _Block_release(v14);
}

void sub_20CD9F6A4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);
  v2 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageTitle);
  if (v1 == 3)
  {
    if (qword_27C811DC8 == -1)
    {
      goto LABEL_6;
    }

LABEL_9:
    swift_once();
    goto LABEL_6;
  }

  if (v1 != 2)
  {
    v6 = sub_20CE13914();
    [v2 setText_];

    v7 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageBody);
    v5 = sub_20CE13914();
    [v7 setText_];
    goto LABEL_8;
  }

  if (qword_27C811DC8 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_20CE12354();
  v3 = sub_20CE13914();

  [v2 setText_];

  v4 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageBody);
  sub_20CE12354();
  v5 = sub_20CE13914();

  [v4 setText_];
LABEL_8:

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_20CDA09BC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_34;
  v10 = _Block_copy(aBlock);

  [v8 animateWithDuration:v10 animations:0.2];
  _Block_release(v10);
}

void sub_20CD9FA1C(uint64_t a1)
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
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state) & 0xFE;
    v4 = *(Strong + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageStack);
    if (v3 == 2)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    [v4 setAlpha_];
  }

  else
  {
  }
}

void sub_20CD9FB1C()
{
  v1 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state;
  v2 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);
  if (v2 == 4)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton);
    if (qword_27C811DC8 == -1)
    {
LABEL_6:
      sub_20CE12354();
      v4 = sub_20CE13914();

      [v3 setTitle:v4 forState:{0, 0xE000000000000000}];

      goto LABEL_7;
    }

LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  if (v2 == 3)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton);
    if (qword_27C811DC8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

LABEL_7:
  [*(v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton) setUserInteractionEnabled_];
  v5 = *(v0 + v1) - 5 < 0xFFFFFFFE;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20CDA0990;
  *(v9 + 24) = v7;
  aBlock[4] = sub_20CDA099C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_0;
  v10 = _Block_copy(aBlock);

  [v8 animateWithDuration:v10 animations:0.2];

  _Block_release(v10);
}

uint64_t HTUIEvaluationViewController.View.State.Ear.hashValue.getter()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

BOOL static HTUIEvaluationViewController.View.State.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_20CD9FFF8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

void sub_20CDA0080()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C8179E8;
  v1 = sub_20CE13914();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  qword_27C817888 = v2;
}

void sub_20CDA0160(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v4 = qword_27C8179E8;
  v5 = sub_20CE13914();
  v6 = [objc_opt_self() colorNamed:v5 inBundle:v4 compatibleWithTraitCollection:0];

  *a3 = v6;
}

void sub_20CDA0224()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27C8179E8;
  v1 = sub_20CE13914();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  qword_27C817898 = v2;
}

id HTUIEvaluationViewController.View.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HTUIEvaluationViewController.View();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*sub_20CDA0440(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F313610](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20CDA1608;
  }

  __break(1u);
  return result;
}

void (*sub_20CDA04C0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F313610](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_20CDA0540;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CDA0548(void *a1)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 updateConstraints];
  [a1 setNeedsLayout];
}

double sub_20CDA05FC(uint64_t a1)
{
  v1 = sub_20CE13954();
  v3 = v2;
  if (v1 == sub_20CE13954() && v3 == v4)
  {
    goto LABEL_13;
  }

  v6 = sub_20CE14284();

  result = 16.0;
  if (v6)
  {
    return result;
  }

  v8 = sub_20CE13954();
  v10 = v9;
  if (v8 == sub_20CE13954() && v10 == v11)
  {
    goto LABEL_13;
  }

  v13 = sub_20CE14284();

  if (v13)
  {
    return 16.0;
  }

  v14 = sub_20CE13954();
  v16 = v15;
  if (v14 == sub_20CE13954() && v16 == v17)
  {
LABEL_13:

    return 16.0;
  }

  v18 = sub_20CE14284();

  result = 32.0;
  if (v18)
  {
    return 16.0;
  }

  return result;
}

unint64_t sub_20CDA0788()
{
  result = qword_27C8127A8;
  if (!qword_27C8127A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8127A8);
  }

  return result;
}

uint64_t _s4ViewC5StateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t _s4ViewC5StateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20CDA094C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_20CDA0960(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CDA09C4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_didTapHearHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton;
  *(v1 + v3) = sub_20CD9B610();
  *(v1 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View____lazy_storage___progressView) = 0;
  v4 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_metalAnimation;
  *(v1 + v4) = [objc_allocWithZone(type metadata accessor for EvaluationVFXView()) init];
  v5 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageTitle;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v6 setTextAlignment_];
  [v6 setAdjustsFontSizeToFitWidth_];
  if (qword_27C811D40 != -1)
  {
    swift_once();
  }

  v38 = qword_27C817880;
  [v6 setTextColor_];
  sub_20CD83128(0, &qword_27C812758, 0x277D74300);
  v7 = sub_20CE13E04();
  [v6 setFont_];

  if (qword_27C811D38 != -1)
  {
    swift_once();
  }

  v9 = qword_27C812720;
  v8 = *algn_27C812728;
  v10 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20CE16360;
  v39 = v9;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;
  *(v11 + 48) = 0x656C746954;
  *(v11 + 56) = 0xE500000000000000;
  sub_20CDA1464(0, &qword_27C8121F0, v10, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v12 = sub_20CE13914();

  [v6 setAccessibilityIdentifier_];

  *(v1 + v5) = v6;
  v13 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageBody;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_27C811D48 != -1)
  {
    swift_once();
  }

  [v14 setTextColor_];
  [v14 setNumberOfLines_];
  [v14 setTextAlignment_];
  [v14 setAdjustsFontSizeToFitWidth_];
  v15 = sub_20CE13E04();
  [v14 setFont_];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CE16360;
  *(v16 + 32) = v9;
  *(v16 + 40) = v8;
  *(v16 + 48) = 2036625218;
  *(v16 + 56) = 0xE400000000000000;

  sub_20CE138C4();

  v17 = sub_20CE13914();

  [v14 setAccessibilityIdentifier_];

  *(v1 + v13) = v14;
  v18 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_stageStack;
  v19 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v19 setSpacing_];
  [v19 setAxis_];
  [v19 setAlignment_];
  *(v1 + v18) = v19;
  v20 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_guidanceTitle;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_20CD9BE44(v21);
  *(v1 + v20) = v21;
  v22 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_completionLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v23 setTextAlignment_];
  [v23 setNumberOfLines_];
  [v23 setAdjustsFontSizeToFitWidth_];
  [v23 setTextColor_];
  v24 = sub_20CE13E04();
  [v23 setFont_];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v25 = sub_20CE12354();
  sub_20CE0B9C8(v25, v26, 0xD000000000000015, 0x800000020CE1C710);

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20CE16360;
  *(v27 + 32) = v9;
  *(v27 + 40) = v8;
  strcpy((v27 + 48), "CompletionText");
  *(v27 + 63) = -18;

  sub_20CE138C4();

  v28 = sub_20CE13914();

  [v23 setAccessibilityIdentifier_];

  *(v1 + v22) = v23;
  v29 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_captionLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v30 setNumberOfLines_];
  [v30 setTextAlignment_];
  [v30 setTextColor_];
  v31 = sub_20CE13E04();
  [v30 setFont_];

  sub_20CE12354();
  v32 = sub_20CE13914();

  [v30 setText_];

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20CE16360;
  *(v33 + 32) = v39;
  *(v33 + 40) = v8;
  *(v33 + 48) = 0x6E6F6974706143;
  *(v33 + 56) = 0xE700000000000000;

  sub_20CE138C4();

  v34 = sub_20CE13914();

  [v30 setAccessibilityIdentifier_];

  *(v1 + v29) = v30;
  v35 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_progressViewModel;
  type metadata accessor for LabelledProgressView.Model(0);
  v36 = swift_allocObject();
  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  *(v36 + 56) = 1;
  sub_20CE12B24();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0xE000000000000000;

  *(v36 + 64) = 0;
  *(v36 + 40) = 0;
  *(v36 + 48) = 0;
  *(v36 + 32) = 0;
  *(v1 + v35) = v36;
  v37 = OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_tapHearButton;
  *(v1 + v37) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  *(v1 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state) = 2;
  *(v1 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_marginDependentConstraints) = MEMORY[0x277D84F90];
  sub_20CE141B4();
  __break(1u);
}

unint64_t sub_20CDA1354()
{
  result = qword_27C8127B0;
  if (!qword_27C8127B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8127B0);
  }

  return result;
}

void sub_20CDA13A8(uint64_t a1)
{
  if (!qword_27C8127B8)
  {
    type metadata accessor for LabelledProgressView(255);
    sub_20CDA140C();
    v1 = sub_20CE12F94();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8127B8);
    }
  }
}

unint64_t sub_20CDA140C()
{
  result = qword_27C8127C0;
  if (!qword_27C8127C0)
  {
    type metadata accessor for LabelledProgressView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8127C0);
  }

  return result;
}

void sub_20CDA1464(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_20CDA14E4(uint64_t a1)
{
  if (!qword_27C8127C8)
  {
    sub_20CDA153C();
    v1 = sub_20CE14264();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8127C8);
    }
  }
}

unint64_t sub_20CDA153C()
{
  result = qword_27C8127D0;
  if (!qword_27C8127D0)
  {
    sub_20CDA1584();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27C8127D0);
  }

  return result;
}

unint64_t sub_20CDA1584()
{
  result = qword_27C8127D8;
  if (!qword_27C8127D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C8127D8);
  }

  return result;
}

void static SessionFactory.make(defaults:channel:statusManager:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v56 = a3;
  v59 = a4;
  sub_20CDA209C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE12924();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v61 = &v51 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v64 = a1;
  v20 = sub_20CE0EC10();
  v22 = v9 + 16;
  v21 = *(v9 + 16);
  v21(v19, a2, v8);
  v63 = v9;
  v23 = (*(v9 + 88))(v19, v8);
  v24 = *MEMORY[0x277D12CD8];
  v57 = v12;
  if (v23 == v24)
  {
    v62 = NSUserDefaults.overridenLeftEarInconclusive.getter();
  }

  else if (v23 == *MEMORY[0x277D12CE0])
  {
    v62 = NSUserDefaults.overridenRightEarInconclusive.getter();
  }

  else
  {
    (*(v63 + 8))(v19, v8);
    v62 = 0;
  }

  v25 = v17;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v26 = sub_20CE12CB4();
  __swift_project_value_buffer(v26, qword_27C817768);
  v21(v17, a2, v8);
  v27 = sub_20CE12C94();
  v28 = sub_20CE13CD4();
  v29 = os_log_type_enabled(v27, v28);
  v60 = v21;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v69[0] = v54;
    *v30 = 136446978;
    *(v30 + 4) = sub_20CD96DCC(0x466E6F6973736553, 0xEE0079726F746361, v69);
    *(v30 + 12) = 2080;
    v53 = v28;
    v31 = v63;
    v32 = *(v63 + 104);
    v55 = v22;
    v33 = v61;
    v32(v61, v24, v8);
    sub_20CD8B030();
    v52 = v27;
    sub_20CE13A84();
    sub_20CE13A84();
    v34 = *(v31 + 8);
    v34(v33, v8);
    if (v66[0] == v65)
    {
      v35 = 1952867692;
    }

    else
    {
      v35 = 0x7468676972;
    }

    if (v66[0] == v65)
    {
      v36 = 0xE400000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    v34(v25, v8);
    v37 = v62;
    v38 = sub_20CD96DCC(v35, v36, v69);

    *(v30 + 14) = v38;
    *(v30 + 22) = 1024;
    *(v30 + 24) = v20 & 1;
    *(v30 + 28) = 1024;
    *(v30 + 30) = v37 & 1;
    v39 = v52;
    _os_log_impl(&dword_20CD70000, v52, v53, "[%{public}s] Making a new Session. Channel: %s. Mock Short: %{BOOL}d. Mock Inconclusive: %{BOOL}d.", v30, 0x22u);
    v40 = v54;
    swift_arrayDestroy();
    MEMORY[0x20F314110](v40, -1, -1);
    MEMORY[0x20F314110](v30, -1, -1);

    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    (*(v63 + 8))(v17, v8);
    if ((v20 & 1) == 0)
    {
LABEL_16:
      v60(v61, a2, v8);
      v41 = sub_20CE12954();
      (*(*(v41 - 8) + 56))(v58, 1, 1, v41);
      v42 = sub_20CE127B4();
      sub_20CE12784();
      sub_20CE12794();
      sub_20CE12764();
      sub_20CE12754();
      swift_allocObject();

      v43 = sub_20CE127A4();
      v44 = &protocol witness table for HTHearingTestSession;
LABEL_20:
      v69[3] = v42;
      v69[4] = v44;
      v69[0] = v43;
      __swift_project_boxed_opaque_existential_1(v69, v42);
      sub_20CDA1D64(v62 & 1, v42, v44, v66);
      v49 = v67;
      v50 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      sub_20CDA1EB4(a2, v64, v49, v50, v59);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      return;
    }
  }

  v45 = v57;
  v60(v57, a2, v8);
  v42 = type metadata accessor for ShortSession(0);
  v43 = swift_allocObject();
  v46 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v47 = sub_20CE13914();
  v48 = [v46 initWithSuiteName_];

  if (v48)
  {
    *(v43 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_defaults) = v48;
    *(v43 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_numberOfTonesToPlay) = 3;
    (*(v63 + 32))(v43 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel, v45, v8);
    v44 = &protocol witness table for ShortSession;
    goto LABEL_20;
  }

  __break(1u);
}