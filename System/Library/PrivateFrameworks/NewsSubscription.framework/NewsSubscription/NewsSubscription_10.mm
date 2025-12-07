void sub_1D782BCD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PurchaseContext(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D78300CC(0, &qword_1EE08E550, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6EC8]);
  v42 = v4;
  v9 = sub_1D78B6554();
  v10 = v9;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
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
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v41 + 72);
      v29 = v24 + v28 * v23;
      if (v42)
      {
        sub_1D777044C(v29, v43);
      }

      else
      {
        sub_1D7830140(v29, v43, type metadata accessor for PurchaseContext);
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      v30 = sub_1D78B6844();
      v31 = -1 << *(v10 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      sub_1D777044C(v43, *(v10 + 56) + v28 * v18);
      ++*(v10 + 16);
      v8 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D782C04C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PurchaseAdContext(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D78300CC(0, &unk_1EC9CA770, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6EC8]);
  v42 = v4;
  v9 = sub_1D78B6554();
  v10 = v9;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
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
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v41 + 72);
      v29 = v24 + v28 * v23;
      if (v42)
      {
        sub_1D77F63C8(v29, v43);
      }

      else
      {
        sub_1D7830140(v29, v43, type metadata accessor for PurchaseAdContext);
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      v30 = sub_1D78B6844();
      v31 = -1 << *(v10 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      sub_1D77F63C8(v43, *(v10 + 56) + v28 * v18);
      ++*(v10 + 16);
      v8 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D782C3C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D78300CC(0, &qword_1EC9CAC30, sub_1D779DA54, MEMORY[0x1E69E6EC8]);
  v35 = v4;
  v6 = sub_1D78B6554();
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

        swift_unknownObjectRetain();
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      v25 = sub_1D78B6844();
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

void sub_1D782C68C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PaywallShownEntry(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D78300CC(0, &unk_1EE08E540, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6EC8]);
  v42 = v4;
  v9 = sub_1D78B6554();
  v10 = v9;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
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
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v41 + 72);
      v29 = v24 + v28 * v23;
      if (v42)
      {
        sub_1D77B6AEC(v29, v43);
      }

      else
      {
        sub_1D7830140(v29, v43, type metadata accessor for PaywallShownEntry);
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      v30 = sub_1D78B6844();
      v31 = -1 << *(v10 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      sub_1D77B6AEC(v43, *(v10 + 56) + v28 * v18);
      ++*(v10 + 16);
      v8 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D782CA00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D78305AC(0);
  v51 = v4;
  v6 = sub_1D78B6554();
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
    v50 = v5;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = *(v5 + 48) + 24 * v23;
      v26 = *v25;
      v27 = *(v25 + 16);
      if (v51)
      {
        v28 = (v24 + 168 * v23);
        v52 = *v28;
        v53 = v28[1];
        v55 = *(v28 + 4);
        v56 = *(v28 + 40);
        v57 = *(v28 + 48);
        v54 = *(v28 + 56);
        v58 = *(v28 + 9);
        v59 = *(v25 + 8);
        v29 = v28[8];
        v73 = v28[7];
        v74 = v29;
        v75 = v28[9];
        v76 = *(v28 + 20);
        v30 = v28[5];
        v31 = v28[6];
      }

      else
      {
        v59 = *(v25 + 8);
        v32 = (v24 + 168 * v23);
        v34 = v32[1];
        v33 = v32[2];
        v61 = *v32;
        v62 = v34;
        v63 = v33;
        v35 = v32[6];
        v37 = v32[3];
        v36 = v32[4];
        v65 = v32[5];
        v66 = v35;
        *v64 = v37;
        *&v64[16] = v36;
        v39 = v32[8];
        v38 = v32[9];
        v40 = v32[7];
        v70 = *(v32 + 20);
        v68 = v39;
        v69 = v38;
        v67 = v40;
        v58 = *&v64[24];
        v56 = BYTE8(v63);
        v57 = v37;
        v55 = v63;
        v53 = v62;
        v54 = *&v64[8];
        v52 = v61;

        sub_1D778CEAC(&v61, v60);
        v73 = v67;
        v74 = v68;
        v75 = v69;
        v76 = v70;
        v30 = v65;
        v31 = v66;
      }

      v71 = v30;
      v72 = v31;
      sub_1D78B6814();
      sub_1D78B5D14();

      sub_1D78B6834();
      if (v27)
      {
        sub_1D78B5D14();
      }

      v41 = sub_1D78B6844();
      v42 = -1 << *(v7 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v14 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v14 + 8 * v44);
          if (v48 != -1)
          {
            v15 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v43) & ~*(v14 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v26;
      *(v16 + 8) = v59;
      *(v16 + 16) = v27;
      v17 = *(v7 + 56) + 168 * v15;
      *v17 = v52;
      *(v17 + 16) = v53;
      *(v17 + 32) = v55;
      *(v17 + 40) = v56;
      *(v17 + 48) = v57;
      *(v17 + 56) = v54;
      *(v17 + 72) = v58;
      v18 = v74;
      *(v17 + 112) = v73;
      *(v17 + 128) = v18;
      *(v17 + 144) = v75;
      *(v17 + 160) = v76;
      v19 = v72;
      *(v17 + 80) = v71;
      *(v17 + 96) = v19;
      ++*(v7 + 16);
      v5 = v50;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v51 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v2;
    if (v49 >= 64)
    {
      bzero(v9, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

void sub_1D782D004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v47 = sub_1D78B57A4();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v6);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1D78300CC(0, &unk_1EE08FB20, MEMORY[0x1E69B6118], MEMORY[0x1E69E6EC8]);
  v44 = v4;
  v9 = sub_1D78B6554();
  v10 = v9;
  if (*(v8 + 16))
  {
    v40 = v2;
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
    v41 = (v5 + 16);
    v42 = v8;
    v43 = v5;
    v45 = (v5 + 32);
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v43 + 72);
      v29 = v24 + v28 * v23;
      if (v44)
      {
        (*v45)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      v30 = sub_1D78B6844();
      v31 = -1 << *(v10 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      (*v45)((*(v10 + 56) + v28 * v18), v46, v47);
      ++*(v10 + 16);
      v8 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D782D3AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D7830610(0);
  v36 = v4;
  v6 = sub_1D78B6554();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      v26 = sub_1D78B6844();
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
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
}

uint64_t sub_1D782D644(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D78B6344() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      sub_1D78B6814();
      MEMORY[0x1DA703AC0](v10);
      result = sub_1D78B6844();
      v11 = result & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v4);
        v14 = (v12 + 8 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D782D7D8(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D78B6344() + 1) & ~v6;
    do
    {
      sub_1D78B6814();

      sub_1D78B5D14();
      v11 = sub_1D78B6844();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v4);
        v15 = (v13 + 16 * v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v4);
        v18 = (v16 + 32 * v7);
        if (v4 != v7 || v17 >= v18 + 2)
        {
          v10 = v18[1];
          *v17 = *v18;
          v17[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_1D782D988(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D78B6344() + 1) & ~v6;
    do
    {
      sub_1D78B6814();

      sub_1D78B5D14();
      v10 = sub_1D78B6844();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v4);
        v17 = (v15 + 16 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1D782DB38(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D78B6344() + 1) & ~v6;
    do
    {
      sub_1D78B6814();

      sub_1D78B5D14();
      v10 = sub_1D78B6844();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1D782DD00(int64_t a1, uint64_t a2, uint64_t (*a3)(void), __n128 a4)
{
  v5 = a1;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v10 = ~v7;
    v11 = (sub_1D78B6344() + 1) & ~v7;
    while (1)
    {
      sub_1D78B6814();

      sub_1D78B5D14();
      v12 = sub_1D78B6844();

      v13 = v12 & v10;
      if (v5 >= v11)
      {
        break;
      }

      if (v13 < v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v5);
      v16 = (v14 + 16 * v8);
      if (v5 != v8 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v5;
      v20 = v17 + v18 * v5;
      v21 = v18 * v8;
      v22 = v17 + v18 * v8 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v10;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

unint64_t sub_1D782DEF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D777BC2C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D782EC94();
    result = v17;
    goto LABEL_8;
  }

  sub_1D782B4D4(v14, a3 & 1);
  result = sub_1D777BC2C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  type metadata accessor for UIUserInterfaceStyle(0);
  sub_1D78B6784();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

_OWORD *sub_1D782E03C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D777BBB4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D782EDE4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D782B754(v16, a4 & 1);
    v11 = sub_1D777BBB4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D78B6784();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D778D0A0(a1, v22);
  }

  else
  {
    sub_1D782EACC(v11, a2, a3, a1, v21);
  }
}

void sub_1D782E18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D777BBB4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D782BA14(v18, a5 & 1);
      v13 = sub_1D777BBB4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1D78B6784();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1D782EF90();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_1D782E314(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D777BBB4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PurchaseContext(0);
      return sub_1D7830360(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PurchaseContext);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D782F10C();
    goto LABEL_7;
  }

  sub_1D782BCD8(v15, a4 & 1);
  v22 = sub_1D777BBB4(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D78B6784();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D782EB38(v12, a2, a3, a1, v18, type metadata accessor for PurchaseContext, sub_1D777044C);
}

uint64_t sub_1D782E4A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D777BBB4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PurchaseAdContext(0);
      return sub_1D7830360(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PurchaseAdContext);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D782F374();
    goto LABEL_7;
  }

  sub_1D782C04C(v15, a4 & 1);
  v22 = sub_1D777BBB4(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D78B6784();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D782EB38(v12, a2, a3, a1, v18, type metadata accessor for PurchaseAdContext, sub_1D77F63C8);
}

uint64_t sub_1D782E63C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D777BBB4(a2, a3);
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
      sub_1D782C3C0(v16, a4 & 1);
      v11 = sub_1D777BBB4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D78B6784();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D782F5DC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
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
}

uint64_t sub_1D782E7B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D777BBB4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PaywallShownEntry(0);
      return sub_1D7830360(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PaywallShownEntry);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D782F770();
    goto LABEL_7;
  }

  sub_1D782C68C(v15, a4 & 1);
  v22 = sub_1D777BBB4(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D78B6784();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D782EB38(v12, a2, a3, a1, v18, type metadata accessor for PaywallShownEntry, sub_1D77B6AEC);
}

uint64_t sub_1D782E94C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D777BBB4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1D782FBD8();
      goto LABEL_7;
    }

    sub_1D782D004(v15, a4 & 1);
    v26 = sub_1D777BBB4(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D78B6784();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1D78B57A4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1D782EBE4(v12, a2, a3, a1, v18);
}

_OWORD *sub_1D782EACC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D778D0A0(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1D782EB38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, unint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = a7(a4, v12 + *(*(v13 - 8) + 72) * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1D782EBE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1D78B57A4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

void sub_1D782EC94()
{
  v1 = v0;
  sub_1D78303C8(0);
  v2 = *v0;
  v3 = sub_1D78B6544();
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
        v19 = v18;
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

void sub_1D782EDE4()
{
  v1 = v0;
  sub_1D7830484(0, &qword_1EE08FB10, MEMORY[0x1E69E7CA0] + 8);
  v2 = *v0;
  v3 = sub_1D78B6544();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D777BE08(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D778D0A0(v25, (*(v4 + 56) + v22));
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
}

void sub_1D782EF90()
{
  v1 = v0;
  sub_1D7830484(0, &unk_1EC9CAC10, MEMORY[0x1E69E6158]);
  v2 = *v0;
  v3 = sub_1D78B6544();
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
}

void sub_1D782F10C()
{
  v1 = v0;
  v2 = type metadata accessor for PurchaseContext(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78300CC(0, &qword_1EE08E550, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1D78B6544();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1D7830140(*(v5 + 56) + v27, v31, type metadata accessor for PurchaseContext);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1D777044C(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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
}

void sub_1D782F374()
{
  v1 = v0;
  v2 = type metadata accessor for PurchaseAdContext(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78300CC(0, &unk_1EC9CA770, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1D78B6544();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1D7830140(*(v5 + 56) + v27, v31, type metadata accessor for PurchaseAdContext);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1D77F63C8(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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
}

void sub_1D782F5DC()
{
  v1 = v0;
  sub_1D78300CC(0, &qword_1EC9CAC30, sub_1D779DA54, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1D78B6544();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        swift_unknownObjectRetain();
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

void sub_1D782F770()
{
  v1 = v0;
  v2 = type metadata accessor for PaywallShownEntry(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78300CC(0, &unk_1EE08E540, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1D78B6544();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1D7830140(*(v5 + 56) + v27, v31, type metadata accessor for PaywallShownEntry);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1D77B6AEC(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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
}

void sub_1D782F9D8()
{
  v1 = v0;
  sub_1D78305AC(0);
  v2 = *v0;
  v3 = sub_1D78B6544();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 24 * v16;
      v18 = *(v2 + 48) + 24 * v16;
      v19 = *v18;
      v21 = *(v18 + 8);
      v20 = *(v18 + 16);
      v16 *= 168;
      v22 = *(v2 + 56) + v16;
      v23 = *(v22 + 96);
      v25 = *(v22 + 48);
      v24 = *(v22 + 64);
      v47 = *(v22 + 80);
      v48 = v23;
      v45 = v25;
      v46 = v24;
      v27 = *(v22 + 128);
      v26 = *(v22 + 144);
      v28 = *(v22 + 112);
      v52 = *(v22 + 160);
      v50 = v27;
      v51 = v26;
      v49 = v28;
      v30 = *(v22 + 16);
      v29 = *(v22 + 32);
      v42 = *v22;
      v43 = v30;
      v44 = v29;
      v31 = *(v4 + 48) + v17;
      *v31 = v19;
      *(v31 + 8) = v21;
      *(v31 + 16) = v20;
      v32 = *(v4 + 56) + v16;
      v33 = v42;
      v34 = v44;
      *(v32 + 16) = v43;
      *(v32 + 32) = v34;
      *v32 = v33;
      v35 = v45;
      v36 = v46;
      v37 = v48;
      *(v32 + 80) = v47;
      *(v32 + 96) = v37;
      *(v32 + 48) = v35;
      *(v32 + 64) = v36;
      v38 = v49;
      v39 = v50;
      v40 = v51;
      *(v32 + 160) = v52;
      *(v32 + 128) = v39;
      *(v32 + 144) = v40;
      *(v32 + 112) = v38;

      sub_1D778CEAC(&v42, v41);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void sub_1D782FBD8()
{
  v1 = v0;
  v36 = sub_1D78B57A4();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78300CC(0, &unk_1EE08FB20, MEMORY[0x1E69B6118], MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1D78B6544();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1D782FE7C()
{
  v1 = v0;
  sub_1D7830610(0);
  v2 = *v0;
  v3 = sub_1D78B6544();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
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

uint64_t sub_1D783006C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D78300CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D7830140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D78301A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7830208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7830270(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D78302F0(0, a3, a4, MEMORY[0x1E69E6530], "offset element ");
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D78302F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D7830360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1D78303C8(uint64_t a1)
{
  if (!qword_1EE08FB00)
  {
    type metadata accessor for UIUserInterfaceStyle(255);
    sub_1D773F004(255, &qword_1EE08FBE8, 0x1E69DCAB8);
    sub_1D7749114(&unk_1EE08FDA0, type metadata accessor for UIUserInterfaceStyle, &unk_1D78BBD7C);
    v1 = sub_1D78B6574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FB00);
    }
  }
}

void sub_1D7830484(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D78B6574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D78304DC()
{
  v1 = *(type metadata accessor for PaywallShownEntry(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1D782AC98(v2, v3, v4, v5);
}

void sub_1D7830544(uint64_t a1)
{
  if (!qword_1EE08E618)
  {
    type metadata accessor for PaywallShownEntry(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08E618);
    }
  }
}

void sub_1D78305AC(uint64_t a1)
{
  if (!qword_1EE08FB40)
  {
    sub_1D7744504();
    v1 = sub_1D78B6574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FB40);
    }
  }
}

void sub_1D7830610(uint64_t a1)
{
  if (!qword_1EC9CAC20)
  {
    sub_1D773F004(255, &qword_1EE08FCB0, 0x1E69B5618);
    v1 = sub_1D78B6574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CAC20);
    }
  }
}

unint64_t sub_1D7830688()
{
  result = qword_1EE08F0B8[0];
  if (!qword_1EE08F0B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE08F0B8);
  }

  return result;
}

void sub_1D78306DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7830688();
    v7 = a3(a1, &type metadata for PaywallShownEntry.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7830754()
{
  result = qword_1EC9CAC38;
  if (!qword_1EC9CAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC38);
  }

  return result;
}

unint64_t sub_1D78307AC()
{
  result = qword_1EE08F0A0;
  if (!qword_1EE08F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F0A0);
  }

  return result;
}

unint64_t sub_1D7830804()
{
  result = qword_1EE08F0A8;
  if (!qword_1EE08F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F0A8);
  }

  return result;
}

uint64_t static StartupTaskGroup.subscriptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE095380 != -1)
  {
    swift_once();
  }

  v2 = sub_1D78B3C44();
  v3 = __swift_project_value_buffer(v2, qword_1EE095388);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D7830930(uint64_t a1)
{
  result = sub_1D78B3C44();
  if (v2 <= 0x3F)
  {
    result = sub_1D78B3F04();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D7830A74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t initializeBufferWithCopyOfBuffer for HideMyEmailSignupLayoutSectionDescriptor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

CGFloat sub_1D7830B38()
{
  sub_1D77CF8C8(v0, v2);
  sub_1D77CF8C8(v2, &v3);
  return CGRectGetHeight(v3);
}

CGFloat sub_1D7830B88()
{
  sub_1D77CF8C8(v0, v2);
  sub_1D77CF8C8(v2, v3);
  return CGRectGetHeight(v4);
}

uint64_t sub_1D7830BD8(uint64_t a1)
{
  v2 = sub_1D7830C34();

  return MEMORY[0x1EEE47ED0](a1, v2);
}

unint64_t sub_1D7830C34()
{
  result = qword_1EC9CAC48;
  if (!qword_1EC9CAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC48);
  }

  return result;
}

uint64_t sub_1D7830CA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 256);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7830CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 256) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D7830DA0(int a1, double *a2, char *a3)
{
  v4 = v3;
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[10];
  v13 = a2[11];
  v31 = a2[13];
  v32 = a2[12];
  v29 = a2[15];
  v30 = a2[14];
  v35 = a2[17];
  v36 = a2[16];
  v33 = a2[19];
  v34 = a2[18];
  [a3 setFrame_];
  v14 = *&a3[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_titleLabel];
  [v14 setFrame_];
  v15 = v3[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v16 = PurchasingSpinner.label.getter();
  v17 = (*(v15 + 8))(v16);

  [v14 setAttributedText_];

  v18 = *&a3[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_spinner];
  [v18 setFrame_];
  [v18 startAnimating];
  v19 = v4[5];
  v20 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v19);
  (*(v20 + 16))(v18, v19, v20);
  v21 = *&a3[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_purchasingSpinnerView];
  [v21 setFrame_];
  v22 = v4[5];
  v23 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v22);
  (*(v23 + 24))(v21, v22, v23);
  v24 = *&a3[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_purchasingScrim];
  [v24 setFrame_];
  if (qword_1EC9C8470 != -1)
  {
    swift_once();
  }

  [v24 setImage_];
  [a3 frame];
  MidX = CGRectGetMidX(v38);
  [a3 frame];
  [v24 setCenter_];
  [a3 frame];
  v26 = CGRectGetMidX(v40);
  [a3 frame];
  MidY = CGRectGetMidY(v41);

  return [v21 setCenter_];
}

id _s16NewsSubscription8AMSUIBagC3bagSo14AMSBagProtocol_pyFZ_0()
{
  result = [objc_opt_self() bagKeySet];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = result;
  v2 = objc_opt_self();
  v3 = sub_1D78B5C44();
  v4 = sub_1D78B5C44();
  [v2 registerBagKeySet:v1 forProfile:v3 profileVersion:v4];

  result = [objc_opt_self() bagKeySet];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = sub_1D78B5C44();
  v7 = sub_1D78B5C44();
  [v2 registerBagKeySet:v5 forProfile:v6 profileVersion:v7];

  sub_1D78312FC();
  result = [swift_getObjCClassFromMetadata() bagKeySet];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = sub_1D78B5C44();
  v10 = sub_1D78B5C44();
  [v2 registerBagKeySet:v8 forProfile:v9 profileVersion:v10];

  v11 = [objc_opt_self() bag];

  return v11;
}

unint64_t sub_1D78312FC()
{
  result = qword_1EE08E560;
  if (!qword_1EE08E560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08E560);
  }

  return result;
}

id sub_1D7831348(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v44[1] = a4;
  v49 = a3;
  v4 = sub_1D78B4884();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v46 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77CF978(0, &qword_1EC9CA2B8, sub_1D77CE1C8, &type metadata for HideMyEmailSignupLayoutModel, MEMORY[0x1E69D7BF0]);
  sub_1D78B4904();
  v92 = v63;
  v93 = v64;
  v94[0] = v65[0];
  *(v94 + 9) = *(v65 + 9);
  v88 = v59;
  v89 = v60;
  v90 = v61;
  v91 = v62;
  v86 = v57;
  v87 = v58;
  sub_1D77CF978(0, &qword_1EC9CA2C0, sub_1D77CE220, &type metadata for HideMyEmailSignupModel, MEMORY[0x1E69D76A0]);
  sub_1D78B4594();
  v95[6] = v92;
  v95[7] = v93;
  v96[0] = v94[0];
  *(v96 + 9) = *(v94 + 9);
  v95[2] = v88;
  v95[3] = v89;
  v95[4] = v90;
  v95[5] = v91;
  v95[0] = v86;
  v95[1] = v87;
  v104[6] = v92;
  v104[7] = v93;
  v105[0] = v94[0];
  *(v105 + 9) = *(v94 + 9);
  v104[2] = v88;
  v104[3] = v89;
  v104[4] = v90;
  v104[5] = v91;
  v8 = v50;
  v7 = v51;
  v9 = v53;
  v11 = v54;
  v10 = v55;
  v12 = v56;
  v97 = v50;
  v98 = v51;
  v44[0] = v52;
  v99 = v52;
  v100 = v53;
  v101 = v54;
  v102 = v55;
  v103 = v56;
  v104[0] = v86;
  v104[1] = v87;
  v13 = sub_1D77CF86C(v104);
  if (v13)
  {
    if (v13 == 1)
    {
      nullsub_1();
      if ((v12 & 0xC0) == 0x40)
      {
        v15 = v14;
        v16 = 0;
LABEL_7:

        sub_1D7831A74(v95);
        v18 = *(v15 + 64);
        v83 = *(v15 + 48);
        v84 = v18;
        v85 = *(v15 + 80);
        v19 = *(v15 + 32);
        v81 = *(v15 + 16);
        v82 = v19;
        v20 = *(v15 + 88);
        v21 = *(v15 + 96);
        v22 = *(v15 + 104);
        v23 = *(v15 + 112);
        v24 = *(v15 + 136);
        v79 = *(v15 + 120);
        v80 = v24;
        v70 = v85;
        v68 = v83;
        v69 = v84;
        v66 = v81;
        v67 = v19;
        v71 = v20;
        v72 = v21;
        v73 = v22;
        v74 = v23;
        v76 = v24;
        v75 = v79;
        v77[0] = v8;
        v77[1] = v7;
        v77[2] = v44[0];
        v77[3] = v9;
        v77[4] = v11;
        v77[5] = v10;
        v78 = v12 & 1;
        sub_1D7831B30(0);
        v25 = v49;
        v26 = sub_1D78B6024();
        __swift_project_boxed_opaque_existential_1(v45 + 2, v45[5]);
        v27 = sub_1D78B4644();
        sub_1D7803BC4(v27, &v66, v77);

        (*(v47 + 104))(v46, *MEMORY[0x1E69D7AC0], v48);
        sub_1D78B4634();
        if (!v16)
        {
          return v26;
        }

        v26 = v26;
        v106.origin.x = v20;
        v106.origin.y = v21;
        v106.size.width = v22;
        v106.size.height = v23;
        MinX = CGRectGetMinX(v106);
        [v25 layoutMargins];
        [v26 setSeparatorInset_];
LABEL_11:

        return v26;
      }
    }

    else
    {
      nullsub_1();
      if ((v12 & 0xC0) == 0x80)
      {
        v31 = v30;
        v32 = *(v30 + 64);
        v68 = *(v30 + 48);
        v69 = v32;
        v70 = *(v30 + 80);
        v33 = *(v30 + 32);
        v66 = *(v30 + 16);
        v67 = v33;
        sub_1D78319E0(0);
        v34 = v49;
        v35 = sub_1D78B6024();
        __swift_project_boxed_opaque_existential_1(v45 + 7, v45[10]);
        v36 = sub_1D78B4644();
        sub_1D78B29D0(v36, &v66, v8, v7, v44[0] & 1);

        (*(v47 + 104))(v46, *MEMORY[0x1E69D7AC0], v48);
        sub_1D78B4634();
        v37 = v31[7];
        v38 = v31[8];
        v39 = v31[9];
        v40 = v31[10];
        v26 = v35;
        v107.origin.x = v37;
        v107.origin.y = v38;
        v107.size.width = v39;
        v107.size.height = v40;
        v41 = CGRectGetMinX(v107);
        [v34 layoutMargins];
        [v26 setSeparatorInset_];
        sub_1D7831A74(v95);
        goto LABEL_11;
      }
    }
  }

  else
  {
    nullsub_1();
    if (v12 <= 0x3F)
    {
      v15 = v17;
      v16 = 1;
      goto LABEL_7;
    }
  }

  result = sub_1D78B6524();
  __break(1u);
  return result;
}

uint64_t sub_1D78318F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_1D776ABA8(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7831960()
{
  sub_1D7831B30(0);
  sub_1D78B6044();
  sub_1D78319E0(0);
  return sub_1D78B6044();
}

id sub_1D78319B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1D7831348(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_1D78319E0(uint64_t a1)
{
  if (!qword_1EC9CAC50)
  {
    type metadata accessor for HideMyEmailSignupAlternateView();
    sub_1D7831BC4(&qword_1EC9CAC58, type metadata accessor for HideMyEmailSignupAlternateView, &unk_1D78C6598);
    v1 = sub_1D78B4654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CAC50);
    }
  }
}

uint64_t sub_1D7831A74(uint64_t a1)
{
  sub_1D7831AD0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7831AD0()
{
  if (!qword_1EC9CAC60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9CAC60);
    }
  }
}

void sub_1D7831B30(uint64_t a1)
{
  if (!qword_1EC9CAC68)
  {
    type metadata accessor for HideMyEmailSignupChoiceView();
    sub_1D7831BC4(&qword_1EC9CAC70, type metadata accessor for HideMyEmailSignupChoiceView, &unk_1D78CA764);
    v1 = sub_1D78B4654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CAC68);
    }
  }
}

uint64_t sub_1D7831BC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1D7831C5C(uint64_t a1, uint64_t a2)
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

  sub_1D7832A30();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1D7831CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1D78B5DF4();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D7832250(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1D78B64A4();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
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

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1D7832250(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D78B5E04();
  v6 = sub_1D78322D0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1D78322D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D78B62B4();
    if (!v9 || (v10 = v9, v11 = sub_1D7831C5C(v9, 0), v12 = sub_1D7832428(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D78B5D04();

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
      return sub_1D78B5D04();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D78B64A4();
LABEL_4:

  return sub_1D78B5D04();
}

unint64_t sub_1D7832428(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1D7832648(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D78B5DB4();
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
          result = sub_1D78B64A4();
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

    result = sub_1D7832648(v12, a6, a7);
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

    result = sub_1D78B5D94();
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

unint64_t sub_1D7832648(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D78B5DC4();
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
    v5 = MEMORY[0x1DA703040](15, a1 >> 16);
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

void sub_1D78326C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D78B5C44();
  v5 = sub_1D78B5C44();
  v6 = [v4 fc:v5 numberFollowingString:?];

  if (v6)
  {
    [v6 integerValue];

    return;
  }

  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {

      sub_1D7831CC4(a1, a2, 10);

      return;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v35[0] = a1;
      v35[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v24 = 0;
            v25 = v35 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_71:
        __break(1u);
        return;
      }

      if (a1 != 45)
      {
        if (v7)
        {
          v31 = 0;
          v32 = v35;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v7)
      {
        if (--v7)
        {
          v16 = 0;
          v17 = v35 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_1D78B64A4();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v20 = 0;
            if (v10)
            {
              v21 = v10 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  goto LABEL_63;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  goto LABEL_63;
                }

                v20 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_63;
                }

                ++v21;
                if (!--v7)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_70;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v28 = 0;
          if (v10)
          {
            while (1)
            {
              v29 = *v10 - 48;
              if (v29 > 9)
              {
                goto LABEL_63;
              }

              v30 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                goto LABEL_63;
              }

              v28 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_63;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        LOBYTE(v7) = 1;
        goto LABEL_64;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_63;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_63;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_63;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v7) = 0;
LABEL_64:
          v36 = v7;
          return;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }
}

void sub_1D7832A30()
{
  if (!qword_1EE08FA18)
  {
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FA18);
    }
  }
}

uint64_t sub_1D7832A80()
{
  sub_1D776ABA8(v0 + 16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

id sub_1D7832AFC(uint64_t a1, uint64_t a2)
{
  if (qword_1EC9C8708 != -1)
  {
    swift_once();
  }

  if (sub_1D78B35C4())
  {
    if (qword_1EC9C8700 != -1)
    {
      swift_once();
    }

    sub_1D7832E10();
    sub_1D78B3574();
    if (qword_1EC9C86F8 != -1)
    {
      swift_once();
    }

    sub_1D78B3574();
    v4 = objc_allocWithZone(MEMORY[0x1E69B55B8]);
    v5 = sub_1D78B5C44();

    v6 = sub_1D78B5C44();

    v7 = [v4 initWithClientIdentifier:v5 teamIdentifier:v6];

    return v7;
  }

  else
  {

    return sub_1D7832CE8(a1, a2);
  }
}

id sub_1D7832CE8(uint64_t a1, uint64_t a2)
{
  result = [*(v2 + 16) configuration];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      v7 = [v6 channelUpsellConfigsByChannelID];
      swift_unknownObjectRelease();
      sub_1D77895D8();
      v8 = sub_1D78B5BC4();

      if (*(v8 + 16))
      {
        v9 = sub_1D777BBB4(a1, a2);
        if (v10)
        {
          v11 = *(*(v8 + 56) + 8 * v9);

          v12 = [v11 siwaPurchaseConfiguration];

          return v12;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7832E10()
{
  result = qword_1EC9CAC78;
  if (!qword_1EC9CAC78)
  {
    type metadata accessor for SIWAPurchaseConfigProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC78);
  }

  return result;
}

uint64_t sub_1D7832E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D78B6814();
  sub_1D78B5D14();
  v6 = sub_1D78B6844();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D78B6724() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void PaywallTypeProvider.paywallType(for:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = [v5 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v7 = [a1 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  else
  {
    v8 = [a1 identifier];
  }

  v9 = sub_1D78B5C74();
  v11 = v10;

  v12 = [v6 purchasedTagIDs];
  v13 = sub_1D78B5F64();

  LOBYTE(v12) = sub_1D7832E64(v9, v11, v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v12)
  {
LABEL_30:
    v23 = 96;
LABEL_42:
    *a2 = v23;
    return;
  }

LABEL_7:
  v14 = [objc_msgSend(v5 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    sub_1D7756B84(&v34);
    goto LABEL_15;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v15 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  v15 = v31;
  v16 = [v31 integerValue];
  if (v16 == -1)
  {

    goto LABEL_27;
  }

  v17 = v16;
LABEL_16:
  if (objc_getAssociatedObject(v14, ~v17))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    sub_1D7756B84(&v34);
LABEL_24:

    if ((v17 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v18 = v31;
  v19 = [v18 integerValue];

  if (((v19 ^ v17) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v20 = [objc_msgSend(v5 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v21 = [a1 identifier];
  if (!v21)
  {
    sub_1D78B5C74();
    v21 = sub_1D78B5C44();
  }

  v22 = [v20 containsTagID_];

  if (v22)
  {
    goto LABEL_30;
  }

LABEL_31:
  v24 = [*(v2 + 24) cachedSubscription];
  v25 = [a1 identifier];
  if (!v25)
  {
    sub_1D78B5C74();
    v25 = sub_1D78B5C44();
  }

  v26 = [v24 containsTagID_];

  if (!v26)
  {
    goto LABEL_39;
  }

  v27 = [*(v2 + 16) configuration];
  if (v27)
  {
    v28 = v27;
    if ([v27 respondsToSelector_])
    {
      v29 = [v28 paidBundleConfig];
      swift_unknownObjectRelease();
      v30 = [v29 areMagazinesEnabled];

      if (v30)
      {
        v23 = 97;
        goto LABEL_42;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_39:
    if ([a1 isPurchaseSetup])
    {
      v23 = 32;
    }

    else
    {
      v23 = 96;
    }

    goto LABEL_42;
  }

  __break(1u);
}

{
  if ([a1 isDraft])
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v5 = sub_1D78B4304();
    __swift_project_value_buffer(v5, qword_1EE09C1F0);
    v6 = sub_1D78B42E4();
    v7 = sub_1D78B60A4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D7739000, v6, v7, "No paywall for draft recipes", v8, 2u);
      MEMORY[0x1DA7043F0](v8, -1, -1);
    }

    v9 = 96;
  }

  else
  {
    v9 = 96;
    if ([a1 isPaid])
    {
      __swift_project_boxed_opaque_existential_1((v2 + 120), *(v2 + 144));
      if (sub_1D78B59E4())
      {
        v9 = 96;
      }

      else
      {
        v9 = 64;
      }
    }
  }

  *a2 = v9;
}

void *PaywallTypeProvider.paywallType(for:articleAccess:evaluateOnly:)@<X0>(void *a1@<X0>, char *a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v8 = *a2;
  if (qword_1EE095550 != -1)
  {
    swift_once();
  }

  sub_1D7834ED0();
  result = sub_1D78B3574();
  if ((v16[1] & 1) != 0 || !a1)
  {
    goto LABEL_11;
  }

  if ([swift_unknownObjectRetain() isDraft] || (v10 = objc_msgSend(a1, sel_sourceChannel)) == 0)
  {
LABEL_10:
    result = swift_unknownObjectRelease();
LABEL_11:
    *a4 = 96;
    return result;
  }

  v11 = v10;
  v15 = v8;
  sub_1D7833614(a1, v10, &v15, a3 & 1, v16);
  v12 = v16[0];
  if (v16[0] == 96)
  {
    v13 = [objc_msgSend(*(v4 + 112) appConfiguration)];
    swift_unknownObjectRelease();
    if (v13)
    {
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    v14 = v8;
    sub_1D7833D0C(a1, v11, &v14, a3 & 1, a4);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    *a4 = v12;
  }

  return result;
}

void sub_1D7833614(void *a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v10 = *a3;
  v11 = [*(v5 + 16) configuration];
  if (v11)
  {
    v12 = v11;
    if (([v11 respondsToSelector_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_66;
    }

    v13 = [v12 paidBundleConfig];
    swift_unknownObjectRelease();
    if ((sub_1D7834A44(v13) & 1) == 0)
    {
LABEL_65:

      goto LABEL_66;
    }

    v49 = v10;
    v50 = a4;
    v14 = *(v5 + 48);
    v15 = [v14 purchaseProvider];
    v51 = a1;
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v16 = [a2 asSection];
      if (!v16 || (v17 = [v16 parentID], swift_unknownObjectRelease(), !v17))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    else
    {
      v17 = [a2 identifier];
    }

    v18 = sub_1D78B5C74();
    v20 = v19;

    v21 = [v15 purchasedTagIDs];
    v22 = sub_1D78B5F64();

    LOBYTE(v18) = sub_1D7832E64(v18, v20, v22);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v18)
    {
      goto LABEL_65;
    }

LABEL_11:
    v23 = [objc_msgSend(v14 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v23, v23 + 1))
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    v55 = v53;
    v56 = v54;
    if (*(&v54 + 1))
    {
      sub_1D77BFFAC();
      if (swift_dynamicCast())
      {
        v24 = v52;
        v25 = [v52 integerValue];
        if (v25 == -1)
        {

          goto LABEL_31;
        }

        v26 = v25;
LABEL_20:
        if (objc_getAssociatedObject(v23, ~v26))
        {
          sub_1D78B6304();
          swift_unknownObjectRelease();
        }

        else
        {
          v53 = 0u;
          v54 = 0u;
        }

        v55 = v53;
        v56 = v54;
        if (*(&v54 + 1))
        {
          sub_1D77BFFAC();
          if (swift_dynamicCast())
          {
            v27 = v52;
            v28 = [v27 integerValue];

            if (((v28 ^ v26) & 1) == 0)
            {
              goto LABEL_34;
            }

            goto LABEL_31;
          }
        }

        else
        {
          sub_1D7756B84(&v55);
        }

        if ((v26 & 1) == 0)
        {
LABEL_34:
          if ([v51 respondsToSelector_] & 1) == 0 || !objc_msgSend(v51, sel_isBundlePaid) || (v32 = objc_msgSend(*(v5 + 24), sel_cachedSubscription), v33 = objc_msgSend(v32, sel_containsHeadline_, v51), v32, (v33))
          {
            v34 = [*(v5 + 24) cachedSubscription];
            v35 = [a2 identifier];
            if (!v35)
            {
              sub_1D78B5C74();
              v35 = sub_1D78B5C44();
            }

            v36 = [v34 containsTagID_];

            if (v36)
            {
              if (([v51 respondsToSelector_] & 1) == 0 || (v37 = objc_msgSend(v51, sel_role), v37 > 7) || ((1 << v37) & 0x98) == 0)
              {
                v38 = [v51 respondsToSelector_];
                if (v38)
                {
                  v39 = [v51 role];
                }

                else
                {
                  v39 = 0;
                }

                if (sub_1D7834B88(v39, (v38 & 1) == 0, a2))
                {

                  v40 = 0;
LABEL_67:
                  *a5 = v40;
                  return;
                }

                if (([v51 respondsToSelector_] & 1) != 0 && objc_msgSend(v51, sel_isBundlePaid))
                {
                  v41 = *(v5 + 40);
                  ObjectType = swift_getObjectType();
                  LOBYTE(v55) = v49;
                  v43 = (*(v41 + 8))(v51, &v55, ObjectType, v41);

                  v40 = v49 != 2;
                  if (v49 == 2)
                  {
                    v44 = 16;
                  }

                  else
                  {
                    v44 = 17;
                  }

                  if (v43)
                  {
                    v40 = v44;
                  }

                  goto LABEL_67;
                }

                v45 = *(v5 + 64);
                v46 = swift_getObjectType();
                if ((*(v45 + 8))(v51, v50 & 1, v46, v45))
                {
                  if (([v51 respondsToSelector_] & 1) != 0 && objc_msgSend(v51, sel_showBundleSoftPaywall))
                  {

                    v47 = v49;
                    goto LABEL_62;
                  }

                  v47 = v49;
                  if ([v51 respondsToSelector_])
                  {
                    v48 = [v51 hasAudioTrack];

                    if (v48)
                    {
LABEL_62:
                      if (v47 == 2)
                      {
                        v40 = 16;
                      }

                      else
                      {
                        v40 = 17;
                      }

                      goto LABEL_67;
                    }

LABEL_66:
                    v40 = 96;
                    goto LABEL_67;
                  }
                }
              }
            }
          }

          goto LABEL_65;
        }

LABEL_31:
        v29 = [objc_msgSend(v14 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v30 = [a2 identifier];
        if (!v30)
        {
          sub_1D78B5C74();
          v30 = sub_1D78B5C44();
        }

        v31 = [v29 containsTagID_];

        if (v31)
        {
          goto LABEL_65;
        }

        goto LABEL_34;
      }
    }

    else
    {
      sub_1D7756B84(&v55);
    }

    v24 = 0;
    v26 = 0;
    goto LABEL_20;
  }

  __break(1u);
}

void sub_1D7833D0C(void *a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned int a4@<W3>, char *a5@<X8>)
{
  v10 = *a3;
  if ((sub_1D7834C6C() & 1) == 0)
  {
    goto LABEL_42;
  }

  v11 = v5[6];
  v12 = [objc_msgSend(v11 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v13 = [a2 identifier];
  if (!v13)
  {
    sub_1D78B5C74();
    v13 = sub_1D78B5C44();
  }

  v14 = [v12 containsTagID_];

  if ((v14 & 1) != 0 || ![a2 isPurchaseSetup])
  {
    goto LABEL_42;
  }

  v15 = [v11 purchaseProvider];
  v39 = __PAIR64__(a4, v10);
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v16 = [a2 asSection];
    if (!v16 || (v17 = [v16 parentID], swift_unknownObjectRelease(), !v17))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_12;
    }
  }

  else
  {
    v17 = [a2 identifier];
  }

  v18 = sub_1D78B5C74();
  v20 = v19;

  v21 = [v15 purchasedTagIDs];
  v22 = sub_1D78B5F64();

  LOBYTE(v21) = sub_1D7832E64(v18, v20, v22);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v21)
  {
    goto LABEL_42;
  }

LABEL_12:
  v23 = [objc_msgSend(v11 bundleSubscriptionProvider];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v23, v23 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (!*(&v44 + 1))
  {
    sub_1D7756B84(&v45);
    goto LABEL_20;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v24 = 0;
    v26 = 0;
LABEL_21:
    if (objc_getAssociatedObject(v23, ~v26))
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45 = v43;
    v46 = v44;
    if (*(&v44 + 1))
    {
      sub_1D77BFFAC();
      if (swift_dynamicCast())
      {
        v27 = v42;
        v28 = [v27 integerValue];

        v29 = v41;
        if (((v28 ^ v26) & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }
    }

    else
    {
      sub_1D7756B84(&v45);
    }

    v29 = v41;
    if ((v26 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v24 = v42;
  v25 = [v42 integerValue];
  if (v25 != -1)
  {
    v26 = v25;
    goto LABEL_21;
  }

  v29 = v41;
LABEL_32:
  v30 = [objc_msgSend(v11 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v31 = [a2 identifier];
  if (!v31)
  {
    sub_1D78B5C74();
    v31 = sub_1D78B5C44();
  }

  v32 = [v30 containsTagID_];

  if (v32)
  {
    goto LABEL_42;
  }

LABEL_35:
  if ([a1 isPaid])
  {
    v33 = v40 != 2;
    v34 = v5[5];
    ObjectType = swift_getObjectType();
    LOBYTE(v45) = v40;
    if ((*(v34 + 8))(a1, &v45, ObjectType, v34))
    {
      v36 = v33 | 0x20;
    }

    else
    {
      v36 = v33 | 0x30;
    }

    goto LABEL_43;
  }

  v37 = v5[12];
  v38 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v37);
  if (((*(v38 + 8))(a1, v29 & 1, v37, v38) & 1) == 0)
  {
LABEL_42:
    v36 = 96;
    goto LABEL_43;
  }

  if (v40 == 2)
  {
    v36 = 32;
  }

  else
  {
    v36 = 33;
  }

LABEL_43:
  *a5 = v36;
}

uint64_t PaywallTypeProvider.needsBundlePaywall(for:)(void *a1)
{
  if (qword_1EE095550 != -1)
  {
    swift_once();
  }

  sub_1D7834ED0();
  sub_1D78B3574();
  result = 0;
  if ((v34 & 1) == 0 && a1)
  {
    v4 = [swift_unknownObjectRetain() sourceChannel];
    if (!v4)
    {
      goto LABEL_23;
    }

    v5 = v4;
    if (([a1 respondsToSelector_] & 1) == 0 || (v6 = objc_msgSend(a1, sel_role), v6 > 7) || ((1 << v6) & 0x98) == 0)
    {
      result = [*(v1 + 16) configuration];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      if (([result respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_23:
        swift_unknownObjectRelease();
        return 0;
      }

      v8 = [v7 paidBundleConfig];
      swift_unknownObjectRelease();
      if ([v8 areMagazinesEnabled])
      {
        v9 = [*(v1 + 24) cachedSubscription];
        v10 = [v5 identifier];
        if (!v10)
        {
          sub_1D78B5C74();
          v10 = sub_1D78B5C44();
        }

        v11 = [v9 containsTagID_];

        if (v11)
        {
          v12 = *(v1 + 48);
          v13 = [v12 purchaseProvider];
          if ([swift_unknownObjectRetain() tagType] == 3)
          {
            v14 = [v5 asSection];
            if (!v14 || (v15 = [v14 parentID], swift_unknownObjectRelease(), !v15))
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_29;
            }
          }

          else
          {
            v15 = [v5 identifier];
          }

          v16 = sub_1D78B5C74();
          v18 = v17;

          v19 = [v13 purchasedTagIDs];
          v20 = sub_1D78B5F64();

          LOBYTE(v19) = sub_1D7832E64(v16, v18, v20);

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          if ((v19 & 1) == 0)
          {
LABEL_29:
            v21 = [objc_msgSend(v12 bundleSubscriptionProvider)];
            swift_unknownObjectRelease();
            if (objc_getAssociatedObject(v21, v21 + 1))
            {
              sub_1D78B6304();
              swift_unknownObjectRelease();
            }

            else
            {
              v32 = 0u;
              v33 = 0u;
            }

            v34 = v32;
            v35 = v33;
            if (*(&v33 + 1))
            {
              sub_1D77BFFAC();
              if (swift_dynamicCast())
              {
                v22 = v31;
                v23 = [v31 integerValue];
                if (v23 == -1)
                {

                  v27 = &selRef_isUserSignedIntoiTunes;
                  goto LABEL_49;
                }

                v24 = v23;
LABEL_38:
                if (objc_getAssociatedObject(v21, ~v24))
                {
                  sub_1D78B6304();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v32 = 0u;
                  v33 = 0u;
                }

                v34 = v32;
                v35 = v33;
                if (*(&v33 + 1))
                {
                  sub_1D77BFFAC();
                  if (swift_dynamicCast())
                  {
                    v25 = v31;
                    v26 = [v25 integerValue];

                    v27 = &selRef_isUserSignedIntoiTunes;
                    if ((v26 ^ v24))
                    {
LABEL_49:
                      v28 = [objc_msgSend(v12 bundleSubscriptionProvider)];
                      swift_unknownObjectRelease();
                      v29 = [v5 identifier];
                      if (!v29)
                      {
                        sub_1D78B5C74();
                        v29 = sub_1D78B5C44();
                      }

                      v30 = [v28 v27[128]];

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();

                      return (v30 & 1) == 0;
                    }

LABEL_47:
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();

                    return 1;
                  }
                }

                else
                {
                  sub_1D7756B84(&v34);
                }

                v27 = &selRef_isUserSignedIntoiTunes;
                if (v24)
                {
                  goto LABEL_49;
                }

                goto LABEL_47;
              }
            }

            else
            {
              sub_1D7756B84(&v34);
            }

            v22 = 0;
            v24 = 0;
            goto LABEL_38;
          }
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return 0;
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  return result;
}

uint64_t PaywallTypeProvider.paywallType(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = [a1 isPaid];
  v6 = 96;
  if (result)
  {
    v7 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    result = (*(v7 + 16))(a1, ObjectType, v7);
    if (result)
    {
      v6 = 96;
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1D7834A44(void *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1D78B5C74();
  v6 = v5;

  v7 = v4 == 0xD000000000000010 && 0x80000001D78CF0A0 == v6;
  if (v7 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  if (v4 == 0x6C7070612E6D6F63 && v6 == 0xEE007377656E2E65)
  {
  }

  else
  {
    v10 = sub_1D78B6724();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return [a1 areMagazinesEnabled];
}

id sub_1D7834B88(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    return 0;
  }

  result = [*(v3 + 16) configuration];
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      v8 = [v7 paidBundleConfig];
      swift_unknownObjectRelease();
      v9 = [v8 requiresHardPaywallForIssuesToC];

      v10 = v9 ^ 1;
    }

    else
    {
      swift_unknownObjectRelease();
      v10 = 0;
    }

    result = 0;
    if (a1 == 2 && (v10 & 1) == 0)
    {
      return ([a3 isSandbox] ^ 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7834C6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1D78B5C74();
  v4 = v3;

  v5 = v2 == 0xD000000000000010 && 0x80000001D78CF0A0 == v4;
  if (v5 || (sub_1D78B6724() & 1) != 0 || (v2 == 0x6C7070612E6D6F63 ? (v6 = v4 == 0xEE007377656E2E65) : (v6 = 0), v6))
  {

    return 1;
  }

  else
  {
    v7 = sub_1D78B6724();

    return v7 & 1;
  }
}

void *PaywallTypeProvider.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  return v0;
}

uint64_t PaywallTypeProvider.__deallocating_deinit()
{
  PaywallTypeProvider.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7834ED0()
{
  result = qword_1EE093CE0;
  if (!qword_1EE093CE0)
  {
    type metadata accessor for PaywallTypeProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093CE0);
  }

  return result;
}

uint64_t dispatch thunk of PaywallTypeProviderType.paywallType(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 32))(a1, a2);
}

{
  return (*(a3 + 40))(a1, a2);
}

id PaywallDataManager.hideMyEmailConfig(paywallModel:)(__int128 *a1)
{
  sub_1D7835FFC(v1 + 16, &v17, &qword_1EE090C68, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType);
  if (*(&v18 + 1))
  {
    sub_1D7741E34(&v17, v33);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    v3 = a1[13];
    v29 = a1[12];
    v30 = v3;
    v4 = a1[15];
    v31 = a1[14];
    v32 = v4;
    v5 = a1[9];
    v25 = a1[8];
    v26 = v5;
    v6 = a1[11];
    v27 = a1[10];
    v28 = v6;
    v7 = a1[5];
    v21 = a1[4];
    v22 = v7;
    v8 = a1[7];
    v23 = a1[6];
    v24 = v8;
    v9 = a1[1];
    v17 = *a1;
    v18 = v9;
    v10 = a1[3];
    v19 = a1[2];
    v20 = v10;
    v11 = [PaywallModel.tag.getter() identifier];
    swift_unknownObjectRelease();
    v12 = sub_1D78B5C74();
    v14 = v13;

    v15 = sub_1D7788F60(v12, v14);

    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_1D7836080(&v17, &qword_1EE090C68, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType);
    return 0;
  }

  return v15;
}

double PaywallDataManager.__allocating_init(account:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  return result;
}

uint64_t PaywallDataManager.init(account:)(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v1 + 56) = a1;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  return v1;
}

uint64_t PaywallDataManager.hideMyEmailDataModel(for:paywallModel:)(uint64_t a1, __int128 *a2)
{
  v5 = *v2;
  v6 = type metadata accessor for PurchaseContext(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = a2[13];
  v74 = a2[12];
  v75 = v10;
  v11 = a2[15];
  v76 = a2[14];
  v77 = v11;
  v12 = a2[9];
  v70 = a2[8];
  v71 = v12;
  v13 = a2[11];
  v72 = a2[10];
  v73 = v13;
  v14 = a2[5];
  v66 = a2[4];
  v67 = v14;
  v15 = a2[7];
  v68 = a2[6];
  v69 = v15;
  v16 = a2[1];
  v62 = *a2;
  v63 = v16;
  v17 = a2[3];
  v64 = a2[2];
  v65 = v17;
  v18 = PaywallDataManager.hideMyEmailConfig(paywallModel:)(a2);
  if (v18)
  {
    v19 = v18;
    sub_1D7835FFC((v2 + 8), &v46, qword_1EE093688, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType);
    if (*(&v47 + 1))
    {
      v20 = sub_1D7741E34(&v46, v45);
      v44 = v5;
      MEMORY[0x1EEE9AC00](v20, v21);
      *(&v44 - 2) = v45;
      *(&v44 - 1) = a1;
      sub_1D78B41F4();
      sub_1D7770378(a1, &v45[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = (*(v7 + 80) + 272) & ~*(v7 + 80);
      v23 = swift_allocObject();
      v24 = v75;
      v23[13] = v74;
      v23[14] = v24;
      v25 = v77;
      v23[15] = v76;
      v23[16] = v25;
      v26 = v71;
      v23[9] = v70;
      v23[10] = v26;
      v27 = v73;
      v23[11] = v72;
      v23[12] = v27;
      v28 = v67;
      v23[5] = v66;
      v23[6] = v28;
      v29 = v69;
      v23[7] = v68;
      v23[8] = v29;
      v30 = v63;
      v23[1] = v62;
      v23[2] = v30;
      v31 = v65;
      v23[3] = v64;
      v23[4] = v31;
      sub_1D777044C(&v45[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
      *(v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
      sub_1D7772AE8(&v62, &v46);
      v32 = v19;
      v33 = sub_1D78B4014();
      type metadata accessor for HideMyEmailSignupDataModel(0);
      v34 = sub_1D78B40B4();

      __swift_destroy_boxed_opaque_existential_1(v45);
      return v34;
    }

    sub_1D7836080(&v46, qword_1EE093688, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType);
  }

  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  v36 = qword_1EC9D9DF0;
  sub_1D783561C(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D78BCAB0;
  v58 = v74;
  v59 = v75;
  v60 = v76;
  v61 = v77;
  v54 = v70;
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v53 = v69;
  v46 = v62;
  v47 = v63;
  v48 = v64;
  v49 = v65;
  v38 = [PaywallModel.tag.getter() identifier];
  swift_unknownObjectRelease();
  v39 = sub_1D78B5C74();
  v41 = v40;

  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = sub_1D775ABD4();
  *(v37 + 32) = v39;
  *(v37 + 40) = v41;
  v42 = sub_1D78B60A4();
  sub_1D78B42C4("Cannot create data model since no config and model exists for channel: %@", 73, 2, &dword_1D7739000, v36, v42, v37);

  sub_1D7835684();
  swift_allocError();
  *v43 = 1;
  sub_1D773F114(0, &qword_1EC9C95B0, type metadata accessor for HideMyEmailSignupDataModel, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B40F4();
}

void sub_1D783561C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773C9B8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D7835684()
{
  result = qword_1EC9CAC80;
  if (!qword_1EC9CAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC80);
  }

  return result;
}

uint64_t sub_1D78356D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_1D7867148(*(v2 + 40), *(v2 + 48));
}

id sub_1D7835718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a1[1];
  v28 = *a1;
  v21 = a1[3];
  v7 = a1[5];
  v25 = a1[4];
  v26 = a1[2];
  v8 = a1[7];
  v24 = a1[6];
  v9 = *(a2 + 56);
  v10 = [v9 appStoreEmailAddress];
  if (v10)
  {
    v11 = v10;
    v22 = sub_1D78B5C74();
    v13 = v12;
  }

  else
  {
    v14 = [v9 allEmailAddresses];
    v15 = sub_1D78B5EB4();

    if (v15[2])
    {
      v13 = v15[5];
      v22 = v15[4];
    }

    else
    {

      v22 = v28;
      v13 = v6;
    }
  }

  v16 = [v9 &selRef_paywallDescription + 7];
  v17 = sub_1D78B5EB4();

  v18 = PaywallModel.tag.getter();
  v19 = type metadata accessor for HideMyEmailSignupDataModel(0);
  sub_1D7770378(a3, a5 + *(v19 + 40));
  *a5 = 2;
  *(a5 + 8) = v22;
  *(a5 + 16) = v13;
  *(a5 + 24) = v17;
  *(a5 + 32) = v28;
  *(a5 + 40) = v6;
  *(a5 + 48) = v26;
  *(a5 + 56) = v21;
  *(a5 + 64) = v25;
  *(a5 + 72) = v7;
  *(a5 + 80) = v24;
  *(a5 + 88) = v8;
  *(a5 + 96) = 0;
  *(a5 + 104) = v18;
  *(a5 + *(v19 + 44)) = a4;
  return a4;
}

id sub_1D7835940@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PurchaseContext(0) - 8);
  v8 = (*(v7 + 80) + 272) & ~*(v7 + 80);
  return sub_1D7835718(a1, a2, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t PaywallDataManager.purchaseContext(paywallModel:purchaseID:purchaseSessionID:tracker:postPurchaseDestination:isDirectBuy:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v141 = a7;
  v57 = a5;
  sub_1D773F114(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v46 - v17;
  v19 = a1[13];
  v137 = a1[12];
  v138 = v19;
  v20 = a1[15];
  v139 = a1[14];
  v140 = v20;
  v21 = a1[9];
  v133 = a1[8];
  v134 = v21;
  v22 = a1[11];
  v135 = a1[10];
  v136 = v22;
  v23 = a1[5];
  v129 = a1[4];
  v130 = v23;
  v24 = a1[7];
  v131 = a1[6];
  v132 = v24;
  v25 = a1[1];
  v125 = *a1;
  v126 = v25;
  v26 = a1[3];
  v127 = a1[2];
  v128 = v26;
  result = sub_1D7835EF4(*a2, a2[1]);
  if (!v8)
  {
    v51 = v28;
    v52 = result;
    v53 = v18;
    v54 = a3;
    v29 = a6;
    v55 = a4;
    v56 = 0;
    v121 = v137;
    v122 = v138;
    v123 = v139;
    v124 = v140;
    v118 = v134;
    v119 = v135;
    v120 = v136;
    v113 = v129;
    v114 = v130;
    v115 = v131;
    v116 = v132;
    v117 = v133;
    v109 = v125;
    v110 = v126;
    v111 = v127;
    v112 = v128;
    v50 = PaywallModel.purchaseType.getter();
    v105 = v137;
    v106 = v138;
    v107 = v139;
    v108 = v140;
    v101 = v133;
    v102 = v134;
    v103 = v135;
    v104 = v136;
    v97 = v129;
    v98 = v130;
    v99 = v131;
    v100 = v132;
    v93 = v125;
    v94 = v126;
    v95 = v127;
    v96 = v128;
    v30 = [PaywallModel.tag.getter() identifier];
    swift_unknownObjectRelease();
    v31 = sub_1D78B5C74();
    v48 = v32;
    v49 = v31;

    v89 = v137;
    v90 = v138;
    v91 = v139;
    v92 = v140;
    v85 = v133;
    v86 = v134;
    v87 = v135;
    v88 = v136;
    v81 = v129;
    v82 = v130;
    v83 = v131;
    v84 = v132;
    v77 = v125;
    v78 = v126;
    v79 = v127;
    v80 = v128;
    v47 = [PaywallModel.tag.getter() publisherPaidWebAccessOptIn];
    swift_unknownObjectRelease();
    v73 = v137;
    v74 = v138;
    v75 = v139;
    v76 = v140;
    v69 = v133;
    v70 = v134;
    v71 = v135;
    v72 = v136;
    v65 = v129;
    v66 = v130;
    v67 = v131;
    v68 = v132;
    v61 = v125;
    v62 = v126;
    v63 = v127;
    v64 = v128;
    PaywallModel.conversionLocation.getter(&v142);
    v46 = v142;
    sub_1D7835FFC(v57, v58, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
    v33 = v59;
    if (v59)
    {
      v34 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v35 = (*(v34 + 8))(v33, v34);
      __swift_destroy_boxed_opaque_existential_1(v58);
    }

    else
    {
      sub_1D7836080(v58, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
      v35 = MEMORY[0x1E69E7CC0];
    }

    v36 = type metadata accessor for PurchaseContext(0);
    sub_1D78360F0(v29, a8 + v36[13]);
    v37 = sub_1D78B3294();
    v38 = *(*(v37 - 8) + 56);
    v39 = v53;
    v38(v53, 1, 1, v37);
    v40 = v36[16];
    v38((a8 + v40), 1, 1, v37);
    v41 = v51;
    *a8 = v52;
    *(a8 + 8) = v41;
    v43 = v54;
    v42 = v55;
    *(a8 + 16) = v50;
    *(a8 + 24) = v43;
    v44 = v48;
    v45 = v49;
    *(a8 + 32) = v42;
    *(a8 + 40) = v45;
    *(a8 + 48) = v44;
    LOBYTE(v44) = v46;
    *(a8 + 56) = v47;
    *(a8 + 57) = v44;
    *(a8 + 64) = v35;
    *(a8 + 58) = 0;
    *(a8 + 72) = 0u;
    *(a8 + 88) = 0u;
    *(a8 + 104) = 0u;
    *(a8 + 120) = 2;
    *(a8 + v36[14]) = 0;
    *(a8 + v36[15]) = v141 & 1;

    return sub_1D77B44C4(v39, a8 + v40);
  }

  return result;
}

uint64_t sub_1D7835EF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  v3 = PaywallModel.purchaseIDs.getter();
  if (!v3)
  {
LABEL_7:
    sub_1D7835684();
    a1 = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    return a1;
  }

  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  a1 = *(v3 + 32);

LABEL_2:

  return a1;
}

uint64_t sub_1D7835FFC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D783561C(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D7836080(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D783561C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D78360F0(uint64_t a1, uint64_t a2)
{
  sub_1D773F114(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PaywallDataManager.deinit()
{
  sub_1D7836080(v0 + 16, &qword_1EE090C68, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType);

  sub_1D7836080(v0 + 64, qword_1EE093688, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType);
  return v0;
}

uint64_t PaywallDataManager.__deallocating_deinit()
{
  sub_1D7836080(v0 + 16, &qword_1EE090C68, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType);

  sub_1D7836080(v0 + 64, qword_1EE093688, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7836340()
{
  result = qword_1EC9CAC88;
  if (!qword_1EC9CAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC88);
  }

  return result;
}

void sub_1D7836394(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D78B3394();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v93 - v11;
  if (!a1)
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v38 = sub_1D78B4304();
    __swift_project_value_buffer(v38, qword_1EE09C1F0);
    v100 = sub_1D78B42E4();
    v39 = sub_1D78B60A4();
    if (!os_log_type_enabled(v100, v39))
    {
      goto LABEL_25;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Oslo abandonment occurred for à la carte subscription. No upsell will be displayed.";
    goto LABEL_24;
  }

  v13 = [*(v2 + 16) configuration];
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  if (([v13 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_20:
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v42 = sub_1D78B4304();
    __swift_project_value_buffer(v42, qword_1EE09C1F0);
    v100 = sub_1D78B42E4();
    v39 = sub_1D78B60A4();
    if (!os_log_type_enabled(v100, v39))
    {
      goto LABEL_25;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Failed to retrieve oslo abandonment upsell article ID from config. No upsell will be displayed.";
LABEL_24:
    _os_log_impl(&dword_1D7739000, v100, v39, v41, v40, 2u);
    MEMORY[0x1DA7043F0](v40, -1, -1);
LABEL_25:
    v43 = v100;

    return;
  }

  v15 = [v14 paidBundleConfig];
  swift_unknownObjectRelease();
  v16 = [v15 osloAbandonmentUpsellArticleID];
  if (!v16)
  {

    goto LABEL_20;
  }

  v17 = v16;
  v18 = sub_1D78B5C74();
  v98 = v19;

  sub_1D78371B0();
  sub_1D78B3384();
  sub_1D78B3304();
  v21 = v20;
  v23 = *(v5 + 8);
  v22 = v5 + 8;
  v99 = v23;
  v23(v9, v4);
  if (qword_1EE08E648 != -1)
  {
    swift_once();
  }

  v24 = sub_1D78B4304();
  v25 = __swift_project_value_buffer(v24, qword_1EE09C1F0);
  sub_1D776BA64();
  sub_1D776BA64();
  v100 = v25;
  v26 = sub_1D78B42E4();
  v27 = sub_1D78B60A4();
  v28 = os_log_type_enabled(v26, v27);
  v95 = v18;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 68157952;
    *(v29 + 4) = 2;
    *(v29 + 8) = 2048;
    *(v29 + 10) = v21;
    _os_log_impl(&dword_1D7739000, v26, v27, "Time interval elapsed since last displayed oslo abandonment upsell: %.*f.", v29, 0x12u);
    MEMORY[0x1DA7043F0](v29, -1, -1);
  }

  v30 = [v15 osloAbandonmentUpsellQuiescenceInterval];
  sub_1D776BA64();
  sub_1D776BA64();
  v31 = sub_1D78B42E4();
  v32 = sub_1D78B60A4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 68157952;
    *(v33 + 4) = 2;
    *(v33 + 8) = 2048;
    *(v33 + 10) = v30;
    _os_log_impl(&dword_1D7739000, v31, v32, "Minimum time interval between presentations: %.*f.", v33, 0x12u);
    MEMORY[0x1DA7043F0](v33, -1, -1);
  }

  if (v21 < v30)
  {

    v34 = sub_1D78B42E4();
    v35 = sub_1D78B60A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "The oslo abandonment upsell cannot be presented because the time since its last presentation is too short.";
LABEL_69:
      _os_log_impl(&dword_1D7739000, v34, v35, v37, v36, 2u);
      MEMORY[0x1DA7043F0](v36, -1, -1);
      goto LABEL_70;
    }

    goto LABEL_70;
  }

  if (qword_1EC9C8738 != -1)
  {
    swift_once();
  }

  v97 = sub_1D78374E0(&qword_1EC9CAC90, &unk_1D78C6050);
  sub_1D78B3574();
  if (v101 == 1)
  {
    v44 = sub_1D78B42E4();
    v45 = sub_1D78B6084();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v15;
      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = v47;
      v15 = v46;
      MEMORY[0x1DA7043F0](v48, -1, -1);
    }

    if (qword_1EC9C8730 != -1)
    {
      swift_once();
    }

    v101 = 0;
    v102 = 0xE000000000000000;
    sub_1D78374E0(&unk_1EC9CACA0, &unk_1D78C6010);
    sub_1D78B3724();
    LOBYTE(v101) = 0;
    sub_1D78B3724();
  }

  if (qword_1EC9C8728 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v101 == 1)
  {
    v49 = sub_1D78B42E4();
    v50 = sub_1D78B6084();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v15;
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = v52;
      v15 = v51;
      MEMORY[0x1DA7043F0](v53, -1, -1);
    }

    if (qword_1EC9C8718 != -1)
    {
      swift_once();
    }

    v101 = 0;
    sub_1D78374E0(&unk_1EC9CACA0, &unk_1D78C6010);
    sub_1D78B3724();
    LOBYTE(v101) = 0;
    sub_1D78B3724();
  }

  v96 = v22;
  v54 = *(v2 + 88);
  v55 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 64), v54);
  v94 = v15;
  v56 = [v15 osloAbandonmentUpsellInstanceID];
  v57 = sub_1D78B5C74();
  v59 = v58;

  v60 = (*(v55 + 8))(v57, v59, v54, v55);
  LOBYTE(v57) = v61;

  if (v57)
  {
    v62 = 0;
  }

  else
  {
    v62 = v60;
  }

  v63 = *(v2 + 88);
  v64 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 64), v63);
  if (qword_1EC9C8730 != -1)
  {
    swift_once();
  }

  v93 = qword_1EC9CB7E8;
  sub_1D78B3574();
  v65 = (*(v64 + 8))(v101, v102, v63, v64);
  v67 = v66;

  if (v67)
  {
    v68 = 0;
  }

  else
  {
    v68 = v65;
  }

  v69 = sub_1D78B42E4();
  v70 = sub_1D78B60A4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134218240;
    *(v71 + 4) = v68;
    *(v71 + 12) = 2048;
    *(v71 + 14) = v62;
    _os_log_impl(&dword_1D7739000, v69, v70, "Last seen oslo abandonment upsell version: %ld | Config oslo abandonment upsell version: %ld", v71, 0x16u);
    MEMORY[0x1DA7043F0](v71, -1, -1);
  }

  v15 = v94;
  if (v68 < v62)
  {
    v72 = sub_1D78B42E4();
    v73 = sub_1D78B60A4();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1D7739000, v72, v73, "Resetting oslo abandonment presentation count and updating last seen instance ID since config version is higher than last seen version.", v74, 2u);
      MEMORY[0x1DA7043F0](v74, -1, -1);
    }

    if (qword_1EC9C8718 != -1)
    {
      swift_once();
    }

    v101 = 0;
    sub_1D78374E0(&unk_1EC9CACA0, &unk_1D78C6010);
    sub_1D78B3724();
    v75 = [v15 osloAbandonmentUpsellInstanceID];
    v76 = sub_1D78B5C74();
    v78 = v77;

    v101 = v76;
    v102 = v78;
    sub_1D78B3724();
  }

  if (qword_1EC9C8718 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v79 = v101;
  v80 = sub_1D78B42E4();
  v81 = sub_1D78B60A4();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 134217984;
    *(v82 + 4) = v79;
    _os_log_impl(&dword_1D7739000, v80, v81, "Number of times the user has seen the oslo abandonment upsell: %ld).", v82, 0xCu);
    MEMORY[0x1DA7043F0](v82, -1, -1);
  }

  v83 = [v15 osloAbandonmentUpsellMaxPresentationCount];
  v84 = v98;
  if (v79 >= v83)
  {

    v34 = sub_1D78B42E4();
    v35 = sub_1D78B60A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "The oslo abandonment upsell cannot be presented because the user has already seen it the maximum number of times.";
      goto LABEL_69;
    }

LABEL_70:

    v99(v12, v4);
    return;
  }

  v85 = sub_1D78B42E4();
  v86 = sub_1D78B60A4();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v101 = v88;
    *v87 = 136315138;
    v89 = v95;
    *(v87 + 4) = sub_1D77AD82C(v95, v84, &v101);
    _os_log_impl(&dword_1D7739000, v85, v86, "The user is eligble for being presented with the oslo abandonment upsell. Presenting upsell with article ID %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x1DA7043F0](v88, -1, -1);
    MEMORY[0x1DA7043F0](v87, -1, -1);
  }

  else
  {

    v89 = v95;
  }

  v90 = *(v2 + 48);
  v91 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v90);
  v92 = sub_1D78374E0(&qword_1EC9CAC98, &unk_1D78C5FD8);
  (*(v91 + 16))(v89, v84, 0, 0, 0, 0, v2, v92, v90, v91);

  v99(v12, v4);
}

void *sub_1D78371B0()
{
  if (qword_1EC9C8720 != -1)
  {
    swift_once();
  }

  sub_1D78374E0(&qword_1EC9CAC90, &unk_1D78C6050);
  sub_1D78B3574();
  if (v7 == 1)
  {
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v2 = sub_1D78B4304();
    __swift_project_value_buffer(v2, qword_1EE09C1F0);
    v3 = sub_1D78B42E4();
    v4 = sub_1D78B6084();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      MEMORY[0x1DA7043F0](v5, -1, -1);
    }

    sub_1D78B32E4();
    if (qword_1EC9C8710 != -1)
    {
      swift_once();
    }

    sub_1D78374E0(&unk_1EC9CACA0, &unk_1D78C6010);
    sub_1D78B3724();
    return sub_1D78B3724();
  }

  else
  {
    if (qword_1EC9C8710 != -1)
    {
      swift_once();
    }

    return sub_1D78B3574();
  }
}

uint64_t sub_1D7837434()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1D78374E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OsloAbandonmentUpsellManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7837520()
{
  v0 = sub_1D78B3394();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC9C8718 != -1)
  {
    swift_once();
  }

  sub_1D78374E0(&qword_1EC9CAC90, &unk_1D78C6050);
  sub_1D78B3574();
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  ++v7;
  sub_1D78374E0(&unk_1EC9CACA0, &unk_1D78C6010);
  sub_1D78B3724();
  if (qword_1EC9C8710 != -1)
  {
LABEL_7:
    swift_once();
  }

  sub_1D78B3384();
  sub_1D78B3724();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D78377F0()
{

  sub_1D78B4034();

  return v1;
}

uint64_t sub_1D783783C(void **a1, uint64_t a2, uint64_t (*a3)(void *, double))
{
  v5 = sub_1D78B3394();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v19[1] = v10;
  v11 = v10;

  sub_1D78B4044();

  v12 = [objc_opt_self() standardUserDefaults];
  sub_1D78B3384();
  v13 = sub_1D78B3324();
  (*(v6 + 8))(v9, v5);
  v14 = sub_1D78B5C44();
  [v12 setObject:v13 forKey:v14];

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE09C268;
  v16 = sub_1D78B60A4();
  v17 = sub_1D78B42C4("BundlePurchasePrewarmer did finish prewarming purchase.", 55, 2, &dword_1D7739000, v15, v16, MEMORY[0x1E69E7CC0]);
  return a3(v10, v17);
}

uint64_t sub_1D7837A48(uint64_t a1, uint64_t (*a2)(void, __n128))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE09C268;
  v4 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D775ABD4();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D78B42C4("BundlePurchasePrewarmer failed to fetch configuration with error: %{public}@", 76, 2, &dword_1D7739000, v3, v4, v5);

  return (a2)(0);
}

double sub_1D7837B90()
{
  sub_1D7756490();

  return result;
}

uint64_t sub_1D7837BB8()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44800](ObjectType);
}

uint64_t PurchasingSpinner.label.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PurchasingSpinner.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D7837E90()
{
  result = qword_1EC9CACE0;
  if (!qword_1EC9CACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CACE0);
  }

  return result;
}

uint64_t sub_1D7837FB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 424))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 384);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7837FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 392) = 0u;
    *(result + 408) = 0u;
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
      *(result + 424) = 1;
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
      *(result + 384) = (a2 - 1);
      return result;
    }

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NetworkNotReachableAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t NetworkNotReachableAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t NetworkNotReachableAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t NetworkNotReachableAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D783838C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7838450()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D78385C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 153))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 152);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D7838608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 152) = -a2;
    }
  }

  return result;
}

double sub_1D783868C()
{
  v1 = v0[7];
  v7[6] = v0[6];
  v7[7] = v1;
  v8[0] = v0[8];
  *(v8 + 9) = *(v0 + 137);
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = v0[5];
  v7[4] = v0[4];
  v7[5] = v3;
  v4 = v0[1];
  v7[0] = *v0;
  v7[1] = v4;
  sub_1D77CF86C(v7);
  nullsub_1();
  return *(v5 + 16);
}

char *sub_1D7838710(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16NewsSubscription30HideMyEmailSignupAlternateView_email;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR____TtC16NewsSubscription30HideMyEmailSignupAlternateView_checkmark;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC16NewsSubscription30HideMyEmailSignupAlternateView_email];
  v14 = v12;
  [v14 addSubview_];
  [v14 addSubview_];

  return v14;
}

void sub_1D7838990()
{
  sub_1D7838A1C(&qword_1EC9CAC58, &unk_1D78C6598);

  JUMPOUT(0x1DA702390);
}

uint64_t sub_1D7838A1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HideMyEmailSignupAlternateView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7838A5C(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController];
  if (v3)
  {
    v9 = v3;
    sub_1D7838DCC(v9, a1);

    return;
  }

  *&v1[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController] = a1;
  v4 = a1;
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v4 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v6 addSubview_];

  [v1 addChildViewController_];

  [v4 didMoveToParentViewController_];
}

id sub_1D7838B74()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController] = 0;
  v2 = &v0[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_onDismissal];
  *v2 = 0;
  *(v2 + 1) = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  result = [v3 view];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() whiteColor];
    [v5 setBackgroundColor_];

    [v3 setModalPresentationStyle_];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7838C94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController] = 0;
  v7 = &v3[OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_onDismissal];
  *v7 = a1;
  *(v7 + 1) = a2;
  sub_1D776AC18(a1, a2);
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
  result = [v8 view];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() whiteColor];
    [v10 setBackgroundColor_];

    [v8 setModalPresentationStyle_];
    sub_1D7744A7C(a1, a2);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7838DCC(void *a1, void *a2)
{
  [a1 willMoveToParentViewController_];
  [v2 addChildViewController_];
  v5 = [v2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [a2 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v6 addSubview_];

  v9 = [a2 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v2 view];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v10 setFrame_];
  v21 = [a2 view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v21;
  [v21 setAutoresizingMask_];

  v23 = [a2 view];
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  v25 = [v2 view];
  if (v25)
  {
    v26 = v25;
    [v25 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v47.origin.x = v28;
    v47.origin.y = v30;
    v47.size.width = v32;
    v47.size.height = v34;
    Width = CGRectGetWidth(v47);
    CGAffineTransformMakeTranslation(&v46, Width, 0.0);
    [v24 setTransform_];

    v36 = objc_opt_self();
    v37 = swift_allocObject();
    *(v37 + 16) = a2;
    *(v37 + 24) = a1;
    *&v46.tx = sub_1D78395F4;
    *&v46.ty = v37;
    *&v46.a = MEMORY[0x1E69E9820];
    *&v46.b = 1107296256;
    *&v46.c = sub_1D775FB6C;
    *&v46.d = &block_descriptor_26;
    v38 = _Block_copy(&v46);
    v39 = a2;
    v40 = a1;

    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = v39;
    v41[4] = v2;
    *&v46.tx = sub_1D78395FC;
    *&v46.ty = v41;
    *&v46.a = MEMORY[0x1E69E9820];
    *&v46.b = 1107296256;
    *&v46.c = sub_1D78392C0;
    *&v46.d = &block_descriptor_6;
    v42 = _Block_copy(&v46);
    v43 = v39;
    v44 = v40;
    v45 = v2;

    [v36 animateWithDuration:v38 animations:v42 completion:0.5];
    _Block_release(v42);
    _Block_release(v38);
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1D783915C(void *a1, void *a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    v7[0] = 0x3FF0000000000000;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0x3FF0000000000000;
    v7[4] = 0;
    v7[5] = 0;
    [v3 setTransform_];

    v5 = [a2 view];
    if (v5)
    {
      v6 = v5;
      [v5 setAlpha_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1D7839204(int a1, id a2, void *a3, uint64_t a4)
{
  result = [a2 view];
  if (result)
  {
    v7 = result;
    [result removeFromSuperview];

    [a2 removeFromParentViewController];
    [a3 didMoveToParentViewController_];
    v8 = *(a4 + OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController);
    *(a4 + OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_lastShownViewController) = a3;

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1D78392C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1D7839314(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_onDismissal);
    v4 = *(Strong + OBJC_IVAR____TtC16NewsSubscription45PostPurchaseOnboardingContainerViewController_onDismissal + 8);
    v6 = Strong;
    sub_1D776AC18(v5, v4);

    if (v5)
    {
      v5();
      Strong = sub_1D7744A7C(v5, v4);
    }
  }

  if (a2)
  {
    a2(Strong);
  }
}

void sub_1D7839644(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v69 = a3;
  v7 = sub_1D78B3294();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F504(0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v63 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v70 = &v62 - v15;
  v16 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_badgeImageView];
  v75 = type metadata accessor for BundlePaywallRenderModel(0);
  v17 = *(a1 + *(v75 + 24));
  sub_1D78B51F4();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v68 = ObjCClassFromMetadata;
  v67 = objc_opt_self();
  v19 = [v67 bundleForClass_];
  sub_1D78B3134();

  v20 = sub_1D78B5C44();

  v65 = v16;
  [v16 setAccessibilityLabel_];

  [v16 setIsAccessibilityElement_];
  v66 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_titleTextView];
  [v66 setAttributedText_];
  v21 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v22 = *MEMORY[0x1E69DB670];
  v64 = type metadata accessor for BundlePaywallViewModel(0);
  v23 = sub_1D78B3214();
  v24 = [v21 mutableString];
  v74 = a1;
  v25 = sub_1D78B5C44();
  v26 = [v24 rangeOfString_];
  v28 = v27;

  [v21 addAttribute:v22 value:v23 range:{v26, v28}];
  v29 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_descriptionTextView];
  v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v71 = v21;
  v31 = [v30 initWithAttributedString_];
  [v29 setAttributedText_];

  v32 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_subscribeButton];
  [v32 setAttributedTitle:*(a2 + 400) forState:0];
  v33 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_webAuthButton];
  [v33 setAttributedTitle:*(a2 + 416) forState:0];
  v34 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_offersButton];
  [v34 setAttributedTitle:*(a2 + 408) forState:0];
  [a4 setFrame_];
  [*&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentView] setFrame_];
  [*&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentBackgroundView] setFrame_];
  v35 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_playerView];
  [v35 setFrame_];
  [*&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_gradientView] setFrame_];
  v36 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_scrollView];
  [v36 setFrame_];
  v37 = v36;
  v38 = v64;
  [v37 setContentSize_];
  [v65 setFrame_];
  [v66 setFrame_];
  [v29 setFrame_];
  [v32 setFrame_];
  [v34 setFrame_];
  [v33 setFrame_];
  v39 = v74;
  [v33 setHidden_];
  [a4 setAccessibilityContainerType_];
  v40 = [v67 bundleForClass_];
  sub_1D78B3134();

  v41 = sub_1D78B5C44();

  [a4 setAccessibilityLabel_];

  v42 = [v35 layer];
  objc_opt_self();
  v43 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

  v44 = v69;
  [v43 setImage_];

  if ([v44 horizontalSizeClass] == 1 || objc_msgSend(v44, sel_verticalSizeClass) == 1)
  {
    v45 = 84;
  }

  else
  {
    v45 = 88;
  }

  v46 = v70;
  sub_1D776F538(v39 + *(v38 + v45), v70);
  v48 = v72;
  v47 = v73;
  v49 = *(v72 + 48);
  v50 = v49(v46, 1, v73);
  v51 = v75;
  if (v50 == 1)
  {

    sub_1D77C12C8(v46);
  }

  else
  {
    sub_1D77C12C8(v46);
    v52 = *(v39 + *(v51 + 20));
    v53 = [v35 layer];
    objc_opt_self();
    v54 = [swift_dynamicCastObjCClassUnconditional() &selRef_isSandbox + 4];

    [v54 setImage_];
    v55 = [v35 layer];
    objc_opt_self();
    v56 = [swift_dynamicCastObjCClassUnconditional() player];

    if (v56)
    {
    }

    else
    {
      v57 = v63;
      sub_1D776F538(v74 + *(v75 + 28), v63);
      if (v49(v57, 1, v47) == 1)
      {

        sub_1D77C12C8(v57);
      }

      else
      {
        v58 = v62;
        (*(v48 + 32))(v62, v57, v47);
        v59 = objc_allocWithZone(MEMORY[0x1E6988098]);
        v60 = sub_1D78B3214();
        v61 = [v59 initWithURL_];

        sub_1D77E8D60(v61);
        (*(v48 + 8))(v58, v47);
      }
    }
  }
}

uint64_t PaidBundleViaOfferState.updatingLastBestOfferRefreshDate(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D78B3394();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v2, v5);
  v7 = type metadata accessor for PaidBundleViaOfferState(0);
  v8 = *(v2 + v7[5]);
  v6(a2 + v7[6], v2 + v7[6], v5);
  v9 = *(v2 + v7[7]);
  v6(a2 + v7[8], v2 + v7[8], v5);
  v10 = *(v2 + v7[9]);
  result = v6(a2 + v7[10], a1, v5);
  *(a2 + v7[5]) = v8;
  *(a2 + v7[7]) = v9;
  *(a2 + v7[9]) = v10;
  return result;
}

uint64_t PaidBundleViaOfferState.updatingLastUpsellDate(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D78B3394();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v2, v5);
  v7 = type metadata accessor for PaidBundleViaOfferState(0);
  v8 = *(v2 + v7[5]);
  v6(a2 + v7[6], v2 + v7[6], v5);
  v9 = *(v2 + v7[7]);
  v6(a2 + v7[8], a1, v5);
  v10 = *(v2 + v7[9]);
  result = (v6)(a2 + v7[10], v2 + v7[10], v5);
  *(a2 + v7[5]) = v8;
  *(a2 + v7[7]) = v9;
  *(a2 + v7[9]) = v10;
  return result;
}

uint64_t PaidBundleViaOfferState.incrementingUpsellPresentedCount()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D78B3394();
  v4 = *(*(v3 - 8) + 16);
  v4(a1, v1, v3);
  v5 = type metadata accessor for PaidBundleViaOfferState(0);
  v6 = *(v1 + v5[5]);
  v4(a1 + v5[6], v1 + v5[6], v3);
  v7 = *(v1 + v5[7]);
  result = (v4)(a1 + v5[8], v1 + v5[8], v3);
  v9 = *(v1 + v5[9]);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    result = (v4)(a1 + v5[10], v1 + v5[10], v3);
    *(a1 + v5[5]) = v6;
    *(a1 + v5[7]) = v7;
    *(a1 + v5[9]) = v10;
  }

  return result;
}

uint64_t PaidBundleViaOfferState.updatingLastUserNotificationDate(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D78B3394();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v2, v5);
  v7 = type metadata accessor for PaidBundleViaOfferState(0);
  v8 = *(v2 + v7[5]);
  v6(a2 + v7[6], a1, v5);
  v9 = *(v2 + v7[7]);
  v6(a2 + v7[8], v2 + v7[8], v5);
  v10 = *(v2 + v7[9]);
  result = (v6)(a2 + v7[10], v2 + v7[10], v5);
  *(a2 + v7[5]) = v8;
  *(a2 + v7[7]) = v9;
  *(a2 + v7[9]) = v10;
  return result;
}

uint64_t PaidBundleViaOfferState.incrementingUserNotificationPresentedCount()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D78B3394();
  v4 = *(*(v3 - 8) + 16);
  v4(a1, v1, v3);
  v5 = type metadata accessor for PaidBundleViaOfferState(0);
  v6 = *(v1 + v5[5]);
  result = (v4)(a1 + v5[6], v1 + v5[6], v3);
  v8 = *(v1 + v5[7]);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v4(a1 + v5[8], v1 + v5[8], v3);
    v10 = *(v1 + v5[9]);
    result = (v4)(a1 + v5[10], v1 + v5[10], v3);
    *(a1 + v5[5]) = v6;
    *(a1 + v5[7]) = v9;
    *(a1 + v5[9]) = v10;
  }

  return result;
}

uint64_t PaidBundleViaOfferState.updatingLastIconBadgeDate(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D78B3394();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1, v5);
  v7 = type metadata accessor for PaidBundleViaOfferState(0);
  v8 = *(v2 + v7[5]);
  v6(a2 + v7[6], v2 + v7[6], v5);
  v9 = *(v2 + v7[7]);
  v6(a2 + v7[8], v2 + v7[8], v5);
  v10 = *(v2 + v7[9]);
  result = (v6)(a2 + v7[10], v2 + v7[10], v5);
  *(a2 + v7[5]) = v8;
  *(a2 + v7[7]) = v9;
  *(a2 + v7[9]) = v10;
  return result;
}

int *PaidBundleViaOfferState.incrementingIconBadgePresentedCount()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D78B3394();
  v4 = *(*(v3 - 8) + 16);
  v4(a1, v1, v3);
  result = type metadata accessor for PaidBundleViaOfferState(0);
  v6 = *(v1 + result[5]);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v4(a1 + result[6], v1 + result[6], v3);
    v9 = *(v1 + v8[7]);
    v4(a1 + v8[8], v1 + v8[8], v3);
    v10 = *(v1 + v8[9]);
    result = (v4)(a1 + v8[10], v1 + v8[10], v3);
    *(a1 + v8[5]) = v7;
    *(a1 + v8[7]) = v9;
    *(a1 + v8[9]) = v10;
  }

  return result;
}

unint64_t sub_1D783A6B4()
{
  v1 = *v0;
  v2 = 0x657370557473616CLL;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  v5 = 0xD000000000000017;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D783A7A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D783B418(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D783A7D0(uint64_t a1)
{
  v2 = sub_1D783AAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D783A80C(uint64_t a1)
{
  v2 = sub_1D783AAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PaidBundleViaOfferState.encode(to:)(void *a1)
{
  sub_1D783B154(0, &qword_1EC9CAD10, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D783AAFC();
  sub_1D78B6884();
  v17 = 0;
  sub_1D78B3394();
  sub_1D783B1B8(&unk_1EE08F470, MEMORY[0x1E6969538]);
  sub_1D78B66B4();
  if (!v1)
  {
    type metadata accessor for PaidBundleViaOfferState(0);
    v16 = 1;
    sub_1D78B66A4();
    v15 = 2;
    sub_1D78B66B4();
    v14 = 3;
    sub_1D78B66A4();
    v13 = 4;
    sub_1D78B66B4();
    v12 = 5;
    sub_1D78B66A4();
    v11 = 6;
    sub_1D78B66B4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D783AAFC()
{
  result = qword_1EE092DD8[0];
  if (!qword_1EE092DD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE092DD8);
  }

  return result;
}

uint64_t PaidBundleViaOfferState.init(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v54 = sub_1D78B3394();
  v50 = *(v54 - 8);
  v4 = MEMORY[0x1EEE9AC00](v54, v3);
  v49 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v44 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = v44 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v53 = v44 - v15;
  sub_1D783B154(0, &qword_1EE08FAD8, MEMORY[0x1E69E6F48]);
  v55 = v16;
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v44 - v18;
  v20 = type metadata accessor for PaidBundleViaOfferState(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D783AAFC();
  v52 = v19;
  v24 = v56;
  sub_1D78B6874();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v13;
  v47 = v9;
  v25 = v51;
  v26 = v23;
  v63 = 0;
  v27 = sub_1D783B1B8(&qword_1EE095660, MEMORY[0x1E6969558]);
  sub_1D78B6614();
  v46 = v27;
  v28 = v50 + 32;
  v29 = *(v50 + 32);
  v30 = v54;
  v29(v26, v53, v54);
  v62 = 1;
  v31 = sub_1D78B6604();
  v44[1] = v28;
  v45 = v29;
  v32 = v20;
  *&v26[*(v20 + 20)] = v31;
  v61 = 2;
  v33 = v56;
  v34 = v30;
  sub_1D78B6614();
  v53 = a1;
  v35 = v26;
  v44[0] = v32;
  v36 = v33;
  v37 = v45;
  v45(&v26[*(v32 + 24)], v36, v30);
  v60 = 3;
  v38 = sub_1D78B6604();
  v39 = v25;
  v40 = v44[0];
  *(v35 + *(v44[0] + 28)) = v38;
  v59 = 4;
  v41 = v47;
  sub_1D78B6614();
  v37(v35 + v40[8], v41, v34);
  v58 = 5;
  *(v35 + v40[9]) = sub_1D78B6604();
  v57 = 6;
  v42 = v49;
  sub_1D78B6614();
  (*(v39 + 8))(v52, v55);
  v37(v35 + v40[10], v42, v34);
  sub_1D783B1FC(v35, v48);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return sub_1D783B260(v35);
}

void sub_1D783B154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D783AAFC();
    v7 = a3(a1, &type metadata for PaidBundleViaOfferState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D783B1B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D78B3394();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D783B1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaidBundleViaOfferState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D783B260(uint64_t a1)
{
  v2 = type metadata accessor for PaidBundleViaOfferState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D783B314()
{
  result = qword_1EC9CAD18;
  if (!qword_1EC9CAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAD18);
  }

  return result;
}

unint64_t sub_1D783B36C()
{
  result = qword_1EE092DC8;
  if (!qword_1EE092DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092DC8);
  }

  return result;
}

unint64_t sub_1D783B3C4()
{
  result = qword_1EE092DD0;
  if (!qword_1EE092DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092DD0);
  }

  return result;
}

uint64_t sub_1D783B418(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001D78DACB0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D78DACD0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D78DACF0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D78DAD10 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657370557473616CLL && a2 == 0xEE00657461446C6CLL || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D78DAD30 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D78DAD50 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D78B6724();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t MissingConfigurationAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t MissingConfigurationAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t MissingConfigurationAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t MissingConfigurationAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D783B94C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D783BA18()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t SubscriptionOffersRouteModel.init(tagID:purchaseTraits:entitlements:restoredSubscriptionItems:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t SubscriptionOffersRouteModel.identifier.getter()
{
  v1 = *v0;

  return v1;
}

BOOL sub_1D783BBBC(void *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *(v2 + 24);
  v6 = [a1 articleID];
  if (!v6)
  {
    sub_1D78B5C74();
    v6 = sub_1D78B5C44();
  }

  v7 = [v5 hasArticleBeenRead_];

  if ((v7 & 1) == 0)
  {
    if (qword_1EE095568 != -1)
    {
      swift_once();
    }

    sub_1D783E138();
    sub_1D78B3574();
    if (v67)
    {
      if (v67 == 1)
      {
        if (qword_1EE08FB98 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_68;
      }
    }

    else if (v4 == 2)
    {
      if (qword_1EE08FB98 == -1)
      {
LABEL_15:
        v16 = qword_1EE09C268;
        sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1D78BCAB0;
        v18 = [a1 articleID];
        v19 = sub_1D78B5C74();
        v21 = v20;

        *(v17 + 56) = MEMORY[0x1E69E6158];
        *(v17 + 64) = sub_1D775ABD4();
        *(v17 + 32) = v19;
        *(v17 + 40) = v21;
        v22 = sub_1D78B60A4();
        sub_1D78B42C4("SubscriptionAccessMeter.canAccessArticle: Cannot access article with id %@ - article access is restricted.", 106, 2, &dword_1D7739000, v16, v22, v17);
LABEL_24:

        return 0;
      }

LABEL_68:
      swift_once();
      goto LABEL_15;
    }

    v23 = [a1 sourceChannel];
    if (!v23)
    {
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v29 = qword_1EE09C268;
      sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D78BCAB0;
      v31 = [a1 articleID];
      v32 = sub_1D78B5C74();
      v34 = v33;

      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 64) = sub_1D775ABD4();
      *(v30 + 32) = v32;
      *(v30 + 40) = v34;
      v35 = sub_1D78B60A4();
      sub_1D78B42C4("SubscriptionAccessMeter.canAccessArticle: Cannot access article with id %@ - source channel is missing.", 103, 2, &dword_1D7739000, v29, v35, v30);
      goto LABEL_24;
    }

    v24 = v23;
    v25 = *(v2 + 72);
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v26 = [v24 asSection];
      if (!v26 || (v27 = [v26 parentID], swift_unknownObjectRelease(), !v27))
      {
        swift_unknownObjectRelease();
        v28 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v27 = [v24 identifier];
    }

    v36 = sub_1D78B5C74();
    v38 = v37;

    v39 = [v25 purchasedTagIDs];
    v40 = sub_1D78B5F64();

    v28 = sub_1D7832E64(v36, v38, v40);

    swift_unknownObjectRelease();

LABEL_27:
    if ((sub_1D783C584(a1) & 1) == 0)
    {
      v15 = (v28 & 1) != 0 || !sub_1D783CB14();
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v42 = qword_1EE09C268;
      sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1D78BCB50;
      v44 = sub_1D775ABD4();
      v45 = v44;
      v46 = 7233859;
      if (!v15)
      {
        v46 = 0x746F6E6E6143;
      }

      v47 = 0xE600000000000000;
      v48 = MEMORY[0x1E69E6158];
      if (v15)
      {
        v47 = 0xE300000000000000;
      }

      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = v44;
      *(v43 + 32) = v46;
      *(v43 + 40) = v47;
      v49 = [a1 articleID];
      goto LABEL_66;
    }

    v41 = [*(v2 + 80) cachedSubscription];
    if (objc_getAssociatedObject(v41, v41 + 1))
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v65 = 0u;
      v66 = 0u;
    }

    v67 = v65;
    v68 = v66;
    if (*(&v66 + 1))
    {
      sub_1D77BFFAC();
      if (swift_dynamicCast())
      {
        v50 = v64;
        v51 = [v64 integerValue];
        if (v51 == -1)
        {

          goto LABEL_58;
        }

        v52 = v51;
LABEL_47:
        if (objc_getAssociatedObject(v41, ~v52))
        {
          sub_1D78B6304();
          swift_unknownObjectRelease();
        }

        else
        {
          v65 = 0u;
          v66 = 0u;
        }

        v67 = v65;
        v68 = v66;
        if (*(&v66 + 1))
        {
          sub_1D77BFFAC();
          if (swift_dynamicCast())
          {
            v53 = v64;
            v54 = [v53 integerValue];

            if ((v54 ^ v52 | v28))
            {
              goto LABEL_58;
            }

LABEL_56:
            v15 = !sub_1D783C694();
LABEL_59:
            if (qword_1EE08FB98 != -1)
            {
              swift_once();
            }

            v42 = qword_1EE09C268;
            sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
            v43 = swift_allocObject();
            *(v43 + 16) = xmmword_1D78BCB50;
            v55 = sub_1D775ABD4();
            v45 = v55;
            v56 = 7233859;
            if (!v15)
            {
              v56 = 0x746F6E6E6143;
            }

            v57 = 0xE600000000000000;
            v48 = MEMORY[0x1E69E6158];
            if (v15)
            {
              v57 = 0xE300000000000000;
            }

            *(v43 + 56) = MEMORY[0x1E69E6158];
            *(v43 + 64) = v55;
            *(v43 + 32) = v56;
            *(v43 + 40) = v57;
            v49 = [a1 articleID];
LABEL_66:
            v58 = v49;
            v59 = sub_1D78B5C74();
            v61 = v60;

            *(v43 + 96) = v48;
            *(v43 + 104) = v45;
            *(v43 + 72) = v59;
            *(v43 + 80) = v61;
            v62 = sub_1D78B60A4();
            sub_1D78B42C4("SubscriptionAccessMeter.canAccessArticle: %@ access article with id %@.", 71, 2, &dword_1D7739000, v42, v62, v43);
            swift_unknownObjectRelease();

            return v15;
          }
        }

        else
        {
          sub_1D7756B84(&v67);
        }

        if (((v52 | v28) & 1) == 0)
        {
          goto LABEL_56;
        }

LABEL_58:
        v15 = 1;
        goto LABEL_59;
      }
    }

    else
    {
      sub_1D7756B84(&v67);
    }

    v50 = 0;
    v52 = 0;
    goto LABEL_47;
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE09C268;
  sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D78BCAB0;
  v10 = [a1 articleID];
  v11 = sub_1D78B5C74();
  v13 = v12;

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D775ABD4();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v14 = sub_1D78B60A4();
  sub_1D78B42C4("SubscriptionAccessMeter.canAccessArticle: Can access article with id %@ - it is already in the reading history.", 111, 2, &dword_1D7739000, v8, v14, v9);

  return 1;
}

uint64_t sub_1D783C584(void *a1)
{
  result = [a1 sourceChannel];
  if (result)
  {
    v4 = result;
    v5 = [*(v1 + 80) cachedSubscription];
    v6 = [v4 identifier];
    if (!v6)
    {
      sub_1D78B5C74();
      v6 = sub_1D78B5C44();
    }

    v7 = [v5 containsTagID_];

    if ([a1 respondsToSelector_])
    {
      v8 = [a1 isBundlePaid];
      swift_unknownObjectRelease();
      if (v8 & v7)
      {
        return 1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

BOOL sub_1D783C694()
{
  v1 = v0;
  v2 = sub_1D78B3394();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v42 - v9;
  sub_1D775B744(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = *(v1 + 16);
  v16 = [v15 bundleSubscriptionMeteredCountLastResetDate];
  if (v16)
  {
    v17 = v16;
    sub_1D78B3364();

    (*(v3 + 56))(v14, 0, 1, v2);
    sub_1D7756E78(v14);
    v18 = [v15 bundleSubscriptionMeteredCountLastResetDate];
    if (v18)
    {
      v20 = v18;
      sub_1D78B3364();

      (*(v3 + 32))(v10, v7, v2);
      if (sub_1D783DD5C(v10))
      {
        v21.n128_f64[0] = sub_1D783DB50(&selRef_setBundleSubscriptionMeteredCountLastResetDate_, &selRef_setMonthlyBundleSubscriptionMeteredCount_, "SubscriptionAccessMeter.resetMonthlyBundleSubscriptionMeteredCountAndDate: Monthly metered count for bundle subscriptions reset to 0.", 133);
      }

      (*(v3 + 8))(v10, v2, v21);
    }
  }

  else
  {
    (*(v3 + 56))(v14, 1, 1, v2);
    sub_1D7756E78(v14);
    v19 = sub_1D783DB50(&selRef_setBundleSubscriptionMeteredCountLastResetDate_, &selRef_setMonthlyBundleSubscriptionMeteredCount_, "SubscriptionAccessMeter.resetMonthlyBundleSubscriptionMeteredCountAndDate: Monthly metered count for bundle subscriptions reset to 0.", 133);
  }

  v22 = [v15 monthlyBundleSubscriptionMeteredCount];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 integerValue];

    if (!NFInternalBuild())
    {
      goto LABEL_13;
    }
  }

  else
  {
    v24 = 0;
    if (!NFInternalBuild())
    {
      goto LABEL_13;
    }
  }

  v25 = [objc_opt_self() standardUserDefaults];
  v26 = [v25 integerForKey_];

  if ((v26 & 0x8000000000000000) == 0)
  {
    return v24 >= v26;
  }

LABEL_13:
  v28 = *(v1 + 104);
  v27 = v24 >= v28;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v29 = qword_1EE09C268;
  sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D78BF690;
  v31 = sub_1D775ABD4();
  v32 = v31;
  v33 = 29545;
  if (v24 < v28)
  {
    v33 = 0x746F6E207369;
  }

  v34 = 0xE600000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = v31;
  if (v24 >= v28)
  {
    v34 = 0xE200000000000000;
  }

  *(v30 + 32) = v33;
  *(v30 + 40) = v34;
  v43 = v24;
  v36 = sub_1D78B66E4();
  *(v30 + 96) = v35;
  *(v30 + 104) = v32;
  *(v30 + 72) = v36;
  *(v30 + 80) = v37;
  v43 = *(v1 + 104);
  v38 = sub_1D78B66E4();
  *(v30 + 136) = v35;
  *(v30 + 144) = v32;
  *(v30 + 112) = v38;
  *(v30 + 120) = v39;
  v40 = sub_1D78B60A4();
  sub_1D78B42C4("SubscriptionAccessMeter.isBundleSubscriptionMeterLimitReached: Bundle subscription meter limit %@ reached. Count: %@. Limit: %@.", 128, 2, &dword_1D7739000, v29, v40, v30);

  return v27;
}

BOOL sub_1D783CB14()
{
  v1 = v0;
  v2 = sub_1D78B3394();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v42 - v9;
  sub_1D775B744(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v42 - v13;
  v15 = *(v1 + 16);
  v16 = [v15 aLaCarteSubscriptionMeteredCountLastResetDate];
  if (v16)
  {
    v17 = v16;
    sub_1D78B3364();

    (*(v3 + 56))(v14, 0, 1, v2);
    sub_1D7756E78(v14);
    v18 = [v15 aLaCarteSubscriptionMeteredCountLastResetDate];
    if (v18)
    {
      v20 = v18;
      sub_1D78B3364();

      (*(v3 + 32))(v10, v7, v2);
      if (sub_1D783DD5C(v10))
      {
        v21.n128_f64[0] = sub_1D783DB50(&selRef_setALaCarteSubscriptionMeteredCountLastResetDate_, &selRef_setMonthlyALaCarteSubscriptionMeteredCount_, "SubscriptionAccessMeter.resetMonthlyALaCarteSubscriptionMeteredCountAndDate: Monthly metered count for a la carte subscriptions reset to 0.", 139);
      }

      (*(v3 + 8))(v10, v2, v21);
    }
  }

  else
  {
    (*(v3 + 56))(v14, 1, 1, v2);
    sub_1D7756E78(v14);
    v19 = sub_1D783DB50(&selRef_setALaCarteSubscriptionMeteredCountLastResetDate_, &selRef_setMonthlyALaCarteSubscriptionMeteredCount_, "SubscriptionAccessMeter.resetMonthlyALaCarteSubscriptionMeteredCountAndDate: Monthly metered count for a la carte subscriptions reset to 0.", 139);
  }

  v22 = [v15 monthlyALaCarteSubscriptionMeteredCount];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 integerValue];

    if (!NFInternalBuild())
    {
      goto LABEL_13;
    }
  }

  else
  {
    v24 = 0;
    if (!NFInternalBuild())
    {
      goto LABEL_13;
    }
  }

  v25 = [objc_opt_self() standardUserDefaults];
  v26 = [v25 integerForKey_];

  if ((v26 & 0x8000000000000000) == 0)
  {
    return v24 >= v26;
  }

LABEL_13:
  v28 = *(v1 + 96);
  v27 = v24 >= v28;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v29 = qword_1EE09C268;
  sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D78BF690;
  v31 = sub_1D775ABD4();
  v32 = v31;
  v33 = 29545;
  if (v24 < v28)
  {
    v33 = 0x746F6E207369;
  }

  v34 = 0xE600000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = v31;
  if (v24 >= v28)
  {
    v34 = 0xE200000000000000;
  }

  *(v30 + 32) = v33;
  *(v30 + 40) = v34;
  v43 = v24;
  v36 = sub_1D78B66E4();
  *(v30 + 96) = v35;
  *(v30 + 104) = v32;
  *(v30 + 72) = v36;
  *(v30 + 80) = v37;
  v43 = *(v1 + 96);
  v38 = sub_1D78B66E4();
  *(v30 + 136) = v35;
  *(v30 + 144) = v32;
  *(v30 + 112) = v38;
  *(v30 + 120) = v39;
  v40 = sub_1D78B60A4();
  sub_1D78B42C4("SubscriptionAccessMeter.isALaCarteSubscriptionMeterLimitReached: A la carte subscription meter limit %@ reached. Count: %@. Limit: %@.", 134, 2, &dword_1D7739000, v29, v40, v30);

  return v27;
}

BOOL sub_1D783CF94(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  v4 = [a1 identifier];
  sub_1D78B5C74();

  v5 = sub_1D78B59D4();

  if (v5)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v6 = qword_1EE09C268;
    sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    v8 = [a1 identifier];
    v9 = sub_1D78B5C74();
    v11 = v10;

    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    v12 = sub_1D78B60A4();
    sub_1D78B42C4("SubscriptionAccessMeter.canAccessPuzzle: Can access puzzle with id %@ - it is already in the puzzle history.", 108, 2, &dword_1D7739000, v6, v12, v7);

    return 1;
  }

  v13 = [*(v2 + 80) cachedSubscription];
  if (objc_getAssociatedObject(v13, v13 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    sub_1D7756B84(&v23);
    goto LABEL_13;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v14 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v14 = v20;
  v15 = [v20 integerValue];
  if (v15 == -1)
  {

    return 1;
  }

  v16 = v15;
LABEL_14:
  if (objc_getAssociatedObject(v13, ~v16))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (*(&v22 + 1))
  {
    sub_1D77BFFAC();
    if (swift_dynamicCast())
    {
      v17 = v20;
      v18 = [v17 integerValue];

      return ((v18 ^ v16) & 1) != 0;
    }
  }

  else
  {
    sub_1D7756B84(&v23);
  }

  return (v16 & 1) != 0;
}

BOOL sub_1D783D2D4(void *a1)
{
  if (![a1 isPaid])
  {
    return 1;
  }

  v2 = [*(v1 + 80) cachedSubscription];
  if (objc_getAssociatedObject(v2, v2 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_1D7756B84(&v12);
    goto LABEL_10;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v3 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v3 = v9;
  v4 = [v9 integerValue];
  if (v4 == -1)
  {

    return 1;
  }

  v5 = v4;
LABEL_11:
  if (objc_getAssociatedObject(v2, ~v5))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (*(&v11 + 1))
  {
    sub_1D77BFFAC();
    if (swift_dynamicCast())
    {
      v6 = v9;
      v7 = [v6 integerValue];

      return ((v7 ^ v5) & 1) != 0;
    }
  }

  else
  {
    sub_1D7756B84(&v12);
  }

  return (v5 & 1) != 0;
}

void sub_1D783D4A4(void *a1)
{
  v3 = *(v1 + 24);
  v4 = [a1 articleID];
  if (!v4)
  {
    sub_1D78B5C74();
    v4 = sub_1D78B5C44();
  }

  v5 = [v3 hasArticleBeenRead_];

  if (v5)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v6 = qword_1EE09C268;
    sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    v8 = [a1 articleID];
    v9 = sub_1D78B5C74();
    v11 = v10;

    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    v12 = sub_1D78B60A4();
    sub_1D78B42C4("SubscriptionAccessMeter.incrementCount: Metered count not incremented for article with id %@ - it is already in the reading history.", 132, 2, &dword_1D7739000, v6, v12, v7);

    return;
  }

  if (sub_1D783C584(a1))
  {
    v13 = [*(v1 + 80) cachedSubscription];
    if (objc_getAssociatedObject(v13, v13 + 1))
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32 = v30;
    v33 = v31;
    if (*(&v31 + 1))
    {
      sub_1D77BFFAC();
      if (swift_dynamicCast())
      {
        v19 = v29;
        v20 = [v29 integerValue];
        if (v20 == -1)
        {

          return;
        }

        v21 = v20;
LABEL_24:
        if (objc_getAssociatedObject(v13, ~v21))
        {
          sub_1D78B6304();
          swift_unknownObjectRelease();
        }

        else
        {
          v30 = 0u;
          v31 = 0u;
        }

        v32 = v30;
        v33 = v31;
        if (*(&v31 + 1))
        {
          sub_1D77BFFAC();
          if (swift_dynamicCast())
          {
            v22 = v29;
            v23 = [v22 integerValue];

            if ((v23 ^ v21))
            {
              return;
            }

            goto LABEL_33;
          }
        }

        else
        {
          sub_1D7756B84(&v32);
        }

        if (v21)
        {
          return;
        }

LABEL_33:
        if (!sub_1D783C694())
        {
          sub_1D783D988(&selRef_monthlyBundleSubscriptionMeteredCount, &selRef_setMonthlyBundleSubscriptionMeteredCount_, "SubscriptionAccessMeter.incrementBundleSubscriptionCount: Monthly metered count for bundle subscriptions incremented to %@.", 123);
        }

        return;
      }
    }

    else
    {
      sub_1D7756B84(&v32);
    }

    v19 = 0;
    v21 = 0;
    goto LABEL_24;
  }

  v14 = [a1 sourceChannel];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = *(v1 + 72);
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v17 = [v15 asSection];
    if (!v17 || (v18 = [v17 parentID], swift_unknownObjectRelease(), !v18))
    {
      swift_unknownObjectRelease();
      goto LABEL_37;
    }
  }

  else
  {
    v18 = [v15 identifier];
  }

  v24 = sub_1D78B5C74();
  v26 = v25;

  v27 = [v16 purchasedTagIDs];
  v28 = sub_1D78B5F64();

  LOBYTE(v27) = sub_1D7832E64(v24, v26, v28);

  swift_unknownObjectRelease();

  if ((v27 & 1) == 0)
  {
LABEL_37:
    if (!sub_1D783CB14())
    {
      sub_1D783D988(&selRef_monthlyALaCarteSubscriptionMeteredCount, &selRef_setMonthlyALaCarteSubscriptionMeteredCount_, "SubscriptionAccessMeter.incrementALaCarteSubscriptionCount: Monthly metered count for a la carte subscriptions incremented to %@.", 129);
    }
  }

  swift_unknownObjectRelease();
}

double sub_1D783D988(SEL *a1, SEL *a2, const char *a3, uint64_t a4, ...)
{
  v8 = *(v4 + 16);
  v9 = [v8 *a1];
  if (!v9)
  {
    sub_1D77BFFAC();
    v9 = sub_1D78B6224();
  }

  v10 = [v9 integerValue];
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [v8 *a2];

  if (qword_1EE08FB98 != -1)
  {
LABEL_7:
    swift_once();
  }

  v12 = qword_1EE09C268;
  sub_1D775B744(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D78BCAB0;
  v14 = sub_1D78B66E4();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D775ABD4();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = sub_1D78B60A4();
  sub_1D78B42C4(a3, a4, 2, &dword_1D7739000, v12, v17, v13);

  return result;
}

double sub_1D783DB50(SEL *a1, SEL *a2, const char *a3, uint64_t a4)
{
  v9 = sub_1D78B3394();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  sub_1D78B3384();
  v15 = sub_1D78B3324();
  (*(v10 + 8))(v13, v9);
  [v14 *a1];

  sub_1D77BFFAC();
  v16 = sub_1D78B6224();
  [v14 *a2];

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE09C268;
  v18 = sub_1D78B60A4();
  return sub_1D78B42C4(a3, a4, 2, &dword_1D7739000, v17, v18, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1D783DCEC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL sub_1D783DD5C(uint64_t a1)
{
  v2 = sub_1D78B3484();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B34A4();
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D78B3394();
  v36 = *(v11 - 8);
  v37 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v31 - v17;
  if (!NFInternalBuild() || (v19 = [objc_opt_self() standardUserDefaults], v20 = objc_msgSend(v19, sel_integerForKey_, *MEMORY[0x1E69B5140]), v19, (v20 & 0x8000000000000000) != 0))
  {
    sub_1D78B3474();
    sub_1D78B3384();
    v24 = *MEMORY[0x1E6969A78];
    v31[1] = a1;
    v25 = *(v3 + 104);
    v25(v6, v24, v2);
    v26 = sub_1D78B3494();
    v33 = v7;
    v34 = v26;
    v27 = *(v3 + 8);
    v27(v6, v2);
    v28 = *MEMORY[0x1E6969A68];
    v25(v6, v28, v2);
    v32 = sub_1D78B3494();
    v27(v6, v2);
    v25(v6, v24, v2);
    v31[0] = sub_1D78B3494();
    v27(v6, v2);
    v25(v6, v28, v2);
    v29 = sub_1D78B3494();
    v27(v6, v2);
    (*(v36 + 8))(v15, v37);
    (*(v35 + 8))(v10, v33);
    return v31[0] < v34 || v29 < v32;
  }

  else
  {
    sub_1D78B3384();
    sub_1D78B3304();
    v22 = v21;
    (*(v36 + 8))(v18, v37);
    return v22 > v20;
  }
}

unint64_t sub_1D783E138()
{
  result = qword_1EE094FB8;
  if (!qword_1EE094FB8)
  {
    type metadata accessor for SubscriptionAccessMeter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE094FB8);
  }

  return result;
}

uint64_t PurchaseReceiptVerificationFailureAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PurchaseReceiptVerificationFailureAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PurchaseReceiptVerificationFailureAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PurchaseReceiptVerificationFailureAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D783E468()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}