uint64_t sub_1B0CA4A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF0, &qword_1B0EDD280);
  v32 = v4;
  result = sub_1B0E46698();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      SectionSpecifier.Part.hash(into:)(v34, v21);
      result = sub_1B0E46CB8();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B0CA4D1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF8, &unk_1B0EDD290);
  v30 = v4;
  result = sub_1B0E46698();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0452640(v21);
      }

      sub_1B0E46C28();
      SectionSpecifier.Part.hash(into:)(v31, v20);
      result = sub_1B0E46CB8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1B0CA4FB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B0CA7EF4(a3);
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
      sub_1B0CA4A74(v16, a4 & 1);
      v11 = sub_1B0CA7EF4(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1B0E46BA8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1B0CA5288();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v23 = (v21[7] + 16 * v11);
  *v23 = a1;
  v23[1] = a2;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

void sub_1B0CA5128(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B0CA7EF4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1B0CA4D1C(v14, a3 & 1);
      v9 = sub_1B0CA7EF4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1B0E46BA8();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1B0CA53F8();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    sub_1B03C81E4(v21);
    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

void sub_1B0CA5288()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF0, &qword_1B0EDD280);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
}

void sub_1B0CA53F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5CF8, &unk_1B0EDD290);
  v2 = *v0;
  v3 = sub_1B0E46688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0452640(v18);
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
}

void sub_1B0CA555C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B0CA40A4(a1, a2, a3, v42);
  v3 = v42[0];
  of.array._rawValue = v42[1];
  v4 = v43;
  v46 = v44;
  v47 = v42[0];
  v5 = *(v42[0] + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v43 >= v5)
  {
    v7 = 0;
    goto LABEL_32;
  }

  v7 = 0;
  v8 = v45;
  v9 = MEMORY[0x1E69E7CC0] + 32;
  v10 = v42[0] + 40;
  v36 = v42[0] + 40;
  while (2)
  {
    v37 = v9;
    v38 = v7;
    v40 = v6;
    v11 = v46;
    v12 = (v10 + 16 * v4);
    v13 = v4;
    while (1)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v13 >= *(v3 + 16))
      {
        goto LABEL_37;
      }

      v14 = *(v12 - 1);
      v15 = *v12;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v11)
      {
        v16 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v18 = static SectionSpecifier.Part.< infix(_:_:)(v17, v16, v11);

        if ((v18 & 1) == 0)
        {

LABEL_31:
          v7 = v38;
          v6 = v40;
          goto LABEL_32;
        }
      }

      if ((v8 & 1) == 0)
      {
        goto LABEL_13;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = SectionSpecifier.Part.isChildPart(of:)(of);

      if (v19)
      {
        break;
      }

      ++v13;
      v12 += 16;
      if (v13 >= v5)
      {
        goto LABEL_31;
      }
    }

    v4 = v13;
LABEL_13:
    v20 = v38;
    v6 = v40;
    v10 = v36;
    if (!v38)
    {
      v21 = *(v40 + 3);
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_40;
      }

      v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EC0, &qword_1B0EDE2E0);
      v24 = swift_allocObject();
      v25 = _swift_stdlib_malloc_size_0(v24);
      v26 = v25 - 32;
      if (v25 < 32)
      {
        v26 = v25 - 17;
      }

      v27 = v26 >> 4;
      *(v24 + 2) = v23;
      *(v24 + 3) = 2 * (v26 >> 4);
      v28 = v24 + 32;
      v29 = *(v40 + 3) >> 1;
      v30 = 16 * v29;
      if (*(v40 + 2))
      {
        v31 = v40 + 32;
        if (v24 != v40 || v28 >= &v31[v30])
        {
          v39 = v26 >> 4;
          memmove(v24 + 32, v31, v30);
          v27 = v39;
        }

        *(v40 + 2) = 0;
      }

      v37 = &v28[v30];
      v20 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

      v6 = v24;
      v10 = v36;
    }

    v32 = __OFSUB__(v20, 1);
    v7 = v20 - 1;
    if (v32)
    {
      goto LABEL_38;
    }

    ++v4;
    *v37 = v14;
    *(v37 + 8) = v15;
    v9 = v37 + 16;
    if (v4 < v5)
    {
      continue;
    }

    break;
  }

LABEL_32:
  sub_1B0CA59DC(&v47);

  sub_1B0398EFC(&v46, &qword_1EB6E5FF0, &qword_1B0EDFEF0);
  v33 = *(v6 + 3);
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v32 = __OFSUB__(v34, v7);
    v35 = v34 - v7;
    if (v32)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {
      *(v6 + 2) = v35;
    }
  }
}

void sub_1B0CA57EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1B0CA40A4(a4, a5, a6, &v29);

  if (a2)
  {
    v9 = v29;
    v10 = *(&v30 + 1);
    v11 = v30;
    v28 = v31;
    if (!a3)
    {
LABEL_24:
      *a1 = v9;
      *(a1 + 2) = v11;
      *(a1 + 3) = v10;
      v22 = v28;
      goto LABEL_25;
    }

    if (a3 < 0)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v23 = a1;
    v24 = a3;
    v12 = *(v29 + 16);
    v25 = v29 + 40;
    v13 = 1;
    while (2)
    {
      if (v11 >= v12)
      {
LABEL_22:
        *v23 = v9;
        *(v23 + 2) = v11;
        *(v23 + 3) = v10;
        v23[32] = v28;
        return;
      }

      v26 = v13;
      v27 = a2;
      a1 = (v25 + 16 * v11);
      v14 = v11;
      while (1)
      {
        if (v11 < 0)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (v14 >= *(v9 + 16))
        {
          goto LABEL_28;
        }

        v15 = *(a1 - 1);
        v16 = *a1;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v10)
        {
          v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v19 = static SectionSpecifier.Part.< infix(_:_:)(v18, v17, v10);

          if ((v19 & 1) == 0)
          {

            v11 = v14 + 1;
            goto LABEL_22;
          }
        }

        if (!v28)
        {
          break;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v20 = SectionSpecifier.Part.isChildPart(of:)(*(&v9 + 8));

        if (v20)
        {
          v11 = v14;
          break;
        }

        ++v14;
        a1 += 16;
        if (v12 == v14)
        {
          v11 = v12;
          goto LABEL_22;
        }
      }

      ++v11;
      *v27 = v15;
      *(v27 + 8) = v16;
      if (v26 == v24)
      {
        a1 = v23;
        goto LABEL_24;
      }

      a2 = v27 + 16;
      v13 = v26 + 1;
      if (!__OFADD__(v26, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
  }

  v21 = v30;
  *a1 = v29;
  *(a1 + 1) = v21;
  v22 = v31;
LABEL_25:
  a1[32] = v22;
}

uint64_t sub_1B0CA5A3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1B0398EFC(a5, &qword_1EB6E5F20, &qword_1B0EDE988);

    return 5;
  }

  if (*(a5 + 40))
  {
    v8 = *a5;
    v9 = *(a5 + 16);
    v10 = *(a5 + 32) >> 4;
    if (v10 != 5)
    {
      if (!v10)
      {
        v11 = a5;

        sub_1B0398EFC(v11, &qword_1EB6E5F20, &qword_1B0EDE988);
        return (v9 & 0x80 | v8) != 0;
      }

      goto LABEL_8;
    }

    if ((v9 & 1) == 0)
    {
      v14 = a1;
      v15 = a2;
      v16 = a3;
      v17 = a5;
      v19 = sub_1B0C895C4(*a5, *(a5 + 8));
      v20 = v18;
      if (v19 == 1819112552 && v18 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
      {

        sub_1B0398EFC(v17, &qword_1EB6E5F20, &qword_1B0EDE988);

        return 2;
      }

      if (v19 == 0x6E69616C70 && v20 == 0xE500000000000000)
      {

        v21 = v17;
      }

      else
      {
        v22 = sub_1B0E46A78();

        a5 = v17;
        a3 = v16;
        a2 = v15;
        a1 = v14;
        if ((v22 & 1) == 0)
        {
          goto LABEL_8;
        }

        v21 = v17;
      }

      sub_1B0398EFC(v21, &qword_1EB6E5F20, &qword_1B0EDE988);
      return 3;
    }
  }

LABEL_8:
  v12 = a5;
  v13 = sub_1B0C63FAC(a1, a2, a3, a4, a5);
  sub_1B0398EFC(v12, &qword_1EB6E5F20, &qword_1B0EDE988);

  if (v13)
  {
    return 4;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1B0CA5C7C(uint64_t a1, char **a2)
{
  v3 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v3;
  v4 = *(a1 + 40);
  v21 = *(a1 + 32);
  v5 = *&v20[0];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 112);
  v19[0] = *(a1 + 96);
  v19[1] = v9;
  v10 = *(a1 + 184) != 2;
  v19[2] = *(a1 + 128);
  sub_1B0CA3924(v20, v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CA5DBC(v19, v18);
  v11 = sub_1B0CA5A3C(v4, v6, v7, v8, v19, v10);
  v12 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1B0C81754(0, *(v12 + 2) + 1, 1, v12);
    *a2 = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1B0C81754((v14 > 1), v15 + 1, 1, v12);
    *a2 = v12;
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[16 * v15];
  *(v16 + 4) = v5;
  v16[40] = v11;
  return 2;
}

uint64_t sub_1B0CA5DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F20, &qword_1B0EDE988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9IMAP2MIME15MultipartChoiceO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0CA5E84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1B0CA5ECC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0CA5F34()
{
  result = qword_1EB6E5FF8;
  if (!qword_1EB6E5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FF8);
  }

  return result;
}

uint64_t DisplayPart.PlainTextLineKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0CA600C()
{
  result = qword_1EB6E6000;
  if (!qword_1EB6E6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6000);
  }

  return result;
}

uint64_t sub_1B0CA6070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    goto LABEL_35;
  }

  if (*(a4 + 16) != 1)
  {

    goto LABEL_35;
  }

  v9 = *(a4 + 32);
  v10 = *(a4 + 40);
  v11 = *(a4 + 48);

  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  v12 = v10 - v9;
  if (!v9)
  {
    v12 = 0;
  }

  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (!v12 || (*v9 & 0xDF) != 0x46 || v12 == 1 || (v9[1] & 0xDF) != 0x4C || v12 == 2 || (v9[2] & 0xDF) != 0x4F || v12 == 3 || (v9[3] & 0xDF) != 0x57 || v12 == 4 || (v9[4] & 0xDF) != 0x45 || v12 == 5 || (v9[5] & 0xDF) != 0x44 || v12 != 6)
  {
LABEL_35:

    return 0;
  }

  if (!a8)
  {
    return 1;
  }

  if (*(a8 + 16) != 1)
  {
LABEL_37:

    return 1;
  }

  v13 = *(a8 + 32);
  v14 = *(a8 + 40);
  v15 = *(a8 + 48);

  if ((v15 & 0x80000000) == 0)
  {
    return 1;
  }

  v17 = v14 - v13;
  if (!v13)
  {
    v17 = 0;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    if (v17 && (*v13 & 0xDF) == 0x59 && v17 != 1 && (v13[1] & 0xDF) == 0x45 && v17 != 2 && (v13[2] & 0xDF) == 0x53 && v17 == 3)
    {
      return 2;
    }

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CA6214(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v18 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = (v1 + 80);
    while (1)
    {
      if ((*(v7 - 4) & 1) == 0)
      {
        v8 = *(v7 - 3);
        v9 = *(v7 - 2);
        v10 = *(v7 - 8);
        v11 = *v7;
        v12 = *(v7 - 48);
        if (v12 == 4)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          v16 = v9;
          v17 = v8;
          v15 = v10;
          v18 = v11;
        }

        else if (v12 == 12)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          v6 = v11;
          goto LABEL_6;
        }
      }

      v8 = v3;
      v9 = v4;
      v10 = v5;
LABEL_6:
      v7 += 7;
      v3 = v8;
      v4 = v9;
      v5 = v10;
      if (!--v2)
      {
        goto LABEL_13;
      }
    }
  }

  v16 = 0;
  v17 = 0;
  v15 = 0;
  v18 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0;
LABEL_13:
  sub_1B0CA6368(a1);

  return sub_1B0CA6070(v8, v9, v10, v6, v17, v16, v15, v18);
}

uint64_t sub_1B0CA6368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F20, &qword_1B0EDE988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B0CA63D0(unint64_t result, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v7 = a2 - result;
  v8 = a3 == 0;
  if (a3)
  {
    v9 = a3 + result;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2 - result;
  }

  if (v10 < 0)
  {
    goto LABEL_134;
  }

  v54 = 0;
  v55 = v10;
  v57 = v10;
  v11 = a6 - a5;
  if (a5)
  {
    v12 = a6 - a5;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (!v12)
  {
LABEL_101:
    v42 = a4 - v6;
    if (!v6)
    {
      v42 = 0;
    }

    if ((result & 0x8000000000000000) == 0 && v42 >= result)
    {
      if ((a2 & 0x8000000000000000) == 0 && v42 >= a2)
      {
        v43 = v7 - (v55 - v54);
        if (!__OFSUB__(v7, v55 - v54))
        {
          v44 = __OFADD__(result, v43);
          v45 = result + v43;
          if (!v44)
          {
            if ((v45 & 0x8000000000000000) == 0 && v42 >= v45)
            {
              if (v45 >= result)
              {
                if (v45 <= a2)
                {
                  if (!v6)
                  {
                    return 0;
                  }

                  result += v6;
                  return result;
                }

                goto LABEL_142;
              }

LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
              goto LABEL_143;
            }

LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v46 = a4;
  v47 = a2 - result;
  v48 = a2;
  v49 = result;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  LODWORD(result) = 2;
  v16 = v57;
  v52 = v9;
  do
  {
    if (!a5)
    {
      v13 = 0;
      v20 = 0;
      v36 = 2;
      goto LABEL_87;
    }

    v53 = v16;
    v58 = result;
    v17 = a5;
    v18 = a5 + v14;
    v19 = v11;
    v20 = v14;
    v21 = v11 - v14;
    result = memchr((a5 + v14), 10, v11 - v14);
    if (!result)
    {
      goto LABEL_85;
    }

    v22 = result - v18;
    if ((result - v18) < 0)
    {
      goto LABEL_85;
    }

    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_123:
      v57 = v53;
      __break(1u);
LABEL_124:
      v57 = v53;
      __break(1u);
LABEL_125:
      v57 = v53;
      __break(1u);
LABEL_126:
      v57 = v53;
      __break(1u);
LABEL_127:
      v57 = v53;
      __break(1u);
LABEL_128:
      v57 = v53;
      __break(1u);
LABEL_129:
      v57 = v22;
      __break(1u);
      goto LABEL_130;
    }

    if (v21 < v23)
    {
      goto LABEL_85;
    }

    v16 = v22 + v20;
    if (__OFADD__(v22, v20))
    {
      goto LABEL_124;
    }

    v14 = v23 + v20;
    if (__OFADD__(v23, v20))
    {
      goto LABEL_125;
    }

    if (v23 < v22 || v14 < v16)
    {
      goto LABEL_126;
    }

    v11 = v19;
    a5 = v17;
    v9 = v52;
    if (v20 < v16)
    {
      if (v16 > v19)
      {
        goto LABEL_131;
      }

      v22 = v16 - 1;
      if (*(v17 + v16 - 1) == 13)
      {
        --v16;
      }
    }

    if (v16 < v20)
    {
      goto LABEL_127;
    }

    if (v19 < v16)
    {
      goto LABEL_128;
    }

    if (v58 == 2 || (v58 & 1) != 0 || v15 == v10)
    {
      v22 = v53;
    }

    else
    {
      *(v52 + v15) = 10;
      v13 = v15 + 1;
      v22 = v10;
      v15 = v13;
      if (v10 < v13)
      {
        goto LABEL_132;
      }
    }

    v24 = v17 + v16;
    if (v16 == v20)
    {
      result = 0;
    }

    else
    {
      if (v16 - v20 < 1)
      {
        goto LABEL_133;
      }

      v25 = *(v24 - 1);
      result = v25 == 61;
      if (v25 == 61)
      {
        --v24;
      }
    }

    v16 = v24 - v18;
    if (v24 - v18 < 0)
    {
      goto LABEL_129;
    }

    if (v24 != v18)
    {
      v26 = 0;
      v27 = v15;
      while (1)
      {
        v28 = v26 + 1;
        if (v16 < v26 + 1)
        {
          v57 = v22;
          __break(1u);
LABEL_118:
          v57 = v22;
          __break(1u);
LABEL_119:
          v57 = v22;
          __break(1u);
LABEL_120:
          v57 = v22;
          __break(1u);
LABEL_121:
          v57 = v22;
          __break(1u);
LABEL_122:
          v57 = v22;
          __break(1u);
          goto LABEL_123;
        }

        v29 = *(v18 + v26);
        if (v29 == 9 || v29 == 32)
        {
          if (v15 == v10)
          {
            ++v26;
            v15 = v10;
          }

          else
          {
            *(v52 + v15) = 32;
            v13 = v15 + 1;
            ++v26;
            v15 = v13;
            v27 = v13;
            if (v10 < v13)
            {
              goto LABEL_118;
            }
          }
        }

        else if (v29 == 61)
        {
          if (v28 == v16)
          {
            goto LABEL_80;
          }

          v30 = v26 + 2;
          if (v16 < v26 + 2)
          {
            goto LABEL_119;
          }

          if (v30 == v16)
          {
LABEL_80:
            v16 = v10;
            if (v12 >= v14)
            {
              goto LABEL_83;
            }

LABEL_130:
            v57 = v16;
            __break(1u);
LABEL_131:
            v57 = v53;
            __break(1u);
LABEL_132:
            v57 = v53;
            __break(1u);
LABEL_133:
            v57 = v22;
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          v26 += 3;
          if (v16 < v26)
          {
            goto LABEL_120;
          }

          v31 = *(v18 + v28);
          v32 = *(v18 + v30);
          if ((v31 - 58) > 0xF5u)
          {
            v33 = -48;
          }

          else if ((v31 - 71) > 0xF9u)
          {
            v33 = -55;
          }

          else
          {
            if ((v31 - 103) <= 0xF9u)
            {
              goto LABEL_44;
            }

            v33 = -87;
          }

          if ((v32 - 58) > 0xF5u)
          {
            v35 = -48;
            if (v27 == v10)
            {
              goto LABEL_76;
            }
          }

          else if ((v32 - 71) > 0xF9u)
          {
            v35 = -55;
            if (v27 == v10)
            {
LABEL_76:
              v15 = v10;
              v27 = v10;
              goto LABEL_44;
            }
          }

          else
          {
            if ((v32 - 103) < 0xFAu)
            {
              goto LABEL_44;
            }

            v35 = -87;
            if (v27 == v10)
            {
              goto LABEL_76;
            }
          }

          *(v52 + v27) = (v32 + v35) | (16 * (v31 + v33));
          v13 = v27 + 1;
          v15 = v13;
          ++v27;
          if (v10 < v13)
          {
            goto LABEL_122;
          }
        }

        else if ((v29 - 127) < 0xFFFFFFA1 || v15 == v10)
        {
          ++v26;
        }

        else
        {
          *(v52 + v15) = v29;
          v13 = v15 + 1;
          ++v26;
          v15 = v13;
          v27 = v13;
          if (v10 < v13)
          {
            goto LABEL_121;
          }
        }

LABEL_44:
        if (v26 == v16)
        {
          goto LABEL_80;
        }
      }
    }

    v16 = v22;
    if (v12 < v14)
    {
      goto LABEL_130;
    }

LABEL_83:
    ;
  }

  while (v14 >= v20);
  v57 = v16;
  __break(1u);
LABEL_85:
  a5 = v17;
  v9 = v52;
  v16 = v53;
  v36 = v58;
LABEL_87:
  v54 = v13;
  v55 = v10;
  v56 = v9;
  v57 = v16;
  v59 = v36;
  if (v20 == v12)
  {
LABEL_96:
    result = v49;
    v6 = v50;
    v7 = v47;
    a2 = v48;
    a4 = v46;
    if (v36 != 2 && (v36 & 1) == 0)
    {
      v39 = v54;
      v40 = v55;
      if (v54 != v55)
      {
        *(v56 + v54) = 10;
        v41 = v39 + 1;
        if (v40 < v41)
        {
LABEL_143:
          __break(1u);
          return result;
        }

        v54 = v41;
      }
    }

    goto LABEL_101;
  }

  if (a5)
  {
    v37 = a5 + v12;
  }

  else
  {
    v37 = 0;
  }

  if (a5)
  {
    v38 = a5 + v20;
  }

  else
  {
    v38 = 0;
  }

  result = sub_1B0CA6C68(v38, v37, 1, &v59, &v54);
  if (!v51)
  {
    v36 = v59;
    goto LABEL_96;
  }

  return result;
}

uint64_t sub_1B0CA6950(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 - result;
  if (a3)
  {
    v8 = a2 - result;
  }

  else
  {
    v8 = 0;
  }

  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v12 = result;
  v13 = a3 + result;
  if (!a3)
  {
    v13 = 0;
  }

  v18 = 0;
  v19 = v8;
  v20 = v13;
  v21 = v8;
  result = sub_1B0CA6A64(1, &v18, a5, a6);
  if (!v6)
  {
    v14 = a4 - a3;
    if (!a3)
    {
      v14 = 0;
    }

    if ((v12 & 0x8000000000000000) == 0 && v14 >= v12)
    {
      if ((a2 & 0x8000000000000000) == 0 && v14 >= a2)
      {
        v15 = v7 - (v19 - v18);
        if (!__OFSUB__(v7, v19 - v18))
        {
          v16 = __OFADD__(v12, v15);
          v17 = v12 + v15;
          if (!v16)
          {
            if ((v17 & 0x8000000000000000) == 0 && v14 >= v17)
            {
              if (v17 >= v12)
              {
                if (v17 <= a2)
                {
                  if (a3)
                  {
                    return a3 + v12;
                  }

                  else
                  {
                    return 0;
                  }
                }

LABEL_31:
                __break(1u);
                return result;
              }

LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1B0CA6A64(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_54;
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
      if (v4 < v5 + 1)
      {
        __break(1u);
LABEL_50:
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
LABEL_56:
        __break(1u);
        return result;
      }

      v7 = *(a3 + v5);
      if (v7 == 61)
      {
        if (v6 == v4)
        {
          return result;
        }

        v8 = v5 + 2;
        if (v4 < v5 + 2)
        {
          goto LABEL_50;
        }

        if (v8 == v4)
        {
          return result;
        }

        v9 = v5 + 3;
        if (v4 < v5 + 3)
        {
          goto LABEL_51;
        }

        v10 = *(a3 + v6);
        v11 = *(a3 + v8);
        if ((v10 - 58) > 0xF5u)
        {
          v12 = -48;
        }

        else
        {
          if ((v10 - 71) <= 0xF9u)
          {
            if ((v10 - 103) >= 0xFAu)
            {
              v12 = -87;
              goto LABEL_39;
            }

LABEL_6:
            v6 = v9;
            goto LABEL_7;
          }

          v12 = -55;
        }

LABEL_39:
        if ((v11 - 58) > 0xF5u)
        {
          v20 = -48;
        }

        else if ((v11 - 71) > 0xF9u)
        {
          v20 = -55;
        }

        else
        {
          if ((v11 - 103) < 0xFAu)
          {
            goto LABEL_6;
          }

          v20 = -87;
        }

        v21 = *a2;
        v14 = a2[1];
        if (*a2 != v14)
        {
          v22 = (v11 + v20) | (16 * (v10 + v12));
          v15 = a2[2];
          *(v15 + v21) = v22;
          v16 = v21 + 1;
          if (v14 < v21 + 1)
          {
            goto LABEL_52;
          }

          goto LABEL_47;
        }

        goto LABEL_6;
      }

      if (result)
      {
        if (v7 != 9 && v7 != 32)
        {
          if (v7 != 95)
          {
            goto LABEL_34;
          }

          v13 = *a2;
          v14 = a2[1];
          if (*a2 != v14)
          {
            v15 = a2[2];
            *(v15 + v13) = 32;
            v16 = v13 + 1;
            if (v14 < v13 + 1)
            {
              goto LABEL_56;
            }

            goto LABEL_32;
          }

          goto LABEL_7;
        }
      }

      else if (v7 != 32 && v7 != 9)
      {
LABEL_34:
        if ((v7 - 127) < 0xFFFFFFA1)
        {
          goto LABEL_7;
        }

        v19 = *a2;
        v14 = a2[1];
        if (*a2 == v14)
        {
          goto LABEL_7;
        }

        v15 = a2[2];
        *(v15 + v19) = v7;
        v16 = v19 + 1;
        if (v14 < v16)
        {
          goto LABEL_55;
        }

LABEL_32:
        v9 = v6;
LABEL_47:
        *a2 = v16;
        a2[1] = v14;
        v6 = v9;
        a2[2] = v15;
        goto LABEL_7;
      }

      v18 = *a2;
      v14 = a2[1];
      if (*a2 != v14)
      {
        v15 = a2[2];
        *(v15 + v18) = 32;
        v16 = v18 + 1;
        if (v14 < v18 + 1)
        {
          goto LABEL_53;
        }

        goto LABEL_32;
      }

LABEL_7:
      v5 = v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t sub_1B0CA6C68(uint64_t result, uint64_t a2, char a3, _BYTE *a4, uint64_t *a5)
{
  v5 = a2;
  v6 = *a4;
  if (v6 != 2 && (v6 & 1) == 0)
  {
    v8 = *a5;
    v7 = a5[1];
    if (*a5 != v7)
    {
      v9 = a5[2];
      *(v9 + v8) = 10;
      v10 = v8 + 1;
      if (v7 < v10)
      {
        goto LABEL_19;
      }

      *a5 = v10;
      a5[1] = v7;
      a5[2] = v9;
    }
  }

  if (!result)
  {
    goto LABEL_13;
  }

  v11 = a2 - result;
  if (a2 == result)
  {
    goto LABEL_13;
  }

  v12 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
  }

  else if ((v12 & 0x8000000000000000) == 0 && v12 < v11)
  {
    v13 = (result + v12);
    if (*v13 == 61)
    {
      *a4 = 1;
      v5 = v13;
      return sub_1B0CA6A64(0, a5, result, v5);
    }

LABEL_13:
    if (a3)
    {
      *a4 = 2;
    }

    else
    {
      *a4 = 0;
    }

    return sub_1B0CA6A64(0, a5, result, v5);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ReplacementNode(uint64_t a1)
{
  result = qword_1EB6DB900;
  if (!qword_1EB6DB900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B0CA6DA8(uint64_t a1)
{
  sub_1B0CA6EB4();
  if (v1 <= 0x3F)
  {
    sub_1B0CA6F04(319, &qword_1EB6DB910, type metadata accessor for PartReplacement, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B0CA6F04(319, &qword_1EB6E6008, type metadata accessor for ReplacementNode, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0CA6EB4()
{
  if (!qword_1EB6DB928)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB928);
    }
  }
}

void sub_1B0CA6F04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B0CA6F68(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v15 = *(*(a3 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = a1(&v15);
      if (v3)
      {
        break;
      }

      v13 = v12;

      if (v13)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B0CA70BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v8 = type metadata accessor for ReplacementNode(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6010, "pG\b");
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 56) = 2;
  v18 = *(v8 + 24);
  v19 = type metadata accessor for PartReplacement(0);
  v20 = *(*(v19 - 8) + 56);
  v35 = v18;
  v20(a6 + v18, 1, 1, v19);
  (*(v9 + 56))(v17, 1, 1, v8);
  v48 = 0;
  v40 = &v48;
  v41 = a5;
  v42 = v17;
  v37 = &v48;
  v38 = v17;
  v21 = v34;
  sub_1B0CA33D0(3, v30, v31, v32, v33);
  if (v21)
  {
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
    v44 = v22;
    v45 = v23;
    v46 = v24;
    v47 = v25;
    sub_1B0CA286C(sub_1B0CA78E4, v39, sub_1B0CA7A28, v36, 0, 0);

    sub_1B03B5C80(v17, v14, &qword_1EB6E6010, "pG\b");
    if ((*(v9 + 48))(v14, 1, v8) != 1)
    {
      sub_1B0CA806C(v14, v11);
      sub_1B0398EFC(a6 + v35, &qword_1EB6E5F38, &qword_1B0EDEBC0);
      sub_1B0CA806C(v11, a6);

      v26 = &qword_1EB6E6010;
      v27 = "pG\b";
      v28 = v17;
      return sub_1B0398EFC(v28, v26, v27);
    }

    sub_1B0398EFC(v14, &qword_1EB6E6010, "pG\b");
    sub_1B0CA8018();
    swift_allocError();
    swift_willThrow();
  }

  sub_1B0398EFC(v17, &qword_1EB6E6010, "pG\b");
  v26 = &qword_1EB6E5F38;
  v27 = &qword_1B0EDEBC0;
  v28 = a6 + v35;
  return sub_1B0398EFC(v28, v26, v27);
}

uint64_t sub_1B0CA743C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for ReplacementNode(0);
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  *a2 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v16 = *(a3 + 16);
  v38 = a3;
  v40 = a1;
  if (v16 && (v17 = sub_1B0CA7EF4(v15), (v18 & 1) != 0))
  {
    v19 = v17;
    v20 = *(a3 + 56);
    v21 = type metadata accessor for PartReplacement(0);
    v22 = *(v21 - 8);
    sub_1B0CA81D4(v20 + *(v22 + 72) * v19, v11, type metadata accessor for PartReplacement);
    (*(v22 + 56))(v11, 0, 1, v21);
  }

  else
  {
    v21 = type metadata accessor for PartReplacement(0);
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  }

  v23 = v41;
  v24 = *(v12 + 24);
  type metadata accessor for PartReplacement(0);
  v25 = *(v21 - 8);
  (*(v25 + 56))(&v14[v24], 1, 1, v21);
  v26 = v40;
  v27 = *(v40 + 1);
  *v14 = *v40;
  *(v14 + 1) = v27;
  v28 = *(v26 + 32);
  *(v14 + 5) = 0;
  *(v14 + 6) = 0;
  *(v14 + 4) = v28;
  v14[56] = 2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CA80D0(v11, &v14[v24]);
  v29 = MEMORY[0x1E69E7CC0];
  *&v14[*(v12 + 28)] = MEMORY[0x1E69E7CC0];
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v15, v29))
  {
    sub_1B0398EFC(v23, &qword_1EB6E6010, "pG\b");
    sub_1B0CA81D4(v14, v23, type metadata accessor for ReplacementNode);
    (*(v39 + 56))(v23, 0, 1, v12);
  }

  else if (!(*(v39 + 48))(v23, 1, v12))
  {
    v30 = (2 * *(v15 + 16)) | 1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CA7A30(v14, v15, v15 + 32, 0, v30);
    sub_1B0CA3980(v26);
  }

  v31 = v42;
  sub_1B03B5C80(&v14[v24], v42, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  v32 = 1;
  v33 = (*(v25 + 48))(v31, 1, v21);
  v34 = sub_1B0398EFC(v31, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  if (v33 == 1)
  {
    MEMORY[0x1EEE9AC00](v34);
    *(&v37 - 2) = v14;
    sub_1B0CA6F68(sub_1B0CA8140, (&v37 - 4), v38);
    if (v35)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }
  }

  sub_1B0CA8178(v14);
  return v32;
}

uint64_t sub_1B0CA7904(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v7 = *a6;
  if (*a6 && *(result + 32) >> 59 == 9)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B0C7EB6C();
    if (v11 != 2)
    {
      v12 = v9;
      v13 = v10;
      v14 = v11;
      v15 = type metadata accessor for ReplacementNode(0);
      if (!(*(*(v15 - 8) + 48))(a7, 1, v15))
      {
        sub_1B0CA7CA0(v12, v13, v14 & 1, v7, v7 + 32, 0, (2 * *(v7 + 16)) | 1);
      }
    }
  }

  return result;
}

void sub_1B0CA7A30(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, size_t a5)
{
  v11 = type metadata accessor for ReplacementNode(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    return;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (__OFSUB__(v16, a4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = a4 + 1;
  v18 = v16 == a4 + 1;
  if (__OFSUB__(v16, a4 + 1))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    a5 = sub_1B0C81860(0, a4, 1, a5);
    goto LABEL_10;
  }

  a4 = *(a3 + 8 * a4);
  if (!v18)
  {
    if (a4 >= 1)
    {
      v21 = *(v13 + 28);
      v22 = *(v5 + v21);
      if (a4 <= v22[2])
      {
        v23 = a4 - 1;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1B0C785C8(v22);
        }

        v24 = v5;
        if (a4 > v22[2])
        {
          __break(1u);
        }

        else
        {
          sub_1B0CA7A30(a1, a2, a3, v17, a5);
          swift_unknownObjectRelease();
          *(v24 + v21) = v22;
        }
      }
    }

    return;
  }

  a3 = *(v13 + 28);
  a5 = *(v5 + a3);
  if (*(a5 + 16) + 1 != a4)
  {
    return;
  }

  sub_1B0CA81D4(a1, v15, type metadata accessor for ReplacementNode);
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  v20 = *(a5 + 16);
  v19 = *(a5 + 24);
  if (v20 >= v19 >> 1)
  {
    a5 = sub_1B0C81860((v19 > 1), v20 + 1, 1, a5);
  }

  swift_unknownObjectRelease();
  *(a5 + 16) = v20 + 1;
  sub_1B0CA806C(v15, a5 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20);
  *(v5 + a3) = a5;
}

uint64_t sub_1B0CA7CA0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v15 = a7 >> 1;
  if (a7 >> 1 == a6)
  {
    *(v8 + 40) = result;
    *(v8 + 48) = a2;
    *(v8 + 56) = a3 & 1;
    return result;
  }

  if ((a7 >> 1) <= a6)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (__OFSUB__(v15, a6))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = result;
  v27 = a3;
  v12 = *(a5 + 8 * a6);
  if (v12 >= 1)
  {
    v7 = a4;
    v11 = a7;
    v14 = a2;
    v13 = a5;
    result = type metadata accessor for ReplacementNode(0);
    v17 = a6;
    v9 = *(v8 + *(result + 28));
    if (v12 <= v9[2])
    {
      v25 = *(result + 28);
      v26 = v12 - 1;
      v18 = v17 + 1;
      if (!__OFSUB__(v15, v17 + 1))
      {
        v10 = result;
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = isUniquelyReferenced_nonNull_native;
        if (v15 != v18)
        {
          v22 = v27;
          result = v28;
          if (v20)
          {
            v23 = v14;
            goto LABEL_14;
          }

LABEL_22:
          v24 = sub_1B0C785C8(v9);
          v22 = v27;
          v23 = v14;
          v9 = v24;
          result = v28;
LABEL_14:
          if (v12 > v9[2])
          {
            __break(1u);
          }

          else
          {
            sub_1B0CA7CA0(result, v23, v22 & 1, v7, v13, v18, v11);
            result = swift_unknownObjectRelease();
            *(v8 + v25) = v9;
          }

          return result;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_10:
          v18 = v26;
          result = swift_unknownObjectRelease();
          if (v12 <= v9[2])
          {
            v21 = v9 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v26;
            *(v21 + 40) = v28;
            *(v21 + 48) = v14;
            *(v21 + 56) = v27 & 1;
            *(v8 + v25) = v9;
            return result;
          }

          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        v9 = sub_1B0C785C8(v9);
        goto LABEL_10;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1B0CA7EF4(uint64_t a1)
{
  sub_1B0E46C28();
  SectionSpecifier.Part.hash(into:)(v4, a1);
  v2 = sub_1B0E46CB8();

  return sub_1B0CA7F60(a1, v2);
}

unint64_t sub_1B0CA7F60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v8 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v7, a1);

      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B0CA8018()
{
  result = qword_1EB6E6018;
  if (!qword_1EB6E6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6018);
  }

  return result;
}

uint64_t sub_1B0CA806C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplacementNode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CA80D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CA8178(uint64_t a1)
{
  v2 = type metadata accessor for ReplacementNode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0CA81D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CA824C(unsigned int a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, unsigned int a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v95 = *MEMORY[0x1E69E9840];
  if (a12 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (a10)
  {
    v15 = a12 + a10;
  }

  else
  {
    v15 = 0;
  }

  sub_1B0CB7368(a10, v15, a8, v88);
  v82 = 0u;
  v83 = 0u;
  v84 = 0x1FFFFFFF0ELL;
  v85 = 0u;
  v86 = 0u;
  v87 = 0;
  v16 = sub_1B0CB8540();
  if (v19 == 2)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v72 = 0;
    v24 = 0;
  }

  else
  {
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v64 = a3;
    v65 = a4;
    v66 = a5;
    v78 = 0;
    v71 = 0;
    v72 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v29 = 0;
    do
    {
      sub_1B0CB7ED8(v25, v26, v27, v28 & 1, &v89);
      v34 = v89;
      v33 = v90;
      v36 = v91;
      v35 = v92;
      v37 = v93;
      v38 = v94;
      if (v93 >> 59 == 9)
      {
        v77 = v28;
        v39 = v93;
        v40 = v27;
        v41 = v94;
        v42 = v26;
        v43 = v91;
        v44 = v89;
        v45 = v90;
        v46 = v92;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v35 = v46;
        v33 = v45;
        v34 = v44;
        v36 = v43;
        v26 = v42;
        v38 = v41;
        v27 = v40;
        v37 = v39;
        v28 = v77;
        v70 = v33;
        v71 = v34;
        v68 = v35;
        v69 = v36;
        v72 = v37;
        v78 = v38;
      }

      if (!(v29 & 1 | (v25 == 0)) && a10 && &v25[-a10] >= 1)
      {
        v47 = v35;
        sub_1B0C92F04(a8, a1, 1, a6, a7, 0, &v25[-a10], a10, a11);
        v35 = v47;
      }

      if ((v84 & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
      {
        if (*(&v85 + 1))
        {
          v48 = (v86 - *(&v85 + 1));
        }

        else
        {
          v48 = 0;
        }

        if ((v48 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v49 = v35;
        sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v48, *(&v85 + 1), v86);
        sub_1B0398EFC(&v82, &qword_1EB6E5D38, &qword_1B0EE0240);
        v35 = v49;
      }

      *&v82 = v34;
      *(&v82 + 1) = v33;
      *&v83 = v36;
      *(&v83 + 1) = v35;
      v84 = v37;
      *&v85 = v38;
      *(&v85 + 1) = v25;
      *&v86 = v26;
      *(&v86 + 1) = v27;
      v87 = v28 & 1;
      v25 = sub_1B0CB8540();
      v26 = v30;
      v27 = v31;
      v28 = v32;
      v29 = 1;
    }

    while (v32 != 2);
    a4 = v65;
    a5 = v66;
    v24 = v78;
    v21 = v70;
    v20 = v71;
    v23 = v68;
    v22 = v69;
    a3 = v64;
  }

  if ((v84 & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
  {
LABEL_36:
    if (a3)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v50 = a3;
  v51 = *(&v85 + 1);
  v52 = v86;
  if (v84 >> 59)
  {
    sub_1B0398EFC(&v82, &qword_1EB6E5D38, &qword_1B0EE0240);
    if (v51)
    {
      v54 = v52 - v51;
    }

    else
    {
      v54 = 0;
    }

    if ((v54 & 0x8000000000000000) == 0)
    {
      sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v54, v51, v52);
      a3 = v50;
      goto LABEL_36;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if ((v50 & 1) == 0)
  {
LABEL_37:
    sub_1B0C70174(a1, a2, a6, a7);
    goto LABEL_38;
  }

  if (a2)
  {
    if (*(&v85 + 1))
    {
      v53 = (v86 - *(&v85 + 1));
    }

    else
    {
      v53 = 0;
    }

    if ((v53 & 0x8000000000000000) != 0)
    {
LABEL_62:
      __break(1u);
    }

    sub_1B03B5C80(&v82, v79, &qword_1EB6E5D38, &qword_1B0EE0240);
    sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v53, v51, v52);
  }

LABEL_38:
  if (a1)
  {
    if (a1 == 1)
    {
      v55 = 13;
    }

    else
    {
      v55 = 10;
    }

    LOBYTE(v79[0]) = v55;
    v56 = v79;
    v57 = v79 + 1;
  }

  else
  {
    v56 = "\r\n";
    v57 = "";
  }

  result = a6(v56, v57);
  if (!a4)
  {
  }

  if (!v24)
  {
    return result;
  }

  v79[0] = v20;
  v79[1] = v21;
  v79[2] = v22;
  v79[3] = v23;
  v80 = v72;
  v81 = v24;

  v59 = sub_1B0C7EB6C();
  if (v61 != 2)
  {
    v62 = v60;
    if ((v61 & 1) == 0)
    {
      sub_1B0CAB06C(v59, v60);
      goto LABEL_54;
    }

    if (v59)
    {
      v63 = v60 - v59;
    }

    else
    {
      v63 = 0;
    }

    if ((v63 & 0x8000000000000000) == 0)
    {
      sub_1B0C93CE8(0, v63, v59, v62);
LABEL_54:
      a4();

      goto LABEL_55;
    }

    goto LABEL_61;
  }

LABEL_55:
  sub_1B03B1AF0(a4, a5);
}

char *sub_1B0CA873C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, char *a5, char *a6, char *a7, char *a8)
{
  v46 = a8;
  v47 = a3;
  v48 = a6;
  v49 = a7;
  v12 = sub_1B0E443C8();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - v18;
  v20 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03B5C80(a2, v19, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  v23 = type metadata accessor for PartReplacement(0);
  if ((*(*(v23 - 8) + 48))(v19, 1, v23) == 1)
  {
    sub_1B0398EFC(v19, &qword_1EB6E5F38, &qword_1B0EDEBC0);
LABEL_8:
    v34 = v46;
    v35 = v47;
    v37 = v48;
    v36 = v49;
    sub_1B0CAA1C4(a1, a2, v47, a4, a5, v48, v49, v46);
    return sub_1B0CAA428(a1, a2, v35, a4, a5, v37, v36, v34);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0CABE88(v19, type metadata accessor for PartReplacement);
    goto LABEL_8;
  }

  v24 = sub_1B0CABD3C(v19, v22, type metadata accessor for Message);
  MEMORY[0x1EEE9AC00](v24);
  *(&v43 - 64) = a5;
  v25 = v49;
  *(&v43 - 7) = v48;
  *(&v43 - 6) = v25;
  v27 = v46;
  v26 = v47;
  *(&v43 - 5) = v46;
  *(&v43 - 32) = a1;
  *(&v43 - 3) = v26;
  MEMORY[0x1EEE9AC00](v28);
  v41 = sub_1B0CAC0D4;
  v42 = v29;
  if (!Message.isEmpty.getter())
  {
    sub_1B0CABCD4(v22, v16, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v43;
      v31 = v44;
      v32 = v45;
      v33 = (*(v44 + 32))(v43, v16, v45);
      MEMORY[0x1EEE9AC00](v33);
      *(&v43 - 4) = v30;
      *(&v43 - 3) = sub_1B0CAC08C;
      v41 = (&v43 - 4);
      sub_1B0E44328();
      (*(v31 + 8))(v30, v32);
    }

    else
    {
      v39 = *v16;
      v40 = v16[1];
      sub_1B0CAA914(*v16, v40, a5, v48, v49, v27, a1, v47, a4);
      sub_1B0391D50(v39, v40);
    }
  }

  return sub_1B0CABE88(v22, type metadata accessor for Message);
}

uint64_t sub_1B0CA8BF4(__int16 *a1, __int16 *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a4 == 1)
    {
      v47 = 13;
      v49 = 11565;
      v9 = &v50;
      MEMORY[0x1EEE9AC00](a1);
      v41 = v10;
      v42 = a6;
      v43 = v11;
      v44 = &v48;
      v45 = v12;
      v46 = &v50;
      v15 = MEMORY[0x1EEE9AC00](v13);
      v39 = sub_1B0CAC0A4;
      v40 = v16;
      if (v17)
      {
        if (a1)
        {
          v18 = a2 - a1;
        }

        else
        {
          v18 = 0;
        }

        if ((v18 & 0x8000000000000000) == 0)
        {
          return sub_1B0C940AC(0, v18, a1, a2, sub_1B0CAC05C, &v38);
        }

        __break(1u);
        goto LABEL_26;
      }

      v35 = v14;
      (v14)(&v47, &v48, v15);
      v35(&v49, &v50);
      v35(a1, a2);
      v36 = &v49;
    }

    else
    {
      v47 = 10;
      v50 = 11565;
      v9 = &v51;
      MEMORY[0x1EEE9AC00](a1);
      v41 = v27;
      v42 = a6;
      v43 = v28;
      v44 = &v48;
      v45 = v29;
      v46 = &v51;
      v32 = MEMORY[0x1EEE9AC00](v30);
      v39 = sub_1B0CABF88;
      v40 = v33;
      if (v34)
      {
        if (a1)
        {
          v18 = a2 - a1;
        }

        else
        {
          v18 = 0;
        }

        if ((v18 & 0x8000000000000000) == 0)
        {
          return sub_1B0C940AC(0, v18, a1, a2, sub_1B0CAC05C, &v38);
        }

LABEL_27:
        __break(1u);
      }

      v35 = v31;
      (v31)(&v47, &v48, v32);
      v35(&v50, &v51);
      v35(a1, a2);
      v36 = &v50;
    }

    v35(v36, v9);
    return (v35)(&v47, &v48);
  }

  else
  {
    v48 = 11565;
    MEMORY[0x1EEE9AC00](a1);
    v41 = v19;
    v42 = a6;
    v43 = "\r\n";
    v44 = "";
    v45 = v20;
    v46 = &v49;
    v23 = MEMORY[0x1EEE9AC00](v21);
    v39 = sub_1B0CAC0A4;
    v40 = v24;
    if (v25)
    {
      if (a1)
      {
        v18 = a2 - a1;
      }

      else
      {
        v18 = 0;
      }

      if ((v18 & 0x8000000000000000) == 0)
      {
        return sub_1B0C940AC(0, v18, a1, a2, sub_1B0CAC05C, &v38);
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v37 = v22;
    (v22)("\r\n", "", v23);
    v37(&v48, &v49);
    v37(a1, a2);
    v37(&v48, &v49);
    return (v37)("\r\n", "");
  }
}

uint64_t sub_1B0CA8FA4(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return a3(0);
  }

  __break(1u);
  return result;
}

unint64_t PartReplacement.count.getter()
{
  v1 = v0;
  v40 = sub_1B0E443C8();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v39 - v9);
  v11 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for PartReplacement(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0CABCD4(v1, v19, type metadata accessor for PartReplacement);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0CABD3C(v19, v16, type metadata accessor for Message);
    sub_1B0CABCD4(v16, v10, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v40;
      (*(v2 + 32))(v4, v10, v40);
      v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*(v2 + 8))(v4, v24);
      v23 = v16;
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  sub_1B0CABD3C(v19, v13, type metadata accessor for Message);
  sub_1B0CABCD4(v13, v7, type metadata accessor for Message.Data);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v7;
    v21 = v40;
    (*(v2 + 32))(v4, v20, v40);
    v22 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    (*(v2 + 8))(v4, v21);
    v23 = v13;
LABEL_6:
    sub_1B0CABE88(v23, type metadata accessor for Message);
    return v22;
  }

  sub_1B0CABE88(v13, type metadata accessor for Message);
  result = *v7;
  v26 = v7[1];
  v27 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v27)
    {
      goto LABEL_15;
    }

    v28 = HIDWORD(result);
    v29 = *v7;
    sub_1B0391D50(result, v26);
    v30 = v28 - v29;
    if (!__OFSUB__(v28, v29))
    {
      return v30;
    }

    __break(1u);
LABEL_13:
    sub_1B0CABE88(v16, type metadata accessor for Message);
    result = *v10;
    v26 = v10[1];
    v31 = v26 >> 62;
    if ((v26 >> 62) <= 1)
    {
      if (v31)
      {
        v37 = HIDWORD(result);
        v38 = *v10;
        result = sub_1B0391D50(result, v26);
        v30 = v37 - v38;
        if (__OFSUB__(v37, v38))
        {
          __break(1u);
          return result;
        }

        return v30;
      }

LABEL_15:
      v32 = BYTE6(v26);
      sub_1B0391D50(result, v26);
      return v32;
    }

    goto LABEL_20;
  }

  if (v27 != 2)
  {
LABEL_24:
    sub_1B0391D50(result, v26);
    return 0;
  }

  v34 = *(result + 16);
  v33 = *(result + 24);
  sub_1B0391D50(result, v26);
  result = v33 - v34;
  if (!__OFSUB__(v33, v34))
  {
    return result;
  }

  __break(1u);
LABEL_20:
  if (v31 != 2)
  {
    goto LABEL_24;
  }

  v36 = *(result + 16);
  v35 = *(result + 24);
  sub_1B0391D50(result, v26);
  result = v35 - v36;
  if (__OFSUB__(v35, v36))
  {
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t Message.streamWithPartsReplaced(input:output:replacements:_:)(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v11 = sub_1B0E443C8();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ReplacementNode(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = a1;
  v32 = a2;
  v38[16] = a1;
  v38[17] = a2;
  v39 = a3;
  v40 = a4;
  v33 = a4;
  v34 = a5;
  v41 = a5;
  v36 = sub_1B0CABC28;
  v37 = v38;
  swift_bridgeObjectRetain_n();
  if (Message.isEmpty.getter())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = v42;
    sub_1B0CA70BC(0, 0, 0, 0, a3, v18);
    if (!v19)
    {
      sub_1B0CA98E8(v31, v32, v18, v33, v34, 0, 0, 0, 0);
      sub_1B0CABE88(v18, type metadata accessor for ReplacementNode);
    }
  }

  else
  {
    sub_1B0CABCD4(v5, v15, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v28;
      v20 = v29;
      v22 = v30;
      v23 = (*(v29 + 32))(v28, v15, v30);
      MEMORY[0x1EEE9AC00](v23);
      *(&v28 - 4) = v21;
      *(&v28 - 3) = sub_1B0CABC5C;
      v27 = &v35;
      sub_1B0E44328();
      (*(v20 + 8))(v21, v22);
    }

    else
    {
      v25 = *v15;
      v24 = v15[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CAABA4(v25, v24, v31, v32, a3, v33, v34);
      sub_1B0391D50(v25, v24);
    }
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1B0CA97C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v22 = a8;
  v11 = a6;
  v12 = a5;
  v17 = type metadata accessor for ReplacementNode(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0CA70BC(a1, a2, a3, a4, a7, v19);
  if (!v9)
  {
    sub_1B0CA98E8(v12, v11, v19, v22, a9, a1, a2, a3, a4);
    return sub_1B0CABE88(v19, type metadata accessor for ReplacementNode);
  }

  return result;
}

void sub_1B0CA98E8(unsigned int a1, unsigned int a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v92 = a7;
  v93 = a8;
  v91 = a6;
  v94 = a2;
  v90 = a1;
  v101 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for ReplacementNode(0);
  v79 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6020, &qword_1B0EE0228);
  v96 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v78 = (&v73 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6028, &unk_1B0EE0230);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v95 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v73 - v23;
  v82 = *(a3 + *(v13 + 28));
  if (!*(v82 + 16))
  {
    sub_1B0CA873C(v94, a3 + *(v13 + 24), a4, a5, *(a3 + 8), a3[2], a3[3], a3[4]);
    return;
  }

  v89 = *(a3 + 56);
  if (v89 == 2)
  {
    v25 = *a3;
    sub_1B0C8874C();
    swift_allocError();
    *v26 = v25;
    swift_willThrow();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  v27 = a3[2];
  v86 = a3[3];
  v87 = v27;
  v28 = a3[6];
  v88 = a3[5];
  v29 = a3[4];
  v84 = a9;
  v85 = v29;
  v30 = *(a3 + 8);
  v31 = type metadata accessor for PartReplacement(0);
  (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  v32 = v94;
  sub_1B0CAA1C4(v94, v24, a4, a5, v30, v87, v86, v85);
  v33 = v24;
  v34 = v32;
  sub_1B0398EFC(v33, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  v35 = 0;
  v36 = *(v82 + 16);
  v86 = (v96 + 48);
  v87 = (v96 + 56);
  v80 = &v98;
  v77 = &v101;
  v85 = v28;
  v37 = v28 - v88;
  if (!v88)
  {
    v37 = 0;
  }

  v76 = v37;
  v75 = &v100;
  v74 = &v99;
  v38 = v81;
  v83 = v36;
  while (1)
  {
    if (v35 == v36)
    {
      v39 = 1;
      v96 = v36;
    }

    else
    {
      if ((v35 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
      }

      if (v35 >= *(v82 + 16))
      {
        goto LABEL_41;
      }

      v40 = v35 + 1;
      v41 = v82 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v35;
      v42 = *(v16 + 48);
      v43 = v16;
      v44 = a4;
      v45 = v15;
      v46 = v78;
      *v78 = v35;
      sub_1B0CABCD4(v41, v46 + v42, type metadata accessor for ReplacementNode);
      v47 = v46;
      v15 = v45;
      a4 = v44;
      v16 = v43;
      v38 = v81;
      sub_1B03C60A4(v47, v95, &qword_1EB6E6020, &qword_1B0EE0228);
      v39 = 0;
      v96 = v40;
    }

    v48 = v95;
    (*v87)(v95, v39, 1, v16);
    sub_1B03C60A4(v48, v38, &qword_1EB6E6028, &unk_1B0EE0230);
    if ((*v86)(v38, 1, v16) == 1)
    {
      break;
    }

    v49 = *v38;
    v50 = sub_1B0CABD3C(v38 + *(v16 + 48), v15, type metadata accessor for ReplacementNode);
    v51 = v34;
    if (v34)
    {
      v52 = v80;
      if (v51 == 1)
      {
        v97 = 13;
        v99 = 11565;
        MEMORY[0x1EEE9AC00](v50);
        *(&v73 - 64) = v53;
        *(&v73 - 7) = a4;
        *(&v73 - 6) = a5;
        *(&v73 - 5) = &v97;
        *(&v73 - 4) = v52;
        *(&v73 - 3) = &v99;
        v55.n128_f64[0] = MEMORY[0x1EEE9AC00](v54);
        v56 = &v73 - 4;
        v71 = sub_1B0CAC074;
        v72 = v57;
        if ((v89 & 1) == 0)
        {
          if (v49)
          {
            (a4)(&v97, v52, v55.n128_f64[0]);
          }

          v67 = &v99;
          v68 = v75;
          goto LABEL_36;
        }

        v58 = v76;
        if (v76 < 0)
        {
          goto LABEL_44;
        }

        v59 = sub_1B0CAC05C;
      }

      else
      {
        v97 = 10;
        v100 = 11565;
        MEMORY[0x1EEE9AC00](v50);
        *(&v73 - 64) = v64;
        *(&v73 - 7) = a4;
        *(&v73 - 6) = a5;
        *(&v73 - 5) = &v97;
        *(&v73 - 4) = v52;
        *(&v73 - 3) = &v100;
        v55.n128_f64[0] = MEMORY[0x1EEE9AC00](v65);
        v56 = &v73 - 4;
        v71 = sub_1B0CABDA4;
        v72 = v66;
        if ((v89 & 1) == 0)
        {
          if (v49)
          {
            (a4)(&v97, v52, v55.n128_f64[0]);
          }

          v67 = &v100;
          v68 = v77;
LABEL_36:
          (a4)(v67, v68, v55);
          a4(v88, v85);
          v70 = &v97;
          v69 = v52;
LABEL_37:
          a4(v70, v69);
          goto LABEL_9;
        }

        v58 = v76;
        if (v76 < 0)
        {
          goto LABEL_43;
        }

        v59 = sub_1B0CABDBC;
      }
    }

    else
    {
      v98 = 11565;
      MEMORY[0x1EEE9AC00](v50);
      *(&v73 - 64) = v60;
      *(&v73 - 7) = a4;
      *(&v73 - 6) = a5;
      *(&v73 - 5) = "\r\n";
      *(&v73 - 4) = "";
      *(&v73 - 3) = &v98;
      v62.n128_f64[0] = MEMORY[0x1EEE9AC00](v61);
      v56 = &v73 - 4;
      v71 = sub_1B0CAC074;
      v72 = v63;
      if ((v89 & 1) == 0)
      {
        if (v49)
        {
          (a4)("\r\n", "", v62.n128_f64[0]);
        }

        (a4)(&v98, v74, v62);
        a4(v88, v85);
        v69 = "";
        v70 = "\r\n";
        goto LABEL_37;
      }

      v58 = v76;
      if (v76 < 0)
      {
        goto LABEL_42;
      }

      v59 = sub_1B0CAC05C;
    }

    sub_1B0C940AC(0, v58, v88, v85, v59, v56);
LABEL_9:
    v34 = v94;
    sub_1B0CA98E8(v90, v94, v15, a4, a5, v91, v92, v93, v84);
    sub_1B0CABE88(v15, type metadata accessor for ReplacementNode);
    v36 = v83;
    v35 = v96;
    if (v9)
    {
      return;
    }
  }

  sub_1B0CA8BF4(v88, v85, v89 & 1, v34, a4, a5);
}

uint64_t sub_1B0CAA1C4(unsigned int a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - v16;
  sub_1B03B5C80(a2, &v26 - v16, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  v18 = type metadata accessor for PartReplacement(0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_1B0398EFC(v17, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1B0CABE88(v17, type metadata accessor for PartReplacement);
    if (EnumCaseMultiPayload != 1)
    {
      v24 = 0;
      return sub_1B0CA824C(a1, v24, 1, 0, 0, a3, v27, a5, v20, a6, a7, a8);
    }
  }

  v21 = sub_1B0CA21F0(a5, a6, a7, a8);
  if (v21)
  {
    v23 = v22 == v21;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  return sub_1B0CA824C(a1, v24, 1, 0, 0, a3, v27, a5, v20, a6, a7, a8);
}

uint64_t sub_1B0CAA380(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a3 & 1) == 0)
  {
    a4(a6, a7);
  }

  a4(a8, a9);
  a4(a1, a2);
  return a4(a6, a7);
}

char *sub_1B0CAA428(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, unsigned int a5, char *a6, uint64_t a7, uint64_t a8)
{
  v46 = a7;
  v47 = a3;
  v48 = a5;
  v49 = a4;
  v11 = a1;
  v12 = sub_1B0E443C8();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - v18;
  v20 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03B5C80(a2, v19, &qword_1EB6E5F38, &qword_1B0EDEBC0);
  v23 = type metadata accessor for PartReplacement(0);
  if ((*(*(v23 - 8) + 48))(v19, 1, v23) == 1)
  {
    sub_1B0398EFC(v19, &qword_1EB6E5F38, &qword_1B0EDEBC0);
    if (a6)
    {
LABEL_3:
      v24 = (v46 - a6 - a8);
      if (v46 - a6 >= a8)
      {
        if (v46 - a6 - a8 >= 0)
        {
          v25 = &a6[a8];
          v26 = v46;
          v27 = v47;
          return sub_1B0C92F04(v48, v11, 0, v27, v49, 0, v24, v25, v26);
        }

        __break(1u);
      }

      __break(1u);
LABEL_19:
      __break(1u);
      result = (*(a8 + 8))(v23, &qword_1B0EDEBC0);
      __break(1u);
      return result;
    }

LABEL_8:
    v27 = v47;
    if (a8 <= 0)
    {
      v26 = 0;
      v25 = 0;
      v24 = 0;
      return sub_1B0C92F04(v48, v11, 0, v27, v49, 0, v24, v25, v26);
    }

    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0CABE88(v19, type metadata accessor for PartReplacement);
    if (a6)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  v29 = sub_1B0CABD3C(v19, v22, type metadata accessor for Message);
  MEMORY[0x1EEE9AC00](v29);
  *(&v43 - 64) = v48;
  v30 = v46;
  *(&v43 - 7) = a6;
  *(&v43 - 6) = v30;
  *(&v43 - 5) = a8;
  v31 = v11;
  *(&v43 - 32) = v11;
  v32 = v47;
  *(&v43 - 3) = v47;
  MEMORY[0x1EEE9AC00](v33);
  v41 = sub_1B0CABEE8;
  v42 = v34;
  if (!Message.isEmpty.getter())
  {
    sub_1B0CABCD4(v22, v16, type metadata accessor for Message.Data);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = (*(v44 + 32))(v43, v16, v45);
      MEMORY[0x1EEE9AC00](v38);
      *(&v43 - 4) = v35;
      *(&v43 - 3) = sub_1B0CAC08C;
      v41 = (&v43 - 4);
      sub_1B0E44328();
      (*(v36 + 8))(v35, v37);
    }

    else
    {
      v40 = *v16;
      v39 = v16[1];
      sub_1B0CAA914(v40, v39, v48, a6, v46, a8, v31, v32, v49);
      sub_1B0391D50(v40, v39);
    }
  }

  return sub_1B0CABE88(v22, type metadata accessor for Message);
}

char *sub_1B0CAA914(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v36, 0, 14);
      v33 = v36;
      v15 = a3;
      v16 = a7;
      v17 = a8;
      v18 = a9;
      v14 = 0;
      return sub_1B0C92F04(v15, v16, 0, v17, v18, 0, v14, v36, v33);
    }

    v34 = &v33;
    v35 = v9;
    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = sub_1B0E42A98();
    if (v21)
    {
      v22 = sub_1B0E42AC8();
      if (__OFSUB__(v20, v22))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      v21 += v20 - v22;
    }

    v23 = __OFSUB__(v19, v20);
    v24 = v19 - v20;
    if (v23)
    {
      goto LABEL_35;
    }

    a1 = sub_1B0E42AB8();
    if (a1 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = a1;
    }

    if (v21)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if ((v26 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v36[0] = a1;
    LOWORD(v36[1]) = a2;
    BYTE2(v36[1]) = BYTE2(a2);
    BYTE3(v36[1]) = BYTE3(a2);
    v14 = BYTE6(a2);
    BYTE4(v36[1]) = BYTE4(a2);
    BYTE5(v36[1]) = BYTE5(a2);
    v33 = (v36 + BYTE6(a2));
    v15 = a3;
    v16 = a7;
    v17 = a8;
    v18 = a9;
    return sub_1B0C92F04(v15, v16, 0, v17, v18, 0, v14, v36, v33);
  }

  v27 = a1;
  v28 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v34 = &v33;
  v35 = v9;
  v21 = sub_1B0E42A98();
  if (v21)
  {
    v29 = sub_1B0E42AC8();
    if (__OFSUB__(v27, v29))
    {
      goto LABEL_38;
    }

    v21 += v27 - v29;
  }

  v30 = sub_1B0E42AB8();
  if (v30 >= v28)
  {
    v25 = v28;
  }

  else
  {
    v25 = v30;
  }

  if (v21)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 < 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v31 = v25 + v21;
  if (!v21)
  {
    v31 = 0;
  }

  return sub_1B0C92F04(a3, a7, 0, a8, a9, 0, v26, v21, v31);
}

uint64_t sub_1B0CAABA4(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v45 = a6;
  v46 = a7;
  v43 = a3;
  v44 = a4;
  v47[2] = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for ReplacementNode(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v43 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v43 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v43 - v21);
  v23 = a2 >> 62;
  swift_bridgeObjectRetain_n();
  if ((a2 >> 62) <= 1)
  {
    if (!v23)
    {
      v47[0] = a1;
      LOWORD(v47[1]) = a2;
      BYTE2(v47[1]) = BYTE2(a2);
      BYTE3(v47[1]) = BYTE3(a2);
      BYTE4(v47[1]) = BYTE4(a2);
      BYTE5(v47[1]) = BYTE5(a2);
      swift_bridgeObjectRetain_n();
      sub_1B0CA70BC(0, BYTE6(a2), v47, v47 + BYTE6(a2), a5, v19);
      if (!v7)
      {
        sub_1B0CA98E8(v43, v44, v19, v45, v46, 0, BYTE6(a2), v47, v47 + BYTE6(a2));
        v24 = v19;
LABEL_42:
        sub_1B0CABE88(v24, type metadata accessor for ReplacementNode);
        return swift_bridgeObjectRelease_n();
      }

      return swift_bridgeObjectRelease_n();
    }

    if (a1 >> 32 >= a1)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_bridgeObjectRetain_n();
      v36 = sub_1B0E42A98();
      if (v36)
      {
        v37 = sub_1B0E42AC8();
        if (__OFSUB__(a1, v37))
        {
          goto LABEL_49;
        }

        v36 += a1 - v37;
      }

      v38 = sub_1B0E42AB8();
      if (v38 >= (a1 >> 32) - a1)
      {
        v39 = (a1 >> 32) - a1;
      }

      else
      {
        v39 = v38;
      }

      if (v36)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      if (v36)
      {
        v41 = v39 + v36;
      }

      else
      {
        v41 = 0;
      }

      if ((v40 & 0x8000000000000000) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CA70BC(0, v40, v36, v41, a5, v16);
        if (!v7)
        {
          sub_1B0CA98E8(v43, v44, v16, v45, v46, 0, v40, v36, v41);
          v35 = v16;
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (v23 == 2)
  {
    v25 = *(a1 + 16);
    v26 = *(a1 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_bridgeObjectRetain_n();
    v27 = sub_1B0E42A98();
    if (v27)
    {
      v28 = sub_1B0E42AC8();
      if (__OFSUB__(v25, v28))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      v27 += v25 - v28;
    }

    v29 = __OFSUB__(v26, v25);
    v30 = v26 - v25;
    if (!v29)
    {
      v31 = sub_1B0E42AB8();
      if (v31 >= v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      if (v27)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      if (v27)
      {
        v34 = v32 + v27;
      }

      else
      {
        v34 = 0;
      }

      if ((v33 & 0x8000000000000000) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CA70BC(0, v33, v27, v34, a5, v13);
        if (!v7)
        {
          sub_1B0CA98E8(v43, v44, v13, v45, v46, 0, v33, v27, v34);
          v35 = v13;
LABEL_38:
          sub_1B0CABE88(v35, type metadata accessor for ReplacementNode);
        }

LABEL_39:
        swift_bridgeObjectRelease_n();
        return swift_bridgeObjectRelease_n();
      }

      goto LABEL_46;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  memset(v47, 0, 14);
  swift_bridgeObjectRetain_n();
  sub_1B0CA70BC(0, 0, v47, v47, a5, v22);
  if (!v7)
  {
    sub_1B0CA98E8(v43, v44, v22, v45, v46, 0, 0, v47, v47);
    v24 = v22;
    goto LABEL_42;
  }

  return swift_bridgeObjectRelease_n();
}

void *sub_1B0CAB06C(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1B03B7A3C(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CAB0E8(unsigned int a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, unsigned int a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void (*a16)(uint64_t, uint64_t), uint64_t *a17)
{
  v93 = *MEMORY[0x1E69E9840];
  if (a12 < 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v20 = a17;
  if (a10)
  {
    v21 = a12 + a10;
  }

  else
  {
    v21 = 0;
  }

  sub_1B0CB7368(a10, v21, a8, v86);
  v83 = 0u;
  v84 = 0u;
  *&v85[0] = 0x1FFFFFFF0ELL;
  memset(v85 + 8, 0, 33);
  v22 = sub_1B0CB8540();
  if (v25 == 2)
  {
    v26 = 0;
    v68 = 0uLL;
    v69 = 0;
    v27 = 0;
    goto LABEL_40;
  }

  v28 = v22;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v62 = a4;
  v64 = a3;
  v63 = a5;
  v74 = 0;
  v66 = 0;
  v67 = 0;
  v69 = 0;
  v68 = 0uLL;
  v32 = 0;
  do
  {
    sub_1B0CB7ED8(v28, v29, v30, v31 & 1, &v87);
    v36 = v88;
    v75 = v87;
    v37 = v89;
    v38 = v90;
    v39 = v91;
    v40 = v92;
    if (v91 >> 59 == 9)
    {
      v41 = v90;
      v42 = v89;
      v43 = v88;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v36 = v43;
      v37 = v42;
      v38 = v41;
      *&v68 = v75;
      *(&v68 + 1) = v36;
      v69 = v37;
      v66 = v41;
      v67 = v39;
      v74 = v40;
    }

    if (!(v32 & 1 | (v28 == 0)) && a10 && &v28[-a10] >= 1)
    {
      v44 = v36;
      sub_1B0C92F04(a8, a1, 1, a6, a7, 0, &v28[-a10], a10, a11);
      v36 = v44;
    }

    if ((*&v85[0] & 0xFFFFFFFFFFFFFF0ELL) != 0x1FFFFFFF0ELL)
    {
      if (*&v85[1])
      {
        v45 = (*(&v85[1] + 1) - *&v85[1]);
      }

      else
      {
        v45 = 0;
      }

      if ((v45 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_72;
      }

      v46 = v36;
      sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v45, *&v85[1], *(&v85[1] + 1));
      sub_1B0398EFC(&v83, &qword_1EB6E5D38, &qword_1B0EE0240);
      v36 = v46;
    }

    *&v83 = v75;
    *(&v83 + 1) = v36;
    *&v84 = v37;
    *(&v84 + 1) = v38;
    *&v85[0] = v39;
    *(&v85[0] + 1) = v40;
    *&v85[1] = v28;
    *(&v85[1] + 1) = v29;
    *&v85[2] = v30;
    BYTE8(v85[2]) = v31 & 1;
    v28 = sub_1B0CB8540();
    v29 = v33;
    v30 = v34;
    v31 = v35;
    v32 = 1;
  }

  while (v35 != 2);
  if ((*&v85[0] & 0xFFFFFFFFFFFFFF0ELL) == 0x1FFFFFFF0ELL)
  {
    v27 = v66;
    v47 = v67;
    v48 = v74;
    v20 = a17;
    if (!v74)
    {
      v26 = v67;
      a4 = v62;
      a5 = v63;
      a3 = v64;
LABEL_40:
      LOBYTE(v79) = a14;
      a16("Content-Type", "");
      a16(": ", "");
      *(&v79 + 1) = 14;
      sub_1B0C6ECE0(&v79, a13, a16, v20, a15, v78);
      sub_1B0C72700(a14, a16);
      v48 = 0;
      v49 = v78[0];
      v47 = v26;
      if (a3)
      {
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    v49 = 0;
    a4 = v62;
    a5 = v63;
    goto LABEL_37;
  }

  v50 = v85[1];
  a4 = v62;
  a5 = v63;
  v27 = v66;
  v47 = v67;
  v48 = v74;
  if (!(*&v85[0] >> 59))
  {
    if ((v64 & 1) == 0 || !a2)
    {
      if (v74)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    if (v74)
    {
      v81 = v85[0];
      v82[0] = v85[1];
      *(v82 + 9) = *(&v85[1] + 9);
      v79 = v83;
      v80 = v84;
      sub_1B03B5C80(&v79, v78, &qword_1EB6E5D40, &qword_1B0EE0250);
      v49 = 0;
    }

    else
    {
      v76[0] = a14;
      v81 = v85[0];
      v82[0] = v85[1];
      *(v82 + 9) = *(&v85[1] + 9);
      v79 = v83;
      v80 = v84;
      sub_1B03B5C80(&v79, v78, &qword_1EB6E5D40, &qword_1B0EE0250);
      a16("Content-Type", "");
      a16(": ", "");
      v77 = 14;
      sub_1B0C6ECE0(v76, a13, a16, a17, a15, v78);
      sub_1B0C72700(a14, a16);
      v49 = v78[0];
    }

    if (v50)
    {
      v52 = (*(&v50 + 1) - v50);
    }

    else
    {
      v52 = 0;
    }

    if ((v52 & 0x8000000000000000) == 0)
    {
      sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v52, v50, *(&v50 + 1));
      goto LABEL_48;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  sub_1B0398EFC(&v83, &qword_1EB6E5D38, &qword_1B0EE0240);
  if (v50)
  {
    v51 = (*(&v50 + 1) - v50);
  }

  else
  {
    v51 = 0;
  }

  if ((v51 & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_1B0C92F04(a8, a1, 1, a6, a7, 0, v51, v50, *(&v50 + 1));
  if (v74)
  {
LABEL_34:
    v49 = 0;
    goto LABEL_37;
  }

LABEL_36:
  LOBYTE(v79) = a14;
  a16("Content-Type", "");
  a16(": ", "");
  *(&v79 + 1) = 14;
  sub_1B0C6ECE0(&v79, a13, a16, a17, a15, v78);
  sub_1B0C72700(a14, a16);
  v49 = v78[0];
LABEL_37:
  if ((v64 & 1) == 0)
  {
LABEL_41:
    sub_1B0C70174(a1, a2, a6, a7);
  }

LABEL_48:
  if (a1)
  {
    if (a1 == 1)
    {
      v53 = 13;
    }

    else
    {
      v53 = 10;
    }

    LOBYTE(v79) = v53;
    v54 = &v79;
    v55 = &v79 + 1;
  }

  else
  {
    v54 = "\r\n";
    v55 = "";
  }

  result = a6(v54, v55);
  if (!a4)
  {
    goto LABEL_57;
  }

  if (v49)
  {

    (a4)(v49);
    sub_1B03B1AF0(a4, a5);
LABEL_57:
  }

  if (v48)
  {
    v79 = v68;
    *&v80 = v69;
    *(&v80 + 1) = v27;
    LOBYTE(v81) = v47;
    *(&v81 + 1) = v48;

    v57 = sub_1B0C7EB6C();
    if (v59 == 2)
    {
LABEL_70:
      sub_1B03B1AF0(a4, a5);
    }

    v60 = v58;
    if ((v59 & 1) == 0)
    {
      sub_1B0CAB06C(v57, v58);
      goto LABEL_69;
    }

    if (v57)
    {
      v61 = v58 - v57;
    }

    else
    {
      v61 = 0;
    }

    if ((v61 & 0x8000000000000000) == 0)
    {
      sub_1B0C93CE8(0, v61, v57, v60);
LABEL_69:
      a4();

      goto LABEL_70;
    }

LABEL_75:
    __break(1u);
  }

  return result;
}

uint64_t _s9IMAP2MIME15PartReplacementO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-v8];
  v10 = type metadata accessor for PartReplacement(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6030, &qword_1B0EE0248);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v26[-v17];
  v20 = *(v19 + 56);
  sub_1B0CABCD4(a1, &v26[-v17], type metadata accessor for PartReplacement);
  sub_1B0CABCD4(a2, &v18[v20], type metadata accessor for PartReplacement);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0CABCD4(v18, v15, type metadata accessor for PartReplacement);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = sub_1B0CABD3C(&v18[v20], v9, type metadata accessor for Message);
      MEMORY[0x1EEE9AC00](v24);
      *&v26[-16] = v9;
      v22 = sub_1B0C9A9DC(sub_1B0CA1F44, &v26[-32]);
      sub_1B0CABE88(v9, type metadata accessor for Message);
      v23 = v15;
      goto LABEL_6;
    }

LABEL_8:
    sub_1B0CABE88(v15, type metadata accessor for Message);
    sub_1B0398EFC(v18, &qword_1EB6E6030, &qword_1B0EE0248);
    v22 = 0;
    return v22 & 1;
  }

  sub_1B0CABCD4(v18, v12, type metadata accessor for PartReplacement);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = v12;
    goto LABEL_8;
  }

  v21 = sub_1B0CABD3C(&v18[v20], v6, type metadata accessor for Message);
  MEMORY[0x1EEE9AC00](v21);
  *&v26[-16] = v6;
  v22 = sub_1B0C9A9DC(sub_1B0C9B118, &v26[-32]);
  sub_1B0CABE88(v6, type metadata accessor for Message);
  v23 = v12;
LABEL_6:
  sub_1B0CABE88(v23, type metadata accessor for Message);
  sub_1B0CABE88(v18, type metadata accessor for PartReplacement);
  return v22 & 1;
}

uint64_t type metadata accessor for PartReplacement(uint64_t a1)
{
  result = qword_1EB6DB918;
  if (!qword_1EB6DB918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0CABC74(uint64_t a1)
{
  result = type metadata accessor for Message(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0CABCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CABD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CABDE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  if ((*(v2 + 16) & 1) == 0)
  {
    v5(*(v2 + 40), *(v2 + 48));
  }

  v5(v8, v9);
  v5(a1, a2);
  return (v5)(v6, v7);
}

uint64_t sub_1B0CABE88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0CABF3C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return (*(v2 + 16))(0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CABFA0(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v5(v6, v7);
  v5(v8, v9);
  v5(a1, a2);
  v5(v8, v9);
  return (v5)(v6, v7);
}

void sub_1B0CAC0EC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v8 = a4 - a3;
  if (a3)
  {
    v9 = a4 - a3;
  }

  else
  {
    v9 = 0;
  }

  if (v9 < 0)
  {
    goto LABEL_51;
  }

  v24 = 0;
  v25 = v9;
  v26 = a3;
  if (!v9)
  {
LABEL_43:
    sub_1B0CB1AD4(a2, a2, a3, a4, a5, a6, a7, a8);
    return;
  }

  v14 = 0;
  while (v14 < v8)
  {
    v17 = *(a3 + v14);
    if (v17 == 61)
    {
      sub_1B0CAC38C(&v28);
      if (v29 != 2)
      {
        v31 = v28;
        v32 = v29;
        v33 = v30;
        sub_1B0CB1AD4(a2, a2, a3, a4, a5, a6, a7, a8);

        v15 = sub_1B0CAC944(&v31, a5);
        MEMORY[0x1B2726E80](v15);

        *a6 = 1;
        v16 = v24;
        v8 = v25;
        goto LABEL_8;
      }

      v14 = v24;
      v8 = v25;
    }

    v16 = v8;
    if (v14 != v8)
    {
      if (v14 >= v8)
      {
        goto LABEL_45;
      }

      v18 = a4 - v26;
      if (!v26)
      {
        v18 = 0;
      }

      if (v14 < 0 || v14 >= v18)
      {
        goto LABEL_46;
      }

      v16 = v14 + 1;
      v24 = v14 + 1;
    }

    if (*a6 > 1u)
    {
      if (*a6 == 2)
      {
        if (v17 >= 0x21)
        {
          *a6 = 0;
          v21 = result[1];
          v20 = result[2];
          if (v20 >= v21)
          {
            goto LABEL_48;
          }

          v22 = *result;
          *(*result + v20) = 32;
          result[2] = v20 + 1;
          if (v20 + 1 >= v21)
          {
            goto LABEL_50;
          }

          *(v22 + v20 + 1) = v17;
          result[2] = v20 + 2;
        }
      }

      else if (v17 >= 0x21)
      {
        *a6 = 0;
        v23 = result[2];
        if (v23 >= result[1])
        {
          goto LABEL_49;
        }

LABEL_36:
        *(*result + v23) = v17;
        result[2] = v23 + 1;
      }
    }

    else if (*a6)
    {
      if (v17 > 0x20 || ((1 << v17) & 0x100002600) == 0)
      {
        if (v17 < 0x21)
        {
          goto LABEL_8;
        }

        v23 = result[2];
        if (v23 >= result[1])
        {
          __break(1u);
          goto LABEL_43;
        }

        goto LABEL_36;
      }

      *a6 = 2;
    }

    else
    {
      if (v17 > 0x20 || ((1 << v17) & 0x100002600) == 0)
      {
        if (v17 < 0x21)
        {
          goto LABEL_8;
        }

        v23 = result[2];
        if (v23 >= result[1])
        {
          goto LABEL_52;
        }

        goto LABEL_36;
      }

      v19 = result[2];
      if (v19 >= result[1])
      {
        goto LABEL_47;
      }

      *(*result + v19) = 32;
      result[2] = v19 + 1;
      *a6 = 3;
    }

LABEL_8:
    a3 = v26;
    v14 = v16;
    if (v16 == v8)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_1B0CAC38C(void *a1@<X8>)
{
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    goto LABEL_52;
  }

  if (*v3 >= v5)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v1 = v3[2];
  if (*(v1 + v4) != 61)
  {
    goto LABEL_52;
  }

  *v3 = v4 + 1;
  if (v4 + 1 == v5)
  {
    goto LABEL_52;
  }

  if (v4 + 1 >= v5)
  {
    goto LABEL_54;
  }

  if (*(v1 + v4 + 1) != 63)
  {
    goto LABEL_52;
  }

  v6 = v4 + 2;
  *v3 = v4 + 2;
  if (v4 + 2 == v5)
  {
LABEL_9:
    v7 = 1;
    v8 = v5;
  }

  else
  {
    v8 = v4 + 2;
    while (1)
    {
      v9 = *(v1 + v8);
      v10 = v9 > 0x3F;
      v11 = (1 << v9) & 0x8000000000102600;
      v12 = v10 || v11 == 0;
      if (!v12)
      {
        break;
      }

      if (v5 == ++v8)
      {
        goto LABEL_9;
      }
    }

    v7 = 0;
  }

  *v3 = v8;
  if (v8 < v6)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v5 < v8)
  {
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
    goto LABEL_62;
  }

  if (v7)
  {
    goto LABEL_52;
  }

  if (v8 >= v5)
  {
    goto LABEL_58;
  }

  v13 = v1 + v8;
  if (*(v1 + v8) != 63 || v6 == v8 || v8 + 1 == v5)
  {
    goto LABEL_52;
  }

  if (v8 + 1 >= v5)
  {
    goto LABEL_59;
  }

  v2 = 0;
  v14 = *(v1 + v8 + 1);
  v15 = v8 + 2;
  *v3 = v8 + 2;
  if (v14 > 97)
  {
    if (v14 == 98)
    {
      goto LABEL_33;
    }

    if (v14 != 113)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (v14 == 66)
    {
      goto LABEL_33;
    }

    if (v14 != 81)
    {
      goto LABEL_52;
    }
  }

  v2 = 1;
LABEL_33:
  if (v15 == v5)
  {
    goto LABEL_52;
  }

  if (v15 >= v5)
  {
    goto LABEL_60;
  }

  if (*(v1 + v15) != 63)
  {
    goto LABEL_52;
  }

  v16 = v8 + 3;
  *v3 = v8 + 3;
  if (v8 + 3 == v5)
  {
    v17 = 1;
LABEL_41:
    v18 = v5;
  }

  else
  {
    v18 = v8 + 3;
    while (1)
    {
      v19 = *(v1 + v18);
      v12 = v19 == 63;
      v17 = v19 != 63;
      if (v12)
      {
        break;
      }

      if (v5 == ++v18)
      {
        goto LABEL_41;
      }
    }
  }

  *v3 = v18;
  if (v18 < v16)
  {
    goto LABEL_61;
  }

  if (v5 < v18)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v17)
  {
    goto LABEL_52;
  }

  if (v18 >= v5)
  {
    goto LABEL_63;
  }

  v20 = v1 + v18;
  if (*(v1 + v18) != 63)
  {
    goto LABEL_52;
  }

  *v3 = v18 + 1;
  if (v18 + 1 == v5)
  {
    goto LABEL_52;
  }

  if (v18 + 1 < v5)
  {
    if (*(v1 + v18 + 1) == 61)
    {
      *v3 = v18 + 2;
      if (!v1)
      {
LABEL_55:
        v21 = 0;
        v13 = 0;
        v20 = 0;
        goto LABEL_53;
      }

      v21 = v1 + v6;
      v1 += v16;
LABEL_53:
      *a1 = v21;
      a1[1] = v13;
      a1[2] = v2;
      a1[3] = v1;
      a1[4] = v20;
      return;
    }

LABEL_52:
    v21 = 0;
    v13 = 0;
    v1 = 0;
    v20 = 0;
    *v3 = v4;
    v2 = 2;
    goto LABEL_53;
  }

LABEL_64:
  __break(1u);
}

int8x8_t *sub_1B0CAC5D0@<X0>(int8x8_t *result@<X0>, int8x8_t *a2@<X1>, unsigned __int8 **a3@<X2>, void *a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t *)@<X4>, uint64_t *a6@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v8 = result;
  v9 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v10 = 0xE000000000000000;
LABEL_18:
    *a6 = result;
    a6[1] = v10;
    return result;
  }

  v13 = a6;
  result = sub_1B0CB2450(*a3, a3[1], 0, result, a2, 0, a4);
  if (!result)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v14 = result;
  swift_beginAccess();
  v15 = a4[3];
  if (!v15)
  {

    result = sub_1B0CB31A4("utf-8", a4);
    if (!result)
    {
      goto LABEL_21;
    }

    v15 = result;
    a4[3] = result;
  }

  v16 = swift_endAccess();
  if (v15 != v14)
  {
    MEMORY[0x1EEE9AC00](v16);
    result = sub_1B0C78104(v14, a4, a5);
    if (v6)
    {

      result = 0;
      v10 = 0;
    }

    a6 = v13;
    goto LABEL_18;
  }

  v17 = sub_1B0433338(0, 0, v8, a2);
  result = sub_1B0433338(0, v9, v8, a2);
  if (__OFADD__(v17, result))
  {
    __break(1u);
  }

  else if (result + v17 >= v17)
  {
    result = sub_1B0E44C68();
LABEL_14:
    a6 = v13;
    goto LABEL_18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B0CAC788(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 **a5, void *a6)
{
  if (result)
  {
    v10 = a2 - result;
  }

  else
  {
    v10 = 0;
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = sub_1B0CA6950(0, v10, result, a2, a3, a4);
    if (!v6)
    {
      if ((v14 & 1) == 0)
      {
        sub_1B0CAC5D0(v12, v13, a5, a6, sub_1B0CACFD8, &v15);

        return v15;
      }

      sub_1B0CACF54();
      swift_allocError();
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0CAC868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 **a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = sub_1B0C6549C(a3, a4, a1, a2, 0);
  if (!v7)
  {
    if ((v13 & 1) == 0)
    {
      sub_1B0CAC5D0(v11, v12, a5, a6, sub_1B0CACFA8, &v15);

      *a7 = v15;
      return result;
    }

    sub_1B0CACF54();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_1B0CAC944(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (*(a1 + 16))
  {
    if (v4)
    {
      v6 = v5 - v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      if ((v7 & 0x8000000000000000) == 0)
      {

        if (v7 < 1025)
        {
          goto LABEL_8;
        }

        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {
    if (v4)
    {
      v6 = v5 - v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      if ((v7 & 0x8000000000000000) == 0)
      {

        if (v7 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v17 = sub_1B0C6549C(v4, v5, &v28 - v16, &v28 + v7 - v16, 0);
          if (v19)
          {
            sub_1B0CACF54();
            v22 = swift_allocError();
            swift_willThrow();
            swift_willThrow();
          }

          else
          {
            sub_1B0CAC5D0(v17, v18, a1, a2, sub_1B0CACFA8, &v29);
            v13 = v29;
            v24 = v30;

            if (v24)
            {
              goto LABEL_11;
            }
          }

LABEL_27:
          *&v31 = 0;
          *(&v31 + 1) = 0xE000000000000000;
          MEMORY[0x1B2726D20](v6);
          if (!v4 || v5 == v4)
          {
            goto LABEL_34;
          }

          v21 = *(&v31 + 1);
          v20 = v31;
          do
          {
            if (*v4 - 1 <= 0x7D)
            {
              v29 = v20;
              v30 = v21;
              sub_1B0E44C58();
              v20 = v29;
              v21 = v30;
            }

            ++v4;
          }

          while (v4 != v5);
          goto LABEL_33;
        }

        v27 = swift_slowAlloc();

        sub_1B0CAC868(v27, v27 + v7, v4, v5, a1, a2, &v31);
        MEMORY[0x1B272C230](v27, -1, -1);
LABEL_46:

        if (*(&v31 + 1))
        {
          v13 = v31;
          goto LABEL_11;
        }

        goto LABEL_27;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_40:
  v8 = swift_stdlib_isStackAllocationSafe();
  if ((v8 & 1) == 0)
  {
    v25 = swift_slowAlloc();

    v13 = sub_1B0CAC788(v25, v25 + v7, v4, v5, a1, a2);
    v14 = v26;
    MEMORY[0x1B272C230](v25, -1, -1);
    goto LABEL_10;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1B0CA6950(0, v7, &v28 - v9, &v28 + v7 - v9, v4, v5);
  if ((v12 & 1) == 0)
  {
    sub_1B0CAC5D0(v10, v11, a1, a2, sub_1B0CACFD8, &v31);
    v14 = *(&v31 + 1);
    v13 = v31;
LABEL_10:

    if (v14)
    {
LABEL_11:

      return v13;
    }

    *&v31 = 0;
    *(&v31 + 1) = 0xE000000000000000;
    MEMORY[0x1B2726D20](v6);
    if (!v4 || v5 == v4)
    {
LABEL_34:

      return v31;
    }

    v21 = *(&v31 + 1);
    v20 = v31;
    do
    {
      if (*v4 - 1 <= 0x7D)
      {
        v29 = v20;
        v30 = v21;
        sub_1B0E44C58();
        v20 = v29;
        v21 = v30;
      }

      ++v4;
    }

    while (v4 != v5);
LABEL_33:
    *&v31 = v20;
    *(&v31 + 1) = v21;
    goto LABEL_34;
  }

  sub_1B0CACF54();
  swift_allocError();
  swift_willThrow();
  swift_willThrow();
  __break(1u);

  result = MEMORY[0x1B272C230](&v28, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B0CACDC4(uint64_t a1, uint64_t a2, void *a3)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v6 = a2 - a1;
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1B2726D20](v7);
  v16 = 0;
  if (!a1)
  {
    v6 = 0;
LABEL_10:

    goto LABEL_11;
  }

  if (v6 < 0)
  {
    __break(1u);
  }

  if (v6 < 1025)
  {
    goto LABEL_10;
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_11:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v18[0] = &v15 - v11;
    v18[1] = v6;
    v18[2] = 0;
    sub_1B0CAC0EC(v18, v17, a1, a2, a3, &v16, v12, v13);
    goto LABEL_12;
  }

  v9 = swift_slowAlloc();

  sub_1B0CB1ED8(v9, v6, v17, a1, a2, a3, &v16, v10);
  MEMORY[0x1B272C230](v9, -1, -1);
LABEL_12:

  return v17[0];
}

unint64_t sub_1B0CACF54()
{
  result = qword_1EB6E6038;
  if (!qword_1EB6E6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6038);
  }

  return result;
}

uint64_t sub_1B0CACFF0(uint64_t a1, char **a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = (a1 + 65);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      v65 = *(v4 - 17);
      v67 = *(v4 - 33);
      v9 = sub_1B0CAFDAC(*(v4 - 33), *(v4 - 25));
      if (v11 != 2)
      {
        v12 = v9;
        v13 = v10;
        v14 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1B0C80AF0(0, *(v3 + 2) + 1, 1, v3);
        }

        v16 = *(v3 + 2);
        v15 = *(v3 + 3);
        if (v16 >= v15 >> 1)
        {
          v3 = sub_1B0C80AF0((v15 > 1), v16 + 1, 1, v3);
        }

        LOBYTE(v70) = ((v14 & 0xFFFFFFu) >> 16) & 1;
        *(v3 + 2) = v16 + 1;
        v5 = &v3[64 * v16];
        *(v5 + 4) = v12;
        *(v5 + 5) = v13;
        v5[48] = v14 & 1;
        v5[49] = BYTE1(v14);
        v5[50] = v70;
        v6 = v73;
        v5[55] = BYTE4(v73);
        *(v5 + 51) = v6;
        *(v5 + 72) = v65;
        *(v5 + 56) = v67;
        v5[88] = v7;
        v5[89] = v8;
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v68 = *(v3 + 2);
  if (v68)
  {
    v17 = 0;
    v18 = 0;
    v66 = v3;
    do
    {
      v21 = &v3[v17];
      v23 = *&v3[v17 + 32];
      v22 = *&v3[v17 + 40];
      if (v3[v17 + 50] == 1)
      {
        v24 = v21[48];
        v25 = *(v21 + 9);
        v26 = *(v21 + 10);
        v27 = v21[88];
        v28 = v21[89];
        if (v24)
        {
          sub_1B0CAEF80(v25, v26, &v73);
          if ((v76 & 1) == 0)
          {
            v63 = v73;
            v51 = v74;
            v50 = v75;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
            v30 = swift_allocObject();
            *(v30 + 1) = xmmword_1B0EC1E70;
            *(v30 + 4) = v51;
            *(v30 + 5) = v50;
            *(v30 + 24) = 0;
            v52 = sub_1B0C7EDA4(v23, v22);
            v53 = v52;
            if (v52 == 13)
            {
              v54 = v23;
            }

            else
            {
              v54 = v52;
            }

            if (v52 == 13)
            {
              v55 = v22;
            }

            else
            {
              v55 = 0;
            }

            v56 = *a2;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v56 = sub_1B0C8106C(0, *(v56 + 2) + 1, 1, v56);
              *a2 = v56;
            }

            v59 = *(v56 + 2);
            v58 = *(v56 + 3);
            if (v59 >= v58 >> 1)
            {
              v56 = sub_1B0C8106C((v58 > 1), v59 + 1, 1, v56);
              *a2 = v56;
            }

            *(v56 + 2) = v59 + 1;
            v19 = &v56[56 * v59];
            *(v19 + 4) = v54;
            *(v19 + 5) = v55;
            v19[48] = v53 == 13;
            *(v19 + 56) = v63;
            v19[72] = 0;
            goto LABEL_14;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
        v29 = swift_allocObject();
        v30 = v29;
        *(v29 + 16) = xmmword_1B0EC1E70;
        if (v27)
        {
          v31 = -32512;
        }

        else
        {
          v31 = 0x8000;
        }

        v32 = v31 | v28;
        if (v24)
        {
          v32 = 0;
        }

        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        *(v29 + 48) = v32;
        v33 = sub_1B0C7EDA4(v23, v22);
        v34 = v33;
        if (v33 == 13)
        {
          v35 = v23;
        }

        else
        {
          v35 = v33;
        }

        if (v33 == 13)
        {
          v36 = v22;
        }

        else
        {
          v36 = 0;
        }

        v37 = *a2;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_1B0C8106C(0, *(v37 + 2) + 1, 1, v37);
          *a2 = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1B0C8106C((v39 > 1), v40 + 1, 1, v37);
          *a2 = v37;
        }

        *(v37 + 2) = v40 + 1;
        v19 = &v37[56 * v40];
        *(v19 + 4) = v35;
        *(v19 + 5) = v36;
        v19[48] = v34 == 13;
        *(v19 + 7) = 0;
        *(v19 + 8) = 0;
        v20 = 1;
      }

      else
      {
        if (v21[49])
        {
          goto LABEL_15;
        }

        v70 = 0;
        v71 = 0;
        v72 = 1;
        v69 = MEMORY[0x1E69E7CC0];
        sub_1B0CAE608(v23, v22, v18, v3, &v70, &v69);
        v41 = v70;
        v62 = v71;
        v61 = v72;
        v30 = v69;
        v42 = sub_1B0C7EDA4(v23, v22);
        v43 = v42;
        if (v42 == 13)
        {
          v44 = v23;
        }

        else
        {
          v44 = v42;
        }

        if (v42 == 13)
        {
          v45 = v22;
        }

        else
        {
          v45 = 0;
        }

        v46 = *a2;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v46;
        if ((v47 & 1) == 0)
        {
          v46 = sub_1B0C8106C(0, *(v46 + 2) + 1, 1, v46);
          *a2 = v46;
        }

        v49 = *(v46 + 2);
        v48 = *(v46 + 3);
        if (v49 >= v48 >> 1)
        {
          v46 = sub_1B0C8106C((v48 > 1), v49 + 1, 1, v46);
          *a2 = v46;
        }

        *(v46 + 2) = v49 + 1;
        v19 = &v46[56 * v49];
        *(v19 + 4) = v44;
        *(v19 + 5) = v45;
        v19[48] = v43 == 13;
        *(v19 + 7) = v41;
        *(v19 + 8) = v62;
        v20 = v61;
      }

      v19[72] = v20;
LABEL_14:
      *(v19 + 10) = v30;

      v3 = v66;
LABEL_15:
      ++v18;
      v17 += 64;
    }

    while (v68 != v18);
  }
}

uint64_t sub_1B0CAD53C(uint64_t a1, char **a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = (a1 + 65);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      v65 = *(v4 - 17);
      v67 = *(v4 - 33);
      v9 = sub_1B0CAFDAC(*(v4 - 33), *(v4 - 25));
      if (v11 != 2)
      {
        v12 = v9;
        v13 = v10;
        v14 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1B0C80AF0(0, *(v3 + 2) + 1, 1, v3);
        }

        v16 = *(v3 + 2);
        v15 = *(v3 + 3);
        if (v16 >= v15 >> 1)
        {
          v3 = sub_1B0C80AF0((v15 > 1), v16 + 1, 1, v3);
        }

        LOBYTE(v70) = ((v14 & 0xFFFFFFu) >> 16) & 1;
        *(v3 + 2) = v16 + 1;
        v5 = &v3[64 * v16];
        *(v5 + 4) = v12;
        *(v5 + 5) = v13;
        v5[48] = v14 & 1;
        v5[49] = BYTE1(v14);
        v5[50] = v70;
        v6 = v73;
        v5[55] = BYTE4(v73);
        *(v5 + 51) = v6;
        *(v5 + 72) = v65;
        *(v5 + 56) = v67;
        v5[88] = v7;
        v5[89] = v8;
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v68 = *(v3 + 2);
  if (v68)
  {
    v17 = 0;
    v18 = 0;
    v66 = v3;
    do
    {
      v21 = &v3[v17];
      v23 = *&v3[v17 + 32];
      v22 = *&v3[v17 + 40];
      if (v3[v17 + 50] == 1)
      {
        v24 = v21[48];
        v25 = *(v21 + 9);
        v26 = *(v21 + 10);
        v27 = v21[88];
        v28 = v21[89];
        if (v24)
        {
          sub_1B0CAEF80(v25, v26, &v73);
          if ((v76 & 1) == 0)
          {
            v63 = v73;
            v51 = v74;
            v50 = v75;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
            v30 = swift_allocObject();
            *(v30 + 1) = xmmword_1B0EC1E70;
            *(v30 + 4) = v51;
            *(v30 + 5) = v50;
            *(v30 + 24) = 0;
            v52 = sub_1B0C79F34(v23, v22);
            v53 = v52;
            if (v52 == 6)
            {
              v54 = v23;
            }

            else
            {
              v54 = v52;
            }

            if (v52 == 6)
            {
              v55 = v22;
            }

            else
            {
              v55 = 0;
            }

            v56 = *a2;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v56 = sub_1B0C81050(0, *(v56 + 2) + 1, 1, v56);
              *a2 = v56;
            }

            v59 = *(v56 + 2);
            v58 = *(v56 + 3);
            if (v59 >= v58 >> 1)
            {
              v56 = sub_1B0C81050((v58 > 1), v59 + 1, 1, v56);
              *a2 = v56;
            }

            *(v56 + 2) = v59 + 1;
            v19 = &v56[56 * v59];
            *(v19 + 4) = v54;
            *(v19 + 5) = v55;
            v19[48] = v53 == 6;
            *(v19 + 56) = v63;
            v19[72] = 0;
            goto LABEL_14;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
        v29 = swift_allocObject();
        v30 = v29;
        *(v29 + 16) = xmmword_1B0EC1E70;
        if (v27)
        {
          v31 = -32512;
        }

        else
        {
          v31 = 0x8000;
        }

        v32 = v31 | v28;
        if (v24)
        {
          v32 = 0;
        }

        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        *(v29 + 48) = v32;
        v33 = sub_1B0C79F34(v23, v22);
        v34 = v33;
        if (v33 == 6)
        {
          v35 = v23;
        }

        else
        {
          v35 = v33;
        }

        if (v33 == 6)
        {
          v36 = v22;
        }

        else
        {
          v36 = 0;
        }

        v37 = *a2;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v37;
        if ((v38 & 1) == 0)
        {
          v37 = sub_1B0C81050(0, *(v37 + 2) + 1, 1, v37);
          *a2 = v37;
        }

        v40 = *(v37 + 2);
        v39 = *(v37 + 3);
        if (v40 >= v39 >> 1)
        {
          v37 = sub_1B0C81050((v39 > 1), v40 + 1, 1, v37);
          *a2 = v37;
        }

        *(v37 + 2) = v40 + 1;
        v19 = &v37[56 * v40];
        *(v19 + 4) = v35;
        *(v19 + 5) = v36;
        v19[48] = v34 == 6;
        *(v19 + 7) = 0;
        *(v19 + 8) = 0;
        v20 = 1;
      }

      else
      {
        if (v21[49])
        {
          goto LABEL_15;
        }

        v70 = 0;
        v71 = 0;
        v72 = 1;
        v69 = MEMORY[0x1E69E7CC0];
        sub_1B0CAE608(v23, v22, v18, v3, &v70, &v69);
        v41 = v70;
        v62 = v71;
        v61 = v72;
        v30 = v69;
        v42 = sub_1B0C79F34(v23, v22);
        v43 = v42;
        if (v42 == 6)
        {
          v44 = v23;
        }

        else
        {
          v44 = v42;
        }

        if (v42 == 6)
        {
          v45 = v22;
        }

        else
        {
          v45 = 0;
        }

        v46 = *a2;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v46;
        if ((v47 & 1) == 0)
        {
          v46 = sub_1B0C81050(0, *(v46 + 2) + 1, 1, v46);
          *a2 = v46;
        }

        v49 = *(v46 + 2);
        v48 = *(v46 + 3);
        if (v49 >= v48 >> 1)
        {
          v46 = sub_1B0C81050((v48 > 1), v49 + 1, 1, v46);
          *a2 = v46;
        }

        *(v46 + 2) = v49 + 1;
        v19 = &v46[56 * v49];
        *(v19 + 4) = v44;
        *(v19 + 5) = v45;
        v19[48] = v43 == 6;
        *(v19 + 7) = v41;
        *(v19 + 8) = v62;
        v20 = v61;
      }

      v19[72] = v20;
LABEL_14:
      *(v19 + 10) = v30;

      v3 = v66;
LABEL_15:
      ++v18;
      v17 += 64;
    }

    while (v68 != v18);
  }
}

uint64_t sub_1B0CADA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a1;
  v28 = a4;
  v26[2] = a6;
  v10 = 0;
  v11 = 0;
  v29 = *MEMORY[0x1E69E9840];
  v12 = *(a3 + 16);
  v13 = -1;
  while (1)
  {
    if (!v12)
    {
      if (v11 < 0)
      {
        __break(1u);
      }

      isStackAllocationSafe = swift_retain_n();
      if (v11 >= 1025)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (++v13 >= *(a2 + 16))
    {
      break;
    }

    v14 = *(a2 + v10 + 40);
    v16 = *(a3 + v10 + 32);
    v15 = *(a3 + v10 + 40);
    if ((v14 & 0x1000000000000000) != 0)
    {
      v26[1] = v6;
      v20 = sub_1B0E44DC8();
      v18 = __OFADD__(v11, v20);
      v11 += v20;
      if (v18)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v17 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v17 = *(a2 + v10 + 32) & 0xFFFFFFFFFFFFLL;
      }

      v18 = __OFADD__(v11, v17);
      v11 += v17;
      if (v18)
      {
        goto LABEL_27;
      }
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v19 = sub_1B0E44DC8();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    --v12;
    v10 += 16;
    v18 = __OFADD__(v11, v19);
    v11 += v19;
    if (v18)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v25 = swift_slowAlloc();

    sub_1B0CAE96C(v25, v25 + v11, v27, a2, a3, v28, a5);
    MEMORY[0x1B272C230](v25, -1, -1);
    goto LABEL_24;
  }

LABEL_22:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v23 = v26 - v22;

  sub_1B0CAE96C(v23, &v23[v11], v27, a2, a3, v28, a5);
  if (v6)
  {
    swift_willThrow();
LABEL_24:
  }
}

unint64_t sub_1B0CADCDC(unint64_t a1, unint64_t a2, char *a3, char *a4, void (*a5)(char *__return_ptr, void *, char *, __n128))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v31 = 4 * v8;
  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v29 = a2 & 0xFFFFFFFFFFFFFFLL;
  v28 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = 15;
  while (1)
  {
    if (a3)
    {
      v13 = a4;
      if (a3 != a4)
      {
        v14 = *a3++;
        LOBYTE(v33[0]) = v14;
        v15 = result;
        (a5)(&v32, v33, a4);
        if (v31 == v15 >> 14)
        {
          goto LABEL_34;
        }

        result = v15;
        v16 = v32;
        v17 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
    }

    if (v31 == result >> 14)
    {
      v24 = 1;
      goto LABEL_36;
    }

    v17 = 0;
    v16 = 0;
    a3 = v13;
LABEL_19:
    v18 = result & 0xC;
    v19 = result;
    if (v18 == v10)
    {
      v23 = result;
      v19 = sub_1B0A6D6C4(result, a1, a2);
      result = v23;
    }

    v20 = v19 >> 16;
    if (v19 >> 16 >= v8)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = result;
      v22 = sub_1B0E44E08();
      result = v26;
      if (v18 != v10)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v33[0] = a1;
        v33[1] = v29;
        v21 = v33;
      }

      else
      {
        v21 = v28;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v25 = result;
          v21 = sub_1B0E46368();
          result = v25;
        }
      }

      v22 = *(v21 + v20);
      if (v18 != v10)
      {
LABEL_28:
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_29;
        }

        goto LABEL_7;
      }
    }

    result = sub_1B0A6D6C4(result, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_29:
      if (v8 <= result >> 16)
      {
        goto LABEL_38;
      }

      result = sub_1B0E44DD8();
      goto LABEL_8;
    }

LABEL_7:
    result = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_8:
    if (v16 == v22)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }

    if ((v12 & 1) == 0)
    {
LABEL_34:
      v24 = 0;
LABEL_36:

      return v24;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B0CADEFC(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  do
  {
    if (a3)
    {
      if (a3 == a4)
      {
        v4 = 0;
        v5 = 1;
        a3 = a4;
        if (!a1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v5 = 0;
        v8 = *a3++;
        v4 = v8;
        if (!a1)
        {
LABEL_10:
          v6 = 0;
          v7 = 1;
          if (v5)
          {
            return v7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
      v4 = 0;
      v5 = 1;
      if (!a1)
      {
        goto LABEL_10;
      }
    }

    if (a1 == a2)
    {
      v6 = 0;
      v7 = 1;
      a1 = a2;
      if (v5)
      {
        return v7;
      }
    }

    else
    {
      v7 = 0;
      v9 = *a1++;
      v6 = v9;
      if (v5)
      {
        return v7;
      }
    }

LABEL_13:
    if (v4 != v6)
    {
      LODWORD(v7) = 1;
    }
  }

  while (v7 != 1);
  return 0;
}

uint64_t sub_1B0CADF88@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X7>, _BYTE *a6@<X8>, unsigned __int8 *a7, unsigned __int8 *a8, char a9, uint64_t a10, void *a11, uint64_t a12)
{
  v57 = a5;
  v70 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v61 = 0;
  v62 = v14;
  v63 = a1;
  v64 = a2;
  v15 = *a3;
  v16 = *a4;
  if (*a4 < v15)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v53 = a6;
  v54 = v12;
  v17 = a11;
  v52 = a10;
  if (v15 == v16)
  {
    v18 = 0;
LABEL_60:
    v47 = &a1[v18];
    if (!a1)
    {
      v18 = 0;
      v47 = 0;
    }

    v65 = 0;
    v66 = v18;
    v67 = a1;
    v68 = v47;
    v69 = 0;
    v48 = sub_1B0CAF08C(&v65, a7, a8, a9 & 1, v17, a12);

    *v53 = v48 & 1;
  }

  v51 = a11;
  v55 = v16;
  v56 = v57 + 32;
  v19 = v15;
  while (1)
  {
    if (v15 < 0)
    {
      goto LABEL_67;
    }

    if (v19 >= *(v57 + 16))
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v20 = v56 + 24 * v19;
    if (*(v20 + 16) < 0)
    {
      break;
    }

    v21 = *v20;
    if (!*v20)
    {
      v23 = 0;
LABEL_18:
      MEMORY[0x1EEE9AC00](a1);
      v31 = &v50 - v30;
      v13 = 0;
      if (!v23)
      {
        goto LABEL_46;
      }

      v32 = 0;
LABEL_20:
      if (v23 < v32 + 1)
      {
        goto LABEL_65;
      }

      v33 = *(v21 + v32);
      if (v33 != 37)
      {
        ++v32;
        goto LABEL_43;
      }

      if (v32 + 1 != v23)
      {
        for (v32 += 3; v32 - v23 != 2; v32 += 2)
        {
          if (v23 < v32 - 1)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          if (v32 - v23 == 1)
          {
            break;
          }

          if (v23 < v32)
          {
            goto LABEL_64;
          }

          v34 = *(v21 + v32 - 2);
          v35 = *(v21 + v32 - 1);
          if ((v34 - 58) > 0xF5u)
          {
            v36 = -48;
          }

          else if ((v34 - 71) > 0xF9u)
          {
            v36 = -55;
          }

          else
          {
            if ((v34 - 103) <= 0xF9u)
            {
              continue;
            }

            v36 = -87;
          }

          if ((v35 - 58) > 0xF5u)
          {
            v37 = -48;
            goto LABEL_42;
          }

          if ((v35 - 71) > 0xF9u)
          {
            v37 = -55;
            goto LABEL_42;
          }

          if ((v35 - 103) >= 0xFAu)
          {
            v37 = -87;
LABEL_42:
            LOBYTE(v33) = (v35 + v37) | (16 * (v34 + v36));
LABEL_43:
            v31[v13] = v33;
            if (__OFADD__(v13++, 1))
            {
              goto LABEL_66;
            }

            if (v32 == v23)
            {
              break;
            }

            goto LABEL_20;
          }
        }
      }

      if (v13 < 0)
      {
        goto LABEL_69;
      }

LABEL_46:
      v58 = v19;
      v39 = v15;
      v40 = v29;
      v41 = v28;
      v42 = v27;
      v65 = 0;
      v66 = v13;
      v67 = v31;
      v68 = &v31[v13];
      v43 = v61;
      if (v63)
      {
        v44 = &v63[v62];
      }

      else
      {
        v44 = 0;
      }

      if (v63)
      {
        v45 = &v63[v61];
      }

      else
      {
        v45 = 0;
      }

      v59 = v45;
      v60 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
      sub_1B0C16D0C();
      sub_1B0E429B8();
      if (__OFADD__(v43, v13))
      {
        goto LABEL_70;
      }

      if (v40 < v43 + v13)
      {
        goto LABEL_71;
      }

      v14 = v40;
      v61 = v43 + v13;
      v62 = v40;
      a1 = v42;
      v63 = v42;
      v64 = v41;
      a2 = v41;
      v15 = v39;
      v19 = v58;
      goto LABEL_55;
    }

    v22 = *(v20 + 8);
    v23 = v22 - v21;
    if (v22 - v21 < 0)
    {
      goto LABEL_72;
    }

    if (v23 < 1025)
    {
      goto LABEL_18;
    }

    v24 = v14;
    v25 = a2;
    v26 = a1;
    if (swift_stdlib_isStackAllocationSafe())
    {
      a1 = v26;
      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    v46 = v54;
    sub_1B0CB5000(v13, v22 - v21, v21, v22, &v61, v26, v25);
    v54 = v46;
    if (v46)
    {
      goto LABEL_77;
    }

    MEMORY[0x1B272C230](v13, -1, -1);
    a1 = v26;
    a2 = v25;
    v14 = v24;
LABEL_55:
    if (++v19 == v55)
    {
      v18 = v61;
      v17 = v51;
      if ((v61 & 0x8000000000000000) == 0)
      {
        goto LABEL_60;
      }

LABEL_75:
      __break(1u);
    }
  }

  sub_1B0E465B8();
  __break(1u);
LABEL_77:

  result = MEMORY[0x1B272C230](v13, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B0CAE440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
  sub_1B0C16D0C();
  sub_1B0E429B8();
  v12 = *a5;
  result = sub_1B0433338(a1, a2, a3, a4);
  v14 = v12 + result;
  if (__OFADD__(v12, result))
  {
    __break(1u);
  }

  else
  {
    v15 = a7 - a6;
    if (!a6)
    {
      v15 = 0;
    }

    if (v15 >= v14)
    {
      *a5 = v14;
      a5[1] = v15;
      a5[2] = a6;
      a5[3] = a7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CAE540(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 - result >= 4)
    {
      v2 = 0;
      do
      {
        if (*(result + v2) == 61)
        {
          if (__OFADD__(v2, 1))
          {
            goto LABEL_25;
          }

          if (*(result + v2 + 1) == 63)
          {
            v3 = v2 + 2;
            if (!__OFADD__(v2, 2))
            {
              v4 = 0;
              v5 = a2 - result - 2;
              while (1)
              {
                do
                {
                  v6 = v5;
                  if (v3 >= v5)
                  {
                    if ((v5 != v3) | v4 & 1)
                    {
                      goto LABEL_18;
                    }

                    v4 = 1;
                    v5 = v2 + 2;
                  }

                  else
                  {
                    --v5;
                  }
                }

                while (*(result + v6) != 63);
                v7 = __OFADD__(v6, 1);
                v8 = v6 + 1;
                if (v7)
                {
                  break;
                }

                if (*(result + v8) == 61)
                {
                  return 1;
                }
              }

              __break(1u);
LABEL_25:
              __break(1u);
            }

            __break(1u);
            return result;
          }
        }

LABEL_18:
        if (v2 == a2 - result - 4)
        {
          return 0;
        }

        v7 = __OFADD__(v2++, 1);
      }

      while (!v7);
      __break(1u);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0CAE608(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v10 = a3;
  v8 = *(a4 + 16);
  if (v8 <= a3)
  {
    goto LABEL_56;
  }

  v9 = a2;
  v7 = a4 + 32;
  v14 = a4 + 32 + (a3 << 6);
  v12 = *(v14 + 40);
  v11 = *(v14 + 48);
  v44 = a1;
  if (*(v14 + 16) == 1)
  {
    if ((*(a5 + 16) & 1) != 0 && (sub_1B0CAEF80(v12, v11, &v47), (v50 & 1) == 0))
    {
      LOWORD(v6) = 0;
      v12 = v48;
      v11 = v49;
      *a5 = v47;
      *(a5 + 16) = 0;
    }

    else
    {
      LOWORD(v6) = 0;
    }
  }

  else
  {
    v15 = *(v14 + 57);
    if (*(v14 + 56))
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    LOWORD(v6) = v16 | v15 | 0x8000;
  }

  v13 = *a6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v13;
  if ((result & 1) == 0)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v19 = *(v13 + 16);
    v18 = *(v13 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1B0C81A38((v18 > 1), v19 + 1, 1, v13);
      v13 = result;
      *a6 = result;
    }

    *(v13 + 16) = v19 + 1;
    v20 = v13 + 24 * v19;
    *(v20 + 32) = v12;
    *(v20 + 40) = v11;
    *(v20 + 48) = v6;
    v21 = (v10 + 1);
    if (v10 + 1 == v8)
    {
      return result;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = 0;
    v23 = v44;
LABEL_18:
    if (v21 < v8)
    {
      break;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    result = sub_1B0C81A38(0, *(v13 + 16) + 1, 1, v13);
    v13 = result;
    *a6 = result;
  }

  v24 = (v7 + (v21 << 6));
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v24 + 16);
  v6 = *(v24 + 17);
  v28 = *(v24 + 18);
  v11 = v24[5];
  v10 = v24[6];
  v29 = *(v24 + 56);
  ++v21;
  v30 = v23;
  v31 = *(v24 + 57);
  while (1)
  {
    v32 = !v30 || v30 == v9;
    v33 = v32;
    if (!v25 || v25 == v26)
    {
      break;
    }

    if (!v33)
    {
      v35 = *v25++;
      v34 = v35;
      v36 = *v30++;
      if (v34 == v36)
      {
        continue;
      }
    }

    goto LABEL_16;
  }

  if (!v33)
  {
LABEL_16:
    v6 = v22;
    goto LABEL_17;
  }

  if ((v28 & 1) == 0)
  {
    v37 = v22 + 1;
    if ((v37 >> 8))
    {
      goto LABEL_54;
    }

    if (v6 == v37)
    {
      if (v27)
      {
        if ((*(a5 + 16) & 1) != 0 && (sub_1B0CAEF80(v11, v10, &v51), (v54 & 1) == 0))
        {
          v45 = 0;
          v11 = v52;
          v10 = v53;
          *a5 = v51;
          *(a5 + 16) = 0;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        if (v29)
        {
          v38 = -32512;
        }

        else
        {
          v38 = 0x8000;
        }

        v45 = v38 | v31;
      }

      v12 = *a6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_1B0C81A38(0, *(v12 + 2) + 1, 1, v12);
        *a6 = v12;
      }

      v41 = *(v12 + 2);
      v40 = *(v12 + 3);
      v13 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v12 = sub_1B0C81A38((v40 > 1), v41 + 1, 1, v12);
        *a6 = v12;
      }

      *(v12 + 2) = v13;
      v42 = &v12[24 * v41];
      *(v42 + 4) = v11;
      *(v42 + 5) = v10;
      *(v42 + 24) = v45;
      v23 = v44;
LABEL_17:
      v22 = v6;
      if (v21 != v8)
      {
        goto LABEL_18;
      }
    }
  }
}

uint64_t sub_1B0CAE96C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v7 = a2 - result;
  if (!result)
  {
    v7 = 0;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = a5;
    v11 = *(a5 + 16);

    v38 = v11;
    if (!v11)
    {
      v35 = MEMORY[0x1E69E7CC0];
      goto LABEL_20;
    }

    v12 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    v33 = a6;
    v34 = a7;
    v32 = v10;
    while (1)
    {
      v13 = 16 * v12;
      v14 = a4;
      while (1)
      {
        if (v12 >= *(a4 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v15 = *(v14 + v13 + 32);
        v16 = *(v14 + v13 + 40);
        v18 = *(v10 + v13 + 32);
        v17 = *(v10 + v13 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = sub_1B0CAEBB4(v15, v16);
        if ((v21 & 1) == 0)
        {
          break;
        }

LABEL_8:
        ++v12;
        v10 += 16;
        v14 += 16;
        if (v12 >= v38)
        {
          a7 = v34;
          a6 = v33;
          goto LABEL_20;
        }
      }

      v36 = v20;
      v37 = v19;
      v22 = sub_1B0CAEBB4(v18, v17);
      v24 = v23;
      v26 = v25;

      if (v26)
      {
        goto LABEL_8;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0C80BF0(0, *(v35 + 16) + 1, 1, v35);
        v35 = result;
      }

      a7 = v34;
      a6 = v33;
      v27 = v36;
      v29 = *(v35 + 16);
      v28 = *(v35 + 24);
      v30 = v37;
      if (v29 >= v28 >> 1)
      {
        result = sub_1B0C80BF0((v28 > 1), v29 + 1, 1, v35);
        v27 = v36;
        v30 = v37;
        v35 = result;
      }

      ++v12;
      *(v35 + 16) = v29 + 1;
      v31 = v35 + 40 * v29;
      *(v31 + 32) = v30;
      *(v31 + 40) = v27;
      *(v31 + 48) = v22;
      *(v31 + 56) = v24;
      *(v31 + 64) = 0;
      v10 = v32;
      if (v12 >= v38)
      {
LABEL_20:

        sub_1B0CAFFE8(v35, a6, a7);
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1B0CAEBB4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v5 = sub_1B0E44DC8();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  if (sub_1B0433338(*v2, v6, v8, v9) < v5)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v8 + v7;
  }

  else
  {
    v10 = 0;
  }

  result = sub_1B0CAECE4(a1, a2, v10);
  v12 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v9 - v8;
  if (!v8)
  {
    v13 = 0;
  }

  if (v12 < 0 || v13 < v12)
  {
    goto LABEL_21;
  }

  if (v12 < v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 >= v12)
  {
    *v2 = v12;
    v2[1] = v6;
    v2[2] = v8;
    v2[3] = v9;
    return v10;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1B0CAECE4(unint64_t result, unint64_t a2, uint64_t a3)
{
  v22[0] = result;
  v22[1] = a2;
  if (!a3)
  {
    return result;
  }

  v5 = result;
  MEMORY[0x1EEE9AC00](result);
  v18[2] = v22;
  v18[3] = v6;
  v18[4] = v7;
  v18[5] = v6;
  result = sub_1B0CAEEDC(sub_1B0CB0B9C, v18, v5, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v8 = (a2 & 0x2000000000000000) != 0 ? HIBYTE(a2) & 0xF : v5 & 0xFFFFFFFFFFFFLL;
  if (!v8)
  {
    return result;
  }

  v9 = 0;
  v10 = (v5 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  while (1)
  {
    v12 = result & 0xC;
    v13 = result;
    if (v12 == v11)
    {
      v17 = result;
      v13 = sub_1B0A6D6C4(result, v5, a2);
      result = v17;
    }

    v14 = v13 >> 16;
    if (v13 >> 16 >= v8)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v16 = sub_1B0E44E08();
      result = v19;
      if (v12 != v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v21[0] = v5;
        v21[1] = v20;
        v15 = v21;
      }

      else
      {
        v15 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v5 & 0x1000000000000000) == 0)
        {
          v19 = result;
          v15 = sub_1B0E46368();
          result = v19;
        }
      }

      v16 = *(v15 + v14);
      if (v12 != v11)
      {
LABEL_19:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_23;
      }
    }

    result = sub_1B0A6D6C4(result, v5, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_20:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_25;
    }

LABEL_23:
    if (v8 <= result >> 16)
    {
      goto LABEL_30;
    }

    result = sub_1B0E44DD8();
LABEL_25:
    if (__OFADD__(v9, 1))
    {
      goto LABEL_29;
    }

    *(a3 + v9++) = v16;
    if (4 * v8 == result >> 14)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_1B0CAEEDC(void *(*a1)(uint64_t *__return_ptr, void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return ((a4 & 0x1000000000000000) >> 60);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v10[0] = a3;
    v10[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    result = a1(&v11, v10, HIBYTE(a4) & 0xF);
    if (v4)
    {
      return result;
    }

    return ((a4 & 0x1000000000000000) >> 60);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v7 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1B0E46368();
  }

  result = a1(&v11, v7, v8);
  if (!v4)
  {
    return ((a4 & 0x1000000000000000) >> 60);
  }

  return result;
}

uint64_t sub_1B0CAEF80@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {
        goto LABEL_15;
      }

      if (*(result + v4) == 39)
      {
        goto LABEL_13;
      }

      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v3 < (v4 + 1))
      {
        goto LABEL_41;
      }

      v5 = (v4 + 1) <= v4;
      ++v4;
      if (v5)
      {
        __break(1u);
LABEL_13:
        if (v3 <= v4)
        {
          goto LABEL_43;
        }

        if (v3 - 1 == v4)
        {
LABEL_15:
          v6 = 0;
          v7 = 0;
          v8 = 0;
LABEL_16:
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 1;
        }

        else
        {
          v8 = ~v4 + v3;
          v13 = (result + v4 + 1);
          v14 = result + 1 + v4;
          while (1)
          {
            v15 = *v13++;
            if (v15 == 39)
            {
              break;
            }

            ++v14;
            if (!--v8)
            {
              v6 = 0;
              v7 = 0;
              goto LABEL_16;
            }
          }

          v16 = result + v4;
          v11 = a2;
          if (result)
          {
            v6 = result;
          }

          else
          {
            v6 = 0;
          }

          if (result)
          {
            v7 = result + v4;
          }

          else
          {
            v7 = 0;
          }

          if (result)
          {
            v8 = v16 + 1;
          }

          else
          {
            v8 = 0;
          }

          if (result)
          {
            v9 = v14;
          }

          else
          {
            v9 = 0;
          }

          if (result)
          {
            v10 = v14 + 1;
          }

          else
          {
            v10 = 0;
          }

          if (!result)
          {
            v11 = 0;
          }

          v12 = 0;
        }

        *a3 = v6;
        *(a3 + 8) = v7;
        *(a3 + 16) = v8;
        *(a3 + 24) = v9;
        *(a3 + 32) = v10;
        *(a3 + 40) = v11;
        *(a3 + 48) = v12;
        return result;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1B0CAF08C(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  if (a1[4])
  {
    if (v8)
    {
      sub_1B0CB521C(*a1, v7, a6, BYTE1(v8) & 1);
      return 0;
    }

    result = sub_1B0C771DC(*a1, v7, BYTE1(v8) & 1);
LABEL_24:
    MEMORY[0x1B2726E80](result);
LABEL_25:

    return 0;
  }

  if (!v8 || v7 == v6)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
LABEL_7:
    MEMORY[0x1B2726E80](v9, v10, a3, a4, a5);
    goto LABEL_25;
  }

  v13 = a1[3];
  v14 = sub_1B0CB2450(a2, a3, a4 & 1, (v8 + v6), &v7[v8], 0, a5);
  if (v14)
  {
    v15 = v14;
    swift_beginAccess();
    v16 = a5[3];
    if (v16)
    {
LABEL_13:
      v17 = swift_endAccess();
      if (v16 == v15)
      {
        v9 = sub_1B0E44C68();
      }

      else
      {
        MEMORY[0x1EEE9AC00](v17);
        v9 = sub_1B0C78104(v15, a5, sub_1B0CACFA8);
      }

      v10 = v18;
      goto LABEL_7;
    }

    result = sub_1B0CB31A4("utf-8", a5);
    if (result)
    {
      v16 = result;
      a5[3] = result;
      goto LABEL_13;
    }
  }

  else
  {
    v19 = sub_1B0433338(v6, v7, v8, v13);
    result = MEMORY[0x1B2726D20](v19);
    if (v7 > v6)
    {
      v20 = v13 - v8;
      result = 0;
      v21 = v6;
      while ((v6 & 0x8000000000000000) == 0 && v21 < v20)
      {
        if (*(v8 + v21) - 1 <= 0x7D)
        {
          v22 = result;
          sub_1B0E44C58();
          result = v22;
        }

        if (v7 == ++v21)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CAF2F8(uint64_t result, uint64_t a2, int a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6, int a7, char *a8, void *a9, char *a10)
{
  v78 = a7;
  v77 = a6;
  v76 = a5;
  v97 = *MEMORY[0x1E69E9840];
  v86 = 0;
  v10 = *(a4 + 16);
  if (!v10)
  {
    return result;
  }

  v68 = result;
  v69 = a2;
  v67 = a3;
  v79 = a10;
  v84 = a4 + 32;
  v73 = a8;
  v11 = a4;
  swift_bridgeObjectRetain_n();
  v75 = a9;
  isStackAllocationSafe = swift_retain_n();
  v13 = 0;
  v80 = 0;
  v72 = v11 + 72;
  v71 = v10 + 1;
  v66 = v11;
  v70 = v11 + 48;
  while (1)
  {
    if (v13 >= v10)
    {
      goto LABEL_120;
    }

    v14 = v84 + 24 * v13;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    if ((v17 & 0x80000000) == 0)
    {
      break;
    }

    if (v17)
    {
      v21 = v80;
      isStackAllocationSafe = sub_1B0CB521C(*v14, *(v14 + 8), v79, BYTE1(v17) & 1);
      v80 = v21;
      v22 = __OFADD__(v13++, 1);
      if (v22)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v91 = 0;
      v92 = 0xE000000000000000;
      if (v16)
      {
        v23 = v15 - v16;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x1B2726D20](v23);
      if (v16)
      {
        v24 = v15 == v16;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        v25 = v91;
        v26 = v92;
        v27 = v16;
        while (1)
        {
          v29 = *v27++;
          v28 = v29;
          if ((v29 - 1) < 0x7E)
          {
            if ((v17 & 0x100) == 0 || v28 != 92)
            {
              goto LABEL_24;
            }

            if (v27 == v15)
            {
LABEL_97:
              v91 = v25;
              v92 = v26;
              break;
            }

            v27 = (v16 + 2);
            if (*(v16 + 1) - 1 < 0x7E)
            {
LABEL_24:
              v87 = v25;
              v88 = v26;
              sub_1B0E44C58();
              v25 = v87;
              v26 = v88;
            }
          }

          v16 = v27;
          if (v27 == v15)
          {
            goto LABEL_97;
          }
        }
      }

      v11 = v79;
      MEMORY[0x1B2726E80](v91, v92);

      v22 = __OFADD__(v13++, 1);
      if (v22)
      {
        goto LABEL_121;
      }
    }

LABEL_37:
    v86 = v13;
    if (v13 >= v10)
    {
      goto LABEL_106;
    }
  }

  v18 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    goto LABEL_122;
  }

  if (v18 < v10)
  {
    v19 = &v72[24 * v13];
    v20 = v13 + 1;
    while (1)
    {
      if (v18 < 0)
      {
        goto LABEL_114;
      }

      if (*v19 < 0)
      {
        break;
      }

      ++v20;
      v19 += 24;
      if (v10 == v20)
      {
        v18 = v10;
        goto LABEL_33;
      }
    }

    v18 = v20;
  }

LABEL_33:
  v85 = v18;
  if (__OFSUB__(v18, v13))
  {
    goto LABEL_123;
  }

  if (v18 - v13 == 1)
  {
    v11 = v73;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30 = v75;

    v31 = v80;
    v32 = sub_1B0CB569C(v16, v15, v76, v77, v78 & 1, v11, v30, v79);
    v80 = v31;

    if (v32)
    {
      goto LABEL_106;
    }

LABEL_36:
    v22 = __OFADD__(v13++, 1);
    if (v22)
    {
      goto LABEL_121;
    }

    goto LABEL_37;
  }

  if (v18 < v13)
  {
    goto LABEL_124;
  }

  v33 = 0;
  v34 = &v70[24 * v13];
  v35 = v18;
  v36 = v71;
  while (1)
  {
    if (v13 == v35)
    {
      if (v33 < 0)
      {
        goto LABEL_126;
      }

      v82 = v33;
      if (v33 >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v60 = v82;
          v11 = swift_slowAlloc();
          v61 = v73;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          v63 = &v11[v60];
          v64 = v80;
          sub_1B0CADF88(v11, v63, &v86, &v85, v66, &v91, v76, v77, v78 & 1, v61, v62, v79);
          v80 = v64;
          if (v64)
          {
            goto LABEL_128;
          }

          MEMORY[0x1B272C230](v11, -1, -1);
          isStackAllocationSafe = v91;
          v13 = v18 - 1;
          if (__OFSUB__(v18, 1))
          {
LABEL_105:
            __break(1u);
LABEL_106:

            return swift_bridgeObjectRelease_n();
          }

          goto LABEL_95;
        }
      }

      v74 = &v66;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v41 = &v66 - v40;
      v42 = 0;
      v91 = 0;
      v92 = v43;
      v83 = v41;
      v93 = v41;
      v94 = &v41[v43];
      v81 = &v41[v43];
      if (v13 == v18)
      {
LABEL_94:
        v95[0] = 0;
        v95[1] = v42;
        v95[2] = v83;
        v95[3] = &v83[v42];
        v96 = 0;
        isStackAllocationSafe = sub_1B0CAF08C(v95, v76, v77, v78 & 1, v75, v79);
        v13 = v18 - 1;
        if (__OFSUB__(v18, 1))
        {
          goto LABEL_105;
        }

LABEL_95:
        v86 = v13;
        if (isStackAllocationSafe)
        {
          goto LABEL_106;
        }

        goto LABEL_36;
      }

      while (1)
      {
        if (v13 == v10)
        {
          goto LABEL_115;
        }

        v44 = v84 + 24 * v13;
        if (*(v44 + 16) < 0)
        {
          goto LABEL_127;
        }

        v11 = *v44;
        if (!*v44)
        {
          break;
        }

        v45 = *(v44 + 8);
        v46 = v45 - v11;
        if (v45 - v11 < 0)
        {
          goto LABEL_119;
        }

        if (v46 < 1025 || (swift_stdlib_isStackAllocationSafe() & 1) != 0)
        {
          goto LABEL_61;
        }

        v47 = swift_slowAlloc();
        v48 = v80;
        sub_1B0CB5000(v47, v45 - v11, v11, v45, &v91, v83, v81);
        v80 = v48;
        if (v48)
        {

          swift_bridgeObjectRelease_n();

          v65 = v47;
          goto LABEL_130;
        }

        MEMORY[0x1B272C230](v47, -1, -1);
LABEL_92:
        if (++v13 == v18)
        {
          v42 = v91;
          if ((v91 & 0x8000000000000000) != 0)
          {
            goto LABEL_125;
          }

          goto LABEL_94;
        }
      }

      v46 = 0;
LABEL_61:
      MEMORY[0x1EEE9AC00](&v66);
      v50 = &v66 - v49;
      v51 = 0;
      if (!v46)
      {
        goto LABEL_89;
      }

      v52 = 0;
LABEL_63:
      if (v46 < v52 + 1)
      {
        goto LABEL_112;
      }

      v53 = v11[v52];
      if (v53 != 37)
      {
        ++v52;
        goto LABEL_86;
      }

      if (v52 + 1 == v46)
      {
LABEL_88:
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

LABEL_89:
        v58 = v10;
        v87 = 0;
        v88 = v51;
        v89 = v50;
        v90 = &v50[v51];
        v59 = v91;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5770, &qword_1B0ED6C40);
        sub_1B0C16D0C();
        v11 = &v87;
        sub_1B0E429B8();
        if (__OFADD__(v59, v51))
        {
          goto LABEL_117;
        }

        if (v82 < (v59 + v51))
        {
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
        }

        v91 = v59 + v51;
        v92 = v82;
        v93 = v83;
        v94 = v81;
        v10 = v58;
        goto LABEL_92;
      }

      v52 += 3;
      while (1)
      {
        if (v46 < v52 - 1)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v52 - v46 == 1)
        {
          goto LABEL_88;
        }

        if (v46 < v52)
        {
          goto LABEL_109;
        }

        v54 = v11[v52 - 2];
        v55 = v11[v52 - 1];
        if ((v54 - 58) > 0xF5u)
        {
          v56 = -48;
        }

        else if ((v54 - 71) > 0xF9u)
        {
          v56 = -55;
        }

        else
        {
          if ((v54 - 103) <= 0xF9u)
          {
            goto LABEL_79;
          }

          v56 = -87;
        }

        if ((v55 - 58) > 0xF5u)
        {
          v57 = -48;
          goto LABEL_85;
        }

        if ((v55 - 71) > 0xF9u)
        {
          v57 = -55;
          goto LABEL_85;
        }

        if ((v55 - 103) >= 0xFAu)
        {
          v57 = -87;
LABEL_85:
          LOBYTE(v53) = (v55 + v57) | (16 * (v54 + v56));
LABEL_86:
          v50[v51] = v53;
          v22 = __OFADD__(v51++, 1);
          if (v22)
          {
            goto LABEL_113;
          }

          if (v52 == v46)
          {
            goto LABEL_88;
          }

          goto LABEL_63;
        }

LABEL_79:
        v52 += 2;
        if (v52 - v46 == 2)
        {
          goto LABEL_88;
        }
      }
    }

    if (v13 == --v36)
    {
      goto LABEL_110;
    }

    if (*v34 < 0)
    {
      break;
    }

    v38 = *(v34 - 2);
    v37 = *(v34 - 1);
    v34 += 24;
    --v35;
    v39 = v37 - v38;
    if (!v38)
    {
      v39 = 0;
    }

    v22 = __OFADD__(v33, v39);
    v33 += v39;
    if (v22)
    {
      goto LABEL_111;
    }
  }

LABEL_127:

  swift_bridgeObjectRelease_n();
  sub_1B0E465B8();
  __break(1u);
LABEL_128:

  swift_bridgeObjectRelease_n();

  v65 = v11;
LABEL_130:
  result = MEMORY[0x1B272C230](v65, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B0CAFCA4(unsigned __int8 *a1, unsigned __int8 *a2, char a3, uint64_t a4, void *a5)
{
  if (a3 & 1) != 0 && *(a4 + 16) == 1 && *(a4 + 48) < 0 && (v10 = *(a4 + 32), v11 = *(a4 + 40), (sub_1B0CAE540(v10, v11)))
  {

    v12 = sub_1B0CB4EF0(v10, v11);
    v14 = sub_1B0CACDC4(v12, v13, a5);

    return v14;
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1B0CAF2F8(a1, a2, a3 & 1, a4, a1, a2, a3 & 1, a4, a5, v16);

    return v16[0];
  }
}

uint64_t sub_1B0CAFDAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2 - result;
  }

  else
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v3 = result;
  for (i = 1; ; ++i)
  {
    if (i - v2 == 1)
    {
      return v3;
    }

    v5 = i - 1;
    if (*(result + i - 1) == 42)
    {
      break;
    }

    v6 = i;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v2 < i)
    {
      goto LABEL_45;
    }

    if (v6 < v5)
    {
      __break(1u);
      return v3;
    }
  }

  if (v5 >= v2)
  {
    goto LABEL_52;
  }

  v7 = i;
  while (1)
  {
    if (v2 == v7)
    {
      goto LABEL_22;
    }

    if (*(result + v7) - 58 <= 0xFFFFFFF5)
    {
      break;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_46;
    }

    if (v2 < v8)
    {
      goto LABEL_47;
    }

    if (v8 < v7++)
    {
      __break(1u);
LABEL_22:
      v10 = v2;
      goto LABEL_24;
    }
  }

  v10 = v7;
LABEL_24:
  if (v10 <= v5)
  {
    goto LABEL_53;
  }

  v11 = v10 - i;
  if (v10 == i || (result = sub_1B0433338(i, v10, result, a2), result > 8))
  {
    if (v2 != i)
    {
      return 0;
    }

    return v3;
  }

  v12 = 0;
  if (v3)
  {
    v13 = (v3 + i);
    while (is_mul_ok(v12, 0xAuLL))
    {
      v14 = *v13 - 48;
      if ((v14 & 0xFFFFFF00) != 0)
      {
        goto LABEL_49;
      }

      v15 = 10 * v12;
      v16 = __CFADD__(v15, v14);
      v12 = v15 + v14;
      if (v16)
      {
        goto LABEL_50;
      }

      ++v13;
      if (!--v11)
      {
        if (v12 <= 0xFF)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_37:
  if (v2 == v7)
  {
    return v3;
  }

  if (v10 >= v2)
  {
    goto LABEL_54;
  }

  result = 0;
  if (*(v3 + v10) == 42 && v10 + 1 == v2)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1B0CAFFE8(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = (a1 + 65);
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      v58 = *(v5 - 17);
      v59 = *(v5 - 33);
      v10 = sub_1B0CAFDAC(*(v5 - 33), *(v5 - 25));
      if (v12 != 2)
      {
        v13 = v10;
        v14 = v11;
        v15 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1B0C80AF0(0, *(v4 + 2) + 1, 1, v4);
        }

        v17 = *(v4 + 2);
        v16 = *(v4 + 3);
        if (v17 >= v16 >> 1)
        {
          v4 = sub_1B0C80AF0((v16 > 1), v17 + 1, 1, v4);
        }

        LOBYTE(v62) = ((v15 & 0xFFFFFFu) >> 16) & 1;
        *(v4 + 2) = v17 + 1;
        v6 = &v4[64 * v17];
        *(v6 + 4) = v13;
        *(v6 + 5) = v14;
        v6[48] = v15 & 1;
        v6[49] = BYTE1(v15);
        v6[50] = v62;
        v7 = v65[0];
        v6[55] = BYTE4(v65[0]);
        *(v6 + 51) = v7;
        *(v6 + 72) = v58;
        *(v6 + 56) = v59;
        v6[88] = v8;
        v6[89] = v9;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  v60 = *(v4 + 2);
  if (v60)
  {
    v18 = 0;
    for (i = 0; v60 != i; ++i)
    {
      v21 = &v4[v18];
      v23 = *&v4[v18 + 32];
      v22 = *&v4[v18 + 40];
      if (v4[v18 + 50] == 1)
      {
        v24 = v21[48];
        v25 = *(v21 + 9);
        v26 = *(v21 + 10);
        v27 = v21[88];
        v28 = v21[89];
        if ((v24 & 1) != 0 && (sub_1B0CAEF80(v25, v26, v65), (v66 & 1) == 0))
        {
          v49 = v65[0];
          v48 = v65[1];
          v51 = v65[4];
          v50 = v65[5];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_1B0EC1E70;
          *(v52 + 32) = v51;
          *(v52 + 40) = v50;
          *(v52 + 48) = 0;
          if (v23)
          {
            if (v22 - v23 == 8)
            {
              v53 = v52;
              if (sub_1B0CADCDC(0x656D616E656C6966uLL, 0xE800000000000000, v23, v22, sub_1B0C95118))
              {
                v62 = 0;
                v63 = 0xE000000000000000;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

                sub_1B0CAF2F8(v49, v48, 0, v53, v49, v48, 0, v53, a3, &v62);

                v20 = v63;
                *a2 = v62;
                a2[1] = v20;
              }
            }
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5E88, &qword_1B0EE0370);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1B0EC1E70;
          if (v27)
          {
            v30 = -32512;
          }

          else
          {
            v30 = 0x8000;
          }

          v31 = v30 | v28;
          if (v24)
          {
            v31 = 0;
          }

          *(v29 + 32) = v25;
          *(v29 + 40) = v26;
          *(v29 + 48) = v31;
          if (v23)
          {
            if (v22 - v23 == 8)
            {
              v32 = v29;
              if (sub_1B0CADCDC(0x656D616E656C6966uLL, 0xE800000000000000, v23, v22, sub_1B0C95118))
              {
                v33 = v32;
                if (*(v32 + 16) == 1 && *(v32 + 48) < 0 && (v34 = *(v32 + 32), v35 = *(v32 + 40), v36 = sub_1B0CAE540(v34, v35), v33 = v32, (v36 & 1) != 0))
                {
                  v37 = sub_1B0CB4EF0(v34, v35);
                  v39 = v38;

                  v40 = sub_1B0CACDC4(v37, v39, a3);
                  v42 = v41;
                }

                else
                {
                  v62 = 0;
                  v63 = 0xE000000000000000;
                  v54 = v33;

                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0CAF2F8(0, 0, 1, v54, 0, 0, 1, v54, a3, &v62);

                  v40 = v62;
                  v42 = v63;
                }

                *a2 = v40;
                a2[1] = v42;
              }
            }
          }
        }
      }

      else
      {
        if (v21[49])
        {
          goto LABEL_14;
        }

        v62 = 0;
        v63 = 0;
        v64 = 1;
        v61 = MEMORY[0x1E69E7CC0];
        sub_1B0CAE608(v23, v22, i, v4, &v62, &v61);
        v43 = v61;
        if (v23)
        {
          if (v22 - v23 == 8)
          {
            v45 = v62;
            v44 = v63;
            v46 = v64;
            if (sub_1B0CADCDC(0x656D616E656C6966uLL, 0xE800000000000000, v23, v22, sub_1B0C95118))
            {

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              *a2 = sub_1B0CAFCA4(v45, v44, v46, v43, a3);
              a2[1] = v47;
            }
          }
        }
      }

LABEL_14:
      v18 += 64;
    }
  }
}

void sub_1B0CB0540(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11)
  {
    if (*a1 >= v11)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (*(a1[2] + v10) == 59)
    {
      *a1 = v10 + 1;
      return;
    }
  }

  swift_beginAccess();
  if (v10 != v11 && *(*a2 + 16) != 0)
  {
    if (__OFADD__(a3, 1))
    {
      goto LABEL_21;
    }

    if (a3 + 1 < v10)
    {
      v13 = v10 - 2;
      if (v10 - 2 < a3 || v13 >= a4)
      {
        goto LABEL_22;
      }

      v14 = *(a5 + v13);
      v15 = v14 > 0x20;
      v16 = (1 << v14) & 0x100002600;
      v17 = v15 || v16 == 0;
      if (!v17 && v10 > a4)
      {
        goto LABEL_23;
      }
    }
  }
}

void sub_1B0CB0678(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2 - a1;
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_113;
  }

  v48 = 0;
  v49 = v4;
  v50 = a1;
  v51 = a2;
  v6 = 0;
  if (v4)
  {
    v3 = 1;
    while (v4 != v6)
    {
      v7 = *(a1 + v6);
      v8 = v7 > 0x20;
      v9 = (1 << v7) & 0x100002600;
      if (v8 || v9 == 0)
      {
        goto LABEL_14;
      }

      v48 = ++v6;
      v49 = v4;
      v50 = a1;
      v51 = a2;
      if (v4 == v6)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_109;
  }

LABEL_14:
  if (v6 != v4)
  {
    if (v4 <= v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = v4;
    }

    v12 = v6;
    while (v3 != v12)
    {
      v18 = *(a1 + v12);
      v8 = v18 > 0x3B;
      v19 = (1 << v18) & 0x800000100002600;
      if (!v8 && v19 != 0)
      {
        v11 = 0;
        if (v12 >= v6)
        {
          goto LABEL_16;
        }

        goto LABEL_57;
      }

      v48 = ++v12;
      v49 = v4;
      v50 = a1;
      v51 = a2;
      if (v4 == v12)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_112;
  }

LABEL_15:
  v11 = 1;
  v12 = v4;
  if (v4 < v6)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    v13 = v3;
    if (v6 == v12)
    {
      return;
    }

    goto LABEL_59;
  }

LABEL_16:
  if (v4 < v12)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v3 = v12;
  if ((v11 & 1) == 0)
  {
    v3 = v12;
    while (v4 != v3)
    {
      v21 = *(a1 + v3);
      v8 = v21 > 0x20;
      v22 = (1 << v21) & 0x100002600;
      if (v8 || v22 == 0)
      {
        goto LABEL_18;
      }

      v48 = ++v3;
      v49 = v4;
      v50 = a1;
      v51 = a2;
      if (v4 == v3)
      {
        v13 = v4;
        goto LABEL_54;
      }
    }

LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

LABEL_18:
  v13 = v4;
  if (v3 != v4)
  {
    if (v3 >= v4)
    {
LABEL_120:
      __break(1u);
      return;
    }

    if (*(a1 + v3) == 61)
    {
      v48 = ++v3;
      v49 = v4;
      v50 = a1;
      v51 = a2;
    }

    v13 = v4;
    if (v3 != v4)
    {
      if (v4 <= v3)
      {
        v14 = v3;
      }

      else
      {
        v14 = v4;
      }

      while (v14 != v3)
      {
        v15 = *(a1 + v3);
        v8 = v15 > 0x20;
        v16 = (1 << v15) & 0x100002600;
        if (v8 || v16 == 0)
        {
          goto LABEL_58;
        }

        v48 = ++v3;
        v49 = v4;
        v50 = a1;
        v51 = a2;
        if (v4 == v3)
        {
          v13 = v4;
          if (v6 == v12)
          {
            return;
          }

          goto LABEL_59;
        }
      }

      goto LABEL_111;
    }
  }

LABEL_54:
  if (v6 != v12)
  {
LABEL_59:
    if (v13 != v4)
    {
      if (v4 <= v13)
      {
        v24 = v13;
      }

      else
      {
        v24 = v4;
      }

      while (v24 != v13)
      {
        v25 = *(a1 + v13);
        v8 = v25 > 0x20;
        v26 = (1 << v25) & 0x100002600;
        if (!v8 && v26 != 0)
        {
          v48 = ++v13;
          v49 = v4;
          v50 = a1;
          v51 = a2;
          if (v4 != v13)
          {
            continue;
          }
        }

        goto LABEL_69;
      }

      goto LABEL_110;
    }

LABEL_69:
    v28 = MEMORY[0x1E69E7CC0];
    v47 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    while (1)
    {
      sub_1B0CB0540(&v48, &v47, 0, v4, a1);
      if ((v29 & 1) == 0)
      {
        break;
      }

      sub_1B0C948BC();
      sub_1B0C94918(v52);
      if (v53)
      {
        break;
      }

      v30 = v48;
      if (v48 == v49)
      {
        break;
      }

      if (v48 >= v49)
      {
        goto LABEL_115;
      }

      if (*(v50 + v48) != 61)
      {
        break;
      }

      v31 = v52[0];
      v32 = v52[1];
      v33 = v52[2];
      ++v48;
      if (v30 + 1 == v49)
      {
        goto LABEL_82;
      }

      if (v30 + 1 >= v49)
      {
        goto LABEL_116;
      }

      if (*(v50 + v30 + 1) != 34)
      {
LABEL_82:
        sub_1B0C94918(v54);
        if (v55)
        {
          goto LABEL_107;
        }

        v46 = 0;
        v34 = v54[0];
        v35 = v54[1];
        v36 = v54[2];
      }

      else
      {
        v48 = v30 + 2;
        v34 = sub_1B0C949D8(0x22u, 0x5Cu);
        if (v48 == v49)
        {
          goto LABEL_107;
        }

        if (v48 >= v49)
        {
          goto LABEL_118;
        }

        if (*(v50 + v48) != 34)
        {
          goto LABEL_107;
        }

        ++v48;
        LOBYTE(v46) = 1;
        BYTE4(v46) = a3;
      }

      v37 = v33 + v32;
      if (!v33)
      {
        v37 = 0;
      }

      v45 = v37;
      if (v33)
      {
        v38 = v33 + v31;
      }

      else
      {
        v38 = 0;
      }

      if (v36)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = 0;
      }

      if (v36)
      {
        v40 = v36 + v34;
      }

      else
      {
        v40 = 0;
      }

      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1B0C80BF0(0, *(v28 + 2) + 1, 1, v28);
      }

      v42 = *(v28 + 2);
      v41 = *(v28 + 3);
      if (v42 >= v41 >> 1)
      {
        v28 = sub_1B0C80BF0((v41 > 1), v42 + 1, 1, v28);
      }

      *(v28 + 2) = v42 + 1;
      v43 = &v28[40 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v45;
      *(v43 + 6) = v40;
      *(v43 + 7) = v39;
      v43[64] = v46;
      v43[65] = BYTE4(v46) & 1;
      v47 = v28;
      swift_endAccess();
      sub_1B0C948BC();
      if (v48 != v49)
      {
        if (v48 >= v49)
        {
          goto LABEL_117;
        }

        if (*(v50 + v48) == 40)
        {
          ++v48;
          sub_1B0C944F8(0x29u);
          if (v48 == v49)
          {
            goto LABEL_107;
          }

          if (v48 >= v49)
          {
            goto LABEL_119;
          }

          if (*(v50 + v48) != 41)
          {
LABEL_107:

            return;
          }

          ++v48;
        }
      }
    }
  }
}

void *sub_1B0CB0B9C(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

uint64_t sub_1B0CB0BBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0CB0C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RFC_2231.UnsafeAttributeName(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RFC_2231.UnsafeAttributeName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 18))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 16) & 0xFE | (*(a1 + 16) >> 15) | (*(a1 + 16) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element.Unencoded(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element.Unencoded(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

char *sub_1B0CB0F14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E7CC0];
  v36[0] = MEMORY[0x1E69E7CC0];
  v30 = v36;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a1;
  v11 = swift_allocObject();
  sub_1B0C835A8(v41);
  v12 = v41[9];
  v11[9] = v41[8];
  v11[10] = v12;
  v11[11] = v42[0];
  *(v11 + 185) = *(v42 + 9);
  v13 = v41[5];
  v11[5] = v41[4];
  v11[6] = v13;
  v14 = v41[7];
  v11[7] = v41[6];
  v11[8] = v14;
  v15 = v41[1];
  v11[1] = v41[0];
  v11[2] = v15;
  v16 = v41[3];
  v11[3] = v41[2];
  v11[4] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = 2;
  v25 = v11;
  v26 = v17;
  v27 = sub_1B0CB1AB4;
  v28 = &v29;
  v23[2] = v11 + 1;
  v23[3] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v23[4] = 0;

  sub_1B0CA33D0(3, a2, a3, a4, a5);
  v36[1] = v10;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  sub_1B0CA286C(sub_1B0C844A0, v24, sub_1B0C844C0, v23, 0, 0);

  sub_1B0C8326C(v11, v17, v36, a1);

  return v36[0];
}