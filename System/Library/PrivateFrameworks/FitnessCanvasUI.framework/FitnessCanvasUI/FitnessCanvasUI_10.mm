uint64_t CanvasSectionHeader.hash(into:)(uint64_t a1, void *a2)
{
  sub_1E68B1820();
  sub_1E682ABCC(&qword_1EE2EDE98, MEMORY[0x1E6968858]);
  sub_1E68B3140();
  sub_1E68B3750();
  sub_1E68B3760();
  sub_1E68B3750();
  return sub_1E68B3760();
}

uint64_t CanvasSectionHeader.hashValue.getter(void *a1)
{
  sub_1E68B3B70();
  CanvasSectionHeader.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E683FD20(uint64_t a1, void *a2)
{
  sub_1E68B3B70();
  CanvasSectionHeader.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E683FD90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1E68B1820();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 24) - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 > v13)
  {
    v13 = v17;
  }

  v18 = *(v9 + 64);
  if (!v11)
  {
    ++v18;
  }

  v19 = *(v10 + 80);
  v20 = *(v14 + 80);
  v21 = *(v14 + 64);
  if (v16)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(*(v6 - 8) + 64) + v19;
  if (a2 <= v13)
  {
    goto LABEL_40;
  }

  v24 = v22 + ((v18 + v20 + (v23 & ~v19)) & ~v20);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v27 = ((a2 - v13 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v27 < 2)
    {
LABEL_39:
      if (v13)
      {
LABEL_40:
        if (v8 == v13)
        {
          v31 = *(v7 + 48);

          return v31(a1);
        }

        else
        {
          v33 = (a1 + v23) & ~v19;
          if (v12 == v13)
          {
            v34 = (*(v10 + 48))(v33, v11);
          }

          else
          {
            v34 = (*(v15 + 48))((v33 + v18 + v20) & ~v20, v16, *(a3 + 16), v7);
          }

          if (v34 >= 2)
          {
            return v34 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_39;
  }

LABEL_26:
  v28 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v28 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v29 = v24;
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v13 + (v30 | v28) + 1;
}

void sub_1E684007C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1E68B1820();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 24) - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a4 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  v19 = *(*(v8 - 8) + 64);
  v20 = *(v12 + 80);
  v21 = *(v17 + 80);
  v22 = v18 - 1;
  if (!v18)
  {
    v22 = 0;
  }

  if (v22 <= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = v22;
  }

  if (v13)
  {
    v24 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v24 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  if (v18)
  {
    v25 = *(v17 + 64);
  }

  else
  {
    v25 = *(v17 + 64) + 1;
  }

  v26 = ((v24 + v21 + ((v19 + v20) & ~v20)) & ~v21) + v25;
  if (a3 <= v23)
  {
    goto LABEL_29;
  }

  if (v26 <= 3)
  {
    v27 = ((a3 - v23 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v27))
    {
      v9 = 4;
      if (v23 >= a2)
      {
        goto LABEL_39;
      }

LABEL_30:
      v29 = ~v23 + a2;
      if (v26 >= 4)
      {
        bzero(a1, v26);
        *a1 = v29;
        v30 = 1;
        if (v9 > 1)
        {
          goto LABEL_72;
        }

        goto LABEL_69;
      }

      v30 = (v29 >> (8 * v26)) + 1;
      if (v26)
      {
        v31 = v29 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v31;
            if (v9 > 1)
            {
LABEL_72:
              if (v9 == 2)
              {
                *&a1[v26] = v30;
              }

              else
              {
                *&a1[v26] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v9 > 1)
            {
              goto LABEL_72;
            }
          }

LABEL_69:
          if (v9)
          {
            a1[v26] = v30;
          }

          return;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v9 > 1)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v27 >= 2)
    {
      v9 = v28;
    }

    else
    {
      v9 = 0;
    }

LABEL_29:
    if (v23 >= a2)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v9 = 1;
  if (v23 < a2)
  {
    goto LABEL_30;
  }

LABEL_39:
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&a1[v26] = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v9)
  {
    goto LABEL_45;
  }

  a1[v26] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v11 == v23)
  {
    v32 = *(v10 + 56);
    v33 = v8;
    v34 = a1;
    v35 = a2;
    v36 = v11;

LABEL_49:
    v32(v34, v35, v36, v33);
    return;
  }

  v37 = &a1[v19 + v20] & ~v20;
  if (v14 == v23)
  {
    v38 = *(v12 + 56);

    v38(v37, (a2 + 1));
  }

  else
  {
    v39 = (v37 + v24 + v21) & ~v21;
    if (v22 >= a2)
    {
      v32 = *(v17 + 56);
      v35 = (a2 + 1);
      v34 = ((v37 + v24 + v21) & ~v21);
      v36 = v18;
      v33 = v16;

      goto LABEL_49;
    }

    if (v25 <= 3)
    {
      v40 = ~(-1 << (8 * v25));
    }

    else
    {
      v40 = -1;
    }

    if (v25)
    {
      v41 = v40 & (~v22 + a2);
      if (v25 <= 3)
      {
        v42 = v25;
      }

      else
      {
        v42 = 4;
      }

      bzero(((v37 + v24 + v21) & ~v21), v25);
      if (v42 > 2)
      {
        if (v42 == 3)
        {
          *v39 = v41;
          *(v39 + 2) = BYTE2(v41);
        }

        else
        {
          *v39 = v41;
        }
      }

      else if (v42 == 1)
      {
        *v39 = v41;
      }

      else
      {
        *v39 = v41;
      }
    }
  }
}

uint64_t dispatch thunk of CanvasItemPlaceholderFetching.fetchPlaceholders(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E67825C0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderFetching.invalidateAllPlaceholders()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 128) + **(a2 + 128));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E6782994;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CanvasItemPlaceholderFetching.invalidatePlaceholders(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E6782994;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderFetching.transformResolvedItems<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 144) + **(a6 + 144));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E6782994;

  return v15(a1, a2, a3, a4, a5, a6);
}

void *sub_1E6840A10(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_1E68B3670();
  if (!v22)
  {
    return sub_1E68B3350();
  }

  v44 = v22;
  v48 = sub_1E68B38E0();
  v35 = sub_1E68B38F0();
  sub_1E68B38C0();
  result = sub_1E68B3660();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_1E68B36F0();
      v26 = v14;
      v27 = v14;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1E68B38D0();
      result = sub_1E68B36A0();
      ++v24;
      v14 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6840E30()
{
  sub_1E677AFF0(v0 + 128, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 128))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E6840EC0()
{
  sub_1E6840E30();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E6840F2C(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = v1;
  v2[42] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6840F74, v1, 0);
}

uint64_t sub_1E6840F74()
{
  v1 = v0[41];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 144) + **(v3 + 144));
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_1E68410A4;
  v5 = v0[40];

  return v7(v5, v2, v3);
}

uint64_t sub_1E68410A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 328);
  if (v1)
  {
    v6 = sub_1E684228C;
  }

  else
  {
    v6 = sub_1E68411D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E68411D8()
{
  v19 = v0;
  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v1 = sub_1E68B1AE0();
  *(v0 + 368) = __swift_project_value_buffer(v1, qword_1EE2F8440);
  swift_bridgeObjectRetain_n();

  v2 = sub_1E68B1AC0();
  v3 = sub_1E68B3740();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 336);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446466;
    v7 = sub_1E68436A8();
    v9 = v8;

    v10 = sub_1E683B478(v7, v9, &v18);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2048;
    v11 = *(v4 + 168);
    v12 = *(v4 + 152);
    *(v0 + 192) = *(v4 + 104);
    *(v0 + 200) = v12;
    *(v0 + 216) = v11;
    type metadata accessor for CanvasItemPlaceholder(0, v0 + 192);
    swift_getWitnessTable();
    v13 = sub_1E68B35B0();

    *(v5 + 14) = v13;

    _os_log_impl(&dword_1E6725000, v2, v3, "%{public}s fetching %ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E6952A70](v6, -1, -1);
    MEMORY[0x1E6952A70](v5, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v17 = (*(*(v0 + 328) + 112) + **(*(v0 + 328) + 112));
  v14 = swift_task_alloc();
  *(v0 + 376) = v14;
  *v14 = v0;
  v14[1] = sub_1E68414C8;
  v15 = *(v0 + 352);

  return v17(v15);
}

uint64_t sub_1E68414C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  v5 = *(v3 + 328);
  if (v1)
  {
    v6 = sub_1E68423BC;
  }

  else
  {
    v6 = sub_1E68415FC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E68415FC()
{
  v58 = v0;
  v1 = *(v0 + 392);
  v52 = *(v0 + 384);
  v2 = *(v0 + 336);
  *(v0 + 264) = *(v0 + 320);
  v3 = swift_task_alloc();
  v4 = v2[10];
  *(v0 + 400) = v4;
  v3[2] = v4;
  v5 = v2[11];
  *(v0 + 408) = v5;
  v3[3] = v5;
  v50 = v2[12];
  *(v0 + 416) = v50;
  v3[4] = v50;
  v6 = v2[13];
  *(v0 + 424) = v6;
  v3[5] = v6;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v55 = v7;
  v48 = v2[14];
  *(v0 + 432) = v48;
  v3[6] = v48;
  v46 = v2[15];
  *(v0 + 440) = v46;
  v3[7] = v46;
  v43 = v2[16];
  *(v0 + 448) = v43;
  v3[8] = v43;
  v42 = v2[17];
  *(v0 + 456) = v42;
  v3[9] = v42;
  v45 = v2[18];
  *(v0 + 464) = v45;
  v3[10] = v45;
  v8 = v2[19];
  *(v0 + 472) = v8;
  v3[11] = v8;
  v9 = v8;
  v40 = v8;
  v10 = v2[20];
  *(v0 + 480) = v10;
  v3[12] = v10;
  v39 = v10;
  v11 = v2[21];
  *(v0 + 488) = v11;
  v3[13] = v11;
  v44 = v2[22];
  *(v0 + 496) = v44;
  v3[14] = v44;
  v41 = v2[23];
  *(v0 + 504) = v41;
  v3[15] = v41;
  *(v0 + 160) = v6;
  *(v0 + 168) = v9;
  *(v0 + 176) = v10;
  *(v0 + 184) = v11;
  *(v0 + 512) = type metadata accessor for CanvasItemPlaceholder(255, v0 + 160);
  *(v0 + 520) = swift_getWitnessTable();
  v12 = sub_1E68B3630();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1E6840A10(sub_1E684391C, v3, v12, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

  *(v0 + 272) = v16;
  sub_1E68B33B0();
  swift_getWitnessTable();
  v17 = sub_1E68B3040();
  *(v0 + 16) = v55;
  *&v18 = v50;
  *(&v18 + 1) = v6;
  v19 = v18;
  v38 = v18;
  *&v18 = v48;
  *(&v18 + 1) = v46;
  *&v20 = v43;
  *(&v20 + 1) = v42;
  v47 = v20;
  *(v0 + 528) = v17;
  *(v0 + 288) = v52;
  *&v21 = v45;
  *(&v21 + 1) = v40;
  v49 = v21;
  v51 = v18;
  *&v22 = v39;
  *(&v22 + 1) = v11;
  v53 = v22;
  *(v0 + 32) = v19;
  *(v0 + 48) = v18;
  *(v0 + 80) = v21;
  *(v0 + 96) = v22;
  *(v0 + 64) = v20;
  *(v0 + 112) = v44;
  *(v0 + 120) = v41;
  type metadata accessor for CanvasItemDescriptor(0, v0 + 16);
  *(v0 + 296) = sub_1E68B3010();
  v23 = swift_task_alloc();
  *(v23 + 16) = v55;
  *(v23 + 32) = v38;
  *(v23 + 48) = v51;
  *(v23 + 64) = v47;
  *(v23 + 80) = v49;
  *(v23 + 96) = v53;
  *(v23 + 112) = v44;
  *(v23 + 120) = v41;
  *(v23 + 128) = v17;
  swift_getWitnessTable();
  *(v0 + 536) = sub_1E68B3630();
  sub_1E68B30E0();
  *(v0 + 544) = swift_getWitnessTable();
  sub_1E68B32F0();
  *(v0 + 552) = v1;

  v24 = *(v0 + 280);
  *(v0 + 560) = v24;
  swift_bridgeObjectRetain_n();

  v25 = sub_1E68B1AC0();
  v26 = sub_1E68B3740();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57[0] = v54;
    *v27 = 136446466;
    v28 = sub_1E68436A8();
    v30 = v29;

    v31 = sub_1E683B478(v28, v30, v57);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2048;
    v32 = sub_1E68B3060();

    *(v27 + 14) = v32;

    _os_log_impl(&dword_1E6725000, v25, v26, "%{public}s registering %ld resolved items(s)", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1E6952A70](v54, -1, -1);
    MEMORY[0x1E6952A70](v27, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v33 = *(v0 + 328);
  v34 = v33[19];
  v35 = v33[20];
  __swift_project_boxed_opaque_existential_1(v33 + 16, v34);
  v56 = (*(v35 + 152) + **(v35 + 152));
  v36 = swift_task_alloc();
  *(v0 + 568) = v36;
  *v36 = v0;
  v36[1] = sub_1E6841C3C;

  return v56(v24, v34, v35);
}

uint64_t sub_1E6841C3C()
{
  v1 = *(*v0 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1E6841D68, v1, 0);
}

uint64_t sub_1E6841D68()
{
  v36 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v33 = *(v0 + 352);
  *(v0 + 304) = *(v0 + 384);
  v4 = swift_task_alloc();
  v5 = *(v0 + 416);
  v6 = *(v0 + 432);
  v7 = *(v0 + 448);
  v8 = *(v0 + 464);
  v9 = *(v0 + 480);
  v10 = *(v0 + 496);
  *(v4 + 16) = *(v0 + 400);
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 80) = v8;
  *(v4 + 96) = v9;
  *(v4 + 112) = v10;
  *(v4 + 128) = v1;
  v11 = sub_1E68B32E0();

  *(v0 + 312) = v11;
  v12 = sub_1E68B33B0();
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x1E6951DC0](v0 + 312, v33, v3, v12, v2, WitnessTable);
  *(v0 + 576) = v14;

  if (sub_1E68B35B0() >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v15 = sub_1E68B1AC0();
    v16 = sub_1E68B3720();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35[0] = v18;
      *v17 = 136446722;
      v19 = sub_1E68436A8();
      v21 = v20;

      v22 = sub_1E683B478(v19, v21, v35);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2048;
      v23 = sub_1E68B35B0();

      *(v17 + 14) = v23;

      *(v17 + 22) = 2080;
      v24 = sub_1E68B3550();
      v26 = v25;
      swift_bridgeObjectRelease_n();
      v27 = sub_1E683B478(v24, v26, v35);

      *(v17 + 24) = v27;
      _os_log_impl(&dword_1E6725000, v15, v16, "%{public}s Unexpected missing placeholders (%ld) in fetchItemsForPlaceholders response: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E6952A70](v18, -1, -1);
      MEMORY[0x1E6952A70](v17, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  v28 = *(v0 + 328);
  v29 = v28[19];
  v30 = v28[20];
  __swift_project_boxed_opaque_existential_1(v28 + 16, v29);
  v34 = (*(v30 + 136) + **(v30 + 136));
  v31 = swift_task_alloc();
  *(v0 + 584) = v31;
  *v31 = v0;
  v31[1] = sub_1E6842178;

  return v34(v14, v29, v30);
}

uint64_t sub_1E6842178()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E684228C()
{
  v1 = *(v0 + 360);
  *(v0 + 256) = v1;
  MEMORY[0x1E6952820](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC0, &unk_1E68B7F50);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 224);
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    if (*(v0 + 248) != 1)
    {
      if (v2 >= 1)
      {
        MEMORY[0x1E6952810](v1);
        MEMORY[0x1E6952810](*(v0 + 256));
        v5 = *(v0 + 8);
        goto LABEL_7;
      }

      sub_1E68438C8();
      swift_allocError();
      *v6 = v2;
      *(v6 + 8) = v3;
      *(v6 + 16) = v4;
      *(v6 + 24) = 0;
      swift_willThrow();
      MEMORY[0x1E6952810](v1);
    }
  }

  MEMORY[0x1E6952810](*(v0 + 256));
  v5 = *(v0 + 8);
LABEL_7:

  return v5();
}

uint64_t sub_1E68423BC()
{
  v21 = v0;
  swift_bridgeObjectRetain_n();

  v1 = sub_1E68B1AC0();
  v2 = sub_1E68B3720();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 336);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446466;
    v6 = sub_1E68436A8();
    v8 = v7;

    v9 = sub_1E683B478(v6, v8, &v20);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2048;
    v10 = *(v3 + 168);
    v11 = *(v3 + 152);
    *(v0 + 128) = *(v3 + 104);
    *(v0 + 136) = v11;
    *(v0 + 152) = v10;
    type metadata accessor for CanvasItemPlaceholder(0, v0 + 128);
    swift_getWitnessTable();
    v12 = sub_1E68B35B0();

    *(v4 + 14) = v12;

    _os_log_impl(&dword_1E6725000, v1, v2, "%{public}s Failed to fetch placeholders placeholders (%ld)", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E6952A70](v5, -1, -1);
    MEMORY[0x1E6952A70](v4, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = *(v0 + 328);
  v14 = v13[19];
  v15 = v13[20];
  __swift_project_boxed_opaque_existential_1(v13 + 16, v14);
  v19 = (*(v15 + 160) + **(v15 + 160));
  v16 = swift_task_alloc();
  *(v0 + 592) = v16;
  *v16 = v0;
  v16[1] = sub_1E6842690;
  v17 = *(v0 + 352);

  return v19(v17, v14, v15);
}

uint64_t sub_1E6842690()
{
  v1 = *(*v0 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1E68427BC, v1, 0);
}

uint64_t sub_1E68427BC(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 392);
  *(v1 + 256) = v2;
  MEMORY[0x1E6952820](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC0, &unk_1E68B7F50);
  if (swift_dynamicCast())
  {
    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = *(v1 + 240);
    if (*(v1 + 248) != 1)
    {
      if (v3 >= 1)
      {
        MEMORY[0x1E6952810](v2);
        MEMORY[0x1E6952810](*(v1 + 256));
        v6 = *(v1 + 8);
        goto LABEL_7;
      }

      sub_1E68438C8();
      swift_allocError();
      *v7 = v3;
      *(v7 + 8) = v4;
      *(v7 + 16) = v5;
      *(v7 + 24) = 0;
      swift_willThrow();
      MEMORY[0x1E6952810](v2);
    }
  }

  MEMORY[0x1E6952810](*(v1 + 256));
  v6 = *(v1 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_1E68428F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, __int128 a6, uint64_t a7)
{
  v13 = a2;
  v14 = a6;
  v15 = a7;
  v10 = type metadata accessor for CanvasItemPlaceholder(255, &v13);
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  return (*(*(v10 - 8) + 16))(a3 + v11, a1, v10);
}

uint64_t sub_1E68429E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v42 = a3;
  v56 = a2;
  v41 = a1;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v48 = a9;
  v49 = a10;
  v50 = a11;
  v51 = a12;
  v52 = a13;
  v53 = a14;
  v54 = a15;
  v55 = a16;
  v40 = type metadata accessor for CanvasItemDescriptor(255, &v43);
  v17 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v39 = &v39 - v19;
  v43 = a7;
  v44 = a12;
  v45 = a13;
  v46 = a14;
  v20 = type metadata accessor for CanvasItemPlaceholder(255, &v43);
  v21 = sub_1E68B3750();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v39 - v24;
  v26 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v39 - v33;
  sub_1E68B3110();
  if ((*(v26 + 48))(v25, 1, v20) == 1)
  {
    return (*(v22 + 8))(v25, v21);
  }

  (*(v26 + 32))(v34, v25, v20);
  (*(v26 + 16))(v30, v34, v20);
  v37 = v39;
  v36 = v40;
  v38 = *(v40 - 8);
  (*(v38 + 16))(v39, v56, v40);
  (*(v38 + 56))(v37, 0, 1, v36);
  swift_getWitnessTable();
  sub_1E68B30E0();
  sub_1E68B3120();
  return (*(v26 + 8))(v34, v20);
}

uint64_t sub_1E6842D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6842D74, v4, 0);
}

uint64_t sub_1E6842D74()
{
  v1 = v0[6];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v10 = (*(v3 + 184) + **(v3 + 184));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E6842EA8;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, v5, v6, v2, v3);
}

uint64_t sub_1E6842EA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6842FBC()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v6 = (*(v3 + 168) + **(v3 + 168));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E68430E4;

  return v6(v2, v3);
}

uint64_t sub_1E68430E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E68431DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E68431FC, v1, 0);
}

uint64_t sub_1E68431FC()
{
  v1 = v0[3];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 176) + **(v3 + 176));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E684332C;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_1E684332C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6843424(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E67825C0;

  return sub_1E6840F2C(a1);
}

uint64_t sub_1E68434BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E6782994;

  return sub_1E6842F9C();
}

uint64_t sub_1E684354C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E6782994;

  return sub_1E68431DC(a1);
}

uint64_t sub_1E68435E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E6782994;

  return sub_1E6842D4C(a1, a2, a3, a4);
}

uint64_t sub_1E68436A8()
{
  sub_1E68B3820();
  MEMORY[0x1E6951A70](0xD00000000000001ELL, 0x80000001E68E2F80);
  v0 = sub_1E68B3C10();
  MEMORY[0x1E6951A70](v0);

  MEMORY[0x1E6951A70](8236, 0xE200000000000000);
  v1 = sub_1E68B3C10();
  MEMORY[0x1E6951A70](v1);

  MEMORY[0x1E6951A70](8236, 0xE200000000000000);
  v2 = sub_1E68B3C10();
  MEMORY[0x1E6951A70](v2);

  MEMORY[0x1E6951A70](8236, 0xE200000000000000);
  v3 = sub_1E68B3C10();
  MEMORY[0x1E6951A70](v3);

  MEMORY[0x1E6951A70](8236, 0xE200000000000000);
  v4 = sub_1E68B3C10();
  MEMORY[0x1E6951A70](v4);

  MEMORY[0x1E6951A70](32, 0xE100000000000000);
  v5 = sub_1E68B31B0();
  MEMORY[0x1E6951A70](v5);

  MEMORY[0x1E6951A70](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1E68438C8()
{
  result = qword_1EE2ECC08[0];
  if (!qword_1EE2ECC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2ECC08);
  }

  return result;
}

uint64_t sub_1E68439B8(uint64_t a1)
{
  v2 = *(v1 + 104);
  v4 = *(v1 + 40);
  v5 = *(v1 + 88);
  v6 = v2;
  type metadata accessor for CanvasItemPlaceholder(0, &v4);
  return sub_1E68B3110();
}

void *sub_1E6843A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_defaultActor_initialize();
  sub_1E677AFF0(a1, (v4 + 16));
  v4[14] = a2;
  v4[15] = a3;
  v8 = v4[19];
  v9 = v4[20];
  __swift_project_boxed_opaque_existential_1(v4 + 16, v8);
  v10 = *(v9 + 120);

  v10(v8, v9);
  return v4;
}

void *sub_1E6843ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[6];
  v11[0] = v3[5];
  v11[1] = v7;
  v8 = v3[8];
  v11[2] = v3[7];
  v11[3] = v8;
  v9 = v3[10];
  v11[4] = v3[9];
  v11[5] = v9;
  v11[6] = v3[11];
  type metadata accessor for CanvasItemPlaceholderFetcher(0, v11);
  swift_allocObject();
  return sub_1E6843A40(a1, a2, a3);
}

uint64_t sub_1E6843B60(uint64_t a1)
{
  result = sub_1E68B3750();
  if (v2 <= 0x3F)
  {
    result = sub_1E68B3750();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E6843C14(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v13;
  }

  v14 = *(v4 + 80);
  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_39;
  }

  v18 = v16 + ((v13 + v15 + ((v14 + 48) & ~v14)) & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 < 2)
    {
LABEL_39:
      v25 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 0x80000000) == 0)
      {
        v26 = *(v25 + 24);
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }

      v28 = (v25 + v14 + 32) & ~v14;
      if (v6 == v12)
      {
        if (v5 < 2)
        {
          return 0;
        }

        v29 = (*(v4 + 48))(v28);
      }

      else
      {
        v29 = (*(v8 + 48))((v28 + v13 + v15) & ~v15, v9, v7);
      }

      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_39;
  }

LABEL_26:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void sub_1E6843E9C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  if (v8)
  {
    v11 = v8 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 - 8);
  v13 = *(v10 + 84);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v8)
  {
    v20 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v20 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  if (v13)
  {
    v21 = v16;
  }

  else
  {
    v21 = v16 + 1;
  }

  v22 = ((v20 + v15 + ((v14 + 48) & ~v14)) & ~v15) + v21;
  v23 = a3 >= v19;
  v24 = a3 - v19;
  if (v24 == 0 || !v23)
  {
LABEL_30:
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v22 > 3)
  {
    v6 = 1;
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v25 = ((v24 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
  if (!HIWORD(v25))
  {
    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v6 = v26;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_30;
  }

  v6 = 4;
  if (v19 < a2)
  {
LABEL_31:
    v27 = ~v19 + a2;
    if (v22 < 4)
    {
      v28 = (v27 >> (8 * v22)) + 1;
      if (v22)
      {
        v29 = v27 & ~(-1 << (8 * v22));
        bzero(a1, v22);
        if (v22 != 3)
        {
          if (v22 == 2)
          {
            *a1 = v29;
            if (v6 > 1)
            {
LABEL_66:
              if (v6 == 2)
              {
                *(a1 + v22) = v28;
              }

              else
              {
                *(a1 + v22) = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v6 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v29;
        *(a1 + 2) = BYTE2(v29);
      }

      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v27;
      v28 = 1;
      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v6)
    {
      *(a1 + v22) = v28;
    }

    return;
  }

LABEL_40:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *(a1 + v22) = 0;
  }

  else if (v6)
  {
    *(a1 + v22) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  v30 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) != 0)
  {
    v31 = (v30 + v14 + 32) & ~v14;
    if (v11 == v19)
    {
      if (v8 >= 2)
      {
        v32 = *(v7 + 56);
        v33 = a2 + 1;

        v32(v31, v33);
      }
    }

    else
    {
      v34 = *(v12 + 56);
      v35 = (v31 + v20 + v15) & ~v15;
      v36 = a2 + 1;

      v34(v35, v36, v13, v9);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v30[2] = 0;
    v30[3] = 0;
    *v30 = a2 & 0x7FFFFFFF;
    v30[1] = 0;
  }

  else
  {
    v30[3] = a2 - 1;
  }
}

uint64_t sub_1E6844258@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a10;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4 & 1;
  *(a9 + 40) = a5;
  v22[0] = a8;
  v22[1] = a11;
  v22[2] = a12;
  v22[3] = a13;
  v16 = type metadata accessor for CanvasSectionHeaderView(0, v22);
  v17 = *(v16 + 60);
  v18 = sub_1E68B3750();
  (*(*(v18 - 8) + 32))(a9 + v17, a6, v18);
  v19 = *(v16 + 64);
  v20 = sub_1E68B3750();
  return (*(*(v20 - 8) + 32))(a9 + v19, a7, v20);
}

uint64_t sub_1E6844364@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_1E68B2440();
  v34 = a1 + 5;
  v3 = a1[2];
  sub_1E68B1E40();
  v32 = a1[4];
  v52 = v32;
  v53 = sub_1E6848CCC();
  v35 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8, &unk_1E68C3530);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018, &qword_1E68B4C88);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  sub_1E68B2E20();
  v31 = a1[3];
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v28[4] = sub_1E68B2CC0();
  v28[0] = sub_1E68B1E40();
  sub_1E68B3750();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v28[1] = sub_1E68B2CC0();
  v28[2] = sub_1E68B1E40();
  v28[3] = sub_1E68B2E20();
  v28[5] = sub_1E68B2220();
  v4 = sub_1E68B2B90();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v28 - v6;
  v8 = sub_1E68B1E40();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v28 - v14;
  *&v16 = v32;
  *(&v16 + 1) = *v34;
  *&v17 = v3;
  *(&v17 + 1) = v31;
  v37 = v17;
  v38 = v16;
  v39 = v33;
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v20 = MEMORY[0x1E697EBF8];
  v50 = v19;
  v51 = MEMORY[0x1E697EBF8];
  v21 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  v49 = v20;
  v22 = swift_getWitnessTable();
  v45 = MEMORY[0x1E6981CD0];
  v46 = v21;
  v47 = v22;
  v23 = swift_getWitnessTable();
  v43 = WitnessTable;
  v44 = v23;
  v24 = swift_getWitnessTable();
  sub_1E68B2B80();
  sub_1E68B2520();
  v42 = v24;
  v25 = swift_getWitnessTable();
  sub_1E68B2A70();
  (*(v29 + 8))(v7, v4);
  v40 = v25;
  v41 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v26 = *(v30 + 8);
  v26(v11, v8);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v26)(v15, v8);
}

uint64_t sub_1E68449FC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v73 = a6;
  sub_1E68B2440();
  sub_1E68B1E40();
  v68 = a4;
  v102 = a4;
  v103 = sub_1E6848CCC();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8, &unk_1E68C3530);
  sub_1E68B2220();
  v67 = a3;
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v77 = sub_1E68B2CC0();
  v10 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018, &qword_1E68B4C88);
  sub_1E68B3750();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v75 = sub_1E68B2CC0();
  v78 = v10;
  v76 = sub_1E68B1E40();
  v11 = sub_1E68B2E20();
  v66 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v65 = v64 - v17;
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  sub_1E68B2E20();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v18 = sub_1E68B2CC0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v64 - v25;
  v74 = v11;
  v72 = sub_1E68B2220();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v27);
  v70 = v64 - v28;
  if (*a1 > 6u)
  {
    v39 = sub_1E68B2E00();
    v64[1] = v64;
    MEMORY[0x1EEE9AC00](v39, v40);
    v64[0] = &v64[-8];
    v41 = v67;
    v64[-6] = a2;
    v64[-5] = v41;
    MEMORY[0x1EEE9AC00](v42, v43);
    v64[-6] = a2;
    v64[-5] = v44;
    WitnessTable = swift_getWitnessTable();
    v45 = MEMORY[0x1E697EBF8];
    v101 = MEMORY[0x1E697EBF8];
    v46 = swift_getWitnessTable();
    v98 = swift_getWitnessTable();
    v99 = v45;
    v47 = swift_getWitnessTable();
    v62 = v46;
    v63 = v47;
    v48 = MEMORY[0x1E6981CD0];
    v61 = MEMORY[0x1E6981CD0];
    sub_1E68B2E10();
    v95 = v48;
    v96 = v46;
    v97 = v47;
    v49 = v74;
    v50 = swift_getWitnessTable();
    v51 = v65;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v52 = *(v66 + 8);
    v52(v14, v49);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v53 = swift_getWitnessTable();
    v38 = v70;
    sub_1E6744DB8(v14, v18, v49, v53, v50);
    v52(v14, v49);
    v52(v51, v49);
  }

  else
  {
    v29 = sub_1E68B21D0();
    MEMORY[0x1EEE9AC00](v29, *(a1 + 1));
    v30 = v67;
    v64[-6] = a2;
    v64[-5] = v30;
    v61 = v68;
    v62 = v69;
    v63 = a1;
    sub_1E68B2CB0();
    v31 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v32 = *(v19 + 8);
    v32(v22, v18);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v84 = swift_getWitnessTable();
    v33 = MEMORY[0x1E697EBF8];
    v85 = MEMORY[0x1E697EBF8];
    v34 = swift_getWitnessTable();
    v82 = swift_getWitnessTable();
    v83 = v33;
    v35 = swift_getWitnessTable();
    v79 = MEMORY[0x1E6981CD0];
    v80 = v34;
    v81 = v35;
    v36 = v74;
    v37 = swift_getWitnessTable();
    v38 = v70;
    sub_1E6744CC0(v22, v18, v36, v31, v37);
    v32(v22, v18);
    v32(v26, v18);
  }

  v54 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  v55 = MEMORY[0x1E697EBF8];
  v94 = MEMORY[0x1E697EBF8];
  v56 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v92 = v55;
  v57 = swift_getWitnessTable();
  v88 = MEMORY[0x1E6981CD0];
  v89 = v56;
  v90 = v57;
  v58 = swift_getWitnessTable();
  v86 = v54;
  v87 = v58;
  v59 = v72;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v71 + 8))(v38, v59);
}

uint64_t sub_1E684545C@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a5;
  v81 = a6;
  v80 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v67 = &v66 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v66 = &v66 - v16;
  v83 = sub_1E68B3750();
  v85 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v17);
  v82 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v76 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v86 = &v66 - v24;
  sub_1E68B2440();
  sub_1E68B1E40();
  v25 = sub_1E6848CCC();
  v111 = a4;
  v112 = v25;
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8, &unk_1E68C3530);
  v79 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018, &qword_1E68B4C88);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  v26 = sub_1E68B2E20();
  v84 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v66 - v32;
  sub_1E68B2E00();
  v34 = a2;
  v69 = a3;
  v70 = a2;
  v93 = a2;
  v94 = a3;
  v71 = a4;
  v72 = a1;
  v35 = v87;
  v95 = a4;
  v96 = v87;
  v97 = a1;
  v88 = v34;
  v89 = a3;
  v90 = a4;
  v91 = v87;
  v92 = a1;
  WitnessTable = swift_getWitnessTable();
  v37 = sub_1E6848DCC();
  v109 = WitnessTable;
  v110 = v37;
  v38 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v39 = MEMORY[0x1E6981CD0];
  sub_1E68B2E10();
  v106 = v39;
  v107 = v38;
  v108 = v65;
  v40 = swift_getWitnessTable();
  v77 = v33;
  v73 = v40;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v41 = *(v84 + 8);
  v78 = v29;
  v79 = v26;
  v74 = v41;
  v75 = v84 + 8;
  v41(v29, v26);
  v42 = v69;
  v102 = v70;
  v103 = v69;
  v104 = v71;
  v105 = v35;
  v43 = type metadata accessor for CanvasSectionHeaderView(0, &v102);
  v44 = &v72[*(v43 + 60)];
  v45 = v76;
  v46 = v83;
  v72 = *(v85 + 16);
  (v72)(v76, v44);
  v47 = v80;
  v48 = v45;
  v49 = v42;
  if ((*(v80 + 48))(v45, 1, v42) == 1)
  {
    v50 = *(v85 + 8);
    v50(v45, v46);
    v51 = v47[7];
    v52 = v82;
    v51(v82, 1, 1, v49);
    sub_1E67FDFA4(v52, v86);
    v50(v52, v46);
  }

  else
  {
    v53 = v47;
    v71 = v47[4];
    v54 = v66;
    v71(v66, v48, v49);
    v55 = v67;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v56 = v47[1];
    v56(v54, v49);
    v57 = v68;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v56(v55, v49);
    v52 = v82;
    v58 = v83;
    v71(v82, v57, v49);
    (v53[7])(v52, 0, 1, v49);
    sub_1E67FDFA4(v52, v86);
    v50 = *(v85 + 8);
    v46 = v58;
    v50(v52, v58);
  }

  v59 = v77;
  v60 = v78;
  v61 = v79;
  (*(v84 + 16))(v78, v77, v79);
  v102 = v60;
  v62 = v86;
  (v72)(v52, v86, v46);
  v103 = v52;
  v101[0] = v61;
  v101[1] = v46;
  v98 = v87;
  v99 = v73;
  v100 = swift_getWitnessTable();
  sub_1E6848F14(&v102, 2uLL, v101);
  v50(v62, v46);
  v63 = v74;
  v74(v59, v61);
  v50(v52, v46);
  return v63(v60, v61);
}

uint64_t sub_1E6845C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a6;
  v64 = a5;
  v56 = a3;
  v57 = a1;
  sub_1E68B2440();
  v8 = sub_1E68B1E40();
  v67[4] = a4;
  v67[5] = sub_1E6848CCC();
  WitnessTable = swift_getWitnessTable();
  v53 = v8;
  v9 = sub_1E68B2C50();
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v54 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998E8, &unk_1E68C3530);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50 - v18;
  v20 = sub_1E68B3750();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v50 - v23;
  v25 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v51 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v16;
  v29 = v56;
  v30 = sub_1E68B2220();
  v61 = *(v30 - 8);
  v62 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v58 = &v50 - v32;
  v67[0] = a2;
  v67[1] = v29;
  v60 = a4;
  v67[2] = a4;
  v33 = v57;
  v67[3] = v64;
  v34 = type metadata accessor for CanvasSectionHeaderView(0, v67);
  (*(v21 + 16))(v24, v33 + *(v34 + 64), v20);
  if ((*(v25 + 48))(v24, 1, a2) == 1)
  {
    (*(v21 + 8))(v24, v20);
    *v19 = sub_1E68B2140();
    *(v19 + 1) = 0;
    v19[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998F0, &unk_1E68C3540);
    sub_1E6847D54(v33);
    v35 = swift_getWitnessTable();
    v36 = sub_1E6848DCC();
    v37 = v58;
    sub_1E6744DB8(v19, v9, v59, v35, v36);
    sub_1E6744A10(v19, &qword_1ED0998E8, &unk_1E68C3530);
  }

  else
  {
    v38 = v51;
    (*(v25 + 32))(v51, v24, a2);
    v39 = sub_1E68B2140();
    MEMORY[0x1EEE9AC00](v39, v40);
    *(&v50 - 6) = a2;
    *(&v50 - 5) = v29;
    v41 = v64;
    *(&v50 - 4) = v60;
    *(&v50 - 3) = v41;
    *(&v50 - 2) = v38;
    sub_1E68B2C40();
    v42 = swift_getWitnessTable();
    v43 = v54;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v44 = *(v55 + 8);
    v44(v12, v9);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v45 = sub_1E6848DCC();
    v37 = v58;
    sub_1E6744CC0(v12, v9, v59, v42, v45);
    v44(v12, v9);
    v44(v43, v9);
    (*(v25 + 8))(v38, a2);
  }

  v46 = swift_getWitnessTable();
  v47 = sub_1E6848DCC();
  v65 = v46;
  v66 = v47;
  v48 = v62;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v61 + 8))(v37, v48);
}

uint64_t sub_1E684624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[0] = a5;
  v21[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018, &qword_1E68B4C88);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v10 = sub_1E68B2C50();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v21 - v17;
  sub_1E68B2140();
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = a4;
  v21[7] = v21[0];
  v21[8] = a1;
  sub_1E68B2C40();
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v19 = *(v11 + 8);
  v19(v14, v10);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v19)(v18, v10);
}

uint64_t sub_1E6846490@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a5;
  v74 = a4;
  v75 = a3;
  v86 = a6;
  swift_getTupleTypeMetadata2();
  v8 = sub_1E68B2F00();
  v81 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v68 = &v65 - v10;
  v73 = sub_1E68B3750();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v11);
  v71 = &v65 - v12;
  v70 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v13, v14);
  v67 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v66 = &v65 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v65 = &v65 - v21;
  v85 = v8;
  v84 = sub_1E68B3750();
  v79 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v22);
  v83 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v82 = &v65 - v26;
  v27 = sub_1E68B21B0();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097018, &qword_1E68B4C88);
  MEMORY[0x1EEE9AC00](v77, v32);
  v80 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v65 - v36;
  v69 = a1;
  v39 = *(a1 + 16);
  v38 = *(a1 + 24);
  v40 = *(a1 + 32);
  v41 = *(a1 + 40);
  v94 = v39;
  v95 = v38;
  LOBYTE(v96) = v40;
  v97 = v41;
  sub_1E673F26C(v39, v38, v40);

  sub_1E68B21A0();
  v78 = v37;
  sub_1E68B2950();
  v42 = v74;
  (*(v28 + 8))(v31, v27);
  v43 = v72;
  v44 = v38;
  v45 = v73;
  v46 = v40;
  v47 = v70;
  sub_1E673F0D4(v39, v44, v46);
  v48 = v71;

  v94 = a2;
  v95 = v75;
  v96 = v42;
  v97 = v76;
  v49 = type metadata accessor for CanvasSectionHeaderView(0, &v94);
  (*(v43 + 16))(v48, v69 + *(v49 + 64), v45);
  if ((*(v47 + 48))(v48, 1, a2) == 1)
  {
    (*(v43 + 8))(v48, v45);
    v50 = v83;
    (*(v81 + 56))(v83, 1, 1, v85);
  }

  else
  {
    v51 = v65;
    (*(v47 + 32))(v65, v48, a2);
    v52 = v66;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v87 = 0;
    v88 = 1;
    v94 = &v87;
    v53 = v67;
    (*(v47 + 16))(v67, v52, a2);
    v95 = v53;
    v92 = MEMORY[0x1E6981840];
    v93 = a2;
    v90 = MEMORY[0x1E6981838];
    v91 = v42;
    v54 = v68;
    sub_1E6848F14(&v94, 2uLL, &v92);
    v55 = *(v47 + 8);
    v55(v52, a2);
    v55(v51, a2);
    v55(v53, a2);
    v56 = v81;
    v50 = v83;
    v57 = v85;
    (*(v81 + 32))(v83, v54, v85);
    (*(v56 + 56))(v50, 0, 1, v57);
  }

  swift_getWitnessTable();
  v58 = v82;
  sub_1E67FDFA4(v50, v82);
  v59 = v79;
  v60 = *(v79 + 8);
  v61 = v84;
  v60(v50, v84);
  v62 = v78;
  v63 = v80;
  sub_1E6848E48(v78, v80);
  v94 = v63;
  (*(v59 + 16))(v50, v58, v61);
  v95 = v50;
  v92 = v77;
  v93 = v61;
  v90 = sub_1E6761364();
  WitnessTable = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  sub_1E6848F14(&v94, 2uLL, &v92);
  v60(v58, v61);
  sub_1E6744A10(v62, &qword_1ED097018, &qword_1E68B4C88);
  v60(v50, v61);
  return sub_1E6744A10(v63, &qword_1ED097018, &qword_1E68B4C88);
}

uint64_t sub_1E6846C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a1;
  v28 = a5;
  v25 = a4;
  v26 = a2;
  v30 = a6;
  sub_1E68B2440();
  sub_1E68B1E40();
  v38 = a4;
  v39 = sub_1E6848CCC();
  v29 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8, &unk_1E68C3530);
  sub_1E68B2220();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v8 = sub_1E68B2CC0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - v11;
  v13 = sub_1E68B1E40();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v25 - v20;
  sub_1E68B21D0();
  v31 = v26;
  v32 = a3;
  v33 = v25;
  v34 = v28;
  v35 = v27;
  sub_1E68B2CB0();
  sub_1E68B2E90();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v9 + 8))(v12, v8);
  v36 = WitnessTable;
  v37 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v22 = *(v14 + 8);
  v22(v17, v13);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v22)(v21, v13);
}

uint64_t sub_1E6847034@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v112 = a5;
  v107 = a6;
  v108 = a4;
  v110 = a1;
  v103 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v94 = &v87 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v93 = &v87 - v15;
  v106 = sub_1E68B3750();
  v109 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v16);
  v105 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v97 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v104 = &v87 - v23;
  sub_1E68B2440();
  v24 = sub_1E68B1E40();
  v25 = sub_1E6848CCC();
  v123 = a4;
  v124 = v25;
  WitnessTable = swift_getWitnessTable();
  v90 = v24;
  v89 = WitnessTable;
  v27 = sub_1E68B2C50();
  v92 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v91 = &v87 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998E8, &unk_1E68C3530);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v87 - v36;
  v38 = sub_1E68B3750();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v87 - v41;
  v43 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v44, v45);
  v88 = &v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v34;
  v101 = sub_1E68B2220();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v47);
  v99 = &v87 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v87 - v51;
  v119 = a2;
  v120 = a3;
  v111 = a3;
  v121 = v108;
  v122 = v112;
  v53 = type metadata accessor for CanvasSectionHeaderView(0, &v119);
  (*(v39 + 16))(v42, &v110[*(v53 + 64)], v38);
  if ((*(v43 + 48))(v42, 1, a2) == 1)
  {
    (*(v39 + 8))(v42, v38);
    *v37 = sub_1E68B2140();
    *(v37 + 1) = 0;
    v37[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998F0, &unk_1E68C3540);
    sub_1E6847D54(v110);
    v54 = swift_getWitnessTable();
    v55 = sub_1E6848DCC();
    sub_1E6744DB8(v37, v27, v96, v54, v55);
    sub_1E6744A10(v37, &qword_1ED0998E8, &unk_1E68C3530);
    v56 = v52;
  }

  else
  {
    v57 = v88;
    (*(v43 + 32))(v88, v42, a2);
    v58 = sub_1E68B2140();
    MEMORY[0x1EEE9AC00](v58, v59);
    v60 = v111;
    *(&v87 - 6) = a2;
    *(&v87 - 5) = v60;
    v61 = v112;
    *(&v87 - 4) = v108;
    *(&v87 - 3) = v61;
    *(&v87 - 2) = v57;
    sub_1E68B2C40();
    v62 = swift_getWitnessTable();
    v108 = v53;
    v63 = v91;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v56 = v52;
    v64 = *(v92 + 8);
    v64(v30, v27);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v65 = sub_1E6848DCC();
    sub_1E6744CC0(v30, v27, v96, v62, v65);
    v64(v30, v27);
    v66 = v63;
    v53 = v108;
    v64(v66, v27);
    (*(v43 + 8))(v57, a2);
  }

  v102 = v27;
  v98 = v56;
  v67 = &v110[*(v53 + 60)];
  v68 = v97;
  v69 = v106;
  v110 = *(v109 + 16);
  (v110)(v97, v67, v106);
  v70 = v103;
  if ((*(v103 + 48))(v68, 1, v111) == 1)
  {
    v71 = *(v109 + 8);
    v71(v68, v69);
    v72 = v105;
    (*(v70 + 56))(v105, 1, 1, v111);
    v73 = v104;
    sub_1E67FDFA4(v72, v104);
  }

  else
  {
    v108 = *(v70 + 32);
    v74 = v93;
    v75 = v111;
    v108(v93, v68, v111);
    v76 = v94;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v77 = *(v70 + 8);
    v77(v74, v75);
    v78 = v95;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v77(v76, v75);
    v72 = v105;
    v108(v105, v78, v75);
    (*(v70 + 56))(v72, 0, 1, v75);
    v73 = v104;
    sub_1E67FDFA4(v72, v104);
    v71 = *(v109 + 8);
  }

  v71(v72, v69);
  v79 = v100;
  v80 = v99;
  v81 = v98;
  v82 = v101;
  (*(v100 + 16))(v99, v98, v101);
  v119 = v80;
  (v110)(v72, v73, v69);
  v120 = v72;
  v118[0] = v82;
  v118[1] = v69;
  v83 = swift_getWitnessTable();
  v84 = sub_1E6848DCC();
  v114 = v83;
  v115 = v84;
  v116 = swift_getWitnessTable();
  v113 = v112;
  v117 = swift_getWitnessTable();
  sub_1E6848F14(&v119, 2uLL, v118);
  v71(v73, v69);
  v85 = *(v79 + 8);
  v85(v81, v82);
  v71(v72, v69);
  return (v85)(v80, v82);
}

uint64_t sub_1E6847B2C@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v4 = sub_1E68B21B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B2440();
  v9 = sub_1E68B1E40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v21 - v16;
  sub_1E68B21A0();
  sub_1E68B2950();
  (*(v5 + 8))(v8, v4);
  v18 = sub_1E6848CCC();
  v21[2] = a2;
  v21[3] = v18;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v19 = *(v10 + 8);
  v19(v13, v9);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v19)(v17, v9);
}

uint64_t sub_1E6847D54(uint64_t a1)
{
  v2 = sub_1E68B21B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12[0] = v7;
  v12[1] = v8;
  v13 = v9;
  v14 = v10;
  sub_1E673F26C(v7, v8, v9);

  sub_1E68B21A0();
  sub_1E68B2950();
  (*(v3 + 8))(v6, v2);
  sub_1E673F0D4(v7, v8, v9);
}

uint64_t sub_1E6847EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a4;
  v28 = a5;
  v25 = a3;
  v26 = a1;
  v29 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018, &qword_1E68B4C88);
  sub_1E68B3750();
  sub_1E68B3750();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v7 = sub_1E68B2CC0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - v10;
  v12 = sub_1E68B1E40();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v24 - v19;
  sub_1E68B21D0();
  v30 = a2;
  v31 = v25;
  v32 = v27;
  v33 = v28;
  v34 = v26;
  sub_1E68B2CB0();
  sub_1E68B2E90();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v8 + 8))(v11, v7);
  v35 = WitnessTable;
  v36 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v21 = *(v13 + 8);
  v21(v16, v12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v21)(v20, v12);
}

uint64_t sub_1E68481F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v126 = a5;
  v128 = a4;
  v106 = a3;
  v119 = a6;
  v120 = a2;
  v115 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v105 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v104 = &v98 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v103 = &v98 - v14;
  v118 = sub_1E68B3750();
  v114 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v15);
  v117 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v113 = &v98 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v116 = &v98 - v22;
  v110 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v23, v24);
  v102 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v101 = &v98 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v100 = &v98 - v31;
  v125 = sub_1E68B3750();
  v127 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v32);
  v121 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v107 = &v98 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v124 = &v98 - v39;
  v40 = sub_1E68B21B0();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097018, &qword_1E68B4C88);
  MEMORY[0x1EEE9AC00](v112, v45);
  v123 = &v98 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v98 - v49;
  v51 = *(a1 + 16);
  v52 = *(a1 + 24);
  v53 = *(a1 + 32);
  v54 = *(a1 + 40);
  v135 = v51;
  v136 = v52;
  LOBYTE(v137) = v53;
  v138 = v54;
  sub_1E673F26C(v51, v52, v53);

  sub_1E68B21A0();
  v122 = v50;
  sub_1E68B2950();
  v55 = v40;
  v56 = v126;
  (*(v41 + 8))(v44, v55);
  v57 = v106;
  v58 = v51;
  v59 = v110;
  v60 = v52;
  v61 = v127;
  v62 = v53;
  v63 = v125;
  sub_1E673F0D4(v58, v60, v62);
  v64 = v120;

  v135 = v64;
  v136 = v57;
  v137 = v128;
  v138 = v56;
  v65 = type metadata accessor for CanvasSectionHeaderView(0, &v135);
  v66 = *(v65 + 60);
  v67 = *(v61 + 16);
  v111 = a1;
  v68 = v107;
  v109 = v61 + 16;
  v108 = v67;
  v67(v107, a1 + v66, v63);
  if ((v59[6])(v68, 1, v57) == 1)
  {
    v69 = *(v61 + 8);
    (v69)(v68, v63);
    v70 = v121;
    v59[7](v121, 1, 1, v57);
    sub_1E67FDFA4(v70, v124);
    v110 = v69;
    (v69)(v70, v63);
  }

  else
  {
    v71 = v59[4];
    v99 = v65;
    v72 = v100;
    (v71)(v100, v68, v57);
    v73 = v101;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v74 = v59[1];
    (v74)(v72, v57);
    v75 = v102;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    (v74)(v73, v57);
    v64 = v120;
    v70 = v121;
    v76 = v75;
    v65 = v99;
    (v71)(v121, v76, v57);
    v59[7](v70, 0, 1, v57);
    sub_1E67FDFA4(v70, v124);
    v110 = *(v127 + 8);
    (v110)(v70, v63);
  }

  v77 = v114;
  v78 = *(v114 + 16);
  v79 = v111 + *(v65 + 64);
  v80 = v113;
  v81 = v118;
  v111 = v114 + 16;
  v107 = v78;
  (v78)(v113, v79, v118);
  v82 = v115;
  if ((*(v115 + 48))(v80, 1, v64) == 1)
  {
    v83 = v80;
    v84 = *(v77 + 8);
    v84(v83, v81);
    v85 = v117;
    (*(v82 + 56))(v117, 1, 1, v64);
    v86 = v116;
    sub_1E67FDFA4(v85, v116);
  }

  else
  {
    v106 = *(v82 + 32);
    v87 = v103;
    v106(v103, v80, v64);
    v88 = v104;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v89 = *(v82 + 8);
    v89(v87, v64);
    v90 = v105;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v89(v88, v64);
    v85 = v117;
    v106(v117, v90, v64);
    (*(v82 + 56))(v85, 0, 1, v64);
    v86 = v116;
    v70 = v121;
    sub_1E67FDFA4(v85, v116);
    v84 = *(v77 + 8);
  }

  v84(v85, v81);
  v91 = v123;
  sub_1E6848E48(v122, v123);
  v135 = v91;
  v93 = v124;
  v92 = v125;
  v108(v70, v124, v125);
  v136 = v70;
  (v107)(v85, v86, v81);
  v137 = v85;
  v134[0] = v112;
  v134[1] = v92;
  v134[2] = v81;
  v94 = sub_1E6761364();
  v130 = v126;
  v131 = v94;
  WitnessTable = swift_getWitnessTable();
  v129 = v128;
  v133 = swift_getWitnessTable();
  sub_1E6848F14(&v135, 3uLL, v134);
  v84(v86, v81);
  v95 = v93;
  v96 = v110;
  (v110)(v95, v92);
  sub_1E6744A10(v122, &qword_1ED097018, &qword_1E68B4C88);
  v84(v85, v81);
  (v96)(v70, v92);
  return sub_1E6744A10(v123, &qword_1ED097018, &qword_1E68B4C88);
}

unint64_t sub_1E6848CCC()
{
  result = qword_1EE2EA588;
  if (!qword_1EE2EA588)
  {
    sub_1E68B2440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA588);
  }

  return result;
}

unint64_t sub_1E6848DCC()
{
  result = qword_1EE2EA528;
  if (!qword_1EE2EA528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8, &unk_1E68C3530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA528);
  }

  return result;
}

uint64_t sub_1E6848E48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097018, &qword_1E68B4C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6848F14(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1E68B2F10();
}

uint64_t sub_1E68490E4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22, uint64_t a23)
{
  v27 = *a2;
  v28 = *(a1 + 208);
  *(a9 + 192) = *(a1 + 192);
  *(a9 + 208) = v28;
  *(a9 + 224) = *(a1 + 224);
  *(a9 + 240) = *(a1 + 240);
  v29 = *(a1 + 144);
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = v29;
  v30 = *(a1 + 176);
  *(a9 + 160) = *(a1 + 160);
  *(a9 + 176) = v30;
  v31 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v31;
  v32 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v32;
  v33 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v33;
  v34 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v34;
  v46[0] = a19;
  v46[1] = a20;
  v46[2] = a21;
  v47 = a22;
  v48 = a23;
  v35 = type metadata accessor for ActionCardView(0, v46);
  *(a9 + v35[21]) = v27;
  (*(*(a19 - 8) + 32))(a9 + v35[17], a3, a19);
  v36 = (a9 + v35[18]);
  *v36 = a4;
  v36[1] = a5;
  v36[2] = a6;
  v36[3] = a7;
  v37 = a9 + v35[19];
  *v37 = a8;
  *(v37 + 8) = a10;
  *(v37 + 24) = a11;
  v38 = a9 + v35[20];
  *v38 = a12;
  *(v38 + 16) = a13;
  *(v38 + 24) = a14;
  (*(*(a20 - 8) + 32))(a9 + v35[22], a15, a20);
  v39 = v35[23];
  v40 = sub_1E68B3750();
  (*(*(v40 - 8) + 32))(a9 + v39, a16, v40);
  v41 = (a9 + v35[24]);
  result = swift_allocObject();
  *(result + 16) = a17;
  *(result + 24) = a18;
  *v41 = sub_1E673F5E0;
  v41[1] = result;
  return result;
}

double static ActionCardViewLayout.mirroredCard.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EB380 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1EE2EB458;
  *(a1 + 192) = xmmword_1EE2EB448;
  *(a1 + 208) = v1;
  *(a1 + 224) = xmmword_1EE2EB468;
  *(a1 + 240) = qword_1EE2EB478;
  v2 = unk_1EE2EB418;
  *(a1 + 128) = xmmword_1EE2EB408;
  *(a1 + 144) = v2;
  v3 = unk_1EE2EB438;
  *(a1 + 160) = xmmword_1EE2EB428;
  *(a1 + 176) = v3;
  v4 = unk_1EE2EB3D8;
  *(a1 + 64) = xmmword_1EE2EB3C8;
  *(a1 + 80) = v4;
  v5 = unk_1EE2EB3F8;
  *(a1 + 96) = xmmword_1EE2EB3E8;
  *(a1 + 112) = v5;
  v6 = unk_1EE2EB398;
  *a1 = xmmword_1EE2EB388;
  *(a1 + 16) = v6;
  result = *&xmmword_1EE2EB3A8;
  v8 = unk_1EE2EB3B8;
  *(a1 + 32) = xmmword_1EE2EB3A8;
  *(a1 + 48) = v8;
  return result;
}

__n128 ActionCardViewLayout.titlePadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  v3 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ActionCardViewLayout.subtitlePadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 88);
  v3 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ActionCardViewLayout.captionPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  v3 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ActionCardViewLayout.primaryButtonPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 152);
  v3 = *(v1 + 168);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ActionCardViewLayout.secondaryButtonPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 184);
  v3 = *(v1 + 200);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ActionCardViewLayout.init(aspectRatio:mirroredArtworkAspectRatio:cornerRadius:mirrorHeightPercentage:platterCornerRadius:titlePadding:subtitlePadding:captionPadding:primaryButtonPadding:secondaryButtonPadding:titleLineLimit:subtitleLineLimit:captionLineLimit:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, uint64_t a17)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  *(a9 + 40) = a15;
  *(a9 + 48) = a16;
  v17 = a1[1];
  *(a9 + 56) = *a1;
  *(a9 + 72) = v17;
  v18 = a2[1];
  *(a9 + 88) = *a2;
  *(a9 + 104) = v18;
  v19 = a3[1];
  *(a9 + 120) = *a3;
  *(a9 + 136) = v19;
  v20 = a4[1];
  *(a9 + 152) = *a4;
  *(a9 + 168) = v20;
  result = *a5;
  v22 = *(a5 + 16);
  *(a9 + 184) = *a5;
  *(a9 + 200) = v22;
  *(a9 + 216) = a6;
  *(a9 + 224) = a7;
  *(a9 + 232) = a8 & 1;
  *(a9 + 240) = a17;
  return result;
}

double sub_1E68494F0@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1E68B2DF0();
  v4 = sub_1E68B2DF0();
  v5 = 14.0;
  if (v3)
  {
    if (v4)
    {
      sub_1E68B1A50();
      v5 = v6;
    }

    v7 = sub_1E68B2DF0();
    v8 = 18.0;
    if ((v7 & 1) == 0)
    {
      v8 = 12.0;
    }

    v9 = xmmword_1E68C3560;
  }

  else
  {
    if (v4)
    {
      sub_1E68B1A50();
      v5 = v10;
    }

    v11 = sub_1E68B2DF0();
    v8 = 18.0;
    if ((v11 & 1) == 0)
    {
      v8 = 12.0;
    }

    v9 = xmmword_1E68C3550;
  }

  *a2 = xmmword_1E68C3570;
  *(a2 + 16) = xmmword_1E68C3580;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0x3FD75C28F5C28F5CLL;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0x4000000000000000;
  *(a2 + 80) = v9;
  *(a2 + 88) = 0;
  *(a2 + 96) = v9;
  *(a2 + 104) = 0x4014000000000000;
  *(a2 + 112) = v9;
  *(a2 + 120) = 0;
  *(a2 + 128) = v9;
  *(a2 + 144) = v9;
  *(a2 + 152) = xmmword_1E68C3590;
  *(a2 + 168) = xmmword_1E68C35A0;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *&result = 3;
  *(a2 + 216) = xmmword_1E68C35B0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  return result;
}

double static ActionCardViewLayout.fullCard.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EB580 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1EE2EB658;
  *(a1 + 192) = xmmword_1EE2EB648;
  *(a1 + 208) = v1;
  *(a1 + 224) = xmmword_1EE2EB668;
  *(a1 + 240) = qword_1EE2EB678;
  v2 = unk_1EE2EB618;
  *(a1 + 128) = xmmword_1EE2EB608;
  *(a1 + 144) = v2;
  v3 = unk_1EE2EB638;
  *(a1 + 160) = xmmword_1EE2EB628;
  *(a1 + 176) = v3;
  v4 = unk_1EE2EB5D8;
  *(a1 + 64) = xmmword_1EE2EB5C8;
  *(a1 + 80) = v4;
  v5 = unk_1EE2EB5F8;
  *(a1 + 96) = xmmword_1EE2EB5E8;
  *(a1 + 112) = v5;
  v6 = unk_1EE2EB598;
  *a1 = xmmword_1EE2EB588;
  *(a1 + 16) = v6;
  result = *&xmmword_1EE2EB5A8;
  v8 = unk_1EE2EB5B8;
  *(a1 + 32) = xmmword_1EE2EB5A8;
  *(a1 + 48) = v8;
  return result;
}

double sub_1E68496DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1E68B2DF0();
  v4 = sub_1E68B2DF0();
  v5 = 14.0;
  if (v3)
  {
    if (v4)
    {
      sub_1E68B1A50();
      v5 = v6;
    }

    if (sub_1E68B2DF0())
    {
      v7 = 18.0;
    }

    else
    {
      v7 = 12.0;
    }

    _Q1 = xmmword_1E68C35C0;
    v9 = 20.0;
  }

  else
  {
    if (v4)
    {
      sub_1E68B1A50();
      v5 = v10;
    }

    if (sub_1E68B2DF0())
    {
      v7 = 18.0;
    }

    else
    {
      v7 = 12.0;
    }

    __asm { FMOV            V1.2D, #16.0 }

    v9 = 36.0;
  }

  *a2 = xmmword_1E68C3570;
  *(a2 + 16) = xmmword_1E68C3580;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0x3FD75C28F5C28F5CLL;
  *(a2 + 48) = v7;
  *(a2 + 56) = 0;
  *(a2 + 64) = _Q1;
  *(a2 + 72) = 0x4000000000000000;
  *(a2 + 80) = _Q1;
  *(a2 + 88) = 0;
  *(a2 + 96) = _Q1;
  *(a2 + 104) = 0x4014000000000000;
  *(a2 + 112) = _Q1;
  *(a2 + 120) = 0;
  *(a2 + 128) = _Q1;
  *(a2 + 144) = _Q1;
  *(a2 + 152) = 0x4034000000000000;
  *(a2 + 160) = v9;
  *(a2 + 168) = 0x4030000000000000;
  *(a2 + 176) = v9;
  *(a2 + 184) = xmmword_1E68C35D0;
  *(a2 + 200) = xmmword_1E68C35E0;
  *&result = 2;
  *(a2 + 216) = xmmword_1E68C35F0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  return result;
}

double sub_1E6849834@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1E68B2DF0();
  v4 = sub_1E68B2DF0();
  v5 = 14.0;
  if (v3)
  {
    if (v4)
    {
      sub_1E68B1A50();
      v5 = v6;
    }

    v7 = sub_1E68B2DF0();
    v8 = 18.0;
    if ((v7 & 1) == 0)
    {
      v8 = 12.0;
    }

    v9 = xmmword_1E68C35C0;
  }

  else
  {
    if (v4)
    {
      sub_1E68B1A50();
      v5 = v10;
    }

    v11 = sub_1E68B2DF0();
    v8 = 18.0;
    if ((v11 & 1) == 0)
    {
      v8 = 12.0;
    }

    v9 = xmmword_1E68BF070;
  }

  *a2 = xmmword_1E68C3570;
  *(a2 + 16) = xmmword_1E68C3580;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0x3FD75C28F5C28F5CLL;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0x4000000000000000;
  *(a2 + 80) = v9;
  *(a2 + 88) = 0;
  *(a2 + 96) = v9;
  *(a2 + 104) = 0x4014000000000000;
  *(a2 + 112) = v9;
  *(a2 + 120) = 0;
  *(a2 + 128) = v9;
  *(a2 + 144) = vdupq_lane_s64(v9, 0);
  *(a2 + 160) = v9;
  *(a2 + 168) = 0x4024000000000000;
  *(a2 + 176) = v9;
  *(a2 + 200) = 0u;
  *(a2 + 184) = 0u;
  *&result = 2;
  *(a2 + 216) = xmmword_1E68B77B0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  return result;
}

double static ActionCardViewLayout.platterCard.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EB480 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1EE2EB558;
  *(a1 + 192) = xmmword_1EE2EB548;
  *(a1 + 208) = v1;
  *(a1 + 224) = xmmword_1EE2EB568;
  *(a1 + 240) = qword_1EE2EB578;
  v2 = unk_1EE2EB518;
  *(a1 + 128) = xmmword_1EE2EB508;
  *(a1 + 144) = v2;
  v3 = unk_1EE2EB538;
  *(a1 + 160) = xmmword_1EE2EB528;
  *(a1 + 176) = v3;
  v4 = unk_1EE2EB4D8;
  *(a1 + 64) = xmmword_1EE2EB4C8;
  *(a1 + 80) = v4;
  v5 = unk_1EE2EB4F8;
  *(a1 + 96) = xmmword_1EE2EB4E8;
  *(a1 + 112) = v5;
  v6 = unk_1EE2EB498;
  *a1 = xmmword_1EE2EB488;
  *(a1 + 16) = v6;
  result = *&xmmword_1EE2EB4A8;
  v8 = unk_1EE2EB4B8;
  *(a1 + 32) = xmmword_1EE2EB4A8;
  *(a1 + 48) = v8;
  return result;
}

unint64_t sub_1E6849A0C(char a1)
{
  result = 0x6152746365707361;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0x615272656E726F63;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x646150656C746974;
      break;
    case 6:
      result = 0x656C746974627573;
      break;
    case 7:
      result = 0x506E6F6974706163;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x6E694C656C746974;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E6849BD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E68572FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6849BFC(uint64_t a1)
{
  v2 = sub_1E6855924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6849C38(uint64_t a1)
{
  v2 = sub_1E6855924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionCardViewLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0998F8, &qword_1E68C3610);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v13 = v1[4];
  v12 = v1[5];
  v14 = v1[6];
  v15 = *(v1 + 7);
  v30 = *(v1 + 9);
  v31 = v15;
  v28 = *(v1 + 13);
  v29 = *(v1 + 11);
  v26 = *(v1 + 17);
  v27 = *(v1 + 15);
  v24 = *(v1 + 21);
  v25 = *(v1 + 19);
  v22 = *(v1 + 25);
  v23 = *(v1 + 23);
  v16 = v1[27];
  v32 = v1[28];
  v33 = v16;
  v17 = *(v1 + 232);
  v18 = v1[30];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6855924();
  sub_1E68B3BD0();
  *&v35 = v8;
  *(&v35 + 1) = v9;
  v37 = 0;
  type metadata accessor for CGSize(0);
  sub_1E6856E40(&qword_1EE2EA448, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
  v19 = v34;
  sub_1E68B3AB0();
  if (v19)
  {
    return (*(v4 + 8))(v7, v3);
  }

  LODWORD(v34) = v17;
  v21[1] = v18;
  *&v35 = v10;
  *(&v35 + 1) = v11;
  v37 = 1;
  sub_1E68B3AB0();
  *&v35 = v13;
  v37 = 2;
  sub_1E67621E8();
  sub_1E68B3AB0();
  *&v35 = v12;
  v37 = 3;
  sub_1E68B3AB0();
  *&v35 = v14;
  v37 = 4;
  sub_1E68B3AB0();
  v35 = v31;
  v36 = v30;
  v37 = 5;
  sub_1E67F4B08();
  sub_1E68B3AB0();
  v35 = v29;
  v36 = v28;
  v37 = 6;
  sub_1E68B3AB0();
  v35 = v27;
  v36 = v26;
  v37 = 7;
  sub_1E68B3AB0();
  v35 = v25;
  v36 = v24;
  v37 = 8;
  sub_1E68B3AB0();
  v35 = v23;
  v36 = v22;
  v37 = 9;
  sub_1E68B3AB0();
  LOBYTE(v35) = 10;
  sub_1E68B3AA0();
  LOBYTE(v35) = 11;
  sub_1E68B3A50();
  LOBYTE(v35) = 12;
  sub_1E68B3AA0();
  return (*(v4 + 8))(0, v3);
}

uint64_t ActionCardViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099900, &qword_1E68C3618);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6855924();
  sub_1E68B3BC0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v35 = 0;
    sub_1E6856E40(&qword_1ED096DC0, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1E68B3A00();
    v10 = v33;
    v35 = 1;
    sub_1E68B3A00();
    v11 = v33;
    v35 = 2;
    sub_1E6762A60();
    sub_1E68B3A00();
    v12 = v33;
    v35 = 3;
    sub_1E68B3A00();
    v13 = v33;
    v35 = 4;
    sub_1E68B3A00();
    v14 = v33;
    v35 = 5;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    v31 = v33;
    v32 = v34;
    v35 = 6;
    sub_1E68B3A00();
    v29 = v33;
    v30 = v34;
    v35 = 7;
    sub_1E68B3A00();
    v28 = v34;
    v27 = v33;
    v35 = 8;
    sub_1E68B3A00();
    v26 = v34;
    v25 = v33;
    v35 = 9;
    sub_1E68B3A00();
    v24 = v34;
    v23 = v33;
    LOBYTE(v33) = 10;
    v15 = sub_1E68B39F0();
    LOBYTE(v33) = 11;
    v17 = sub_1E68B39A0();
    v36 = v18 & 1;
    LOBYTE(v33) = 12;
    v19 = sub_1E68B39F0();
    (*(v6 + 8))(v9, v5);
    v20 = v36;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
    *(a2 + 48) = v14;
    v21 = v32;
    *(a2 + 56) = v31;
    *(a2 + 72) = v21;
    v22 = v30;
    *(a2 + 88) = v29;
    *(a2 + 104) = v22;
    *(a2 + 120) = v27;
    *(a2 + 136) = v28;
    *(a2 + 152) = v25;
    *(a2 + 168) = v26;
    *(a2 + 184) = v23;
    *(a2 + 200) = v24;
    *(a2 + 216) = v15;
    *(a2 + 224) = v17;
    *(a2 + 232) = v20;
    *(a2 + 240) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ActionCardViewLayout.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v37 = *(v0 + 80);
  v38 = *(v0 + 88);
  v39 = *(v0 + 96);
  v40 = *(v0 + 104);
  v41 = *(v0 + 112);
  v42 = *(v0 + 120);
  v43 = *(v0 + 128);
  v44 = *(v0 + 136);
  v45 = *(v0 + 144);
  v46 = *(v0 + 152);
  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 176);
  v50 = *(v0 + 184);
  v51 = *(v0 + 192);
  v52 = *(v0 + 200);
  v53 = *(v0 + 208);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v11 = *(v0 + 232);
  v12 = *(v0 + 240);
  sub_1E673E7F4(*v0, *(v0 + 8));
  sub_1E673E7F4(v1, v2);
  if (v3 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v3;
  }

  MEMORY[0x1E69523F0](*&v13);
  if (v4 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v4;
  }

  MEMORY[0x1E69523F0](*&v14);
  if (v5 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v5;
  }

  MEMORY[0x1E69523F0](*&v15);
  if (v6 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v6;
  }

  MEMORY[0x1E69523F0](*&v16);
  if (v7 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v7;
  }

  MEMORY[0x1E69523F0](*&v17);
  if (v8 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v8;
  }

  MEMORY[0x1E69523F0](*&v18);
  v19 = v37;
  if (v37 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v19);
  v20 = v38;
  if (v38 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v20);
  v21 = v39;
  if (v39 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v21);
  v22 = v40;
  if (v40 == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v22);
  v23 = v41;
  if (v41 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v23);
  v24 = v42;
  if (v42 == 0.0)
  {
    v24 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v24);
  v25 = v43;
  if (v43 == 0.0)
  {
    v25 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v25);
  v26 = v44;
  if (v44 == 0.0)
  {
    v26 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v26);
  v27 = v45;
  if (v45 == 0.0)
  {
    v27 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v27);
  v28 = v46;
  if (v46 == 0.0)
  {
    v28 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v28);
  v29 = v47;
  if (v47 == 0.0)
  {
    v29 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v29);
  v30 = v48;
  if (v48 == 0.0)
  {
    v30 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v30);
  v31 = v49;
  if (v49 == 0.0)
  {
    v31 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v31);
  v32 = v50;
  if (v50 == 0.0)
  {
    v32 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v32);
  v33 = v51;
  if (v51 == 0.0)
  {
    v33 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v33);
  v34 = v52;
  if (v52 == 0.0)
  {
    v34 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v34);
  v35 = v53;
  if (v53 == 0.0)
  {
    v35 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v35);
  MEMORY[0x1E69523D0](v10);
  sub_1E68B3B90();
  if (v11 != 1)
  {
    MEMORY[0x1E69523D0](v9);
  }

  return MEMORY[0x1E69523D0](v12);
}

uint64_t ActionCardViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  ActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E684AA30()
{
  sub_1E68B3B70();
  ActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E684AA74(uint64_t a1)
{
  sub_1E68B3B70();
  ActionCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E684AAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v47 = sub_1E68B21B0();
  *&v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  sub_1E68B2440();
  v44 = v8;
  v9 = sub_1E68B1E40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v43 - v16;
  v18 = sub_1E68B1E40();
  v48 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v43 - v20;
  v49 = sub_1E68B1E40();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v22);
  v52 = &v43 - v23;
  v46 = a1;
  v24 = *(a1 + 40);
  sub_1E68B2900();
  sub_1E68B2180();
  sub_1E68B1E30();
  (*(v45 + 8))(v7, v47);
  v25 = *(v10 + 8);
  v25(v13, v9);
  v43 = v3;
  v26 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v76 = v24;
  v77 = v26;
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2780();
  v25(v17, v9);
  sub_1E68B2E80();
  v74 = WitnessTable;
  v75 = MEMORY[0x1E697F568];
  v42 = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v48 + 8))(v21, v18);
  v48 = sub_1E68B2E70();
  v47 = v28;
  v53 = v44;
  v45 = *(v46 + 24);
  v54 = v45;
  v55 = v24;
  v56 = *(v46 + 48);
  v57 = v43;
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928, &qword_1E68C38E8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930, &unk_1E68C38F0);
  v62 = v61;
  v63 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v29 = sub_1E68B1E40();
  v30 = sub_1E68B1E40();
  v31 = swift_getWitnessTable();
  v32 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  v72 = v31;
  v73 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v70 = v33;
  v71 = v34;
  v35 = swift_getWitnessTable();
  v68 = v35;
  v69 = MEMORY[0x1E697E5D8];
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x1E6981CD8];
  v60 = v29;
  v61 = MEMORY[0x1E6981CD8];
  v62 = v30;
  v63 = v30;
  v38 = MEMORY[0x1E6981CD0];
  v64 = v35;
  v65 = MEMORY[0x1E6981CD0];
  v66 = v36;
  v67 = v36;
  swift_getOpaqueTypeMetadata2();
  v58 = v42;
  v59 = MEMORY[0x1E697EBF8];
  v39 = v49;
  swift_getWitnessTable();
  v60 = v29;
  v61 = v37;
  v62 = v30;
  v63 = v30;
  v64 = v35;
  v65 = v38;
  v66 = v36;
  v67 = v36;
  swift_getOpaqueTypeConformance2();
  v40 = v52;
  sub_1E68B2A40();
  return (*(v50 + 8))(v40, v39);
}

uint64_t sub_1E684B264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v84 = a7;
  v85 = a6;
  v86 = a5;
  v87 = a2;
  v88 = a4;
  v82 = a8;
  v83 = a3;
  v74 = a1;
  v80 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v80, v8);
  v81 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E68B2DE0();
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v76 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928, &qword_1E68C38E8);
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930, &unk_1E68C38F0);
  v110 = v109;
  v111 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  v72 = sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1E68B2CC0();
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v59 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  v59 = v14;
  v18 = sub_1E68B1E40();
  v75 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v66 = &v59 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v60 = v18;
  v21 = sub_1E68B1E40();
  v77 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v70 = &v59 - v23;
  v24 = sub_1E68B1E40();
  v25 = swift_getWitnessTable();
  v26 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  v120 = v25;
  v121 = v26;
  v27 = swift_getWitnessTable();
  v62 = v27;
  v28 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v118 = v27;
  v119 = v28;
  v116 = swift_getWitnessTable();
  v117 = MEMORY[0x1E697E5D8];
  v29 = v116;
  v64 = v116;
  v30 = swift_getWitnessTable();
  v108 = v21;
  v109 = MEMORY[0x1E6981CD8];
  v63 = v24;
  v110 = v24;
  v111 = v24;
  v112 = v29;
  v113 = MEMORY[0x1E6981CD0];
  v114 = v30;
  v115 = v30;
  v67 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  v68 = OpaqueTypeMetadata2;
  v69 = v32;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v33);
  v61 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v65 = &v59 - v37;
  sub_1E68B21C0();
  v101 = v87;
  v102 = v83;
  v103 = v88;
  v104 = v86;
  v105 = v85;
  v38 = v74;
  v106 = v84;
  v107 = v74;
  sub_1E68B2CB0();
  v39 = v76;
  sub_1E68B2DD0();
  sub_1E68B2500();
  v40 = v66;
  v41 = v59;
  v42 = v78;
  sub_1E68B2750();
  (*(v79 + 8))(v39, v42);
  (*(v73 + 8))(v17, v41);
  v43 = *(v38 + 48);
  v44 = *(v80 + 20);
  v45 = *MEMORY[0x1E697F468];
  v46 = sub_1E68B2160();
  v47 = v81;
  (*(*(v46 - 8) + 104))(&v81[v44], v45, v46);
  *v47 = v43;
  v47[1] = v43;
  sub_1E6856E40(&qword_1EE2EA660, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v48 = v70;
  v49 = v60;
  sub_1E68B2AE0();
  sub_1E6768D04(v47);
  (*(v75 + 8))(v40, v49);
  sub_1E68B2E00();
  v95 = v87;
  v96 = v83;
  v97 = v88;
  v98 = v86;
  v99 = v85;
  v100 = v84;
  v89 = v87;
  v90 = v83;
  v91 = v88;
  v92 = v86;
  v93 = v85;
  v94 = v84;
  v50 = swift_checkMetadataState();
  v51 = MEMORY[0x1E6981CD0];
  v52 = v64;
  v53 = v61;
  v54 = MEMORY[0x1E6981CD8];
  sub_1E68B2AD0();
  (*(v77 + 8))(v48, v21);
  v108 = v21;
  v109 = v54;
  v110 = v50;
  v111 = v50;
  v112 = v52;
  v113 = v51;
  v114 = v30;
  v115 = v30;
  swift_getOpaqueTypeConformance2();
  v55 = v65;
  v56 = v68;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v57 = *(v69 + 8);
  v57(v53, v56);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v57)(v55, v56);
}

uint64_t sub_1E684BAB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v208 = a5;
  v205 = a4;
  v193 = a8;
  v195 = sub_1E68B1E40();
  v189 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195, v13);
  v194 = &v179[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v192 = &v179[-v17];
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A20, &qword_1E68C3A80);
  v213 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201, v18);
  v197 = &v179[-v19];
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099930, &unk_1E68C38F0);
  MEMORY[0x1EEE9AC00](v187, v20);
  v191 = &v179[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22, v23);
  v190 = &v179[-v24];
  MEMORY[0x1EEE9AC00](v25, v26);
  v212 = &v179[-v27];
  MEMORY[0x1EEE9AC00](v28, v29);
  v215 = &v179[-v30];
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099960, &qword_1E68C3920);
  MEMORY[0x1EEE9AC00](v207, v31);
  v206 = &v179[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33, v34);
  v202 = &v179[-v35];
  *&v216 = sub_1E68B1DE0();
  *&v217 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216, v36);
  v38 = &v179[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v179[-v41];
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099968, &qword_1E68C3928);
  MEMORY[0x1EEE9AC00](v204, v43);
  v203 = &v179[-v44];
  *&v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999D0, &qword_1E68C39B8);
  MEMORY[0x1EEE9AC00](v199, v45);
  *&v200 = &v179[-v46];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A28, &qword_1E68C3A88);
  v196 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v179[-v49];
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099928, &qword_1E68C38E8);
  MEMORY[0x1EEE9AC00](v185, v51);
  v211 = &v179[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v179[-v55];
  v223 = a2;
  v224 = a3;
  v186 = a3;
  v225 = v205;
  v226 = v208;
  v188 = a6;
  v227 = a6;
  v228 = a7;
  v57 = type metadata accessor for ActionCardView(0, &v223);
  v58 = (a1 + *(v57 + 80));
  v59 = v58[3];
  v60 = 1;
  v61 = MEMORY[0x1E697E6E8];
  v208 = a1;
  v205 = v57;
  v198 = v59;
  v214 = v56;
  v210 = v38;
  v209 = v42;
  if (v59)
  {
    v182 = v50;
    *&v183 = v47;
    v62 = *v58;
    v63 = v58[1];
    v64 = v58[2];
    *&v184 = swift_getKeyPath();
    v65 = v200;
    v66 = (v200 + *(v199 + 36));
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8, &qword_1E68C3A30) + 28);
    v68 = *MEMORY[0x1E6980FD8];
    v69 = sub_1E68B2690();
    v70 = *(v69 - 8);
    (*(v70 + 104))(v66 + v67, v68, v69);
    (*(v70 + 56))(v66 + v67, 0, 1, v69);
    *v66 = swift_getKeyPath();
    *v65 = v62;
    *(v65 + 8) = v63;
    LODWORD(v69) = v64 & 1;
    LOBYTE(v67) = v64;
    *(v65 + 16) = v64 & 1;
    v71 = v198;
    v72 = v184;
    *(v65 + 24) = v198;
    *(v65 + 32) = v72;
    *(v65 + 40) = 1;
    v73 = *(v217 + 104);
    v74 = v209;
    v75 = v216;
    v73(v209, *MEMORY[0x1E697E6E8], v216);
    v76 = v210;
    v73(v210, *MEMORY[0x1E697E728], v75);
    sub_1E673F228(v62, v63, v67, v71);
    *&v184 = v62;
    v181 = v63;
    v180 = v69;
    sub_1E673F26C(v62, v63, v69);
    sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);

    result = sub_1E68B3170();
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    v78 = v76;
    v79 = v217;
    v80 = *(v217 + 32);
    v81 = v216;
    v82 = v202;
    v80(v202, v74, v216);
    v83 = v207;
    v80((v82 + *(v207 + 48)), v78, v81);
    v84 = v206;
    sub_1E67612FC(v82, v206, &qword_1ED099960, &qword_1E68C3920);
    v85 = *(v83 + 48);
    v86 = v203;
    v80(v203, v84, v81);
    v87 = *(v79 + 8);
    v87(&v84[v85], v81);
    sub_1E6856730(v82, v84);
    v80((v86 + *(v204 + 36)), &v84[*(v83 + 48)], v81);
    v87(v84, v81);
    sub_1E6856D24();
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968, &qword_1E68C3928, MEMORY[0x1E69E5FB8]);
    v88 = v182;
    v89 = v200;
    sub_1E68B2870();
    sub_1E6744A10(v86, &qword_1ED099968, &qword_1E68C3928);
    sub_1E6744A10(v89, &qword_1ED0999D0, &qword_1E68C39B8);
    a1 = v208;
    v90 = *(v208 + 240);
    KeyPath = swift_getKeyPath();
    v92 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A30, &qword_1E68C3A90) + 36);
    *v92 = KeyPath;
    *(v92 + 8) = v90;
    *(v92 + 16) = 0;
    v200 = *(a1 + 136);
    v199 = *(a1 + 120);
    LOBYTE(KeyPath) = sub_1E68B2500();
    sub_1E673F0D4(v184, v181, v180);

    v47 = v183;
    v93 = v88 + *(v183 + 36);
    *(&v94 + 1) = *(&v199 + 1);
    *&v95 = v199;
    v96 = *(&v200 + 1);
    *&v94 = v200;
    *v93 = KeyPath;
    *(&v95 + 1) = v96;
    *(v93 + 24) = v95;
    *(v93 + 8) = v94;
    *(v93 + 40) = 0;
    v56 = v214;
    sub_1E6761420(v88, v214, &qword_1ED099A28, &qword_1E68C3A88);
    v60 = 0;
    v97 = v205;
    v61 = MEMORY[0x1E697E6E8];
  }

  else
  {
    v97 = v57;
  }

  v98 = 1;
  (*(v196 + 56))(v56, v60, 1, v47);
  v99 = (a1 + *(v97 + 72));
  v100 = v99[3];
  if (!v100)
  {
    v131 = v215;
    v126 = v201;
    goto LABEL_9;
  }

  v101 = *v99;
  v102 = v99[1];
  *&v200 = v99[2];
  v103 = v200;
  v104 = swift_getKeyPath();
  v223 = v101;
  v224 = v102;
  v105 = v103 & 1;
  LOBYTE(v225) = v103 & 1;
  v226 = v100;
  v227 = v104;
  *&v184 = v104;
  LOBYTE(v228) = 1;
  v106 = *(v217 + 104);
  v107 = v209;
  v108 = v216;
  v106(v209, *v61, v216);
  v109 = v210;
  v106(v210, *MEMORY[0x1E697E728], v108);
  sub_1E673F228(v101, v102, v200, v100);
  *&v199 = v101;
  v198 = v102;
  LODWORD(v196) = v105;
  sub_1E673F26C(v101, v102, v105);
  sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  *&v200 = v100;

  result = sub_1E68B3170();
  if ((result & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v110 = v217;
  v111 = *(v217 + 32);
  v112 = v202;
  v113 = v107;
  v114 = v216;
  v111(v202, v113, v216);
  v115 = v207;
  v111((v112 + *(v207 + 48)), v109, v114);
  v116 = v206;
  sub_1E67612FC(v112, v206, &qword_1ED099960, &qword_1E68C3920);
  v117 = *(v115 + 48);
  v118 = v203;
  v111(v203, v116, v114);
  v119 = *(v110 + 8);
  v119(&v116[v117], v114);
  sub_1E6856730(v112, v116);
  v111((v118 + *(v204 + 36)), &v116[*(v115 + 48)], v114);
  v119(v116, v114);
  a1 = v208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999F8, &qword_1E68C3A18);
  sub_1E6856C6C();
  sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968, &qword_1E68C3928, MEMORY[0x1E69E5FB8]);
  v120 = v197;
  sub_1E68B2870();
  v97 = v205;
  sub_1E6744A10(v118, &qword_1ED099968, &qword_1E68C3928);
  v121 = v199;
  v122 = v198;
  LOBYTE(v114) = v196;
  sub_1E673F0D4(v199, v198, v196);

  v123 = *(a1 + 216);
  v124 = swift_getKeyPath();
  v125 = v120 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED099A38, &qword_1E68C3A98) + 36);
  *v125 = v124;
  *(v125 + 8) = v123;
  *(v125 + 16) = 0;
  v184 = *(a1 + 72);
  v183 = *(a1 + 56);
  LOBYTE(v124) = sub_1E68B2500();
  sub_1E673F0D4(v121, v122, v114);

  v126 = v201;
  v127 = v120 + *(v201 + 36);
  *(&v128 + 1) = *(&v183 + 1);
  *&v129 = v183;
  v130 = *(&v184 + 1);
  *&v128 = v184;
  *v127 = v124;
  *(&v129 + 1) = v130;
  *(v127 + 24) = v129;
  *(v127 + 8) = v128;
  *(v127 + 40) = 0;
  v131 = v215;
  sub_1E6761420(v120, v215, &qword_1ED099A20, &qword_1E68C3A80);
  v98 = 0;
  v61 = MEMORY[0x1E697E6E8];
LABEL_9:
  v132 = v213 + 56;
  v133 = 1;
  *&v200 = *(v213 + 56);
  (v200)(v131, v98, 1, v126);
  v134 = (a1 + *(v97 + 76));
  v135 = v134[3];
  v136 = MEMORY[0x1E697E728];
  if (!v135)
  {
    v168 = v212;
    goto LABEL_13;
  }

  v213 = v132;
  v137 = *v134;
  v138 = v134[1];
  v139 = v134[2];
  v140 = swift_getKeyPath();
  v223 = v137;
  v224 = v138;
  LOBYTE(v225) = v139 & 1;
  v226 = v135;
  v227 = v140;
  v196 = v140;
  LOBYTE(v228) = 1;
  v141 = *v61;
  v142 = *(v217 + 104);
  v143 = v209;
  v144 = v216;
  v142(v209, v141, v216);
  v145 = *v136;
  v146 = v210;
  v142(v210, v145, v144);
  sub_1E673F228(v137, v138, v139, v135);
  *&v199 = v137;
  LODWORD(v198) = v139 & 1;
  sub_1E673F26C(v137, v138, v139 & 1);
  sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);

  result = sub_1E68B3170();
  if (result)
  {
    v147 = v217;
    v148 = *(v217 + 32);
    v149 = v202;
    v150 = v216;
    v148(v202, v143, v216);
    v151 = v207;
    v148((v149 + *(v207 + 48)), v146, v150);
    v210 = v138;
    v152 = v206;
    sub_1E67612FC(v149, v206, &qword_1ED099960, &qword_1E68C3920);
    v153 = *(v151 + 48);
    v154 = v203;
    v148(v203, v152, v150);
    v209 = v135;
    v155 = *(v147 + 8);
    v155(&v152[v153], v150);
    sub_1E6856730(v149, v152);
    v148((v154 + *(v204 + 36)), &v152[*(v151 + 48)], v150);
    v155(v152, v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999F8, &qword_1E68C3A18);
    sub_1E6856C6C();
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968, &qword_1E68C3928, MEMORY[0x1E69E5FB8]);
    v156 = v197;
    sub_1E68B2870();
    sub_1E6744A10(v154, &qword_1ED099968, &qword_1E68C3928);
    v157 = v199;
    v158 = v210;
    LOBYTE(v149) = v198;
    sub_1E673F0D4(v199, v210, v198);

    v159 = v208;
    v160 = *(v208 + 224);
    LOBYTE(v150) = *(v208 + 232);
    v161 = swift_getKeyPath();
    v162 = v156 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED099A38, &qword_1E68C3A98) + 36);
    *v162 = v161;
    *(v162 + 8) = v160;
    *(v162 + 16) = v150;
    v163 = *(v159 + 104);
    v216 = *(v159 + 88);
    v217 = v163;
    LOBYTE(v161) = sub_1E68B2500();
    sub_1E673F0D4(v157, v158, v149);

    v126 = v201;
    v164 = v156 + *(v201 + 36);
    *&v166 = v216;
    v165 = *(&v217 + 1);
    *(&v167 + 1) = *(&v216 + 1);
    *&v167 = v217;
    *v164 = v161;
    *(&v166 + 1) = v165;
    *(v164 + 24) = v166;
    *(v164 + 8) = v167;
    *(v164 + 40) = 0;
    v168 = v212;
    sub_1E6761420(v156, v212, &qword_1ED099A20, &qword_1E68C3A80);
    v133 = 0;
LABEL_13:
    (v200)(v168, v133, 1, v126);
    v169 = v194;
    v170 = v188;
    sub_1E68B2A60();
    v222[4] = v170;
    v222[5] = MEMORY[0x1E697E5D8];
    v171 = v195;
    *&v217 = swift_getWitnessTable();
    v172 = v192;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v173 = v189;
    v174 = *(v189 + 8);
    v174(v169, v171);
    v175 = v211;
    sub_1E67612FC(v214, v211, &qword_1ED099928, &qword_1E68C38E8);
    v223 = v175;
    v176 = v190;
    sub_1E67612FC(v215, v190, &qword_1ED099930, &unk_1E68C38F0);
    v224 = v176;
    v177 = v168;
    v178 = v191;
    sub_1E67612FC(v177, v191, &qword_1ED099930, &unk_1E68C38F0);
    v225 = v178;
    (*(v173 + 16))(v169, v172, v171);
    v226 = v169;
    v222[0] = v185;
    v222[1] = v187;
    v222[2] = v187;
    v222[3] = v171;
    v218 = sub_1E6856EC0(&qword_1EE2EA710, &qword_1ED099928, &qword_1E68C38E8, sub_1E6856F3C);
    v219 = sub_1E6856EC0(&qword_1EE2EA720, &qword_1ED099930, &unk_1E68C38F0, sub_1E685711C);
    v220 = v219;
    v221 = v217;
    sub_1E6848F14(&v223, 4uLL, v222);
    v174(v172, v171);
    sub_1E6744A10(v212, &qword_1ED099930, &unk_1E68C38F0);
    sub_1E6744A10(v215, &qword_1ED099930, &unk_1E68C38F0);
    sub_1E6744A10(v214, &qword_1ED099928, &qword_1E68C38E8);
    v174(v169, v171);
    sub_1E6744A10(v178, &qword_1ED099930, &unk_1E68C38F0);
    sub_1E6744A10(v176, &qword_1ED099930, &unk_1E68C38F0);
    return sub_1E6744A10(v211, &qword_1ED099928, &qword_1E68C38E8);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1E684D080@<X0>(uint64_t a1@<X0>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v26[3] = a3;
  v26[4] = a1;
  v26[5] = a4;
  v26[17] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928, &qword_1E68C38E8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930, &unk_1E68C38F0);
  v28 = v27;
  v29 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v4 = sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  v26[1] = v4;
  v5 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v26[2] = v5;
  sub_1E68B1E40();
  v6 = sub_1E68B1E40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v26 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097968, &qword_1E68C63B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E68C1680;
  v16 = sub_1E68B2520();
  *(inited + 32) = v16;
  v17 = sub_1E68B2530();
  *(inited + 33) = v17;
  v18 = sub_1E68B2550();
  *(inited + 34) = v18;
  sub_1E68B2540();
  sub_1E68B2540();
  if (sub_1E68B2540() != v16)
  {
    sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v17)
  {
    sub_1E68B2540();
  }

  sub_1E68B2540();
  if (sub_1E68B2540() != v18)
  {
    sub_1E68B2540();
  }

  WitnessTable = swift_getWitnessTable();
  v20 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  v26[10] = WitnessTable;
  v26[11] = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v26[8] = v21;
  v26[9] = v22;
  v23 = swift_getWitnessTable();
  sub_1E68B2A70();
  v26[6] = v23;
  v26[7] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v24 = *(v7 + 8);
  v24(v10, v6);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v24)(v14, v6);
}

uint64_t sub_1E684D498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v18 = *(a1 + 16);
  v4 = sub_1E68B1E40();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - v6;
  v8 = sub_1E68B1E40();
  v9 = *(v8 - 8);
  v20 = v8;
  v21 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - v11;
  v13 = *(a1 + 40);
  sub_1E68B2780();
  sub_1E68B2E80();
  v30 = v13;
  v31 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v19 + 8))(v7, v4);
  sub_1E68B2E30();
  v23 = v18;
  v24 = *(a1 + 24);
  v25 = v13;
  v26 = *(a1 + 48);
  v27 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099938, &qword_1E68C3900);
  v28 = WitnessTable;
  v29 = MEMORY[0x1E697EBF8];
  v14 = v20;
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED099940, &qword_1ED099938, &qword_1E68C3900, MEMORY[0x1E6981870]);
  sub_1E68B2A40();
  return (*(v21 + 8))(v12, v14);
}

uint64_t sub_1E684D7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = sub_1E68B21D0();
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099948, &qword_1E68C3908);
  return sub_1E684D848(a1, a2, a3, a4, a5, a6, a7, a8 + *(v16 + 44));
}

uint64_t sub_1E684D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v187 = a6;
  v188 = a7;
  v183 = a4;
  v184 = a5;
  v175 = a3;
  v172 = a8;
  v167 = sub_1E68B21B0();
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v10);
  v165 = v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099950, &qword_1E68C3910);
  v173 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v164 = v159 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099958, &qword_1E68C3918);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v171 = v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v159 - v20;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099960, &qword_1E68C3920);
  MEMORY[0x1EEE9AC00](v182, v22);
  v179 = v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v181 = v159 - v26;
  v27 = sub_1E68B1DE0();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v159 - v34;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099968, &qword_1E68C3928);
  MEMORY[0x1EEE9AC00](v178, v36);
  v189 = v159 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099970, &qword_1E68C3930);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v180 = v159 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099978, &qword_1E68C3938);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v169 = v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v170 = v159 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v168 = v159 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v186 = v159 - v53;
  v191 = a2;
  v192 = v175;
  v193 = v183;
  v194 = v184;
  v195 = v187;
  v196 = v188;
  v187 = type metadata accessor for ActionCardView(0, &v191);
  v54 = a1 + v187[20];
  v55 = *(v54 + 24);
  v190 = v21;
  v183 = v38;
  v184 = a1;
  v185 = v28;
  v174 = v12;
  v176 = v35;
  v177 = v31;
  if (v55)
  {
    v188 = v39;
    v56 = *v54;
    v57 = *(v54 + 8);
    v58 = *(v54 + 16);
    v191 = v56;
    v192 = v57;
    v59 = v58 & 1;
    LOBYTE(v193) = v58 & 1;
    v194 = v55;
    v60 = *(v28 + 104);
    v60(v35, *MEMORY[0x1E697E6E8], v27);
    v60(v31, *MEMORY[0x1E697E728], v27);
    LODWORD(v175) = v59;
    sub_1E673F26C(v56, v57, v59);
    sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);

    result = sub_1E68B3170();
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    v62 = v35;
    v63 = *(v28 + 32);
    v64 = v28;
    v65 = v181;
    v63(v181, v62, v27);
    v162 = v57;
    v66 = v182;
    v63((v65 + *(v182 + 48)), v31, v27);
    v67 = v179;
    sub_1E67612FC(v65, v179, &qword_1ED099960, &qword_1E68C3920);
    v161 = v55;
    v68 = *(v66 + 48);
    v69 = v189;
    v63(v189, v67, v27);
    v160 = v56;
    v70 = *(v64 + 8);
    v70(v67 + v68, v27);
    sub_1E6856730(v65, v67);
    v63(&v69[*(v178 + 36)], (v67 + *(v66 + 48)), v27);
    v70(v67, v27);
    a1 = v184;
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968, &qword_1E68C3928, MEMORY[0x1E69E5FB8]);
    v71 = v180;
    sub_1E68B2870();
    v72 = v69;
    v73 = v183;
    v21 = v190;
    sub_1E6744A10(v72, &qword_1ED099968, &qword_1E68C3928);
    v74 = *(a1 + 240);
    KeyPath = swift_getKeyPath();
    v76 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099988, &unk_1E68C3978) + 36);
    *v76 = KeyPath;
    *(v76 + 8) = v74;
    v77 = v73;
    *(v76 + 16) = 0;
    LOBYTE(KeyPath) = sub_1E68B2500();
    sub_1E673F0D4(v160, v162, v175);

    v78 = v71 + *(v73 + 36);
    v79 = *(a1 + 136);
    v80 = *(a1 + 120);
    *(&v81 + 1) = *(a1 + 128);
    *&v81 = *(a1 + 136);
    *v78 = KeyPath;
    *(&v80 + 1) = *(&v79 + 1);
    *(v78 + 24) = v80;
    *(v78 + 8) = v81;
    *(v78 + 40) = 0;
    v82 = v186;
    sub_1E6761420(v71, v186, &qword_1ED099970, &qword_1E68C3930);
    v83 = 0;
    v39 = v188;
  }

  else
  {
    v83 = 1;
    v82 = v186;
    v77 = v38;
  }

  v84 = *(v39 + 56);
  v85 = 1;
  v188 = v39 + 56;
  v84(v82, v83, 1, v77);
  v86 = a1 + v187[18];
  v87 = *(v86 + 24);
  v175 = v84;
  v163 = v27;
  if (!v87)
  {
    v119 = v77;
    goto LABEL_9;
  }

  v89 = *v86;
  v88 = *(v86 + 8);
  v90 = *(v86 + 16);
  v191 = v89;
  v192 = v88;
  v91 = v27;
  v92 = v90 & 1;
  LOBYTE(v193) = v90 & 1;
  v194 = v87;
  v93 = *(v185 + 104);
  v94 = v176;
  v93(v176, *MEMORY[0x1E697E6E8], v91);
  v95 = v177;
  v93(v177, *MEMORY[0x1E697E728], v91);
  v161 = v89;
  v162 = v88;
  LODWORD(v160) = v92;
  v96 = v92;
  v97 = v91;
  sub_1E673F26C(v89, v88, v96);
  sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);

  result = sub_1E68B3170();
  if ((result & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v98 = v185;
  v99 = *(v185 + 32);
  v100 = v181;
  v99(v181, v94, v97);
  v101 = v182;
  v99((v100 + *(v182 + 48)), v95, v97);
  v102 = v179;
  sub_1E67612FC(v100, v179, &qword_1ED099960, &qword_1E68C3920);
  v159[1] = v87;
  v103 = *(v101 + 48);
  v99(v189, v102, v97);
  v104 = *(v98 + 8);
  v104(v102 + v103, v97);
  sub_1E6856730(v100, v102);
  v105 = v180;
  v106 = v189;
  v99(&v189[*(v178 + 36)], v102 + *(v101 + 48), v97);
  v104(v102, v97);
  a1 = v184;
  sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968, &qword_1E68C3928, MEMORY[0x1E69E5FB8]);
  sub_1E68B2870();
  v107 = v183;
  v108 = v190;
  sub_1E6744A10(v106, &qword_1ED099968, &qword_1E68C3928);
  v109 = *(a1 + 216);
  v110 = swift_getKeyPath();
  v111 = v105 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099988, &unk_1E68C3978) + 36);
  *v111 = v110;
  *(v111 + 8) = v109;
  v21 = v108;
  *(v111 + 16) = 0;
  v112 = sub_1E68B2500();
  v113 = v105 + *(v107 + 36);
  v114 = *(a1 + 72);
  v115 = *(a1 + 56);
  *(&v116 + 1) = *(a1 + 64);
  *&v116 = *(a1 + 72);
  *v113 = v112;
  *(&v115 + 1) = *(&v114 + 1);
  *(v113 + 24) = v115;
  *(v113 + 8) = v116;
  *(v113 + 40) = 0;
  v117 = v165;
  sub_1E68B21A0();
  sub_1E68567A0();
  v118 = v164;
  v119 = v107;
  sub_1E68B2950();
  sub_1E673F0D4(v161, v162, v160);

  (*(v166 + 8))(v117, v167);
  sub_1E6744A10(v105, &qword_1ED099970, &qword_1E68C3930);
  sub_1E6761420(v118, v21, &qword_1ED099950, &qword_1E68C3910);
  v85 = 0;
LABEL_9:
  v120 = 1;
  (*(v173 + 56))(v21, v85, 1, v174);
  v121 = a1 + v187[19];
  v122 = *(v121 + 24);
  if (!v122)
  {
    v151 = v168;
    goto LABEL_13;
  }

  v123 = *v121;
  v124 = *(v121 + 8);
  v125 = *(v121 + 16);
  v191 = v123;
  v192 = v124;
  v126 = v125 & 1;
  LOBYTE(v193) = v125 & 1;
  v194 = v122;
  v127 = v185;
  v128 = *(v185 + 104);
  v129 = v176;
  v130 = v163;
  v128(v176, *MEMORY[0x1E697E6E8], v163);
  v131 = v177;
  v128(v177, *MEMORY[0x1E697E728], v130);
  LODWORD(v187) = v126;
  sub_1E673F26C(v123, v124, v126);
  sub_1E6856E40(&qword_1EE2EA848, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);

  result = sub_1E68B3170();
  if (result)
  {
    v132 = *(v127 + 32);
    v133 = v181;
    v132(v181, v129, v130);
    v134 = v182;
    v132((v133 + *(v182 + 48)), v131, v130);
    v177 = v124;
    v135 = v179;
    sub_1E67612FC(v133, v179, &qword_1ED099960, &qword_1E68C3920);
    v176 = v123;
    v136 = *(v134 + 48);
    v137 = v189;
    v132(v189, v135, v130);
    v174 = v122;
    v138 = *(v127 + 8);
    v139 = v135 + v136;
    v140 = v190;
    v138(v139, v130);
    sub_1E6856730(v133, v135);
    v132((v137 + *(v178 + 36)), v135 + *(v134 + 48), v130);
    v21 = v140;
    v119 = v183;
    v138(v135, v130);
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968, &qword_1E68C3928, MEMORY[0x1E69E5FB8]);
    v141 = v180;
    sub_1E68B2870();
    sub_1E6744A10(v137, &qword_1ED099968, &qword_1E68C3928);
    v142 = v184;
    v143 = *(v184 + 224);
    v144 = *(v184 + 232);
    v145 = swift_getKeyPath();
    v146 = v141 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099988, &unk_1E68C3978) + 36);
    *v146 = v145;
    *(v146 + 8) = v143;
    *(v146 + 16) = v144;
    LOBYTE(v145) = sub_1E68B2500();
    sub_1E673F0D4(v176, v177, v187);

    v147 = v141 + *(v119 + 36);
    v148 = *(v142 + 104);
    v149 = *(v142 + 88);
    *(&v150 + 1) = *(v142 + 96);
    *&v150 = *(v142 + 104);
    *v147 = v145;
    *(&v149 + 1) = *(&v148 + 1);
    *(v147 + 24) = v149;
    *(v147 + 8) = v150;
    *(v147 + 40) = 0;
    v151 = v168;
    sub_1E6761420(v141, v168, &qword_1ED099970, &qword_1E68C3930);
    v120 = 0;
LABEL_13:
    v175(v151, v120, 1, v119);
    v152 = v186;
    v153 = v170;
    sub_1E67612FC(v186, v170, &qword_1ED099978, &qword_1E68C3938);
    v154 = v21;
    v155 = v171;
    sub_1E67612FC(v154, v171, &qword_1ED099958, &qword_1E68C3918);
    v156 = v169;
    sub_1E67612FC(v151, v169, &qword_1ED099978, &qword_1E68C3938);
    v157 = v172;
    sub_1E67612FC(v153, v172, &qword_1ED099978, &qword_1E68C3938);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099980, &qword_1E68C3940);
    sub_1E67612FC(v155, v157 + *(v158 + 48), &qword_1ED099958, &qword_1E68C3918);
    sub_1E67612FC(v156, v157 + *(v158 + 64), &qword_1ED099978, &qword_1E68C3938);
    sub_1E6744A10(v151, &qword_1ED099978, &qword_1E68C3938);
    sub_1E6744A10(v190, &qword_1ED099958, &qword_1E68C3918);
    sub_1E6744A10(v152, &qword_1ED099978, &qword_1E68C3938);
    sub_1E6744A10(v156, &qword_1ED099978, &qword_1E68C3938);
    sub_1E6744A10(v155, &qword_1ED099958, &qword_1E68C3918);
    return sub_1E6744A10(v153, &qword_1ED099978, &qword_1E68C3938);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1E684E920@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v20 = a1 + 5;
  v3 = a1[2];
  sub_1E68B1E40();
  sub_1E68B1E40();
  v19 = a1[4];
  sub_1E68B3750();
  sub_1E68B1E40();
  v18 = a1[7];
  v34 = v18;
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E697E5D8];
  v32 = WitnessTable;
  v33 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920, &qword_1E68C38D8);
  v6 = a1[3];
  v7 = sub_1E68B1E40();
  v30 = a1[6];
  v8 = v30;
  v31 = v5;
  v28 = v7;
  v29 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v9 = sub_1E68B2CE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  sub_1E68B2E70();
  *&v14 = v19;
  *(&v14 + 1) = *v20;
  *&v15 = v3;
  *(&v15 + 1) = v6;
  v23 = v15;
  v24 = v14;
  v25 = v8;
  v26 = v18;
  v27 = v21;
  sub_1E68B2CD0();
  swift_getWitnessTable();
  sub_1E68B2780();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E684ED48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v74 = a6;
  v75 = a3;
  v82 = a1;
  v83 = a5;
  v90 = a8;
  v13 = sub_1E68B2DE0();
  v14 = *(v13 - 8);
  v88 = v13;
  v89 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v87 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920, &qword_1E68C38D8);
  v17 = sub_1E68B1E40();
  v111 = a6;
  v112 = MEMORY[0x1E697E5D8];
  v70 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v109 = v17;
  v110 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v79 = sub_1E68B2F00();
  v78 = swift_getWitnessTable();
  v76 = sub_1E68B2CC0();
  v80 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v76);
  v72 = &v60 - v19;
  v77 = sub_1E68B1E40();
  v85 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v20);
  v71 = &v60 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  v84 = sub_1E68B1E40();
  v86 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v22);
  v73 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v81 = &v60 - v26;
  sub_1E68B1E40();
  sub_1E68B1E40();
  v63 = a4;
  sub_1E68B3750();
  sub_1E68B1E40();
  v61 = a7;
  v108[8] = a7;
  v108[6] = swift_getWitnessTable();
  v108[7] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  v62 = a2;
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v64 = sub_1E68B2CC0();
  v66 = *(v64 - 8);
  v27 = v66;
  MEMORY[0x1EEE9AC00](v64, v28);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v91 = &v60 - v33;
  v99 = a2;
  v34 = v75;
  v100 = v75;
  v101 = a4;
  v35 = v83;
  v36 = v74;
  v102 = v83;
  v103 = v74;
  v104 = a7;
  v37 = v82;
  v105 = v82;
  sub_1E68B21C0();
  sub_1E68B2CB0();
  v38 = v64;
  v67 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v39 = *(v27 + 8);
  v68 = v27 + 8;
  v69 = v39;
  v40 = v30;
  v41 = v38;
  v39(v40, v38);
  sub_1E68B21C0();
  v92 = v62;
  v93 = v34;
  v94 = v63;
  v95 = v35;
  v96 = v36;
  v97 = v61;
  v98 = v37;
  v42 = v72;
  sub_1E68B2CB0();
  sub_1E68B2510();
  v43 = v76;
  v44 = swift_getWitnessTable();
  v45 = v71;
  sub_1E68B2A70();
  (*(v80 + 8))(v42, v43);
  v46 = v87;
  sub_1E68B2DD0();
  sub_1E68B2500();
  v108[4] = v44;
  v108[5] = MEMORY[0x1E697E5D8];
  v47 = v77;
  v48 = swift_getWitnessTable();
  v49 = v73;
  v50 = v88;
  sub_1E68B2750();
  (*(v89 + 8))(v46, v50);
  (*(v85 + 8))(v45, v47);
  v51 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  v108[2] = v48;
  v108[3] = v51;
  v52 = v84;
  v53 = swift_getWitnessTable();
  v54 = v81;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v55 = v86;
  v56 = *(v86 + 8);
  v56(v49, v52);
  v57 = v65;
  (*(v66 + 16))(v65, v91, v41);
  v109 = v57;
  (*(v55 + 16))(v49, v54, v52);
  v110 = v49;
  v108[0] = v41;
  v108[1] = v52;
  v106 = v67;
  v107 = v53;
  sub_1E6848F14(&v109, 2uLL, v108);
  v56(v54, v52);
  v58 = v69;
  v69(v91, v41);
  v56(v49, v52);
  return v58(v57, v41);
}

uint64_t sub_1E684F5E0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v80 = a6;
  v66 = a5;
  v77 = a8;
  v78 = a3;
  v68 = a1;
  v72 = sub_1E68B1E40();
  v76 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v72);
  v70 = &v55 - v11;
  v12 = sub_1E68B1E40();
  v13 = *(v12 - 8);
  v74 = v12;
  v75 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v71 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v73 = &v55 - v18;
  v19 = sub_1E68B1E40();
  v67 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v55 - v21;
  v60 = sub_1E68B1E40();
  v69 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v23);
  v61 = &v55 - v24;
  v56 = a4;
  sub_1E68B3750();
  v25 = sub_1E68B1E40();
  v101 = a7;
  v55 = a7;
  WitnessTable = swift_getWitnessTable();
  v100 = MEMORY[0x1E697E5D8];
  v57 = MEMORY[0x1E697E858];
  v63 = v25;
  v64 = swift_getWitnessTable();
  v65 = sub_1E68B1F40();
  v79 = sub_1E68B1E40();
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v26);
  v59 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v82 = &v55 - v30;
  v31 = a2;
  v93 = a2;
  v94 = v78;
  v32 = v66;
  v95 = a4;
  v96 = v66;
  v97 = v80;
  v98 = a7;
  v62 = *(type metadata accessor for ActionCardView(0, &v93) + 68);
  v33 = v68;
  v58 = a2;
  sub_1E68B2780();
  sub_1E68B2E80();
  v92[10] = v32;
  v92[11] = MEMORY[0x1E697F568];
  v34 = swift_getWitnessTable();
  v35 = v61;
  sub_1E68B2A00();
  (*(v67 + 8))(v22, v19);
  sub_1E68B2E30();
  v83 = v31;
  v84 = v78;
  v85 = v56;
  v86 = v32;
  v87 = v80;
  v88 = v55;
  v89 = v33;
  v92[8] = v34;
  v92[9] = MEMORY[0x1E697EBF8];
  v36 = v60;
  v37 = swift_getWitnessTable();
  v38 = v59;
  sub_1E68B2A40();
  (*(v69 + 8))(v35, v36);
  v39 = swift_getWitnessTable();
  v92[6] = v37;
  v92[7] = v39;
  v40 = v79;
  v69 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v78 = *(v81 + 8);
  v80 = v81 + 8;
  (v78)(v38, v40);
  sub_1E68B2F50();
  v41 = v70;
  MEMORY[0x1E6951040](v58, v32, 1.0, -1.0, v42, v43);
  sub_1E68B2E80();
  v92[4] = v32;
  v92[5] = MEMORY[0x1E697E070];
  v53 = v72;
  v54 = swift_getWitnessTable();
  v44 = v71;
  sub_1E68B2A00();
  (*(v76 + 8))(v41, v53);
  v92[2] = v54;
  v92[3] = MEMORY[0x1E697EBF8];
  v45 = v74;
  v46 = swift_getWitnessTable();
  v47 = v73;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v48 = v75;
  v49 = *(v75 + 8);
  v49(v44, v45);
  v50 = v79;
  (*(v81 + 16))(v38, v82, v79);
  v93 = v38;
  (*(v48 + 16))(v44, v47, v45);
  v94 = v44;
  v92[0] = v50;
  v92[1] = v45;
  v90 = v69;
  v91 = v46;
  sub_1E6848F14(&v93, 2uLL, v92);
  v49(v47, v45);
  v51 = v78;
  (v78)(v82, v50);
  v49(v44, v45);
  return (v51)(v38, v50);
}

uint64_t sub_1E684FDB8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a5;
  v25 = a6;
  v26 = a8;
  sub_1E68B3750();
  v12 = sub_1E68B1E40();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v24 - v19;
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = v24;
  v30[4] = v25;
  v30[5] = a7;
  type metadata accessor for ActionCardView(0, v30);
  v29 = a7;
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A60();
  v27 = WitnessTable;
  v28 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v22 = *(v13 + 8);
  v22(v16, v12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v22)(v20, v12);
}

uint64_t sub_1E684FFD4@<X0>(double *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v68 = a7;
  v65 = a6;
  v64 = a5;
  v67 = a4;
  v63 = a2;
  v79 = a8;
  v78 = sub_1E68B1DE0();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v13);
  v75 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a3;
  v15 = sub_1E68B1E40();
  v76 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v71 = &v61 - v17;
  v89 = a6;
  v90 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  *&v91 = v15;
  *(&v91 + 1) = WitnessTable;
  v73 = MEMORY[0x1E69812B8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v70 = &v61 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999A0, &qword_1E68C3988);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v61 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099920, &qword_1E68C38D8);
  v66 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v69 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v61 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v61 = &v61 - v38;
  v39 = a2;
  v40 = a3;
  v41 = v67;
  v42 = a5;
  v43 = v65;
  v44 = v68;
  sub_1E68506C4(a1, v39, v40, v67, v42, v65, v68, v28);
  sub_1E68B2E80();
  sub_1E68B1F30();
  sub_1E6761420(v28, v35, &qword_1ED0999A0, &qword_1E68C3988);
  v45 = &v35[*(v29 + 36)];
  v46 = v96;
  *(v45 + 4) = v95;
  *(v45 + 5) = v46;
  *(v45 + 6) = v97;
  v47 = v92;
  *v45 = v91;
  *(v45 + 1) = v47;
  v48 = v94;
  *(v45 + 2) = v93;
  *(v45 + 3) = v48;
  v49 = v61;
  sub_1E6761420(v35, v61, &qword_1ED099920, &qword_1E68C38D8);
  v83 = v63;
  v84 = v62;
  v85 = v41;
  v86 = v64;
  v87 = v43;
  v88 = v44;
  type metadata accessor for ActionCardView(0, &v83);
  v50 = v71;
  sub_1E68B2A60();
  v51 = v77;
  v52 = v75;
  v53 = v78;
  (*(v77 + 104))(v75, *MEMORY[0x1E697E6E8], v78);
  v54 = WitnessTable;
  sub_1E68B2860();
  (*(v51 + 8))(v52, v53);
  (*(v76 + 8))(v50, v15);
  v83 = v15;
  v84 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v70;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v57 = v74;
  v58 = *(v74 + 8);
  v58(v21, OpaqueTypeMetadata2);
  v59 = v69;
  sub_1E67612FC(v49, v69, &qword_1ED099920, &qword_1E68C38D8);
  v83 = v59;
  (*(v57 + 16))(v21, v56, OpaqueTypeMetadata2);
  v84 = v21;
  v82[0] = v66;
  v82[1] = OpaqueTypeMetadata2;
  v80 = sub_1E68569B0();
  v81 = OpaqueTypeConformance2;
  sub_1E6848F14(&v83, 2uLL, v82);
  v58(v56, OpaqueTypeMetadata2);
  sub_1E6744A10(v49, &qword_1ED099920, &qword_1E68C38D8);
  v58(v21, OpaqueTypeMetadata2);
  return sub_1E6744A10(v59, &qword_1ED099920, &qword_1E68C38D8);
}

uint64_t sub_1E68506C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v152 = a7;
  KeyPath = a6;
  v136 = a5;
  v135 = a4;
  v134 = a3;
  v148 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999B0, &qword_1E68C3998);
  v144 = *(v10 - 8);
  v145 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v133 = v130 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999B8, &qword_1E68C39A0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v147 = v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v146 = v130 - v18;
  v141 = sub_1E68B21B0();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v19);
  v139 = v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999C0, &qword_1E68C39A8);
  MEMORY[0x1EEE9AC00](v137, v21);
  v138 = v130 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999C8, &qword_1E68C39B0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v143 = v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v153 = v130 - v28;
  v29 = sub_1E68B1DE0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999D0, &qword_1E68C39B8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = v130 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999D8, &qword_1E68C39C0);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v132 = v130 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999E0, &qword_1E68C39C8);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v142 = v130 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = v130 - v47;
  v156 = a2;
  v157 = v134;
  v158 = v135;
  v159 = v136;
  v160 = KeyPath;
  v161 = v152;
  v49 = type metadata accessor for ActionCardView(0, &v156);
  v151 = v48;
  v152 = v49;
  v50 = *(v49 + 80);
  v154 = v30;
  v155 = a1;
  v51 = (a1 + v50);
  v52 = v51[3];
  v150 = v33;
  if (v52)
  {
    v53 = v51[1];
    v130[0] = v51[2];
    v136 = v53;
    v54 = *v51;
    KeyPath = swift_getKeyPath();
    v130[1] = v34;
    v55 = *(v34 + 36);
    v135 = v29;
    v56 = &v37[v55];
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8, &qword_1E68C3A30) + 28);
    v134 = v39;
    v58 = *MEMORY[0x1E6980FD8];
    v59 = sub_1E68B2690();
    v131 = v38;
    v60 = v33;
    v61 = v59;
    v62 = v30;
    v63 = *(v59 - 8);
    (*(v63 + 104))(v56 + v57, v58, v59);
    (*(v63 + 56))(v56 + v57, 0, 1, v61);
    *v56 = swift_getKeyPath();
    v29 = v135;
    v64 = v136;
    *v37 = v54;
    *(v37 + 1) = v64;
    LOBYTE(v61) = v130[0];
    LOBYTE(v58) = v130[0] & 1;
    v37[16] = v130[0] & 1;
    v65 = KeyPath;
    *(v37 + 3) = v52;
    *(v37 + 4) = v65;
    v37[40] = 1;
    v66 = *(v62 + 104);
    LODWORD(KeyPath) = *MEMORY[0x1E697E6E8];
    v66(v60);
    sub_1E673F228(v54, v64, v61, v52);
    sub_1E673F26C(v54, v64, v58);
    sub_1E6856D24();

    v67 = v132;
    sub_1E68B2860();
    (*(v62 + 8))(v60, v29);
    sub_1E6744A10(v37, &qword_1ED0999D0, &qword_1E68C39B8);
    v68 = *(v155 + 240);
    v69 = swift_getKeyPath();
    v70 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A10, &qword_1E68C3A68) + 36);
    *v70 = v69;
    *(v70 + 8) = v68;
    v71 = v155;
    *(v70 + 16) = 0;
    LOBYTE(v69) = sub_1E68B2500();
    sub_1E673F0D4(v54, v136, v58);

    v72 = v131;
    v73 = v67 + *(v131 + 36);
    v74 = *(v71 + 136);
    v75 = *(v71 + 120);
    *(&v76 + 1) = *(v71 + 128);
    *&v76 = *(v71 + 136);
    *v73 = v69;
    *(&v75 + 1) = *(&v74 + 1);
    *(v73 + 24) = v75;
    *(v73 + 8) = v76;
    *(v73 + 40) = 0;
    v77 = v151;
    sub_1E6761420(v67, v151, &qword_1ED0999D8, &qword_1E68C39C0);
    (*(v134 + 56))(v77, 0, 1, v72);
  }

  else
  {
    (*(v39 + 56))(v48, 1, 1, v38);
    LODWORD(KeyPath) = *MEMORY[0x1E697E6E8];
  }

  v78 = (v155 + *(v152 + 72));
  v79 = *v78;
  v80 = v78[1];
  v81 = v78[2];
  v82 = v78[3];
  v136 = swift_getKeyPath();
  v156 = v79;
  v157 = v80;
  v158 = v81;
  v159 = v82;
  v160 = v136;
  LOBYTE(v161) = 1;
  v83 = v154;
  v84 = *(v154 + 104);
  v85 = v150;
  v134 = v154 + 104;
  v132 = v84;
  (v84)(v150, KeyPath, v29);
  sub_1E673F228(v79, v80, v81, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098170, &qword_1E68BB630);
  sub_1E67C5A34();
  v86 = v138;
  sub_1E68B2860();
  v87 = *(v83 + 8);
  v154 = v83 + 8;
  v135 = v87;
  v87(v85, v29);
  sub_1E67C5AEC(v79, v80, v81, v82);

  v88 = v155;
  v89 = *(v155 + 216);
  v90 = swift_getKeyPath();
  v91 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999E8, &qword_1E68C3A08) + 36);
  *v91 = v90;
  *(v91 + 8) = v89;
  *(v91 + 16) = 0;
  v92 = sub_1E68B2500();
  v93 = v86 + *(v137 + 36);
  v94 = *(v88 + 72);
  v95 = *(v88 + 56);
  *(&v96 + 1) = *(v88 + 64);
  *&v96 = *(v88 + 72);
  *v93 = v92;
  *(&v95 + 1) = *(&v94 + 1);
  *(v93 + 24) = v95;
  *(v93 + 8) = v96;
  *(v93 + 40) = 0;
  v97 = v139;
  sub_1E68B21A0();
  sub_1E6856AEC();
  sub_1E68B2950();
  (*(v140 + 8))(v97, v141);
  sub_1E6744A10(v86, &qword_1ED0999C0, &qword_1E68C39A8);
  v98 = (v88 + *(v152 + 76));
  v99 = v98[3];
  if (v99)
  {
    v101 = v98[1];
    v100 = v98[2];
    v102 = *v98;
    v103 = swift_getKeyPath();
    v156 = v102;
    v157 = v101;
    v104 = v100 & 1;
    LOBYTE(v158) = v100 & 1;
    v159 = v99;
    v160 = v103;
    LOBYTE(v161) = 1;
    v105 = v150;
    (v132)(v150, KeyPath, v29);
    sub_1E673F228(v102, v101, v100, v99);
    sub_1E673F26C(v102, v101, v100 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999F8, &qword_1E68C3A18);
    sub_1E6856C6C();
    v106 = v133;
    sub_1E68B2860();
    v135(v105, v29);
    sub_1E673F0D4(v102, v101, v100 & 1);

    v107 = v155;
    v108 = *(v155 + 224);
    v109 = *(v155 + 232);
    v110 = swift_getKeyPath();
    v111 = &v106[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A00, &qword_1E68C3A20) + 36)];
    *v111 = v110;
    *(v111 + 1) = v108;
    v111[16] = v109;
    LOBYTE(v110) = sub_1E68B2500();
    sub_1E673F0D4(v102, v101, v104);

    v112 = &v106[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A08, &qword_1E68C3A28) + 36)];
    *v112 = v110;
    v113 = *(v107 + 88);
    *(&v114 + 1) = *(v107 + 96);
    *(&v113 + 1) = *(v107 + 112);
    *&v114 = *(v107 + 104);
    *(v112 + 24) = v113;
    *(v112 + 8) = v114;
    v112[40] = 0;
    v115 = v145;
    v116 = *(v145 + 36);
    v117 = *MEMORY[0x1E6981DB8];
    v118 = sub_1E68B2EB0();
    (*(*(v118 - 8) + 104))(&v106[v116], v117, v118);
    v119 = v106;
    v120 = v146;
    sub_1E6761420(v119, v146, &qword_1ED0999B0, &qword_1E68C3998);
    v121 = 0;
  }

  else
  {
    v115 = v145;
    v120 = v146;
    v121 = 1;
  }

  (*(v144 + 56))(v120, v121, 1, v115);
  v122 = v151;
  v123 = v142;
  sub_1E67612FC(v151, v142, &qword_1ED0999E0, &qword_1E68C39C8);
  v124 = v153;
  v125 = v143;
  sub_1E67612FC(v153, v143, &qword_1ED0999C8, &qword_1E68C39B0);
  v126 = v147;
  sub_1E67612FC(v120, v147, &qword_1ED0999B8, &qword_1E68C39A0);
  v127 = v148;
  sub_1E67612FC(v123, v148, &qword_1ED0999E0, &qword_1E68C39C8);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0999F0, &qword_1E68C3A10);
  sub_1E67612FC(v125, v127 + *(v128 + 48), &qword_1ED0999C8, &qword_1E68C39B0);
  sub_1E67612FC(v126, v127 + *(v128 + 64), &qword_1ED0999B8, &qword_1E68C39A0);
  sub_1E6744A10(v120, &qword_1ED0999B8, &qword_1E68C39A0);
  sub_1E6744A10(v124, &qword_1ED0999C8, &qword_1E68C39B0);
  sub_1E6744A10(v122, &qword_1ED0999E0, &qword_1E68C39C8);
  sub_1E6744A10(v126, &qword_1ED0999B8, &qword_1E68C39A0);
  sub_1E6744A10(v125, &qword_1ED0999C8, &qword_1E68C39B0);
  return sub_1E6744A10(v123, &qword_1ED0999E0, &qword_1E68C39C8);
}

uint64_t sub_1E6851444@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a3;
  v101 = *(a1 - 1);
  *&v105 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v100 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v94 = sub_1E68B1E40();
  v7 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918, &qword_1E68C38D0);
  v93 = v7;
  OpaqueTypeMetadata2 = sub_1E68B1E40();
  *&v104 = a1[4];
  sub_1E68B3750();
  sub_1E68B1E40();
  v99 = a1[7];
  v165 = v99;
  WitnessTable = swift_getWitnessTable();
  v164 = MEMORY[0x1E697E5D8];
  v8 = MEMORY[0x1E697E5D8];
  v109 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  v96 = v6;
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920, &qword_1E68C38D8);
  v9 = a1;
  v108 = a1;
  v98 = a1[3];
  v10 = sub_1E68B1E40();
  v97 = v9[6];
  v161 = v97;
  v162 = v8;
  v11 = swift_getWitnessTable();
  v147 = v10;
  v148 = v11;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v89 = sub_1E68B2CE0();
  v90 = sub_1E68B1E40();
  v86 = sub_1E68B2220();
  v95 = sub_1E68B2440();
  v91 = sub_1E68B1E40();
  v92 = sub_1E68B1E40();
  v85 = sub_1E68B1E40();
  v147 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928, &qword_1E68C38E8);
  v148 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930, &unk_1E68C38F0);
  v149 = v148;
  v150 = v10;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v12 = sub_1E68B1E40();
  v13 = sub_1E68B1E40();
  v14 = swift_getWitnessTable();
  v15 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  v159 = v14;
  v160 = v15;
  v16 = swift_getWitnessTable();
  v87 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v157 = v16;
  v158 = v87;
  v17 = swift_getWitnessTable();
  v155 = v17;
  v156 = MEMORY[0x1E697E5D8];
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x1E6981CD8];
  v147 = v12;
  v148 = MEMORY[0x1E6981CD8];
  v149 = v13;
  v150 = v13;
  v20 = MEMORY[0x1E6981CD0];
  v151 = v17;
  v152 = MEMORY[0x1E6981CD0];
  v153 = v18;
  v154 = v18;
  swift_getOpaqueTypeMetadata2();
  v147 = v12;
  v148 = v19;
  v149 = v13;
  v150 = v13;
  v151 = v17;
  v152 = v20;
  v153 = v18;
  v154 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  sub_1E68B1E40();
  v83 = sub_1E68B2220();
  v84 = sub_1E68B2B90();
  v106 = sub_1E68B1E40();
  v21 = v108[5];
  v145 = v21;
  v146 = MEMORY[0x1E697F568];
  v88 = v21;
  v22 = MEMORY[0x1E697F568];
  v143 = swift_getWitnessTable();
  v144 = MEMORY[0x1E697EBF8];
  v23 = swift_getWitnessTable();
  v24 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918, &qword_1E68C38D0, MEMORY[0x1E697EC18]);
  v141 = v23;
  v142 = v24;
  v25 = swift_getWitnessTable();
  v139 = swift_getWitnessTable();
  v140 = v22;
  v26 = swift_getWitnessTable();
  v137 = v25;
  v138 = v26;
  v27 = swift_getWitnessTable();
  v90 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v135 = v21;
  v136 = v90;
  v133 = swift_getWitnessTable();
  v134 = MEMORY[0x1E697F568];
  v131 = swift_getWitnessTable();
  v132 = MEMORY[0x1E697EBF8];
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v129 = v28;
  v130 = v29;
  v30 = swift_getWitnessTable();
  v127 = v27;
  v128 = v30;
  v126 = swift_getWitnessTable();
  v31 = v84;
  v32 = swift_getWitnessTable();
  v124 = v32;
  v125 = v87;
  v93 = swift_getWitnessTable();
  v33 = sub_1E68B2C30();
  v94 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v91 = &v76 - v35;
  v36 = swift_getWitnessTable();
  v37 = sub_1E67C5938();
  v147 = v33;
  v148 = &type metadata for ActionCardButtonStyle;
  v38 = v33;
  v81 = v33;
  v82 = v37;
  v149 = v36;
  v150 = v37;
  v83 = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v39);
  v89 = &v76 - v40;
  v41 = v31;
  v147 = v31;
  v148 = v32;
  swift_getOpaqueTypeMetadata2();
  v42 = sub_1E68B1E40();
  v147 = v38;
  v148 = &type metadata for ActionCardButtonStyle;
  v149 = v36;
  v150 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = OpaqueTypeConformance2;
  v147 = v41;
  v148 = v32;
  v122 = swift_getOpaqueTypeConformance2();
  v123 = v90;
  v79 = v42;
  v85 = swift_getWitnessTable();
  v147 = OpaqueTypeMetadata2;
  v148 = v42;
  v149 = OpaqueTypeConformance2;
  v150 = v85;
  v87 = MEMORY[0x1E697D3F8];
  v84 = swift_getOpaqueTypeMetadata2();
  v90 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v84);
  v77 = &v76 - v44;
  v45 = sub_1E68B1E40();
  v95 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v46);
  v78 = &v76 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48, v49);
  v80 = &v76 - v51;
  v53 = v100;
  v52 = v101;
  v54 = v102;
  v55 = v108;
  (*(v101 + 16))(v100, v102, v108, v50);
  v56 = (*(v52 + 80) + 64) & ~*(v52 + 80);
  v57 = swift_allocObject();
  *&v58 = v96;
  v59 = v97;
  *(&v58 + 1) = v98;
  *&v60 = v104;
  *(&v60 + 1) = v88;
  v104 = v60;
  v105 = v58;
  *(v57 + 16) = v58;
  *(v57 + 32) = v60;
  v61 = v99;
  *(v57 + 48) = v59;
  *(v57 + 56) = v61;
  (*(v52 + 32))(v57 + v56, v53, v55);
  v115 = v105;
  v116 = v104;
  v117 = v59;
  v118 = v61;
  v119 = v54;
  v62 = v91;
  sub_1E68B2C20();
  v63 = v89;
  v64 = v81;
  sub_1E68B27A0();
  (*(v94 + 8))(v62, v64);
  v110 = v105;
  v111 = v104;
  v112 = v59;
  v113 = v61;
  v114 = v54;
  v65 = swift_checkMetadataState();
  v66 = v77;
  v67 = OpaqueTypeMetadata2;
  v69 = v85;
  v68 = v86;
  sub_1E68B29C0();
  (*(v92 + 8))(v63, v67);
  sub_1E68B2510();
  v147 = v67;
  v148 = v65;
  v149 = v68;
  v150 = v69;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v78;
  v72 = v84;
  sub_1E68B2A70();
  (*(v90 + 8))(v66, v72);
  v120 = v70;
  v121 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v73 = v80;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v74 = *(v95 + 8);
  v74(v71, v45);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v74)(v73, v45);
}

uint64_t sub_1E68522F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v73 = a7;
  v74 = a4;
  v69 = a6;
  v70 = a3;
  v76 = a5;
  v77 = a1;
  v79 = a8;
  v84 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v84, v11);
  v83 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1E68B1E40();
  v13 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918, &qword_1E68C38D0);
  v75 = v13;
  v82 = sub_1E68B1E40();
  sub_1E68B3750();
  sub_1E68B1E40();
  v126 = a7;
  WitnessTable = swift_getWitnessTable();
  v125 = MEMORY[0x1E697E5D8];
  v14 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  v63 = a2;
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920, &qword_1E68C38D8);
  v15 = sub_1E68B1E40();
  v122 = a6;
  v123 = v14;
  v16 = swift_getWitnessTable();
  v108 = v15;
  v109 = v16;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v67 = sub_1E68B2CE0();
  v68 = sub_1E68B1E40();
  v80 = sub_1E68B2220();
  sub_1E68B2440();
  v71 = sub_1E68B1E40();
  v72 = sub_1E68B1E40();
  v81 = sub_1E68B1E40();
  v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928, &qword_1E68C38E8);
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930, &unk_1E68C38F0);
  v110 = v109;
  v111 = v15;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v17 = sub_1E68B1E40();
  v18 = sub_1E68B1E40();
  v19 = swift_getWitnessTable();
  v20 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  v120 = v19;
  v121 = v20;
  v21 = swift_getWitnessTable();
  v66 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v118 = v21;
  v119 = v66;
  v22 = swift_getWitnessTable();
  v116 = v22;
  v117 = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  v24 = MEMORY[0x1E6981CD8];
  v108 = v17;
  v109 = MEMORY[0x1E6981CD8];
  v110 = v18;
  v111 = v18;
  v25 = MEMORY[0x1E6981CD0];
  v112 = v22;
  v113 = MEMORY[0x1E6981CD0];
  v114 = v23;
  v115 = v23;
  swift_getOpaqueTypeMetadata2();
  v108 = v17;
  v109 = v24;
  v110 = v18;
  v111 = v18;
  v112 = v22;
  v113 = v25;
  v114 = v23;
  v115 = v23;
  swift_getOpaqueTypeConformance2();
  v61[1] = sub_1E68B1F40();
  v61[2] = sub_1E68B1E40();
  v61[3] = sub_1E68B2220();
  v26 = sub_1E68B2B90();
  v64 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v61 - v28;
  v30 = sub_1E68B1E40();
  v65 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v62 = v61 - v36;
  v108 = v63;
  v109 = v70;
  v37 = v76;
  v110 = v74;
  v111 = v76;
  v112 = v69;
  v113 = v73;
  v38 = type metadata accessor for ActionCardView(0, &v108);
  v39 = v77;
  sub_1E6852DC4(v38);
  v40 = *(v39 + 32);
  v41 = *(v84 + 20);
  v42 = *MEMORY[0x1E697F468];
  v43 = sub_1E68B2160();
  v44 = v83;
  (*(*(v43 - 8) + 104))(&v83[v41], v42, v43);
  *v44 = v40;
  v44[1] = v40;
  v106 = v37;
  v107 = MEMORY[0x1E697F568];
  v45 = v37;
  v46 = MEMORY[0x1E697F568];
  v104 = swift_getWitnessTable();
  v105 = MEMORY[0x1E697EBF8];
  v47 = swift_getWitnessTable();
  v48 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918, &qword_1E68C38D0, MEMORY[0x1E697EC18]);
  v102 = v47;
  v103 = v48;
  v49 = swift_getWitnessTable();
  v100 = swift_getWitnessTable();
  v101 = v46;
  v50 = swift_getWitnessTable();
  v98 = v49;
  v99 = v50;
  v51 = swift_getWitnessTable();
  v52 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v96 = v45;
  v97 = v52;
  v94 = swift_getWitnessTable();
  v95 = MEMORY[0x1E697F568];
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x1E697EBF8];
  v53 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v90 = v53;
  v91 = v54;
  v55 = swift_getWitnessTable();
  v88 = v51;
  v89 = v55;
  v87 = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  sub_1E6856E40(&qword_1EE2EA660, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v57 = v83;
  sub_1E68B2AE0();
  sub_1E6768D04(v57);
  (*(v64 + 8))(v29, v26);
  v85 = v56;
  v86 = v66;
  swift_getWitnessTable();
  v58 = v62;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v59 = *(v65 + 8);
  v59(v33, v30);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v59)(v58, v30);
}

uint64_t sub_1E6852DC4(void *a1)
{
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918, &qword_1E68C38D0);
  sub_1E68B1E40();
  sub_1E68B3750();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920, &qword_1E68C38D8);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928, &qword_1E68C38E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930, &unk_1E68C38F0);
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918, &qword_1E68C38D0, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1E68B2B80();
}

uint64_t sub_1E685356C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v120 = a5;
  v107 = a1;
  v118 = a8;
  v144 = a2;
  v145 = a3;
  v146 = a4;
  v147 = a5;
  v148 = a6;
  v149 = a7;
  v106 = type metadata accessor for ActionCardView(0, &v144);
  v112 = *(v106 - 1);
  v110 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v106, v13);
  v111 = &v89 - v14;
  v15 = sub_1E68B21B0();
  v108 = *(v15 - 8);
  v109 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v105 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E68B2400();
  OpaqueTypeConformance2 = *(v18 - 8);
  v104 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v102 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1E68B1E40();
  v21 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918, &qword_1E68C38D0);
  v99 = v21;
  v119 = sub_1E68B1E40();
  v115 = a4;
  sub_1E68B3750();
  sub_1E68B1E40();
  v117 = a7;
  v162 = a7;
  WitnessTable = swift_getWitnessTable();
  v161 = MEMORY[0x1E697E5D8];
  v22 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920, &qword_1E68C38D8);
  v114 = a3;
  v23 = sub_1E68B1E40();
  v116 = a6;
  v158 = a6;
  v159 = v22;
  v24 = swift_getWitnessTable();
  v144 = v23;
  v145 = v24;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = sub_1E68B2CE0();
  v96 = sub_1E68B1E40();
  v92 = sub_1E68B2220();
  v100 = sub_1E68B2440();
  v113 = a2;
  v97 = sub_1E68B1E40();
  v98 = sub_1E68B1E40();
  v91 = sub_1E68B1E40();
  v144 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928, &qword_1E68C38E8);
  v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930, &unk_1E68C38F0);
  v146 = v145;
  v147 = v23;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v25 = sub_1E68B1E40();
  v26 = sub_1E68B1E40();
  v27 = swift_getWitnessTable();
  v28 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  v156 = v27;
  v157 = v28;
  v29 = swift_getWitnessTable();
  v30 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v154 = v29;
  v155 = v30;
  v31 = swift_getWitnessTable();
  v152 = v31;
  v153 = MEMORY[0x1E697E5D8];
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x1E6981CD8];
  v144 = v25;
  v145 = MEMORY[0x1E6981CD8];
  v146 = v26;
  v147 = v26;
  v34 = MEMORY[0x1E6981CD0];
  v148 = v31;
  v149 = MEMORY[0x1E6981CD0];
  v150 = v32;
  v151 = v32;
  swift_getOpaqueTypeMetadata2();
  v144 = v25;
  v145 = v33;
  v146 = v26;
  v147 = v26;
  v148 = v31;
  v149 = v34;
  v150 = v32;
  v151 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  sub_1E68B1E40();
  v89 = sub_1E68B2220();
  v90 = sub_1E68B2B90();
  v94 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v35);
  v93 = &v89 - v36;
  v37 = v120;
  v142 = v120;
  v143 = MEMORY[0x1E697F568];
  v38 = MEMORY[0x1E697F568];
  v140 = swift_getWitnessTable();
  v141 = MEMORY[0x1E697EBF8];
  v39 = swift_getWitnessTable();
  v40 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918, &qword_1E68C38D0, MEMORY[0x1E697EC18]);
  v138 = v39;
  v139 = v40;
  v41 = swift_getWitnessTable();
  v136 = swift_getWitnessTable();
  v137 = v38;
  v42 = swift_getWitnessTable();
  v134 = v41;
  v135 = v42;
  v43 = swift_getWitnessTable();
  v44 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v132 = v37;
  v133 = v44;
  v119 = v44;
  v130 = swift_getWitnessTable();
  v131 = MEMORY[0x1E697F568];
  v128 = swift_getWitnessTable();
  v129 = MEMORY[0x1E697EBF8];
  v45 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v126 = v45;
  v127 = v46;
  v47 = swift_getWitnessTable();
  v124 = v43;
  v125 = v47;
  v123 = swift_getWitnessTable();
  v48 = v90;
  v92 = swift_getWitnessTable();
  v144 = v48;
  v145 = v92;
  v96 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, OpaqueTypeMetadata2);
  v50 = &v89 - v49;
  v97 = sub_1E68B1E40();
  v101 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v51);
  v53 = &v89 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v99 = &v89 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v100 = &v89 - v59;
  v60 = v93;
  v61 = v106;
  v62 = v107;
  sub_1E6852DC4(v106);
  v63 = v102;
  sub_1E68B23F0();
  v64 = v92;
  sub_1E68B2920();
  (*(OpaqueTypeConformance2 + 8))(v63, v104);
  (*(v94 + 8))(v60, v48);
  v65 = v105;
  sub_1E68B2190();
  v144 = v48;
  v145 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = v53;
  v66 = OpaqueTypeMetadata2;
  sub_1E68B2950();
  (*(v108 + 8))(v65, v109);
  (*(v98 + 8))(v50, v66);
  v67 = v61;
  v68 = (v62 + *(v61 + 20));
  v70 = *v68;
  v69 = v68[1];
  v71 = v68[2];
  v72 = v68[3];
  if (v72)
  {
    v102 = *v68;
    v105 = v69;
    LODWORD(v108) = v71;
    v109 = v72;
  }

  else
  {
    v102 = 0;
    LODWORD(v108) = 0;
    v109 = MEMORY[0x1E69E7CC0];
    v105 = 0xE000000000000000;
  }

  v73 = v111;
  v74 = v112;
  (*(v112 + 16))(v111, v62, v67);
  v75 = (*(v74 + 80) + 64) & ~*(v74 + 80);
  v76 = swift_allocObject();
  v77 = v114;
  *(v76 + 2) = v113;
  *(v76 + 3) = v77;
  v78 = v120;
  *(v76 + 4) = v115;
  *(v76 + 5) = v78;
  v79 = v117;
  *(v76 + 6) = v116;
  *(v76 + 7) = v79;
  (*(v74 + 32))(&v76[v75], v73, v67);
  sub_1E673F228(v70, v69, v71, v72);
  v80 = v108;
  v81 = v99;
  v82 = v102;
  v83 = v104;
  v84 = v105;
  v85 = v97;
  sub_1E68B1E20();

  sub_1E673F0D4(v82, v84, v80 & 1);

  v86 = *(v101 + 8);
  v86(v83, v85);
  v121 = OpaqueTypeConformance2;
  v122 = v119;
  swift_getWitnessTable();
  v87 = v100;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v86(v81, v85);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v86)(v87, v85);
}

uint64_t sub_1E6854380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v7 = a1 + *(type metadata accessor for ActionCardView(0, v12) + 96);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;

  sub_1E677A174(v8);
}

uint64_t sub_1E685440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v122 = a7;
  v123 = a6;
  v132 = a5;
  v133 = a2;
  v134 = a4;
  v125 = a3;
  v126 = a1;
  v130 = a8;
  sub_1E68B2440();
  v141 = sub_1E68B1E40();
  v142 = sub_1E68B1E40();
  v143 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928, &qword_1E68C38E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930, &unk_1E68C38F0);
  v136 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  v135 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E68B2CC0();
  v138 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v8 = sub_1E68B1E40();
  v9 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v236 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  v233 = swift_getWitnessTable();
  v234 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v231 = swift_getWitnessTable();
  v232 = MEMORY[0x1E697E5D8];
  v10 = swift_getWitnessTable();
  v11 = MEMORY[0x1E6981CD8];
  v12 = MEMORY[0x1E6981CD0];
  swift_getOpaqueTypeMetadata2();
  v223 = v8;
  v224 = v11;
  v225 = v9;
  v226 = v9;
  v227 = v231;
  v228 = v12;
  v229 = v10;
  v230 = v10;
  swift_getOpaqueTypeConformance2();
  v139 = sub_1E68B1F40();
  v13 = sub_1E68B1E40();
  v117 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v116 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v121 = &v114 - v18;
  v137 = sub_1E68B1E40();
  v19 = sub_1E68B1E40();
  sub_1E68B3750();
  sub_1E68B1E40();
  v20 = v122;
  v222 = v122;
  v220 = swift_getWitnessTable();
  v21 = MEMORY[0x1E697E5D8];
  v221 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920, &qword_1E68C38D8);
  v22 = v123;
  v218 = v123;
  v219 = v21;
  v23 = v136;
  v24 = swift_getWitnessTable();
  v223 = v23;
  v224 = v24;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v136 = sub_1E68B2CE0();
  v25 = sub_1E68B1E40();
  v115 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v118 = &v114 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918, &qword_1E68C38D0);
  v138 = v19;
  v32 = sub_1E68B1E40();
  v33 = sub_1E68B2220();
  v120 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v33);
  v119 = &v114 - v34;
  v124 = v32;
  v114 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v114 - v41;
  v127 = v43;
  v44 = sub_1E68B2220();
  v128 = *(v44 - 8);
  v129 = v44;
  MEMORY[0x1EEE9AC00](v44, v45);
  v135 = &v114 - v46;
  v223 = v133;
  v224 = v125;
  v47 = v132;
  v225 = v134;
  v226 = v132;
  v227 = v22;
  v228 = v20;
  v48 = type metadata accessor for ActionCardView(0, &v223);
  v49 = *(v126 + *(v48 + 84));
  v50 = MEMORY[0x1E697EBF8];
  v140 = v13;
  v131 = v25;
  if (v49)
  {
    v51 = MEMORY[0x1E697F568];
    if (v49 == 1)
    {
      sub_1E684E920(v48, v28);
      v178 = swift_getWitnessTable();
      v179 = v51;
      v52 = swift_getWitnessTable();
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
      v134 = *(v115 + 8);
      v134(v28, v25);
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
      v176 = v47;
      v177 = v51;
      v174 = swift_getWitnessTable();
      v175 = v50;
      v53 = swift_getWitnessTable();
      v133 = MEMORY[0x1E697EC18];
      v54 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918, &qword_1E68C38D0, MEMORY[0x1E697EC18]);
      v172 = v53;
      v173 = v54;
      v55 = v124;
      v56 = swift_getWitnessTable();
      v57 = v119;
      sub_1E6744DB8(v28, v55, v25, v56, v52);
      v170 = v56;
      v171 = v52;
      v58 = v50;
      v59 = v127;
      v126 = swift_getWitnessTable();
      v60 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
      v61 = v132;
      v168 = v132;
      v169 = v60;
      v166 = swift_getWitnessTable();
      v167 = MEMORY[0x1E697F568];
      v164 = swift_getWitnessTable();
      v165 = v58;
      v62 = swift_getWitnessTable();
      v63 = swift_getWitnessTable();
      v162 = v62;
      v163 = v63;
      v64 = v61;
      v65 = v140;
      v66 = swift_getWitnessTable();
      sub_1E6744CC0(v57, v59, v65, v126, v66);
      (*(v120 + 8))(v57, v59);
      v67 = v134;
      v134(v28, v25);
      v67(v118, v25);
    }

    else
    {
      v84 = v116;
      sub_1E684AAB4(v48, v116);
      v85 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
      v64 = v47;
      v216 = v47;
      v217 = v85;
      v214 = swift_getWitnessTable();
      v215 = v51;
      v212 = swift_getWitnessTable();
      v213 = v50;
      v86 = swift_getWitnessTable();
      v87 = MEMORY[0x1E697EC18];
      v88 = swift_getWitnessTable();
      v210 = v86;
      v211 = v88;
      v89 = v140;
      v90 = swift_getWitnessTable();
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
      v134 = *(v117 + 8);
      v134(v84, v89);
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
      v208 = v47;
      v209 = MEMORY[0x1E697F568];
      v206 = swift_getWitnessTable();
      v207 = v50;
      v91 = swift_getWitnessTable();
      v92 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918, &qword_1E68C38D0, v87);
      v204 = v91;
      v205 = v92;
      v93 = swift_getWitnessTable();
      v202 = swift_getWitnessTable();
      v203 = MEMORY[0x1E697F568];
      v94 = swift_getWitnessTable();
      v200 = v93;
      v201 = v94;
      v95 = v127;
      v96 = swift_getWitnessTable();
      sub_1E6744DB8(v84, v95, v89, v96, v90);
      v97 = v84;
      v98 = v134;
      v134(v97, v89);
      v98(v121, v89);
    }
  }

  else
  {
    v68 = MEMORY[0x1E697F568];
    sub_1E684D498(v48, v38);
    v160 = v47;
    v161 = v68;
    v158 = swift_getWitnessTable();
    v159 = v50;
    v69 = v25;
    v70 = swift_getWitnessTable();
    v133 = MEMORY[0x1E697EC18];
    v71 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918, &qword_1E68C38D0, MEMORY[0x1E697EC18]);
    v156 = v70;
    v157 = v71;
    v72 = v124;
    v73 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v134 = *(v114 + 8);
    v134(v38, v72);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v154 = swift_getWitnessTable();
    v155 = v68;
    v74 = swift_getWitnessTable();
    v75 = v119;
    sub_1E6744CC0(v38, v72, v69, v73, v74);
    v152 = v73;
    v153 = v74;
    v76 = v127;
    v126 = swift_getWitnessTable();
    v77 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v78 = v132;
    v150 = v132;
    v151 = v77;
    v148 = swift_getWitnessTable();
    v149 = MEMORY[0x1E697F568];
    v146 = swift_getWitnessTable();
    v147 = MEMORY[0x1E697EBF8];
    v79 = swift_getWitnessTable();
    v80 = swift_getWitnessTable();
    v144 = v79;
    v145 = v80;
    v81 = v140;
    v82 = swift_getWitnessTable();
    sub_1E6744CC0(v75, v76, v81, v126, v82);
    (*(v120 + 8))(v75, v76);
    v83 = v134;
    v134(v38, v72);
    v83(v42, v72);
    v64 = v78;
  }

  v198 = v64;
  v99 = MEMORY[0x1E697F568];
  v199 = MEMORY[0x1E697F568];
  v196 = swift_getWitnessTable();
  v100 = v64;
  v101 = MEMORY[0x1E697EBF8];
  v197 = MEMORY[0x1E697EBF8];
  v102 = swift_getWitnessTable();
  v103 = sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918, &qword_1E68C38D0, MEMORY[0x1E697EC18]);
  v194 = v102;
  v195 = v103;
  v104 = swift_getWitnessTable();
  v192 = swift_getWitnessTable();
  v193 = v99;
  v105 = swift_getWitnessTable();
  v190 = v104;
  v191 = v105;
  v106 = swift_getWitnessTable();
  v107 = sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v188 = v100;
  v189 = v107;
  v186 = swift_getWitnessTable();
  v187 = v99;
  v184 = swift_getWitnessTable();
  v185 = v101;
  v108 = swift_getWitnessTable();
  v109 = swift_getWitnessTable();
  v182 = v108;
  v183 = v109;
  v110 = swift_getWitnessTable();
  v180 = v106;
  v181 = v110;
  v111 = v129;
  swift_getWitnessTable();
  v112 = v135;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v128 + 8))(v112, v111);
}

uint64_t sub_1E6855658@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E68B2080();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E68556BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E68B2020();
  *a1 = result;
  return result;
}

uint64_t sub_1E6855734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099A18, &unk_1E68C3A70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1E67612FC(a1, &v6 - v4, &qword_1ED099A18, &unk_1E68C3A70);
  return sub_1E68B2070();
}

BOOL _s15FitnessCanvasUI20ActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))), vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112)))))) & 1) != 0 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 128), *(a2 + 128)), vceqq_f64(*(a1 + 144), *(a2 + 144))), vuzp1q_s32(vceqq_f64(*(a1 + 160), *(a2 + 160)), vceqq_f64(*(a1 + 176), *(a2 + 176)))), xmmword_1E68C3600)) == 255 && *(a1 + 192) == *(a2 + 192) && *(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && *(a1 + 216) == *(a2 + 216))
  {
    v4 = *(a1 + 240);
    if (*(a1 + 232))
    {
      if (!*(a2 + 232))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 224) == *(a2 + 224))
      {
        v5 = *(a2 + 232);
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return v4 == *(a2 + 240);
  }

  return result;
}

unint64_t sub_1E6855924()
{
  result = qword_1EE2EB378;
  if (!qword_1EE2EB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB378);
  }

  return result;
}

unint64_t sub_1E685597C()
{
  result = qword_1ED099908;
  if (!qword_1ED099908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099908);
  }

  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1E6855A1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 248))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E6855A3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 248) = v3;
  return result;
}

void sub_1E6855ACC(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E673ED38();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1E68B3750();
        if (v4 <= 0x3F)
        {
          sub_1E673ED88(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E6855BC0(int *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 84);
  v9 = a3[4];
  v10 = *(v9 - 8);
  if (v6 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v5 + 84);
  }

  v12 = *(v10 + 84);
  v13 = *(v5 + 80);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (v12)
  {
    v17 = v12 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  if (v12)
  {
    v19 = v16;
  }

  else
  {
    v19 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(*(v4 - 8) + 64) + 7;
  v21 = v14 + 33;
  v22 = *(*(a3[3] - 8) + 64) + v15;
  v23 = v19 + 7;
  if (v18 < a2)
  {
    v24 = ((v23 + ((v22 + ((v21 + ((((((v20 + ((v13 + 248) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v14)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v25 = a2 - v18;
    v26 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v27 = 2;
    }

    else
    {
      v27 = v25 + 1;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v30 = *(a1 + v24);
        if (v30)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v30 = *(a1 + v24);
        if (v30)
        {
          goto LABEL_31;
        }
      }
    }

    else if (v29)
    {
      v30 = *(a1 + v24);
      if (v30)
      {
LABEL_31:
        v31 = v30 - 1;
        if (v26)
        {
          v31 = 0;
          v32 = *a1;
        }

        else
        {
          v32 = 0;
        }

        return v18 + (v32 | v31) + 1;
      }
    }
  }

  v33 = (a1 + v13 + 248) & ~v13;
  if (v6 == v18)
  {
    v34 = *(v5 + 48);

    return v34(v33, v6, v4);
  }

  v36 = (v21 + ((((((v20 + v33) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v14;
  if (v8 == v18)
  {
    v37 = *(v7 + 48);

    return v37(v36);
  }

  v38 = (v22 + v36) & ~v15;
  if (v17 == v18)
  {
    if (v12 >= 2)
    {
      v40 = (*(*(v9 - 8) + 48))(v38, v12, v9);
      if (v40 >= 2)
      {
        return v40 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v39 = *((v23 + v38) & 0xFFFFFFFFFFFFFFF8);
  if (v39 >= 0xFFFFFFFF)
  {
    LODWORD(v39) = -1;
  }

  return (v39 + 1);
}

_DWORD *sub_1E6855F00(_DWORD *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = a4[4];
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v6 + 80);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(a4[3] - 8) + 64);
  v18 = *(v12 + 80);
  if (v13)
  {
    v19 = v13 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v10 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v10;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  v21 = v15 + 7;
  v22 = (v17 + v18 + ((v16 + 33 + ((((((v15 + 7 + ((v14 + 248) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v18;
  if (v13)
  {
    v23 = *(*(v11 - 8) + 64);
  }

  else
  {
    v23 = *(*(v11 - 8) + 64) + 1;
  }

  v24 = v23 + 7;
  v25 = ((v24 + v22) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 < a3)
  {
    v26 = a3 - v20;
    if (v25)
    {
      v27 = 2;
    }

    else
    {
      v27 = v26 + 1;
    }

    if (v27 >= 0x10000)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    if (v27 < 0x100)
    {
      v5 = 1;
    }

    if (v27 < 2)
    {
      v5 = 0;
    }
  }

  if (a2 > v20)
  {
    if (v25)
    {
      v28 = 1;
    }

    else
    {
      v28 = a2 - v20;
    }

    if (v25)
    {
      v29 = ~v20 + a2;
      v30 = result;
      bzero(result, v25);
      result = v30;
      *v30 = v29;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v25) = v28;
      }

      else
      {
        *(result + v25) = v28;
      }
    }

    else if (v5)
    {
      *(result + v25) = v28;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v25) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_44;
    }

    *(result + v25) = 0;
  }

  else if (v5)
  {
    *(result + v25) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return result;
  }

LABEL_44:
  v31 = (result + v14 + 248) & ~v14;
  if (v7 == v20)
  {
    v32 = *(v6 + 56);

    return v32(v31);
  }

  else
  {
    v33 = (v16 + 33 + ((((((v21 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v16;
    if (v9 == v20)
    {
      v34 = *(v8 + 56);

      return v34(v33);
    }

    else
    {
      result = ((v17 + v18 + v33) & ~v18);
      if (v19 == v20)
      {
        v35 = *(v12 + 56);
        v36 = a2 + 1;

        return v35(result, v36, v13, v11);
      }

      else
      {
        v37 = ((result + v24) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v37 = a2 & 0x7FFFFFFF;
          v37[1] = 0;
        }

        else
        {
          *v37 = a2 - 1;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1E68562AC()
{
  result = qword_1ED099910;
  if (!qword_1ED099910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099910);
  }

  return result;
}

unint64_t sub_1E6856304()
{
  result = qword_1EE2EB368;
  if (!qword_1EE2EB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB368);
  }

  return result;
}

unint64_t sub_1E685635C()
{
  result = qword_1EE2EB370;
  if (!qword_1EE2EB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB370);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 24);
  v13[0] = *(v0 + 16);
  v2 = v13[0];
  v13[1] = v1;
  v3 = *(v0 + 48);
  v12 = *(v0 + 32);
  v14 = v12;
  v15 = v3;
  v4 = type metadata accessor for ActionCardView(0, v13);
  v5 = v0 + ((*(*(v4 - 1) + 80) + 64) & ~*(*(v4 - 1) + 80));
  (*(*(v2 - 8) + 8))(v5 + v4[17], v2);
  v6 = v5 + v4[18];
  if (*(v6 + 24))
  {
    sub_1E673F0D4(*v6, *(v6 + 8), *(v6 + 16));
  }

  v7 = v5 + v4[19];
  if (*(v7 + 24))
  {
    sub_1E673F0D4(*v7, *(v7 + 8), *(v7 + 16));
  }

  v8 = v5 + v4[20];
  if (*(v8 + 24))
  {
    sub_1E673F0D4(*v8, *(v8 + 8), *(v8 + 16));
  }

  (*(*(v1 - 8) + 8))(v5 + v4[22], v1);
  v9 = v4[23];
  v10 = *(v12 - 8);
  if (!(*(v10 + 48))(v5 + v9, 1, v12))
  {
    (*(v10 + 8))(v5 + v9, v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1E6856650()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v9[0] = v0[2];
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v6;
  v7 = *(type metadata accessor for ActionCardView(0, v9) - 8);
  return sub_1E6854380(v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80)), v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1E6856730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099960, &qword_1E68C3920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E68567A0()
{
  result = qword_1ED099990;
  if (!qword_1ED099990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099970, &qword_1E68C3930);
    sub_1E685682C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099990);
  }

  return result;
}

unint64_t sub_1E685682C()
{
  result = qword_1ED099998;
  if (!qword_1ED099998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099988, &unk_1E68C3978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099968, &qword_1E68C3928);
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968, &qword_1E68C3928, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48, &qword_1E68BB6E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099998);
  }

  return result;
}

unint64_t sub_1E68569B0()
{
  result = qword_1EE2EA7B0;
  if (!qword_1EE2EA7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920, &qword_1E68C38D8);
    sub_1E6856A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7B0);
  }

  return result;
}

unint64_t sub_1E6856A3C()
{
  result = qword_1EE2EA568;
  if (!qword_1EE2EA568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999A0, &qword_1E68C3988);
    sub_1E673F530(&qword_1EE2EA4D0, &qword_1ED0999A8, &qword_1E68C3990, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA568);
  }

  return result;
}

unint64_t sub_1E6856AEC()
{
  result = qword_1EE2EA730;
  if (!qword_1EE2EA730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999C0, &qword_1E68C39A8);
    sub_1E6856B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA730);
  }

  return result;
}

unint64_t sub_1E6856B78()
{
  result = qword_1EE2EA7D0;
  if (!qword_1EE2EA7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999E8, &qword_1E68C3A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098170, &qword_1E68BB630);
    sub_1E67C5A34();
    swift_getOpaqueTypeConformance2();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48, &qword_1E68BB6E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7D0);
  }

  return result;
}

unint64_t sub_1E6856C6C()
{
  result = qword_1EE2EA808;
  if (!qword_1EE2EA808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999F8, &qword_1E68C3A18);
    sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260, &qword_1E68BB680, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA808);
  }

  return result;
}

unint64_t sub_1E6856D24()
{
  result = qword_1EE2EA768;
  if (!qword_1EE2EA768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999D0, &qword_1E68C39B8);
    sub_1E6856C6C();
    sub_1E673F530(&qword_1EE2EA5A0, &qword_1ED0978D8, &qword_1E68C3A30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA768);
  }

  return result;
}

uint64_t sub_1E6856E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6856EC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E6856F3C()
{
  result = qword_1EE2EA718;
  if (!qword_1EE2EA718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099A28, &qword_1E68C3A88);
    sub_1E6856FC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA718);
  }

  return result;
}

unint64_t sub_1E6856FC8()
{
  result = qword_1EE2EA7C0;
  if (!qword_1EE2EA7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099A30, &qword_1E68C3A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999D0, &qword_1E68C39B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099968, &qword_1E68C3928);
    sub_1E6856D24();
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968, &qword_1E68C3928, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48, &qword_1E68BB6E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7C0);
  }

  return result;
}

unint64_t sub_1E685711C()
{
  result = qword_1EE2EA728;
  if (!qword_1EE2EA728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099A20, &qword_1E68C3A80);
    sub_1E68571A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA728);
  }

  return result;
}

unint64_t sub_1E68571A8()
{
  result = qword_1EE2EA7C8;
  if (!qword_1EE2EA7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED099A38, &qword_1E68C3A98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0999F8, &qword_1E68C3A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099968, &qword_1E68C3928);
    sub_1E6856C6C();
    sub_1E673F530(&qword_1EE2EA4B8, &qword_1ED099968, &qword_1E68C3928, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48, &qword_1E68BB6E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7C8);
  }

  return result;
}

uint64_t sub_1E68572FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E68E2FA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E2FC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2FE0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646150656C746974 && a2 == 0xEC000000676E6964 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEF676E6964646150 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x506E6F6974706163 && a2 == 0xEE00676E69646461 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E3000 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E3020 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2BA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2BC0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t LazyCanvasSectionDescriptor.items.getter(uint64_t a1)
{
  sub_1E677293C(a1);
}

uint64_t LazyCanvasSectionDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LazyCanvasSectionDescriptor.layout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 180);
  v5 = *(a1 + 80);
  v6 = *(a1 + 152);
  v7 = *(a1 + 168);
  v10[0] = *(a1 + 64);
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v8 = type metadata accessor for CanvasSectionLayout(0, v10);
  return (*(*(v8 - 8) + 16))(a2, v2 + v4, v8);
}

uint64_t LazyCanvasSectionDescriptor.header.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 184);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 160);
  v10[0] = *(a1 + 16);
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  type metadata accessor for CanvasSectionHeader(255, v10);
  v8 = sub_1E68B3750();
  return (*(*(v8 - 8) + 16))(a2, v2 + v4, v8);
}

uint64_t LazyCanvasSectionDescriptor.metrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 196);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t LazyCanvasSectionDescriptor.init(identifier:layout:header:footer:items:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v35 = *a5;
  *a9 = a1;
  *(a9 + 1) = a2;
  v39 = a8;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v44 = a14;
  v45 = a15;
  v46 = a16;
  v47 = a17;
  v48 = a18;
  v49 = a19;
  v50 = a20;
  v51 = a21;
  v52 = a22;
  v53 = a23;
  v54 = a24;
  v25 = type metadata accessor for LazyCanvasSectionDescriptor(0, &v39);
  v26 = v25[45];
  v39 = a14;
  *&v40 = a16;
  *(&v40 + 1) = a22;
  v41 = a24;
  v27 = type metadata accessor for CanvasSectionLayout(0, &v39);
  (*(*(v27 - 8) + 32))(&a9[v26], a3, v27);
  v28 = v25[46];
  v39 = a8;
  *&v40 = a15;
  *(&v40 + 1) = a17;
  v41 = a23;
  type metadata accessor for CanvasSectionHeader(255, &v39);
  v29 = sub_1E68B3750();
  (*(*(v29 - 8) + 32))(&a9[v28], a4, v29);
  a9[v25[47]] = v35;
  *&a9[v25[48]] = a6;
  v30 = v25[49];
  v31 = sub_1E68B3750();
  return (*(*(v31 - 8) + 32))(&a9[v30], a7, v31);
}

uint64_t sub_1E6857B00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E6857CF4(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x7265746F6F66;
  v3 = 0x736D657469;
  if (a1 != 4)
  {
    v3 = 0x7363697274656DLL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x74756F79616CLL;
  if (a1 != 1)
  {
    v4 = 0x726564616568;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E6857E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6857B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6857E64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67BF590();
  *a1 = result;
  return result;
}

uint64_t sub_1E6857EC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6857F1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t LazyCanvasSectionDescriptor.id.getter()
{
  v0 = sub_1E6739D1C();

  return v0;
}

uint64_t LazyCanvasSectionDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v13 = *(a2 + 80);
  v12 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v20 = *(a2 + 144);
  v21 = *(a2 + 152);
  v22 = *(a2 + 160);
  v23 = *(a2 + 168);
  v50 = v4;
  v59 = v4;
  v60 = v5;
  v45 = v5;
  v44 = v6;
  v61 = v6;
  v62 = v7;
  v43 = v7;
  v42 = v8;
  v63 = v8;
  v64 = v9;
  v35[1] = v9;
  v51 = v10;
  v65 = v10;
  v66 = v11;
  v48 = v11;
  v52 = v13;
  v67 = v13;
  v68 = v12;
  v47 = v12;
  v41 = v14;
  v69 = v14;
  v70 = v15;
  v40 = v15;
  v39 = v16;
  v71 = v16;
  v72 = v17;
  v38 = v17;
  v37 = v18;
  v73 = v18;
  v74 = v19;
  v36 = v19;
  v35[0] = v20;
  v75 = v20;
  v76 = v21;
  v49 = v21;
  v46 = v22;
  v77 = v22;
  v78 = v23;
  v53 = v23;
  type metadata accessor for LazyCanvasSectionDescriptor.CodingKeys(255, &v59);
  swift_getWitnessTable();
  v24 = sub_1E68B3AC0();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = v35 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = v54;
  sub_1E68B3BD0();
  LOBYTE(v59) = 0;
  v56 = v24;
  v30 = v28;
  v31 = v55;
  sub_1E68B3A70();
  if (v31)
  {
    return (*(v25 + 8))(v28, v56);
  }

  v33 = v48;
  v34 = v50;
  LOBYTE(v79) = 1;
  v59 = v51;
  v60 = v52;
  v61 = v49;
  v62 = v53;
  type metadata accessor for CanvasSectionLayout(0, &v59);
  swift_getWitnessTable();
  sub_1E68B3AB0();
  LOBYTE(v79) = 2;
  v59 = v34;
  v60 = v33;
  v61 = v47;
  v62 = v46;
  type metadata accessor for CanvasSectionHeader(0, &v59);
  swift_getWitnessTable();
  sub_1E68B3A60();
  LOBYTE(v59) = *(v29 + *(a2 + 188));
  LOBYTE(v79) = 3;
  sub_1E674B0D4();
  sub_1E68B3AB0();
  v79 = *(v29 + *(a2 + 192));
  v58 = 4;
  v59 = v34;
  v60 = v45;
  v61 = v44;
  v62 = v43;
  v63 = v42;
  v64 = v52;
  v65 = v47;
  v66 = v41;
  v67 = v40;
  v68 = v39;
  v69 = v38;
  v70 = v37;
  v71 = v36;
  v72 = v53;
  type metadata accessor for LazyCanvasItemDescriptor(255, &v59);
  sub_1E68B33B0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B3AB0();
  LOBYTE(v59) = 5;
  sub_1E68B3A60();
  return (*(v25 + 8))(v30, v56);
}

uint64_t LazyCanvasSectionDescriptor.init(from:)@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, char *a12, char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, uint64_t a19, char *a20, char *a21, char *a22)
{
  v82 = a7;
  v87 = a6;
  v78 = a5;
  v76 = a4;
  v84 = a3;
  v81 = a1;
  v56 = a9;
  v83 = a19;
  v88 = a18;
  v79 = a17;
  v77 = a16;
  v75 = a15;
  v86 = a14;
  v85 = a13;
  v80 = a10;
  v55 = sub_1E68B3750();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v24);
  v57 = &v53 - v25;
  v90 = a2;
  v91 = a10;
  v72 = a2;
  v74 = a12;
  v92 = a12;
  v93 = a21;
  v68 = a21;
  v64 = type metadata accessor for CanvasSectionHeader(255, &v90);
  v58 = sub_1E68B3750();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v26);
  v63 = &v53 - v27;
  v28 = a8;
  v67 = a8;
  v90 = a8;
  v91 = a11;
  v73 = a11;
  v92 = a20;
  v93 = a22;
  v69 = a20;
  v61 = type metadata accessor for CanvasSectionLayout(0, &v90);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v29);
  v62 = &v53 - v30;
  v90 = a2;
  v91 = v84;
  v31 = v76;
  v32 = v78;
  v92 = v76;
  v93 = v78;
  v94 = v87;
  v95 = v82;
  v96 = v28;
  v97 = v80;
  v98 = a11;
  v99 = a12;
  v100 = v85;
  v101 = v86;
  v33 = v75;
  v34 = v77;
  v102 = v75;
  v103 = v77;
  v35 = v79;
  v104 = v79;
  v105 = v88;
  v106 = v83;
  v107 = a20;
  v108 = a21;
  v109 = a22;
  type metadata accessor for LazyCanvasSectionDescriptor.CodingKeys(255, &v90);
  WitnessTable = swift_getWitnessTable();
  v66 = sub_1E68B3A20();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v36);
  v38 = &v53 - v37;
  v90 = v72;
  v91 = v84;
  v92 = v31;
  v93 = v32;
  v94 = v87;
  v95 = v82;
  v96 = v67;
  v97 = v80;
  v39 = v81;
  v98 = v73;
  v99 = v74;
  v100 = v85;
  v101 = v86;
  v102 = v33;
  v103 = v34;
  v104 = v35;
  v105 = v88;
  v106 = v83;
  v107 = v69;
  v108 = v68;
  v109 = a22;
  v69 = a22;
  v40 = type metadata accessor for LazyCanvasSectionDescriptor(0, &v90);
  v41 = *(v40 - 1);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = (&v53 - v43);
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v80 = v38;
  v45 = v71;
  sub_1E68B3BC0();
  if (v45)
  {
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v46 = v62;
  v47 = v63;
  v71 = v41;
  LOBYTE(v90) = 0;
  *v44 = sub_1E68B39C0();
  v44[1] = v48;
  LOBYTE(v90) = 1;
  v49 = v61;
  swift_getWitnessTable();
  sub_1E68B3A00();
  (*(v60 + 32))(v44 + v40[45], v46, v49);
  LOBYTE(v90) = 2;
  swift_getWitnessTable();
  sub_1E68B39B0();
  (*(v59 + 32))(v44 + v40[46], v47, v58);
  LOBYTE(v110) = 3;
  sub_1E674B128();
  sub_1E68B3A00();
  *(v44 + v40[47]) = v90;
  v90 = v72;
  v91 = v84;
  v92 = v76;
  v93 = v78;
  v94 = v87;
  v95 = v73;
  v96 = v74;
  v97 = v85;
  v98 = v86;
  v99 = v75;
  v100 = v77;
  v101 = v79;
  v102 = v88;
  v103 = v69;
  type metadata accessor for LazyCanvasItemDescriptor(255, &v90);
  sub_1E68B33B0();
  LOBYTE(v90) = 4;
  v89 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B3A00();
  *(v44 + v40[48]) = v110;
  LOBYTE(v90) = 5;
  v50 = v57;
  sub_1E68B39B0();
  (*(v65 + 8))(v80, v66);
  (*(v54 + 32))(v44 + v40[49], v50, v55);
  v51 = v71;
  (*(v71 + 16))(v56, v44, v40);
  __swift_destroy_boxed_opaque_existential_1(v81);
  return (*(v51 + 8))(v44, v40);
}

BOOL static LazyCanvasSectionDescriptor.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v110 = a7;
  v109 = a6;
  v108 = a5;
  v107 = a4;
  v97 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E68B3750();
  v99 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v80 - v30;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v95 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v32);
  v96 = &v80 - v33;
  v115 = a3;
  v117 = a3;
  v118 = a10;
  v111 = a10;
  v116 = a12;
  v119 = a12;
  v120 = a21;
  v112 = a21;
  v34 = type metadata accessor for CanvasSectionHeader(0, &v117);
  v104 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v100 = &v80 - v36;
  v37 = sub_1E68B3750();
  v106 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v103 = &v80 - v39;
  v105 = swift_getTupleTypeMetadata2();
  v40 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v41);
  v43 = &v80 - v42;
  v44 = *a1;
  v45 = *(a1 + 1);
  v113 = a1;
  v46 = *a2;
  v47 = *(a2 + 1);
  v114 = a2;
  if (__PAIR128__(v45, v44) != __PAIR128__(v47, v46) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  v101 = v43;
  v94 = v40;
  v102 = v34;
  v85 = v31;
  v84 = v27;
  v117 = v115;
  v118 = v107;
  v119 = v108;
  v120 = v109;
  v121 = v110;
  v122 = a8;
  v123 = a9;
  v124 = v111;
  v125 = a11;
  v126 = v116;
  v87 = a13;
  v127 = a13;
  v128 = a14;
  v88 = a14;
  v89 = a15;
  v129 = a15;
  v130 = a16;
  v90 = a16;
  v91 = a17;
  v131 = a17;
  v132 = a18;
  v92 = a18;
  v83 = a19;
  v133 = a19;
  v134 = a20;
  v135 = v112;
  v136 = a22;
  v48 = type metadata accessor for LazyCanvasSectionDescriptor(0, &v117);
  v49 = v48[45];
  v50 = v113;
  v51 = v114;
  v86 = a11;
  v93 = a22;
  if ((static CanvasSectionLayout.== infix(_:_:)(&v113[v49], &v114[v49], a9, a11, a20, a22) & 1) == 0)
  {
    return 0;
  }

  v81 = v28;
  v82 = a8;
  v52 = v48[46];
  v53 = *(v105 + 48);
  v54 = *(v106 + 16);
  v55 = v101;
  v54(v101, &v50[v52], v37);
  v54(&v55[v53], &v51[v52], v37);
  v56 = v104;
  v57 = *(v104 + 48);
  v58 = v102;
  if (v57(v55, 1, v102) != 1)
  {
    v54(v103, v55, v37);
    if (v57(&v55[v53], 1, v58) != 1)
    {
      v59 = &v55[v53];
      v60 = v100;
      (*(v56 + 32))(v100, v59, v58);
      v61 = v103;
      v62 = v58;
      v63 = static CanvasSectionHeader.== infix(_:_:)(v103, v60, v115, v111, v116, v112);
      v64 = *(v56 + 8);
      v64(v60, v62);
      v64(v61, v62);
      (*(v106 + 8))(v55, v37);
      if (!v63)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v56 + 8))(v103, v58);
LABEL_9:
    (*(v94 + 8))(v55, v105);
    return 0;
  }

  if (v57(&v55[v53], 1, v58) != 1)
  {
    goto LABEL_9;
  }

  (*(v106 + 8))(v55, v37);
LABEL_11:
  v65 = v113;
  v66 = v114;
  if (v113[v48[47]] != v114[v48[47]])
  {
    return 0;
  }

  v117 = v115;
  v118 = v107;
  v119 = v108;
  v120 = v109;
  v121 = v110;
  v122 = v86;
  v123 = v116;
  v124 = v87;
  v125 = v88;
  v126 = v89;
  v127 = v90;
  v128 = v91;
  v129 = v92;
  v130 = v93;
  type metadata accessor for LazyCanvasItemDescriptor(0, &v117);
  swift_getWitnessTable();
  if ((sub_1E68B33D0() & 1) == 0)
  {
    return 0;
  }

  v67 = v48[49];
  v68 = *(TupleTypeMetadata2 + 48);
  v69 = *(v99 + 16);
  v70 = v96;
  v71 = v81;
  v69(v96, &v65[v67], v81);
  v69(&v70[v68], &v66[v67], v71);
  v72 = v97;
  v73 = *(v97 + 48);
  v74 = v82;
  if (v73(v70, 1, v82) == 1)
  {
    if (v73(&v70[v68], 1, v74) == 1)
    {
      (*(v99 + 8))(v70, v71);
      return 1;
    }

    goto LABEL_18;
  }

  v75 = v85;
  v69(v85, v70, v71);
  if (v73(&v70[v68], 1, v74) == 1)
  {
    (*(v72 + 8))(v75, v74);
LABEL_18:
    (*(v95 + 8))(v70, TupleTypeMetadata2);
    return 0;
  }

  v76 = v84;
  (*(v72 + 32))(v84, &v70[v68], v74);
  v77 = sub_1E68B3190();
  v78 = *(v72 + 8);
  v78(v76, v74);
  v78(v75, v74);
  (*(v99 + 8))(v70, v71);
  return (v77 & 1) != 0;
}

uint64_t LazyCanvasSectionDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1E68B31F0();
  v5 = *(a2 + 80);
  v6 = *(a2 + 152);
  v7 = *(a2 + 168);
  v15 = *(a2 + 64);
  *&v16 = v5;
  *(&v16 + 1) = v6;
  *&v17 = v7;
  v8 = type metadata accessor for CanvasSectionLayout(0, &v15);
  CanvasSectionLayout.hash(into:)(a1, v8);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  v12 = *(a2 + 160);
  v15 = *(a2 + 16);
  v9 = v15;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  *&v17 = v12;
  type metadata accessor for CanvasSectionHeader(255, &v15);
  sub_1E68B3750();
  swift_getWitnessTable();
  sub_1E68B3760();
  MEMORY[0x1E69523D0](*(v2 + *(a2 + 188)));
  v16 = *(a2 + 24);
  v17 = *(a2 + 40);
  v13 = *(a2 + 112);
  v20 = *(a2 + 96);
  v15 = v9;
  v18 = v5;
  v19 = v11;
  v21 = v13;
  v22 = *(a2 + 128);
  v23 = v7;
  type metadata accessor for LazyCanvasItemDescriptor(0, &v15);
  swift_getWitnessTable();
  sub_1E68B33C0();
  sub_1E68B3750();
  return sub_1E68B3760();
}

uint64_t LazyCanvasSectionDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  LazyCanvasSectionDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6859CBC(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  LazyCanvasSectionDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6859DA8(uint64_t a1)
{
  v26 = 0;
  v31 = MEMORY[0x1E69E6158];
  v2 = *(a1 + 80);
  v3 = *(a1 + 152);
  v4 = *(a1 + 168);
  v17 = *(a1 + 64);
  *&v18 = v2;
  *(&v18 + 1) = v3;
  *&v19 = v4;
  result = type metadata accessor for CanvasSectionLayout(319, &v17);
  if (v6 <= 0x3F)
  {
    v27 = 0;
    v32 = result;
    v7 = *(a1 + 16);
    v8 = *(a1 + 72);
    v9 = *(a1 + 88);
    v10 = *(a1 + 160);
    v17 = v7;
    *&v18 = v8;
    *(&v18 + 1) = v9;
    *&v19 = v10;
    type metadata accessor for CanvasSectionHeader(255, &v17);
    result = sub_1E68B3750();
    if (v11 <= 0x3F)
    {
      v12 = *(a1 + 40);
      v18 = *(a1 + 24);
      v19 = v12;
      v13 = *(a1 + 112);
      v22 = *(a1 + 96);
      v28 = 0;
      v33 = result;
      v34 = &type metadata for CanvasSectionFooter;
      v17 = v7;
      v20 = v2;
      v21 = v9;
      v14 = *(a1 + 128);
      v23 = v13;
      v24 = v14;
      v25 = v4;
      type metadata accessor for LazyCanvasItemDescriptor(255, &v17);
      result = sub_1E68B33B0();
      if (v15 <= 0x3F)
      {
        v29 = 0;
        v35 = result;
        result = sub_1E68B3750();
        if (v16 <= 0x3F)
        {
          v30 = 0;
          v36 = result;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E6859F04(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[8] - 8);
  v6 = *(v5 + 64);
  v7 = 16;
  if (v6 > 0x10)
  {
    v7 = *(v5 + 64);
  }

  v8 = *(v5 + 80);
  v9 = ((v8 + 8) & ~v8) + v6;
  if (v9 <= 0x18)
  {
    v9 = 24;
  }

  v10 = v9 + 1;
  if (v10 <= v7 + 1)
  {
    v10 = v7 + 1;
  }

  if (v10 + 1 > v7)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(a3[10] - 8);
  v13 = *(v12 + 64);
  if (v13 <= v11)
  {
    v13 = v11;
  }

  v63 = v13;
  v14 = *(sub_1E68B1820() - 8);
  v15 = *(v14 + 84);
  v60 = a3[9];
  v16 = *(v60 - 8);
  v17 = *(v16 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v15)
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = v18;
  }

  v59 = a3[2];
  v20 = *(v59 - 8);
  v21 = *(v20 + 84);
  v22 = v21 - 1;
  if (!v21)
  {
    v22 = 0;
  }

  if (v22 <= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    v24 = v23 - 1;
  }

  else
  {
    v24 = 0;
  }

  v62 = a3[7];
  v25 = *(v62 - 8);
  v26 = v25;
  v27 = *(v25 + 84);
  v28 = v27 - 1;
  if (!v27)
  {
    v28 = 0;
  }

  if (v24 <= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v24;
  }

  if (v29 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = v29;
  }

  if (v17)
  {
    v31 = *(v16 + 64);
  }

  else
  {
    v31 = *(v16 + 64) + 1;
  }

  if (v21)
  {
    v32 = v23 == 0;
  }

  else
  {
    v32 = (v23 == 0) + 1;
  }

  v33 = *(v12 + 80);
  v61 = v14;
  v34 = *(v16 + 80);
  v35 = *(v25 + 80);
  if (v27)
  {
    v36 = *(v25 + 64);
  }

  else
  {
    v36 = *(v25 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v37 = (v33 | v8) & 0xF8 | 7u;
  v38 = v63 + 1;
  v39 = v34;
  v40 = *(v20 + 80);
  v41 = (v34 | *(v14 + 80) | *(v20 + 80));
  v42 = *(v14 + 64) + v34;
  v43 = v32 + *(*(v59 - 8) + 64) + ((v31 + v40 + (v42 & ~v34)) & ~v40);
  v44 = v35 + 16;
  v45 = a2 - v30;
  if (a2 <= v30)
  {
    goto LABEL_66;
  }

  v46 = v36 + ((v44 + ((v43 + ((v38 + v41 + ((v37 + 16) & ~v37)) & ~v41)) & 0xFFFFFFFFFFFFFFF8)) & ~v35);
  v47 = 8 * v46;
  if (v46 <= 3)
  {
    v49 = ((v45 + ~(-1 << v47)) >> v47) + 1;
    if (HIWORD(v49))
    {
      v48 = *(a1 + v46);
      if (!v48)
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    }

    if (v49 > 0xFF)
    {
      v48 = *(a1 + v46);
      if (!*(a1 + v46))
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    }

    if (v49 < 2)
    {
LABEL_66:
      if ((v29 & 0x80000000) == 0)
      {
        v53 = *(a1 + 1);
        if (v53 >= 0xFFFFFFFF)
        {
          LODWORD(v53) = -1;
        }

        return (v53 + 1);
      }

      v55 = (((a1 + v37 + 16) & ~v37) + v41 + v38) & ~v41;
      if (v24 == v30)
      {
        if (v23 < 2)
        {
          return 0;
        }

        if (v15 == v23)
        {
          v56 = (*(v61 + 48))((((a1 + v37 + 16) & ~v37) + v41 + v38) & ~v41);
        }

        else
        {
          v57 = (v42 + v55) & ~v39;
          if (v18 == v23)
          {
            v58 = (*(*(v60 - 8) + 48))(v57, v17, v60);
          }

          else
          {
            v58 = (*(v20 + 48))((v31 + v40 + v57) & ~v40, v21, v59);
          }

          if (v58 >= 2)
          {
            v56 = v58 - 1;
          }

          else
          {
            v56 = 0;
          }
        }
      }

      else
      {
        v56 = (*(v26 + 48))((v44 + ((v43 + v55) & 0xFFFFFFFFFFFFFFF8)) & ~v35, v27, v62);
      }

      if (v56 >= 2)
      {
        return v56 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v48 = *(a1 + v46);
  if (!*(a1 + v46))
  {
    goto LABEL_66;
  }

LABEL_53:
  v50 = (v48 - 1) << v47;
  if (v46 > 3)
  {
    v50 = 0;
  }

  if (v46)
  {
    if (v46 <= 3)
    {
      v51 = v46;
    }

    else
    {
      v51 = 4;
    }

    if (v51 > 2)
    {
      if (v51 == 3)
      {
        v52 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v52 = *a1;
      }
    }

    else if (v51 == 1)
    {
      v52 = *a1;
    }

    else
    {
      v52 = *a1;
    }
  }

  else
  {
    v52 = 0;
  }

  return v30 + (v52 | v50) + 1;
}

void sub_1E685A44C(_WORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[8] - 8);
  v6 = *(v5 + 64);
  v7 = 16;
  if (v6 > 0x10)
  {
    v7 = *(v5 + 64);
  }

  v8 = *(v5 + 80);
  v9 = ((v8 + 8) & ~v8) + v6;
  if (v9 <= 0x18)
  {
    v9 = 24;
  }

  v10 = v9 + 1;
  if (v10 <= v7 + 1)
  {
    v10 = v7 + 1;
  }

  if (v10 + 1 > v7)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(a4[10] - 8);
  if (*(v12 + 64) <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = sub_1E68B1820();
  v15 = 0;
  v16 = *(v14 - 8);
  v17 = *(v16 + 84);
  v72 = a4[9];
  v18 = *(v72 - 8);
  v19 = *(v18 + 84);
  if (v19)
  {
    v20 = v19 - 1;
  }

  else
  {
    v20 = 0;
  }

  if (v20 <= v17)
  {
    v21 = *(v16 + 84);
  }

  else
  {
    v21 = v20;
  }

  v70 = a4[2];
  v22 = *(v70 - 8);
  v23 = *(v22 + 84);
  if (v23)
  {
    v24 = v23 - 1;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v24;
  }

  if (v25)
  {
    v26 = v25 - 1;
  }

  else
  {
    v26 = 0;
  }

  v74 = a4[7];
  v27 = *(v74 - 8);
  v28 = *(v27 + 84);
  v29 = *(*(v70 - 8) + 64);
  v71 = *(v72 - 8);
  v30 = *(v18 + 80);
  v31 = *(v12 + 80);
  v73 = *(v14 - 8);
  v32 = *(v16 + 80);
  v33 = *(v18 + 84);
  v34 = *(v27 + 80);
  v35 = *(v27 + 64);
  v36 = v28 - 1;
  if (!v28)
  {
    v36 = 0;
  }

  if (v26 <= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v26;
  }

  if (v37 <= 0x7FFFFFFF)
  {
    v38 = 0x7FFFFFFF;
  }

  else
  {
    v38 = v37;
  }

  if (v33)
  {
    v39 = *(*(v72 - 8) + 64);
  }

  else
  {
    v39 = *(*(v72 - 8) + 64) + 1;
  }

  if (!v23)
  {
    ++v29;
  }

  v40 = v31 | v8;
  v41 = v30;
  v42 = v30 | v32;
  v43 = *(v22 + 80);
  v44 = *(*(v14 - 8) + 64) + v30;
  v45 = v42 | *(v22 + 80);
  v46 = v39 + v43;
  v47 = (v46 + (v44 & ~v41)) & ~v43;
  v48 = v47 + v29;
  if (v25)
  {
    v49 = v47 + v29;
  }

  else
  {
    v49 = v48 + 1;
  }

  v50 = v40 & 0xF8 | 7u;
  v51 = v45;
  if (!v28)
  {
    ++v35;
  }

  v52 = ((v34 + 16 + ((v49 + ((v13 + 1 + v45 + ((v50 + 16) & ~v50)) & ~v45)) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + v35;
  if (a3 > v38)
  {
    if (v52 <= 3)
    {
      v53 = ((a3 - v38 + ~(-1 << (8 * v52))) >> (8 * v52)) + 1;
      if (HIWORD(v53))
      {
        v15 = 4;
      }

      else
      {
        if (v53 < 0x100)
        {
          v54 = 1;
        }

        else
        {
          v54 = 2;
        }

        if (v53 >= 2)
        {
          v15 = v54;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  if (v38 < a2)
  {
    v55 = ~v38 + a2;
    if (v52 < 4)
    {
      v56 = (v55 >> (8 * v52)) + 1;
      if (v52)
      {
        v57 = v55 & ~(-1 << (8 * v52));
        bzero(a1, v52);
        if (v52 != 3)
        {
          if (v52 == 2)
          {
            *a1 = v57;
            if (v15 > 1)
            {
LABEL_92:
              if (v15 == 2)
              {
                *(a1 + v52) = v56;
              }

              else
              {
                *(a1 + v52) = v56;
              }

              return;
            }
          }

          else
          {
            *a1 = v55;
            if (v15 > 1)
            {
              goto LABEL_92;
            }
          }

          goto LABEL_89;
        }

        *a1 = v57;
        *(a1 + 2) = BYTE2(v57);
      }

      if (v15 > 1)
      {
        goto LABEL_92;
      }
    }

    else
    {
      bzero(a1, v52);
      *a1 = v55;
      v56 = 1;
      if (v15 > 1)
      {
        goto LABEL_92;
      }
    }

LABEL_89:
    if (v15)
    {
      *(a1 + v52) = v56;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v52) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_73;
    }

    *(a1 + v52) = 0;
  }

  else if (v15)
  {
    *(a1 + v52) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_73;
  }

  if (!a2)
  {
    return;
  }

LABEL_73:
  if ((v37 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v58 = ((((a1 + v50 + 16) & ~v50) + v51 + v13 + 1) & ~v51);
  if (v26 != v38)
  {
    v59 = *(v27 + 56);
    v62 = (v34 + 16 + (&v58[v49] & 0xFFFFFFFFFFFFFFF8)) & ~v34;
    v60 = a2 + 1;
    v17 = v28;
    v61 = v74;

    goto LABEL_116;
  }

  if (v25 < 2)
  {
    return;
  }

  if (a2 >= v25)
  {
    if (v48 <= 3)
    {
      v63 = ~(-1 << (8 * v48));
    }

    else
    {
      v63 = -1;
    }

    if (v48)
    {
      v64 = v63 & (a2 - v25);
      if (v48 <= 3)
      {
        v65 = v47 + v29;
      }

      else
      {
        v65 = 4;
      }

      bzero(v58, v48);
      if (v65 > 2)
      {
        if (v65 == 3)
        {
          *v58 = v64;
          v58[2] = BYTE2(v64);
        }

        else
        {
          *v58 = v64;
        }
      }

      else if (v65 == 1)
      {
        *v58 = v64;
      }

      else
      {
        *v58 = v64;
      }
    }
  }

  else
  {
    if (v17 == v25)
    {
      v59 = *(v73 + 56);
      v60 = a2 + 1;
      v61 = v14;
      v62 = v58;
      goto LABEL_108;
    }

    v62 = &v58[v44] & ~v41;
    if (v20 == v25)
    {
      v59 = *(v71 + 56);
      v60 = a2 + 2;
      v17 = v33;
      v61 = v72;
LABEL_108:

LABEL_116:
      v59(v62, v60, v17, v61);
      return;
    }

    v66 = (v46 + v62) & ~v43;
    if (a2 < v24)
    {
      v59 = *(v22 + 56);
      v60 = a2 + 2;
      v62 = (v46 + v62) & ~v43;
      v17 = v23;
      v61 = v70;

      goto LABEL_116;
    }

    if (v29 <= 3)
    {
      v67 = ~(-1 << (8 * v29));
    }

    else
    {
      v67 = -1;
    }

    if (v29)
    {
      v68 = v67 & (a2 - v24);
      if (v29 <= 3)
      {
        v69 = v29;
      }

      else
      {
        v69 = 4;
      }

      bzero(((v46 + v62) & ~v43), v29);
      if (v69 > 2)
      {
        if (v69 == 3)
        {
          *v66 = v68;
          *(v66 + 2) = BYTE2(v68);
        }

        else
        {
          *v66 = v68;
        }
      }

      else if (v69 == 1)
      {
        *v66 = v68;
      }

      else
      {
        *v66 = v68;
      }
    }
  }
}