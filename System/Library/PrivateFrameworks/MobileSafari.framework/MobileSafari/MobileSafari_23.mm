void sub_18BADCD48()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8));
  v3 = *(v2 + 24);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  *(v2 + 24) = v5;
  if (v5 == 1)
  {
    swift_beginAccess();
    v6 = *(v2 + 16);
    v7 = *(v6 + 16);
    if (v7)
    {
      sub_18BC1E3F8();
      v8 = v6 + 40;
      do
      {
        v9 = *(v8 - 8);
        v20[0] = *(v2 + 24) > 0;
        sub_18BC1E1A8();
        v9(v20);

        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = *(Strong + *((*v1 & *Strong) + 0x90));

  MEMORY[0x1EEE9AC00](v12);
  sub_18BB23D68(sub_18BAE2050);

  v13 = *(v2 + 24);
  v4 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  if (v4)
  {
    goto LABEL_15;
  }

  *(v2 + 24) = v14;
  if (!v14)
  {
    swift_beginAccess();
    v15 = *(v2 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      sub_18BC1E3F8();
      v17 = v15 + 40;
      do
      {
        v18 = *(v17 - 8);
        v19 = *(v2 + 24) > 0;
        sub_18BC1E1A8();
        v18(&v19);

        v17 += 16;
        --v16;
      }

      while (v16);
    }
  }
}

void *sub_18BADCF74(void *a1, void *a2)
{
  v2 = a2;
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  *&v6 = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = v29 - v7;
  v9 = [a1 localDragSession];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = [v9 items];
  swift_unknownObjectRelease();
  sub_18B7B0AC0(0, &qword_1EA9D7CE0, 0x1E69DC990);
  v11 = sub_18BC20D98();

  if (v11 >> 62)
  {
LABEL_23:
    v12 = sub_18BC219A8();
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_24:

LABEL_25:
    v28 = sub_18BC1EDD8();
    (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
    return sub_18BAD9928(v8);
  }

LABEL_4:
  v29[0] = v8;
  v29[1] = v2;
  v8 = 0;
  v13 = v11 & 0xC000000000000001;
  v31 = v11 & 0xFFFFFFFFFFFFFF8;
  v2 = &selRef_performSearchUsingQuery_;
  v14 = MEMORY[0x1E69E7CA0];
  v30 = v4;
  while (1)
  {
    if (v13)
    {
      v15 = MEMORY[0x18CFFD010](v8, v11);
    }

    else
    {
      if (v8 >= *(v31 + 16))
      {
        goto LABEL_22;
      }

      v15 = *(v11 + 8 * v8 + 32);
    }

    v16 = v15;
    v17 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ([v15 v2[285]])
    {
      sub_18BC218B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40[0] = v38;
    v40[1] = v39;
    if (*(&v39 + 1))
    {
      break;
    }

    sub_18B988BAC(v40, &qword_1EA9D5220, &qword_18BC3FCB0);
LABEL_6:
    ++v8;
    if (v17 == v12)
    {

      v8 = v29[0];
      goto LABEL_25;
    }
  }

  v18 = *(v4 + 120);
  v33 = *(v4 + 80);
  v32 = *(v4 + 88);
  v19 = *(v4 + 104);
  v34 = v32;
  v35 = v19;
  v36 = v18;
  type metadata accessor for SFFluidCollectionView(0, &v33);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_6;
  }

  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v2;
  v24 = v14;
  v25 = v37;
  result = sub_18BB65B98();
  if (result)
  {
    v27 = *(result + *((*MEMORY[0x1E69E7D40] & *result) + 0x90));
    sub_18BC1E1A8();
    *(v27 + 32) = sub_18BC20DE8();

    sub_18BAD98C8();

    v14 = v24;
    v2 = v23;
    v13 = v22;
    v12 = v21;
    v11 = v20;
    v4 = v30;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BADD350(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_18BADEC90(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

void sub_18BADD3DC(void *a1, uint64_t *a2, uint64_t a3)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x98);
  swift_beginAccess();
  sub_18B83E710(a1 + v8, v7);
  sub_18BAD9928(v7);
  v9 = *a2;
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = sub_18BC1E3F8();
  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (v16 << 9) | (8 * v17);
    v19 = *(*(v9 + 56) + v18);
    v20 = *(*(*(v9 + 48) + v18) + *((*MEMORY[0x1E69E7D40] & **(*(v9 + 48) + v18)) + 0x90));
    MEMORY[0x1EEE9AC00](v14);
    *(&v24 - 4) = v24;
    *(&v24 - 3) = v21;
    *(&v24 - 2) = v19;
    v22 = v21;
    sub_18BC1E3F8();
    v23 = v20;
    sub_18BB23D68(sub_18BAE2194);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return;
    }

    v12 = *(v9 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_18BADD624(void *a1, void *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = [a1 operation];
  v5 = sub_18BB65B98();
  if (v4 == 3)
  {
    if (v5)
    {
      v6 = *(v5 + *((*v3 & *v5) + 0x90));
      MEMORY[0x1EEE9AC00](v5);
      sub_18BC1E1A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8EF0, &qword_18BC4C200);
      sub_18B7B0B08(&qword_1EA9D6290, &qword_1EA9D8EF0, &qword_18BC4C200, MEMORY[0x1E69E6328]);
      *(v6 + 32) = sub_18BC20CD8();

      sub_18BAD98C8();

      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = *(v5 + *((*v3 & *v5) + 0x90));
  sub_18BC1E1A8();
  *(v7 + 32) = sub_18BC20DE8();

  sub_18BAD98C8();
}

uint64_t sub_18BADD850@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ([*a1 safari_fluidCollectionViewSourceItem])
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
    sub_18B7B1AD4(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220, &qword_18BC3FCB0);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

id sub_18BADD938(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_18BADEE90(a4);

  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_18BADD9DC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v13 = sub_18BC21848();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v25 - v19;
  if ([a1 safari_fluidCollectionViewSourceItem])
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
    sub_18B7B1AD4(&v29, v30);
  }

  else
  {
    memset(v30, 0, sizeof(v30));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220, &qword_18BC3FCB0);
  v21 = swift_dynamicCast();
  (*(*(a3 - 8) + 56))(v20, v21 ^ 1u, 1, a3);
  (*(v14 + 16))(v16, v20, v13);
  sub_18BAD8FE0(a1, v16, a2, a3, a4, v26, v27, v28, a8);
  v22 = *(v14 + 8);
  v23 = a1;
  return v22(v20, v13);
}

void sub_18BADDBFC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

id sub_18BADDC80(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_18BAE11A4(v9, v10);

  return v12;
}

void sub_18BADDD0C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_18BAE186C(v9, a5);

  swift_unknownObjectRelease();
}

void sub_18BADDDA4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = a1;
  sub_18BAE1C50();

  swift_unknownObjectRelease();
}

double sub_18BADDEB0(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & *a1);
  swift_unknownObjectUnownedDestroy();

  sub_18B988BAC(&a1[*((*v2 & *a1) + 0x98)], &unk_1EA9D5BD0, &qword_18BC42210);

  v4 = *((*v2 & *a1) + 0xA8);
  v5 = v3[6];
  v8[0] = v3[5];
  v8[1] = v5;
  v8[2] = v3[7];
  type metadata accessor for SFFluidCollectionView.DropIntent(255, v8);
  v6 = sub_18BC21848();
  (*(*(v6 - 8) + 8))(&a1[v4], v6);

  return result;
}

uint64_t sub_18BADE130(uint64_t a1)
{
  result = sub_18B7B0AC0(319, &qword_1EA9D7CE0, 0x1E69DC990);
  if (v2 <= 0x3F)
  {
    result = sub_18BC21848();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18BADE1C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_18BADE380(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 24) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 8) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = &a1[v11 + 8] & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

uint64_t sub_18BADE68C(uint64_t a1)
{
  v1 = *(a1 + 56);
  v8 = *(a1 + 16);
  v2 = *(a1 + 40);
  v9 = *(a1 + 24);
  v10 = v2;
  v11 = v1;
  type metadata accessor for SFFluidCollectionView.DropItem(255, &v8);
  result = sub_18BC20E78();
  if (v4 <= 0x3F)
  {
    v12 = 0;
    v8 = result;
    sub_18BC21848();
    result = swift_getTupleTypeMetadata2();
    if (v5 <= 0x3F)
    {
      v13 = 0;
      *&v9 = result;
      result = sub_18B9F6AD4();
      if (v6 <= 0x3F)
      {
        v14 = 0;
        *(&v9 + 1) = result;
        result = sub_18B7B0AC0(319, qword_1EA9D8D60, 0x1E69DC9C0);
        if (v7 <= 0x3F)
        {
          v15 = 0;
          *&v10 = result;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_18BADE7A0(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = v9;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  if (v8)
  {
    v12 = 7;
  }

  else
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 80) | *(v4 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64) + v13;
  if (v11 >= a2)
  {
    goto LABEL_36;
  }

  v16 = ((((v12 + *(*(v6 - 8) + 64) + (v15 & ~v13) + ((v14 + 8) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = a2 - v11;
  v18 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = v17 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v16);
      if (!v22)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v22 = *(a1 + v16);
      if (!v22)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v11 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v16);
    if (v22)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if ((v10 & 0x80000000) != 0)
  {
    v27 = (a1 + v14 + 8) & ~v14;
    if (v5 >= v9)
    {
      v29 = *(v4 + 48);

      return v29(v27);
    }

    else
    {
      v28 = (*(v7 + 48))((v15 + v27) & ~v13, v8, v6);
      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v26 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }
}

void sub_18BADEA00(uint64_t a1)
{
  sub_18BADEAF8(319);
  if (v1 <= 0x3F)
  {
    sub_18BC21848();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_18BADEAF8(uint64_t a1)
{
  if (!qword_1EA9D8DE8)
  {
    sub_18BC1EDD8();
    v1 = sub_18BC21848();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA9D8DE8);
    }
  }
}

void sub_18BADEB50(_OWORD *a1)
{
  v9 = "\b";
  v10 = &unk_18BC4C1B8;
  v2 = MEMORY[0x1E69E5D20];
  v11 = MEMORY[0x1E69E5D20] + 64;
  sub_18BADEAF8(319);
  if (v4 <= 0x3F)
  {
    v12 = *(v3 - 8) + 64;
    v13 = &unk_18BC4C1B8;
    v5 = a1[6];
    v8[0] = a1[5];
    v8[1] = v5;
    v8[2] = a1[7];
    type metadata accessor for SFFluidCollectionView.DropIntent(255, v8);
    v6 = sub_18BC21848();
    if (v7 <= 0x3F)
    {
      v14 = *(v6 - 8) + 64;
      v15 = MEMORY[0x1E69E5CE8] + 64;
      v16 = v2 + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_18BADEC90(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_18BB47300();
  v5 = v4;

  if (!v3)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = *(v5 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8F10, &qword_18BC4C218);
  v10 = v8(v7, a1, v9, ObjectType, v5);
  swift_unknownObjectRelease();

  return v10 & 1;
}

void sub_18BADED84(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_18BB47300();
  v5 = v4;

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v9 = swift_unknownObjectUnownedLoadStrong();
    v7 = *(v5 + 32);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8F10, &qword_18BC4C218);
    v7(v9, a1, v8, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

id sub_18BADEE90(void *a1)
{
  v2 = v1;
  v128 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v134 = *MEMORY[0x1E69E7D40] & v3;
  v5 = *((v4 & v3) + 0x50);
  v132 = *((v4 & v3) + 0x58);
  v6 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v120 = sub_18BC21848();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v116 - v9;
  v127 = v6;
  v126 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v116 - v12;
  ObjectType = v5;
  v125 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v116 - v14;
  v15 = sub_18BC1EDD8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v116 - v23;
  v25 = *((v4 & v3) + 0x80);
  Strong = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(v3) = sub_18BB468CC();

  v129 = v25;
  v122 = v15;
  v123 = v16;
  v124 = v24;
  if ((v3 & 1) == 0)
  {
    (*(v16 + 56))(v24, 1, 1, v15);
    v33 = MEMORY[0x1E69E7D40];
    v34 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);
    swift_beginAccess();
    sub_18BAE2118(v24, v2 + v34);
    swift_endAccess();
    v28 = v128;
    goto LABEL_5;
  }

  v27 = swift_unknownObjectUnownedLoadStrong();
  v28 = v128;
  [v128 locationInView_];
  v30 = v29;
  v32 = v31;

  sub_18BAD9FAC(v21, v30, v32);
  if ((*(v16 + 48))(v21, 1, v15) == 1)
  {
    sub_18B988BAC(v21, &unk_1EA9D5BD0, &qword_18BC42210);
    v33 = MEMORY[0x1E69E7D40];
LABEL_5:
    v35 = ObjectType;
    goto LABEL_6;
  }

  v65 = *(v16 + 32);
  v65(v18, v21, v15);
  sub_18BADC330(v18, v28, v10);
  v66 = TupleTypeMetadata2;
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v10, 1, TupleTypeMetadata2) == 1)
  {
    (*(v119 + 8))(v10, v120);
    v67 = v124;
    v65(v124, v18, v15);
    (*(v16 + 56))(v67, 0, 1, v15);
    v33 = MEMORY[0x1E69E7D40];
    v68 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);
    swift_beginAccess();
    sub_18BAE2118(v67, v2 + v68);
    swift_endAccess();
    goto LABEL_5;
  }

  v69 = *(v66 + 48);
  v70 = v125;
  v71 = v130;
  v35 = ObjectType;
  (*(v125 + 32))(v130, v10, ObjectType);
  v72 = v126;
  v73 = &v10[v69];
  v74 = v121;
  v75 = v127;
  (*(v126 + 32))(v121, v73, v127);
  sub_18BADC7D8(v71, v74, v124);
  (*(v72 + 8))(v74, v75);
  (*(v70 + 8))(v130, v35);
  (*(v123 + 8))(v18, v15);
  v33 = MEMORY[0x1E69E7D40];
  v76 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);
  swift_beginAccess();
  sub_18BAE2118(v124, v2 + v76);
  swift_endAccess();
LABEL_6:
  v36 = [v28 localDragSession];
  *&v138 = v35;
  *(&v138 + 1) = v132;
  v37 = *(v134 + 112);
  v139 = *(v134 + 96);
  v140 = v37;
  v38 = type metadata accessor for SFFluidCollectionView(255, &v138);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D8EF0, &qword_18BC4C200);
  swift_getTupleTypeMetadata2();
  v40 = sub_18BC20DE8();
  WitnessTable = swift_getWitnessTable();
  v130 = v39;
  v127 = WitnessTable;
  v42 = sub_18B7C29AC(v40, v38, v39, WitnessTable);

  v141 = v42;
  TupleTypeMetadata2 = v38;
  v121 = v36;
  if (v36)
  {
    v117 = v2;
    v43 = [v36 items];
    sub_18B7B0AC0(0, &qword_1EA9D7CE0, 0x1E69DC990);
    v44 = sub_18BC20D98();

    if (v44 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18BC219A8())
    {
      v46 = 0;
      v47 = 0;
      v134 = v44 & 0xC000000000000001;
      v126 = v44 & 0xFFFFFFFFFFFFFF8;
      ObjectType = i;
      v125 = v44;
      while (1)
      {
        if (v134)
        {
          v48 = MEMORY[0x18CFFD010](v46, v44);
        }

        else
        {
          if (v46 >= *(v126 + 16))
          {
            goto LABEL_38;
          }

          v48 = *(v44 + 8 * v46 + 32);
        }

        v49 = v48;
        v50 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if ([v48 safari_fluidCollectionViewSourceView])
        {
          sub_18BC218B8();
          i = ObjectType;
          swift_unknownObjectRelease();
        }

        else
        {
          v136 = 0u;
          v137 = 0u;
        }

        v138 = v136;
        v139 = v137;
        if (*(&v137 + 1))
        {
          if (swift_dynamicCast())
          {
            v132 = v135;
            *&v138 = v135;
            sub_18B7B171C(v47, 0);
            v51 = v141;
            swift_isUniquelyReferenced_nonNull_native();
            *&v136 = v51;
            v44 = v127;
            v52 = sub_18B84FAF0(&v138, v38, v127);
            v54 = *(v51 + 16);
            v55 = (v53 & 1) == 0;
            v28 = (v54 + v55);
            if (__OFADD__(v54, v55))
            {
              goto LABEL_39;
            }

            v56 = v52;
            v57 = v53;
            sub_18BC21CE8();
            if (sub_18BC21CC8())
            {
              v58 = sub_18B84FAF0(&v138, v38, v44);
              v28 = v128;
              if ((v57 & 1) != (v59 & 1))
              {
                goto LABEL_69;
              }

              v56 = v58;
            }

            else
            {
              v28 = v128;
            }

            v60 = v132;
            v61 = v136;
            v141 = v136;
            if ((v57 & 1) == 0)
            {
              v135 = v132;
              *&v136 = MEMORY[0x1E69E7CC0];
              v62 = v132;
              sub_18BC21CD8();
            }

            v63 = (*(v61 + 56) + 8 * v56);
            v64 = v49;
            MEMORY[0x18CFFC270]();
            if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_18BC20DD8();
              v60 = v132;
            }

            sub_18BC20E18();

            v47 = sub_18BADD3CC;
            v38 = TupleTypeMetadata2;
            v44 = v125;
            i = ObjectType;
          }

          else
          {
          }
        }

        else
        {

          sub_18B988BAC(&v138, &qword_1EA9D5220, &qword_18BC3FCB0);
        }

        ++v46;
        if (v50 == i)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

    v47 = 0;
LABEL_42:
    v134 = v47;

    v2 = v117;
    v33 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v134 = 0;
  }

  v77 = swift_unknownObjectUnownedLoadStrong();
  v78 = sub_18BB468CC();

  if (v78)
  {
    v79 = swift_unknownObjectUnownedLoadStrong();
    v80 = sub_18BB47300();
    v82 = v81;

    if (v80 && (ObjectType = swift_getObjectType(), v83 = swift_unknownObjectUnownedLoadStrong(), v84 = v118, sub_18BADC078(v118), v85 = v2, v86 = *(v82 + 48), v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8F10, &qword_18BC4C218), v88 = v86(v83, v28, v84, v87, ObjectType, v82), v2 = v85, v89 = v88, swift_unknownObjectRelease(), v83, v33 = MEMORY[0x1E69E7D40], (*(v119 + 8))(v84, v120), v89))
    {
      v90 = v89;
    }

    else
    {
      if (sub_18BC209C8() <= 0)
      {
        v91 = 2;
      }

      else
      {
        v91 = 3;
      }

      v90 = [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
    }
  }

  else
  {
    v90 = [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
  }

  v92 = v90;
  v93 = [v92 operation];
  v94 = v124;
  if (v93 == 1)
  {
    (*(v123 + 56))(v124, 1, 1, v122);
    v95 = *((*v33 & *v2) + 0x98);
    swift_beginAccess();
    sub_18BAE2118(v94, v2 + v95);
    swift_endAccess();
  }

  v96 = *(v2 + *((*v33 & *v2) + 0xB8));
  v97 = *(v96 + 24);
  v98 = __OFADD__(v97, 1);
  v99 = v97 + 1;
  if (v98)
  {
    __break(1u);
  }

  else
  {
    *(v96 + 24) = v99;
    if (v99 == 1)
    {
      swift_beginAccess();
      v100 = *(v96 + 16);
      v101 = *(v100 + 16);
      if (v101)
      {
        sub_18BC1E3F8();
        v102 = v100 + 40;
        do
        {
          v103 = *(v102 - 8);
          LOBYTE(v138) = *(v96 + 24) > 0;
          sub_18BC1E1A8();
          v103(&v138);

          v102 += 16;
          --v101;
        }

        while (v101);

        v33 = MEMORY[0x1E69E7D40];
      }
    }

    v104 = swift_unknownObjectUnownedLoadStrong();
    v105 = *(v104 + *((*v33 & *v104) + 0x90));

    MEMORY[0x1EEE9AC00](v106);
    *(&v116 - 4) = v2;
    *(&v116 - 3) = &v141;
    *(&v116 - 2) = v92;
    sub_18BB23D68(sub_18BAE2188);

    v107 = *(v96 + 24);
    v98 = __OFSUB__(v107, 1);
    v108 = v107 - 1;
    if (!v98)
    {
      *(v96 + 24) = v108;
      if (!v108)
      {
        swift_beginAccess();
        v109 = *(v96 + 16);
        v110 = *(v109 + 16);
        if (v110)
        {
          sub_18BC1E3F8();
          v111 = v109 + 40;
          do
          {
            v112 = *(v111 - 8);
            LOBYTE(v135) = *(v96 + 24) > 0;
            sub_18BC1E1A8();
            v112(&v135);

            v111 += 16;
            --v110;
          }

          while (v110);

          v33 = MEMORY[0x1E69E7D40];
        }
      }

      swift_unknownObjectRelease();
      v113 = *((*v33 & *v2) + 0xA0);
      v114 = *(v2 + v113);
      *(v2 + v113) = v92;

      sub_18B7B171C(v134, 0);
      return v92;
    }
  }

  __break(1u);
LABEL_69:
  result = sub_18BC22078();
  __break(1u);
  return result;
}

void sub_18BADFDD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  sub_18BADCD48();
  v6 = sub_18BC1EDD8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  sub_18BAE2118(v5, v1 + v7);
  swift_endAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_18BB47300();
  v11 = v10;

  if (v9)
  {
    ObjectType = swift_getObjectType();
    v13 = swift_unknownObjectUnownedLoadStrong();
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8F10, &qword_18BC4C218);
    v14(v13, a1, v15, ObjectType, v11);
    swift_unknownObjectRelease();
  }
}

void sub_18BADFF94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  sub_18BADCD48();
  v5 = sub_18BC1EDD8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  sub_18BAE2118(v4, v1 + v7);
  swift_endAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_18BB47300();

  if (v9)
  {

    swift_unknownObjectRelease();
  }

  v10 = *((*v6 & *v1) + 0xA0);
  v11 = *(v1 + v10);
  *(v1 + v10) = 0;
}

void sub_18BAE012C(void *a1)
{
  v2 = v1;
  v133 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *(v5 + 0x58);
  v7 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v109 - v8;
  v9 = *((v4 & v3) + 0x50);
  v141 = *(v5 + 96);
  v10 = *((v4 & v3) + 0x70);
  v11 = *((v4 & v3) + 0x78);
  v144 = v9;
  v145 = v6;
  v146 = v141;
  v147 = v10;
  v148 = v11;
  v140 = type metadata accessor for SFFluidCollectionView.DropItem(0, &v144);
  v121 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v136 = (&v109 - v12);
  v13 = sub_18BC21DC8();
  v120 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v109 - v14;
  v119 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v109 - v16;
  v139 = sub_18BC21DE8();
  v123 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v109 - v17;
  v144 = v9;
  v145 = v6;
  v146 = v141;
  v131 = v10;
  v147 = v10;
  v148 = v11;
  v128 = v11;
  v18 = type metadata accessor for SFFluidCollectionView.DropIntent(255, &v144);
  v127 = sub_18BC21848();
  v126 = *(v127 - 1);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v109 - v19;
  v130 = v18;
  v129 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v134 = (&v109 - v21);
  v132 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = sub_18BC21848();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v109 - v25;
  v27 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v124 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v109 - v31;
  sub_18BADC078(v26);
  if ((*(v27 + 48))(v26, 1, TupleTypeMetadata2) == 1)
  {
    (*(v24 + 8))(v26, v23);
    return;
  }

  (*(v27 + 32))(v32, v26, TupleTypeMetadata2);
  v33 = *MEMORY[0x1E69E7D40] & *v1;
  v34 = *&v1[*(v33 + 0xA0)];
  if (!v34)
  {
    (*(v27 + 8))(v32, TupleTypeMetadata2);
    return;
  }

  v116 = v32;
  v117 = v27;
  v118 = TupleTypeMetadata2;
  v35 = *(v33 + 128);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18BB65AD8();
  sub_18BC1E1A8();
  v113 = v34;

  sub_18B810930(&v144);

  v37 = v145;
  v38 = v146;
  sub_18BC1E1A8();

  v39 = v133;
  sub_18BADCD48();
  v115 = v35;
  v40 = swift_unknownObjectUnownedLoadStrong();
  v41 = sub_18BB47300();
  v43 = v42;

  v114 = v41;
  if (v41)
  {
    v109 = v43;
    v111 = v38;
    v112 = v37;
    v44 = [v39 items];
    v122 = sub_18B7B0AC0(0, &qword_1EA9D7CE0, 0x1E69DC990);
    v45 = sub_18BC20D98();

    v110 = &v109;
    v144 = v45;
    MEMORY[0x1EEE9AC00](v46);
    *&v47 = v132;
    *(&v47 + 1) = v6;
    *(&v109 - 3) = v47;
    v48 = v131;
    v49 = v128;
    MEMORY[0x1EEE9AC00](v50);
    *(&v109 - 8) = v51;
    *(&v109 - 7) = v6;
    *(&v109 - 3) = v141;
    *&v106 = v48;
    *(&v106 + 1) = v49;
    v107 = sub_18BAE1F58;
    v108 = v52;
    v53 = v39;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8ED8, &qword_18BC4C1F8);
    v55 = sub_18BAE1FA0();
    v57 = sub_18B82DECC(sub_18BAE1F68, (&v109 - 10), v54, v140, MEMORY[0x1E69E73E0], v55, MEMORY[0x1E69E7410], v56);

    v58 = v124;
    v59 = v118;
    (*(v117 + 16))(v124, v116, v118);
    v60 = *(v59 + 48);
    *(&v106 + 1) = v48;
    v61 = &v58[v60];
    *&v106 = *(&v141 + 1);
    v62 = v134;
    v63 = v58;
    v64 = v113;
    sub_18BAD952C(v57, v63, v61, v53, v113, v132, v6, v141, v134, v106, v49);
    v65 = v129;
    v66 = v125;
    v67 = v130;
    (*(v129 + 16))(v125, v62, v130);
    (*(v65 + 56))(v66, 0, 1, v67);
    v68 = MEMORY[0x1E69E7D40];
    v69 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA8);
    swift_beginAccess();
    v70 = *(v126 + 40);
    v113 = v64;
    swift_unknownObjectRetain();
    v70(&v2[v69], v66, v127);
    swift_endAccess();
    v71 = *&v2[*((*v68 & *v2) + 0xB8)];
    v72 = *(v71 + 24);
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (v73)
    {
      __break(1u);
    }

    else
    {
      *(v71 + 24) = v74;
      *&v141 = v13;
      v75 = v139;
      if (v74 == 1)
      {
        swift_beginAccess();
        v76 = *(v71 + 16);
        v77 = *(v76 + 16);
        if (v77)
        {
          sub_18BC1E3F8();
          v78 = v76 + 40;
          do
          {
            v79 = *(v78 - 8);
            LOBYTE(v144) = *(v71 + 24) > 0;
            sub_18BC1E1A8();
            v79(&v144);

            v78 += 16;
            --v77;
          }

          while (v77);

          v13 = v141;
        }
      }

      ObjectType = swift_getObjectType();
      v81 = swift_unknownObjectUnownedLoadStrong();
      (*(v109 + 24))(v81, v134, ObjectType);

      v82 = *(v71 + 24);
      v73 = __OFSUB__(v82, 1);
      v83 = v82 - 1;
      if (!v73)
      {
        *(v71 + 24) = v83;
        if (!v83)
        {
          swift_beginAccess();
          v84 = *(v71 + 16);
          v85 = *(v84 + 16);
          if (v85)
          {
            sub_18BC1E3F8();
            v86 = v84 + 40;
            do
            {
              v87 = *(v86 - 8);
              LOBYTE(v144) = *(v71 + 24) > 0;
              sub_18BC1E1A8();
              v87(&v144);

              v86 += 16;
              --v85;
            }

            while (v85);

            v13 = v141;
          }
        }

        v88 = swift_unknownObjectUnownedLoadStrong();
        sub_18BB65AD8();
        sub_18BC1E1A8();

        sub_18B810930(&v144);

        v89 = v145;
        v90 = v146;
        sub_18BC1E1A8();

        v115 = v89;
        v110 = v90;
        sub_18BC1F058();
        sub_18BC21DA8();
        v91 = sub_18BC20E28();

        v133 = *v134;
        v92 = v91 == sub_18BC20E28();
        v93 = v138;
        if (!v92)
        {
          goto LABEL_26;
        }

        v94 = sub_18BC20E28();
        if ((v94 & 0x8000000000000000) == 0)
        {
          v95 = v94;
          if (v94)
          {
            v96 = 0;
            v132 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0);
            v131 = (v119 + 32);
            v128 = (v121 + 8);
            v127 = (v119 + 16);
            v126 = v119 + 56;
            v125 = (v119 + 8);
            v124 = (v120 + 8);
            v97 = v135;
            do
            {
              sub_18BC21DA8();
              sub_18BC20EA8();

              if (swift_getEnumCaseMultiPayload() == 1)
              {
                (*v124)(v93, v13);
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D8EF8, &qword_18BC4C208);
                TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
                (*v131)(v97, &v93[*(TupleTypeMetadata3 + 48)], v6);
                v99 = v136;
                v100 = v140;
                sub_18BC20EA8();
                v101 = *v128;
                v102 = *v99;
                v103 = v99;
                v93 = v138;
                v104 = v100;
                v13 = v141;
                v101(v103, v104);
                v105 = v137;
                (*v127)(v137, v97, v6);
                (*v126)(v105, 0, 1, v6);
                v143 = v102;
                swift_beginAccess();
                sub_18BAE1EF0();
                sub_18BC209F8();
                v75 = v139;
                sub_18BC20A38();
                swift_endAccess();
                (*v125)(v97, v6);
              }

              ++v96;
            }

            while (v95 != v96);
          }

LABEL_26:

          swift_unknownObjectRelease();

          (*(v123 + 8))(v142, v75);
          (*(v117 + 8))(v116, v118);
          (*(v129 + 8))(v134, v130);
          return;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  (*(v117 + 8))(v116, v118);
}

id sub_18BAE11A4(void *a1, void *a2)
{
  v3 = v2;
  v53 = a2;
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x60);
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
  v49 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  *&v59 = v49;
  *(&v59 + 1) = v5;
  v48 = v6;
  *&v60 = v6;
  *(&v60 + 1) = v7;
  v47 = v7;
  v55 = v8;
  *&v61[0] = v8;
  *(&v61[0] + 1) = v9;
  v46 = v9;
  v52 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v59);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = v45 - v10;
  v11 = sub_18BC21848();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v45 - v13;
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v54 = v45 - v17;
  swift_beginAccess();
  *&v56 = a1;
  sub_18B7B0AC0(0, &qword_1EA9D7CE0, 0x1E69DC990);
  sub_18BAE1EF0();
  v18 = a1;
  sub_18BC20A28();

  v19 = v15;
  if ((*(v15 + 48))(v14, 1, v5) == 1)
  {
    (*(v12 + 8))(v14, v11);
    swift_endAccess();
    return 0;
  }

  v20 = *(v15 + 32);
  v21 = v54;
  v20(v54, v14, v5);
  swift_endAccess();
  v45[1] = *((*MEMORY[0x1E69E7D40] & *v3) + 0x80);
  v22 = v19;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18BB65AD8();
  sub_18BC1E1A8();

  sub_18B810930(&v59);

  sub_18BC1E1A8();

  v24 = v55;
  LOBYTE(Strong) = sub_18BC1F0C8();

  if ((Strong & 1) == 0)
  {
    (*(v22 + 8))(v21, v5);
    return 0;
  }

  v45[0] = v22;
  v25 = swift_unknownObjectUnownedLoadStrong();
  v26 = sub_18BB47300();
  v28 = v27;

  v29 = v53;
  if (v26 && (ObjectType = swift_getObjectType(), v31 = swift_unknownObjectUnownedLoadStrong(), v32 = (*(v28 + 64))(v31, v21, v29, ObjectType, v28), swift_unknownObjectRelease(), v31, v32))
  {
    (*(v45[0] + 8))(v21, v5);
    return v32;
  }

  else
  {
    v34 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB65AD8();
    sub_18BC1E1A8();

    sub_18B81D198(&v56);

    *&v59 = v49;
    *(&v59 + 1) = v5;
    *&v60 = v48;
    *(&v60 + 1) = v47;
    *&v61[0] = v24;
    *(&v61[0] + 1) = v46;
    v35 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v59);
    v36 = v50;
    SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v21, v35, v50);
    v59 = v56;
    v60 = v57;
    v61[0] = v58[0];
    *(v61 + 9) = *(v58 + 9);
    (*(*(v35 - 1) + 8))(&v59, v35);
    v37 = swift_unknownObjectUnownedLoadStrong();
    v38 = v52;
    v39 = (v36 + *(v52 + 72));
    v40 = *v39;
    v41 = v39[1];
    v42 = objc_allocWithZone(MEMORY[0x1E69DC9A8]);
    v56 = 0x3FF0000000000000uLL;
    *&v57 = 0;
    *(&v57 + 1) = 0x3FF0000000000000;
    v58[0] = 0uLL;
    v43 = [v42 initWithContainer:v37 center:&v56 transform:{v40, v41}];

    v44 = [v29 retargetedPreviewWithTarget_];
    (*(v51 + 8))(v36, v38);
    (*(v45[0] + 8))(v21, v5);
    return v44;
  }
}

double sub_18BAE186C(void *a1, uint64_t a2)
{
  v24 = a2;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v27 = *MEMORY[0x1E69E7D40] & v4;
  v6 = *((v5 & v4) + 0x58);
  v7 = sub_18BC21848();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v26 = *((v5 & v4) + 0x80);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = sub_18BB47300();
  v23 = v16;

  if (v15)
  {
    v25 = v15;
    swift_beginAccess();
    v29[6] = a1;
    sub_18B7B0AC0(0, &qword_1EA9D7CE0, 0x1E69DC990);
    sub_18BAE1EF0();
    v18 = a1;
    sub_18BC20A28();

    if ((*(v28 + 48))(v10, 1, v6) == 1)
    {
      (*(v8 + 8))(v10, v7);
      swift_endAccess();
    }

    else
    {
      (*(v28 + 32))(v13, v10, v6);
      swift_endAccess();
      v19 = swift_unknownObjectUnownedLoadStrong();
      sub_18BB65AD8();
      sub_18BC1E1A8();

      sub_18B810930(v29);

      sub_18BC1E1A8();

      LOBYTE(v19) = sub_18BC1F0C8();

      if (v19)
      {
        ObjectType = swift_getObjectType();
        v21 = swift_unknownObjectUnownedLoadStrong();
        (*(v23 + 72))(v21, v13, v24, ObjectType);
        swift_unknownObjectRelease();

        (*(v28 + 8))(v13, v6);
        return result;
      }

      (*(v28 + 8))(v13, v6);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_18BAE1C50()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = *(v2 + 0x78);
  v19 = *(v2 + 0x50);
  v18 = *(v2 + 88);
  v20 = v18;
  v21 = *(v2 + 104);
  v22 = v3;
  v4 = type metadata accessor for SFFluidCollectionView.DropIntent(255, &v19);
  v5 = sub_18BC21848();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  (*(*(v4 - 8) + 56))(&v18 - v8, 1, 1, v4, v7);
  v10 = *((*v1 & *v0) + 0xA8);
  swift_beginAccess();
  (*(v6 + 40))(&v0[v10], v9, v5);
  swift_endAccess();
  v11 = sub_18B7B0AC0(255, &qword_1EA9D7CE0, 0x1E69DC990);
  v12 = v18;
  swift_getTupleTypeMetadata2();
  v13 = sub_18BC20DE8();
  v14 = sub_18BAE1EF0();
  v15 = sub_18B7C29AC(v13, v11, v12, v14);

  v16 = *((*v1 & *v0) + 0xB0);
  swift_beginAccess();
  *&v0[v16] = v15;

  return result;
}

unint64_t sub_18BAE1EF0()
{
  result = qword_1EA9D8ED0;
  if (!qword_1EA9D8ED0)
  {
    sub_18B7B0AC0(255, &qword_1EA9D7CE0, 0x1E69DC990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8ED0);
  }

  return result;
}

unint64_t sub_18BAE1FA0()
{
  result = qword_1EA9D8EE0;
  if (!qword_1EA9D8EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D8ED8, &qword_18BC4C1F8);
    sub_18B7B0B08(&qword_1EA9D8EE8, &qword_1EA9D8EF0, &qword_18BC4C200, MEMORY[0x1E69E6340]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8EE0);
  }

  return result;
}

uint64_t sub_18BAE2058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BAE2118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SFSiriLinkCoordinator.findOnPageInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4C228;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B80A3F8();
  return sub_18BC1F028();
}

uint64_t sub_18BAE2274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_18BC1EC08();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  v4[14] = swift_task_alloc();
  sub_18BC20F28();
  v4[15] = sub_18BC20F18();
  v7 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAE2398, v7, v6);
}

uint64_t sub_18BAE2398()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Find on Page", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[7];

    sub_18BC1E0A8();
    v13 = sub_18BC20B98();

    sub_18BC1E0A8();
    (*(v11 + 16))(v8, v9, v10);
    sub_18BA5F48C(v9);
    v14 = sub_18BC1EBC8();
    (*(v11 + 8))(v8, v10);
    [v3 findString:v13 onTabWithUUID:v14];

    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
    v12[4] = sub_18B9A3450();
    __swift_allocate_boxed_opaque_existential_0Tm(v12);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v15 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v16 = sub_18BC1DE48();
    v17 = __swift_project_value_buffer(v16, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v16 - 8) + 16))(v18, v17, v16);
    swift_willThrow();

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_18BAE26D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_18B7B6968;

  return sub_18BAE2274(a1, a2, a3, v3);
}

uint64_t sub_18BAE2784(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return v9(a1, v5, v6);
}

uint64_t sub_18BAE2890(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BAE2784(a1, a2, v6);
}

uint64_t sub_18BAE2958(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BAE2784(a1, a2, v6);
}

void sub_18BAE2A20()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v21 = objc_opt_self();
      if (v2 < 1)
      {
        break;
      }

      v3 = 0;
      v20 = v24;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x18CFFD010](v3, v1);
        }

        else
        {
          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = 1.0 - *(v22 + 16);
        v7 = OBJC_IVAR___SFTabThumbnailView_controlsVisibility;
        v8 = *&v4[OBJC_IVAR___SFTabThumbnailView_controlsVisibility];
        *&v4[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = v6;
        if (v6 != v8)
        {
          [*&v4[OBJC_IVAR___SFTabThumbnailView_controlsContainerView] setAlpha_];
          v9 = sub_18B7DE654();
          v10 = 1.0;
          [v9 setValue_];

          if (*&v5[OBJC_IVAR___SFTabThumbnailView_configuration + 24] != 1)
          {
            v10 = 1.0 - *&v5[v7];
          }

          [*&v5[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] setAlpha_];
        }

        v11 = *&v5[OBJC_IVAR___SFTabThumbnailView_controlsContainerView];
        v12 = sub_18B7DE654();
        [v12 value];
        v14 = v13;

        v15 = swift_allocObject();
        *(v15 + 16) = v11;
        *(v15 + 24) = v14;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_18B7EA1B8;
        *(v16 + 24) = v15;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_18B7D1EC4;
        *(v17 + 24) = v16;
        v24[2] = sub_18B7D1E94;
        v24[3] = v17;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v24[0] = sub_18B7E3BF4;
        v24[1] = &block_descriptor_40;
        v18 = _Block_copy(aBlock);
        v19 = v11;
        sub_18BC1E1A8();
        sub_18BC1E1A8();

        [v21 performWithoutAnimation_];

        _Block_release(v18);
        LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

        if (v18)
        {
          break;
        }

        if (v2 == ++v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_16:
      v2 = sub_18BC219A8();
      if (!v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_18BAE2D60()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    v3 = sub_18BC219A8();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x18CFFD010](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      v7 = *(v1 + 16);
      v8 = OBJC_IVAR___SFTabThumbnailView_controlsVisibility;
      v9 = *&v5[OBJC_IVAR___SFTabThumbnailView_controlsVisibility];
      *&v5[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = v7;
      if (v7 != v9)
      {
        [*&v5[OBJC_IVAR___SFTabThumbnailView_controlsContainerView] setAlpha_];
        v10 = sub_18B7DE654();
        v11 = 1.0;
        [v10 setValue_];

        if (*&v6[OBJC_IVAR___SFTabThumbnailView_configuration + 24] != 1)
        {
          v11 = 1.0 - *&v6[v8];
        }

        [*&v6[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] setAlpha_];
      }
    }
  }
}

uint64_t sub_18BAE2EE0()
{

  return swift_deallocClassInstance();
}

id sub_18BAE2F54(double *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_18B9B66A0(0, v5, 0);
    v6 = v21;
    v7 = (v4 + 32);
    v8 = v5;
    do
    {
      v9 = *v7;
      v10 = [v9 CGColor];
      type metadata accessor for CGColor(0);
      v20 = v11;

      *&v19 = v10;
      v21 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_18B9B66A0((v12 > 1), v13 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v13 + 1;
      sub_18B7B1AD4(&v19, (v6 + 32 * v13 + 32));
      v7 += 2;
      --v8;
    }

    while (v8);
    v14 = sub_18BC20D88();

    [v2 setColors_];

    *&v19 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v15 = v4 + 40;
    do
    {
      v15 += 16;
      sub_18BC1EEA8();
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      --v5;
    }

    while (v5);
  }

  else
  {
    v16 = sub_18BC20D88();

    [v1 setColors_];
  }

  sub_18B7B0AC0(0, &qword_1EA9D8F88, 0x1E696AD98);
  v17 = sub_18BC20D88();

  [v2 setLocations_];

  [v2 setStartPoint_];
  return [v2 setEndPoint_];
}

void sub_18BAE31BC(void *a1)
{
  v2 = v1;
  v4 = sub_18BC20B98();
  v5 = [v1 animationForKey_];

  if (!v5)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_4:
    v6 = 0;
  }

  v17 = v6;
  v7 = [v6 sourceLayer];
  if (v7 && (v8 = v7, sub_18B7B0AC0(0, &qword_1EA9D57F8, 0x1E6979398), v9 = a1, v10 = sub_18BC215C8(), v9, v8, (v10 & 1) != 0))
  {
    v11 = v17;
  }

  else
  {
    v12 = sub_18BC20B98();
    [v2 removeAnimationForKey_];

    v13 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
    [v13 setDuration_];
    [v13 setFillMode_];
    [v13 setRemovedOnCompletion_];
    [v13 setSourceLayer_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18BC42C20;
    *(v14 + 32) = sub_18BC21588();
    *(v14 + 40) = sub_18BC21588();
    *(v14 + 48) = sub_18BC21588();
    *(v14 + 56) = sub_18BC21588();
    sub_18B7B0AC0(0, &qword_1EA9D53D0, 0x1E696B098);
    v15 = sub_18BC20D88();

    [v13 setSourcePoints_];

    [v13 setUsesNormalizedCoordinates_];
    v16 = sub_18BC20B98();
    [v2 addAnimation:v13 forKey:v16];

    v11 = v16;
  }
}

void sub_18BAE348C(void *a1)
{
  v10 = [v1 superlayer];
  if (v10)
  {
    v3 = [a1 superlayer];
    if (v3)
    {
      v4 = v3;
      [a1 position];
      [v4 convertPoint:v10 toLayer:?];
      v6 = v5;
      v8 = v7;
      if (CGFloatIsValid() && CGFloatIsValid())
      {
        [a1 bounds];
        [v1 setBounds_];
        [v1 setPosition_];
        v9 = v10;
        v10 = v4;
      }

      else
      {

        v9 = v4;
      }
    }
  }
}

void sub_18BAE35D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 filters];
  if (v6)
  {
    v7 = v6;
    v8 = sub_18BC20D98();

    v16 = v8;
    sub_18BC1E3F8();
    v9 = sub_18BAE3F60(&v16, a1, a2);

    v10 = v16;
    v11 = *(v16 + 16);
    if (v9 > v11)
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v11, v9 - v11))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v9 <= *(v10 + 24) >> 1)
        {
          sub_18BAE41DC(v9, v11, 0);
        }

        else
        {
          if (v11 <= v9)
          {
            v13 = v9;
          }

          else
          {
            v13 = v11;
          }

          v14 = sub_18B9B5C8C(isUniquelyReferenced_nonNull_native, v13, 1, v10);
          v16 = v14;
          sub_18BAE41DC(v9, v11, 0);
          if (!v14)
          {
            v15 = 0;
            [v3 setFilters_];
            goto LABEL_16;
          }
        }

        v15 = sub_18BC20D88();

        [v3 setFilters_];
LABEL_16:

        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  [v3 setFilters_];
}

uint64_t sub_18BAE3850(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_18BC219A8();
  }

  return sub_18BC21B28();
}

unint64_t sub_18BAE38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_18BAE3A44(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 16 * result);
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = *(v7 + 16);
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_21;
  }

  result = v8 + 16 * a3;
  v12 = (v7 + 32 + 16 * a2);
  if (result != v12 || result >= v12 + 16 * v11)
  {
    v14 = a3;
    v15 = a4;
    result = memmove(result, v12, 16 * v11);
    a3 = v14;
    a4 = v15;
  }

  v16 = *(v7 + 16);
  v10 = __OFADD__(v16, v6);
  v17 = v16 + v6;
  if (v10)
  {
    goto LABEL_22;
  }

  *(v7 + 16) = v17;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = 16 * a3;

  return memcpy(v8, (a4 + 32), v18);
}

id sub_18BAE3B38(uint64_t a1, uint64_t a2, double a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v5 = sub_18BC20B98();
  [v4 setValue:a1 forKey:v5];

  v6 = sub_18BC20EC8();
  [v4 setValue:v6 forKey:*MEMORY[0x1E6979B78]];

  v7 = sub_18BC1EEA8();
  [v4 setValue:v7 forKey:*MEMORY[0x1E6979BA8]];

  return v4;
}

unint64_t sub_18BAE3C48(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 144 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 144 * a3;
  v13 = (v7 + 32 + 144 * a2);
  if (result != v13 || result >= v13 + 144 * v12)
  {
    result = memmove(result, v13, 144 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_18BAE3D20(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_18BAE3DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = 0;
    for (i = a1 + 32; ; i += 32)
    {
      sub_18B7B193C(i, v19);
      sub_18B7B0AC0(0, &qword_1EA9D40B8, 0x1E6979378);
      if (swift_dynamicCast())
      {
        v8 = v20;
        v9 = [v20 type];

        if (v9)
        {
          v10 = a2;
          v11 = a3;
          v12 = sub_18BC20BD8();
          v14 = v13;

          v15 = v12;
          a3 = v11;
          if (v15 == v10 && v14 == v11)
          {

            return v6;
          }

          a2 = v10;
          v17 = sub_18BC21FD8();

          if (v17)
          {
            return v6;
          }
        }
      }

      if (v3 == ++v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_18BAE3F60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *a1;
  result = sub_18BAE3DE0(*a1, a2, a3);
  v8 = result;
  v9 = v3;
  if (v3)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_33;
  }

  v12 = (v5 + 16);
  v11 = *(v5 + 16);
  if (v10 == v11)
  {
    return v8;
  }

  v13 = 32 * result + 64;
  v23 = v4;
  while (v10 < v11)
  {
    sub_18B7B193C(v5 + v13, v27);
    sub_18B7B193C(v27, v26);
    sub_18B7B0AC0(0, &qword_1EA9D40B8, 0x1E6979378);
    if (swift_dynamicCast() && (v14 = v28, v15 = [v28 type], v14, v15))
    {
      v16 = v9;
      v17 = sub_18BC20BD8();
      v19 = v18;

      if (v17 == a2 && v19 == a3)
      {

        result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
        v9 = v16;
        v4 = v23;
        goto LABEL_10;
      }

      v22 = sub_18BC21FD8();

      result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v9 = v16;
      v4 = v23;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    if (v10 != v8)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v20 = *v12;
      if (v8 >= v20)
      {
        goto LABEL_30;
      }

      result = sub_18B7B193C(v5 + 32 + 32 * v8, v27);
      if (v10 >= v20)
      {
        goto LABEL_31;
      }

      sub_18B7B193C(v5 + v13, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_18BAE3828(v5);
      }

      v21 = v5 + 32 * v8;
      __swift_destroy_boxed_opaque_existential_1Tm((v21 + 32));
      result = sub_18B7B1AD4(v26, (v21 + 32));
      if (v10 >= *(v5 + 16))
      {
        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v5 + v13));
      result = sub_18B7B1AD4(v27, (v5 + v13));
      *v4 = v5;
    }

    ++v8;
LABEL_10:
    ++v10;
    v12 = (v5 + 16);
    v11 = *(v5 + 16);
    v13 += 32;
    if (v10 == v11)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_18BAE41DC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_18BAE42A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_18BAE4364()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_18BC1E8B8();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_18BC1E8D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v10, qword_1EA9F8268);
  __swift_project_value_buffer(v10, qword_1EA9F8268);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_18BC1E8F8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_18BC1E4E8();
}

uint64_t sub_18BAE4654@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608, &unk_18BC47050);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v16 = &v14 - v2;
  v15 = sub_18BC1EA98();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0, &qword_18BC41D40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v14 = sub_18BC1E8D8();
  v9 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v10 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  if (!v18)
  {
    sub_18BC1DFE8();
  }

  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  sub_18BC1E9B8();
  (*(v3 + 8))(v5, v15);
  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  (*(v9 + 56))(v8, 0, 1, v14);
  v12 = sub_18BC1E398();
  (*(*(v12 - 8) + 56))(v16, 1, 1, v12);
  return sub_18BC1E3A8();
}

unint64_t sub_18BAE4A10()
{
  result = qword_1EA9D8FA8;
  if (!qword_1EA9D8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FA8);
  }

  return result;
}

unint64_t sub_18BAE4A68()
{
  result = qword_1EA9D8FB0;
  if (!qword_1EA9D8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FB0);
  }

  return result;
}

unint64_t sub_18BAE4AC0()
{
  result = qword_1EA9D8FB8;
  if (!qword_1EA9D8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FB8);
  }

  return result;
}

unint64_t sub_18BAE4B18()
{
  result = qword_1EA9D8FC0;
  if (!qword_1EA9D8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FC0);
  }

  return result;
}

unint64_t sub_18BAE4B70()
{
  result = qword_1EA9D8FC8;
  if (!qword_1EA9D8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FC8);
  }

  return result;
}

unint64_t sub_18BAE4BC4()
{
  result = qword_1EA9D8FD0;
  if (!qword_1EA9D8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FD0);
  }

  return result;
}

unint64_t sub_18BAE4C18()
{
  result = qword_1EA9D8FD8;
  if (!qword_1EA9D8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FD8);
  }

  return result;
}

unint64_t sub_18BAE4C70()
{
  result = qword_1EA9D8FE0;
  if (!qword_1EA9D8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FE0);
  }

  return result;
}

uint64_t sub_18BAE4CC4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D2420 != -1)
  {
    swift_once();
  }

  v3 = sub_18BC1E4F8();
  v4 = __swift_project_value_buffer(v3, qword_1EA9F8268);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_18BAE4DB0(uint64_t a1)
{
  v2 = sub_18BA83570();

  return MEMORY[0x1EEDB2C50](a1, v2);
}

unint64_t sub_18BAE4E00()
{
  result = qword_1EA9D8FF8;
  if (!qword_1EA9D8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8FF8);
  }

  return result;
}

uint64_t sub_18BAE4E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18B987B10;

  return MEMORY[0x1EEDB3F58](a1, a2, a3, a4);
}

uint64_t sub_18BAE4F1C(uint64_t a1)
{
  v2 = sub_18BAE4C70();

  return MEMORY[0x1EEDB3F70](a1, v2);
}

unint64_t sub_18BAE4F6C()
{
  result = qword_1EA9D9000;
  if (!qword_1EA9D9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9000);
  }

  return result;
}

unint64_t sub_18BAE4FC4()
{
  result = qword_1EA9D9008;
  if (!qword_1EA9D9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9008);
  }

  return result;
}

void sub_18BAE5018(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D90A8, &unk_18BC4C6B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v18 = sub_18BAE6EC4;
  v19 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_18BAE545C;
  v17 = &block_descriptor_42;
  v10 = _Block_copy(&aBlock);
  sub_18BC1E1A8();

  [a2 setFoundItemsHandler_];
  _Block_release(v10);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v18 = sub_18BAE6ECC;
  v19 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_18BAE556C;
  v17 = &block_descriptor_17_0;
  v13 = _Block_copy(&aBlock);
  sub_18BC1E1A8();

  [a2 setCompletionHandler_];
  _Block_release(v13);
  [a2 start];
}

uint64_t sub_18BAE52B8(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_20:
    v4 = sub_18BC219A8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x18CFFD010](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_19;
      }

      v7 = *(a1 + 8 * v5 + 32);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    sub_18BAE60B8(v7, &v18);
    ++v5;
    if (v19)
    {
      v17 = v19;
      v9 = v18;
      v16 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_18B9B6278(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      v12 = v17;
      if (v11 >= v10 >> 1)
      {
        v14 = sub_18B9B6278((v10 > 1), v11 + 1, 1, v6);
        v12 = v17;
        v6 = v14;
      }

      *(v6 + 2) = v11 + 1;
      v13 = &v6[40 * v11];
      *(v13 + 4) = v9;
      *(v13 + 40) = v12;
      *(v13 + 56) = v16;
      v5 = v8;
    }
  }

  swift_beginAccess();
  sub_18BA02284(v6);
  return swift_endAccess();
}

double sub_18BAE545C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_18BAE6F74();
  v3 = sub_18BC20D98();
  sub_18BC1E1A8();
  v2(v3);

  return result;
}

uint64_t sub_18BAE54D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D90A8, &unk_18BC4C6B0);
    return sub_18BC20EE8();
  }

  else
  {
    swift_beginAccess();
    sub_18BC1E3F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D90A8, &unk_18BC4C6B0);
    return sub_18BC20EF8();
  }
}

void sub_18BAE556C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_18BC1E1A8();
  v4 = a2;
  v3(a2);
}

uint64_t sub_18BAE55D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B9EDB00;

  return sub_18BAE6710(a1);
}

uint64_t sub_18BAE5680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return MEMORY[0x1EEDB2EB8](a1, a2, a3);
}

unint64_t sub_18BAE5738()
{
  result = qword_1EA9D9010;
  if (!qword_1EA9D9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9010);
  }

  return result;
}

unint64_t sub_18BAE5790()
{
  result = qword_1EA9D9018;
  if (!qword_1EA9D9018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D9020, qword_18BC4C580);
    sub_18BAE4C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9018);
  }

  return result;
}

uint64_t sub_18BAE5814(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_18BAE4B18();
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

uint64_t sub_18BAE58C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return MEMORY[0x1EEDB3B88](a1, a2, a3);
}

uint64_t sub_18BAE598C(uint64_t a1, int a2)
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

uint64_t sub_18BAE59D4(uint64_t result, int a2, int a3)
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

void sub_18BAE5A2C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v65 = a3;
  v66 = a4;
  v56 = a2;
  v62 = a1;
  v4 = sub_18BC1EA98();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v54 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v54 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v54 - v11;
  v12 = sub_18BC1E8B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9028, &qword_18BC4C6A0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v13 + 104);
  v20(v15, v19, v12);
  sub_18BC1E8F8();
  v63 = sub_18BC1E018();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9030, &unk_18BC498B0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v20(v15, v19, v12);
  sub_18BC1E8F8();
  v64 = sub_18BC1E038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460, &qword_18BC482F0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v20(v15, v19, v12);
  v21 = v62;
  sub_18BC1E8F8();
  v22 = sub_18BC1E038();
  v23 = [v21 url];
  if (v23)
  {
    v54 = v22;
    v24 = v55;
    v25 = v23;
    sub_18BC1EA38();

    v26 = v59;
    v27 = v60;
    v28 = v61;
    (*(v60 + 32))(v59, v24, v61);
    v29 = objc_opt_self();
    sub_18BC1E9B8();
    v30 = sub_18BC20B98();

    v31 = sub_18BC20B98();

    v32 = [v29 historyItemIdentifierForURLString:v30 profileIdentifier:v31];

    v65 = sub_18BC20BD8();
    v34 = v33;

    v35 = *(v27 + 16);
    v36 = v58;
    v35(v58, v26, v28);
    v35(v57, v36, v28);
    sub_18BC1E3F8();
    v37 = v63;
    sub_18BC1DFF8();
    v38 = *(v27 + 8);
    v38(v36, v28);
    v39 = [v21 title];
    v40 = v37;
    if (v39)
    {
      v41 = v37;
      v42 = v26;
      v43 = v39;
      v44 = sub_18BC20BD8();
      v46 = v45;

      v26 = v42;
      v40 = v41;
    }

    else
    {
      v44 = sub_18BC1E9B8();
      v46 = v50;
    }

    v67 = v44;
    v68 = v46;
    v48 = v64;
    sub_18BC1DFF8();
    sub_18BC1DFE8();
    v51 = v67;
    v52 = v68;
    if (!v68)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
    }

    v67 = v51;
    v68 = v52;
    v49 = v54;
    sub_18BC1DFF8();

    v38(v26, v28);

    v47 = v65;
  }

  else
  {

    v47 = 0;
    v34 = 0;
    v40 = 0;
    v48 = 0;
    v49 = 0;
  }

  v53 = v66;
  *v66 = v47;
  v53[1] = v34;
  v53[2] = v40;
  v53[3] = v48;
  v53[4] = v49;
}

void sub_18BAE60B8(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v54 = a1;
  v56 = a3;
  v3 = sub_18BC1EA98();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v48 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v48 - v10;
  v11 = sub_18BC1E8B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9028, &qword_18BC4C6A0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v12 + 104);
  v19(v14, v18, v11);
  sub_18BC1E8F8();
  v58 = sub_18BC1E018();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9030, &unk_18BC498B0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v19(v14, v18, v11);
  sub_18BC1E8F8();
  v55 = sub_18BC1E038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460, &qword_18BC482F0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v19(v14, v18, v11);
  v20 = v54;
  sub_18BC1E8F8();
  v21 = sub_18BC1E038();
  v22 = [v20 attributeSet];
  v23 = [v22 contentURL];

  if (v23)
  {
    v24 = v49;
    sub_18BC1EA38();

    v25 = v52;
    v26 = v57;
    v27 = v24;
    v28 = v53;
    (*(v52 + 32))(v57, v27, v53);
    v29 = [v20 uniqueIdentifier];
    v30 = sub_18BC20BD8();
    v32 = v31;

    v33 = *(v25 + 16);
    v34 = v51;
    v33(v51, v26, v28);
    v33(v50, v34, v28);
    sub_18BC1E3F8();
    sub_18BC1DFF8();
    v35 = *(v25 + 8);
    v35(v34, v28);
    v36 = [v20 attributeSet];
    v37 = [v36 title];

    if (v37)
    {
      v38 = sub_18BC20BD8();
      v40 = v39;

      v41 = v57;
    }

    else
    {
      v41 = v57;
      v38 = sub_18BC1E9B8();
      v40 = v44;
    }

    v59 = v38;
    v60 = v40;
    v43 = v55;
    sub_18BC1DFF8();
    sub_18BC1DFE8();
    v45 = v59;
    v46 = v60;
    if (!v60)
    {
      v45 = 0;
      v46 = 0xE000000000000000;
    }

    v59 = v45;
    v60 = v46;
    sub_18BC1DFF8();

    v35(v41, v28);

    v42 = v58;
  }

  else
  {

    v30 = 0;
    v32 = 0;
    v42 = 0;
    v43 = 0;
    v21 = 0;
  }

  v47 = v56;
  *v56 = v30;
  v47[1] = v32;
  v47[2] = v42;
  v47[3] = v43;
  v47[4] = v21;
}

uint64_t sub_18BAE6730()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6964ED0]) init];
  v0[6] = v1;
  v2 = v1;
  v3 = sub_18BC20D88();
  [v2 setFetchAttributes_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040, &qword_18BC428D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18BC3E410;
  v5 = [objc_opt_self() safari_safariApplicationPlatformBundleIdentifier];
  v6 = sub_18BC20BD8();
  v8 = v7;

  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_18BC20D88();

  [v2 setBundleIDs_];

  v10 = sub_18BC20B98();
  [v2 setFilterQuery_];

  v11 = [objc_opt_self() sharedApplication];
  v0[2] = &unk_1F0032D40;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (v12)
  {
    v13 = [v12 lastActiveProfileIdentifier];

    if (!v13)
    {
      sub_18BC20BD8();
      v13 = sub_18BC20B98();
    }

    v14 = v0[5];
    v15 = [objc_opt_self() coreSpotlightPageDonationIdentifierForProfileWithIdentifier_];

    v39 = sub_18BC20BD8();
    v17 = v16;

    v18 = *(v14 + 16);
    if (v18)
    {
      v37 = v2;
      v38 = v0;
      v19 = v0[5];
      v40 = MEMORY[0x1E69E7CC0];
      sub_18B7B7A54(0, v18, 0);
      v20 = v40;
      v21 = (v19 + 40);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        sub_18BC1E3F8();
        sub_18BC21AD8();
        MEMORY[0x18CFFC150](0xD000000000000029, 0x800000018BC6C670);
        MEMORY[0x18CFFC150](v22, v23);
        MEMORY[0x18CFFC150](0xD000000000000022, 0x800000018BC6C6A0);
        v24 = v17;
        MEMORY[0x18CFFC150](v39, v17);
        MEMORY[0x18CFFC150](41, 0xE100000000000000);

        v26 = *(v40 + 16);
        v25 = *(v40 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_18B7B7A54((v25 > 1), v26 + 1, 1);
        }

        *(v40 + 16) = v26 + 1;
        v27 = v40 + 16 * v26;
        *(v27 + 32) = 0;
        *(v27 + 40) = 0xE000000000000000;
        v21 += 2;
        --v18;
        v17 = v24;
      }

      while (v18);

      v2 = v37;
      v0 = v38;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v0[3] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB1C0, &qword_18BC3EF20);
    sub_18B7B0B08(&unk_1EA9D39A0, &unk_1EA9DB1C0, &qword_18BC3EF20, MEMORY[0x1E69E6310]);
    sub_18BC20AB8();

    v31 = objc_allocWithZone(MEMORY[0x1E6964E68]);
    v32 = sub_18BC20B98();

    v33 = [v31 initWithQueryString:v32 queryContext:v2];
    v0[7] = v33;

    v34 = swift_task_alloc();
    v0[8] = v34;
    *(v34 + 16) = v33;
    v35 = swift_task_alloc();
    v0[9] = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9020, qword_18BC4C580);
    *v35 = v0;
    v35[1] = sub_18BAE6CC0;

    return MEMORY[0x1EEE6DE38](v0 + 4, 0, 0, 0x7365697469746E65, 0xEE00293A726F6628, sub_18BAE6EBC, v34, v36);
  }

  else
  {

    v28 = v0[1];
    v29 = MEMORY[0x1E69E7CC0];

    return v28(v29);
  }
}

uint64_t sub_18BAE6CC0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_18BAE6E48;
  }

  else
  {

    v2 = sub_18BAE6DDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18BAE6DDC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 32);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_18BAE6E48()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18BAE6ECC(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D90A8, &unk_18BC4C6B0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18BAE54D0(a1, v1 + v4, v5);
}

unint64_t sub_18BAE6F74()
{
  result = qword_1EA9D90B0;
  if (!qword_1EA9D90B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D90B0);
  }

  return result;
}

id SFTooltip.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SFTooltip()
{
  result = qword_1EA9D9140;
  if (!qword_1EA9D9140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D9140);
  }

  return result;
}

void sub_18BAE71D4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = *(*(v1 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
    if ([v8 isDragging])
    {

      return;
    }

    v4 &= v4 - 1;
    v9 = [v8 isDecelerating];

    if (v9)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      goto LABEL_11;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_18BAE733C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  sub_18BC1E3F8();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v11 = v8;
LABEL_14:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      sub_18B7CE7E4(*(v3 + 56) + 16 * v15, v19);
      v20 = v16;
      sub_18B7CDFCC(v19, v21);
      v17 = v16;
      v13 = v11;
LABEL_15:
      sub_18B7CE840(&v20, &v22);
      v18 = v22;
      if (!v22)
      {

        return;
      }

      sub_18B7CDFCC(&v23, &v20);
      sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0);
      if (sub_18BC215C8())
      {
        break;
      }

      swift_unknownObjectUnownedLoadStrong();
      v9 = v21[0];
      ObjectType = swift_getObjectType();
      (*(v9 + 40))(a1, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_18B7E1848(&v20);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    sub_18B7E1848(&v20);

    v8 = v13;
  }

  while (v6);
LABEL_7:
  if (v7 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v20 = 0;
      v21[0] = 0;
      v21[1] = 0;
      goto LABEL_15;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_18BAE7534(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  sub_18BC1E3F8();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v11 = v8;
LABEL_14:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      sub_18B7CE7E4(*(v3 + 56) + 16 * v15, v19);
      v20 = v16;
      sub_18B7CDFCC(v19, v21);
      v17 = v16;
      v13 = v11;
LABEL_15:
      sub_18B7CE840(&v20, &v22);
      v18 = v22;
      if (!v22)
      {

        return;
      }

      sub_18B7CDFCC(&v23, &v20);
      sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0);
      if (sub_18BC215C8())
      {
        break;
      }

      swift_unknownObjectUnownedLoadStrong();
      v9 = v21[0];
      ObjectType = swift_getObjectType();
      (*(v9 + 48))(a1, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_18B7E1848(&v20);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    sub_18B7E1848(&v20);

    v8 = v13;
  }

  while (v6);
LABEL_7:
  if (v7 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v20 = 0;
      v21[0] = 0;
      v21[1] = 0;
      goto LABEL_15;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_18BAE772C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  sub_18BC1E3F8();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v11 = v8;
LABEL_14:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      sub_18B7CE7E4(*(v3 + 56) + 16 * v15, v19);
      v20 = v16;
      sub_18B7CDFCC(v19, v21);
      v17 = v16;
      v13 = v11;
LABEL_15:
      sub_18B7CE840(&v20, &v22);
      v18 = v22;
      if (!v22)
      {

        return;
      }

      sub_18B7CDFCC(&v23, &v20);
      sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0);
      if (sub_18BC215C8())
      {
        break;
      }

      swift_unknownObjectUnownedLoadStrong();
      v9 = v21[0];
      ObjectType = swift_getObjectType();
      (*(v9 + 64))(a1, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_18B7E1848(&v20);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    sub_18B7E1848(&v20);

    v8 = v13;
  }

  while (v6);
LABEL_7:
  if (v7 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v20 = 0;
      v21[0] = 0;
      v21[1] = 0;
      goto LABEL_15;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_18BAE7924(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  sub_18BC1E3F8();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v11 = v8;
LABEL_14:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      sub_18B7CE7E4(*(v3 + 56) + 16 * v15, v19);
      v20 = v16;
      sub_18B7CDFCC(v19, v21);
      v17 = v16;
      v13 = v11;
LABEL_15:
      sub_18B7CE840(&v20, &v22);
      v18 = v22;
      if (!v22)
      {

        return;
      }

      sub_18B7CDFCC(&v23, &v20);
      sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0);
      if (sub_18BC215C8())
      {
        break;
      }

      swift_unknownObjectUnownedLoadStrong();
      v9 = v21[0];
      ObjectType = swift_getObjectType();
      (*(v9 + 72))(a1, ObjectType, v9);

      swift_unknownObjectRelease();
      sub_18B7E1848(&v20);
      v8 = v13;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    sub_18B7E1848(&v20);

    v8 = v13;
  }

  while (v6);
LABEL_7:
  if (v7 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v20 = 0;
      v21[0] = 0;
      v21[1] = 0;
      goto LABEL_15;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_18BAE7B1C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 32);
  if (*(v8 + 16))
  {
    sub_18BC1E3F8();
    v9 = sub_18B7E172C(a1);
    if (v10)
    {
      sub_18B7CE7E4(*(v8 + 56) + 16 * v9, &v40);

      sub_18B7CDFCC(&v40, v42);
      swift_unknownObjectUnownedLoadStrong();
      v11 = v43;
      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 32))(ObjectType, v11, a2, a3);
      v15 = v14;
      swift_unknownObjectRelease();
      v16 = *(v4 + 32);
      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 64);
      v20 = (v17 + 63) >> 6;
      sub_18BC1E3F8();
      v21 = 0;
      if (!v19)
      {
        goto LABEL_9;
      }

      do
      {
        while (1)
        {
          v29 = v21;
LABEL_16:
          v32 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v33 = v32 | (v29 << 6);
          v34 = *(*(v16 + 48) + 8 * v33);
          sub_18B7CE7E4(*(v16 + 56) + 16 * v33, v37);
          v38 = v34;
          sub_18B7CDFCC(v37, v39);
          v35 = v34;
          v31 = v29;
LABEL_17:
          sub_18B7CE840(&v38, &v40);
          v36 = v40;
          if (!v40)
          {
            sub_18B7E1848(v42);

            return;
          }

          sub_18B7CDFCC(&v41, &v38);
          sub_18B7B0AC0(0, &qword_1EA9D5BE0, 0x1E69E58C0);
          if (sub_18BC215C8())
          {
            break;
          }

          swift_unknownObjectUnownedLoadStrong();
          v22 = v39[0];
          v23 = swift_getObjectType();
          v24 = (*(v22 + 24))(v23, v22, v13, v15);
          v26 = v25;
          swift_unknownObjectRelease();
          swift_unknownObjectUnownedLoadStrong();
          v27 = v39[0];
          v28 = swift_getObjectType();
          (*(v27 + 80))(a1, v28, v27, v24, v26);

          swift_unknownObjectRelease();
          sub_18B7E1848(&v38);
          v21 = v31;
          if (!v19)
          {
            goto LABEL_9;
          }
        }

        sub_18B7E1848(&v38);

        v21 = v31;
      }

      while (v19);
LABEL_9:
      if (v20 <= v21 + 1)
      {
        v30 = v21 + 1;
      }

      else
      {
        v30 = v20;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v29 >= v20)
        {
          v19 = 0;
          v38 = 0;
          v39[0] = 0;
          v39[1] = 0;
          goto LABEL_17;
        }

        v19 = *(v16 + 64 + 8 * v29);
        ++v21;
        if (v19)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_18BAE7E18(void (*a1)(__n128), __n128 a2)
{
  v3 = *(v2 + 24);
  v4 = *(v3 + 24);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v7 = a1;
  *(v3 + 24) = v6;
  if (v6 == 1)
  {
    a1 = swift_beginAccess();
    v8 = *(v3 + 16);
    v9 = *(v8 + 16);
    if (v9)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v10 = v8 + 40;
      do
      {
        v11 = *(v10 - 8);
        v20[0] = *(v3 + 24) > 0;
        sub_18BC1E1A8();
        v11(v20);

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  (v7)(a1);
  v12 = *(v2 + 24);
  v13 = *(v12 + 24);
  v5 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  if (v5)
  {
    goto LABEL_15;
  }

  *(v12 + 24) = v14;
  if (!v14)
  {
    swift_beginAccess();
    v15 = *(v12 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v17 = v15 + 40;
      do
      {
        v18 = *(v17 - 8);
        v19 = *(v12 + 24) > 0;
        sub_18BC1E1A8();
        v18(&v19);

        v17 += 16;
        --v16;
      }

      while (v16);
    }
  }
}

uint64_t sub_18BAE7FB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18BAE7FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BAE8044(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

void sub_18BAE8084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 24);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  *(v3 + 24) = v6;
  if (v6 == 1)
  {
    swift_beginAccess();
    v10 = *(v3 + 16);
    v11 = *(v10 + 16);
    if (v11)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v12 = v10 + 40;
      do
      {
        v13 = *(v12 - 8);
        LOBYTE(v30[0]) = *(v3 + 24) > 0;
        sub_18BC1E1A8();
        v13(v30);

        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  v14 = sub_18B7C2E68();
  v15 = sub_18B7D292C();
  v16 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v15 + v16, v30);
  v17 = v31;
  v18 = v32;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  v19 = (*(v18 + 96))(a3, v17, v18);
  v21 = v20;

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  [v14 setContentOffset_];

  if ((*(a2 + qword_1ED651628 + 32) & 1) == 0)
  {
    sub_18BA429B0(1, 0);
  }

  v22 = *(a1 + 24);
  v23 = *(v22 + 24);
  v5 = __OFSUB__(v23, 1);
  v24 = v23 - 1;
  if (v5)
  {
    goto LABEL_17;
  }

  *(v22 + 24) = v24;
  if (!v24)
  {
    swift_beginAccess();
    v25 = *(v22 + 16);
    v26 = *(v25 + 16);
    if (v26)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v27 = v25 + 40;
      do
      {
        v28 = *(v27 - 8);
        v29 = *(v22 + 24) > 0;
        sub_18BC1E1A8();
        v28(&v29);

        v27 += 16;
        --v26;
      }

      while (v26);
    }
  }
}

uint64_t sub_18BAE8310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a1;
  v3[22] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  v3[23] = swift_task_alloc();
  v4 = type metadata accessor for TabEntity(0);
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0, &qword_18BC432A0);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v5 = sub_18BC1EC08();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_18BC20F28();
  v3[33] = sub_18BC20F18();
  v7 = sub_18BC20ED8();
  v3[34] = v7;
  v3[35] = v6;

  return MEMORY[0x1EEE6DFA0](sub_18BAE84E8, v7, v6);
}

uint64_t sub_18BAE84E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v0[36] = v3, v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Create new tab via view-based action.", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[28];

    v0[2] = v0;
    v0[7] = v8;
    v0[3] = sub_18BAE8864;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9158, &unk_18BC4C800);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_18BAE8DDC;
    v0[13] = &block_descriptor_71;
    v0[14] = v9;
    [v3 createNewTabWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1DE48();
    v11 = __swift_project_value_buffer(v10, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v10 - 8) + 16))(v12, v11, v10);
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_18BAE8864()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_18BAE896C, v2, v1);
}

uint64_t sub_18BAE896C()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];

  sub_18BAEBF48(v3, v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v5 = v0[27];
    v6 = &unk_1EA9D3AE0;
    v7 = &qword_18BC432A0;
  }

  else
  {
    v8 = v0[31];
    v9 = v0[32];
    v10 = v0[29];
    v11 = v0[30];
    v12 = v0[24];
    v13 = v0[25];
    v14 = v0[23];
    (*(v11 + 32))(v9, v0[27], v10);
    (*(v11 + 16))(v8, v9, v10);
    sub_18BA7A354(v8, v14);
    if ((*(v13 + 48))(v14, 1, v12) != 1)
    {
      v20 = v0[32];
      v21 = v0[30];
      v25 = v0[29];
      v22 = v0[26];
      v23 = v0[21];
      sub_18BA5F428(v0[23], v22);
      v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6F28, &qword_18BC474B0);
      v23[4] = sub_18BAEBFB8(&unk_1EA9D9160, &qword_1EA9D6F28, &qword_18BC474B0);
      __swift_allocate_boxed_opaque_existential_0Tm(v23);
      sub_18BA5F958(&qword_1EA9D69C0, type metadata accessor for TabEntity, &unk_18BC48CB8);
      sub_18BC1DF88();
      swift_unknownObjectRelease();
      sub_18BA5F48C(v22);
      (*(v21 + 8))(v20, v25);

      v19 = v0[1];
      goto LABEL_9;
    }

    v15 = v0[23];
    (*(v0[30] + 8))(v0[32], v0[29]);
    v6 = &qword_1EA9D6EC8;
    v7 = &unk_18BC472E0;
    v5 = v15;
  }

  sub_18B988BAC(v5, v6, v7);
  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v16 = sub_18BC1DE48();
  v17 = __swift_project_value_buffer(v16, qword_1EA9F8578);
  sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
  swift_allocError();
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  swift_willThrow();
  swift_unknownObjectRelease();

  v19 = v0[1];
LABEL_9:

  return v19();
}

uint64_t sub_18BAE8D30(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAE8310(a1, a2, v2);
}

uint64_t sub_18BAE8DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0, &qword_18BC432A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_18BC1EBE8();
    v11 = sub_18BC1EC08();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v12 = sub_18BC1EC08();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_18BAEBF48(v6, v9);
  sub_18BAEBF48(v9, *(*(v10 + 64) + 40));
  return swift_continuation_resume();
}

uint64_t sub_18BAE8F78(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6EC8, &unk_18BC472E0);
  *(v3 + 184) = swift_task_alloc();
  v5 = type metadata accessor for TabEntity(0);
  *(v3 + 192) = v5;
  *(v3 + 200) = *(v5 - 8);
  *(v3 + 208) = swift_task_alloc();
  v6 = sub_18BC1EA98();
  *(v3 + 216) = v6;
  *(v3 + 224) = *(v6 - 8);
  *(v3 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500, &qword_18BC478E0);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0, &qword_18BC432A0);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v7 = sub_18BC1EC08();
  *(v3 + 272) = v7;
  *(v3 + 280) = *(v7 - 8);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = *a2;
  sub_18BC20F28();
  *(v3 + 320) = sub_18BC20F18();
  v9 = sub_18BC20ED8();
  *(v3 + 328) = v9;
  *(v3 + 336) = v8;

  return MEMORY[0x1EEE6DFA0](sub_18BAE91FC, v9, v8);
}

uint64_t sub_18BAE91FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], *(v0 + 344) = v3, v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Create new tab for assistant via view-based action.", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = *(v0 + 240);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);

    sub_18BC1E0A8();
    v11 = *(v10 + 48);
    v12 = v11(v8, 1, v9);
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    if (v12)
    {
      v15 = *(v0 + 248);
      sub_18B988BAC(*(v0 + 240), &qword_1EA9D4500, &qword_18BC478E0);
      (*(v14 + 56))(v15, 1, 1, v13);
      v16 = 0;
    }

    else
    {
      v22 = *(v0 + 240);
      (*(v14 + 16))(*(v0 + 232), v22, *(v0 + 216));
      sub_18B988BAC(v22, &qword_1EA9D4500, &qword_18BC478E0);
      v23 = sub_18BC1E9E8();
      v24 = [v23 safari_originalDataAsString];

      if (!v24)
      {
        sub_18BC20BD8();
        v24 = sub_18BC20B98();
      }

      v25 = [v24 safari_bestURLForUserTypedString];

      if (v25)
      {
        sub_18BC1EA38();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = *(v0 + 248);
      v29 = *(v0 + 224);
      v28 = *(v0 + 232);
      v30 = *(v0 + 216);
      (*(v29 + 56))(v27, v26, 1, v30);
      v31 = *(v29 + 8);
      v31(v28, v30);
      if (v11(v27, 1, v30) == 1)
      {
        v16 = 0;
      }

      else
      {
        v32 = *(v0 + 248);
        v33 = *(v0 + 216);
        v16 = sub_18BC1E9E8();
        v31(v32, v33);
      }
    }

    *(v0 + 352) = v16;
    v34 = *(v0 + 264);
    sub_18BC1E0A8();
    v35 = *(v0 + 360);
    *(v0 + 16) = v0;
    *(v0 + 56) = v34;
    *(v0 + 24) = sub_18BAE9784;
    v36 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9158, &unk_18BC4C800);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_18BAE8DDC;
    *(v0 + 104) = &block_descriptor_43;
    *(v0 + 112) = v36;
    [v3 createNewTabWithURL:v16 isPrivate:v35 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v17 = sub_18BC1DE48();
    v18 = __swift_project_value_buffer(v17, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v17 - 8) + 16))(v19, v18, v17);
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_18BAE9784()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);

  return MEMORY[0x1EEE6DFA0](sub_18BAE988C, v2, v1);
}

uint64_t sub_18BAE988C()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];

  sub_18BAEBF48(v3, v4);
  v5 = (*(v2 + 48))(v4, 1, v1);
  v6 = v0[44];
  if (v5 == 1)
  {
    sub_18B988BAC(v0[32], &unk_1EA9D3AE0, &qword_18BC432A0);
  }

  else
  {
    v7 = v0[36];
    v8 = v0[37];
    v9 = v0[34];
    v10 = v0[35];
    v11 = v0[24];
    v12 = v0[25];
    v13 = v0[23];
    (*(v10 + 32))(v8, v0[32], v9);

    (*(v10 + 16))(v7, v8, v9);
    sub_18BA7A354(v7, v13);
    if ((*(v12 + 48))(v13, 1, v11) != 1)
    {
      v19 = v0[37];
      v20 = v0[35];
      v24 = v0[34];
      v21 = v0[26];
      v22 = v0[21];
      sub_18BA5F428(v0[23], v21);
      v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6F28, &qword_18BC474B0);
      v22[4] = sub_18BAEBFB8(&unk_1EA9D9160, &qword_1EA9D6F28, &qword_18BC474B0);
      __swift_allocate_boxed_opaque_existential_0Tm(v22);
      sub_18BA5F958(&qword_1EA9D69C0, type metadata accessor for TabEntity, &unk_18BC48CB8);
      sub_18BC1DF88();
      swift_unknownObjectRelease();
      sub_18BA5F48C(v21);
      (*(v20 + 8))(v19, v24);

      v18 = v0[1];
      goto LABEL_9;
    }

    v14 = v0[23];
    (*(v0[35] + 8))(v0[37], v0[34]);
    sub_18B988BAC(v14, &qword_1EA9D6EC8, &unk_18BC472E0);
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v15 = sub_18BC1DE48();
  v16 = __swift_project_value_buffer(v15, qword_1EA9F8578);
  sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
  swift_allocError();
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  swift_willThrow();
  swift_unknownObjectRelease();

  v18 = v0[1];
LABEL_9:

  return v18();
}

uint64_t sub_18BAE9CA4(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAE8F78(a1, a2, v2);
}

uint64_t SFSiriLinkCoordinator.openTabInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4C750;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8084B0();
  return sub_18BC1F028();
}

uint64_t sub_18BAE9E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_18BC1EC08();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  v3[11] = swift_task_alloc();
  sub_18BC20F28();
  v3[12] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAE9F24, v6, v5);
}

uint64_t sub_18BAE9F24()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Open tab", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[5];

    sub_18BC1E0A8();
    (*(v11 + 16))(v8, v9, v10);
    sub_18BA5F48C(v9);
    v13 = sub_18BC1EBC8();
    (*(v11 + 8))(v8, v10);
    [v3 openTabWithUUID_];

    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
    v12[4] = sub_18BAEBFB8(&qword_1EA9D45B8, &qword_1EA9D45C0, &qword_18BC44410);
    __swift_allocate_boxed_opaque_existential_0Tm(v12);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v14 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v15 = sub_18BC1DE48();
    v16 = __swift_project_value_buffer(v15, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v15 - 8) + 16))(v17, v16, v15);
    swift_willThrow();

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_18BAEA274(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAE9E00(a1, a2, v2);
}

uint64_t sub_18BAEA320(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return v8(a1, v5);
}

uint64_t sub_18BAEA424(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BAEA320(a1, a2, v6);
}

uint64_t SFSiriLinkCoordinator.closeTabInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4C770;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8086B4();
  return sub_18BC1F028();
}

uint64_t sub_18BAEA59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_18BC1EC08();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  v3[11] = swift_task_alloc();
  sub_18BC20F28();
  v3[12] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAEA6C0, v6, v5);
}

uint64_t sub_18BAEA6C0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Close tab", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[5];

    sub_18BC1E0A8();
    (*(v11 + 16))(v8, v9, v10);
    sub_18BA5F48C(v9);
    v13 = sub_18BC1EBC8();
    (*(v11 + 8))(v8, v10);
    [v3 closeTabWithUUID_];

    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
    v12[4] = sub_18BAEBFB8(&qword_1EA9D45B8, &qword_1EA9D45C0, &qword_18BC44410);
    __swift_allocate_boxed_opaque_existential_0Tm(v12);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v14 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v15 = sub_18BC1DE48();
    v16 = __swift_project_value_buffer(v15, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v15 - 8) + 16))(v17, v16, v15);
    swift_willThrow();

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_18BAEAA10(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAEA59C(a1, a2, v2);
}

uint64_t sub_18BAEAABC(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return v8(a1, v5);
}

uint64_t sub_18BAEABC0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BAEAABC(a1, a2, v6);
}

uint64_t sub_18BAEACBC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(sub_18BC1F038());
  a1();
  return sub_18BC1F028();
}

uint64_t sub_18BAEAD48(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  v5 = sub_18BC1EC08();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  type metadata accessor for TabEntity(0);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = *a2;
  sub_18BC20F28();
  *(v3 + 104) = sub_18BC20F18();
  v7 = sub_18BC20ED8();
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;

  return MEMORY[0x1EEE6DFA0](sub_18BAEAE74, v7, v6);
}

uint64_t sub_18BAEAE74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v0[16] = v3, v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Load URL in tab", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[5];

    sub_18BC1E0A8();
    (*(v11 + 16))(v9, v8, v10);
    sub_18BA5F48C(v8);
    v13 = sub_18BC1EBC8();
    (*(v11 + 8))(v9, v10);
    [v3 openTabWithUUID_];

    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
    v12[4] = sub_18BAEBFB8(&qword_1EA9D45B8, &qword_1EA9D45C0, &qword_18BC44410);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v12);
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_18BAEB21C;
    v16 = v0[11];
    v17 = v0[12];

    return sub_18BA7ED88(boxed_opaque_existential_0Tm, v16, v17);
  }

  else
  {

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v19 = sub_18BC1DE48();
    v20 = __swift_project_value_buffer(v19, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v19 - 8) + 16))(v21, v20, v19);
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_18BAEB21C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_18BAEB3E4;
  }

  else
  {
    v5 = sub_18BAEB358;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_18BAEB358()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BAEB3E4()
{
  v1 = *(v0 + 40);

  swift_unknownObjectRelease();
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18BAEB470(uint64_t a1, _OWORD *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAEAD48(a1, a2, v2);
}

uint64_t SFSiriLinkCoordinator.closeTabsInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4C7A0;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B809DA4();
  return sub_18BC1F028();
}

uint64_t sub_18BAEB5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = *(type metadata accessor for TabEntity(0) - 8);
  v3[11] = swift_task_alloc();
  v4 = sub_18BC1EC08();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_18BC20F28();
  v3[15] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAEB71C, v6, v5);
}

uint64_t sub_18BAEB71C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    sub_18BC1E1A8();
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      sub_18BC1E0A8();
      v8 = *(v0[6] + 16);

      *(v7 + 4) = v8;

      _os_log_impl(&dword_18B7AC000, v5, v6, "Closing %ld tabs", v7, 0xCu);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    else
    {
    }

    sub_18BC1E0A8();
    v13 = v0[5];
    v14 = *(v13 + 16);
    if (v14)
    {
      v28 = v3;
      v15 = v0[13];
      v16 = v0[10];
      v30 = MEMORY[0x1E69E7CC0];
      sub_18B855A90(0, v14, 0);
      v17 = v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v29 = *(v16 + 72);
      do
      {
        v18 = v0[14];
        v20 = v0[11];
        v19 = v0[12];
        sub_18BA82420(v17, v20);
        (*(v15 + 16))(v18, v20, v19);
        sub_18BA5F48C(v20);
        v22 = *(v30 + 16);
        v21 = *(v30 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_18B855A90((v21 > 1), v22 + 1, 1);
        }

        v23 = v0[14];
        v24 = v0[12];
        *(v30 + 16) = v22 + 1;
        (*(v15 + 32))(v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v22, v23, v24);
        v17 += v29;
        --v14;
      }

      while (v14);

      v3 = v28;
    }

    else
    {
    }

    v25 = v0[7];
    v26 = sub_18BC20D88();

    [v3 closeTabsWithUUIDs_];

    v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0, &qword_18BC44410);
    v25[4] = sub_18BAEBFB8(&qword_1EA9D45B8, &qword_1EA9D45C0, &qword_18BC44410);
    __swift_allocate_boxed_opaque_existential_0Tm(v25);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v12 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v9 = sub_18BC1DE48();
    v10 = __swift_project_value_buffer(v9, qword_1EA9F8578);
    sub_18BA5F958(&qword_1EA9D4620, MEMORY[0x1E6959D38], MEMORY[0x1E6959D48]);
    swift_allocError();
    (*(*(v9 - 8) + 16))(v11, v10, v9);
    swift_willThrow();

    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_18BAEBBB8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAEB5CC(a1, a2, v2);
}

uint64_t sub_18BAEBC64(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B987B10;

  return v8(a1, v5);
}

uint64_t sub_18BAEBD68(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BAEBC64(a1, a2, v6);
}

uint64_t sub_18BAEBE30(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BAEBC64(a1, a2, v6);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x18CFFEEE0);
  }

  return result;
}

uint64_t sub_18BAEBF48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0, &qword_18BC432A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BAEBFB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_18BAEC014()
{
  v1 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint;
  v2 = *(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField) leadingAnchor];
    v5 = [*(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_contentView) leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_18BAEC0E4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
  *v9 = 1;
  v9[2] = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0xE000000000000000;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didBeginRetitling];
  *v10 = CGRectMake;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didCancelRetitling];
  *v11 = CGRectMake;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_retitleHandler];
  *v12 = CGRectMake;
  v12[1] = 0;
  v13 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_cancelRetitlingButton;
  type metadata accessor for BlurrableButton();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_contentView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  UIEdgeInsetsMakeWithEdges();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v24 = result;
    v25 = &v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics];
    UIEdgeInsetsMakeWithEdges();
    *v25 = v16;
    *(v25 + 1) = v18;
    *(v25 + 2) = v20;
    *(v25 + 3) = v22;
    *(v25 + 4) = v24;
    *(v25 + 5) = v26;
    *(v25 + 6) = v27;
    *(v25 + 7) = v28;
    *(v25 + 8) = v29;
    *(v25 + 72) = xmmword_18BC4C810;
    *(v25 + 88) = xmmword_18BC4C820;
    v30 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField;
    *&v4[v30] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
    *&v4[OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint] = 0;
    v31 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton;
    *&v4[v31] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    v33.receiver = v4;
    v33.super_class = type metadata accessor for TabOverviewNavigationBarTitleView();
    v32 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
    sub_18BAEC5D0();

    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_18BAEC364(void *a1)
{
  v3 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
  *v3 = 1;
  v3[2] = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0xE000000000000000;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 7) = 0;
  *(v3 + 8) = 0xE000000000000000;
  v4 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didBeginRetitling];
  *v4 = CGRectMake;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didCancelRetitling];
  *v5 = CGRectMake;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_retitleHandler];
  *v6 = CGRectMake;
  v6[1] = 0;
  v7 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_cancelRetitlingButton;
  type metadata accessor for BlurrableButton();
  *&v1[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_contentView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  UIEdgeInsetsMakeWithEdges();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v18 = result;
    v19 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics];
    UIEdgeInsetsMakeWithEdges();
    *v19 = v10;
    *(v19 + 1) = v12;
    *(v19 + 2) = v14;
    *(v19 + 3) = v16;
    *(v19 + 4) = v18;
    *(v19 + 5) = v20;
    *(v19 + 6) = v21;
    *(v19 + 7) = v22;
    *(v19 + 8) = v23;
    *(v19 + 72) = xmmword_18BC4C810;
    *(v19 + 88) = xmmword_18BC4C820;
    v24 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField;
    *&v1[v24] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
    *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint] = 0;
    v25 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton;
    *&v1[v25] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    v29.receiver = v1;
    v29.super_class = type metadata accessor for TabOverviewNavigationBarTitleView();
    v26 = objc_msgSendSuper2(&v29, sel_initWithCoder_, a1);
    v27 = v26;
    if (v26)
    {
      v28 = v26;
      sub_18BAEC5D0();
    }

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18BAEC5D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D91C0, &qword_18BC4C990);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v63 - v3;
  v5 = sub_18BC1F6C8();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_18BC21628();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  *&v11 = MEMORY[0x1EEE9AC00](v10 - 8).n128_u64[0];
  v13 = &v63 - v12;
  v14 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_cancelRetitlingButton];
  [v14 addTarget:v1 action:sel_cancelRetitling forControlEvents:{0x2000, v11}];
  sub_18BC216D8();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC508], v6);
  sub_18BC21638();
  sub_18BC21788();
  v15 = [objc_opt_self() configurationWithScale_];
  sub_18BC215F8();
  v16 = sub_18BC21808();
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  sub_18BC21828();
  [v14 setPointerInteractionEnabled_];
  LODWORD(v17) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v17];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setHideStandardTitle_];
  v18 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField];
  v19 = sub_18BC20B98();
  [v18 setAccessibilityIdentifier_];

  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setAutocapitalizationType_];
  [v18 setBorderStyle_];
  [v18 setClearButtonMode_];
  [v18 setDelegate_];
  v20 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics + 32];
  v21 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics];
  v64 = &v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics];
  [v18 setFont_];
  [v18 setReturnKeyType_];
  [v18 &selRef:0 showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:? extensionIdentifier:? + 2];
  [v18 _setRoundedRectBackgroundCornerRadius_];
  v22 = objc_opt_self();
  v23 = [v22 tertiarySystemFillColor];
  [v18 _setBackgroundFillColor_];

  v24 = [v22 clearColor];
  [v18 _setBackgroundStrokeColor_];

  v25 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton];
  sub_18BAED0AC(v13);
  sub_18BC21828();
  v26 = sub_18BC20B98();
  [v25 setAccessibilityIdentifier_];

  sub_18B7B0AC0(0, &qword_1EA9D91C8, 0x1E69DCAB0);
  sub_18BC1F3C8();
  v27 = sub_18BC20028();
  (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
  v28 = sub_18BC211E8();
  [v25 setHoverStyle_];

  [v25 setPointerInteractionEnabled_];
  [v25 setShowsMenuAsPrimaryAction_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_contentView];
  [v1 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  v63 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_18BC4B720;
  v31 = [v25 leadingAnchor];
  v32 = [v29 &selRef_initWithRow_itemRange_ + 1];
  v33 = [v31 constraintEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [v25 trailingAnchor];
  v35 = [v29 &selRef_stringByAppendingPathExtension_ + 4];
  v36 = [v34 constraintLessThanOrEqualToAnchor_];

  *(v30 + 40) = v36;
  v37 = [v25 centerYAnchor];
  v38 = [v29 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v30 + 48) = v39;
  *(v30 + 56) = sub_18BAEC014();
  v40 = [v18 centerYAnchor];
  v41 = [v29 centerYAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v30 + 64) = v42;
  v43 = [v18 widthAnchor];
  v44 = v64;
  v45 = [v43 constraintEqualToConstant_];

  LODWORD(v46) = 1144750080;
  [v45 setPriority_];
  *(v30 + 72) = v45;
  v47 = [v14 leadingAnchor];
  v48 = [v18 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:v44[11]];

  *(v30 + 80) = v49;
  v50 = [v14 centerYAnchor];
  v51 = [v29 centerYAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v30 + 88) = v52;
  v53 = [v14 trailingAnchor];
  v54 = [v29 trailingAnchor];
  v55 = [v53 constraintLessThanOrEqualToAnchor_];

  *(v30 + 96) = v55;
  sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
  v56 = sub_18BC20D88();

  [v63 activateConstraints_];

  v57 = swift_allocObject();
  *(v57 + 16) = v1;
  v58 = objc_opt_self();
  v59 = swift_allocObject();
  *(v59 + 16) = sub_18BAEF4D4;
  *(v59 + 24) = v57;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_18B7D1EC4;
  *(v60 + 24) = v59;
  aBlock[4] = sub_18B7D1E94;
  aBlock[5] = v60;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  aBlock[3] = &block_descriptor_64_1;
  v61 = _Block_copy(aBlock);
  v62 = v1;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v58 performWithoutAnimation_];
  _Block_release(v61);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_18BAED0AC@<X0>(uint64_t a2@<X8>)
{
  sub_18BC21798();
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  sub_18BC21708();
  sub_18BC21678();
  v5 = sub_18BC20B98();
  v6 = [objc_opt_self() systemImageNamed_];

  sub_18BC21788();
  sub_18BC21648();
  sub_18BC21698();
  v7 = *MEMORY[0x1E69DDD40];
  v8 = objc_opt_self();
  v9 = [v8 configurationWithTextStyle:v7 scale:2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18BC41E60;
  *(v10 + 32) = [v3 secondaryLabelColor];
  *(v10 + 40) = [v3 secondarySystemFillColor];
  sub_18B7B0AC0(0, &unk_1EA9D91D0, 0x1E69DC888);
  v11 = sub_18BC20D88();

  v12 = [v8 configurationWithPaletteColors_];

  v13 = [v9 configurationByApplyingConfiguration_];
  sub_18BC215F8();
  sub_18BC216E8();
  v14 = sub_18BC21808();
  v15 = *(*(v14 - 8) + 56);

  return v15(a2, 0, 1, v14);
}

uint64_t sub_18BAED30C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_18BC1E7F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E758();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  sub_18BC1E748();
  v16 = v3[6];
  if (v16)
  {
    v39 = v6;
    v18 = v3[3];
    v17 = v3[4];
    v19 = v3[5];
    if (v18)
    {
      v37 = a1;
      v35 = *MEMORY[0x1E69DDD40];
      v20 = v17;
      v21 = objc_opt_self();
      v36 = v19;
      v22 = v21;
      v38 = v20;
      sub_18B82B844(v18, v20, v36, v16);
      v23 = v18;
      v34 = v23;
      v35 = [v22 configurationWithTextStyle:v35 scale:1];
      v24 = [v23 imageWithConfiguration_];
      v25 = [objc_opt_self() textAttachmentWithImage_];

      v26 = objc_opt_self();
      v27 = v25;
      v28 = [v26 attributedStringWithAttachment_];
      sub_18BC1E788();

      sub_18BC1E6E8();
      sub_18BC1E6F8();
      v29 = *(v7 + 8);
      v30 = v9;
      v31 = v39;
      v29(v30, v39);
      v29(v12, v31);
      sub_18BC1E718();

      v6 = v31;
      v32 = v34;

      v29(v15, v6);
      v19 = v36;
    }

    else
    {
      v38 = v17;
      sub_18BC1E3F8();
      v32 = 0;
      v6 = v39;
    }

    v40 = v19;
    v41 = v16;
    sub_18BC1E3F8();
    MEMORY[0x18CFFC150](0x209480E220, 0xA500000000000000);
    sub_18BC1E7E8();
    sub_18BC1E768();
    sub_18BC1E718();

    (*(v7 + 8))(v15, v6);
  }

  sub_18BC1E3F8();
  sub_18BC1E7E8();
  sub_18BC1E768();
  sub_18BC1E718();
  return (*(v7 + 8))(v15, v6);
}

uint64_t sub_18BAED6E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18BAEF0E0(v7, v9) & 1;
}

void sub_18BAED744(uint64_t a1)
{
  v2 = v1;
  v85 = a1;
  v80 = sub_18BC1E708();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52F8, &unk_18BC455C0);
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v71 = &v68 - v4;
  v82 = sub_18BC1E7F8();
  v77 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v68 - v8;
  v75 = sub_18BC1E758();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v81 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5300, &qword_18BC43170);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v68 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730, &unk_18BC41F60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  v22 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 16];
  v98 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
  v23 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 32];
  v24 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 48];
  v99 = v22;
  v100 = v23;
  v101 = v24;
  v25 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField];
  v102 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 64];
  v26 = BYTE1(v98) != 0;
  v84 = BYTE1(v98);
  v27 = BYTE1(v98) > 1u;
  sub_18B9EA6E8(&v98, &v92);
  [v25 setEnablesReturnKeyAutomatically_];
  v28 = BYTE2(v98);
  v83 = v26 | BYTE2(v98);
  if (v83)
  {
    sub_18BC1E3F8();
    v29 = sub_18BC20B98();

    [v25 setPlaceholder_];

    v30 = v85;
    if ((v28 & 1) == 0 || *(v85 + 16) && (*(v85 + 2) & 1) == 0)
    {
      sub_18BC1E3F8();
      v31 = sub_18BC20B98();

      [v25 setText_];
    }

    v32 = v2;
    if (v84)
    {
      sub_18BC21818();
      v33 = sub_18BC21808();
      if ((*(*(v33 - 8) + 48))(v15, 1, v33))
      {
        sub_18B9A2744(v15, v18);
        sub_18BC21828();
        sub_18B9A27B4(v15);
      }

      else
      {
        sub_18B99F6AC(v84);
        sub_18BC21788();
        sub_18BC21828();
      }
    }
  }

  else
  {
    v34 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton];
    sub_18BC21818();
    v35 = sub_18BC21808();
    v32 = v2;
    if ((*(*(v35 - 8) + 48))(v21, 1, v35))
    {
      sub_18B9A2744(v21, v18);
      sub_18BC21828();
      sub_18B9A27B4(v21);
    }

    else
    {
      sub_18BAED30C(v81);
      sub_18BC1E7E8();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v68 - 2) = v37;
      swift_getKeyPath();
      sub_18B9EA798();
      v38 = v71;
      sub_18BC1E7C8();

      v69 = *(v77 + 1);
      v69(v6, v82);
      v92 = *&v32[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_metrics + 32];
      v70 = v34;
      v39 = v72;
      v40 = v76;
      sub_18BC1E7D8();
      (*(v74 + 8))(v38, v40);
      v41 = v79;
      v42 = v78;
      v43 = v80;
      (*(v79 + 104))(v78, *MEMORY[0x1E69686E8], v80);
      sub_18BAAD724();
      v44 = v75;
      v77 = v32;
      v45 = v12;
      v46 = v81;
      sub_18BC1E908();
      (*(v41 + 8))(v42, v43);
      v69(v39, v82);
      v47 = v73;
      (*(v73 + 8))(v46, v44);
      (*(v47 + 56))(v45, 0, 1, v44);
      v32 = v77;
      sub_18BC216C8();
      sub_18BC21828();
    }

    v30 = v85;
  }

  v48 = *(v30 + 16);
  if (v48 && (v49 = *(v30 + 1), (*(v30 + 2) & 1 | (*(v30 + 1) != 0)) == (v83 & 1)))
  {
    v56 = v32;
    v59 = &selRef__adjustedActiveItemFrame_pinActiveItem_squishActiveItem_centerExpandedItem_;
  }

  else
  {
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v51 = swift_allocObject();
    *(v51 + 16) = v32;
    v52 = v100;
    *(v51 + 40) = v99;
    *(v51 + 56) = v52;
    *(v51 + 72) = v101;
    *(v51 + 88) = v102;
    *(v51 + 24) = v98;
    v53 = objc_opt_self();
    v54 = swift_allocObject();
    v54[2] = inited;
    v54[3] = sub_18BAEF3D4;
    v54[4] = v51;
    v90 = sub_18B7D80AC;
    v91 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_18B7B0DB0;
    v89 = &block_descriptor_44;
    v55 = _Block_copy(&aBlock);
    sub_18B9EA6E8(&v98, &v92);
    v56 = v32;
    v57 = v32;
    sub_18BC1E1A8();

    v96 = CGRectMake;
    v97 = 0;
    v92 = MEMORY[0x1E69E9820];
    v93 = 1107296256;
    v94 = sub_18B8043A0;
    v95 = &block_descriptor_36_0;
    v58 = _Block_copy(&v92);

    v59 = &selRef__adjustedActiveItemFrame_pinActiveItem_squishActiveItem_centerExpandedItem_;
    [v53 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v58);
    _Block_release(v55);

    if (!v48)
    {
      goto LABEL_20;
    }

    v49 = *(v85 + 1);
  }

  if ((v84 != 0) != (v49 == 0))
  {
    sub_18B9EA744(&v98);
    return;
  }

LABEL_20:
  type metadata accessor for AnimationSettings();
  v60 = swift_initStaticObject();
  v61 = swift_allocObject();
  *(v61 + 16) = v56;
  v62 = v100;
  *(v61 + 40) = v99;
  *(v61 + 56) = v62;
  *(v61 + 72) = v101;
  *(v61 + 88) = v102;
  *(v61 + 24) = v98;
  v63 = objc_opt_self();
  v64 = swift_allocObject();
  v64[2] = v60;
  v64[3] = sub_18BAEF4C8;
  v64[4] = v61;
  v90 = sub_18B7E767C;
  v91 = v64;
  aBlock = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  v88 = sub_18B7B0DB0;
  v89 = &block_descriptor_46_1;
  v65 = _Block_copy(&aBlock);
  sub_18B9EA6E8(&v98, &v92);
  v66 = v56;
  sub_18BC1E1A8();

  v96 = CGRectMake;
  v97 = 0;
  v92 = MEMORY[0x1E69E9820];
  v93 = 1107296256;
  v94 = sub_18B8043A0;
  v95 = &block_descriptor_49_0;
  v67 = _Block_copy(&v92);

  [v63 v59[8]];
  _Block_release(v67);
  _Block_release(v65);
  sub_18B9EA744(&v98);
}

id sub_18BAEE39C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_cancelRetitlingButton);
  if (*(a2 + 1))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  if (*(a2 + 1))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 3.0;
  }

  if (*(a2 + 1))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.8;
  }

  [*(a1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_cancelRetitlingButton) setAlpha_];
  v6 = sub_18BC0F2C4();
  [v6 setValue_];

  CGAffineTransformMakeScale(&v8, v5, v5);
  return [v2 setTransform_];
}

id sub_18BAEE4BC()
{
  v1 = v0;
  v2 = [v0 overlays];
  v3 = MEMORY[0x1E695F050];
  if (!v2 || (v4 = v2, sub_18BC214B8(), v6 = v40, v5 = v41, v8 = v42, v7 = v43, v4, (v44 & 1) != 0))
  {
    v6 = *v3;
    v5 = v3[1];
    v8 = v3[2];
    v7 = v3[3];
  }

  v9 = [v1 overlays];
  if (!v9 || (v10 = v9, sub_18BC214C8(), v11 = v45, v12 = v46, v13 = v47, v14 = v48, v10, (v49 & 1) != 0))
  {
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v14 = v3[3];
  }

  v15 = [v1 effectiveUserInterfaceLayoutDirection];
  v16 = [v1 effectiveUserInterfaceLayoutDirection];
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  if (v16)
  {
    v17 = v6;
    v18 = v5;
    v19 = v8;
    v20 = v7;
  }

  if (v15)
  {
    v7 = v14;
    v8 = v13;
    v5 = v12;
    v6 = v11;
  }

  v21 = v17;
  v51.origin.x = v6;
  v22 = v18;
  v51.origin.y = v5;
  v23 = v19;
  v51.size.width = v8;
  v24 = v20;
  v51.size.height = v7;
  CGRectIsNull(v51);
  v52.origin.x = v21;
  v52.origin.y = v22;
  v52.size.width = v23;
  v52.size.height = v24;
  CGRectIsNull(v52);
  v53.origin.x = v6;
  v53.origin.y = v5;
  v53.size.width = v8;
  v53.size.height = v7;
  CGRectGetMaxX(v53);
  [v1 bounds];
  CGRectGetWidth(v54);
  v55.origin.x = v21;
  v55.origin.y = v22;
  v55.size.width = v23;
  v55.size.height = v24;
  CGRectGetMinX(v55);
  UIEdgeInsetsAdd();
  UIEdgeInsetsReplace(v25, v26, v27, v28);
  [v1 safeAreaInsets];
  UIEdgeInsetsMax();
  UIEdgeInsetsMax();
  v30 = v29;
  v32 = v31;
  v33 = *&v1[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_contentView];
  [v1 bounds];
  v38 = UIEdgeInsetsInsetRect(v34, v35, v36, v37, v30, v32);

  return [v33 setFrame_];
}

void sub_18BAEE7F4()
{
  [*&v0[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField] textRectForBounds_];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  Height = v7;
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v19.size.width = 100.0;
    v19.size.height = 32.0;
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    MaxX = CGRectGetMaxX(v19);
    v20.origin.x = v2;
    v20.origin.y = v4;
    v20.size.width = v6;
    v20.size.height = Height;
    v10 = MaxX - CGRectGetMaxX(v20);
    v21.origin.x = v2;
    v21.origin.y = v4;
    v21.size.width = v6;
    v21.size.height = Height;
    MinY = CGRectGetMinY(v21);
    v22.origin.x = v2;
    v22.origin.y = v4;
    v22.size.width = v6;
    v22.size.height = Height;
    Width = CGRectGetWidth(v22);
    v23.origin.x = v2;
    v23.origin.y = v4;
    v23.size.width = v6;
    v23.size.height = Height;
    Height = CGRectGetHeight(v23);
    v2 = v10;
    v4 = MinY;
    v6 = Width;
  }

  v24.origin.x = v2;
  v24.origin.y = v4;
  v24.size.width = v6;
  v24.size.height = Height;
  v13 = -CGRectGetMinX(v24);
  v14 = sub_18BAEC014();
  [v14 constant];
  v16 = v15;

  if (v16 != v13)
  {
    v17 = *&v0[OBJC_IVAR___SFTabOverviewNavigationBarTitleView____lazy_storage___textFieldLeadingConstraint];

    [v17 setConstant_];
  }
}

double sub_18BAEE994()
{
  v1 = v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration;
  if (*(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2) == 1)
  {
    v2 = *(v1 + 16);
    v8[0] = *v1;
    v8[1] = v2;
    v3 = *(v1 + 48);
    v8[2] = *(v1 + 32);
    v8[3] = v3;
    v9 = *(v1 + 64);
    v10 = v8[0];
    v11 = 0;
    *&v15[13] = v9;
    *v15 = *(v1 + 51);
    v14 = *(v1 + 35);
    v13 = *(v1 + 19);
    v12 = *(v1 + 3);
    sub_18B9EA6E8(v8, v7);
    sub_18BAEF2DC(&v10);
    sub_18B9EA744(&v10);
    [*(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField) resignFirstResponder];
    v4 = *(v0 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didCancelRetitling);
    v5 = sub_18BC1E1A8();
    v4(v5);
  }

  return result;
}

void sub_18BAEEAC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*(Strong + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2) & 1) == 0)
    {
      v4 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField;
      [*(Strong + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField) becomeFirstResponder];
      [*&v3[v4] selectAll];
    }
  }
}

double sub_18BAEEC2C(void *a1)
{
  v2 = v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration;
  if (*(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2) == 1)
  {
    v3 = [a1 text];
    if (v3)
    {
      v4 = v3;
      v5 = sub_18BC20BD8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = *(v2 + 16);
    v13[0] = *v2;
    v13[1] = v8;
    v9 = *(v2 + 48);
    v13[2] = *(v2 + 32);
    v13[3] = v9;
    v14 = *(v2 + 64);
    v15 = v13[0];
    v16 = 0;
    *&v20[13] = v14;
    *v20 = *(v2 + 51);
    v19 = *(v2 + 35);
    v18 = *(v2 + 19);
    v17 = *(v2 + 3);
    sub_18B9EA6E8(v13, v12);
    sub_18BAEF2DC(&v15);
    sub_18B9EA744(&v15);
    v10 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_retitleHandler);
    sub_18BC1E1A8();
    v10(v5, v7);
  }

  return result;
}

id sub_18BAEEE00(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TabOverviewNavigationBarTitleView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18BAEEF70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_18BAEEFB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari11TabSwitcherC7ProfileVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18BAEF038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BAEF080(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_18BAEF0E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || a1[1] != a2[1] || ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_18BC21FD8();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  v12 = *(a2 + 3);
  v11 = *(a2 + 4);
  v14 = *(a2 + 5);
  v13 = *(a2 + 6);
  if (v10)
  {
    if (v13)
    {
      v15 = a1;
      v16 = a2;
      sub_18B82B844(*(a2 + 3), *(a2 + 4), v14, v13);
      sub_18B82B844(v7, v8, v9, v10);
      v17 = sub_18BBDC17C(v7, v8, v9, v10, v12, v11, v14, v13);

      sub_18B7E9C58(v7, v8, v9, v10);
      a1 = v15;
      a2 = v16;
      if (v17)
      {
        goto LABEL_16;
      }

      return 0;
    }

LABEL_14:
    sub_18B82B844(*(a2 + 3), *(a2 + 4), v14, v13);
    sub_18B82B844(v7, v8, v9, v10);
    sub_18B7E9C58(v7, v8, v9, v10);
    sub_18B7E9C58(v12, v11, v14, v13);
    return 0;
  }

  if (v13)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (*(a1 + 7) == *(a2 + 7) && *(a1 + 8) == *(a2 + 8))
  {
    return 1;
  }

  return sub_18BC21FD8();
}

uint64_t sub_18BAEF2DC(__int128 *a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration;
  v4 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 48);
  v17 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 32);
  v18 = v4;
  v19 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 64);
  v5 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 16);
  v16[0] = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration);
  v16[1] = v5;
  v20[2] = v17;
  v20[3] = v4;
  v21 = v19;
  v20[0] = v16[0];
  v20[1] = v5;
  v23 = v19;
  v22[2] = v17;
  v22[3] = v4;
  v22[0] = v16[0];
  v22[1] = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  *(v3 + 64) = *(a1 + 8);
  *(v3 + 32) = v8;
  *(v3 + 48) = v9;
  *v3 = v6;
  *(v3 + 16) = v7;
  sub_18B9EA6E8(v16, v14);
  sub_18B9EA6E8(v2, v14);
  sub_18B9EA744(v22);
  v10 = *(v3 + 48);
  v14[2] = *(v3 + 32);
  v14[3] = v10;
  v15 = *(v3 + 64);
  v11 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v11;
  sub_18B9EA6E8(v14, v13);
  LOBYTE(v2) = sub_18BAEF0E0(v14, v16);
  sub_18B9EA744(v14);
  if ((v2 & 1) == 0)
  {
    sub_18BAED744(v20);
  }

  return sub_18B9EA744(v16);
}

id sub_18BAEF3D4()
{
  v1 = *(v0 + 16);
  if (*(v0 + 26) & 1 | (*(v0 + 25) != 0))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (*(v0 + 26) & 1 | (*(v0 + 25) != 0))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField) setAlpha_];
  v4 = *(v1 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton);

  return [v4 setAlpha_];
}

uint64_t objectdestroyTm_2()
{

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

void sub_18BAEF4D4()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  sub_18BAED744(v0);
}

uint64_t sub_18BAEF534(__int128 *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), void (*a4)(_OWORD *, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v10 = a1[2];
  v11 = a1[3];
  v12 = *a1;
  v34 = a1[1];
  v35 = v10;
  v36[0] = v11;
  *(v36 + 9) = *(a1 + 57);
  v33 = v12;
  a3(&v37, a2);
  if (v37)
  {
    v27 = v37;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v28 = v38;
    (*v5)(a2, &v27);
    sub_18B988BAC(&v37, &unk_1EA9D92A0, &qword_18BC44DD0);
  }

  if (*a1)
  {
    v19 = *a1;
    v21 = *(a1 + 24);
    v22 = *(a1 + 40);
    v23 = *(a1 + 56);
    v24 = *(a1 + 72);
    v20 = *(a1 + 8);
    v13 = *(v5 + 24);
    *&v18[9] = *(v36 + 9);
    v17[2] = v35;
    *v18 = v36[0];
    v17[0] = v33;
    v17[1] = v34;
    sub_18BA93A88(v17, v25);
    v13(a2, &v19);
    v25[2] = v35;
    v26[0] = v36[0];
    *(v26 + 9) = *(v36 + 9);
    v25[0] = v33;
    v25[1] = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v5 + 16);
    a4(v25, a2, isUniquelyReferenced_nonNull_native);
    sub_18B988BAC(a1, &unk_1EA9D92A0, &qword_18BC44DD0);
    *(v5 + 16) = v16;
  }

  return sub_18B7DFF64(a2, a5);
}

uint64_t sub_18BAEF6FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v3);
  sub_18B7CA054(a1, v16 - v4, &unk_1EA9D92F0, &qword_18BC42990);
  *(v1 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement) = sub_18BC22058();
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
  [v1 setAlpha_];
  [v1 setCenter_];
  [v1 setBounds_];
  v6 = (a1 + v5[20]);
  v7 = v6[1];
  v16[0] = *v6;
  v16[1] = v7;
  v16[2] = v6[2];
  [v1 setTransform_];
  v8 = [v1 layer];
  [v8 setZPosition_];

  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  v10 = _s7SectionVMa_1(0);
  v11 = _s4ItemVMa_2(0);
  v12 = sub_18B82AD34(&qword_1EA9D4EF0, _s7SectionVMa_1, &unk_18BC4BB44);
  v13 = sub_18B82AD34(&unk_1EA9D9310, _s4ItemVMa_2, &unk_18BC4D250);
  v14 = sub_18B8103B0();
  return v9(a1, v10, v11, &type metadata for SFFluidTabOverviewSupplementary, v12, v13, v14);
}

uint64_t sub_18BAEF984(__n128 a1)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return swift_weakAssign();
  }

  v3 = Strong;
  MEMORY[0x1EEE9AC00](Strong);
  v6[2] = v1;
  v6[3] = &off_1EE463558;
  swift_beginAccess();
  result = sub_18BB0B470(sub_18BB1092C, v6);
  v5 = *(*(v3 + 32) + 16);
  if (v5 >= result)
  {
    sub_18BB7A674(result, v5);
    swift_endAccess();

    return swift_weakAssign();
  }

  __break(1u);
  return result;
}

uint64_t sub_18BAEFA70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300, &qword_18BC42E80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = *(*v0 + 176);
  swift_beginAccess();
  sub_18B7CA054(v0 + v11, v3, &unk_1EA9D9300, &qword_18BC42E80);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    v13 = *(*v0 + 184);
    swift_beginAccess();
    sub_18B7CA054(v0 + v13, v10, &unk_1EA9D4F40, &unk_18BC42E70);
    if (v12(v3, 1, v4) != 1)
    {
      sub_18B988BAC(v3, &unk_1EA9D9300, &qword_18BC42E80);
    }
  }

  else
  {
    sub_18B7CF39C(v3, v10, &unk_1EA9D4F40, &unk_18BC42E70);
  }

  v14 = *(*v0 + 152);
  swift_beginAccess();
  sub_18B7FD070(v10, v0 + v14, &unk_1EA9D4F40, &unk_18BC42E70);
  result = swift_endAccess();
  v16 = v0[3];
  if (v16)
  {
    sub_18B7CA054(v0 + v14, v7, &unk_1EA9D4F40, &unk_18BC42E70);
    v17 = v16;
    sub_18BAEF6FC(v7);

    return sub_18B988BAC(v7, &unk_1EA9D4F40, &unk_18BC42E70);
  }

  return result;
}

void sub_18BAEFD44(char *a1, uint64_t a2)
{
  v4 = &a1[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier];
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_18BC1E3F8();
    if (Strong)
    {
      v8 = [a1 superview];
      if (!v8 || (v9 = v8, sub_18B7B0AC0(0, &qword_1EA9D46F0, 0x1E69DD250), v10 = Strong, v11 = sub_18BC215C8(), v9, v10, (v11 & 1) == 0))
      {
        [Strong addSubview_];
      }
    }

    [a1 setHidden_];
    swift_beginAccess();
    if (*(*(a2 + 24) + 16) && (sub_18B831970(v6, v5), (v12 & 1) != 0))
    {
      swift_endAccess();
      sub_18BC1E1A8();

      swift_beginAccess();
      sub_18BB5EC0C(&v13, a1);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      __break(1u);
    }
  }

  else
  {
    [a1 removeFromSuperview];
  }
}

void sub_18BAEFF0C(uint64_t a1)
{
  v56 = _s4ItemVMa(0);
  v2 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9268, &unk_18BC4CB48);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9298, &qword_18BC4CB58);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v51 = a1;
  sub_18B7CA054(a1, &v48 - v17, &qword_1EA9D9298, &qword_18BC4CB58);
  v19 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v18, 1, v19) == 1)
  {
    sub_18B988BAC(v18, &qword_1EA9D9298, &qword_18BC4CB58);
    v21 = 0;
  }

  else
  {
    v21 = *&v18[*(v19 + 20)];
    sub_18B7DFF64(v18, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
  }

  v22 = &v58[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewRegistration];
  swift_beginAccess();
  v23 = v20(v22, 1, v19);
  v55 = 0;
  v53 = v21;
  if (!v23)
  {
    v24 = *&v22[*(v19 + 20)];
    v55 = v24;
    if (v21)
    {
      sub_18B7B0AC0(0, &qword_1EA9D9228, 0x1E69DD258);
      v25 = v24;
      v26 = v53;
      v49 = v4;
      v27 = v26;
      v28 = sub_18BC215C8();

      v4 = v49;
      if (v28)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v29 = v24;
    }

    [v58 addChildViewController_];
  }

LABEL_10:
  v30 = 1;
  if (!v20(v22, 1, v19))
  {
    sub_18B7DF638(v22, v57, _s4ItemVMa);
    v30 = 0;
  }

  v31 = *(v2 + 56);
  v31(v57, v30, 1, v56);
  sub_18B7CA054(v51, v15, &qword_1EA9D9298, &qword_18BC4CB58);
  if (v20(v15, 1, v19) == 1)
  {
    sub_18B988BAC(v15, &qword_1EA9D9298, &qword_18BC4CB58);
    v32 = 1;
    v33 = v52;
    v34 = v54;
  }

  else
  {
    v34 = v54;
    sub_18B7DF638(v15, v54, _s4ItemVMa);
    sub_18B7DFF64(v15, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
    v32 = 0;
    v33 = v52;
  }

  v35 = v56;
  v31(v34, v32, 1, v56);
  v36 = *(v4 + 48);
  v37 = v57;
  sub_18B7CA054(v57, v6, &qword_1EA9D7CD0, &unk_18BC49EB0);
  sub_18B7CA054(v34, &v6[v36], &qword_1EA9D7CD0, &unk_18BC49EB0);
  v38 = v34;
  v39 = *(v2 + 48);
  if (v39(v6, 1, v35) == 1)
  {
    sub_18B988BAC(v38, &qword_1EA9D7CD0, &unk_18BC49EB0);
    sub_18B988BAC(v37, &qword_1EA9D7CD0, &unk_18BC49EB0);
    if (v39(&v6[v36], 1, v35) == 1)
    {
      sub_18B988BAC(v6, &qword_1EA9D7CD0, &unk_18BC49EB0);
      v40 = v53;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  sub_18B7CA054(v6, v33, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if (v39(&v6[v36], 1, v35) == 1)
  {
    sub_18B988BAC(v54, &qword_1EA9D7CD0, &unk_18BC49EB0);
    sub_18B988BAC(v37, &qword_1EA9D7CD0, &unk_18BC49EB0);
    sub_18B7DFF64(v33, _s4ItemVMa);
LABEL_20:
    sub_18B988BAC(v6, &qword_1EA9D9268, &unk_18BC4CB48);
    v40 = v53;
LABEL_21:
    v41 = v58;
    sub_18BB0C608();
    v42 = *&v41[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent];
    *&v41[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent] = 0;

    sub_18BAF309C();
    goto LABEL_22;
  }

  v45 = &v6[v36];
  v46 = v50;
  sub_18B82FE24(v45, v50, _s4ItemVMa);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  sub_18B7DFF64(v46, _s4ItemVMa);
  sub_18B988BAC(v54, &qword_1EA9D7CD0, &unk_18BC49EB0);
  sub_18B988BAC(v37, &qword_1EA9D7CD0, &unk_18BC49EB0);
  sub_18B7DFF64(v33, _s4ItemVMa);
  sub_18B988BAC(v6, &qword_1EA9D7CD0, &unk_18BC49EB0);
  v40 = v53;
  if ((updated & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  sub_18BAF309C();
  v43 = v55;
  if (v55)
  {
    if (!v40 || (sub_18B7B0AC0(0, &qword_1EA9D9228, 0x1E69DD258), v40 = v40, v43 = v43, v44 = sub_18BC215C8(), v43, v40, (v44 & 1) == 0))
    {
      [v43 didMoveToParentViewController_];
    }
  }
}

double sub_18BAF06E0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 57) = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id sub_18BAF0728()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520, &unk_18BC41850);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    result = UIAccessibilityIsReduceMotionEnabled();
    if (result)
    {
      if (*(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition))
      {
        return 0;
      }

      else
      {
        v5 = sub_18B7C07CC();
        v6 = *&v5[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

        v7 = sub_18B7EBEFC();
        v8 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
        swift_beginAccess();
        sub_18B7CA054(v7 + v8, v3, &qword_1EA9D4520, &unk_18BC41850);

        v9 = _s17PinchGestureStateVMa(0);
        v10 = (*(*(v9 - 8) + 48))(v3, 1, v9) == 1;
        sub_18B988BAC(v3, &qword_1EA9D4520, &unk_18BC41850);
        return v10;
      }
    }
  }

  return result;
}

void sub_18BAF08E4(_BYTE *a1, void *a2, uint64_t a3)
{
  v5 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_relinquishBorrowedCapsuleView);
    v10 = Strong;
    sub_18BC1E1A8();

    v9(*a2);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = sub_18B7C07CC();

    v14 = *&v13[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];
    LOBYTE(v13) = *a1;
    v15 = _s4ItemVMa(0);
    v16 = v15[7];
    v17 = v5[5];
    v18 = sub_18BC1EC08();
    (*(*(v18 - 8) + 16))(&v7[v17], &a1[v16], v18);
    v19 = a1[v15[8]];
    v20 = a1[v15[11]];
    v21 = *&a1[v15[12]];
    v22 = v15[15];
    v23 = *&a1[v15[14]];
    *v7 = v13;
    v7[v5[6]] = v19;
    v7[v5[7]] = v20;
    *&v7[v5[8]] = v21;
    v24 = *&a1[v22];
    v25 = *&a1[v22 + 8];
    *&v7[v5[9]] = v23;
    v26 = &v7[v5[10]];
    *v26 = v24;
    v26[1] = v25;
    v27 = &v14[qword_1EA9F8520];
    swift_beginAccess();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BB59DF8(v7, v29);
    v30[0] = v29[0];
    v30[1] = v29[1];
    v30[2] = v29[2];
    v31[0] = v29[3];
    *(v31 + 9) = *(&v29[3] + 9);
    if (*&v29[0])
    {
      v32 = *&v30[0];
      v34 = *(&v29[1] + 8);
      v35 = *(&v29[2] + 8);
      v36 = *(&v29[3] + 8);
      v37 = BYTE8(v29[4]);
      v33 = *(v29 + 8);
      (*v27)(v7, &v32);
      sub_18B988BAC(v30, &unk_1EA9D92A0, &qword_18BC44DD0);
    }

    sub_18B7DFF64(v7, _s4ItemVMa_4);
    swift_endAccess();
  }
}

void *sub_18BAF0BBC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9298, &qword_18BC4CB58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_18B7CA054(a1, v8, &qword_1EA9D9298, &qword_18BC4CB58);
    v11 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewRegistration;
    swift_beginAccess();
    sub_18B7CA054(v10 + v11, v5, &qword_1EA9D9298, &qword_18BC4CB58);
    swift_beginAccess();
    sub_18B7EC8D0(v8, v10 + v11, &qword_1EA9D9298, &qword_18BC4CB58);
    swift_endAccess();
    sub_18BAEFF0C(v5);

    sub_18B988BAC(v5, &qword_1EA9D9298, &qword_18BC4CB58);
    return sub_18B988BAC(v8, &qword_1EA9D9298, &qword_18BC4CB58);
  }

  return result;
}

uint64_t sub_18BAF0D3C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = _s4ItemVMa(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_6;
  }

  v16 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  v17 = Strong;
  swift_beginAccess();
  sub_18B7DF638(v17 + v16, v7, _s7ContentVMa);

  MEMORY[0x1EEE9AC00](v18);
  *(&v24 - 2) = a1;
  sub_18BB17290(sub_18B9EB468, (&v24 - 4), v10);
  sub_18B7DFF64(v7, _s7ContentVMa);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_6:
    sub_18B988BAC(v10, &qword_1EA9D7CD0, &unk_18BC49EB0);
    goto LABEL_7;
  }

  sub_18B82FE24(v10, v14, _s4ItemVMa);
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = *(v19 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewProvider);
    v21 = v19;
    sub_18BC1E1A8();

    v20(v14);

    return sub_18B7DFF64(v14, _s4ItemVMa);
  }

  sub_18B7DFF64(v14, _s4ItemVMa);
LABEL_7:
  v23 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
}

double sub_18BAF10B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_relinquishBorrowedContentViewRegistration);
    v6 = Strong;
    sub_18BC1E1A8();

    v5(a1);
  }

  return result;
}

void sub_18BAF113C(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = 3;
    if (a1)
    {
      v5 = 1;
    }

    v6 = *(Strong + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState);
    *&v4[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState] = v5;
    if (v5 != v6)
    {
      sub_18BAFE7A0(v6);
    }
  }
}

void sub_18BAF11B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_18BAF29C4();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = sub_18B7C07CC();

    v6 = OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_didDeferContentUpdate;
    if (v5[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_didDeferContentUpdate] == 1)
    {
      sub_18B7ED1D8();
      v5[v6] = 0;
    }
  }
}

id sub_18BAF1260(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = sub_18BB001AC(a1);

  return v5;
}

void sub_18BAF12CC(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_18B7C5C10();

    v6 = 0.011;
    if (a1)
    {
      v6 = 0.8;
    }

    v7 = &v5[OBJC_IVAR___SFTabOverviewDisplayItem_state];
    v8 = *&v5[OBJC_IVAR___SFTabOverviewDisplayItem_state];
    v9 = v5[OBJC_IVAR___SFTabOverviewDisplayItem_state + 8];
    v10 = v5[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];
    v11 = *&v5[OBJC_IVAR___SFTabOverviewDisplayItem_state + 16];
    v12 = v5[OBJC_IVAR___SFTabOverviewDisplayItem_state + 24];
    v13 = *&v5[OBJC_IVAR___SFTabOverviewDisplayItem_state + 32];
    *v7 = 18.0;
    *(v7 + 8) = 0;
    *(v7 + 9) = a1 & 1;
    v7[2] = v6;
    *(v7 + 24) = 1;
    v7[4] = 0.9;
    v14 = 256;
    if (!v10)
    {
      v14 = 0;
    }

    v15[0] = v8;
    v15[1] = v14 | v9;
    v15[2] = v11;
    v15[3] = v12;
    v15[4] = v13;
    sub_18B9E2784(v15);
  }
}

void *sub_18BAF13C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, char *))
{
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v19 - v8;
  v10 = _s4ItemVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF638(v15 + v16, v6, _s7ContentVMa);
    v17 = _s4ItemVMa_4(0);
    MEMORY[0x1EEE9AC00](v17);
    v19[-2] = v18;
    sub_18BB17290(a3, &v19[-4], v9);
    sub_18B7DFF64(v6, _s7ContentVMa);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      return sub_18B988BAC(v9, &qword_1EA9D7CD0, &unk_18BC49EB0);
    }

    else
    {
      sub_18B82FE24(v9, v13, _s4ItemVMa);
      sub_18BB05234(v13);

      return sub_18B7DFF64(v13, _s4ItemVMa);
    }
  }

  return result;
}

uint64_t sub_18BAF1674(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_18B7C5C10();
    sub_18B7C9974();
    v7 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18BC3E3E0;
    *(inited + 32) = sub_18B7CC278();

    v13 = a1;
    MEMORY[0x1EEE9AC00](v9);
    v12[2] = &v13;
    v10 = sub_18B9B8B10(sub_18BB11758, v12, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_18BAF17B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_18B7C5C10();
    sub_18B7C9974();
    v7 = v6;

    v8 = sub_18B7CEA3C();
    if (v8)
    {
      v9 = v8;
      v10 = off_1EFF1E068;
      type metadata accessor for TabOverview();
      v11 = v10();

      v7 = v9;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v16 = a1;
    MEMORY[0x1EEE9AC00](v13);
    v15[2] = &v16;
    v12 = sub_18B9B8B10(sub_18BB115E4, v15, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_18BAF18FC(char a1, uint64_t a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_18BAFBEC4(a1 & 1, a3);
  }
}

void sub_18BAF1968(uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_18BAFC1FC(v15, a3, a4);
    v13 = v15[1];
    v14 = v15[0];
    v9 = v16;
    v10 = v17;

    v12 = v13;
    v11 = v14;
  }

  else
  {
    v9 = 0;
    v11 = 0uLL;
    v10 = 2;
    v12 = 0uLL;
  }

  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
}

uint64_t sub_18BAF1A18(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v4 = Strong;
  v5 = sub_18B7C5C10();

  v6 = *&v5[OBJC_IVAR___SFTabOverviewDisplayItem_state];
  v7 = v5[OBJC_IVAR___SFTabOverviewDisplayItem_state + 8];
  v8 = v5[OBJC_IVAR___SFTabOverviewDisplayItem_state + 9];
  v9 = *&v5[OBJC_IVAR___SFTabOverviewDisplayItem_state + 16];
  v10 = v5[OBJC_IVAR___SFTabOverviewDisplayItem_state + 24];
  v11 = *&v5[OBJC_IVAR___SFTabOverviewDisplayItem_state + 32];

  if (a2 < 1.0)
  {
    return 1;
  }

  else
  {
    return (v11 == 1.0) & ~((v6 != 0.0) | v7 | ~v8 | (v9 != 1.0) | v10);
  }
}

void sub_18BAF1AF8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState);
    *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState] = 1;
    if (v4 != 1)
    {
      sub_18BAFE7A0(v4);
    }
  }
}

void sub_18BAF1BA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsResetLayoutAfterMovingToWindow) == 1)
    {
      v3 = Strong;
      v4 = [Strong view];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      [v4 layoutIfNeeded];

      Strong = v3;
    }
  }
}

void sub_18BAF1C3C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a4(a1, a2 & 1);
  }
}

double sub_18BAF1CB4(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_reducedMotionTransitionObserver];
  sub_18BC1E1A8();

  v4(a1);

  return result;
}

uint64_t sub_18BAF1D28(char *a1, uint64_t a2)
{
  v5 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a2 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  if (!*(a2 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration))
  {
    v44 = v7;
    v45 = v2;
    v46 = a2;
    v12 = sub_18B7C07CC();
    v13 = *&v12[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v14 = *a1;
    v15 = v5[7];
    v16 = v8[5];
    v17 = sub_18BC1EC08();
    (*(*(v17 - 8) + 16))(&v10[v16], &a1[v15], v17);
    v18 = a1[v5[8]];
    v19 = a1[v5[11]];
    v20 = *&a1[v5[12]];
    v21 = *&a1[v5[14]];
    v22 = &a1[v5[15]];
    *v10 = v14;
    v10[v8[6]] = v18;
    v10[v8[7]] = v19;
    *&v10[v8[8]] = v20;
    v23 = *v22;
    v24 = *(v22 + 1);
    *&v10[v8[9]] = v21;
    v25 = &v10[v8[10]];
    *v25 = v23;
    v25[1] = v24;
    v26 = &v13[qword_1EA9F8520];
    swift_beginAccess();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BB59DF8(v10, v62);
    v63 = v62[0];
    v64 = v62[1];
    v65 = v62[2];
    v66[0] = v62[3];
    *(v66 + 9) = *(&v62[3] + 9);
    if (*&v62[0])
    {
      *v67 = v63;
      *&v67[24] = *(&v62[1] + 8);
      *&v67[40] = *(&v62[2] + 8);
      *&v67[56] = *(&v62[3] + 8);
      v67[72] = BYTE8(v62[4]);
      *&v67[8] = *(v62 + 8);
      (*v26)(v10, v67);
      sub_18B7DFF64(v10, _s4ItemVMa_4);
      swift_endAccess();

      v52 = v65;
      v53[0] = v66[0];
      *(v53 + 9) = *(v66 + 9);
      v50 = v63;
      v51 = v64;
      sub_18BA93A88(&v50, &v58);
      sub_18BA18474();
      v27 = v11[3];
      v56 = v11[2];
      v57[0] = v27;
      *(v57 + 9) = *(v11 + 57);
      v28 = v11[1];
      v54 = *v11;
      v55 = v28;
      v29 = v66[0];
      v30 = v65;
      v31 = v66[0];
      v11[2] = v65;
      v11[3] = v29;
      *(v11 + 57) = *(v66 + 9);
      v32 = v64;
      v33 = v63;
      v34 = v64;
      *v11 = v63;
      v11[1] = v32;
      *(v61 + 9) = *(v66 + 9);
      v60 = v30;
      v61[0] = v31;
      v58 = v33;
      v59 = v34;
      sub_18BA93A88(&v58, v48);
      sub_18B988BAC(&v54, &unk_1EA9D92A0, &qword_18BC44DD0);
      sub_18BA181B8();
      sub_18B988BAC(&v63, &unk_1EA9D92A0, &qword_18BC44DD0);
      v35 = &v63;
    }

    else
    {
      sub_18B7DFF64(v10, _s4ItemVMa_4);
      swift_endAccess();

      v36 = *(v45 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleViewProvider);
      sub_18BC1E1A8();
      v36(v67, a1);
      v60 = *&v67[32];
      v61[0] = *&v67[48];
      *(v61 + 9) = *&v67[57];
      v58 = *v67;
      v59 = *&v67[16];

      if (!*v67)
      {
        return 0;
      }

      v48[2] = v60;
      v49[0] = v61[0];
      *(v49 + 9) = *(v61 + 9);
      v48[0] = v58;
      v48[1] = v59;
      sub_18B7CA054(v67, &v54, &unk_1EA9D92A0, &qword_18BC44DD0);
      sub_18BA93A88(v48, &v54);
      sub_18BA18474();
      v37 = v11[3];
      v52 = v11[2];
      v53[0] = v37;
      *(v53 + 9) = *(v11 + 57);
      v38 = v11[1];
      v50 = *v11;
      v51 = v38;
      v39 = *&v67[48];
      v11[2] = *&v67[32];
      v11[3] = v39;
      *(v11 + 57) = *&v67[57];
      v40 = *&v67[16];
      *v11 = *v67;
      v11[1] = v40;
      *(v57 + 9) = *(v61 + 9);
      v56 = v60;
      v57[0] = v61[0];
      v54 = v58;
      v55 = v59;
      sub_18BA93A88(&v54, &v47);
      sub_18B988BAC(&v50, &unk_1EA9D92A0, &qword_18BC44DD0);
      sub_18BA181B8();
      sub_18B988BAC(v67, &unk_1EA9D92A0, &qword_18BC44DD0);
      v41 = v44;
      sub_18B7DF638(a1, v44, _s4ItemVMa);
      swift_beginAccess();
      sub_18BAEF534(v67, v41, sub_18BB59EEC, sub_18BAA76A0, _s4ItemVMa);
      swift_endAccess();
      v35 = v67;
    }

    sub_18B988BAC(v35, &unk_1EA9D92A0, &qword_18BC44DD0);
  }

  return 1;
}

void sub_18BAF228C(unsigned __int8 *a1)
{
  v3 = _s4ItemVMa(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v58 = v1;
  v11 = sub_18B7C07CC();
  v12 = *&v11[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v13 = *a1;
  v14 = v4[9];
  v15 = v6[5];
  v16 = sub_18BC1EC08();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v55 = v14;
  v52 = v18;
  v53 = v16;
  v51 = v17 + 16;
  (v18)(&v10[v15], &a1[v14]);
  v19 = a1[v4[10]];
  v20 = a1[v4[13]];
  v21 = *&a1[v4[14]];
  v22 = *&a1[v4[16]];
  v23 = &a1[v4[17]];
  v56 = v13;
  *v10 = v13;
  v24 = v6[6];
  v49 = v19;
  v10[v24] = v19;
  v25 = v6[7];
  v47 = v20;
  v10[v25] = v20;
  v26 = v6[8];
  v48 = v21;
  *&v10[v26] = v21;
  v27 = *v23;
  v28 = *(v23 + 1);
  *&v10[v6[9]] = v22;
  v29 = &v10[v6[10]];
  v46 = v27;
  *v29 = v27;
  v29[1] = v28;
  v30 = &v12[qword_1EA9F8520];
  swift_beginAccess();
  v31 = *(v30 + 2);
  v50 = v28;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();

  if (*(v31 + 16) && (v32 = sub_18BB8B258(v10), (v33 & 1) != 0))
  {
    v34 = (*(v31 + 56) + 80 * v32);
    v68 = *v34;
    v36 = v34[2];
    v35 = v34[3];
    v37 = *(v34 + 57);
    v69 = v34[1];
    v70 = v36;
    *(v71 + 9) = v37;
    v71[0] = v35;
    sub_18BA93A88(&v68, &v64);
    sub_18B7DFF64(v10, _s4ItemVMa_4);

    sub_18BB11480(&v68);
  }

  else
  {

    sub_18B7DFF64(v10, _s4ItemVMa_4);
    v38 = v58;
    v39 = *(v58 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleViewProvider);
    sub_18BC1E1A8();
    v39(&v68, a1);
    v66 = v70;
    v67[0] = v71[0];
    *(v67 + 9) = *(v71 + 9);
    v64 = v68;
    v65 = v69;

    if (v68)
    {
      v40 = v57;
      sub_18B7DF638(a1, v57, _s4ItemVMa);
      swift_beginAccess();
      v60[2] = v66;
      v61[0] = v67[0];
      *(v61 + 9) = *(v67 + 9);
      v60[0] = v64;
      v60[1] = v65;
      v62[2] = v66;
      v63[0] = v67[0];
      *(v63 + 9) = *(v67 + 9);
      v62[0] = v64;
      v62[1] = v65;
      sub_18BA93A88(v62, v59);
      sub_18BA93A88(v60, v59);
      sub_18BAEF534(&v68, v40, sub_18BB59EEC, sub_18BAA76A0, _s4ItemVMa);
      swift_endAccess();
      v41 = *(*(v38 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem) + OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher);
      v42 = v54;
      v52(&v54[v6[5]], &a1[v55], v53);
      *v42 = v56;
      v42[v6[6]] = v49;
      v42[v6[7]] = v47;
      *&v42[v6[8]] = v48;
      *&v42[v6[9]] = v22;
      v43 = &v42[v6[10]];
      v44 = v50;
      *v43 = v46;
      v43[1] = v44;
      swift_beginAccess();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v45 = v41;
      sub_18BAEF534(&v68, v42, sub_18BB59DF8, sub_18BAA74F8, _s4ItemVMa_4);
      swift_endAccess();
      sub_18B988BAC(&v68, &unk_1EA9D92A0, &qword_18BC44DD0);
    }
  }
}

uint64_t sub_18BAF2800(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationTransitionsByItem;
  swift_beginAccess();
  if (*(*(v2 + v7) + 16))
  {
    sub_18BC1E3F8();
    sub_18BB8B29C(a1);
    if (v8)
    {
      sub_18BC1E1A8();

      sub_18B99B2C4();
    }

    else
    {
    }
  }

  sub_18B7DF638(a1, v6, _s4ItemVMa);
  v9 = (v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleRegistrations);
  swift_beginAccess();
  sub_18BB59EEC(v6, &v12);
  if (v12)
  {
    v18 = v12;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v19 = v13;
    (*v9)(v6, &v18);
    sub_18B988BAC(&v12, &unk_1EA9D92A0, &qword_18BC44DD0);
  }

  sub_18B7DFF64(v6, _s4ItemVMa);
  return swift_endAccess();
}

void sub_18BAF29C4()
{
  v1 = v0;
  v71 = _s4ItemVMa_4(0);
  v59 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - v5;
  v65 = _s4ItemVMa(0);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v56 - v11;
  v12 = sub_18B7C07CC();
  v13 = *&v12[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v14 = &v13[qword_1EA9F8520];
  swift_beginAccess();
  v15 = *(v14 + 2);
  sub_18BC1E1A8();
  swift_bridgeObjectRetain_n();
  sub_18BC1E1A8();

  v16 = sub_18BBA0D50(v15);

  v17 = (v1 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleRegistrations);
  swift_beginAccess();
  v57 = v17;
  v56 = (v17 + 2);
  v18 = sub_18BC1E3F8();
  v19 = sub_18BBA0B04(v18);
  v20 = 0;
  v22 = v19 + 56;
  v21 = *(v19 + 56);
  v66 = v19;
  v23 = 1 << *(v19 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v70 = v16 + 56;
  v72 = v16;
  v60 = v26;
  v61 = v19 + 56;
  v64 = v6;
  if ((v24 & v21) == 0)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v29 = v62;
      sub_18B7DF638(*(v66 + 48) + *(v63 + 72) * (v28 | (v20 << 6)), v62, _s4ItemVMa);
      v30 = v69;
      sub_18B82FE24(v29, v69, _s4ItemVMa);
      v68 = *v30;
      v31 = v65;
      v32 = *(v65 + 28);
      v33 = v71;
      v34 = *(v71 + 20);
      v35 = sub_18BC1EC08();
      v36 = *(*(v35 - 8) + 16);
      v37 = v64;
      v67 = v35;
      v36(&v64[v34], &v30[v32]);
      v38 = v30[v31[8]];
      v39 = v30[v31[11]];
      v40 = *&v30[v31[12]];
      v41 = v31[14];
      v42 = v31[15];
      v43 = v37;
      v44 = *&v30[v41];
      *v37 = v68;
      v37[v33[6]] = v38;
      v37[v33[7]] = v39;
      *&v37[v33[8]] = v40;
      *&v37[v33[9]] = v44;
      v45 = *&v30[v42 + 8];
      v46 = (v43 + v33[10]);
      *v46 = *&v30[v42];
      v46[1] = v45;
      v47 = v72;
      if (*(v72 + 16))
      {
        break;
      }

      sub_18BC1E3F8();
      sub_18BC1E3F8();
LABEL_7:
      sub_18B7DFF64(v43, _s4ItemVMa_4);
      sub_18B7DFF64(v69, _s4ItemVMa);
      v26 = v60;
      v22 = v61;
      if (!v25)
      {
        goto LABEL_8;
      }
    }

    sub_18BC22158();
    sub_18B82AD34(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC20A78();
    v48 = sub_18BC221A8();
    v49 = -1 << *(v47 + 32);
    v50 = v48 & ~v49;
    if (((*(v70 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
      goto LABEL_7;
    }

    v51 = ~v49;
    v52 = *(v59 + 72);
    while (1)
    {
      sub_18B7DF638(*(v72 + 48) + v52 * v50, v3, _s4ItemVMa_4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7DFF64(v3, _s4ItemVMa_4);
      if (updated)
      {
        break;
      }

      v50 = (v50 + 1) & v51;
      if (((*(v70 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_18B7DFF64(v43, _s4ItemVMa_4);
    v54 = v58;
    sub_18B7DF638(v69, v58, _s4ItemVMa);
    v55 = v57;
    swift_beginAccess();
    sub_18BB59EEC(v54, v73);
    v74[0] = v73[0];
    v74[1] = v73[1];
    v74[2] = v73[2];
    v75[0] = v73[3];
    *(v75 + 9) = *(&v73[3] + 9);
    if (*&v73[0])
    {
      v76 = *&v73[0];
      v78 = *(&v73[1] + 8);
      v79 = *(&v73[2] + 8);
      v80 = *(&v73[3] + 8);
      v81 = BYTE8(v73[4]);
      v77 = *(v73 + 8);
      (*v55)(v54, &v76);
      sub_18B988BAC(v74, &unk_1EA9D92A0, &qword_18BC44DD0);
    }

    v26 = v60;
    v22 = v61;
    sub_18B7DFF64(v54, _s4ItemVMa);
    swift_endAccess();
    sub_18B7DFF64(v69, _s4ItemVMa);
  }

  while (v25);
LABEL_8:
  while (1)
  {
    v27 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      return;
    }

    v25 = *(v22 + 8 * v27);
    ++v20;
    if (v25)
    {
      v20 = v27;
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_18BAF309C()
{
  v52 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v52);
  v2 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9360, &unk_18BC558E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9298, &qword_18BC4CB58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewRegistration;
  swift_beginAccess();
  sub_18B7CA054(v0 + v15, v10, &qword_1EA9D9298, &qword_18BC4CB58);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_18B988BAC(v10, &qword_1EA9D9298, &qword_18BC4CB58);
    v16 = sub_18B7C07CC();
    v17 = *&v16[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v18 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_18BBF3890();
    v19 = qword_1EA9F8570;
    swift_beginAccess();
    sub_18B7EC8D0(v7, v17 + v19, &unk_1EA9D9360, &unk_18BC558E0);
    swift_endAccess();
    sub_18BBF3AC8();

    return sub_18B988BAC(v7, &unk_1EA9D9360, &unk_18BC558E0);
  }

  sub_18B82FE24(v10, v14, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
  v21 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent);
  if (!v21)
  {
    v29 = sub_18B7C07CC();
    v30 = *&v29[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    v31 = *v14;
    v32 = _s4ItemVMa(0);
    v33 = v32[7];
    v34 = v52;
    v35 = *(v52 + 20);
    v36 = sub_18BC1EC08();
    (*(*(v36 - 8) + 16))(&v2[v35], &v14[v33], v36);
    v37 = v14[v32[8]];
    v38 = v14[v32[11]];
    v39 = *&v14[v32[12]];
    v40 = v32[15];
    v41 = *&v14[v32[14]];
    v42 = &v14[v40];
    v44 = *&v14[v40];
    v43 = *(v42 + 1);
    *v2 = v31;
    v2[v34[6]] = v37;
    v2[v34[7]] = v38;
    *&v2[v34[8]] = v39;
    *&v2[v34[9]] = v41;
    v45 = &v2[v34[10]];
    *v45 = v44;
    v45[1] = v43;
    v46 = *&v14[*(v11 + 20)];
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    result = [v46 view];
    if (result)
    {
      v47 = result;
      v48 = v51;
      sub_18B82FE24(v2, v51, _s4ItemVMa_4);
      v49 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
      *(v48 + *(v49 + 20)) = v47;
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      sub_18BBF3890();
      v50 = qword_1EA9F8570;
      swift_beginAccess();
      sub_18B7EC8D0(v48, v30 + v50, &unk_1EA9D9360, &unk_18BC558E0);
      swift_endAccess();
      sub_18BBF3AC8();

      sub_18B988BAC(v48, &unk_1EA9D9360, &unk_18BC558E0);
      return sub_18B7DFF64(v14, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v22 = v21;
  v23 = sub_18B7C07CC();
  v24 = *&v23[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v25 = type metadata accessor for QuickTabSwitcher.BorrowedContentViewRegistration(0);
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_18BBF3890();
  v26 = qword_1EA9F8570;
  swift_beginAccess();
  sub_18B7EC8D0(v7, v24 + v26, &unk_1EA9D9360, &unk_18BC558E0);
  swift_endAccess();
  sub_18BBF3AC8();

  sub_18B988BAC(v7, &unk_1EA9D9360, &unk_18BC558E0);
  result = [*&v14[*(v11 + 20)] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v27 = *&v22[OBJC_IVAR___SFTabThumbnailView_borrowedContentView];
  *&v22[OBJC_IVAR___SFTabThumbnailView_borrowedContentView] = result;
  v28 = result;
  sub_18BA14FAC(v27);

  return sub_18B7DFF64(v14, type metadata accessor for TabSwitcher.BorrowedContentViewRegistration);
}

void sub_18BAF3798()
{
  v1 = [v0 traitCollection];
  sub_18B7C9C68(v1, v24);
  v28 = v24[0];
  v29 = v24[1];
  v30[0] = v25[0];
  *(v30 + 14) = *(v25 + 14);

  sub_18B7C9B24(v26);
  LOBYTE(v1) = sub_18B7EB864(v26, v24);
  sub_18B7DFD58(v26);
  if (v1)
  {
    sub_18B7DFD58(v24);
    return;
  }

  v2 = &v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration];
  v3 = *&v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 16];
  v22[0] = *&v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration];
  v22[1] = v3;
  v23[0] = *&v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 32];
  *(v23 + 14) = *&v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration + 46];
  v4 = v29;
  *v2 = v28;
  *(v2 + 1) = v4;
  *(v2 + 2) = v30[0];
  *(v2 + 46) = *(v30 + 14);
  sub_18B7C9FF8(v24, v27);
  sub_18B988BAC(v22, &qword_1EA9D9358, &qword_18BC4CBE0);
  sub_18BA48FCC(v24, v27);
  v5 = &v0[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics];
  v6 = v27[3];
  *(v5 + 2) = v27[2];
  *(v5 + 3) = v6;
  *(v5 + 4) = v27[4];
  v7 = v27[1];
  *v5 = v27[0];
  *(v5 + 1) = v7;
  v8 = sub_18B7D6E1C();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_18BC219A8();
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7D40];
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x18CFFD010](v11, v9);
    }

    else
    {
      v13 = *(v9 + 8 * v11 + 32);
    }

    v21 = v13;
    ++v11;
    (*((*v12 & *v13) + 0xF8))(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  while (v10 != v11);
LABEL_12:
}

unint64_t sub_18BAF3994(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7DF638(a2, v6, _s7ContentVMa);
  v7 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_unresolvedContent;
  swift_beginAccess();
  sub_18B8339EC(v6, a1 + v7);
  swift_endAccess();
  return sub_18B833A74();
}

void sub_18BAF3A60(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9350, &unk_18BC4CBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = _s7SectionVMa_0(0);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = *(a2 + 16);
  if (!v13)
  {
    return;
  }

  v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = a2 + v28;
  v26 = a1;
  v15 = *a1;
  v16 = *(v10 + 72);
  while (1)
  {
    sub_18B7DF638(v14, v12, _s7SectionVMa_0);
    v17 = *(v7 + 24);
    v18 = v15[2];
    if ((v12[v17] & 1) == 0)
    {
      if (!v18 || *(v15 + v28 + (v18 - 1) * v16) != 1 || *v12 != 1)
      {
        sub_18B7DF638(v12, v27, _s7SectionVMa_0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_18B9B5C64(0, v18 + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_18B9B5C64((v20 > 1), v21 + 1, 1, v15);
        }

        sub_18B7DFF64(v12, _s7SectionVMa_0);
        v15[2] = v21 + 1;
        sub_18B82FE24(v27, v15 + v28 + v21 * v16, _s7SectionVMa_0);
        goto LABEL_7;
      }

      v19 = *&v12[*(v7 + 28)];
      sub_18BC1E3F8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_18BAE3814(v15);
      }

      if (v18 > v15[2])
      {
        goto LABEL_40;
      }

      goto LABEL_20;
    }

    if (v18 && *(v15 + v28 + v17) == 1)
    {
      break;
    }

    sub_18B7DF638(v12, v6, _s7SectionVMa_0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 >= v15[3] >> 1)
    {
      v15 = sub_18B9B5C64(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v15);
    }

    v23 = v15 + v28;
    swift_arrayDestroy();
    v24 = v15[2];
    if (v16 < 0 || v16 >= v24 * v16)
    {
      swift_arrayInitWithTakeFrontToBack();
      ++v15[2];
      if (v16 <= 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (!v16)
      {
        v15[2] = v24 + 1;
        goto LABEL_5;
      }

      swift_arrayInitWithTakeBackToFront();
      ++v15[2];
    }

    sub_18B7DF638(v6, v23, _s7SectionVMa_0);
LABEL_5:
    sub_18B988BAC(v6, &qword_1EA9D9350, &unk_18BC4CBD0);
LABEL_6:
    sub_18B7DFF64(v12, _s7SectionVMa_0);
LABEL_7:
    v14 += v16;
    if (!--v13)
    {
      *v26 = v15;
      return;
    }
  }

  v19 = *&v12[*(v7 + 28)];
  sub_18BC1E3F8();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (!v15[2])
    {
      goto LABEL_39;
    }

    goto LABEL_20;
  }

  v15 = sub_18BAE3814(v15);
  if (v15[2])
  {
LABEL_20:
    sub_18BA019B8(v19);
    goto LABEL_6;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_18BAF3ED8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v25 = a3;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v24 = _s4ItemVMa(0);
  v9 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350, &unk_18BC43290);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(v4 + v18, v17, &unk_1EA9D5350, &unk_18BC43290);
  v19 = a1;
  sub_18B7DF638(a1, v14, _s11TransactionVMa);
  v20 = _s11TransactionVMa(0);
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  swift_beginAccess();
  sub_18B7FD070(v14, v4 + v18, &unk_1EA9D5350, &unk_18BC43290);
  v21 = swift_endAccess();
  v26(v21);
  sub_18B7CA054(v19 + *(v20 + 20), v8, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if ((*(v9 + 48))(v8, 1, v24) == 1)
  {
    sub_18B988BAC(v8, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  else
  {
    sub_18B82FE24(v8, v11, _s4ItemVMa);
    sub_18BAFF9A0(v11);
    sub_18B7DFF64(v11, _s4ItemVMa);
  }

  swift_beginAccess();
  sub_18B7FD070(v17, v4 + v18, &unk_1EA9D5350, &unk_18BC43290);
  return swift_endAccess();
}

double sub_18BAF421C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = _s11TransactionVMa(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RetargetableTransitionCoordinator();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = MEMORY[0x1E69E7CC0];
  *(v11 + 32) = v12;
  *(v11 + 40) = 1;
  *(v11 + 16) = a1;
  v9[3] = v10;
  v9[4] = &off_1EFF27FD8;
  *v9 = v11;
  v13 = *(v7 + 28);
  v14 = _s4ItemVMa(0);
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  _s14ScrollPositionOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v7 + 32)) = 0;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BAF3ED8(v9, a2, a3);
  v15 = *(v11 + 16);
  swift_retain_n();
  sub_18B7D8090(v15);
  sub_18B7EAA64(sub_18B9EB460, v11, sub_18B9EB538, v11, v15);

  sub_18B7EBAE8(v15);
  sub_18B7DFF64(v9, _s11TransactionVMa);
  *(v11 + 40) = 0;

  return result;
}

void sub_18BAF4400(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemToPresentToAfterNextLayoutPass;
  swift_beginAccess();
  sub_18B7CA054(v1 + v10, v9, &qword_1EA9D7CD0, &unk_18BC49EB0);
  v11 = _s4ItemVMa(0);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  sub_18B988BAC(v9, &qword_1EA9D7CD0, &unk_18BC49EB0);
  if (v13 != 1)
  {
LABEL_11:
    sub_18B7DF638(a1, v6, _s4ItemVMa);
    (*(v12 + 56))(v6, 0, 1, v11);
    swift_beginAccess();
    sub_18B7FD070(v6, v2 + v10, &qword_1EA9D7CD0, &unk_18BC49EB0);
    swift_endAccess();
    return;
  }

  v14 = sub_18B7C07CC();
  v15 = *&v14[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v16 = *&v15[qword_1EA9F8558];
  sub_18BC1E1A8();

  v17 = *(v16 + 24);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 24) = v19;
    v28 = a1;
    if (v19 == 1)
    {
      swift_beginAccess();
      v20 = *(*(v16 + 16) + 16);
      if (v20)
      {
        v27 = sub_18BC1E3F8();
        v21 = v27 + 40;
        do
        {
          v22 = *(v21 - 8);
          v29[0] = *(v16 + 24) > 0;
          sub_18BC1E1A8();
          v22(v29);

          v21 += 16;
          --v20;
        }

        while (v20);
      }
    }

    v23 = *(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState);
    *(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState) = 1;
    if (v23 != 1)
    {
      sub_18BAFE7A0(v23);
    }

    v24 = *(v11 + 28);
    sub_18BC1E1A8();
    v25 = v28 + v24;
    a1 = v28;
    sub_18BB0A8E4(v25, "deferring presentation", 22, 2u);

    goto LABEL_11;
  }

  __break(1u);
}

void sub_18BAF471C(char *a1, char a2)
{
  v5 = [v2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v2 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [a1 superview];
  [v6 convertRect:v17 toView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if (a2)
  {
    v26 = 0.04;
  }

  else
  {
    v26 = 0.82;
  }

  v27 = sub_18B7C07CC();
  v28 = *&v27[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v29 = *&v28[qword_1EA9F8568 + 80];
  v30 = v26 * v29;
  if (v26 * v29 <= *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics + 24])
  {
    v30 = *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics + 24];
  }

  v51 = v30;
  v64.origin.x = v19;
  v64.origin.y = v21;
  v64.size.width = v23;
  v64.size.height = v25;
  MidX = CGRectGetMidX(v64);
  v65.origin.x = v19;
  v65.origin.y = v21;
  v65.size.width = v23;
  v65.size.height = v25;
  MidY = CGRectGetMidY(v65);
  v66.origin.x = v19;
  v66.origin.y = v21;
  v66.size.width = v23;
  v66.size.height = v25;
  v33 = MidX + v26 * (CGRectGetMinX(v66) - MidX);
  v67.origin.x = v19;
  v67.origin.y = v21;
  v67.size.width = v23;
  v67.size.height = v25;
  v34 = MidY + v26 * (CGRectGetMinY(v67) - MidY);
  v68.origin.x = v19;
  v68.origin.y = v21;
  v68.size.width = v23;
  v68.size.height = v25;
  v35 = v26 * CGRectGetWidth(v68);
  v69.origin.x = v19;
  v69.origin.y = v21;
  v69.size.width = v23;
  v69.size.height = v25;
  [a1 setFrame_];
  v36 = &a1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v37 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v38 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v61 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v39 = v61;
  v62 = v38;
  v41 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v40 = *&a1[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  *(v36 + 8) = 0x3FF0000000000000;
  v43 = *(v36 + 4);
  v42 = *(v36 + 5);
  v57 = v40;
  v58 = v42;
  *(v36 + 10) = v51;
  v44 = *(v36 + 7);
  v45 = *(v36 + 5);
  v59 = *(v36 + 6);
  v60 = v44;
  v46 = *(v36 + 1);
  v54[0] = *v36;
  v54[1] = v46;
  v47 = *(v36 + 3);
  v49 = *v36;
  v48 = *(v36 + 1);
  v55 = *(v36 + 2);
  v56 = v47;
  v50 = *(v36 + 9);
  v52[8] = v39;
  v52[9] = v50;
  v52[6] = v59;
  v52[7] = v37;
  v52[0] = v49;
  v52[1] = v48;
  v52[2] = v55;
  v52[3] = v41;
  v63 = *(v36 + 20);
  v53 = *(v36 + 20);
  v52[4] = v43;
  v52[5] = v45;
  if (!sub_18BA1A2E4(v52, v54))
  {
    sub_18BA18DB4();
  }
}