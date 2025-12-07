Swift::Int sub_10022F774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B03C0, &qword_1004D19F8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      *(*(v7 + 56) + 4 * v15) = v24;
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

Swift::Int sub_10022FA14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B03B8, &qword_1004D19F0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_10022FCBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for FriendshipAction();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Friend();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10004B564(&qword_1005B0058, &qword_1004D15B0);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
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
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
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

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100230164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AppNotificationEvent.EventType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10004B564(&qword_1005B0028, &qword_1004D1590);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000093F8(&qword_1005B0030, &type metadata accessor for AppNotificationEvent.EventType, &protocol conformance descriptor for AppNotificationEvent.EventType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_10023057C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10004B564(&qword_1005B00B0, &qword_1004D1640);
  v75 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v107 = v8;
    v12 = 0;
    v73 = v6;
    v74 = v9;
    v15 = *(v9 + 64);
    v14 = (v9 + 64);
    v13 = v15;
    v72 = &v132[26] + 8;
    v16 = 1 << *(v14 - 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v70 = v2;
    v71 = v6 + 16;
    v76 = v6 + 32;
    v20 = result + 64;
    while (v18)
    {
      v33 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
LABEL_15:
      v37 = v33 | (v12 << 6);
      v106 = v34;
      v38 = v5;
      v39 = v74;
      v40 = *(v74 + 48) + *(v6 + 72) * v37;
      if (v75)
      {
        (*(v6 + 32))(v107, v40, v38);
        v41 = *(v39 + 56) + 584 * v37;
        v42 = *(v41 + 16);
        v81 = *v41;
        v82 = v42;
        v43 = *(v41 + 48);
        v83 = *(v41 + 32);
        v84 = v43;
        v44 = *(v41 + 80);
        v85 = *(v41 + 64);
        v86 = v44;
        v45 = *(v41 + 112);
        v87 = *(v41 + 96);
        v88 = v45;
        v128 = *(v41 + 304);
        v129 = *(v41 + 320);
        v130 = *(v41 + 336);
        v131 = *(v41 + 352);
        v124 = *(v41 + 240);
        v125 = *(v41 + 256);
        v126 = *(v41 + 272);
        v127 = *(v41 + 288);
        v120 = *(v41 + 176);
        v121 = *(v41 + 192);
        v122 = *(v41 + 208);
        v123 = *(v41 + 224);
        v117 = *(v41 + 128);
        v118 = *(v41 + 144);
        v119 = *(v41 + 160);
        v46 = *(v41 + 368);
        v91 = *(v41 + 360);
        v89 = v46;
        v90 = *(v41 + 376);
        v47 = *(v41 + 400);
        v92 = *(v41 + 384);
        v93 = v47;
        v48 = *(v41 + 416);
        v77 = *(v41 + 424);
        v50 = *(v41 + 432);
        v49 = *(v41 + 440);
        v94 = v48;
        v95 = v49;
        v51 = *(v41 + 448);
        v96 = v50;
        v97 = v51;
        LODWORD(v48) = *(v41 + 456);
        v98 = *(v41 + 457);
        v52 = *(v41 + 480);
        v99 = *(v41 + 464);
        v100 = v52;
        LODWORD(v51) = *(v41 + 496);
        v79 = v48;
        v80 = v51;
        v53 = *(v41 + 520);
        v101 = *(v41 + 504);
        v102 = v53;
        v54 = *(v41 + 552);
        v103 = *(v41 + 536);
        v104 = v54;
        v105 = *(v41 + 568);
        v78 = *(v41 + 576);
      }

      else
      {
        (*(v6 + 16))(v107, v40, v38);
        memcpy(v132, (*(v39 + 56) + 584 * v37), 0x241uLL);
        v105 = *(&v132[35] + 1);
        v55 = v72[152];
        v56 = *(v72 + 8);
        v103 = *(v72 + 7);
        v104 = v56;
        v57 = *(v72 + 6);
        v101 = *(v72 + 5);
        v102 = v57;
        v80 = v72[72];
        v58 = *(v72 + 56);
        v99 = *(v72 + 40);
        v100 = v58;
        v98 = BYTE9(v132[28]);
        v59 = v72[32];
        v78 = v55;
        v79 = v59;
        v96 = *&v132[27];
        v97 = *&v132[28];
        v94 = *&v132[26];
        v95 = *(&v132[27] + 1);
        v77 = *v72;
        v92 = v132[24];
        v93 = v132[25];
        v90 = BYTE8(v132[23]);
        v91 = *(&v132[22] + 1);
        v89 = *&v132[23];
        v87 = v132[6];
        v88 = v132[7];
        v85 = v132[4];
        v86 = v132[5];
        v83 = v132[2];
        v84 = v132[3];
        v81 = v132[0];
        v82 = v132[1];
        sub_10005D0C0(v132, &v117);
        v129 = v132[20];
        v130 = v132[21];
        v131 = *&v132[22];
        v125 = v132[16];
        v126 = v132[17];
        v127 = v132[18];
        v128 = v132[19];
        v121 = v132[12];
        v122 = v132[13];
        v123 = v132[14];
        v124 = v132[15];
        v117 = v132[8];
        v118 = v132[9];
        v119 = v132[10];
        v120 = v132[11];
      }

      sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v60 = -1 << *(v11 + 32);
      v61 = result & ~v60;
      v62 = v61 >> 6;
      v5 = v38;
      if (((-1 << v61) & ~*(v20 + 8 * (v61 >> 6))) == 0)
      {
        v63 = 0;
        v64 = (63 - v60) >> 6;
        while (++v62 != v64 || (v63 & 1) == 0)
        {
          v65 = v62 == v64;
          if (v62 == v64)
          {
            v62 = 0;
          }

          v63 |= v65;
          v66 = *(v20 + 8 * v62);
          if (v66 != -1)
          {
            v21 = __clz(__rbit64(~v66)) + (v62 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v61) & ~*(v20 + 8 * (v61 >> 6)))) | v61 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v132[12] = v129;
      v132[13] = v130;
      *&v132[14] = v131;
      v132[8] = v125;
      v132[9] = v126;
      v132[11] = v128;
      v132[10] = v127;
      v132[4] = v121;
      v132[5] = v122;
      v132[7] = v124;
      v132[6] = v123;
      v132[0] = v117;
      v132[1] = v118;
      v132[3] = v120;
      v132[2] = v119;
      v115 = v77;
      v113 = v79;
      v110 = v80;
      v108 = v78;
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v6 = v73;
      result = (*(v73 + 32))(*(v11 + 48) + *(v73 + 72) * v21, v107, v38);
      v22 = *(v11 + 56) + 584 * v21;
      v23 = v82;
      *v22 = v81;
      *(v22 + 16) = v23;
      v24 = v84;
      *(v22 + 32) = v83;
      *(v22 + 48) = v24;
      v25 = v86;
      *(v22 + 64) = v85;
      *(v22 + 80) = v25;
      v26 = v88;
      *(v22 + 96) = v87;
      *(v22 + 112) = v26;
      *(v22 + 160) = v132[2];
      *(v22 + 144) = v132[1];
      *(v22 + 128) = v132[0];
      *(v22 + 224) = v132[6];
      *(v22 + 208) = v132[5];
      *(v22 + 192) = v132[4];
      *(v22 + 176) = v132[3];
      *(v22 + 288) = v132[10];
      *(v22 + 272) = v132[9];
      *(v22 + 256) = v132[8];
      *(v22 + 240) = v132[7];
      *(v22 + 352) = *&v132[14];
      *(v22 + 336) = v132[13];
      *(v22 + 320) = v132[12];
      *(v22 + 304) = v132[11];
      v27 = v89;
      *(v22 + 360) = v91;
      *(v22 + 368) = v27;
      *(v22 + 376) = v90;
      *(v22 + 377) = *v116;
      *(v22 + 380) = *&v116[3];
      v28 = v93;
      *(v22 + 384) = v92;
      *(v22 + 400) = v28;
      *(v22 + 416) = v94;
      *(v22 + 424) = v115;
      *(v22 + 425) = *v114;
      *(v22 + 428) = *&v114[3];
      v29 = v95;
      *(v22 + 432) = v96;
      *(v22 + 440) = v29;
      *(v22 + 448) = v97;
      *(v22 + 456) = v113;
      *(v22 + 457) = v98;
      *(v22 + 458) = v111;
      *(v22 + 462) = v112;
      v30 = v100;
      *(v22 + 464) = v99;
      *(v22 + 480) = v30;
      *(v22 + 496) = v110;
      *(v22 + 497) = *v109;
      *(v22 + 500) = *&v109[3];
      v31 = v102;
      *(v22 + 504) = v101;
      *(v22 + 520) = v31;
      v32 = v104;
      *(v22 + 536) = v103;
      *(v22 + 552) = v32;
      v18 = v106;
      *(v22 + 568) = v105;
      *(v22 + 576) = v108;
      ++*(v11 + 16);
    }

    v35 = v12;
    while (1)
    {
      v12 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v19)
      {
        break;
      }

      v36 = v14[v12];
      ++v35;
      if (v36)
      {
        v33 = __clz(__rbit64(v36));
        v34 = (v36 - 1) & v36;
        goto LABEL_15;
      }
    }

    if ((v75 & 1) == 0)
    {

      v3 = v70;
      goto LABEL_35;
    }

    v67 = v74;
    v68 = 1 << *(v74 + 32);
    v3 = v70;
    if (v68 >= 64)
    {
      bzero(v14, ((v68 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v68;
    }

    *(v67 + 16) = 0;
  }

LABEL_35:
  *v3 = v11;
  return result;
}

Swift::Int sub_100230DB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10004B564(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_10023107C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10004B564(&qword_1005B02B0, &qword_1004D1858);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_100010BD4((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_100011004(*(v9 + 56) + 40 * v23, v43);
      }

      sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_100010BD4(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
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

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100231460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  Priority = type metadata accessor for LocatePriority();
  v6 = *(Priority - 8);
  __chkstk_darwin(Priority);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10004B564(&qword_1005B0200, &qword_1004D1788);
  v45 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v51 = Priority;
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
    v41 = v2;
    v42 = (v6 + 16);
    v43 = v8;
    v44 = v6;
    v47 = (v6 + 32);
    v17 = result + 64;
    v18 = v46;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48);
      v49 = *(v44 + 72);
      v50 = v22;
      v27 = v26 + v49 * v25;
      if (v45)
      {
        (*v47)(v18, v27, v51);
        v28 = (*(v8 + 56) + 24 * v25);
        v30 = *v28;
        v29 = v28[1];
        v48 = v28[2];
      }

      else
      {
        (*v42)(v18, v27, v51);
        v31 = (*(v8 + 56) + 24 * v25);
        v30 = *v31;
        v29 = v31[1];
        v48 = v31[2];
      }

      sub_1000093F8(&qword_1005B0208, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v18 = v46;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v18 = v46;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v47)(*(v10 + 48) + v49 * v19, v18, v51);
      v20 = (*(v10 + 56) + 24 * v19);
      *v20 = v30;
      v20[1] = v29;
      v20[2] = v48;
      ++*(v10 + 16);
      v8 = v43;
      v15 = v50;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_100231874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Handle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10004B564(&qword_1005B01F8, &qword_1004D1780);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100231C50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for Date();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ClientID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10004B564(&qword_1005B02A8, &qword_1004D1850);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
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
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1000093F8(&qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
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

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1002320F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10004B564(&qword_1005B0278, &qword_1004D1820);
  v46 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v8;
    v45 = v6;
    v48 = (v6 + 32);
    v17 = result + 64;
    v52 = v5;
    v18 = v47;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48);
      v50 = *(v45 + 72);
      v51 = v22;
      v27 = v26 + v50 * v25;
      if (v46)
      {
        (*v48)(v18, v27, v52);
        v28 = (*(v8 + 56) + 24 * v25);
        v29 = v28[1];
        v49 = *v28;
        v30 = v28[2];
      }

      else
      {
        (*v43)(v18, v27, v52);
        v31 = (*(v8 + 56) + 24 * v25);
        v32 = *v31;
        v29 = v31[1];
        v30 = v31[2];

        v49 = v32;
      }

      sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v10 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v18 = v47;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v18 = v47;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v48)(*(v10 + 48) + v50 * v19, v18, v52);
      v20 = (*(v10 + 56) + 24 * v19);
      *v20 = v49;
      v20[1] = v29;
      v20[2] = v30;
      ++*(v10 + 16);
      v8 = v44;
      v15 = v51;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v8 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v12, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v40;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_100232514(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Destination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10004B564(&qword_1005B0198, &qword_1004D1720);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
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
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_1000093F8(&qword_1005AADF8, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
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
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_1002328D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = type metadata accessor for EncryptedLocation();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10004B564(&qword_1005B0268, &qword_1004D1810);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v23;
      v41 = *(*(v7 + 48) + 16 * v23);
      v26 = *(&v41 + 1);
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        sub_100005F6C(v41, v26);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v41;
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
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v41;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 16 * v18) = v19;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
  return result;
}

uint64_t sub_100232C70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_10004B564(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_100233070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v57 = sub_10004B564(a3, a4);
  v11 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v45 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v58 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  sub_10004B564(a5, a6);
  v52 = v10;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v16 + 16))
  {
    v19 = 0;
    v20 = (v16 + 64);
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v14;
    v24 = v22 & *(v16 + 64);
    v25 = (v21 + 63) >> 6;
    v48 = (v23 + 16);
    v49 = v23;
    v46 = v6;
    v47 = v11 + 16;
    v50 = v16;
    v51 = v11;
    v53 = (v11 + 32);
    v54 = (v23 + 32);
    v26 = result + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v31 = v28 | (v19 << 6);
      v32 = *(v16 + 48);
      v55 = *(v23 + 72);
      v33 = v32 + v55 * v31;
      if (v52)
      {
        (*v54)(v58, v33, v13);
        v34 = *(v16 + 56);
        v35 = *(v51 + 72);
        (*(v51 + 32))(v56, v34 + v35 * v31, v57);
      }

      else
      {
        (*v48)(v58, v33, v13);
        v36 = *(v16 + 56);
        v35 = *(v51 + 72);
        (*(v51 + 16))(v56, v36 + v35 * v31, v57);
      }

      sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v26 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v26 + 8 * v39);
          if (v43 != -1)
          {
            v27 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v38) & ~*(v26 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      (*v54)((*(v18 + 48) + v55 * v27), v58, v13);
      result = (*v53)(*(v18 + 56) + v35 * v27, v56, v57);
      ++*(v18 + 16);
      v23 = v49;
      v16 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v25)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v16 + 32);
    v9 = v46;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v16 + 16) = 0;
  }

LABEL_34:
  *v9 = v18;
  return result;
}

uint64_t sub_10023355C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10004B564(&qword_1005B0358, &qword_1004D1980);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
        sub_10004B064(v21, v32);
      }

      else
      {
        sub_10000709C(v21, v32);
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
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
      result = sub_10004B064(v32, (*(v7 + 56) + 32 * v15));
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

    if (v4)
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1002337D4(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 25) = *(a4 + 25);
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

unint64_t sub_100233830(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 26) = *(a4 + 26);
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

unint64_t sub_10023388C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t sub_100233908(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Handle();
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

_OWORD *sub_1002339B8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10004B064(a4, (a5[7] + 32 * a1));
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

unint64_t sub_100233A24(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
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

unint64_t sub_100233A98(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
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

unint64_t sub_100233AE0(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 2 * result) = a4;
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

unint64_t sub_100233B28(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
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

unint64_t sub_100233B7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
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

uint64_t sub_100233BD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  result = sub_1000176A8(a4, v9 + *(*(v10 - 8) + 72) * a1, &qword_1005AAC60, &qword_1004C46E8);
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

unint64_t sub_100233CD0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_100233D70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_100241440(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
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

void *sub_100233E1C(unint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = memcpy((a4[7] + 584 * a1), a3, 0x241uLL);
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

uint64_t sub_100233EF8(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100010BD4(a3, a4[7] + 40 * a1);
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

uint64_t sub_100233FBC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  Priority = type metadata accessor for LocatePriority();
  result = (*(*(Priority - 8) + 32))(v12 + *(*(Priority - 8) + 72) * a1, a2, Priority);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_1002340BC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v13 = a4[7];
  v14 = a6(0);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_1002341BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = type metadata accessor for UUID();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_1002342A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
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

uint64_t sub_100234364(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
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

uint64_t sub_10023445C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = sub_10004B564(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

_OWORD *sub_100234564(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10004B064(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1002345CC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100236C58(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10023471C(uint64_t a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v42[0] = a2[2];
  v6 = *v2;
  Hasher.init(_seed:)();
  v39 = v4;
  String.hash(into:)();
  Hasher._combine(_:)(*(v42[0] + 16));
  v7 = *(v42[0] + 16);
  if (v7)
  {
    v8 = v42[0] + 40;
    do
    {

      String.hash(into:)();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  v35 = a2;
  v37 = a2[4];
  v38 = a2[3];
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = v6 + 56;
  v11 = -1 << *(v6 + 32);
  v12 = v9 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_30:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *v34;

    sub_100005F04(v42, v40, &qword_1005A9630, &qword_1004C5680);

    sub_100236DD8(v35, v12, isUniquelyReferenced_nonNull_native);
    *v34 = v41;
    v27 = *(v35 + 1);
    *a1 = *v35;
    *(a1 + 16) = v27;
    *(a1 + 32) = v35[4];
    return 1;
  }

  v13 = ~v11;
  v33 = v6;
  v14 = *(v6 + 48);
  while (1)
  {
    v15 = (v14 + 40 * v12);
    result = *v15;
    v18 = v15[2];
    v17 = v15[3];
    v19 = v15[4];
    if (*v15 != v5 || v15[1] != v39)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v21 = *(v18 + 16);
    if (v21 != *(v42[0] + 16))
    {
      goto LABEL_7;
    }

    if (v21 && v18 != v42[0])
    {
      break;
    }

LABEL_19:
    if (v17 == v38 && v19 == v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100002CE0(v42, &qword_1005A9630, &qword_1004C5680);

      v28 = (*(v33 + 48) + 40 * v12);
      v29 = v28[1];
      v31 = v28[2];
      v30 = v28[3];
      v32 = v28[4];
      *a1 = *v28;
      *(a1 + 8) = v29;
      *(a1 + 16) = v31;
      *(a1 + 24) = v30;
      *(a1 + 32) = v32;

      return 0;
    }

LABEL_7:
    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v23 = (v18 + 40);
  v24 = (v42[0] + 40);
  while (v21)
  {
    result = *(v23 - 1);
    if (result != *(v24 - 1) || *v23 != *v24)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v23 += 2;
    v24 += 2;
    if (!--v21)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100234A2C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000093F8(&qword_1005A9250, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000093F8(&qword_1005B0638, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100237094(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100234D0C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000093F8(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000093F8(&qword_1005AE9C8, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10023735C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100234FEC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1002414A8();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100235204(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10023688C(v20 + 1);
    }

    v18 = v8;
    sub_100236BD4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1002414A8();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100237624(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_100235204(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10004B564(&qword_1005B05F8, &qword_1004D1F30);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1002414A8();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10023688C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1002353E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10004B564(&qword_1005B04F0, &qword_1004D1E18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_100235644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10004B564(&qword_1005B05C8, &qword_1004D1F10);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(v3 + 48) + 40 * (v11 | (v5 << 6));
      v15 = *(v14 + 16);
      v17[0] = *v14;
      v17[1] = v15;
      v18 = *(v14 + 32);
      sub_100236AB4(v17, v4);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

Swift::Int sub_1002357C8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FriendInfoOption(0);
  v32 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10004B564(&qword_1005B0560, &qword_1004D6070);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_100241440(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for FriendInfoOption);
      Hasher.init(_seed:)();
      type metadata accessor for HandleType();
      sub_1000093F8(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100241440(v5, *(v8 + 48) + v16 * v21, type metadata accessor for FriendInfoOption);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_100235B1C(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10004B564(&qword_1005B0598, &qword_1004D1EE8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100235E78(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Device();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10004B564(&qword_1005B0640, &qword_1004D1F68);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1000093F8(&qword_1005A9250, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1002361D4(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Device();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10004B564(&qword_1005B0570, &qword_1004D1EC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1000093F8(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100236530(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for ClientID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10004B564(&qword_1005B05E8, &qword_1004D6100);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1000093F8(&qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_10023688C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10004B564(&qword_1005B05F8, &qword_1004D1F30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

__n128 sub_100236AB4(void *a1, uint64_t a2)
{
  v4 = a1[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      String.hash(into:)();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  String.hash(into:)();
  Hasher._finalize()();
  v7 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
  v8 = *(a2 + 48) + 40 * v7;
  result = *a1;
  v10 = *(a1 + 1);
  *v8 = *a1;
  *(v8 + 16) = v10;
  *(v8 + 32) = a1[4];
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100236BD4(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100236C58(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1002353E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100237784();
      goto LABEL_16;
    }

    sub_1002380A8(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100236DD8(void *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100235644(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1002378E0();
        goto LABEL_37;
      }

      sub_1002382E0(v6 + 1);
    }

    v8 = *result;
    v9 = result[1];
    v10 = result[2];
    v11 = *v3;
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._combine(_:)(*(v10 + 16));
    v39 = v10;
    v12 = *(v10 + 16);
    if (v12)
    {
      v13 = v39 + 40;
      do
      {

        String.hash(into:)();

        v13 += 16;
        --v12;
      }

      while (v12);
    }

    v36 = result[4];
    v37 = result[3];
    String.hash(into:)();
    v14 = Hasher._finalize()();
    v15 = -1 << *(v11 + 32);
    a2 = v14 & ~v15;
    v38 = v11 + 56;
    if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      v17 = *(v11 + 48);
      do
      {
        v18 = (v17 + 40 * a2);
        v20 = v18[2];
        v19 = v18[3];
        v21 = v18[4];
        v22 = *v18 == v8 && v18[1] == v9;
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v23 = *(v20 + 16);
          if (v23 == *(v39 + 16))
          {
            if (v23)
            {
              v24 = v20 == v39;
            }

            else
            {
              v24 = 1;
            }

            if (!v24)
            {
              v25 = (v20 + 40);
              v26 = (v39 + 40);
              while (v23)
              {
                v27 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
                if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_14;
                }

                v25 += 2;
                v26 += 2;
                if (!--v23)
                {
                  goto LABEL_26;
                }
              }

              __break(1u);
              goto LABEL_40;
            }

LABEL_26:
            if (v19 == v37 && v21 == v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_14:
        a2 = (a2 + 1) & v16;
      }

      while (((*(v38 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_37:
  v28 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = *(v28 + 48) + 40 * a2;
  v30 = *(result + 1);
  *v29 = *result;
  *(v29 + 16) = v30;
  *(v29 + 32) = result[4];
  v31 = *(v28 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v33;
  }
}

uint64_t sub_100237094(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100235E78(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100237D20(&type metadata accessor for Device, &qword_1005B0640, &qword_1004D1F68);
      goto LABEL_12;
    }

    sub_100238AC4(v10 + 1);
  }

  v12 = *v3;
  sub_1000093F8(&qword_1005A9250, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000093F8(&qword_1005B0638, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10023735C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002361D4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100237D20(&type metadata accessor for Device, &qword_1005B0570, &qword_1004D1EC0);
      goto LABEL_12;
    }

    sub_100238DE0(v10 + 1);
  }

  v12 = *v3;
  sub_1000093F8(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000093F8(&qword_1005AE9C8, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100237624(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10023688C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100237F58();
      goto LABEL_12;
    }

    sub_1002390FC(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1002414A8();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100237784()
{
  v1 = v0;
  sub_10004B564(&qword_1005B04F0, &qword_1004D1E18);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void sub_1002378E0()
{
  v1 = v0;
  sub_10004B564(&qword_1005B05C8, &qword_1004D1F10);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = v18[4];
        v23 = (*(v4 + 48) + v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v21;
        v23[3] = v20;
        v23[4] = v22;
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
}

void *sub_100237A68()
{
  v1 = v0;
  v2 = type metadata accessor for FriendInfoOption(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0560, &qword_1004D6070);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1002413D8(*(v6 + 48) + v21, v5, type metadata accessor for FriendInfoOption);
        result = sub_100241440(v5, *(v8 + 48) + v21, type metadata accessor for FriendInfoOption);
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

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_100237D20(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_10004B564(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

id sub_100237F58()
{
  v1 = v0;
  sub_10004B564(&qword_1005B05F8, &qword_1004D1F30);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

Swift::Int sub_1002380A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10004B564(&qword_1005B04F0, &qword_1004D1E18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

  return result;
}

void sub_1002382E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10004B564(&qword_1005B05C8, &qword_1004D1F10);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(v3 + 48) + 40 * (v10 | (v5 << 6));
      *&v17[16] = *(v13 + 32);
      v14 = *(v13 + 16);
      v16 = *v13;
      *v17 = v14;
      v18 = v16;
      v19 = v14;
      v20 = *&v17[8];
      sub_10007C30C(&v18, v15);
      sub_100005F04(&v19, v15, &qword_1005A9630, &qword_1004C5680);
      sub_10007C30C(&v20, v15);
      sub_100236AB4(&v16, v4);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v4;
  }
}

Swift::Int sub_100238484(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FriendInfoOption(0);
  v31 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10004B564(&qword_1005B0560, &qword_1004D6070);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v31 + 72);
      sub_1002413D8(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for FriendInfoOption);
      Hasher.init(_seed:)();
      type metadata accessor for HandleType();
      sub_1000093F8(&qword_1005AE818, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100241440(v5, *(v8 + 48) + v16 * v21, type metadata accessor for FriendInfoOption);
      ++*(v8 + 16);
      v6 = v30;
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

        v2 = v29;
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

  return result;
}

uint64_t sub_1002387A8(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10004B564(&qword_1005B0598, &qword_1004D1EE8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100238AC4(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Device();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10004B564(&qword_1005B0640, &qword_1004D1F68);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1000093F8(&qword_1005A9250, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100238DE0(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Device();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10004B564(&qword_1005B0570, &qword_1004D1EC0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1000093F8(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_1002390FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10004B564(&qword_1005B05F8, &qword_1004D1F30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
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
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

  return result;
}

void *sub_100239310(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0518, &qword_1004D1E50, &type metadata accessor for Fence.DaysOfWeek);
  *v3 = result;
  return result;
}

void *sub_100239354(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B00D0, &qword_1004D1660, &type metadata accessor for Friend);
  *v3 = result;
  return result;
}

void *sub_100239398(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B00A0, &qword_1004D1630, &type metadata accessor for PersonHandle);
  *v3 = result;
  return result;
}

void *sub_1002393DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023988C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002393FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005A9270, &qword_1004C5810, &type metadata accessor for Destination);
  *v3 = result;
  return result;
}

void *sub_100239440(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005A9E48, &qword_1004D6A20, type metadata accessor for SecureLocation);
  *v3 = result;
  return result;
}

char *sub_100239484(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100239C08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002394A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B05B0, &qword_1004D1F00, type metadata accessor for SecureLocationsCachedSharedKey);
  *v3 = result;
  return result;
}

void *sub_1002394E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0168, &qword_1004D16F8, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_10023952C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0588, &qword_1004D1ED8, type metadata accessor for FriendSharedSecretsRecord);
  *v3 = result;
  return result;
}

void *sub_100239570(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0590, &qword_1004D1EE0, &type metadata accessor for CloudKitCoordinator.Deletion);
  *v3 = result;
  return result;
}

void *sub_1002395B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0510, &qword_1004D1E48, &type metadata accessor for Device);
  *v3 = result;
  return result;
}

void *sub_1002395F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A074(a1, a2, a3, *v3, &qword_1005B0558, &qword_1004D1EB0, &qword_1005B0550, &qword_1004D1EA8);
  *v3 = result;
  return result;
}

void *sub_100239638(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0508, &qword_1004D1E40, &type metadata accessor for AppNotificationEvent);
  *v3 = result;
  return result;
}

void *sub_10023967C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0648, &qword_1004D1F70, type metadata accessor for ShareInvitationRecord);
  *v3 = result;
  return result;
}

void *sub_1002396C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0520, &qword_1004D1E58, type metadata accessor for FenceTriggerRecord);
  *v3 = result;
  return result;
}

char *sub_100239704(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100239D28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100239724(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100239E34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100239744(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100239F40(a1, a2, a3, *v3, &qword_1005B0628, &qword_1004D1F58, &qword_1005B0630, &qword_1004D1F60);
  *v3 = result;
  return result;
}

void *sub_100239784(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100239F40(a1, a2, a3, *v3, &qword_1005B0618, &qword_1004D1F48, &qword_1005B0620, &qword_1004D1F50);
  *v3 = result;
  return result;
}

void *sub_1002397C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A074(a1, a2, a3, *v3, &qword_1005B0600, &qword_1004D7E00, &qword_1005B0608, &qword_1004D1F38);
  *v3 = result;
  return result;
}

void *sub_100239804(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B0318, &qword_1004D18F0, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

void *sub_100239848(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A25C(a1, a2, a3, *v3, &qword_1005B05A0, &qword_1004D1EF0, type metadata accessor for SecureLocationsCachedPayload);
  *v3 = result;
  return result;
}

void *sub_10023988C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10004B564(&qword_1005B0528, &qword_1004D1E60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002399D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005A9F38, &unk_1004C34C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100239AE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B05D8, &qword_1004D1F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100239C08(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B05D0, &qword_1004D1F18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100239D28(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B05B8, &qword_1004D1F08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100239E34(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B05A8, &qword_1004D1EF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100239F40(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10004B564(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10004B564(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10023A074(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10004B564(a5, a6);
  v16 = *(sub_10004B564(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10004B564(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_10023A25C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10004B564(a5, a6);
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

void sub_10023A438(uint64_t *a1)
{
  v2 = *(sub_10004B564(&qword_1005AFFE0, &qword_1004D6060) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10023CA04(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10023A4EC(v5);
  *a1 = v3;
}

void sub_10023A4EC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10004B564(&qword_1005AFFE0, &qword_1004D6060) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10023AB34(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10023A630(0, v2, 1, a1);
  }
}

uint64_t sub_10023A630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v68 = type metadata accessor for Handle();
  v8 = *(v68 - 8);
  v9 = __chkstk_darwin(v68);
  v67 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v54 - v11;
  v69 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v12 = __chkstk_darwin(v69);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v76 = &v54 - v15;
  v16 = __chkstk_darwin(v14);
  v75 = &v54 - v17;
  v18 = __chkstk_darwin(v16);
  v77 = &v54 - v19;
  result = __chkstk_darwin(v18);
  v23 = &v54 - v22;
  v56 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v21 + 72);
    v64 = (v8 + 8);
    v26 = v24 + v25 * (a3 - 1);
    v61 = -v25;
    v62 = v24;
    v27 = a1 - a3;
    v55 = v25;
    v28 = v24 + v25 * a3;
    v65 = &v54 - v22;
LABEL_5:
    v59 = v26;
    v60 = a3;
    v57 = v28;
    v58 = v27;
    v29 = v27;
    while (1)
    {
      v73 = v29;
      v74 = v28;
      sub_100005F04(v28, v23, &qword_1005AFFE0, &qword_1004D6060);
      v72 = v26;
      sub_100005F04(v26, v77, &qword_1005AFFE0, &qword_1004D6060);
      v30 = v75;
      sub_100005F04(v23, v75, &qword_1005AFFE0, &qword_1004D6060);
      v31 = v66;
      Friend.handle.getter();
      v32 = type metadata accessor for Friend();
      v33 = *(*(v32 - 8) + 8);
      v33(v30, v32);
      v34 = Handle.identifier.getter();
      v70 = v35;
      v71 = v34;
      v36 = *v64;
      v37 = v68;
      (*v64)(v31, v68);
      v38 = v76;
      sub_100005F04(v77, v76, &qword_1005AFFE0, &qword_1004D6060);
      v39 = v67;
      Friend.handle.getter();
      v33(v38, v32);
      v40 = Handle.identifier.getter();
      v42 = v41;
      v43 = v39;
      v44 = v70;
      v36(v43, v37);
      if (v71 == v40 && v44 == v42)
      {
        v45 = 0;
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v46 = *(v69 + 48);
      v47 = type metadata accessor for FriendshipAction();
      v48 = *(*(v47 - 8) + 8);
      v48(v76 + v46, v47);
      v48(v75 + v46, v47);
      sub_100002CE0(v77, &qword_1005AFFE0, &qword_1004D6060);
      v23 = v65;
      result = sub_100002CE0(v65, &qword_1005AFFE0, &qword_1004D6060);
      v50 = v73;
      v49 = v74;
      v51 = v72;
      if ((v45 & 1) == 0)
      {
LABEL_4:
        a3 = v60 + 1;
        v26 = v59 + v55;
        v27 = v58 - 1;
        v28 = v57 + v55;
        if (v60 + 1 == v56)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v62)
      {
        break;
      }

      v52 = v63;
      sub_1000176A8(v74, v63, &qword_1005AFFE0, &qword_1004D6060);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000176A8(v52, v51, &qword_1005AFFE0, &qword_1004D6060);
      v26 = v51 + v61;
      v28 = v49 + v61;
      v53 = __CFADD__(v50, 1);
      v29 = v50 + 1;
      if (v53)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10023AB34(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v160 = a4;
  v157 = a1;
  v183 = type metadata accessor for Handle();
  v7 = *(v183 - 8);
  v8 = __chkstk_darwin(v183);
  v181 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v180 = &v155 - v11;
  v12 = __chkstk_darwin(v10);
  v168 = &v155 - v13;
  __chkstk_darwin(v12);
  v167 = &v155 - v14;
  v193 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v171 = *(v193 - 8);
  v15 = __chkstk_darwin(v193);
  v162 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v179 = &v155 - v18;
  v19 = __chkstk_darwin(v17);
  v192 = &v155 - v20;
  v21 = __chkstk_darwin(v19);
  v191 = &v155 - v22;
  v23 = __chkstk_darwin(v21);
  v190 = &v155 - v24;
  v25 = __chkstk_darwin(v23);
  v189 = &v155 - v26;
  v27 = __chkstk_darwin(v25);
  v175 = &v155 - v28;
  v29 = __chkstk_darwin(v27);
  v174 = &v155 - v30;
  v31 = __chkstk_darwin(v29);
  v173 = &v155 - v32;
  v33 = __chkstk_darwin(v31);
  v172 = &v155 - v34;
  v35 = __chkstk_darwin(v33);
  __chkstk_darwin(v35);
  v38 = a3[1];
  if (v38 < 1)
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_102:
    v39 = *v157;
    if (!*v157)
    {
      goto LABEL_142;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_104;
  }

  v155 = &v155 - v36;
  v156 = v37;
  v39 = 0;
  v182 = (v7 + 8);
  v40 = _swiftEmptyArrayStorage;
  v158 = a3;
  while (1)
  {
    v176 = v38;
    v159 = v39;
    if ((v39 + 1) < v38)
    {
      v41 = *a3;
      v42 = *(v171 + 72);
      v188 = v41 + v42 * (v39 + 1);
      v43 = v155;
      sub_100005F04(v188, v155, &qword_1005AFFE0, &qword_1004D6060);
      v44 = v156;
      sub_100005F04(v41 + v42 * v39, v156, &qword_1005AFFE0, &qword_1004D6060);
      LODWORD(v177) = sub_10022B46C(v43, v44);
      if (v5)
      {
        sub_100002CE0(v44, &qword_1005AFFE0, &qword_1004D6060);
        sub_100002CE0(v43, &qword_1005AFFE0, &qword_1004D6060);
        goto LABEL_114;
      }

      sub_100002CE0(v44, &qword_1005AFFE0, &qword_1004D6060);
      sub_100002CE0(v43, &qword_1005AFFE0, &qword_1004D6060);
      v45 = v39 + 2;
      v46 = v41 + v42 * (v39 + 2);
      v170 = 0;
      v47 = v42;
      v178 = v42;
      v48 = v188;
      v169 = v40;
      while (1)
      {
        v68 = v176;
        if (v176 == v45)
        {
          break;
        }

        v186 = v46;
        v187 = v45;
        v53 = v172;
        sub_100005F04(v46, v172, &qword_1005AFFE0, &qword_1004D6060);
        v188 = v48;
        v54 = v173;
        sub_100005F04(v48, v173, &qword_1005AFFE0, &qword_1004D6060);
        v55 = v174;
        sub_100005F04(v53, v174, &qword_1005AFFE0, &qword_1004D6060);
        v56 = v167;
        Friend.handle.getter();
        v57 = type metadata accessor for Friend();
        v58 = *(*(v57 - 8) + 8);
        v58(v55, v57);
        v59 = Handle.identifier.getter();
        v184 = v60;
        v185 = v59;
        v61 = v183;
        v62 = *v182;
        (*v182)(v56, v183);
        v63 = v175;
        sub_100005F04(v54, v175, &qword_1005AFFE0, &qword_1004D6060);
        v64 = v168;
        Friend.handle.getter();
        v58(v63, v57);
        v65 = Handle.identifier.getter();
        v67 = v66;
        v62(v64, v61);
        if (v185 == v65 && v184 == v67)
        {
          v49 = 0;
        }

        else
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v40 = v169;

        v39 = *(v193 + 48);
        v50 = type metadata accessor for FriendshipAction();
        v51 = *(*(v50 - 8) + 8);
        v51(v175 + v39, v50);
        v51(v174 + v39, v50);
        sub_100002CE0(v173, &qword_1005AFFE0, &qword_1004D6060);
        sub_100002CE0(v172, &qword_1005AFFE0, &qword_1004D6060);
        v52 = v177 ^ v49;
        v45 = v187 + 1;
        v47 = v178;
        v46 = v186 + v178;
        v48 = v188 + v178;
        v5 = v170;
        if (v52)
        {
          v68 = v187;
          break;
        }
      }

      a3 = v158;
      v69 = v160;
      if (v177)
      {
        if (v68 < v159)
        {
          goto LABEL_135;
        }

        if (v159 < v68)
        {
          v39 = v47 * (v68 - 1);
          v70 = v68 * v47;
          v176 = v68;
          v71 = v159;
          v72 = v159 * v47;
          do
          {
            if (v71 != --v68)
            {
              v73 = *a3;
              if (!v73)
              {
                goto LABEL_139;
              }

              sub_1000176A8(v73 + v72, v162, &qword_1005AFFE0, &qword_1004D6060);
              if (v72 < v39 || v73 + v72 >= (v73 + v70))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v72 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1000176A8(v162, v73 + v39, &qword_1005AFFE0, &qword_1004D6060);
              a3 = v158;
              v69 = v160;
              v47 = v178;
            }

            ++v71;
            v39 -= v47;
            v70 -= v47;
            v72 += v47;
          }

          while (v71 < v68);
          v5 = v170;
          v68 = v176;
        }
      }
    }

    else
    {
      v68 = v39 + 1;
      v69 = v160;
    }

    v74 = a3[1];
    if (v68 < v74)
    {
      if (__OFSUB__(v68, v159))
      {
        goto LABEL_132;
      }

      if (v68 - v159 < v69)
      {
        if (__OFADD__(v159, v69))
        {
          goto LABEL_133;
        }

        if (v159 + v69 < v74)
        {
          v74 = v159 + v69;
        }

        if (v74 < v159)
        {
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          v40 = sub_10023C584(v40);
LABEL_104:
          v194 = v40;
          v151 = *(v40 + 2);
          if (v151 >= 2)
          {
            while (*a3)
            {
              v152 = *&v40[16 * v151];
              v153 = *&v40[16 * v151 + 24];
              sub_10023BAC0(*a3 + *(v171 + 72) * v152, *a3 + *(v171 + 72) * *&v40[16 * v151 + 16], *a3 + *(v171 + 72) * v153, v39);
              if (v5)
              {
                goto LABEL_114;
              }

              if (v153 < v152)
              {
                goto LABEL_129;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v40 = sub_10023C584(v40);
              }

              if (v151 - 2 >= *(v40 + 2))
              {
                goto LABEL_130;
              }

              v154 = &v40[16 * v151];
              *v154 = v152;
              *(v154 + 1) = v153;
              v194 = v40;
              sub_10023C4F8(v151 - 1);
              v40 = v194;
              v151 = *(v194 + 2);
              if (v151 <= 1)
              {
                goto LABEL_114;
              }
            }

            goto LABEL_140;
          }

LABEL_114:

          return;
        }

        v163 = v74;
        if (v68 != v74)
        {
          break;
        }
      }
    }

LABEL_50:
    v105 = v159;
    if (v68 < v159)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1001FCD18(0, *(v40 + 2) + 1, 1, v40);
    }

    v39 = *(v40 + 2);
    v106 = *(v40 + 3);
    v107 = v39 + 1;
    if (v39 >= v106 >> 1)
    {
      v40 = sub_1001FCD18((v106 > 1), v39 + 1, 1, v40);
    }

    *(v40 + 2) = v107;
    v108 = &v40[16 * v39];
    *(v108 + 4) = v105;
    *(v108 + 5) = v68;
    v163 = v68;
    if (!*v157)
    {
      goto LABEL_141;
    }

    if (v39)
    {
      v109 = *v157;
      while (1)
      {
        v110 = v107 - 1;
        if (v107 >= 4)
        {
          break;
        }

        if (v107 == 3)
        {
          v111 = *(v40 + 4);
          v112 = *(v40 + 5);
          v121 = __OFSUB__(v112, v111);
          v113 = v112 - v111;
          v114 = v121;
LABEL_71:
          if (v114)
          {
            goto LABEL_120;
          }

          v127 = &v40[16 * v107];
          v129 = *v127;
          v128 = *(v127 + 1);
          v130 = __OFSUB__(v128, v129);
          v131 = v128 - v129;
          v132 = v130;
          if (v130)
          {
            goto LABEL_123;
          }

          v133 = &v40[16 * v110 + 32];
          v135 = *v133;
          v134 = *(v133 + 1);
          v121 = __OFSUB__(v134, v135);
          v136 = v134 - v135;
          if (v121)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v131, v136))
          {
            goto LABEL_127;
          }

          if (v131 + v136 >= v113)
          {
            if (v113 < v136)
            {
              v110 = v107 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v137 = &v40[16 * v107];
        v139 = *v137;
        v138 = *(v137 + 1);
        v121 = __OFSUB__(v138, v139);
        v131 = v138 - v139;
        v132 = v121;
LABEL_85:
        if (v132)
        {
          goto LABEL_122;
        }

        v140 = &v40[16 * v110];
        v142 = *(v140 + 4);
        v141 = *(v140 + 5);
        v121 = __OFSUB__(v141, v142);
        v143 = v141 - v142;
        if (v121)
        {
          goto LABEL_125;
        }

        if (v143 < v131)
        {
          goto LABEL_3;
        }

LABEL_92:
        v39 = v110 - 1;
        if (v110 - 1 >= v107)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v148 = *&v40[16 * v39 + 32];
        v149 = *&v40[16 * v110 + 40];
        sub_10023BAC0(*a3 + *(v171 + 72) * v148, *a3 + *(v171 + 72) * *&v40[16 * v110 + 32], *a3 + *(v171 + 72) * v149, v109);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v149 < v148)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_10023C584(v40);
        }

        if (v39 >= *(v40 + 2))
        {
          goto LABEL_117;
        }

        v150 = &v40[16 * v39];
        *(v150 + 4) = v148;
        *(v150 + 5) = v149;
        v194 = v40;
        sub_10023C4F8(v110);
        v40 = v194;
        v107 = *(v194 + 2);
        if (v107 <= 1)
        {
          goto LABEL_3;
        }
      }

      v115 = &v40[16 * v107 + 32];
      v116 = *(v115 - 64);
      v117 = *(v115 - 56);
      v121 = __OFSUB__(v117, v116);
      v118 = v117 - v116;
      if (v121)
      {
        goto LABEL_118;
      }

      v120 = *(v115 - 48);
      v119 = *(v115 - 40);
      v121 = __OFSUB__(v119, v120);
      v113 = v119 - v120;
      v114 = v121;
      if (v121)
      {
        goto LABEL_119;
      }

      v122 = &v40[16 * v107];
      v124 = *v122;
      v123 = *(v122 + 1);
      v121 = __OFSUB__(v123, v124);
      v125 = v123 - v124;
      if (v121)
      {
        goto LABEL_121;
      }

      v121 = __OFADD__(v113, v125);
      v126 = v113 + v125;
      if (v121)
      {
        goto LABEL_124;
      }

      if (v126 >= v118)
      {
        v144 = &v40[16 * v110 + 32];
        v146 = *v144;
        v145 = *(v144 + 1);
        v121 = __OFSUB__(v145, v146);
        v147 = v145 - v146;
        if (v121)
        {
          goto LABEL_128;
        }

        if (v113 < v147)
        {
          v110 = v107 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v38 = a3[1];
    v39 = v163;
    if (v163 >= v38)
    {
      goto LABEL_102;
    }
  }

  v169 = v40;
  v170 = v5;
  v75 = *a3;
  v76 = *(v171 + 72);
  v77 = *a3 + v76 * (v68 - 1);
  v177 = -v76;
  v78 = v159 - v68;
  v178 = v75;
  v161 = v76;
  v79 = v75 + v68 * v76;
LABEL_39:
  v176 = v68;
  v164 = v79;
  v165 = v78;
  v80 = v78;
  v166 = v77;
  v81 = v77;
  while (1)
  {
    v185 = v79;
    v186 = v80;
    v82 = v189;
    sub_100005F04(v79, v189, &qword_1005AFFE0, &qword_1004D6060);
    v184 = v81;
    v83 = v190;
    sub_100005F04(v81, v190, &qword_1005AFFE0, &qword_1004D6060);
    v84 = v191;
    sub_100005F04(v82, v191, &qword_1005AFFE0, &qword_1004D6060);
    v85 = v180;
    Friend.handle.getter();
    v86 = type metadata accessor for Friend();
    v87 = *(*(v86 - 8) + 8);
    v87(v84, v86);
    v88 = Handle.identifier.getter();
    v187 = v89;
    v188 = v88;
    v90 = *v182;
    v91 = v183;
    (*v182)(v85, v183);
    v92 = v192;
    sub_100005F04(v83, v192, &qword_1005AFFE0, &qword_1004D6060);
    v93 = v181;
    Friend.handle.getter();
    v87(v92, v86);
    v94 = v187;
    v95 = Handle.identifier.getter();
    v97 = v96;
    v90(v93, v91);
    if (v188 == v95 && v94 == v97)
    {
      v98 = 0;
    }

    else
    {
      v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v39 = *(v193 + 48);
    v99 = type metadata accessor for FriendshipAction();
    v100 = *(*(v99 - 8) + 8);
    v100(v192 + v39, v99);
    v100(v191 + v39, v99);
    sub_100002CE0(v190, &qword_1005AFFE0, &qword_1004D6060);
    sub_100002CE0(v189, &qword_1005AFFE0, &qword_1004D6060);
    if ((v98 & 1) == 0)
    {
LABEL_38:
      v68 = v176 + 1;
      v77 = v166 + v161;
      v78 = v165 - 1;
      v79 = v164 + v161;
      if (v176 + 1 != v163)
      {
        goto LABEL_39;
      }

      v5 = v170;
      a3 = v158;
      v40 = v169;
      v68 = v163;
      goto LABEL_50;
    }

    v101 = v186;
    if (!v178)
    {
      break;
    }

    v102 = v185;
    v39 = v179;
    sub_1000176A8(v185, v179, &qword_1005AFFE0, &qword_1004D6060);
    v103 = v184;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000176A8(v39, v103, &qword_1005AFFE0, &qword_1004D6060);
    v81 = v103 + v177;
    v79 = v102 + v177;
    v104 = __CFADD__(v101, 1);
    v80 = v101 + 1;
    if (v104)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_10023BAC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v104 = type metadata accessor for Handle();
  v8 = *(v104 - 8);
  v9 = __chkstk_darwin(v104);
  v96 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v95 = v93 - v12;
  v13 = __chkstk_darwin(v11);
  v101 = v93 - v14;
  __chkstk_darwin(v13);
  v100 = v93 - v15;
  v112 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v16 = __chkstk_darwin(v112);
  v105 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v93 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v93 - v22;
  v24 = __chkstk_darwin(v21);
  v25 = __chkstk_darwin(v24);
  v108 = v93 - v26;
  v27 = __chkstk_darwin(v25);
  v107 = v93 - v28;
  v29 = __chkstk_darwin(v27);
  v106 = v93 - v30;
  result = __chkstk_darwin(v29);
  v34 = (v93 - v33);
  v36 = *(v35 + 72);
  if (!v36)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_70;
  }

  v37 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_71;
  }

  v38 = (a2 - a1) / v36;
  v115 = a1;
  v114 = a4;
  if (v38 >= v37 / v36)
  {
    v100 = v32;
    v41 = v37 / v36 * v36;
    v103 = v23;
    if (a4 < a2 || a2 + v41 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = a4 + v41;
    if (v41 < 1)
    {
      v69 = a4 + v41;
    }

    else
    {
      v102 = v20;
      v66 = -v36;
      v97 = (v8 + 8);
      v98 = -v36;
      v67 = a4 + v41;
      v68 = v100;
      v69 = v65;
      v109 = a4;
      v110 = a1;
      do
      {
        v93[0] = v69;
        v70 = a2;
        a2 += v66;
        v111 = a2;
        v99 = v70;
        while (1)
        {
          if (v70 <= a1)
          {
            v115 = v70;
            v113 = v93[0];
            goto LABEL_68;
          }

          v106 = a3;
          v107 = v67;
          v94 = v69;
          v108 = v67 + v66;
          sub_100005F04(v67 + v66, v68, &qword_1005AFFE0, &qword_1004D6060);
          v71 = v103;
          sub_100005F04(a2, v103, &qword_1005AFFE0, &qword_1004D6060);
          v72 = v102;
          sub_100005F04(v68, v102, &qword_1005AFFE0, &qword_1004D6060);
          v73 = v95;
          Friend.handle.getter();
          v74 = type metadata accessor for Friend();
          v75 = *(*(v74 - 8) + 8);
          v75(v72, v74);
          v101 = Handle.identifier.getter();
          v77 = v76;
          v78 = *v97;
          v79 = v73;
          v80 = v104;
          (*v97)(v79, v104);
          v81 = v105;
          sub_100005F04(v71, v105, &qword_1005AFFE0, &qword_1004D6060);
          v82 = v96;
          Friend.handle.getter();
          v75(v81, v74);
          v83 = Handle.identifier.getter();
          v85 = v84;
          v78(v82, v80);
          if (v101 == v83 && v77 == v85)
          {
            LODWORD(v101) = 0;
          }

          else
          {
            LODWORD(v101) = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v86 = v106;
          v87 = v98;
          v88 = v106 + v98;
          v89 = *(v112 + 48);
          v90 = type metadata accessor for FriendshipAction();
          v91 = *(*(v90 - 8) + 8);
          v91(v105 + v89, v90);
          v91(v102 + v89, v90);
          sub_100002CE0(v103, &qword_1005AFFE0, &qword_1004D6060);
          v68 = v100;
          sub_100002CE0(v100, &qword_1005AFFE0, &qword_1004D6060);
          a1 = v110;
          a2 = v111;
          v92 = v109;
          if (v101)
          {
            break;
          }

          v69 = v108;
          a3 = v86 + v87;
          if (v86 < v107 || v88 >= v107)
          {
            swift_arrayInitWithTakeFrontToBack();
            v66 = v87;
          }

          else
          {
            v66 = v87;
            if (v86 != v107)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = v69;
          v70 = v99;
          if (v108 <= v92)
          {
            a2 = v99;
            goto LABEL_67;
          }
        }

        a3 = v86 + v87;
        if (v86 < v99 || v88 >= v99)
        {
          swift_arrayInitWithTakeFrontToBack();
          v69 = v94;
          v66 = v87;
        }

        else
        {
          v69 = v94;
          v66 = v87;
          if (v86 != v99)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v67 = v107;
      }

      while (v107 > v92);
    }

LABEL_67:
    v115 = a2;
    v113 = v69;
  }

  else
  {
    v39 = a3;
    v40 = v38 * v36;
    if (a4 < a1 || a1 + v40 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v103 = a4 + v40;
    v113 = a4 + v40;
    if (v40 >= 1 && a2 < v39)
    {
      v102 = (v8 + 8);
      v98 = v36;
      v99 = v39;
      v97 = v34;
      do
      {
        v110 = a1;
        v111 = a2;
        sub_100005F04(a2, v34, &qword_1005AFFE0, &qword_1004D6060);
        v109 = a4;
        v43 = v106;
        sub_100005F04(a4, v106, &qword_1005AFFE0, &qword_1004D6060);
        v44 = v107;
        sub_100005F04(v34, v107, &qword_1005AFFE0, &qword_1004D6060);
        v45 = v100;
        Friend.handle.getter();
        v46 = type metadata accessor for Friend();
        v47 = *(*(v46 - 8) + 8);
        v47(v44, v46);
        v105 = Handle.identifier.getter();
        v49 = v48;
        v50 = *v102;
        v51 = v45;
        v52 = v104;
        (*v102)(v51, v104);
        v53 = v108;
        sub_100005F04(v43, v108, &qword_1005AFFE0, &qword_1004D6060);
        v54 = v101;
        Friend.handle.getter();
        v47(v53, v46);
        v55 = Handle.identifier.getter();
        v57 = v56;
        v50(v54, v52);
        if (v105 == v55 && v49 == v57)
        {
          v58 = 0;
        }

        else
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v59 = *(v112 + 48);
        v60 = type metadata accessor for FriendshipAction();
        v61 = *(*(v60 - 8) + 8);
        v61(v108 + v59, v60);
        v61(v107 + v59, v60);
        sub_100002CE0(v106, &qword_1005AFFE0, &qword_1004D6060);
        v34 = v97;
        sub_100002CE0(v97, &qword_1005AFFE0, &qword_1004D6060);
        v62 = v110;
        a2 = v111;
        a4 = v109;
        v64 = v98;
        v63 = v99;
        if (v58)
        {
          if (v110 < v111 || v110 >= v111 + v98)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v110 != v111)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v64;
        }

        else
        {
          if (v110 < v109 || v110 >= v109 + v98)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v110 != v109)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v114 = a4 + v64;
          a4 += v64;
        }

        a1 = v62 + v64;
        v115 = a1;
      }

      while (a4 < v103 && a2 < v63);
    }
  }

LABEL_68:
  sub_10023C67C(&v115, &v114, &v113);
  return 1;
}

uint64_t sub_10023C4F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10023C584(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10023C598(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Fence();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10023C67C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_10023C76C(void *result, uint64_t a2, void *a3, unsigned int *a4, unsigned int *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_10023D3B4(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

unint64_t *sub_10023C7FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100240804(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_10023C898(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = sub_10024031C(v8, a2, a3, a5);

    return v9;
  }

  return result;
}

void *sub_10023C938(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100027540(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10023CA4C(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  __chkstk_darwin(v3 - 8);
  v38 = &v37 - v4;
  v5 = type metadata accessor for Friend();
  v6 = __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v50 = &v37 - v10;
  result = __chkstk_darwin(v9);
  v42 = &v37 - v13;
  v43 = v12;
  v14 = 0;
  v44 = v1;
  v45 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v39 = v12 + 32;
  v40 = v21;
  v48 = (v12 + 8);
  v49 = v12 + 16;
  v41 = v16;
  if ((v19 & v15) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      do
      {
LABEL_9:
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v25 = v42;
        v24 = v43;
        v26 = *(v43 + 72);
        v27 = *(v45 + 48) + v26 * (v23 | (v14 << 6));
        v46 = *(v43 + 16);
        v47 = v26;
        v46(v42, v27, v5);
        (*(v24 + 32))(v50, v25, v5);
        v28 = *v1;
        if (*(*v1 + 16) && (sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend), v29 = dispatch thunk of Hashable._rawHashValue(seed:)(), v30 = -1 << *(v28 + 32), v31 = v29 & ~v30, ((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
        {
          v32 = ~v30;
          while (1)
          {
            v46(v8, *(v28 + 48) + v31 * v47, v5);
            sub_1000093F8(&qword_1005AE9B8, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
            v33 = dispatch thunk of static Equatable.== infix(_:_:)();
            v34 = *v48;
            (*v48)(v8, v5);
            if (v33)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v35 = v38;
          v36 = v50;
          v1 = v44;
          sub_1001AC818(v50, v38);
          sub_100002CE0(v35, &qword_1005A9188, &unk_1004D80D0);
          result = v34(v36, v5);
        }

        else
        {
LABEL_14:
          v1 = v44;
          sub_1000247D8(v8, v50);
          result = (*v48)(v8, v5);
        }

        v21 = v40;
        v16 = v41;
      }

      while (v20);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10023CE40(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  __chkstk_darwin(v3 - 8);
  v38 = &v37 - v4;
  v5 = type metadata accessor for Device();
  v6 = __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v50 = &v37 - v10;
  result = __chkstk_darwin(v9);
  v42 = &v37 - v13;
  v43 = v12;
  v14 = 0;
  v44 = v1;
  v45 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v39 = v12 + 32;
  v40 = v21;
  v48 = (v12 + 8);
  v49 = v12 + 16;
  v41 = v16;
  if ((v19 & v15) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      do
      {
LABEL_9:
        v23 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v25 = v42;
        v24 = v43;
        v26 = *(v43 + 72);
        v27 = *(v45 + 48) + v26 * (v23 | (v14 << 6));
        v46 = *(v43 + 16);
        v47 = v26;
        v46(v42, v27, v5);
        (*(v24 + 32))(v50, v25, v5);
        v28 = *v1;
        if (*(*v1 + 16) && (sub_1000093F8(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device), v29 = dispatch thunk of Hashable._rawHashValue(seed:)(), v30 = -1 << *(v28 + 32), v31 = v29 & ~v30, ((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
        {
          v32 = ~v30;
          while (1)
          {
            v46(v8, *(v28 + 48) + v31 * v47, v5);
            sub_1000093F8(&qword_1005AE9C8, &type metadata accessor for Device, &protocol conformance descriptor for Device);
            v33 = dispatch thunk of static Equatable.== infix(_:_:)();
            v34 = *v48;
            (*v48)(v8, v5);
            if (v33)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v35 = v38;
          v36 = v50;
          v1 = v44;
          sub_1001ACDF0(v50, v38);
          sub_100002CE0(v35, &qword_1005AA718, &qword_1004C4370);
          result = v34(v36, v5);
        }

        else
        {
LABEL_14:
          v1 = v44;
          sub_100234D0C(v8, v50);
          result = (*v48)(v8, v5);
        }

        v21 = v40;
        v16 = v41;
      }

      while (v20);
    }
  }

  __break(1u);
  return result;
}

void *sub_10023D234(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v10 = &v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_10023D3B4(v10, v8, v6, a2, a3);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_10023C76C(v12, v8, v6, a2, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_10023D3B4(unint64_t *a1, uint64_t a2, void *a3, unsigned int *a4, unsigned int *a5)
{
  v56[0] = a2;
  v57 = a1;
  v76 = type metadata accessor for HandleType();
  v8 = *(v76 - 8);
  v9 = __chkstk_darwin(v76);
  v75 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = v56 - v11;
  v73 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v12 = __chkstk_darwin(v73);
  v72 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = v56 - v14;
  v87 = type metadata accessor for FriendshipAction();
  v15 = *(v87 - 8);
  v16 = __chkstk_darwin(v87);
  v71 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v92 = v56 - v18;
  v19 = type metadata accessor for Friend();
  result = __chkstk_darwin(v19);
  v83 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v23 = 0;
  v77 = a3;
  v24 = a3;
  v25 = result;
  v26 = v24[8];
  v60 = v24 + 8;
  v27 = 1 << *(v24 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v59 = (v27 + 63) >> 6;
  v69 = v21 + 2;
  v68 = v15 + 16;
  v84 = v21;
  v82 = v21 + 1;
  v67 = *a4;
  v66 = (v8 + 104);
  v65 = (v8 + 8);
  v64 = v15 + 8;
  v62 = *a5;
  v85 = v15;
  v61 = (v15 + 104);
  v70 = result;
  while (v29)
  {
    v81 = (v29 - 1) & v29;
    v30 = __clz(__rbit64(v29)) | (v23 << 6);
    v31 = v92;
LABEL_12:
    v34 = v77;
    v35 = v83;
    v36 = v84[2];
    v36(v83, v77[6] + v84[9] * v30, v25);
    v37 = v34[7];
    v38 = v85[9];
    v63 = v30;
    v39 = v85[2];
    v40 = v31;
    v41 = v87;
    v39(v40, v37 + v38 * v30, v87);
    v42 = v86;
    v36(v86, v35, v25);
    v43 = v73;
    v78 = *(v73 + 48);
    v39((v42 + v78), v92, v41);
    v44 = v72;
    sub_100005F04(v42, v72, &qword_1005AFFE0, &qword_1004D6060);
    v79 = *(v43 + 48);
    v45 = v74;
    Friend.type.getter();
    v80 = v84[1];
    v80(v44, v25);
    v46 = v75;
    v47 = v76;
    (*v66)(v75, v67, v76);
    LOBYTE(v43) = static HandleType.== infix(_:_:)();
    v48 = *v65;
    (*v65)(v46, v47);
    v49 = v47;
    v50 = v87;
    v48(v45, v49);
    v51 = v85[1];
    v51(v44 + v79, v50);
    if (v43)
    {
      (*v61)(v71, v62, v50);
      sub_1000093F8(&qword_1005AFFE8, &type metadata accessor for FriendshipAction, &protocol conformance descriptor for FriendshipAction);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v90 == v88 && v91 == v89)
      {
        v54 = v87;
        v51(v71, v87);
        sub_100002CE0(v86, &qword_1005AFFE0, &qword_1004D6060);

        v51(v92, v54);
        v25 = v70;
        result = (v80)(v83, v70);
        v29 = v81;
LABEL_18:
        *(v57 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
        if (__OFADD__(v58++, 1))
        {
          __break(1u);
          return sub_10023DBBC(v57, v56[0], v58, v77);
        }
      }

      else
      {
        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v53 = v87;
        v51(v71, v87);
        sub_100002CE0(v86, &qword_1005AFFE0, &qword_1004D6060);

        v51(v92, v53);
        v25 = v70;
        result = (v80)(v83, v70);
        v29 = v81;
        if (v52)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_100002CE0(v86, &qword_1005AFFE0, &qword_1004D6060);
      v51(v92, v50);
      v25 = v70;
      result = (v80)(v83, v70);
      v29 = v81;
    }
  }

  v32 = v23;
  v31 = v92;
  while (1)
  {
    v23 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v23 >= v59)
    {
      return sub_10023DBBC(v57, v56[0], v58, v77);
    }

    v33 = v60[v23];
    ++v32;
    if (v33)
    {
      v81 = (v33 - 1) & v33;
      v30 = __clz(__rbit64(v33)) | (v23 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10023DBBC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = type metadata accessor for FriendshipAction();
  v54 = *(v58 - 8);
  v8 = __chkstk_darwin(v58);
  v57 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = v44 - v10;
  v11 = type metadata accessor for Friend();
  v53 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v56 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = v44 - v14;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10004B564(&qword_1005B0058, &qword_1004D15B0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_26:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10023E060(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = type metadata accessor for Location();
  v54 = *(v58 - 8);
  v8 = __chkstk_darwin(v58);
  v57 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = v44 - v10;
  v11 = type metadata accessor for Handle();
  v53 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v56 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = v44 - v14;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10004B564(&qword_1005B0008, &qword_1004D1570);
  result = static _DictionaryStorage.allocate(capacity:)();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_26:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_10023E504(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

void *sub_10023E65C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10023E7B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v38 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = (&v34 - v12);
  v41 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v14 - 32);
    v36 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v37 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v41;
      v28 = *(v41 + 48);
      v29 = type metadata accessor for Friend();
      (*(*(v29 - 8) + 16))(v10, v28 + *(*(v29 - 8) + 72) * v26, v29);
      v30 = *(v27 + 56);
      v31 = type metadata accessor for FriendshipAction();
      (*(*(v31 - 8) + 16))(&v10[*(v40 + 48)], v30 + *(*(v31 - 8) + 72) * v26, v31);
      a1 = v39;
      sub_1000176A8(v10, v39, &qword_1005AFFE0, &qword_1004D6060);
      sub_1000176A8(a1, a2, &qword_1005AFFE0, &qword_1004D6060);
      a3 = v37;
      if (v21 == v37)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      result = v21;
      v32 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v33 = v19 + 1;
    }

    else
    {
      v33 = v20;
    }

    v25 = v33 - 1;
    a3 = result;
LABEL_23:
    v16 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10023EAC0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}