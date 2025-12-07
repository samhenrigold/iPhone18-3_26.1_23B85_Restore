uint64_t EventService.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ShazamEventsServiceConnection();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v18[3] = v2;
  v18[4] = &off_1F5BEF708;
  v18[0] = v3;
  type metadata accessor for EventConnection();
  v4 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v18, v2);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  (*(v9 + 16))(v8);
  v10 = *v8;
  v17[3] = v2;
  v17[4] = &off_1F5BEF708;
  v17[0] = v10;
  sub_1E0FF48BC(v17, v4 + 16);
  swift_beginAccess();
  v11 = *(v4 + 40);
  v12 = *(v4 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v4 + 16, v11);
  v13 = *(v12 + 16);

  v13(v14, v11, v12);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v17);
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  *a1 = v4;
  return result;
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

uint64_t EventService.currentVersion.getter(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1E100F8F4, 0, 0);
}

uint64_t sub_1E100F8F4()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = type metadata accessor for EventService.Version(0);
  *v1 = v0;
  v1[1] = sub_1E100F9CC;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x80000001E10BFB20, sub_1E1014014, v4, v2);
}

uint64_t sub_1E100F9CC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E100FB00, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t EventService.event<A, B>(identifier:ofType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 152) = v14;
  *(v9 + 136) = a7;
  *(v9 + 144) = a8;
  *(v9 + 120) = a4;
  *(v9 + 128) = a6;
  *(v9 + 104) = a2;
  *(v9 + 112) = a3;
  *(v9 + 96) = a1;
  v10 = *a5;
  v11 = a5[1];
  *(v9 + 168) = v15;
  *(v9 + 176) = v10;
  *(v9 + 232) = *(a5 + 16);
  v12 = *v8;
  *(v9 + 184) = v11;
  *(v9 + 192) = v12;
  return MEMORY[0x1EEE6DFA0](sub_1E100FB6C, 0, 0);
}

uint64_t sub_1E100FB6C()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B0, &unk_1E10BB510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = sub_1E1017314(inited);
  swift_setDeallocating();
  sub_1E1017410(inited + 32);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v9 = *(*(v0 + 128) + 8 * v7);
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_1E1014178(v11, v10);
      v22 = v6[2];
      v23 = (v15 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return MEMORY[0x1EEE6DE38](v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v26 = v15;
      if (v6[3] < v25)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v30 = v14;
      sub_1E10164B8();
      v14 = v30;
      if (v26)
      {
LABEL_3:
        v8 = v14;

        *(v6[7] + v8) = v12;
        goto LABEL_4;
      }

LABEL_11:
      v6[(v14 >> 6) + 8] |= 1 << v14;
      v27 = (v6[6] + 16 * v14);
      *v27 = v11;
      v27[1] = v10;
      *(v6[7] + v14) = v12;
      v28 = v6[2];
      v24 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v24)
      {
        goto LABEL_22;
      }

      v6[2] = v29;
LABEL_4:
      if (++v7 == *(v0 + 136))
      {
        goto LABEL_15;
      }
    }

    sub_1E1014C70(v25, isUniquelyReferenced_nonNull_native);
    v14 = sub_1E1014178(v11, v10);
    if ((v26 & 1) != (v15 & 1))
    {

      return sub_1E10AE94C();
    }

LABEL_10:
    if (v26)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  *(v0 + 200) = v6;
  v31 = *(v0 + 192);
  v33 = *(v0 + 112);
  v32 = *(v0 + 120);
  v34 = swift_task_alloc();
  *(v0 + 208) = v34;
  v34[2] = v31;
  v34[3] = v33;
  v34[4] = v32;
  v34[5] = v6;
  v35 = swift_task_alloc();
  *(v0 + 216) = v35;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE893C0, qword_1E10B23B0);
  *v35 = v0;
  v35[1] = sub_1E100FE6C;
  v19 = sub_1E1017478;
  v14 = v0 + 72;
  v18 = 0x80000001E10BFB40;
  v15 = 0;
  v16 = 0;
  v17 = 0xD00000000000001FLL;
  v20 = v34;

  return MEMORY[0x1EEE6DE38](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1E100FE6C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1E1010170;
  }

  else
  {

    v2 = sub_1E100FF90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E100FF90()
{
  v22 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 72);
  v19 = *(v0 + 176);
  v20 = v1;
  v21 = v2;
  *(v0 + 80) = sub_1E109B324(&v19, v6, v5, v3);
  sub_1E10AE20C();
  swift_getWitnessTable();
  sub_1E10AE40C();

  if (v4)
  {
    v7 = 0;
    v8 = *(v0 + 152) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v0 + 168) & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v10 = *(v0 + 136);
      v11 = *(v8 + 8 * v7);
      v12 = *(v9 + 8 * v7);
      v13 = *(*(v0 + 128) + 8 * v7);
      v15 = *v13;
      v14 = *(v13 + 8);
      LOBYTE(v13) = *(v13 + 16);
      v19 = v15;
      v20 = v14;
      v21 = v13;

      v16 = sub_1E109B324(&v19, v6, v11, v12);

      *(v0 + 88) = v16;
      sub_1E10AE20C();
      swift_getWitnessTable();
      sub_1E10AE40C();

      ++v7;
    }

    while (v7 != v10);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1E1010170()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t EventService.schedule<A, B>(venueIdentifier:ofType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 632) = v23;
  *(v9 + 624) = v22;
  *(v9 + 616) = a8;
  *(v9 + 608) = a7;
  *(v9 + 600) = a6;
  *(v9 + 592) = a5;
  *(v9 + 584) = a3;
  *(v9 + 576) = a2;
  *(v9 + 568) = a1;
  if (a6 == 1)
  {
    TupleTypeMetadata = sub_1E10AE20C();
  }

  else
  {
    v14 = swift_task_alloc();
    if (a6)
    {
      v15 = a8 & 0xFFFFFFFFFFFFFFFELL;
      v16 = v14;
      v17 = a6;
      do
      {
        v15 += 8;
        *v16++ = sub_1E10AE20C();
        --v17;
      }

      while (v17);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  *(v9 + 640) = TupleTypeMetadata;
  *(v9 + 648) = swift_task_alloc();
  v18 = sub_1E10ADCBC();
  *(v9 + 656) = v18;
  *(v9 + 664) = *(v18 - 8);
  *(v9 + 672) = swift_task_alloc();
  v19 = *(a4 + 8);
  *(v9 + 680) = *a4;
  *(v9 + 688) = v19;
  *(v9 + 736) = *(a4 + 16);
  *(v9 + 696) = *v8;

  return MEMORY[0x1EEE6DFA0](sub_1E10103AC, 0, 0);
}

uint64_t sub_1E10103AC()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B0, &unk_1E10BB510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = sub_1E1017314(inited);
  swift_setDeallocating();
  sub_1E1017410(inited + 32);
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v9 = *(*(v0 + 592) + 8 * v7);
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *(v9 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_1E1014178(v11, v10);
      v22 = v6[2];
      v23 = (v15 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return MEMORY[0x1EEE6DE38](v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v26 = v15;
      if (v6[3] < v25)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v30 = v14;
      sub_1E10164B8();
      v14 = v30;
      if (v26)
      {
LABEL_3:
        v8 = v14;

        *(v6[7] + v8) = v12;
        goto LABEL_4;
      }

LABEL_11:
      v6[(v14 >> 6) + 8] |= 1 << v14;
      v27 = (v6[6] + 16 * v14);
      *v27 = v11;
      v27[1] = v10;
      *(v6[7] + v14) = v12;
      v28 = v6[2];
      v24 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v24)
      {
        goto LABEL_22;
      }

      v6[2] = v29;
LABEL_4:
      if (++v7 == *(v0 + 600))
      {
        goto LABEL_15;
      }
    }

    sub_1E1014C70(v25, isUniquelyReferenced_nonNull_native);
    v14 = sub_1E1014178(v11, v10);
    if ((v26 & 1) != (v15 & 1))
    {

      return sub_1E10AE94C();
    }

LABEL_10:
    if (v26)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  *(v0 + 704) = v6;
  v31 = *(v0 + 696);
  v32 = *(v0 + 672);
  v33 = *(v0 + 584);
  v34 = *(v0 + 576);
  sub_1E10ADC9C();
  v35 = swift_task_alloc();
  *(v0 + 712) = v35;
  v35[2] = v31;
  v35[3] = v34;
  v35[4] = v33;
  v35[5] = v6;
  v35[6] = v32;
  v36 = swift_task_alloc();
  *(v0 + 720) = v36;
  *v36 = v0;
  v36[1] = sub_1E10106B4;
  v21 = &type metadata for VenueScheduleXPCValueContainer.VenueResult;
  v19 = sub_1E1017484;
  v14 = v0 + 16;
  v18 = 0x80000001E10BFB60;
  v15 = 0;
  v16 = 0;
  v17 = 0xD000000000000031;
  v20 = v35;

  return MEMORY[0x1EEE6DE38](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1E10106B4()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = sub_1E1010A60;
  }

  else
  {
    v4 = v2[84];
    v5 = v2[83];
    v6 = v2[82];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1E10107FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E10107FC()
{
  v49 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 128);
  v2 = *(v0 + 144);
  *(v0 + 296) = v3;
  *(v0 + 312) = v2;
  v4 = *(v0 + 144);
  *(v0 + 328) = *(v0 + 160);
  v5 = *(v0 + 48);
  *(v0 + 232) = *(v0 + 64);
  v6 = *(v0 + 64);
  *(v0 + 248) = *(v0 + 80);
  v7 = *(v0 + 80);
  v9 = *(v0 + 96);
  v8 = *(v0 + 112);
  *(v0 + 264) = v9;
  *(v0 + 280) = v8;
  v10 = *(v0 + 32);
  *(v0 + 184) = *(v0 + 16);
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  *(v0 + 200) = v10;
  *(v0 + 216) = *(v0 + 48);
  v44[6] = v1;
  v44[7] = v3;
  v13 = *(v0 + 160);
  v44[8] = v4;
  v44[9] = v13;
  v44[2] = v5;
  v44[3] = v6;
  v44[4] = v7;
  v44[5] = v9;
  v14 = *(v0 + 696);
  v15 = *(v0 + 736);
  v16 = *(v0 + 688);
  v17 = *(v0 + 680);
  v18 = *(v0 + 624);
  v19 = *(v0 + 608);
  v20 = *(v0 + 600);
  v21 = *(v0 + 176);
  *(v0 + 344) = v21;
  v44[0] = v11;
  v44[1] = v12;
  v45 = v14;
  v46 = v17;
  v47 = v16;
  v48 = v15;
  v22 = v21;
  sub_1E0FE6720(v0 + 184, v0 + 352);
  v42 = v22;
  v41 = sub_1E109B324(&v46, v22, v19, v18);
  v43 = swift_task_alloc();
  if (v20)
  {
    v25 = 0;
    v26 = *(v0 + 616) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v0 + 632) & 0xFFFFFFFFFFFFFFFELL;
    v28 = 32;
    do
    {
      v38 = *(v0 + 600);
      if (v38 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(*(v0 + 640) + v28);
      }

      v30 = *(v26 + 8 * v25);
      v31 = *(v27 + 8 * v25);
      v32 = *(v0 + 592);
      v33 = (*(v0 + 648) + v29);
      v45 = *(v0 + 696);
      v34 = *(v32 + 8 * v25);
      v36 = *v34;
      v35 = *(v34 + 8);
      LOBYTE(v34) = *(v34 + 16);
      v46 = v36;
      v47 = v35;
      v48 = v34;

      v37 = sub_1E109B324(&v46, v42, v30, v31);

      *v33 = v37;
      v43[v25++] = v33;
      v28 += 16;
    }

    while (v25 != v38);
  }

  sub_1E0FF5548(v44, v41, v43, *(v0 + 600), *(v0 + 608), *(v0 + 616), *(v0 + 624), *(v0 + 632), *(v0 + 568), v23, v24);
  sub_1E100A3C4(v0 + 184);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1E1010A60()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t EventService.schedule<A>(participantIdentifier:ofType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = a6;
  *(v7 + 88) = a2;
  *(v7 + 96) = a3;
  *(v7 + 80) = a1;
  v9 = sub_1E10ADCBC();
  *(v7 + 120) = v9;
  *(v7 + 128) = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a4;
  v12 = a4[1];
  *(v7 + 136) = v10;
  *(v7 + 144) = v11;
  *(v7 + 200) = *(a4 + 16);
  v13 = *v6;
  *(v7 + 152) = v12;
  *(v7 + 160) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1E1010BF8, 0, 0);
}

uint64_t sub_1E1010BF8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B0, &unk_1E10BB510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = v5;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v9 = sub_1E1017314(inited);
  *(v0 + 168) = v9;
  swift_setDeallocating();
  sub_1E1017410(inited + 32);
  sub_1E10ADC9C();
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v10[2] = v3;
  v10[3] = v7;
  v10[4] = v6;
  v10[5] = v9;
  v10[6] = v4;
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89410, qword_1E10B2400);
  *v11 = v0;
  v11[1] = sub_1E1010D98;

  return MEMORY[0x1EEE6DE38](v0 + 72, 0, 0, 0xD000000000000037, 0x80000001E10BFBA0, sub_1E101749C, v10, v12);
}

uint64_t sub_1E1010D98()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1E1010FC8;
  }

  else
  {

    v2 = sub_1E1010EBC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1010EBC()
{
  v12 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v10[0] = v3;
  v10[1] = v2;
  v11 = v1;
  sub_1E109B560(v10, v6, v5, v4, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E1010FC8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t EventService.perform<A, B, C>(requests:batchSize:ofType:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v108 = a7;
  v14 = a6;
  LODWORD(v105) = a3;
  v113 = a2;
  v114 = a1;
  v120[0] = a6;
  v120[1] = a8;
  v120[2] = a10;
  v120[3] = a12;
  v120[4] = a13;
  v18 = type metadata accessor for EventService.PartialEventResult(255, v120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v119 = v18;
  sub_1E10AE32C();
  MEMORY[0x1EEE9AC00](v19, v20);
  v107 = &v93[-v24];
  v117 = a12;
  v118 = a8;
  v111 = a10;
  v112 = a13;
  v109 = a9;
  if (v14 == 1)
  {
    TupleTypeMetadata = type metadata accessor for EventService.RequestType(0, *(a10 & 0xFFFFFFFFFFFFFFFELL), *(a13 & 0xFFFFFFFFFFFFFFFELL), v21);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v22, v23);
    v30 = v14;
    if (v14)
    {
      v31 = (v111 & 0xFFFFFFFFFFFFFFFELL);
      v32 = (v112 & 0xFFFFFFFFFFFFFFFELL);
      v33 = &v93[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v34 = v30;
      do
      {
        v36 = *v31++;
        v35 = v36;
        v37 = *v32++;
        *v33++ = type metadata accessor for EventService.RequestType(255, v35, v37, v28);
        --v34;
      }

      while (v34);
    }

    v14 = v30;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v106 = v93;
  v115 = TupleTypeMetadata;
  v101 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v99 = &v93[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_1E10AE3BC();
  v104 = v93;
  v103 = v39;
  v102 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v97 = &v93[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = v93;
  MEMORY[0x1EEE9AC00](v43, v44);
  v98 = &v93[-v45];
  v46 = *a4;
  v47 = a4[1];
  v48 = *(a4 + 16);
  v116 = *v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B0, &unk_1E10BB510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  v96 = v46;
  *(inited + 32) = v46;
  *(inited + 40) = v47;
  v94 = v48;
  *(inited + 48) = v48;
  v95 = v47;

  v50 = sub_1E1017314(inited);
  swift_setDeallocating();
  sub_1E1017410(inited + 32);
  v110 = v14;
  if (!v14)
  {
LABEL_22:

    v71 = v108;
    if (v105)
    {
      v113 = sub_1E10AE1EC();
    }

    v72 = v110;
    v73 = v117;
    v74 = v99;
    if (v110)
    {
      v75 = (v115 + 32);
      v76 = v110;
      do
      {
        if (v72 == 1)
        {
          v77 = 0;
        }

        else
        {
          v77 = *v75;
        }

        v78 = *a5++;
        v79 = &v74[v77];
        v80 = *(v78 + 8);
        v81 = *(v78 + 16);
        *v79 = *v78;
        *(v79 + 1) = v80;
        v79[16] = v81;

        v75 += 4;
        --v76;
      }

      while (v76);
    }

    v105 = v93;
    MEMORY[0x1EEE9AC00](v69, v70);
    *&v93[-128] = v72;
    *&v93[-120] = v71;
    v82 = v111;
    *&v93[-112] = v118;
    *&v93[-104] = v82;
    *&v93[-96] = a11;
    *&v93[-88] = v73;
    v83 = v112;
    v84 = v113;
    v85 = v114;
    *&v93[-80] = v112;
    *&v93[-72] = v85;
    v86 = v116;
    *&v93[-64] = v116;
    *&v93[-56] = v86;
    *&v93[-48] = v50;
    *&v93[-40] = v84;
    v87 = v95;
    *&v93[-32] = v96;
    *&v93[-24] = v87;
    v93[-16] = v94;
    *&v93[-8] = v74;
    sub_1E1012C20(v107);
    v88 = v98;
    sub_1E10AE3CC();
    (*(v101 + 8))(v74, v115);
    v89 = v102;
    v90 = v97;
    v91 = v103;
    (*(v102 + 16))(v97, v88, v103);
    sub_1E100BA00(v90, v72, v118, v82, v117, v83);

    return (*(v89 + 8))(v88, v91);
  }

  v51 = a5;
  v52 = v14;
  while (1)
  {
    v54 = **v51;
    v53 = (*v51)[1];
    v55 = *(*v51 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120[0] = v50;
    v58 = sub_1E1014178(v54, v53);
    v59 = v50[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      break;
    }

    v62 = v57;
    if (v50[3] >= v61)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v57)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1E10164B8();
        if (v62)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_1E1014C70(v61, isUniquelyReferenced_nonNull_native);
      v63 = sub_1E1014178(v54, v53);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_33;
      }

      v58 = v63;
      if (v62)
      {
LABEL_9:

        v50 = v120[0];
        *(*(v120[0] + 56) + v58) = v55;
        goto LABEL_10;
      }
    }

    v50 = v120[0];
    *(v120[0] + 8 * (v58 >> 6) + 64) |= 1 << v58;
    v65 = (v50[6] + 16 * v58);
    *v65 = v54;
    v65[1] = v53;
    *(v50[7] + v58) = v55;
    v66 = v50[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_32;
    }

    v50[2] = v68;
LABEL_10:
    ++v51;
    if (!--v52)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1E10AE94C();
  __break(1u);
  return result;
}

uint64_t sub_1E1011784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v96 = a7;
  v97 = a8;
  v95 = a6;
  v98 = a4;
  v99 = a5;
  v100 = a3;
  v101 = a2;
  v19 = a18;
  v20 = a15;
  v21 = 8 * a13;
  v102 = a1;
  v109 = a15;
  v110 = a18;
  if (a13 == 1)
  {
    v22 = a1;
    TupleTypeMetadata = type metadata accessor for EventService.RequestType(0, *(a16 & 0xFFFFFFFFFFFFFFFELL), *(a19 & 0xFFFFFFFFFFFFFFFELL), a4);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a9, a10);
    if (a13)
    {
      v27 = (a16 & 0xFFFFFFFFFFFFFFFELL);
      v28 = (a19 & 0xFFFFFFFFFFFFFFFELL);
      v29 = (&v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = a13;
      do
      {
        v32 = *v27++;
        v31 = v32;
        v33 = *v28++;
        *v29++ = type metadata accessor for EventService.RequestType(255, v31, v33, v26);
        --v30;
      }

      while (v30);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v20 = v109;
    v19 = v110;
    v22 = v102;
  }

  v93 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v90 = v34;
  v35 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111[0] = a13;
  v111[1] = v20;
  v107 = a16;
  v111[2] = a16;
  v111[3] = v19;
  v111[4] = a19;
  type metadata accessor for EventService.PartialEventResult(255, v111);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v36 = sub_1E10AE36C();
  v94 = &v85;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39, v40);
  v105 = &v85 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  v92 = &v85;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v85 - v44;
  v91 = &v85;
  MEMORY[0x1EEE9AC00](v46, v47);
  v48 = (&v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a13)
  {
    v49 = (TupleTypeMetadata + 32);
    v50 = v48;
    v51 = a13;
    do
    {
      if (a13 == 1)
      {
        v52 = 0;
      }

      else
      {
        v52 = *v49;
      }

      *v50++ = a12 + v52;
      v49 += 4;
      --v51;
    }

    while (v51);
  }

  v108 = a19;
  v103 = a14;
  v104 = a17;
  v88 = a11;
  v53 = sub_1E10AE29C();
  v54 = *(*(v53 - 8) + 56);
  v89 = v45;
  v54(v45, 1, 1, v53);
  v55 = *(v37 + 16);
  v106 = v36;
  v55(v105, v22, v36);
  if (a13)
  {
    v56 = (TupleTypeMetadata + 32);
    v57 = a13;
    do
    {
      if (a13 == 1)
      {
        v58 = 0;
      }

      else
      {
        v58 = *v56;
      }

      v59 = *v48++;
      v60 = &v35[v58];
      v61 = *(v59 + 8);
      v62 = *(v59 + 16);
      *v60 = *v59;
      *(v60 + 1) = v61;
      v60[16] = v62;

      v56 += 4;
      --v57;
    }

    while (v57);
  }

  v63 = (*(v37 + 80) + 88) & ~*(v37 + 80);
  v64 = (v38 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v87 = TupleTypeMetadata;
  v67 = (v66 + 31) & 0xFFFFFFFFFFFFFFF8;
  v68 = v93;
  v86 = (*(v93 + 80) + v67 + 17) & ~*(v93 + 80);
  v69 = swift_allocObject();
  *(v69 + 2) = 0;
  *(v69 + 3) = 0;
  v70 = v103;
  *(v69 + 4) = a13;
  *(v69 + 5) = v70;
  *(v69 + 6) = v109;
  MetadataPack = swift_allocateMetadataPack();
  v72 = v104;
  *(v69 + 7) = MetadataPack;
  *(v69 + 8) = v72;
  *(v69 + 9) = v110;
  *(v69 + 10) = swift_allocateWitnessTablePack();
  (*(v37 + 32))(&v69[v63], v105, v106);
  v73 = v100;
  *&v69[v64] = v101;
  *&v69[v65] = v73;
  v74 = &v69[v66];
  v75 = v99;
  *v74 = v98;
  v74[1] = v75;
  v76 = v96;
  v74[2] = v95;
  v77 = &v69[v67];
  v78 = v97;
  *v77 = v76;
  *(v77 + 1) = v78;
  v77[16] = v88;
  (*(v68 + 32))(&v69[v86], v35, v87);

  v79 = sub_1E0FE579C(0, 0, v89, &unk_1E10B31F8, v69);
  v80 = swift_allocObject();
  v81 = v103;
  v80[2] = a13;
  v80[3] = v81;
  v80[4] = v109;
  v82 = swift_allocateMetadataPack();
  v83 = v104;
  v80[5] = v82;
  v80[6] = v83;
  v80[7] = v110;
  v80[8] = swift_allocateWitnessTablePack();
  v80[9] = v79;
  return sub_1E10AE31C();
}

uint64_t sub_1E1011DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = v39;
  *(v8 + 272) = v44;
  *(v8 + 280) = v45;
  *(v8 + 256) = v42;
  *(v8 + 264) = v43;
  *(v8 + 240) = v40;
  *(v8 + 248) = v41;
  *(v8 + 113) = v37;
  *(v8 + 224) = v36;
  *(v8 + 232) = v39;
  *(v8 + 208) = v35;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  *(v8 + 24) = v41;
  *(v8 + 32) = v42;
  *(v8 + 40) = v44;
  *(v8 + 48) = v45;
  *(v8 + 288) = type metadata accessor for EventService.PartialEventResult(255, v8 + 16);
  *(v8 + 296) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v9 = sub_1E10AEA1C();
  *(v8 + 304) = v9;
  *(v8 + 312) = *(v9 - 8);
  *(v8 + 320) = swift_task_alloc();
  if (v39 == 1)
  {
    type metadata accessor for PartialEvent(255, *(v42 & 0xFFFFFFFFFFFFFFFELL), *(v45 & 0xFFFFFFFFFFFFFFFELL), v10);
    TupleTypeMetadata = sub_1E10AE20C();
    v12 = 16;
  }

  else
  {
    v12 = (8 * v39 + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = swift_task_alloc();
    if (v39)
    {
      v15 = (v42 & 0xFFFFFFFFFFFFFFFELL);
      v16 = (v45 & 0xFFFFFFFFFFFFFFFELL);
      v17 = v13;
      v18 = v39;
      do
      {
        v20 = *v15++;
        v19 = v20;
        v21 = *v16++;
        type metadata accessor for PartialEvent(255, v19, v21, v14);
        *v17++ = sub_1E10AE20C();
        --v18;
      }

      while (v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  *(v8 + 328) = v12;
  *(v8 + 336) = TupleTypeMetadata;
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v22 = sub_1E10AE30C();
  *(v8 + 360) = v22;
  *(v8 + 368) = *(v22 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89740, &unk_1E10BCCC0);
  *(v8 + 392) = swift_getTupleTypeMetadata2();
  sub_1E10AE4EC();
  *(v8 + 400) = swift_task_alloc();
  v23 = sub_1E10AE3BC();
  *(v8 + 408) = v23;
  *(v8 + 416) = *(v23 - 8);
  *(v8 + 424) = swift_task_alloc();
  v24 = sub_1E10AE3AC();
  *(v8 + 432) = v24;
  *(v8 + 440) = *(v24 - 8);
  *(v8 + 448) = swift_task_alloc();
  v25 = swift_task_alloc();
  *(v8 + 456) = v25;
  if (v39)
  {
    v26 = v25;
    for (i = 0; i != v39; ++i)
    {
      if (v39 == 1)
      {
        v28 = 0;
      }

      else
      {
        v30 = swift_task_alloc();
        for (j = 0; j != v39; ++j)
        {
          *(v30 + 8 * j) = type metadata accessor for EventService.RequestType(255, *((v42 & 0xFFFFFFFFFFFFFFFELL) + 8 * j), *((v45 & 0xFFFFFFFFFFFFFFFELL) + 8 * j), v29);
        }

        v32 = swift_getTupleTypeMetadata();

        v28 = *(v32 + 16 * i + 32);
      }

      *(v26 + 8 * i) = v38 + v28;
    }
  }

  return MEMORY[0x1EEE6DFA0](sub_1E10122A0, 0, 0);
}

uint64_t sub_1E10122A0()
{
  v0[18] = v0[22];
  sub_1E10AE20C();
  swift_getWitnessTable();
  if (sub_1E10AE41C())
  {
    sub_1E1012BA0(v0[21], v0[29], v0[30], v0[31], v0[32], v0[33], v0[34], v0[35]);

    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_1E109BA18(v0[22], v0[24], v0[25], v0[26], v0[30], v0[33], v0[53]);
    v4 = v0[52];
    v3 = v0[53];
    v5 = v0[51];
    sub_1E10AE37C();
    (*(v4 + 8))(v3, v5);
    v6 = swift_task_alloc();
    v0[58] = v6;
    *v6 = v0;
    v6[1] = sub_1E1012544;
    v7 = v0[54];
    v8 = v0[50];

    return MEMORY[0x1EEE6DB90](v8, 0, 0, v7, v0 + 19);
  }
}

uint64_t sub_1E1012544()
{

  if (v0)
  {
    v1 = sub_1E1012A14;
  }

  else
  {
    v1 = sub_1E1012654;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E1012654()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
    sub_1E1012BA0(*(v0 + 168), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 264);
    v35 = *(v0 + 272);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 224);
    v36 = *(v0 + 232);
    v9 = *(v0 + 113);
    v10 = *(v0 + 216);
    v11 = *(v2 + *(v1 + 48));
    *(v0 + 80) = v7;
    *(v0 + 88) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v2, v7);
    *(v0 + 96) = v10;
    *(v0 + 104) = v8;
    *(v0 + 112) = v9;
    v13 = sub_1E109C148((v0 + 96), v11, v6, v35);
    v14 = swift_task_alloc();
    if (v36)
    {
      v37 = v13;
      v15 = 0;
      for (i = 32; ; i += 16)
      {
        v17 = *(v0 + 232);
        v18 = v17 == 1 ? 0 : *(*(v0 + 336) + i);
        v19 = *((*(v0 + 256) & 0xFFFFFFFFFFFFFFFELL) + 8 * v15);
        v20 = *((*(v0 + 280) & 0xFFFFFFFFFFFFFFFELL) + 8 * v15);
        v21 = *(v0 + 456);
        v22 = (*(v0 + 344) + v18);
        *(v0 + 160) = *(v0 + 184);
        v23 = *(v21 + 8 * v15);
        v25 = *v23;
        v24 = v23[1];
        LOBYTE(v23) = *(v23 + 16);
        *(v0 + 120) = v25;
        *(v0 + 128) = v24;
        *(v0 + 136) = v23;

        v26 = sub_1E109C148((v0 + 120), v11, v19, v20);

        *v22 = v26;
        v14[v15++] = v22;
        if (v15 == v17)
        {
          break;
        }
      }

      v13 = v37;
    }

    else
    {
    }

    v29 = *(v0 + 384);
    v31 = *(v0 + 360);
    v30 = *(v0 + 368);
    sub_1E100B584((v0 + 56), v13, v14, *(v0 + 232), *(v0 + 248), *(v0 + 256), *(v0 + 272), *(v0 + 280), *(v0 + 352), v27, v28);
    sub_1E10AE36C();
    sub_1E10AE34C();
    (*(v30 + 8))(v29, v31);

    v32 = swift_task_alloc();
    *(v0 + 464) = v32;
    *v32 = v0;
    v32[1] = sub_1E1012544;
    v33 = *(v0 + 432);
    v34 = *(v0 + 400);

    return MEMORY[0x1EEE6DB90](v34, 0, 0, v33, v0 + 152);
  }
}

uint64_t sub_1E1012A14()
{
  (*(v0[55] + 8))(v0[56], v0[54]);
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  *v1 = v0[19];
  swift_storeEnumTagMultiPayload();
  sub_1E10AE36C();
  sub_1E10AE33C();
  (*(v2 + 8))(v1, v3);
  (*(v0[46] + 8))(v0[47], v0[45]);
  sub_1E1012BA0(v0[21], v0[29], v0[30], v0[31], v0[32], v0[33], v0[34], v0[35]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E1012BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[5] = 0;
  v9[0] = a2;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a7;
  v9[4] = a8;
  type metadata accessor for EventService.PartialEventResult(255, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  sub_1E10AE36C();
  return sub_1E10AE35C();
}

uint64_t sub_1E1012C20@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v4 = sub_1E10AE32C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t EventService.perform<A, B, C>(requests:ofType:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, uint64_t a12, uint64_t a13)
{
  v50 = a8;
  v51 = a6;
  v56 = a1;
  v49 = a9;
  v17 = 8 * a4;
  v53 = a7;
  v54 = a5;
  v52 = a13;
  if (a4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for EventService.RequestType(0, *(a7 & 0xFFFFFFFFFFFFFFFELL), *(a13 & 0xFFFFFFFFFFFFFFFELL), 1);
  }

  else
  {
    v55 = v48;
    MEMORY[0x1EEE9AC00](a10, a11);
    if (a4)
    {
      v22 = (v53 & 0xFFFFFFFFFFFFFFFELL);
      v23 = (v52 & 0xFFFFFFFFFFFFFFFELL);
      v24 = (v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = a4;
      do
      {
        v27 = *v22++;
        v26 = v27;
        v28 = *v23++;
        *v24++ = type metadata accessor for EventService.RequestType(255, v26, v28, v21);
        --v25;
      }

      while (v25);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v48[0] = a12;
  v55 = TupleTypeMetadata;
  v29 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v31 = v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a2;
  v33 = *(a2 + 8);
  v34 = *(a2 + 16);
  v59 = *v13;
  v35 = sub_1E10AE1EC();
  v48[1] = v48;
  v57[0] = v32;
  v57[1] = v33;
  v58 = v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v38 = (v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4)
  {
    v39 = (v55 + 4);
    v40 = v38;
    v41 = a4;
    do
    {
      if (a4 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = *v39;
      }

      v43 = &v31[v42];
      v44 = *a3++;
      v45 = *(v44 + 8);
      v46 = *(v44 + 16);
      *v43 = *v44;
      *(v43 + 1) = v45;
      v43[16] = v46;
      *v40++ = v43;

      v39 += 4;
      --v41;
    }

    while (v41);
  }

  EventService.perform<A, B, C>(requests:batchSize:ofType:_:)(v56, v35, 0, v57, v38, a4, v54, v51, v49, v53, v50, v48[0], v52);
  return (*(v29 + 8))(v31, v55);
}

Swift::Void __swiftcall EventService.invalidate()()
{
  v1 = *v0;
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_1E102E438();
}

uint64_t EventService.Version.lastUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E10ADCBC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EventService.Version.value.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventService.Version(0) + 20));

  return v1;
}

uint64_t sub_1E1013070()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x616470557473616CLL;
  }
}

uint64_t sub_1E10130B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E101318C(uint64_t a1)
{
  v2 = sub_1E101753C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10131C8(uint64_t a1)
{
  v2 = sub_1E101753C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1013244@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v4 = sub_1E10ADCFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E10ADCEC();
  v10 = sub_1E10ADCDC();
  v12 = v11;
  result = (*(v5 + 8))(v9, v4);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = a1;
  return result;
}

uint64_t static EventService.RequestType.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  return sub_1E100F46C(v2, v3);
}

uint64_t EventService.RequestType.hash(into:)(uint64_t a1)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t EventService.RequestType.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = v2;
  sub_1E10AE9CC();
  EventService.RequestType.hash(into:)(v4);
  return sub_1E10AEA0C();
}

uint64_t sub_1E101354C(uint64_t a1)
{
  sub_1E10AE9CC();
  EventService.RequestType.hash(into:)(v2);
  return sub_1E10AEA0C();
}

uint64_t static EventService.Version.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E10ADC7C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for EventService.Version(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1E10AE8FC();
}

uint64_t EventService.Version.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896C0, &qword_1E10B2EA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E101753C();
  sub_1E10AEA5C();
  v10[15] = 0;
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1EE17FF68, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1E10AE8AC();
  if (!v1)
  {
    type metadata accessor for EventService.Version(0);
    v10[14] = 1;
    sub_1E10AE86C();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t EventService.Version.hash(into:)(uint64_t a1)
{
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1ECE896C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E10ADFFC();
  type metadata accessor for EventService.Version(0);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t EventService.Version.hashValue.getter()
{
  sub_1E10AE9CC();
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1ECE896C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E10ADFFC();
  type metadata accessor for EventService.Version(0);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t EventService.Version.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1E10ADCBC();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896D0, &qword_1E10B2EB0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for EventService.Version(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E101753C();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v17;
  v18 = v30;
  v19 = v31;
  v35 = 0;
  sub_1E1017C48(&qword_1EE180178, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v20 = v32;
  sub_1E10AE7FC();
  (*(v19 + 32))(v28, v8, v20);
  v34 = 1;
  v21 = sub_1E10AE7BC();
  v23 = v22;
  (*(v18 + 8))(v12, v33);
  v25 = v28;
  v24 = v29;
  v26 = &v28[*(v13 + 20)];
  *v26 = v21;
  v26[1] = v23;
  sub_1E1017590(v25, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E10175F4(v25);
}

uint64_t sub_1E1013C3C(uint64_t a1)
{
  sub_1E10AE9CC();
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1ECE896C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E10ADFFC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1013CE4(uint64_t a1, uint64_t a2)
{
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1ECE896C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E10ADFFC();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E1013D80(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  sub_1E10ADCBC();
  sub_1E1017C48(&qword_1ECE896C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E10ADFFC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1013E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E10ADC7C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1E10AE8FC();
}

uint64_t sub_1E1013EDC(uint64_t a1, unsigned __int8 a2)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t type metadata accessor for EventService.Version(uint64_t a1)
{
  result = qword_1EE180098;
  if (!qword_1EE180098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E1014068(uint64_t a1)
{
  sub_1E10ADCFC();
  sub_1E1017C48(&qword_1EE17FF60, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1E10ADFEC();

  return sub_1E101427C(a1, v2);
}

unint64_t sub_1E1014100(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v4 = sub_1E10AEA0C();

  return sub_1E101443C(a1, a2, v4);
}

unint64_t sub_1E1014178(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v4 = sub_1E10AEA0C();
  return sub_1E101443C(a1, a2, v4);
}

unint64_t sub_1E10141EC(void *a1)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v2 = sub_1E10AEA0C();

  return sub_1E10144F4(a1, v2);
}

unint64_t sub_1E101427C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1E10ADCFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_1E1017C48(&qword_1EE17FF58, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v17 = sub_1E10AE03C();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1E101443C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E10AE8FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E10144F4(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v8 = a1[2];
    v7 = a1[3];
    v9 = a1[4];
    v10 = a1[5];
    v11 = *(v2 + 48);
    do
    {
      v12 = (v11 + 48 * v5);
      v13 = v12[4];
      v14 = v12[5];
      v15 = v12[2] == v8 && v12[3] == v7;
      if (v15 || (sub_1E10AE8FC() & 1) != 0)
      {
        v16 = v13 == v9 && v14 == v10;
        if (v16 || (sub_1E10AE8FC() & 1) != 0)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1E10145F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1E10ADCFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89730, &qword_1E10B31E0);
  v41 = v4;
  result = sub_1E10AE72C();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v11;
    v40 = v6;
    v42 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v5);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v5);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_1E1017C48(&qword_1EE17FF60, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1E10ADFEC();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v5);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

uint64_t sub_1E10149CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896E8, &qword_1E10B3198);
  v35 = v4;
  result = sub_1E10AE72C();
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

      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
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

uint64_t sub_1E1014C70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89750, &qword_1E10B3208);
  v34 = v4;
  result = sub_1E10AE72C();
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

      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
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

uint64_t sub_1E1014F10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89718, &qword_1E10B31C8);
  v37 = v4;
  result = sub_1E10AE72C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v22 = (*(v5 + 48) + 48 * v20);
      v23 = v22[1];
      v39 = *v22;
      v24 = v22[3];
      v41 = v22[2];
      v25 = v22[5];
      v40 = v22[4];
      v26 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      *v16 = v39;
      v16[1] = v23;
      v16[2] = v41;
      v16[3] = v24;
      v16[4] = v40;
      v16[5] = v25;
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

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E1015214(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89720, &qword_1E10B31D0);
  v37 = v4;
  result = sub_1E10AE72C();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
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

uint64_t sub_1E10154D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89710, &qword_1E10B31C0);
  v34 = v4;
  result = sub_1E10AE72C();
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

      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
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

uint64_t sub_1E101577C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896F0, &qword_1E10B31A0);
  v37 = v4;
  result = sub_1E10AE72C();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
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

uint64_t sub_1E1015A3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89738, &qword_1E10B31E8);
  v34 = v4;
  result = sub_1E10AE72C();
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

      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
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

uint64_t sub_1E1015CE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1E10ADCFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89748, &qword_1E10B3200);
  v46 = v4;
  result = sub_1E10AE72C();
  v13 = result;
  if (*(v11 + 16))
  {
    v51 = v10;
    v42 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v11;
    v45 = v6;
    v47 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v27 = v24 | (v14 << 6);
      v28 = *(v11 + 48);
      v50 = *(v45 + 72);
      v29 = v28 + v50 * v27;
      if (v46)
      {
        (*v47)(v51, v29, v5);
        v30 = (*(v11 + 56) + 16 * v27);
        v31 = *v30;
        v48 = v30[1];
        v49 = v31;
      }

      else
      {
        (*v43)(v51, v29, v5);
        v32 = (*(v11 + 56) + 16 * v27);
        v33 = *v32;
        v48 = v32[1];
        v49 = v33;
      }

      sub_1E1017C48(&qword_1EE17FF60, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1E10ADFEC();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v47)(*(v13 + 48) + v50 * v21, v51, v5);
      v22 = (*(v13 + 56) + 16 * v21);
      v23 = v48;
      *v22 = v49;
      v22[1] = v23;
      ++*(v13 + 16);
      v11 = v44;
    }

    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v26 = v15[v14];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v18 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

char *sub_1E10160CC()
{
  v1 = v0;
  v35 = sub_1E10ADCFC();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89730, &qword_1E10B31E0);
  v5 = *v0;
  v6 = sub_1E10AE71C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_1E101634C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896E8, &qword_1E10B3198);
  v2 = *v0;
  v3 = sub_1E10AE71C();
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

void *sub_1E10164B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89750, &qword_1E10B3208);
  v2 = *v0;
  v3 = sub_1E10AE71C();
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

void *sub_1E1016620()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89718, &qword_1E10B31C8);
  v2 = *v0;
  v3 = sub_1E10AE71C();
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
        v18 = (*(v2 + 48) + 48 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = v18[4];
        v24 = v18[5];
        v25 = (*(v4 + 48) + 48 * v17);
        *v25 = *v18;
        v25[1] = v19;
        v25[2] = v20;
        v25[3] = v21;
        v25[4] = v23;
        v25[5] = v24;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_1E10167BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89720, &qword_1E10B31D0);
  v2 = *v0;
  v3 = sub_1E10AE71C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1E1016934()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89710, &qword_1E10B31C0);
  v2 = *v0;
  v3 = sub_1E10AE71C();
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

void *sub_1E1016AA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896F0, &qword_1E10B31A0);
  v2 = *v0;
  v3 = sub_1E10AE71C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1E1016C1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89738, &qword_1E10B31E8);
  v2 = *v0;
  v3 = sub_1E10AE71C();
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

char *sub_1E1016D8C()
{
  v1 = v0;
  v37 = sub_1E10ADCFC();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89748, &qword_1E10B3200);
  v5 = *v0;
  v6 = sub_1E10AE71C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v35 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v39;
        v22 = *(v39 + 72) * v20;
        v23 = v36;
        v24 = v37;
        (*(v39 + 16))(v36, *(v5 + 48) + v22, v37);
        v25 = 16 * v20;
        v26 = (*(v5 + 56) + 16 * v20);
        v27 = *v26;
        v28 = v26[1];
        v29 = v38;
        (*(v21 + 32))(*(v38 + 48) + v22, v23, v24);
        v30 = (*(v29 + 56) + v25);
        *v30 = v27;
        v30[1] = v28;
        v5 = v35;

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v31;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v32 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_1E1017018(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89728, &qword_1E10B31D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89730, &qword_1E10B31E0);
    v9 = sub_1E10AE73C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1E0FEDC50(v11, v7, &qword_1ECE89728, &qword_1E10B31D8);
      result = sub_1E1014068(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1E10ADCFC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1E1017200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896F0, &qword_1E10B31A0);
    v3 = sub_1E10AE73C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E1014178(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

unint64_t sub_1E1017314(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89750, &qword_1E10B3208);
    v3 = sub_1E10AE73C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1E1014178(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

uint64_t sub_1E1017410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B8, &qword_1E10B2E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E101753C()
{
  result = qword_1EE1800C8;
  if (!qword_1EE1800C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1800C8);
  }

  return result;
}

uint64_t sub_1E1017590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventService.Version(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E10175F4(uint64_t a1)
{
  v2 = type metadata accessor for EventService.Version(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1E1017794(uint64_t a1)
{
  result = sub_1E10ADCBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E1017808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E1017858(uint64_t a1, int a2)
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

uint64_t sub_1E10178A0(uint64_t result, int a2, int a3)
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

unint64_t sub_1E10178F4()
{
  result = qword_1ECE896E0;
  if (!qword_1ECE896E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE896E0);
  }

  return result;
}

unint64_t sub_1E101794C()
{
  result = qword_1EE1800B8;
  if (!qword_1EE1800B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1800B8);
  }

  return result;
}

unint64_t sub_1E10179A4()
{
  result = qword_1EE1800C0;
  if (!qword_1EE1800C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1800C0);
  }

  return result;
}

unint64_t sub_1E10179F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896F8, &qword_1E10B31A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89700, &qword_1E10B31B0);
    v9 = sub_1E10AE73C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1E0FEDC50(v11, v7, &qword_1ECE896F8, &qword_1E10B31A8);
      v14 = *v7;
      v13 = v7[1];
      result = sub_1E1014100(*v7, v13);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v14;
      v18[1] = v13;
      v19 = v9[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
      result = sub_1E1017BD8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_1E1017BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1017C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E1017C90(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 72);
  *(v2 + 16) = v3;
  v33 = *(&v5 + 1);
  v34 = *(&v4 + 1);
  *(v2 + 40) = v5;
  *(v2 + 24) = v4;
  type metadata accessor for EventService.PartialEventResult(255, v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v7 = *(sub_1E10AE36C() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  if (v3 == 1)
  {
    type metadata accessor for EventService.RequestType(0, *(v34 & 0xFFFFFFFFFFFFFFFELL), *(v33 & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  else
  {
    v10 = swift_task_alloc();
    if (v3)
    {
      v12 = (v34 & 0xFFFFFFFFFFFFFFFELL);
      v13 = (v33 & 0xFFFFFFFFFFFFFFFELL);
      v14 = v10;
      v15 = v3;
      do
      {
        v17 = *v12++;
        v16 = v17;
        v18 = *v13++;
        *v14++ = type metadata accessor for EventService.RequestType(255, v16, v18, v11);
        --v15;
      }

      while (v15);
    }

    swift_getTupleTypeMetadata();
  }

  v19 = (v8 + 88) & ~v8;
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v1 + v20);
  v29 = *(v1 + v21);
  v23 = *(v1 + 16);
  v24 = *(v1 + 24);
  v28 = *(v1 + v22);
  v27 = *(v1 + v22 + 8);
  v25 = swift_task_alloc();
  *(v31 + 56) = v25;
  *v25 = v31;
  v25[1] = sub_1E100B8D8;

  return sub_1E1011DAC(a1, v23, v24, v1 + v19, v30, v29, v28, v27);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1E1017FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89758, &unk_1E10B3210);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89748, &qword_1E10B3200);
    v9 = sub_1E10AE73C();
    v10 = &v7[*(v2 + 48)];
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1E0FEDC50(v11, v7, &qword_1ECE89758, &unk_1E10B3210);
      result = sub_1E1014068(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1E10ADCFC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = (v9[7] + 16 * v15);
      v19 = *(v10 + 1);
      *v18 = *v10;
      v18[1] = v19;
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_1E10181EC(unint64_t a1)
{
  v2 = v1;
  v69 = sub_1E10ADCFC();
  v4 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v68 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (result)
  {
    v10 = 0;
    v63 = v7 & 0xC000000000000001;
    v60 = v7 & 0xFFFFFFFFFFFFFF8;
    v59 = v7 + 32;
    v66 = v2;
    v67 = (v4 + 1);
    v62 = v7;
    v61 = result;
    while (1)
    {
      if (v63)
      {
        v11 = MEMORY[0x1E12EDD80](v10);
      }

      else
      {
        if (v10 >= *(v60 + 16))
        {
          goto LABEL_43;
        }

        v11 = *(v59 + 8 * v10);
      }

      v12 = v11;
      v13 = __OFADD__(v10, 1);
      v14 = v10 + 1;
      if (v13)
      {
        break;
      }

      v15 = sub_1E108EDC0();
      v16 = *(v15 + 16);
      v71 = v12;
      v65 = v14;
      if (v16)
      {
        v74 = MEMORY[0x1E69E7CC0];
        sub_1E1059CEC(0, v16, 0);
        v4 = v74;
        v70 = &v12[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload];
        v64 = v15;
        v17 = (v15 + 40);
        do
        {
          v18 = *v17;
          v72 = *(v17 - 1);

          v20 = sub_1E10AD2C4(v19);
          v21 = v4;
          v22 = sub_1E10AC868(4, v20, *v70, v70[1]);
          v24 = v23;

          v25 = v68;
          sub_1E10ADCEC();
          v26 = sub_1E10ADCDC();
          v28 = v27;
          v29 = v25;
          v4 = v21;
          (*v67)(v29, v69);
          v74 = v21;
          v30 = *(v21 + 2);
          v31 = *(v4 + 3);
          if (v30 >= v31 >> 1)
          {
            sub_1E1059CEC((v31 > 1), v30 + 1, 1);
            v4 = v74;
          }

          *(v4 + 2) = v30 + 1;
          v32 = &v4[6 * v30];
          *(v32 + 4) = v26;
          *(v32 + 5) = v28;
          *(v32 + 6) = v22;
          *(v32 + 7) = v24;
          *(v32 + 8) = v72;
          *(v32 + 9) = v18;
          v17 += 2;
          --v16;
        }

        while (v16);

        v2 = v66;
        v12 = v71;
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }

      v72 = *(v4 + 2);
      if (v72)
      {
        swift_beginAccess();
        v33 = 0;
        v34 = (v4 + 9);
        v70 = v4;
        do
        {
          if (v33 >= *(v4 + 2))
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v35 = *(v34 - 4);
          v36 = *(v34 - 3);
          v37 = *(v34 - 2);
          v38 = *(v34 - 1);
          v39 = *v34;
          *&v76 = *(v34 - 5);
          *(&v76 + 1) = v35;
          *&v77 = v36;
          *(&v77 + 1) = v37;
          *&v78 = v38;
          *(&v78 + 1) = v39;
          v40 = *(v2 + 112);
          v41 = *(v40 + 16);

          if (v41 && (v42 = sub_1E10141EC(&v76), (v43 & 1) != 0))
          {
            v44 = *(*(v40 + 56) + 8 * v42);
          }

          else
          {
            v44 = MEMORY[0x1E69E7CC0];
          }

          v75 = v44;
          v45 = v12;
          MEMORY[0x1E12ED900]();
          if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E10AE1AC();
            v2 = v66;
          }

          sub_1E10AE1DC();
          v46 = v75;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = *(v2 + 112);
          v4 = v73;
          *(v2 + 112) = 0x8000000000000000;
          v2 = sub_1E10141EC(&v76);
          v48 = *(v4 + 2);
          v49 = (v7 & 1) == 0;
          v50 = v48 + v49;
          if (__OFADD__(v48, v49))
          {
            goto LABEL_40;
          }

          v51 = v7;
          if (*(v4 + 3) >= v50)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v7)
              {
                goto LABEL_19;
              }
            }

            else
            {
              sub_1E1016620();
              if (v51)
              {
                goto LABEL_19;
              }
            }
          }

          else
          {
            sub_1E1014F10(v50, isUniquelyReferenced_nonNull_native);
            v52 = sub_1E10141EC(&v76);
            if ((v51 & 1) != (v7 & 1))
            {
              result = sub_1E10AE94C();
              __break(1u);
              return result;
            }

            v2 = v52;
            if (v51)
            {
LABEL_19:

              v4 = v73;
              *(*(v73 + 7) + 8 * v2) = v46;

              goto LABEL_20;
            }
          }

          v4 = v73;
          *&v73[(v2 >> 6) + 8] |= 1 << v2;
          v53 = (*(v4 + 6) + 48 * v2);
          v54 = v77;
          *v53 = v76;
          v53[1] = v54;
          v53[2] = v78;
          *(*(v4 + 7) + 8 * v2) = v46;
          v55 = *(v4 + 2);
          v13 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v13)
          {
            goto LABEL_41;
          }

          *(v4 + 2) = v56;
LABEL_20:
          ++v33;
          v2 = v66;
          *(v66 + 112) = v4;
          swift_endAccess();
          v34 += 6;
          v12 = v71;
          v4 = v70;
        }

        while (v72 != v33);
      }

      v10 = v65;
      v7 = v62;
      if (v65 == v61)
      {
        return result;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v57 = v7;
    result = sub_1E10AE70C();
    v7 = v57;
  }

  return result;
}

uint64_t sub_1E1018794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id);
  v4 = *(a2 + OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id + 8);
  swift_beginAccess();
  v6 = *(v2 + 120);
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_1E10181E8(), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1E1027140(v10);

  v13 = sub_1E1027140(v12);

  v14 = sub_1E10189AC(v13, v11);
  v15 = v14[2];
  if (!v15)
  {

    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v22 = v5;
  v16 = sub_1E1018DD8(v15, 0);
  v17 = *(type metadata accessor for PartialEventResource(0) - 8);
  v18 = sub_1E1018ED4(&v24, v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v15, v14);
  v19 = v24;

  result = sub_1E1019254(v19);
  if (v18 == v15)
  {
    v5 = v22;
LABEL_9:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v3 + 120);
    *(v3 + 120) = 0x8000000000000000;
    sub_1E1079940(v16, v5, v4, isUniquelyReferenced_nonNull_native);

    *(v3 + 120) = v23;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1E10189AC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PartialEventResource(0) - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - v11;
  result = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v25 - v16;
  v18 = 0;
  v26 = a2;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  for (i = (v19 + 63) >> 6; v21; result = sub_1E1019328(v12))
  {
    v23 = v18;
LABEL_9:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    sub_1E101925C(*(a1 + 48) + *(v4 + 72) * (v24 | (v23 << 6)), v17);
    sub_1E10192C0(v17, v8);
    sub_1E10244C0(v12, v8);
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= i)
    {

      return v26;
    }

    v21 = *(a1 + 56 + 8 * v23);
    ++v18;
    if (v21)
    {
      v18 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1018B70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v18 = v5;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(v18 + 48) + 48 * v14);
    v16 = *(*(v18 + 56) + 8 * v14);
    if (*v15 != a1 || v15[1] != a2)
    {
      v9 &= v9 - 1;
      result = sub_1E10AE8FC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

LABEL_16:

    return v16;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_16;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1018CF0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1E1018D54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89768, &qword_1E10B3278);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1E1018DD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89760, &qword_1E10B3270);
  v4 = *(type metadata accessor for PartialEventResource(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1018ED4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *(type metadata accessor for PartialEventResource(0) - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v31 - v15;
  v17 = a4 + 7;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[7];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = a1;
    v33 = a3;
    result = 0;
    v21 = 0;
    v31 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[6];
      v28 = *(v34 + 72);
      sub_1E101925C(v27 + v28 * (v26 | (v21 << 6)), v11);
      sub_1E10192C0(v11, v16);
      sub_1E10192C0(v16, a2);
      if (v23 == v33)
      {
        a4 = a1;
        a1 = v32;
        a3 = v33;
        goto LABEL_23;
      }

      a2 += v28;
      result = v23;
      v29 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v29)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v30 = v21 + 1;
    }

    else
    {
      v30 = v22;
    }

    v21 = v30 - 1;
    a3 = result;
    a1 = v32;
LABEL_23:
    v18 = v31;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1E10190FC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E101925C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialEventResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E10192C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialEventResource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1019328(uint64_t a1)
{
  v2 = type metadata accessor for PartialEventResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t EventService.Error.debugDescription.getter()
{
  v1 = *(v0 + 8);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0xD00000000000001ALL;
      }

      goto LABEL_8;
    }

    return 0xD000000000000064;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000042;
      }

LABEL_8:
      sub_1E10AE5EC();
      MEMORY[0x1E12ED840](0x2074736575716552, 0xE900000000000028);
      sub_1E10AE6EC();
      MEMORY[0x1E12ED840](0xD000000000000021, 0x80000001E10BFCE0);
      return 0;
    }

    return 0xD0000000000000A3;
  }
}

unint64_t sub_1E10194E4()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  if (v1 == 3)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000019;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E101958C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E101B538(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E10195C0(uint64_t a1)
{
  v2 = sub_1E101ACC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10195FC(uint64_t a1)
{
  v2 = sub_1E101ACC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1019638(uint64_t a1)
{
  v2 = sub_1E101AE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1019674(uint64_t a1)
{
  v2 = sub_1E101AE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E10196CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E101975C(uint64_t a1)
{
  v2 = sub_1E101ADBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1019798(uint64_t a1)
{
  v2 = sub_1E101ADBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E10197D4(uint64_t a1)
{
  v2 = sub_1E101AD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1019810(uint64_t a1)
{
  v2 = sub_1E101AD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E101984C(uint64_t a1)
{
  v2 = sub_1E101AD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1019888(uint64_t a1)
{
  v2 = sub_1E101AD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E10198C4(uint64_t a1)
{
  v2 = sub_1E101AE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1019900(uint64_t a1)
{
  v2 = sub_1E101AE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventService.Error.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89770, &qword_1E10B3290);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v45 = &v35 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89778, &qword_1E10B3298);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v39 = &v35 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89780, &qword_1E10B32A0);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v40 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89788, &qword_1E10B32A8);
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89790, &qword_1E10B32B0);
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v35 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89798, &qword_1E10B32B8);
  v48 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v35 - v27;
  v29 = v2[1];
  v35 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E101ACC0();
  sub_1E10AEA5C();
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      LOBYTE(v49) = 3;
      sub_1E101AD68();
      v34 = v39;
      sub_1E10AE82C();
      (*(v41 + 8))(v34, v43);
      return (*(v48 + 8))(v28, v24);
    }

    if (v29 == 3)
    {
      LOBYTE(v49) = 4;
      sub_1E101AD14();
      v30 = v45;
      sub_1E10AE82C();
      (*(v46 + 8))(v30, v47);
      return (*(v48 + 8))(v28, v24);
    }

LABEL_8:
    LOBYTE(v49) = 2;
    sub_1E101ADBC();
    v31 = v40;
    sub_1E10AE82C();
    v49 = v35;
    v50 = v29;
    sub_1E0FED9C8();
    v32 = v44;
    sub_1E10AE8AC();
    (*(v42 + 8))(v31, v32);
    return (*(v48 + 8))(v28, v24);
  }

  if (!v29)
  {
    LOBYTE(v49) = 0;
    sub_1E101AE64();
    sub_1E10AE82C();
    (*(v36 + 8))(v23, v19);
    return (*(v48 + 8))(v28, v24);
  }

  if (v29 != 1)
  {
    goto LABEL_8;
  }

  LOBYTE(v49) = 1;
  sub_1E101AE10();
  sub_1E10AE82C();
  (*(v37 + 8))(v18, v38);
  return (*(v48 + 8))(v28, v24);
}

uint64_t EventService.Error.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      return MEMORY[0x1E12EE160](v3);
    }

    if (v2 == 3)
    {
      v3 = 4;
      return MEMORY[0x1E12EE160](v3);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      return MEMORY[0x1E12EE160](v3);
    }

    if (v2 == 1)
    {
      v3 = 1;
      return MEMORY[0x1E12EE160](v3);
    }
  }

  MEMORY[0x1E12EE160](2);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t EventService.Error.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1E10AE9CC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x1E12EE160](v2);
      return sub_1E10AEA0C();
    }
  }

  MEMORY[0x1E12EE160](2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t EventService.Error.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v60 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897D0, &qword_1E10B32C0);
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v62 = &v48 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897D8, &qword_1E10B32C8);
  v51 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897E0, &qword_1E10B32D0);
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897E8, &qword_1E10B32D8);
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897F0, &qword_1E10B32E0);
  v50 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE897F8, &qword_1E10B32E8);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v48 - v27;
  v29 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1E101ACC0();
  v30 = v63;
  sub_1E10AEA3C();
  if (!v30)
  {
    v31 = v22;
    v49 = v18;
    v32 = v61;
    v33 = v62;
    v63 = v24;
    v34 = sub_1E10AE80C();
    v35 = *(v34 + 16);
    if (!v35 || ((v36 = *(v34 + 32), v35 == 1) ? (v37 = v36 == 5) : (v37 = 1), v37))
    {
      v38 = sub_1E10AE62C();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE899E0, &qword_1E10B32F0);
      *v40 = &type metadata for EventService.Error;
      sub_1E10AE77C();
      sub_1E10AE61C();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v63 + 8))(v28, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v34 + 32) <= 1u)
      {
        if (*(v34 + 32))
        {
          LOBYTE(v64) = 1;
          sub_1E101AE10();
          sub_1E10AE76C();
          (*(v52 + 8))(v17, v53);
          (*(v63 + 8))(v28, v23);
          swift_unknownObjectRelease();
          v43 = 0;
          v44 = 1;
        }

        else
        {
          LOBYTE(v64) = 0;
          sub_1E101AE64();
          sub_1E10AE76C();
          (*(v50 + 8))(v31, v49);
          (*(v63 + 8))(v28, v23);
          swift_unknownObjectRelease();
          v43 = 0;
          v44 = 0;
        }

        v41 = v60;
      }

      else if (v36 == 2)
      {
        LOBYTE(v64) = 2;
        sub_1E101ADBC();
        v45 = v32;
        sub_1E10AE76C();
        v41 = v60;
        sub_1E0FEDD04();
        v46 = v56;
        sub_1E10AE7FC();
        (*(v55 + 8))(v45, v46);
        (*(v63 + 8))(v28, v23);
        swift_unknownObjectRelease();
        v43 = v64;
        v44 = v65;
      }

      else
      {
        v41 = v60;
        if (v36 == 3)
        {
          LOBYTE(v64) = 3;
          sub_1E101AD68();
          v42 = v59;
          sub_1E10AE76C();
          (*(v51 + 8))(v42, v57);
          (*(v63 + 8))(v28, v23);
          swift_unknownObjectRelease();
          v43 = 0;
          v44 = 2;
        }

        else
        {
          LOBYTE(v64) = 4;
          sub_1E101AD14();
          sub_1E10AE76C();
          (*(v54 + 8))(v33, v58);
          (*(v63 + 8))(v28, v23);
          swift_unknownObjectRelease();
          v43 = 0;
          v44 = 3;
        }
      }

      *v41 = v43;
      v41[1] = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

BOOL sub_1E101A824()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E101A850()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
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

uint64_t sub_1E101A884()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
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

uint64_t sub_1E101A8E8()
{
  v1 = *(v0 + 8);
  sub_1E10AE9CC();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      MEMORY[0x1E12EE160](v2);
      return sub_1E10AEA0C();
    }
  }

  MEMORY[0x1E12EE160](2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E101A9A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      return MEMORY[0x1E12EE160](v3);
    }

    if (v2 == 3)
    {
      v3 = 4;
      return MEMORY[0x1E12EE160](v3);
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      return MEMORY[0x1E12EE160](v3);
    }

    if (v2 == 1)
    {
      v3 = 1;
      return MEMORY[0x1E12EE160](v3);
    }
  }

  MEMORY[0x1E12EE160](2);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E101AA50(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1E10AE9CC();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E12EE160](v3);
      return sub_1E10AEA0C();
    }
  }

  MEMORY[0x1E12EE160](2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents12EventServiceV5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      sub_1E100A3F4(*a1, 2uLL);
      v7 = v4;
      v8 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_10;
      }

      if (v5 != 3)
      {
        goto LABEL_19;
      }

      sub_1E100A3F4(*a1, 3uLL);
      v7 = v4;
      v8 = 3;
    }

LABEL_18:
    sub_1E100A3F4(v7, v8);
    return 1;
  }

  if (!v3)
  {
    if (v5)
    {
      goto LABEL_19;
    }

    sub_1E100A3F4(*a1, 0);
    v7 = v4;
    v8 = 0;
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = 1;
      sub_1E100A3F4(*a1, 1uLL);
      sub_1E100A3F4(v4, 1uLL);
      return v6;
    }

LABEL_19:
    sub_1E100A414(*a2, *(a2 + 8));
    sub_1E100A414(v2, v3);
    sub_1E100A3F4(v2, v3);
    sub_1E100A3F4(v4, v5);
    return 0;
  }

LABEL_10:
  if (v5 < 4)
  {
    goto LABEL_19;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1E100A414(*a1, v3);
    sub_1E100A414(v2, v3);
    sub_1E100A3F4(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_18;
  }

  v10 = sub_1E10AE8FC();
  sub_1E100A414(v4, v5);
  sub_1E100A414(v2, v3);
  sub_1E100A3F4(v2, v3);
  sub_1E100A3F4(v4, v5);
  return v10 & 1;
}

unint64_t sub_1E101ACC0()
{
  result = qword_1ECE897A0;
  if (!qword_1ECE897A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897A0);
  }

  return result;
}

unint64_t sub_1E101AD14()
{
  result = qword_1ECE897A8;
  if (!qword_1ECE897A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897A8);
  }

  return result;
}

unint64_t sub_1E101AD68()
{
  result = qword_1ECE897B0;
  if (!qword_1ECE897B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897B0);
  }

  return result;
}

unint64_t sub_1E101ADBC()
{
  result = qword_1ECE897B8;
  if (!qword_1ECE897B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897B8);
  }

  return result;
}

unint64_t sub_1E101AE10()
{
  result = qword_1ECE897C0;
  if (!qword_1ECE897C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897C0);
  }

  return result;
}

unint64_t sub_1E101AE64()
{
  result = qword_1ECE897C8;
  if (!qword_1ECE897C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE897C8);
  }

  return result;
}

unint64_t sub_1E101AEBC()
{
  result = qword_1ECE89800;
  if (!qword_1ECE89800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89800);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12ShazamEvents12EventServiceV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E101AF28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E101AF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1E101AFD8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E101B06C()
{
  result = qword_1ECE89808;
  if (!qword_1ECE89808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89808);
  }

  return result;
}

unint64_t sub_1E101B0C4()
{
  result = qword_1ECE89810;
  if (!qword_1ECE89810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89810);
  }

  return result;
}

unint64_t sub_1E101B11C()
{
  result = qword_1ECE89818;
  if (!qword_1ECE89818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89818);
  }

  return result;
}

unint64_t sub_1E101B174()
{
  result = qword_1ECE89820;
  if (!qword_1ECE89820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89820);
  }

  return result;
}

unint64_t sub_1E101B1CC()
{
  result = qword_1ECE89828;
  if (!qword_1ECE89828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89828);
  }

  return result;
}

unint64_t sub_1E101B224()
{
  result = qword_1ECE89830;
  if (!qword_1ECE89830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89830);
  }

  return result;
}

unint64_t sub_1E101B27C()
{
  result = qword_1ECE89838;
  if (!qword_1ECE89838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89838);
  }

  return result;
}

unint64_t sub_1E101B2D4()
{
  result = qword_1ECE89840;
  if (!qword_1ECE89840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89840);
  }

  return result;
}

unint64_t sub_1E101B32C()
{
  result = qword_1ECE89848;
  if (!qword_1ECE89848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89848);
  }

  return result;
}

unint64_t sub_1E101B384()
{
  result = qword_1ECE89850;
  if (!qword_1ECE89850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89850);
  }

  return result;
}

unint64_t sub_1E101B3DC()
{
  result = qword_1ECE89858;
  if (!qword_1ECE89858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89858);
  }

  return result;
}

unint64_t sub_1E101B434()
{
  result = qword_1ECE89860;
  if (!qword_1ECE89860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89860);
  }

  return result;
}

unint64_t sub_1E101B48C()
{
  result = qword_1ECE89868;
  if (!qword_1ECE89868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89868);
  }

  return result;
}

unint64_t sub_1E101B4E4()
{
  result = qword_1ECE89870;
  if (!qword_1ECE89870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89870);
  }

  return result;
}

uint64_t sub_1E101B538(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E10BFE40 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E10BFE60 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E10BFE80 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E10BFEA0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E10AE8FC();

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

uint64_t sub_1E101B6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v7 = sub_1E10ADBBC();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[38] = v8;
  v9 = swift_task_alloc();
  v4[39] = v9;
  *v9 = v4;
  v9[1] = sub_1E101B864;

  return sub_1E105E9AC(v8, a1, a2);
}

uint64_t sub_1E101B864()
{
  v2 = *v1;
  v2[40] = v0;

  if (v0)
  {
    v3 = v2[31];

    return MEMORY[0x1EEE6DFA0](sub_1E101C830, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[41] = v4;
    *v4 = v2;
    v4[1] = sub_1E101B9DC;
    v5 = v2[38];

    return sub_1E101C960((v2 + 16), v5);
  }
}

uint64_t sub_1E101B9DC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_1E101C8BC;
  }

  else
  {
    v4 = sub_1E101BB08;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E101BB08()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v2;
  *(v0 + 112) = *(v0 + 224);
  v3 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v3;
  v4 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v4;
  v5 = sub_1E1034E50();
  if (v1)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    sub_1E0FF0440(v0 + 16, &qword_1ECE89880, &qword_1E10B39F8);

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = v5;
  v50 = *(v0 + 256);
  v9 = *(v0 + 240);
  sub_1E0FF0440(v0 + 16, &qword_1ECE89880, &qword_1E10B39F8);
  v10 = v9 + 64;
  v11 = -1;
  v12 = -1 << *(v9 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v9 + 64);
  v14 = (63 - v12) >> 6;
  v49 = v9;

  v15 = 0;
  v43 = v8 + 40;
  v46 = MEMORY[0x1E69E7CC0];
  v47 = v9 + 64;
  v51 = v8;
  v48 = v14;
  if (v13)
  {
    while (1)
    {
LABEL_15:
      v18 = *(v0 + 272);
      v17 = *(v0 + 280);
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v15 << 6);
      v21 = *(v49 + 48);
      v22 = sub_1E10ADCFC();
      v23 = v21 + *(*(v22 - 8) + 72) * v20;
      v24 = *(v22 - 8);
      (*(v24 + 16))(v17, v23, v22);
      v25 = (*(v49 + 56) + 16 * v20);
      v26 = *v25;
      v27 = v25[1];
      v28 = (v17 + *(v50 + 48));
      *v28 = v26;
      v28[1] = v27;
      sub_1E101D5B8(v17, v18);

      v29 = sub_1E10AE74C();

      if (v29 >= 8)
      {
        (*(v24 + 8))(*(v0 + 272), v22);
      }

      else
      {
        v45 = v22;
        v44 = *(v24 + 8);
        result = v44(*(v0 + 272), v22);
        v52 = *(v8 + 2);
        if (v52)
        {
          v30 = 0;
          v31 = v43;
          while (v30 < *(v8 + 2))
          {
            v32 = *(v31 - 1);
            v33 = *v31;
            if (v33 > 3)
            {
              if (*v31 > 5u)
              {
                if (v33 == 6)
                {
                  if (v29 > 3u && v29 > 5u && v29 != 7)
                  {
                    goto LABEL_76;
                  }
                }

                else if (v29 > 3u && v29 > 5u && v29 != 6)
                {
LABEL_76:

LABEL_77:
                  v35 = *(v0 + 280);
                  v36 = *(v0 + 264);
                  sub_1E101D5B8(v35, v36);

                  v53 = sub_1E10ADCDC();
                  v38 = v37;
                  sub_1E0FF0440(v35, &qword_1ECE89878, &unk_1E10B6A20);
                  v44(v36, v45);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_1E1058CB8(0, *(v46 + 16) + 1, 1, v46);
                    v46 = result;
                  }

                  v14 = v48;
                  v40 = *(v46 + 16);
                  v39 = *(v46 + 24);
                  v8 = v51;
                  if (v40 >= v39 >> 1)
                  {
                    result = sub_1E1058CB8((v39 > 1), v40 + 1, 1, v46);
                    v46 = result;
                  }

                  *(v46 + 16) = v40 + 1;
                  v41 = v46 + 32 * v40;
                  *(v41 + 32) = v53;
                  *(v41 + 40) = v38;
                  *(v41 + 48) = v32;
                  *(v41 + 56) = v33;
                  v10 = v47;
                  if (v13)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_11;
                }
              }

              else if (v33 == 4)
              {
                if (v29 > 3u && v29 <= 5u && v29 != 5)
                {
                  goto LABEL_76;
                }
              }

              else if (v29 > 3u && v29 <= 5u && v29 != 4)
              {
                goto LABEL_76;
              }
            }

            else if (*v31 > 1u)
            {
              if (v33 == 2)
              {
                if (v29 <= 3u && v29 > 1u && v29 != 3)
                {
                  goto LABEL_76;
                }
              }

              else if (v29 <= 3u && v29 > 1u && v29 != 2)
              {
                goto LABEL_76;
              }
            }

            else if (*v31)
            {
              if (v29 <= 3u && v29 <= 1u && v29)
              {
                goto LABEL_76;
              }
            }

            else if (v29 <= 3u && v29 <= 1u && v29 != 1)
            {
              goto LABEL_76;
            }

            v34 = sub_1E10AE8FC();

            if (v34)
            {
              goto LABEL_77;
            }

            ++v30;

            v31 += 16;
            v8 = v51;
            if (v52 == v30)
            {
              goto LABEL_10;
            }
          }

LABEL_87:
          __break(1u);
          return result;
        }
      }

LABEL_10:
      result = sub_1E0FF0440(*(v0 + 280), &qword_1ECE89878, &unk_1E10B6A20);
      v10 = v47;
      v14 = v48;
      if (!v13)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_87;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_15;
    }
  }

  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

  v42 = *(v0 + 8);

  return v42(v46);
}

uint64_t sub_1E101C830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E101C8BC()
{
  (*(v0[37] + 8))(v0[38], v0[36]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E101C960(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_1E10AD9CC();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v5 = sub_1E10ADBBC();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v6 = sub_1E10AD9AC();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E101CADC, v2, 0);
}

uint64_t sub_1E101CADC()
{
  (*(v0[23] + 16))(v0[24], v0[17], v0[22]);
  sub_1E10AD97C();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1E101CBB8;
  v2 = v0[27];

  return sub_1E107A5C4(v2);
}

uint64_t sub_1E101CBB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 208);
  v7[29] = a1;
  v7[30] = a2;
  v7[31] = v3;

  v9 = v6[27];
  v10 = v6[25];
  v11 = v6[18];
  (*(v8 + 8))(v9, v10);
  if (v3)
  {
    v12 = sub_1E101D67C;
  }

  else
  {

    v12 = sub_1E101CD50;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1E101CD50()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  sub_1E10ADA0C();
  swift_allocObject();
  sub_1E10AD9FC();
  (*(v3 + 104))(v2, *MEMORY[0x1E6967F30], v4);
  sub_1E10AD9DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89880, &qword_1E10B39F8);
  sub_1E101D628(&qword_1ECE89888, &qword_1ECE89880, &qword_1E10B39F8);
  sub_1E10AD9EC();
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  if (v1)
  {

    sub_1E0FFDAC0(v6, v5);
  }

  else
  {
    v8 = *(v0 + 128);

    sub_1E0FFDAC0(v6, v5);
    v9 = *(v0 + 16);
    v10 = *(v0 + 48);
    v8[1] = *(v0 + 32);
    v8[2] = v10;
    *v8 = v9;
    v11 = *(v0 + 64);
    v12 = *(v0 + 80);
    v13 = *(v0 + 112);
    v8[5] = *(v0 + 96);
    v8[6] = v13;
    v8[3] = v11;
    v8[4] = v12;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E101CF18(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_1E10AD9CC();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v5 = sub_1E10ADBBC();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v6 = sub_1E10AD9AC();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E101D094, v2, 0);
}

uint64_t sub_1E101D094()
{
  (*(v0[23] + 16))(v0[24], v0[17], v0[22]);
  sub_1E10AD97C();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1E101D170;
  v2 = v0[27];

  return sub_1E107A5C4(v2);
}

uint64_t sub_1E101D170(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 208);
  v7[29] = a1;
  v7[30] = a2;
  v7[31] = v3;

  v9 = v6[27];
  v10 = v6[25];
  v11 = v6[18];
  (*(v8 + 8))(v9, v10);
  if (v3)
  {
    v12 = sub_1E101D4D0;
  }

  else
  {

    v12 = sub_1E101D308;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1E101D308()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  sub_1E10ADA0C();
  swift_allocObject();
  sub_1E10AD9FC();
  (*(v3 + 104))(v2, *MEMORY[0x1E6967F30], v4);
  sub_1E10AD9DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B280, &qword_1E10BA7B0);
  sub_1E101D628(&qword_1ECE89890, &qword_1ECE8B280, &qword_1E10BA7B0);
  sub_1E10AD9EC();
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  if (v1)
  {

    sub_1E0FFDAC0(v6, v5);
  }

  else
  {
    v8 = *(v0 + 128);

    sub_1E0FFDAC0(v6, v5);
    v9 = *(v0 + 16);
    v10 = *(v0 + 48);
    v8[1] = *(v0 + 32);
    v8[2] = v10;
    *v8 = v9;
    v11 = *(v0 + 64);
    v12 = *(v0 + 80);
    v13 = *(v0 + 112);
    v8[5] = *(v0 + 96);
    v8[6] = v13;
    v8[3] = v11;
    v8[4] = v12;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E101D4D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E101D554()
{
  sub_1E0FF3C74(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E101D5B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89878, &unk_1E10B6A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E101D628(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E101D680(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E1028044();
  result = MEMORY[0x1E12EDB70](v2, &type metadata for GeoNetworkRequest, v3);
  v5 = 0;
  v6 = *(a1 + 64);
  v17 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = (*(a1 + 48) + 48 * (v12 | (v11 << 6)));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;
      v20[0] = v18[0];
      v15 = v13[1];
      v19 = v13[2];
      v20[2] = v19;
      v20[1] = v15;
      v21 = v19;
      v22 = v15;
      sub_1E1027C5C(v20, v16);
      sub_1E1027CB8(&v22, v16);
      sub_1E1027CB8(&v21, v16);
      sub_1E10242B8(v16, v18);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v17;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E101D7F4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = type metadata accessor for PartialEventResource.Version(0);
  v3[16] = swift_task_alloc();
  v4 = sub_1E10AD9CC();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = sub_1E10AD9AC();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  type metadata accessor for AccessTokenResource(0);
  v3[23] = swift_task_alloc();
  v6 = sub_1E10ADBBC();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E101D9D8, v2, 0);
}

uint64_t sub_1E101D9D8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = sub_1E1062474();
    v3 = [objc_opt_self() standardUserDefaults];
    type metadata accessor for AccessTokenProvider();
    v1 = swift_allocObject();
    swift_defaultActor_initialize();
    v1[14] = v2;
    v1[17] = &type metadata for EventsRemoteConfiguration;
    v1[18] = &off_1F5BF1318;
    v1[19] = v3;
    v1[20] = 0;
  }

  *(v0 + 224) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E101DAC4, v1, 0);
}

uint64_t sub_1E101DAC4()
{
  sub_1E0FF33C0(v0[28] + 112, (v0 + 2));
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_1E101DB6C;
  v2 = v0[23];

  return sub_1E0FFBA58(v2);
}

uint64_t sub_1E101DB6C()
{
  v2 = *v1;
  v2[30] = v0;

  if (v0)
  {
    v3 = v2[14];
    sub_1E0FF3C74((v2 + 2));

    return MEMORY[0x1EEE6DFA0](sub_1E101E65C, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[31] = v4;
    *v4 = v2;
    v4[1] = sub_1E101DCF0;
    v5 = v2[27];
    v6 = v2[23];

    return sub_1E105F41C(v5, v6);
  }
}

uint64_t sub_1E101DCF0()
{
  v2 = *v1;
  v2[32] = v0;

  v3 = v2[14];
  sub_1E1028100(v2[23], type metadata accessor for AccessTokenResource);
  sub_1E0FF3C74((v2 + 2));
  if (v0)
  {
    v4 = sub_1E101E878;
  }

  else
  {
    v4 = sub_1E101DE54;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E101DE54()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  type metadata accessor for NetworkRunner();
  v5 = swift_allocObject();
  *(v0 + 264) = v5;
  swift_defaultActor_initialize();
  v6 = [objc_opt_self() defaultSessionConfiguration];
  v7 = [objc_opt_self() sessionWithConfiguration_];
  *(v0 + 80) = &type metadata for DefaultNetworkSession;
  *(v0 + 88) = &off_1F5BF3208;

  *(v0 + 56) = v7;
  sub_1E100C5C4((v0 + 56), v5 + 112);
  (*(v4 + 16))(v1, v2, v3);
  sub_1E10AD97C();
  v8 = swift_task_alloc();
  *(v0 + 272) = v8;
  *v8 = v0;
  v8[1] = sub_1E101DFD4;
  v9 = *(v0 + 176);

  return sub_1E107A5C4(v9);
}

uint64_t sub_1E101DFD4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 168);
  v7[35] = a1;
  v7[36] = a2;
  v7[37] = v3;

  v9 = v6[22];
  v10 = v6[20];
  v11 = v6[14];
  (*(v8 + 8))(v9, v10);
  if (v3)
  {
    v12 = sub_1E101EA94;
  }

  else
  {

    v12 = sub_1E101E16C;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1E101E16C()
{
  v35 = v0[37];
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  sub_1E10ADA0C();
  swift_allocObject();
  sub_1E10AD9FC();
  (*(v1 + 104))(v2, *MEMORY[0x1E6967F30], v3);
  sub_1E10AD9DC();
  sub_1E10281C8(&qword_1EE17F3C0, 255, type metadata accessor for PartialEventResource.Version, &unk_1E10B70D8);
  sub_1E10AD9EC();
  if (v35)
  {
    v5 = v0[35];
    v4 = v0[36];
    (*(v0[25] + 8))(v0[27], v0[24]);

    sub_1E0FFDAC0(v5, v4);

    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v6 = sub_1E10ADF9C();
    __swift_project_value_buffer(v6, qword_1EE185540);
    v7 = v35;
    v8 = sub_1E10ADF7C();
    v9 = sub_1E10AE44C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v35;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1E0FDF000, v8, v9, "Failed to fetch event service version: %@", v10, 0xCu);
      sub_1E0FF0440(v11, &qword_1ECE89170, &qword_1E10B15D0);
      MEMORY[0x1E12EE9E0](v11, -1, -1);
      MEMORY[0x1E12EE9E0](v10, -1, -1);
    }

    sub_1E10095EC();
    swift_allocError();
    *v14 = xmmword_1E10B3A30;
    swift_willThrow();

    v15 = v0[1];
  }

  else
  {
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v16 = sub_1E10ADF9C();
    __swift_project_value_buffer(v16, qword_1EE185540);
    v17 = sub_1E10ADF7C();
    v18 = sub_1E10AE45C();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[35];
    v20 = v0[36];
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E0FDF000, v17, v18, "Fetched event service level version", v22, 2u);
      MEMORY[0x1E12EE9E0](v22, -1, -1);

      sub_1E0FFDAC0(v21, v20);
    }

    else
    {

      sub_1E0FFDAC0(v21, v20);
    }

    v23 = v0[27];
    v24 = v0[24];
    v25 = v0[25];
    v26 = v0[15];
    v27 = v0[16];
    v28 = v0[12];

    (*(v25 + 8))(v23, v24);
    v29 = sub_1E10ADCBC();
    (*(*(v29 - 8) + 32))(v28, v27, v29);
    v30 = (v27 + *(v26 + 20));
    v31 = *v30;
    v32 = v30[1];
    v33 = (v28 + *(type metadata accessor for EventService.Version(0) + 20));
    *v33 = v31;
    v33[1] = v32;

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_1E101E65C()
{

  v1 = *(v0 + 240);
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v2 = sub_1E10ADF9C();
  __swift_project_value_buffer(v2, qword_1EE185540);
  v3 = v1;
  v4 = sub_1E10ADF7C();
  v5 = sub_1E10AE44C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1E0FDF000, v4, v5, "Failed to fetch event service version: %@", v6, 0xCu);
    sub_1E0FF0440(v7, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v7, -1, -1);
    MEMORY[0x1E12EE9E0](v6, -1, -1);
  }

  sub_1E10095EC();
  swift_allocError();
  *v10 = xmmword_1E10B3A30;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E101E878()
{

  v1 = *(v0 + 256);
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v2 = sub_1E10ADF9C();
  __swift_project_value_buffer(v2, qword_1EE185540);
  v3 = v1;
  v4 = sub_1E10ADF7C();
  v5 = sub_1E10AE44C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1E0FDF000, v4, v5, "Failed to fetch event service version: %@", v6, 0xCu);
    sub_1E0FF0440(v7, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v7, -1, -1);
    MEMORY[0x1E12EE9E0](v6, -1, -1);
  }

  sub_1E10095EC();
  swift_allocError();
  *v10 = xmmword_1E10B3A30;
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E101EA94()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];

  (*(v3 + 8))(v1, v2);
  v4 = v0[37];
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v5 = sub_1E10ADF9C();
  __swift_project_value_buffer(v5, qword_1EE185540);
  v6 = v4;
  v7 = sub_1E10ADF7C();
  v8 = sub_1E10AE44C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E0FDF000, v7, v8, "Failed to fetch event service version: %@", v9, 0xCu);
    sub_1E0FF0440(v10, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v10, -1, -1);
    MEMORY[0x1E12EE9E0](v9, -1, -1);
  }

  sub_1E10095EC();
  swift_allocError();
  *v13 = xmmword_1E10B3A30;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E101ECD8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_1E10ADEEC();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_1E10ADF9C();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = sub_1E10ADF1C();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v7 = sub_1E10AE6BC();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = type metadata accessor for PartialEventConfiguration(0);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E101EF28, v2, 0);
}

uint64_t sub_1E101EF28()
{
  sub_1E10AE2EC();
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_1E101F0A8;
  v2 = *(v0 + 272);

  return sub_1E0FF0548(v2);
}

uint64_t sub_1E101F0A8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_1E1020678;
  }

  else
  {
    v4 = sub_1E101F1D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E101F1D4()
{
  v1 = v0[34];
  v2 = v0[29];
  if (*(v1 + *(v2 + 36)) <= 0.0)
  {
    type metadata accessor for GeoNetworkRequestBatch();
    v10 = swift_allocObject();
    v0[39] = v10;
    swift_defaultActor_initialize();
    v11 = MEMORY[0x1E69E7CC8];
    *(v10 + 112) = MEMORY[0x1E69E7CC8];
    *(v10 + 120) = v11;

    return MEMORY[0x1EEE6DFA0](sub_1E101F794, v10, 0);
  }

  else
  {
    if (qword_1EE180170 != -1)
    {
      swift_once();
      v1 = v0[34];
    }

    v3 = v0[33];
    __swift_project_value_buffer(v0[19], qword_1EE185540);
    sub_1E1028098(v1, v3, type metadata accessor for PartialEventConfiguration);
    v4 = sub_1E10ADF7C();
    v5 = sub_1E10AE45C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[33];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = *(v7 + *(v2 + 36));
      sub_1E1028100(v7, type metadata accessor for PartialEventConfiguration);
      *(v8 + 4) = v9;
      _os_log_impl(&dword_1E0FDF000, v4, v5, "Throttling next batch of requests with a delay of %f seconds", v8, 0xCu);
      MEMORY[0x1E12EE9E0](v8, -1, -1);
    }

    else
    {

      sub_1E1028100(v7, type metadata accessor for PartialEventConfiguration);
    }

    v12 = sub_1E10AEABC();
    v14 = v13;
    sub_1E10AE97C();
    v15 = swift_task_alloc();
    v0[37] = v15;
    *v15 = v0;
    v15[1] = sub_1E101F47C;

    return sub_1E1078844(v12, v14, 0, 0, 1);
  }
}

uint64_t sub_1E101F47C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = v2[28];
  v4 = v2[26];
  v5 = v2[25];
  v6 = v2[14];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1E101F684;
  }

  else
  {
    v7 = sub_1E101F5F8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1E101F5F8()
{
  type metadata accessor for GeoNetworkRequestBatch();
  v1 = swift_allocObject();
  *(v0 + 312) = v1;
  swift_defaultActor_initialize();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 112) = MEMORY[0x1E69E7CC8];
  *(v1 + 120) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E101F794, v1, 0);
}

uint64_t sub_1E101F684()
{
  sub_1E1028100(*(v0 + 272), type metadata accessor for PartialEventConfiguration);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E101F794()
{
  v1 = v0[14];
  sub_1E10181EC(v0[12]);
  swift_beginAccess();

  v0[40] = sub_1E101D680(v2);

  return MEMORY[0x1EEE6DFA0](sub_1E101F828, v1, 0);
}

uint64_t sub_1E101F828()
{
  v35 = *(*(v0 + 320) + 16);
  *(v0 + 328) = v35;

  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = __swift_project_value_buffer(*(v0 + 152), qword_1EE185540);
  *(v0 + 336) = v5;
  sub_1E1028098(v1, v2, type metadata accessor for PartialEventConfiguration);
  sub_1E1028098(v1, v3, type metadata accessor for PartialEventConfiguration);
  sub_1E1028098(v1, v4, type metadata accessor for PartialEventConfiguration);
  v6 = sub_1E10ADF7C();
  v7 = sub_1E10AE45C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 248);
  v10 = *(v0 + 256);
  v11 = *(v0 + 240);
  if (v8)
  {
    v12 = *(v0 + 232);
    v33 = v5;
    v13 = swift_slowAlloc();
    *v13 = 134218752;
    *(v13 + 4) = v35;
    *(v13 + 12) = 2048;
    v14 = *(v10 + v12[8]);
    sub_1E1028100(v10, type metadata accessor for PartialEventConfiguration);
    *(v13 + 14) = v14;
    *(v13 + 22) = 2048;
    v15 = *(v9 + v12[6]);
    sub_1E1028100(v9, type metadata accessor for PartialEventConfiguration);
    *(v13 + 24) = v15;
    *(v13 + 32) = 2048;
    v16 = *(v11 + v12[7]);
    sub_1E1028100(v11, type metadata accessor for PartialEventConfiguration);
    *(v13 + 34) = v16;
    _os_log_impl(&dword_1E0FDF000, v6, v7, "Fetch a total of %ld requests, maximum %ld at a time, retry count: %ld, retry delay: %f", v13, 0x2Au);
    v5 = v33;
    MEMORY[0x1E12EE9E0](v13, -1, -1);
  }

  else
  {
    sub_1E1028100(*(v0 + 248), type metadata accessor for PartialEventConfiguration);
    sub_1E1028100(v10, type metadata accessor for PartialEventConfiguration);

    sub_1E1028100(v11, type metadata accessor for PartialEventConfiguration);
  }

  (*(*(v0 + 160) + 16))(*(v0 + 168), v5, *(v0 + 152));
  sub_1E10ADEFC();
  sub_1E10ADEDC();
  v17 = sub_1E10ADF0C();
  v18 = sub_1E10AE47C();
  if (sub_1E10AE4DC())
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v35;
    v20 = sub_1E10ADECC();
    _os_signpost_emit_with_name_impl(&dword_1E0FDF000, v17, v18, v20, "PartialEventFetcher.partialEvents", "%ld", v19, 0xCu);
    MEMORY[0x1E12EE9E0](v19, -1, -1);
  }

  v21 = *(v0 + 312);
  v22 = *(v0 + 272);
  v23 = *(v0 + 136);
  v24 = *(v0 + 144);
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);
  v27 = *(v0 + 112);
  v34 = *(v0 + 96);

  (*(v26 + 16))(v23, v24, v25);
  sub_1E10ADF5C();
  swift_allocObject();
  *(v0 + 344) = sub_1E10ADF4C();
  (*(v26 + 8))(v24, v25);
  sub_1E10AE6AC();
  *(v0 + 352) = sub_1E10281C8(&qword_1ECE89898, v28, type metadata accessor for PartialEventFetcher, &unk_1E10B3A88);
  v29 = swift_task_alloc();
  *(v0 + 360) = v29;
  v29[1].i64[0] = v21;
  v29[1].i64[1] = v22;
  v29[2].i64[0] = v35;
  v29[2].i64[1] = v27;
  v29[3] = vextq_s8(v34, v34, 8uLL);
  swift_getObjectType();
  v31 = sub_1E10AE23C();
  *(v0 + 368) = v31;
  *(v0 + 376) = v30;

  return MEMORY[0x1EEE6DFA0](sub_1E101FC70, v31, v30);
}

uint64_t sub_1E101FC70()
{
  v1 = v0[44];
  v0[10] = 0;
  v2 = v0[14];
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_1E101FD50;
  v4 = v0[45];
  v5 = v0[27];

  return sub_1E10273E0(v2, v1, v5, (v0 + 10), &unk_1E10B3AB8, v4);
}

uint64_t sub_1E101FD50(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[49] = a1;
  v5[50] = a2;
  v5[51] = v2;

  v6 = v4[47];
  v7 = v4[46];
  if (v2)
  {
    v8 = sub_1E101FFA4;
  }

  else
  {
    v8 = sub_1E101FE98;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E101FE98()
{
  v1 = v0[10];
  v0[52] = v1;
  if (v1)
  {
    v2 = v0[14];
    (*(v0[26] + 8))(v0[27], v0[25]);

    v3 = sub_1E102003C;
  }

  else
  {
    sub_1E10279E4();
    v4 = swift_allocError();
    swift_willThrow();
    v0[53] = v4;
    v2 = v0[14];
    (*(v0[26] + 8))(v0[27], v0[25]);

    v3 = sub_1E1020234;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1E101FFA4()
{
  v0[53] = v0[51];
  v1 = v0[14];
  (*(v0[26] + 8))(v0[27], v0[25]);

  return MEMORY[0x1EEE6DFA0](sub_1E1020234, v1, 0);
}

uint64_t sub_1E102003C()
{
  v1 = sub_1E10AEA6C();
  sub_1E10AEA6C();
  if (v2 * 1.0e-18 + v1 > 0.0)
  {
    sub_1E1027A38();
    v3 = sub_1E10AE49C();
    v4 = [v3 integerValue];

    sub_1E0FF4488(v4, 1);
  }

  v11 = v0[52];
  v5 = v0[34];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  sub_1E1021064(v6, "PartialEventFetcher.partialEvents", 33, 2, v0[43]);

  (*(v7 + 8))(v6, v8);
  sub_1E1028100(v5, type metadata accessor for PartialEventConfiguration);

  v9 = v0[1];

  return v9(v11);
}

uint64_t sub_1E1020234()
{
  v1 = *(v0 + 424);
  v2 = v1;
  v3 = sub_1E10ADF7C();
  v4 = sub_1E10AE44C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 424);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1E0FDF000, v3, v4, "Failed to retrieve partial events: %@", v6, 0xCu);
    sub_1E0FF0440(v7, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v7, -1, -1);
    MEMORY[0x1E12EE9E0](v6, -1, -1);
  }

  v10 = *(v0 + 424);

  *(v0 + 88) = v10;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 32);
    *(v0 + 432) = *(v0 + 16);
    *(v0 + 448) = v12;
    if (!*(v0 + 48))
    {
      v13 = *(v0 + 312);
      v14 = sub_1E102076C;
      goto LABEL_9;
    }

    if (*(v0 + 48) == 1)
    {
      v13 = *(v0 + 312);
      v14 = sub_1E1020BE8;
LABEL_9:

      return MEMORY[0x1EEE6DFA0](v14, v13, 0);
    }

    v20 = sub_1E10ADF7C();
    v21 = sub_1E10AE44C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E0FDF000, v20, v21, "Reached the maximum number of allowed errors, retry requests later", v22, 2u);
      MEMORY[0x1E12EE9E0](v22, -1, -1);
    }

    v23 = *(v0 + 424);
    v24 = *(v0 + 344);
    v25 = *(v0 + 272);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 176);

    sub_1E10095EC();
    swift_allocError();
    *v29 = xmmword_1E10B3A40;
    swift_willThrow();

    sub_1E1021064(v26, "PartialEventFetcher.partialEvents", 33, 2, v24);

    (*(v27 + 8))(v26, v28);
    sub_1E1028100(v25, type metadata accessor for PartialEventConfiguration);
  }

  else
  {
    v15 = *(v0 + 344);
    v16 = *(v0 + 272);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);
    v19 = *(v0 + 176);

    swift_willThrow();
    sub_1E1021064(v17, "PartialEventFetcher.partialEvents", 33, 2, v15);

    (*(v18 + 8))(v17, v19);
    sub_1E1028100(v16, type metadata accessor for PartialEventConfiguration);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1E1020678()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E102076C()
{
  v1 = v0[14];
  v0[58] = sub_1E1018B70(v0[54], v0[55]);

  return MEMORY[0x1EEE6DFA0](sub_1E10207E0, v1, 0);
}

uint64_t sub_1E10207E0()
{
  v34 = v0;
  v1 = *(v0 + 464);
  if (v1 >> 62)
  {
    if (sub_1E10AE70C())
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = *(v0 + 456);
    v13 = *(v0 + 440);
    v12 = *(v0 + 448);
    v14 = *(v0 + 432);

    v15 = sub_1E10ADF7C();
    v16 = sub_1E10AE44C();
    sub_1E10279CC(v14, v13, v12, v11, 0);
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 448);
    v18 = *(v0 + 456);
    v21 = *(v0 + 432);
    v20 = *(v0 + 440);
    if (v17)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      v24 = sub_1E1078CFC(v21, v20, &v33);
      sub_1E10279CC(v21, v20, v19, v18, 0);
      *(v22 + 4) = v24;
      _os_log_impl(&dword_1E0FDF000, v15, v16, "No matching geo request for network request <%s>", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12EE9E0](v23, -1, -1);
      MEMORY[0x1E12EE9E0](v22, -1, -1);
    }

    else
    {

      sub_1E10279CC(v21, v20, v19, v18, 0);
    }

    v25 = *(v0 + 344);
    v26 = *(v0 + 272);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);
    swift_willThrow();

    sub_1E1021064(v27, "PartialEventFetcher.partialEvents", 33, 2, v25);

    (*(v28 + 8))(v27, v29);
    sub_1E1028100(v26, type metadata accessor for PartialEventConfiguration);
    goto LABEL_12;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  result = sub_1E10279CC(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), 0);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E12EDD80](0, *(v0 + 464));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 464) + 32);
  }

  v4 = *(v0 + 424);
  v5 = *(v0 + 344);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v31 = *(v0 + 176);
  v32 = *(v0 + 272);

  v9 = *&v3[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
  v8 = *&v3[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id + 8];
  sub_1E10095EC();
  swift_allocError();
  *v10 = v9;
  v10[1] = v8;
  swift_willThrow();

  sub_1E1021064(v6, "PartialEventFetcher.partialEvents", 33, 2, v5);

  (*(v7 + 8))(v6, v31);
  sub_1E1028100(v32, type metadata accessor for PartialEventConfiguration);
LABEL_12:

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1E1020BE8()
{
  v1 = v0[14];
  v0[59] = sub_1E1018B70(v0[54], v0[55]);

  return MEMORY[0x1EEE6DFA0](sub_1E1020C5C, v1, 0);
}

uint64_t sub_1E1020C5C()
{
  v34 = v0;
  v1 = *(v0 + 472);
  if (v1 >> 62)
  {
    if (sub_1E10AE70C())
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = *(v0 + 448);
    v11 = *(v0 + 456);
    v14 = *(v0 + 432);
    v13 = *(v0 + 440);

    v15 = sub_1E10ADF7C();
    v16 = sub_1E10AE44C();
    sub_1E10279CC(v14, v13, v12, v11, 1u);
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 448);
    v18 = *(v0 + 456);
    v21 = *(v0 + 432);
    v20 = *(v0 + 440);
    if (v17)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      v24 = sub_1E1078CFC(v21, v20, &v33);
      sub_1E10279CC(v21, v20, v19, v18, 1u);
      *(v22 + 4) = v24;
      _os_log_impl(&dword_1E0FDF000, v15, v16, "No matching geo request for network request <%s>", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12EE9E0](v23, -1, -1);
      MEMORY[0x1E12EE9E0](v22, -1, -1);
    }

    else
    {

      sub_1E10279CC(v21, v20, v19, v18, 1u);
    }

    v25 = *(v0 + 344);
    v26 = *(v0 + 272);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);
    swift_willThrow();

    sub_1E1021064(v27, "PartialEventFetcher.partialEvents", 33, 2, v25);

    (*(v28 + 8))(v27, v29);
    sub_1E1028100(v26, type metadata accessor for PartialEventConfiguration);
    goto LABEL_12;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  result = sub_1E10279CC(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), 1u);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E12EDD80](0, *(v0 + 472));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 472) + 32);
  }

  v4 = *(v0 + 424);
  v5 = *(v0 + 344);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v31 = *(v0 + 176);
  v32 = *(v0 + 272);

  v9 = *&v3[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
  v8 = *&v3[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id + 8];
  sub_1E10095EC();
  swift_allocError();
  *v10 = v9;
  v10[1] = v8;
  swift_willThrow();

  sub_1E1021064(v6, "PartialEventFetcher.partialEvents", 33, 2, v5);

  (*(v7 + 8))(v6, v31);
  sub_1E1028100(v32, type metadata accessor for PartialEventConfiguration);
LABEL_12:

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1E1021064(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v26 = a2;
  v6 = sub_1E10ADF2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1E10ADEEC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1E10ADF0C();
  sub_1E10ADF3C();
  v25 = sub_1E10AE46C();
  result = sub_1E10AE4DC();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v13 + 8))(v17, v12);
  }

  if ((a4 & 1) == 0)
  {
    v20 = v26;
    if (v26)
    {
LABEL_9:

      sub_1E10ADF6C();

      if ((*(v7 + 88))(v11, v6) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v11, v6);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1E10ADECC();
      _os_signpost_emit_with_name_impl(&dword_1E0FDF000, v18, v25, v23, v20, v21, v22, 2u);
      MEMORY[0x1E12EE9E0](v22, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v26 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v26 & 0xFFFFF800) != 0xD800)
  {
    if (v26 >> 16 <= 0x10)
    {
      v20 = &v27;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1E1021300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E102132C, a5, 0);
}

uint64_t sub_1E102132C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C0, &unk_1E10B3AC8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE89448, qword_1E10B2440);
  v6 = sub_1E10281C8(&qword_1ECE89898, v5, type metadata accessor for PartialEventFetcher, &unk_1E10B3A88);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  v11 = *(v0 + 48);
  *(v7 + 16) = *(v0 + 24);
  *(v7 + 32) = v2;
  *(v7 + 40) = v11;
  *(v7 + 56) = v1;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_1E10214B0;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v9, v3, v4, v11, v6, &unk_1E10B3AE0, v7, v3);
}

uint64_t sub_1E10214B0()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x1EEE6DFA0](sub_1E10215EC, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E10215EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1021650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[93] = a8;
  v8[92] = a7;
  v8[91] = a6;
  v8[90] = a5;
  v8[89] = a4;
  v8[88] = a3;
  v8[87] = a2;
  v8[86] = a1;
  v10 = type metadata accessor for PartialEventConfiguration(0);
  v8[94] = v10;
  v11 = *(v10 - 8);
  v8[95] = v11;
  v8[96] = *(v11 + 64);
  v8[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  v8[101] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1021794, a3, 0);
}

uint64_t sub_1E1021794()
{
  v1 = *(v0 + 728);
  swift_beginAccess();

  *(v0 + 816) = sub_1E101D680(v2);

  return MEMORY[0x1EEE6DFA0](sub_1E1021820, v1, 0);
}

uint64_t sub_1E1021820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 816);
  v6 = *(v4 + 720);
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  if (*(*(v4 + 712) + *(*(v4 + 752) + 32)) < v6)
  {
    v6 = *(*(v4 + 712) + *(*(v4 + 752) + 32));
  }

  if (v6 < 0)
  {
LABEL_41:
    __break(1u);
    return MEMORY[0x1EEE6DAC8](a1, a2, a3, a4);
  }

  v50 = v5 + 56;
  v9 = v7 & *(v5 + 56);
  v10 = 0;
  if (v6)
  {
    v11 = 0;
    v53 = *(v4 + 760);
    v54 = v6;
    v12 = (63 - v8) >> 6;
    v51 = v12;
    v52 = *(v4 + 728);
    v55 = *(v4 + 816);
    while (v9)
    {
      v58 = v11;
LABEL_16:
      v16 = *(v4 + 808);
      v56 = v16;
      v57 = *(v4 + 800);
      v17 = *(v4 + 776);
      v18 = *(v4 + 712);
      v19 = (*(v5 + 48) + 48 * (__clz(__rbit64(v9)) | (v10 << 6)));
      v21 = v19[1];
      v20 = v19[2];
      *(v4 + 128) = *v19;
      *(v4 + 144) = v21;
      *(v4 + 160) = v20;
      *(v4 + 512) = *v19;
      v22 = v19[2];
      *(v4 + 320) = v19[1];
      *(v4 + 336) = v22;
      v23 = v19[1];
      *(v4 + 576) = *(v4 + 336);
      *(v4 + 592) = v23;
      v24 = sub_1E10AE29C();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v16, 1, 1, v24);
      v26 = *(v52 + 112);
      sub_1E1028098(v18, v17, type metadata accessor for PartialEventConfiguration);
      v27 = (*(v53 + 80) + 88) & ~*(v53 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = v26;
      v29 = *(v4 + 144);
      *(v28 + 40) = *(v4 + 128);
      *(v28 + 56) = v29;
      *(v28 + 72) = *(v4 + 160);
      sub_1E1028160(v17, v28 + v27, type metadata accessor for PartialEventConfiguration);
      sub_1E0FE62DC(v56, v57);
      v30 = (*(v25 + 48))(v57, 1, v24);
      v31 = *(v4 + 800);
      if (v30 == 1)
      {
        sub_1E1027C5C(v4 + 512, v4 + 496);
        sub_1E1027CB8(v4 + 592, v4 + 480);
        sub_1E1027CB8(v4 + 576, v4 + 464);

        sub_1E0FF0440(v31, &unk_1ECE88C00, &unk_1E10B94F0);
      }

      else
      {
        sub_1E1027C5C(v4 + 512, v4 + 640);
        sub_1E1027CB8(v4 + 592, v4 + 656);
        sub_1E1027CB8(v4 + 576, v4 + 672);

        sub_1E10AE28C();
        (*(v25 + 8))(v31, v24);
      }

      if (*(v28 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v32 = sub_1E10AE23C();
        v34 = v33;
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v35 = **(v4 + 696);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C0, &unk_1E10B3AC8);
      v36 = v34 | v32;
      if (v34 | v32)
      {
        v36 = v4 + 224;
        *(v4 + 224) = 0;
        *(v4 + 232) = 0;
        *(v4 + 240) = v32;
        *(v4 + 248) = v34;
      }

      v11 = v58 + 1;
      v13 = *(v4 + 808);
      v9 &= v9 - 1;
      *(v4 + 424) = 1;
      *(v4 + 432) = v36;
      *(v4 + 440) = v35;
      swift_task_create();

      a1 = sub_1E0FF0440(v13, &unk_1ECE88C00, &unk_1E10B94F0);
      v5 = v55;
      v12 = v51;
      if (v58 + 1 == v54)
      {
        goto LABEL_29;
      }
    }

    v14 = v10;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v15 >= v12)
      {
        break;
      }

      v9 = *(v50 + 8 * v15);
      ++v14;
      if (v9)
      {
        v58 = v11;
        v10 = v15;
        goto LABEL_16;
      }
    }

    if (v12 <= v10 + 1)
    {
      v37 = v10 + 1;
    }

    else
    {
      v37 = v12;
    }

    v10 = v37 - 1;
    *(v4 + 824) = v12;
    v38 = *(v4 + 816);
    v39 = *(v4 + 728);
LABEL_30:
    v40 = v10;
    while (1)
    {
      v10 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v10 >= v12)
      {
        v47 = sub_1E10281C8(&qword_1ECE89898, a2, type metadata accessor for PartialEventFetcher, &unk_1E10B3A88);
        *(v4 + 864) = v47;
        v48 = swift_task_alloc();
        *(v4 + 952) = v48;
        a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
        *v48 = v4;
        v48[1] = sub_1E1023234;
        a1 = v4 + 16;
        a2 = v39;
        a3 = v47;
        goto LABEL_36;
      }

      v9 = *(v38 + 56 + 8 * v10);
      ++v40;
      if (v9)
      {
        goto LABEL_34;
      }
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v12 = (63 - v8) >> 6;
LABEL_29:
  *(v4 + 824) = v12;
  v38 = *(v4 + 816);
  v39 = *(v4 + 728);
  if (!v9)
  {
    goto LABEL_30;
  }

LABEL_34:
  *(v4 + 840) = v10;
  *(v4 + 832) = v9;
  v41 = (*(v38 + 48) + 48 * (__clz(__rbit64(v9)) | (v10 << 6)));
  v42 = *v41;
  v43 = v41[2];
  *(v4 + 192) = v41[1];
  *(v4 + 208) = v43;
  *(v4 + 176) = v42;
  *(v4 + 608) = *v41;
  v44 = v41[2];
  *(v4 + 256) = v41[1];
  *(v4 + 272) = v44;
  *(v4 + 448) = v41[1];
  *(v4 + 624) = *(v4 + 272);
  v45 = sub_1E10281C8(&qword_1ECE89898, a2, type metadata accessor for PartialEventFetcher, &unk_1E10B3A88);
  sub_1E1027C5C(v4 + 608, v4 + 528);
  sub_1E1027CB8(v4 + 448, v4 + 544);
  sub_1E1027CB8(v4 + 624, v4 + 560);
  v46 = swift_task_alloc();
  *(v4 + 848) = v46;
  a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
  *v46 = v4;
  v46[1] = sub_1E1021EB8;
  a1 = v4 + 72;
  a2 = v39;
  a3 = v45;
LABEL_36:

  return MEMORY[0x1EEE6DAC8](a1, a2, a3, a4);
}

uint64_t sub_1E1021EB8()
{
  v2 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v3 = *(v2 + 728);
    sub_1E1027D14(v2 + 608);
    sub_1E1027D68(v2 + 448);
    sub_1E1027D68(v2 + 624);
    v4 = sub_1E1023B68;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 728);
    v4 = sub_1E1021FF0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1E1021FF0()
{
  v1 = *(v0 + 80);
  *(v0 + 872) = v1;
  if (v1)
  {
    v2 = *(v0 + 704);
    v3 = *(v0 + 112);
    *(v0 + 880) = *(v0 + 120);
    *(v0 + 888) = v3;
    *(v0 + 896) = *(v0 + 96);
    *(v0 + 904) = *(v0 + 72);

    return MEMORY[0x1EEE6DFA0](sub_1E1022564, v2, 0);
  }

  v4 = *(v0 + 792);
  v5 = *(v0 + 776);
  v42 = *(v0 + 784);
  v6 = *(v0 + 760);
  v7 = *(v0 + 728);
  v8 = *(v0 + 712);
  v9 = sub_1E10AE29C();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v4, 1, 1, v9);
  v11 = *(v7 + 112);
  sub_1E1028098(v8, v5, type metadata accessor for PartialEventConfiguration);
  v12 = (*(v6 + 80) + 88) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  *(v13 + 24) = 0;
  *(v13 + 32) = v11;
  v15 = *(v0 + 192);
  *(v13 + 40) = *(v0 + 176);
  *(v13 + 56) = v15;
  *(v13 + 72) = *(v0 + 208);
  sub_1E1028160(v5, v13 + v12, type metadata accessor for PartialEventConfiguration);
  sub_1E0FE62DC(v4, v42);
  LODWORD(v4) = (*(v10 + 48))(v42, 1, v9);

  v16 = *(v0 + 784);
  if (v4 != 1)
  {
    sub_1E10AE28C();
    (*(v10 + 8))(v16, v9);
    if (*v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v17 = 0;
    v19 = 0;
    goto LABEL_10;
  }

  sub_1E0FF0440(*(v0 + 784), &unk_1ECE88C00, &unk_1E10B94F0);
  if (!*v14)
  {
    goto LABEL_9;
  }

LABEL_7:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_1E10AE23C();
  v19 = v18;
  swift_unknownObjectRelease();
LABEL_10:
  v20 = **(v0 + 696);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C0, &unk_1E10B3AC8);
  v21 = v19 | v17;
  if (v19 | v17)
  {
    v21 = v0 + 288;
    *(v0 + 288) = 0;
    *(v0 + 296) = 0;
    *(v0 + 304) = v17;
    *(v0 + 312) = v19;
  }

  v22 = *(v0 + 792);
  *(v0 + 376) = 1;
  *(v0 + 384) = v21;
  *(v0 + 392) = v20;
  swift_task_create();

  v23 = sub_1E0FF0440(v22, &unk_1ECE88C00, &unk_1E10B94F0);
  v27 = *(v0 + 840);
  v28 = (*(v0 + 832) - 1) & *(v0 + 832);
  if (v28)
  {
    v29 = *(v0 + 816);
LABEL_19:
    *(v0 + 840) = v27;
    *(v0 + 832) = v28;
    v34 = *(v0 + 728);
    v35 = (*(v29 + 48) + 48 * (__clz(__rbit64(v28)) | (v27 << 6)));
    v37 = v35[1];
    v36 = v35[2];
    *(v0 + 176) = *v35;
    *(v0 + 192) = v37;
    *(v0 + 208) = v36;
    *(v0 + 608) = *v35;
    v38 = v35[2];
    *(v0 + 256) = v35[1];
    *(v0 + 272) = v38;
    *(v0 + 448) = v35[1];
    *(v0 + 624) = *(v0 + 272);
    v39 = sub_1E10281C8(&qword_1ECE89898, v24, type metadata accessor for PartialEventFetcher, &unk_1E10B3A88);
    sub_1E1027C5C(v0 + 608, v0 + 528);
    sub_1E1027CB8(v0 + 448, v0 + 544);
    sub_1E1027CB8(v0 + 624, v0 + 560);
    v40 = swift_task_alloc();
    *(v0 + 848) = v40;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
    *v40 = v0;
    v40[1] = sub_1E1021EB8;
    v23 = v0 + 72;
    v24 = v34;
    v25 = v39;
LABEL_20:
  }

  else
  {
    while (1)
    {
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v30 >= *(v0 + 824))
      {
        v31 = sub_1E10281C8(&qword_1ECE89898, v24, type metadata accessor for PartialEventFetcher, &unk_1E10B3A88);
        *(v0 + 864) = v31;
        v32 = *(v0 + 728);
        v33 = swift_task_alloc();
        *(v0 + 952) = v33;
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
        *v33 = v0;
        v33[1] = sub_1E1023234;
        v23 = v0 + 16;
        v24 = v32;
        v25 = v31;
        goto LABEL_20;
      }

      v29 = *(v0 + 816);
      v28 = *(v29 + 8 * v30 + 56);
      ++v27;
      if (v28)
      {
        v27 = v30;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return MEMORY[0x1EEE6DAC8](v23, v24, v25, v26);
}

uint64_t sub_1E1022564()
{
  v1 = v0[91];
  v0[114] = sub_1E1018B70(v0[113], v0[109]);

  return MEMORY[0x1EEE6DFA0](sub_1E1022610, v1, 0);
}

uint64_t sub_1E1022610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 912);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v4 + 920) = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = *(v4 + 792);
    v11 = *(v4 + 776);
    v44 = *(v4 + 784);
    v12 = *(v4 + 760);
    v13 = *(v4 + 728);
    v14 = *(v4 + 712);
    v15 = sub_1E10AE29C();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v10, 1, 1, v15);
    v17 = *(v13 + 112);
    sub_1E1028098(v14, v11, type metadata accessor for PartialEventConfiguration);
    v18 = (*(v12 + 80) + 88) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = (v19 + 16);
    *(v19 + 24) = 0;
    *(v19 + 32) = v17;
    v21 = *(v4 + 192);
    *(v19 + 40) = *(v4 + 176);
    *(v19 + 56) = v21;
    *(v19 + 72) = *(v4 + 208);
    sub_1E1028160(v11, v19 + v18, type metadata accessor for PartialEventConfiguration);
    sub_1E0FE62DC(v10, v44);
    LODWORD(v10) = (*(v16 + 48))(v44, 1, v15);

    v22 = *(v4 + 784);
    if (v10 == 1)
    {
      sub_1E0FF0440(*(v4 + 784), &unk_1ECE88C00, &unk_1E10B94F0);
      if (*v20)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_1E10AE23C();
        v25 = v24;
        swift_unknownObjectRelease();
LABEL_16:
        v26 = **(v4 + 696);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C0, &unk_1E10B3AC8);
        v27 = v25 | v23;
        if (v25 | v23)
        {
          v27 = v4 + 288;
          *(v4 + 288) = 0;
          *(v4 + 296) = 0;
          *(v4 + 304) = v23;
          *(v4 + 312) = v25;
        }

        v28 = *(v4 + 792);
        *(v4 + 376) = 1;
        *(v4 + 384) = v27;
        *(v4 + 392) = v26;
        swift_task_create();

        v6 = sub_1E0FF0440(v28, &unk_1ECE88C00, &unk_1E10B94F0);
        v29 = *(v4 + 840);
        v30 = (*(v4 + 832) - 1) & *(v4 + 832);
        if (v30)
        {
          v31 = *(v4 + 816);
LABEL_25:
          *(v4 + 840) = v29;
          *(v4 + 832) = v30;
          v36 = *(v4 + 728);
          v37 = (*(v31 + 48) + 48 * (__clz(__rbit64(v30)) | (v29 << 6)));
          v39 = v37[1];
          v38 = v37[2];
          *(v4 + 176) = *v37;
          *(v4 + 192) = v39;
          *(v4 + 208) = v38;
          *(v4 + 608) = *v37;
          v40 = v37[2];
          *(v4 + 256) = v37[1];
          *(v4 + 272) = v40;
          *(v4 + 448) = v37[1];
          *(v4 + 624) = *(v4 + 272);
          v41 = sub_1E10281C8(&qword_1ECE89898, a2, type metadata accessor for PartialEventFetcher, &unk_1E10B3A88);
          sub_1E1027C5C(v4 + 608, v4 + 528);
          sub_1E1027CB8(v4 + 448, v4 + 544);
          sub_1E1027CB8(v4 + 624, v4 + 560);
          v42 = swift_task_alloc();
          *(v4 + 848) = v42;
          a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
          *v42 = v4;
          v42[1] = sub_1E1021EB8;
          v6 = v4 + 72;
          a2 = v36;
          a3 = v41;
LABEL_26:

          return MEMORY[0x1EEE6DAC8](v6, a2, a3, a4);
        }

        while (1)
        {
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v32 >= *(v4 + 824))
          {
            v33 = sub_1E10281C8(&qword_1ECE89898, a2, type metadata accessor for PartialEventFetcher, &unk_1E10B3A88);
            *(v4 + 864) = v33;
            v34 = *(v4 + 728);
            v35 = swift_task_alloc();
            *(v4 + 952) = v35;
            a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
            *v35 = v4;
            v35[1] = sub_1E1023234;
            v6 = v4 + 16;
            a2 = v34;
            a3 = v33;
            goto LABEL_26;
          }

          v31 = *(v4 + 816);
          v30 = *(v31 + 8 * v32 + 56);
          ++v29;
          if (v30)
          {
            v29 = v32;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
        return MEMORY[0x1EEE6DAC8](v6, a2, a3, a4);
      }
    }

    else
    {
      sub_1E10AE28C();
      (*(v16 + 8))(v22, v15);
      if (*v20)
      {
        goto LABEL_13;
      }
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_16;
  }

  v6 = sub_1E10AE70C();
  *(v4 + 920) = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 < 1)
  {
    goto LABEL_30;
  }

  v7 = *(v4 + 912);
  *(v4 + 928) = 0;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1E12EDD80](0);
  }

  else
  {
    v8 = *(v7 + 32);
  }

  *(v4 + 936) = v8;
  v9 = *(v4 + 704);
  *(v4 + 944) = sub_1E105193C(v8, *(v4 + 736), *(v4 + 880));

  return MEMORY[0x1EEE6DFA0](sub_1E1022BEC, v9, 0);
}

uint64_t sub_1E1022BEC()
{
  v1 = v0[91];
  sub_1E1018794(v0[118], v0[117]);

  return MEMORY[0x1EEE6DFA0](sub_1E1022C74, v1, 0);
}

uint64_t sub_1E1022C74()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);

  if (v1 + 1 != v2)
  {
    v19 = *(v0 + 928) + 1;
    *(v0 + 928) = v19;
    v20 = *(v0 + 912);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1E12EDD80]();
    }

    else
    {
      v21 = *(v20 + 8 * v19 + 32);
    }

    *(v0 + 936) = v21;
    v36 = *(v0 + 704);
    *(v0 + 944) = sub_1E105193C(v21, *(v0 + 736), *(v0 + 880));

    return MEMORY[0x1EEE6DFA0](sub_1E1022BEC, v36, 0);
  }

  v3 = *(v0 + 792);
  v4 = *(v0 + 776);
  v45 = *(v0 + 784);
  v5 = *(v0 + 760);
  v6 = *(v0 + 728);
  v7 = *(v0 + 712);
  v8 = sub_1E10AE29C();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  v10 = *(v6 + 112);
  sub_1E1028098(v7, v4, type metadata accessor for PartialEventConfiguration);
  v11 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  *(v12 + 24) = 0;
  *(v12 + 32) = v10;
  v14 = *(v0 + 192);
  *(v12 + 40) = *(v0 + 176);
  *(v12 + 56) = v14;
  *(v12 + 72) = *(v0 + 208);
  sub_1E1028160(v4, v12 + v11, type metadata accessor for PartialEventConfiguration);
  sub_1E0FE62DC(v3, v45);
  LODWORD(v3) = (*(v9 + 48))(v45, 1, v8);

  v15 = *(v0 + 784);
  if (v3 != 1)
  {
    sub_1E10AE28C();
    (*(v9 + 8))(v15, v8);
    if (*v13)
    {
      goto LABEL_4;
    }

LABEL_8:
    v16 = 0;
    v18 = 0;
    goto LABEL_9;
  }

  sub_1E0FF0440(*(v0 + 784), &unk_1ECE88C00, &unk_1E10B94F0);
  if (!*v13)
  {
    goto LABEL_8;
  }

LABEL_4:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1E10AE23C();
  v18 = v17;
  swift_unknownObjectRelease();
LABEL_9:
  v22 = **(v0 + 696);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C0, &unk_1E10B3AC8);
  v23 = v18 | v16;
  if (v18 | v16)
  {
    v23 = v0 + 288;
    *(v0 + 288) = 0;
    *(v0 + 296) = 0;
    *(v0 + 304) = v16;
    *(v0 + 312) = v18;
  }

  v24 = *(v0 + 792);
  *(v0 + 376) = 1;
  *(v0 + 384) = v23;
  *(v0 + 392) = v22;
  swift_task_create();

  v25 = sub_1E0FF0440(v24, &unk_1ECE88C00, &unk_1E10B94F0);
  v29 = *(v0 + 840);
  v30 = (*(v0 + 832) - 1) & *(v0 + 832);
  if (v30)
  {
    v31 = *(v0 + 816);
LABEL_22:
    *(v0 + 840) = v29;
    *(v0 + 832) = v30;
    v37 = *(v0 + 728);
    v38 = (*(v31 + 48) + 48 * (__clz(__rbit64(v30)) | (v29 << 6)));
    v40 = v38[1];
    v39 = v38[2];
    *(v0 + 176) = *v38;
    *(v0 + 192) = v40;
    *(v0 + 208) = v39;
    *(v0 + 608) = *v38;
    v41 = v38[2];
    *(v0 + 256) = v38[1];
    *(v0 + 272) = v41;
    *(v0 + 448) = v38[1];
    *(v0 + 624) = *(v0 + 272);
    v42 = sub_1E10281C8(&qword_1ECE89898, v26, type metadata accessor for PartialEventFetcher, &unk_1E10B3A88);
    sub_1E1027C5C(v0 + 608, v0 + 528);
    sub_1E1027CB8(v0 + 448, v0 + 544);
    sub_1E1027CB8(v0 + 624, v0 + 560);
    v43 = swift_task_alloc();
    *(v0 + 848) = v43;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
    *v43 = v0;
    v43[1] = sub_1E1021EB8;
    v25 = v0 + 72;
    v26 = v37;
    v27 = v42;
LABEL_23:
  }

  else
  {
    while (1)
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v32 >= *(v0 + 824))
      {
        v33 = sub_1E10281C8(&qword_1ECE89898, v26, type metadata accessor for PartialEventFetcher, &unk_1E10B3A88);
        *(v0 + 864) = v33;
        v34 = *(v0 + 728);
        v35 = swift_task_alloc();
        *(v0 + 952) = v35;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
        *v35 = v0;
        v35[1] = sub_1E1023234;
        v25 = v0 + 16;
        v26 = v34;
        v27 = v33;
        goto LABEL_23;
      }

      v31 = *(v0 + 816);
      v30 = *(v31 + 8 * v32 + 56);
      ++v29;
      if (v30)
      {
        v29 = v32;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  return MEMORY[0x1EEE6DAC8](v25, v26, v27, v28);
}

uint64_t sub_1E1023234()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  v3 = *(v2 + 728);
  if (v0)
  {
    v4 = sub_1E1023C14;
  }

  else
  {
    v4 = sub_1E1023360;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E1023360()
{
  v1 = v0[3];
  v0[121] = v1;
  v2 = v0[88];
  if (v1)
  {
    v3 = v0[7];
    v0[122] = v0[8];
    v0[123] = v3;
    v0[124] = v0[5];
    v0[125] = v0[2];
    v4 = sub_1E10233B4;
  }

  else
  {
    v4 = sub_1E10237FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v2, 0);
}

uint64_t sub_1E10233B4()
{
  v1 = v0[91];
  v0[126] = sub_1E1018B70(v0[125], v0[121]);

  return MEMORY[0x1EEE6DFA0](sub_1E1023460, v1, 0);
}

uint64_t sub_1E1023460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[126];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4[127] = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = v4[108];
    v11 = v4[91];
    v12 = swift_task_alloc();
    v4[119] = v12;
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
    *v12 = v4;
    v12[1] = sub_1E1023234;
    v6 = (v4 + 2);
    a2 = v11;
    a3 = v10;

    return MEMORY[0x1EEE6DAC8](v6, a2, a3, a4);
  }

  v6 = sub_1E10AE70C();
  v4[127] = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DAC8](v6, a2, a3, a4);
  }

  v7 = v4[126];
  v4[128] = 0;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1E12EDD80](0);
  }

  else
  {
    v8 = *(v7 + 32);
  }

  v4[129] = v8;
  v9 = v4[88];
  v4[130] = sub_1E105193C(v8, v4[92], v4[122]);

  return MEMORY[0x1EEE6DFA0](sub_1E10235F8, v9, 0);
}

uint64_t sub_1E10235F8()
{
  v1 = v0[91];
  sub_1E1018794(v0[130], v0[129]);

  return MEMORY[0x1EEE6DFA0](sub_1E1023680, v1, 0);
}

uint64_t sub_1E1023680()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);

  if (v1 + 1 == v2)
  {

    v3 = *(v0 + 864);
    v4 = *(v0 + 728);
    v5 = swift_task_alloc();
    *(v0 + 952) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898C8, &qword_1E10B3B00);
    *v5 = v0;
    v5[1] = sub_1E1023234;

    return MEMORY[0x1EEE6DAC8](v0 + 16, v4, v3, v6);
  }

  else
  {
    v7 = *(v0 + 1024) + 1;
    *(v0 + 1024) = v7;
    v8 = *(v0 + 1008);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E12EDD80]();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    *(v0 + 1032) = v9;
    v10 = *(v0 + 704);
    *(v0 + 1040) = sub_1E105193C(v9, *(v0 + 736), *(v0 + 976));

    return MEMORY[0x1EEE6DFA0](sub_1E10235F8, v10, 0);
  }
}

uint64_t sub_1E10237FC()
{
  v1 = v0[91];
  v2 = v0[88];
  swift_beginAccess();
  v0[131] = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E1023888, v1, 0);
}

uint64_t sub_1E1023888()
{
  v1 = *(v0[131] + 16);

  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v2 = sub_1E10ADF9C();
  __swift_project_value_buffer(v2, qword_1EE185540);

  v3 = sub_1E10ADF7C();
  v4 = sub_1E10AE45C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[93];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v1;
    *(v7 + 12) = 2048;
    if (v6 >> 62)
    {
      v11 = v7;
      v8 = sub_1E10AE70C();
      v7 = v11;
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 14) = v8;
    v9 = v7;

    _os_log_impl(&dword_1E0FDF000, v3, v4, "Retrieved partial events for %ld requests out of %ld", v9, 0x16u);
    MEMORY[0x1E12EE9E0](v9, -1, -1);
  }

  else
  {
  }

  v10 = v0[88];

  return MEMORY[0x1EEE6DFA0](sub_1E1023A2C, v10, 0);
}

uint64_t sub_1E1023A2C()
{
  v1 = v0[91];
  v0[132] = *(v0[88] + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E1023AA4, v1, 0);
}

uint64_t sub_1E1023AA4()
{
  v1 = v0[132];
  v2 = v0[86];

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E1023B68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1023C14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1023CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a1;
  v9 = swift_task_alloc();
  *(v6 + 80) = v9;
  *v9 = v6;
  v9[1] = sub_1E1023D78;

  return sub_1E1075ADC(v6 + 16, a5, a6);
}

uint64_t sub_1E1023D78()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 88) = *(*v1 + 16);
  *(v3 + 96) = *(v2 + 24);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 120) = *(v2 + 48);
  *(v3 + 128) = *(v3 + 56);

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E1028210, 0, 0);
  }
}

uint64_t sub_1E1023F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a1;
  v9 = swift_task_alloc();
  *(v6 + 80) = v9;
  *v9 = v6;
  v9[1] = sub_1E1023FBC;

  return sub_1E1075ADC(v6 + 16, a5, a6);
}

uint64_t sub_1E1023FBC()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 88) = *(*v1 + 16);
  *(v3 + 96) = *(v2 + 24);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 120) = *(v2 + 48);
  *(v3 + 128) = *(v3 + 56);

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E1024148, 0, 0);
  }
}

uint64_t sub_1E1024148()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 128);
  *v3 = *(v0 + 88);
  *(v3 + 16) = v2;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  return (*(v0 + 8))();
}

uint64_t sub_1E1024180()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E10241E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E0FE6540;

  return sub_1E1021300(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1E10242B8(void *a1, __int128 *a2)
{
  v34 = *a2;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  v6 = *(a2 + 4);
  v5 = *(a2 + 5);
  v7 = *v2;
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v8 = sub_1E10AEA0C();
  v9 = v7 + 56;
  v10 = -1 << *(v7 + 32);
  v11 = v8 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v28 = v7;
    v13 = *(v7 + 48);
    while (1)
    {
      v14 = (v13 + 48 * v11);
      v15 = v14[4];
      v16 = v14[5];
      v17 = v14[2] == v4 && v14[3] == v3;
      if (v17 || (sub_1E10AE8FC() & 1) != 0)
      {
        v18 = v15 == v6 && v16 == v5;
        if (v18 || (sub_1E10AE8FC() & 1) != 0)
        {
          break;
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1E1027D14(&v34);

    v19 = (*(v28 + 48) + 48 * v11);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v24 = v19[5];
    *a1 = *v19;
    a1[1] = v20;
    a1[2] = v21;
    a1[3] = v22;
    a1[4] = v23;
    a1[5] = v24;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v29;
    sub_1E1027C5C(&v34, v33);

    sub_1E10256F8(a2, v11, isUniquelyReferenced_nonNull_native);
    *v29 = v32;
    v27 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v27;
    *(a1 + 2) = a2[2];
    return 1;
  }
}