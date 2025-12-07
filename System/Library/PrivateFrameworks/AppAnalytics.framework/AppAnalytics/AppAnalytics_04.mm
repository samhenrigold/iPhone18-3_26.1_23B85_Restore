uint64_t sub_1B69DB2D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69E0A7C(0);
  result = sub_1B6AB9E80();
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1B69979CC(v21, v31);
      }

      else
      {
        sub_1B698FE74(v21, v31);
        v22 = v20;
      }

      sub_1B6ABA1F0();
      type metadata accessor for CFString(0);
      sub_1B69E0D68(&qword_1EB95AD68, type metadata accessor for CFString, &unk_1B6ABD088);
      sub_1B6AB8F50();
      result = sub_1B6ABA230();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1B69979CC(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B69DB5AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69C11A0(0, &qword_1EB95AE18, sub_1B69811C4, &type metadata for Session.Kind, &type metadata for UserIDConfiguration);
  result = sub_1B6AB9E80();
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
    while (1)
    {
      if (!v12)
      {
        v21 = v8;
        while (1)
        {
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_44;
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

        if ((v4 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_42;
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
        goto LABEL_41;
      }

      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48);
      v25 = (*(v5 + 56) + 48 * v23);
      v26 = *(v24 + 16 * v23 + 8);
      v38 = *(v24 + 16 * v23);
      if (v4)
      {
        v27 = *v25;
        v28 = v25[2];
        v40 = v25[1];
        v41 = v28;
        v39 = v27;
      }

      else
      {
        sub_1B69E12F0(v25, &v39);
        sub_1B6992E2C(v38, v26);
      }

      sub_1B6ABA1F0();
      if (!v26)
      {
        v29 = 0;
        goto LABEL_24;
      }

      if (v26 == 1)
      {
        break;
      }

      if (v26 == 2)
      {
        v29 = 2;
LABEL_24:
        MEMORY[0x1B8C98A40](v29);
        goto LABEL_26;
      }

      MEMORY[0x1B8C98A40](3);
      sub_1B6AB9380();
LABEL_26:
      result = sub_1B6ABA230();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v16 = v38;
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

LABEL_44:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v16 = v38;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = (*(v7 + 56) + 48 * v15);
      v18 = v39;
      v19 = v41;
      v17[1] = v40;
      v17[2] = v19;
      *v17 = v18;
      ++*(v7 + 16);
    }

    v29 = 1;
    goto LABEL_24;
  }

LABEL_41:

LABEL_42:
  *v3 = v7;
  return result;
}

uint64_t sub_1B69DB8E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69E0DB0(0, &qword_1EB95ADC8, 255, sub_1B69E1084);
  v34 = v4;
  result = sub_1B6AB9E80();
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

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
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

uint64_t sub_1B69DBB9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69881C8(0, &qword_1EB95ADC0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6EC8]);
  v38 = v4;
  result = sub_1B6AB9E80();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_1B69E1028(v27, &v39);
      }

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
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
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
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

uint64_t sub_1B69DBE84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69E1100(0);
  v40 = v4;
  result = sub_1B6AB9E80();
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
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 56 * v24;
      if (v40)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v31 = *(v28 + 32);
        v44 = *(v28 + 48);
        v42 = v30;
        v43 = v31;
        v41 = v29;
      }

      else
      {
        sub_1B69E11D4(v28, &v41);
      }

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 56 * v15;
      v18 = v41;
      v19 = v42;
      v20 = v43;
      *(v17 + 48) = v44;
      *(v17 + 16) = v19;
      *(v17 + 32) = v20;
      *v17 = v18;
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

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B69DC1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  v9 = a2;
  v56 = a3(0);
  v10 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - v11;
  v12 = sub_1B6AB8E40();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  sub_1B69E0CBC(0, a4, a5);
  v51 = v9;
  result = sub_1B6AB9E80();
  v17 = result;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v47 = (v22 + 16);
    v48 = v22;
    v45 = v5;
    v46 = v10 + 16;
    v49 = v15;
    v50 = v10;
    v52 = (v10 + 32);
    v53 = (v22 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v54 = *(v22 + 72);
      v32 = v31 + v54 * v30;
      if (v51)
      {
        (*v53)(v57, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 32))(v55, v33 + v34 * v30, v56);
      }

      else
      {
        (*v47)(v57, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 16))(v55, v35 + v34 * v30, v56);
      }

      sub_1B69E0D68(&qword_1EDBC95A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1B6AB9250();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v53)((*(v17 + 48) + v54 * v26), v57, v12);
      result = (*v52)(*(v17 + 56) + v34 * v26, v55, v56);
      ++*(v17 + 16);
      v22 = v48;
      v15 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v15 + 32);
    v8 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
  return result;
}

uint64_t sub_1B69DC6CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Tracker.DelayedEvent(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB8E40();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B69E0CBC(0, &qword_1EB95AD90, type metadata accessor for Tracker.DelayedEvent);
  v43 = v4;
  result = sub_1B6AB9E80();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1B69E0FC0(v27 + v28 * v24, v47, type metadata accessor for Tracker.DelayedEvent);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1B69E0F58(v29 + v28 * v24, v47, type metadata accessor for Tracker.DelayedEvent);
      }

      sub_1B69E0D68(&qword_1EDBC95A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1B6AB9250();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1B69E0FC0(v47, *(v12 + 56) + v28 * v20, type metadata accessor for Tracker.DelayedEvent);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1B69DCB7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69E0DB0(0, &qword_1EB95AD78, 255, sub_1B69E0BF0);
  v34 = v4;
  result = sub_1B6AB9E80();
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

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
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

uint64_t sub_1B69DCE54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69881C8(0, &qword_1EB95AD98, &type metadata for SummaryEventDatabaseEntity, MEMORY[0x1E69E6EC8]);
  v36 = v4;
  result = sub_1B6AB9E80();
  v7 = result;
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
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *(v25 + 8);
      v37 = *v25;
      v38 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v37;
      *(v17 + 8) = v26;
      *(v17 + 16) = v38;
      ++*(v7 + 16);
      v5 = v35;
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
  return result;
}

uint64_t sub_1B69DD134(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UserIDComponents(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1B6981418(0, &qword_1EB95ADA8, MEMORY[0x1E69E6EC8]);
  v37 = v4;
  result = sub_1B6AB9E80();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
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
    v16 = result + 64;
    while (1)
    {
      if (!v14)
      {
        v20 = v10;
        while (1)
        {
          v10 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_44;
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

          v3 = v35;
          goto LABEL_42;
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
        goto LABEL_41;
      }

      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v22;
      v25 = *(*(v7 + 48) + 16 * v22 + 8);
      v39 = *(*(v7 + 48) + 16 * v22);
      if (v37)
      {
        sub_1B69E0FC0(v24, v38, type metadata accessor for UserIDComponents);
      }

      else
      {
        sub_1B69E0F58(v24, v38, type metadata accessor for UserIDComponents);
        sub_1B6992E2C(v39, v25);
      }

      sub_1B6ABA1F0();
      if (!v25)
      {
        v26 = 0;
        goto LABEL_24;
      }

      if (v25 == 1)
      {
        break;
      }

      if (v25 == 2)
      {
        v26 = 2;
LABEL_24:
        MEMORY[0x1B8C98A40](v26);
        goto LABEL_26;
      }

      MEMORY[0x1B8C98A40](3);
      sub_1B6AB9380();
LABEL_26:
      result = sub_1B6ABA230();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v39;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 16 * v17) = v18;
      result = sub_1B69E0FC0(v38, *(v9 + 56) + v23 * v17, type metadata accessor for UserIDComponents);
      ++*(v9 + 16);
    }

    v26 = 1;
    goto LABEL_24;
  }

LABEL_41:

LABEL_42:
  *v3 = v9;
  return result;
}

unint64_t sub_1B69DD504(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1B69E0D68(&qword_1EB95AD68, type metadata accessor for CFString, &unk_1B6ABD088);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B6AB8F40();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B69DD610(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    switch(v11)
    {
      case 0uLL:
        if (!a2)
        {
          v15 = *v9;
          v16 = 0;
          goto LABEL_28;
        }

        sub_1B6992E2C(a1, a2);
        v12 = 0;
        goto LABEL_14;
      case 1uLL:
        if (a2 == 1)
        {
          v15 = *v9;
          v16 = 1;
          goto LABEL_28;
        }

        sub_1B6992E2C(a1, a2);
        v12 = 1;
        goto LABEL_14;
      case 2uLL:
        if (a2 == 2)
        {
          v15 = *v9;
          v16 = 2;
          goto LABEL_28;
        }

        sub_1B6992E2C(a1, a2);
        v12 = 2;
        goto LABEL_14;
    }

    if (a2 < 3)
    {
      sub_1B6992E2C(a1, a2);
      sub_1B6992E2C(v10, v11);
      v12 = v11;
LABEL_14:
      sub_1B69C2E8C(v10, v12);
      sub_1B69C2E8C(a1, a2);
      goto LABEL_15;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = sub_1B6ABA0F0();
    sub_1B6992E2C(a1, a2);
    sub_1B6992E2C(v10, v11);
    sub_1B69C2E8C(v10, v11);
    sub_1B69C2E8C(a1, a2);
    if (v14)
    {
      return v5;
    }

LABEL_15:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_1B6992E2C(a1, a2);
  sub_1B6992E2C(a1, a2);
  v15 = a1;
  v16 = a2;
LABEL_28:
  sub_1B69C2E8C(v15, v16);
  sub_1B69C2E8C(a1, a2);
  return v5;
}

unint64_t sub_1B69DD80C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1B6AB8E40();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1B69E0D68(&qword_1EDBCA470, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1B6AB92A0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1B69DD9CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1B6AB92E0();
      v8 = v7;
      if (v6 == sub_1B6AB92E0() && v8 == v9)
      {
        break;
      }

      v11 = sub_1B6ABA0F0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1B69DDAD0()
{
  v1 = v0;
  sub_1B69C11A0(0, &qword_1EDBC8978, sub_1B69C156C, &type metadata for SessionGroupManager.Key, MEMORY[0x1E69E6158]);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v17 *= 16;
        v24 = (*(v2 + 56) + v17);
        v25 = *v24;
        v26 = v24[1];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v27[2] = v22;
        v27[3] = v23;
        v28 = (*(v4 + 56) + v17);
        *v28 = v25;
        v28[1] = v26;
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

void sub_1B69DDC84()
{
  v1 = v0;
  sub_1B69881C8(0, &qword_1EDBCBB10, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
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
        sub_1B698FE74(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B69979CC(v25, (*(v4 + 56) + v22));
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

void *sub_1B69DDE44()
{
  v1 = v0;
  sub_1B69E0DB0(0, &qword_1EDBCAFE0, 255, type metadata accessor for UploadDropboxFile);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
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

id sub_1B69DDFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B69E0DB0(0, &qword_1EDBCAFD8, a3, type metadata accessor for JSON);
  v5 = *v3;
  v6 = sub_1B6AB9E70();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = v23;
      }

      while (v15);
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
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void sub_1B69DE144()
{
  v1 = v0;
  sub_1B69C11A0(0, &qword_1EDBCB630, sub_1B69E0E68, &type metadata for UploadBatchQueueKey, MEMORY[0x1E69E6158]);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
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
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        v17 *= 16;
        v25 = (*(v2 + 56) + v17);
        v26 = *v25;
        v27 = v25[1];
        v28 = *(v4 + 48) + v18;
        *v28 = v20;
        *(v28 + 8) = v21;
        *(v28 + 16) = v22;
        *(v28 + 24) = v23;
        *(v28 + 32) = v24;
        v29 = (*(v4 + 56) + v17);
        *v29 = v26;
        v29[1] = v27;
        sub_1B69E0EBC(v20, v21, v22, v23, v24);
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

id sub_1B69DE2F4()
{
  v1 = v0;
  sub_1B69E0B1C(0);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1B69C1678(*(v2 + 56) + 32 * v17, v21);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + 32 * v17);
        v20 = v21[1];
        *v19 = v21[0];
        v19[1] = v20;
        result = v18;
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

id sub_1B69DE468()
{
  v1 = v0;
  sub_1B69E0A7C(0);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1B698FE74(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B69979CC(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void *sub_1B69DE5F8()
{
  v1 = v0;
  sub_1B69C11A0(0, &qword_1EB95AE18, sub_1B69811C4, &type metadata for Session.Kind, &type metadata for UserIDConfiguration);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 48 * v17;
        sub_1B69E12F0(*(v2 + 56) + 48 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v26 = v28[1];
        v25 = v28[2];
        *v24 = v28[0];
        v24[1] = v26;
        v24[2] = v25;
        result = sub_1B6992E2C(v20, v21);
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

        v1 = v27;
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

  return result;
}

void *sub_1B69DE7CC()
{
  v1 = v0;
  v26 = sub_1B6AB9E10();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69A52FC(0);
  v3 = *v0;
  v4 = sub_1B6AB9E70();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_1B698FE74(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_1B69979CC(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
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

        v1 = v24[0];
        v5 = v27;
        goto LABEL_21;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_1B69DEA70()
{
  v1 = v0;
  sub_1B69E0DB0(0, &qword_1EB95ADC8, 255, sub_1B69E1084);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
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

void sub_1B69DEBF4()
{
  v1 = v0;
  sub_1B69881C8(0, &qword_1EB95ADC0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_1B69E1028(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void sub_1B69DEDC0()
{
  v1 = v0;
  sub_1B69E1100(0);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v22 = 56 * v17;
        sub_1B69E11D4(*(v2 + 56) + 56 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
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

        v1 = v28;
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

char *sub_1B69DF00C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v35 - v7;
  v44 = sub_1B6AB8E40();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E0CBC(0, a2, a3);
  v9 = *v3;
  v10 = sub_1B6AB9E70();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        result = (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }

  return result;
}

void sub_1B69DF398(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v5 = v4;
  sub_1B699A1D4(0, a1, a2, a3);
  v6 = *v4;
  v7 = sub_1B6AB9E70();
  v8 = v7;
  if (*(v6 + 16))
  {
    v28 = v5;
    v9 = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 64 + 8 * v10)
    {
      memmove(v9, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = (*(v6 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = 40 * v21;
        sub_1B6982544(*(v6 + 56) + 40 * v21, v30);
        v27 = (*(v8 + 48) + v22);
        *v27 = v24;
        v27[1] = v25;
        a4(v30, *(v8 + 56) + v26);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v5 = v28;
        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v8;
  }
}

void sub_1B69DF54C()
{
  v1 = v0;
  v2 = type metadata accessor for Tracker.Timer(0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E0DB0(0, &unk_1EDBCAA30, 255, type metadata accessor for Tracker.Timer);
  v4 = *v0;
  v5 = sub_1B6AB9E70();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_1B69E0F58(v21 + v27, v32, type metadata accessor for Tracker.Timer);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_1B69E0FC0(v26, *(v28 + 56) + v27, type metadata accessor for Tracker.Timer);

        v14 = v35;
      }

      while (v35);
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
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

char *sub_1B69DF7C0()
{
  v1 = v0;
  v2 = type metadata accessor for Tracker.DelayedEvent(0);
  v38 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1B6AB8E40();
  v40 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E0CBC(0, &qword_1EB95AD90, type metadata accessor for Tracker.DelayedEvent);
  v5 = *v0;
  v6 = sub_1B6AB9E70();
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
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_1B69E0F58(v26 + v28, v37, type metadata accessor for Tracker.DelayedEvent);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_1B69E0FC0(v29, *(v18 + 56) + v28, type metadata accessor for Tracker.DelayedEvent);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
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

void sub_1B69DFAF4()
{
  v1 = v0;
  sub_1B69E0DB0(0, &qword_1EB95AD78, 255, sub_1B69E0BF0);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
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

void *sub_1B69DFC78()
{
  v1 = v0;
  sub_1B69881C8(0, &qword_1EDBC7B68, &type metadata for DataProvider, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void sub_1B69DFE2C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  sub_1B69BE2AC(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_1B6AB9E70();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;
      }

      while (v15);
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
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }
}

void sub_1B69DFF9C()
{
  v1 = v0;
  sub_1B69881C8(0, &qword_1EB95AD98, &type metadata for SummaryEventDatabaseEntity, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;
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

void *sub_1B69E0138()
{
  v1 = v0;
  v2 = type metadata accessor for UserIDComponents(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6981418(0, &qword_1EB95ADA8, MEMORY[0x1E69E6EC8]);
  v4 = *v0;
  v5 = sub_1B6AB9E70();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v30;
        v25 = *(v31 + 72) * v19;
        sub_1B69E0F58(*(v4 + 56) + v25, v30, type metadata accessor for UserIDComponents);
        v26 = v32;
        v27 = (*(v32 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_1B69E0FC0(v24, *(v26 + 56) + v25, type metadata accessor for UserIDComponents);
        result = sub_1B6992E2C(v22, v23);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    v6 = v32;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
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

  return result;
}

id sub_1B69E03A4(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1B6AB8C60();
  *&v13 = 0;
  v5 = [v3 JSONObjectWithData:v4 options:4 error:&v13];

  v6 = v13;
  if (v5)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    v8 = sub_1B6AB8A70();

    swift_willThrow();
    v13 = 0u;
    v14 = 0u;
  }

  v9 = &v2[OBJC_IVAR___AAJSON_value];
  v10 = v14;
  *v9 = v13;
  *(v9 + 1) = v10;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for JSON();
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_1B69E04CC()
{
  result = qword_1EB95AD38;
  if (!qword_1EB95AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AD38);
  }

  return result;
}

unint64_t sub_1B69E0520()
{
  result = qword_1EDBC8048;
  if (!qword_1EDBC8048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBC8048);
  }

  return result;
}

unint64_t sub_1B69E0570()
{
  result = qword_1EB95AD40;
  if (!qword_1EB95AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AD40);
  }

  return result;
}

unint64_t sub_1B69E05C8()
{
  result = qword_1EB95AD48;
  if (!qword_1EB95AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AD48);
  }

  return result;
}

unint64_t sub_1B69E0620()
{
  result = qword_1EB95AD50;
  if (!qword_1EB95AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AD50);
  }

  return result;
}

unint64_t sub_1B69E0678()
{
  result = qword_1EB95AD58;
  if (!qword_1EB95AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AD58);
  }

  return result;
}

unint64_t sub_1B69E06D0()
{
  result = qword_1EDBCA4E0;
  if (!qword_1EDBCA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCA4E0);
  }

  return result;
}

uint64_t dispatch thunk of JSON.subscript.getter()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
}

void sub_1B69E0A7C(uint64_t a1)
{
  if (!qword_1EB95AD60)
  {
    type metadata accessor for CFString(255);
    sub_1B69E0D68(&qword_1EB95AAF0, type metadata accessor for CFString, &unk_1B6ABD0B4);
    v1 = sub_1B6AB9EA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95AD60);
    }
  }
}

void sub_1B69E0B1C(uint64_t a1)
{
  if (!qword_1EB95AD70)
  {
    type metadata accessor for CFString(255);
    sub_1B6980954(255, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    sub_1B69E0D68(&qword_1EB95AAF0, type metadata accessor for CFString, &unk_1B6ABD0B4);
    v1 = sub_1B6AB9EA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95AD70);
    }
  }
}

void sub_1B69E0C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B69E0CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1B6AB8E40();
    a3(255);
    sub_1B69E0D68(&qword_1EDBC95A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v5 = sub_1B6AB9EA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B69E0D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B69E0DB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    v5 = sub_1B6AB9EA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1B69E0E14()
{
  result = qword_1EB95ADA0;
  if (!qword_1EB95ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95ADA0);
  }

  return result;
}

unint64_t sub_1B69E0E68()
{
  result = qword_1EDBCB810;
  if (!qword_1EDBCB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCB810);
  }

  return result;
}

double sub_1B69E0EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }

  return result;
}

uint64_t sub_1B69E0F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69E0FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B69E1084(uint64_t a1)
{
  if (!qword_1EB95ADD0)
  {
    sub_1B697ED90(255, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    v1 = sub_1B6AB9720();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95ADD0);
    }
  }
}

void sub_1B69E1100(uint64_t a1)
{
  if (!qword_1EB95ADD8)
  {
    sub_1B69E1254(255, &qword_1EB95ADE0, sub_1B69E1184);
    v1 = sub_1B6AB9EA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95ADD8);
    }
  }
}

unint64_t sub_1B69E1184()
{
  result = qword_1EB95ADE8;
  if (!qword_1EB95ADE8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB95ADE8);
  }

  return result;
}

uint64_t sub_1B69E11D4(uint64_t a1, uint64_t a2)
{
  sub_1B69E1254(0, &qword_1EB95ADF8, sub_1B697E288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B69E1254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1B6980954(255, &qword_1EB95ADF0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B69E1350(uint64_t a1)
{
  v2 = sub_1B6ABA330();
  v4 = v3;
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {

    sub_1B6993940(v2, v4);
    if (v5)
    {

      return;
    }
  }

  v27 = v2;
  v28 = v4;
  v29 = v1;
  v6 = [objc_msgSend(objc_allocWithZone(swift_getObjCClassFromMetadata()) init)];
  type metadata accessor for BridgedEventProperty();
  v7 = sub_1B6AB9210();

  v8 = 0;
  v10 = v7 + 64;
  v9 = *(v7 + 64);
  v30 = v7;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = (v11 + 63) >> 6;
  if ((v12 & v9) != 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v29 + 16);
      *(v29 + 16) = 0x8000000000000000;
      sub_1B69BDFBC(v14, v27, v28, isUniquelyReferenced_nonNull_native);

      *(v29 + 16) = v31;
      swift_endAccess();
      swift_unknownObjectRelease();
      return;
    }

    v13 = *(v10 + 8 * v16);
    ++v8;
    if (v13)
    {
      v8 = v16;
      do
      {
LABEL_12:
        v17 = __clz(__rbit64(v13)) | (v8 << 6);
        v18 = (*(v30 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v30 + 56) + 8 * v17);

        v22 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1B69BDE7C(0, *(v14 + 2) + 1, 1, v14);
        }

        v24 = *(v14 + 2);
        v23 = *(v14 + 3);
        if (v24 >= v23 >> 1)
        {
          v14 = sub_1B69BDE7C((v23 > 1), v24 + 1, 1, v14);
        }

        v13 &= v13 - 1;
        *(v14 + 2) = v24 + 1;
        v25 = &v14[56 * v24];
        *(v25 + 4) = v19;
        *(v25 + 5) = v20;
        *(v25 + 6) = v22;
        *(v25 + 56) = v32;
        *(v25 + 9) = &type metadata for BridgedEventMirrorProperty;
        *(v25 + 10) = &off_1F2E7AD28;
      }

      while (v13);
    }
  }

  __break(1u);
}

uint64_t sub_1B69E1654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B69979CC(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1B69A18C4(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CA0];
    v9 = MEMORY[0x1E69E6720];
    sub_1B69E8690(a1, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B69809A4);
    sub_1B69A3110(a2, a3, v11);

    return sub_1B69E8690(v11, &qword_1EDBCBAF0, v8 + 8, v9, sub_1B69809A4);
  }

  return result;
}

uint64_t sub_1B69E1764(uint64_t a1, uint64_t a2)
{
  sub_1B69E8EF8(0, &qword_1EB95AEE8, sub_1B69844CC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  sub_1B69844CC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1B69E8244(a1, &qword_1EB95AEE8, sub_1B69844CC);
    sub_1B6A96BB4(a2, v7);
    v13 = sub_1B6AB8E40();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1B69E8244(v7, &qword_1EB95AEE8, sub_1B69844CC);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1B69E7420(v12, a2, isUniquelyReferenced_nonNull_native, sub_1B69DEF70, sub_1B69DC158, sub_1B69844CC, sub_1B69844CC);
    v16 = sub_1B6AB8E40();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1B69E1A00(uint64_t a1, uint64_t a2)
{
  sub_1B69E8D9C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E8E20(0, &qword_1EDBC8E18, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1B69E8E9C(a1);
    sub_1B6A96BFC(a2, v7);
    v13 = sub_1B6AB8E40();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1B69E8E9C(v7);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1B69E71F0(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_1B6AB8E40();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1B69E1C2C(uint64_t a1, uint64_t a2)
{
  sub_1B69E8EF8(0, &qword_1EB95AF20, sub_1B6984CE4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  sub_1B6984CE4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1B69E8244(a1, &qword_1EB95AF20, sub_1B6984CE4);
    sub_1B6A96E48(a2, v7);
    v13 = sub_1B6AB8E40();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1B69E8244(v7, &qword_1EB95AF20, sub_1B6984CE4);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1B69E7420(v12, a2, isUniquelyReferenced_nonNull_native, sub_1B69DEFD8, sub_1B69DC1C0, sub_1B6984CE4, sub_1B6984CE4);
    v16 = sub_1B6AB8E40();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1B69E1EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B6980E70(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1B699A5C4(v9, a2, a3, isUniquelyReferenced_nonNull_native, sub_1B69DF368, sub_1B69DC69C, sub_1B699A784, sub_1B699A784);

    *v3 = v8;
  }

  else
  {
    sub_1B69E8690(a1, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType, sub_1B6994418);
    sub_1B6A96E90(a2, a3, v9);

    return sub_1B69E8690(v9, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType, sub_1B6994418);
  }

  return result;
}

uint64_t sub_1B69E200C(uint64_t a1, uint64_t a2)
{
  sub_1B69E8EF8(0, &qword_1EB95AE30, type metadata accessor for Tracker.DelayedEvent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Tracker.DelayedEvent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1B69E8244(a1, &qword_1EB95AE30, type metadata accessor for Tracker.DelayedEvent);
    sub_1B6A97110(a2, v7);
    v12 = sub_1B6AB8E40();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1B69E8244(v7, &qword_1EB95AE30, type metadata accessor for Tracker.DelayedEvent);
  }

  else
  {
    sub_1B69E86F0(a1, v10, type metadata accessor for Tracker.DelayedEvent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1B69E764C(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1B6AB8E40();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1B69E225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1B69E784C(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1B69DFAF4, sub_1B69DCB7C);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1B6993940(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1B69DFAF4();
        v14 = v16;
      }

      result = sub_1B69AD900(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1B69E237C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1B69E8EF8(0, &qword_1EB95AE78, type metadata accessor for UserIDComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for UserIDComponents(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1B69E8244(a1, &qword_1EB95AE78, type metadata accessor for UserIDComponents);
    sub_1B6A972AC(a2, a3, v9);
    sub_1B69C2E8C(a2, a3);
    return sub_1B69E8244(v9, &qword_1EB95AE78, type metadata accessor for UserIDComponents);
  }

  else
  {
    sub_1B69E86F0(a1, v12, type metadata accessor for UserIDComponents);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1B69E7B84(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1B69C2E8C(a2, a3);
    *v3 = v17;
  }

  return result;
}

id NSNull.toJsonValue()@<X0>(void *a1@<X8>)
{
  a1[3] = sub_1B6986438(0, &qword_1EDBC8048, 0x1E695DFB0);
  *a1 = v1;
  return v1;
}

id NSString.toJsonValue()@<X0>(void *a1@<X8>)
{
  a1[3] = sub_1B6986438(0, &qword_1EDBC8038, 0x1E696AEC0);
  *a1 = v1;
  return v1;
}

id NSNumber.toJsonValue()@<X0>(void *a1@<X8>)
{
  a1[3] = sub_1B6986438(0, &qword_1EDBC8040, 0x1E696AD98);
  *a1 = v1;
  return v1;
}

id NSDate.toJsonValue()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  result = [v2 timeIntervalSince1970];
  v6 = v5 * 1000.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 9.22337204e18)
  {
    a1[3] = MEMORY[0x1E69E7360];
    *a1 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1B69E270C(void *a1)
{
  result = [a1 timeIntervalSince1970];
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = sub_1B6ABA170();

  return v4;
}

void NSArray.toJsonValue()(uint64_t *a1@<X8>)
{
  v3 = v2;
  v25 = a1;
  v4 = sub_1B6AB8A90();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 count];
  *&v27[0] = MEMORY[0x1E69E7CC0];
  sub_1B69E4C8C(0, v7 & ~(v7 >> 63), 0);
  v8 = *&v27[0];
  sub_1B6AB9AE0();
  if (v7 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if (v7)
  {
    sub_1B69E831C(&qword_1EDBCAF58, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
    do
    {
      sub_1B6AB9B80();
      if (!*(&v29 + 1))
      {
        goto LABEL_31;
      }

      sub_1B69E2C7C(&v28, &v32);
      if (v3)
      {
        (*(v26 + 8))(v6, v4);

        __swift_destroy_boxed_opaque_existential_1(&v28);
        return;
      }

      v3 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v28);
      *&v27[0] = v8;
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1B69E4C8C((v9 > 1), v10 + 1, 1);
        v8 = *&v27[0];
      }

      *(v8 + 16) = v10 + 1;
      v11 = v8 + 32 * v10;
      v12 = v31;
      *(v11 + 32) = v30;
      *(v11 + 48) = v12;
    }

    while (--v7);
  }

  sub_1B69E831C(&qword_1EDBCAF58, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  while (1)
  {
    sub_1B6AB9B80();
    if (!*(&v29 + 1))
    {
      break;
    }

    sub_1B69979CC(&v28, &v30);
    sub_1B69E2C7C(&v30, &v32);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1(&v30);
      (*(v26 + 8))(v6, v4);

      return;
    }

    v3 = 0;
    __swift_destroy_boxed_opaque_existential_1(&v30);
    *&v27[0] = v8;
    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1B69E4C8C((v13 > 1), v14 + 1, 1);
      v8 = *&v27[0];
    }

    *(v8 + 16) = v14 + 1;
    v15 = v8 + 32 * v14;
    v16 = v29;
    *(v15 + 32) = v28;
    *(v15 + 48) = v16;
  }

  (*(v26 + 8))(v6, v4);
  v17 = MEMORY[0x1E69E7CA0];
  sub_1B69E8690(&v28, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B69809A4);
  v18 = *(v8 + 16);
  if (v18)
  {
    v19 = v8 + 32;
    v20 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B69C1678(v19, &v30);
      v27[0] = v30;
      v27[1] = v31;
      if (*(&v31 + 1))
      {
        sub_1B69979CC(v27, &v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1B69E37EC(0, *(v20 + 2) + 1, 1, v20);
        }

        v22 = *(v20 + 2);
        v21 = *(v20 + 3);
        if (v22 >= v21 >> 1)
        {
          v20 = sub_1B69E37EC((v21 > 1), v22 + 1, 1, v20);
        }

        *(v20 + 2) = v22 + 1;
        sub_1B69979CC(&v28, &v20[32 * v22 + 32]);
      }

      else
      {
        sub_1B69E8690(v27, &qword_1EDBCBAF0, v17 + 8, MEMORY[0x1E69E6720], sub_1B69809A4);
      }

      v19 += 32;
      --v18;
    }

    while (v18);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  sub_1B69809A4(0, &qword_1EDBC96D8, v17 + 8, MEMORY[0x1E69E62F8]);
  v23 = v25;
  v25[3] = v24;
  *v23 = v20;
}

void sub_1B69E2C7C(uint64_t a1, uint64_t *a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
  sub_1B698FE74(a1, v15);
  sub_1B69E6A48(0, &qword_1EDBC9868, &protocolRef_AADataEventType);
  if (swift_dynamicCast())
  {
    v5 = [v14 toDict];
    v15[0] = 0;
    v6 = [v5 toJsonValueAndReturnError_];
    v7 = v15[0];
    if (v6)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();

LABEL_7:
      swift_unknownObjectRelease();
      return;
    }

    v12 = v7;
    v10 = sub_1B6AB8A70();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B698FE74(a1, v15);
    sub_1B69E6A48(0, qword_1EDBCA298, &protocolRef_AADataType);
    if (swift_dynamicCast())
    {
      v15[0] = 0;
      v8 = [v14 toJsonValueAndReturnError_];
      v9 = v15[0];
      if (v8)
      {
        sub_1B6AB9BC0();
        swift_unknownObjectRelease();
        goto LABEL_7;
      }

      v13 = v9;
      v10 = sub_1B6AB8A70();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B69E69F4();
      v10 = swift_allocError();
      *v11 = 3;
      swift_willThrow();
    }
  }

  *a2 = v10;
}

void NSDictionary.toJsonValue()()
{
  sub_1B6AB9200();
  sub_1B69E69F4();
  swift_allocError();
  *v1 = 4;
  swift_willThrow();
}

id sub_1B69E35E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(v8);

  return v6;
}

char *sub_1B69E36B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69E8EF8(0, &qword_1EB95AE68, sub_1B69E83F8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B69E37EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBC96B0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E3960(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B69809A4(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1B69E3A64(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1B69E8EF8(0, &qword_1EB95AEF0, sub_1B69E8C14, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[21 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 168 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E8C14(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E3BD0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1B69E8EF8(0, &qword_1EB95AEC0, sub_1B69E8A88, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E8A88(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E3D8C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B69E8EF8(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B697E288();
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1B69E3EC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBC96C8, &type metadata for TrackerError.MissingData, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E4030(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  if (v13)
  {
    sub_1B69E8EF8(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 < a4 || v14 + 4 >= &a4[v12 + 4])
    {
      a7(0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      a7(0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1B69E41B4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1B69E896C(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E8CE0(0, &qword_1EDBC82F8, sub_1B69E85A4, &type metadata for BridgedDataEvent, type metadata accessor for DataEventStack.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E4350(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EB95AEA8, &type metadata for TrackerWillSubmitObserver, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E4488(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EB95AE58, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E45C0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1B69E8758(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E87CC(0, &qword_1EB95AE88, type metadata accessor for SnapshotLevel);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E46F8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1B69E8EF8(0, &qword_1EB95AE90, sub_1B69E8850, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E8850(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E4844(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1B69E87CC(0, &qword_1EB95AE60, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69809A4(0, &qword_1EB95ADB8, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E49A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EB95AE50, &type metadata for SnapshotEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E4AE0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1B69E8EF8(0, &unk_1EDBC8000, sub_1B69E84D8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E84D8(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E4C4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B69E4DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B69E4C6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B69E4EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B69E4C8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B69E5034(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B69E4CAC(void *a1, int64_t a2, char a3)
{
  result = sub_1B699D33C(a1, a2, a3, *v3, &qword_1EDBC8950, type metadata accessor for BatchRepair, type metadata accessor for BatchRepair);
  *v3 = result;
  return result;
}

void *sub_1B69E4CFC(void *a1, int64_t a2, char a3)
{
  result = sub_1B699D33C(a1, a2, a3, *v3, &qword_1EDBCB620, type metadata accessor for SequenceEntry, type metadata accessor for SequenceEntry);
  *v3 = result;
  return result;
}

char *sub_1B69E4D4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B69E51A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B69E4D6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B69E52E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B69E4D8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B69E5418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B69E4DAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B69E5550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B69E4DCC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1B698E6B4(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E8910(0, &qword_1EDBCCDA8, &protocol descriptor for EventProcessorType, 0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E4EFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBC7FF8, &type metadata for DenylistDescriptor, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E5034(void *result, int64_t a2, char a3, void *a4)
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

  v10 = MEMORY[0x1E69E7CA0];
  if (v9)
  {
    sub_1B69E8E20(0, &qword_1EDBC9B60, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    v11[2] = v8;
    v11[3] = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v11 != a4 || v11 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v11 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69809A4(0, &qword_1EDBCBAF0, v10 + 8, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1B69E51A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBC8DD8, &type metadata for TrackerError.FoundData, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E52E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EB95AE48, &type metadata for SummaryEventDataItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E5418(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBC7FF0, &type metadata for Action.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E5550(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBC7FE8, &type metadata for Action, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B69E5684(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B6AB9C00() + 1) & ~v5;
    do
    {
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v10 = sub_1B6ABA230();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

uint64_t sub_1B69E5834(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v30 = a2 + 64;
    v28 = (sub_1B6AB9C00() + 1) & ~v5;
    do
    {
      v8 = 40 * v6;
      v9 = *(v2 + 48) + 40 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      sub_1B6ABA1F0();
      if (v14)
      {
        MEMORY[0x1B8C98A40](1);

        sub_1B6AB9380();
      }

      else
      {
        MEMORY[0x1B8C98A40](0);
      }

      sub_1B6AB9380();
      v15 = sub_1B6ABA230();
      result = sub_1B69B47D4(v10, v11, v12, v13, v14);
      v16 = v15 & v7;
      if (v3 >= v28)
      {
        v2 = a2;
        v4 = v30;
        if (v16 < v28)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = a2;
        v4 = v30;
        if (v16 >= v28)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v16)
      {
LABEL_13:
        v17 = *(v2 + 48);
        v18 = v17 + 40 * v3;
        v19 = (v17 + v8);
        if (40 * v3 < v8 || v18 >= v19 + 40 || v3 != v6)
        {
          v20 = *v19;
          v21 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v20;
          *(v18 + 16) = v21;
        }

        v22 = *(v2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_1B69E5A7C(int64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB9E10();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1B6AB9C00();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_1B6AB9250();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B69E5D30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B6AB9C00() + 1) & ~v5;
    do
    {
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v11 = sub_1B6ABA230();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

  return result;
}

unint64_t sub_1B69E5F04(int64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8E40();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1B6AB9C00();
    v14 = v12;
    v40 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = a2 + 64;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1B69E831C(&qword_1EDBC95A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_1B6AB9250();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          sub_1B69E8E20(0, &qword_1EDBC8E18, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
          v28 = *(*(v27 - 8) + 72);
          v29 = v28 * a1;
          result = v26 + v28 * a1;
          v30 = v28 * v11;
          v31 = v26 + v28 * v11 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v21;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v29 == v30;
            v15 = v21;
            v14 = v20;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v38;
      v17 = v18;
    }

    while (((*(v38 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B69E6274(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B6AB9C00() + 1) & ~v5;
    while (1)
    {
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v9 = sub_1B6ABA230();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Tracker.Timer(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B69E6478(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_1B6AB8E40();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_1B6AB9C00();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_1B69E831C(&qword_1EDBC95A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_1B6AB9250();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B69E67C8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B6AB9C00() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_1B6ABA1F0();
      if (!v11)
      {
        v12 = 0;
        goto LABEL_12;
      }

      if (v11 == 1)
      {
        break;
      }

      if (v11 == 2)
      {
        v12 = 2;
LABEL_12:
        MEMORY[0x1B8C98A40](v12);
        goto LABEL_14;
      }

      MEMORY[0x1B8C98A40](3);

      sub_1B6AB9380();
LABEL_14:
      v13 = sub_1B6ABA230();
      result = sub_1B69C2E8C(v10, v11);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_5;
        }

LABEL_18:
        if (v3 < v14)
        {
          goto LABEL_5;
        }

        goto LABEL_19;
      }

      if (v14 < v8)
      {
        goto LABEL_18;
      }

LABEL_19:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for UserIDComponents(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v12 = 1;
    goto LABEL_12;
  }

LABEL_28:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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

  return result;
}

unint64_t sub_1B69E69F4()
{
  result = qword_1EB95AE20;
  if (!qword_1EB95AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AE20);
  }

  return result;
}

uint64_t sub_1B69E6A48(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B69E6AA8(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B69B3B58(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B69DACB8(v16, a4 & 1);
      v11 = sub_1B69B3B58(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B69DE144();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = v21[6] + 40 * v11;
    v25 = *a3;
    v26 = *(a3 + 1);
    *(v24 + 32) = *(a3 + 32);
    *v24 = v25;
    *(v24 + 16) = v26;
    v27 = (v21[7] + 16 * v11);
    *v27 = a1;
    v27[1] = a2;
    v28 = v21[2];
    v15 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v15)
    {
      v21[2] = v29;
      return sub_1B69E0EFC(a3, v30);
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

id sub_1B69E6C34(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B69DA770(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1B69DB000(v13, a3 & 1);
      v8 = sub_1B69DA770(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for CFString(0);
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1B69DE2F4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 32 * v8;

    return sub_1B69E81B8(a1, v19);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  v21 = (v18[7] + 32 * v8);
  v22 = a1[1];
  *v21 = *a1;
  v21[1] = v22;
  v23 = v18[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v24;

  return a2;
}

_OWORD *sub_1B69E6DA4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B69DA770(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1B69DE468();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1B69DB2D8(v13, a3 & 1);
    v8 = sub_1B69DA770(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1B6ABA190();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1B69979CC(a1, v19);
  }

  else
  {
    sub_1B69E7CF4(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1B69E6EE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6993940(a2, a3);
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
      sub_1B69DB8E0(v16, a4 & 1);
      v11 = sub_1B6993940(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1B6ABA190();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1B69DEA70();
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

void sub_1B69E7060(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6993940(a2, a3);
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
      sub_1B69DBB9C(v16, a4 & 1);
      v11 = sub_1B6993940(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1B6ABA190();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1B69DEBF4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_1B69E8F5C(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

uint64_t sub_1B69E71F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B69DA8D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1B69DEFA4();
      goto LABEL_7;
    }

    sub_1B69DC18C(v17, a3 & 1);
    v28 = sub_1B69DA8D8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1B69E7DB8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  sub_1B69E8E20(0, &qword_1EDBC8E18, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1B69E7420(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v8 = v7;
  v12 = sub_1B6AB8E40();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1B69DA8D8(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v34();
      goto LABEL_7;
    }

    v35();
    v32 = sub_1B69DA8D8(a2);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return sub_1B69E7ED8(v18, v15, a1, v24, v37);
    }

LABEL_15:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = v24[7];
  v26 = v36(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 40);
  v29 = v26;
  v30 = v25 + *(v27 + 72) * v18;

  return v28(v30, a1, v29);
}

uint64_t sub_1B69E764C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B69DA8D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for Tracker.DelayedEvent(0);
      return sub_1B69E82B4(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for Tracker.DelayedEvent);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1B69DF7C0();
    goto LABEL_7;
  }

  sub_1B69DC6CC(v17, a3 & 1);
  v24 = sub_1B69DA8D8(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1B69E7FD4(v14, v11, a1, v20);
}

void sub_1B69E784C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1B6993940(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1B6993940(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1B6ABA190();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1B69E79E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1B6993940(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1B69DCE54(v22, a7 & 1);
      v17 = sub_1B6993940(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        sub_1B6ABA190();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      sub_1B69DFF9C();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v29 = (v27[6] + 16 * v17);
  *v29 = a5;
  v29[1] = a6;
  v30 = (v27[7] + 32 * v17);
  *v30 = a1;
  v30[1] = a2;
  v30[2] = a3;
  v30[3] = a4;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v32;
}

uint64_t sub_1B69E7B84(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B69DA824(a2, a3);
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
      v20 = type metadata accessor for UserIDComponents(0);
      return sub_1B69E82B4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for UserIDComponents);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1B69E0138();
    goto LABEL_7;
  }

  sub_1B69DD134(v15, a4 & 1);
  v22 = sub_1B69DA824(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1B6ABA190();
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
  sub_1B69E810C(v12, a2, a3, a1, v18);

  return sub_1B6992E2C(a2, a3);
}

_OWORD *sub_1B69E7CF4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B69979CC(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1B69E7D5C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
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

uint64_t sub_1B69E7DB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B6AB8E40();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  sub_1B69E8E20(0, &qword_1EDBC8E18, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
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

uint64_t sub_1B69E7ED8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_1B6AB8E40();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = a5(0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_1B69E7FD4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B6AB8E40();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Tracker.DelayedEvent(0);
  result = sub_1B69E86F0(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for Tracker.DelayedEvent);
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

unint64_t sub_1B69E80C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1B69E810C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UserIDComponents(0);
  result = sub_1B69E86F0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for UserIDComponents);
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

uint64_t sub_1B69E81B8(uint64_t a1, uint64_t a2)
{
  sub_1B69809A4(0, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69E8244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B69E8EF8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69E82B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69E831C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B69E8364(uint64_t a1)
{
  if (!qword_1EB95AE40)
  {
    v2 = type metadata accessor for SummaryEventData(255);
    v3 = sub_1B69E831C(&qword_1EDBC91F8, type metadata accessor for SummaryEventData, &unk_1B6AC5B94);
    v5 = type metadata accessor for DataEventStack.Entry(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB95AE40);
    }
  }
}

void sub_1B69E83F8(uint64_t a1)
{
  if (!qword_1EB95AE70)
  {
    sub_1B69E8910(255, &qword_1EDBCBB00, MEMORY[0x1E69E7280], 1);
    v1 = sub_1B6AB9740();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95AE70);
    }
  }
}

unint64_t sub_1B69E8478()
{
  result = qword_1EDBC7B58;
  if (!qword_1EDBC7B58)
  {
    type metadata accessor for ViewingSession();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EDBC7B58);
  }

  return result;
}

void sub_1B69E84D8(uint64_t a1)
{
  if (!qword_1EDBC82F0)
  {
    sub_1B69E8CE0(255, &qword_1EDBC9970, sub_1B69E85A4, &type metadata for BridgedDataEvent, type metadata accessor for SessionData);
    v3 = v2;
    v4 = sub_1B69E85F8(qword_1EDBC9978, &qword_1EDBC9970, sub_1B69E85A4, &type metadata for BridgedDataEvent);
    v6 = type metadata accessor for DataEventStack.Entry(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDBC82F0);
    }
  }
}

unint64_t sub_1B69E85A4()
{
  result = qword_1EDBC98B8;
  if (!qword_1EDBC98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC98B8);
  }

  return result;
}

uint64_t sub_1B69E85F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B69E8CE0(255, a2, a3, a4, type metadata accessor for SessionData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B69E8690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B69E86F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B69E8758(uint64_t a1)
{
  if (!qword_1EB95AE80)
  {
    sub_1B69E87CC(255, &qword_1EB95AE88, type metadata accessor for SnapshotLevel);
    v1 = sub_1B6ABA090();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95AE80);
    }
  }
}

void sub_1B69E87CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B69809A4(255, &qword_1EB95ADB8, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B69E8884(uint64_t a1)
{
  if (!qword_1EB95AEA0)
  {
    sub_1B69809A4(255, &qword_1EB95ADB8, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E62F8]);
    v1 = sub_1B6AB9240();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95AEA0);
    }
  }
}

uint64_t sub_1B69E8910(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1B69E896C(uint64_t a1)
{
  if (!qword_1EDBC8948)
  {
    sub_1B69E8CE0(255, &qword_1EDBC82F8, sub_1B69E85A4, &type metadata for BridgedDataEvent, type metadata accessor for DataEventStack.Entry);
    v1 = sub_1B6ABA090();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC8948);
    }
  }
}

unint64_t sub_1B69E89FC()
{
  result = qword_1EDBC8DC8;
  if (!qword_1EDBC8DC8)
  {
    type metadata accessor for AccessSessionManager();
    type metadata accessor for AccessTracker();
    type metadata accessor for AnalyticsActor();
    result = swift_getFunctionTypeMetadataGlobalActor();
    atomic_store(result, &qword_1EDBC8DC8);
  }

  return result;
}

void sub_1B69E8A88(uint64_t a1)
{
  if (!qword_1EB95AEC8)
  {
    sub_1B69E8CE0(255, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData, type metadata accessor for SessionData);
    v3 = v2;
    v4 = sub_1B69E85F8(&qword_1EB95AEE0, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData);
    v6 = type metadata accessor for DataEventStack.Entry(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB95AEC8);
    }
  }
}

unint64_t sub_1B69E8B54()
{
  result = qword_1EB95AED8;
  if (!qword_1EB95AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AED8);
  }

  return result;
}

void sub_1B69E8BA8(uint64_t a1)
{
  if (!qword_1EDBC8E50)
  {
    type metadata accessor for UserIDComponents(255);
    sub_1B69811C4();
    v1 = sub_1B6AB9240();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC8E50);
    }
  }
}

void sub_1B69E8C14(uint64_t a1)
{
  if (!qword_1EB95AEF8)
  {
    sub_1B69E8CE0(255, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData, type metadata accessor for SessionData);
    v3 = v2;
    v4 = sub_1B69E85F8(&qword_1EB95AF10, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData);
    v6 = type metadata accessor for DataEventStack.Entry(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB95AEF8);
    }
  }
}

void sub_1B69E8CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1B69E8D48()
{
  result = qword_1EB95AF08;
  if (!qword_1EB95AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AF08);
  }

  return result;
}

void sub_1B69E8D9C(uint64_t a1)
{
  if (!qword_1EB95AF18)
  {
    sub_1B69E8E20(255, &qword_1EDBC8E18, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95AF18);
    }
  }
}

void sub_1B69E8E20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B69809A4(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B69E8E9C(uint64_t a1)
{
  sub_1B69E8D9C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B69E8EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t LegacyStoredUserIDComponents.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B6AB8E40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for LegacyStoredUserIDComponents(uint64_t a1)
{
  result = qword_1EB95AF28;
  if (!qword_1EB95AF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyStoredUserIDComponents.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LegacyStoredUserIDComponents(0) + 24);
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LegacyStoredUserIDComponents.lastRotation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LegacyStoredUserIDComponents(0) + 28);
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LegacyStoredUserIDComponents.init(id:rotationPeriod:startDate:lastRotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B6AB8E40();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for LegacyStoredUserIDComponents(0);
  *(a5 + v11[5]) = a2;
  v12 = v11[6];
  v13 = sub_1B6AB8DB0();
  v16 = *(*(v13 - 8) + 32);
  (v16)((v13 - 8), a5 + v12, a3, v13);
  v14 = a5 + v11[7];

  return v16(v14, a4, v13);
}

uint64_t sub_1B69E92D0(uint64_t a1)
{
  result = sub_1B6AB8E40();
  if (v2 <= 0x3F)
  {
    result = sub_1B6AB8DB0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B69E935C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a2;
  v111 = a3;
  v4 = sub_1B6AB8EE0();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v98 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E9DA8(0, &qword_1EB95AF38, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v107 = &v84 - v7;
  v8 = sub_1B6AB8F20();
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB8E50();
  v102 = *(v10 - 8);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB8F00();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E9DA8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v84 - v15;
  v110 = sub_1B6AB8DB0();
  v17 = *(v110 - 8);
  v18 = MEMORY[0x1EEE9AC00](v110);
  v97 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v84 - v20;
  v21 = sub_1B6AB8E40();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v84 - v29;
  v31 = type metadata accessor for RotationMode(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E9DFC(a1, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v110;
    (*(v17 + 8))(v109, v110);
    sub_1B698114C(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 64);
    v38 = v111;
    (*(v22 + 32))(v111, v33, v21);
    v39 = type metadata accessor for LegacyStoredUserIDComponents(0);
    v40 = *(v17 + 32);
    v40(v38 + v39[6], &v33[v36], v34);
    v40(v38 + v39[7], &v33[v37], v34);
LABEL_12:
    v83 = *(a1 + *(type metadata accessor for StoredUserIDComponents(0) + 20));
    sub_1B69E9E60(a1);
    result = type metadata accessor for LegacyStoredUserIDComponents(0);
    *(v111 + v39[5]) = v83;
    return result;
  }

  v91 = v16;
  sub_1B698103C(0);
  v42 = v41[12];
  v43 = *&v33[v41[16]];
  v93 = *&v33[v41[20]];
  (*(v22 + 32))(v30, v33, v21);
  v44 = *(v17 + 32);
  v90 = v17 + 32;
  v88 = v44;
  v44(v108, &v33[v42], v110);
  v45 = *(v22 + 16);
  v89 = v30;
  v45(v28, v30, v21);
  v46 = *(type metadata accessor for StoredUserIDComponents(0) + 20);
  v92 = a1;
  v47 = *(a1 + v46);
  v45(v25, v28, v21);
  v112 = v43;
  v113 = sub_1B6ABA080();
  v114 = v48;
  MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
  v112 = v93;
  v49 = sub_1B6ABA080();
  MEMORY[0x1B8C97BE0](v49);

  MEMORY[0x1B8C97BE0](59, 0xE100000000000000);
  v112 = v47;
  v50 = v111;
  v51 = sub_1B6ABA080();
  MEMORY[0x1B8C97BE0](v51);

  v52 = sub_1B699F46C(v113, v114);
  sub_1B6A7C174(v25, v52, v53, v50);
  v56 = *(v22 + 8);
  v54 = v22 + 8;
  v55 = v56;
  v56(v28, v21);
  v39 = type metadata accessor for LegacyStoredUserIDComponents(0);
  v57 = v39[6];
  v93 = v17;
  v58 = v108;
  (*(v17 + 16))(v50 + v57, v108, v110);
  result = sub_1B69FAD2C(v109);
  if (!v47)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result == 0x8000000000000000 && v47 == -1)
  {
    goto LABEL_14;
  }

  v85 = v55;
  v86 = v47;
  v84 = v54;
  v60 = v58;
  v87 = v21;
  v62 = v101;
  v61 = v102;
  v63 = v103;
  (*(v102 + 104))(v101, *MEMORY[0x1E6969868], v103);
  v64 = v104;
  sub_1B6AB8E60();
  (*(v61 + 8))(v62, v63);
  v65 = v107;
  sub_1B6AB8F10();
  v67 = v105;
  v66 = v106;
  result = (*(v105 + 48))(v65, 1, v106);
  if (result != 1)
  {
    (*(v67 + 32))(v94, v65, v66);
    sub_1B6AB8ED0();
    v69 = v98;
    v68 = v99;
    v70 = v100;
    (*(v99 + 104))(v98, *MEMORY[0x1E6969A78], v100);
    v71 = v91;
    v72 = v109;
    sub_1B6AB8EB0();
    v73 = v69;
    v74 = v71;
    (*(v68 + 8))(v73, v70);
    (*(v95 + 8))(v64, v96);
    v75 = v93;
    v76 = *(v93 + 8);
    v77 = v110;
    v76(v60, v110);
    v85(v89, v87);
    v78 = *(v75 + 48);
    if (v78(v74, 1, v77) == 1)
    {
      v79 = v97;
      v80 = v72;
      v81 = v88;
      v88(v97, v80, v77);
      v82 = v78(v74, 1, v77);
      a1 = v92;
      if (v82 != 1)
      {
        sub_1B69E9EBC(v74);
      }
    }

    else
    {
      v76(v72, v77);
      v79 = v97;
      v81 = v88;
      v88(v97, v74, v77);
      a1 = v92;
    }

    v81(v111 + v39[7], v79, v77);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1B69E9DA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B6AB9B30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B69E9DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RotationMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69E9E60(uint64_t a1)
{
  v2 = type metadata accessor for StoredUserIDComponents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69E9EBC(uint64_t a1)
{
  sub_1B69E9DA8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69E9F34()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

uint64_t sub_1B69E9F7C()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

void sub_1B69E9FC0(_BYTE *a2@<X8>)
{
  v3 = sub_1B6AB8F80();
  v4 = sub_1B6AB98E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B697C000, v3, v4, "Attempting to use DiagnosticsConsentProvider during repair, but it wasn't provided. See rdar://137756327", v5, 2u);
    MEMORY[0x1B8C99550](v5, -1, -1);
  }

  *a2 = 1;
}

void sub_1B69EA060(uint64_t a1, uint64_t *a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = *(type metadata accessor for BatchRepair(0) - 8);
    v12 = (a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
    v13 = *(v11 + 72);
    while (1)
    {
      v14 = MEMORY[0x1B8C98C40]();
      sub_1B69EA154(a2, v12, a3, a4);
      if (v5)
      {
        break;
      }

      v5 = 0;
      objc_autoreleasePoolPop(v14);
      v12 = (v12 + v13);
      if (!--v6)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v14);
    __break(1u);
  }
}

void sub_1B69EA154(uint64_t *a1, uint64_t *a2, void (*a3)(void *), uint64_t a4)
{
  v144 = a3;
  v143 = a4;
  sub_1B69882EC(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v141 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v142 = &v121 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v152 = &v121 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v140 = &v121 - v13;
  v14 = type metadata accessor for Batch(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = type metadata accessor for BatchRepair(0);
  v17 = MEMORY[0x1EEE9AC00](v121);
  v126 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v125 = &v121 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v124 = &v121 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v121 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v121 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v121 - v29;
  v31 = OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger;
  sub_1B699A2C4(a2, &v121 - v29, type metadata accessor for BatchRepair);
  sub_1B699A2C4(a2, v28, type metadata accessor for BatchRepair);
  sub_1B699A2C4(a2, v25, type metadata accessor for BatchRepair);
  v151 = a1;
  v123 = v31;
  v32 = sub_1B6AB8F80();
  v33 = sub_1B6AB9900();
  v34 = os_log_type_enabled(v32, v33);
  v153 = v14;
  if (v34)
  {
    v35 = swift_slowAlloc();
    LODWORD(v149) = v33;
    v36 = v35;
    v150 = swift_slowAlloc();
    v160 = v150;
    *v36 = 136446722;
    v148 = v32;
    v38 = *(v30 + 2);
    v37 = *(v30 + 3);

    sub_1B69EC4A4(v30, type metadata accessor for BatchRepair);
    v39 = sub_1B698F63C(v38, v37, &v160);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2082;
    v40 = ContentType.description.getter(*(v28 + 6));
    v42 = v41;
    sub_1B69EC4A4(v28, type metadata accessor for BatchRepair);
    v43 = sub_1B698F63C(v40, v42, &v160);

    *(v36 + 14) = v43;
    *(v36 + 22) = 2082;
    v14 = v153;
    v44 = *(v25 + 8);
    v154 = *(v25 + 7);
    v155 = v44;
    sub_1B69825F8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

    v45 = sub_1B6AB9330();
    v47 = v46;
    sub_1B69EC4A4(v25, type metadata accessor for BatchRepair);
    v48 = sub_1B698F63C(v45, v47, &v160);

    *(v36 + 24) = v48;
    v49 = v148;
    _os_log_impl(&dword_1B697C000, v148, v149, "Attempting to repair batch, identifier=%{public}s, contentType=%{public}s, groupName=%{public}s)", v36, 0x20u);
    v50 = v150;
    swift_arrayDestroy();
    MEMORY[0x1B8C99550](v50, -1, -1);
    MEMORY[0x1B8C99550](v36, -1, -1);
  }

  else
  {

    sub_1B69EC4A4(v25, type metadata accessor for BatchRepair);
    sub_1B69EC4A4(v28, type metadata accessor for BatchRepair);
    sub_1B69EC4A4(v30, type metadata accessor for BatchRepair);
  }

  v51 = v151[2];
  v52 = v51[13];
  v53 = v51[14];
  __swift_project_boxed_opaque_existential_1(v51 + 10, v52);
  v139 = (*(v53 + 8))(v52, v53);
  v54 = v51[13];
  v55 = v51[14];
  __swift_project_boxed_opaque_existential_1(v51 + 10, v54);
  (*(v55 + 16))(&v154, v54, v55);
  v57 = v154;
  v56 = v155;
  v148 = v157;
  v149 = v156;
  v146 = v159;
  v147 = v158;
  v58 = sub_1B6AB8DB0();
  v59 = *(v58 - 8);
  v60 = v140;
  v122 = *(v59 + 56);
  v122(v140, 1, 1, v58);
  v61 = a2[5];
  v137 = a2[4];
  v136 = v61;
  v62 = a2[7];
  v135 = a2[6];
  v134 = v62;
  v133 = a2[8];
  sub_1B6994EC0(a2 + v14[10], v152, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v63 = (a2 + v14[11]);
  v65 = *v63;
  v64 = v63[1];
  v132 = v65;
  v131 = v64;
  v66 = a2[1];
  v130 = *a2;
  v129 = v66;
  v67 = a2[3];
  v128 = a2[2];
  v127 = v67;
  v150 = v56;
  if (v56 == 2)
  {
    v68 = (a2 + v14[13]);
    v69 = v68[1];
    v70 = v68[2];
    v71 = v68[3];
    v72 = v68[4];
    v73 = v68[5];
    v138 = *v68;
    v149 = v70;
    v150 = v69;
    v147 = v72;
    v148 = v71;
    v146 = v73;
    sub_1B69EC458(v138, v69, v70, v71, v72, v73);
  }

  else
  {
    v138 = v57;
  }

  v74 = v60;
  v75 = v141;
  sub_1B69B3830(v74, v141);
  v76 = *(v59 + 48);
  v77 = v76(v75, 1, v58);
  v78 = v136;
  if (v77 == 1)
  {
    v79 = v142;
    sub_1B6994EC0(a2 + *(v153 + 56), v142, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
    LODWORD(v140) = v76(v75, 1, v58);
    v80 = v133;

    v81 = v131;

    v82 = v130;

    v83 = v129;

    v84 = v127;

    v85 = v75;
    v86 = v84;
    if (v140 != 1)
    {
      sub_1B69ADAB0(v85, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    v87 = v142;
    (*(v59 + 32))(v142, v75, v58);
    v79 = v87;
    v122(v87, 0, 1, v58);
    v80 = v133;

    v81 = v131;

    v82 = v130;

    v83 = v129;

    v86 = v127;
  }

  v16[4] = v137;
  v16[5] = v78;
  v88 = v134;
  v16[6] = v135;
  v16[7] = v88;
  v16[8] = v80;
  v89 = v153;
  sub_1B69B3830(v152, v16 + *(v153 + 40));
  v90 = (v16 + v89[11]);
  *v90 = v132;
  v90[1] = v81;
  *v16 = v82;
  v16[1] = v83;
  v16[2] = v128;
  v16[3] = v86;
  *(v16 + v89[12]) = v139 & 1;
  v91 = (v16 + v89[13]);
  v92 = v149;
  v93 = v150;
  *v91 = v138;
  v91[1] = v93;
  v91[2] = v92;
  v94 = v147;
  v91[3] = v148;
  v91[4] = v94;
  v91[5] = v146;
  sub_1B69B3830(v79, v16 + v89[14]);
  v95 = v145;
  v144(v16);
  if (v95)
  {
    sub_1B69EC4A4(v16, type metadata accessor for Batch);
    v96 = v124;
    sub_1B699A2C4(a2, v124, type metadata accessor for BatchRepair);
    v97 = v125;
    sub_1B699A2C4(a2, v125, type metadata accessor for BatchRepair);
    v98 = v126;
    sub_1B699A2C4(a2, v126, type metadata accessor for BatchRepair);
    v99 = v95;
    v100 = sub_1B6AB8F80();
    v101 = sub_1B6AB98E0();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      LODWORD(v152) = v101;
      v103 = v97;
      v104 = v102;
      v151 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v160 = v153;
      *v104 = 136446978;
      v105 = *(v96 + 16);
      v106 = *(v96 + 24);

      sub_1B69EC4A4(v96, type metadata accessor for BatchRepair);
      v107 = sub_1B698F63C(v105, v106, &v160);

      *(v104 + 4) = v107;
      *(v104 + 12) = 2082;
      v108 = ContentType.description.getter(*(v103 + 48));
      v110 = v109;
      sub_1B69EC4A4(v103, type metadata accessor for BatchRepair);
      v111 = sub_1B698F63C(v108, v110, &v160);

      *(v104 + 14) = v111;
      *(v104 + 22) = 2082;
      v112 = *(v98 + 64);
      v154 = *(v98 + 56);
      v155 = v112;
      sub_1B69825F8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

      v113 = sub_1B6AB9330();
      v115 = v114;
      sub_1B69EC4A4(v98, type metadata accessor for BatchRepair);
      v116 = sub_1B698F63C(v113, v115, &v160);

      *(v104 + 24) = v116;
      *(v104 + 32) = 2114;
      v117 = v95;
      v118 = _swift_stdlib_bridgeErrorToNSError();
      *(v104 + 34) = v118;
      v119 = v151;
      *v151 = v118;
      _os_log_impl(&dword_1B697C000, v100, v152, "Failed to repair batch, identifier=%{public}s, contentType=%{public}s, groupName=%{public}s, error: %{public}@", v104, 0x2Au);
      sub_1B69EC4A4(v119, sub_1B69EC2D4);
      MEMORY[0x1B8C99550](v119, -1, -1);
      v120 = v153;
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v120, -1, -1);
      MEMORY[0x1B8C99550](v104, -1, -1);
    }

    else
    {

      sub_1B69EC4A4(v98, type metadata accessor for BatchRepair);
      sub_1B69EC4A4(v97, type metadata accessor for BatchRepair);
      sub_1B69EC4A4(v96, type metadata accessor for BatchRepair);
    }
  }

  else
  {
    (*(a2 + *(v121 + 20)))();

    sub_1B69EC4A4(v16, type metadata accessor for Batch);
  }
}

uint64_t sub_1B69EAE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *a5)
{
  v8 = sub_1B6AB8BB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB8F90();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = *(v13 + 16);
    v30 = v12;
    v17(v15, Strong + OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger, v12);

    (*(v9 + 16))(v11, a2, v8);
    v18 = sub_1B6AB8F80();
    v19 = sub_1B6AB9900();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28[1] = a5;
      v21 = v20;
      v28[0] = swift_slowAlloc();
      v31 = v28[0];
      *v21 = 136446210;
      v22 = sub_1B6AB8AC0();
      v29 = a4;
      v24 = v23;
      (*(v9 + 8))(v11, v8);
      v25 = sub_1B698F63C(v22, v24, &v31);
      a4 = v29;

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B697C000, v18, v19, "Flush manager finished flushing file, url=%{public}s", v21, 0xCu);
      v26 = v28[0];
      __swift_destroy_boxed_opaque_existential_1(v28[0]);
      MEMORY[0x1B8C99550](v26, -1, -1);
      MEMORY[0x1B8C99550](v21, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    Strong = (*(v13 + 8))(v15, v30);
  }

  return a4(Strong);
}

void sub_1B69EB118(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B6AB8BB0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v97 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v101 = &v94 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v94 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v103 = &v94 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v102 = &v94 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  *&v100 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v94 - v19;
  v110 = OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger;
  v20 = sub_1B6AB8F80();
  v21 = sub_1B6AB9900();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1B697C000, v20, v21, "Flush manager attempting clean up of flushed directories.", v22, 2u);
    MEMORY[0x1B8C99550](v22, -1, -1);
  }

  swift_beginAccess();
  v23 = v2[29];

  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v24 = *(v23 + 24);
  os_unfair_lock_unlock(*(*(v23 + 16) + 16));

  if (v24 == 2)
  {
    v25 = v2[21];
    v26 = v2[22];
    __swift_project_boxed_opaque_existential_1(v2 + 18, v25);
    v27 = v94;
    (*(v26 + 8))(v25, v26);
    v28 = sub_1B69939D0(v27);
    v112 = *(v5 + 8);
    v113 = v5 + 8;
    v112(v27, v4);
    v30 = *(v28 + 16);
    v108 = v2;
    v107 = a1;
    v114 = v4;
    v109 = v5;
    v95 = v12;
    v106 = v30;
    if (v30)
    {
      v31 = v5;
      v32 = 0;
      v104 = v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v111 = v31 + 16;
      v115 = a1 + 56;
      *&v29 = 136446210;
      v98 = v29;
      *&v29 = 136446466;
      v96 = v29;
      v33 = v100;
      v105 = v28;
      while (v32 < *(v28 + 16))
      {
        v34 = *(v109 + 16);
        v34(v33, v104 + *(v109 + 72) * v32, v4);
        v35 = sub_1B6AB8B10();
        v37 = v36;
        if (*(a1 + 16) && (v38 = v35, sub_1B6ABA1F0(), sub_1B6AB9380(), v39 = sub_1B6ABA230(), v40 = -1 << *(a1 + 32), v41 = v39 & ~v40, ((*(v115 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0))
        {
          v42 = ~v40;
          while (1)
          {
            v43 = (*(a1 + 48) + 16 * v41);
            v44 = *v43 == v38 && v43[1] == v37;
            if (v44 || (sub_1B6ABA0F0() & 1) != 0)
            {
              break;
            }

            v41 = (v41 + 1) & v42;
            if (((*(v115 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v4 = v114;
          v112(v33, v114);
        }

        else
        {
LABEL_17:

          v45 = v102;
          v4 = v114;
          v34(v102, v33, v114);
          v46 = sub_1B6AB8F80();
          v47 = sub_1B6AB9900();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = v45;
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v116[0] = v50;
            *v49 = v98;
            v51 = sub_1B6AB8AC0();
            v53 = v52;
            v112(v48, v114);
            v54 = v51;
            v33 = v100;
            v55 = sub_1B698F63C(v54, v53, v116);
            v4 = v114;

            *(v49 + 4) = v55;
            _os_log_impl(&dword_1B697C000, v46, v47, "Flush manager cleaning up directory, url=%{public}s", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v50);
            v56 = v50;
            v2 = v108;
            MEMORY[0x1B8C99550](v56, -1, -1);
            MEMORY[0x1B8C99550](v49, -1, -1);
          }

          else
          {

            v112(v45, v4);
          }

          v57 = v2[26];
          v58 = v2[27];
          __swift_project_boxed_opaque_existential_1(v2 + 23, v57);
          (*(v58 + 112))(v33, 1, v57, v58);
          v112(v33, v4);
          a1 = v107;
        }

        ++v32;
        v28 = v105;
        if (v32 == v106)
        {

          v5 = v109;
          v12 = v95;
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_27:
    if ((*(v2[7] + OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled) & 1) == 0)
    {
      v62 = v2[21];
      v63 = v2[22];
      __swift_project_boxed_opaque_existential_1(v2 + 18, v62);
      v64 = v94;
      (*(v63 + 16))(v62, v63);
      v65 = sub_1B69939D0(v64);
      v112(v64, v4);
      v67 = v65;
      v106 = *(v65 + 16);
      if (v106)
      {
        v68 = 0;
        v104 = v65 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v111 = v5 + 16;
        v69 = v107;
        v115 = v107 + 56;
        *&v66 = 136446210;
        v100 = v66;
        *&v66 = 136446466;
        v99 = v66;
        v70 = v103;
        v105 = v67;
        while (v68 < *(v67 + 16))
        {
          v71 = *(v5 + 16);
          v71(v70, v104 + *(v5 + 72) * v68, v4);
          v72 = sub_1B6AB8B10();
          v74 = v73;
          if (*(v69 + 16) && (v75 = v72, sub_1B6ABA1F0(), sub_1B6AB9380(), v76 = sub_1B6ABA230(), v77 = -1 << *(v69 + 32), v78 = v76 & ~v77, ((*(v115 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) != 0))
          {
            v79 = ~v77;
            while (1)
            {
              v80 = (*(v69 + 48) + 16 * v78);
              v81 = *v80 == v75 && v80[1] == v74;
              if (v81 || (sub_1B6ABA0F0() & 1) != 0)
              {
                break;
              }

              v78 = (v78 + 1) & v79;
              if (((*(v115 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v70 = v103;
            v4 = v114;
            v112(v103, v114);
          }

          else
          {
LABEL_41:

            v4 = v114;
            v71(v12, v103, v114);
            v82 = sub_1B6AB8F80();
            v83 = sub_1B6AB9900();
            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v116[0] = v85;
              *v84 = v100;
              v86 = sub_1B6AB8AC0();
              v88 = v87;
              v112(v12, v114);
              v89 = sub_1B698F63C(v86, v88, v116);
              v4 = v114;

              *(v84 + 4) = v89;
              _os_log_impl(&dword_1B697C000, v82, v83, "Flush manager cleaning up debug directory, url=%{public}s", v84, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v85);
              MEMORY[0x1B8C99550](v85, -1, -1);
              MEMORY[0x1B8C99550](v84, -1, -1);
            }

            else
            {

              v112(v12, v4);
            }

            v90 = v108[26];
            v91 = v108[27];
            __swift_project_boxed_opaque_existential_1(v108 + 23, v90);
            v92 = v103;
            (*(v91 + 112))(v103, 0, v90, v91);
            v112(v92, v4);
            v69 = v107;
            v5 = v109;
            v70 = v92;
          }

          ++v68;
          v67 = v105;
          if (v68 == v106)
          {

            v2 = v108;
            goto LABEL_48;
          }
        }

LABEL_51:
        __break(1u);
        return;
      }
    }

LABEL_48:
    v93 = v2[29];

    os_unfair_lock_lock_with_options();
    swift_beginAccess();
    *(v93 + 24) = 0;
    os_unfair_lock_unlock(*(*(v93 + 16) + 16));
  }

  else
  {
    v59 = sub_1B6AB8F80();
    v60 = sub_1B6AB98E0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1B697C000, v59, v60, "Error: Flush manager attempting to clean up unflushed directories.", v61, 2u);
      MEMORY[0x1B8C99550](v61, -1, -1);
    }
  }
}

uint64_t FlushManager.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));

  v1 = OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger;
  v2 = sub_1B6AB8F90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FlushManager.__deallocating_deinit()
{
  FlushManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B69EC1DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1B69EC280()
{
  result = qword_1EB95AF40;
  if (!qword_1EB95AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AF40);
  }

  return result;
}

void sub_1B69EC2D4(uint64_t a1)
{
  if (!qword_1EDBC8E08)
  {
    sub_1B6986438(255, &qword_1EDBC8E10, 0x1E69E58C0);
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC8E08);
    }
  }
}

uint64_t sub_1B69EC348()
{
  v1 = *(sub_1B6AB8BB0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1B69EAE18(v4, v0 + v2, v5, v7, v8);
}

void sub_1B69EC3E8(_BYTE *a1@<X8>)
{
  sub_1B6AB8F90();

  sub_1B69E9FC0(a1);
}

double sub_1B69EC458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 2)
  {
    sub_1B69D2C14(a1, a2, a3, a4);

    return sub_1B69D2C68(a5, a6);
  }

  return result;
}

uint64_t sub_1B69EC4A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_23Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1B69EC594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6A8ABE8();
  *a1 = result;
  return result;
}

void sub_1B69EC5D0()
{
  if (!qword_1EDBC9BB8)
  {
    v0 = sub_1B6AB97E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC9BB8);
    }
  }
}

id BridgedUserDataConfiguration.__allocating_init(userIDConfigurationsByKind:startDateStorage:globalSamplingThreshold:userIDResetFlag:storefrontProvider:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1B69ECA38(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v12;
}

id BridgedUserDataConfiguration.init(userIDConfigurationsByKind:startDateStorage:globalSamplingThreshold:userIDResetFlag:storefrontProvider:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = sub_1B69ECA38(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

id BridgedUserDataConfiguration.__allocating_init(userIDConfigurationsByKind:startDateStorage:userIDResetFlag:storefrontProvider:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1B69ED228(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v10;
}

id BridgedUserDataConfiguration.init(userIDConfigurationsByKind:startDateStorage:userIDResetFlag:storefrontProvider:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = sub_1B69ED228(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v5;
}