uint64_t sub_2A95C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_2EC08();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_1B98(a3, a4);
  v43 = v8;
  result = sub_30258();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_2CDD0(&qword_3CFB0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_2FF58();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_2AD3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2EC08();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v39 - v9;
  v10 = *v2;
  sub_1B98(&qword_3CDD8, &unk_30990);
  v45 = v4;
  result = sub_30258();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      sub_2CDD0(&qword_3CFB0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_2FF58();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

uint64_t sub_2B18C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2EC08();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2B244(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2EC08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

void sub_2B320()
{
  v1 = v0;
  v33 = sub_2EC08();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B98(&qword_3CE18, &qword_309C8);
  v3 = *v0;
  v4 = sub_30248();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

char *sub_2B5A0()
{
  v1 = v0;
  v31 = sub_2EC08();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B98(&qword_3D748, &qword_31080);
  v3 = *v0;
  v4 = sub_30248();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2B810()
{
  v1 = v0;
  v34 = sub_2EC08();
  v38 = *(v34 - 8);
  v2 = __chkstk_darwin(v34);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v35 = &v30 - v4;
  sub_1B98(&qword_3CDD8, &unk_30990);
  v5 = *v0;
  v6 = sub_30248();
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
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
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
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
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

void *sub_2BAD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2BF60(a1, a2, a3, *v3, &qword_3DCD0, &qword_31760, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_2BB1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2BF60(a1, a2, a3, *v3, &qword_3DD48, &qword_317F0, &type metadata accessor for PlusContactSuggestion);
  *v3 = result;
  return result;
}

void *sub_2BB60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2BCA8(a1, a2, a3, *v3, &qword_3DC98, &qword_316B8, &qword_3CF70, &unk_315C0);
  *v3 = result;
  return result;
}

void *sub_2BBA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2BCA8(a1, a2, a3, *v3, &qword_3DC70, &qword_31698, &qword_3DC78, &qword_316A0);
  *v3 = result;
  return result;
}

void *sub_2BBE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2BF60(a1, a2, a3, *v3, &qword_3D760, &qword_31090, &type metadata accessor for SessionGroundTruths);
  *v3 = result;
  return result;
}

char *sub_2BC24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2BE18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2BC44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2BF60(a1, a2, a3, *v3, &qword_3DCB0, qword_316E0, &type metadata accessor for FeaturisedTurn);
  *v3 = result;
  return result;
}

void *sub_2BC88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C13C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2BCA8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B98(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B98(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2BE18(char *result, int64_t a2, char a3, char *a4)
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
    sub_29B74(&qword_3D690, &qword_30FC0, &qword_3DCC8, &unk_31740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2BF60(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1B98(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_2C13C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1B98(&qword_3DCD8, &qword_31768);
  v10 = *(sub_1B98(&qword_3D6C8, &qword_31770) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B98(&qword_3D6C8, &qword_31770) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

Swift::Int sub_2C32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B98(&qword_3D698, &qword_30FC8);
    v3 = sub_301A8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_30318();

      sub_2FFB8();
      result = sub_30338();
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
          result = sub_302A8();
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
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_2C494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 56))
  {
    sub_54EC(v3 + 16, v11);
    v4 = sub_2FC18();
    swift_allocObject();

    v5 = sub_2FC08();
    v11[3] = v4;
    v11[4] = &protocol witness table for MessagesSuggestionOutcomeExtractor;
    v11[0] = v5;

    sub_2FE08();

    sub_5448(v11);
  }

  else
  {
    if (qword_3CC60 != -1)
    {
      swift_once();
    }

    v6 = sub_2FF48();
    sub_4FD8(v6, qword_3DB60);
    oslog = sub_2FF28();
    v7 = sub_300E8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      if (qword_3CC58 != -1)
      {
        swift_once();
      }

      *(v8 + 4) = sub_29C64(qword_3DB50, *algn_3DB58, v11);
      _os_log_impl(&dword_0, oslog, v7, "[%s] No outcome emitter available - no PICS outcomes will be derived or logged", v8, 0xCu);
      sub_5448(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_2C724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_2C780(uint64_t a1)
{
  v2 = sub_2F3C8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1B98(&qword_3DD50, &qword_317F8);
    v9 = sub_301A8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2CDD0(&qword_3D7D0, 255, &type metadata accessor for ContactSuggestionTag, &protocol conformance descriptor for ContactSuggestionTag);
      v16 = sub_2FF58();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2CDD0(&qword_3D7D8, 255, &type metadata accessor for ContactSuggestionTag, &protocol conformance descriptor for ContactSuggestionTag);
          v23 = sub_2FF78();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_2CAA8(uint64_t a1)
{
  v2 = sub_2F2C8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1B98(&qword_3DD30, &qword_317E8);
    v9 = sub_301A8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2CDD0(&qword_3DD38, 255, &type metadata accessor for MediaSuggestionTag, &protocol conformance descriptor for MediaSuggestionTag);
      v16 = sub_2FF58();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2CDD0(&qword_3DD40, 255, &type metadata accessor for MediaSuggestionTag, &protocol conformance descriptor for MediaSuggestionTag);
          v23 = sub_2FF78();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_2CDD0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2CE28()
{
  sub_1B98(&qword_3DD88, &qword_31898);
  v0._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v0);

  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_2FFC8(v1);
  qword_3DD58 = 91;
  qword_3DD60 = 0xE100000000000000;
}

uint64_t sub_2CEB8()
{
  v1 = sub_1B98(&qword_3D770, &qword_310A0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v21[-1] - v5;
  sub_5550(v0, v0[3]);
  sub_2F0E8();
  sub_5550(v21, v21[3]);
  sub_2F788();
  sub_5448(v21);
  sub_2E4EC(v6, v4);
  v7 = sub_2F898();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_2E55C(v4);
  }

  else
  {
    v14 = sub_2F888();
    v16 = v15;
    (*(v8 + 8))(v4, v7);
    if (v14 == 0xD00000000000001BLL && 0x80000000000327F0 == v16)
    {

      v13 = 0;
      goto LABEL_15;
    }

    v18 = sub_302A8();

    v13 = 0;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  if (qword_3CC70 != -1)
  {
    swift_once();
  }

  v9 = sub_2FF48();
  sub_4FD8(v9, qword_3DD68);
  v10 = sub_2FF28();
  v11 = sub_300D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Suggestion generation was not last performed by adaptive generation. Requesting all prior ground truth.", v12, 2u);
  }

  v13 = 1;
LABEL_15:
  sub_2E55C(v6);
  return v13;
}

uint64_t sub_2D174(uint64_t a1)
{
  v2 = v1;
  v75 = a1;
  v63 = sub_2F628();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2F578();
  v57 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EC08();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v74 = &v52 - v11;
  __chkstk_darwin(v10);
  v73 = &v52 - v12;
  sub_1B98(&qword_3D7C0, &qword_31160);
  v13 = sub_2F3C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_30820;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, enum case for ContactSuggestionTag.domainPhoneCall(_:), v13);
  v19(v18 + v15, enum case for ContactSuggestionTag.domainMessages(_:), v13);
  v20 = v75;
  v77 = v2;
  v78 = v75;
  v59 = sub_E5A4(sub_2E3C0, v76, v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = *(v20 + 16);
  v22 = _swiftEmptyArrayStorage;
  v71 = v6;
  if (v21)
  {
    v72 = v2;
    v80 = _swiftEmptyArrayStorage;
    sub_2BAD8(0, v21, 0);
    v22 = v80;
    v23 = v20 + 32;
    v75 = v6 + 32;
    v24 = v73;
    do
    {
      sub_54EC(v23, v79);
      sub_5550(v79, v79[3]);
      sub_2F248();
      sub_5448(v79);
      v80 = v22;
      v26 = v22[2];
      v25 = v22[3];
      if (v26 >= v25 >> 1)
      {
        sub_2BAD8((v25 > 1), v26 + 1, 1);
        v22 = v80;
      }

      v22[2] = v26 + 1;
      v6 = v71;
      (*(v71 + 32))(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v24, v5);
      v23 += 40;
      --v21;
    }

    while (v21);
    v2 = v72;
  }

  v27 = sub_23D64(v22);

  sub_5550(v2, v2[3]);
  sub_2F0D8();
  sub_2F508();
  swift_allocObject();
  result = sub_2F4F8();
  v58 = result;
  v29 = v59;
  v30 = v74;
  v56 = v59[2];
  if (v56)
  {
    v70 = 0;
    v31 = 0;
    v55 = v59 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v54 = v57 + 16;
    v60 = v64 + 16;
    v75 = v27 + 56;
    v73 = (v6 + 16);
    v32 = (v6 + 8);
    v61 = (v64 + 8);
    v53 = (v57 + 8);
    v33 = v63;
    v34 = v62;
    while (v31 < v29[2])
    {
      (*(v57 + 16))(v68, &v55[*(v57 + 72) * v31], v69);
      result = sub_2F548();
      v35 = result;
      v65 = *(result + 16);
      if (v65)
      {
        v36 = 0;
        v66 = result;
        v67 = v31;
        while (v36 < *(v35 + 16))
        {
          v37 = v35 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
          v38 = *(v64 + 72);
          v72 = v36;
          (*(v64 + 16))(v34, v37 + v38 * v36, v33);
          sub_2F618();
          if (!*(v27 + 16))
          {

            goto LABEL_22;
          }

          sub_2E4A4(&qword_3CFB0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v39 = sub_2FF58();
          v40 = v27;
          v41 = -1 << *(v27 + 32);
          v42 = v39 & ~v41;
          if (((*(v75 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
LABEL_21:

            v33 = v63;
            v34 = v62;
            v27 = v40;
            v31 = v67;
LABEL_22:
            (*v32)(v30, v5);
            result = (*v61)(v34, v33);
            v49 = 1;
            goto LABEL_23;
          }

          v72 = (v72 + 1);
          v43 = ~v41;
          v44 = *(v71 + 72);
          v45 = *(v71 + 16);
          while (1)
          {
            v45(v9, *(v40 + 48) + v44 * v42, v5);
            sub_2E4A4(&qword_3CFB8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v46 = sub_2FF78();
            v47 = *v32;
            (*v32)(v9, v5);
            if (v46)
            {
              break;
            }

            v42 = (v42 + 1) & v43;
            v30 = v74;
            if (((*(v75 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v48 = v74;
          v47(v74, v5);
          v30 = v48;
          v34 = v62;
          v33 = v63;
          result = (*v61)(v62, v63);
          v36 = v72;
          v27 = v40;
          v35 = v66;
          v31 = v67;
          if (v72 == v65)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

LABEL_20:

      v49 = 0;
LABEL_23:
      if (__CFADD__(v70, v49))
      {
        goto LABEL_33;
      }

      v70 = (v70 + v49);
      ++v31;
      sub_2EBF8();
      v50 = v68;
      sub_2F4D8();
      (*v32)(v9, v5);
      result = (*v53)(v50, v69);
      v29 = v59;
      if (v31 == v56)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v70 = 0;
LABEL_28:

  v51 = v29[2];

  if (HIDWORD(v51))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v51 >= v70)
  {
    return 0;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2DA94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v64 = a4;
  v61 = a2;
  v6 = sub_2F3C8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v56 - v11;
  if (qword_3CC70 != -1)
  {
    swift_once();
  }

  v65 = a3;
  v13 = sub_2FF48();
  v14 = sub_4FD8(v13, qword_3DD68);
  v15 = *(v7 + 16);
  v62 = a1;
  v16 = a1;
  v17 = v7;
  v18 = v7 + 16;
  v68 = v15;
  v15(v12, v16, v6);
  v63 = v14;
  v19 = sub_2FF28();
  v20 = sub_300D8();
  if (os_log_type_enabled(v19, v20))
  {
    v58 = v17;
    v21 = swift_slowAlloc();
    *&v57 = swift_slowAlloc();
    v66 = v57;
    *v21 = 136315394;
    if (qword_3CC68 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_29C64(qword_3DD58, qword_3DD60, &v66);
    *(v21 + 12) = 2080;
    v22 = v18;
    v68(v10, v12, v6);
    v23 = sub_2FF98();
    v25 = v24;
    v26 = v58;
    v27 = *(v58 + 8);
    v59 = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = v27;
    v27(v12, v6);
    v28 = sub_29C64(v23, v25, &v66);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_0, v19, v20, "%s Processing new ground truth for %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v59 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = v29;
    v29(v12, v6);
    v22 = v18;
    v26 = v17;
  }

  v56[1] = v22;
  sub_5550(v61, v61[3]);
  sub_2F0E8();
  v58 = sub_1B98(&qword_3D7C0, &qword_31160);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  v57 = xmmword_30830;
  *(v31 + 16) = xmmword_30830;
  v32 = v62;
  v68((v31 + v30), v62, v6);
  sub_2C780(v31);
  swift_setDeallocating();
  v33 = v60;
  v60(v31 + v30, v6);
  swift_deallocClassInstance();
  v61 = sub_2FCC8();
  swift_allocObject();
  v34 = sub_2FCA8();
  v35 = swift_allocObject();
  *(v35 + 16) = v57;
  v68((v35 + v30), v32, v6);
  sub_2C780(v35);
  swift_setDeallocating();
  v33(v35 + v30, v6);
  swift_deallocClassInstance();
  sub_2FBC8();
  swift_allocObject();

  v68 = v34;
  v62 = sub_2FBA8();
  v36 = sub_2FBB8();

  v37 = sub_2FF28();
  v38 = sub_300D8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v66 = v40;
    *v39 = 136315650;
    v41 = &SiriPrivateLearningInferencePlugin;
    if (qword_3CC68 != -1)
    {
      swift_once();
    }

    *(v39 + 4) = sub_29C64(qword_3DD58, qword_3DD60, &v66);
    *(v39 + 12) = 2048;
    *(v39 + 14) = *(v65 + 16);

    *(v39 + 22) = 2048;
    if ((v36 & 0xC000000000000001) != 0)
    {
      v42 = sub_30168();
    }

    else
    {
      v42 = *(v36 + 16);
    }

    *(v39 + 24) = v42;
    _os_log_impl(&dword_0, v37, v38, "%s Updated candidate scores in %ld Ground Truth and %ld queries.", v39, 0x20u);
    sub_5448(v40);
  }

  else
  {

    v41 = &SiriPrivateLearningInferencePlugin;
  }

  sub_2FBF8();
  v66 = v68;
  sub_2E4A4(&qword_3DD80, &type metadata accessor for ContactSuggestionStoreCandidateAdapter, &protocol conformance descriptor for ContactSuggestionStoreCandidateAdapter);

  v43 = sub_2FBD8();
  sub_8E14(v36);

  v44 = sub_2FBE8();

  v45 = sub_2FF28();
  v46 = sub_300D8();
  if (os_log_type_enabled(v45, v46))
  {
    v65 = v43;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v66 = v48;
    *v47 = 136315138;
    if (*&v41[44].ivar_base_size != -1)
    {
      swift_once();
    }

    *(v47 + 4) = sub_29C64(qword_3DD58, qword_3DD60, &v66);
    _os_log_impl(&dword_0, v45, v46, "%s Nominated Candidates:", v47, 0xCu);
    sub_5448(v48);
  }

  else
  {
  }

  if (*&v41[44].ivar_base_size != -1)
  {
    swift_once();
  }

  v49 = qword_3DD58;
  v50 = qword_3DD60;
  v66 = qword_3DD58;
  v67 = qword_3DD60;

  v69._countAndFlagsBits = 8224;
  v69._object = 0xE200000000000000;
  sub_2FFC8(v69);
  sub_EF84(v66, v67, v44);

  v51 = sub_2FF28();
  v52 = sub_300D8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v66 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_29C64(v49, v50, &v66);
    _os_log_impl(&dword_0, v51, v52, "%s Persisting updated candidates to the suggestion store", v53, 0xCu);
    sub_5448(v54);
  }

  sub_2FCB8();

  *v64 = v44;
  return result;
}

uint64_t sub_2E3DC()
{
  v0 = sub_2FF48();
  sub_55B0(v0, qword_3DD68);
  v1 = sub_4FD8(v0, qword_3DD68);
  if (qword_3CC08 != -1)
  {
    swift_once();
  }

  v2 = sub_4FD8(v0, qword_3E470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2E4A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2E4EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B98(&qword_3D770, &qword_310A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2E55C(uint64_t a1)
{
  v2 = sub_1B98(&qword_3D770, &qword_310A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2E5C4(uint64_t a1)
{
  type metadata accessor for DonationSourceProvider();
  sub_1B98(&unk_3DE50, &qword_31908);
  v1._countAndFlagsBits = sub_2FF98();
  sub_2FFC8(v1);

  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  sub_2FFC8(v2);
  qword_3DD90 = 91;
  *algn_3DD98 = 0xE100000000000000;
}

unint64_t sub_2E650()
{
  v1 = v0;
  sub_5550((v0 + 16), *(v0 + 40));
  sub_2F0A8();
  sub_5550(v31, v32);
  v2 = sub_2EFF8();
  v3 = sub_2ECB8();
  v29 = v3;
  v30 = &protocol witness table for AnyFeature;
  v28[0] = v2;
  v4 = sub_2ED48();
  sub_5448(v28);
  sub_5448(v31);
  if (v4)
  {
    sub_5550((v1 + 16), *(v1 + 40));
    sub_2F0E8();
    sub_5550(v31, v32);
    v5 = sub_2F7D8();
    v6 = sub_27630(v5);

    sub_5448(v31);
  }

  else
  {
    if (qword_3CC08 != -1)
    {
      swift_once();
    }

    v7 = sub_2FF48();
    sub_4FD8(v7, qword_3E470);
    v8 = sub_2FF28();
    v9 = sub_300D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31[0] = v11;
      *v10 = 136315138;
      if (qword_3CC78 != -1)
      {
        swift_once();
      }

      *(v10 + 4) = sub_29C64(qword_3DD90, *algn_3DD98, v31);
      _os_log_impl(&dword_0, v8, v9, "%s PICS donations are blocked since PICSRuntimeInSiriVocab is disabled", v10, 0xCu);
      sub_5448(v11);
    }

    v6 = _swiftEmptyArrayStorage;
  }

  sub_5550((v1 + 16), *(v1 + 40));
  sub_2F0A8();
  sub_5550(v31, v32);
  v12 = sub_2F038();
  v29 = v3;
  v30 = &protocol witness table for AnyFeature;
  v28[0] = v12;
  v13 = sub_2ED48();
  sub_5448(v28);
  sub_5448(v31);
  if (v13)
  {
    sub_5550((v1 + 16), *(v1 + 40));
    sub_2F0F8();
    sub_5550(v31, v32);
    v14 = sub_2F6E8();
    v27 = sub_27650(v14);

    sub_5448(v31);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  sub_1B98(&qword_3DE48, "Z\b");
  v15 = sub_1B98(&qword_3CDC0, &qword_31900);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_30820;
  v19 = v18 + v17;
  v20 = *(v15 + 48);
  v21 = enum case for DonationCandidateType.siriLearnedContact(_:);
  v22 = sub_2F438();
  v23 = *(*(v22 - 8) + 104);
  v23(v19, v21, v22);
  *(v19 + v20) = v6;
  v24 = *(v15 + 48);
  v23(v19 + v16, enum case for DonationCandidateType.siriLearnedMedia(_:), v22);
  *(v19 + v16 + v24) = v27;
  v25 = sub_4DF0(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v25;
}

uint64_t sub_2EAFC()
{
  sub_5448((v0 + 16));

  return swift_deallocClassInstance();
}