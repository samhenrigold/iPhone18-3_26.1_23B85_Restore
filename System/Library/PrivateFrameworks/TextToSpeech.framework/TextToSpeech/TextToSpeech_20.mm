char *sub_1A94FB048(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB3883C0, &qword_1A9596DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A94FB16C(uint64_t a1, uint64_t a2)
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

  sub_1A937829C(&unk_1EB3883B0, &qword_1A9596DE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_1A94FB204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB3883A0, &qword_1A9596DD8);
  v38 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 56 * v21;
      if (v38)
      {
        v42 = *v25;
        v43 = *(v25 + 16);
        v44[0] = *(v25 + 32);
        v26 = *(v25 + 45);
      }

      else
      {
        v28 = *(v25 + 16);
        v27 = *(v25 + 32);
        v29 = *v25;
        *&v41[13] = *(v25 + 45);
        v40 = v28;
        *v41 = v27;
        v39 = v29;

        sub_1A94FF0E4(&v39, &v42);
        v42 = v39;
        v43 = v40;
        v44[0] = *v41;
        v26 = *&v41[13];
      }

      *(v44 + 13) = v26;
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 56 * v15;
      *v17 = v42;
      *(v17 + 16) = v43;
      *(v17 + 32) = v44[0];
      *(v17 + 45) = *(v44 + 13);
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_1A94FB534()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3883A0, &qword_1A9596DD8);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 56;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[13] = *(v19 + v17 + 45);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v4 + 56) + v17;
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 45) = *&v34[13];
        *(v27 + 16) = v29;
        *(v27 + 32) = v30;
        *v27 = v28;

        result = sub_1A94FF0E4(&v32, v31);
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

char *sub_1A94FB6E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A94FB758(a1, a2, a3, *v3, &unk_1EB3883B0, &qword_1A9596DE8, &type metadata for SSEVoiceLoader);
  *v3 = result;
  return result;
}

char *sub_1A94FB720(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A94FB758(a1, a2, a3, *v3, &qword_1EB3883C0, &qword_1A9596DF0, &type metadata for SSEVoiceLoader.SSERecord);
  *v3 = result;
  return result;
}

char *sub_1A94FB758(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1A937829C(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A94FB87C(uint64_t a1, uint64_t *a2)
{
  v44 = *v2;
  sub_1A957D4F8();
  v5 = a2[2];
  v4 = a2[3];
  v46 = a2[1];
  v47 = *a2;
  sub_1A957C228();
  v45 = v4;
  sub_1A957D518();
  if (v4)
  {
    sub_1A957C228();
  }

  v6 = *(a2 + 52);
  v8 = *(a2 + 8);
  v7 = *(a2 + 9);
  v10 = *(a2 + 10);
  v9 = *(a2 + 11);
  v11 = *(a2 + 12);
  LODWORD(v48) = *(a2 + 8);
  HIDWORD(v48) = v7;
  v49 = v10;
  v50 = v9;
  v51 = v11;
  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
  sub_1A957C068();
  v39 = v6;
  sub_1A957D518();
  v12 = sub_1A957D548();
  v13 = -1 << *(v44 + 32);
  v14 = v12 & ~v13;
  if ((*(v44 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v42 = v5;
    v43 = ~v13;
    v40 = v10;
    v41 = v8 | (v7 << 32);
    v15 = v45;
    do
    {
      v16 = *(v44 + 48) + 56 * v14;
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *(v16 + 36);
      v21 = *(v16 + 40);
      v22 = *(v16 + 48);
      v23 = *(v16 + 52);
      if (*v16 != v47 || *(v16 + 8) != v46)
      {
        v25 = sub_1A957D3E8();
        v15 = v45;
        if ((v25 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v17)
      {
        if (!v15)
        {
          goto LABEL_6;
        }

        if (v18 != v42 || v17 != v15)
        {
          v27 = sub_1A957D3E8();
          v15 = v45;
          if ((v27 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v15)
      {
        goto LABEL_6;
      }

      v28 = static AudioComponentDescription.== infix(_:_:)(v19 | (v20 << 32), v21, v22, v41, v40);
      v15 = v45;
      if (v28 && ((v23 ^ v39) & 1) == 0)
      {
        sub_1A94FF990(a2);
        v29 = *(v44 + 48) + 56 * v14;
        v31 = *(v29 + 16);
        v30 = *(v29 + 32);
        v32 = *v29;
        *&v53[13] = *(v29 + 45);
        v52[1] = v31;
        *v53 = v30;
        v52[0] = v32;
        v33 = *(v29 + 16);
        *a1 = *v29;
        *(a1 + 16) = v33;
        *(a1 + 32) = *(v29 + 32);
        *(a1 + 45) = *(v29 + 45);
        sub_1A94FF810(v52, &v48);
        return 0;
      }

LABEL_6:
      v14 = (v14 + 1) & v43;
    }

    while (((*(v44 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v37;
  sub_1A94FF810(a2, v52);
  sub_1A94FDAFC(a2, v14, isUniquelyReferenced_nonNull_native);
  *v37 = v48;
  v36 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 16) = v36;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 45) = *(a2 + 45);
  return 1;
}

void sub_1A94FBB98(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(a1 + 48) + 56 * (v10 | (v9 << 6));
      v13 = *(v11 + 16);
      v12 = *(v11 + 32);
      v14 = *v11;
      *&v17[13] = *(v11 + 45);
      v16[1] = v13;
      *v17 = v12;
      v16[0] = v14;
      sub_1A94FF810(v16, v15);
      sub_1A94FC5DC(v16, v15);
      sub_1A94FF990(v16);
      sub_1A93B10AC(v15[0], v15[1], v15[2], v15[3]);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1A94FBCD0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v155 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v3 = a1;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = -1 << *(a1 + 32);
  v126 = ~v6;
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (63 - v6) >> 6;
  v141 = (a2 + 56);

  v11 = 0;
  v119 = 0;
  v124 = v5;
  v125 = v9;
  v140 = v2;
  v123 = v10;
  if (!v8)
  {
LABEL_7:
    v13 = v11;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v53 = v3;
        goto LABEL_79;
      }

      v8 = *(v5 + 8 * v12);
      ++v13;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:

    v2 = MEMORY[0x1E69E7CD0];
    goto LABEL_78;
  }

  while (1)
  {
    v12 = v11;
LABEL_11:
    v14 = *(v3 + 48) + 56 * (__clz(__rbit64(v8)) | (v12 << 6));
    v16 = *(v14 + 16);
    v15 = *(v14 + 32);
    v17 = (v8 - 1) & v8;
    v18 = *v14;
    *&v149[13] = *(v14 + 45);
    v148 = v16;
    *v149 = v15;
    v147 = v18;
    v150 = v3;
    v151 = v5;
    v152 = v126;
    v153 = v12;
    v154 = v17;
    sub_1A957D4F8();
    v19 = v147;
    v20 = v148;
    sub_1A94FF810(&v147, &v144);
    v138 = *(&v19 + 1);
    v139 = v19;
    sub_1A957C228();
    v137 = *(&v20 + 1);
    v127 = v12;
    v128 = v17;
    v133 = v20;
    sub_1A957D518();
    if (*(&v20 + 1))
    {
      sub_1A957C228();
    }

    v21 = v149[20];
    v22 = *&v149[4];
    v24 = *&v149[8];
    v23 = *&v149[12];
    v25 = *v149;
    v144 = *v149;
    v132 = *&v149[16];
    LODWORD(v145) = *&v149[16];
    type metadata accessor for AudioComponentDescription();
    v27 = v26;
    v121 = sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
    v122 = v27;
    sub_1A957C068();
    v129 = v21;
    sub_1A957D518();
    v28 = sub_1A957D548();
    v29 = -1 << *(v2 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    v32 = 1 << v30;
    if (((1 << v30) & v141[v30 >> 6]) != 0)
    {
      break;
    }

    sub_1A94FF990(&v147);
    v11 = v127;
LABEL_34:
    v5 = v124;
    v9 = v125;
    v8 = v128;
    if (!v128)
    {
      goto LABEL_7;
    }
  }

  v135 = ~v29;
  v130 = v24 | (v23 << 32);
  v131 = v25 | (v22 << 32);
  v33 = v137;
  while (1)
  {
    v34 = *(v2 + 48) + 56 * v30;
    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    v38 = *(v34 + 24);
    v39 = *(v34 + 32);
    v40 = *(v34 + 36);
    v41 = *(v34 + 40);
    v42 = *(v34 + 48);
    v136 = *(v34 + 52);
    if (v35 != v139 || v36 != v138)
    {
      v134 = v32;
      v44 = v40;
      v45 = v41;
      v46 = v39;
      v47 = v42;
      v48 = sub_1A957D3E8();
      v42 = v47;
      v39 = v46;
      v41 = v45;
      v40 = v44;
      v33 = v137;
      if ((v48 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v38)
    {
      break;
    }

    if (!v33)
    {
      goto LABEL_29;
    }

LABEL_16:
    v30 = (v30 + 1) & v135;
    v31 = v30 >> 6;
    v2 = v140;
    v32 = 1 << v30;
    if ((v141[v30 >> 6] & (1 << v30)) == 0)
    {
      sub_1A94FF990(&v147);
      v11 = v127;
      v3 = v123;
      goto LABEL_34;
    }
  }

  if (!v33)
  {
    goto LABEL_16;
  }

  if (v37 != v133 || v38 != v33)
  {
    v50 = v42;
    v51 = sub_1A957D3E8();
    v42 = v50;
    v33 = v137;
    if ((v51 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  v52 = static AudioComponentDescription.== infix(_:_:)(v39 | (v40 << 32), v41, v42, v131, v130);
  v33 = v137;
  if (!v52 || ((v129 ^ v136) & 1) != 0)
  {
    goto LABEL_16;
  }

  v54 = sub_1A94FF990(&v147);
  v55 = v140;
  v56 = *(v140 + 32);
  v57 = v56 & 0x3F;
  v58 = ((1 << v56) + 63) >> 6;
  v116 = v58;
  if (v57 <= 0xD)
  {
LABEL_39:
    v117 = &v115;
    MEMORY[0x1EEE9AC00](v54);
    v60 = &v115 - ((v59 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v60, v141, v59);
    v61 = *&v60[8 * v31] & ~v32;
    v120 = v60;
    *&v60[8 * v31] = v61;
    v118 = *(v55 + 16) - 1;
    v63 = v124;
    v62 = v125;
    v64 = v127;
    v65 = v128;
    while (1)
    {
      while (1)
      {
        if (!v65)
        {
          v67 = v64;
          while (1)
          {
            v66 = v67 + 1;
            if (__OFADD__(v67, 1))
            {
              goto LABEL_82;
            }

            if (v66 >= v62)
            {
              if (v62 <= v64 + 1)
              {
                v110 = v64 + 1;
              }

              else
              {
                v110 = v62;
              }

              v150 = v123;
              v151 = v63;
              v152 = v126;
              v153 = v110 - 1;
              v154 = 0;
              v2 = sub_1A94FD04C(v120, v116, v118, v55);
              goto LABEL_78;
            }

            v65 = *(v63 + 8 * v66);
            ++v67;
            if (v65)
            {
              goto LABEL_48;
            }
          }
        }

        v66 = v64;
LABEL_48:
        v68 = *(v123 + 48) + 56 * (__clz(__rbit64(v65)) | (v66 << 6));
        v70 = *(v68 + 16);
        v69 = *(v68 + 32);
        v71 = (v65 - 1) & v65;
        v72 = *v68;
        *(v146 + 13) = *(v68 + 45);
        v145 = v70;
        v146[0] = v69;
        v144 = v72;
        v150 = v123;
        v151 = v63;
        v152 = v126;
        v153 = v66;
        v154 = v71;
        sub_1A957D4F8();
        v73 = v144;
        v74 = v145;
        sub_1A94FF810(&v144, &v142);
        v138 = *(&v73 + 1);
        v139 = v73;
        sub_1A957C228();
        v137 = *(&v74 + 1);
        v127 = v66;
        v128 = v71;
        v133 = v74;
        sub_1A957D518();
        if (*(&v74 + 1))
        {
          sub_1A957C228();
        }

        v75 = BYTE4(v146[1]);
        v76 = LODWORD(v146[0]);
        v77 = DWORD1(v146[0]);
        v78 = DWORD2(v146[0]);
        v79 = HIDWORD(v146[0]);
        v142 = v146[0];
        v132 = v146[1];
        v143 = v146[1];
        sub_1A957C068();
        v129 = v75;
        sub_1A957D518();
        v80 = sub_1A957D548();
        v81 = -1 << *(v55 + 32);
        v82 = v80 & ~v81;
        v83 = v82 >> 6;
        v84 = 1 << v82;
        if (((1 << v82) & v141[v82 >> 6]) != 0)
        {
          break;
        }

        sub_1A94FF990(&v144);
        v64 = v127;
LABEL_41:
        v62 = v125;
        v65 = v128;
      }

      v135 = ~v81;
      v130 = v78 | (v79 << 32);
      v131 = v76 | (v77 << 32);
      v85 = v137;
      while (1)
      {
        v86 = *(v55 + 48) + 56 * v82;
        v87 = *v86;
        v88 = *(v86 + 8);
        v89 = *(v86 + 16);
        v90 = *(v86 + 24);
        v91 = *(v86 + 32);
        v92 = *(v86 + 36);
        v93 = *(v86 + 40);
        v94 = *(v86 + 44);
        v95 = *(v86 + 48);
        v136 = *(v86 + 52);
        if (v87 != v139 || v88 != v138)
        {
          v134 = v94;
          v97 = v92;
          v98 = v93;
          v99 = v91;
          v100 = v95;
          v101 = v84;
          v102 = v83;
          v103 = v89;
          v104 = sub_1A957D3E8();
          v89 = v103;
          v83 = v102;
          v84 = v101;
          v95 = v100;
          v91 = v99;
          v93 = v98;
          v92 = v97;
          v85 = v137;
          if ((v104 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        if (v90)
        {
          break;
        }

        if (!v85)
        {
          goto LABEL_66;
        }

LABEL_53:
        v82 = (v82 + 1) & v135;
        v83 = v82 >> 6;
        v55 = v140;
        v84 = 1 << v82;
        if ((v141[v82 >> 6] & (1 << v82)) == 0)
        {
          sub_1A94FF990(&v144);
          v64 = v127;
          v63 = v124;
          goto LABEL_41;
        }
      }

      if (!v85)
      {
        goto LABEL_53;
      }

      if (v89 != v133 || v90 != v85)
      {
        v106 = v95;
        v107 = sub_1A957D3E8();
        v95 = v106;
        v85 = v137;
        if ((v107 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

LABEL_66:
      v108 = static AudioComponentDescription.== infix(_:_:)(v91 | (v92 << 32), v93, v95, v131, v130);
      v85 = v137;
      if (!v108 || ((v129 ^ v136) & 1) != 0)
      {
        goto LABEL_53;
      }

      sub_1A94FF990(&v144);
      v109 = v120[v83];
      v120[v83] = v109 & ~v84;
      v63 = v124;
      v62 = v125;
      if ((v109 & v84) != 0)
      {
        v55 = v140;
        v64 = v127;
        v65 = v128;
        if (__OFSUB__(v118, 1))
        {
          __break(1u);
        }

        if (v118 == 1)
        {
          goto LABEL_83;
        }

        --v118;
      }

      else
      {
        v64 = v127;
        v65 = v128;
        v55 = v140;
      }
    }
  }

  v112 = 8 * v58;

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_39;
  }

  v113 = swift_slowAlloc();
  memcpy(v113, v141, v112);
  v114 = sub_1A94FCC34(v113, v116, v140, v30, &v150);

  MEMORY[0x1AC587CD0](v113, -1, -1);
  v2 = v114;
LABEL_78:
  v53 = v150;
LABEL_79:
  sub_1A932D088(v53);
  return v2;
}

double sub_1A94FC5DC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = *v2;
  sub_1A957D4F8();
  v4 = a1[2];
  v5 = a1[3];
  v40 = a1[1];
  v41 = *a1;
  sub_1A957C228();
  v39 = v5;
  v36 = v4;
  sub_1A957D518();
  if (v5)
  {
    sub_1A957C228();
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  v9 = *(a1 + 52);
  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
  sub_1A957C068();
  v34 = v9;
  sub_1A957D518();
  v10 = sub_1A957D548();
  v11 = -1 << *(v38 + 32);
  v12 = v10 & ~v11;
  v13 = v39;
  if (((*(v38 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_24:
    *(a2 + 45) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v37 = ~v11;
  v35 = v6 | (v7 << 32);
  while (1)
  {
    v14 = *(v38 + 48) + 56 * v12;
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    v17 = *(v14 + 32);
    v18 = *(v14 + 36);
    v19 = *(v14 + 40);
    v20 = *(v14 + 48);
    v21 = *(v14 + 52);
    if (*v14 != v41 || *(v14 + 8) != v40)
    {
      v23 = sub_1A957D3E8();
      v13 = v39;
      if ((v23 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v15)
    {
      break;
    }

    if (!v13)
    {
      goto LABEL_19;
    }

LABEL_6:
    v12 = (v12 + 1) & v37;
    if (((*(v38 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (!v13)
  {
    goto LABEL_6;
  }

  if (v16 != v36 || v15 != v13)
  {
    v25 = sub_1A957D3E8();
    v13 = v39;
    if ((v25 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_19:
  v26 = static AudioComponentDescription.== infix(_:_:)(v17 | (v18 << 32), v19, v20, v35, v8);
  v13 = v39;
  if (!v26 || ((v21 ^ v34) & 1) != 0)
  {
    goto LABEL_6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v32;
  v42 = *v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A94FD380();
    v28 = v42;
  }

  v29 = *(v28 + 48) + 56 * v12;
  v30 = *(v29 + 16);
  *a2 = *v29;
  *(a2 + 16) = v30;
  *(a2 + 32) = *(v29 + 32);
  *(a2 + 45) = *(v29 + 45);
  sub_1A94FD834(v12);
  *v32 = v42;
  return result;
}

uint64_t sub_1A94FC8B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB388398, &qword_1A9596DD0);
  result = sub_1A957CEA8();
  v5 = result;
  if (*(v3 + 16))
  {
    v35 = v1;
    v36 = v3;
    v6 = 0;
    v7 = (v3 + 56);
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 56 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v42 = *(v18 + 36);
      v43 = *(v18 + 32);
      v40 = *(v18 + 44);
      v41 = *(v18 + 40);
      v39 = *(v18 + 48);
      v23 = *(v18 + 52);
      v24 = v5;
      sub_1A957D4F8();
      v38 = v20;
      sub_1A957C228();
      if (v22)
      {
        sub_1A957D518();
        v25 = v21;
        sub_1A957C228();
      }

      else
      {
        v25 = v21;
        sub_1A957D518();
      }

      type metadata accessor for AudioComponentDescription();
      sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
      sub_1A957C068();
      sub_1A957D518();
      result = sub_1A957D548();
      v5 = v24;
      v26 = -1 << *(v24 + 32);
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

LABEL_34:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v24 + 48) + 56 * v13;
      *v14 = v19;
      *(v14 + 8) = v38;
      *(v14 + 16) = v25;
      *(v14 + 24) = v22;
      *(v14 + 32) = v43;
      *(v14 + 36) = v42;
      *(v14 + 40) = v41;
      *(v14 + 44) = v40;
      *(v14 + 48) = v39;
      *(v14 + 52) = v23;
      ++*(v24 + 16);
      v3 = v36;
      v10 = v37;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v33 = v5;
    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v7, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  else
  {
    v33 = result;
  }

  *v2 = v33;
  return result;
}

unint64_t *sub_1A94FCC34(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = *(a3 + 16);
  v51 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v57 = a3 + 56;
LABEL_2:
  v50 = v7;
LABEL_4:
  while (2)
  {
    v8 = v5[3];
    v9 = v5[4];
    if (v9)
    {
      v10 = v5[3];
LABEL_10:
      v13 = *(*v5 + 48) + 56 * (__clz(__rbit64(v9)) | (v10 << 6));
      v14 = *(v13 + 45);
      v15 = *(v13 + 32);
      v16 = *v13;
      v63 = *(v13 + 16);
      *v64 = v15;
      v62 = v16;
      *&v64[13] = v14;
      v5[3] = v10;
      v5[4] = (v9 - 1) & v9;
      sub_1A957D4F8();
      v17 = v62;
      v18 = v63;
      sub_1A94FF810(&v62, &v60);
      v65 = v17;
      sub_1A957C228();
      sub_1A957D518();
      if (*(&v18 + 1))
      {
        sub_1A957C228();
      }

      v19 = v64[20];
      v21 = *v64;
      v20 = *&v64[4];
      v60 = *v64;
      v61 = *&v64[16];
      type metadata accessor for AudioComponentDescription();
      sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
      sub_1A957C068();
      v53 = v19;
      sub_1A957D518();
      v22 = sub_1A957D548();
      v23 = -1 << *(a3 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      v26 = 1 << v24;
      if (((1 << v24) & *(v57 + 8 * (v24 >> 6))) == 0)
      {
        result = sub_1A94FF990(&v62);
        continue;
      }

      v56 = ~v23;
      v54 = v21 | (v20 << 32);
      v27 = *(&v18 + 1);
      while (1)
      {
        v28 = *(a3 + 48) + 56 * v24;
        v29 = *(v28 + 16);
        v30 = *(v28 + 24);
        v31 = *(v28 + 32);
        v32 = *(v28 + 36);
        v33 = *(v28 + 40);
        v34 = *(v28 + 48);
        v59 = *(v28 + 52);
        if (*v28 != v65 || *(v28 + 8) != *(&v17 + 1))
        {
          v55 = *(v28 + 48);
          v36 = *(v28 + 36);
          v37 = *(v28 + 40);
          v38 = v26;
          v39 = v25;
          v40 = *(v28 + 16);
          v41 = sub_1A957D3E8();
          v29 = v40;
          v25 = v39;
          v26 = v38;
          v33 = v37;
          v32 = v36;
          v34 = v55;
          v27 = *(&v18 + 1);
          if ((v41 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (v30)
        {
          if (!v27)
          {
            goto LABEL_15;
          }

          if (v29 != v18 || v30 != v27)
          {
            v43 = v34;
            v44 = v33;
            v45 = sub_1A957D3E8();
            v33 = v44;
            v34 = v43;
            v27 = *(&v18 + 1);
            if ((v45 & 1) == 0)
            {
              goto LABEL_15;
            }
          }
        }

        else if (v27)
        {
          goto LABEL_15;
        }

        v46 = static AudioComponentDescription.== infix(_:_:)(v31 | (v32 << 32), v33, v34, v54, v18);
        v27 = *(&v18 + 1);
        if (v46 && ((v53 ^ v59) & 1) == 0)
        {
          result = sub_1A94FF990(&v62);
          v5 = a5;
          v47 = v51[v25];
          v51[v25] = v47 & ~v26;
          if ((v47 & v26) != 0)
          {
            v7 = v50 - 1;
            if (__OFSUB__(v50, 1))
            {
LABEL_41:
              __break(1u);
              return result;
            }

            if (v50 == 1)
            {
              return MEMORY[0x1E69E7CD0];
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

LABEL_15:
        v24 = (v24 + 1) & v56;
        v25 = v24 >> 6;
        v26 = 1 << v24;
        if ((*(v57 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
        {
          result = sub_1A94FF990(&v62);
          v5 = a5;
          goto LABEL_4;
        }
      }
    }

    break;
  }

  v11 = (v5[2] + 64) >> 6;
  v12 = v5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(v5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v48 = v8 + 1;
  }

  else
  {
    v48 = (v5[2] + 64) >> 6;
  }

  v5[3] = v48 - 1;
  v5[4] = 0;

  return sub_1A94FD04C(v51, a2, v50, a3);
}

uint64_t sub_1A94FD04C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1A937829C(&qword_1EB388398, &qword_1A9596DD0);
  v9 = sub_1A957CEB8();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = v9 + 56;
  result = a4;
  if (v10)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(result + 48) + 56 * (v14 | (v11 << 6));
      v19 = *v17;
      v18 = *(v17 + 16);
      v20 = *(v17 + 32);
      *&v41[13] = *(v17 + 45);
      v40 = v18;
      *v41 = v20;
      v39 = v19;
      sub_1A957D4F8();
      v21 = *(&v40 + 1);
      sub_1A94FF810(&v39, &v37);
      sub_1A957C228();
      sub_1A957D518();
      if (v21)
      {
        sub_1A957C228();
      }

      v37 = *v41;
      v38 = *&v41[16];
      type metadata accessor for AudioComponentDescription();
      sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
      sub_1A957C068();
      sub_1A957D518();
      v22 = sub_1A957D548();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        break;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      result = a4;
LABEL_27:
      *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = *(v5 + 48) + 56 * v26;
      v32 = v39;
      v33 = v40;
      v34 = *v41;
      *(v31 + 45) = *&v41[13];
      *(v31 + 16) = v33;
      *(v31 + 32) = v34;
      *v31 = v32;
      ++*(v5 + 16);
      if (__OFSUB__(v4--, 1))
      {
        goto LABEL_35;
      }

      if (!v4)
      {
LABEL_31:

        return v5;
      }

      v10 = v36;
      if (!v36)
      {
        goto LABEL_10;
      }
    }

    v27 = 0;
    v28 = (63 - v23) >> 6;
    result = a4;
    while (++v25 != v28 || (v27 & 1) == 0)
    {
      v29 = v25 == v28;
      if (v25 == v28)
      {
        v25 = 0;
      }

      v27 |= v29;
      v30 = *(v12 + 8 * v25);
      if (v30 != -1)
      {
        v26 = __clz(__rbit64(~v30)) + (v25 << 6);
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_10:
    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        goto LABEL_31;
      }

      v16 = a1[v11];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v36 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *sub_1A94FD380()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB388398, &qword_1A9596DD0);
  v2 = *v0;
  v3 = sub_1A957CE98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *(v18 + 1);
        v19 = *(v18 + 2);
        v21 = *v18;
        *&v24[13] = *(v18 + 45);
        v23[1] = v20;
        *v24 = v19;
        v23[0] = v21;
        memmove((*(v4 + 48) + v17), v18, 0x35uLL);
        result = sub_1A94FF810(v23, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1A94FD508(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB388398, &qword_1A9596DD0);
  result = sub_1A957CEA8();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v3;
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
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v21 = *(v3 + 48) + 56 * (v18 | (v6 << 6));
      v22 = *v21;
      v23 = *(v21 + 45);
      v24 = *(v21 + 32);
      v37 = *(v21 + 16);
      *v38 = v24;
      *&v38[13] = v23;
      v36 = v22;
      sub_1A957D4F8();
      v25 = *(&v37 + 1);
      sub_1A94FF810(&v36, &v34);
      sub_1A957C228();
      sub_1A957D518();
      if (v25)
      {
        sub_1A957C228();
      }

      v34 = *v38;
      v35 = *&v38[16];
      type metadata accessor for AudioComponentDescription();
      sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
      sub_1A957C068();
      sub_1A957D518();
      result = sub_1A957D548();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v3 = v33;
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

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v3 = v33;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 56 * v13;
      v15 = v36;
      v16 = v37;
      v17 = *v38;
      *(v14 + 45) = *&v38[13];
      *(v14 + 16) = v16;
      *(v14 + 32) = v17;
      *v14 = v15;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v20 = *(v7 + 8 * v6);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1A94FD834(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1A957CE28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v27 = v4;
      v9 = (v8 + 1) & v7;
      do
      {
        v13 = 56 * v6;
        v14 = *(v3 + 48) + 56 * v6;
        v15 = *v14;
        v16 = *(v14 + 45);
        v17 = *(v14 + 32);
        v31 = *(v14 + 16);
        *v32 = v17;
        *&v32[13] = v16;
        v30 = v15;
        sub_1A957D4F8();
        v18 = *(&v31 + 1);
        sub_1A94FF810(&v30, &v28);
        sub_1A957C228();
        sub_1A957D518();
        if (v18)
        {
          sub_1A957C228();
        }

        v28 = *v32;
        v29 = *&v32[16];
        type metadata accessor for AudioComponentDescription();
        sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
        sub_1A957C068();
        sub_1A957D518();
        v19 = sub_1A957D548();
        sub_1A94FF990(&v30);
        v20 = v19 & v7;
        if (v2 >= v9)
        {
          v4 = v27;
          if (v20 < v9)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v27;
          if (v20 >= v9)
          {
            goto LABEL_13;
          }
        }

        if (v2 >= v20)
        {
LABEL_13:
          v21 = *(v3 + 48);
          v22 = v21 + 56 * v2;
          v23 = (v21 + v13);
          if (56 * v2 < v13 || v22 >= v23 + 56 || v2 != v6)
          {
            v10 = *v23;
            v11 = v23[1];
            v12 = v23[2];
            *(v22 + 48) = *(v23 + 6);
            *(v22 + 16) = v11;
            *(v22 + 32) = v12;
            *v22 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1A94FDAFC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v35 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    sub_1A94FC8B0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1A94FD380();
      goto LABEL_29;
    }

    sub_1A94FD508(v6 + 1);
  }

  v39 = *v3;
  sub_1A957D4F8();
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  v41 = *(v5 + 8);
  v42 = *v5;
  sub_1A957C228();
  v40 = v8;
  sub_1A957D518();
  if (v8)
  {
    sub_1A957C228();
  }

  v10 = *(v5 + 52);
  v12 = *(v5 + 32);
  v11 = *(v5 + 36);
  v13 = *(v5 + 40);
  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
  sub_1A957C068();
  v33 = v10;
  sub_1A957D518();
  result = sub_1A957D548();
  v14 = -1 << *(v39 + 32);
  a2 = result & ~v14;
  if ((*(v39 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v38 = v9;
    v15 = ~v14;
    v36 = v13;
    v37 = v12 | (v11 << 32);
    v16 = v8;
    do
    {
      v17 = *(v39 + 48) + 56 * a2;
      result = *v17;
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v21 = *(v17 + 32);
      v20 = *(v17 + 36);
      v22 = *(v17 + 40);
      v23 = *(v17 + 48);
      v24 = *(v17 + 52);
      if (*v17 != v42 || *(v17 + 8) != v41)
      {
        result = sub_1A957D3E8();
        v16 = v40;
        if ((result & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      if (v18)
      {
        if (!v16)
        {
          goto LABEL_13;
        }

        if (v19 != v38 || v18 != v16)
        {
          result = sub_1A957D3E8();
          v16 = v40;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v16)
      {
        goto LABEL_13;
      }

      result = static AudioComponentDescription.== infix(_:_:)(v21 | (v20 << 32), v22, v23, v37, v36);
      v16 = v40;
      if ((result & 1) != 0 && ((v24 ^ v33) & 1) == 0)
      {
        result = sub_1A957D428();
        __break(1u);
        break;
      }

LABEL_13:
      a2 = (a2 + 1) & v15;
    }

    while (((*(v39 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_29:
  v27 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = *(v27 + 48) + 56 * a2;
  v29 = *(v35 + 16);
  *v28 = *v35;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(v35 + 32);
  *(v28 + 45) = *(v35 + 45);
  v30 = *(v27 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v32;
  }

  return result;
}

uint64_t sub_1A94FDE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = 0;
    MEMORY[0x1EEE9AC00]((v4 + 63) >> 6);
    sub_1A957BB88();
    __break(1u);

    result = sub_1A9500BC0(0, v6);
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

void *sub_1A94FDF68(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = (a3)(&v8, a1);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_1A9500BC0(v6, v7);
  }

  return result;
}

int8x8_t *sub_1A94FDFBC(int8x8_t *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a6;
  if (a4)
  {
    if (result && a2)
    {
      a3 = 0;
      v10 = 8 * a2;
      v11 = result;
      while (1)
      {
        v12 = vcnt_s8(*v11);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = __OFADD__(a3, v12.u32[0]);
        a3 += v12.u32[0];
        if (v13)
        {
          break;
        }

        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    goto LABEL_14;
  }

LABEL_7:
  if (!a3)
  {
LABEL_14:
    sub_1A94FE4E4(a5, 0);

    return 0;
  }

  if (a3 != *(a7 + 16))
  {
    result = (a3 + a5);
    if (__OFADD__(a3, a5))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_1A94FE4E4(result, 0);
    v7 = 0;
    v21 = 0;
    goto LABEL_20;
  }

  if (a6)
  {
    v14 = a3;
    v7 = a5;
    swift_beginAccess();
    v15 = MEMORY[0x1AC584A00](*(v9 + 16) & 0x3FLL);
    a3 = v14;
    a5 = v7;
    v16 = v15 - v14;
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v16 = 15 - a3;
  if (__OFSUB__(15, a3))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_1A957BBA8();
    if ((v17 & 1) == 0)
    {
      v18 = result;
      while ((v18 & 0x8000000000000000) == 0)
      {
        if (v18 >= *(a7 + 16))
        {
          goto LABEL_30;
        }

        v19 = *(sub_1A957B308() - 8);
        sub_1A94FE20C(a7 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v18);
        result = sub_1A957BBA8();
        v18 = result;
        if (v20)
        {
          v7 = v21;
          goto LABEL_26;
        }
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_26:

    return v7;
  }

LABEL_11:
  if (v16 >= a5)
  {
    return v9;
  }

  result = (a3 + a5);
  if (!__OFADD__(a3, a5))
  {
    sub_1A94FE4E4(result, 0);
    return v9;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A94FE20C(uint64_t a1)
{
  v3 = sub_1A957B308();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v8 = v1 + 1;
  v7 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A93ABB88(0, *(v7 + 16) + 1, 1);
    v7 = *v8;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_1A93ABB88((v10 > 1), v11 + 1, 1);
    v7 = *v8;
  }

  *(v7 + 16) = v11 + 1;
  result = (*(v4 + 32))(v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v6, v3);
  v1[1] = v7;
  v13 = *v1;
  if (!*v1)
  {
    if (v11 < 0xF)
    {
      return result;
    }

    return sub_1A948AF24();
  }

  swift_beginAccess();
  if (MEMORY[0x1AC584A00](*(v13 + 16) & 0x3FLL) <= v11)
  {
    return sub_1A948AF24();
  }

  result = swift_isUniquelyReferenced_native();
  v14 = *v1;
  if ((result & 1) == 0)
  {
    if (!v14)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v15 = sub_1A957BB58();

    *v1 = v15;
    v14 = v15;
  }

  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1A94FF1F4(&qword_1ED970220, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);

  result = sub_1A957C058();
  v16 = 1 << *(v14 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18 & result;
  v20 = sub_1A957BAF8();
  v23[0] = v14 + 16;
  v23[1] = v14 + 32;
  v23[2] = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = 0;
  while (v24)
  {
    sub_1A957BB38();
  }

  sub_1A957BB28();
}

uint64_t sub_1A94FE4E4(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1A93ABB88(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1AC584A20](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1AC584A20](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = MEMORY[0x1AC584A20](*(v7 + 16));
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_1A948AFC4(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = sub_1A957BB58();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_1A94FE6C4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 184))();
  *a1 = result;
  return result;
}

uint64_t sub_1A94FE70C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = sub_1A937829C(&qword_1EB3882D0, qword_1A9596640);
  v30 = v10;
  v31 = sub_1A93B744C(&qword_1EB3882D8, &qword_1EB3882D0, qword_1A9596640, MEMORY[0x1E6988248]);
  *&v29 = a1;
  v11 = *a5;
  v13 = sub_1A937A490(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      sub_1A9378138(v20);
      return sub_1A932D070(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_1A94B2BF4();
    goto LABEL_7;
  }

  sub_1A94B2374(v16, a4 & 1);
  v22 = sub_1A937A490(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = sub_1A9396054(&v29, v10);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_1A94FE93C(v13, a2, a3, *v26, v19);

  return sub_1A9378138(&v29);
}

uint64_t sub_1A94FE93C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_1A937829C(&qword_1EB3882D0, qword_1A9596640);
  v17 = sub_1A93B744C(&qword_1EB3882D8, &qword_1EB3882D0, qword_1A9596640, MEMORY[0x1E6988248]);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1A932D070(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_1A94FEA2C(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 56 * (v17 | (v12 << 6)));
      v20 = *(v18 + 1);
      v19 = *(v18 + 2);
      v21 = *v18;
      *&v26[13] = *(v18 + 45);
      v25[1] = v20;
      *v26 = v19;
      v25[0] = v21;
      memmove(v11, v18, 0x35uLL);
      if (v14 == v10)
      {
        sub_1A94FF0E4(v25, v24);
        goto LABEL_24;
      }

      v11 += 56;
      sub_1A94FF0E4(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A94FEBDC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
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

unint64_t sub_1A94FED34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB3883A0, &qword_1A9596DD8);
  v3 = sub_1A957D128();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27[0] = v5;
  *(v27 + 13) = *(a1 + 93);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_1A9391BAC(&v24, v23, &qword_1EB3883A8, &qword_1A9596DE0);
  result = sub_1A937A490(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = v3[7] + 56 * result;
    v13 = v25;
    v14 = v26;
    v15 = v27[0];
    *(v12 + 45) = *(v27 + 13);
    *(v12 + 16) = v14;
    *(v12 + 32) = v15;
    *v12 = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = (v10 + 72);
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27[0] = v21;
    *(v27 + 13) = *(v10 + 61);
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_1A9391BAC(&v24, v23, &qword_1EB3883A8, &qword_1A9596DE0);
    result = sub_1A937A490(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A94FEEE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&unk_1EB388450, &qword_1A9596E28);
    v3 = sub_1A957D128();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A9391BAC(v4, v13, &qword_1EB3883E0, &unk_1A9596E10);
      result = sub_1A93B1014(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A93981D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_1A94FF020(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A9500F54();
  result = MEMORY[0x1AC585770](v2, &type metadata for SSEVoiceLoader.SSERecord, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v13[0] = *v5;
      v7 = *(v5 + 32);
      v13[1] = v6;
      v14[0] = v7;
      *(v14 + 13) = *(v5 + 45);
      sub_1A94FF810(v13, v10);
      sub_1A94FB87C(v8, v13);
      v10[0] = v8[0];
      v10[1] = v8[1];
      *v11 = *v9;
      *&v11[13] = *&v9[13];
      sub_1A94FF990(v10);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

unint64_t sub_1A94FF14C()
{
  result = qword_1EB3882F0;
  if (!qword_1EB3882F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3882F0);
  }

  return result;
}

unint64_t sub_1A94FF1A0()
{
  result = qword_1EB38A950[0];
  if (!qword_1EB38A950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38A950);
  }

  return result;
}

uint64_t sub_1A94FF1F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

BOOL _s12TextToSpeech14SSEVoiceLoaderV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 12);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 52);
  v13 = *(a1 + 52);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  return static AudioComponentDescription.== infix(_:_:)(v3, v5, v6, v9, v10) && v13 == v12;
}

uint64_t sub_1A94FF348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A95C4C10 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261507473726966 && a2 == 0xEA00000000007974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A94FF4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A937829C(&unk_1EB388380, &unk_1A9596DC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94FF1A0();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  LOBYTE(v31) = 0;
  v9 = sub_1A957D1E8();
  v11 = v10;
  v27 = v9;
  LOBYTE(v31) = 1;
  *&v26 = sub_1A957D198();
  *(&v26 + 1) = v12;
  type metadata accessor for AudioComponentDescription();
  LOBYTE(v28) = 2;
  sub_1A94FF1F4(&qword_1EB386388, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
  sub_1A957D238();
  v22 = HIDWORD(v31);
  v23 = v31;
  v41 = v32;
  v24 = v33;
  v25 = HIDWORD(v32);
  v42 = 3;
  v13 = sub_1A957D1F8();
  (*(v6 + 8))(v8, v5);
  HIDWORD(v21) = v13 & 1;
  v15 = *(&v26 + 1);
  v14 = v27;
  *&v28 = v27;
  *(&v28 + 1) = v11;
  v16 = v26;
  v29 = v26;
  v17 = v22;
  v18 = v23;
  *v30 = __PAIR64__(v22, v23);
  *&v30[8] = v41;
  *&v30[12] = v25;
  *&v30[16] = v24;
  v30[20] = BYTE4(v21);
  sub_1A94FF810(&v28, &v31);
  sub_1A9378138(a1);
  v31 = v14;
  v32 = v11;
  v33 = v16;
  v34 = v15;
  v35 = v18;
  v36 = v17;
  v37 = v41;
  v38 = v25;
  v39 = v24;
  v40 = BYTE4(v21);
  result = sub_1A94FF990(&v31);
  v20 = v29;
  *a2 = v28;
  *(a2 + 16) = v20;
  *(a2 + 32) = *v30;
  *(a2 + 45) = *&v30[13];
  return result;
}

uint64_t sub_1A94FF848(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return sub_1A94F8214(a1, v4);
}

unint64_t sub_1A94FF8E8()
{
  result = qword_1EB38AAF8[0];
  if (!qword_1EB38AAF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38AAF8);
  }

  return result;
}

unint64_t sub_1A94FF93C()
{
  result = qword_1EB386158;
  if (!qword_1EB386158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386158);
  }

  return result;
}

unint64_t sub_1A94FF9C0()
{
  result = qword_1EB386128;
  if (!qword_1EB386128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386128);
  }

  return result;
}

unint64_t sub_1A94FFA18()
{
  result = qword_1EB388330;
  if (!qword_1EB388330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388330);
  }

  return result;
}

uint64_t sub_1A94FFA6C(uint64_t a1, uint64_t a2)
{
  result = sub_1A94FF1F4(&unk_1EB386080, a2, type metadata accessor for SSELoaderManager, &protocol conformance descriptor for SSELoaderManager);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A94FFAC8()
{
  result = qword_1EB386138;
  if (!qword_1EB386138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386138);
  }

  return result;
}

unint64_t sub_1A94FFB20()
{
  result = qword_1EB388340;
  if (!qword_1EB388340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388340);
  }

  return result;
}

uint64_t dispatch thunk of SSELoaderManager.initialize()()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return v4();
}

uint64_t dispatch thunk of SSELoaderManager.scan()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return v4();
}

uint64_t dispatch thunk of SSELoaderManager.triggerFirstBootVoiceLoads()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return v4();
}

__n128 sub_1A94FFFDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A950000C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_1A9500058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A95000E0()
{
  result = qword_1EB3A0F60[0];
  if (!qword_1EB3A0F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A0F60);
  }

  return result;
}

unint64_t sub_1A9500138()
{
  result = qword_1EB3A1070;
  if (!qword_1EB3A1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1070);
  }

  return result;
}

unint64_t sub_1A9500190()
{
  result = qword_1EB38AAE0;
  if (!qword_1EB38AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38AAE0);
  }

  return result;
}

unint64_t sub_1A95001E8()
{
  result = qword_1EB38AAE8;
  if (!qword_1EB38AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38AAE8);
  }

  return result;
}

unint64_t sub_1A9500240()
{
  result = qword_1EB38A940;
  if (!qword_1EB38A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38A940);
  }

  return result;
}

unint64_t sub_1A9500298()
{
  result = qword_1EB38A948;
  if (!qword_1EB38A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38A948);
  }

  return result;
}

uint64_t sub_1A95002EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A9382328;

  return sub_1A94F8214(a1, v4);
}

void sub_1A95003C4()
{
  v1 = *(sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A94F8E94(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1A950047C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A9500494(void *a1, void *a2)
{
  v5 = *(sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1A94F9100(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 19) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 19) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v8 + 19) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1A950057C()
{
  v1 = *(sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
    v7 = (v0 + v5);
    v43 = v7[1];
    v44 = *v7;
    v41 = *(v0 + v6 + 8);
    v42 = *(v0 + v6);
    v8 = v0 + ((v6 + 19) & 0xFFFFFFFFFFFFFFF8);
    v39 = *(v8 + 8);
    v40 = *v8;
    v38 = *(v8 + 16);
    v9 = objc_opt_self();
    v45 = v4;
    v10 = [v45 AUAudioUnit];
    v11 = [v9 makeAU_];

    [v11 remoteProcessAuditToken];
    sub_1A957C1C8();
    v12 = xpc_copy_entitlement_for_token();

    if (v12 && (v13 = xpc_BOOL_get_value(v12), swift_unknownObjectRelease(), v13))
    {
      v14 = sub_1A957C0C8();
      v15 = [v11 messageChannelFor_];

      v16 = [objc_allocWithZone(TTSAUMessagingHost) initWithMessageChannel_];
      swift_unknownObjectRelease();
      v17 = [v16 voicesExternallyManaged];
      LODWORD(v15) = [v17 BOOLValue];

      if (v15)
      {
        v50[0] = MEMORY[0x1E69E7CC0];
        sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
        sub_1A957C5C8();

        return;
      }

      v22 = 1;
    }

    else
    {
      [v11 remoteProcessAuditToken];
      sub_1A957C1C8();
      v18 = xpc_copy_entitlement_for_token();

      if (v18 && (value = xpc_BOOL_get_value(v18), swift_unknownObjectRelease(), value))
      {
        sub_1A94FF14C();
        v20 = swift_allocError();
        *v21 = 3;
        v50[0] = v20;
        sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
        sub_1A957C5B8();
        v22 = 0;
      }

      else
      {
        v22 = 0;
      }
    }

    v25 = [v11 speechVoices];
    sub_1A9387478(0, &qword_1EB385EB8, 0x1E69584F0);
    v26 = sub_1A957C4C8();

    if (v26 >> 62)
    {
      goto LABEL_31;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v11; v27; i = v11)
    {
      v11 = (v26 & 0xFFFFFFFFFFFFFF8);
      v28 = MEMORY[0x1E69E7CC0];
      v29 = 4;
      while (1)
      {
        v30 = v29 - 4;
        if ((v26 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1AC585DE0](v29 - 4, v26);
        }

        else
        {
          if (v30 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v31 = *(v26 + 8 * v29);
        }

        v32 = v31;
        v33 = __OFADD__(v30, 1);
        v34 = v29 - 3;
        if (v33)
        {
          break;
        }

        v49 = v31;
        sub_1A94F9580(&v49, v22, v44, v43, v45, v42, v41, v40, __src, v39, v38);

        memcpy(v50, __src, 0x118uLL);
        if (sub_1A932D058(v50) == 1)
        {
          memcpy(__dst, __src, sizeof(__dst));
          sub_1A937B960(__dst, &unk_1EB387BC0, &qword_1A9587E30);
        }

        else
        {
          memcpy(__dst, __src, sizeof(__dst));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1A93A3558(0, *(v28 + 2) + 1, 1, v28);
          }

          v36 = *(v28 + 2);
          v35 = *(v28 + 3);
          if (v36 >= v35 >> 1)
          {
            v28 = sub_1A93A3558((v35 > 1), v36 + 1, 1, v28);
          }

          memcpy(v46, __dst, sizeof(v46));
          *(v28 + 2) = v36 + 1;
          memcpy(&v28[280 * v36 + 32], v46, 0x118uLL);
        }

        ++v29;
        if (v34 == v27)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v27 = sub_1A957CE48();
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_33:

    v50[0] = v28;
    sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
    sub_1A957C5C8();
  }

  else
  {
    v23 = *(v0 + 24);
    if (v23)
    {
      v50[0] = *(v0 + 24);
      v24 = v23;
      sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
      sub_1A957C5B8();
    }
  }
}

int8x8_t *sub_1A9500B68@<X0>(uint64_t *a1@<X0>, int8x8_t **a2@<X8>)
{
  result = sub_1A9500C04(a1, v2[2], v2[3], *(v2[4] + 8));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1A9500BC0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

int8x8_t *sub_1A9500C04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v7 = sub_1A957B308();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = *(a3 + 16);
  v35 = a1;
  sub_1A957BBB8();
  v40 = *(a4 + 16);
  if (v40)
  {
    v15 = v14;
    v16 = 0;
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v43 = v18;
    v41 = *(v17 + 56);
    v42 = v15;
    v19 = (v17 - 8);
    v20 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v38 = a3;
    v39 = a4 + v20;
    v37 = a3 + v20;
    v34 = v15;
    v21 = v36;
    v18(v13, a4 + v20, v7);
    while (1)
    {
      if (v21)
      {

        v22 = sub_1A948A7A0(v13, v37, v42, (v21 + 16), v21 + 32);
        v24 = v23;

        if ((v24 & 1) != 0 || v22 < 0)
        {
          a3 = v38;
          goto LABEL_5;
        }
      }

      else
      {
        if (!v42)
        {
          goto LABEL_5;
        }

        v25 = 0;
        v26 = v37;
        while (1)
        {
          v43(v11, v26, v7);
          sub_1A94FF1F4(&unk_1ED970210, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
          v27 = sub_1A957C098();
          (*v19)(v11, v7);
          if (v27)
          {
            break;
          }

          ++v25;
          v26 += v41;
          if (v42 == v25)
          {
            a3 = v38;
            v21 = v36;
            goto LABEL_5;
          }
        }
      }

      if (sub_1A957BB98())
      {
        a3 = v38;
        if (v34 == 1)
        {
          (*v19)(v13, v7);
          return 0;
        }

        --v34;
      }

      else
      {
        a3 = v38;
      }

      v21 = v36;
LABEL_5:
      ++v16;
      (*v19)(v13, v7);
      if (v16 == v40)
      {
        goto LABEL_20;
      }

      v43(v13, v39 + v41 * v16, v7);
    }
  }

  v34 = v14;
  v21 = v36;
LABEL_20:
  v28 = v21;
  v29 = *v35;
  v30 = v35[1];
  v31 = sub_1A937838C();

  return sub_1A94FDFBC(v29, v30, v34, 0, v31, v28, a3);
}

unint64_t sub_1A9500F54()
{
  result = qword_1EB386148;
  if (!qword_1EB386148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386148);
  }

  return result;
}

uint64_t sub_1A9500FA8(uint64_t a1, void *a2)
{
  sub_1A937829C(&qword_1EB3883C8, &qword_1A9596DF8);
  if (a2)
  {
    *&v33[0] = a2;
    v4 = a2;
    sub_1A937829C(&qword_1EB3883C8, &qword_1A9596DF8);
    return sub_1A957C5B8();
  }

  else if (a1)
  {
    v6 = a1 + 56;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 56);
    v10 = (v7 + 63) >> 6;
    v30 = a1;

    v11 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v12 = &unk_1EB388448;
    while (v9)
    {
LABEL_13:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1A93B1F94(*(v30 + 48) + 40 * (v14 | (v11 << 6)), v32);
      sub_1A93B1F94(v32, v31);
      sub_1A937829C(v12, &qword_1A9596E20);
      if (swift_dynamicCast())
      {
        v15 = v12;
        sub_1A94F508C(v33);
        v27 = v33[1];
        v29 = v33[0];
        v17 = v34;
        v16 = v35;
        v18 = v37;
        v19 = v36;
        swift_unknownObjectRelease();
        result = sub_1A93B1058(v32);
        if (*(&v29 + 1))
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1A94FB048(0, *(v28 + 16) + 1, 1, v28);
            v28 = result;
          }

          v20 = v27;
          v22 = *(v28 + 16);
          v21 = *(v28 + 24);
          v23 = v22 + 1;
          v24 = v29;
          if (v22 >= v21 >> 1)
          {
            result = sub_1A94FB048((v21 > 1), v22 + 1, 1, v28);
            v20 = v27;
            v24 = v29;
            v23 = v22 + 1;
            v28 = result;
          }

          *(v28 + 16) = v23;
          v25 = v28 + 56 * v22;
          *(v25 + 32) = v24;
          *(v25 + 48) = v20;
          *(v25 + 64) = v17;
          *(v25 + 72) = v16;
          *(v25 + 84) = (v19 | (v18 << 32)) >> 32;
          *(v25 + 80) = v19;
          v12 = v15;
        }
      }

      else
      {
        result = sub_1A93B1058(v32);
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

        v26 = v28;
        goto LABEL_22;
      }

      v9 = *(v6 + 8 * v13);
      ++v11;
      if (v9)
      {
        v11 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v32[0] = v26;
    sub_1A937829C(&qword_1EB3883C8, &qword_1A9596DF8);
    return sub_1A957C5C8();
  }

  return result;
}

unint64_t sub_1A950129C()
{
  result = qword_1EB386108;
  if (!qword_1EB386108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386108);
  }

  return result;
}

uint64_t sub_1A95012F0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3882C8, &qword_1A9596638);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A9501374()
{
  result = qword_1EB386118;
  if (!qword_1EB386118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386118);
  }

  return result;
}

unint64_t sub_1A95013F0()
{
  result = qword_1ED96FDA8;
  if (!qword_1ED96FDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED96FDA8);
  }

  return result;
}

uint64_t TTSExecutor.__allocating_init()()
{
  v8 = sub_1A957CAD8();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A957CBD8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A957BF48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = swift_allocObject();
  v7[1] = sub_1A95013F0();
  sub_1A957BF38();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A950238C(&unk_1ED96FE80, 255, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
  sub_1A937829C(&qword_1EB388348, &qword_1A9596DA8);
  sub_1A946D250(&qword_1ED96FDB0, &qword_1EB388348, &qword_1A9596DA8);
  sub_1A957CE08();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v8);
  *(v5 + 16) = sub_1A957CBE8();
  return v5;
}

uint64_t TTSExecutor.init()()
{
  v9 = sub_1A957CAD8();
  v0 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A957CBD8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A957BF48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A95013F0();
  sub_1A957BF38();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1A950238C(&unk_1ED96FE80, 255, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
  sub_1A937829C(&qword_1EB388348, &qword_1A9596DA8);
  sub_1A946D250(&qword_1ED96FDB0, &qword_1EB388348, &qword_1A9596DA8);
  sub_1A957CE08();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v9);
  v5 = sub_1A957CBE8();
  v6 = v10;
  *(v10 + 16) = v5;
  return v6;
}

uint64_t TTSExecutor.enqueue(_:)(uint64_t a1)
{
  v2 = sub_1A957BF18();
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A957BF48();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A957C618();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  aBlock[4] = sub_1A9501BD8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CED8D8;
  v10 = _Block_copy(aBlock);

  sub_1A957BF28();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1A950238C(qword_1ED96FED0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v7, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v2);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_1A9501BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = sub_1A950238C(&qword_1ED96FE68, a2, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);

  return MEMORY[0x1EEE6DF20](v3, v4, v5);
}

uint64_t sub_1A9501C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TTSExecutor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A9501D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1A950238C(&qword_1ED96FE70, a2, type metadata accessor for TTSExecutor, &protocol conformance descriptor for TTSExecutor);

  return a4(a1, v6, v7);
}

uint64_t sub_1A9501F40()
{
  v8 = sub_1A957CAD8();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A957CBD8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A957BF48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  type metadata accessor for TTSExecutor();
  v5 = swift_allocObject();
  v7[1] = sub_1A95013F0();
  sub_1A957BF38();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A950238C(&unk_1ED96FE80, 255, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
  sub_1A937829C(&qword_1EB388348, &qword_1A9596DA8);
  sub_1A946D250(&qword_1ED96FDB0, &qword_1EB388348, &qword_1A9596DA8);
  sub_1A957CE08();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v8);
  result = sub_1A957CBE8();
  *(v5 + 16) = result;
  qword_1ED9708C8 = v5;
  return result;
}

uint64_t static TTSExecutor.shared.getter()
{
  if (qword_1ED9708C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TTSExecutor.shared.setter(uint64_t a1)
{
  if (qword_1ED9708C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1ED9708C8 = a1;
}

uint64_t (*static TTSExecutor.shared.modify(uint64_t a1))(void)
{
  if (qword_1ED9708C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t TTSActor.unownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a1);
  v2 = sub_1A957CC08();

  return v2;
}

uint64_t sub_1A950238C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_1A950246C(const void *a1)
{
  v3 = objc_allocWithZone(v1);
  memcpy(&v3[OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice], a1, 0x118uLL);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1A9502528()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceSmuggler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A95025A4()
{
  v1 = sub_1A957B308();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  memcpy(v26, v0, 0x118uLL);
  v8 = [objc_allocWithZone(MEMORY[0x1E69584F8]) init];
  [v8 setIsInstalled_];
  [v8 setAssetSize_];
  [v8 setGender_];
  memcpy(v25, v0, sizeof(v25));
  v9 = CoreSynthesizer.Voice.synthesisProviderVoice.getter();
  [v8 setSynthesisProviderVoice_];

  [v8 setQuality_];
  v10 = sub_1A957C0C8();
  [v8 setIdentifier_];

  v11 = v26[8];
  v22 = v26[8];
  v12 = *sub_1A9493C54();
  v24 = v11;
  v25[0] = v12;
  sub_1A9387410();
  [v8 setIsDefault_];
  memcpy(v25, v26, sizeof(v25));
  CoreSynthesizer.Voice.primaryLocale.getter(v5);
  sub_1A957B1A8();
  v13 = *(v2 + 8);
  v13(v5, v1);
  sub_1A957B108();
  sub_1A957B118();
  v13(v7, v1);
  v14 = sub_1A957C0C8();

  [v8 setLanguage_];

  v15 = *sub_1A9493C00();
  v24 = v22;
  v25[0] = v15;
  [v8 setIsNoveltyVoice_];
  v16 = sub_1A957C0C8();
  [v8 setNonLocalizedNameWithoutQuality_];

  v17 = type metadata accessor for VoiceSmuggler();
  v18 = objc_allocWithZone(v17);
  memcpy(&v18[OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice], v26, 0x118uLL);
  sub_1A937B3DC(v26, v25);
  v23.receiver = v18;
  v23.super_class = v17;
  v19 = objc_msgSendSuper2(&v23, sel_init);
  [v8 setCoreVoiceWrapper_];

  return v8;
}

void *AVSpeechSynthesisVoice.coreVoice.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 coreVoiceWrapper];
  type metadata accessor for VoiceSmuggler();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    memcpy(v6, (v4 + OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice), sizeof(v6));
    sub_1A937B3DC(v6, __dst);

    memcpy(__dst, v6, sizeof(__dst));
    nullsub_23();
  }

  else
  {

    sub_1A93847E0(__dst);
  }

  return memcpy(a1, __dst, 0x118uLL);
}

uint64_t sub_1A95029E8(void *a1)
{
  v1 = a1;
  IsSystem = AVSpeechSynthesisVoice.coreVoiceIsSystemVoice.getter();

  return IsSystem & 1;
}

uint64_t sub_1A9502A34(void *a1)
{
  v1 = a1;
  IsSiri = AVSpeechSynthesisVoice.coreVoiceIsSiriVoice.getter();

  return IsSiri & 1;
}

uint64_t sub_1A9502A80(uint64_t (*a1)(void *))
{
  v3 = [v1 coreVoiceWrapper];
  type metadata accessor for VoiceSmuggler();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    memcpy(__dst, (v4 + OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice), sizeof(__dst));
    sub_1A937B3DC(__dst, v9);

    v5 = memcpy(v9, __dst, sizeof(v9));
    v8 = *a1(v5);
    v6 = CoreSynthesizer.Voice.has(_:)(&v8);
    sub_1A937B48C(__dst);
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

id sub_1A9502B54(void *a1)
{
  v1 = a1;
  v2 = [v1 coreVoiceWrapper];
  type metadata accessor for VoiceSmuggler();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    memcpy(__dst, (v3 + OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice), sizeof(__dst));
    sub_1A937B3DC(__dst, v7);

    memcpy(v7, __dst, sizeof(v7));
    CoreSynthesizer.Voice.localizedNameWithFootprint.getter();

    sub_1A937B48C(__dst);
  }

  else
  {

    v4 = [v1 nonLocalizedNameWithoutQuality];
    sub_1A957C0F8();
  }

  v5 = sub_1A957C0C8();

  return v5;
}

uint64_t AVSpeechSynthesisVoice.coreVoiceLocalizedName.getter()
{
  v1 = [v0 coreVoiceWrapper];
  type metadata accessor for VoiceSmuggler();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    memcpy(__dst, (v2 + OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice), sizeof(__dst));
    sub_1A937B3DC(__dst, v7);

    memcpy(v7, __dst, sizeof(v7));
    v3 = CoreSynthesizer.Voice.localizedNameWithFootprint.getter();
    sub_1A937B48C(__dst);
    return v3;
  }

  else
  {

    v5 = [v0 nonLocalizedNameWithoutQuality];
    v6 = sub_1A957C0F8();

    return v6;
  }
}

uint64_t UInt32.dspGraphValue.getter(int a1)
{
  sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7668];
  *(v2 + 16) = xmmword_1A9587160;
  v4 = MEMORY[0x1E69E76D0];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_1A957C138();
  MEMORY[0x1AC585140](v5);

  return 30768;
}

uint64_t sub_1A9502EA8(uint64_t a1)
{
  v3 = *v1;
  sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A9587160;
  v5 = MEMORY[0x1E69E76D0];
  *(v4 + 56) = a1;
  *(v4 + 64) = v5;
  *(v4 + 32) = v3;
  v6 = sub_1A957C138();
  MEMORY[0x1AC585140](v6);

  return 30768;
}

uint64_t sub_1A9502F48(uint64_t a1)
{
  v2 = sub_1A9503650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9502F84(uint64_t a1)
{
  v2 = sub_1A9503650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9502FC0()
{
  v1 = 0x7475706E69;
  if (*v0 != 1)
  {
    v1 = 0x74757074756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7892834;
  }
}

uint64_t sub_1A950300C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A950BDB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9503034(uint64_t a1)
{
  v2 = sub_1A9503554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9503070(uint64_t a1)
{
  v2 = sub_1A9503554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A95030AC(uint64_t a1)
{
  v2 = sub_1A95035FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A95030E8(uint64_t a1)
{
  v2 = sub_1A95035FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9503124(uint64_t a1)
{
  v2 = sub_1A95035A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9503160(uint64_t a1)
{
  v2 = sub_1A95035A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A950319C(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v27 = a2;
  v4 = sub_1A937829C(&qword_1EB388470, &qword_1A9596FF8);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v20 - v5;
  v6 = sub_1A937829C(&qword_1EB388478, &qword_1A9597000);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = sub_1A937829C(&qword_1EB388480, &qword_1A9597008);
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = sub_1A937829C(&qword_1EB388488, &qword_1A9597010);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  sub_1A93780F4(a1, a1[3]);
  sub_1A9503554();
  v16 = v28;
  sub_1A957D598();
  if (!v16)
  {
    v30 = 1;
    sub_1A95035FC();
    sub_1A957D288();
    v18 = v22;
    v17 = v23;
    goto LABEL_5;
  }

  if (v16 == 1)
  {
    v31 = 2;
    sub_1A95035A8();
    v8 = v24;
    sub_1A957D288();
    v18 = v25;
    v17 = v26;
LABEL_5:
    (*(v18 + 8))(v8, v17);
    return (*(v13 + 8))(v15, v12);
  }

  v29 = 0;
  sub_1A9503650();
  sub_1A957D288();
  sub_1A957D2E8();
  (*(v21 + 8))(v11, v9);
  return (*(v13 + 8))(v15, v12);
}

unint64_t sub_1A9503554()
{
  result = qword_1EB3A1200;
  if (!qword_1EB3A1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1200);
  }

  return result;
}

unint64_t sub_1A95035A8()
{
  result = qword_1EB3A1208;
  if (!qword_1EB3A1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1208);
  }

  return result;
}

unint64_t sub_1A95035FC()
{
  result = qword_1EB3A1210;
  if (!qword_1EB3A1210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1210);
  }

  return result;
}

unint64_t sub_1A9503650()
{
  result = qword_1EB3A1218;
  if (!qword_1EB3A1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1218);
  }

  return result;
}

void *sub_1A95036A4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A950BEC4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1A95036EC()
{
  v1 = *(v0 + 8);
  sub_1A957D4F8();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1AC5863C0](0);
      sub_1A957C228();
      return sub_1A957D548();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1AC5863C0](v2);
  return sub_1A957D548();
}

uint64_t sub_1A950376C(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 1;
    return MEMORY[0x1AC5863C0](v3);
  }

  if (v2 == 1)
  {
    v3 = 2;
    return MEMORY[0x1AC5863C0](v3);
  }

  MEMORY[0x1AC5863C0](0);

  return sub_1A957C228();
}

uint64_t sub_1A95037F4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1A957D4F8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1AC5863C0](0);
      sub_1A957C228();
      return sub_1A957D548();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1AC5863C0](v3);
  return sub_1A957D548();
}

uint64_t sub_1A9503870(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_1A957D3E8();
  }
}

uint64_t sub_1A95038E4()
{
  v1 = 0x65707974627573;
  if (*v0 != 1)
  {
    v1 = 0x74636166756E616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1A9503940@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A950CBD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9503968(uint64_t a1)
{
  v2 = sub_1A950C534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A95039A4(uint64_t a1)
{
  v2 = sub_1A950C534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A95039E0(uint64_t a1)
{
  v2 = sub_1A950C4E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9503A1C(uint64_t a1)
{
  v2 = sub_1A950C4E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9503A58()
{
  if (*v0)
  {
    return 0x6E49746C697562;
  }

  else
  {
    return 0x696E556F69647561;
  }
}

uint64_t sub_1A9503A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696E556F69647561 && a2 == 0xE900000000000074;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E49746C697562 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A9503B7C(uint64_t a1)
{
  v2 = sub_1A950C48C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9503BB8(uint64_t a1)
{
  v2 = sub_1A950C48C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9503BF4(void *a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB388490, &qword_1A9597018);
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = sub_1A937829C(&qword_1EB388498, &qword_1A9597020);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1A937829C(&qword_1EB3884A0, &qword_1A9597028);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  sub_1A93780F4(a1, a1[3]);
  sub_1A950C48C();
  sub_1A957D598();
  if (*(v2 + 48))
  {
    v29 = 1;
    sub_1A950C4E0();
    sub_1A957D288();
    v14 = v21;
    sub_1A957D2E8();
    (*(v20 + 8))(v6, v14);
  }

  else
  {
    v15 = *(v2 + 16);
    v20 = *(v2 + 24);
    v21 = v15;
    v28 = 0;
    sub_1A950C534();
    sub_1A957D288();
    v27 = 0;
    v17 = v23;
    v16 = v24;
    sub_1A957D2E8();
    if (v16)
    {
      (*(v22 + 8))(v9, v17);
    }

    else
    {
      v26 = 1;
      sub_1A957D2E8();
      v25 = 2;
      sub_1A957D2E8();
      (*(v22 + 8))(v9, v17);
    }
  }

  return (*(v11 + 8))(v13, v10);
}

double sub_1A9503F54@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1A950CCEC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1A9503FBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (a1[6])
  {
    if (a2[6])
    {
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_17;
      }

      return 1;
    }

    return 0;
  }

  if (a2[6])
  {
    return 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  if ((v4 != v6 || v5 != v7) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if ((v9 != v13 || v10 != v14) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v11 == v15 && v12 == v16)
  {
    return 1;
  }

LABEL_17:

  return sub_1A957D3E8();
}

uint64_t sub_1A95040E4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 48))
  {
  }

  else
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    sub_1A950D300(v2, v1, v6, v5, v4, v3, 0);
    MEMORY[0x1AC585140](v2, v1);

    MEMORY[0x1AC585140](32, 0xE100000000000000);
    MEMORY[0x1AC585140](v6, v5);

    MEMORY[0x1AC585140](32, 0xE100000000000000);
    MEMORY[0x1AC585140](v4, v3);

    MEMORY[0x1AC585140](41, 0xE100000000000000);
    return 40;
  }

  return v2;
}

uint64_t sub_1A95041F0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v49 = result;
  if (!v7)
  {
LABEL_7:
    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v50 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
    __break(1u);
    goto LABEL_67;
  }

  while (1)
  {
    v9 = __clz(__rbit64(v7));
    v50 = (v7 - 1) & v7;
LABEL_12:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(result + 56) + 88 * v12;
    v17 = *(v16 + 16);
    v62 = *v16;
    v63 = v17;
    v18 = *(v16 + 80);
    v20 = *(v16 + 48);
    v19 = *(v16 + 64);
    v64 = *(v16 + 32);
    v65 = v20;
    v66 = v19;
    v67 = v18;
    v53 = v20;
    v54 = v17;
    v51 = v64;
    v52 = v62;
    v22 = *(&v19 + 1);
    v21 = v19;

    sub_1A9450A1C(&v62, &v56);
    if (!v14)
    {
      return 1;
    }

    v62 = v52;
    v63 = v54;
    v64 = v51;
    v65 = v53;
    v66 = __PAIR128__(v22, v21);
    v67 = v18;
    v23 = sub_1A937A490(v15, v14);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_65;
    }

    v26 = *(a2 + 56) + 88 * v23;
    v27 = *(v26 + 16);
    v56 = *v26;
    v57 = v27;
    v29 = *(v26 + 48);
    v28 = *(v26 + 64);
    v30 = *(v26 + 80);
    v58 = *(v26 + 32);
    v61 = v30;
    v59 = v29;
    v60 = v28;
    if (v29)
    {
      if ((v65 & 1) == 0)
      {
        goto LABEL_65;
      }

      if (v56 == v62)
      {
        goto LABEL_25;
      }

LABEL_24:
      if ((sub_1A957D3E8() & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_25;
    }

    if ((v65 & 1) != 0 || (v31 = v57, v32 = v58, v33 = v63, v34 = v64, v56 != v62) && (sub_1A957D3E8() & 1) == 0 || v31 != v33 && (sub_1A957D3E8() & 1) == 0)
    {
LABEL_65:
      v48 = &v62;
      goto LABEL_62;
    }

    if (v32 != v34)
    {
      goto LABEL_24;
    }

LABEL_25:
    v35 = *(&v59 + 1);
    v36 = *(&v65 + 1);
    sub_1A9450A1C(&v56, v55);
    if ((sub_1A95047BC(v35, v36, sub_1A937C310, &qword_1EB3884D0, &qword_1A9597040, sub_1A9505654) & 1) == 0)
    {
      goto LABEL_61;
    }

    result = sub_1A95047BC(v60, v66, sub_1A937C310, &qword_1EB3884F0, &unk_1A9597050, sub_1A9505058);
    if ((result & 1) == 0)
    {
      goto LABEL_61;
    }

    v37 = *(*(&v60 + 1) + 16);
    if (v37 != *(*(&v66 + 1) + 16))
    {
      goto LABEL_61;
    }

    if (v37 && *(&v60 + 1) != *(&v66 + 1))
    {
      v38 = (*(&v60 + 1) + 40);
      v39 = (*(&v66 + 1) + 40);
      do
      {
        v40 = *v38;
        v41 = *v39;
        if (*v38)
        {
          if (v40 == 1)
          {
            if (v41 != 1)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v41 < 2)
            {
              goto LABEL_61;
            }

            result = *(v38 - 1);
            if (result != *(v39 - 1) || v40 != v41)
            {
              result = sub_1A957D3E8();
              if ((result & 1) == 0)
              {
                goto LABEL_61;
              }
            }
          }
        }

        else if (v41)
        {
          goto LABEL_61;
        }

        v38 += 2;
        v39 += 2;
      }

      while (--v37);
    }

    v42 = *(v61 + 16);
    if (v42 != *(v67 + 16))
    {
LABEL_61:
      sub_1A9450AF4(&v62);
      v48 = &v56;
LABEL_62:
      sub_1A9450AF4(v48);
      return 0;
    }

    if (v42 && v61 != v67)
    {
      break;
    }

LABEL_48:
    sub_1A9450AF4(&v62);
    sub_1A9450AF4(&v56);
    result = v49;
    v7 = v50;
    if (!v50)
    {
      goto LABEL_7;
    }
  }

  v44 = (v61 + 40);
  v45 = (v67 + 40);
  while (v42)
  {
    v46 = *v44;
    v47 = *v45;
    if (*v44)
    {
      if (v46 == 1)
      {
        if (v47 != 1)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v47 < 2)
        {
          goto LABEL_61;
        }

        result = *(v44 - 1);
        if (result != *(v45 - 1) || v46 != v47)
        {
          result = sub_1A957D3E8();
          if ((result & 1) == 0)
          {
            goto LABEL_61;
          }
        }
      }
    }

    else if (v47)
    {
      goto LABEL_61;
    }

    v44 += 2;
    v45 += 2;
    if (!--v42)
    {
      goto LABEL_48;
    }
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1A9504688(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1A937A490(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A95047BC(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(__int128 *, void *))
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = 0;
  v7 = result + 64;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 64);
  v11 = (v8 + 63) >> 6;
  v31 = result;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_13:
    v15 = v12 | (v6 << 6);
    v16 = *(*(result + 48) + 4 * v15);
    v17 = *(result + 56) + 40 * v15;
    v18 = *v17;
    v19 = *(v17 + 8);
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    v22 = *(v17 + 32);
    if (*(v17 + 37))
    {
      v23 = 0x10000000000;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23 & 0xFFFFFF00FFFFFFFFLL | (*(v17 + 36) << 32);
    a3(v18, v19, v21, v20, v22 | (*(v17 + 36) << 32));
    v41[0] = v18;
    v41[1] = v19;
    v41[2] = v21;
    v41[3] = v20;
    v42 = v22;
    v43 = WORD2(v24);
    v25 = sub_1A937BEE0(v16);
    if ((v26 & 1) == 0)
    {
      sub_1A937B960(v41, a4, a5);
      return 0;
    }

    v27 = *(a2 + 56) + 40 * v25;
    v28 = *(v27 + 30);
    v29 = *(v27 + 16);
    v39 = *v27;
    v40[0] = v29;
    *(v40 + 14) = v28;
    sub_1A9391BAC(&v39, v38, a4, a5);
    v30 = a6(&v39, v41);
    sub_1A937B960(v41, a4, a5);
    sub_1A937B960(&v39, a4, a5);
    result = v31;
    v10 = v37;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return 1;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A95049C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = _s12TextToSpeech14TTSAudioEffectO4SpecV7ControlO2eeoiySbAG_AGtFZ_0(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1A9504A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*v3)
      {
        if (v5 == 1)
        {
          if (v6 != 1)
          {
            return 0;
          }
        }

        else if (v6 < 2 || (*(v3 - 1) != *(v4 - 1) || v5 != v6) && (sub_1A957D3E8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1A9504B44()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x69747265706F7270;
  v4 = 0x737475706E69;
  if (v1 != 3)
  {
    v4 = 0x7374757074756FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574656D61726170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A9504BD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A950D5B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9504C00(uint64_t a1)
{
  v2 = sub_1A950D34C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9504C3C(uint64_t a1)
{
  v2 = sub_1A950D34C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9504C78(void *a1)
{
  v3 = v1;
  v5 = sub_1A937829C(&qword_1EB3884A8, &qword_1A9597030);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A950D34C();
  sub_1A957D598();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v15 = v3[2];
  v16 = *(v3 + 48);
  v12 = 0;
  sub_1A950D3A0();
  sub_1A957D338();
  if (!v2)
  {
    *&v13 = *(v3 + 7);
    v12 = 1;
    sub_1A937829C(&qword_1EB3884B8, &qword_1A9597038);
    sub_1A950D3F4();
    sub_1A957D338();
    *&v13 = *(v3 + 8);
    v12 = 2;
    sub_1A937829C(&qword_1EB3884D8, &qword_1A9597048);
    sub_1A950D4AC();
    sub_1A957D338();
    *&v13 = *(v3 + 9);
    v12 = 3;
    sub_1A937829C(&qword_1EB3876C0, &qword_1A958EB68);
    sub_1A9510300(&qword_1EB3884F8, sub_1A950D564, MEMORY[0x1E69E6300]);
    sub_1A957D338();
    *&v13 = *(v3 + 10);
    v12 = 4;
    sub_1A957D338();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_1A9504F44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 48) & 1;
  v7 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v7;
  result = *(a1 + 32);
  *(a6 + 32) = result;
  *(a6 + 48) = v6;
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  *(a6 + 72) = a4;
  *(a6 + 80) = a5;
  return result;
}

double sub_1A9504F78@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1A950D770(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1A9504FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1A950C588(v7, v9) & 1;
}

BOOL sub_1A9505058(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v38 = *(a1 + 24);
  v39 = v6 | (*(a1 + 36) << 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 32);
  if ((*(a1 + 37) & 1) == 0)
  {
    if ((*(a2 + 37) & 1) == 0)
    {
      v37 = *(a2 + 16);
      v17 = *(a1 + 8);
      if (__PAIR128__(v4, v3) == __PAIR128__(v8, v7))
      {
        sub_1A9391BAC(a1, v40, &qword_1EB3884F0, &unk_1A9597050);
        sub_1A9391BAC(a2, v40, &qword_1EB3884F0, &unk_1A9597050);
        v18 = v3;
        sub_1A9328CAC(v3, v4);
      }

      else
      {
        v18 = *a1;
        v20 = *a2;
        v21 = *(a2 + 8);
        v22 = sub_1A957D3E8();
        sub_1A9391BAC(a1, v40, &qword_1EB3884F0, &unk_1A9597050);
        sub_1A9391BAC(a2, v40, &qword_1EB3884F0, &unk_1A9597050);
        sub_1A9328CAC(v20, v21);
        if ((v22 & 1) == 0)
        {
          v15 = v18;
          v16 = v17;
          goto LABEL_22;
        }
      }

      sub_1A9328CAC(v18, v17);
      return v37 == v5;
    }

    v32 = *a2;
    v35 = *(a2 + 8);
    sub_1A9391BAC(a1, v40, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9391BAC(a2, v40, &qword_1EB3884F0, &unk_1A9597050);
LABEL_11:
    sub_1A9328CAC(v3, v4);
    v15 = v32;
    v16 = v35;
LABEL_22:
    sub_1A9328CAC(v15, v16);
    return 0;
  }

  if ((*(a2 + 37) & 1) == 0)
  {
    v32 = *a2;
    v35 = *(a2 + 8);
    sub_1A9391BAC(a1, v40, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9391BAC(a2, v40, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9327228(v3, v4);

    goto LABEL_11;
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (!v4)
  {
    v12 = *a1;
    if (!v8)
    {
      v34 = *(a2 + 20);
      v36 = *(a2 + 16);
      v29 = *(a2 + 28);
      v30 = *(a2 + 24);
      v31 = *(a2 + 36);
      sub_1A9391BAC(a1, v40, &qword_1EB3884F0, &unk_1A9597050);
      sub_1A9391BAC(a2, v40, &qword_1EB3884F0, &unk_1A9597050);
      v14 = v38;
      v13 = v39;
      sub_1A9327228(v12, 0);
      if ((v11 & 0x100000000) != 0)
      {
        goto LABEL_29;
      }

LABEL_25:
      v27 = v30;
      v26 = v31;
      v28 = v29;
      if ((v34 & 1) != 0 || v36 != v5)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    sub_1A9391BAC(a1, v40, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9391BAC(a2, v40, &qword_1EB3884F0, &unk_1A9597050);
    v24 = 0;
LABEL_20:
    sub_1A9327228(v12, v24);

    goto LABEL_21;
  }

  v12 = *a1;
  if (!v8)
  {
    sub_1A9391BAC(a1, v40, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9391BAC(a2, v40, &qword_1EB3884F0, &unk_1A9597050);
    v24 = v10;
    goto LABEL_20;
  }

  v34 = *(a2 + 20);
  v36 = *(a2 + 16);
  v29 = *(a2 + 28);
  v30 = *(a2 + 24);
  v31 = *(a2 + 36);
  if (__PAIR128__(v10, v3) != __PAIR128__(v8, v7))
  {
    v33 = sub_1A957D3E8();
    sub_1A9391BAC(a1, v40, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9391BAC(a2, v40, &qword_1EB3884F0, &unk_1A9597050);
    v14 = v38;
    v13 = v39;
    sub_1A9327228(v12, v10);

    if ((v33 & 1) == 0)
    {
      goto LABEL_21;
    }

    if ((v11 & 0x100000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  sub_1A9391BAC(a1, v40, &qword_1EB3884F0, &unk_1A9597050);
  sub_1A9391BAC(a2, v40, &qword_1EB3884F0, &unk_1A9597050);
  v14 = v38;
  v13 = v39;
  sub_1A9327228(v12, v10);

  if ((v11 & 0x100000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  v27 = v30;
  v26 = v31;
  v28 = v29;
  if ((v34 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_30:
  if ((v14 & 0x100000000) != 0)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((v28 & 1) != 0 || v27 != v14)
  {
    goto LABEL_21;
  }

  if ((v13 & 0x100000000) != 0)
  {
    if (v26)
    {
      goto LABEL_40;
    }

LABEL_21:
    v15 = v12;
    v16 = v10;
    goto LABEL_22;
  }

  if ((v26 & 1) != 0 || v9 != v6)
  {
    goto LABEL_21;
  }

LABEL_40:
  sub_1A9328CAC(v12, v10);
  return 1;
}

BOOL sub_1A9505654(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v38 = *(a1 + 24);
  v39 = v6 | (*(a1 + 36) << 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 32);
  if ((*(a1 + 37) & 1) == 0)
  {
    if ((*(a2 + 37) & 1) == 0)
    {
      v37 = *(a2 + 16);
      v17 = *(a1 + 8);
      if (__PAIR128__(v4, v3) == __PAIR128__(v8, v7))
      {
        sub_1A9391BAC(a1, v40, &qword_1EB3884D0, &qword_1A9597040);
        sub_1A9391BAC(a2, v40, &qword_1EB3884D0, &qword_1A9597040);
        v18 = v3;
        sub_1A9328CAC(v3, v4);
      }

      else
      {
        v18 = *a1;
        v20 = *a2;
        v21 = *(a2 + 8);
        v22 = sub_1A957D3E8();
        sub_1A9391BAC(a1, v40, &qword_1EB3884D0, &qword_1A9597040);
        sub_1A9391BAC(a2, v40, &qword_1EB3884D0, &qword_1A9597040);
        sub_1A9328CAC(v20, v21);
        if ((v22 & 1) == 0)
        {
          v15 = v18;
          v16 = v17;
          goto LABEL_22;
        }
      }

      sub_1A9328CAC(v18, v17);
      return v37 == v5;
    }

    v32 = *a2;
    v35 = *(a2 + 8);
    sub_1A9391BAC(a1, v40, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9391BAC(a2, v40, &qword_1EB3884D0, &qword_1A9597040);
LABEL_11:
    sub_1A9328CAC(v3, v4);
    v15 = v32;
    v16 = v35;
LABEL_22:
    sub_1A9328CAC(v15, v16);
    return 0;
  }

  if ((*(a2 + 37) & 1) == 0)
  {
    v32 = *a2;
    v35 = *(a2 + 8);
    sub_1A9391BAC(a1, v40, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9391BAC(a2, v40, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9327228(v3, v4);

    goto LABEL_11;
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (!v4)
  {
    v12 = *a1;
    if (!v8)
    {
      v34 = *(a2 + 20);
      v36 = *(a2 + 16);
      v29 = *(a2 + 28);
      v30 = *(a2 + 24);
      v31 = *(a2 + 36);
      sub_1A9391BAC(a1, v40, &qword_1EB3884D0, &qword_1A9597040);
      sub_1A9391BAC(a2, v40, &qword_1EB3884D0, &qword_1A9597040);
      v14 = v38;
      v13 = v39;
      sub_1A9327228(v12, 0);
      if ((v11 & 0x100000000) != 0)
      {
        goto LABEL_29;
      }

LABEL_25:
      v27 = v30;
      v26 = v31;
      v28 = v29;
      if ((v34 & 1) != 0 || *&v5 != v36)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    sub_1A9391BAC(a1, v40, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9391BAC(a2, v40, &qword_1EB3884D0, &qword_1A9597040);
    v24 = 0;
LABEL_20:
    sub_1A9327228(v12, v24);

    goto LABEL_21;
  }

  v12 = *a1;
  if (!v8)
  {
    sub_1A9391BAC(a1, v40, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9391BAC(a2, v40, &qword_1EB3884D0, &qword_1A9597040);
    v24 = v10;
    goto LABEL_20;
  }

  v34 = *(a2 + 20);
  v36 = *(a2 + 16);
  v29 = *(a2 + 28);
  v30 = *(a2 + 24);
  v31 = *(a2 + 36);
  if (__PAIR128__(v10, v3) != __PAIR128__(v8, v7))
  {
    v33 = sub_1A957D3E8();
    sub_1A9391BAC(a1, v40, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9391BAC(a2, v40, &qword_1EB3884D0, &qword_1A9597040);
    v14 = v38;
    v13 = v39;
    sub_1A9327228(v12, v10);

    if ((v33 & 1) == 0)
    {
      goto LABEL_21;
    }

    if ((v11 & 0x100000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  sub_1A9391BAC(a1, v40, &qword_1EB3884D0, &qword_1A9597040);
  sub_1A9391BAC(a2, v40, &qword_1EB3884D0, &qword_1A9597040);
  v14 = v38;
  v13 = v39;
  sub_1A9327228(v12, v10);

  if ((v11 & 0x100000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  v27 = v30;
  v26 = v31;
  v28 = v29;
  if ((v34 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_30:
  if ((v14 & 0x100000000) != 0)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((v28 & 1) != 0 || *&v14 != v27)
  {
    goto LABEL_21;
  }

  if ((v13 & 0x100000000) != 0)
  {
    if (v26)
    {
      goto LABEL_40;
    }

LABEL_21:
    v15 = v12;
    v16 = v10;
    goto LABEL_22;
  }

  if ((v26 & 1) != 0 || *&v6 != v9)
  {
    goto LABEL_21;
  }

LABEL_40:
  sub_1A9328CAC(v12, v10);
  return 1;
}

BOOL static TTSAudioEffect.Spec.GenericWire.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v118 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A957CC58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v120 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v115 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v117 = &v111 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v122 = &v111 - v14;
  v135 = *(v8 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v114 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v116 = &v111 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v121 = &v111 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v127 = &v111 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v131 = &v111 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v133 = &v111 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v128 = &v111 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v132 = &v111 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v134 = &v111 - v31;
  v124 = a3;
  v119 = a4;
  v33 = type metadata accessor for TTSAudioEffect.Spec.GenericWire(0, a3, a4, v32);
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v111 - v38;
  v40 = swift_getTupleTypeMetadata2();
  v129 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v111 + *(v40 + 48) - v41;
  v130 = v34;
  v43 = *(v34 + 16);
  v44 = &v111 - v41;
  v43();
  (v43)(v42, a2, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v123 = v44;
    v45 = (v43)(v37, v44, v33);
    v47 = *v37;
    v46 = *(v37 + 1);
    MEMORY[0x1EEE9AC00](v45);
    strcpy(&v111 - 32, "id  min max ");
    v136 = sub_1A93A7B68(&qword_1EB3872B0, &unk_1A9597060);
    v137 = v8;
    v138 = v8;
    v139 = v8;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v49 = TupleTypeMetadata[12];
    v50 = TupleTypeMetadata[16];
    v51 = TupleTypeMetadata[20];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v64 = *(v135 + 8);
      v64(&v37[v51], v8);
      v64(&v37[v50], v8);
      v64(&v37[v49], v8);
      v62 = 0;
      v63 = v129;
      v33 = v40;
LABEL_38:
      v44 = v123;
      goto LABEL_39;
    }

    v113 = v47;
    v52 = *(v42 + 1);
    v112 = *v42;
    v129 = v52;
    v53 = *(v135 + 32);
    v53(v134, &v37[v49], v8);
    v53(v132, &v37[v50], v8);
    v54 = &v37[v51];
    v55 = v128;
    v53(v128, v54, v8);
    v53(v133, &v42[v49], v8);
    v53(v131, &v42[v50], v8);
    v56 = &v42[v51];
    v57 = v127;
    v53(v127, v56, v8);
    if (v46)
    {
      v44 = v123;
      if (v129)
      {
        v58 = v135;
        if (v113 == v112 && v46 == v129)
        {

          goto LABEL_23;
        }

        v68 = sub_1A957D3E8();

        if (v68)
        {
LABEL_23:
          v69 = *(TupleTypeMetadata2 + 48);
          v70 = *(v58 + 16);
          v71 = v122;
          v70(v122, v134, v8);
          v70(&v71[v69], v133, v8);
          v72 = v124;
          v73 = v125 + 48;
          v74 = *(v125 + 48);
          v75 = (v74)(v71, 1, v124);
          v129 = v74;
          v113 = v70;
          v112 = (v58 + 16);
          if (v75 == 1)
          {
            if ((v74)(&v71[v69], 1, v72) == 1)
            {
              v111 = v73;
              v76 = v71;
              v77 = *(v58 + 8);
              v77(v76, v8);
LABEL_31:
              v86 = *(TupleTypeMetadata2 + 48);
              v87 = v117;
              v88 = v113;
              v113(v117, v132, v8);
              v122 = v86;
              v88(&v86[v87], v131, v8);
              v89 = v129;
              v90 = v111;
              if ((v129)(v87, 1, v72) == 1)
              {
                if ((v89)(&v122[v87], 1, v72) == 1)
                {
                  v111 = v90;
                  v77(v87, v8);
LABEL_42:
                  v100 = *(TupleTypeMetadata2 + 48);
                  v101 = v115;
                  v102 = v113;
                  v113(v115, v128, v8);
                  v135 = v100;
                  v102(&v101[v100], v127, v8);
                  v103 = v129;
                  if ((v129)(v101, 1, v72) == 1)
                  {
                    v77(v127, v8);
                    v77(v131, v8);
                    v77(v133, v8);
                    v77(v128, v8);
                    v77(v132, v8);
                    v77(v134, v8);
                    v104 = (v103)(&v101[v135], 1, v72);
                    v44 = v123;
                    v105 = v101;
                    if (v104 == 1)
                    {
                      v77(v101, v8);
LABEL_49:
                      v62 = 1;
                      v63 = v130;
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    v102(v114, v101, v8);
                    v106 = v135;
                    v105 = v101;
                    if ((v103)(&v101[v135], 1, v72) != 1)
                    {
                      v107 = v125;
                      v108 = v118;
                      (*(v125 + 32))(v118, &v101[v106], v72);
                      v109 = v114;
                      LODWORD(v135) = sub_1A957C098();
                      v110 = *(v107 + 8);
                      v110(v108, v72);
                      v77(v127, v8);
                      v77(v131, v8);
                      v77(v133, v8);
                      v77(v128, v8);
                      v77(v132, v8);
                      v77(v134, v8);
                      v110(v109, v72);
                      v77(v105, v8);
                      v44 = v123;
                      if (v135)
                      {
                        goto LABEL_49;
                      }

                      goto LABEL_21;
                    }

                    v77(v127, v8);
                    v77(v131, v8);
                    v77(v133, v8);
                    v77(v128, v8);
                    v77(v132, v8);
                    v77(v134, v8);
                    (*(v125 + 8))(v114, v72);
                    v44 = v123;
                  }

                  (*(v120 + 8))(v105, TupleTypeMetadata2);
LABEL_21:
                  v62 = 0;
                  v63 = v130;
                  goto LABEL_39;
                }
              }

              else
              {
                v88(v116, v87, v8);
                v91 = v122;
                v92 = (v89)(&v122[v87], 1, v72);
                v93 = v72;
                if (v92 != 1)
                {
                  v111 = v90;
                  v95 = v125;
                  v96 = v118;
                  (*(v125 + 32))(v118, &v91[v87], v93);
                  v97 = v116;
                  v98 = sub_1A957C098();
                  v99 = *(v95 + 8);
                  v99(v96, v124);
                  v99(v97, v124);
                  v72 = v124;
                  v77(v87, v8);
                  if (v98)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_37;
                }

                (*(v125 + 8))(v116, v72);
              }

              (*(v120 + 8))(v87, TupleTypeMetadata2);
LABEL_37:
              v77(v127, v8);
              v77(v131, v8);
              v77(v133, v8);
              v77(v128, v8);
              v77(v132, v8);
              v77(v134, v8);
              v62 = 0;
              v63 = v130;
              goto LABEL_38;
            }
          }

          else
          {
            v70(v121, v71, v8);
            if ((v74)(&v71[v69], 1, v72) != 1)
            {
              v111 = v73;
              v78 = v125;
              v79 = &v71[v69];
              v80 = v118;
              (*(v125 + 32))(v118, v79, v72);
              v81 = v121;
              v82 = v71;
              v83 = v72;
              v84 = sub_1A957C098();
              v85 = *(v78 + 8);
              v85(v80, v83);
              v85(v81, v83);
              v77 = *(v135 + 8);
              v77(v82, v8);
              if ((v84 & 1) == 0)
              {
                goto LABEL_37;
              }

              v72 = v124;
              goto LABEL_31;
            }

            (*(v125 + 8))(v121, v72);
          }

          (*(v120 + 8))(v71, TupleTypeMetadata2);
          v77 = *(v58 + 8);
          goto LABEL_37;
        }

LABEL_20:
        v67 = *(v58 + 8);
        v67(v57, v8);
        v67(v131, v8);
        v67(v133, v8);
        v67(v55, v8);
        v67(v132, v8);
        v67(v134, v8);
        goto LABEL_21;
      }

      v58 = v135;
    }

    else
    {
      v44 = v123;
      v58 = v135;
      if (!v129)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_20;
  }

  (v43)(v39, v44, v33);
  v60 = *v39;
  v59 = *(v39 + 1);
  v61 = *(v39 + 4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v62 = 0;
    v63 = v129;
    v33 = v40;
  }

  else
  {
    v65 = *(v42 + 4);
    if (v60 == *v42 && v59 == *(v42 + 1))
    {
    }

    else
    {
      v66 = sub_1A957D3E8();

      if ((v66 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v62 = v61 == v65;
    v63 = v130;
  }

LABEL_39:
  v63[1](v44, v33);
  return v62;
}

uint64_t sub_1A9506D34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D61726170 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A9506DFC(char a1)
{
  if (a1)
  {
    return 0x6D61726170;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1A9506E28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7892834 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A9506F28(char a1)
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](a1 & 1);
  return sub_1A957D548();
}

uint64_t sub_1A9506F70(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7892834;
  }
}

uint64_t sub_1A9506F9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A9507128(unsigned __int8 a1)
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](a1);
  return sub_1A957D548();
}

uint64_t sub_1A9507170(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 7235949;
  if (a1 != 2)
  {
    v2 = 7889261;
  }

  if (a1)
  {
    v1 = 12639;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A95071E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9506D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A950720C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A9507260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A95072E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  sub_1A957D4F8();
  a4(v7, *v4);
  return sub_1A957D548();
}

uint64_t sub_1A9507334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9506E28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A950735C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A95073B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A9507420(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A9507100(v3, *v1);
  return sub_1A957D548();
}

uint64_t sub_1A9507468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9506F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9507490(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A95074E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TTSAudioEffect.Spec.GenericWire.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = _s4SpecV11GenericWireO15ValueCodingKeysOMa(255, v6, v7, a4);
  WitnessTable = swift_getWitnessTable();
  v60 = v8;
  v63 = sub_1A957D368();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v75 = v53 - v9;
  v10 = sub_1A957CC58();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v62 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v68 = v53 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v65 = v53 - v15;
  v17 = _s4SpecV11GenericWireO13BoxCodingKeysOMa(255, v6, v7, v16);
  v18 = swift_getWitnessTable();
  v53[3] = v17;
  v53[2] = v18;
  v19 = sub_1A957D368();
  v55 = *(v19 - 8);
  v56 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v54 = v53 - v21;
  v22 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[1] = v6;
  v53[0] = v7;
  _s4SpecV11GenericWireO10CodingKeysOMa(255, v6, v7, v25);
  swift_getWitnessTable();
  v69 = sub_1A957D368();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v27 = v53 - v26;
  sub_1A93780F4(a1, a1[3]);
  v70 = v27;
  sub_1A957D598();
  (*(v22 + 16))(v24, v64, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v53[-4], "id  min max ");
    v29 = sub_1A93A7B68(&qword_1EB3872B0, &unk_1A9597060);
    v30 = v58;
    v71 = v29;
    v72 = v58;
    v73 = v58;
    v74 = v58;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v32 = TupleTypeMetadata[16];
    v33 = TupleTypeMetadata[20];
    v34 = v57;
    v35 = *(v57 + 32);
    v35(v65, &v24[TupleTypeMetadata[12]], v30);
    v35(v68, &v24[v32], v30);
    v36 = &v24[v33];
    v37 = v62;
    v35(v62, v36, v30);
    LOBYTE(v71) = 1;
    v38 = v69;
    v39 = v70;
    sub_1A957D288();
    LOBYTE(v71) = 0;
    v40 = v63;
    v41 = v66;
    sub_1A957D298();

    if (v41)
    {
      (*(v61 + 8))(v75, v40);
      v42 = *(v34 + 8);
      v42(v37, v30);
      v42(v68, v30);
      v42(v65, v30);
      return (*(v67 + 8))(v39, v38);
    }

    else
    {
      LOBYTE(v71) = 1;
      v49 = v65;
      sub_1A957D2B8();
      LOBYTE(v71) = 2;
      v50 = v63;
      sub_1A957D2B8();
      LOBYTE(v71) = 3;
      v51 = v62;
      sub_1A957D2B8();
      (*(v61 + 8))(v75, v50);
      v52 = *(v34 + 8);
      v52(v51, v30);
      v52(v68, v30);
      v52(v49, v30);
      return (*(v67 + 8))(v70, v69);
    }
  }

  else
  {
    LOBYTE(v71) = 0;
    v44 = v54;
    v45 = v69;
    v46 = v70;
    sub_1A957D288();
    LOBYTE(v71) = 0;
    v47 = v56;
    v48 = v66;
    sub_1A957D2E8();

    if (!v48)
    {
      LOBYTE(v71) = 1;
      sub_1A957D358();
    }

    (*(v55 + 8))(v44, v47);
    return (*(v67 + 8))(v46, v45);
  }
}

uint64_t TTSAudioEffect.Spec.GenericWire.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v80 = a4;
  v8 = _s4SpecV11GenericWireO15ValueCodingKeysOMa(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v79 = v8;
  v74 = sub_1A957D278();
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v85 = &v65 - v9;
  v11 = _s4SpecV11GenericWireO13BoxCodingKeysOMa(255, a2, a3, v10);
  v76 = swift_getWitnessTable();
  v77 = v11;
  v73 = sub_1A957D278();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v82 = &v65 - v12;
  _s4SpecV11GenericWireO10CodingKeysOMa(255, a2, a3, v13);
  swift_getWitnessTable();
  v81 = sub_1A957D278();
  v83 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v15 = &v65 - v14;
  v71 = a2;
  v70 = a3;
  v17 = type metadata accessor for TTSAudioEffect.Spec.GenericWire(0, a2, a3, v16);
  v69 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v65 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v65 - v24;
  v26 = a1;
  v27 = a1[3];
  v87 = v26;
  sub_1A93780F4(v26, v27);
  v84 = v15;
  v28 = v86;
  sub_1A957D588();
  if (!v28)
  {
    v66 = v23;
    v29 = v82;
    v68 = v20;
    v67 = v25;
    v30 = v84;
    v86 = v17;
    v31 = v81;
    *&v88 = sub_1A957D268();
    sub_1A957C578();
    swift_getWitnessTable();
    *&v90 = sub_1A957CD78();
    *(&v90 + 1) = v32;
    *&v91 = v33;
    *(&v91 + 1) = v34;
    sub_1A957CD68();
    swift_getWitnessTable();
    sub_1A957C9B8();
    v35 = v88;
    if (v88 == 2 || (v65 = v90, v88 = v90, v89 = v91, (sub_1A957C9D8() & 1) == 0))
    {
      v37 = sub_1A957CF58();
      swift_allocError();
      v39 = v38;
      sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
      *v39 = v86;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v83 + 8))(v30, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v35)
      {
        LOBYTE(v88) = 1;
        sub_1A957D178();
        v92 = 0;
        v36 = v74;
        v45 = sub_1A957D198();
        MEMORY[0x1EEE9AC00](v45);
        strcpy(&v65 - 32, "id  min max ");
        v47 = v46;
        *&v88 = sub_1A93A7B68(&qword_1EB3872B0, &unk_1A9597060);
        *(&v88 + 1) = sub_1A957CC58();
        *&v89 = *(&v88 + 1);
        *(&v89 + 1) = *(&v88 + 1);
        v48 = v36;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v50 = *(TupleTypeMetadata + 48);
        v51 = v68;
        *v68 = v45;
        v51[1] = v47;
        v82 = v47;
        LOBYTE(v88) = 1;
        sub_1A957D1B8();
        v79 = v50;
        v56 = *(TupleTypeMetadata + 64);
        LOBYTE(v88) = 2;
        sub_1A957D1B8();
        v57 = v83;
        WitnessTable = v56;
        LOBYTE(v88) = 3;
        sub_1A957D1B8();
        (*(v75 + 8))(v85, v48);
        (*(v57 + 8))(v84, v31);
        swift_unknownObjectRelease();
        v61 = v68;
        v62 = v86;
        swift_storeEnumTagMultiPayload();
        v63 = v80;
        v64 = v61;
      }

      else
      {
        LOBYTE(v88) = 0;
        v40 = v29;
        v41 = v31;
        sub_1A957D178();
        v63 = v80;
        LOBYTE(v88) = 0;
        v42 = v73;
        v43 = sub_1A957D1E8();
        v44 = v83;
        v53 = v52;
        v54 = v40;
        v85 = v43;
        LOBYTE(v88) = 1;
        LODWORD(v40) = sub_1A957D258();
        (*(v72 + 8))(v54, v42);
        (*(v44 + 8))(v30, v41);
        swift_unknownObjectRelease();
        v62 = v86;
        v58 = v66;
        *v66 = v85;
        v58[1] = v53;
        *(v58 + 4) = v40;
        swift_storeEnumTagMultiPayload();
        v64 = v58;
      }

      v59 = *(v69 + 32);
      v60 = v67;
      v59(v67, v64, v62);
      v59(v63, v60, v62);
    }
  }

  return sub_1A9378138(v87);
}

uint64_t sub_1A950897C()
{
  v1 = 0x70756F7267;
  v2 = 0x656C67676F74;
  if (*v0 != 2)
  {
    v2 = 0x726564696C73;
  }

  if (*v0)
  {
    v1 = 1802398060;
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

uint64_t sub_1A95089E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A950FAE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9508A0C(uint64_t a1)
{
  v2 = sub_1A950DD74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9508A48(uint64_t a1)
{
  v2 = sub_1A950DD74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9508A84()
{
  if (*v0)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1A9508ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A9508B94(uint64_t a1)
{
  v2 = sub_1A950DF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9508BD0(uint64_t a1)
{
  v2 = sub_1A950DF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9508C0C()
{
  if (*v0)
  {
    return 28532;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1A9508C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A9508D08(uint64_t a1)
{
  v2 = sub_1A950DE70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9508D44(uint64_t a1)
{
  v2 = sub_1A950DE70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9508D80()
{
  v1 = *v0;
  v2 = 0x6574656D61726170;
  v3 = 7889261;
  v4 = 1885697139;
  if (v1 != 4)
  {
    v4 = 1953066613;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v5 = 7235949;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A9508E20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A950FC40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9508E48(uint64_t a1)
{
  v2 = sub_1A950DDC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9508E84(uint64_t a1)
{
  v2 = sub_1A950DDC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9508EC0()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_1A9508F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A9508FDC(uint64_t a1)
{
  v2 = sub_1A950DE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9509018(uint64_t a1)
{
  v2 = sub_1A950DE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSAudioEffect.Spec.Control.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB388508, &qword_1A9597070);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v41 - v5;
  v6 = sub_1A937829C(&qword_1EB388510, &qword_1A9597078);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v9 = sub_1A937829C(&qword_1EB388518, &qword_1A9597080);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1A937829C(&qword_1EB388520, &qword_1A9597088);
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v52 = sub_1A937829C(&qword_1EB388528, &qword_1A9597090);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v16 = &v41 - v15;
  v17 = *v2;
  sub_1A93780F4(a1, a1[3]);
  sub_1A950DD74();
  v51 = v16;
  sub_1A957D598();
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      LOBYTE(v54) = 2;
      sub_1A950DE1C();
      v25 = v51;
      v24 = v52;
      sub_1A957D288();
      LOBYTE(v54) = 0;
      v26 = v45;
      v27 = v49;
      sub_1A957D2E8();
      if (v27)
      {
        (*(v44 + 8))(v8, v26);
        v28 = *(v50 + 8);
        v29 = v25;
      }

      else
      {
        LOBYTE(v54) = 1;
        sub_1A957D2E8();
        (*(v44 + 8))(v8, v26);
        v29 = v51;
        v28 = *(v50 + 8);
      }

      return v28(v29, v24);
    }

    else
    {
      v45 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v35 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
      LOBYTE(v54) = 3;
      sub_1A950DDC8();
      v36 = v46;
      v38 = v51;
      v37 = v52;
      sub_1A957D288();
      LOBYTE(v54) = 0;
      v40 = v48;
      v39 = v49;
      sub_1A957D2E8();
      if (!v39)
      {
        v49 = v35;
        LOBYTE(v54) = 1;
        sub_1A957D2E8();
        LOBYTE(v54) = 2;
        sub_1A957D318();
        v37 = v52;
        LOBYTE(v54) = 3;
        sub_1A957D318();
        LOBYTE(v54) = 4;
        sub_1A957D318();
        LOBYTE(v54) = 5;
        sub_1A957D298();
      }

      (*(v47 + 8))(v36, v40);
      return (*(v50 + 8))(v38, v37);
    }
  }

  else if (v18)
  {
    v30 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    LOBYTE(v54) = 1;
    sub_1A950DE70();
    v32 = v51;
    v31 = v52;
    sub_1A957D288();
    LOBYTE(v54) = 0;
    v33 = v43;
    v34 = v49;
    sub_1A957D2E8();
    if (!v34)
    {
      v54 = v30;
      v53 = 1;
      sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
      sub_1A950DEC4(&qword_1EB388538, sub_1A950DF3C, MEMORY[0x1E69E6300]);
      sub_1A957D338();
    }

    (*(v42 + 8))(v11, v33);
    return (*(v50 + 8))(v32, v31);
  }

  else
  {
    v19 = *(v17 + 32);
    LOBYTE(v54) = 0;
    sub_1A950DF90();
    v21 = v51;
    v20 = v52;
    sub_1A957D288();
    LOBYTE(v54) = 0;
    v22 = v49;
    sub_1A957D298();
    if (!v22)
    {
      v54 = v19;
      v53 = 1;
      sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
      sub_1A950DEC4(&qword_1EB388538, sub_1A950DF3C, MEMORY[0x1E69E6300]);
      sub_1A957D338();
    }

    (*(v41 + 8))(v14, v12);
    return (*(v50 + 8))(v21, v20);
  }
}

uint64_t TTSAudioEffect.Spec.Control.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (v4 > 1)
  {
    v7 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    if (v4 == 2)
    {
      MEMORY[0x1AC5863C0](2);
      sub_1A957C228();
    }

    else
    {
      v12 = *(v7 + 72);
      MEMORY[0x1AC5863C0](3);
      sub_1A957C228();
      sub_1A957C228();
      sub_1A957D528();
      sub_1A957D528();
      sub_1A957D528();
      if (!v12)
      {
        return sub_1A957D518();
      }

      sub_1A957D518();
    }

    return sub_1A957C228();
  }

  else if (v4)
  {
    v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    MEMORY[0x1AC5863C0](1);
    sub_1A957C228();
    result = MEMORY[0x1AC5863C0](*(v8 + 16));
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = v8 + 32;
      do
      {
        v11 += 8;

        TTSAudioEffect.Spec.Control.hash(into:)(a1);

        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    MEMORY[0x1AC5863C0](0);
    sub_1A957D518();
    if (v5)
    {
      sub_1A957C228();
    }

    result = MEMORY[0x1AC5863C0](*(v6 + 16));
    v13 = *(v6 + 16);
    if (v13)
    {
      v14 = v6 + 32;
      do
      {
        v14 += 8;

        TTSAudioEffect.Spec.Control.hash(into:)(a1);

        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t TTSAudioEffect.Spec.Control.hashValue.getter()
{
  v2[9] = *v0;
  sub_1A957D4F8();
  TTSAudioEffect.Spec.Control.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t TTSAudioEffect.Spec.Control.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v70 = a2;
  v71 = sub_1A937829C(&qword_1EB388548, &qword_1A95970A0);
  v76 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v79 = &v68 - v3;
  v74 = sub_1A937829C(&qword_1EB388550, &qword_1A95970A8);
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v68 - v4;
  v73 = sub_1A937829C(&qword_1EB388558, &qword_1A95970B0);
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v6 = &v68 - v5;
  v7 = sub_1A937829C(&qword_1EB388560, &qword_1A95970B8);
  v72 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v10 = sub_1A937829C(&qword_1EB388568, &qword_1A95970C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v68 - v12;
  v14 = a1[3];
  v81 = a1;
  sub_1A93780F4(a1, v14);
  sub_1A950DD74();
  v15 = v80;
  sub_1A957D588();
  if (!v15)
  {
    v16 = v7;
    v17 = v6;
    v18 = v78;
    v19 = v79;
    v69 = 0;
    v80 = v11;
    v20 = sub_1A957D268();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v20 + 32);
      if (v21 == 1 && v22 != 4)
      {
        if (*(v20 + 32) > 1u)
        {
          if (v22 == 2)
          {
            v82 = 2;
            sub_1A950DE1C();
            v33 = v18;
            v34 = v69;
            sub_1A957D178();
            v35 = v80;
            if (!v34)
            {
              v39 = swift_allocObject();
              v82 = 0;
              v40 = v74;
              v46 = v10;
              *(v39 + 16) = sub_1A957D1E8();
              *(v39 + 24) = v47;
              v82 = 1;
              v48 = sub_1A957D1E8();
              v56 = v55;
              (*(v77 + 8))(v33, v40);
              (*(v35 + 8))(v13, v46);
              swift_unknownObjectRelease();
              *(v39 + 32) = v48;
              *(v39 + 40) = v56;
              v30 = v39 | 0x8000000000000000;
              goto LABEL_25;
            }

            (*(v80 + 8))(v13, v10);
            goto LABEL_20;
          }

          v82 = 3;
          sub_1A950DDC8();
          v38 = v69;
          sub_1A957D178();
          v37 = v80;
          if (!v38)
          {
            v78 = swift_allocObject();
            v82 = 0;
            v43 = v71;
            v44 = sub_1A957D1E8();
            v51 = v78;
            *(v78 + 2) = v44;
            *(v51 + 3) = v52;
            v82 = 1;
            v53 = sub_1A957D1E8();
            v54 = v76;
            v57 = v78;
            *(v78 + 4) = v53;
            *(v57 + 5) = v58;
            v82 = 2;
            sub_1A957D218();
            *(v78 + 12) = v59;
            v82 = 3;
            sub_1A957D218();
            *(v78 + 13) = v60;
            v82 = 4;
            sub_1A957D218();
            *(v78 + 14) = v61;
            v82 = 5;
            v62 = sub_1A957D198();
            v63 = v43;
            v64 = v62;
            v66 = v65;
            (*(v54 + 8))(v19, v63);
            (*(v37 + 8))(v13, v10);
            swift_unknownObjectRelease();
            v67 = v78;
            *(v78 + 8) = v64;
            *(v67 + 72) = v66;
            *v70 = v67 | 0xC000000000000000;
            return sub_1A9378138(v81);
          }
        }

        else
        {
          if (*(v20 + 32))
          {
            v82 = 1;
            sub_1A950DE70();
            v36 = v69;
            sub_1A957D178();
            if (!v36)
            {
              v41 = swift_allocObject();
              v82 = 0;
              v42 = v73;
              *(v41 + 16) = sub_1A957D1E8();
              *(v41 + 24) = v49;
              sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
              v82 = 1;
              sub_1A950DEC4(&qword_1EB388570, sub_1A950DFE4, MEMORY[0x1E69E6330]);
              sub_1A957D238();
              (*(v75 + 8))(v17, v42);
              (*(v80 + 8))(v13, v10);
              swift_unknownObjectRelease();
              v30 = v41 | 0x4000000000000000;
              goto LABEL_25;
            }
          }

          else
          {
            v82 = 0;
            sub_1A950DF90();
            v28 = v69;
            sub_1A957D178();
            if (!v28)
            {
              v29 = v13;
              v30 = swift_allocObject();
              v82 = 0;
              v31 = sub_1A957D198();
              v32 = v80;
              *(v30 + 16) = v31;
              *(v30 + 24) = v45;
              sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
              v82 = 1;
              sub_1A950DEC4(&qword_1EB388570, sub_1A950DFE4, MEMORY[0x1E69E6330]);
              sub_1A957D238();
              (*(v72 + 8))(v9, v16);
              (*(v32 + 8))(v29, v10);
              swift_unknownObjectRelease();
LABEL_25:
              *v70 = v30;
              return sub_1A9378138(v81);
            }
          }

          v37 = v80;
        }

        (*(v37 + 8))(v13, v10);
LABEL_20:
        swift_unknownObjectRelease();
        return sub_1A9378138(v81);
      }
    }

    v24 = sub_1A957CF58();
    swift_allocError();
    v25 = v13;
    v27 = v26;
    sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
    *v27 = &type metadata for TTSAudioEffect.Spec.Control;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v24 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v80 + 8))(v25, v10);
    swift_unknownObjectRelease();
  }

  return sub_1A9378138(v81);
}

uint64_t sub_1A950A7C0()
{
  v2[9] = *v0;
  sub_1A957D4F8();
  TTSAudioEffect.Spec.Control.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t sub_1A950A810(uint64_t a1)
{
  v3[9] = *v1;
  sub_1A957D4F8();
  TTSAudioEffect.Spec.Control.hash(into:)(v3);
  return sub_1A957D548();
}

uint64_t TTSAudioEffect.Spec.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTSAudioEffect.Spec.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTSAudioEffect.Spec.localizedEffectDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TTSAudioEffect.Spec.localizedEffectDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TTSAudioEffect.Spec.icon.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TTSAudioEffect.Spec.icon.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TTSAudioEffect.Spec.controls.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_1A950AA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC8];
  v90 = MEMORY[0x1E69E7CC8];
  v94 = v10;
  v93 = v14;
LABEL_6:
  if (v13)
  {
    v17 = v15;
  }

  else
  {
    do
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_62;
      }

      if (v17 >= v14)
      {

        *a9 = a1;
        *(a9 + 8) = a2;
        *(a9 + 16) = a7;
        *(a9 + 24) = a8;
        *(a9 + 32) = a5;
        *(a9 + 40) = a6;
        *(a9 + 48) = a10 & 1;
        *(a9 + 56) = a3;
        *(a9 + 64) = a4;
        *(a9 + 72) = v90;
        *(a9 + 80) = v16;
        return result;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
    }

    while (!v13);
  }

  v18 = __clz(__rbit64(v13));
  v13 &= v13 - 1;
  v19 = *(a3 + 56) + 88 * (v18 | (v17 << 6));
  v21 = *(v19 + 56);
  v20 = *(v19 + 64);
  v22 = 1 << *(v21 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v21 + 64);
  v25 = (v22 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v96 = v20;

  v26 = 0;
  while (v24)
  {
LABEL_20:
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v29 = *(v21 + 56) + 40 * (v28 | (v26 << 6));
    if (*(v29 + 37) == 1)
    {
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = *(v29 + 16);
      if (!v31)
      {
        v47 = 0;
        goto LABEL_31;
      }

      if ((v32 & 0x100000000) == 0)
      {
        v80 = *v29;
        sub_1A9327228(v30, v31);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = v90;
        v34 = sub_1A937A490(v80, v31);
        v35 = v90[2];
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_63;
        }

        if (v90[3] < v37)
        {
          v91 = v33;
          sub_1A944FB30(v37, isUniquelyReferenced_nonNull_native);
          v38 = sub_1A937A490(v80, v31);
          v40 = v39 & 1;
          v41 = v91;
          if ((v91 & 1) != v40)
          {
            goto LABEL_67;
          }

          v34 = v38;
LABEL_27:
          v42 = v80;
          if ((v41 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_34;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = v34;
          v92 = v33;
          sub_1A9450338();
          v41 = v92;
          v34 = v77;
          goto LABEL_27;
        }

        v42 = v80;
        if (v33)
        {
LABEL_34:
          v76 = v34;
          sub_1A9328CAC(v42, v31);
          v90 = v97;
          *(v97[7] + 4 * v76) = v32;
          v30 = v80;
          v47 = v31;
LABEL_31:
          sub_1A9328CAC(v30, v47);
        }

        else
        {
LABEL_28:
          v97[(v34 >> 6) + 8] |= 1 << v34;
          v43 = (v97[6] + 16 * v34);
          *v43 = v42;
          v43[1] = v31;
          *(v97[7] + 4 * v34) = v32;
          sub_1A9328CAC(v42, v31);
          v44 = v97[2];
          v45 = __OFADD__(v44, 1);
          v46 = v44 + 1;
          if (v45)
          {
            goto LABEL_65;
          }

          v90 = v97;
          v97[2] = v46;
        }
      }
    }
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v27 >= v25)
    {
      break;
    }

    v24 = *(v21 + 64 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_20;
    }
  }

  v48 = 0;
  v49 = v96;
  v50 = 1 << *(v96 + 32);
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & *(v96 + 64);
  v53 = (v50 + 63) >> 6;
  while (v52)
  {
LABEL_45:
    v55 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v56 = *(v49 + 56) + 40 * (v55 | (v48 << 6));
    if (*(v56 + 37) == 1)
    {
      v57 = *v56;
      v58 = *(v56 + 8);
      if (v58)
      {
        if ((*(v56 + 16) & 0x100000000) == 0)
        {
          v59 = *v56;
          v78 = *(v56 + 16);
          sub_1A9327228(v57, v58);

          v60 = swift_isUniquelyReferenced_nonNull_native();
          v81 = v59;
          v61 = sub_1A937A490(v59, v58);
          v63 = v16[2];
          v64 = (v62 & 1) == 0;
          v45 = __OFADD__(v63, v64);
          v65 = v63 + v64;
          if (v45)
          {
            goto LABEL_64;
          }

          v66 = v62;
          if (v16[3] >= v65)
          {
            v68 = v78;
            if ((v60 & 1) == 0)
            {
              v73 = v61;
              sub_1A944FF38();
              v61 = v73;
              v68 = v78;
            }
          }

          else
          {
            sub_1A944F3C0(v65, v60);
            v61 = sub_1A937A490(v81, v58);
            if ((v66 & 1) != (v67 & 1))
            {
              goto LABEL_67;
            }

            v68 = v78;
          }

          if (v66)
          {
            v79 = v61;
            v69 = v68;
            sub_1A9328CAC(v81, v58);
            *(v16[7] + 4 * v79) = v69;
            sub_1A9328CAC(v81, v58);
            v49 = v96;
          }

          else
          {
            v16[(v61 >> 6) + 8] |= 1 << v61;
            v70 = (v16[6] + 16 * v61);
            *v70 = v81;
            v70[1] = v58;
            *(v16[7] + 4 * v61) = v68;
            sub_1A9328CAC(v81, v58);
            v71 = v16[2];
            v45 = __OFADD__(v71, 1);
            v72 = v71 + 1;
            if (v45)
            {
              goto LABEL_66;
            }

            v16[2] = v72;
            v49 = v96;
          }
        }
      }

      else
      {
        sub_1A9328CAC(v57, 0);
        v49 = v96;
      }
    }
  }

  while (1)
  {
    v54 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v54 >= v53)
    {

      v15 = v17;
      v10 = v94;
      v14 = v93;
      goto LABEL_6;
    }

    v52 = *(v96 + 64 + 8 * v54);
    ++v48;
    if (v52)
    {
      v48 = v54;
      goto LABEL_45;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_1A957D438();
  __break(1u);
  return result;
}

uint64_t TTSAudioEffect.Spec.defaultParameters.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t TTSAudioEffect.Spec.defaultProperties.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

unint64_t sub_1A950B138()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x7365786F62;
  if (v1 != 4)
  {
    v4 = 0x736C6F72746E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 2)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A950B228@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A950FE3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A950B250(uint64_t a1)
{
  v2 = sub_1A950E038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A950B28C(uint64_t a1)
{
  v2 = sub_1A950E038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSAudioEffect.Spec.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB388580, &qword_1A95970C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v7;
  v8 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = v8;
  v22 = *(v1 + 48);
  v9 = *(v1 + 56);
  v20 = *(v1 + 64);
  v21 = v9;
  v10 = *(v1 + 72);
  v18 = *(v1 + 80);
  v19 = v10;
  sub_1A93780F4(a1, a1[3]);
  sub_1A950E038();
  sub_1A957D598();
  LOBYTE(v29) = 0;
  v11 = v6;
  v12 = v27;
  sub_1A957D2E8();
  if (v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = v20;
  v13 = v21;
  v15 = v19;
  LOBYTE(v29) = 1;
  sub_1A957D298();
  LOBYTE(v29) = 2;
  sub_1A957D298();
  LOBYTE(v29) = 3;
  sub_1A957D2F8();
  v29 = v13;
  v28 = 4;
  sub_1A937829C(&qword_1EB388588, &qword_1A95970D0);
  sub_1A950E08C(&qword_1EB388590, sub_1A950E110, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1A957D338();
  v29 = v14;
  v28 = 5;
  sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
  sub_1A950DEC4(&qword_1EB388538, sub_1A950DF3C, MEMORY[0x1E69E6300]);
  sub_1A957D338();
  v29 = v15;
  v28 = 6;
  sub_1A937829C(&qword_1EB3885A0, &qword_1A95970D8);
  sub_1A950E228(&qword_1EB3885A8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6458], MEMORY[0x1E69E5E38]);
  sub_1A957D338();
  v29 = v18;
  v28 = 7;
  sub_1A937829C(&qword_1EB3876B8, &qword_1A95970E0);
  sub_1A950E164(&qword_1EB3885B0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7670], MEMORY[0x1E69E5E38]);
  sub_1A957D338();
  return (*(v4 + 8))(v11, v3);
}

uint64_t TTSAudioEffect.Spec.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB3885B8, &qword_1A95970E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A950E038();
  sub_1A957D588();
  if (v2)
  {
    sub_1A9378138(a1);
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    v9 = sub_1A957D1E8();
    v29 = v10;
    LOBYTE(v36[0]) = 1;
    v11 = sub_1A957D198();
    v28 = v12;
    LOBYTE(v36[0]) = 2;
    *&v26 = sub_1A957D198();
    *(&v26 + 1) = v13;
    LOBYTE(v36[0]) = 3;
    v25 = sub_1A957D1F8();
    sub_1A937829C(&qword_1EB388588, &qword_1A95970D0);
    LOBYTE(v30) = 4;
    sub_1A950E08C(&qword_1EB3885C0, sub_1A950E1D4, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1A957D238();
    v24 = v36[0];
    sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
    LOBYTE(v30) = 5;
    sub_1A950DEC4(&qword_1EB388570, sub_1A950DFE4, MEMORY[0x1E69E6330]);
    sub_1A957D238();
    v27 = v36[0];
    sub_1A937829C(&qword_1EB3885A0, &qword_1A95970D8);
    LOBYTE(v30) = 6;
    sub_1A950E228(&qword_1EB3885D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6478], MEMORY[0x1E69E5E58]);
    sub_1A957D238();
    v23 = v11;
    v14 = v36[0];
    sub_1A937829C(&qword_1EB3876B8, &qword_1A95970E0);
    v43[0] = 7;
    sub_1A950E164(&qword_1EB3885D8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7698], MEMORY[0x1E69E5E58]);
    sub_1A957D238();
    v25 &= 1u;
    v15 = v25;
    (*(v6 + 8))(v8, v5);
    v16 = v44;
    *&v30 = v9;
    v17 = v29;
    *(&v30 + 1) = v29;
    v18 = v28;
    *&v31 = v23;
    *(&v31 + 1) = v28;
    v32 = v26;
    LOBYTE(v33) = v15;
    v19 = v27;
    *(&v33 + 1) = v24;
    *&v34 = v27;
    *(&v34 + 1) = v14;
    v35 = v44;
    *(a2 + 80) = v44;
    v20 = v33;
    *(a2 + 32) = v32;
    *(a2 + 48) = v20;
    *(a2 + 64) = v34;
    v21 = v31;
    *a2 = v30;
    *(a2 + 16) = v21;
    sub_1A937BE84(&v30, v36);
    sub_1A9378138(a1);
    v36[0] = v9;
    v36[1] = v17;
    v36[2] = v23;
    v36[3] = v18;
    v37 = v26;
    v38 = v25;
    v39 = v24;
    v40 = v19;
    v41 = v14;
    v42 = v16;
    return sub_1A94509C8(v36);
  }
}

uint64_t sub_1A950BDB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7892834 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

void *sub_1A950BEC4(void *a1)
{
  v29 = sub_1A937829C(&qword_1EB388650, &qword_1A9598960);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v27 - v2;
  v27 = sub_1A937829C(&qword_1EB388658, &qword_1A9598968);
  v30 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v27 - v3;
  v5 = sub_1A937829C(&qword_1EB388660, &qword_1A9598970);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = sub_1A937829C(&qword_1EB388668, &qword_1A9598978);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = a1[3];
  v34 = a1;
  v13 = sub_1A93780F4(a1, v12);
  sub_1A9503554();
  v14 = v33;
  sub_1A957D588();
  if (!v14)
  {
    v33 = 0;
    v15 = v32;
    v16 = sub_1A957D268();
    v17 = *(v16 + 16);
    if (!v17 || ((v18 = *(v16 + 32), v17 == 1) ? (v19 = v18 == 3) : (v19 = 1), v19))
    {
      v20 = sub_1A957CF58();
      swift_allocError();
      v22 = v21;
      sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
      v13 = v11;
      *v22 = &_s4SpecV8EndPointON;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      if (*(v16 + 32))
      {
        if (v18 == 1)
        {
          v36 = 1;
          sub_1A95035FC();
          v13 = v11;
          v23 = v33;
          sub_1A957D178();
          if (!v23)
          {
            (*(v30 + 8))(v4, v27);
            (*(v9 + 8))(v11, v8);
            swift_unknownObjectRelease();
            v13 = 0;
            goto LABEL_19;
          }
        }

        else
        {
          v37 = 2;
          sub_1A95035A8();
          v13 = v11;
          v25 = v33;
          sub_1A957D178();
          if (!v25)
          {
            (*(v31 + 8))(v15, v29);
            (*(v9 + 8))(v11, v8);
            swift_unknownObjectRelease();
            v13 = 0;
            goto LABEL_19;
          }
        }
      }

      else
      {
        v35 = 0;
        sub_1A9503650();
        v13 = v11;
        v24 = v33;
        sub_1A957D178();
        if (!v24)
        {
          v13 = sub_1A957D1E8();
          (*(v28 + 8))(v7, v5);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          goto LABEL_19;
        }
      }

      (*(v9 + 8))(v11, v8);
    }

    swift_unknownObjectRelease();
  }

LABEL_19:
  sub_1A9378138(v34);
  return v13;
}

unint64_t sub_1A950C48C()
{
  result = qword_1EB3A1220;
  if (!qword_1EB3A1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1220);
  }

  return result;
}

unint64_t sub_1A950C4E0()
{
  result = qword_1EB3A1228;
  if (!qword_1EB3A1228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1228);
  }

  return result;
}

unint64_t sub_1A950C534()
{
  result = qword_1EB3A1230;
  if (!qword_1EB3A1230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1230);
  }

  return result;
}

uint64_t sub_1A950C588(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (a1[6])
  {
    if ((a2[6] & 1) == 0)
    {
      return 0;
    }

    if (v4 != v6 || v5 != v7)
    {
LABEL_15:
      if (sub_1A957D3E8())
      {
        goto LABEL_16;
      }

      return 0;
    }
  }

  else
  {
    if (a2[6])
    {
      return 0;
    }

    v8 = a1[2];
    v9 = a1[3];
    v10 = a1[4];
    v11 = a1[5];
    v12 = a2[2];
    v13 = a2[3];
    v14 = a2[4];
    v15 = a2[5];
    if ((v4 != v6 || v5 != v7) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    if ((v8 != v12 || v9 != v13) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    if (v10 != v14 || v11 != v15)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((sub_1A95047BC(a1[7], a2[7], sub_1A937C310, &qword_1EB3884D0, &qword_1A9597040, sub_1A9505654) & 1) == 0 || (sub_1A95047BC(a1[8], a2[8], sub_1A937C310, &qword_1EB3884F0, &unk_1A9597050, sub_1A9505058) & 1) == 0 || (sub_1A9504A84(a1[9], a2[9]) & 1) == 0)
  {
    return 0;
  }

  v16 = a1[10];
  v17 = a2[10];

  return sub_1A9504A84(v16, v17);
}

uint64_t _s12TextToSpeech14TTSAudioEffectO4SpecV7ControlO2eeoiySbAG_AGtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 62 == 1)
      {
        v22 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v23 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v24 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v25 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
        v26 = v25[4];
        v27 = v22 == v25[2] && v23 == v25[3];
        if (v27 || (sub_1A957D3E8() & 1) != 0)
        {

          v28 = sub_1A95049C4(v24, v26);

          return v28 & 1;
        }
      }

      return 0;
    }

    if (!(v3 >> 62))
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      v7 = *(v3 + 24);
      v8 = *(v3 + 32);
      if (v5)
      {
        if (!v7)
        {
          return 0;
        }

        v9 = *(v2 + 16) == *(v3 + 16) && v5 == v7;
        if (!v9 && (sub_1A957D3E8() & 1) == 0)
        {
          return 0;
        }

LABEL_53:

        v48 = sub_1A95049C4(v6, v8);

        return v48 & 1;
      }

      if (!v7)
      {
        goto LABEL_53;
      }
    }

    return 0;
  }

  if (v4 != 2)
  {
    if (v3 >> 62 != 3)
    {
      return 0;
    }

    v29 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v30 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v32 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v31 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
    v33 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
    v34 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v35 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
    v36 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v37 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v39 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v38 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
    v40 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
    v41 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v43 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v42 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
    if (!v41 && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    if (v29 == v36 && v30 == v37)
    {
      if (v32 != v39 || v31 != v38 || v33 != v40)
      {
        return 0;
      }
    }

    else
    {
      v45 = sub_1A957D3E8();
      result = 0;
      if ((v45 & 1) == 0)
      {
        return result;
      }

      v46 = v32 == v39 && v31 == v38;
      if (!v46 || v33 != v40)
      {
        return result;
      }
    }

    if (v35)
    {
      if (!v42 || (v34 != v43 || v35 != v42) && (sub_1A957D3E8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v42)
    {
      return 0;
    }

    return 1;
  }

  if (v3 >> 62 != 2)
  {
    return 0;
  }

  v10 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v12 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v13 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v14 = v3 & 0x3FFFFFFFFFFFFFFFLL;
  v15 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v16 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v17 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v18 = *(v14 + 40);
  v19 = v10 == v15 && v11 == v16;
  if (!v19 && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v12 == v17 && v13 == v18)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

uint64_t _s12TextToSpeech14TTSAudioEffectO4SpecV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v18 = a1[8];
  v14 = a1[10];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = a1[7];
  v16 = a1[9];
  v17 = *(a2 + 64);
  v15 = *(a2 + 72);
  v13 = *(a2 + 80);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v8 || v3 != v7) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (!v5)
  {
    if (v9)
    {
      return 0;
    }

LABEL_20:
    if (((v6 ^ v11) & 1) == 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  if (v4 != v10 || v5 != v9)
  {
    if ((sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_20;
  }

  if (v6 != v11)
  {
    return 0;
  }

LABEL_21:
  if ((sub_1A95041F0(v20, v19) & 1) == 0 || (sub_1A95049C4(v18, v17) & 1) == 0 || (sub_1A937A354(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_1A9504688(v14, v13);
}

uint64_t sub_1A950CBD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74636166756E616DLL && a2 == 0xEC00000072657275)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A950CCEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_1A937829C(&qword_1EB388638, &qword_1A9598948);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  v7 = sub_1A937829C(&qword_1EB388640, &qword_1A9598950);
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = sub_1A937829C(&qword_1EB388648, &qword_1A9598958);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - v12;
  v14 = a1[3];
  v55 = a1;
  sub_1A93780F4(a1, v14);
  sub_1A950C48C();
  v15 = v54;
  sub_1A957D588();
  if (v15)
  {
    return sub_1A9378138(v55);
  }

  v16 = v13;
  v17 = sub_1A957D268();
  if (*(v17 + 16) != 1)
  {
    v22 = sub_1A957CF58();
    swift_allocError();
    v24 = v23;
    sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
    *v24 = &_s4SpecV3BoxV7BoxTypeON;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v11 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return sub_1A9378138(v55);
  }

  v18 = *(v17 + 32);
  if (v18)
  {
    v60 = 1;
    sub_1A950C4E0();
    v19 = v6;
    sub_1A957D178();
    v20 = v51;
    v21 = sub_1A957D1E8();
    v30 = v29;
    v48 = v21;
    v49 = v18;
    (*(v52 + 1))(v19, v20);
    (*(v11 + 8))(v16, v10);
    swift_unknownObjectRelease();
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = v30;
  }

  else
  {
    v59 = 0;
    sub_1A950C534();
    sub_1A957D178();
    v52 = v16;
    v54 = v10;
    v49 = v18;
    v58 = 0;
    v26 = v7;
    v27 = sub_1A957D1E8();
    v28 = v9;
    v35 = v37;
    v48 = v27;
    v57 = 1;
    v38 = sub_1A957D1E8();
    v39 = v26;
    v41 = v53;
    v40 = v54;
    v32 = v42;
    v47 = v38;
    v56 = 2;
    v51 = v39;
    v43 = sub_1A957D1E8();
    v34 = v44;
    v45 = *(v41 + 8);
    v53 = v43;
    v45(v28, v51);
    (*(v11 + 8))(v52, v40);
    swift_unknownObjectRelease();
    v31 = v47;
    v33 = v53;
  }

  result = sub_1A9378138(v55);
  v36 = v50;
  *v50 = v48;
  v36[1] = v35;
  v36[2] = v31;
  v36[3] = v32;
  v36[4] = v33;
  v36[5] = v34;
  *(v36 + 48) = v49;
  return result;
}

uint64_t sub_1A950D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {

    v7 = vars8;
  }
}

unint64_t sub_1A950D34C()
{
  result = qword_1EB3A1238;
  if (!qword_1EB3A1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1238);
  }

  return result;
}

unint64_t sub_1A950D3A0()
{
  result = qword_1EB3884B0;
  if (!qword_1EB3884B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3884B0);
  }

  return result;
}

unint64_t sub_1A950D3F4()
{
  result = qword_1EB3884C0;
  if (!qword_1EB3884C0)
  {
    sub_1A93A7B68(&qword_1EB3884B8, &qword_1A9597038);
    sub_1A93B744C(&qword_1EB3884C8, &qword_1EB3884D0, &qword_1A9597040, &protocol conformance descriptor for TTSAudioEffect.Spec.GenericWire<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3884C0);
  }

  return result;
}

unint64_t sub_1A950D4AC()
{
  result = qword_1EB3884E0;
  if (!qword_1EB3884E0)
  {
    sub_1A93A7B68(&qword_1EB3884D8, &qword_1A9597048);
    sub_1A93B744C(&qword_1EB3884E8, &qword_1EB3884F0, &unk_1A9597050, &protocol conformance descriptor for TTSAudioEffect.Spec.GenericWire<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3884E0);
  }

  return result;
}

unint64_t sub_1A950D564()
{
  result = qword_1EB388500;
  if (!qword_1EB388500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388500);
  }

  return result;
}

uint64_t sub_1A950D5B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374757074756FLL && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A950D770@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB3885F8, &qword_1A9598940);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  sub_1A93780F4(a1, a1[3]);
  sub_1A950D34C();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  LOBYTE(v28) = 0;
  sub_1A95100D4();
  sub_1A957D238();
  v26 = v34;
  v25 = v35;
  v27 = v36;
  v43 = v37;
  sub_1A937829C(&qword_1EB3884B8, &qword_1A9597038);
  LOBYTE(v28) = 1;
  sub_1A9510128();
  sub_1A957D238();
  v24 = v34;
  sub_1A937829C(&qword_1EB3884D8, &qword_1A9597048);
  LOBYTE(v28) = 2;
  sub_1A9510248();
  sub_1A957D238();
  v23 = v34;
  v9 = sub_1A937829C(&qword_1EB3876C0, &qword_1A958EB68);
  LOBYTE(v28) = 3;
  v10 = sub_1A9510300(&qword_1EB388628, sub_1A9510378, MEMORY[0x1E69E6330]);
  v22 = v9;
  v21 = v10;
  sub_1A957D238();
  v20 = v34;
  v44 = 4;
  sub_1A957D238();
  (*(v6 + 8))(v8, v5);
  v22 = v42;
  v28 = v26;
  v11 = v25;
  v29 = v25;
  v30 = v27;
  v12 = v43;
  LOBYTE(v31) = v43;
  v13 = v24;
  v14 = v23;
  *(&v31 + 1) = v24;
  *&v32 = v23;
  v15 = v20;
  *(&v32 + 1) = v20;
  v33 = v42;
  sub_1A9450A1C(&v28, &v34);
  sub_1A9378138(a1);
  v34 = v26;
  v35 = v11;
  v36 = v27;
  v37 = v12;
  v38 = v13;
  v39 = v14;
  v40 = v15;
  v41 = v22;
  result = sub_1A9450AF4(&v34);
  v17 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v17;
  *(a2 + 64) = v32;
  *(a2 + 80) = v33;
  v18 = v29;
  *a2 = v28;
  *(a2 + 16) = v18;
  return result;
}

unint64_t sub_1A950DD74()
{
  result = qword_1EB3A1240;
  if (!qword_1EB3A1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1240);
  }

  return result;
}

unint64_t sub_1A950DDC8()
{
  result = qword_1EB3A1248;
  if (!qword_1EB3A1248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1248);
  }

  return result;
}

unint64_t sub_1A950DE1C()
{
  result = qword_1EB3A1250;
  if (!qword_1EB3A1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1250);
  }

  return result;
}

unint64_t sub_1A950DE70()
{
  result = qword_1EB3A1258;
  if (!qword_1EB3A1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1258);
  }

  return result;
}

uint64_t sub_1A950DEC4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB388530, &qword_1A9597098);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A950DF3C()
{
  result = qword_1EB388540;
  if (!qword_1EB388540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388540);
  }

  return result;
}

unint64_t sub_1A950DF90()
{
  result = qword_1EB3A1260;
  if (!qword_1EB3A1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1260);
  }

  return result;
}

unint64_t sub_1A950DFE4()
{
  result = qword_1EB388578;
  if (!qword_1EB388578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388578);
  }

  return result;
}

unint64_t sub_1A950E038()
{
  result = qword_1EB3A1268[0];
  if (!qword_1EB3A1268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A1268);
  }

  return result;
}

uint64_t sub_1A950E08C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB388588, &qword_1A95970D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A950E110()
{
  result = qword_1EB388598;
  if (!qword_1EB388598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388598);
  }

  return result;
}

uint64_t sub_1A950E164(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3876B8, &qword_1A95970E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A950E1D4()
{
  result = qword_1EB3885C8;
  if (!qword_1EB3885C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3885C8);
  }

  return result;
}

uint64_t sub_1A950E228(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3885A0, &qword_1A95970D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A950E29C()
{
  result = qword_1EB3885E0;
  if (!qword_1EB3885E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3885E0);
  }

  return result;
}

unint64_t sub_1A950E2F4()
{
  result = qword_1EB3885E8;
  if (!qword_1EB3885E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3885E8);
  }

  return result;
}

uint64_t sub_1A950E36C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A950E3A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A950E3E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A950E44C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A950E494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}