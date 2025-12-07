uint64_t sub_1DF4F89C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F70, &qword_1DF56A398);
  result = sub_1DF564DB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v36 = result;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v17 = v14 | (v6 << 6);
      v18 = sub_1DF5646B4();
      v37 = &v33;
      v19 = *(v18 - 8);
      MEMORY[0x1EEE9AC00](v18);
      v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = v22;
      v24 = *(v3 + 48);
      v25 = *(v23 + 72);
      (*(v19 + 16))(v21, v24 + v25 * v17, v18);
      v5 = v36;
      sub_1DF4F8CDC(&qword_1ECE37F60, MEMORY[0x1EEE89558], MEMORY[0x1EEE89568]);
      result = sub_1DF5648B4();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = (*(v19 + 32))(*(v5 + 48) + v13 * v25, v21, v18);
      ++*(v5 + 16);
      v10 = v38;
      v3 = v35;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v34;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DF4F8CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF4F8D24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 448) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 456) = a2;
    *(v6 + 464) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F8E94, 0, 0);
  }
}

uint64_t sub_1DF4F8E94()
{
  v1 = *(v0 + 456);
  *(v0 + 304) = *(v0 + 464);
  *(v0 + 312) = v1;
  strcpy((v0 + 320), "{featureKey}");
  *(v0 + 333) = 0;
  *(v0 + 334) = -5120;
  *(v0 + 336) = *(v0 + 408);
  sub_1DF4FB068();
  v2 = sub_1DF564D14();
  v4 = v3;

  __swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v5 = sub_1DF4A52C0();
  if (v6)
  {
    if (v4)
    {
      *(v0 + 256) = v2;
      *(v0 + 264) = v4;
      *(v0 + 272) = 0x7D644964757BLL;
      *(v0 + 280) = 0xE600000000000000;
      *(v0 + 288) = v5;
      *(v0 + 296) = v6;
      v2 = sub_1DF564D14();
      v8 = v7;
    }

    else
    {

      v8 = 0;
    }

    sub_1DF4FADB4(v2, v8, *(v0 + 352));
  }

  else
  {

    sub_1DF498474();
    swift_allocError();
    *v9 = 11;
    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DF4F90A8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[60] = a1;
  v4[61] = a2;
  v4[62] = v2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4F9204, 0, 0);
  }
}

uint64_t sub_1DF4F9204()
{
  v1 = *(v0 + 488);
  if (v1)
  {
    *(v0 + 304) = *(v0 + 480);
    *(v0 + 312) = v1;
    strcpy((v0 + 320), "{featureKey}");
    *(v0 + 333) = 0;
    *(v0 + 334) = -5120;
    *(v0 + 336) = *(v0 + 408);
    sub_1DF4FB068();
    v2 = sub_1DF564D14();
    v4 = v3;
  }

  else
  {
    v4 = 0;
    v2 = *(v0 + 480);
  }

  __swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v5 = sub_1DF4A52C0();
  if (v6)
  {
    if (v4)
    {
      *(v0 + 256) = v2;
      *(v0 + 264) = v4;
      *(v0 + 272) = 0x7D644964757BLL;
      *(v0 + 280) = 0xE600000000000000;
      *(v0 + 288) = v5;
      *(v0 + 296) = v6;
      sub_1DF4FB068();
      v2 = sub_1DF564D14();
      v8 = v7;
    }

    else
    {

      v8 = 0;
    }

    sub_1DF4FADB4(v2, v8, *(v0 + 352));
  }

  else
  {

    sub_1DF498474();
    swift_allocError();
    *v9 = 11;
    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DF4F9438(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 512) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 520) = a2;
    *(v6 + 528) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F95AC, 0, 0);
  }
}

uint64_t sub_1DF4F95AC()
{
  v1 = v0[65];
  v2 = v0[66];
  __swift_project_boxed_opaque_existential_0((v0[46] + 56), *(v0[46] + 80));
  v3 = sub_1DF4A52C0();
  if (v4)
  {
    if (v1)
    {
      v0[26] = v2;
      v0[27] = v1;
      v0[28] = 0x7D644964757BLL;
      v0[29] = 0xE600000000000000;
      v0[30] = v3;
      v0[31] = v4;
      sub_1DF4FB068();
      v2 = sub_1DF564D14();
      v6 = v5;
    }

    else
    {

      v6 = 0;
    }

    sub_1DF4FADB4(v2, v6, v0[44]);
  }

  else
  {

    sub_1DF498474();
    swift_allocError();
    *v7 = 11;
    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF4F9744(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 544) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 552) = a2;
    *(v6 + 560) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F98B8, 0, 0);
  }
}

uint64_t sub_1DF4F98B8()
{
  v1 = v0[70];
  v2 = v0[69];
  __swift_project_boxed_opaque_existential_0((v0[46] + 56), *(v0[46] + 80));
  v3 = sub_1DF4A52C0();
  if (v4)
  {
    if (v2)
    {
      v0[26] = v1;
      v0[27] = v2;
      v0[28] = 0x7D644964757BLL;
      v0[29] = 0xE600000000000000;
      v0[30] = v3;
      v0[31] = v4;
      sub_1DF4FB068();
      v1 = sub_1DF564D14();
      v6 = v5;
    }

    else
    {

      v6 = 0;
    }

    sub_1DF4FADB4(v1, v6, v0[44]);
  }

  else
  {

    sub_1DF498474();
    swift_allocError();
    *v7 = 11;
    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF4F9A50(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 576) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 584) = a2;
    *(v6 + 592) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F9BC4, 0, 0);
  }
}

uint64_t sub_1DF4F9BC4()
{
  sub_1DF4FADB4(v0[74], v0[73], v0[44]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DF4F9C58()
{
  sub_1DF4FADB4(v0[76], v0[75], v0[44]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DF4F9CEC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 624) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 632) = a2;
    *(v6 + 640) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4F9E60, 0, 0);
  }
}

uint64_t sub_1DF4F9E60()
{
  sub_1DF4FADB4(v0[80], v0[79], v0[44]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DF4F9EF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 656) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 664) = a2;
    *(v6 + 672) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4FA068, 0, 0);
  }
}

uint64_t sub_1DF4FA068()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 672);
  v3 = *(v0 + 656);
  __swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v4 = sub_1DF4A52C0();
  if (!v5)
  {

    sub_1DF498474();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();
LABEL_7:

    v16 = *(v0 + 8);
    goto LABEL_9;
  }

  v6 = v5;
  if (v1)
  {
    v7 = v4;
    v9 = *(v0 + 408);
    v8 = *(v0 + 416);
    *(v0 + 112) = v2;
    *(v0 + 120) = v1;
    strcpy((v0 + 128), "{featureKey}");
    *(v0 + 141) = 0;
    *(v0 + 142) = -5120;
    *(v0 + 144) = v9;
    *(v0 + 152) = v8;
    sub_1DF4FB068();
    v10 = sub_1DF564D14();
    v12 = v11;

    *(v0 + 160) = v10;
    *(v0 + 168) = v12;
    *(v0 + 176) = 0x7D644964757BLL;
    *(v0 + 184) = 0xE600000000000000;
    *(v0 + 192) = v7;
    *(v0 + 200) = v6;
    v2 = sub_1DF564D14();
    v14 = v13;
  }

  else
  {

    v14 = 0;
  }

  sub_1DF4FADB4(v2, v14, *(v0 + 400));
  if (v3)
  {
    goto LABEL_7;
  }

  (*(*(v0 + 384) + 32))(*(v0 + 352), *(v0 + 400), *(v0 + 376));

  v16 = *(v0 + 8);
LABEL_9:

  return v16();
}

uint64_t sub_1DF4FA2A4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 688) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 696) = a2;
    *(v6 + 704) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4FA418, 0, 0);
  }
}

uint64_t sub_1DF4FA418()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  __swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v4 = sub_1DF4A52C0();
  if (!v5)
  {

    sub_1DF498474();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();
LABEL_7:

    v16 = *(v0 + 8);
    goto LABEL_9;
  }

  v6 = v5;
  if (v2)
  {
    v7 = v4;
    v9 = *(v0 + 408);
    v8 = *(v0 + 416);
    *(v0 + 112) = v1;
    *(v0 + 120) = v2;
    strcpy((v0 + 128), "{featureKey}");
    *(v0 + 141) = 0;
    *(v0 + 142) = -5120;
    *(v0 + 144) = v9;
    *(v0 + 152) = v8;
    sub_1DF4FB068();
    v10 = sub_1DF564D14();
    v12 = v11;

    *(v0 + 160) = v10;
    *(v0 + 168) = v12;
    *(v0 + 176) = 0x7D644964757BLL;
    *(v0 + 184) = 0xE600000000000000;
    *(v0 + 192) = v7;
    *(v0 + 200) = v6;
    v1 = sub_1DF564D14();
    v14 = v13;
  }

  else
  {

    v14 = 0;
  }

  sub_1DF4FADB4(v1, v14, *(v0 + 400));
  if (v3)
  {
    goto LABEL_7;
  }

  (*(*(v0 + 384) + 32))(*(v0 + 352), *(v0 + 400), *(v0 + 376));

  v16 = *(v0 + 8);
LABEL_9:

  return v16();
}

uint64_t sub_1DF4FA654(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 720) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 728) = a2;
    *(v6 + 736) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4FA7C8, 0, 0);
  }
}

uint64_t sub_1DF4FA7C8()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 736);
  v3 = *(v0 + 720);
  __swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v4 = sub_1DF4A52C0();
  if (!v5)
  {

    sub_1DF498474();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();
LABEL_7:

    v16 = *(v0 + 8);
    goto LABEL_9;
  }

  v6 = v5;
  if (v1)
  {
    v7 = v4;
    v9 = *(v0 + 408);
    v8 = *(v0 + 416);
    *(v0 + 16) = v2;
    *(v0 + 24) = v1;
    strcpy((v0 + 32), "{featureKey}");
    *(v0 + 45) = 0;
    *(v0 + 46) = -5120;
    *(v0 + 48) = v9;
    *(v0 + 56) = v8;
    sub_1DF4FB068();
    v10 = sub_1DF564D14();
    v12 = v11;

    *(v0 + 64) = v10;
    *(v0 + 72) = v12;
    *(v0 + 80) = 0x7D644964757BLL;
    *(v0 + 88) = 0xE600000000000000;
    *(v0 + 96) = v7;
    *(v0 + 104) = v6;
    v2 = sub_1DF564D14();
    v14 = v13;
  }

  else
  {

    v14 = 0;
  }

  sub_1DF4FADB4(v2, v14, *(v0 + 392));
  if (v3)
  {
    goto LABEL_7;
  }

  (*(*(v0 + 384) + 32))(*(v0 + 352), *(v0 + 392), *(v0 + 376));

  v16 = *(v0 + 8);
LABEL_9:

  return v16();
}

uint64_t sub_1DF4FAA04(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 752) = v2;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 760) = a2;
    *(v6 + 768) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF4FAB78, 0, 0);
  }
}

uint64_t sub_1DF4FAB78()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  __swift_project_boxed_opaque_existential_0((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v4 = sub_1DF4A52C0();
  if (!v5)
  {

    sub_1DF498474();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();
LABEL_7:

    v16 = *(v0 + 8);
    goto LABEL_9;
  }

  v6 = v5;
  if (v2)
  {
    v7 = v4;
    v9 = *(v0 + 408);
    v8 = *(v0 + 416);
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    strcpy((v0 + 32), "{featureKey}");
    *(v0 + 45) = 0;
    *(v0 + 46) = -5120;
    *(v0 + 48) = v9;
    *(v0 + 56) = v8;
    sub_1DF4FB068();
    v10 = sub_1DF564D14();
    v12 = v11;

    *(v0 + 64) = v10;
    *(v0 + 72) = v12;
    *(v0 + 80) = 0x7D644964757BLL;
    *(v0 + 88) = 0xE600000000000000;
    *(v0 + 96) = v7;
    *(v0 + 104) = v6;
    v1 = sub_1DF564D14();
    v14 = v13;
  }

  else
  {

    v14 = 0;
  }

  sub_1DF4FADB4(v1, v14, *(v0 + 392));
  if (v3)
  {
    goto LABEL_7;
  }

  (*(*(v0 + 384) + 32))(*(v0 + 352), *(v0 + 392), *(v0 + 376));

  v16 = *(v0 + 8);
LABEL_9:

  return v16();
}

uint64_t sub_1DF4FADB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  if (a2)
  {

    sub_1DF564334();

    v9 = sub_1DF564344();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {

      return (*(v10 + 32))(a3, v8, v9);
    }

    sub_1DF4FB0BC(v8);
  }

  if (qword_1ED9550A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF5647B4();
  __swift_project_value_buffer(v11, qword_1ED9550B0);

  v12 = sub_1DF564794();
  v13 = sub_1DF564C24();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    if (a2)
    {
      v16 = a1;
    }

    else
    {
      v16 = 0x3E6C696E3CLL;
    }

    if (!a2)
    {
      a2 = 0xE500000000000000;
    }

    v17 = sub_1DF47EF6C(v16, a2, &v21);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_1DF47C000, v12, v13, "failed to create url from string: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1E12D75F0](v15, -1, -1);
    MEMORY[0x1E12D75F0](v14, -1, -1);
  }

  else
  {
  }

  sub_1DF498474();
  swift_allocError();
  *v18 = 6;
  return swift_willThrow();
}

unint64_t sub_1DF4FB068()
{
  result = qword_1ED9546B8;
  if (!qword_1ED9546B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546B8);
  }

  return result;
}

uint64_t sub_1DF4FB0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1DF4FB140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1DF4FB188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1DF4FB200(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v7 = a7;
  v13 = a1;
  v35[0] = a5;
  v35[1] = a6;
  v35[2] = a3;
  v35[3] = a4;
  v35[4] = a1;
  v35[5] = a2;
  v14 = sub_1DF54836C(v35, a7);
  if (!v14)
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v26 = sub_1DF5647B4();
    __swift_project_value_buffer(v26, qword_1ED956088);

    v25 = sub_1DF564794();
    v27 = sub_1DF564C44();

    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34[0] = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_1DF47EF6C(v13, a2, v34);
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_1DF47EF6C(a3, a4, v34);
      _os_log_impl(&dword_1DF47C000, v25, v27, "no geoclassification cache for featureID: %{public}s, and bundle ID: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v28, -1, -1);
    }

    goto LABEL_12;
  }

  v17 = v14;
  if ((sub_1DF547604(a5, a6, v14, v15, v16) & 1) == 0)
  {
    v33 = a3;
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED956088);

    v19 = sub_1DF564794();
    v20 = sub_1DF564C44();

    if (os_log_type_enabled(v19, v20))
    {
      v31 = v7;
      v21 = swift_slowAlloc();
      v32 = v13;
      v22 = swift_slowAlloc();
      v34[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1DF47EF6C(v32, a2, v34);
      _os_log_impl(&dword_1DF47C000, v19, v20, "Invalid geo cache for featureID: %{public}s. Deleting cache entry", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v23 = v22;
      v13 = v32;
      MEMORY[0x1E12D75F0](v23, -1, -1);
      v24 = v21;
      v7 = v31;
      MEMORY[0x1E12D75F0](v24, -1, -1);
    }

    v34[0] = a5;
    v34[1] = a6;

    MEMORY[0x1E12D62C0](45, 0xE100000000000000);
    MEMORY[0x1E12D62C0](v33, a4);
    MEMORY[0x1E12D62C0](45, 0xE100000000000000);
    MEMORY[0x1E12D62C0](v13, a2);
    v25 = sub_1DF564914();

    [v7 removeObjectForKey_];

LABEL_12:
    return 0;
  }

  return v17;
}

id sub_1DF4FB5AC(id result)
{
  if (!result)
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED956260);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C24();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DF47C000, v3, v4, "GeoClassificationCache was passed invalid user defaults!", v5, 2u);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }

    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);

    return [v6 init];
  }

  return result;
}

void sub_1DF4FB6B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED956260);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C44();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DF47C000, v3, v4, "Refreshing geoclassification cache", v5, 2u);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }

    v6 = objc_opt_self();
    v7 = sub_1DF564914();
    v8 = sub_1DF564914();
    v9 = sub_1DF564914();
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DF515B10;
    aBlock[3] = &block_descriptor_4;
    v10 = _Block_copy(aBlock);
    [v6 requestGeoClassificationForFeatureID:v7 bundleID:v8 altDSID:v9 ignoreCache:1 completion:v10];
    _Block_release(v10);
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF5647B4();
    __swift_project_value_buffer(v11, qword_1ED956260);
    oslog = sub_1DF564794();
    v12 = sub_1DF564C24();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DF47C000, oslog, v12, "altDSID is nil, unable to refresh geoclassification", v13, 2u);
      MEMORY[0x1E12D75F0](v13, -1, -1);
    }
  }
}

void sub_1DF4FB998(const char *a1, CFNotificationName *a2)
{
  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED955E10);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, a1, v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v8, *a2, 0, 0, 0);
}

BOOL sub_1DF4FBB74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t *a6, uint64_t *a7, void (*a8)(void), uint64_t *a9, uint64_t *a10)
{
  v76 = a8;
  v77 = a6;
  v11 = v10;
  v79 = a5;
  v80 = a3;
  v78 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v74 - v19;
  v21 = sub_1DF564494();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v75 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v74 - v25;
  if (a2)
  {
    v27 = (v11 + v15[13]);
    v28 = v27[1];
    if (!v28 || (*v27 == a1 ? (v29 = v28 == a2) : (v29 = 0), !v29 && (sub_1DF5650D4() & 1) == 0))
    {
      if (qword_1ED956080 != -1)
      {
        swift_once();
      }

      v35 = sub_1DF5647B4();
      __swift_project_value_buffer(v35, qword_1ED956088);
      v36 = sub_1DF564794();
      v37 = sub_1DF564C44();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_52;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v81 = v39;
      *v38 = 136315138;
      v76(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(a9, a10);
      v40 = sub_1DF5652D4();
      v42 = sub_1DF47EF6C(v40, v41, &v81);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1DF47C000, v36, v37, "Invalid cache box with type %s ... session id changed", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1E12D75F0](v39, -1, -1);
      v43 = v38;
LABEL_51:
      MEMORY[0x1E12D75F0](v43, -1, -1);
LABEL_52:

      return 0;
    }
  }

  v30 = (v11 + v15[14]);
  v31 = v30[1];
  if (!a4)
  {
    if (!v31)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  if (v31)
  {
    v32 = *v30 == v80 && v31 == a4;
    if (!v32 && (sub_1DF5650D4() & 1) == 0)
    {
LABEL_24:
      if (qword_1ED956080 != -1)
      {
        swift_once();
      }

      v44 = sub_1DF5647B4();
      __swift_project_value_buffer(v44, qword_1ED956088);
      v46 = v77;
      v45 = v78;
      sub_1DF47E4CC(v11, v17, v77, v78);

      v36 = sub_1DF564794();
      v47 = sub_1DF564C44();

      if (!os_log_type_enabled(v36, v47))
      {

        sub_1DF47E5B4(v17, v46, v45);
        return 0;
      }

      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v81 = v49;
      *v48 = 136315394;
      v50 = &v17[v15[14]];
      if (v50[1])
      {
        v51 = *v50;
        v52 = v50[1];
      }

      else
      {
        v52 = 0xE300000000000000;
        v51 = 7104878;
      }

      sub_1DF47E5B4(v17, v46, v45);
      v70 = sub_1DF47EF6C(v51, v52, &v81);

      *(v48 + 4) = v70;
      *(v48 + 12) = 2080;
      if (a4)
      {
        v71 = v80;
      }

      else
      {
        v71 = 7104878;
      }

      if (a4)
      {
        v72 = a4;
      }

      else
      {
        v72 = 0xE300000000000000;
      }

      v73 = sub_1DF47EF6C(v71, v72, &v81);

      *(v48 + 14) = v73;
      _os_log_impl(&dword_1DF47C000, v36, v47, "invalid ... altDSID changed. Cache altDSID: %s, currentAltDSID: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v49, -1, -1);
      v43 = v48;
      goto LABEL_51;
    }
  }

LABEL_15:
  if (v79)
  {
    return 1;
  }

  sub_1DF47E4CC(v11 + v15[11], v20, &qword_1ECE37A10, &qword_1DF567C00);
  v33 = v21;
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1DF47E5B4(v20, &qword_1ECE37A10, &qword_1DF567C00);
    return 1;
  }

  v53 = v26;
  (*(v22 + 32))(v26, v20, v33);
  v54 = v75;
  sub_1DF564484();
  sub_1DF5643C4();
  if (v55 <= 0.0)
  {
    v64 = v55;
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v65 = sub_1DF5647B4();
    __swift_project_value_buffer(v65, qword_1ED956088);
    v66 = sub_1DF564794();
    v67 = sub_1DF564C44();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 134349056;
      *(v68 + 4) = v64;
      _os_log_impl(&dword_1DF47C000, v66, v67, "invalid ... time until expiry is %{public}f", v68, 0xCu);
      MEMORY[0x1E12D75F0](v68, -1, -1);
    }

    v69 = *(v22 + 8);
    v69(v54, v33);
    v69(v53, v33);
    return 0;
  }

  sub_1DF5643C4();
  v57 = v56 > 0.0;
  if (v56 <= 0.0)
  {
    v58 = v56;
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v59 = sub_1DF5647B4();
    __swift_project_value_buffer(v59, qword_1ED956088);
    v60 = sub_1DF564794();
    v61 = sub_1DF564C44();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134349056;
      *(v62 + 4) = v58;
      _os_log_impl(&dword_1DF47C000, v60, v61, "invalid ... time since fetch is %{public}f", v62, 0xCu);
      MEMORY[0x1E12D75F0](v62, -1, -1);
    }
  }

  v63 = *(v22 + 8);
  v63(v54, v33);
  v63(v53, v33);
  return v57;
}

uint64_t FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v7 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  v8 = sub_1DF513FE4(a4);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  MEMORY[0x1E12D6340]();
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_1DF564AE4();

LABEL_4:
    sub_1DF47E4CC(v5 + 16, v29, &qword_1ECE37CE0, &qword_1DF568B40);
    v10 = v30;
    if (!v30)
    {
      break;
    }

    v11 = v31;
    __swift_project_boxed_opaque_existential_0(v29, v30);
    v12 = (*(v11 + 80))(0xD000000000000029, 0x80000001DF5708B0, v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v29);
    if (!v12)
    {
      return v32;
    }

    v25 = v7;
    v29[0] = v7;
    v9 = (v12 + 64);
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v7 = (v13 + 63) >> 6;

    v16 = 0;
    if (!v15)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      while (1)
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v18 = (*(v12 + 48) + ((v16 << 10) | (16 * v17)));
        v19 = *v18;
        v20 = v18[1];

        v21 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(v19, v20, a1, a2, a3 & 1, v6 & 1);

        if (v21)
        {
          break;
        }

        if (!v15)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x1E12D6340](v22);
      if (*((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DF564AC4();
      }

      sub_1DF564AE4();
      v25 = v29[0];
    }

    while (v15);
LABEL_11:
    while (1)
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= v7)
      {

        sub_1DF4FCC8C(v25);
        return v32;
      }

      v15 = *(v9 + v23);
      ++v16;
      if (v15)
      {
        v16 = v23;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_23:
    sub_1DF564AC4();
  }

  sub_1DF47E5B4(v29, &qword_1ECE37CE0, &qword_1DF568B40);
  return v32;
}

uint64_t sub_1DF4FC604(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF5642D4();
  swift_allocObject();
  v5 = sub_1DF5642C4();
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF564F04())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12D66D0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1DF4FDDA0(v8, v5, a2, a3);

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_1DF4FC728(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v37 - v6;
  v7 = *(v2 + 56);
  os_unfair_lock_lock(*(v7 + 16));
  v41 = v2;
  sub_1DF47E4CC(v2 + 16, v42, &qword_1ECE37CE0, &qword_1DF568B40);
  v8 = v43;
  if (v43)
  {
    v9 = v44;
    __swift_project_boxed_opaque_existential_0(v42, v43);
    v10 = (*(v9 + 80))(0xD000000000000029, 0x80000001DF5708B0, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v42);
    os_unfair_lock_unlock(*(v7 + 16));
    if (v10)
    {
      v39 = a1;
      v11 = v10 + 64;
      v12 = 1 << *(v10 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v10 + 64);
      v15 = (v12 + 63) >> 6;

      v16 = 0;
      v40 = v10;
      while (v14)
      {
LABEL_12:
        v18 = (*(v10 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
        v19 = *v18;
        v20 = v18[1];

        v21 = v39;
        v22 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(v19, v20, v39, a2, 0, 0);
        v23 = a2;
        if (v22)
        {
          v24 = v22;
          v25 = v38;
          sub_1DF5643A4();
          v26 = sub_1DF564494();
          (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
          v27 = OBJC_IVAR___CloudFeature_ttl;
          swift_beginAccess();
          sub_1DF48C214(v25, &v24[v27]);
          swift_endAccess();
          sub_1DF5642D4();
          swift_allocObject();
          v28 = sub_1DF5642C4();
          sub_1DF4FDDA0(v24, v28, v21, v23);
        }

        v14 &= v14 - 1;

        a2 = v23;
        v10 = v40;
      }

      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        if (v17 >= v15)
        {
          break;
        }

        v14 = *(v11 + 8 * v17);
        ++v16;
        if (v14)
        {
          v16 = v17;
          goto LABEL_12;
        }
      }

      if (qword_1ED956080 == -1)
      {
        goto LABEL_15;
      }

LABEL_21:
      swift_once();
LABEL_15:
      v29 = sub_1DF5647B4();
      __swift_project_value_buffer(v29, qword_1ED956088);

      v30 = sub_1DF564794();
      v31 = sub_1DF564C44();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v42[0] = v33;
        *v32 = 134218242;
        *(v32 + 4) = *(v10 + 16);

        *(v32 + 12) = 2080;
        v34 = sub_1DF5648A4();
        v36 = sub_1DF47EF6C(v34, v35, v42);

        *(v32 + 14) = v36;
        _os_log_impl(&dword_1DF47C000, v30, v31, "Expired cache for %ld features: %s", v32, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1E12D75F0](v33, -1, -1);
        MEMORY[0x1E12D75F0](v32, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }
  }

  else
  {
    sub_1DF47E5B4(v42, &qword_1ECE37CE0, &qword_1DF568B40);
    os_unfair_lock_unlock(*(v7 + 16));
  }

  sub_1DF51503C();
}

char *sub_1DF4FCB98(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1DF4A9DAC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
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
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DF4FCC8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1DF564F04();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1DF564F04();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1DF4FEBA4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DF4FEC44(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1DF4FCD7C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1DF4AA1A4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for WaitlistCacheBox(0);
  if (v8 < v2)
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
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static FeatureCache.shared.getter()
{
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DF4FCF04@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DF564494();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v45 = &v39 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v19 = *(v1 + 56);
  os_unfair_lock_lock(*(v19 + 16));
  sub_1DF47E4CC(v1 + 16, v47, &qword_1ECE37CE0, &qword_1DF568B40);
  v20 = v48;
  if (v48)
  {
    v21 = v49;
    __swift_project_boxed_opaque_existential_0(v47, v48);
    v22 = (*(v21 + 80))(0xD000000000000029, 0x80000001DF5708B0, v20, v21);
    __swift_destroy_boxed_opaque_existential_0(v47);
    if (v22)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DF47E5B4(v47, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  v22 = sub_1DF49A758(MEMORY[0x1E69E7CC0]);

LABEL_6:
  os_unfair_lock_unlock(*(v19 + 16));
  v23 = v5;
  v24 = *(v5 + 56);
  if (*(v22 + 16))
  {
    v24(v18, 1, 1, v4);

    sub_1DF4FEDE8(v22, v2, v18);

    v25 = sub_1DF513FE4(0);
    if (v25)
    {
      v26 = v25;
      v42 = a1;
      v27 = OBJC_IVAR___CloudFeature_ttl;
      swift_beginAccess();
      sub_1DF47E4CC(v26 + v27, v16, &qword_1ECE37A10, &qword_1DF567C00);
      v28 = v23;
      v29 = *(v23 + 48);
      if (v29(v16, 1, v4) == 1)
      {

        sub_1DF47E5B4(v16, &qword_1ECE37A10, &qword_1DF567C00);
      }

      else
      {
        v31 = *(v23 + 32);
        v32 = v46;
        v40 = v31;
        v41 = v28 + 32;
        v31(v46, v16, v4);
        v33 = v45;
        sub_1DF47E4CC(v18, v45, &qword_1ECE37A10, &qword_1DF567C00);
        if (v29(v33, 1, v4) == 1)
        {

          sub_1DF47E5B4(v33, &qword_1ECE37A10, &qword_1DF567C00);
          sub_1DF47E5B4(v18, &qword_1ECE37A10, &qword_1DF567C00);
          v40(v18, v32, v4);
          v24(v18, 0, 1, v4);
        }

        else
        {
          v34 = v44;
          v40(v44, v33, v4);
          sub_1DF484ECC(&qword_1ED954CC0, MEMORY[0x1E6969548]);
          v35 = sub_1DF5648D4();

          if (v35)
          {
            v36 = v34;
          }

          else
          {
            v36 = v32;
          }

          if (v35)
          {
            v37 = v32;
          }

          else
          {
            v37 = v34;
          }

          (*(v28 + 8))(v36, v4);
          v38 = v43;
          v40(v43, v37, v4);
          v24(v38, 0, 1, v4);
          sub_1DF48C214(v38, v18);
        }
      }

      a1 = v42;
    }

    return sub_1DF48C35C(v18, a1, &qword_1ECE37A10, &qword_1DF567C00);
  }

  else
  {
    v24(a1, 1, 1, v4);
  }
}

uint64_t FeatureCache.persistentDomain.getter()
{
  sub_1DF47E4CC(v0 + 16, v4, &qword_1ECE37CE0, &qword_1DF568B40);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_0(v4, v5);
    v1 = (*(v2 + 80))(0xD000000000000029, 0x80000001DF5708B0, v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    sub_1DF47E5B4(v4, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  return v1;
}

void sub_1DF4FD514(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v53 - v3;
  v62 = sub_1DF564494();
  v60 = *(v62 - 8);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v53 - v8;
  v10 = *a1;
  v11 = (*a1 + OBJC_IVAR___CloudFeature_featureID);
  v12 = v11[1];
  v61 = *v11;
  v63 = v12;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  sub_1DF48B2B4(&qword_1ED9546D0, &qword_1ECE37F80, &qword_1DF56A498, &unk_1DF5689B8);
  v14 = sub_1DF5642B4();
  v16 = v15;
  v55 = v4;
  v56 = v10;
  v53 = v7;
  v54 = v9;
  v58 = v14;
  v17 = v59;
  v18 = *(v59 + 56);
  os_unfair_lock_lock(*(v18 + 16));
  sub_1DF47E4CC(v17 + 16, v65, &qword_1ECE37CE0, &qword_1DF568B40);
  v19 = v66;
  v57 = v16;
  if (v66)
  {
    v20 = v67;
    __swift_project_boxed_opaque_existential_0(v65, v66);
    v64[3] = MEMORY[0x1E6969080];
    v64[0] = v58;
    v64[1] = v16;
    v21 = v16;
    v22 = *(v20 + 8);
    sub_1DF4AD474(v58, v21);
    v22(v64, v61, v63, v19, v20);

    sub_1DF47E5B4(v64, &qword_1ECE378F0, &qword_1DF5686F0);
    __swift_destroy_boxed_opaque_existential_0(v65);
  }

  else
  {

    sub_1DF47E5B4(v65, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  v23 = v56;
  os_unfair_lock_unlock(*(v18 + 16));
  v24 = v55;
  sub_1DF47E4CC(a1 + *(v13 + 44), v55, &qword_1ECE37A10, &qword_1DF567C00);
  v25 = v60;
  if ((*(v60 + 48))(v24, 1, v62) == 1)
  {
    sub_1DF47E5B4(v24, &qword_1ECE37A10, &qword_1DF567C00);
    v26 = v57;
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v27 = sub_1DF5647B4();
    __swift_project_value_buffer(v27, qword_1ED956088);
    v28 = v23;
    v29 = sub_1DF564794();
    v30 = sub_1DF564C44();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      *(v31 + 4) = v28;
      *v32 = v28;
      _os_log_impl(&dword_1DF47C000, v29, v30, "updating cache for feature: %{public}@, no cache-ttl.", v31, 0xCu);
      sub_1DF47E5B4(v32, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v32, -1, -1);
      MEMORY[0x1E12D75F0](v31, -1, -1);
      sub_1DF48C308(v58, v26);
    }

    else
    {
      sub_1DF48C308(v58, v26);
    }
  }

  else
  {
    v33 = v54;
    (*(v25 + 32))(v54, v24, v62);
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v34 = sub_1DF5647B4();
    __swift_project_value_buffer(v34, qword_1ED956088);
    v35 = v53;
    (*(v25 + 16))(v53, v33, v62);
    v36 = v23;
    v37 = v33;
    v38 = sub_1DF564794();
    v39 = sub_1DF564C44();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v65[0] = v63;
      *v40 = 138543618;
      *(v40 + 4) = v36;
      *v41 = v36;
      *(v40 + 12) = 2082;
      sub_1DF484ECC(&qword_1ED954CB0, MEMORY[0x1E6969570]);
      v42 = v35;
      v43 = v36;
      v44 = v62;
      v45 = sub_1DF5650A4();
      v47 = v46;
      v48 = *(v25 + 8);
      v48(v42, v44);
      v49 = sub_1DF47EF6C(v45, v47, v65);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_1DF47C000, v38, v39, "updating cache for feature: %{public}@, cache-ttl:%{public}s", v40, 0x16u);
      sub_1DF47E5B4(v41, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v41, -1, -1);
      v50 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x1E12D75F0](v50, -1, -1);
      MEMORY[0x1E12D75F0](v40, -1, -1);

      sub_1DF48C308(v58, v57);
      v48(v54, v44);
    }

    else
    {

      sub_1DF48C308(v58, v57);
      v51 = *(v25 + 8);
      v52 = v62;
      v51(v35, v62);
      v51(v37, v52);
    }
  }
}

void sub_1DF4FDDA0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v32 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v32 - v12;
  v14 = sub_1DF564494();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1DF564A24())
  {
    sub_1DF514678(a1);
  }

  else
  {
    v32[1] = a2;
    v18 = OBJC_IVAR___CloudFeature_ttl;
    swift_beginAccess();
    sub_1DF47E4CC(&a1[v18], v13, &qword_1ECE37A10, &qword_1DF567C00);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1DF47E5B4(v13, &qword_1ECE37A10, &qword_1DF567C00);
      if (qword_1ED956080 != -1)
      {
        swift_once();
      }

      v19 = sub_1DF5647B4();
      __swift_project_value_buffer(v19, qword_1ED956088);
      v20 = a1;
      v21 = sub_1DF564794();
      v22 = sub_1DF564C24();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138543362;
        *(v23 + 4) = v20;
        *v24 = v20;
        v25 = v20;
        _os_log_impl(&dword_1DF47C000, v21, v22, "failed to cache feature %{public}@, missing TTL", v23, 0xCu);
        sub_1DF47E5B4(v24, &unk_1ECE37F10, &qword_1DF567510);
        MEMORY[0x1E12D75F0](v24, -1, -1);
        MEMORY[0x1E12D75F0](v23, -1, -1);
      }
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      v26 = v8[11];
      (*(v15 + 16))(v10 + v26, v17, v14);
      (*(v15 + 56))(v10 + v26, 0, 1, v14);
      sub_1DF564484();
      __swift_project_boxed_opaque_existential_0((v4 + 72), *(v4 + 96));
      v27 = sub_1DF47E8A4();
      *v10 = a1;
      v28 = (v10 + v8[13]);
      *v28 = v27;
      v28[1] = v29;
      v30 = (v10 + v8[14]);
      *v30 = v33;
      v30[1] = a4;

      v31 = a1;
      sub_1DF4FD514(v10);
      sub_1DF47E5B4(v10, &qword_1ECE37F80, &qword_1DF56A498);
      (*(v15 + 8))(v17, v14);
    }
  }
}

uint64_t sub_1DF4FE1DC()
{
  v1 = v0;
  v2 = *(v0 + 56);
  os_unfair_lock_lock(*(v2 + 16));
  sub_1DF47E4CC(v0 + 16, v12, &qword_1ECE37CE0, &qword_1DF568B40);
  if (v13)
  {
    v3 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    sub_1DF49A758(MEMORY[0x1E69E7CC0]);
    (*(v3 + 72))();

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_1DF47E5B4(v12, &qword_1ECE37CE0, &qword_1DF568B40);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956088);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Reset feature cache.", v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v8 = *(v1 + 64);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_0(v8 + 2, v9);
  return (*(v10 + 16))(0x6C6C2E64756F6C63, 0xE90000000000006DLL, v9, v10);
}

uint64_t sub_1DF4FE3D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v64 = a3;
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v55 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v55 - v13;
  v15 = sub_1DF564494();
  v62 = *(v15 - 8);
  v63 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v58 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F78, &qword_1DF56A490);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F80, &qword_1DF56A498);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v55 - v24;
  sub_1DF47E4CC(a1, v67, &qword_1ECE37CB8, &qword_1DF56A510);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v57 = v12;
  v27 = v65;
  v28 = v66;
  sub_1DF5642A4();
  swift_allocObject();
  sub_1DF564294();
  sub_1DF48B2B4(&qword_1ED955AD0, &qword_1ECE37F80, &qword_1DF56A498, &unk_1DF5689E0);
  sub_1DF564284();
  if (v3)
  {

    sub_1DF48C308(v27, v28);

    (*(v23 + 56))(v21, 1, 1, v22);
    return sub_1DF47E5B4(v21, &qword_1ECE37F78, &qword_1DF56A490);
  }

  v56 = v27;

  (*(v23 + 56))(v21, 0, 1, v22);
  sub_1DF48C35C(v21, v25, &qword_1ECE37F80, &qword_1DF56A498);
  v29 = &v25[*(v22 + 52)];
  v30 = *v29;
  v31 = v29[1];
  __swift_project_boxed_opaque_existential_0((v68 + 72), *(v68 + 96));
  v32 = sub_1DF47E8A4();
  if (!v31)
  {
    sub_1DF48C308(v56, v28);

    goto LABEL_15;
  }

  if (v30 != v32 || v31 != v33)
  {
    v35 = sub_1DF5650D4();

    v34 = v64;
    if (v35)
    {
      goto LABEL_10;
    }

    sub_1DF48C308(v56, v28);
LABEL_15:
    v43 = &qword_1ECE37F80;
    v44 = &qword_1DF56A498;
    v45 = v25;
    return sub_1DF47E5B4(v45, v43, v44);
  }

  v34 = v64;
LABEL_10:
  v68 = v28;
  sub_1DF47E4CC(v34, v14, &qword_1ECE37A10, &qword_1DF567C00);
  v37 = v62;
  v36 = v63;
  v38 = *(v62 + 48);
  if (v38(v14, 1, v63) == 1)
  {
    sub_1DF48C308(v56, v68);
    sub_1DF47E5B4(v14, &qword_1ECE37A10, &qword_1DF567C00);
    v39 = v57;
    sub_1DF47E4CC(&v25[*(v22 + 44)], v57, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(v25, &qword_1ECE37F80, &qword_1DF56A498);
    return sub_1DF48C214(v39, v34);
  }

  v57 = *(v37 + 32);
  v57(v61, v14, v36);
  v40 = &v25[*(v22 + 44)];
  v41 = v60;
  sub_1DF47E4CC(v40, v60, &qword_1ECE37A10, &qword_1DF567C00);
  v42 = v36;
  if (v38(v41, 1, v36) == 1)
  {
    sub_1DF48C308(v56, v68);
    (*(v37 + 8))(v61, v36);
    sub_1DF47E5B4(v25, &qword_1ECE37F80, &qword_1DF56A498);
    v43 = &qword_1ECE37A10;
    v44 = &qword_1DF567C00;
    v45 = v41;
    return sub_1DF47E5B4(v45, v43, v44);
  }

  v46 = v58;
  v47 = v41;
  v48 = v57;
  v57(v58, v47, v42);
  sub_1DF484ECC(&qword_1ED954CC0, MEMORY[0x1E6969548]);
  v49 = v61;
  v50 = sub_1DF5648D4();
  sub_1DF48C308(v56, v68);
  sub_1DF47E5B4(v25, &qword_1ECE37F80, &qword_1DF56A498);
  if (v50)
  {
    v51 = v46;
  }

  else
  {
    v51 = v49;
  }

  if (v50)
  {
    v52 = v49;
  }

  else
  {
    v52 = v46;
  }

  (*(v37 + 8))(v51, v42);
  v53 = v42;
  v54 = v59;
  v48(v59, v52, v53);
  (*(v37 + 56))(v54, 0, 1, v53);
  return sub_1DF48C214(v54, v64);
}

void *FeatureCache.deinit()
{
  sub_1DF47E5B4(v0 + 16, &qword_1ECE37CE0, &qword_1DF568B40);

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  return v0;
}

uint64_t FeatureCache.__deallocating_deinit()
{
  sub_1DF47E5B4(v0 + 16, &qword_1ECE37CE0, &qword_1DF568B40);

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1DF4FEBA4(uint64_t a1, char a2)
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

  sub_1DF564F04();
LABEL_9:
  result = sub_1DF564E24();
  *v2 = result;
  return result;
}

uint64_t sub_1DF4FEC44(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DF564F04();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DF564F04();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DF48B2B4(&qword_1ECE37F88, &qword_1ECE37B08, &unk_1DF567DB0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
            v9 = sub_1DF5437E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CloudFeature(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DF4FEDE8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20 = a3;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1DF47F24C(*(a1 + 56) + 32 * v14, &v19);
    v18[0] = v16;
    v18[1] = v17;

    sub_1DF4FE3D0(v18, a2, v20);
    sub_1DF47E5B4(v18, &qword_1ECE37CB8, &qword_1DF56A510);
    if (v3)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_11;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1DF4FEF1C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF5647B4();
    __swift_project_value_buffer(v3, qword_1ED9556D8);
    v4 = sub_1DF564794();
    v5 = sub_1DF564C44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v39 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1DF47EF6C(0xD000000000000041, 0x80000001DF572D20, &v39);
      _os_log_impl(&dword_1DF47C000, v4, v5, "%s: There is an account, skipping unregistration", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1E12D75F0](v7, -1, -1);
      MEMORY[0x1E12D75F0](v6, -1, -1);
    }

    return 0;
  }

  if ((sub_1DF4BF050(a2) & 1) != 0 || (sub_1DF4BF050(a3) & 1) == 0)
  {
    v16 = 0;
  }

  else
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF5647B4();
    __swift_project_value_buffer(v11, qword_1ED9556D8);
    v12 = sub_1DF564794();
    v13 = sub_1DF564C44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v39 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1DF47EF6C(0xD000000000000041, 0x80000001DF572D20, &v39);
      _os_log_impl(&dword_1DF47C000, v12, v13, "%s: We transitioned to having access for afm", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1E12D75F0](v15, -1, -1);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    v16 = 1;
  }

  if ((sub_1DF4BF1A0(a2) & 1) != 0 || (sub_1DF4BF1A0(a3) & 1) == 0)
  {
    if (!v16)
    {
      if (qword_1ED9556D0 != -1)
      {
        swift_once();
      }

      v27 = sub_1DF5647B4();
      __swift_project_value_buffer(v27, qword_1ED9556D8);

      v28 = sub_1DF564794();
      v29 = sub_1DF564C44();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = v31;
        *v30 = 136315650;
        *(v30 + 4) = sub_1DF47EF6C(0xD000000000000041, 0x80000001DF572D20, &v39);
        *(v30 + 12) = 2080;
        v32 = type metadata accessor for CloudFeature(0);
        v33 = MEMORY[0x1E12D6370](a2, v32);
        v35 = sub_1DF47EF6C(v33, v34, &v39);

        *(v30 + 14) = v35;
        *(v30 + 22) = 2080;
        v36 = MEMORY[0x1E12D6370](a3, v32);
        v38 = sub_1DF47EF6C(v36, v37, &v39);

        *(v30 + 24) = v38;
        _os_log_impl(&dword_1DF47C000, v28, v29, "%s: We did not transition to having access, skipping unregistration.\n Old features: %s,\n new features: %s", v30, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12D75F0](v31, -1, -1);
        MEMORY[0x1E12D75F0](v30, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1DF5647B4();
    __swift_project_value_buffer(v17, qword_1ED9556D8);
    v18 = sub_1DF564794();
    v19 = sub_1DF564C44();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1DF47EF6C(0xD000000000000041, 0x80000001DF572D20, &v39);
      _os_log_impl(&dword_1DF47C000, v18, v19, "%s: We transitioned to having access for adm", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1E12D75F0](v21, -1, -1);
      MEMORY[0x1E12D75F0](v20, -1, -1);
    }
  }

  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DF5647B4();
  __swift_project_value_buffer(v22, qword_1ED9556D8);
  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1DF47EF6C(0xD000000000000041, 0x80000001DF572D20, &v39);
    _os_log_impl(&dword_1DF47C000, v23, v24, "%s: We transitioned to having access, proceeding with unregistration.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1E12D75F0](v26, -1, -1);
    MEMORY[0x1E12D75F0](v25, -1, -1);
  }

  [objc_opt_self() unregisterForLoggedOutPushNotifications];
  return 1;
}

BOOL sub_1DF4FF5AC(uint64_t a1)
{
  if (a1)
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED9556D8);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C44();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1DF47EF6C(0xD000000000000026, 0x80000001DF572D70, &v13);
      _os_log_impl(&dword_1DF47C000, v3, v4, "%s: There is an account, skipping registration", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1E12D75F0](v6, -1, -1);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED9556D8);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1DF47EF6C(0xD000000000000026, 0x80000001DF572D70, &v13);
      _os_log_impl(&dword_1DF47C000, v8, v9, "%s: There is no account, will proceed with registration", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    [objc_opt_self() registerForLoggedOutPushNotifications];
  }

  return a1 == 0;
}

uint64_t FeaturesLoggerWithCategory.wrappedValue.getter()
{

  return sub_1DF5647A4();
}

uint64_t sub_1DF4FF950()
{
  v0 = sub_1DF5647B4();
  __swift_allocate_value_buffer(v0, qword_1ED956260);
  __swift_project_value_buffer(v0, qword_1ED956260);
  return sub_1DF5647A4();
}

uint64_t sub_1DF4FFA18()
{
  v0 = sub_1DF5647B4();
  __swift_allocate_value_buffer(v0, qword_1ED954C50);
  __swift_project_value_buffer(v0, qword_1ED954C50);
  return sub_1DF5647A4();
}

uint64_t sub_1DF4FFC78()
{
  v0 = sub_1DF5647B4();
  __swift_allocate_value_buffer(v0, qword_1ED9558C0);
  __swift_project_value_buffer(v0, qword_1ED9558C0);
  return sub_1DF5647A4();
}

uint64_t sub_1DF4FFEFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t GMAnalyticsAction.init(rawValue:)(uint64_t result)
{
  if ((result | 8) != 0xE)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1DF4FFFD0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result | 8) == 0xE)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id GMAnalyticsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMAnalyticsProvider.init()()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1DF564914();
  v3 = [v1 initWithSuiteName_];

  v10 = sub_1DF4BECB0(0, &qword_1ED9562E0, 0x1E695E000);
  v11 = &off_1F5A8A490;
  if (!v3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
  }

  *&v9 = v3;
  sub_1DF47E390(&v9, &v0[OBJC_IVAR___CSFGMAnalyticsProvider_dataStore]);
  if (qword_1ED954D60 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED954D68;
  v5 = &v0[OBJC_IVAR___CSFGMAnalyticsProvider_availabilityManager];
  v5[3] = type metadata accessor for AvailabilityManager();
  v5[4] = &off_1F5A8A208;
  *v5 = v4;
  v6 = &v0[OBJC_IVAR___CSFGMAnalyticsProvider_sendFunction];
  *v6 = sub_1DF47FD50;
  v6[1] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for GMAnalyticsProvider();

  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1DF5001EC(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v2[29] = swift_task_alloc();
  v3 = sub_1DF564494();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5002F0, 0, 0);
}

uint64_t sub_1DF5002F0()
{
  v1 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  *(inited + 32) = 7627617;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v3 = sub_1DF480040(inited);
  swift_setDeallocating();
  sub_1DF47E5B4(inited + 32, &qword_1ECE37DC8, &unk_1DF5692B0);
  if (v1 == 6)
  {
    v7 = &unk_1F5A887C0;
  }

  else
  {
    if (v1 != 14)
    {
      *(v0 + 192) = *(v0 + 216);
      v7 = &type metadata for GMAnalyticsAction;
      v6 = MEMORY[0x1E69E6530];
      v4 = v0 + 192;
      v5 = &type metadata for GMAnalyticsAction;

      return MEMORY[0x1EEE6B498](v7, v4, v5, v6);
    }

    v7 = &unk_1F5A887E8;
  }

  *(v0 + 272) = v7;
  v8 = *(v7 + 16);
  *(v0 + 280) = v8;
  if (v8)
  {
    v9 = 0;
    v10 = OBJC_IVAR___CSFGMAnalyticsProvider_availabilityManager;
    v11 = &qword_1ECE378F0;
    *(v0 + 288) = OBJC_IVAR___CSFGMAnalyticsProvider_dataStore;
    *(v0 + 296) = v10;
    v12 = &qword_1DF5686F0;
    v13 = &qword_1ECE37A10;
    v14 = v3;
    while (1)
    {
      *(v0 + 312) = v9;
      *(v0 + 320) = v14;
      *(v0 + 304) = v3;
      v15 = *(v0 + 272);
      if (v9 >= *(v15 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return MEMORY[0x1EEE6B498](v7, v4, v5, v6);
      }

      v16 = *(v15 + v9 + 32);
      *(v0 + 336) = v16;
      if (v16 == 1)
      {
        v54 = (*(v0 + 224) + *(v0 + 296));
        __swift_project_boxed_opaque_existential_0(v54, v54[3]);
        v55 = swift_task_alloc();
        *(v0 + 328) = v55;
        *v55 = v0;
        v55[1] = sub_1DF500A58;

        return sub_1DF4E62F0(v0 + 72);
      }

      v17 = (*(v0 + 224) + *(v0 + 288));
      v18 = v17[3];
      v19 = v17[4];
      __swift_project_boxed_opaque_existential_0(v17, v18);
      (*(v19 + 24))(0xD00000000000001ALL, 0x80000001DF572E00, v18, v19);
      v21 = *(v0 + 240);
      v20 = *(v0 + 248);
      v22 = *(v0 + 232);
      if (!*(v0 + 168))
      {
        break;
      }

      v23 = swift_dynamicCast();
      (*(v20 + 56))(v22, v23 ^ 1u, 1, v21);
      if ((*(v20 + 48))(v22, 1, v21) == 1)
      {
        goto LABEL_19;
      }

      v25 = *(v0 + 256);
      v24 = *(v0 + 264);
      v26 = *(v0 + 240);
      v27 = *(v0 + 248);
      (*(v27 + 32))(v24, *(v0 + 232), v26);
      sub_1DF564484();
      sub_1DF5643C4();
      v29 = v28;
      v30 = *(v27 + 8);
      v30(v25, v26);
      v7 = (v30)(v24, v26);
      v31 = v29 / 3600.0;
      if (COERCE__INT64(fabs(v29 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_51;
      }

      if (v31 <= -1.0)
      {
        goto LABEL_53;
      }

      if (v31 >= 1.84467441e19)
      {
        goto LABEL_54;
      }

      v32 = v31;
LABEL_20:
      v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v34 = sub_1DF4BECB0(0, &qword_1ED9560B0, 0x1E696AD98);
      *(v0 + 112) = v33;
      *(v0 + 120) = *(v0 + 176);
      *(v0 + 136) = v34;
      if (v34)
      {
        sub_1DF4BECB0(0, &qword_1ED9560A8, 0x1E69E58C0);
        v7 = swift_dynamicCast();
        if (v7)
        {
          v35 = v13;
          v36 = v12;
          v37 = v11;
          v38 = *(v0 + 304);
          if (*(v0 + 336))
          {
            v39 = 7631717;
          }

          else
          {
            v39 = 6973044;
          }

          v40 = *(v0 + 200);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 208) = v38;
          v42 = sub_1DF480420(v39, 0xE300000000000000);
          v43 = *(v38 + 16);
          v44 = (v4 & 1) == 0;
          v7 = v43 + v44;
          if (__OFADD__(v43, v44))
          {
            goto LABEL_52;
          }

          v45 = v4;
          if (*(*(v0 + 304) + 24) >= v7)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v3 = *(v0 + 208);
              if ((v4 & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              sub_1DF4C2DE0();
              v3 = *(v0 + 208);
              if ((v45 & 1) == 0)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
            sub_1DF501DF8(v7, isUniquelyReferenced_nonNull_native);
            v46 = sub_1DF480420(v39, 0xE300000000000000);
            if ((v45 & 1) != (v47 & 1))
            {

              return sub_1DF565144();
            }

            v42 = v46;
            v3 = *(v0 + 208);
            if ((v45 & 1) == 0)
            {
LABEL_34:
              v3[(v42 >> 6) + 8] |= 1 << v42;
              v50 = (v3[6] + 16 * v42);
              *v50 = v39;
              v50[1] = 0xE300000000000000;
              *(v3[7] + 8 * v42) = v40;

              v51 = v3[2];
              v52 = __OFADD__(v51, 1);
              v53 = v51 + 1;
              if (v52)
              {
                goto LABEL_55;
              }

              v3[2] = v53;
              goto LABEL_36;
            }
          }

          v48 = v3[7];
          v49 = *(v48 + 8 * v42);
          *(v48 + 8 * v42) = v40;

LABEL_36:
          v14 = v3;
          v11 = v37;
          v12 = v36;
          v13 = v35;
          goto LABEL_9;
        }
      }

      else
      {
        v7 = sub_1DF47E5B4(v0 + 112, v11, v12);
      }

      v14 = *(v0 + 320);
      v3 = *(v0 + 304);
LABEL_9:
      v9 = *(v0 + 312) + 1;
      if (v9 == *(v0 + 280))
      {
        goto LABEL_44;
      }
    }

    sub_1DF47E5B4(v0 + 144, v11, v12);
    (*(v20 + 56))(v22, 1, 1, v21);
LABEL_19:
    sub_1DF47E5B4(*(v0 + 232), v13, &qword_1DF567C00);
    v32 = 0;
    goto LABEL_20;
  }

  v14 = v3;
LABEL_44:
  v57 = *(v0 + 224);

  v58 = *(v57 + OBJC_IVAR___CSFGMAnalyticsProvider_sendFunction);
  v59 = swift_allocObject();
  *(v59 + 16) = v14;
  v60 = v58(0xD00000000000002CLL, 0x80000001DF572E20, sub_1DF502390, v59);

  v61 = *(v0 + 8);

  return v61(v60 & 1);
}

uint64_t sub_1DF500A58()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF500B54, 0, 0);
}

void sub_1DF500B54()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  if ((v2 & 1) == 0)
  {
    if (v1)
    {
      if ((v1 & 2) == 0)
      {
        v3 = 1;
        if ((v1 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v3 = 5;
      if ((v1 & 4) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ((v1 & 2) == 0)
      {
        v3 = 0;
        if ((v1 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v3 = 4;
      if ((v1 & 4) != 0)
      {
LABEL_9:
        v3 |= 2uLL;
      }
    }

LABEL_10:
    if ((v1 & 8) != 0)
    {
      v3 |= 8uLL;
      if ((v1 & 0x200) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((v1 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    v3 |= 0x10uLL;
    goto LABEL_13;
  }

  v3 = 0;
LABEL_13:
  v4 = "daemon.controller";
  v5 = &off_1E86BB000;
  v6 = &qword_1ED9560B0;
  while (1)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v5[309]];
    v8 = sub_1DF4BECB0(0, v6, 0x1E696AD98);
    *(v0 + 112) = v7;
    *(v0 + 120) = *(v0 + 176);
    *(v0 + 136) = v8;
    if (!v8)
    {
      sub_1DF47E5B4(v0 + 112, &qword_1ECE378F0, &qword_1DF5686F0);
LABEL_28:
      v29 = *(v0 + 320);
      v24 = *(v0 + 304);
      goto LABEL_33;
    }

    sub_1DF4BECB0(0, &qword_1ED9560A8, 0x1E69E58C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_28;
    }

    v9 = v4;
    v10 = v6;
    v11 = v5;
    v12 = *(v0 + 304);
    if (*(v0 + 336))
    {
      v13 = 7631717;
    }

    else
    {
      v13 = 6973044;
    }

    v14 = *(v0 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 208) = v12;
    v17 = sub_1DF480420(v13, 0xE300000000000000);
    v18 = *(v12 + 16);
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_60;
    }

    v21 = v16;
    if (*(*(v0 + 304) + 24) < v20)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v24 = *(v0 + 208);
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_1DF4C2DE0();
      v24 = *(v0 + 208);
      if ((v21 & 1) == 0)
      {
LABEL_25:
        v24[(v17 >> 6) + 8] |= 1 << v17;
        v25 = (v24[6] + 16 * v17);
        *v25 = v13;
        v25[1] = 0xE300000000000000;
        *(v24[7] + 8 * v17) = v14;

        v26 = v24[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_64;
        }

        v24[2] = v28;
        goto LABEL_32;
      }
    }

LABEL_31:
    v30 = v24[7];
    v31 = *(v30 + 8 * v17);
    *(v30 + 8 * v17) = v14;

LABEL_32:
    v29 = v24;
    v5 = v11;
    v6 = v10;
    v4 = v9;
LABEL_33:
    v32 = *(v0 + 312) + 1;
    if (v32 == *(v0 + 280))
    {
      v50 = *(v0 + 224);

      v51 = *(v50 + OBJC_IVAR___CSFGMAnalyticsProvider_sendFunction);
      v52 = swift_allocObject();
      *(v52 + 16) = v29;
      v53 = v51(0xD00000000000002CLL, 0x80000001DF572E20, sub_1DF502390, v52);

      v54 = *(v0 + 8);

      v54(v53 & 1);
      return;
    }

    *(v0 + 312) = v32;
    *(v0 + 320) = v29;
    *(v0 + 304) = v24;
    v33 = *(v0 + 272);
    if (v32 >= *(v33 + 16))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v34 = *(v33 + v32 + 32);
    *(v0 + 336) = v34;
    if (v34 == 1)
    {
      v55 = (*(v0 + 224) + *(v0 + 296));
      __swift_project_boxed_opaque_existential_0(v55, v55[3]);
      v56 = swift_task_alloc();
      *(v0 + 328) = v56;
      *v56 = v0;
      v56[1] = sub_1DF500A58;

      sub_1DF4E62F0(v0 + 72);
      return;
    }

    v35 = (*(v0 + 224) + *(v0 + 288));
    v36 = v35[3];
    v37 = v35[4];
    __swift_project_boxed_opaque_existential_0(v35, v36);
    (*(v37 + 24))(0xD00000000000001ALL, v4 | 0x8000000000000000, v36, v37);
    v38 = *(v0 + 240);
    v39 = *(v0 + 248);
    v40 = *(v0 + 232);
    if (!*(v0 + 168))
    {
      sub_1DF47E5B4(v0 + 144, &qword_1ECE378F0, &qword_1DF5686F0);
      (*(v39 + 56))(v40, 1, 1, v38);
      goto LABEL_15;
    }

    v41 = swift_dynamicCast();
    (*(v39 + 56))(v40, v41 ^ 1u, 1, v38);
    if ((*(v39 + 48))(v40, 1, v38) == 1)
    {
LABEL_15:
      sub_1DF47E5B4(*(v0 + 232), &qword_1ECE37A10, &qword_1DF567C00);
      v3 = 0;
    }

    else
    {
      v42 = *(v0 + 256);
      v43 = *(v0 + 264);
      v44 = *(v0 + 240);
      v45 = *(v0 + 248);
      (*(v45 + 32))(v43, *(v0 + 232), v44);
      sub_1DF564484();
      sub_1DF5643C4();
      v47 = v46;
      v48 = *(v45 + 8);
      v48(v42, v44);
      v48(v43, v44);
      v49 = v47 / 3600.0;
      if (COERCE__INT64(fabs(v47 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_61;
      }

      if (v49 <= -1.0)
      {
        goto LABEL_62;
      }

      if (v49 >= 1.84467441e19)
      {
        goto LABEL_63;
      }

      v3 = v49;
    }
  }

  sub_1DF501DF8(v20, isUniquelyReferenced_nonNull_native);
  v22 = sub_1DF480420(v13, 0xE300000000000000);
  if ((v21 & 1) == (v23 & 1))
  {
    v17 = v22;
    v24 = *(v0 + 208);
    if ((v21 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

  sub_1DF565144();
}

uint64_t sub_1DF501370(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1DF50142C;

  return sub_1DF5001EC(a1);
}

uint64_t sub_1DF50142C(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

id GMAnalyticsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAnalyticsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF501608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
  v34 = v4;
  result = sub_1DF564F24();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_1DF5018A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38018, &qword_1DF56A708);
  v34 = v4;
  result = sub_1DF564F24();
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

      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
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

uint64_t sub_1DF501B50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CB0, &unk_1DF568870);
  v34 = v4;
  result = sub_1DF564F24();
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

      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
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

uint64_t sub_1DF501DF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CC8, &unk_1DF568880);
  v35 = v4;
  result = sub_1DF564F24();
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

      sub_1DF565234();
      sub_1DF5649E4();
      result = sub_1DF565264();
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

void sub_1DF50209C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF480420(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DF501B50(v16, a4 & 1);
      v11 = sub_1DF480420(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DF565144();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DF4C2AC8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1DF502218(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF480420(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DF501DF8(v16, a4 & 1);
      v11 = sub_1DF480420(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DF565144();
        __break(1u);
_objc_release_x1:
        MEMORY[0x1EEE66BB8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1DF4C2DE0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_1DF50239C()
{
  result = qword_1ECE38010;
  if (!qword_1ECE38010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38010);
  }

  return result;
}

uint64_t dispatch thunk of GMAnalyticsProvider.sendAction(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF502548;

  return v7(a1);
}

uint64_t sub_1DF502548(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1DF502644()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF48D4B0;

  return sub_1DF501370(v2, v3, v4);
}

uint64_t sub_1DF5026FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*(a5 + 16) && (v10 = sub_1DF480420(a3, a4), (v11 & 1) != 0))
  {
    v12 = (*(a5 + 56) + 24 * v10);
    v13 = v12[2];
    if (v13)
    {
      v14 = v12[1];

      v15 = sub_1DF5026FC(a1, a2, v14, v13, a5);

      return v15 & 1;
    }

    v23 = *v12;
    if (v23)
    {
      v24 = (v23 + 48);
      v25 = *(v23 + 16) + 1;
      while (--v25)
      {
        v22 = *v24;
        if (*(v24 - 2) != a1 || *(v24 - 1) != a2)
        {
          v24 += 24;
          if ((sub_1DF5650D4() & 1) == 0)
          {
            continue;
          }
        }

        v27 = qword_1ED956258;

        if (v27 != -1)
        {
          swift_once();
        }

        v28 = sub_1DF5647B4();
        __swift_project_value_buffer(v28, qword_1ED956260);

        v29 = sub_1DF564794();
        v30 = sub_1DF564C44();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v38 = v32;
          *v31 = 67240450;
          *(v31 + 4) = v22;

          *(v31 + 8) = 2082;
          *(v31 + 10) = sub_1DF47EF6C(a1, a2, &v38);
          _os_log_impl(&dword_1DF47C000, v29, v30, "Returning eligibility status %{BOOL,public}d for feature ID: %{public}s", v31, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x1E12D75F0](v32, -1, -1);
          MEMORY[0x1E12D75F0](v31, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        return v22;
      }
    }

    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v33 = sub_1DF5647B4();
    __swift_project_value_buffer(v33, qword_1ED956260);

    v34 = sub_1DF564794();
    v35 = sub_1DF564C24();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1DF47EF6C(a1, a2, &v38);
      _os_log_impl(&dword_1DF47C000, v34, v35, "Eligibility section not found for feature ID: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1E12D75F0](v37, -1, -1);
      MEMORY[0x1E12D75F0](v36, -1, -1);
    }
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v17 = sub_1DF5647B4();
    __swift_project_value_buffer(v17, qword_1ED956260);

    v18 = sub_1DF564794();
    v19 = sub_1DF564C24();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1DF47EF6C(a3, a4, &v38);
      _os_log_impl(&dword_1DF47C000, v18, v19, "Eligibility section not found for bundle ID: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1E12D75F0](v21, -1, -1);
      MEMORY[0x1E12D75F0](v20, -1, -1);
    }
  }

  return 0;
}

void *sub_1DF502B70(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_1DF564494();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v15 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = *(v5 + 32);
      if (v16[2] && (v17 = sub_1DF480420(a3, a4), (v18 & 1) != 0))
      {
        a4 = *(v16[7] + 8 * v17);
        if (a4 >> 62)
        {
          v19 = sub_1DF564F04();
        }

        else
        {
          v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v19)
        {
LABEL_29:
          if (qword_1ECE37838 != -1)
          {
            swift_once();
          }

          v38 = sub_1DF5647B4();
          __swift_project_value_buffer(v38, qword_1ECE37FA0);

          v30 = sub_1DF564794();
          v39 = sub_1DF564C24();

          if (!os_log_type_enabled(v30, v39))
          {

            goto LABEL_34;
          }

          v40 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v49[0] = v16;
          *v40 = 136315394;
          *(v40 + 4) = sub_1DF47EF6C(a1, a2, v49);
          *(v40 + 12) = 2080;
          v41 = type metadata accessor for GeoClassificationInfo(0);
          v42 = MEMORY[0x1E12D6370](a4, v41);
          v44 = v43;

          v45 = sub_1DF47EF6C(v42, v44, v49);

          *(v40 + 14) = v45;
          _os_log_impl(&dword_1DF47C000, v30, v39, "Unable to find featureID %s in bundle %s", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12D75F0](v16, -1, -1);
          v37 = v40;
          goto LABEL_33;
        }

        a3 = 0;
        v5 = a4 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((a4 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1E12D66D0](a3, a4);
          }

          else
          {
            if (a3 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v20 = *(a4 + 8 * a3 + 32);
          }

          v16 = v20;
          v21 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            break;
          }

          v22 = *(v20 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey) == a1 && *(v20 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8) == a2;
          if (v22 || (sub_1DF5650D4() & 1) != 0)
          {

            return v16;
          }

          ++a3;
          if (v21 == v19)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
      }

      else if (qword_1ECE37838 == -1)
      {
LABEL_27:
        v28 = sub_1DF5647B4();
        __swift_project_value_buffer(v28, qword_1ECE37FA0);
        v29 = *v5;
        v50 = *(v5 + 16);
        v51 = v29;

        sub_1DF50402C(&v51, v49);
        sub_1DF50402C(&v50, v49);

        v30 = sub_1DF564794();
        v31 = sub_1DF564C24();

        sub_1DF4BF4C8(&v51);
        sub_1DF4BF4C8(&v50);

        if (!os_log_type_enabled(v30, v31))
        {
LABEL_34:

          sub_1DF498474();
          swift_allocError();
          *v46 = 2;
          swift_willThrow();
          return v16;
        }

        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v49[0] = v33;
        *v32 = 136315394;
        *(v32 + 4) = sub_1DF47EF6C(a3, a4, v49);
        *(v32 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38020, &qword_1DF56A710);
        v34 = sub_1DF564884();
        v36 = sub_1DF47EF6C(v34, v35, v49);

        *(v32 + 14) = v36;
        _os_log_impl(&dword_1DF47C000, v30, v31, "Unable to find bundleID %s in appIDs %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D75F0](v33, -1, -1);
        v37 = v32;
LABEL_33:
        MEMORY[0x1E12D75F0](v37, -1, -1);
        goto LABEL_34;
      }

      swift_once();
      goto LABEL_27;
    }
  }

  sub_1DF564484();
  v23 = type metadata accessor for GeoClassificationInfo(0);
  v24 = objc_allocWithZone(v23);
  v25 = OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta;
  v24[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta] = 0;
  v26 = &v24[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey];
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = &v24[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification];
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  (*(v11 + 16))(&v24[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_cacheTill], v13, v10);
  v24[v25] = 0;
  v48.receiver = v24;
  v48.super_class = v23;
  v16 = objc_msgSendSuper2(&v48, sel_init);
  (*(v11 + 8))(v13, v10);
  return v16;
}

uint64_t sub_1DF503188(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE380A0, &qword_1DF56ACD8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF505360();
  sub_1DF5652A4();
  v14 = 0;
  sub_1DF565054();
  if (!v4)
  {
    v13 = 1;
    sub_1DF565064();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DF50331C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38048, &qword_1DF56A900);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF504C68();
  sub_1DF5652A4();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38040, &qword_1DF56A8F8);
  sub_1DF504CBC(&qword_1ECE38050, sub_1DF504D88, MEMORY[0x1E69E6300]);
  sub_1DF565044();
  if (!v4)
  {
    v13 = 1;
    sub_1DF565024();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DF503528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7263736275537369 && a2 == 0xEC00000072656269)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF5035B4(uint64_t a1)
{
  v2 = sub_1DF50435C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5035F0(uint64_t a1)
{
  v2 = sub_1DF50435C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF50362C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38028, &qword_1DF56A8D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF50435C();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_1DF564FD4();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_1DF503790(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38078, &qword_1DF56A910);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF50435C();
  sub_1DF5652A4();
  sub_1DF565064();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DF5038C8()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x4B65727574616566;
  }
}

uint64_t sub_1DF50390C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B65727574616566 && a2 == 0xEA00000000007965;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DF572ED0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF5039F8(uint64_t a1)
{
  v2 = sub_1DF505360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF503A34(uint64_t a1)
{
  v2 = sub_1DF505360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF503A70@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DF5043B0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1DF503AC4()
{
  if (*v0)
  {
    return 0x754264656B6E696CLL;
  }

  else
  {
    return 0x446E6F6974636573;
  }
}

uint64_t sub_1DF503B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x446E6F6974636573 && a2 == 0xEE00736C69617465;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x754264656B6E696CLL && a2 == 0xEF79654B656C646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF503C04(uint64_t a1)
{
  v2 = sub_1DF504C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF503C40(uint64_t a1)
{
  v2 = sub_1DF504C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF503C7C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DF504588(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DF503CCC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38060, &qword_1DF56A908);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF504B50();
  sub_1DF5652A4();
  v13 = 0;
  sub_1DF565054();
  if (!v2)
  {
    v12 = 1;
    sub_1DF565054();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D60, &qword_1DF568D60);
    sub_1DF504DDC();
    sub_1DF565074();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DF503EC0()
{
  v1 = 0x4379616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x734449707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x437972746E756F63;
  }
}

uint64_t sub_1DF503F2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF5047BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF503F54(uint64_t a1)
{
  v2 = sub_1DF504B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF503F90(uint64_t a1)
{
  v2 = sub_1DF504B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DF503FCC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DF5048DC(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF50409C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DF5040F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DF50415C(uint64_t a1, int a2)
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

uint64_t sub_1DF5041A4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SubscriberStatus(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubscriberStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF50435C()
{
  result = qword_1ED954948;
  if (!qword_1ED954948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954948);
  }

  return result;
}

uint64_t sub_1DF5043B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38098, &qword_1DF56ACD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF505360();
  sub_1DF565284();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1DF564FC4();
    v9[14] = 1;
    sub_1DF564FD4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1DF504588(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38038, &qword_1DF56A8F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  sub_1DF504C68();
  sub_1DF565284();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38040, &qword_1DF56A8F8);
    v9[7] = 0;
    sub_1DF504CBC(&qword_1ED954698, sub_1DF504D34, MEMORY[0x1E69E6330]);
    sub_1DF564FB4();
    v7 = v10;
    v9[6] = 1;
    sub_1DF564F84();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1DF5047BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEE007972746E756FLL || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x734449707061 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

uint64_t sub_1DF5048DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38030, &unk_1DF56A8E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF504B50();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = 0;
  v9 = sub_1DF564FC4();
  v11 = v10;
  v18 = v9;
  v21 = 1;
  v16 = sub_1DF564FC4();
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D60, &qword_1DF568D60);
  v20 = 2;
  sub_1DF504BA4();
  sub_1DF564FE4();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v18;
  a2[1] = v11;
  v15 = v17;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v13;
  return result;
}

unint64_t sub_1DF504B50()
{
  result = qword_1ECE376E0;
  if (!qword_1ECE376E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376E0);
  }

  return result;
}

unint64_t sub_1DF504BA4()
{
  result = qword_1ECE374C0;
  if (!qword_1ECE374C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37D60, &qword_1DF568D60);
    sub_1DF504EA0(&qword_1ECE374B0, &qword_1ECE37648, &protocol conformance descriptor for GeoClassificationInfo, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE374C0);
  }

  return result;
}

unint64_t sub_1DF504C68()
{
  result = qword_1ED954C40;
  if (!qword_1ED954C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C40);
  }

  return result;
}

uint64_t sub_1DF504CBC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38040, &qword_1DF56A8F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF504D34()
{
  result = qword_1ED9548F0;
  if (!qword_1ED9548F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9548F0);
  }

  return result;
}

unint64_t sub_1DF504D88()
{
  result = qword_1ECE38058;
  if (!qword_1ECE38058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38058);
  }

  return result;
}

unint64_t sub_1DF504DDC()
{
  result = qword_1ECE38068;
  if (!qword_1ECE38068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37D60, &qword_1DF568D60);
    sub_1DF504EA0(&qword_1ECE38070, &unk_1ECE37650, &protocol conformance descriptor for GeoClassificationInfo, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38068);
  }

  return result;
}

uint64_t sub_1DF504EA0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38020, &qword_1DF56A710);
    sub_1DF504F28(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF504F28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GeoClassificationInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF504FB0(uint64_t a1, int a2)
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

uint64_t sub_1DF504FF8(uint64_t result, int a2, int a3)
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

unint64_t sub_1DF50504C()
{
  result = qword_1ECE38080;
  if (!qword_1ECE38080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38080);
  }

  return result;
}

unint64_t sub_1DF5050A4()
{
  result = qword_1ECE38088;
  if (!qword_1ECE38088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38088);
  }

  return result;
}

unint64_t sub_1DF5050FC()
{
  result = qword_1ECE38090;
  if (!qword_1ECE38090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38090);
  }

  return result;
}

unint64_t sub_1DF505154()
{
  result = qword_1ED954C30;
  if (!qword_1ED954C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C30);
  }

  return result;
}

unint64_t sub_1DF5051AC()
{
  result = qword_1ED954C38;
  if (!qword_1ED954C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954C38);
  }

  return result;
}

unint64_t sub_1DF505204()
{
  result = qword_1ECE376D0;
  if (!qword_1ECE376D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376D0);
  }

  return result;
}

unint64_t sub_1DF50525C()
{
  result = qword_1ECE376D8;
  if (!qword_1ECE376D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE376D8);
  }

  return result;
}

unint64_t sub_1DF5052B4()
{
  result = qword_1ED954938;
  if (!qword_1ED954938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954938);
  }

  return result;
}

unint64_t sub_1DF50530C()
{
  result = qword_1ED954940;
  if (!qword_1ED954940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954940);
  }

  return result;
}

unint64_t sub_1DF505360()
{
  result = qword_1ED954908;
  if (!qword_1ED954908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Ticket.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1DF505458()
{
  result = qword_1ECE380A8;
  if (!qword_1ECE380A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380A8);
  }

  return result;
}

unint64_t sub_1DF5054B0()
{
  result = qword_1ED9548F8;
  if (!qword_1ED9548F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9548F8);
  }

  return result;
}

unint64_t sub_1DF505508()
{
  result = qword_1ED954900;
  if (!qword_1ED954900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954900);
  }

  return result;
}

BOOL sub_1DF505580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF49A0C0(a1, a2);
  v5 = [v4 domain];

  v6 = sub_1DF564944();
  v8 = v7;

  if (v6 == sub_1DF564944() && v8 == v9)
  {

    goto LABEL_8;
  }

  v11 = sub_1DF5650D4();

  result = 0;
  if (v11)
  {
LABEL_8:
    v13 = sub_1DF49A0C0(a1, a2);
    v14 = [v13 code];

    return v14 > 499;
  }

  return result;
}

CloudSubscriptionFeatures::ServerError_optional __swiftcall ServerError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 403)
  {
    switch(rawValue)
    {
      case 204:
        *v1 = 0;
        return rawValue;
      case 400:
        *v1 = 2;
        return rawValue;
      case 401:
        *v1 = 1;
        return rawValue;
    }

LABEL_14:
    *v1 = 7;
    return rawValue;
  }

  if (rawValue > 428)
  {
    if (rawValue == 429)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 1000)
    {
      *v1 = 6;
      return rawValue;
    }

    goto LABEL_14;
  }

  if (rawValue == 404)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 412)
  {
    goto LABEL_14;
  }

  *v1 = 4;
  return rawValue;
}

uint64_t sub_1DF50575C(uint64_t a1)
{
  v2 = sub_1DF505D10();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DF505798(uint64_t a1)
{
  v2 = sub_1DF505D10();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1DF50580C()
{
  result = qword_1ECE380B0;
  if (!qword_1ECE380B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380B0);
  }

  return result;
}

uint64_t sub_1DF505860()
{
  v1 = *v0;
  sub_1DF565234();
  MEMORY[0x1E12D6B00](qword_1DF56B0B8[v1]);
  return sub_1DF565264();
}

uint64_t sub_1DF5058E8(uint64_t a1)
{
  v2 = *v1;
  sub_1DF565234();
  MEMORY[0x1E12D6B00](qword_1DF56B0B8[v2]);
  return sub_1DF565264();
}

unint64_t sub_1DF505954(uint64_t a1)
{
  *(a1 + 8) = sub_1DF505984();
  result = sub_1DF5059D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF505984()
{
  result = qword_1ECE37788;
  if (!qword_1ECE37788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37788);
  }

  return result;
}

unint64_t sub_1DF5059D8()
{
  result = qword_1ECE380B8;
  if (!qword_1ECE380B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380B8);
  }

  return result;
}

unint64_t sub_1DF505A50()
{
  result = qword_1ECE380C0;
  if (!qword_1ECE380C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE380C8, &qword_1DF56AFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380C0);
  }

  return result;
}

uint64_t sub_1DF505AC4(uint64_t a1)
{
  v2 = sub_1DF505984();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DF505B00(uint64_t a1)
{
  v2 = sub_1DF505984();
  v3 = sub_1DF505CBC();
  v4 = sub_1DF4995C8();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

uint64_t getEnumTagSinglePayload for ServerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF505CBC()
{
  result = qword_1ECE37780;
  if (!qword_1ECE37780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37780);
  }

  return result;
}

unint64_t sub_1DF505D10()
{
  result = qword_1ECE380D0;
  if (!qword_1ECE380D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380D0);
  }

  return result;
}

CloudSubscriptionFeatures::LocalError_optional __swiftcall LocalError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DF505DA8()
{
  result = qword_1ECE380D8;
  if (!qword_1ECE380D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380D8);
  }

  return result;
}

unint64_t sub_1DF505E04(uint64_t a1)
{
  *(a1 + 8) = sub_1DF499060();
  result = sub_1DF505E34();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF505E34()
{
  result = qword_1ECE380E0;
  if (!qword_1ECE380E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380E0);
  }

  return result;
}

unint64_t sub_1DF505E90()
{
  result = qword_1ECE380E8;
  if (!qword_1ECE380E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECE380F0, &qword_1DF56B200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE380E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LocalError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF506054(unsigned __int8 a1)
{
  v2 = 0xD00000000000002ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  *(inited + 32) = sub_1DF564944();
  *(inited + 40) = v4;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v7 = 0xD000000000000023;
        v6 = 0xD000000000000029;
        v8 = "ng of the requested feature ID";
        v9 = "nd to any premium feature";
        v10 = "ature ID is not a valid value";
        v2 = 0xD000000000000029;
      }

      else
      {
        v6 = 0xD00000000000002DLL;
        v8 = "uest to the correct path";
        v9 = "d at the given URL";
        v10 = "404 server not found";
        v7 = 0xD000000000000039;
      }
    }

    else
    {
      v7 = 0xD000000000000032;
      v2 = 0xD000000000000021;
      v8 = "ate with the server again";
      v9 = "ticate successfully";
      v10 = "ith the server has failed";
      v6 = 0xD00000000000002ELL;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v6 = 0xD000000000000028;
      v2 = 0xD000000000000022;
      v8 = "he response body";
      v9 = " valid feature ID";
      v10 = " existing features";
      v7 = 0xD00000000000002ELL;
    }

    else
    {
      v7 = 0xD000000000000020;
      v6 = 0xD000000000000032;
      v2 = 0xD000000000000030;
      v8 = "response was nil";
      v9 = "o data in the body";
      v10 = "ish connection with daemon";
    }
  }

  else if (a1 == 3)
  {
    v6 = 0xD000000000000014;
    v7 = 0xD000000000000022;
    v8 = "ling the right partition";
    v9 = "ch any user in this partition";
    v10 = "n this partition";
    v2 = 0xD000000000000038;
  }

  else
  {
    v6 = 0xD000000000000020;
    v7 = 0xD00000000000002DLL;
    v8 = "ng another request";
    v9 = "s have been performed recently";
    v10 = " limit has been exceeded";
    v2 = 0xD000000000000048;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v10 | 0x8000000000000000;
  *(inited + 80) = sub_1DF564944();
  *(inited + 88) = v11;
  *(inited + 120) = v5;
  *(inited + 96) = v7;
  *(inited + 104) = v9 | 0x8000000000000000;
  *(inited + 128) = sub_1DF564944();
  *(inited + 136) = v12;
  *(inited + 168) = v5;
  *(inited + 144) = v2;
  *(inited + 152) = v8 | 0x8000000000000000;
  v13 = sub_1DF49A758(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E8, &unk_1DF5673D0);
  swift_arrayDestroy();
  return v13;
}

unint64_t sub_1DF506310(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E0, &unk_1DF56B300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  *(inited + 32) = sub_1DF564944();
  *(inited + 40) = v3;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 != 5)
      {
        *(inited + 48) = 0xD00000000000002ELL;
        *(inited + 56) = 0x80000001DF573D40;
        *(inited + 80) = sub_1DF564944();
        *(inited + 88) = v21;
        *(inited + 120) = v4;
        *(inited + 96) = 0xD000000000000039;
        *(inited + 104) = 0x80000001DF573D70;
        *(inited + 128) = sub_1DF564944();
        *(inited + 136) = v22;
        v7 = 0x80000001DF573DB0;
        v8 = 0xD00000000000001FLL;
        goto LABEL_16;
      }

      *(inited + 48) = 0xD00000000000001ELL;
      *(inited + 56) = 0x80000001DF573F00;
      *(inited + 80) = sub_1DF564944();
      *(inited + 88) = v12;
      *(inited + 120) = v4;
      v8 = 0xD00000000000001CLL;
      *(inited + 96) = 0xD00000000000001CLL;
      *(inited + 104) = 0x80000001DF573E30;
      *(inited + 128) = sub_1DF564944();
      *(inited + 136) = v13;
      v14 = "Check logs for error message";
    }

    else
    {
      if (a1 == 3)
      {
        *(inited + 48) = 0xD000000000000015;
        *(inited + 56) = 0x80000001DF573F50;
        *(inited + 80) = sub_1DF564944();
        *(inited + 88) = v5;
        *(inited + 120) = v4;
        *(inited + 96) = 0xD000000000000022;
        *(inited + 104) = 0x80000001DF573E70;
        *(inited + 128) = sub_1DF564944();
        *(inited + 136) = v6;
        v7 = 0xEC00000072616461;
        v8 = 0x72206120656C6966;
        goto LABEL_16;
      }

      v8 = 0xD000000000000015;
      *(inited + 48) = 0xD000000000000026;
      *(inited + 56) = 0x80000001DF573F20;
      *(inited + 80) = sub_1DF564944();
      *(inited + 88) = v19;
      *(inited + 120) = v4;
      *(inited + 96) = 0xD00000000000001ELL;
      *(inited + 104) = 0x80000001DF573E50;
      *(inited + 128) = sub_1DF564944();
      *(inited + 136) = v20;
      v14 = "check string contents";
    }

    v7 = (v14 - 32) | 0x8000000000000000;
    goto LABEL_16;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      *(inited + 48) = 0xD000000000000022;
      *(inited + 56) = 0x80000001DF573FA0;
      *(inited + 80) = sub_1DF564944();
      *(inited + 88) = v9;
      v10 = 0x80000001DF573EC0;
      *(inited + 120) = v4;
      v11 = 0xD000000000000019;
    }

    else
    {
      *(inited + 48) = 0xD000000000000020;
      *(inited + 56) = 0x80000001DF573F70;
      *(inited + 80) = sub_1DF564944();
      *(inited + 88) = v17;
      v10 = 0x80000001DF573EA0;
      *(inited + 120) = v4;
      v11 = 0xD00000000000001ALL;
    }

    *(inited + 96) = v11;
    *(inited + 104) = v10;
    *(inited + 128) = sub_1DF564944();
    *(inited + 136) = v18;
    v7 = 0x80000001DF573E10;
    v8 = 0xD000000000000018;
  }

  else
  {
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DF573FD0;
    *(inited + 80) = sub_1DF564944();
    *(inited + 88) = v15;
    *(inited + 120) = v4;
    *(inited + 96) = 0xD000000000000015;
    *(inited + 104) = 0x80000001DF573EE0;
    *(inited + 128) = sub_1DF564944();
    *(inited + 136) = v16;
    v7 = 0x80000001DF572FB0;
    v8 = 0xD000000000000014;
  }

LABEL_16:
  *(inited + 168) = v4;
  *(inited + 144) = v8;
  *(inited + 152) = v7;
  v23 = sub_1DF49A758(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE378E8, &unk_1DF5673D0);
  swift_arrayDestroy();
  return v23;
}

void sub_1DF506780(uint64_t a1)
{
  sub_1DF50682C(319, &unk_1ED954CA0, sub_1DF4820E4);
  if (v1 <= 0x3F)
  {
    sub_1DF50682C(319, &qword_1ED954CC8, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DF50682C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1DF506878()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v35 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E6997AD0]) init];
  v6 = *v1;
  v36 = v1[1];
  v37 = v6;
  v7 = sub_1DF564914();
  [v5 setUniqueIdentifier_];

  v8 = sub_1DF564914();
  [v5 setGroupIdentifier_];

  v9 = v1[10];
  v35[0] = v1[11];
  v35[1] = v9;
  v10 = sub_1DF564914();
  [v5 setTitle_];

  v11 = sub_1DF564914();
  [v5 setInformativeText_];

  v12 = type metadata accessor for FollowUpConfig(0);
  sub_1DF50731C(v1 + *(v12 + 48), v4);
  v13 = sub_1DF564914();
  v14 = sub_1DF564344();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v4, 1, v14) != 1)
  {
    v16 = sub_1DF564314();
    (*(v15 + 8))(v4, v14);
  }

  v17 = objc_opt_self();
  v18 = [v17 actionWithLabel:v13 url:v16];

  if (v18)
  {
    v19 = v18;
    v20 = sub_1DF564914();
    [v19 setIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37ED0, &qword_1DF569BB0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DF569350;
    *(v21 + 32) = v19;
    sub_1DF4BECB0(0, &qword_1ECE37468, 0x1E6997AC0);
    v22 = v19;
    v23 = sub_1DF564A94();

    [v5 setActions_];
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E6997AD8]) init];
  v25 = sub_1DF564914();
  [v24 setTitle_];

  v26 = sub_1DF564914();
  [v24 setInformativeText_];

  [v24 setFrequency_];
  [v24 setActivateAction_];
  v27 = [v17 actionWithLabel:0 url:0];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
    v30 = sub_1DF564914();
    [v29 setIdentifier_];
  }

  [v24 setClearAction_];
  [v5 setNotification_];
  if (v37 == 0xD000000000000017 && 0x80000001DF573FF0 == v36 || (sub_1DF5650D4() & 1) != 0)
  {
    [v5 setDisplayStyle_];
    if (v1[5])
    {
      v31 = sub_1DF564914();
    }

    else
    {
      v31 = 0;
    }

    [v5 setExtensionIdentifier_];

    if (v1[7])
    {
      v32 = sub_1DF564914();
    }

    else
    {
      v32 = 0;
    }

    [v5 setRepresentingBundlePath_];

    if (v1[9])
    {
      v33 = sub_1DF564914();
    }

    else
    {
      v33 = 0;
    }

    [v5 setBundleIconName_];
  }

  else
  {
    [v5 setDisplayStyle_];
  }

  return v5;
}

double sub_1DF506DCC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1DF564944();
  v20 = v3;
  v21 = v2;
  sub_1DF4BECB0(0, &qword_1ECE37460, off_1E86BACB8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_1DF564274();
  v18 = v8;
  v19 = v7;

  v9 = [v5 bundleForClass_];
  v10 = sub_1DF564274();
  v12 = v11;

  v13 = [v5 bundleForClass_];
  v14 = sub_1DF564274();
  v16 = v15;

  type metadata accessor for FollowUpConfig(0);
  sub_1DF564334();
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x80000001DF5709F0;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v19;
  *(a1 + 88) = v18;
  *(a1 + 96) = v10;
  *(a1 + 104) = v12;
  *(a1 + 112) = v14;
  *(a1 + 120) = v16;
  return result;
}

double sub_1DF507018@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1DF564944();
  v21 = v3;
  v22 = v2;
  sub_1DF4BECB0(0, &qword_1ECE37460, off_1E86BACB8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_1DF564274();
  v20 = v8;

  v9 = [v5 bundleForClass_];
  v10 = sub_1DF564274();
  v12 = v11;

  v13 = [v5 bundleForClass_];
  v14 = sub_1DF564274();
  v16 = v15;

  v17 = *(type metadata accessor for FollowUpConfig(0) + 48);
  v18 = sub_1DF564344();
  (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001DF573FF0;
  *(a1 + 16) = v22;
  *(a1 + 24) = v21;
  *(a1 + 32) = 0xD000000000000038;
  *(a1 + 40) = 0x80000001DF574030;
  *(a1 + 48) = 0xD000000000000068;
  *(a1 + 56) = 0x80000001DF574070;
  result = 4.73648168e180;
  *(a1 + 64) = xmmword_1DF56B360;
  *(a1 + 80) = v7;
  *(a1 + 88) = v20;
  *(a1 + 96) = v10;
  *(a1 + 104) = v12;
  *(a1 + 112) = v14;
  *(a1 + 120) = v16;
  return result;
}

uint64_t type metadata accessor for FollowUpConfig(uint64_t a1)
{
  result = qword_1ECE37758;
  if (!qword_1ECE37758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF50731C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DF5073B4(uint64_t a1)
{
  sub_1DF482924();
  if (v1 <= 0x3F)
  {
    sub_1DF507454(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DF507454(uint64_t a1)
{
  if (!qword_1ECE377D0)
  {
    sub_1DF564344();
    v1 = sub_1DF564D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE377D0);
    }
  }
}

uint64_t GeoClassificationInfo.featureKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey);

  return v1;
}

uint64_t sub_1DF50763C()
{
  v0 = sub_1DF564494();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF564484();
  v4 = sub_1DF5643F4();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_1DF507764()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8);

  return sub_1DF508CAC(v1, v2);
}

_BYTE *GeoClassificationInfo.init(from:)(void *a1)
{
  v3 = sub_1DF564494();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38108, &unk_1DF56B3B0);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta;
  v10 = v1;
  v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta] = 0;
  v11 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v11);
  sub_1DF508DD0();
  v12 = v31;
  sub_1DF565284();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
    type metadata accessor for GeoClassificationInfo(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v9;
    v13 = v5;
    v15 = v29;
    v14 = v30;
    v34 = 3;
    v16 = sub_1DF564FC4();
    v18 = &v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey];
    *v18 = v16;
    v18[1] = v19;
    v34 = 0;
    v20 = sub_1DF564FC4();
    v21 = &v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification];
    *v21 = v20;
    v21[1] = v22;
    v27 = v21;
    v34 = 1;
    sub_1DF484ECC(&qword_1ED955C88, MEMORY[0x1E6969558]);
    v26 = v13;
    sub_1DF564FE4();
    (*(v28 + 32))(&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_cacheTill], v26, v3);
    v34 = 2;
    v23 = sub_1DF564F94();
    (*(v15 + 8))(v8, v14);
    v10[v31] = v23 & 1;
    v24 = type metadata accessor for GeoClassificationInfo(0);
    v33.receiver = v10;
    v33.super_class = v24;
    v10 = objc_msgSendSuper2(&v33, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  return v10;
}

id GeoClassificationInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DF564494();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta;
  v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta] = 0;
  sub_1DF4BECB0(0, &qword_1ED9560A0, 0x1E696AEC0);
  v9 = sub_1DF564CB4();
  if (!v9)
  {
    if (qword_1ED9545D8 != -1)
    {
      swift_once();
    }

    v27 = sub_1DF5647B4();
    __swift_project_value_buffer(v27, qword_1ED9545E0);
    v28 = sub_1DF564794();
    v29 = sub_1DF564C24();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_18;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Could not decode feature key for GeoclassificationInfo!";
    goto LABEL_17;
  }

  v10 = v9;
  v11 = sub_1DF564944();
  v13 = v12;

  v14 = sub_1DF564CB4();
  if (!v14)
  {

    if (qword_1ED9545D8 != -1)
    {
      swift_once();
    }

    v32 = sub_1DF5647B4();
    __swift_project_value_buffer(v32, qword_1ED9545E0);
    v28 = sub_1DF564794();
    v29 = sub_1DF564C24();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_18;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Could not decode geoClassification for GeoclassificationInfo!";
    goto LABEL_17;
  }

  v15 = v14;
  v35 = sub_1DF564944();
  v17 = v16;

  sub_1DF4BECB0(0, &qword_1ED955DD0, 0x1E695DF00);
  v18 = sub_1DF564CB4();
  if (v18)
  {
    v19 = &v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey];
    *v19 = v11;
    v19[1] = v13;
    v20 = &v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification];
    *v20 = v35;
    v20[1] = v17;
    v21 = v18;
    sub_1DF564464();
    (*(v5 + 32))(&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_cacheTill], v7, v4);
    v22 = sub_1DF564914();
    v23 = [a1 decodeBoolForKey_];

    v2[v8] = v23;
    v24 = type metadata accessor for GeoClassificationInfo(0);
    v36.receiver = v2;
    v36.super_class = v24;
    v25 = objc_msgSendSuper2(&v36, sel_init);

    return v25;
  }

  if (qword_1ED9545D8 != -1)
  {
    swift_once();
  }

  v33 = sub_1DF5647B4();
  __swift_project_value_buffer(v33, qword_1ED9545E0);
  v28 = sub_1DF564794();
  v29 = sub_1DF564C24();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Could not decode cacheTill for GeoclassificationInfo!";
LABEL_17:
    _os_log_impl(&dword_1DF47C000, v28, v29, v31, v30, 2u);
    MEMORY[0x1E12D75F0](v30, -1, -1);
  }

LABEL_18:

  type metadata accessor for GeoClassificationInfo(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1DF508124(void *a1)
{
  v2 = v1;
  v4 = sub_1DF564914();
  v5 = sub_1DF564914();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_1DF564914();
  v7 = sub_1DF564914();
  [a1 encodeObject:v6 forKey:v7];

  v8 = sub_1DF5643E4();
  v9 = sub_1DF564914();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta);
  v11 = sub_1DF564914();
  [a1 encodeBool:v10 forKey:v11];
}

uint64_t sub_1DF50837C()
{
  v1 = v0;
  sub_1DF564DF4();
  MEMORY[0x1E12D62C0](0x4B65727574616566, 0xEC000000203A7965);
  MEMORY[0x1E12D62C0](*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey), *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8));
  MEMORY[0x1E12D62C0](0x737574617473202CLL, 0xEA0000000000203ALL);
  v2 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
  v3 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8);

  v4 = sub_1DF508CAC(v2, v3);
  v5 = CSFGeoClassificationStatusDescription(v4);
  v6 = sub_1DF564944();
  v8 = v7;

  MEMORY[0x1E12D62C0](v6, v8);

  MEMORY[0x1E12D62C0](0x546568636163202CLL, 0xED0000203A6C6C69);
  sub_1DF564494();
  sub_1DF484ECC(&qword_1ED954CB0, MEMORY[0x1E6969570]);
  v9 = sub_1DF5650A4();
  MEMORY[0x1E12D62C0](v9);

  MEMORY[0x1E12D62C0](0x617465427369202CLL, 0xEA0000000000203ALL);
  if (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1E12D62C0](v10, v11);

  return 0;
}

uint64_t sub_1DF50856C(uint64_t a1)
{
  sub_1DF4EC8F4(a1, v9);
  if (!v10)
  {
    sub_1DF4A7D80(v9);
    goto LABEL_17;
  }

  type metadata accessor for GeoClassificationInfo(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v6 = 0;
    return v6 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey) == *&v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey] && *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8) == *&v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8];
  if (!v2 && (sub_1DF5650D4() & 1) == 0 || (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification) == *&v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification] ? (v3 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8) == *&v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8]) : (v3 = 0), !v3 && (sub_1DF5650D4() & 1) == 0 || (sub_1DF564454() & 1) == 0))
  {

    goto LABEL_17;
  }

  v4 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta);
  v5 = v8[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_isBeta];

  v6 = v4 ^ v5 ^ 1;
  return v6 & 1;
}

id GeoClassificationInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1DF508794()
{
  v1 = 0x6C69546568636163;
  v2 = 0x617465427369;
  if (*v0 != 2)
  {
    v2 = 0x4B65727574616566;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1DF508818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF509124(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF508840(uint64_t a1)
{
  v2 = sub_1DF508DD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF50887C(uint64_t a1)
{
  v2 = sub_1DF508DD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id GeoClassificationInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeoClassificationInfo(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF508984(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38110, &qword_1DF56B3C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF508DD0();
  sub_1DF5652A4();
  v8[15] = 0;
  sub_1DF565054();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DF564494();
    sub_1DF484ECC(&qword_1ED955120, MEMORY[0x1E6969538]);
    sub_1DF565074();
    v8[13] = 2;
    sub_1DF565064();
    v8[12] = 3;
    sub_1DF565054();
  }

  return (*(v4 + 8))(v6, v3);
}

_BYTE *sub_1DF508B94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for GeoClassificationInfo(0));
  result = GeoClassificationInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CSFGeoClassificationStatus.description.getter(uint64_t a1)
{
  v1 = CSFGeoClassificationStatusDescription(a1);
  v2 = sub_1DF564944();

  return v2;
}

uint64_t sub_1DF508C5C()
{
  v1 = CSFGeoClassificationStatusDescription(*v0);
  v2 = sub_1DF564944();

  return v2;
}

uint64_t sub_1DF508CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646574696D696CLL && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_1DF508DD0()
{
  result = qword_1ECE37670;
  if (!qword_1ECE37670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37670);
  }

  return result;
}

uint64_t sub_1DF508E2C(uint64_t a1)
{
  result = sub_1DF564494();
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

unint64_t sub_1DF509020()
{
  result = qword_1ECE38118;
  if (!qword_1ECE38118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38118);
  }

  return result;
}

unint64_t sub_1DF509078()
{
  result = qword_1ECE37660;
  if (!qword_1ECE37660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37660);
  }

  return result;
}

unint64_t sub_1DF5090D0()
{
  result = qword_1ECE37668;
  if (!qword_1ECE37668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37668);
  }

  return result;
}

uint64_t sub_1DF509124(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001DF5728C0 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69546568636163 && a2 == 0xE90000000000006CLL || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617465427369 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B65727574616566 && a2 == 0xEA00000000007965)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DF5650D4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DF5092B0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF5092F0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1DF509374(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_1DF5093C0()
{
  result = qword_1ECE38128;
  if (!qword_1ECE38128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38128);
  }

  return result;
}

unint64_t sub_1DF50948C()
{
  v1 = v0;
  sub_1DF564DF4();

  v2 = [*(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status) description];
  v3 = sub_1DF564944();
  v5 = v4;

  MEMORY[0x1E12D62C0](v3, v5);

  MEMORY[0x1E12D62C0](0x74656B636974202CLL, 0xEA0000000000203ALL);
  if (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8))
  {
    v6 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket);
    v7 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8);
  }

  else
  {
    v7 = 0xE500000000000000;
    v6 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12D62C0](v6, v7);

  MEMORY[0x1E12D62C0](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t Ticket.ticket.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket);

  return v1;
}

void *Ticket.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE38140, &qword_1DF56B770);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF509940();
  sub_1DF565284();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for Ticket();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v18) = 0;
    v10 = sub_1DF564F84();
    v12 = &v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket];
    *v12 = v10;
    v12[1] = v13;
    type metadata accessor for TicketStatus();
    v17 = 1;
    sub_1DF4BCB98(&qword_1ED954B30, &protocol conformance descriptor for TicketStatus);
    sub_1DF564FE4();
    *&v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status] = v18;
    v14 = type metadata accessor for Ticket();
    v16.receiver = v3;
    v16.super_class = v14;
    v9 = objc_msgSendSuper2(&v16, sel_init);
    sub_1DF509DC0();
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_1DF509940()
{
  result = qword_1ECE374E8;
  if (!qword_1ECE374E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE374E8);
  }

  return result;
}

id Ticket.__allocating_init(ticket:status:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status] = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_1DF509DC0();

  return v10;
}

id Ticket.init(ticket:status:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket];
  *v5 = a1;
  *(v5 + 1) = a2;
  *&v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for Ticket();
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1DF509DC0();

  return v7;
}

id Ticket.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1DF4BC0E0();
  v4 = sub_1DF564CB4();
  sub_1DF564934();

  v5 = &v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket];
  *v5 = 0;
  *(v5 + 1) = 0;
  type metadata accessor for TicketStatus();
  v6 = sub_1DF564CB4();
  if (v6)
  {
    *&v2[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status] = v6;
    v7 = v6;
    v11.receiver = v2;
    v11.super_class = type metadata accessor for Ticket();
    v8 = v7;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    sub_1DF509DC0();
  }

  else
  {

    type metadata accessor for Ticket();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

void sub_1DF509C70(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8))
  {
    v3 = sub_1DF564914();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1DF564914();
  [a1 encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *(v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status);
  v6 = sub_1DF564914();
  [a1 encodeObject:v5 forKey:v6];
}

void sub_1DF509DC0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status];
  v3 = objc_allocWithZone(type metadata accessor for TicketStatus());
  v4 = v2;
  v5 = TicketStatus.init(rawValue:)(0x7551746559746F6ELL, 0xEC00000064657565);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1DF564CD4();

    if ((v7 & 1) == 0 && !*&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8])
    {
      if (qword_1ED9545D8 != -1)
      {
        swift_once();
      }

      v8 = sub_1DF5647B4();
      __swift_project_value_buffer(v8, qword_1ED9545E0);
      v9 = v1;
      oslog = sub_1DF564794();
      v10 = sub_1DF564C24();

      if (os_log_type_enabled(oslog, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136315138;
        v13 = &v4[OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue];
        swift_beginAccess();
        v15 = *v13;
        v14 = v13[1];

        v16 = sub_1DF47EF6C(v15, v14, &v18);

        *(v11 + 4) = v16;
        _os_log_impl(&dword_1DF47C000, oslog, v10, "Ticket is not valid - has status %s but no ticket value.", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x1E12D75F0](v12, -1, -1);
        MEMORY[0x1E12D75F0](v11, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id Ticket.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1DF50A088()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x74656B636974;
  }
}

uint64_t sub_1DF50A0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74656B636974 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF50A188(uint64_t a1)
{
  v2 = sub_1DF509940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF50A1C4(uint64_t a1)
{
  v2 = sub_1DF509940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Ticket.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Ticket();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF50A284(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38150, &qword_1DF56B778);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF509940();
  sub_1DF5652A4();
  v12 = 0;
  sub_1DF565024();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status);
    v10[15] = 1;
    type metadata accessor for TicketStatus();
    sub_1DF4BCB98(&qword_1ECE37770, &protocol conformance descriptor for TicketStatus);
    sub_1DF565074();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_1DF50A438@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Ticket());
  result = Ticket.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DF50A5A8()
{
  result = qword_1ECE38158;
  if (!qword_1ECE38158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38158);
  }

  return result;
}

unint64_t sub_1DF50A600()
{
  result = qword_1ECE374D0;
  if (!qword_1ECE374D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE374D0);
  }

  return result;
}

unint64_t sub_1DF50A658()
{
  result = qword_1ECE374D8;
  if (!qword_1ECE374D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE374D8);
  }

  return result;
}

uint64_t sub_1DF50A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DF4A3FF4;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DF50A7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF50A81C, 0, 0);
}

uint64_t sub_1DF50A81C()
{
  v1 = __swift_project_boxed_opaque_existential_0(*(v0 + 40), *(*(v0 + 40) + 24));
  if (*(*__swift_project_boxed_opaque_existential_0(v1, v1[3]) + 16) == 1)
  {
    v2 = *(v0 + 48);
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    v6[2] = v2;
    v6[3] = sub_1DF513DF0;
    v6[4] = v5;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    v8 = type metadata accessor for WaitlistResult();
    *v7 = v0;
    v7[1] = sub_1DF50A9CC;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000023, 0x80000001DF574470, sub_1DF513F68, v6, v8);
  }

  else
  {
    **(v0 + 56) = 1;
    *(v0 + 96) = 1;
    sub_1DF4E4A2C();
    swift_willThrowTypedImpl();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1DF50A9CC()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF513F64, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1DF50AB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF50AB44, 0, 0);
}

uint64_t sub_1DF50AB44()
{
  v1 = __swift_project_boxed_opaque_existential_0(*(v0 + 40), *(*(v0 + 40) + 24));
  if (*(*__swift_project_boxed_opaque_existential_0(v1, v1[3]) + 16) == 1)
  {
    v2 = *(v0 + 48);
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    v6[2] = v2;
    v6[3] = sub_1DF513D74;
    v6[4] = v5;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    v8 = type metadata accessor for WaitlistResult();
    *v7 = v0;
    v7[1] = sub_1DF50ACF4;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000023, 0x80000001DF574470, sub_1DF513DBC, v6, v8);
  }

  else
  {
    **(v0 + 56) = 1;
    *(v0 + 96) = 1;
    sub_1DF4E4A2C();
    swift_willThrowTypedImpl();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1DF50ACF4()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF50AE44, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1DF50AE44()
{
  v8 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = sub_1DF5642E4();
  sub_1DF549BC4(&v7);

  v4 = v7;
  *v2 = v7;
  *(v0 + 97) = v4;
  sub_1DF4E4A2C();
  swift_willThrowTypedImpl();

  v5 = *(v0 + 8);

  return v5();
}

void sub_1DF50AF08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

_WORD *sub_1DF50AF70(char a1, void (*a2)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9), uint64_t a3)
{
  v7 = sub_1DF49207C();
  if (a1)
  {
    v26 = a2;
    v27 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DF50AF08;
    v25 = &block_descriptor_156;
    v8 = _Block_copy(&aBlock);

    v9 = &selRef_synchronousRemoteObjectProxyWithErrorHandler_;
  }

  else
  {
    v26 = a2;
    v27 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DF50AF08;
    v25 = &block_descriptor_147;
    v8 = _Block_copy(&aBlock);

    v9 = &selRef_remoteObjectProxyWithErrorHandler_;
  }

  v10 = [v7 *v9];
  _Block_release(v8);

  sub_1DF564D24();
  swift_unknownObjectRelease();
  sub_1DF47F24C(v28, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38168, &unk_1DF56B9B0);
  if (swift_dynamicCast())
  {
    v7 = v21;
    v11 = sub_1DF49207C();
    v26 = sub_1DF513F60;
    v27 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DF48EC24;
    v25 = &block_descriptor_150;
    v12 = _Block_copy(&aBlock);
    [v11 setInterruptionHandler_];
    _Block_release(v12);

    v13 = *(v3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures9XPCCaller____lazy_storage___connection);
    v26 = sub_1DF48EC68;
    v27 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DF48EC24;
    v25 = &block_descriptor_153;
    v14 = _Block_copy(&aBlock);
    v15 = v13;
    [v15 setInvalidationHandler_];
    _Block_release(v14);

    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF5647B4();
    __swift_project_value_buffer(v16, qword_1ED956398);
    v17 = sub_1DF564794();
    v18 = sub_1DF564C24();
    if (os_log_type_enabled(v17, v18))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DF47C000, v17, v18, "Proxy object has the wrong type", v7, 2u);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    sub_1DF498474();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  return v7;
}

_WORD *sub_1DF50B3C4(void (*a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9), const char *a2, SEL *a3, ...)
{
  result = sub_1DF50AF70(0, a1, 0);
  if (!v3)
  {
    v7 = result;
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v8 = sub_1DF5647B4();
    __swift_project_value_buffer(v8, qword_1ED956398);
    v9 = sub_1DF564794();
    v10 = sub_1DF564C44();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, &v13);
      _os_log_impl(&dword_1DF47C000, v9, v10, a2, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1E12D75F0](v12, -1, -1);
      MEMORY[0x1E12D75F0](v11, -1, -1);
    }

    [v7 *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DF50B558(void *a1, const char *a2, ...)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a1;
  oslog = sub_1DF564794();
  v6 = sub_1DF564C24();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_1DF5651B4();
    v11 = sub_1DF47EF6C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DF47C000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DF50B6F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = *(v3 + 16);
  v30 = a1;
  v28 = v8;
  v8(&v24 - v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = *(v3 + 32);
  v29 = v2;
  v11(v10 + v9, v7, v2);
  v12 = sub_1DF50AF70(0, sub_1DF5137E8, v10);
  v25 = v11;
  v26 = v12;

  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v13 = sub_1DF5647B4();
  __swift_project_value_buffer(v13, qword_1ED956398);
  v14 = sub_1DF564794();
  v15 = sub_1DF564C44();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1DF47EF6C(0xD000000000000017, 0x80000001DF574620, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, aBlock);
    _os_log_impl(&dword_1DF47C000, v14, v15, "Sending %s request to %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v17, -1, -1);
    MEMORY[0x1E12D75F0](v16, -1, -1);
  }

  v18 = v27;
  v19 = v25;
  v20 = v29;
  v28(v27, v30, v29);
  v21 = swift_allocObject();
  v19(v21 + v9, v18, v20);
  aBlock[4] = sub_1DF513810;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF49BC74;
  aBlock[3] = &block_descriptor_144;
  v22 = _Block_copy(aBlock);

  [v26 getSharedAlbumsStatusWithCompletion_];
  _Block_release(v22);
  return swift_unknownObjectRelease();
}

uint64_t sub_1DF50BC48(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000017, 0x80000001DF574620, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  return sub_1DF564B14();
}

uint64_t sub_1DF50BE44(char a1, void *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = a2;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_1DF47EF6C(0xD000000000000017, 0x80000001DF574620, &v17);
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    *(v8 + 18) = 2080;
    if (a2)
    {
      v10 = [v5 localizedDescription];
      v11 = sub_1DF564944();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v16 = sub_1DF47EF6C(v11, v13, &v17);

    *(v8 + 20) = v16;
    _os_log_impl(&dword_1DF47C000, v6, v7, "received %s response, isEnabled: %{BOOL}d, error: %s", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);

    if (!a2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v17 = v5;
    v14 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B14();
  }

  if (a2)
  {
    goto LABEL_7;
  }

LABEL_10:
  LOBYTE(v17) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  return sub_1DF564B24();
}

uint64_t sub_1DF50C0A4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF50C0C8, 0, 0);
}

uint64_t sub_1DF50C0C8()
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED956398);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Getting ticket status", v4, 2u);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  v8 = swift_task_alloc();
  v0[6] = v8;
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = type metadata accessor for TicketStatus();
  *v9 = v0;
  v9[1] = sub_1DF50C288;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x80000001DF574600, sub_1DF51378C, v8, v10);
}

uint64_t sub_1DF50C288()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DF49091C;
  }

  else
  {

    v2 = sub_1DF48EAFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1DF50C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38190, &qword_1DF56BA28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v36 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = *(v6 + 16);
  v38 = a1;
  v11(v31 - v9, a1, v5);
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(v6 + 32);
  v37 = v5;
  v14(v13 + ((v12 + 16) & ~v12), v10, v5);
  v15 = sub_1DF50AF70(0, sub_1DF513798, v13);
  v31[0] = v14;
  v31[1] = v6 + 32;
  v31[2] = v12;
  v32 = v11;
  v16 = v15;

  v17 = qword_1ED956390;
  v33 = v16;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  __swift_project_value_buffer(v18, qword_1ED956398);
  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, aBlock);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, aBlock);
    _os_log_impl(&dword_1DF47C000, v19, v20, "Sending %s request to %s.", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v22, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v23 = v36;
  v24 = v31[0];
  v25 = sub_1DF564914();
  v26 = v37;
  v32(v23, v38, v37);
  v27 = swift_allocObject();
  v28 = v23;
  v29 = v27;
  v24(v27 + ((v12 + 16) & ~v12), v28, v26);
  aBlock[4] = sub_1DF5137C0;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF48DAD0;
  aBlock[3] = &block_descriptor_135;
  v30 = _Block_copy(aBlock);

  [v33 getTicketStatusForFeature:v25 completion:v30];
  swift_unknownObjectRelease();
  _Block_release(v30);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50C940(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38190, &qword_1DF56BA28);
  return sub_1DF564B14();
}

uint64_t sub_1DF50CB3C(void *a1, void *a2)
{
  if (a2)
  {
    v3 = qword_1ED956390;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF5647B4();
    __swift_project_value_buffer(v5, qword_1ED956398);
    v6 = v4;
    v7 = sub_1DF564794();
    v8 = sub_1DF564C24();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v32);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = a2;
      v12 = v6;
      _os_log_impl(&dword_1DF47C000, v7, v8, "Received %s error response: %@", v9, 0x16u);
      sub_1DF484888(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v9, -1, -1);
    }

    v32 = v6;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38190, &qword_1DF56BA28);
    return sub_1DF564B14();
  }

  if (!a1)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v25 = sub_1DF5647B4();
    __swift_project_value_buffer(v25, qword_1ED956398);
    v26 = sub_1DF564794();
    v27 = sub_1DF564C24();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v32);
      _os_log_impl(&dword_1DF47C000, v26, v27, "Receieved %s neither an error or response object. Throwing error.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v28, -1, -1);
    }

    sub_1DF498474();
    v30 = swift_allocError();
    *v31 = 2;
    v32 = v30;
    goto LABEL_7;
  }

  v14 = qword_1ED956390;
  v16 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED956398);
  v18 = v16;
  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DF47EF6C(0xD00000000000001CLL, 0x80000001DF574600, &v32);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = a1;
    v24 = v18;
    _os_log_impl(&dword_1DF47C000, v19, v20, "Received %s status response: %@", v21, 0x16u);
    sub_1DF484888(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v32 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38190, &qword_1DF56BA28);
  return sub_1DF564B24();
}

uint64_t sub_1DF50CFD4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF50CFF8, 0, 0);
}

uint64_t sub_1DF50CFF8()
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED956398);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Getting ticket status from cache.", v4, 2u);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  v8 = swift_task_alloc();
  v0[6] = v8;
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38180, &qword_1DF56BA10);
  *v9 = v0;
  v9[1] = sub_1DF48E3A0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000025, 0x80000001DF574580, sub_1DF513730, v8, v10);
}

void sub_1DF50D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38188, &qword_1DF56BA18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(v6 + 16);
  v24 = a1;
  v20 = v11;
  v11(&v20 - v9, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v13 + v12, v10, v5);
  v15 = sub_1DF50AF70(0, sub_1DF51373C, v13);

  swift_unknownObjectRetain();
  v16 = sub_1DF564914();
  v17 = v21;
  v20(v21, v24, v5);
  v18 = swift_allocObject();
  v14(v18 + v12, v17, v5);
  aBlock[4] = sub_1DF513764;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF48DAD0;
  aBlock[3] = &block_descriptor_124;
  v19 = _Block_copy(aBlock);

  [v15 getTicketStatusFromCacheForFeature:v16 completion:v19];
  swift_unknownObjectRelease();
  _Block_release(v19);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50D5EC(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38188, &qword_1DF56BA18);
  return sub_1DF564B14();
}

uint64_t sub_1DF50D7E8(void *a1, void *a2)
{
  if (a2)
  {
    v3 = qword_1ED956390;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF5647B4();
    __swift_project_value_buffer(v5, qword_1ED956398);
    v6 = v4;
    v7 = sub_1DF564794();
    v8 = sub_1DF564C24();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v32);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = a2;
      v12 = v6;
      _os_log_impl(&dword_1DF47C000, v7, v8, "Received %s error response: %@", v9, 0x16u);
      sub_1DF484888(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v9, -1, -1);
    }

    v32 = v6;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38188, &qword_1DF56BA18);
    return sub_1DF564B14();
  }

  if (!a1)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v25 = sub_1DF5647B4();
    __swift_project_value_buffer(v25, qword_1ED956398);
    v26 = sub_1DF564794();
    v27 = sub_1DF564C24();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v32);
      _os_log_impl(&dword_1DF47C000, v26, v27, "Receieved %s neither an error or response object. Throwing error.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v28, -1, -1);
    }

    sub_1DF498474();
    v30 = swift_allocError();
    *v31 = 2;
    v32 = v30;
    goto LABEL_7;
  }

  v14 = qword_1ED956390;
  v16 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED956398);
  v18 = v16;
  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DF47EF6C(0xD000000000000025, 0x80000001DF574580, &v32);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = a1;
    v24 = v18;
    _os_log_impl(&dword_1DF47C000, v19, v20, "Received %s status response: %@", v21, 0x16u);
    sub_1DF484888(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38188, &qword_1DF56BA18);
  return sub_1DF564B24();
}

void sub_1DF50DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v36 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = *(v6 + 16);
  v38 = a1;
  v11(v31 - v9, a1, v5);
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  v14 = *(v6 + 32);
  v37 = v5;
  v14(v13 + ((v12 + 16) & ~v12), v10, v5);
  v15 = sub_1DF50AF70(0, sub_1DF5136E0, v13);
  v31[0] = v14;
  v31[1] = v6 + 32;
  v31[2] = v12;
  v32 = v11;
  v16 = v15;

  v17 = qword_1ED956390;
  v33 = v16;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  __swift_project_value_buffer(v18, qword_1ED956398);
  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, aBlock);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1DF47EF6C(0x6165727574616566, 0xEE00647373656363, aBlock);
    _os_log_impl(&dword_1DF47C000, v19, v20, "Sending %s request to %s.", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v22, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v23 = v36;
  v24 = v31[0];
  v25 = sub_1DF564914();
  v26 = v37;
  v32(v23, v38, v37);
  v27 = swift_allocObject();
  v28 = v23;
  v29 = v27;
  v24(v27 + ((v12 + 16) & ~v12), v28, v26);
  aBlock[4] = sub_1DF513708;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF48DAD0;
  aBlock[3] = &block_descriptor_113;
  v30 = _Block_copy(aBlock);

  [v33 getTicketForFeature:v25 completion:v30];
  swift_unknownObjectRelease();
  _Block_release(v30);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50E21C(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
  return sub_1DF564B14();
}

uint64_t sub_1DF50E418(void *a1, void *a2)
{
  if (a2)
  {
    v3 = qword_1ED956390;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF5647B4();
    __swift_project_value_buffer(v5, qword_1ED956398);
    v6 = v4;
    v7 = sub_1DF564794();
    v8 = sub_1DF564C24();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, &v32);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = a2;
      v12 = v6;
      _os_log_impl(&dword_1DF47C000, v7, v8, "Received %s error response: %@", v9, 0x16u);
      sub_1DF484888(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v9, -1, -1);
    }

    v32 = v6;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
    return sub_1DF564B14();
  }

  if (!a1)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v25 = sub_1DF5647B4();
    __swift_project_value_buffer(v25, qword_1ED956398);
    v26 = sub_1DF564794();
    v27 = sub_1DF564C24();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, &v32);
      _os_log_impl(&dword_1DF47C000, v26, v27, "Receieved %s neither an error or response object. Throwing error.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E12D75F0](v29, -1, -1);
      MEMORY[0x1E12D75F0](v28, -1, -1);
    }

    sub_1DF498474();
    v30 = swift_allocError();
    *v31 = 2;
    v32 = v30;
    goto LABEL_7;
  }

  v14 = qword_1ED956390;
  v16 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED956398);
  v18 = v16;
  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574520, &v32);
    *(v21 + 12) = 2112;
    *(v21 + 14) = v18;
    *v22 = a1;
    v24 = v18;
    _os_log_impl(&dword_1DF47C000, v19, v20, "Received %s status response: %@", v21, 0x16u);
    sub_1DF484888(v22);
    MEMORY[0x1E12D75F0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v21, -1, -1);
  }

  v32 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
  return sub_1DF564B24();
}

uint64_t sub_1DF50E8B0(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF50E8D8, 0, 0);
}

uint64_t sub_1DF50E8D8()
{
  v13 = v0;
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED956398);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574500, &v12);
    _os_log_impl(&dword_1DF47C000, v2, v3, "%{public}s [Start]", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1E12D75F0](v5, -1, -1);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_1DF50EAF8;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD000000000000016, 0x80000001DF574500, sub_1DF5136A8, v8, v10);
}

uint64_t sub_1DF50EAF8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DF50EC2C;
  }

  else
  {

    v2 = sub_1DF50EC14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF50EC2C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1DF50EC90(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(v5 + 16);
  v23 = a1;
  v20 = v10;
  v10(&v19 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(v5 + 32);
  v13(v12 + v11, v9, v4);
  v14 = sub_1DF50AF70(0, sub_1DF5136B4, v12);

  swift_unknownObjectRetain();
  v15 = sub_1DF564914();

  v16 = v22;
  v20(v22, v23, v4);
  v17 = swift_allocObject();
  v13(v17 + v11, v16, v4);
  aBlock[4] = sub_1DF5136DC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF50F2D8;
  aBlock[3] = &block_descriptor_104;
  v18 = _Block_copy(aBlock);

  [v14 clearCFUGateWithFeature:v15 completion:v18];
  swift_unknownObjectRelease();
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50F0DC(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000016, 0x80000001DF574500, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  return sub_1DF564B14();
}

void sub_1DF50F2D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1DF50F344(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(v5 + 16);
  v23 = a1;
  v20 = v10;
  v10(&v19 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(v5 + 32);
  v13(v12 + v11, v9, v4);
  v14 = sub_1DF50AF70(0, sub_1DF5134A0, v12);

  swift_unknownObjectRetain();
  v15 = sub_1DF564914();

  v16 = v22;
  v20(v22, v23, v4);
  v17 = swift_allocObject();
  v13(v17 + v11, v16, v4);
  aBlock[4] = sub_1DF513FD8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF50F2D8;
  aBlock[3] = &block_descriptor_58;
  v18 = _Block_copy(aBlock);

  [v14 clearCFUWithId:v15 completion:v18];
  swift_unknownObjectRelease();
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50F7B0(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD000000000000012, 0x80000001DF574450, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  return sub_1DF564B14();
}

uint64_t sub_1DF50F9AC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
    return sub_1DF564B14();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
    return sub_1DF564B24();
  }
}

void sub_1DF50FA20(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(v5 + 16);
  v23 = a1;
  v20 = v10;
  v10(&v19 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(v5 + 32);
  v13(v12 + v11, v9, v4);
  v14 = sub_1DF50AF70(0, sub_1DF513564, v12);

  swift_unknownObjectRetain();
  v15 = sub_1DF564914();

  v16 = v22;
  v20(v22, v23, v4);
  v17 = swift_allocObject();
  v13(v17 + v11, v16, v4);
  aBlock[4] = sub_1DF513614;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF49BC74;
  aBlock[3] = &block_descriptor_75;
  v18 = _Block_copy(aBlock);

  [v14 postCFUIfEligibleWithFeature:v15 completion:v18];
  swift_unknownObjectRelease();
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF50FE6C(void *a1)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956398);
  v3 = a1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD00000000000001BLL, 0x80000001DF5744A0, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_1DF5651B4();
    v10 = sub_1DF47EF6C(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Remote proxy error in %s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF498474();
  v11 = swift_allocError();
  *v12 = 1;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  return sub_1DF564B14();
}

uint64_t sub_1DF510068(char a1, void *a2)
{
  if (qword_1ED956390 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956398);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_1DF47C000, v5, v6, "CFU was posted? %{BOOL}d", v7, 8u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  if (a2)
  {
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B14();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B24();
  }
}

uint64_t sub_1DF5101CC(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 57) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5101F4, 0, 0);
}

uint64_t sub_1DF5101F4()
{
  if (os_variant_has_internal_content())
  {
    v1 = *(v0 + 57);
    v2 = *(v0 + 16);
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *(v3 + 16) = v1;
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    v4[2] = v2;
    v4[3] = sub_1DF513538;
    v4[4] = v3;
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_1DF51039C;
    v6 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DE38](v0 + 56, 0, 0, 0xD000000000000023, 0x80000001DF574470, sub_1DF513540, v4, v6);
  }

  else
  {
    sub_1DF498474();
    swift_allocError();
    *v7 = 14;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_1DF51039C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5104EC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 56);

    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_1DF5104EC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1DF51055C(void *a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = sub_1DF564914();

  (*(v6 + 16))(v8, a2, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = sub_1DF51354C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF49BC74;
  aBlock[3] = &block_descriptor_66;
  v12 = _Block_copy(aBlock);

  [a1 forcePostCFUWithFeature:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1DF510740(char a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B14();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    return sub_1DF564B24();
  }
}