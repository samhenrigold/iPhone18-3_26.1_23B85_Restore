void sub_18BB64FB8(uint64_t a1)
{
  v2 = v1;
  v3 = _s4PageVMa(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5030, &unk_18BC42F30);
  v7 = sub_18BC21A88();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_18B85A52C(v20 + v21 * (v17 | (v9 << 6)), v5, _s4PageVMa);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970, MEMORY[0x1E69695B8]);
      sub_18BC20A78();
      v22 = sub_18BC221A8();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_18B85A83C(v5, *(v8 + 48) + v16 * v21, _s4PageVMa);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v8;
  }
}

void sub_18BB652D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FD0, &unk_18BC4F870);
  v4 = sub_18BC21A88();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_18BC22158();
      MEMORY[0x18CFFD660](v16);
      v17 = sub_18BC221A8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

void sub_18BB654F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_18BC21A88();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_18BC215B8();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }
}

void (*sub_18BB65700(uint64_t *a1, double a2, double a3, double a4, double a5))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[8] = sub_18BB65A44(v11);
  v11[9] = sub_18BB65824(v11 + 4, isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
  return sub_18BB657C4;
}

void sub_18BB657C4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_18BB65824(uint64_t *a1, char a2, double a3, double a4, double a5, double a6))(uint64_t **a1, __n128 a2)
{
  v7 = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x40uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 40) = v6;
  *(v14 + 24) = a5;
  *(v14 + 32) = a6;
  *(v14 + 8) = a3;
  *(v14 + 16) = a4;
  v16 = *v6;
  v17 = sub_18B86F764(a3, a4, a5, a6);
  *(v15 + 56) = v18 & 1;
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a2 & 1) == 0)
  {
    if (v24 >= v22 && (a2 & 1) == 0)
    {
      v25 = v17;
      sub_18BB2B320();
      v17 = v25;
      goto LABEL_11;
    }

    sub_18BB2F8EC(v22, a2 & 1);
    v17 = sub_18B86F764(a3, a4, a5, a6);
    if ((v23 & 1) == (v26 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9FA8, &unk_18BC4F830);
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v15 + 48) = v17;
  if (v23)
  {
    v27 = *(*(*v7 + 56) + 8 * v17);
  }

  else
  {
    v27 = 0;
  }

  *v15 = v27;
  return sub_18BB659AC;
}

void sub_18BB659AC(uint64_t **a1, __n128 a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 56);
  if (v3)
  {
    v5 = v2[6];
    v6 = *v2[5];
    if (v4)
    {
      *(v6[7] + 8 * v5) = v3;
    }

    else
    {
      sub_18BB329F4(v5, v3, v6, *(v2 + 1), *(v2 + 2), *(v2 + 3), *(v2 + 4));
    }
  }

  else if ((*a1)[7])
  {
    sub_18BB5C9AC(v2[6], *v2[5], a2);
  }

  sub_18BC1E3F8();

  free(v2);
}

uint64_t (*sub_18BB65A44(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_18BB65A6C;
}

uint64_t sub_18BB65A78()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x198);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18BB65AD8()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1D8);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18BB65B38()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  swift_beginAccess();
  return *(v0 + v1);
}

char *sub_18BB65BC4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 3) = 0;
  v4 = *(*v2 + 160);
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken(0);
  (*(*(updated - 8) + 56))(&v2[v4], 1, 1, updated);
  v6 = *(*v2 + 168);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
  v8 = *(*(v7 - 8) + 56);
  v8(&v2[v6], 1, 1, v7);
  v8(&v2[*(*v2 + 176)], 1, 1, v7);
  *&v2[*(*v2 + 192)] = 0;
  v2[*(*v2 + 200)] = 0;
  *&v2[*(*v2 + 208)] = 0;
  *&v2[*(*v2 + 216)] = 0;
  v9 = *(*v2 + 224);
  type metadata accessor for Assertion();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = 0;
  *&v2[v9] = v10;
  swift_unknownObjectWeakAssign();
  sub_18B7CA054(a1, &v2[*(*v2 + 184)], &unk_1EA9D4F40, &unk_18BC42E70);
  sub_18B7CF39C(a1, &v2[*(*v2 + 152)], &unk_1EA9D4F40, &unk_18BC42E70);
  return v2;
}

uint64_t sub_18BB65E00()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  swift_beginAccess();
  return *v1;
}

void _s12MobileSafari21SFFluidCollectionViewC5coderACyxq_q0_GSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v0);
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x58);
  v6 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v7 = sub_18BB32DD8(v6, v5, *(v4[14] + 8));
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0x80)) = v7;
  *(v1 + *((*v3 & *v1) + 0x88) + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = *((*v3 & *v1) + 0x90);
  v11 = v4[12];
  v10 = v4[13];
  v13 = v4[14];
  v12 = v4[15];
  *&__src[0] = v4[10];
  v9 = *&__src[0];
  *(&__src[0] + 1) = v5;
  *&__src[1] = v11;
  *(&__src[1] + 1) = v10;
  *&__src[2] = v13;
  *(&__src[2] + 1) = v12;
  type metadata accessor for SFFluidCollectionView.DataSource(0, __src);
  *(v1 + v8) = SFFluidCollectionView.DataSource.__allocating_init()();
  *(v1 + *((*v3 & *v1) + 0x98)) = 1;
  v14 = (v1 + *((*v3 & *v1) + 0xA0));
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + *((*v3 & *v1) + 0xA8));
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + *((*v3 & *v1) + 0xB0));
  *v16 = 0;
  v16[1] = 0;
  *(v1 + *((*v3 & *v1) + 0xB8) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v3 & *v1) + 0xC0) + 8) = 0;
  swift_unknownObjectWeakInit();
  v47 = *(*(v5 - 8) + 56);
  v47(v1 + *((*v3 & *v1) + 0xC8), 1, 1, v5);
  *(v1 + *((*v3 & *v1) + 0xD0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v3 & *v1) + 0xD8)) = 0;
  *(v1 + *((*v3 & *v1) + 0xE0)) = 0;
  v51 = v9;
  *&__src[0] = v9;
  *(&__src[0] + 1) = v5;
  *&__src[1] = v11;
  v49 = v10;
  v50 = v11;
  *(&__src[1] + 1) = v10;
  *&__src[2] = v13;
  v17 = v13;
  *(&__src[2] + 1) = v12;
  v18 = type metadata accessor for SFFluidCollectionView.Element(0, __src);
  v19 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    WitnessTable = swift_getWitnessTable();
    v21 = sub_18BB32DD8(v19, v18, WitnessTable);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0xE8)) = v21;
  *(v1 + *((*v3 & *v1) + 0xF0)) = 0;
  *(v1 + *((*v3 & *v1) + 0xF8)) = 0;
  *&__src[0] = v51;
  *(&__src[0] + 1) = v5;
  *&__src[1] = v50;
  *(&__src[1] + 1) = v49;
  *&__src[2] = v13;
  *(&__src[2] + 1) = v12;
  v22 = _s8ItemInfoCMa(0, __src);
  v23 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v24 = swift_getWitnessTable();
    v25 = sub_18BB32DD8(v23, v22, v24);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0x100)) = v25;
  *(v1 + *((*v3 & *v1) + 0x108)) = 0;
  *(v1 + *((*v3 & *v1) + 0x110)) = 0;
  v47(v1 + *((*v3 & *v1) + 0x118), 1, 1, v5);
  v26 = *((*v3 & *v1) + 0x120);
  *&__src[0] = v51;
  *(&__src[0] + 1) = v5;
  *&__src[1] = v50;
  *(&__src[1] + 1) = v49;
  *&__src[2] = v13;
  *(&__src[2] + 1) = v12;
  v48 = v12;
  type metadata accessor for SFFluidCollectionView.Interaction(0, __src);
  *(v1 + v26) = sub_18BC20DE8();
  *(v1 + *((*v3 & *v1) + 0x128)) = 0;
  *(v1 + *((*v3 & *v1) + 0x130)) = 0;
  *(v1 + *((*v3 & *v1) + 0x138)) = 0;
  *(v1 + *((*v3 & *v1) + 0x140)) = 0;
  v27 = *((*v3 & *v1) + 0x148);
  type metadata accessor for Assertion();
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E7CC0];
  *(v28 + 16) = MEMORY[0x1E69E7CC0];
  *(v28 + 24) = 0;
  *(v1 + v27) = v28;
  v30 = *((*v3 & *v1) + 0x150);
  swift_getTupleTypeMetadata2();
  v31 = sub_18BC20DE8();
  v32 = swift_getWitnessTable();
  v33 = sub_18B7C29AC(v31, v18, v22, v32);

  *(v1 + v30) = v33;
  v34 = (v1 + *((*v3 & *v1) + 0x158));
  v35 = *(MEMORY[0x1E695F050] + 16);
  *v34 = *MEMORY[0x1E695F050];
  v34[1] = v35;
  v36 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v37 = sub_18BB32DD8(v36, v18, v32);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0x160)) = v37;
  v38 = v1 + *((*v3 & *v1) + 0x168);
  *v38 = 0;
  v38[10] = 0;
  *(v38 + 4) = 0;
  v39 = (v1 + *((*v3 & *v1) + 0x170));
  v40 = *(MEMORY[0x1E69DDCE0] + 16);
  *v39 = *MEMORY[0x1E69DDCE0];
  v39[1] = v40;
  v41 = (v1 + *((*v3 & *v1) + 0x178));
  *v41 = 0;
  v41[1] = 0;
  *(v1 + *((*v3 & *v1) + 0x180)) = 0;
  *(v1 + *((*v3 & *v1) + 0x188)) = v29;
  *(v1 + *((*v3 & *v1) + 0x190)) = 0;
  v42 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v43 = sub_18BB32DD8(v42, v5, *(v17 + 8));
  }

  else
  {
    v43 = MEMORY[0x1E69E7CD0];
  }

  *(v1 + *((*v3 & *v1) + 0x198)) = v43;
  *(v1 + *((*v3 & *v1) + 0x1A0)) = 0;
  v44 = *((*v3 & *v1) + 0x1A8);
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken(0);
  (*(*(updated - 8) + 56))(v1 + v44, 1, 1, updated);
  v46 = *((*v3 & *v1) + 0x1B0);
  sub_18B81F588(__src);
  memcpy(v1 + v46, __src, 0x139uLL);
  *(v1 + *((*v3 & *v1) + 0x1C8)) = 0;
  sub_18B84A364(v51, v5, v50, v49, v17, v48, v1 + *((*v3 & *v1) + 0x1D0));
  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BB66844(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  swift_beginAccess();
  *(v4 + 1) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18BB668C4()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_18BB66928()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_18BB6698C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8);
  swift_beginAccess();
  *(v4 + 1) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18BB66A0C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xC0);
  swift_beginAccess();
  *(v4 + 1) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18BB66A8C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0);
  swift_beginAccess();
  *(v4 + 1) = a2;
  return swift_unknownObjectWeakAssign();
}

double sub_18BB66B0C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D8);
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_18BC1E1A8();
  sub_18BB48734(a1);
  *(v1 + v3) = a1;
  sub_18BC1E1A8();

  sub_18BB487AC(v4);

  return result;
}

id sub_18BB66CE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + 0x58);
  (*(*(*((v3 & v2) + 0x58) - 8) + 16))(&v1[*((v3 & v2) + 0x80)], a1, *((v3 & v2) + 0x58));
  v9[0] = *((v3 & v2) + 0x50);
  v9[1] = v5;
  v6 = *(v4 + 112);
  v10 = *(v4 + 96);
  v11 = v6;
  v7 = type metadata accessor for SFFluidCollectionView.MenuItemIdentifier(0, v9);
  v12.receiver = v1;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_18BB66DEC(uint64_t a1)
{
  v3 = v1[6];
  v6[0] = v1[5];
  v6[1] = v3;
  v6[2] = v1[7];
  v4 = objc_allocWithZone(type metadata accessor for SFFluidCollectionView.MenuItemIdentifier(0, v6));
  return sub_18BB66CE4(a1);
}

void *sub_18BB66E70(double a1, double a2)
{
  v3 = v2;
  v6 = (*MEMORY[0x1E69E7D40] & *v2);
  v7 = v6[11];
  v8 = sub_18BC21848();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  if (!sub_18B812A74())
  {
    return 0;
  }

  v45 = v16;
  sub_18BB503F4(v11, a1, a2);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    ObjectType = swift_getObjectType();
    v18 = sub_18BC20DE8();
    v19 = (v45[10])(v2, v18, 0, ObjectType, a1, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v12 + 32))(v15, v11, v7);
    v20 = v6[14];
    if ((*(v20 + 24))(v7, v20))
    {
      swift_unknownObjectRelease();
      (*(v12 + 8))(v15, v7);
      return 0;
    }

    else
    {
      v44 = v12;
      v21 = MEMORY[0x1E69E7D40];
      swift_beginAccess();
      sub_18BC1E3F8();
      v22 = sub_18BC210B8();

      if (v22)
      {
        v23 = *((*v21 & *v2) + 0x198);
        swift_beginAccess();
        v46[0] = *(v2 + v23);
        sub_18BC210E8();
        sub_18BC1E3F8();
        swift_getWitnessTable();
        v24 = sub_18BC20E98();
      }

      else
      {
        sub_18B85EDB0(v7, v7);
        v25 = v44;
        swift_allocObject();
        v24 = sub_18BC20DB8();
        (*(v25 + 16))(v26, v15, v7);
        sub_18BC20E78();
      }

      v27 = swift_getObjectType();
      v28 = v6[12];
      v29 = v6[13];
      v30 = v6[15];
      v40 = v6[10];
      v41 = v29;
      v46[0] = v40;
      v46[1] = v7;
      v42 = v28;
      v43 = v30;
      v46[2] = v28;
      v46[3] = v29;
      v46[4] = v20;
      v46[5] = v30;
      type metadata accessor for SFFluidCollectionView.MenuItemIdentifier(0, v46);
      v31 = sub_18BB66DEC(v15);
      v32 = v3;
      v33 = v24;
      v19 = (v45[10])(v32, v24, v31, v27, a1, a2);

      if (v19)
      {
        v45 = &v40;
        v46[0] = v33;
        MEMORY[0x1EEE9AC00](v34);
        *(&v40 - 8) = v40;
        *(&v40 - 7) = v7;
        v35 = v41;
        *(&v40 - 6) = v42;
        *(&v40 - 5) = v35;
        v36 = v43;
        *(&v40 - 4) = v20;
        *(&v40 - 3) = v36;
        *(&v40 - 2) = v15;
        sub_18BC20E78();
        swift_getWitnessTable();
        v37 = sub_18BC20CD8();

        v46[0] = v37;
        sub_18BC20E78();
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_18BC210F8();
        sub_18BC21A18();

        v38 = sub_18BC20FC8();

        [v19 setSecondaryItemIdentifiers_];
      }

      else
      {
      }

      swift_unknownObjectRelease();
      (*(v44 + 8))(v15, v7);
    }
  }

  return v19;
}

double sub_18BB674E4(uint64_t a1, uint64_t a2)
{
  if (sub_18B812A74())
  {
    v7 = v5;
    ObjectType = swift_getObjectType();
    (*(v7 + 96))(v2, a1, a2, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_18BB67580(void *a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v57 = a2;
  v4 = *v2;
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  v10 = *((*MEMORY[0x1E69E7D40] & v4) + 0x78);
  v59 = v5;
  v60 = v6;
  v61 = v7;
  v62 = v8;
  v63 = v9;
  v64 = v10;
  v11 = type metadata accessor for SFFluidCollectionView.Element(0, &v59);
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v45 - v12;
  v13 = sub_18BC21848();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = *(v6 - 8);
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v53 = &v45 - v22;
  [v56 locationInView_];
  v24 = v23;
  v26 = v25;
  v56 = v5;
  v59 = v5;
  v60 = v6;
  v49 = v7;
  v61 = v7;
  v62 = v8;
  v48 = v8;
  v47 = v9;
  v63 = v9;
  v64 = v10;
  v46 = v10;
  type metadata accessor for SFFluidCollectionView.MenuItemIdentifier(0, &v59);
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    (*(*(*((*MEMORY[0x1E69E7D40] & *v27) + 0x58) - 8) + 16))(v15, &v27[*((*MEMORY[0x1E69E7D40] & *v27) + 0x80)]);
    v28 = *(v19 + 56);
    v28(v15, 0, 1, v6);
    (*(v19 + 32))(v18, v15, v6);
    v28(v18, 0, 1, v6);
    v29 = *(v19 + 48);
    v30 = v19;
  }

  else
  {
    (*(v19 + 56))(v15, 1, 1, v6);
    sub_18BB503F4(v18, v24, v26);
    v29 = *(v19 + 48);
    v30 = v19;
    if (v29(v15, 1, v6) != 1)
    {
      (*(v54 + 8))(v15, v55);
    }
  }

  if (v29(v18, 1, v6) == 1)
  {
    (*(v54 + 8))(v18, v55);
  }

  else
  {
    v31 = v53;
    (*(v30 + 32))(v53, v18, v6);
    if (sub_18B812A74())
    {
      v33 = v32;
      ObjectType = swift_getObjectType();
      v35 = (*(v33 + 88))(v3, v31, ObjectType, v33);
      swift_unknownObjectRelease();
      if (v35)
      {
        (*(v30 + 8))(v31, v6);
        return v35;
      }
    }

    v37 = v6;
    v38 = v50;
    (*(v30 + 16))(v50, v31, v37);
    v39 = v52;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_18BC1E3F8();
    v59 = v56;
    v60 = v37;
    v61 = v49;
    v62 = v48;
    v63 = v47;
    v64 = v46;
    _s8ItemInfoCMa(0, &v59);
    swift_getWitnessTable();
    sub_18BC20A28();

    (*(v51 + 8))(v38, v39);
    if (v58)
    {
      v40 = sub_18BAC12A8();
      v41 = v40;

      if (v40)
      {
        v42 = *&v41[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView];

        v43 = [v42 window];
        if (v43)
        {

          v44 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
          (*(v30 + 8))(v31, v37);
          return v44;
        }
      }
    }

    (*(v30 + 8))(v31, v37);
  }

  return 0;
}

id sub_18BB67C4C(void *a1, uint64_t a2)
{
  if (*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x140)))
  {
    return 0;
  }

  else
  {
    return sub_18BB67580(a1, a2);
  }
}

double sub_18BB67C84(uint64_t a1, uint64_t a2)
{
  if (sub_18B812A74())
  {
    v7 = v5;
    ObjectType = swift_getObjectType();
    (*(v7 + 104))(v2, a1, a2, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18BB67D20(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v7 = sub_18BC21848();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  if (sub_18B812A74())
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 112))(v2, a1, a2, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    aBlock[4] = sub_18BB6971C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7B0DB0;
    aBlock[3] = &block_descriptor_153;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v22 = v3;

    [a2 addCompletion_];
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x140)) = 0;
  }

  sub_18BB47D0C(v12);
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    return (*(v24 + 8))(v12, v25);
  }

  (*(v13 + 32))(v16, v12, v6);
  sub_18BB5329C(v16);
  (*(v13 + 56))(v9, 1, 1, v6);
  sub_18BB47DCC(v9);
  return (*(v13 + 8))(v16, v6);
}

uint64_t sub_18BB680B0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_18BB68114(uint64_t a1)
{
  sub_18BC21848();
  if (v1 <= 0x3F)
  {
    sub_18B855968(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_18BB69264(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_18BB69310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_18BB69360(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_18BB693E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_18BB69484(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v5 + 136))(a1, a2, ObjectType, v5);
}

uint64_t sub_18BB69570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18BB695D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_18BB69610@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 64))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18BB69644(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_18BB69684@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 64))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18BB696B8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t objectdestroy_155Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return swift_deallocObject();
}

id SFBrowsingAssistant.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void SFBrowsingAssistant.init(coder:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_18BC21CF8();
  __break(1u);
}

id SFBrowsingAssistant.detentHeight.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v19 - v4;
  result = [*(v0 + OBJC_IVAR___SFBrowsingAssistant_assistant) view];
  if (result)
  {
    v7 = result;
    [result bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v20.origin.x = v9;
    v20.origin.y = v11;
    v20.size.width = v13;
    v20.size.height = v15;
    Width = CGRectGetWidth(v20);
    v17 = sub_18BA0671C();
    sub_18BC1FDF8();

    v18.n128_f64[0] = Width;
    sub_18BA0A654(v5, v18);
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SFBrowsingAssistant.viewDidLoad()()
{
  v17.super_class = SFBrowsingAssistant;
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR___SFBrowsingAssistant_assistant];
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_dataSource + 8] = &off_1EFF2E208;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_delegate + 8] = &off_1EFF2E228;
  swift_unknownObjectWeakAssign();
  [v0 addChildViewController_];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_18BC20B98();
  [v3 setAccessibilityIdentifier_];

  [v3 setAutoresizingMask_];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v3 setFrame_];
  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    [v15 addSubview_];

    [v1 didMoveToParentViewController_];
    return;
  }

LABEL_7:
  __break(1u);
}

id SFBrowsingAssistant.stepperFocused.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___SFBrowsingAssistant_assistant) + OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper);
  if (result)
  {
    return [result isFocusedInPageMenu];
  }

  return result;
}

Swift::Void __swiftcall SFBrowsingAssistant.readerVisibilityDidChange()()
{
  if (([v0 isBeingDismissed] & 1) == 0)
  {
    v1 = [*&v0[OBJC_IVAR___SFBrowsingAssistant_assistant] traitCollection];
    v2 = [v1 _presentationSemanticContext];

    if (v2 == 3)
    {
      v3 = [v0 presentedViewController];
      if (!v3)
      {
        v4 = sel_dismissViewControllerAnimated_completion_;
        v5 = v0;

        goto LABEL_7;
      }
    }

    v4 = sel_reloadData;
    v5 = v0;

LABEL_7:
    [v5 v4];
  }
}

Swift::Void __swiftcall SFBrowsingAssistant.reloadData()()
{
  if ([*(v0 + OBJC_IVAR___SFBrowsingAssistant_assistant) isViewLoaded])
  {
    sub_18BA0B840(0, 255, CGRectMake, 0);
  }
}

double sub_18BB6A444(char a1, SEL *a2, const char **a3)
{
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  v5 = [v3 delegate];
  if (v5)
  {
    [v5 *a3];
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_18BB6A4D4(void *a1, uint64_t a2, uint64_t a3, const char **a4, const char **a5)
{
  v10.receiver = a1;
  v10.super_class = SFBrowsingAssistant;
  v7 = *a4;
  v8 = a1;
  objc_msgSendSuper2(&v10, v7, a3);
  v9 = [v8 delegate];
  if (v9)
  {
    [v9 *a5];
    swift_unknownObjectRelease();
  }
}

id SFBrowsingAssistant.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_18BC20B98();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

void sub_18BB6A6A0(uint64_t a1)
{
  v3 = [v1 dataSource];
  if (!v3)
  {
    return;
  }

  [v3 configureReaderButtonFooter_];
  v4 = *&v1[OBJC_IVAR___SFBrowsingAssistant_assistant];
  v5 = *(v4 + OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable);
  *(v4 + OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable) = 1;
  if ((v5 & 1) == 0)
  {
    v6 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
    v7 = *(v4 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
    if (v7)
    {
      v8 = v7;
      sub_18BA08698();
      v10 = v9;
      [v8 setCollectionViewLayout_];

      v11 = *(v4 + v6);
      if (v11)
      {
        v12 = v11;
        [v12 setNeedsLayout];

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_6:

  swift_unknownObjectRelease();
}

double sub_18BB6A7B4(uint64_t a1)
{
  v3 = [v1 dataSource];
  if (v3)
  {
    [v3 configureMainHeaderFooter_];
    swift_unknownObjectRelease();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = (a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButtonActionHandler);
    v7 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_trailingButtonActionHandler);
    v8 = v6[1];
    *v6 = sub_18BB6BFC4;
    v6[1] = v5;
    sub_18BC1E1A8();
    sub_18B7E0A10(v7, v8);
  }

  return result;
}

void sub_18BB6A898(uint64_t a1)
{
  v1 = sub_18BC1EDD8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong _isInPopoverPresentation])
    {
      v7 = *&v6[OBJC_IVAR___SFBrowsingAssistant_assistant];
      sub_18BA0B45C(0);
    }

    v8 = [objc_opt_self() sharedLogger];
    [v8 didClickWebsiteSettingsSBA];

    v9 = *&v6[OBJC_IVAR___SFBrowsingAssistant_assistant];
    v23 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
    v24 = v9;
    v10 = *(v9 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
    if (!v10)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v11 = [v10 indexPathsForSelectedItems];
    if (v11)
    {
      v22 = v6;
      v12 = v11;
      v13 = sub_18BC20D98();

      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = 0;
        while (v15 < *(v13 + 16))
        {
          (*(v2 + 16))(v4, v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, v1);
          v16 = *(v24 + v23);
          if (!v16)
          {
            goto LABEL_15;
          }

          ++v15;
          v17 = v16;
          v18 = sub_18BC1ED68();
          [v17 deselectItemAtIndexPath:v18 animated:1];

          (*(v2 + 8))(v4, v1);
          if (v14 == v15)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_11:

      v6 = v22;
    }

    v19 = objc_allocWithZone(type metadata accessor for BrowsingAssistant(0));
    v20 = sub_18BA03558(0);
    *&v20[OBJC_IVAR___SFBrowsingAssistantCollection_dataSource + 8] = &off_1EFF2E208;
    swift_unknownObjectWeakAssign();
    *&v20[OBJC_IVAR___SFBrowsingAssistantCollection_delegate + 8] = &off_1EFF2E228;
    swift_unknownObjectWeakAssign();
    v20[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet] = 1;
    v21 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    [v6 presentViewController:v21 animated:1 completion:0];
  }
}

void sub_18BB6ABB8(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - v8;
  sub_18BA110AC();
  sub_18BA11100();
  sub_18BC1FB28();
  v10 = [v2 dataSource];
  if (!v10)
  {
    (*(v7 + 32))(a2, v9, v6);
    return;
  }

  v63 = v10;
  v11 = [v10 isReaderModeAvailable];
  v12 = a1[OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable];
  a1[OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable] = v11;
  if (v11 != v12)
  {
    v13 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
    v14 = *&a1[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
    if (!v14)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v15 = v14;
    sub_18BA08698();
    v17 = v16;
    [v15 setCollectionViewLayout_];

    v18 = *&a1[v13];
    if (!v18)
    {
LABEL_72:
      __break(1u);
      return;
    }

    [v18 setNeedsLayout];
  }

  v60 = v7;
  v19 = [a1 isEditing];
  v64 = OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet;
  v20 = a1[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet];
  v61 = a2;
  v62 = v6;
  if (v20)
  {
    goto LABEL_10;
  }

  v21 = [a1 traitCollection];
  v22 = [v21 _presentationSemanticContext];

  if (v22 == 3 || ([a1 _isInPopoverPresentation] & 1) != 0)
  {
    if (a1[v64] != 1)
    {
      v29 = [a1 traitCollection];
      v30 = [v29 _presentationSemanticContext];

      if (v30 != 3 && ![a1 _isInPopoverPresentation])
      {
        goto LABEL_58;
      }

      v31 = [v63 primaryMenuSectionsForEditMode:0 inFirstLevelMenu:1];
      type metadata accessor for SFBrowsingAssistantMenuSection();
      v19 = sub_18BC20D98();

      if (!(v19 >> 62))
      {
        v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v32)
        {
LABEL_55:

          v52 = [v63 cardItems];
          type metadata accessor for SFBrowsingAssistantCardItem(0);
          v53 = sub_18BC20D98();

          sub_18BB6B34C(v53, 0);
          goto LABEL_57;
        }

        goto LABEL_24;
      }

LABEL_54:
      v32 = sub_18BC219A8();
      if (!v32)
      {
        goto LABEL_55;
      }

LABEL_24:
      if (v32 >= 1)
      {
        for (i = 0; i != v32; ++i)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x18CFFD010](i, v19);
          }

          else
          {
            v34 = *(v19 + 8 * i + 32);
          }

          v35 = v34;
          sub_18BB6B55C(v34, 0, 1);
        }

        goto LABEL_55;
      }

      __break(1u);
      goto LABEL_70;
    }

LABEL_10:
    if (!v19)
    {
      goto LABEL_41;
    }

    v23 = [v63 primaryMenuSectionsForEditMode:1 inFirstLevelMenu:0];
    type metadata accessor for SFBrowsingAssistantMenuSection();
    v24 = sub_18BC20D98();

    if (v24 >> 62)
    {
      v25 = sub_18BC219A8();
      if (v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_13:
        if (v25 < 1)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        for (j = 0; j != v25; ++j)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x18CFFD010](j, v24);
          }

          else
          {
            v27 = *(v24 + 8 * j + 32);
          }

          v28 = v27;
          sub_18BB6B55C(v27, 0, 0);
        }
      }
    }

LABEL_41:
    v45 = [v63 moreMenuSectionsForEditMode_];
    type metadata accessor for SFBrowsingAssistantMenuSection();
    v46 = sub_18BC20D98();

    if (v46 >> 62)
    {
      v47 = sub_18BC219A8();
      if (v47)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_43:
        if (v47 >= 1)
        {
          for (k = 0; k != v47; ++k)
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x18CFFD010](k, v46);
            }

            else
            {
              v49 = *(v46 + 8 * k + 32);
            }

            v50 = v49;
            sub_18BB6B55C(v49, 0, 0);
          }

          goto LABEL_50;
        }

        __break(1u);
        goto LABEL_53;
      }
    }

LABEL_50:

    if ((v19 & 1) == 0)
    {
      v51 = [v63 settingsSection];
      sub_18BB6B874(v51);
    }

    goto LABEL_58;
  }

  v36 = v63;
  v37 = [v63 cardItems];
  type metadata accessor for SFBrowsingAssistantCardItem(0);
  v38 = sub_18BC20D98();

  sub_18BB6B34C(v38, 1);

  v39 = [v36 primaryMenuSectionsForEditMode:0 inFirstLevelMenu:1];
  type metadata accessor for SFBrowsingAssistantMenuSection();
  v40 = sub_18BC20D98();

  if (v40 >> 62)
  {
    v41 = sub_18BC219A8();
    if (!v41)
    {
      goto LABEL_57;
    }

    goto LABEL_32;
  }

  v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v41)
  {
LABEL_32:
    if (v41 >= 1)
    {
      for (m = 0; m != v41; ++m)
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x18CFFD010](m, v40);
        }

        else
        {
          v43 = *(v40 + 8 * m + 32);
        }

        v44 = v43;
        sub_18BB6B55C(v43, 0, 1);
      }

      goto LABEL_57;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_57:

LABEL_58:
  v54 = sub_18BC1FAD8();
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = (v54 + 40);
    do
    {
      if (*v56 != 1)
      {
        goto LABEL_63;
      }

      v58 = *(v56 - 1);
      if (a1[v64] == 1)
      {
        swift_unknownObjectRetain();
        v57 = [v3 presentingViewController];
        if (v57)
        {
          goto LABEL_62;
        }
      }

      else
      {
        sub_18B9B8870(*(v56 - 1), 1);
      }

      v57 = v3;
LABEL_62:
      [v58 setUpSelectionHandlerIfNeededWithViewController_];

      sub_18B9B8894(v58, 1);
LABEL_63:
      v56 += 16;
      --v55;
    }

    while (v55);
  }

  swift_unknownObjectRelease();

  (*(v60 + 32))(v61, v9, v62);
}

void sub_18BB6B34C(unint64_t a1, char a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    if (!sub_18BC219A8())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
  sub_18BC1FA88();
  if (v4)
  {
    v5 = sub_18BC219A8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_18B9B68C4(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x18CFFD010](v7, a1);
        v20 = v6;
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          v12 = v8;
          sub_18B9B68C4((v9 > 1), v10 + 1, 1);
          v8 = v12;
          v6 = v20;
        }

        ++v7;
        *(v6 + 16) = v10 + 1;
        v11 = v6 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = 0;
      }

      while (v5 != v7);
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v21 = v6;
        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        v16 = *v13;
        if (v15 >= v14 >> 1)
        {
          v18 = v16;
          sub_18B9B68C4((v14 > 1), v15 + 1, 1);
          v16 = v18;
          v6 = v21;
        }

        *(v6 + 16) = v15 + 1;
        v17 = v6 + 16 * v15;
        *(v17 + 32) = v16;
        *(v17 + 40) = 0;
        ++v13;
        --v5;
      }

      while (v5);
    }
  }

  if (a2)
  {
    sub_18BA39994(v6);
  }

  sub_18BC1FA38();
}

void sub_18BB6B55C(void *a1, char a2, char a3)
{
  v6 = [a1 items];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5C70, &qword_18BC436C8);
  v7 = sub_18BC20D98();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_23:

    return;
  }

  if (!sub_18BC219A8())
  {
    goto LABEL_23;
  }

LABEL_3:
  if (a3)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = [a1 title];
    v8 = sub_18BC20BD8();
    v9 = v11;
  }

  v12 = [a1 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5CD0, &qword_18BC44690);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18BC3E410;
  *(v13 + 32) = v12;
  *(v13 + 40) = v8;
  *(v13 + 48) = v9;
  v14 = v12;
  sub_18BC1E3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
  sub_18BC1FA88();

  if (v7 >> 62)
  {
    v15 = sub_18BC219A8();
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_20:

    v17 = MEMORY[0x1E69E7CC0];
    if ((a2 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_8:
  v23 = MEMORY[0x1E69E7CC0];
  sub_18B9B68C4(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v22 = a2;
    v16 = 0;
    v17 = v23;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x18CFFD010](v16, v7);
      }

      else
      {
        v18 = *(v7 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      v20 = *(v23 + 16);
      v19 = *(v23 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_18B9B68C4((v19 > 1), v20 + 1, 1);
      }

      ++v16;
      *(v23 + 16) = v20 + 1;
      v21 = v23 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = 1;
    }

    while (v15 != v16);

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    sub_18BA39994(v17);
LABEL_18:
    sub_18BC1FA38();

    return;
  }

  __break(1u);
}

void sub_18BB6B874(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 settings];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5500, &qword_18BC44640);
    v3 = sub_18BC20D98();

    if (v3 >> 62)
    {
      if (sub_18BC219A8())
      {
LABEL_4:
        v4 = [v1 identifier];
        v5 = [v1 title];
        v6 = sub_18BC20BD8();
        v8 = v7;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5CD0, &qword_18BC44690);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_18BC3E410;
        *(v9 + 32) = v4;
        *(v9 + 40) = v6;
        *(v9 + 48) = v8;
        v10 = v4;
        sub_18BC1E3F8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010, &qword_18BC4F8F0);
        sub_18BC1FA88();

        if (v3 >> 62)
        {
          v11 = sub_18BC219A8();
          if (v11)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
LABEL_6:
            v17 = v1;
            v18 = MEMORY[0x1E69E7CC0];
            sub_18B9B68C4(0, v11 & ~(v11 >> 63), 0);
            if (v11 < 0)
            {
              __break(1u);
              return;
            }

            v12 = 0;
            do
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v13 = MEMORY[0x18CFFD010](v12, v3);
              }

              else
              {
                v13 = *(v3 + 8 * v12 + 32);
                swift_unknownObjectRetain();
              }

              v15 = *(v18 + 16);
              v14 = *(v18 + 24);
              if (v15 >= v14 >> 1)
              {
                sub_18B9B68C4((v14 > 1), v15 + 1, 1);
              }

              ++v12;
              *(v18 + 16) = v15 + 1;
              v16 = v18 + 16 * v15;
              *(v16 + 32) = v13;
              *(v16 + 40) = 2;
            }

            while (v11 != v12);

            v1 = v17;
            goto LABEL_17;
          }
        }

LABEL_17:
        sub_18BC1FA38();

        return;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }
}

void sub_18BB6BB68(void *a1)
{
  if ((*(a1 + OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet) & 1) == 0)
  {
    v3 = [a1 traitCollection];
    v4 = [v3 _presentationSemanticContext];

    if (v4 != 3 && ([a1 _isInPopoverPresentation] & 1) == 0)
    {
      v5 = [v1 popoverPresentationController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 adaptiveSheetPresentationController];

        if (v7)
        {
          v8 = swift_allocObject();
          *(v8 + 16) = v7;
          v9 = swift_allocObject();
          *(v9 + 16) = sub_18BB6BFB4;
          *(v9 + 24) = v8;
          v12[4] = sub_18B7D1E94;
          v12[5] = v9;
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 1107296256;
          v12[2] = sub_18B7E3BF4;
          v12[3] = &block_descriptor_50;
          v10 = _Block_copy(v12);
          v11 = v7;
          sub_18BC1E1A8();

          [v11 animateChanges_];

          _Block_release(v10);
          LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

          if (v11)
          {
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_18BB6BD60(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet) == 1)
  {
    sub_18BA0B840(0, 255, CGRectMake, 0);
  }
}

id sub_18BB6BDC8(void *a1, double a2, double a3)
{
  v7 = [a1 traitCollection];
  v8 = [v7 _presentationSemanticContext];

  if (v8 == 3 || (result = [a1 _isInPopoverPresentation], result))
  {
    result = [v3 preferredContentSize];
    if (v10 < a3)
    {

      return [v3 setPreferredContentSize_];
    }
  }

  return result;
}

id sub_18BB6BE98(void *a1, double a2, double a3)
{
  v7 = [a1 traitCollection];
  v8 = [v7 _presentationSemanticContext];

  if (v8 == 3 || (result = [a1 _isInPopoverPresentation], result))
  {

    return [v3 setPreferredContentSize_];
  }

  return result;
}

unint64_t type metadata accessor for SFBrowsingAssistant()
{
  result = qword_1EA9DA030;
  if (!qword_1EA9DA030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9DA030);
  }

  return result;
}

uint64_t sub_18BB6BFCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BB6C014(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_18BB6C078(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_18BB6C0C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BB6C198(uint64_t a1)
{
  result = sub_18BC1EC08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18BB6C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  sub_18BC1F0E8();
  swift_getWitnessTable();
  return sub_18BC20D18();
}

uint64_t sub_18BB6C2E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
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

uint64_t sub_18BB6C32C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 305) = 1;
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

    *(result + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18BB6C3D0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v22.origin.x = UIEdgeInsetsInsetRect(v3, v4, v5, v6, *(v0 + 160), *(v0 + 168));
  Width = CGRectGetWidth(v22);
  v8 = *(v0 + 48);
  v9 = *(v0 + 104);
  v10 = *(v0 + 152);
  v23.origin.x = v3;
  v23.origin.y = v4;
  v23.size.width = v5;
  v23.size.height = v6;
  Height = CGRectGetHeight(v23);
  if (v2)
  {
    v12 = Height;
    v13 = v2 - 1;
    v14 = _s4ItemVMa_0(0);
    v15 = 0.0;
    if ((*(v1 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * v13 + *(v14 + 32)) & 1) == 0)
    {
      sub_18BB6C81C();
      v15 = v16;
    }

    v18 = v9 + v10;
    v19 = Width - (v18 + v18);
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    v20 = v18 + (v9 + v19) * v13;
    v21 = v8;
    v17 = (v12 - v8) * 0.5;
    v24 = CGRectOffset(*(&v19 - 2), v15, 0.0);
    CGRectGetMinX(v24);
    v25.origin.x = sub_18BB6C55C();
    CGRectGetMaxX(v25);
  }

  else
  {
    __break(1u);
  }
}

double sub_18BB6C55C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(*(v0 + 32) + 16);
  v6 = *(v0 + 48);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = *(v0 + 152);
  v16.origin.x = UIEdgeInsetsInsetRect(v1, v2, v3, v4, *(v0 + 160), *(v0 + 168));
  Width = CGRectGetWidth(v16);
  if (v7)
  {
    v11 = v8 + v9 + v8 + v9;
    v12 = Width - v11;
    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    v17.size.width = (v5 + -1.0) * v8 + v11 + v12 * v5;
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.height = v6;
    MaxX = CGRectGetMaxX(v17);
    v18.origin.x = v1;
    v18.origin.y = v2;
    v18.size.width = v3;
    v18.size.height = v4;
    v14 = MaxX - CGRectGetMaxX(v18);
    v19.origin.x = v1;
    v19.origin.y = v2;
    v19.size.width = v3;
    v19.size.height = v4;
    CGRectGetMinY(v19);
    v20.origin.x = v1;
    v20.origin.y = v2;
    v20.size.width = v3;
    v20.size.height = v4;
    CGRectGetWidth(v20);
    v21.origin.x = v1;
    v21.origin.y = v2;
    v21.size.width = v3;
    v21.size.height = v4;
    CGRectGetHeight(v21);
    return v14;
  }

  return v1;
}

void sub_18BB6C6A8(unint64_t a1)
{
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  v5 = *(v1 + 208);
  v6 = *(v1 + 216);
  v23.origin.x = UIEdgeInsetsInsetRect(v3, v4, v5, v6, *(v1 + 160), *(v1 + 168));
  Width = CGRectGetWidth(v23);
  v8 = *(v1 + 48);
  v9 = *(v1 + 104);
  v10 = *(v1 + 152);
  v24.origin.x = v3;
  v24.origin.y = v4;
  v24.size.width = v5;
  v24.size.height = v6;
  Height = CGRectGetHeight(v24);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = *(v1 + 32);
  if (*(v12 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = Height;
  v14 = _s4ItemVMa_0(0);
  v15 = 0.0;
  if ((*(v12 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)) + *(*(v14 - 8) + 72) * a1 + *(v14 + 32)) & 1) == 0)
  {
    sub_18BB6C81C();
    v15 = v16;
  }

  v18 = v9 + v10;
  v19 = Width - (v18 + v18);
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  v20 = v18 + (v9 + v19) * a1;
  v21 = v8;

  v17 = (v13 - v8) * 0.5;
  CGRectOffset(*(&v19 - 2), v15, 0.0);
}

void sub_18BB6C81C()
{
  if ((*(v0 + 4) & 1) == 0)
  {
    return;
  }

  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + 16);
  v3 = __OFSUB__(v2, v1 & 1);
  v4 = v2 - (v1 & 1);
  if (v3)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v4 != 2)
  {
    return;
  }

  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v26 = *(v0 + 216);
  v27 = *(v0 + 208);
  v30.origin.x = UIEdgeInsetsInsetRect(v5, v6, v27, v26, *(v0 + 160), *(v0 + 168));
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v24 = CGRectGetWidth(v30);
  v11 = *(v0 + 104);
  v25 = v11 + *(v0 + 152);
  v12 = v25 + v25;
  v31.origin.x = v5;
  v31.origin.y = v6;
  v31.size.height = v26;
  v31.size.width = v27;
  v28 = CGRectGetWidth(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v13 = CGRectGetWidth(v32) - (v25 + v25);
  v14 = 0.0;
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  v15 = v11 + v13;
  if (v11 + v13 < 0.0)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v16 = v24 - v12;
  if (v24 - v12 < 0.0)
  {
    v16 = 0.0;
  }

  v17 = (v28 - (v11 + v16 + v16)) * 0.5;
  if (v15 >= v5)
  {
    v18 = v5;
  }

  else
  {
    v18 = v15;
  }

  if (v5 > 0.0)
  {
    v14 = v18;
  }

  v19 = v14 + v17 - v25;
  if (v1)
  {
    v20 = v19;
    sub_18BB6C3D0();
    v22 = _SFUninterpolate(v21, 0.0, v15);
    if (v22 <= 0.0)
    {
      v22 = 0.0;
    }

    if (v22 <= 1.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1.0;
    }

    _SFInterpolate(v20, 0.0, v23);
  }
}

void sub_18BB6C9CC(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *(v2 + 192);
  v6 = *(v2 + 200);
  v7 = *(v2 + 208);
  v8 = *(v2 + 216);
  v27.origin.x = UIEdgeInsetsInsetRect(v5, v6, v7, v8, *(v2 + 160), *(v2 + 168));
  Width = CGRectGetWidth(v27);
  v10 = *(v2 + 104);
  v11 = *(v2 + 152);
  v12 = Width - (v10 + v11 + v10 + v11);
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  v13 = *(v2 + 32);
  v14 = *(v13 + 16);
  if (!v14 || v12 == 0.0)
  {
    v24 = _s4ItemVMa_0(0);
    v20 = *(*(v24 - 8) + 56);
    v23 = v24;
    v21 = a1;
    v22 = 1;
    goto LABEL_16;
  }

  v15 = v11 + v10 * 0.5;
  v28.origin.x = v5;
  v28.origin.y = v6;
  v28.size.width = v7;
  v28.size.height = v8;
  v16 = (a2 - v15) / (CGRectGetWidth(v28) - (v15 + v15));
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v17 = v14 - 1;
  if ((v14 - 1) >= v16)
  {
    v17 = v16;
  }

  if (v16 <= 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= v14)
  {
    goto LABEL_22;
  }

  v19 = _s4ItemVMa_0(0);
  v25 = *(v19 - 8);
  sub_18B80DF38(v13 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v18, a1);
  v20 = *(v25 + 56);
  v21 = a1;
  v22 = 0;
  v23 = v19;
LABEL_16:

  v20(v21, v22, 1, v23);
}

void sub_18BB6CBE4(unint64_t a1)
{
  *&v3 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5378, &unk_18BC432C0));
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v73 - v4;
  v6 = _s4ItemVMa_0(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380, &unk_18BC46510);
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  if (*(*(v1 + 8) + 40) != 1)
  {
    goto LABEL_15;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v16 = *(v1 + 32);
  v17 = *(v16 + 16);
  if (v17 <= a1)
  {
LABEL_27:
    __break(1u);
    return;
  }

  width = *&v3;
  v80 = a1;
  v81 = v15;
  x = v14;
  v79 = *&v5;
  v18 = (*(*&v7 + 80) + 32) & ~*(*&v7 + 80);
  v19 = *(*&v7 + 72);
  v20 = v16 + v18 + v19 * a1;
  v21 = &v73 - v13;
  sub_18B80DF38(v20, &v73 - v13);
  y = v7;
  v22 = *(*&v7 + 56);
  v82 = *&v21;
  height = *&v22;
  v22(v21, 0, 1, v6);
  v23 = v16 + v18 + v19 * v17;
  v24 = -v19;
  v25 = v16 + v18 + v19 * (v17 - 1);
  v26 = v17 + 1;
  while (--v26)
  {
    v23 += v24;
    v27 = v25 + v24;
    sub_18B80DF38(v25, v9);
    v28 = v9[*(v6 + 32)];
    sub_18B813CBC(v9);
    v25 = v27;
    if ((v28 & 1) == 0)
    {
      v29 = *&v81;
      sub_18B80DF38(v23, *&v81);
      v30 = 0;
      goto LABEL_9;
    }
  }

  v30 = 1;
  v29 = *&v81;
LABEL_9:
  (*&height)(v29, v30, 1, v6);
  v31 = *(*&width + 48);
  v32 = *&v82;
  v33 = *&v79;
  sub_18B813C4C(*&v82, *&v79);
  sub_18B813C4C(v29, v33 + v31);
  v34 = v29;
  v35 = *(*&y + 48);
  v36 = v35(v33, 1, v6);
  a1 = v80;
  if (v36 == 1)
  {
    sub_18B988BAC(v34, &unk_1EA9D5380, &unk_18BC46510);
    sub_18B988BAC(v32, &unk_1EA9D5380, &unk_18BC46510);
    if (v35(v33 + v31, 1, v6) == 1)
    {
      sub_18B988BAC(v33, &unk_1EA9D5380, &unk_18BC46510);
      return;
    }
  }

  else
  {
    v37 = *&x;
    sub_18B813C4C(v33, *&x);
    if (v35(v33 + v31, 1, v6) != 1)
    {
      sub_18B80DF9C(v33 + v31, v9);
      v72 = sub_18B81B8AC(v37, v9);
      sub_18B813CBC(v9);
      sub_18B988BAC(*&v81, &unk_1EA9D5380, &unk_18BC46510);
      sub_18B988BAC(*&v82, &unk_1EA9D5380, &unk_18BC46510);
      sub_18B813CBC(v37);
      sub_18B988BAC(v33, &unk_1EA9D5380, &unk_18BC46510);
      if (v72)
      {
        return;
      }

      goto LABEL_15;
    }

    sub_18B988BAC(*&v81, &unk_1EA9D5380, &unk_18BC46510);
    sub_18B988BAC(*&v82, &unk_1EA9D5380, &unk_18BC46510);
    sub_18B813CBC(v37);
  }

  sub_18B988BAC(v33, &qword_1EA9D5378, &unk_18BC432C0);
LABEL_15:
  v38 = *(v1 + 192);
  v39 = *(v1 + 200);
  v41 = *(v1 + 208);
  v40 = *(v1 + 216);
  v84.origin.x = UIEdgeInsetsInsetRect(v38, v39, v41, v40, *(v1 + 160), *(v1 + 168));
  y = v84.origin.y;
  x = v84.origin.x;
  height = v84.size.height;
  width = v84.size.width;
  v42 = CGRectGetWidth(v84);
  v43 = *(v1 + 48);
  v44 = *(v1 + 96);
  v45 = *(v1 + 104);
  v46 = v45 + *(v1 + 152);
  v74 = v46 + v46;
  v47 = v42 - (v46 + v46);
  if (v47 < 0.0)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v47;
  }

  v49 = v46 + (v45 + v48) * a1;
  v81 = v39;
  v82 = v38;
  v85.origin.x = v38;
  v85.origin.y = v39;
  v79 = v40;
  *&v80 = v41;
  v85.size.width = v41;
  v85.size.height = v40;
  v50 = (CGRectGetHeight(v85) - v43) * 0.5;
  UIEdgeInsetsMakeWithEdges();
  v53 = UIEdgeInsetsInsetRect(v49, v50, v48, v43, v51, v52);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = *(*(v1 + 32) + 16);
  v86.origin.y = y;
  v86.origin.x = x;
  v86.size.height = height;
  v86.size.width = width;
  v61 = CGRectGetWidth(v86);
  if (v44)
  {
    v62 = v61 - v74;
    if (v62 < 0.0)
    {
      v62 = 0.0;
    }

    v87.size.width = v45 * (v60 + -1.0) + v74 + v62 * v60;
    v87.origin.x = 0.0;
    v87.origin.y = 0.0;
    v87.size.height = v43;
    MaxX = CGRectGetMaxX(v87);
    v88.origin.x = v53;
    v88.origin.y = v55;
    v88.size.width = v57;
    v88.size.height = v59;
    v64 = MaxX - CGRectGetMaxX(v88);
    v89.origin.x = v53;
    v89.origin.y = v55;
    v89.size.width = v57;
    v89.size.height = v59;
    MinY = CGRectGetMinY(v89);
    v90.origin.x = v53;
    v90.origin.y = v55;
    v90.size.width = v57;
    v90.size.height = v59;
    v66 = CGRectGetWidth(v90);
    v91.origin.x = v53;
    v91.origin.y = v55;
    v91.size.width = v57;
    v91.size.height = v59;
    x = CGRectGetHeight(v91);
    v53 = v64;
    v55 = MinY;
    v57 = v66;
  }

  else
  {
    x = v59;
  }

  v68 = v81;
  v67 = v82;
  v92.origin.x = v82;
  v92.origin.y = v81;
  v70 = v79;
  v69 = *&v80;
  *&v92.size.width = v80;
  v92.size.height = v79;
  MidX = CGRectGetMidX(v92);
  v93.origin.x = v67;
  v93.origin.y = v68;
  v93.size.width = v69;
  v93.size.height = v70;
  v83.y = CGRectGetMidY(v93);
  v94.origin.x = v53;
  v94.origin.y = v55;
  v94.size.width = v57;
  v94.size.height = x;
  v83.x = MidX;
  CGRectContainsPoint(v94, v83);
}

double sub_18BB6D274()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 152);
  v13 = v2 + v1 * 0.5;
  v3 = *(*(v0 + 32) + 16);
  v4 = v1 + v2 + v1 + v2;
  v14.origin.x = UIEdgeInsetsInsetRect(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 160), *(v0 + 168));
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v9 = CGRectGetWidth(v14) - v4;
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = v1 * (v3 + -1.0) + v4 + v9 * v3;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = CGRectGetWidth(v15) - v4;
  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  return v10 - (v13 + v13) - v11;
}

__n128 sub_18BB6D35C(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 112) = *(a1 + 64);
  *(v1 + 128) = v2;
  *(v1 + 144) = *(a1 + 96);
  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  result = *(a1 + 48);
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = result;
  return result;
}

__n128 sub_18BB6D380(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 256) = *(a1 + 96);
  *(v1 + 272) = v2;
  *(v1 + 288) = *(a1 + 128);
  *(v1 + 304) = *(a1 + 144);
  v3 = *(a1 + 48);
  *(v1 + 192) = *(a1 + 32);
  *(v1 + 208) = v3;
  v4 = *(a1 + 80);
  *(v1 + 224) = *(a1 + 64);
  *(v1 + 240) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v6;
  return result;
}

BOOL sub_18BB6D3B4()
{
  if (*(v0 + 4) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + 16);
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if (!v3)
  {
    return v4 == 2;
  }

  __break(1u);
  return result;
}

CGFloat sub_18BB6D3EC(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[13];
  v5 = v1[19];
  v14 = v1[21];
  v6 = v1[24];
  v7 = v1[25];
  v8 = v1[26];
  v9 = v1[27];
  v15.origin.x = UIEdgeInsetsInsetRect(v6, v7, v8, v9, v1[20], v14);
  v10 = v4 + v5;
  v11 = CGRectGetWidth(v15) - (v10 + v10);
  if (v11 < 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v11;
  }

  v16.origin.x = v6;
  v16.origin.y = v7;
  v16.size.width = v8;
  v16.size.height = v9;
  v17.origin.y = (CGRectGetHeight(v16) - v3) * 0.5;
  v17.origin.x = v10 + (v4 + v12) * a1;
  v17.size.width = v12;
  v17.size.height = v3;
  return CGRectGetMinX(v17) - v10 - v14;
}

double sub_18BB6D530()
{
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 32) + 16);
  v3 = v1 + *(v0 + 152) + v1 + *(v0 + 152);
  v6.origin.x = UIEdgeInsetsInsetRect(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 160), *(v0 + 168));
  v4 = CGRectGetWidth(v6) - v3;
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  return v1 * (v2 + -1.0) + v3 + v4 * v2;
}

void sub_18BB6D660(uint64_t a1, uint64_t a2)
{
  v5.origin.x = UIEdgeInsetsInsetRect(v2[24], v2[25], v2[26], v2[27], v2[20], v2[21]);
  CGRectGetWidth(v5);
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }
}

void sub_18BB6D740()
{
  memcpy(__dst, v0, 0x131uLL);
  if (sub_18BB6D274() != 0.0)
  {
    sub_18BB6D274();
  }
}

double sub_18BB6D7B0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);
  v3 = *(v0 + 152);
  v6.origin.x = UIEdgeInsetsInsetRect(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 160), *(v0 + 168));
  v4 = CGRectGetWidth(v6) - (v2 + v3 + v2 + v3);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  return *(v1 + 48) * v4;
}

double sub_18BB6D818()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 152);
  if (*(v0 + 5))
  {
    v3 = 50.0;
  }

  else
  {
    v3 = 0.0;
  }

  v6.origin.x = UIEdgeInsetsInsetRect(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 160), *(v0 + 168));
  v4 = CGRectGetWidth(v6) - (v1 + v2 + v1 + v2);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  return v3 + v4 * 0.33;
}

id sub_18BB6D8A8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA080, &qword_18BC4FC38);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v5[OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection] = 0;
  *&v5[OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl___selectedTheme] = 0;
  sub_18BC1EE88();
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BA11174();
  v19 = v18;
  sub_18BC20808();
  sub_18BC207F8();
  swift_getKeyPath();
  sub_18BC20818();

  v20 = *(v12 + 8);
  v20(v14, v11);
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9DA088, &unk_18BC4FC40));
  v22 = sub_18BC20428();
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 addSubview_];
  v23 = objc_opt_self();
  v24 = [v23 safari:v22 constraintsMatchingFrameOfView:v19 withFrameOfView:?];
  if (!v24)
  {
    sub_18BA497D0();
    sub_18BC20D98();
    v24 = sub_18BC20D88();
  }

  [v23 activateConstraints_];

  v20(v17, v11);
  return v19;
}

void sub_18BB6DB78(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18BA11174();
    sub_18BC1EE68();
  }
}

double sub_18BB6DC60(uint64_t a1)
{
  if (*&v1[OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl___selectedTheme] == a1)
  {
    swift_getKeyPath();
    sub_18BA11174();
    sub_18BC1EE78();

    if ((v1[OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection] & 1) == 0)
    {
      [v1 sendActionsForControlEvents_];
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18BA11174();
    sub_18BC1EE68();
  }

  return result;
}

uint64_t sub_18BB6DDA4()
{
  swift_getKeyPath();
  sub_18BA11174();
  sub_18BC1EE78();

  return *(v0 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl___selectedTheme);
}

uint64_t sub_18BB6DEC4()
{
  swift_getKeyPath();
  sub_18BA11174();
  sub_18BC1EE78();

  return *(v0 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection);
}

void sub_18BB6DF3C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18BA11174();
  sub_18BC1EE78();

  *a2 = *(v3 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection);
}

void sub_18BB6DFF4(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl___selectedTheme] = a2;
  swift_getKeyPath();
  sub_18BA11174();
  sub_18BC1EE78();

  if ((a1[OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection] & 1) == 0)
  {
    [a1 sendActionsForControlEvents_];
  }
}

void sub_18BB6E098(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection;
  if (*(v1 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection) == 1)
  {
    *(v1 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection) = 1;
  }

  else
  {
    v3 = a1;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18BA11174();
    sub_18BC1EE68();

    a1 = v3;
  }

  sub_18BB6DC60(a1);
  if (*(v1 + v2))
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_18BA11174();
    sub_18BC1EE68();
  }

  else
  {
    *(v1 + v2) = 0;
  }
}

uint64_t type metadata accessor for SFReaderThemePickerControl(uint64_t a1)
{
  result = qword_1EA9DA070;
  if (!qword_1EA9DA070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18BB6E2FC(uint64_t a1, uint64_t a2)
{
  result = sub_18BC1EE98();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall SFFluidCollectionView.LayoutInvalidationContext.invalidateItems(_:)(Swift::OpaquePointer a1)
{
  v16[7] = a1._rawValue;
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v3 = v1[5];
  v12 = v1[4];
  v13 = v3;
  v4 = v1[7];
  v14 = v1[6];
  v15 = v4;
  v5 = sub_18BC20E78();
  v16[0] = v10;
  v16[1] = v2;
  v16[2] = v12;
  v16[3] = v3;
  v16[4] = v14;
  v16[5] = v4;
  v6 = type metadata accessor for SFFluidCollectionView.Element(0, v16);
  WitnessTable = swift_getWitnessTable();
  v16[0] = sub_18B82DECC(sub_18BB66C98, &v9, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  swift_getWitnessTable();
  sub_18BC210E8();
  sub_18BC20E78();
  swift_getWitnessTable();
  sub_18BC210D8();
}

uint64_t sub_18BB6E5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_18BB6E5F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
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

uint64_t sub_18BB6E638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BB6E6A4()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BB6E8C4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18BB6E72C(uint64_t a1)
{
  sub_18BC1EC08();
  sub_18BB6E8C4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_18BC20A78();
}

uint64_t sub_18BB6E7B0(uint64_t a1)
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BB6E8C4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18BB6E8C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_18BB6E90C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___imageView] = 0;
  v9 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___iconAccessory;
  v10 = sub_18BC1F598();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_imageViewSize] = 0x403C000000000000;
  v11 = &v4[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_title];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_icon] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_imageViewBookmark] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_showsCheckmark] = 0;
  v24.receiver = v4;
  v24.super_class = _s10FolderCellCMa(0);
  v12 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setDirectionalLayoutMargins_];
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18BC41E60;
  v15 = sub_18BB6EBEC();
  v16 = [v15 widthAnchor];

  v17 = [v16 constraintEqualToConstant_];
  *(v14 + 32) = v17;
  v18 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___imageView;
  v19 = [*&v12[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___imageView] widthAnchor];
  v20 = [*&v12[v18] heightAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v14 + 40) = v21;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v22 = sub_18BC20D88();

  [v13 activateConstraints_];

  return v12;
}

id sub_18BB6EBEC()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(_SFSiteIconView) init];
    [v4 setImageContentMode_];
    [v4 setClipsToBounds_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_18BB6EC88@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v27 - v4;
  v6 = sub_18BC1F568();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1F4E8();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7620, &qword_18BC489B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  v18 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___iconAccessory;
  swift_beginAccess();
  sub_18BA76498(v1 + v18, v17);
  v19 = sub_18BC1F598();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    return (*(v20 + 32))(a1, v17, v19);
  }

  sub_18BA76508(v17);
  v27[1] = sub_18BB6EBEC();
  v21 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700, &unk_18BC459B0) + 48)];
  v27[0] = a1;
  v22 = *MEMORY[0x1E69DBF28];
  v23 = sub_18BC1F418();
  (*(*(v23 - 8) + 104))(v8, v22, v23);
  *v21 = sub_18BB70068;
  v21[1] = 0;
  (*(v28 + 104))(v8, *MEMORY[0x1E69DBF58], v29);
  v24 = sub_18BC1F448();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  sub_18BC1F4D8();
  v25 = v27[0];
  sub_18BC1F3D8();
  (*(v30 + 8))(v11, v31);
  (*(v20 + 16))(v14, v25, v19);
  (*(v20 + 56))(v14, 0, 1, v19);
  swift_beginAccess();
  sub_18BA76570(v14, v1 + v18);
  return swift_endAccess();
}

BOOL sub_18BB6F0B8()
{
  v1 = [objc_opt_self() safariBookmarkCollection];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 listWithID_];

  if (!v3)
  {
    return 0;
  }

  if ([v0 isFolder])
  {
    v4 = [v3 bookmarkArray];
    sub_18B7B0AC0(0, &qword_1EA9D7E10, 0x1E69E20F0);
    v5 = sub_18BC20D98();

    if (v5 >> 62)
    {
LABEL_22:
      v6 = sub_18BC219A8();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    do
    {
      v8 = v6 != v7;
      if (v6 == v7)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18CFFD010](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v11 = sub_18BB6F0B8();

      ++v7;
    }

    while (!v11);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void sub_18BB6F260()
{
  v7.receiver = v0;
  v7.super_class = _s10FolderCellCMa(0);
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  [v0 setIndentationLevel_];
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_imageViewBookmark];
  *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_imageViewBookmark] = 0;
  if (v1)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  v2 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_icon];
  *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_icon] = 0;
  if (v2)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  v3 = sub_18BB6EBEC();
  [v3 setImage_];

  v4 = &v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_title];
  v5 = *&v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_title + 8];
  *v4 = 0;
  *(v4 + 1) = 0;
  if (v5)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  v6 = v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_showsCheckmark];
  v0[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_showsCheckmark] = 0;
  if (v6)
  {
    [v0 setNeedsUpdateConfiguration];
  }
}

void sub_18BB6F3B8(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_18BC1FA08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[1] = a1;
  v9 = sub_18BC1F708();
  v10 = _s10FolderCellCMa(0);
  v47.receiver = v3;
  v47.super_class = v10;
  objc_msgSendSuper2(&v47, sel__bridgedUpdateConfigurationUsingState_, v9);

  sub_18BC1F9A8();
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  v13 = sub_18BC1F8A8();
  sub_18BC1F858();
  v13(aBlock, 0);
  v14 = sub_18BC1F8A8();
  sub_18BC1F808();
  v14(aBlock, 0);
  v15 = objc_opt_self();
  v16 = *MEMORY[0x1E69DDCF8];
  sub_18BA65924(MEMORY[0x1E69E7CC0]);
  type metadata accessor for AttributeName(0);
  sub_18BB70070();
  v17 = sub_18BC20998();

  v18 = [v15 _sf_preferredFontForTextStyle_attributes_];

  v19 = sub_18BC1F8A8();
  sub_18BC1F838();
  v19(aBlock, 0);
  sub_18BC1E3F8();
  sub_18BC1F9B8();
  v44 = v5;
  v45 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(aBlock);
  (*(v6 + 16))(boxed_opaque_existential_0Tm, v8, v5);
  MEMORY[0x18CFFC900](aBlock);
  v21 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_imageViewBookmark;
  v22 = *&v3[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_imageViewBookmark];
  if (!v22)
  {
    goto LABEL_5;
  }

  v23 = v22;
  v24 = [v23 identifier];
  if (v24 == *MEMORY[0x1E69E20C0] || [v23 folderType])
  {

LABEL_5:
    v25 = sub_18BB6EBEC();
    [v25 setCustomImageInset_];

    v26 = *&v3[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___imageView];
    v27 = *&v3[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_icon];
    v28 = v26;
    v29 = [v11 systemBlueColor];
    v30 = [v29 colorWithAlphaComponent_];

    [v28 setImage:v27 withBackgroundColor:v30];
    goto LABEL_6;
  }

  v39 = sub_18BB6F0B8();

  if (!v39)
  {
    goto LABEL_5;
  }

  v40 = sub_18BB6EBEC();
  [v40 setCustomImageInset_];

  v41 = *&v3[OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___imageView];
  v27 = *&v3[v21];
  v28 = v41;
  v30 = [v11 secondarySystemFillColor];
  [v28 setBookmark:v27 withBackgroundColor:v30];
LABEL_6:

  v31 = sub_18BB6EBEC();
  [v31 _setContinuousCornerRadius_];

  v32 = sub_18BC1F6E8();
  [v3 safari:v32 & 1 updateVisualStateIsSelected:sub_18BC1F728() & 1 isEditing:?];
  v33 = objc_opt_self();
  v34 = swift_allocObject();
  *(v34 + 16) = v3;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_18BB700C8;
  *(v35 + 24) = v34;
  v45 = sub_18B7D1E94;
  v46 = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  v44 = &block_descriptor_51;
  v36 = _Block_copy(aBlock);
  v37 = v3;
  sub_18BC1E1A8();

  [v33 performWithoutAnimation_];
  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_18BB6FA58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_18BC1F468();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1F418();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_showsCheckmark);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  v13 = *(sub_18BC1F598() - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  if (v12 == 1)
  {
    *(v15 + 16) = xmmword_18BC3E400;
    sub_18BB6EC88(v15 + v14);
    (*(v9 + 104))(v11, *MEMORY[0x1E69DBF28], v8);
    v16 = sub_18BC1F448();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    sub_18BC1F458();
    sub_18BC1F578();
    (*(v18 + 8))(v7, v19);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    *(v15 + 16) = xmmword_18BC3E410;
    sub_18BB6EC88(v15 + v14);
  }

  return sub_18BC21458();
}

void sub_18BB6FDAC(id a1, void *a2, unint64_t *a3, void *a4)
{
  v6 = *&v4[*a2];
  *&v4[*a2] = a1;
  if (!a1)
  {
    if (!v6)
    {
      return;
    }

    v11 = v6;
    goto LABEL_9;
  }

  v11 = v6;
  if (!v6)
  {
    a1 = a1;
LABEL_9:
    [v4 setNeedsUpdateConfiguration];

    v10 = v11;
    goto LABEL_10;
  }

  v7 = v4;
  sub_18B7B0AC0(0, a3, a4);
  a1 = a1;
  v8 = v11;
  v9 = sub_18BC215C8();

  if ((v9 & 1) == 0)
  {
    v4 = v7;
    goto LABEL_9;
  }

  v10 = v8;
LABEL_10:
}

id sub_18BB6FE9C()
{
  v2.receiver = v0;
  v2.super_class = _s10FolderCellCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s10FolderCellCMa(uint64_t a1)
{
  result = qword_1EA9DA138;
  if (!qword_1EA9DA138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18BB6FFA8(uint64_t a1)
{
  sub_18BA75804(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_18BB70070()
{
  result = qword_1EA9D3C30;
  if (!qword_1EA9D3C30)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3C30);
  }

  return result;
}

void sub_18BB700D0()
{
  *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___imageView) = 0;
  v1 = OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell____lazy_storage___iconAccessory;
  v2 = sub_18BC1F598();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_imageViewSize) = 0x403C000000000000;
  v3 = (v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_title);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_icon) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_imageViewBookmark) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari38SFEditBookmarkCollectionViewController10FolderCell_showsCheckmark) = 0;
  sub_18BC21CF8();
  __break(1u);
}

void sub_18BB70270(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v24 = a6;
  v25 = a1;
  v8 = v6;
  v26 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v21 - v13;
  v15 = *(a3 + 16);
  if (v15)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v22 = a5;
    (a5)(0, v15, 0, v12);
    v16 = v27;
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v17 = a3 + v23;
    v18 = *(v11 + 72);
    while (1)
    {
      v25(v17);
      if (v8)
      {
        break;
      }

      v8 = 0;
      v27 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        v22(v19 > 1, v20 + 1, 1);
        v16 = v27;
      }

      *(v16 + 16) = v20 + 1;
      sub_18BB7C47C(v14, v16 + v23 + v20 * v18, v24);
      v17 += v18;
      if (!--v15)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_18BB70470(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v10[1] = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    for (i = (a3 + 32); ; ++i)
    {
      v9 = *i;
      a1(v10, &v9);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_18BB70560(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_18BC1E1A8();
  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_18BA93B2C, v8);
}

uint64_t sub_18BB7064C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__n128 *), uint64_t a5, uint64_t (*a6)(__n128 *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v38 = a1;
  v37 = sub_18BC1F598();
  v12 = *(v37 - 8);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_18BC1FA08();
  v15 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);
  v42[0] = *a3;
  v42[1] = v18;
  v43 = *(a3 + 32);
  sub_18BC1F9A8();
  a4(v42);
  sub_18BC1F9B8();
  v19 = a6(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  v20 = v12;
  v21 = v40;
  v22 = *(v20 + 72);
  v36 = v13;
  v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_18BC3E410;
  static UICellAccessory.sf_imageMaskPreview(_:)(v19, v24 + v23);
  sub_18BC21458();
  if (v21)
  {
    v34 = v22;
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = a9;
    v26 = *(a3 + 16);
    *(v25 + 32) = *a3;
    *(v25 + 48) = v26;
    *(v25 + 64) = *(a3 + 32);
    sub_18B824D48(v21, a9);
    sub_18B824D48(v21, a9);
    sub_18BA2D578(a3, v41);
    v27 = v35;
    static UICellAccessory.imageMaskPicker(_:setter:)(v19, sub_18BB7C528, v25, v35);

    v28 = sub_18BC21448();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_18B9B58D8(0, *(v28 + 2) + 1, 1, v28);
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_18B9B58D8((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    (*(v36 + 32))(&v28[v23 + v30 * v34], v27, v37);
    sub_18BC21458();
    sub_18B7B171C(v40, a9);
  }

  v31 = v39;
  v41[3] = v39;
  v41[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v41);
  (*(v15 + 16))(boxed_opaque_existential_0Tm, v17, v31);
  MEMORY[0x18CFFC900](v41);

  return (*(v15 + 8))(v17, v31);
}

uint64_t sub_18BB709D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void **), uint64_t a5, uint64_t (*a6)(void **), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v38 = a1;
  v37 = sub_18BC1F598();
  v12 = *(v37 - 8);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_18BC1FA08();
  v15 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3;
  sub_18BC1F9A8();
  a4(&v42);
  sub_18BC1F9B8();
  v18 = a6(&v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  v19 = v12;
  v20 = v40;
  v21 = *(v19 + 72);
  v36 = v13;
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_18BC3E410;
  static UICellAccessory.sf_imageMaskPreview(_:)(v18, v23 + v22);
  sub_18BC21458();
  if (v20)
  {
    v34 = v21;
    v24 = swift_allocObject();
    v24[2] = v20;
    v24[3] = a9;
    v24[4] = a3;
    sub_18B824D48(v20, a9);
    sub_18B824D48(v20, a9);
    v25 = a3;
    v26 = v35;
    static UICellAccessory.imageMaskPicker(_:setter:)(v18, sub_18BB7C4E4, v24, v35);

    v27 = sub_18BC21448();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_18B9B58D8(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_18B9B58D8((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    (*(v36 + 32))(&v27[v22 + v29 * v34], v26, v37);
    sub_18BC21458();
    sub_18B7B171C(v40, a9);
  }

  v30 = v39;
  v41[3] = v39;
  v41[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v41);
  (*(v15 + 16))(boxed_opaque_existential_0Tm, v17, v30);
  MEMORY[0x18CFFC900](v41);

  return (*(v15 + 8))(v17, v30);
}

uint64_t sub_18BB70D34(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t (*a4)(__n128 *), uint64_t a5, uint64_t (*a6)(__n128 *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v38 = a1;
  v37 = sub_18BC1F598();
  v12 = *(v37 - 8);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_18BC1FA08();
  v15 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3[1];
  v42[0] = *a3;
  v42[1] = v18;
  v43 = a3[2].n128_u8[0];
  sub_18BC1F9A8();
  a4(v42);
  sub_18BC1F9B8();
  v19 = a6(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  v20 = v12;
  v21 = v40;
  v22 = *(v20 + 72);
  v36 = v13;
  v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_18BC3E410;
  static UICellAccessory.sf_imageMaskPreview(_:)(v19, v24 + v23);
  sub_18BC21458();
  if (v21)
  {
    v34 = v22;
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = a9;
    v26 = a3[1];
    *(v25 + 32) = *a3;
    *(v25 + 48) = v26;
    *(v25 + 64) = a3[2].n128_u8[0];
    sub_18B824D48(v21, a9);
    sub_18B824D48(v21, a9);
    sub_18BB7A32C(a3, v41);
    v27 = v35;
    static UICellAccessory.imageMaskPicker(_:setter:)(v19, sub_18BB7C384, v25, v35);

    v28 = sub_18BC21448();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_18B9B58D8(0, *(v28 + 2) + 1, 1, v28);
    }

    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_18B9B58D8((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    (*(v36 + 32))(&v28[v23 + v30 * v34], v27, v37);
    sub_18BC21458();
    sub_18B7B171C(v40, a9);
  }

  v31 = v39;
  v41[3] = v39;
  v41[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v41);
  (*(v15 + 16))(boxed_opaque_existential_0Tm, v17, v31);
  MEMORY[0x18CFFC900](v41);

  return (*(v15 + 8))(v17, v31);
}

void sub_18BB710B8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        MEMORY[0x18CFFD660](6);
        sub_18BC1EC08();
        sub_18BB7C334(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_18BC20A78();
        sub_18BC1E3F8();
        sub_18BC20C28();
      }

      else
      {
        if (v6 | v4 | v3 | v5)
        {
          v11 = 5;
        }

        else
        {
          v11 = 4;
        }

        MEMORY[0x18CFFD660](v11);
      }

      return;
    }

    v8 = v1;
    v9 = 3;
    goto LABEL_15;
  }

  if (!*(v1 + 32))
  {
    v8 = v1;
    v9 = 0;
LABEL_15:
    MEMORY[0x18CFFD660](v9);
    if (!v3)
    {
      goto LABEL_19;
    }

    sub_18BC22178();
    v10 = v3;
    sub_18BC215D8();

    sub_18BB79C9C(v8);
    return;
  }

  if (v7 == 1)
  {
    MEMORY[0x18CFFD660](1);
    if (v4)
    {
      sub_18BC22178();

      sub_18BC20C28();
      return;
    }

LABEL_19:
    sub_18BC22178();
    return;
  }

  MEMORY[0x18CFFD660](2);
  sub_18BC20C28();
  sub_18BB368AC(a1, v6);

  sub_18B9927B0(a1, v5);
}

uint64_t sub_18BB71310()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = *(v0 + 32);
  sub_18BC22158();
  sub_18BB710B8(v3);
  return sub_18BC221A8();
}

uint64_t sub_18BB713A0(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 32);
  sub_18BC22158();
  sub_18BB710B8(v4);
  return sub_18BC221A8();
}

BOOL sub_18BB713F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_18BB7A0B0(v5, v7);
}

void sub_18BB7143C()
{
  v1 = v0;
  v96 = _s5LayerVMa(0);
  v2 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v85 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v85 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0, &qword_18BC3EF28);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v93 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v85 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v85 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v85 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA1C8, &unk_18BC4FFE0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v85 - v27;
  v29 = *(v1 + OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource);
  if (v29)
  {
    v92 = v16;
    v97 = v13;
    v86 = v8;
    v88 = v26;
    sub_18BB7B27C();
    sub_18BB7B2D0();
    v87 = v29;
    sub_18BC1FB28();
    v89 = v28;
    v90 = v25;
    sub_18BC1FA88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1E0, &unk_18BC428D8);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_18BC3FC90;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 0u;
    *(v30 + 64) = 5;
    v31 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
    swift_beginAccess();
    sub_18BB7B1DC(v1 + v31, v24);
    v91 = v2;
    v32 = *(v2 + 48);
    v33 = v96;
    v34 = 0;
    if (!v32(v24, 1, v96))
    {
      v34 = *v24;
      v35 = *v24;
    }

    sub_18B988BAC(v24, &unk_1EA9DA1B0, &qword_18BC3EF28);
    *(v30 + 72) = v34;
    *(v30 + 80) = 0;
    *(v30 + 88) = 0;
    *(v30 + 96) = 0;
    *(v30 + 104) = 0;
    sub_18BB7B1DC(v1 + v31, v21);
    v36 = v32(v21, 1, v33);
    v37 = v1;
    v38 = v33;
    v39 = 0;
    v40 = 0;
    if (!v36)
    {
      v39 = v21[2];
      v40 = v21[3];
      sub_18BC1E3F8();
    }

    sub_18B988BAC(v21, &unk_1EA9DA1B0, &qword_18BC3EF28);
    *(v30 + 112) = v39;
    *(v30 + 120) = v40;
    *(v30 + 128) = 0;
    *(v30 + 136) = 0;
    *(v30 + 144) = 1;
    v41 = v98;
    sub_18BB7B1DC(v37 + v31, v98);
    v42 = 0;
    if (!v32(v41, 1, v38))
    {
      v42 = *(v41 + 64);
      v43 = v42;
    }

    sub_18B988BAC(v41, &unk_1EA9DA1B0, &qword_18BC3EF28);
    *(v30 + 152) = v42;
    *(v30 + 160) = 0;
    *(v30 + 168) = 0;
    *(v30 + 176) = 0;
    *(v30 + 184) = 3;
    LOBYTE(v99) = 3;
    sub_18BC1FA38();

    v44 = v92;
    sub_18BB7B1DC(v37 + v31, v92);
    if (v32(v44, 1, v38))
    {
      sub_18B988BAC(v44, &unk_1EA9DA1B0, &qword_18BC3EF28);
      v46 = v89;
      v45 = v90;
    }

    else
    {
      v47 = *(v44 + 104);
      sub_18B988BAC(v44, &unk_1EA9DA1B0, &qword_18BC3EF28);
      v46 = v89;
      v45 = v90;
      if (v47 != 2)
      {
        LOBYTE(v99) = 3;
        sub_18BC1FA38();
      }
    }

    v48 = v97;
    sub_18BB7B1DC(v37 + v31, v97);
    if (v32(v48, 1, v38) == 1)
    {
      sub_18B988BAC(v48, &unk_1EA9DA1B0, &qword_18BC3EF28);
    }

    else
    {
      v49 = v86;
      sub_18BB7C47C(v48, v86, _s5LayerVMa);
      v50 = *(v49 + 32);
      if (*(v50 + 16))
      {
        sub_18BC1FA88();
        v51 = *(v50 + 16);
        if (v51)
        {
          v99 = MEMORY[0x1E69E7CC0];
          sub_18B9B663C(0, v51, 0);
          v52 = v99;
          v53 = (v50 + 56);
          do
          {
            v54 = *(v53 - 3);
            v55 = *(v53 - 2);
            v56 = *(v53 - 1);
            v57 = *v53;
            v99 = v52;
            v59 = *(v52 + 16);
            v58 = *(v52 + 24);
            sub_18BC1E3F8();
            sub_18BC1E3F8();
            sub_18BC1E3F8();
            if (v59 >= v58 >> 1)
            {
              sub_18B9B663C((v58 > 1), v59 + 1, 1);
              v52 = v99;
            }

            *(v52 + 16) = v59 + 1;
            v60 = v52 + 40 * v59;
            *(v60 + 32) = v54;
            *(v60 + 40) = v55;
            *(v60 + 48) = v56;
            *(v60 + 56) = v57;
            *(v60 + 64) = 2;
            v53 += 4;
            --v51;
          }

          while (v51);
          v49 = v86;
          v46 = v89;
          v45 = v90;
        }

        LOBYTE(v99) = 3;
        sub_18BC1FA38();
      }

      v61 = *(v49 + 80);
      if (*(v61 + 16))
      {
        sub_18BC1FA88();
        v62 = *(v61 + 16);
        if (v62)
        {
          v100 = MEMORY[0x1E69E7CC0];
          sub_18B9B663C(0, v62, 0);
          v63 = v100;
          v64 = v61 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
          v65 = *(v91 + 72);
          v91 += 56;
          v92 = v65;
          v66 = v95;
          do
          {
            v97 = v62;
            v98 = v63;
            v67 = v94;
            sub_18B85B608(v64, v94, _s5LayerVMa);
            sub_18B85B608(v67, v66, _s5LayerVMa);
            _s4ItemCMa(0);
            v68 = swift_allocObject();
            v69 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
            v70 = *v91;
            v71 = v96;
            (*v91)(v68 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer, 1, 1, v96);
            *(v68 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_properties) = 0;
            v72 = v93;
            sub_18B85B608(v66, v93, _s5LayerVMa);
            v70(v72, 0, 1, v71);
            swift_beginAccess();
            sub_18B988A40(v72, v68 + v69);
            swift_endAccess();
            v73 = *(v71 + 60);
            v74 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_id;
            v75 = sub_18BC1EC08();
            (*(*(v75 - 8) + 16))(v68 + v74, v66 + v73, v75);
            v76 = sub_18B9845E4(v66);
            v78 = v77;
            sub_18B85B760(v66, _s5LayerVMa);
            v79 = v67;
            v63 = v98;
            sub_18B85B760(v79, _s5LayerVMa);
            v80 = (v68 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle);
            *v80 = v76;
            v80[1] = v78;
            v100 = v63;
            v82 = *(v63 + 16);
            v81 = *(v63 + 24);
            if (v82 >= v81 >> 1)
            {
              sub_18B9B663C((v81 > 1), v82 + 1, 1);
              v63 = v100;
            }

            *(v63 + 16) = v82 + 1;
            v83 = v63 + 40 * v82;
            *(v83 + 32) = v68;
            *(v83 + 40) = 0;
            *(v83 + 48) = 0;
            *(v83 + 56) = 0;
            *(v83 + 64) = 4;
            v64 += v92;
            v62 = (v97 - 1);
          }

          while (v97 != 1);
          v49 = v86;
          v46 = v89;
          v45 = v90;
        }

        LOBYTE(v99) = 3;
        sub_18BC1FA38();
      }

      sub_18B85B760(v49, _s5LayerVMa);
    }

    v84 = v87;
    sub_18BC1FDC8();

    (*(v88 + 8))(v46, v45);
  }
}

double (*sub_18BB71DB4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18BB71E18;
}

double sub_18BB71E18(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_18BB7143C();
    v6 = *(v5 + OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_editHandler);
    sub_18BC1E1A8();
    v6(v5);
  }

  return result;
}

uint64_t sub_18BB71EA0()
{
  v1 = v0;
  v2 = sub_18BC1FEB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1FEA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1FF18();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC248], v6, v12);
  sub_18BC1FEC8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC280], v2);
  sub_18BC1FED8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18BC1FE98();
  sub_18B7B0AC0(0, &qword_1EA9D3560, 0x1E69DC808);
  v15 = sub_18BC214A8();
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v17 = *&v1[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_collectionView];
  *&v1[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_collectionView] = v16;
  v18 = v16;

  [v1 setView_];
  return (*(v11 + 8))(v14, v10);
}

char *sub_18BB72194(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *&result[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource];
    if (!v5 || (v6 = v5, sub_18BC1FD18(), v6, v14 == 255) || (sub_18BB7A400(v10, v11, v12, v13, v14), ((v14 - 2) & 0xFD) != 0))
    {

      return 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_18BC3E3E0;
      *(v7 + 32) = sub_18BB781B8(a1);
      sub_18B7B0AC0(0, &unk_1EA9D3AD0, 0x1E69DC8E8);
      v8 = sub_18BC20D88();

      v9 = [objc_opt_self() configurationWithActions_];

      return v9;
    }
  }

  return result;
}

id sub_18BB72334()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570, &qword_18BC3E440);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v99 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v98 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1F0, &unk_18BC500D0);
  v122 = *(v7 - 8);
  v123 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3578, &qword_18BC3E448);
  v128 = *(v11 - 8);
  v129 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v98 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA200, &qword_18BC500E0);
  v126 = *(v15 - 8);
  v127 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v98 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA208, &qword_18BC500E8);
  v120 = *(v20 - 8);
  v121 = v20;
  v21 = v120[8];
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v98 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v114 = &v98 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v113 = &v98 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v124 = &v98 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v98 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v98 - v34;
  *&v37 = MEMORY[0x1EEE9AC00](v36).n128_u64[0];
  v39 = &v98 - v38;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v41 = result;
  v42 = [objc_opt_self() systemBackgroundColor];
  [v41 setBackgroundColor_];

  v106 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_collectionView;
  result = *&v1[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_collectionView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v104 = v3;
  v105 = v2;
  [result setDelegate_];
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v43 = sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
  sub_18BC21298();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18BC21298();
  sub_18BC21298();
  _s4ItemCMa(0);
  v112 = v35;
  v111 = v39;
  sub_18BC21298();
  v44 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v45 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v46 = swift_allocObject();
  v46[2] = sub_18BB75488;
  v46[3] = 0;
  v46[4] = sub_18BB7C01C;
  v46[5] = v44;
  v46[6] = sub_18BB7C024;
  v46[7] = v45;
  sub_18BC21298();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18B7B0AC0(0, &qword_1EA9D64E0, 0x1E69DC7F8);
  v47 = v125;
  sub_18BC21298();
  v48 = v124;
  v102 = v43;
  result = sub_18BC21298();
  v103 = v1;
  v106 = *&v106[v1];
  if (!v106)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v50 = v120;
  v49 = v121;
  v51 = v120[2];
  v51(v113, v111, v121);
  v51(v114, v112, v49);
  v52 = v126;
  v53 = *(v126 + 16);
  v101 = v19;
  v53(v117, v19, v127);
  v100 = v32;
  v51(v115, v32, v49);
  v54 = v122;
  (*(v122 + 16))(v119, v47, v123);
  v51(v116, v48, v49);
  v55 = v128;
  (*(v128 + 16))(v118, v130, v129);
  v56 = *(v50 + 80);
  v57 = (v56 + 16) & ~v56;
  v58 = (v21 + v56 + v57) & ~v56;
  v59 = (v21 + *(v52 + 80) + v58) & ~*(v52 + 80);
  v60 = (v107 + v56 + v59) & ~v56;
  v61 = (v21 + *(v54 + 80) + v60) & ~*(v54 + 80);
  v107 = (v109 + v56 + v61) & ~v56;
  v109 = (v21 + *(v55 + 80) + v107) & ~*(v55 + 80);
  v62 = swift_allocObject();
  v63 = v50[4];
  v63(v62 + v57, v113, v49);
  v63(v62 + v58, v114, v49);
  (*(v126 + 32))(v62 + v59, v117, v127);
  v63(v62 + v60, v115, v49);
  v64 = *(v54 + 32);
  v65 = v123;
  v64(v62 + v61, v119, v123);
  v63(v62 + v107, v116, v49);
  (*(v128 + 32))(v62 + v109, v118, v129);
  v66 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA210, &qword_18BC500F0));
  v67 = v106;
  v68 = sub_18BC1FCE8();
  v69 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource;
  v70 = v103;
  v71 = *&v103[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource];
  *&v103[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource] = v68;

  sub_18BC20BD8();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v72 = v110;
  sub_18BC212A8();
  v73 = *&v70[v69];
  v74 = v105;
  v75 = v104;
  if (v73)
  {
    v76 = v70;
    v77 = v99;
    (*(v104 + 16))(v99, v72, v105);
    v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v79 = swift_allocObject();
    v80 = v77;
    v70 = v76;
    (*(v75 + 32))(v79 + v78, v80, v74);
    v81 = v73;
    sub_18BC1FD08();

    v82 = *&v76[v69];
    if (v82)
    {
      *(swift_allocObject() + 16) = v76;
      v83 = v82;
      v84 = v76;
      v85 = sub_18BC1FD78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA218, &qword_18BC500F8);
      sub_18BC1FD48();
      v85(v131, 0);
      v70 = v76;

      v86 = *&v76[v69];
      if (v86)
      {
        v87 = v86;
        v88 = sub_18BC1FD78();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA218, &qword_18BC500F8);
        sub_18BC1FD58();
        v88(v131, 0);
      }
    }
  }

  sub_18BB7143C();
  v89 = [v70 navigationItem];
  sub_18B7B0AC0(0, &unk_1EA9D35A0, 0x1E69DC708);
  v90 = objc_opt_self();
  v91 = sub_18BC20B98();
  v92 = [v90 __systemImageNamedSwift_];

  sub_18BB77BDC();
  v93 = sub_18BC21278();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_18BC3E3E0;
  *(v94 + 32) = [v93 creatingFixedGroup];
  sub_18B7B0AC0(0, &unk_1EA9D35C0, 0x1E69DC720);
  v95 = sub_18BC20D88();

  [v89 setTrailingItemGroups_];

  (*(v75 + 8))(v72, v74);
  v96 = v121;
  v97 = v120[1];
  v97(v124, v121);
  (*(v122 + 8))(v125, v65);
  v97(v100, v96);
  (*(v128 + 8))(v130, v129);
  (*(v126 + 8))(v101, v127);
  v97(v112, v96);
  return (v97)(v111, v96);
}

uint64_t sub_18BB73224(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v119 = a1;
  v97 = sub_18BC1F568();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_18BC1F4E8();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_18BC1F598();
  v118 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v117 = &v88 - v10;
  v112 = sub_18BC1F488();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_18BC1F418();
  v13 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0, &qword_18BC3EF28);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v93 = (&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - v22;
  v24 = sub_18BC1FA08();
  v114 = *(v24 - 8);
  v115 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F9F8();
  v94 = "Compositing Filter";
  v113 = v26;
  sub_18BC1F9B8();
  v27 = a5;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v29 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
  swift_beginAccess();
  sub_18BB7B1DC(Strong + v29, v23);

  v30 = _s5LayerVMa(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v33 = v31 + 48;
  v109 = v30;
  v108 = v32;
  v34 = (v32)(v23, 1);
  v110 = v20;
  v107 = v33;
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v23[8];
  }

  sub_18B988BAC(v23, &unk_1EA9DA1B0, &qword_18BC3EF28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  v36 = (*(v118 + 80) + 32) & ~*(v118 + 80);
  v92 = *(v118 + 72);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_18BC3E410;
  v37 = sub_18B7B0AC0(0, &unk_1EA9DADD0, 0x1E69DCC60);
  MEMORY[0x1EEE9AC00](v37);
  v104 = v35;
  LOBYTE(v85) = v35;
  v106 = v27;
  v86 = v27;
  sub_18BB70470(sub_18BB7C3D0, v84, &unk_1EFF1ACF8);
  v87 = v38;
  v39 = sub_18BC214D8();
  v40 = *(v13 + 104);
  v89 = *MEMORY[0x1E69DBF28];
  v41 = v116;
  v88 = v40;
  v40(v15);
  v42 = sub_18BC1F448();
  v90 = *(v42 - 8);
  v43 = v90 + 56;
  v91 = *(v90 + 56);
  v91(v117, 1, 1, v42);
  sub_18BC1F478();
  v95 = v36;
  sub_18BC1F588();

  (*(v111 + 8))(v12, v112);
  (*(v13 + 8))(v15, v41);
  sub_18BC21458();
  v44 = swift_unknownObjectUnownedLoadStrong();
  v45 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
  swift_beginAccess();
  v46 = v44 + v45;
  v47 = v110;
  sub_18BB7B1DC(v46, v110);

  v48 = v109;
  v49 = v108;
  if (v108(v47, 1, v109))
  {
    sub_18B988BAC(v47, &unk_1EA9DA1B0, &qword_18BC3EF28);
LABEL_7:
    v51 = v113;
    sub_18BC1F7E8();
    goto LABEL_8;
  }

  v112 = v43;
  v111 = v42;
  v50 = *(v47 + 8);
  sub_18B988BAC(v47, &unk_1EA9DA1B0, &qword_18BC3EF28);
  if (v50)
  {
    goto LABEL_7;
  }

  v56 = swift_unknownObjectUnownedLoadStrong();
  v57 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
  swift_beginAccess();
  v58 = v56 + v57;
  v59 = v93;
  sub_18BB7B1DC(v58, v93);

  v60 = 0;
  if (!v49(v59, 1, v48))
  {
    v60 = *v59;
  }

  sub_18B988BAC(v59, &unk_1EA9DA1B0, &qword_18BC3EF28);
  v61 = swift_allocObject();
  v62 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectUnownedInit();

  v63 = objc_allocWithZone(MEMORY[0x1E69DC8A8]);
  sub_18BC1E1A8();
  v64 = [v63 init];
  [v64 setSelectedColor_];
  v65 = sub_18BC20B98();
  [v64 setTitle_];

  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  v66 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v67 = swift_allocObject();
  v67[2] = sub_18BB7C3F4;
  v67[3] = v61;
  v67[4] = v66;
  sub_18BC1E1A8();
  v84[0] = 0;
  v84[1] = 0;
  v86 = sub_18BA61614;
  v87 = v67;
  v85 = 0;
  v68 = sub_18BC215E8();
  [v64 addAction:v68 forControlEvents:4096];

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700, &unk_18BC459B0);
  v70 = v98;
  v71 = &v98[*(v69 + 48)];
  v88(v98, v89, v116);
  *v71 = sub_18B8390A8;
  v71[1] = 0;
  (*(v96 + 104))(v70, *MEMORY[0x1E69DBF60], v97);
  v72 = v117;
  v73 = v111;
  (*(v90 + 104))(v117, *MEMORY[0x1E69DBF30], v111);
  v91(v72, 0, 1, v73);
  v74 = v64;
  v75 = v99;
  sub_18BC1F4D8();
  v76 = v102;
  sub_18BC1F3D8();

  (*(v100 + 8))(v75, v101);

  v77 = sub_18BC21448();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = v118;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v77 = sub_18B9B58D8(0, *(v77 + 2) + 1, 1, v77);
  }

  v51 = v113;
  v80 = v92;
  v81 = v95;
  v83 = *(v77 + 2);
  v82 = *(v77 + 3);
  if (v83 >= v82 >> 1)
  {
    v77 = sub_18B9B58D8((v82 > 1), v83 + 1, 1, v77);
  }

  *(v77 + 2) = v83 + 1;
  (*(v79 + 32))(&v77[v81 + v83 * v80], v76, v103);
  sub_18BC21458();
LABEL_8:
  v52 = v115;
  v120[3] = v115;
  v120[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v120);
  v54 = v114;
  (*(v114 + 16))(boxed_opaque_existential_0Tm, v51, v52);
  MEMORY[0x18CFFC900](v120);
  return (*(v54 + 8))(v51, v52);
}

uint64_t sub_18BB73F1C@<X0>(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v19 = a4;
  v22 = a5;
  v7 = sub_18BC1EDD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = *a1;
  if (*a1)
  {
    v11 = 0x2065676170626557;
  }

  else
  {
    v11 = 0x6D6F74737543;
  }

  v12 = 0xE600000000000000;
  if (*a1)
  {
    v12 = 0xED0000656D656854;
  }

  v20 = v12;
  v21 = v11;
  v18[1] = (v10 ^ ~a2) & 1;
  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  v13 = swift_allocObject();
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectUnownedInit();

  (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v7);
  v15 = (*(v8 + 80) + 25) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v10;
  (*(v8 + 32))(v16 + v15, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  result = sub_18BC215E8();
  *v22 = result;
  return result;
}

void sub_18BB7414C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_18BB71DB4(v12);
  v9 = v8;
  v10 = _s5LayerVMa(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    *(v9 + 8) = a3 & 1;
  }

  v7(v12, 0);

  v11 = swift_unknownObjectUnownedLoadStrong();
  sub_18BB7422C(a4);
}

void sub_18BB7422C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA1C8, &unk_18BC4FFE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource);
  if (v6)
  {
    v7 = v6;
    sub_18BC1FD18();
    v8 = v15;
    if (v15 == 255)
    {
    }

    else
    {
      v14[0] = v3;
      v10 = v14[3];
      v9 = v14[4];
      v12 = v14[1];
      v11 = v14[2];
      sub_18BC1FDF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1E0, &unk_18BC428D8);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_18BC3E410;
      *(v13 + 32) = v12;
      *(v13 + 40) = v11;
      *(v13 + 48) = v10;
      *(v13 + 56) = v9;
      *(v13 + 64) = v8;
      sub_18BB7A4C4(v12, v11, v10, v9, v8);
      sub_18BC1FAF8();

      sub_18BC1FDC8();

      sub_18BB7A400(v12, v11, v10, v9, v8);
      (*(v14[0] + 8))(v5, v2);
    }
  }
}

void sub_18BB74404(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = sub_18BB71DB4(v10);
  v6 = v5;
  v7 = _s5LayerVMa(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = *v6;
    *v6 = a1;
    v9 = a1;
  }

  v4(v10, 0);
}

uint64_t sub_18BB744C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v29 - v5;
  v6 = sub_18BC1F488();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1F418();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0, &qword_18BC3EF28);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - v14;
  v30 = sub_18BC1FA08();
  v16 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F9F8();
  sub_18BC1F9B8();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v20 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
  swift_beginAccess();
  sub_18BB7B1DC(Strong + v20, v15);

  v21 = _s5LayerVMa(0);
  if ((*(*(v21 - 8) + 48))(v15, 1, v21))
  {
    sub_18B988BAC(v15, &unk_1EA9DA1B0, &qword_18BC3EF28);
  }

  else
  {
    v22 = *(v15 + 3);
    sub_18BC1E3F8();
    sub_18B988BAC(v15, &unk_1EA9DA1B0, &qword_18BC3EF28);
    if (v22)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  sub_18BC1F7E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = sub_18BB77158();

  (*(v10 + 104))(v12, *MEMORY[0x1E69DBF28], v9);
  v25 = sub_18BC1F448();
  (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  sub_18BC1F478();
  sub_18BC1F588();

  (*(v32 + 8))(v8, v33);
  (*(v10 + 8))(v12, v9);
  sub_18BC21458();
  v26 = v30;
  v35[3] = v30;
  v35[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v35);
  (*(v16 + 16))(boxed_opaque_existential_0Tm, v18, v26);
  MEMORY[0x18CFFC900](v35);
  return (*(v16 + 8))(v18, v26);
}

uint64_t sub_18BB749F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v43 = a1;
  v3 = sub_18BC1F538();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v35 = sub_18BC1F438();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1F418();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18BC1FA08();
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E3F8();
  sub_18BC1F9A8();
  sub_18BC1F9B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  v17 = *(sub_18BC1F598() - 8);
  v33 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v34 = v19;
  *(v19 + 16) = xmmword_18BC3E400;
  v30 = v19 + v18;
  v32 = *MEMORY[0x1E69DBF28];
  v31 = *(v11 + 104);
  v20 = v10;
  v31(v13);
  v21 = sub_18BC1F448();
  v22 = *(*(v21 - 8) + 56);
  v22(v7, 1, 1, v21);
  sub_18BC1F428();
  sub_18BC1F558();
  (*(v37 + 8))(v9, v35);
  v23 = *(v11 + 8);
  v23(v13, v20);
  (v31)(v13, v32, v20);
  v22(v7, 1, 1, v21);
  v24 = v40;
  sub_18BC1F528();
  sub_18BC1F4C8();
  (*(v41 + 8))(v24, v42);
  v23(v13, v20);
  sub_18BC21458();
  v25 = v38;
  v44[3] = v38;
  v44[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v44);
  v27 = v39;
  v28 = v36;
  (*(v39 + 16))(boxed_opaque_existential_0Tm, v36, v25);
  MEMORY[0x18CFFC900](v44);
  return (*(v27 + 8))(v28, v25);
}

uint64_t sub_18BB74F00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v40 = a1;
  v35 = sub_18BC1F538();
  v39 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_18BC1F438();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1F418();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1FA08();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F7D8();
  v41[0] = 0x2320726579614CLL;
  v41[1] = 0xE700000000000000;
  result = sub_18BC1EDB8();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v41[5] = result + 1;
    v18 = sub_18BC21F48();
    MEMORY[0x18CFFC150](v18);

    sub_18BC1F9B8();
    sub_18BC1E3F8();
    v32 = v16;
    sub_18BC1F7E8();
    v41[3] = v13;
    v41[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v41);
    v33 = v14;
    (*(v14 + 16))(boxed_opaque_existential_0Tm, v16, v13);
    MEMORY[0x18CFFC900](v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
    v29 = *(*(sub_18BC1F598() - 8) + 72);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_18BC3E400;
    v31 = v13;
    v27 = *MEMORY[0x1E69DBF28];
    v28 = v4;
    v26 = *(v11 + 104);
    v20 = v38;
    v26(v38);
    v21 = sub_18BC1F448();
    v22 = *(*(v21 - 8) + 56);
    v22(v7, 1, 1, v21);
    v23 = v34;
    sub_18BC1F428();
    sub_18BC1F558();
    (*(v36 + 8))(v23, v37);
    v24 = *(v11 + 8);
    v24(v20, v10);
    (v26)(v20, v27, v10);
    v22(v7, 1, 1, v21);
    v25 = v28;
    sub_18BC1F528();
    sub_18BC1F4C8();
    (*(v39 + 8))(v25, v35);
    v24(v20, v10);
    sub_18BC21458();
    return (*(v33 + 8))(v32, v31);
  }

  return result;
}

void *sub_18BB75498(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0, &qword_18BC3EF28);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
  swift_beginAccess();
  sub_18BB7B1DC(Strong + v6, v4);

  v7 = _s5LayerVMa(0);
  v8 = 0;
  if (!(*(*(v7 - 8) + 48))(v4, 1, v7))
  {
    v8 = *(v4 + 8);
    v9 = v8;
  }

  sub_18B988BAC(v4, &unk_1EA9DA1B0, &qword_18BC3EF28);
  return v8;
}

void sub_18BB755B4(uint64_t a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_18BB71DB4(v11);
  v7 = v6;
  v8 = _s5LayerVMa(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = *(v7 + 64);
    *(v7 + 64) = a2;
    v10 = a2;
  }

  v5(v11, 0);
}

uint64_t sub_18BB75674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0, &qword_18BC3EF28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-1] - v5;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
  swift_beginAccess();
  sub_18BB7B1DC(Strong + v8, v6);

  v9 = _s5LayerVMa(0);
  v10 = 0;
  if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
  {
    v10 = *(v6 + 9);
  }

  sub_18B988BAC(v6, &unk_1EA9DA1B0, &qword_18BC3EF28);
  v11 = swift_allocObject();
  v12 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectUnownedInit();

  v17 = xmmword_18BC3DD80;
  v19 = xmmword_18BC3DD80;
  *&v20 = 0x3FA999999999999ALL;
  *(&v20 + 1) = 0x7974696361704FLL;
  *&v21 = 0xE700000000000000;
  *(&v21 + 1) = v10;
  *&v22 = sub_18BB7C37C;
  *(&v22 + 1) = v11;
  v18[3] = &type metadata for SFSliderCellContentConfiguration;
  v18[4] = sub_18BA2D5E0();
  v13 = swift_allocObject();
  v18[0] = v13;
  v14 = v20;
  v13[1] = v19;
  v13[2] = v14;
  v15 = v22;
  v13[3] = v21;
  v13[4] = v15;
  sub_18BA2D634(&v19, &v23);
  MEMORY[0x18CFFC900](v18);
  v23 = v17;
  v24 = 0x3FA999999999999ALL;
  v25 = 0x7974696361704FLL;
  v26 = 0xE700000000000000;
  v27 = v10;
  v28 = sub_18BB7C37C;
  v29 = v11;
  return sub_18BA2D690(&v23);
}

void sub_18BB758A8(uint64_t a1, double a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = sub_18BB71DB4(v8);
  v6 = v5;
  v7 = _s5LayerVMa(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    *(v6 + 72) = a2;
  }

  v4(v8, 0);
}

uint64_t sub_18BB7595C(uint64_t a1)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_18BC1F538();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18BC1F418();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1FA08();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F9A8();
  sub_18BC1F9B8();
  v21[3] = v11;
  v21[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v21);
  (*(v12 + 16))(boxed_opaque_existential_0Tm, v14, v11);
  MEMORY[0x18CFFC900](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  (*(v8 + 104))(v10, *MEMORY[0x1E69DBF28], v7);
  v16 = sub_18BC1F448();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  sub_18BC1F528();
  sub_18BC1F4C8();
  (*(v19 + 8))(v6, v20);
  (*(v8 + 8))(v10, v7);
  sub_18BC21458();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_18BB75D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *a3;
  v10 = *(a3 + 8);
  v12 = *(a3 + 32);
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v22 = *(a3 + 16);
      sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
      v15 = v11;
      v13 = sub_18BC212B8();
      sub_18BB7A414(v11, v10, v22, *(&v22 + 1), 3u);
    }

    else if (v12 == 4)
    {
      v20 = *(a3 + 16);
      sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
      _s4ItemCMa(0);
      sub_18BC1E1A8();
      v13 = sub_18BC212B8();
      sub_18BB7A414(v11, v10, v20, *(&v20 + 1), 4u);
    }

    else
    {
      if (*(a3 + 16) | v10 | v11 | *(a3 + 24))
      {
        sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
      }

      else
      {
        sub_18B7B0AC0(0, &qword_1EA9D64E0, 0x1E69DC7F8);
      }

      return sub_18BC212B8();
    }
  }

  else if (*(a3 + 32))
  {
    if (v12 == 1)
    {
      v19 = *(a3 + 16);
      sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
      sub_18BC1E3F8();
      v13 = sub_18BC212B8();
      sub_18BB7A414(v11, v10, v19, *(&v19 + 1), 1u);
    }

    else
    {
      v16 = *(a3 + 24);
      v17 = *(a3 + 16);
      sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v13 = sub_18BC212B8();
      sub_18BB7A414(v11, v10, v17, v16, 2u);
    }
  }

  else
  {
    v21 = *(a3 + 16);
    sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
    v14 = v11;
    v13 = sub_18BC212B8();
    sub_18BB7A414(v11, v10, v21, *(&v21 + 1), 0);
  }

  return v13;
}

uint64_t sub_18BB760A8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_18BC1FA08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = *&Strong[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource];
  v12 = v11;

  if (!v11 || (sub_18BC1EDC8(), sub_18BC1FD38(), v12, LOBYTE(v16[0]) == 3))
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  else
  {
    sub_18BC1F9E8();
    sub_18BC1F9B8();
    v16[3] = v6;
    v16[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v16);
    (*(v7 + 16))(boxed_opaque_existential_0Tm, v9, v6);
    MEMORY[0x18CFFC900](v16);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_18BB762B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_18BC208F8();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC20928();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA220, &unk_18BC50100);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  sub_18B7B0AC0(0, &unk_1EA9D3A90, 0x1E69E9610);
  v21 = sub_18BC21348();
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v15, v13, v9);
  *(v17 + v16) = v14;
  aBlock[4] = sub_18BB7C29C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_96_0;
  v18 = _Block_copy(aBlock);

  sub_18BC20908();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_18BB7C334(&qword_1EA9D6D20, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0, &qword_18BC4BCC0);
  sub_18BA00814();
  sub_18BC21908();
  v19 = v21;
  MEMORY[0x18CFFC850](0, v8, v5, v18);
  _Block_release(v18);

  (*(v24 + 8))(v5, v3);
  return (*(v22 + 8))(v8, v23);
}

uint64_t sub_18BB76670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0, &qword_18BC3EF28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v58 - v5;
  v71 = _s5LayerVMa(0);
  v7 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA1C8, &unk_18BC4FFE0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA220, &unk_18BC50100);
  v64 = a1;
  sub_18BC1FB98();
  v17 = sub_18BC1FB18();
  v18 = sub_18B9BA19C(1u, v17);

  v68 = v7;
  v66 = v15;
  if (!v18)
  {
    goto LABEL_16;
  }

  v65 = v10;
  v70 = a2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v20 = sub_18BB71DB4(v73);
  v22 = v21;
  if ((*(v7 + 48))(v21, 1, v71))
  {
    v20(v73, 0);
LABEL_15:

    v10 = v65;
    v15 = v66;
    v7 = v68;
LABEL_16:
    v38 = sub_18BC1FB18();
    v39 = sub_18B9BA19C(2u, v38);

    if (!v39)
    {
      return (*(v10 + 8))(v15, v9);
    }

    v65 = v16;
    v63 = swift_unknownObjectUnownedLoadStrong();
    v40 = sub_18BB71DB4(v73);
    v42 = v41;
    v43 = *(v7 + 48);
    v44 = v71;
    if (v43(v41, 1, v71))
    {
      v40(v73, 0);
LABEL_34:

      v15 = v66;
      return (*(v10 + 8))(v15, v9);
    }

    v67 = v43;
    v70 = v42;
    v61 = v40;
    sub_18BC1FB98();
    v72 = 2;
    v45 = sub_18BC1FAC8();
    v65 = v10;
    v46 = *(v10 + 8);
    v62 = v9;
    result = v46(v12, v9);
    v47 = *(v45 + 16);
    if (!v47)
    {
      v51 = MEMORY[0x1E69E7CC0];
      v52 = v70;
LABEL_33:

      *(v52 + 80) = v51;

      v61(v73, 0);
      v9 = v62;
      v10 = v65;
      goto LABEL_34;
    }

    v48 = 0;
    v49 = (v7 + 56);
    v50 = (v45 + 64);
    v51 = MEMORY[0x1E69E7CC0];
    v52 = v70;
    while (1)
    {
      if (v48 >= *(v45 + 16))
      {
        goto LABEL_37;
      }

      if (*v50 == 4)
      {
        v53 = *(v50 - 4);
        v54 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
        swift_beginAccess();
        v55 = v53 + v54;
        v52 = v70;
        v44 = v71;
        sub_18BB7B1DC(v55, v6);
        if (v67(v6, 1, v44) != 1)
        {
          sub_18BB7C47C(v6, v69, _s5LayerVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_18B9B543C(0, v51[2] + 1, 1, v51);
          }

          v57 = v51[2];
          v56 = v51[3];
          if (v57 >= v56 >> 1)
          {
            v51 = sub_18B9B543C((v56 > 1), v57 + 1, 1, v51);
          }

          v51[2] = v57 + 1;
          result = sub_18BB7C47C(v69, v51 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v57, _s5LayerVMa);
          v52 = v70;
          v44 = v71;
          goto LABEL_23;
        }
      }

      else
      {
        (*v49)(v6, 1, 1, v44);
      }

      result = sub_18B988BAC(v6, &unk_1EA9DA1B0, &qword_18BC3EF28);
LABEL_23:
      ++v48;
      v50 += 40;
      if (v47 == v48)
      {
        goto LABEL_33;
      }
    }
  }

  v63 = v20;
  v67 = Strong;
  sub_18BC1FB98();
  v72 = 1;
  v23 = sub_18BC1FAC8();
  result = (*(v65 + 8))(v12, v9);
  v25 = 0;
  v26 = *(v23 + 16);
  v27 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v28 = v23 + 40 * v25;
  while (1)
  {
    if (v26 == v25)
    {

      *(v22 + 32) = v27;

      (v63)(v73, 0);
      Strong = v67;
      goto LABEL_15;
    }

    if (v25 >= *(v23 + 16))
    {
      break;
    }

    ++v25;
    v29 = (v28 + 40);
    v30 = *(v28 + 64);
    v28 += 40;
    if (v30 == 2)
    {
      v58 = v22;
      v31 = *(v29 - 1);
      v60 = *v29;
      v61 = v31;
      v32 = v29[1];
      v33 = v29[2];
      sub_18BC1E3F8();
      v59 = v32;
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      result = swift_isUniquelyReferenced_nonNull_native();
      v62 = v9;
      if ((result & 1) == 0)
      {
        result = sub_18B9B63D0(0, *(v27 + 16) + 1, 1, v27);
        v27 = result;
      }

      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_18B9B63D0((v34 > 1), v35 + 1, 1, v27);
        v27 = result;
      }

      *(v27 + 16) = v35 + 1;
      v36 = (v27 + 32 * v35);
      v37 = v60;
      v36[4] = v61;
      v36[5] = v37;
      v36[6] = v59;
      v36[7] = v33;
      v9 = v62;
      v22 = v58;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_18BB76DC8(int a1)
{
  v3 = sub_18BC1EDD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFLayerEditorViewController(0);
  v20.receiver = v1;
  v20.super_class = v7;
  v17 = a1;
  objc_msgSendSuper2(&v20, sel_viewWillAppear_, a1 & 1);
  v18 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_collectionView;
  v19 = v1;
  v8 = *&v1[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_collectionView];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = [v8 indexPathsForSelectedItems];
  if (v9)
  {
    v10 = v9;
    v11 = sub_18BC20D98();

    v16 = *(v11 + 16);
    if (v16)
    {
      v12 = 0;
      while (v12 < *(v11 + 16))
      {
        (*(v4 + 16))(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v3);
        v13 = *&v19[v18];
        if (!v13)
        {
          goto LABEL_11;
        }

        ++v12;
        v14 = v13;
        v15 = sub_18BC1ED68();
        [v14 deselectItemAtIndexPath:v15 animated:v17 & 1];

        (*(v4 + 8))(v6, v3);
        if (v16 == v12)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_8:
  }
}

void sub_18BB77014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_18BB71DB4(v17);
    v14 = v13;
    v15 = _s5LayerVMa(0);
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA1C0, &qword_18BC404A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18BC3E410;
      *(inited + 32) = a3;
      *(inited + 40) = a4;
      *(inited + 48) = a5;
      *(inited + 56) = a6;
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BA0237C(inited);
    }

    v12(v17, 0);
  }
}

uint64_t sub_18BB77158()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC3E3E0;
  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(v0 + 32) = sub_18BC215E8();
  v49 = sub_18BC20BD8();
  v50[0] = v1;
  v50[1] = sub_18BC20BD8();
  v50[2] = v2;
  v50[3] = sub_18BC20BD8();
  v50[4] = v3;
  v50[5] = sub_18BC20BD8();
  v50[6] = v4;
  v50[7] = sub_18BC20BD8();
  v50[8] = v5;
  v50[9] = sub_18BC20BD8();
  v50[10] = v6;
  v50[11] = sub_18BC20BD8();
  v50[12] = v7;
  v50[13] = sub_18BC20BD8();
  v50[14] = v8;
  v50[15] = sub_18BC20BD8();
  v50[16] = v9;
  v50[17] = sub_18BC20BD8();
  v50[18] = v10;
  v50[19] = sub_18BC20BD8();
  v50[20] = v11;
  v50[21] = sub_18BC20BD8();
  v50[22] = v12;
  v50[23] = sub_18BC20BD8();
  v50[24] = v13;
  v50[25] = sub_18BC20BD8();
  v50[26] = v14;
  v50[27] = sub_18BC20BD8();
  v50[28] = v15;
  v50[29] = sub_18BC20BD8();
  v50[30] = v16;
  v50[31] = sub_18BC20BD8();
  v50[32] = v17;
  v50[33] = sub_18BC20BD8();
  v50[34] = v18;
  v50[35] = sub_18BC20BD8();
  v50[36] = v19;
  v50[37] = sub_18BC20BD8();
  v50[38] = v20;
  v50[39] = sub_18BC20BD8();
  v50[40] = v21;
  v50[41] = sub_18BC20BD8();
  v50[42] = v22;
  v50[43] = sub_18BC20BD8();
  v50[44] = v23;
  v50[45] = sub_18BC20BD8();
  v50[46] = v24;
  v50[47] = sub_18BC20BD8();
  v50[48] = v25;
  v50[49] = sub_18BC20BD8();
  v50[50] = v26;
  v50[51] = sub_18BC20BD8();
  v50[52] = v27;
  v50[53] = sub_18BC20BD8();
  v50[54] = v28;
  v50[55] = sub_18BC20BD8();
  v50[56] = v29;
  v50[57] = sub_18BC20BD8();
  v50[58] = v30;
  v50[59] = sub_18BC20BD8();
  v50[60] = v31;
  v50[61] = sub_18BC20BD8();
  v50[62] = v32;
  v50[63] = sub_18BC20BD8();
  v50[64] = v33;
  v50[65] = sub_18BC20BD8();
  v50[66] = v34;
  v50[67] = sub_18BC20BD8();
  v50[68] = v35;
  v50[69] = sub_18BC20BD8();
  v50[70] = v36;
  v50[71] = sub_18BC20BD8();
  v50[72] = v37;
  v50[73] = sub_18BC20BD8();
  v50[74] = v38;
  v50[75] = sub_18BC20BD8();
  v50[76] = v39;
  v50[77] = sub_18BC20BD8();
  v50[78] = v40;
  v47 = MEMORY[0x1E69E7CC0];
  sub_18BC21B98();
  for (i = 0; i != 80; i += 2)
  {
    v42 = *&v48[i * 8 + 32];
    v43 = v50[i];
    v44 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = v42;
    v45[4] = v43;
    swift_bridgeObjectRetain_n();
    sub_18BC215E8();
    sub_18BC21B68();
    sub_18BC21BA8();
    sub_18BC21BB8();
    sub_18BC21B78();
  }

  sub_18B7B0AC0(0, &unk_1EA9DADD0, 0x1E69DCC60);
  swift_arrayDestroy();
  sub_18BA01A28(v47);
  return sub_18BC214D8();
}

void sub_18BB77728(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_18BB71DB4(v7);
  v5 = v4;
  v6 = _s5LayerVMa(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
  }

  v3(v7, 0);
}

void sub_18BB777D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_18BB71DB4(v11);
  v9 = v8;
  v10 = _s5LayerVMa(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    sub_18BC1E3F8();
  }

  v7(v11, 0);
}

void sub_18BB778AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_18BB77908(v3);
  }
}

uint64_t sub_18BB77908(unsigned __int8 a1)
{
  v2 = a1;
  v3 = _s5LayerVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-v8];
  sub_18BC1DE28();
  *v9 = 0;
  v9[8] = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  *(v9 + 4) = v10;
  v9[56] = 1;
  *(v9 + 8) = 0;
  *(v9 + 9) = 0x3FF0000000000000;
  *(v9 + 10) = v10;
  *(v9 + 11) = 0;
  *(v9 + 12) = 0;
  *(v9 + 13) = 2;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  v9[160] = a1;
  if (v2 >= 2)
  {
    v11 = 6.0 - _SFOnePixel();
    v12 = _SFOnePixel();
    *(v9 + 11) = 0x4000000000000000;
    *(v9 + 12) = 0x4028000000000000;
    v9[104] = 0;
    __asm { FMOV            V1.2D, #0.5 }

    *(v9 + 7) = _Q1;
    *(v9 + 16) = 12;
    *(v9 + 17) = 0x4008000000000000;
    *(v9 + 18) = v11;
    *(v9 + 19) = v12 + 2.0;
  }

  v18 = sub_18BB71DB4(v26);
  v20 = v19;
  if ((*(v4 + 48))(v19, 1, v3))
  {
    v18(v26, 0);
  }

  else
  {
    sub_18B85B608(v9, v6, _s5LayerVMa);
    v21 = *(v20 + 80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 80) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_18B9B543C(0, v21[2] + 1, 1, v21);
      *(v20 + 80) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_18B9B543C((v23 > 1), v24 + 1, 1, v21);
      *(v20 + 80) = v21;
    }

    v21[2] = v24 + 1;
    sub_18BB7C47C(v6, v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, _s5LayerVMa);
    v18(v26, 0);
  }

  return sub_18B85B760(v9, _s5LayerVMa);
}

uint64_t sub_18BB77BDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = xmmword_18BC41E60;
  v4 = *(v0 + OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_filters);
  v5 = *(v4 + 16);
  if (v5)
  {
    v24 = v2;
    sub_18BC21B98();
    sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
    v6 = (v4 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = v1;
      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = v7;
      v13[4] = v8;
      v13[5] = v9;
      v13[6] = v10;
      swift_bridgeObjectRetain_n();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC215E8();
      sub_18BC21B68();
      sub_18BC21BA8();
      v1 = v12;
      sub_18BC21BB8();
      sub_18BC21B78();
      v6 += 4;
      --v5;
    }

    while (v5);
    v3 = v24;
  }

  sub_18B7B0AC0(0, &unk_1EA9DADD0, 0x1E69DCC60);
  *(v3 + 32) = sub_18BC214D8();
  sub_18BC21B98();
  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  v14 = byte_1EFF1ACF0;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  sub_18BC215E8();
  sub_18BC21B68();
  sub_18BC21BA8();
  sub_18BC21BB8();
  sub_18BC21B78();
  v17 = byte_1EFF1ACF1;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  sub_18BC215E8();
  sub_18BC21B68();
  sub_18BC21BA8();
  sub_18BC21BB8();
  sub_18BC21B78();
  v20 = byte_1EFF1ACF2;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  sub_18BC215E8();
  sub_18BC21B68();
  sub_18BC21BA8();
  sub_18BC21BB8();
  sub_18BC21B78();
  *(v3 + 40) = sub_18BC214D8();
  return sub_18BC214D8();
}

id sub_18BB781B8(uint64_t a1)
{
  v2 = sub_18BC1EDD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_18BC1E1A8();
  v8 = sub_18BC20B98();
  aBlock[4] = sub_18BB7A364;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18BB70560;
  aBlock[3] = &block_descriptor_52;
  v9 = _Block_copy(aBlock);
  v10 = [objc_opt_self() contextualActionWithStyle:1 title:v8 handler:v9];

  _Block_release(v9);

  return v10;
}

void sub_18BB783D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v8 = Strong;
  v9 = *(Strong + OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource);
  if (!v9)
  {
LABEL_6:

LABEL_7:
    a3(0);
    return;
  }

  v10 = v9;
  sub_18BC1FD18();

  v11 = v30;
  v12 = v31;
  v13 = v32;
  v14 = v33;
  v15 = v34;
  switch(v34)
  {
    case 2u:
      v20 = sub_18BB71DB4(&v30);
      v22 = v21;
      v23 = _s5LayerVMa(0);
      if ((*(*(v23 - 8) + 48))(v22, 1, v23))
      {
        v20(&v30, 0);
LABEL_18:
        v24 = 1;
LABEL_19:
        a3(v24);
        sub_18BB7A400(v11, v12, v13, v14, v15);

        return;
      }

      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BB79CCC((v22 + 32), v11, v12, v13, v14);
      v28 = *(*(v22 + 32) + 16);
      if (v28 >= v27)
      {
        sub_18B7E6F48(v27, v28, sub_18B9B63D0, sub_18BAE42A0);
        v20(&v30, 0);
        goto LABEL_18;
      }

      break;
    case 4u:
      sub_18BB7A4C4(v30, v31, v32, v33, 4u);
      v16 = sub_18BB71DB4(&v30);
      v18 = v17;
      v19 = _s5LayerVMa(0);
      if ((*(*(v19 - 8) + 48))(v18, 1, v19))
      {
        v16(&v30, 0);
LABEL_15:
        sub_18BB7A400(v11, v12, v13, v14, 4u);
        goto LABEL_18;
      }

      v29 = v16;
      sub_18BB7B1C8(v11, v12, v13, v14, 4u);
      v25 = sub_18BB7A8BC((v18 + 80), v11);
      sub_18BB7A400(v11, v12, v13, v14, 4u);
      v26 = *(*(v18 + 80) + 16);
      if (v26 >= v25)
      {
        sub_18B7E6F48(v25, v26, sub_18B9B543C, sub_18BAE38C8);
        v29(&v30, 0);
        goto LABEL_15;
      }

      __break(1u);
      break;
    case 0xFFu:
      goto LABEL_6;
    default:
      v24 = 0;
      goto LABEL_19;
  }

  __break(1u);
}

void sub_18BB78740(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter);
  v3 = *(a1 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8);
  if (v3)
  {
    v4 = *v2;
    v5 = v2[2];
    v6 = v2[3];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v9 = sub_18BB71DB4(v17);
      v11 = v10;
      v12 = _s5LayerVMa(0);
      if ((*(*(v12 - 8) + 48))(v11, 1, v12))
      {

        v9(v17, 0);
LABEL_9:

        return;
      }

      v13 = sub_18BC1EDB8();
      v14 = *(v11 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 32) = v14;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v14 = sub_18BAE38B4(v14);
        *(v11 + 32) = v14;
        if ((v13 & 0x8000000000000000) == 0)
        {
LABEL_7:
          if (v13 < *(v14 + 2))
          {
            v16 = &v14[32 * v13];
            *(v16 + 4) = v4;
            *(v16 + 5) = v3;
            *(v16 + 6) = v5;
            *(v16 + 7) = v6;

            v9(v17, 0);
            goto LABEL_9;
          }

LABEL_13:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_13;
    }
  }
}

void sub_18BB78900(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_18BB71DB4(v9);
    v7 = v6;
    v8 = _s5LayerVMa(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      *(v7 + 56) = a1 & 1;
    }

    v5(v9, 0);
  }
}

void sub_18BB789D4(const void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_18BB71DB4(v9);
    v7 = v6;
    v8 = _s5LayerVMa(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      memmove((v7 + 88), a1, 0x48uLL);
    }

    v5(v9, 0);
  }
}

size_t sub_18BB78AB0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0, &qword_18BC3EF28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-v4];
  v6 = _s5LayerVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
    swift_beginAccess();
    sub_18BB7B1DC(a1 + v12, v5);
    v13 = *(v7 + 48);
    if (v13(v5, 1, v6) == 1)
    {

      return sub_18B988BAC(v5, &unk_1EA9DA1B0, &qword_18BC3EF28);
    }

    sub_18BB7C47C(v5, v9, _s5LayerVMa);
    v14 = sub_18BB71DB4(v19);
    v16 = v15;
    if (v13(v15, 1, v6))
    {
      goto LABEL_9;
    }

    v17 = sub_18BC1EDB8();
    v18 = *(v16 + 10);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + 10) = v18;
    if (result)
    {
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = sub_18BAE3788(v18);
      v18 = result;
      *(v16 + 10) = result;
      if ((v17 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v17 < v18[2])
        {
          sub_18B9877F0(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17);
LABEL_9:
          v14(v19, 0);

          return sub_18B85B760(v9, _s5LayerVMa);
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_18BB78F54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource);
  if (!v6 || (v8 = v6, sub_18BC1EDC8(), sub_18BC1FD38(), v8, v16 - 1 > 1))
  {
    v11 = sub_18BC1EDD8();
    v12 = *(*(v11 - 8) + 16);
    goto LABEL_6;
  }

  v9 = sub_18BC1EDC8();
  v10 = sub_18BC1EDC8();
  v11 = sub_18BC1EDD8();
  v12 = *(*(v11 - 8) + 16);
  if (v9 != v10)
  {
LABEL_6:
    v13 = a3;
    v14 = a1;
    return v12(v13, v14, v11);
  }

  v13 = a3;
  v14 = a2;
  return v12(v13, v14, v11);
}

id sub_18BB79258(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_collectionView] = 0;
  *&v3[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource] = 0;
  v6 = &v3[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_editHandler];
  *v6 = CGRectMake;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
  v8 = _s5LayerVMa(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_filters;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA1C0, &qword_18BC404A8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18BC43BC0;
  if (qword_1EA9D2120 != -1)
  {
    swift_once();
  }

  v11 = *algn_1EA9F7878;
  v12 = qword_1EA9F7880;
  v13 = unk_1EA9F7888;
  *(v10 + 32) = qword_1EA9F7870;
  *(v10 + 40) = v11;
  *(v10 + 48) = v12;
  *(v10 + 56) = v13;
  v14 = qword_1EA9D2128;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *algn_1EA9F7898;
  v16 = qword_1EA9F78A0;
  v17 = unk_1EA9F78A8;
  *(v10 + 64) = qword_1EA9F7890;
  *(v10 + 72) = v15;
  *(v10 + 80) = v16;
  *(v10 + 88) = v17;
  v18 = qword_1EA9D2130;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = *algn_1EA9F78B8;
  v20 = qword_1EA9F78C0;
  v21 = unk_1EA9F78C8;
  *(v10 + 96) = qword_1EA9F78B0;
  *(v10 + 104) = v19;
  *(v10 + 112) = v20;
  *(v10 + 120) = v21;
  v22 = qword_1EA9D2138;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = *algn_1EA9F78D8;
  v24 = qword_1EA9F78E0;
  v25 = unk_1EA9F78E8;
  *(v10 + 128) = qword_1EA9F78D0;
  *(v10 + 136) = v23;
  *(v10 + 144) = v24;
  *(v10 + 152) = v25;
  v26 = qword_1EA9D2140;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = *algn_1EA9F78F8;
  v29 = qword_1EA9F7900;
  v28 = unk_1EA9F7908;
  *(v10 + 160) = qword_1EA9F78F0;
  *(v10 + 168) = v27;
  *(v10 + 176) = v29;
  *(v10 + 184) = v28;
  *&v3[v9] = v10;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  if (a2)
  {
    v30 = sub_18BC20B98();
  }

  else
  {
    v30 = 0;
  }

  v33.receiver = v3;
  v33.super_class = type metadata accessor for SFLayerEditorViewController(0);
  v31 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, v30, a3);

  return v31;
}

id sub_18BB795FC(void *a1)
{
  *&v1[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource] = 0;
  v3 = &v1[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_editHandler];
  *v3 = CGRectMake;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
  v5 = _s5LayerVMa(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_filters;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA1C0, &qword_18BC404A8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC43BC0;
  if (qword_1EA9D2120 != -1)
  {
    swift_once();
  }

  v8 = *algn_1EA9F7878;
  v9 = qword_1EA9F7880;
  v10 = unk_1EA9F7888;
  *(v7 + 32) = qword_1EA9F7870;
  *(v7 + 40) = v8;
  *(v7 + 48) = v9;
  *(v7 + 56) = v10;
  v11 = qword_1EA9D2128;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = *algn_1EA9F7898;
  v13 = qword_1EA9F78A0;
  v14 = unk_1EA9F78A8;
  *(v7 + 64) = qword_1EA9F7890;
  *(v7 + 72) = v12;
  *(v7 + 80) = v13;
  *(v7 + 88) = v14;
  v15 = qword_1EA9D2130;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = *algn_1EA9F78B8;
  v17 = qword_1EA9F78C0;
  v18 = unk_1EA9F78C8;
  *(v7 + 96) = qword_1EA9F78B0;
  *(v7 + 104) = v16;
  *(v7 + 112) = v17;
  *(v7 + 120) = v18;
  v19 = qword_1EA9D2138;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = *algn_1EA9F78D8;
  v21 = qword_1EA9F78E0;
  v22 = unk_1EA9F78E8;
  *(v7 + 128) = qword_1EA9F78D0;
  *(v7 + 136) = v20;
  *(v7 + 144) = v21;
  *(v7 + 152) = v22;
  v23 = qword_1EA9D2140;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = *algn_1EA9F78F8;
  v25 = qword_1EA9F7900;
  v26 = unk_1EA9F7908;
  *(v7 + 160) = qword_1EA9F78F0;
  *(v7 + 168) = v24;
  *(v7 + 176) = v25;
  *(v7 + 184) = v26;
  *&v1[v6] = v7;
  v29.receiver = v1;
  v29.super_class = type metadata accessor for SFLayerEditorViewController(0);
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v27 = objc_msgSendSuper2(&v29, sel_initWithCoder_, a1);

  if (v27)
  {
  }

  return v27;
}

id sub_18BB79930(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SFLayerEditorViewController(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for SFLayerEditorViewController(uint64_t a1)
{
  result = qword_1EA9DA178;
  if (!qword_1EA9DA178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18BB79A4C(uint64_t a1)
{
  sub_18B986E94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari27SFLayerEditorViewControllerC4ItemO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_18BB79B20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18BB79B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_18BB79BB0(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_18BB79BF0()
{
  result = qword_1EA9DA190;
  if (!qword_1EA9DA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA190);
  }

  return result;
}

unint64_t sub_18BB79C48()
{
  result = qword_1EA9DA198;
  if (!qword_1EA9DA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA198);
  }

  return result;
}

void sub_18BB79CCC(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *a1;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v12 = sub_18BB7A6CC(v11, a2, a3, a4, a5);
  v14 = v13;

  if (v5)
  {

LABEL_54:

    return;
  }

  if (v14)
  {
    goto LABEL_54;
  }

  v45 = a5;
  v46 = a1;
  v47 = a4;
  v15 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    v44 = (a4 + 64);
    v49 = a2;
    v50 = a3;
    while (1)
    {
      v17 = *(v11 + 16);
      if (v15 == v17)
      {
        goto LABEL_54;
      }

      if (v15 >= v17)
      {
        goto LABEL_56;
      }

      v51 = v11;
      v18 = (v11 + 32 + 32 * v15);
      v19 = v18[2];
      v20 = *v18 == a2 && v18[1] == a3;
      if (!v20 && (sub_18BC21FD8() & 1) == 0)
      {
        goto LABEL_43;
      }

      v21 = *(v19 + 16);
      if (v21 != *(v47 + 16))
      {
        goto LABEL_43;
      }

      if (v21)
      {
        v22 = v19 == v47;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v25 = (v19 + 64);
        v26 = v44;
        while (v21)
        {
          v27 = *(v25 - 4);
          v28 = *(v25 - 3);
          v29 = *(v26 - 4);
          v30 = *(v26 - 3);
          if (*(v25 - 16) == 1)
          {
            if (*&v27 | *&v28)
            {
              if (!*(v26 - 16) || !(*&v29 | *&v30))
              {
                goto LABEL_43;
              }
            }

            else if (!*(v26 - 16) || *&v29 | *&v30)
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (*(v26 - 2))
            {
              goto LABEL_43;
            }

            if (v27 != v29 || v28 != v30)
            {
              goto LABEL_43;
            }
          }

          if ((*(v25 - 1) != *(v26 - 1) || *v25 != *v26) && (sub_18BC21FD8() & 1) == 0)
          {
            goto LABEL_43;
          }

          v25 += 5;
          v26 += 5;
          if (!--v21)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        break;
      }

LABEL_22:
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v23 = sub_18BC1E3F8();
      v24 = sub_18BABD3FC(v23, v45);

      if ((v24 & 1) == 0)
      {
LABEL_43:
        if (v12 == v15)
        {
          v16 = __OFADD__(v12++, 1);
          if (v16)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v32 = v11;
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          v33 = *(v11 + 16);
          if (v12 >= v33)
          {
            goto LABEL_60;
          }

          if (v15 >= v33)
          {
            goto LABEL_61;
          }

          v34 = (v11 + 32 + 32 * v12);
          v35 = *v34;
          v36 = v34[1];
          v38 = v34[2];
          v37 = v34[3];
          v39 = v18[1];
          v48 = *v18;
          v41 = v18[2];
          v40 = v18[3];
          sub_18BC1E3F8();
          sub_18BC1E3F8();
          sub_18BC1E3F8();
          sub_18BC1E3F8();
          sub_18BC1E3F8();
          sub_18BC1E3F8();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_18BAE38B4(v51);
          }

          v42 = &v32[32 * v12 + 32];
          *v42 = v48;
          *(v42 + 1) = v39;
          *(v42 + 2) = v41;
          *(v42 + 3) = v40;

          if (v15 >= *(v32 + 2))
          {
            goto LABEL_62;
          }

          v43 = &v32[32 * v15 + 32];
          *v43 = v35;
          *(v43 + 1) = v36;
          *(v43 + 2) = v38;
          *(v43 + 3) = v37;

          *v46 = v32;
          v11 = v32;
          v16 = __OFADD__(v12++, 1);
          if (v16)
          {
            goto LABEL_58;
          }
        }
      }

      v16 = __OFADD__(v15++, 1);
      a2 = v49;
      a3 = v50;
      if (v16)
      {
        goto LABEL_57;
      }
    }
  }

  __break(1u);
}

BOOL sub_18BB7A0B0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  if (v7 <= 2)
  {
    if (*(a1 + 32))
    {
      if (v7 != 1)
      {
        if (*(a2 + 32) != 2)
        {
          return 0;
        }

        v15 = a2[2];
        v16 = a2[3];
        if (__PAIR128__(v3, v4) != *a2 && (sub_18BC21FD8() & 1) == 0)
        {
          return 0;
        }

        return (sub_18B98DA88(v6, v15) & 1) != 0 && (sub_18BABD3FC(v5, v16) & 1) != 0;
      }

      if (*(a2 + 32) == 1)
      {
        v8 = a2[1];
        if (v3)
        {
          if (v8)
          {
            if (v4 == v2 && v3 == v8)
            {
              return 1;
            }

            return (sub_18BC21FD8() & 1) != 0;
          }
        }

        else if (!v8)
        {
          return 1;
        }
      }

      return 0;
    }

    if (*(a2 + 32))
    {
      return 0;
    }

    if (v4)
    {
      if (!v2)
      {
        return 0;
      }

      v10 = &unk_1EA9D91D0;
      v11 = 0x1E69DC888;
LABEL_28:
      sub_18B7B0AC0(0, v10, v11);
      sub_18BB7A32C(a2, v18);
      sub_18BB7A32C(a1, v18);
      v14 = sub_18BC215C8();
      sub_18BB79C9C(a1);
      sub_18BB79C9C(a2);
      return (v14 & 1) != 0;
    }

    goto LABEL_44;
  }

  if (v7 != 3)
  {
    if (v7 != 4)
    {
      if (v6 | v3 | v4 | v5)
      {
        if (*(a2 + 32) != 5 || v2 != 1 || a2[2] | a2[3] | a2[1])
        {
          return 0;
        }
      }

      else if (*(a2 + 32) != 5 || a2[3] | a2[2] | a2[1] | v2)
      {
        return 0;
      }

      return 1;
    }

    if (*(a2 + 32) != 4 || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
    {
      return 0;
    }

    if (*(v4 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle) == *(v2 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle) && *(v4 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle + 8) == *(v2 + OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_subtitle + 8))
    {
      return 1;
    }

    return (sub_18BC21FD8() & 1) != 0;
  }

  if (*(a2 + 32) == 3)
  {
    if (v4)
    {
      if (!v2)
      {
        return 0;
      }

      v10 = &qword_1ED6514F0;
      v11 = 0x1E69DCAB8;
      goto LABEL_28;
    }

LABEL_44:
    if (!v2)
    {
      return 1;
    }
  }

  return 0;
}

void sub_18BB7A364(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_18BC1EDD8() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  sub_18BB783D4(a1, a2, a3, a4, v10, v11);
}

void sub_18BB7A400(void *result, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_18BB7A414(result, a2, a3, a4, a5);
  }
}

void sub_18BB7A414(void *a1, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    if (a5 != 1)
    {
      return;
    }

LABEL_12:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_12;
  }

  if (a5 != 3)
  {
    if (a5 == 4)
    {
    }

    return;
  }

LABEL_13:
}

void sub_18BB7A4C4(void *a1, id a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    if (a5 != 1)
    {
      return;
    }

LABEL_12:
    sub_18BC1E3F8();
    return;
  }

  if (a5 == 2)
  {
    sub_18BC1E3F8();
    sub_18BC1E3F8();

    goto LABEL_12;
  }

  if (a5 != 3)
  {
    if (a5 == 4)
    {

      sub_18BC1E1A8();
    }

    return;
  }

LABEL_13:

  v6 = a1;
}

unint64_t sub_18BB7A5A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_18B858E00(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_18BAE3A44(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_18BB7A6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *(a1 + 16);
  if (v25)
  {
    v6 = 0;
    v24 = a1 + 32;
    v22 = (a4 + 64);
    while (1)
    {
      v9 = (v24 + 32 * v6);
      result = *v9;
      v11 = v9[2];
      v12 = *v9 == a2 && v9[1] == a3;
      if (v12 || (result = sub_18BC21FD8(), (result & 1) != 0))
      {
        v13 = *(v11 + 16);
        if (v13 == *(a4 + 16))
        {
          if (v13)
          {
            v14 = v11 == a4;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            v15 = (v11 + 64);
            v16 = v22;
            while (v13)
            {
              v17 = *(v15 - 4);
              v18 = *(v15 - 3);
              result = *(v15 - 1);
              v19 = *(v16 - 4);
              v20 = *(v16 - 3);
              if (*(v15 - 16) == 1)
              {
                if (*&v17 | *&v18)
                {
                  if (!*(v16 - 16) || !(*&v19 | *&v20))
                  {
                    goto LABEL_4;
                  }
                }

                else if (!*(v16 - 16) || *&v19 | *&v20)
                {
                  goto LABEL_4;
                }
              }

              else
              {
                if (*(v16 - 2))
                {
                  goto LABEL_4;
                }

                if (v17 != v19 || v18 != v20)
                {
                  goto LABEL_4;
                }
              }

              if (result != *(v16 - 1) || *v15 != *v16)
              {
                result = sub_18BC21FD8();
                if ((result & 1) == 0)
                {
                  goto LABEL_4;
                }
              }

              v15 += 5;
              v16 += 5;
              if (!--v13)
              {
                goto LABEL_3;
              }
            }

            __break(1u);
            return result;
          }

LABEL_3:
          sub_18BC1E3F8();
          sub_18BC1E3F8();
          v7 = sub_18BC1E3F8();
          v8 = sub_18BABD3FC(v7, a5);

          if (v8)
          {
            return v6;
          }
        }
      }

LABEL_4:
      if (++v6 == v25)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_18BB7A8BC(void *a1, uint64_t a2)
{
  v4 = _s5LayerVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v60 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA1A8, &unk_18BC4FFD0);
  MEMORY[0x1EEE9AC00](v80 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0, &qword_18BC3EF28);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v63 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v60 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  v61 = a1;
  v27 = *a1;
  v28 = (*a1 + 16);
  v29 = *v28;
  v71 = v28;
  v81 = a2;
  v79 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
  v30 = v27;
  swift_beginAccess();
  v74 = v29;
  if (!v29)
  {
    return *v71;
  }

  v31 = 0;
  v77 = (v5 + 56);
  v78 = (v5 + 48);
  v32 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v82 = *(v5 + 72);
  v64 = v32;
  v76 = v4;
  v68 = v14;
  while (1)
  {
    sub_18B85B608(v30 + v32, v26, _s5LayerVMa);
    v75 = *v77;
    v75(v26, 0, 1, v4);
    v33 = *(v80 + 48);
    sub_18BB7B1DC(v26, v17);
    sub_18BB7B1DC(v81 + v79, &v17[v33]);
    v34 = *v78;
    if ((*v78)(v17, 1, v4) == 1)
    {
      break;
    }

    v73 = v31;
    v35 = v69;
    sub_18BB7B1DC(v17, v69);
    if (v34(&v17[v33], 1, v4) == 1)
    {
      sub_18B988BAC(v26, &unk_1EA9DA1B0, &qword_18BC3EF28);
      sub_18B85B760(v35, _s5LayerVMa);
      v31 = v73;
      goto LABEL_4;
    }

    v70 = v34;
    v36 = v30;
    v37 = v67;
    sub_18BB7C47C(&v17[v33], v67, _s5LayerVMa);
    v38 = sub_18B993064(v35, v37);
    v39 = v37;
    v30 = v36;
    sub_18B85B760(v39, _s5LayerVMa);
    sub_18B988BAC(v26, &unk_1EA9DA1B0, &qword_18BC3EF28);
    sub_18B85B760(v35, _s5LayerVMa);
    result = sub_18B988BAC(v17, &unk_1EA9DA1B0, &qword_18BC3EF28);
    v41 = v68;
    v31 = v73;
    if (v38)
    {
      goto LABEL_14;
    }

LABEL_5:
    ++v31;
    v32 += v82;
    v4 = v76;
    if (v74 == v31)
    {
      return *v71;
    }
  }

  sub_18B988BAC(v26, &unk_1EA9DA1B0, &qword_18BC3EF28);
  if (v34(&v17[v33], 1, v4) != 1)
  {
LABEL_4:
    sub_18B988BAC(v17, &qword_1EA9DA1A8, &unk_18BC4FFD0);
    goto LABEL_5;
  }

  v70 = v34;
  result = sub_18B988BAC(v17, &unk_1EA9DA1B0, &qword_18BC3EF28);
  v41 = v68;
LABEL_14:
  v42 = (v31 + 1);
  if (__OFADD__(v31, 1))
  {
    goto LABEL_41;
  }

  v43 = *v71;
  if (v42 == *v71)
  {
    return v31;
  }

  v44 = v82 + v32;
  v45 = v66;
  while (v42 < v43)
  {
    v74 = v30;
    v46 = v30 + v44;
    v47 = v45;
    v48 = v72;
    sub_18B85B608(v46, v72, _s5LayerVMa);
    sub_18B85B608(v48, v47, _s5LayerVMa);
    v49 = v76;
    v75(v47, 0, 1, v76);
    v50 = *(v80 + 48);
    sub_18BB7B1DC(v47, v41);
    sub_18BB7B1DC(v81 + v79, v41 + v50);
    v51 = v70;
    if (v70(v41, 1, v49) == 1)
    {
      sub_18B988BAC(v47, &unk_1EA9DA1B0, &qword_18BC3EF28);
      v52 = v51((v41 + v50), 1, v49);
      v45 = v47;
      v30 = v74;
      if (v52 == 1)
      {
        sub_18B988BAC(v41, &unk_1EA9DA1B0, &qword_18BC3EF28);
        result = sub_18B85B760(v72, _s5LayerVMa);
        goto LABEL_18;
      }
    }

    else
    {
      v53 = v63;
      sub_18BB7B1DC(v41, v63);
      if (v51((v41 + v50), 1, v49) != 1)
      {
        v57 = v53;
        v58 = v67;
        sub_18BB7C47C(v41 + v50, v67, _s5LayerVMa);
        v59 = sub_18B993064(v57, v58);
        sub_18B85B760(v58, _s5LayerVMa);
        v45 = v66;
        sub_18B988BAC(v66, &unk_1EA9DA1B0, &qword_18BC3EF28);
        sub_18B85B760(v57, _s5LayerVMa);
        sub_18B988BAC(v68, &unk_1EA9DA1B0, &qword_18BC3EF28);
        v41 = v68;
        result = sub_18B85B760(v72, _s5LayerVMa);
        v30 = v74;
        if (v59)
        {
          goto LABEL_18;
        }

        goto LABEL_26;
      }

      v45 = v66;
      sub_18B988BAC(v66, &unk_1EA9DA1B0, &qword_18BC3EF28);
      sub_18B85B760(v53, _s5LayerVMa);
      v30 = v74;
    }

    sub_18B988BAC(v41, &qword_1EA9DA1A8, &unk_18BC4FFD0);
    result = sub_18B85B760(v72, _s5LayerVMa);
LABEL_26:
    if (v42 != v31)
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      v54 = *v71;
      if (v31 >= *v71)
      {
        goto LABEL_38;
      }

      v55 = v31 * v82;
      result = sub_18B85B608(v30 + v64 + v31 * v82, v65, _s5LayerVMa);
      if (v42 >= v54)
      {
        goto LABEL_39;
      }

      v56 = v62;
      sub_18B85B608(v30 + v44, v62, _s5LayerVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_18BAE3788(v30);
      }

      result = sub_18B988C0C(v56, v30 + v64 + v55);
      if (v42 >= v30[2])
      {
        goto LABEL_40;
      }

      result = sub_18B988C0C(v65, v30 + v44);
      *v61 = v30;
      v45 = v66;
    }

    ++v31;
LABEL_18:
    v42 = (v42 + 1);
    v43 = v30[2];
    v71 = v30 + 2;
    v44 += v82;
    if (v42 == v43)
    {
      return v31;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void sub_18BB7B1C8(void *a1, id a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_18BB7A4C4(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_18BB7B1DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0, &qword_18BC3EF28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18BB7B27C()
{
  result = qword_1EA9DA1D0;
  if (!qword_1EA9DA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA1D0);
  }

  return result;
}

unint64_t sub_18BB7B2D0()
{
  result = qword_1EA9DA1D8;
  if (!qword_1EA9DA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA1D8);
  }

  return result;
}

void sub_18BB7B324(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1B0, &qword_18BC3EF28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v82 - v7;
  v9 = _s5LayerVMa(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1EDD8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = *&v1[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource];
  if (!v16)
  {
    return;
  }

  v89 = v15;
  v91 = v1;
  v17 = v16;
  v90 = a1;
  sub_18BC1FD18();

  v19 = *(&v92 + 1);
  v18 = v92;
  v20 = v93;
  v21 = v94;
  v22 = BYTE8(v94);
  if (BYTE8(v94) > 4u)
  {
    if (BYTE8(v94) == 255)
    {
      return;
    }

    if (BYTE8(v94) == 5 && v92 == 1 && !(v93 | *(&v92 + 1) | v94))
    {
      v42 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
      v43 = v91;
      swift_beginAccess();
      sub_18BB7B1DC(v43 + v42, v8);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_18B988BAC(v8, &unk_1EA9DA1B0, &qword_18BC3EF28);
      }

      else
      {
        sub_18BB7C47C(v8, v12, _s5LayerVMa);
        v67 = *(v12 + 88);
        v68 = *(v12 + 13);
        v69 = *(v12 + 8);
        v97 = *(v12 + 7);
        v98 = v69;
        v99 = *(v12 + 9);
        v100 = v67;
        if (v68 != 2)
        {
          v70 = objc_allocWithZone(type metadata accessor for SFReflectionEditorViewController(0));
          v71 = sub_18BBB78DC();
          if (*(v12 + 6))
          {
            v72 = *(v12 + 5);
            v73 = *(v12 + 6);
          }

          else
          {
            v72 = 0;
            v73 = 0xE000000000000000;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          *&v92 = v72;
          *(&v92 + 1) = v73;
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18BC20328();
          v74 = v12[56];
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v92) = v74;
          sub_18BC1E1A8();
          sub_18BC20328();
          swift_getKeyPath();
          swift_getKeyPath();
          v92 = v100;
          v93 = v68;
          v94 = v97;
          v95 = v98;
          v96 = v99;
          sub_18BC1E1A8();
          sub_18BC20328();
          v75 = swift_allocObject();
          v76 = v91;
          swift_unknownObjectWeakInit();
          v77 = &v71[qword_1EA9DB228];
          *v77 = sub_18BB7BE98;
          v77[1] = v75;

          v78 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v79 = &v71[qword_1EA9DB230];
          *v79 = sub_18BB7BEA0;
          v79[1] = v78;

          v80 = [v76 navigationController];
          if (v80)
          {
            v81 = v80;
            [v80 pushViewController:v71 animated:1];

            v71 = v81;
          }
        }

        sub_18B85B760(v12, _s5LayerVMa);
      }

      return;
    }

    goto LABEL_14;
  }

  v88 = v13;
  if (BYTE8(v94) == 2)
  {
    v45 = v92;
    v46 = v93;
    v47 = *(&v92 + 1);
    type metadata accessor for SFFilterEditorViewController();
    v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    v49 = [v48 init];
    v50 = &v49[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
    v51 = *&v49[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
    v83 = *&v49[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8];
    v53 = *&v49[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 16];
    v52 = *&v49[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 24];
    *v50 = v45;
    *(v50 + 1) = v47;
    v86 = v46;
    *(v50 + 2) = v46;
    *(v50 + 3) = v21;
    sub_18BC1E3F8();
    v84 = v45;
    v54 = sub_18BC20B98();
    v87 = v21;
    v55 = v54;
    v85 = v47;

    [v49 setTitle_];

    v56 = v83;
    sub_18BA2A9E0(v51, v83, v53, v52);
    sub_18BA2CF70(v51, v56);
    v57 = &v49[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_editHandler];
    v58 = *&v49[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_editHandler];
    sub_18BC1E1A8();
    v58(v49);

    v59 = swift_allocObject();
    v60 = v91;
    swift_unknownObjectWeakInit();
    v61 = v89;
    v62 = v88;
    (*(v89 + 16))(&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v88);
    v63 = (*(v61 + 80) + 24) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v59;
    (*(v61 + 32))(v64 + v63, &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v62);
    *v57 = sub_18BB7BF6C;
    v57[1] = v64;

    v65 = [v60 navigationController];
    if (v65)
    {
      v66 = v65;
      [v65 pushViewController:v49 animated:1];
      sub_18BB7A400(v84, v85, v86, v87, 2u);

      return;
    }

    v18 = v84;
    v19 = v85;
    v20 = v86;
    v44 = v87;
    v22 = 2;
LABEL_15:
    sub_18BB7A400(v18, v19, v20, v44, v22);
    return;
  }

  if (BYTE8(v94) != 4)
  {
LABEL_14:
    v44 = v94;
    goto LABEL_15;
  }

  v85 = *(&v92 + 1);
  v86 = v93;
  v87 = v94;
  v23 = v92;
  type metadata accessor for SFLayerEditorViewController(0);
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtCE12MobileSafariCSo32SFEffectViewEditorViewController4Item_layer;
  swift_beginAccess();
  v84 = v23;
  sub_18BB7B1DC(v23 + v25, v5);
  v26 = OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_layer;
  swift_beginAccess();
  sub_18B987714(v5, &v24[v26]);
  swift_endAccess();
  sub_18BB7143C();
  v27 = &v24[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_editHandler];
  v28 = *&v24[OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_editHandler];
  sub_18BC1E1A8();
  v28(v24);

  sub_18B988BAC(v5, &unk_1EA9DA1B0, &qword_18BC3EF28);
  *&v97 = 0x2320726579614CLL;
  *(&v97 + 1) = 0xE700000000000000;
  v29 = v24;
  v30 = v90;
  v31 = sub_18BC1EDB8();
  if (!__OFADD__(v31, 1))
  {
    v101[0] = v31 + 1;
    v32 = sub_18BC21F48();
    MEMORY[0x18CFFC150](v32);

    v33 = sub_18BC20B98();

    [v29 setTitle_];

    v34 = swift_allocObject();
    v35 = v91;
    swift_unknownObjectWeakInit();
    v36 = v89;
    v37 = v88;
    (*(v89 + 16))(&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v88);
    v38 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v34;
    (*(v36 + 32))(v39 + v38, &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
    *v27 = sub_18BB7BE80;
    v27[1] = v39;

    v40 = [v35 navigationController];
    if (v40)
    {
      v41 = v40;
      [v40 pushViewController:v29 animated:1];
      sub_18BB7A400(v84, v85, v86, v87, 4u);

      return;
    }

    v18 = v84;
    v19 = v85;
    v20 = v86;
    v44 = v87;
    v22 = 4;
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_18BB7BDB0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12MobileSafari27SFLayerEditorViewController_dataSource);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_18BC1FD18();

  if (v10 > 4u)
  {
    if (v10 == 255)
    {
      return 0;
    }

    if (v10 == 5 && v6 == 1 && !(v8 | v7 | v9))
    {
      v4 = 1;
      sub_18BB7A400(1, 0, 0, 0, 5u);
      return v4;
    }

LABEL_11:
    sub_18BB7A400(v6, v7, v8, v9, v10);
    return 0;
  }

  if (v10 != 2 && v10 != 4)
  {
    goto LABEL_11;
  }

  sub_18BB7A400(v6, v7, v8, v9, v10);
  return 1;
}

uint64_t objectdestroy_24Tm()
{
  v1 = sub_18BC1EDD8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18BB7BF84(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_18BC1EDD8() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_18BB7C02C(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  v10 = a3[1];
  v12[0] = *a3;
  v12[1] = v10;
  v13 = a3[2].n128_u8[0];
  return sub_18BB70D34(a1, a2, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18BB7C078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA208, &qword_18BC500E8) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = (v9 + v7 + v8) & ~v7;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA200, &qword_18BC500E0) - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v7 + v12) & ~v7;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DA1F0, &unk_18BC500D0) - 8);
  v15 = (v13 + v9 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v7 + v15) & ~v7;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3578, &qword_18BC3E448) - 8);
  return sub_18BB75D28(a1, a2, a3, v3 + v8, v3 + v10, v3 + v12, v3 + v13, v3 + v15, v3 + v16, v3 + ((v16 + v9 + *(v17 + 80)) & ~*(v17 + 80)));
}

uint64_t sub_18BB7C29C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA220, &unk_18BC50100) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18BB76670(v0 + v2, v3);
}

uint64_t sub_18BB7C334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18BB7C384(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 64);
  v4 = *(v1 + 48);
  v6[0] = *(v1 + 32);
  v6[1] = v4;
  v7 = v3;
  return v2(v6, a1);
}

void sub_18BB7C3FC(uint64_t a1)
{
  v3 = *(sub_18BC1EDD8() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 25) & ~*(v3 + 80));

  sub_18BB7414C(a1, v4, v5, v6);
}

uint64_t sub_18BB7C47C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18BB7C4E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 32);
  return v2(&v4, a1);
}

uint64_t sub_18BB7C528(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 32);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return v2(&v7, a1);
}

void sub_18BB7C584(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = *(a4 + 16);
    v11 = a1;
    v10(v9, a2, a3, a4);
  }
}

void sub_18BB7C65C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  [v2 setAlpha_];
  v3 = [v2 layer];
  v4 = *MEMORY[0x1E6979CC8];
  v5 = sub_18BC20BD8();
  sub_18B7C8D1C(v5, v6);
  v8 = v7;

  if (v8)
  {
    v9 = *(v1 + 24);
    v10 = [v9 layer];
    v11 = [v10 presentationLayer];

    if (v11)
    {
      [v11 opacity];
      v13 = v12;

      [v9 setAlpha_];
      goto LABEL_6;
    }
  }

  else
  {
    v14 = [v2 layer];
    v15 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v16 = sub_18BC1EEA8();
    [v15 setValue:v16 forKey:*MEMORY[0x1E6979990]];

    sub_18B7DEC84(v15);
  }

  [*(v1 + 24) setAlpha_];
LABEL_6:
  v17 = [v2 layer];
  v18 = sub_18BC1EEA8();
  v19 = sub_18BC20B98();
  [v17 setValue:v18 forKeyPath:v19];
}

void sub_18BB7C878()
{
  [*(v0 + 24) setAlpha_];
  v1 = [*(v0 + 16) layer];
  v2 = sub_18BC1EEA8();
  v3 = sub_18BC20B98();
  [v1 setValue:v2 forKeyPath:v3];
}

uint64_t sub_18BB7C938()
{

  return swift_deallocClassInstance();
}

double sub_18BB7C9AC()
{
  v1 = [*(v0 + 16) layer];
  v2 = sub_18BC20BD8();
  sub_18BAE35D8(v2, v3);

  return result;
}

void SFOnboardingCoordinator.didComplete(_:)(void *a1)
{
  swift_getObjectType();

  sub_18BB7E150(a1);
}

void sub_18BB7CA74()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_18BC1EF08();
  swift_allocObject();
  v1 = sub_18BC1EEF8();
  v2 = type metadata accessor for SFOnboardingCoordinator();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentStartPageOnboardingProviders] = 0;
  *&v3[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabSwitcher] = 0;
  *&v3[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabBar] = 0;
  *&v3[OBJC_IVAR___SFOnboardingCoordinator_statesManager] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  sub_18BC1E1A8();
  v4 = objc_msgSendSuper2(&v5, sel_init);

  qword_1EA9DA228 = v4;
}

id SFOnboardingCoordinator.__allocating_init(statesManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentStartPageOnboardingProviders] = 0;
  *&v3[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabSwitcher] = 0;
  *&v3[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabBar] = 0;
  *&v3[OBJC_IVAR___SFOnboardingCoordinator_statesManager] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id static SFOnboardingCoordinator.sharedCoordinator.getter()
{
  if (qword_1EA9D2470 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA9DA228;

  return v1;
}

id SFOnboardingCoordinator.init(statesManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentStartPageOnboardingProviders] = 0;
  *&v1[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabSwitcher] = 0;
  *&v1[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabBar] = 0;
  *&v1[OBJC_IVAR___SFOnboardingCoordinator_statesManager] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_18BB7CCF0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_18BC21208();

  v2 = 1;
  if (v1)
  {
    v2 = 2;
  }

  qword_1EA9DA230 = v2;
}

uint64_t sub_18BB7CD7C()
{
  v1 = OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentStartPageOnboardingProviders;
  if (*(v0 + OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentStartPageOnboardingProviders))
  {
    v2 = *(v0 + OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentStartPageOnboardingProviders);
  }

  else
  {
    v2 = sub_18BB7E25C();
    *(v0 + v1) = v2;
    sub_18BC1E3F8();
  }

  sub_18BC1E3F8();
  return v2;
}

uint64_t sub_18BB7CDE0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey_];

  if (v1)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

id sub_18BB7CE4C()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = WBSIsiPad();
  if (v4)
  {
    v5 = 104.0;
  }

  else
  {
    v5 = 87.0;
  }

  if (v4)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 14.0;
  }

  if (v4)
  {
    v7 = -8.0;
  }

  else
  {
    v7 = 1.0;
  }

  if (v4)
  {
    v8 = -13.0;
  }

  else
  {
    v8 = -33.0;
  }

  if (v4)
  {
    v9 = 17.0;
  }

  else
  {
    v9 = 43.0;
  }

  sub_18BC1EE38();
  v10 = sub_18BC1EE28();
  v12 = v11;
  v13 = *(v1 + 8);
  v13(v3, v0);
  v14 = sub_18BB7F4D8(v10, v12, v5, v6);

  sub_18BC1EE38();
  v15 = sub_18BC1EE28();
  v17 = v16;
  v13(v3, v0);
  v18 = sub_18BB7F4D8(v15, v17, v5, v6);

  v19 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v20 = sub_18BC20B98();
  [v19 setAccessibilityIdentifier_];

  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = v14;
  [v19 addSubview_];
  v22 = v18;
  [v19 addSubview_];
  v39 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_18BC42C20;
  v24 = [v21 centerXAnchor];

  v25 = [v19 centerXAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:v7];

  *(v23 + 32) = v26;
  v27 = [v21 centerYAnchor];

  v28 = [v19 centerYAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:v8];

  *(v23 + 40) = v29;
  v30 = [v22 centerXAnchor];

  v31 = [v19 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v7];

  *(v23 + 48) = v32;
  v33 = [v22 centerYAnchor];

  v34 = [v19 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:v9];

  *(v23 + 56) = v35;
  sub_18BA497D0();
  v36 = sub_18BC20D88();

  [v39 activateConstraints_];

  return v19;
}

uint64_t sub_18BB7D324()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 shouldHideExtensionDiscovery];

  if (v1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_18BB7D384()
{
  v0 = objc_opt_self();
  if (![v0 isAvailableInCurrentLocale])
  {
    return 2;
  }

  if ([v0 userConsentState])
  {
    return 4;
  }

  return 1;
}

uint64_t sub_18BB7D3E4()
{
  v0 = [objc_opt_self() sharedFeatureManager];
  v1 = [v0 isSafariSyncEnabled];

  if (v1)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t SFOnboardingCoordinator.onboardingProvidersForStartPage()()
{
  v1 = v0;
  v2 = sub_18BC1EB88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isOnboardingEnabled])
  {
    v6 = sub_18BB7CD7C();
    v7 = v6 >> 62 ? sub_18BC219A8() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7 >= 1)
    {
      sub_18BC1EB68();
      v8 = MEMORY[0x18CFFA3B0](v5);
      (*(v3 + 8))(v5, v2);
      if ((v8 & 1) == 0)
      {
        v9 = OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentStartPageOnboardingProviders;
        if (*(v1 + OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentStartPageOnboardingProviders) >> 62)
        {
          sub_18BC1E3F8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA258, &qword_18BC501B8);
          sub_18BC21D08();
        }

        else
        {
          swift_bridgeObjectRetain_n();
          sub_18BC22008();
        }

        v10 = sub_18BC1EEE8();

        v11 = sub_18BB7D7A4(v10, type metadata accessor for SFStartPageOnboardingCell.Configuration);

        if (v11)
        {
          *(v1 + v9) = v11;
          sub_18BC1E3F8();

          return v11;
        }

        if (qword_1EA9D2290 != -1)
        {
          swift_once();
        }

        v13 = sub_18BC1F2C8();
        __swift_project_value_buffer(v13, qword_1EA9F7E68);
        v14 = sub_18BC1F2A8();
        v15 = sub_18BC21238();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_18B7AC000, v14, v15, "stateManager unexpectedly mutated the providers when filtering them", v16, 2u);
          MEMORY[0x18CFFEEE0](v16, -1, -1);
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18BB7D7A4(unint64_t a1, uint64_t (*a2)(void))
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_18BC219A8();
    sub_18BC21B98();
    v4 = sub_18BC219A8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_18BC21B98();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x18CFFD010](v5, a1);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_18BC21B68();
        sub_18BC21BA8();
        sub_18BC21BB8();
        sub_18BC21B78();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return v8;
}

uint64_t sub_18BB7D980()
{
  v1 = OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabSwitcher;
  if (*&v0[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabSwitcher])
  {
    v2 = *&v0[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabSwitcher];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18BC3E3E0;
    swift_unknownObjectWeakInit();
    if (qword_1EA9D24E8 != -1)
    {
      swift_once();
    }

    v3 = qword_1EA9F8408;
    v11 = qword_1EA9F8408;
    v4 = objc_allocWithZone(type metadata accessor for SFOnboardingTipController());
    sub_18BB7F95C(v10, v9);
    v5 = v3;
    v6 = v0;
    v7 = sub_18BB7F720(v9, v6, v4, &type metadata for SFOnboardingPrivateBrowsingTip, sub_18BB7FA0C, &unk_1EFF2EB88, sub_18BB7FAA0);

    sub_18BB7F9B8(v10);
    *(v2 + 32) = v7;
    *&v0[v1] = v2;
    sub_18BC1E3F8();
  }

  sub_18BC1E3F8();
  return v2;
}

uint64_t sub_18BB7DAEC(unint64_t a1)
{
  if (![objc_opt_self() isOnboardingTipsEnabled])
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a1 >> 62)
  {
    if (sub_18BC219A8() < 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    sub_18BC1E3F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA258, &qword_18BC501B8);
    sub_18BC21D08();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return MEMORY[0x1E69E7CC0];
    }

    sub_18BC1E3F8();
    sub_18BC22008();
  }

  v2 = sub_18BC1EEE8();

  v3 = sub_18BB7D7A4(v2, type metadata accessor for SFOnboardingTipController);

  if (v3)
  {
    return v3;
  }

  if (qword_1EA9D2290 != -1)
  {
    swift_once();
  }

  v5 = sub_18BC1F2C8();
  __swift_project_value_buffer(v5, qword_1EA9F7E68);
  v6 = sub_18BC1F2A8();
  v7 = sub_18BC21238();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_18B7AC000, v6, v7, "stateManager unexpectedly mutated the providers when filtering them", v8, 2u);
    MEMORY[0x18CFFEEE0](v8, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18BB7DCEC()
{
  v1 = OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabBar;
  if (*&v0[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabBar])
  {
    v2 = *&v0[OBJC_IVAR___SFOnboardingCoordinator____lazy_storage___currentTipsForTabBar];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18BC3E3E0;
    swift_unknownObjectWeakInit();
    if (qword_1EA9D2330 != -1)
    {
      swift_once();
    }

    v3 = qword_1EA9F7F50;
    v11 = qword_1EA9F7F50;
    v4 = objc_allocWithZone(type metadata accessor for SFOnboardingTipController());
    sub_18BA1D7F8(v10, v9);
    v5 = v3;
    v6 = v0;
    v7 = sub_18BB7F720(v9, v6, v4, &type metadata for SFOnboardingMoreButtonTip, sub_18BB7F8AC, &unk_1EFF2EB60, sub_18BB7F900);

    sub_18BA1D830(v10);
    *(v2 + 32) = v7;
    *&v0[v1] = v2;
    sub_18BC1E3F8();
  }

  sub_18BC1E3F8();
  return v2;
}

uint64_t sub_18BB7DE78(uint64_t (*a1)(void), void *a2)
{
  v4 = a1();
  v5 = sub_18BB7DAEC(v4);

  *(v2 + *a2) = v5;
  sub_18BC1E3F8();

  return v5;
}

id sub_18BB7DEFC(void *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v6 = a1;
  v7 = a3();
  v8 = sub_18BB7DAEC(v7);

  *&v6[*a4] = v8;

  sub_18BC1E3F8();

  type metadata accessor for SFOnboardingTipController();
  v9 = sub_18BC20D88();

  return v9;
}

id SFOnboardingCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFOnboardingCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18BB7E150(void *a1)
{
  v1 = [a1 identifier];
  if (v1)
  {
    v2 = v1;
    sub_18BC1EED8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18BB7E20C()
{
  if (qword_1EA9D2478 != -1)
  {
    swift_once();
  }

  return qword_1EA9DA230;
}

uint64_t sub_18BB7E25C()
{
  v0 = sub_18BC1EF68();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v144 = &v132 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v132 - v7;
  v154 = MEMORY[0x1E69E7CC0];
  v142 = *MEMORY[0x1E69C93D0];
  v148 = 0x800000018BC6E510;
  sub_18BC1EE38();
  v146 = sub_18BC1EE28();
  v143 = v9;
  v10 = *(v3 + 8);
  v10(v8, v2);
  sub_18BC1EE38();
  v147 = 0xD000000000000026;
  sub_18BC1EE38();
  v141 = sub_18BC1EE18();
  v12 = v11;
  v10(v5, v2);
  v10(v8, v2);
  sub_18BC1EE38();
  sub_18BC1EE38();
  v13 = sub_18BC1EE18();
  v15 = v14;
  v10(v5, v2);
  v10(v8, v2);
  v16 = type metadata accessor for SFStartPageOnboardingCell.Configuration();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonSymbolName];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString];
  *v21 = 0;
  v21[1] = 0;
  v22 = v142;
  *&v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_identifier] = v142;
  v23 = &v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_stateProvider];
  *v23 = sub_18BB7CDE0;
  v23[1] = 0;
  v24 = &v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType];
  v145 = 0xD000000000000022;
  v25 = v148;
  *v24 = 0xD000000000000022;
  *(v24 + 1) = v25;
  v24[16] = 0;
  v26 = &v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_titleString];
  v27 = v143;
  *v26 = v146;
  v26[1] = v27;
  v28 = &v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_descriptionString];
  *v28 = v141;
  v28[1] = v12;
  v29 = &v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonTitle];
  *v29 = v13;
  v29[1] = v15;
  v17[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType] = 1;
  v153.receiver = v17;
  v153.super_class = v16;
  v148 = v16;
  v30 = v22;
  v31 = objc_msgSendSuper2(&v153, sel_init);
  v32 = &v31[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider];
  swift_beginAccess();
  v33 = *v32;
  v34 = v32[1];
  *v32 = sub_18BB7CE4C;
  v32[1] = 0;
  sub_18B7B171C(v33, v34);
  v35 = v31;
  MEMORY[0x18CFFC270]();
  if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18BC20DD8();
  }

  v146 = v35;
  sub_18BC20E18();
  v143 = *MEMORY[0x1E69C93E8];
  sub_18BC1EF58();
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA268, &qword_18BC50200));
  v144 = sub_18BC20428();
  sub_18BC1EE38();
  sub_18BC1EE38();
  v142 = sub_18BC1EE18();
  v141 = v37;
  v10(v5, v2);
  v10(v8, v2);
  sub_18BC1EE38();
  sub_18BC1EE38();
  v38 = sub_18BC1EE18();
  v40 = v39;
  v10(v5, v2);
  v10(v8, v2);
  sub_18BC1EE38();
  sub_18BC1EE38();
  v41 = sub_18BC1EE18();
  v43 = v42;
  v10(v5, v2);
  v10(v8, v2);
  v44 = v148;
  v45 = objc_allocWithZone(v148);
  v46 = &v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonSymbolName];
  *v47 = 0;
  v47[1] = 0;
  v48 = &v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText];
  *v48 = 0;
  v48[1] = 0;
  v49 = &v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString];
  *v49 = 0;
  v49[1] = 0;
  v51 = v143;
  v50 = v144;
  *&v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_identifier] = v143;
  v52 = &v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_stateProvider];
  *v52 = sub_18BB7D324;
  v52[1] = 0;
  v53 = &v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType];
  *v53 = v50;
  *(v53 + 1) = 0;
  v53[16] = 1;
  v54 = &v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_titleString];
  *v54 = v142;
  v54[1] = v141;
  v55 = &v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_descriptionString];
  *v55 = v38;
  v55[1] = v40;
  v56 = &v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonTitle];
  *v56 = v41;
  v56[1] = v43;
  v45[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType] = 1;
  v152.receiver = v45;
  v152.super_class = v44;
  v57 = v51;
  objc_msgSendSuper2(&v152, sel_init);
  MEMORY[0x18CFFC270]();
  if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18BC20DD8();
  }

  sub_18BC20E18();
  v140 = *MEMORY[0x1E69C93E0];
  v141 = 0x800000018BC6E720;
  sub_18BC1EE38();
  v143 = 0xD000000000000024;
  sub_18BC1EE38();
  v138 = sub_18BC1EE18();
  v137 = v58;
  v10(v5, v2);
  v10(v8, v2);
  sub_18BC1EE38();
  v144 = 0xD000000000000023;
  sub_18BC1EE38();
  v136 = sub_18BC1EE18();
  v135 = v59;
  v10(v5, v2);
  v10(v8, v2);
  sub_18BC1EE38();
  sub_18BC1EE38();
  v133 = sub_18BC1EE18();
  v132 = v60;
  v10(v5, v2);
  v10(v8, v2);
  v134 = 0x800000018BC6E850;
  sub_18BC1EE38();
  v139 = 0xD000000000000025;
  sub_18BC1EE38();
  v61 = sub_18BC1EE18();
  v63 = v62;
  v10(v5, v2);
  v10(v8, v2);
  v64 = v148;
  v65 = objc_allocWithZone(v148);
  v66 = &v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider];
  *v66 = 0;
  v66[1] = 0;
  v67 = &v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonSymbolName];
  *v67 = 0;
  v67[1] = 0;
  v68 = &v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText];
  *v68 = 0;
  v68[1] = 0;
  v69 = &v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString];
  *v69 = 0;
  v69[1] = 0;
  v70 = v140;
  *&v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_identifier] = v140;
  v71 = &v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_stateProvider];
  *v71 = sub_18BB7D384;
  v71[1] = 0;
  v72 = &v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType];
  v142 = 0xD000000000000020;
  v73 = v141;
  *v72 = 0xD000000000000020;
  *(v72 + 1) = v73;
  v72[16] = 0;
  v74 = &v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_titleString];
  v75 = v137;
  *v74 = v138;
  v74[1] = v75;
  v76 = &v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_descriptionString];
  v77 = v135;
  *v76 = v136;
  v76[1] = v77;
  v78 = &v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonTitle];
  *v78 = v61;
  v78[1] = v63;
  v65[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType] = 1;
  v151.receiver = v65;
  v151.super_class = v64;
  v79 = v70;
  v80 = objc_msgSendSuper2(&v151, sel_init);
  v81 = &v80[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText];
  v82 = v132;
  *v81 = v133;
  v81[1] = v82;
  v83 = v80;

  v84 = &v83[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString];
  v85 = v134;
  *v84 = 0xD000000000000017;
  *(v84 + 1) = v85;

  MEMORY[0x18CFFC270](v86);
  if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18BC20DD8();
  }

  sub_18BC20E18();
  v140 = *MEMORY[0x1E69C93D8];
  v141 = 0x800000018BC6E8C0;
  sub_18BC1EE38();
  sub_18BC1EE38();
  v139 = sub_18BC1EE18();
  v138 = v87;
  v10(v5, v2);
  v10(v8, v2);
  sub_18BC1EE38();
  sub_18BC1EE38();
  v88 = sub_18BC1EE18();
  v90 = v89;
  v10(v5, v2);
  v10(v8, v2);
  sub_18BC1EE38();
  sub_18BC1EE38();
  v91 = sub_18BC1EE18();
  v93 = v92;
  v10(v5, v2);
  v10(v8, v2);
  v94 = v148;
  v95 = objc_allocWithZone(v148);
  v96 = &v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider];
  *v96 = 0;
  v96[1] = 0;
  v97 = &v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonSymbolName];
  *v97 = 0;
  v97[1] = 0;
  v98 = &v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText];
  *v98 = 0;
  v98[1] = 0;
  v99 = &v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString];
  *v99 = 0;
  v99[1] = 0;
  v100 = v140;
  *&v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_identifier] = v140;
  v101 = &v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_stateProvider];
  *v101 = sub_18BB7D3E4;
  v101[1] = 0;
  v102 = &v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType];
  v103 = v141;
  *v102 = 0xD00000000000001FLL;
  *(v102 + 1) = v103;
  v102[16] = 0;
  v104 = &v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_titleString];
  v105 = v138;
  *v104 = v139;
  v104[1] = v105;
  v106 = &v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_descriptionString];
  *v106 = v88;
  v106[1] = v90;
  v107 = &v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonTitle];
  *v107 = v91;
  v107[1] = v93;
  v95[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType] = 1;
  v150.receiver = v95;
  v150.super_class = v94;
  v108 = v100;
  objc_msgSendSuper2(&v150, sel_init);
  MEMORY[0x18CFFC270]();
  if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18BC20DD8();
  }

  sub_18BC20E18();
  v143 = *MEMORY[0x1E69C93F0];
  v147 = 0x800000018BC6EA00;
  sub_18BC1EE38();
  sub_18BC1EE38();
  v145 = sub_18BC1EE18();
  v142 = v109;
  v10(v5, v2);
  v10(v8, v2);
  sub_18BC1EE38();
  sub_18BC1EE38();
  v110 = sub_18BC1EE18();
  v112 = v111;
  v10(v5, v2);
  v10(v8, v2);
  sub_18BC1EE38();
  sub_18BC1EE38();
  v113 = sub_18BC1EE18();
  v115 = v114;
  v10(v5, v2);
  v10(v8, v2);
  v116 = v148;
  v117 = objc_allocWithZone(v148);
  v118 = &v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider];
  *v118 = 0;
  v118[1] = 0;
  v119 = &v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonSymbolName];
  *v119 = 0;
  v119[1] = 0;
  v120 = &v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText];
  *v120 = 0;
  v120[1] = 0;
  v121 = &v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString];
  *v121 = 0;
  v121[1] = 0;
  v122 = v143;
  *&v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_identifier] = v143;
  v123 = &v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_stateProvider];
  *v123 = sub_18BB7E20C;
  v123[1] = 0;
  v124 = &v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType];
  v125 = v147;
  *v124 = 0xD000000000000021;
  *(v124 + 1) = v125;
  v124[16] = 0;
  v126 = &v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_titleString];
  v127 = v142;
  *v126 = v145;
  v126[1] = v127;
  v128 = &v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_descriptionString];
  *v128 = v110;
  v128[1] = v112;
  v129 = &v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonTitle];
  *v129 = v113;
  v129[1] = v115;
  v117[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType] = 1;
  v149.receiver = v117;
  v149.super_class = v116;
  v130 = v122;
  objc_msgSendSuper2(&v149, sel_init);
  MEMORY[0x18CFFC270]();
  if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18BC20DD8();
  }

  sub_18BC20E18();

  return v154;
}