void sub_1003D3668(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, UIMenu *a4@<X8>)
{
  v42 = *a1;
  v5 = [*a1 children];
  sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
  v6 = sub_1007A25E4();

  if (v6 >> 62)
  {
LABEL_27:
    v49 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = sub_1007A38D4();
  }

  else
  {
    v49 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v6;
  if (!v7)
  {
LABEL_24:

    sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
    v31 = [v42 title];
    v32 = sub_1007A2254();
    v34 = v33;

    v35 = [v42 image];
    v36 = [v42 identifier];
    v37 = v36;
    v38 = [v42 options];
    v39 = [v42 preferredElementSize];
    v51._countAndFlagsBits = v32;
    v51._object = v34;
    v52.value._countAndFlagsBits = 0;
    v52.value._object = 0;
    v50.value.super.isa = v35;
    v50.is_nil = v37;
    v40.value = v38;
    a4->super.super.isa = sub_1007A30C4(v51, v52, v50, v40, v39, v44, v41).super.super.isa;
    return;
  }

  v8 = 0;
  v47 = a2;
  v48 = v6 & 0xC000000000000001;
  v44 = v6;
  v46 = v6;
  while (2)
  {
    v9 = v8 + 4;
    while (1)
    {
      v10 = v9 - 4;
      if (v48)
      {
        v11 = sub_1007A3784();
      }

      else
      {
        if (v10 >= *(v49 + 16))
        {
          goto LABEL_26;
        }

        v11 = *(v6 + 8 * v9);
      }

      a2 = v11;
      v8 = v9 - 3;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v12 = [v11 title];
      v13 = sub_1007A2254();
      v15 = v14;

      if (v47[2])
      {
        sub_10000E53C(v13, v15);
        v17 = v16;

        if ((v17 & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = [a2 title];
        v19 = sub_1007A2254();
        v21 = v20;

        v22 = *a3;
        if (*(*a3 + 16))
        {
          break;
        }
      }

LABEL_7:

      ++v9;
      v6 = v46;
      if (v8 == v7)
      {
        goto LABEL_24;
      }
    }

    v23 = sub_10000E53C(v19, v21);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_7;
    }

    v26 = *(*(v22 + 56) + 8 * v23);
    v27 = v44;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!isUniquelyReferenced_nonNull_bridgeObject || v44 < 0 || (v44 & 0x4000000000000000) != 0)
    {
      v27 = sub_1002F9CE0();
    }

    v44 = v27;
    v29 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v10 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v29 + 8 * v9);
      *(v29 + 8 * v9) = v26;

      v6 = v46;
      if (v8 != v7)
      {
        continue;
      }

      goto LABEL_24;
    }

    break;
  }

  __break(1u);
}

uint64_t sub_1003D3B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1007A26F4();
  v4[6] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1003D3C10, v6, v5);
}

uint64_t sub_1003D3C10()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1003D3CDC;
  v10 = v0[2];
  v9 = v0[3];

  return ContextMenuProvider.menuElements(with:for:)(v10, v9);
}

uint64_t sub_1003D3CDC(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v9 = *v1;

  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  isa = sub_1007A25D4().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v7 = *(v9 + 8);

  return v7();
}

void sub_1003D3E94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&unk_100ADACE0, &unk_10080CDD0);
  v38 = v4;
  v6 = sub_1007A3914();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
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
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v28 = sub_1007A3C44();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1003D41A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&qword_100AD36F0, &unk_100818E60);
  v35 = v4;
  v6 = sub_1007A3914();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v25 = sub_1007A3C44();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
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
}

void sub_1003D4444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&unk_100ADAD00, &unk_100821F50);
  v6 = sub_1007A3914();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56) + 40 * v22;
      v36 = *(*(v5 + 48) + 16 * v22);
      v24 = *(*(v5 + 48) + 16 * v22 + 8);
      if (v4)
      {
        v25 = *v23;
        v26 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v25;
        v38 = v26;
      }

      else
      {
        sub_1000077D8(v23, &v37, &unk_100AF1C40, &unk_100818DB0);
      }

      sub_1007A3C04();
      if (v24)
      {
        sub_1007A3C24(1u);
        _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1007A3C24(0);
      }

      v27 = sub_1007A3C44();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
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

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v36;
      v16 = *(v7 + 56) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
}

void sub_1003D473C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&qword_100AD35B8, &qword_10080CB30);
  v37 = v4;
  v6 = sub_1007A3914();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v37)
      {
        v27 = v26[1];
        v38 = *v26;
        v39 = v27;
      }

      else
      {
        sub_1000077D8(v26, &v38, &unk_100AD5B40, &unk_100811300);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v28 = sub_1007A3C44();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v39;
      *v17 = v38;
      v17[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1003D4A04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&unk_100ADACF0, &qword_10080CB20);
  v6 = sub_1007A3914();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 48) + 40 * v24;
      if (v4)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v44 = *(v25 + 32);
        v42 = v26;
        v43 = v27;
        v28 = (*(v5 + 56) + 32 * v24);
        v29 = v28[1];
        v40 = *v28;
        v41 = v29;
      }

      else
      {
        sub_100028940(v25, &v42);
        sub_1000077D8(*(v5 + 56) + 32 * v24, &v40, &unk_100AD5B40, &unk_100811300);
      }

      v30 = sub_1007A3694(*(v7 + 40));
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v42;
      v18 = v43;
      *(v16 + 32) = v44;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 32 * v15);
      v20 = v41;
      *v19 = v40;
      v19[1] = v20;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1003D4D6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&unk_100AD3C20, &qword_100818F30);
  v35 = v4;
  v6 = sub_1007A3914();
  v7 = v6;
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
    v14 = v6 + 64;
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
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v25 = sub_1007A3C44();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
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
}

void sub_1003D5034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&qword_100AD3C30, &unk_100818E50);
  v6 = sub_1007A3914();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_100019288((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_100028940(v23, &v37);
        sub_100007484(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_1007A3694(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_100019288(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1003D5314(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1001F1160(a3, a4);
  v37 = v7;
  v9 = sub_1007A3914();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v37)
      {
        a5(v27, v39);
      }

      else
      {
        sub_100009864(v27, v39);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v28 = sub_1007A3C44();
      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      a5(v39, (*(v10 + 56) + 40 * v18));
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v5;
    if (v36 >= 64)
    {
      bzero((v8 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
}

void sub_1003D560C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1001F1160(a3, a4);
  v37 = v6;
  v8 = sub_1007A3914();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v10 << 6));
      v24 = (*(v7 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v38 = *(*(v7 + 56) + v23);
      if ((v37 & 1) == 0)
      {

        v27 = v38;
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v28 = sub_1007A3C44();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v9 + 56) + v18) = v38;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero((v7 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1003D5918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&qword_100AD4070, &qword_10080E4E8);
  v6 = sub_1007A3914();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      sub_1007A3C04();
      sub_10079E614();
      v25 = sub_1007A3C44();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1003D5BCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&qword_100ADAE18, &unk_100818E70);
  v36 = v4;
  v6 = sub_1007A3914();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_1007A2254();
      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v25 = sub_1007A3C44();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
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
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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
}

void sub_1003D5EF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1001F1160(a3, a4);
  v8 = sub_1007A3914();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      v24 = sub_1007A3BF4();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1003D6184(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1001F1160(a3, a4);
  v37 = v7;
  v9 = sub_1007A3914();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v37)
      {
        a5(v27, v39);
      }

      else
      {
        sub_100007484(v27, v39);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v28 = sub_1007A3C44();
      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      a5(v39, (*(v10 + 56) + 32 * v18));
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v5;
    if (v36 >= 64)
    {
      bzero((v8 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
}

void sub_1003D6448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&unk_100AD36E0, &unk_100822000);
  v35 = v4;
  v6 = sub_1007A3914();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100019288(v22, v36);
      }

      else
      {
        sub_100007484(v22, v36);
        v23 = v21;
      }

      sub_1007A2254();
      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v24 = sub_1007A3C44();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_100019288(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
}

void sub_1003D6790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100796C04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001F1160(&qword_100AD3658, &unk_10080CBC0);
  v40 = v4;
  v10 = sub_1007A3914();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v42 = *(v19 + 72);
      v26 = v25 + v42 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v44);
      }

      else
      {
        (*v38)(v43, v26, v44);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1003DDB28(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = sub_1007A2074();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v41)((*(v11 + 48) + v42 * v20), v43, v44);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1003D6B54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&qword_100ADAD38, &unk_100818DE0);
  v6 = sub_1007A3914();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_1007A3BF4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_33;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1003D6E1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1001F1160(a3, a4);
  v38 = v6;
  v8 = sub_1007A3914();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v28 = sub_1007A3C44();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1003D70E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_10079A4E4();
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079A404();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1001F1160(&qword_100ADADF0, &qword_10080CBD0);
  v48 = v4;
  v11 = sub_1007A3914();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_1003DDB28(&qword_100ADADF8, &type metadata accessor for CollectionRecommendationType, &protocol conformance descriptor for CollectionRecommendationType);
      v32 = sub_1007A2074();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1003D7588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100799B44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001F1160(&qword_100AD3628, &unk_10080CB90);
  v40 = v4;
  v10 = sub_1007A3914();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1003DDB28(&qword_100AD3610, &type metadata accessor for Methodology, &protocol conformance descriptor for Methodology);
      v26 = sub_1007A2074();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1003D7964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = sub_1001F1160(&qword_100ADAD60, &unk_100821FB0);
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v35 - v6;
  v7 = *v2;
  sub_1001F1160(&qword_100ADAD68, &unk_100818E10);
  v38 = v4;
  v8 = sub_1007A3914();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
      }

      v26 = sub_1007A3BF4();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      (*v16)((*(v9 + 56) + v24 * v18), v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1003D7CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1001F1160(a3, a4);
  v37 = v6;
  v8 = sub_1007A3914();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v27 = sub_1007A3C44();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1003D7F6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&unk_100ADAE50, &qword_100818EB0);
  v39 = v4;
  v6 = sub_1007A3914();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v39)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v42 = *(v27 + 32);
        v40 = v28;
        v41 = v29;
      }

      else
      {
        sub_100028940(v27, &v40);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v30 = sub_1007A3C44();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v40;
      v19 = v41;
      *(v17 + 32) = v42;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1003D823C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&qword_100AE12C8, &qword_100822048);
  v40 = v4;
  v6 = sub_1007A3914();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56);
      v24 = *(*(v5 + 48) + 8 * v22);
      v25 = v23 + 40 * v22;
      if (v40)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v43 = *(v25 + 32);
        v41 = v26;
        v42 = v27;
      }

      else
      {
        sub_100028940(v25, &v41);
        v28 = v24;
      }

      sub_1007A2254();
      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v29 = sub_1007A3C44();

      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v24;
      v16 = *(v7 + 56) + 40 * v15;
      v17 = v41;
      v18 = v42;
      *(v16 + 32) = v43;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
      v5 = v39;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1003D8524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&qword_100AD3BB0, &unk_10080CD50);
  v39 = v4;
  v6 = sub_1007A3914();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v41 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v39 & 1) == 0)
      {

        sub_1001F36B0(v25, v26, v27);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v28 = sub_1007A3C44();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v38;
      v12 = v40;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1003D8804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NoteHighlight(0);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1001F1160(&qword_100AD3600, &unk_100818E20);
  v41 = v4;
  v8 = sub_1007A3914();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_1002F900C(v28, v42, type metadata accessor for NoteHighlight);
      }

      else
      {
        sub_1002F8FA4(v28, v42, type metadata accessor for NoteHighlight);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v29 = sub_1007A3C44();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_1002F900C(v42, *(v9 + 56) + v27 * v17, type metadata accessor for NoteHighlight);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1003D8B90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1001F1160(a3, a4);
  v37 = v6;
  v8 = sub_1007A3914();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v27 = sub_1007A3C44();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1003D8E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&qword_100ADAE48, &qword_100818EA8);
  v38 = v4;
  v6 = sub_1007A3914();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 32 * v21;
      v25 = *(v24 + 8);
      v40 = *v24;
      v41 = *v22;
      v26 = *(v24 + 16);
      v39 = *(v24 + 24);
      if ((v38 & 1) == 0)
      {
        v27 = v26;
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v28 = sub_1007A3C44();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v40;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1003D9108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100796C04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001F1160(&qword_100ADAD80, &unk_100821FD0);
  v40 = v4;
  v10 = sub_1007A3914();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1003DDB28(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = sub_1007A2074();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1003D950C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1001F1160(&qword_100ADAD98, &unk_100818E30);
  v38 = v4;
  v9 = sub_1007A3914();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_1002F900C(v25, v7, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      }

      else
      {
        sub_1002F8FA4(v25, v7, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      }

      v26 = sub_1007A3BF4();
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_1002F900C(v7, *(v10 + 56) + v24 * v18, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1003D987C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v51 = a3(0);
  v10 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v43 - v11;
  v12 = *v5;
  sub_1001F1160(a4, a5);
  v48 = v9;
  v13 = sub_1007A3914();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = v5;
    v45 = (v10 + 16);
    v46 = v12;
    v47 = v10;
    v49 = (v10 + 32);
    v21 = v13 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v47 + 72);
      v33 = v28 + v32 * v27;
      if (v48)
      {
        (*v49)(v50, v33, v51);
      }

      else
      {
        (*v45)(v50, v33, v51);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v34 = sub_1007A3C44();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      (*v49)((*(v14 + 56) + v32 * v22), v50, v51);
      ++*(v14 + 16);
      v12 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
}

void sub_1003D9C50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100796BB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001F1160(&qword_100ADADC8, &unk_100818E40);
  v40 = v4;
  v10 = sub_1007A3914();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1003DDB28(&unk_100ADADD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v26 = sub_1007A2074();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1003DA040(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1001F1160(a3, a4);
  v37 = v6;
  v8 = sub_1007A3914();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v27 = sub_1007A3C44();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1003DA2F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1001F1160(a3, a4);
  v8 = sub_1007A3914();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      v24 = sub_1007A3BF4();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1003DA584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v45 = a3(0);
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v40 - v11;
  v12 = *v5;
  sub_1001F1160(a4, a5);
  v43 = v9;
  v13 = sub_1007A3914();
  v14 = v13;
  if (*(v12 + 16))
  {
    v40 = v8;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v10;
    v21 = (v10 + 32);
    v22 = v13 + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(*(v12 + 48) + 8 * v27);
      v29 = *(v10 + 72);
      v30 = *(v12 + 56) + v29 * v27;
      if (v43)
      {
        (*v21)(v44, v30, v45);
      }

      else
      {
        (*v41)(v44, v30, v45);
      }

      v31 = sub_1007A3BF4();
      v32 = -1 << *(v14 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v22 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v22 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v22 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v14 + 48) + 8 * v23) = v28;
      (*v21)((*(v14 + 56) + v29 * v23), v44, v45);
      ++*(v14 + 16);
      v10 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v8 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v12 + 32);
    v8 = v40;
    if (v39 >= 64)
    {
      bzero((v12 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
}

unint64_t sub_1003DA8D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_1003DA920(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100019288(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1003DA98C(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1003DA9D4(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1003DAA24(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = (a4[7] + 32 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1003DAAB4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_1003DAAFC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100019288(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1003DABA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t sub_1003DAC5C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1003DACA0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100019288(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1003DAD20(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_100796C04();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_1003DAE08(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10079A404();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_10079A4E4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1003DAF14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1001F1160(&qword_100ADAD60, &unk_100821FB0);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1003DAFCC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

unint64_t sub_1003DB024(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_1003DB090(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem(0);
  result = sub_1002F900C(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1003DB180(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1003DB254(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = a5(0);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
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

void sub_1003DB304(void *a1, char a2, void *a3)
{
  v35 = a1[2];
  if (!v35)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_10000E53C(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1003D4D6C(v15, v5 & 1);
    v10 = sub_10000E53C(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1007A3B24();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v18 = v10;
  sub_1002F15B4();
  v10 = v18;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v19 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v20 = (v19[6] + 16 * v10);
  *v20 = v7;
  v20[1] = v6;
  *(v19[7] + 8 * v10) = v8;
  v21 = v19[2];
  v14 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1007A3744(30);
    v36._object = 0x80000001008D1C40;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1007A23D4(v36);
    sub_1007A3894();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    sub_1007A23D4(v37);
    sub_1007A38A4();
    __break(1u);
    return;
  }

  v19[2] = v22;
  if (v35 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v23 = *v5;
      v24 = *a3;

      v25 = sub_10000E53C(v7, v6);
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v26;
      if (v24[3] < v29)
      {
        sub_1003D4D6C(v29, 1);
        v25 = sub_10000E53C(v7, v6);
        if ((v16 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v31 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v32 = (v31[6] + 16 * v25);
      *v32 = v7;
      v32[1] = v6;
      *(v31[7] + 8 * v25) = v23;
      v33 = v31[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v31[2] = v34;
      v5 += 3;
      if (v35 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void (*sub_1003DB680(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1003DBA38(v7);
  v7[9] = sub_1003DB78C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1003DB72C;
}

void sub_1003DB72C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1003DB78C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10000E53C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1002F18FC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1003DA040(v18, a4 & 1, &qword_100ADAEF0, &qword_100818F38);
    v13 = sub_10000E53C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1007A3B24();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1003DB8F4;
}

void sub_1003DB8F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_1002308AC(*(*v2[3] + 48) + 16 * v2[4]);
      sub_1002F9CFC();
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v13 = v2[1];
    v12 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v14 = (v6[6] + 16 * v5);
    *v14 = v13;
    v14[1] = v12;
    *(v6[7] + 8 * v5) = v3;
    v15 = v6[2];
    v11 = __OFADD__(v15, 1);
    v4 = v15 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_1003DBA38(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1003DBA60;
}

id sub_1003DBA6C(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100796F44();
  v66[3] = v4;
  v66[4] = &protocol witness table for FigaroProvider;
  v5 = sub_1002256EC(v66);
  (*(*(v4 - 8) + 32))(v5, a1, v4);
  v62 = OBJC_IVAR___BKContextMenuProvider_swipeActionItems;
  sub_1001F1160(&qword_100AD1E60, &unk_10080B820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10080B6A0;
  ThisActionItem = type metadata accessor for ReadThisActionItem(0);
  v54 = sub_1003DDB28(&qword_100AD1E68, type metadata accessor for ReadThisActionItem, &unk_100843770);
  *(v6 + 32) = ThisActionItem;
  *(v6 + 40) = v54;
  v59 = type metadata accessor for MarkAsFinishedActionItem(0);
  v58 = sub_1003DDB28(&qword_100AD1E70, type metadata accessor for MarkAsFinishedActionItem, &unk_100830DA8);
  *(v6 + 48) = v59;
  *(v6 + 56) = v58;
  v57 = type metadata accessor for MarkAsStillReadingActionItem(0);
  v56 = sub_1003DDB28(&qword_100AD1E78, type metadata accessor for MarkAsStillReadingActionItem, &unk_10083F848);
  *(v6 + 64) = v57;
  *(v6 + 72) = v56;
  ActionItem = type metadata accessor for AddToWantToReadActionItem(0);
  v8 = sub_1003DDB28(&qword_100AD1E80, type metadata accessor for AddToWantToReadActionItem, &unk_1008146A8);
  *(v6 + 80) = ActionItem;
  *(v6 + 88) = v8;
  v61 = type metadata accessor for RemoveFromWantToReadActionItem(0);
  v60 = sub_1003DDB28(&qword_100AD1E88, type metadata accessor for RemoveFromWantToReadActionItem, &unk_10082D798);
  *(v6 + 96) = v61;
  *(v6 + 104) = v60;
  v9 = type metadata accessor for ExplicitDeclineActionItem(0);
  v10 = sub_1003DDB28(&qword_100AD1E90, type metadata accessor for ExplicitDeclineActionItem, &protocol conformance descriptor for ExplicitDeclineActionItem);
  *(v6 + 112) = v9;
  *(v6 + 120) = v10;
  v11 = type metadata accessor for AppShareActionItem(0);
  *(v6 + 128) = v11;
  *(v6 + 136) = &protocol witness table for ShareActionItem;
  v52 = type metadata accessor for ListenSampleActionItem(0);
  v51 = sub_1003DDB28(&qword_100AD1E98, type metadata accessor for ListenSampleActionItem, &unk_10083CF40);
  *(v6 + 144) = v52;
  *(v6 + 152) = v51;
  SampleActionItem = type metadata accessor for ReadSampleActionItem(0);
  v53 = sub_1003DDB28(&qword_100AD1EA0, type metadata accessor for ReadSampleActionItem, &unk_100841FD0);
  *(v6 + 160) = SampleActionItem;
  *(v6 + 168) = v53;
  *&a2[v62] = v6;
  v63 = OBJC_IVAR___BKContextMenuProvider_actionItems;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10080B6B0;
  v14 = type metadata accessor for AddToCollectionActionItem(0);
  v15 = sub_1003DDB28(&qword_100AD1EA8, type metadata accessor for AddToCollectionActionItem, &unk_1008122D8);
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  *(v13 + 48) = ActionItem;
  *(v13 + 56) = v8;
  *(v13 + 64) = v11;
  *(v13 + 72) = &protocol witness table for ShareActionItem;
  v16 = type metadata accessor for CancelDownloadActionItem(0);
  v17 = sub_1003DDB28(&qword_100AD1EB0, type metadata accessor for CancelDownloadActionItem, &unk_100834038);
  *(v13 + 80) = v16;
  *(v13 + 88) = v17;
  v18 = sub_1001F194C();
  *(v13 + 96) = &type metadata for CloseAudiobookMiniPlayerActionItem;
  *(v13 + 104) = v18;
  v19 = type metadata accessor for CopyLinkActionItem(0);
  v20 = sub_1003DDB28(&qword_100AD1EC0, type metadata accessor for CopyLinkActionItem, &unk_10083A250);
  *(v13 + 112) = v19;
  *(v13 + 120) = v20;
  v21 = type metadata accessor for DislikeActionItem(0);
  v22 = sub_1003DDB28(&qword_100AD1EC8, type metadata accessor for DislikeActionItem, &unk_10083CE10);
  *(v13 + 128) = v21;
  *(v13 + 136) = v22;
  v23 = type metadata accessor for DownloadActionItem(0);
  v24 = sub_1003DDB28(&qword_100AD1ED0, type metadata accessor for DownloadActionItem, &unk_100824C70);
  *(v13 + 144) = v23;
  *(v13 + 152) = v24;
  v25 = type metadata accessor for EditFinishedDateActionItem(0);
  v26 = sub_1003DDB28(&qword_100AD1ED8, type metadata accessor for EditFinishedDateActionItem, &unk_1008416A8);
  *(v13 + 160) = v25;
  *(v13 + 168) = v26;
  v27 = type metadata accessor for GetSampleActionItem(0);
  v28 = sub_1003DDB28(&qword_100AD1EE0, type metadata accessor for GetSampleActionItem, &unk_10081FA48);
  *(v13 + 176) = v27;
  *(v13 + 184) = v28;
  *(v13 + 192) = ThisActionItem;
  *(v13 + 200) = v54;
  *(v13 + 208) = v9;
  *(v13 + 216) = v10;
  v29 = type metadata accessor for GiftActionItem(0);
  v30 = sub_1003DDB28(&qword_100AD1EE8, type metadata accessor for GiftActionItem, &unk_1008253C0);
  *(v13 + 224) = v29;
  *(v13 + 232) = v30;
  v31 = type metadata accessor for MultipleGiftActionItem(0);
  v32 = sub_1003DDB28(&qword_100AD1EF0, type metadata accessor for MultipleGiftActionItem, &unk_100835E38);
  *(v13 + 240) = v31;
  *(v13 + 248) = v32;
  *(v13 + 256) = sub_100796F54();
  *(v13 + 264) = &protocol witness table for LikeActionItem;
  *(v13 + 272) = v52;
  *(v13 + 280) = v51;
  *(v13 + 288) = v59;
  *(v13 + 296) = v58;
  *(v13 + 304) = v57;
  *(v13 + 312) = v56;
  v33 = type metadata accessor for OpenProductPageActionItem(0);
  v34 = sub_1003DDB28(&qword_100AD1EF8, type metadata accessor for OpenProductPageActionItem, &unk_100830398);
  *(v13 + 320) = v33;
  *(v13 + 328) = v34;
  *(v13 + 336) = sub_100797534();
  *(v13 + 344) = &protocol witness table for RateAndReviewActionItem;
  *(v13 + 352) = SampleActionItem;
  *(v13 + 360) = v53;
  v35 = type metadata accessor for RemoveActionItem(0);
  v36 = sub_1003DDB28(&qword_100AD1F00, type metadata accessor for RemoveActionItem, &unk_100840460);
  *(v13 + 368) = v35;
  *(v13 + 376) = v36;
  v37 = type metadata accessor for RemoveFromContinueActionItem(0);
  v38 = sub_1003DDB28(&qword_100AD1F08, type metadata accessor for RemoveFromContinueActionItem, &unk_10081EA68);
  *(v13 + 384) = v37;
  *(v13 + 392) = v38;
  *(v13 + 400) = v61;
  *(v13 + 408) = v60;
  v39 = type metadata accessor for RenameActionItem(0);
  v40 = sub_1003DDB28(&qword_100AD1F10, type metadata accessor for RenameActionItem, &unk_100817100);
  *(v13 + 416) = v39;
  *(v13 + 424) = v40;
  v41 = type metadata accessor for ReportAnIssueActionItem(0);
  v42 = sub_1003DDB28(&qword_100AD1F18, type metadata accessor for ReportAnIssueActionItem, &unk_10080ECB0);
  *(v13 + 432) = v41;
  *(v13 + 440) = v42;
  v43 = type metadata accessor for ViewSupplementalContentActionItem(0);
  v44 = sub_1003DDB28(&qword_100AD1F20, type metadata accessor for ViewSupplementalContentActionItem, &unk_100828F70);
  *(v13 + 448) = v43;
  *(v13 + 456) = v44;
  *(v13 + 464) = sub_100797544();
  *(v13 + 472) = &protocol witness table for SharedWithYouActionItem;
  v45 = type metadata accessor for InternalTapToRadarActionItem(0);
  v46 = sub_1003DDB28(&qword_100AD1F28, type metadata accessor for InternalTapToRadarActionItem, &unk_100841508);
  *(v13 + 480) = v45;
  *(v13 + 488) = v46;
  v47 = type metadata accessor for InternalEOBExperienceItem(0);
  v48 = sub_1003DDB28(&qword_100AD1F30, type metadata accessor for InternalEOBExperienceItem, &unk_10083A748);
  *(v13 + 496) = v47;
  *(v13 + 504) = v48;
  *&a2[v63] = v13;
  sub_100009864(v66, &a2[OBJC_IVAR___BKContextMenuProvider_figaroProvider]);
  v65.receiver = a2;
  v65.super_class = ObjectType;
  v49 = objc_msgSendSuper2(&v65, "init");
  sub_1000074E0(v66);
  return v49;
}

id sub_1003DC344(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  a4[OBJC_IVAR____TtC5Books17ContextActionData_supportsReportConcernInJS] = 0;
  v7 = OBJC_IVAR____TtC5Books17ContextActionData_dataModel;
  *&a4[OBJC_IVAR____TtC5Books17ContextActionData_dataModel] = a1;
  v8 = a1;
  v9 = sub_1003DC4BC(v8, a2, a3);
  *&a4[OBJC_IVAR____TtC5Books17ContextActionData__assetInfos] = v9;
  if (v9 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_3;
    }

LABEL_5:

    v12 = sub_100797474();
    (*(*(v12 - 8) + 8))(a3, v12);

    type metadata accessor for ContextActionData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v14.receiver = a4;
  v14.super_class = type metadata accessor for ContextActionData();
  v10 = objc_msgSendSuper2(&v14, "init");

  v11 = sub_100797474();
  (*(*(v11 - 8) + 8))(a3, v11);
  return v10;
}

void *sub_1003DC4BC(uint64_t a1, void *a2, uint64_t a3)
{
  v20[3] = sub_10000A7C4(0, &qword_100AD9BD0, BKLibraryManager_ptr);
  v20[4] = &off_100A300A0;
  v20[0] = a2;
  v5 = sub_100797474();
  v19[3] = v5;
  v19[4] = &protocol witness table for MenuCoverImageProvider;
  v6 = sub_1002256EC(v19);
  (*(*(v5 - 8) + 16))(v6, a3, v5);
  v7 = a2;
  v8 = sub_100797444();
  v10 = v8;
  if (v11)
  {
    __chkstk_darwin(v8);
    v18[2] = v20;
    v18[3] = v19;
    v13 = v12;
    v14 = sub_100401368(sub_1003DDB0C, v18, v10);
    sub_1002DB384(v10, v13, 1);
  }

  else
  {

    v15 = sub_1005F9304(v10, v20, v19);
    if (v15)
    {
      v16 = v15;
      sub_1001F1160(&unk_100AD8160, &unk_100813160);
      v14 = swift_allocObject();
      *(v14 + 1) = xmmword_100811390;
      v14[4] = v16;
    }

    else
    {

      v14 = _swiftEmptyArrayStorage;
    }
  }

  sub_1000074E0(v20);
  sub_1000074E0(v19);
  return v14;
}

uint64_t sub_1003DC674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1002256EC(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1000077C0(&v12, v10 + 40 * a1 + 32);
}

void sub_1003DC70C(unint64_t a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v15 = _swiftEmptyArrayStorage;
    v7 = &v15;
    sub_1007A37F4();
    if (i < 0)
    {
      __break(1u);
LABEL_18:

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = sub_1007A3784();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v10 = *(a1 + 8 * j + 32);
      }

      v7 = v10;
      v13 = v10;
      sub_1003D3668(&v13, a2, a3, &v14);
      if (v4)
      {
        goto LABEL_18;
      }

      v4 = 0;

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_1003DC87C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    do
    {
      v26 = v8;
      for (i = v7; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }

        v10 = *(sub_1001F1160(&qword_100AE12D0, &unk_1008220B0) - 8);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_19;
        }

        sub_1003D0AF8(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, a3, &v23);
        if (v3)
        {

          return;
        }

        if (v24)
        {
          break;
        }

        if (v7 == v4)
        {
          return;
        }
      }

      v22 = v24;
      v20 = v23;
      v21 = v25;
      v11 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10066B7D4(0, v11[2] + 1, 1, v11);
      }

      v12 = v11;
      v13 = v11[2];
      v14 = v12;
      v15 = v12[3];
      v16 = (v13 + 1);
      v17 = v22;
      if (v13 >= v15 >> 1)
      {
        v26 = (v13 + 1);
        v19 = sub_10066B7D4((v15 > 1), v13 + 1, 1, v14);
        v17 = v22;
        v16 = v26;
        v14 = v19;
      }

      v14[2] = v16;
      v18 = &v14[4 * v13];
      v8 = v14;
      v18[4] = v20;
      *(v18 + 5) = v17;
      v18[7] = v21;
    }

    while (v7 != v4);
  }
}

uint64_t sub_1003DCA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  sub_100797894();
  v3 = sub_100797874();
  v4 = sub_100797844();

  if (v4)
  {
    v5 = [v4 highlightMenu];
    v6 = [v5 children];

    sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
    sub_1007A25E4();

    sub_1001F1160(&unk_100AF2640, &unk_1008220E0);
    sub_1002CD1B4(&qword_100AE12E8, &unk_100AF2640, &unk_1008220E0);
    LOBYTE(v5) = sub_1007A28A4();

    if (v5)
    {
      v7 = [v4 highlightMenu];
      v8 = [v7 children];

      v9 = sub_1007A25E4();
      return v9;
    }

    if (qword_100AD1520 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AE1248);
    v12 = sub_10079ACC4();
    v13 = sub_1007A29B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "highlightMenu empty for highlight", v14, 2u);
    }
  }

  return 0;
}

uint64_t sub_1003DCCC0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  type metadata accessor for ContextActionData();
  sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData, &unk_100818764);
  sub_1007977A4();
  if (v12 == 1)
  {
    sub_1001FF70C(v11);
    return 0;
  }

  else
  {
    sub_1000077C0(v11, v14);
    sub_10000E3E8(v14, v15);
    v4 = sub_1007975F4();
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      sub_100797894();
      v7 = sub_100797874();
      sub_10000E3E8(v14, v15);
      sub_100797674();
      v8 = sub_100797834();
      v6 = v9;

      v4 = v8;
    }

    v10 = sub_1003DCA6C(v4, v6, a2);

    sub_1000074E0(v14);
    return v10;
  }
}

uint64_t _s5Books19ContextMenuProviderC022analyticsAssetPropertyD03forSo07BAAssetgD0_pSg11BookStoreUI0B15ActionDataModelC_tF_0(void *a1, double a2)
{
  v3 = sub_100797474();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v19[-v8 - 8];
  v10 = objc_opt_self();
  v11 = a1;
  v12 = [v10 defaultManager];
  sub_100797464();
  v13 = objc_allocWithZone(type metadata accessor for ContextActionData());
  (*(v4 + 16))(v6, v9, v3);
  v14 = sub_1003DC344(v11, v12, v6, v13);
  (*(v4 + 8))(v9, v3);
  if (!v14)
  {
    return 0;
  }

  v23 = v14;
  sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData, &unk_100818764);
  sub_1007977A4();
  if (v22)
  {

    sub_1001FF70C(v21);
    return 0;
  }

  sub_1000077C0(v21, v20);
  sub_100009864(v20, v19);
  v16 = objc_allocWithZone(sub_100797954());
  v17 = sub_100797944();

  sub_1000074E0(v20);
  return v17;
}

uint64_t sub_1003DD0A0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = &v17[-v9];
  type metadata accessor for AppShareActionItem(0);
  swift_allocObject();
  sub_1003DD044(a2, v22);
  v21[3] = type metadata accessor for ContextActionData();
  v21[4] = sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData, &unk_100818764);
  v21[0] = a1;
  v20[3] = &type metadata for ContextMenuPresentationContext;
  v20[4] = sub_1003DD65C();
  v20[0] = swift_allocObject();
  sub_1003DDA00(v22, v20[0] + 16);
  sub_100009864(v21, v19);
  sub_100009864(v20, &v18);
  sub_100009864(a4, v17);
  v11 = a3;
  v12 = a1;
  v13 = sub_100796FA4();
  v14 = sub_1007A2744();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_100009864(v21, v19);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1000077C0(v19, v15 + 32);
  sub_1003457A0(0, 0, v10, &unk_1008220C0, v15);

  sub_1000074E0(a4);
  sub_1003DD2F0(a2);
  sub_1000074E0(v20);
  sub_1000074E0(v21);
  return v13;
}

id sub_1003DD344(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v28[3] = type metadata accessor for ContextActionData();
  v28[4] = sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData, &unk_100818764);
  v28[0] = a1;
  v27[3] = &type metadata for ContextMenuPresentationContext;
  v27[4] = sub_1003DD65C();
  v27[0] = swift_allocObject();
  sub_1003DDA00(a2, v27[0] + 16);
  v8 = type metadata accessor for RemoveActionItem(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC5Books16RemoveActionItem_attributes] = 2;
  v10 = OBJC_IVAR____TtC5Books16RemoveActionItem_type;
  v11 = enum case for ContextActionType.remove(_:);
  v12 = sub_100797144();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  sub_100009864(v28, &v9[OBJC_IVAR____TtC5Books16RemoveActionItem_data]);
  sub_100009864(v27, &v9[OBJC_IVAR____TtC5Books16RemoveActionItem_context]);
  *&v9[OBJC_IVAR____TtC5Books16RemoveActionItem_tracker] = a3;
  sub_100009864(a4, &v9[OBJC_IVAR____TtC5Books16RemoveActionItem_figaroProvider]);
  v13 = objc_opt_self();
  v14 = a3;
  v15 = [v13 delegate];
  v16 = [v15 serviceCenter];

  v17 = [objc_opt_self() defaultManager];
  v18 = [v13 delegate];
  v19 = [v18 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v21 = result;
    v22 = [objc_opt_self() defaultHelper];
    v23 = &v9[OBJC_IVAR____TtC5Books16RemoveActionItem_libraryOperationProvider];
    *(v23 + 3) = &type metadata for MenuLibraryOperationProvider;
    *(v23 + 4) = &off_100A266E8;
    v24 = swift_allocObject();
    *v23 = v24;
    v24[2] = v16;
    v24[3] = v17;
    v24[4] = v19;
    v24[5] = v21;
    v24[6] = v22;
    v26.receiver = v9;
    v26.super_class = v8;
    v25 = objc_msgSendSuper2(&v26, "init");
    sub_1000074E0(a4);
    sub_1000074E0(v27);
    sub_1000074E0(v28);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1003DD65C()
{
  result = qword_100AE6F70;
  if (!qword_100AE6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6F70);
  }

  return result;
}

uint64_t sub_1003DD6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE1278, &unk_100821EB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DD764()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009A34;

  return sub_1003D3B74(v2, v3, v5, v4);
}

uint64_t sub_1003DD824()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1003DD874()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009A34;

  return sub_1003CFB00(v2, v3, v5, v4);
}

uint64_t sub_1003DD934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_10069E6AC(a1, v4, v5, v6);
}

uint64_t sub_1003DDA5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_100260A78(a1, v4, v5, v1 + 32);
}

uint64_t sub_1003DDB28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003DDBA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = a1;
  v5 = [v4 title];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1007A2254();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [v4 image];

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    if (!v9 && !v10)
    {

LABEL_37:
      swift_unknownObjectWeakDestroy();
      result = swift_unknownObjectWeakDestroy();
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 1;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 104) = 0u;
      return result;
    }

    v16 = [v4 menu];
    if (!v16)
    {
      v17 = [v4 menuRepresentation];
      if (v17)
      {
        v18 = v17;
        objc_opt_self();
        isa = swift_dynamicCastObjCClass();
        if (isa)
        {
LABEL_27:
          v16 = isa;
          goto LABEL_28;
        }
      }

      v16 = [v4 menuRepresentation];
      if (v16)
      {
        if (v9)
        {
          v20 = v7;
        }

        else
        {
          v20 = 0;
        }

        v40 = v20;
        if (v9)
        {
          v21 = v9;
        }

        else
        {
          v21 = 0xE000000000000000;
        }

        sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
        sub_1001F1160(&unk_100AD8160, &unk_100813160);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_100811390;
        *(v22 + 32) = v16;

        v23 = v10;
        v56._countAndFlagsBits = v40;
        v56._object = v21;
        v58.value._countAndFlagsBits = 0;
        v58.value._object = 0;
        v55.value.super.isa = v10;
        v55.is_nil = 0;
        v24.value = 1;
        isa = sub_1007A30C4(v56, v58, v55, v24, 0xFFFFFFFFFFFFFFFFLL, v22, v40).super.super.isa;
        goto LABEL_27;
      }
    }

LABEL_28:
    swift_getObjectType();
    sub_1001F1160(&unk_100AE1410, &unk_100822260);
    sub_1007A22F4();
    v57._countAndFlagsBits = 0x2E49557466697753;
    v57._object = 0xE800000000000000;
    v25 = sub_1007A2474(v57);

    if (v25)
    {
      swift_unknownObjectWeakAssign();
    }

    v41 = 0;
    [v4 width];
    v43 = v26;
    [v4 _minimumWidth];
    v44 = v27;
    [v4 _maximumWidth];
    v45 = v28;
    v50 = 0;
    v52 = 0;
    v53 = v16;
    v13 = [objc_allocWithZone(type metadata accessor for EllipsisButtonAXAttributesProvider()) init];
    v29 = [objc_allocWithZone(TUIAXAttributes) initWithAXAttributes:v13];
    goto LABEL_42;
  }

  v12 = v11;
  v13 = v4;
  v14 = [v12 buttonType];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v15 = 0;
      goto LABEL_33;
    }

LABEL_14:

    goto LABEL_37;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  if (v14 != 1)
  {
    if (v14 == 2)
    {
      v15 = 2;
      goto LABEL_33;
    }

    goto LABEL_14;
  }

  v15 = 1;
LABEL_33:
  v30 = [v12 attributedTitle];
  v31 = v30;
  if (!v9 && !v30 && !v10)
  {

    goto LABEL_37;
  }

  LOBYTE(v41) = v15;
  v33 = [v12 buttonRole];
  if (v33 >= 4)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  HIBYTE(v41) = v34;
  [v12 buttonWidth];
  v43 = v35;
  [v12 minButtonWidth];
  v44 = v36;
  [v12 maxButtonWidth];
  v45 = v37;
  v50 = v31;
  v52 = [v12 menuModel];
  v53 = 0;
  v29 = [v12 axAttributes];
LABEL_42:
  v38 = v29;

  v54 = v38;
  v42 = [v4 isEnabled];
  v46 = [v4 target];
  v39 = [v4 action];

  v47 = v39;
  v48 = v7;
  v49 = v9;
  v51 = v10;
  sub_1003DEBC4(&v41, a2);
  return sub_1003DEBFC(&v41);
}

id sub_1003DE228()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axHasNonDefaultAttributess] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axDisabled] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_isAXElement] = 1;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axTouchContainer] = 0;
  v26 = &v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axLabel];
  sub_1007A2154();
  sub_100796C94();
  (*(v9 + 16))(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v4, v7, v1);
  v17 = sub_1007A22D4(v11, 0, 0, v16, v4, "Accessibility string for a 'more' button", 40, 2);
  v19 = v18;
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  v20 = v26;
  *v26 = v17;
  v20[1] = v19;
  v21 = &v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axValue];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axHint];
  *v22 = 0;
  v22[1] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axButton] = 1;
  v23 = &v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axImage] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axHeading] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axAdjustable] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axToggle] = 0;
  v0[OBJC_IVAR____TtC5BooksP33_634BBAB6B47BDD6BD9B349320160AC7834EllipsisButtonAXAttributesProvider_axStaticText] = 0;
  v24 = type metadata accessor for EllipsisButtonAXAttributesProvider();
  v27.receiver = v0;
  v27.super_class = v24;
  return objc_msgSendSuper2(&v27, "init");
}

id sub_1003DE598()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EllipsisButtonAXAttributesProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003DE680(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1003DE69C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1003DE6E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003DE728(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

BOOL sub_1003DE754(double *a1, double *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2)
  {
    if (v2 != v3)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v4 = *(a2 + 5);
  if (*(a1 + 5))
  {
    if (!v4)
    {
      return 0;
    }

    v5 = a1;
    v6 = a2;
    v7 = sub_100796E94();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 7);
  v10 = *(a2 + 7);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 6) != *(a2 + 6) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1007A3AB4();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = a1;
    v18 = a2;
    sub_10000A7C4(0, &unk_100AE1400, NSAttributedString_ptr);
    v19 = v16;
    v20 = v15;
    v21 = sub_1007A3184();

    a1 = v17;
    a2 = v18;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v22 = *(a1 + 9);
  v23 = *(a2 + 9);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = a1;
    v25 = a2;
    sub_10000A7C4(0, &qword_100ADDB48, UIImage_ptr);
    v26 = v23;
    v27 = v22;
    v28 = sub_1007A3184();

    a1 = v24;
    a2 = v25;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v29 = *(a1 + 11);
  v30 = *(a2 + 11);
  v40 = a1;
  v41 = a2;
  if (!v29)
  {
    if (!v30)
    {
      goto LABEL_36;
    }

    return 0;
  }

  if (!v30)
  {
    return 0;
  }

  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  v31 = v30;
  v32 = v29;
  v33 = sub_1007A3184();

  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v34 = *(v40 + 12);
  v35 = *(v41 + 12);
  result = (v34 | v35) == 0;
  if (v34)
  {
    if (v35)
    {
      sub_10000A7C4(0, &qword_100AE13F8, TUIAXAttributes_ptr);
      v37 = v35;
      v38 = v34;
      v39 = sub_1007A3184();

      return v39 & 1;
    }
  }

  return result;
}

uint64_t sub_1003DEA40(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 != 1)
        {
          return 0;
        }

LABEL_21:
        sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
        return sub_1007A3184() & 1;
      }

      if (a6 == 2)
      {
        goto LABEL_21;
      }

      return 0;
    }

    if (a6)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {

      return sub_1007A3AB4();
    }

    return 1;
  }

  if (a3 == 3)
  {
    if (a6 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 4)
    {
      if (a1 | a2)
      {
        if (a1 ^ 1 | a2)
        {
          if (a6 != 5 || a4 != 2 || a5)
          {
            return 0;
          }
        }

        else if (a6 != 5 || a4 != 1 || a5)
        {
          return 0;
        }
      }

      else if (a6 != 5 || a5 | a4)
      {
        return 0;
      }

      return 1;
    }

    if (a6 != 4)
    {
      return 0;
    }
  }

  return sub_1004A0F04(a1, a4);
}

uint64_t sub_1003DEC2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1003DEC88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1003DED2C()
{
  result = qword_100AE1420;
  if (!qword_100AE1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1420);
  }

  return result;
}

unint64_t sub_1003DED84()
{
  result = qword_100AE1428;
  if (!qword_100AE1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1428);
  }

  return result;
}

id sub_1003DEDD8(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView;
  type metadata accessor for AudiobookTOCHeaderView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView;
  v6 = [objc_allocWithZone(UITableView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v5] = v6;
  v7 = &v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex];
  *v7 = 0;
  v7[8] = 1;
  *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerHeightConstraint] = 0;
  v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_scrollAtTop] = 2;
  *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_cancellables] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_viewModel] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AudiobookTOCViewController();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
  sub_10000A7C4(0, &qword_100AE15B0, UITraitCollection_ptr);
  v10 = v9;
  sub_1007A2E04();
  sub_1007A2C44();

  swift_unknownObjectRelease();

  return v10;
}

id sub_1003DEFA0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AudiobookTOCViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003DF128(uint64_t a1)
{
  v2 = v1;
  v88.receiver = v1;
  v88.super_class = type metadata accessor for AudiobookTOCViewController();
  objc_msgSendSuper2(&v88, "viewDidLoad");
  v3 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v3 configureWithTransparentBackground];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"didSelectDismissButton"];
  v5 = sub_1007A2214();
  [v4 setAccessibilityIdentifier:v5];

  v6 = [v2 navigationItem];
  [v6 setRightBarButtonItem:v4];

  v7 = [v2 navigationItem];
  [v7 setStandardAppearance:v3];

  v8 = *&v2[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v86);

  v9 = v87;
  v10 = &v8[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_title];
  *v10 = v86;
  *(v10 + 1) = v9;

  v11 = *&v8[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel];

  v12 = sub_1007A2214();

  [v11 setText:v12];

  sub_10042CFD8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v86);

  v13 = v87;
  v14 = &v8[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_author];
  *v14 = v86;
  *(v14 + 1) = v13;

  v15 = *&v8[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel];

  v16 = sub_1007A2214();

  [v15 setText:v16];

  sub_10042CFD8();
  v17 = sub_1004C1DB0(0);
  v18 = &v8[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining];
  *v18 = v17;
  v18[1] = v19;

  v20 = *&v8[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel];

  v21 = sub_1007A2214();

  [v20 setText:v21];

  sub_10042CFD8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v86);

  v22 = v86[2];

  *&v8[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentCount] = v22;
  sub_10042C840();
  *&v8[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_delegate + 8] = &off_100A19FA0;
  swift_unknownObjectWeakAssign();
  v23 = *&v2[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView];
  v24 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithScrollView:v23 edge:1 style:0];
  [v8 addInteraction:v24];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v86);

  v25 = v86;
  sub_1003E24C4(v86);

  [v23 setRowHeight:UITableViewAutomaticDimension];
  [v23 setContentInsetAdjustmentBehavior:2];
  [v23 setAutomaticallyAdjustsScrollIndicatorInsets:0];
  [v23 setEstimatedRowHeight:57.0];
  [v23 setDataSource:v2];
  [v23 setDelegate:v2];
  type metadata accessor for AudiobookTOCCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = sub_1007A2214();
  [v23 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v27];

  v28 = [objc_allocWithZone(UIView) init];
  [v23 setTableHeaderView:v28];

  v29 = [objc_allocWithZone(UIView) init];
  [v23 setTableFooterView:v29];

  [v23 directionalLayoutMargins];
  [v23 setDirectionalLayoutMargins:?];
  v30 = [v2 view];
  if (!v30)
  {
    __break(1u);
    goto LABEL_13;
  }

  v31 = v30;
  v32 = [objc_opt_self() bc_booksBackground];
  [v31 setBackgroundColor:v32];

  v33 = [v2 view];
  if (!v33)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v34 = v33;
  [v33 addSubview:v23];

  v35 = [v2 view];
  if (!v35)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = v35;
  v84 = v4;
  v85 = v3;
  [v35 addSubview:v8];

  [v8 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v38 = v37;
  v39 = [v8 heightAnchor];
  v40 = [v39 constraintEqualToConstant:v38];

  v41 = *&v2[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerHeightConstraint];
  *&v2[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerHeightConstraint] = v40;
  v42 = v40;

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100813130;
  v44 = [v8 topAnchor];
  v45 = [v2 view];
  if (!v45)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v46 = v45;
  v47 = [v45 topAnchor];

  v48 = [v44 constraintEqualToAnchor:v47];
  *(v43 + 32) = v48;
  v49 = [v8 leadingAnchor];
  v50 = [v2 view];
  if (!v50)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v51 = v50;
  v52 = [v50 leadingAnchor];

  v53 = [v49 constraintEqualToAnchor:v52];
  *(v43 + 40) = v53;
  v54 = [v8 trailingAnchor];
  v55 = [v2 view];
  if (!v55)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v56 = v55;
  v57 = [v55 trailingAnchor];

  v58 = [v54 constraintEqualToAnchor:v57];
  *(v43 + 48) = v58;
  *(v43 + 56) = v42;
  v59 = v42;
  v60 = [v23 topAnchor];
  v61 = [v2 view];
  if (!v61)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v62 = v61;
  v63 = [v61 topAnchor];

  v64 = [v60 constraintEqualToAnchor:v63];
  *(v43 + 64) = v64;
  v65 = [v23 leadingAnchor];
  v66 = [v2 view];
  if (!v66)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v67 = v66;
  v68 = [v66 leadingAnchor];

  v69 = [v65 constraintEqualToAnchor:v68];
  *(v43 + 72) = v69;
  v70 = [v23 trailingAnchor];
  v71 = [v2 view];
  if (!v71)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v72 = v71;
  v73 = [v71 trailingAnchor];

  v74 = [v70 constraintEqualToAnchor:v73];
  *(v43 + 80) = v74;
  v75 = [v23 bottomAnchor];
  v76 = [v2 view];
  if (v76)
  {
    v77 = v76;
    v78 = objc_opt_self();
    v79 = [v77 bottomAnchor];

    v80 = [v75 constraintEqualToAnchor:v79];
    *(v43 + 88) = v80;
    sub_10000A7C4(0, &qword_100AE9010, NSLayoutConstraint_ptr);
    isa = sub_1007A25D4().super.isa;

    [v78 activateConstraints:isa];

    [v23 verticalScrollIndicatorInsets];
    [v23 setVerticalScrollIndicatorInsets:v38];
    [v23 setContentInset:{v38, 0.0, 0.0, 0.0}];
    v82 = [objc_opt_self() defaultCenter];
    v83 = [objc_opt_self() sharedApplication];
    [v82 addObserver:v2 selector:"onAppWillEnterForegroundWithNotification:" name:UIApplicationWillEnterForegroundNotification object:v83];

    return;
  }

LABEL_21:
  __break(1u);
}

double sub_1003DFD80(char a1)
{
  v2 = v1;
  v4 = sub_100796E74();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for AudiobookTOCViewController();
  v35.receiver = v2;
  v35.super_class = v13;
  objc_msgSendSuper2(&v35, "viewWillAppear:", a1 & 1);
  v14 = *&v2[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v34);

  v15 = &v2[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex];
  *v15 = v34;
  v15[8] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v34);

  v16 = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v34);

  if (v34 >> 62)
  {
    v17 = sub_1007A38D4();
  }

  else
  {
    v17 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 < v17)
  {
    v18 = *&v2[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView];
    sub_100796E24();
    isa = sub_100796DF4().super.isa;
    v32 = v5;
    v20 = v5 + 8;
    (*(v5 + 8))(v12, v4);
    v31 = v18;
    [v18 scrollToRowAtIndexPath:isa atScrollPosition:1 animated:0];

    sub_1001F1160(&qword_100AE1508, &qword_10083AAE0);
    v21 = *(v5 + 72);
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10080B690;
    sub_100796E24();
    if (v16 < 1)
    {
      goto LABEL_7;
    }

    sub_100796E24();
    v20 = *(v23 + 16);
    v24 = *(v23 + 24);
    KeyPath = v20 + 1;
    if (v20 >= v24 >> 1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      *(v23 + 16) = KeyPath;
      (*(v32 + 32))(v23 + v22 + v20 * v21, v9, v4);
LABEL_7:
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      sub_10079B9A4(&v34);

      if (v34 >> 62)
      {
        v20 = v34;
        v9 = sub_1007A38D4();
      }

      else
      {
        v9 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = (v9 - 1);
      if (!__OFSUB__(v9, 1))
      {
        break;
      }

      __break(1u);
LABEL_19:
      v23 = sub_10066B92C((v24 > 1), KeyPath, 1, v23);
    }

    if (v16 < v24)
    {
      v26 = v33;
      sub_100796E24();
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        v23 = sub_10066B92C((v27 > 1), v28 + 1, 1, v23);
      }

      *(v23 + 16) = v28 + 1;
      (*(v32 + 32))(v23 + v22 + v28 * v21, v26, v4);
    }

    v29 = sub_1007A25D4().super.isa;

    [v31 reloadRowsAtIndexPaths:v29 withRowAnimation:5];
  }

  sub_1003E0244();
  return sub_1003E05F0(v14);
}

double sub_1003E0244()
{
  v1 = sub_100796E74();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v6 = *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView);
  v7 = [v6 indexPathsForVisibleRows];
  if (v7)
  {
    v9 = v7;
    v10 = sub_1007A25E4();

    v11 = v10;
    v12 = *(v10 + 16);
    if (v12)
    {
      v15 = *(v2 + 16);
      v14 = v2 + 16;
      v13 = v15;
      v28[1] = v11;
      v28[2] = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_viewModel;
      v16 = v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v17 = *(v14 + 56);
      v32 = (v14 - 8);
      v33 = v17;
      v29 = v15;
      v30 = v1;
      v15(v5, v16, v1);
      while (1)
      {
        isa = sub_100796DF4().super.isa;
        v19 = [v6 cellForRowAtIndexPath:isa];

        if (!v19)
        {
          goto LABEL_6;
        }

        type metadata accessor for AudiobookTOCCell();
        v20 = swift_dynamicCastClass();
        if (!v20)
        {
          goto LABEL_5;
        }

        v21 = v20;
        v22 = v6;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4(&v35);

        v23 = v35;
        if (v23 == sub_100796E34())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10079B9A4(&v34);

          v24 = (v34 & 1) == 0;
        }

        else
        {
          v24 = 2;
        }

        v6 = v22;
        if (v24 != *(v21 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState))
        {
          break;
        }

        v1 = v30;
        (*v32)(v5, v30);

        v13 = v29;
LABEL_7:
        v16 += v33;
        if (!--v12)
        {

          return result;
        }

        v13(v5, v16, v1);
      }

      *(v21 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState) = v24;
      v25 = *(v21 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator);
      v13 = v29;
      v1 = v30;
      if (v24)
      {
        [v25 setHidden:v24 != 1];
        v27 = *&v25[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState];
        *&v25[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 2;
        if (v27 == 2)
        {
          goto LABEL_5;
        }
      }

      else
      {
        [v25 setHidden:0];
        v26 = *&v25[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState];
        *&v25[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 1;
        if (v26 == 1)
        {
          goto LABEL_5;
        }
      }

      sub_100394C64();
LABEL_5:

LABEL_6:
      (*v32)(v5, v1);
      goto LABEL_7;
    }
  }

  return result;
}

double sub_1003E05F0(uint64_t a1)
{
  v93 = sub_1001F1160(&unk_100AE1510, &unk_1008225F0);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v71 - v2;
  v3 = sub_1001F1160(&qword_100AD81E0, &unk_100815450);
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  __chkstk_darwin(v3);
  v92 = &v71 - v5;
  v87 = sub_1001F1160(&unk_100AE1520, &unk_10081F290);
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v71 - v6;
  v89 = sub_1001F1160(&qword_100AD8220, &unk_100815490);
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v71 - v7;
  v81 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v71 - v8;
  v83 = sub_1001F1160(&qword_100AD8200, &qword_100815470);
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v71 - v9;
  v99 = sub_1001F1160(&qword_100AE1540, &qword_100822600);
  v103 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v71 - v10;
  v100 = sub_1001F1160(&unk_100AE1548, &unk_100822608);
  v104 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v71 - v11;
  v75 = sub_1001F1160(&qword_100AD81B0, &unk_100815420);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v71 - v12;
  v77 = sub_1001F1160(&qword_100AE1558, &qword_100822618);
  v78 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v71 - v13;
  v14 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v71 - v15;
  v17 = sub_1001F1160(&unk_100AD8250, &unk_1008154C0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v71 - v19;
  v110 = sub_1001F1160(&qword_100AE1560, &unk_10081F2C0);
  v21 = *(v110 - 8);
  __chkstk_darwin(v110);
  v23 = &v71 - v22;
  v105 = a1;
  swift_beginAccess();
  sub_1001F1160(&unk_100AD8260, &unk_1008154D0);
  sub_10079B974();
  swift_endAccess();
  v24 = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v25 = sub_1007A2D74();
  v112 = v25;
  v102 = sub_1007A2D24();
  v26 = *(v102 - 8);
  v106 = *(v26 + 56);
  v111 = v26 + 56;
  v106(v16, 1, 1, v102);
  v109 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100005920(&unk_100AD8270, &unk_100AD8250, &unk_1008154C0, &protocol conformance descriptor for Published<A>.Publisher);
  v108 = sub_100017E1C();
  sub_10079BAB4();
  sub_100201E64(v16);

  (*(v18 + 8))(v20, v17);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v107 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&unk_100AD8280, &qword_100AE1560, &unk_10081F2C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v27 = v110;
  sub_10079BB04();

  (*(v21 + 8))(v23, v27);
  v110 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_cancellables;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100ADF120, &qword_100822620);
  v28 = v73;
  sub_10079B974();
  swift_endAccess();
  v101 = v24;
  v29 = sub_1007A2D74();
  v112 = v29;
  v30 = v16;
  v72 = v16;
  v31 = v16;
  v32 = v102;
  v33 = v106;
  v106(v31, 1, 1, v102);
  v34 = v109;
  sub_100005920(&unk_100AD8320, &qword_100AD81B0, &unk_100815420, v109);
  v35 = v74;
  v36 = v75;
  sub_10079BAB4();
  sub_100201E64(v30);

  v76[1](v28, v36);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AE1568, &qword_100AE1558, &qword_100822618, v107);
  v37 = v77;
  sub_10079BB04();

  (*(v78 + 8))(v35, v37);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v78 = sub_1001F1160(&unk_100AE1570, &qword_10083A680);
  v38 = v98;
  sub_10079B974();
  swift_endAccess();
  v39 = sub_1007A2D74();
  v112 = v39;
  v40 = v72;
  v33(v72, 1, 1, v32);
  v77 = sub_100005920(&qword_100AF2950, &qword_100AE1540, &qword_100822600, v34);
  v41 = v97;
  v42 = v40;
  v43 = v99;
  sub_10079BAB4();
  sub_100201E64(v42);

  v44 = *(v103 + 8);
  v103 += 8;
  v76 = v44;
  (v44)(v38, v43);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = sub_100005920(&unk_100AE1580, &unk_100AE1548, &unk_100822608, v107);
  v45 = v100;
  sub_10079BB04();

  v46 = *(v104 + 8);
  v104 += 8;
  v74 = v46;
  (v46)(v41, v45);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  v47 = v79;
  sub_10079B974();
  swift_endAccess();
  v48 = sub_1007A2D74();
  v112 = v48;
  v49 = v102;
  v50 = v106;
  v106(v42, 1, 1, v102);
  sub_100005920(&qword_100AD82D0, &unk_100AE1530, &unk_10081F270, v109);
  v51 = v80;
  v52 = v81;
  sub_10079BAB4();
  sub_100201E64(v42);

  (*(v82 + 8))(v47, v52);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = v107;
  sub_100005920(&qword_100AD82D8, &qword_100AD8200, &qword_100815470, v107);
  v54 = v83;
  sub_10079BB04();

  (*(v84 + 8))(v51, v54);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5120, &qword_10080FC20);
  v55 = v85;
  sub_10079B974();
  swift_endAccess();
  v56 = sub_1007A2D74();
  v112 = v56;
  v50(v42, 1, 1, v49);
  sub_100005920(&qword_100AD82B0, &unk_100AE1520, &unk_10081F290, v109);
  v57 = v86;
  v58 = v87;
  sub_10079BAB4();
  sub_100201E64(v42);

  (*(v88 + 8))(v55, v58);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AE1590, &qword_100AD8220, &unk_100815490, v53);
  v59 = v89;
  sub_10079BB04();

  (*(v90 + 8))(v57, v59);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD50D0, &unk_10080FBD0);
  v60 = v91;
  sub_10079B974();
  swift_endAccess();
  v61 = sub_1007A2D74();
  v112 = v61;
  v106(v42, 1, 1, v49);
  sub_100005920(&unk_100AE15A0, &unk_100AE1510, &unk_1008225F0, v109);
  v62 = v92;
  v63 = v93;
  sub_10079BAB4();
  sub_100201E64(v42);

  (*(v94 + 8))(v60, v63);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AD8300, &qword_100AD81E0, &unk_100815450, v107);
  v64 = v95;
  sub_10079BB04();

  (*(v96 + 8))(v62, v64);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v65 = v98;
  sub_10079B974();
  swift_endAccess();
  v66 = sub_1007A2D74();
  v112 = v66;
  v106(v42, 1, 1, v102);
  v67 = v97;
  v68 = v99;
  sub_10079BAB4();
  sub_100201E64(v42);

  (v76)(v65, v68);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = v100;
  sub_10079BB04();

  (v74)(v67, v69);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return result;
}

void sub_1003E1ADC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_cancellables;
  swift_beginAccess();
  v18 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10079B884();
    sub_1000228F4(&qword_100AE1500, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    sub_1007A2864();
    v5 = v20;
    v4 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v3;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_10004DC54(v5);

      *(v1 + v18) = &_swiftEmptySetSingleton;

      return;
    }

    while (1)
    {
      sub_10079B874();

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1007A3654())
      {
        sub_10079B884();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1003E1E08(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerHeightConstraint];
  if (v2)
  {
    v3 = v2;
    [v3 setActive:0];
    [*&a1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    [v3 setConstant:v4];
    [v3 setActive:1];
    [a1 updateViewConstraints];
  }

  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass] == 1 || objc_msgSend(v5, "verticalSizeClass") == 1;
  v7 = *&a1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView];
  *(v7 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_compactMode) = v6;
  v8 = *(v7 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentButton);
  v8[OBJC_IVAR____TtC5Books25SupplementalContentButton_compactMode] = v6;
  [v8 setNeedsLayout];
  sub_10042CFD8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v10);

  v9 = v10;
  sub_1003E24C4(v10);
}

void sub_1003E1FC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView);
  v2 = sub_1004C1DB0(0);
  v3 = (v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining);
  *v3 = v2;
  v3[1] = v4;

  v5 = *(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel);

  v6 = sub_1007A2214();

  [v5 setText:v6];

  sub_10042CFD8();
}

id sub_1003E2158()
{
  v1 = v0;
  v2 = sub_1007A1C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CA4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result)
  {
    if ([objc_opt_self() isMainThread])
    {
      v12 = *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView];

      return [v12 reloadData];
    }

    else
    {
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      v18 = v3;
      v17 = sub_1007A2D74();
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      aBlock[4] = sub_1003E3AE0;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A19FD8;
      v14 = _Block_copy(aBlock);
      v15 = v1;

      sub_1007A1C74();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000228F4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
      sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
      sub_1007A3594();
      v16 = v17;
      sub_1007A2D94();
      _Block_release(v14);

      (*(v18 + 8))(v5, v2);
      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

void sub_1003E24C4(void *a1)
{
  v3 = a1;
  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v11);

    v3 = v11;
  }

  v4 = a1;
  v5 = [v1 traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 == 2)
  {
    v7 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
    if (!v3)
    {
      goto LABEL_8;
    }

    v8 = [v3 imageWithTint:v7];

    v3 = v8;
  }

  if (!v3)
  {
    return;
  }

  v9 = *&v1[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView];
  v10 = *(v9 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImage);
  *(v9 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImage) = v3;
  v7 = v3;

  [*(v9 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImageView) setImage:v7];
LABEL_8:
}

id sub_1003E2770(void *a1, __n128 a2)
{
  v5 = sub_100796E34();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v34);

  if (v34 >> 62)
  {
    v6 = sub_1007A38D4();
  }

  else
  {
    v6 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= v6)
  {
    return [objc_allocWithZone(UITableViewCell) init];
  }

  v7 = sub_1007A2214();
  v8 = [a1 dequeueReusableCellWithIdentifier:v7];

  if (!v8)
  {
    return [objc_allocWithZone(UITableViewCell) init];
  }

  type metadata accessor for AudiobookTOCCell();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    return [objc_allocWithZone(UITableViewCell) init];
  }

  v10 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v34);

  if ((v34 & 0xC000000000000001) == 0)
  {
    if (v5 < 0)
    {
      __break(1u);
    }

    else if (v5 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v34 + 8 * v5 + 32);

      goto LABEL_10;
    }

    __break(1u);
LABEL_34:
    swift_once();
LABEL_17:
    v26 = [qword_100B22FF0 stringFromTimeInterval:v3];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1007A2254();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = (v10 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_accessibleChapterTime);
    *v31 = v28;
    v31[1] = v30;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v34);

    if (v34 == v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4(&v34);

      v32 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState;
      if (v34 == 1)
      {
        *(v10 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState) = 0;
LABEL_29:
        sub_1004FBDC8();
        *(v10 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_isBookmarkHidden) = *(v2 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex + 8) & 1 | (v5 != *(v2 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex));
        [*(v10 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView) setHidden:?];

        return v10;
      }

      v33 = 1;
    }

    else
    {
      v32 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState;
      v33 = 2;
    }

    *(v10 + v32) = v33;
    goto LABEL_29;
  }

  v11 = sub_1007A3784();
LABEL_10:

  v12 = *(v11 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v34);

  v13 = v12 / *&v34;
  if (*&v34 <= 0.0)
  {
    v13 = v12;
  }

  v14 = *(v11 + 24);
  v15 = (v10 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle);
  if (v13 < 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v13;
  }

  *v15 = *(v11 + 16);
  v15[1] = v14;

  v16 = *(v10 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel);

  v17 = sub_1007A2214();
  [v16 setText:v17];

  result = [objc_opt_self() stringWithDuration:v3];
  if (result)
  {
    v19 = result;
    v20 = sub_1007A2254();
    v22 = v21;

    v23 = (v10 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTime);
    *v23 = v20;
    v23[1] = v22;

    v24 = *(v10 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel);

    v25 = sub_1007A2214();

    [v24 setText:v25];

    if (qword_100AD13F0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_1003E2EB0(void *a1)
{
  v2 = [a1 panGestureRecognizer];
  v3 = [v1 view];
  [v2 velocityInView:v3];
  v5 = v4;
  v6 = v4;

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v7 = fabs(v5);
  if (v7 >= 1.84467441e19)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1003E2FC4(void *a1)
{
  [a1 contentOffset];
  v4 = v3;
  [a1 contentInset];
  v6 = 15.0 - v5;
  v7 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_scrollAtTop;
  v8 = *(v1 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_scrollAtTop);
  if (v8 == 2 || (((v4 < 15.0 - v5) ^ v8) & 1) != 0)
  {
    v9 = _UISolariumEnabled();
    if (v4 < v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    sub_1003E2EB0(a1);
    sub_10042A38C(v10, v11);
    *(v1 + v7) = v4 < v6;
  }
}

void sub_1003E30E8(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1003E24C4(v2);
  }
}

void sub_1003E3144(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_viewModel);
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView);
    v6 = v3;
    v7 = sub_1004C1DB0(0);
    v9 = v8;

    v10 = &v5[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining];
    *v10 = v7;
    v10[1] = v9;

    v11 = *&v5[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel];

    v12 = sub_1007A2214();

    [v11 setText:v12];

    sub_10042CFD8();
    sub_1003E2158();
  }
}

void sub_1003E3254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1003E0244();
  }
}

void sub_1003E32A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView);
    v5 = [v4 window];
    if (v5)
    {

      sub_1001F1160(&qword_100AE1508, &qword_10083AAE0);
      sub_100796E74();
      *(swift_allocObject() + 16) = xmmword_10080B690;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4(&v7);

      sub_100796E24();
      isa = sub_1007A25D4().super.isa;

      [v4 reloadRowsAtIndexPaths:isa withRowAnimation:5];
    }
  }
}

void sub_1003E346C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_viewModel);
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView);
    v6 = v3;
    v7 = sub_1004C1DB0(0);
    v9 = v8;

    v10 = &v5[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining];
    *v10 = v7;
    v10[1] = v9;

    v11 = *&v5[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel];

    v12 = sub_1007A2214();

    [v11 setText:v12];

    sub_10042CFD8();
  }
}

void sub_1003E3574(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex;
    if ((*(Strong + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex + 8) & 1) != 0 || v2 != *v5)
    {
      *v5 = v2;
      *(v5 + 8) = 0;
      sub_1003E2158();
      v4[OBJC_IVAR____TtC5Books26AudiobookTOCViewController_scrollAtTop] = 2;
    }
  }
}

void sub_1003E360C()
{
  *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerView;
  type metadata accessor for AudiobookTOCHeaderView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC5Books26AudiobookTOCViewController_tableView;
  v4 = [objc_allocWithZone(UITableView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  v5 = v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_lastPlayedChapterIndex;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_headerHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_scrollAtTop) = 2;
  *(v0 + OBJC_IVAR____TtC5Books26AudiobookTOCViewController_cancellables) = &_swiftEmptySetSingleton;
  sub_1007A38A4();
  __break(1u);
}

uint64_t sub_1003E3740()
{
  v1 = sub_1007A1C54();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CA4();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v7 = sub_1007A2D74();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1003E3B04;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1A028;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000228F4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_1003E3A34()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    [*(result + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) goToChapterIndex:sub_100796E34()];
    [*(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_tocVC) dismissViewControllerAnimated:1 completion:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

id static OS_os_log.carPlay.getter()
{
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v1 = qword_100AE15E0;

  return v1;
}

uint64_t sub_1003E3C04()
{
  sub_10001389C();
  result = sub_1007A33B4();
  qword_100AE15E0 = result;
  return result;
}

void sub_1003E3C68(float a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
    v2 = *(v1 + 16);
    swift_getKeyPath();
    sub_1003E5804(&qword_100AE18E0, type metadata accessor for NarrationSpeedViewModel, &unk_100822864);
    sub_100797A14();

    LODWORD(v3) = *(v1 + 32);
    [v2 setPlaybackRateTo:v3];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003E5804(&qword_100AE18E0, type metadata accessor for NarrationSpeedViewModel, &unk_100822864);
    sub_100797A04();
  }
}

float sub_1003E3E08()
{
  swift_getKeyPath();
  sub_1003E5804(&qword_100AE18E0, type metadata accessor for NarrationSpeedViewModel, &unk_100822864);
  sub_100797A14();

  return *(v0 + 32);
}

float sub_1003E3EA8@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003E5804(&qword_100AE18E0, type metadata accessor for NarrationSpeedViewModel, &unk_100822864);
  sub_100797A14();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

id sub_1003E3F50(uint64_t a1, float a2)
{
  *(a1 + 32) = a2;
  v3 = *(a1 + 16);
  swift_getKeyPath();
  sub_1003E5804(&qword_100AE18E0, type metadata accessor for NarrationSpeedViewModel, &unk_100822864);
  sub_100797A14();

  LODWORD(v4) = *(a1 + 32);
  return [v3 setPlaybackRateTo:v4];
}

uint64_t sub_1003E4010()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC5Books23NarrationSpeedViewModel___observationRegistrar;
  v2 = sub_100797A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1003E40F4(uint64_t a1, __n128 a2)
{
  result = sub_100797A54();
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

double sub_1003E4218@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001F1160(&qword_100AE17E0, &qword_100822880);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  *v8 = sub_10079CB24();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_1001F1160(&qword_100AE17E8, &qword_100822888);
  sub_1003E43C0(a1, a2, &v8[*(v9 + 44)]);
  sub_1001F1160(&qword_100AE17F0, &qword_100822890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  v11 = sub_10079D2A4();
  *(inited + 32) = v11;
  v12 = sub_10079D284();
  *(inited + 33) = v12;
  v13 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v11)
  {
    v13 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v12)
  {
    v13 = sub_10079D2D4();
  }

  sub_1000379AC(v8, a3);
  v14 = a3 + *(sub_1001F1160(&qword_100AE17F8, &qword_100822898) + 36);
  *v14 = v13;
  result = 0.0;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 1;
  return result;
}

uint64_t sub_1003E43C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v56 = a3;
  v67 = sub_10079C404();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1001F1160(&qword_100AE1800, &qword_1008228A0);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v53 - v6;
  v59 = sub_1001F1160(&qword_100AE1808, &unk_1008228A8);
  __chkstk_darwin(v59);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v53 - v10;
  v55 = sub_1001F1160(&qword_100AE1810, &qword_10081BA20);
  __chkstk_darwin(v55);
  v12 = &v53 - v11;
  v62 = sub_1001F1160(&qword_100AE1818, &qword_1008228B8);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v53 - v15;
  sub_1001F1160(&qword_100AE1820, &qword_1008228C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10080EFF0;
  v17 = sub_10079D254();
  *(v16 + 32) = v17;
  v18 = sub_10079D274();
  *(v16 + 33) = v18;
  v19 = sub_10079D264();
  sub_10079D264();
  if (sub_10079D264() != v17)
  {
    v19 = sub_10079D264();
  }

  sub_10079D264();
  if (sub_10079D264() != v18)
  {
    v19 = sub_10079D264();
  }

  sub_1003E4CAC(&v86);
  v82 = v90;
  v83[0] = v91[0];
  *(v83 + 9) = *(v91 + 9);
  v78 = v86;
  v79 = v87;
  v80 = v88;
  v81 = v89;
  v84[0] = v86;
  v84[1] = v87;
  v84[2] = v88;
  v84[3] = v89;
  v84[4] = v90;
  v85[0] = v91[0];
  *(v85 + 9) = *(v91 + 9);
  sub_1000077D8(&v78, v77, &qword_100AE1828, &qword_1008228C8);
  sub_100007840(v84, &qword_100AE1828, &qword_1008228C8);
  *&v93[55] = v81;
  *&v93[71] = v82;
  *&v93[87] = v83[0];
  *&v93[96] = *(v83 + 9);
  *&v93[7] = v78;
  *&v93[23] = v79;
  *&v93[39] = v80;
  v20 = sub_10079D354();
  KeyPath = swift_getKeyPath();
  v22 = sub_10079CE74();
  *(&v77[3] + 1) = *&v93[48];
  *(&v77[4] + 1) = *&v93[64];
  *(&v77[5] + 1) = *&v93[80];
  *(&v77[6] + 1) = *&v93[96];
  *(v77 + 1) = *v93;
  *(&v77[1] + 1) = *&v93[16];
  LOBYTE(v77[0]) = v19;
  *(&v77[2] + 1) = *&v93[32];
  *(&v77[7] + 1) = KeyPath;
  *&v77[8] = v20;
  DWORD2(v77[8]) = v22;
  v23 = enum case for DynamicTypeSize.accessibility1(_:);
  v24 = sub_10079C0E4();
  (*(*(v24 - 8) + 104))(v12, v23, v24);
  sub_1003E5804(&qword_100AE1830, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1007A2124();
  if (result)
  {
    sub_1001F1160(&qword_100AE1838, &qword_100822900);
    sub_1003E5590();
    v54 = v8;
    sub_100005920(&qword_100ADBBF8, &qword_100AE1810, &qword_10081BA20, &protocol conformance descriptor for PartialRangeThrough<A>);
    sub_10079D7E4();
    sub_100007840(v12, &qword_100AE1810, &qword_10081BA20);
    v91[1] = v77[6];
    v92[0] = v77[7];
    *(v92 + 12) = *(&v77[7] + 12);
    v88 = v77[2];
    v89 = v77[3];
    v90 = v77[4];
    v91[0] = v77[5];
    v86 = v77[0];
    v87 = v77[1];
    sub_100007840(&v86, &qword_100AE1838, &qword_100822900);
    *&v77[0] = a1;
    *(&v77[0] + 1) = a2;
    sub_1001F1160(&qword_100AE1880, &qword_100822928);
    sub_10079DFF4();
    v27 = *(v72 + 40);
    v26 = *(v72 + 48);

    v75 = v27;
    v76 = v26;
    v72 = a1;
    v73 = a2;
    sub_10079E014();
    v28 = v77[0];
    v29 = *&v77[1];
    swift_getKeyPath();
    v77[0] = v28;
    *&v77[1] = v29;
    sub_1001F1160(&qword_100AE1888, &qword_100822958);
    sub_10079E1E4();

    v30 = v72;
    v31 = v73;
    v32 = v74;

    v69 = v30;
    v70 = v31;
    v71 = v32;
    __chkstk_darwin(v33);
    sub_1001F1160(&qword_100AE1890, &qword_100822960);
    sub_1003E5734();
    sub_100206ECC();
    v34 = v58;
    sub_10079E114();
    v35 = v64;
    sub_10079C3F4();
    sub_100005920(&qword_100AE18A8, &qword_100AE1800, &qword_1008228A0, &protocol conformance descriptor for Picker<A, B, C>);
    v37 = v66;
    v36 = v67;
    v38 = v63;
    sub_10079D704();
    (*(v65 + 8))(v35, v36);
    (*(v61 + 8))(v34, v38);
    LOBYTE(v30) = sub_10079D2A4();
    sub_10079BBA4();
    v39 = v60;
    v40 = v37 + *(v59 + 36);
    *v40 = v30;
    *(v40 + 8) = v41;
    *(v40 + 16) = v42;
    *(v40 + 24) = v43;
    *(v40 + 32) = v44;
    *(v40 + 40) = 0;
    v45 = *(v39 + 16);
    v46 = v57;
    v47 = v68;
    v48 = v62;
    v45(v57, v68, v62);
    v49 = v54;
    sub_100037A50(v37, v54);
    v50 = v56;
    v45(v56, v46, v48);
    v51 = sub_1001F1160(&qword_100AE18B0, &unk_100822968);
    sub_100037A50(v49, &v50[*(v51 + 48)]);
    sub_100037AC0(v37);
    v52 = *(v39 + 8);
    v52(v47, v48);
    sub_100037AC0(v49);
    return (v52)(v46, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E4CAC@<X0>(uint64_t a3@<X8>)
{
  sub_1001F1160(&qword_100AE1880, &qword_100822928);
  sub_10079DFF4();

  sub_100206ECC();
  v25 = sub_10079D5D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v10 = v7 & 1;
  v24 = v7 & 1;
  LOBYTE(v33[0]) = 0;
  sub_10079DFF4();

  v11 = sub_10079D5D4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = swift_getKeyPath();
  *&v27 = v25;
  *(&v27 + 1) = v5;
  LOBYTE(v28) = v10;
  *(&v28 + 1) = v9;
  *v29 = KeyPath;
  *&v29[8] = 1;
  v29[16] = 0;
  *&v29[17] = 257;
  v30 = v27;
  v31 = v28;
  *v32 = *v29;
  *&v32[15] = *&v29[15];
  v19 = v27;
  v20 = *v32;
  v21 = *&v32[16];
  *(a3 + 16) = v28;
  *(a3 + 32) = v20;
  *a3 = v19;
  *(a3 + 48) = v21;
  *(a3 + 56) = v11;
  *(a3 + 64) = v13;
  *(a3 + 72) = v15 & 1;
  *(a3 + 80) = v17;
  *(a3 + 88) = v18;
  *(a3 + 96) = 2;
  *(a3 + 104) = 0;
  sub_1000077D8(&v27, v33, &qword_100AE18E8, &unk_1008229D0);
  sub_1001F1894(v11, v13, v15 & 1);

  sub_10020B430(v11, v13, v15 & 1);

  v33[0] = v25;
  v33[1] = v5;
  v34 = v24;
  *v35 = *v26;
  *&v35[3] = *&v26[3];
  v36 = v9;
  v37 = KeyPath;
  v38 = 1;
  v39 = 0;
  v40 = 257;
  return sub_100007840(v33, &qword_100AE18E8, &unk_1008229D0);
}

uint64_t sub_1003E4F20(uint64_t a1, uint64_t a2)
{
  sub_1001F1160(&qword_100AE1880, &qword_100822928);
  sub_10079DFF4();

  swift_getKeyPath();
  sub_1001F1160(&qword_100AE18B8, &qword_100822990);
  sub_100005920(&qword_100AE18C0, &qword_100AE18B8, &qword_100822990, &protocol conformance descriptor for [A]);
  return sub_10079E264();
}

uint64_t sub_1003E503C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100796CF4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001F1160(&qword_100AE18C8, &qword_100822998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = sub_10079C974();
  __chkstk_darwin(v9 - 8);
  v10 = *a1;
  sub_10079C964();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_10079C954(v18);
  v17[3] = v10;
  sub_100796C74();
  sub_1003E57B0();
  sub_100796844();
  sub_100005920(&qword_100AE18D8, &qword_100AE18C8, &qword_100822998, &protocol conformance descriptor for FloatingPointFormatStyle<A>);
  sub_10079C944();
  (*(v6 + 8))(v8, v5);
  v19._countAndFlagsBits = 38851;
  v19._object = 0xA200000000000000;
  sub_10079C954(v19);
  sub_10079C994();
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  result = sub_10079D5B4();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

id sub_1003E52F4(uint64_t a1, void *a2)
{
  type metadata accessor for NarrationSpeedViewModel(0);
  swift_allocObject();
  sub_1003E586C(a1);
  sub_10079DFE4();
  v4 = sub_10079CBC4();
  [v4 setModalPresentationStyle:7];
  [v4 setOverrideUserInterfaceStyle:2];
  [v4 setPreferredContentSize:{250.0, 225.0}];
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    v8 = [v4 popoverPresentationController];
    if (v8)
    {
      [v8 setSourceView:a2];
      [v8 setDelegate:v4];
    }

    swift_unknownObjectRelease();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1003E5590()
{
  result = qword_100AE1840;
  if (!qword_100AE1840)
  {
    sub_1001F1234(&qword_100AE1838, &qword_100822900);
    sub_1003E5648();
    sub_100005920(&qword_100AE1868, &unk_100AE1870, &qword_100822920, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1840);
  }

  return result;
}

unint64_t sub_1003E5648()
{
  result = qword_100AE1848;
  if (!qword_100AE1848)
  {
    sub_1001F1234(&qword_100AE1850, &qword_100822908);
    sub_100005920(&qword_100AE1858, &qword_100AE1860, &unk_100822910, &protocol conformance descriptor for ViewThatFits<A>);
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0, &unk_10080B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1848);
  }

  return result;
}

unint64_t sub_1003E5734()
{
  result = qword_100AE1898;
  if (!qword_100AE1898)
  {
    sub_1001F1234(&qword_100AE1890, &qword_100822960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1898);
  }

  return result;
}

unint64_t sub_1003E57B0()
{
  result = qword_100AE18D0;
  if (!qword_100AE18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE18D0);
  }

  return result;
}

uint64_t sub_1003E5804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003E586C(uint64_t a1)
{
  v47 = a1;
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = sub_1007A21D4();
  v41 = v8;
  v44 = *(v8 - 8);
  v9 = v44;
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  sub_1007A2154();
  sub_100796C94();
  v45 = *(v9 + 16);
  v45(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = ObjCClassFromMetadata;
  v42 = objc_opt_self();
  v16 = [v42 bundleForClass:ObjCClassFromMetadata];
  v40 = *(v2 + 16);
  v36 = v1;
  v37 = v4;
  v40(v4, v7, v1);
  v17 = sub_1007A22D4(v11, 0, 0, v16, v4, "Title that appears in narration speed picker wheel", 50, 2);
  v19 = v18;
  v20 = *(v2 + 8);
  v38 = v2 + 8;
  v39 = v20;
  v20(v7, v1);
  v44 = *(v44 + 8);
  v21 = v41;
  (v44)(v14, v41);
  v22 = v46;
  *(v46 + 40) = v17;
  *(v22 + 48) = v19;
  v23 = v22;
  sub_1007A2154();
  sub_100796C94();
  v45(v11, v14, v21);
  v24 = [v42 bundleForClass:v43];
  v26 = v36;
  v25 = v37;
  v40(v37, v7, v36);
  v27 = sub_1007A22D4(v11, 0, 0, v24, v25, "Short title that appears in narration speed picker wheel", 56, 2);
  v29 = v28;
  v39(v7, v26);
  (v44)(v14, v21);
  *(v23 + 56) = v27;
  *(v23 + 64) = v29;
  _s5Books17REActionMenuStateC22__observationRegistrar33_32ABA65274D463EF405FFF160E47F6ACLL11Observation0nF0Vvpfi_0();
  *(v23 + 16) = v47;
  v30 = swift_unknownObjectRetain();
  [v30 playbackRate];
  *(v23 + 32) = v31;
  v32 = [v30 playbackRates];
  v33 = sub_1007A25E4();

  *(v23 + 24) = v33;
  return v23;
}

unint64_t sub_1003E5C64()
{
  result = qword_100AE18F0;
  if (!qword_100AE18F0)
  {
    sub_1001F1234(&qword_100AE17F8, &qword_100822898);
    sub_100005920(&qword_100AE18F8, &qword_100AE17E0, &qword_100822880, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE18F0);
  }

  return result;
}

uint64_t WidgetService.setupService(libraryManager:onWidgetConfigurationChangeCallback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1001F1160(&qword_100AF4290, &unk_10082E420);
  __chkstk_darwin(v8 - 8);
  v58 = &v48 - v9;
  v49 = sub_1007A3354();
  v57 = *(v49 - 8);
  __chkstk_darwin(v49);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007A2E74();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F1160(&qword_100AE19C0, &qword_100822A18);
  v55 = *(v14 - 8);
  v56 = v14;
  __chkstk_darwin(v14);
  v48 = &v48 - v15;
  v50 = sub_1001F1160(&unk_100AE19C8, &qword_100822A20);
  v59 = *(v50 - 8);
  __chkstk_darwin(v50);
  v17 = &v48 - v16;
  v53 = *&v3[OBJC_IVAR___BKWidgetService__setupState];
  sub_100798B74();
  v18 = *&v3[OBJC_IVAR___BKWidgetService_libraryManager];
  *&v4[OBJC_IVAR___BKWidgetService_libraryManager] = a1;
  v19 = a1;

  v20 = &v4[OBJC_IVAR___BKWidgetService_onWidgetConfigurationChangeCallback];
  v21 = *&v4[OBJC_IVAR___BKWidgetService_onWidgetConfigurationChangeCallback];
  v22 = *&v4[OBJC_IVAR___BKWidgetService_onWidgetConfigurationChangeCallback + 8];
  *v20 = a2;
  *(v20 + 1) = a3;

  sub_100007020(v21, v22);
  v23 = [objc_allocWithZone(BDSBookWidgetInfoManager) init];
  v24 = OBJC_IVAR___BKWidgetService_widgetInfoManager;
  v25 = *&v4[OBJC_IVAR___BKWidgetService_widgetInfoManager];
  *&v4[OBJC_IVAR___BKWidgetService_widgetInfoManager] = v23;

  v26 = sub_1007A29D4();
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  v27 = sub_1007A33D4();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 136315138;
    v60 = *&v4[v24];
    v61[0] = v29;
    v30 = v60;
    sub_1001F1160(&qword_100AE1A08, &qword_100822A30);
    v31 = sub_1007A22E4();
    v33 = sub_1000070F4(v31, v32, v61);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v26, "WidgetService: set widgetInfoManager %s", v28, 0xCu);
    sub_1000074E0(v29);
  }

  v34 = [objc_opt_self() shared];
  [v34 addObserver:v4];

  v35 = [objc_opt_self() defaultCenter];
  sub_1007A2E84();

  v36 = v54;
  sub_1007A3344();
  v37 = [objc_opt_self() mainRunLoop];
  v61[0] = v37;
  v38 = sub_1007A3324();
  v39 = v58;
  (*(*(v38 - 8) + 56))(v58, 1, 1, v38);
  sub_10000A7C4(0, &qword_100AE19D8, NSRunLoop_ptr);
  sub_100005B5C();
  sub_1003E6568();
  v40 = v48;
  v41 = v52;
  sub_10079BAC4();
  sub_100007840(v39, &qword_100AF4290, &unk_10082E420);

  (*(v57 + 8))(v36, v49);
  (*(v51 + 8))(v13, v41);
  sub_1001F1160(&qword_100AE19F0, &qword_100822A28);
  sub_100005920(&qword_100AE19F8, &qword_100AE19C0, &qword_100822A18, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v42 = v56;
  sub_10079BA24();
  (*(v55 + 8))(v40, v42);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100AE1A00, &unk_100AE19C8, &qword_100822A20, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v43 = v50;
  sub_10079BB04();

  (*(v59 + 8))(v17, v43);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v44 = swift_allocObject();
  *(v44 + 16) = v4;
  sub_1007A2004();
  v45 = v4;
  sub_1007A1FF4();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1003E68CC;
  *(v46 + 24) = v44;

  sub_1007A1FE4();

  return sub_100798B74();
}

unint64_t sub_1003E6568()
{
  result = qword_100AE19E8;
  if (!qword_100AE19E8)
  {
    sub_10000A7C4(255, &qword_100AE19D8, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE19E8);
  }

  return result;
}

uint64_t sub_1003E65D0@<X0>(void *a1@<X8>)
{
  v2 = sub_100796584();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  sub_1007A2254();
  sub_1007A36B4();
  if (!*(v3 + 16) || (v4 = sub_10000E2A4(v7), (v5 & 1) == 0))
  {

    sub_10002899C(v7);
LABEL_8:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  sub_100007484(*(v3 + 56) + 32 * v4, &v8);
  sub_10002899C(v7);

  if (!*(&v9 + 1))
  {
LABEL_9:
    result = sub_100007840(&v8, &unk_100AD5B40, &unk_100811300);
    goto LABEL_10;
  }

  sub_1001F1160(&qword_100AE19F0, &qword_100822A28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    *a1 = 0;
  }

  return result;
}

void sub_1003E66E4(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1003E68D8(v2);
  }
}

void sub_1003E6748(char a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    if (qword_100AD1538 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = qword_100AE1960;
    v6 = *algn_100AE1968;
    v7 = byte_100AE1970;
    v8 = qword_100AE1978;

    v9 = v8;
    LODWORD(v5) = sub_100026244(v5, v6, v7, v9) & 1;

    if (v5 != (a1 & 1))
    {
      swift_beginAccess();
      v10 = qword_100AE1978;
      v11 = sub_1007A3B04();
      v12 = sub_1007A2214();
      [v10 setObject:v11 forKey:v12];
      swift_endAccess();
      swift_unknownObjectRelease();

      v13 = a3 + OBJC_IVAR___BKWidgetService_onWidgetConfigurationChangeCallback;
      v14 = *(a3 + OBJC_IVAR___BKWidgetService_onWidgetConfigurationChangeCallback);
      if (v14)
      {
        v15 = *(v13 + 8);

        v14(v16);
        sub_100007020(v14, v15);
      }
    }
  }
}

uint64_t sub_1003E68D8(unint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v111 = &v107 - v3;
  v4 = sub_100796DA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v8 - 8);
  v118 = &v107 - v9;
  v10 = sub_100796BB4();
  v116 = *(v10 - 1);
  __chkstk_darwin(v10);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v107 - v14;
  v16 = sub_1001F1160(&qword_100ADD650, &qword_10081CA18);
  __chkstk_darwin(v16 - 8);
  v124 = &v107 - v17;
  v18 = sub_1001F1160(&qword_100AE1A50, &qword_10081CA10);
  __chkstk_darwin(v18 - 8);
  v123 = (&v107 - v19);
  v20 = sub_100796674();
  v121 = *(v20 - 8);
  v122 = v20;
  __chkstk_darwin(v20);
  v125 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1007A29D4();
  v23 = sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  v24 = sub_1007A33D4();
  v114 = v22;
  v25 = os_log_type_enabled(v24, v22);
  v112 = v23;
  v117 = v7;
  v115 = v12;
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = swift_slowAlloc();
  v109 = swift_slowAlloc();
  v128[0] = v109;
  v110 = v26;
  *v26 = 136315138;
  if (a1 >> 62)
  {
    goto LABEL_88;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    if (i)
    {
      v127[0] = _swiftEmptyArrayStorage;
      v28 = v127;
      sub_1003BD4C8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_90;
      }

      v107 = v5;
      v119 = v4;
      v120 = v15;
      v108 = v10;
      v29 = 0;
      v30 = v127[0];
      v31 = a1 & 0xC000000000000001;
      v32 = a1;
      do
      {
        if (v31)
        {
          v33 = sub_1007A3784();
        }

        else
        {
          v33 = *(a1 + 8 * v29 + 32);
        }

        v34 = v33;
        v35 = v24;
        v36 = [v33 title];
        if (v36)
        {
          v37 = v36;
          v38 = sub_1007A2254();
          v40 = v39;
        }

        else
        {

          v38 = 0;
          v40 = 0;
        }

        v127[0] = v30;
        v42 = v30[2];
        v41 = v30[3];
        if (v42 >= v41 >> 1)
        {
          sub_1003BD4C8((v41 > 1), v42 + 1, 1);
          v30 = v127[0];
        }

        ++v29;
        v30[2] = v42 + 1;
        v43 = &v30[2 * v42];
        v43[4] = v38;
        v43[5] = v40;
        v24 = v35;
        a1 = v32;
      }

      while (i != v29);
      v10 = v108;
      v4 = v119;
      v15 = v120;
      v5 = v107;
    }

    sub_1001F1160(&qword_100AD4F30, &unk_100816940);
    v44 = sub_1007A25F4();
    v46 = v45;

    v47 = sub_1000070F4(v44, v46, v128);

    v48 = v110;
    *(v110 + 1) = v47;
    _os_log_impl(&_mh_execute_header, v24, v114, "WidgetService: handleRecentBooksChange %s", v48, 0xCu);
    sub_1000074E0(v109);

LABEL_18:

    v49 = v5;
    (*(v5 + 56))(v123, 1, 1, v4);
    v50 = sub_100796DE4();
    (*(*(v50 - 8) + 56))(v124, 1, 1, v50);
    LOBYTE(v106) = 1;
    v105 = 0;
    LOBYTE(v104) = 1;
    v103 = 0;
    v51 = v125;
    sub_100796664();
    v128[0] = a1;
    sub_1001F1160(&qword_100AE19F0, &qword_100822A28);
    sub_100005920(&qword_100AE1A58, &qword_100AE19F0, &qword_100822A28, &protocol conformance descriptor for [A]);
    if ((sub_1007A28A4() & 1) == 0)
    {
      return (*(v121 + 8))(v51, v122);
    }

    v120 = v15;
    v52 = v10;
    v53 = v117;
    sub_100796D64();
    v119 = v4;
    v4 = v115;
    sub_100796BA4();
    v54 = v118;
    sub_100796D54();
    v55 = v116;
    v56 = (v116 + 8);
    v28 = *(v116 + 8);
    (v28)(v4, v52);
    v57 = v53;
    v22 = v52;
    (*(v49 + 8))(v57, v119);
    if ((*(v55 + 48))(v54, 1, v52) == 1)
    {
      (*(v121 + 8))(v51, v122);
      return sub_100007840(v54, &unk_100ADB5C0, &unk_100816880);
    }

    v124 = v56;
    v59 = *(v55 + 32);
    v10 = (v55 + 32);
    v15 = v120;
    v60 = v59(v120, v54, v22);
    v128[0] = _swiftEmptyArrayStorage;
    if (!(a1 >> 62))
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_24;
    }

LABEL_90:
    v60 = sub_1007A38D4();
    v5 = v60;
LABEL_24:
    v123 = v28;
    v24 = _swiftEmptyArrayStorage;
    if (!v5)
    {
      break;
    }

    v108 = v22;
    v61 = 0;
    v15 = (a1 & 0xC000000000000001);
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = &selRef_iq_downloadProgressStatusesWithAssetID_item_;
    while (1)
    {
      if (v15)
      {
        v62 = sub_1007A3784();
      }

      else
      {
        if (v61 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

        v62 = *(a1 + 8 * v61 + 32);
      }

      v63 = v62;
      v22 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if ([v62 isSupplementalContent])
      {
      }

      else
      {
        sub_1007A37D4();
        v10 = *(v128[0] + 16);
        sub_1007A3804();
        sub_1007A3814();
        v60 = sub_1007A37E4();
      }

      ++v61;
      if (v22 == v5)
      {
        v64 = v128[0];
        v22 = v108;
        v15 = v120;
        v24 = _swiftEmptyArrayStorage;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

  v64 = _swiftEmptyArrayStorage;
LABEL_37:
  __chkstk_darwin(v60);
  v105 = v15;
  swift_retain_n();
  a1 = 0;
  v65 = sub_1003CD774(sub_1003EA7F0, &v103, v64);
  v5 = v65;
  v66 = v65 >> 62;
  if (v65 >> 62)
  {
    v69 = sub_1007A38D4();
    if (sub_1007A38D4() < 0)
    {
      __break(1u);
LABEL_93:
      v5 = sub_1007A38D4();
      if ((sub_1007A38D4() & 0x8000000000000000) == 0)
      {
        v74 = sub_1007A38D4();
        goto LABEL_57;
      }

      goto LABEL_96;
    }

    while (1)
    {
      if (v69 >= 3)
      {
        v102 = 3;
      }

      else
      {
        v102 = v69;
      }

      if (v69 >= 0)
      {
        v67 = v102;
      }

      else
      {
        v67 = 3;
      }

      result = sub_1007A38D4();
      if (result < v67)
      {
        goto LABEL_104;
      }

LABEL_42:
      if ((v5 & 0xC000000000000001) != 0 && v67)
      {
        sub_10000A7C4(0, &unk_100ADE530, BSUIAsset_ptr);

        sub_1007A3774(0);
        if (v67 != 1)
        {
          sub_1007A3774(1);
          if (v67 != 2)
          {
            sub_1007A3774(2);
          }
        }
      }

      else
      {
      }

      if (v66)
      {
        v69 = sub_1007A38E4();
        v66 = v71;
        v68 = v72;
        v70 = v73;

        if (v68 != v70 >> 1)
        {
LABEL_50:

          goto LABEL_69;
        }
      }

      else
      {
        v68 = 0;
        v69 = v5 & 0xFFFFFFFFFFFFFF8;
        v66 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
        v70 = 2 * v67;
        if (v70 >> 1)
        {
          goto LABEL_50;
        }
      }

      LODWORD(v15) = v64 < 0 || (v64 & 0x4000000000000000) != 0;
      v4 = v22;
      if (v15 == 1)
      {
        goto LABEL_93;
      }

      v5 = *(v64 + 16);
      v74 = v5;
LABEL_57:
      v75 = v5 != 0;
      if (v74 >= v75)
      {
        break;
      }

      __break(1u);
LABEL_96:
      __break(1u);
    }

    if ((v64 & 0xC000000000000001) != 0 && v5)
    {
      sub_10000A7C4(0, &unk_100ADE530, BSUIAsset_ptr);

      v76 = 0;
      do
      {
        v77 = v76 + 1;
        sub_1007A3774(v76);
        v76 = v77;
      }

      while (v75 != v77);
      if (v15)
      {
        goto LABEL_63;
      }
    }

    else
    {

      if (v15)
      {
LABEL_63:

        v5 = sub_1007A38E4();
        v66 = v78;
        v68 = v79;
        v70 = v80;
        swift_unknownObjectRelease();

LABEL_68:
        v24 = _swiftEmptyArrayStorage;
        v22 = v4;
LABEL_69:
        if (*&v113[OBJC_IVAR___BKWidgetService_widgetInfoManager])
        {
          v128[0] = _swiftEmptyArrayStorage;
          v81 = v70 >> 1;
          v15 = ((v70 >> 1) - v68);
          if (v15)
          {
            if (v68 > v81)
            {
              v81 = v68;
            }

            v4 = v81 - v68;
            v10 = (v66 + 8 * v68);
            v24 = _swiftEmptyArrayStorage;
            while (v4)
            {
              v127[0] = *v10;
              sub_1003E7930(v127, &v126);
              v5 = v126;
              if (v126)
              {
                sub_1007A25C4();
                if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1007A2614();
                }

                sub_1007A2644();
                v24 = v128[0];
              }

              --v4;
              ++v10;
              if (!--v15)
              {
                goto LABEL_71;
              }
            }

            goto LABEL_87;
          }

LABEL_71:

          v82 = sub_1007A29D4();
          v83 = sub_1007A33D4();
          if (os_log_type_enabled(v83, v82))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v128[0] = v85;
            *v84 = 136315138;
            sub_10000A7C4(0, &unk_100AE1A40, BDSBookWidgetInfo_ptr);
            v86 = sub_1007A25F4();
            v88 = sub_1000070F4(v86, v87, v128);

            *(v84 + 4) = v88;
            _os_log_impl(&_mh_execute_header, v83, v82, "WidgetService: Saving %s", v84, 0xCu);
            sub_1000074E0(v85);
          }

          v89 = v111;
          v90 = v120;
          v91 = v121;
          v92 = v122;
          v93 = v24;
          v94 = v125;
          v95 = sub_1007A2744();
          (*(*(v95 - 8) + 56))(v89, 1, 1, v95);
          v96 = swift_allocObject();
          v96[2] = 0;
          v96[3] = 0;
          v97 = v113;
          v96[4] = v113;
          v96[5] = v93;
          v98 = v97;
          sub_1003457A0(0, 0, v89, &unk_100822A70, v96);
          swift_unknownObjectRelease();

          (*(v91 + 8))(v94, v92);
          v99 = v90;
        }

        else
        {

          v100 = sub_1007A29B4();
          v101 = sub_1007A33D4();
          sub_10079AB44(v100, &_mh_execute_header, v101, "self.widgetInfoManager is uninitialized - cannot handle recent books change.", 76, 2, _swiftEmptyArrayStorage);
          swift_unknownObjectRelease();

          (*(v121 + 8))(v125, v122);
          v99 = v120;
        }

        return (v123)(v99, v22);
      }
    }

    swift_unknownObjectRelease();

    v68 = 0;
    v66 = v64 + 32;
    if (v5)
    {
      v70 = 3;
    }

    else
    {
      v70 = 1;
    }

    goto LABEL_68;
  }

  result = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v67 = 3;
  }

  else
  {
    v67 = result;
  }

  if (result >= v67)
  {
    goto LABEL_42;
  }

LABEL_104:
  __break(1u);
  return result;
}