void *sub_10061642C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A59B8, &qword_1013B34D8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v71 - v8;
  v10 = type metadata accessor for BeaconIdentifier(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v89 = &v71 - v16;
  v17 = __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v87 = (&v71 - v18);
  v86 = v19;
  v74 = v7;
  v71 = 0;
  v21 = a1 + 56;
  v20 = *(a1 + 56);
  v22 = -1 << *(a1 + 32);
  v84 = ~v22;
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v75 = (63 - v22) >> 6;
  v83 = (v11 + 56);
  v82 = (v11 + 48);
  v91 = a2 + 7;

  v26 = 0;
  v73 = v11;
  v81 = a1;
  v88 = v10;
  v80 = a1 + 56;
  v72 = v9;
  while (1)
  {
    v27 = v24;
    v28 = v26;
    v90 = v24;
    if (v24)
    {
LABEL_16:
      v24 = (v27 - 1) & v27;
      sub_10062CD24(*(a1 + 48) + *(v11 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v9, type metadata accessor for BeaconIdentifier);
      v32 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v75 <= (v26 + 1) ? v26 + 1 : v75;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_60;
        }

        if (v28 >= v75)
        {
          break;
        }

        v27 = *(v21 + 8 * v28);
        ++v31;
        if (v27)
        {
          v11 = v73;
          goto LABEL_16;
        }
      }

      v24 = 0;
      v32 = 1;
    }

    v79 = *v83;
    v79(v9, v32, 1, v10);
    v92 = a1;
    v93 = v21;
    v94 = v84;
    v95 = v30;
    v96 = v24;
    v78 = *v82;
    if (v78(v9, 1, v10) == 1)
    {
      sub_10000B3A8(v9, &qword_1016A59B8, &qword_1013B34D8);
      sub_1000128F8(a1);
      return a2;
    }

    sub_10062CC64(v9, v87, type metadata accessor for BeaconIdentifier);
    Hasher.init(_seed:)();
    v33 = type metadata accessor for UUID();
    v34 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v85 = *(v10 + 20);
    v77 = v33;
    v76 = v34;
    dispatch thunk of Hashable.hash(into:)();
    v35 = Hasher._finalize()();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v9 = 1 << v26;
    if (((1 << v26) & v91[v26 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_10062CBB8(v87, type metadata accessor for BeaconIdentifier);
    v26 = v30;
    v10 = v88;
    v21 = v80;
    v9 = v72;
    v11 = v73;
    a1 = v81;
  }

  v37 = ~v36;
  v90 = *(v73 + 72);
  while (1)
  {
    v38 = v86;
    sub_10062CD24(a2[6] + v90 * v26, v86, type metadata accessor for BeaconIdentifier);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    sub_10062CBB8(v38, type metadata accessor for BeaconIdentifier);
LABEL_21:
    v26 = (v26 + 1) & v37;
    v28 = v26 >> 6;
    v9 = 1 << v26;
    if ((v91[v26 >> 6] & (1 << v26)) == 0)
    {
      goto LABEL_6;
    }
  }

  v39 = static UUID.== infix(_:_:)();
  v40 = v38;
  v41 = v39;
  sub_10062CBB8(v40, type metadata accessor for BeaconIdentifier);
  if ((v41 & 1) == 0)
  {
    goto LABEL_21;
  }

  v42 = sub_10062CBB8(v87, type metadata accessor for BeaconIdentifier);
  v43 = *(a2 + 32);
  v73 = ((1 << v43) + 63) >> 6;
  v25 = 8 * v73;
  a1 = v81;
  if ((v43 & 0x3Fu) > 0xD)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v85 = &v71;
    __chkstk_darwin(v42);
    v45 = &v71 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v45, v91, v44);
    v46 = *&v45[8 * v28] & ~v9;
    v47 = a2[2];
    v87 = v45;
    *&v45[8 * v28] = v46;
    v48 = v47 - 1;
    v28 = v74;
    v49 = v88;
    v26 = v89;
    v50 = v80;
    v51 = v75;
LABEL_28:
    v86 = v48;
LABEL_30:
    while (2)
    {
      if (v24)
      {
        v52 = v30;
LABEL_40:
        v55 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        sub_10062CD24(*(a1 + 48) + (v55 | (v52 << 6)) * v90, v28, type metadata accessor for BeaconIdentifier);
        v56 = 0;
LABEL_41:
        v79(v28, v56, 1, v49);
        v92 = a1;
        v93 = v50;
        v94 = v84;
        v95 = v30;
        v96 = v24;
        if (v78(v28, 1, v49) == 1)
        {
          sub_10000B3A8(v28, &qword_1016A59B8, &qword_1013B34D8);
          a2 = sub_10060D244(v87, v73, v86, a2);
          goto LABEL_55;
        }

        sub_10062CC64(v28, v26, type metadata accessor for BeaconIdentifier);
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        dispatch thunk of Hashable.hash(into:)();
        v57 = Hasher._finalize()();
        v58 = a2;
        v59 = -1 << *(a2 + 32);
        v60 = v57 & ~v59;
        v9 = v60 >> 6;
        v61 = 1 << v60;
        if (((1 << v60) & v91[v60 >> 6]) == 0)
        {
LABEL_29:
          v26 = v89;
          sub_10062CBB8(v89, type metadata accessor for BeaconIdentifier);
          a2 = v58;
          a1 = v81;
          v28 = v74;
          v49 = v88;
          v50 = v80;
          v51 = v75;
          continue;
        }

        v62 = ~v59;
        while (1)
        {
          sub_10062CD24(v58[6] + v60 * v90, v14, type metadata accessor for BeaconIdentifier);
          if (static UUID.== infix(_:_:)())
          {
            v63 = static UUID.== infix(_:_:)();
            sub_10062CBB8(v14, type metadata accessor for BeaconIdentifier);
            if (v63)
            {
              v26 = v89;
              sub_10062CBB8(v89, type metadata accessor for BeaconIdentifier);
              v49 = v88;
              v64 = v87[v9];
              v87[v9] = v64 & ~v61;
              v65 = (v64 & v61) == 0;
              a2 = v58;
              a1 = v81;
              v28 = v74;
              v50 = v80;
              v51 = v75;
              if (!v65)
              {
                v48 = v86 - 1;
                if (__OFSUB__(v86, 1))
                {
                  __break(1u);
                }

                if (v86 == 1)
                {

                  a2 = &_swiftEmptySetSingleton;
                  goto LABEL_55;
                }

                goto LABEL_28;
              }

              goto LABEL_30;
            }
          }

          else
          {
            sub_10062CBB8(v14, type metadata accessor for BeaconIdentifier);
          }

          v60 = (v60 + 1) & v62;
          v9 = v60 >> 6;
          v61 = 1 << v60;
          if ((v91[v60 >> 6] & (1 << v60)) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      break;
    }

    v53 = v51 <= (v30 + 1) ? v30 + 1 : v51;
    v54 = v53 - 1;
    while (1)
    {
      v52 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v24 = 0;
        v56 = 1;
        v30 = v54;
        goto LABEL_41;
      }

      v24 = *(v50 + 8 * v52);
      ++v30;
      if (v24)
      {
        v30 = v52;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    v67 = v25;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v91, v67);
  v69 = v71;
  v70 = sub_10061AFB4(v68, v73, a2, v26, &v92);

  if (v69)
  {

    __break(1u);
  }

  else
  {

    a2 = v70;
LABEL_55:
    sub_1000128F8(v92);
    return a2;
  }

  return result;
}

void *sub_100616F34(uint64_t a1, void *a2)
{

  return sub_100617004(a1, a2, &unk_1016BBEC0, &qword_1013B3518);
}

void *sub_100616F9C(uint64_t a1, void *a2)
{

  return sub_100617004(a1, a2, &qword_1016BBF80, &unk_1013B3540);
}

void *sub_100617004(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v37 = a3;
  v38 = a4;
  v41[0] = a1;
  v39 = *(a1 + 16);
  if (v39)
  {
    v6 = 0;
    v7 = a2 + 7;
    v8 = a1 + 32;
    do
    {
      v9 = *(v6 + v8);
      v6 = (v6 + 1);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      v10 = Hasher._finalize()();
      v11 = -1 << *(v4 + 32);
      v12 = v10 & ~v11;
      v13 = v12 >> 6;
      v14 = 1 << v12;
      if (((1 << v12) & v7[v12 >> 6]) != 0)
      {
        v15 = v4[6];
        if (*(v15 + v12) == v9)
        {
LABEL_9:
          v41[1] = v6;
          v16 = (63 - v11) >> 6;
          v17 = 8 * v16;
          v36 = v16;
          if (v16 > 0x80)
          {
            goto LABEL_30;
          }

          {
            v39 = &v35;
            __chkstk_darwin(i);
            v20 = (&v35 - v19);
            memcpy(&v35 - v19, v4 + 7, v17);
            v21 = v4[2];
            v20[v13] &= ~v14;
            v14 = v21 - 1;
            v22 = *(a1 + 16);
            if (v6 == v22)
            {
              break;
            }

            v17 = 1;
            while (v6 < v22)
            {
              v13 = *(v6 + v8);
              Hasher.init(_seed:)();
              v12 = v40;
              Hasher._combine(_:)(v13);
              v24 = Hasher._finalize()();
              v25 = -1 << *(v4 + 32);
              v26 = v24 & ~v25;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v7[v26 >> 6]) != 0)
              {
                v29 = v4[6];
                if (*(v29 + v26) == v13)
                {
LABEL_24:
                  v31 = v20[v27];
                  v20[v27] = v31 & ~v28;
                  if ((v31 & v28) != 0)
                  {
                    if (__OFSUB__(v14--, 1))
                    {
                      goto LABEL_29;
                    }

                    if (!v14)
                    {

                      v4 = &_swiftEmptySetSingleton;
                      goto LABEL_13;
                    }
                  }
                }

                else
                {
                  v30 = ~v25;
                  while (1)
                  {
                    v26 = (v26 + 1) & v30;
                    v27 = v26 >> 6;
                    v28 = 1 << v26;
                    if (((1 << v26) & v7[v26 >> 6]) == 0)
                    {
                      break;
                    }

                    if (*(v29 + v26) == v13)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }

              v6 = (v6 + 1);
              v22 = *(a1 + 16);
              if (v6 == v22)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:

            if (!swift_stdlib_isStackAllocationSafe())
            {
              v33 = swift_slowAlloc();
              memcpy(v33, v4 + 7, v17);
              v34 = sub_10061B494(v33, v36, v4, v12, v41, v37, v38);

              return v34;
            }
          }

LABEL_12:
          v4 = sub_10060D588(v20, v36, v14, v4, v37, v38);
LABEL_13:

          return v4;
        }

        while (1)
        {
          v12 = (v12 + 1) & ~v11;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if (((1 << v12) & v7[v12 >> 6]) == 0)
          {
            break;
          }

          if (*(v15 + v12) == v9)
          {
            goto LABEL_9;
          }
        }
      }
    }

    while (v6 != v39);
  }

  return v4;
}

char *sub_1006173A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v46 = a2;
  v9 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v9 - 8);
  v53 = &v45 - v10;
  v52 = type metadata accessor for SharedBeaconRecord(0);
  v11 = __chkstk_darwin(v52);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v48 = a1;
  v49 = &v45 - v15;
  v16 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v17 = v16 - 1;
  v50 = (v18 + 48);
  v51 = (v18 + 56);
  v57 = a3;
  v54 = v18;
  v55 = a3 + 56;
  while (2)
  {
    v47 = v17;
    do
    {
      while (1)
      {
        v19 = *a5;
        v20 = a5[1];
        v22 = a5[2];
        v21 = a5[3];
        v23 = a5[4];
        if (!v23)
        {
          v25 = (v22 + 64) >> 6;
          if (v25 <= v21 + 1)
          {
            v26 = v21 + 1;
          }

          else
          {
            v26 = (v22 + 64) >> 6;
          }

          v27 = v26 - 1;
          while (1)
          {
            v24 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            if (v24 >= v25)
            {
              v28 = 0;
              v30 = 1;
              v29 = v53;
              goto LABEL_14;
            }

            v23 = *(v20 + 8 * v24);
            ++v21;
            if (v23)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v24 = a5[3];
LABEL_13:
        v28 = (v23 - 1) & v23;
        v29 = v53;
        sub_10062CD24(*(v19 + 48) + *(v54 + 72) * (__clz(__rbit64(v23)) | (v24 << 6)), v53, type metadata accessor for SharedBeaconRecord);
        v30 = 0;
        v27 = v24;
LABEL_14:
        v31 = v52;
        (*v51)(v29, v30, 1, v52);
        *a5 = v19;
        a5[1] = v20;
        a5[2] = v22;
        a5[3] = v27;
        a5[4] = v28;
        if ((*v50)(v29, 1, v31) == 1)
        {
          sub_10000B3A8(v29, &unk_101698C30, &unk_101392630);
          v44 = v57;

          return sub_10060B28C(v48, v46, v47, v44);
        }

        v32 = v49;
        sub_10062CC64(v29, v49, type metadata accessor for SharedBeaconRecord);
        v33 = v57;
        Hasher.init(_seed:)();
        sub_1011D8230(v56);
        v34 = Hasher._finalize()();
        v35 = -1 << *(v33 + 32);
        v36 = v34 & ~v35;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if (((1 << v36) & *(v55 + 8 * (v36 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_10062CBB8(v32, type metadata accessor for SharedBeaconRecord);
      }

      v39 = *(v54 + 72);
      sub_10062CD24(*(v57 + 48) + v39 * v36, v13, type metadata accessor for SharedBeaconRecord);
      v40 = sub_1011DB3D8(v13, v32);
      sub_10062CBB8(v13, type metadata accessor for SharedBeaconRecord);
      if (!v40)
      {
        v41 = ~v35;
        do
        {
          v36 = (v36 + 1) & v41;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v55 + 8 * (v36 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_10062CD24(*(v57 + 48) + v39 * v36, v13, type metadata accessor for SharedBeaconRecord);
          v42 = sub_1011DB3D8(v13, v32);
          sub_10062CBB8(v13, type metadata accessor for SharedBeaconRecord);
        }

        while (!v42);
      }

      result = sub_10062CBB8(v32, type metadata accessor for SharedBeaconRecord);
      v43 = v48[v37];
      v48[v37] = v43 & ~v38;
    }

    while ((v43 & v38) == 0);
    v17 = v47 - 1;
    if (__OFSUB__(v47, 1))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (v47 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

unint64_t *sub_100617828(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v34 = a3 + 56;
  v32 = a5;
LABEL_2:
  v30 = v7;
LABEL_4:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_10:
      v13 = *(*a5 + 48) + 24 * (__clz(__rbit64(v9)) | (v10 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v34 + 8 * (v19 >> 6))) == 0)
      {
LABEL_3:

        a5 = v32;
        v5 = a3;
        continue;
      }

      v22 = ~v18;
      v23 = *(v5 + 48);
      while (1)
      {
        v24 = v23 + 24 * v19;
        v25 = *(v24 + 16);
        if (*v24 == v15 && *(v24 + 8) == v14)
        {
          if (v16 == v25)
          {
            goto LABEL_20;
          }
        }

        else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v16 ^ v25) & 1) == 0)
        {
LABEL_20:

          a5 = v32;
          v27 = v31[v20];
          v31[v20] = v27 & ~v21;
          v5 = a3;
          if ((v27 & v21) != 0)
          {
            v7 = v30 - 1;
            if (__OFSUB__(v30, 1))
            {
LABEL_29:
              __break(1u);
              return result;
            }

            if (v30 == 1)
            {
              return &_swiftEmptySetSingleton;
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if ((*(v34 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v28 = v8 + 1;
  }

  else
  {
    v28 = (a5[2] + 64) >> 6;
  }

  a5[3] = v28 - 1;
  a5[4] = 0;

  return sub_10060B4EC(v31, a2, v30, v5);
}

void *sub_100617A78(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v88 = a3 + 56;
  v81 = a5;
LABEL_2:
  v76 = v7;
  while (1)
  {
LABEL_4:
    v8 = a5[3];
    v9 = a5[4];
    if (!v9)
    {
      v11 = (a5[2] + 64) >> 6;
      v12 = a5[3];
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= v11)
        {
          if (v11 <= v8 + 1)
          {
            v70 = v8 + 1;
          }

          else
          {
            v70 = (a5[2] + 64) >> 6;
          }

          a5[3] = v70 - 1;
          a5[4] = 0;

          return sub_10060B738(a1, a2, v76, v5);
        }

        v9 = *(a5[1] + 8 * v10);
        ++v12;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
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
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
    }

    v10 = a5[3];
LABEL_10:
    v13 = (*(*a5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v10;
    a5[4] = (v9 - 1) & v9;
    Hasher.init(_seed:)();
    sub_100017D5C(v15, v14);
    Data.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = v88;
    v21 = 1 << v18;
    v93 = v14;
    v94 = v15;
    if (((1 << v18) & *(v88 + 8 * (v18 >> 6))) != 0)
    {
      break;
    }

LABEL_3:
    sub_100016590(v94, v93);
    a5 = v81;
  }

  v22 = ~v17;
  v23 = v14 >> 62;
  if (v15)
  {
    v24 = 0;
  }

  else
  {
    v24 = v14 == 0xC000000000000000;
  }

  v25 = !v24;
  v91 = v25;
  v80 = HIDWORD(v15);
  v26 = __OFSUB__(HIDWORD(v15), v15);
  v86 = v26;
  v85 = HIDWORD(v15) - v15;
  v92 = BYTE6(v14);
  v82 = v15;
  v78 = (v15 >> 32) - v15;
  v79 = v15 >> 32;
  v90 = v22;
  while (1)
  {
    v27 = (*(v5 + 48) + 16 * v18);
    v28 = *v27;
    v29 = v27[1];
    v30 = v29 >> 62;
    if (v29 >> 62 == 3)
    {
      if (v28)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29 == 0xC000000000000000;
      }

      v33 = !v31 || v23 < 3;
      if (((v33 | v91) & 1) == 0)
      {
        v66 = 0;
        v67 = 0xC000000000000000;
        goto LABEL_124;
      }

LABEL_45:
      v34 = 0;
      if (v23 <= 1)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_45;
      }

      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v37)
      {
        goto LABEL_135;
      }

      if (v23 <= 1)
      {
        goto LABEL_42;
      }
    }

    else if (v30)
    {
      LODWORD(v34) = HIDWORD(v28) - v28;
      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_136;
      }

      v34 = v34;
      if (v23 <= 1)
      {
LABEL_42:
        v38 = v92;
        if (v23)
        {
          v38 = v85;
          if (v86)
          {
            goto LABEL_134;
          }
        }

        goto LABEL_48;
      }
    }

    else
    {
      v34 = BYTE6(v29);
      if (v23 <= 1)
      {
        goto LABEL_42;
      }
    }

LABEL_46:
    if (v23 != 2)
    {
      if (!v34)
      {
        goto LABEL_123;
      }

      goto LABEL_22;
    }

    v40 = *(v94 + 16);
    v39 = *(v94 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
      goto LABEL_133;
    }

LABEL_48:
    if (v34 != v38)
    {
      goto LABEL_22;
    }

    if (v34 < 1)
    {
      goto LABEL_123;
    }

    if (v30 <= 1)
    {
      if (!v30)
      {
        *v96 = v28;
        *&v96[8] = v29;
        v96[10] = BYTE2(v29);
        v96[11] = BYTE3(v29);
        v96[12] = BYTE4(v29);
        v96[13] = BYTE5(v29);
        sub_100017D5C(v28, v29);
        sub_100771A28(v96, v94, v93, &v95);
        if (v89)
        {
          goto LABEL_158;
        }

        sub_100016590(v28, v29);
        v22 = v90;
        if (v95)
        {
          goto LABEL_123;
        }

        goto LABEL_22;
      }

      if (v28 > v28 >> 32)
      {
        goto LABEL_137;
      }

      sub_100017D5C(v28, v29);
      v45 = __DataStorage._bytes.getter();
      if (v45)
      {
        v46 = v45;
        v47 = __DataStorage._offset.getter();
        if (__OFSUB__(v28, v47))
        {
          goto LABEL_139;
        }

        __s1a = (v28 - v47 + v46);
      }

      else
      {
        __s1a = 0;
      }

      __DataStorage._length.getter();
      v5 = a3;
      if (v23 != 2)
      {
        if (v23 == 1)
        {
          if (v79 < v82)
          {
            goto LABEL_142;
          }

          v48 = __DataStorage._bytes.getter();
          if (v48)
          {
            v53 = __DataStorage._offset.getter();
            if (__OFSUB__(v82, v53))
            {
              goto LABEL_147;
            }

            v48 += v82 - v53;
          }

          v54 = __DataStorage._length.getter();
          v51 = v78;
          if (v54 < v78)
          {
            v51 = v54;
          }

          v5 = a3;
          v52 = __s1a;
          if (!__s1a)
          {
            goto LABEL_150;
          }

          v20 = v88;
          if (!v48)
          {
            goto LABEL_152;
          }

          goto LABEL_118;
        }

        v20 = v88;
        v52 = __s1a;
        *v96 = v94;
        v96[4] = v80;
        *&v96[5] = *(&v94 + 5);
        v96[7] = HIBYTE(v94);
        *&v96[8] = v93;
        *&v96[12] = WORD2(v93);
        if (!__s1a)
        {
          goto LABEL_149;
        }

LABEL_102:
        v59 = v96;
        v60 = v92;
LABEL_120:
        v65 = memcmp(v52, v59, v60);
        sub_100016590(v28, v29);
        v22 = v90;
        if (!v65)
        {
          goto LABEL_123;
        }

        goto LABEL_22;
      }

      v72 = *(v94 + 24);
      v74 = *(v94 + 16);
      v48 = __DataStorage._bytes.getter();
      if (v48)
      {
        v57 = __DataStorage._offset.getter();
        v58 = v74;
        if (__OFSUB__(v74, v57))
        {
          goto LABEL_146;
        }

        v48 += v74 - v57;
      }

      else
      {
        v58 = v74;
      }

      v63 = v72 - v58;
      if (__OFSUB__(v72, v58))
      {
        goto LABEL_143;
      }

      v64 = __DataStorage._length.getter();
      if (v64 >= v63)
      {
        v51 = v63;
      }

      else
      {
        v51 = v64;
      }

      v52 = __s1a;
      if (!__s1a)
      {
        goto LABEL_157;
      }

      v5 = a3;
      v20 = v88;
      if (!v48)
      {
        goto LABEL_156;
      }

LABEL_118:
      if (v52 == v48)
      {
        sub_100016590(v28, v29);
LABEL_123:
        v67 = v93;
        v66 = v94;
LABEL_124:
        sub_100016590(v66, v67);
        v68 = a1[v19];
        a1[v19] = v68 & ~v21;
        a5 = v81;
        if ((v68 & v21) == 0)
        {
          goto LABEL_4;
        }

        v7 = v76 - 1;
        if (__OFSUB__(v76, 1))
        {
          goto LABEL_148;
        }

        if (v76 == 1)
        {
          return &_swiftEmptySetSingleton;
        }

        goto LABEL_2;
      }

      v60 = v51;
      v59 = v48;
      goto LABEL_120;
    }

    if (v30 == 2)
    {
      break;
    }

    *&v96[6] = 0;
    *v96 = 0;
    sub_100017D5C(v28, v29);
    sub_100771A28(v96, v94, v93, &v95);
    if (v89)
    {
      goto LABEL_158;
    }

    sub_100016590(v28, v29);
    v22 = v90;
    if (v95)
    {
      goto LABEL_123;
    }

LABEL_22:
    v18 = (v18 + 1) & v22;
    v19 = v18 >> 6;
    v21 = 1 << v18;
    if ((*(v20 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_3;
    }
  }

  v41 = *(v28 + 16);
  sub_100017D5C(v28, v29);
  v42 = __DataStorage._bytes.getter();
  if (v42)
  {
    v43 = v42;
    v44 = __DataStorage._offset.getter();
    if (__OFSUB__(v41, v44))
    {
      goto LABEL_138;
    }

    __s1 = (v41 - v44 + v43);
  }

  else
  {
    __s1 = 0;
  }

  __DataStorage._length.getter();
  v5 = a3;
  if (v23 == 2)
  {
    v71 = *(v94 + 24);
    v73 = *(v94 + 16);
    v48 = __DataStorage._bytes.getter();
    if (v48)
    {
      v55 = __DataStorage._offset.getter();
      v56 = v73;
      if (__OFSUB__(v73, v55))
      {
        goto LABEL_144;
      }

      v48 += v73 - v55;
    }

    else
    {
      v56 = v73;
    }

    v61 = v71 - v56;
    if (__OFSUB__(v71, v56))
    {
      goto LABEL_141;
    }

    v62 = __DataStorage._length.getter();
    if (v62 >= v61)
    {
      v51 = v61;
    }

    else
    {
      v51 = v62;
    }

    v52 = __s1;
    if (!__s1)
    {
      goto LABEL_154;
    }

    v5 = a3;
    v20 = v88;
    if (!v48)
    {
      goto LABEL_155;
    }

    goto LABEL_118;
  }

  if (v23 == 1)
  {
    if (v79 < v82)
    {
      goto LABEL_140;
    }

    v48 = __DataStorage._bytes.getter();
    if (v48)
    {
      v49 = __DataStorage._offset.getter();
      if (__OFSUB__(v82, v49))
      {
        goto LABEL_145;
      }

      v48 += v82 - v49;
    }

    v50 = __DataStorage._length.getter();
    v51 = v78;
    if (v50 < v78)
    {
      v51 = v50;
    }

    v5 = a3;
    v52 = __s1;
    if (!__s1)
    {
      goto LABEL_151;
    }

    v20 = v88;
    if (!v48)
    {
      goto LABEL_153;
    }

    goto LABEL_118;
  }

  v20 = v88;
  v52 = __s1;
  *v96 = v94;
  v96[4] = v80;
  *&v96[5] = *(&v94 + 5);
  v96[7] = HIBYTE(v94);
  *&v96[8] = v93;
  *&v96[12] = WORD2(v93);
  if (__s1)
  {
    goto LABEL_102;
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:

  __break(1u);
  return result;
}

uint64_t sub_100618338(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = static Hasher._hash(seed:_:)();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_10060B960(v8, a2, v10, a3);
}

void *sub_1006184F4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
          v45 = v61;

          return sub_10060AF64(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_100009774(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

Swift::Int sub_1006189C8(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v36 = result;
  v5 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v38 = a3 + 56;
LABEL_2:
  v35 = v6;
  while (1)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      break;
    }

    v9 = a5[3];
LABEL_9:
    v12 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v13 = -1 << *(a3 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v38 + 8 * (v14 >> 6))) != 0)
    {
      v17 = ~v13;
      v18 = v12;
LABEL_11:
      v19 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
      switch(*(*(a3 + 48) + v14))
      {
        case 1:
          v20 = 0xD000000000000015;
          v19 = 0x8000000101347FF0;
          break;
        case 2:
          v20 = 0xD000000000000016;
          v19 = 0x8000000101348010;
          break;
        case 3:
          v19 = 0xE600000000000000;
          v20 = 0x657461636F6CLL;
          break;
        case 4:
          v19 = 0xEC000000676E6972;
          v20 = 0x6168537472617473;
          break;
        case 5:
          v20 = 0x72616853706F7473;
          goto LABEL_26;
        case 6:
          v22 = 2036427888;
          goto LABEL_30;
        case 7:
          v22 = 1886352499;
LABEL_30:
          v20 = v22 | 0x6E756F5300000000;
          v19 = 0xE900000000000064;
          break;
        case 8:
          v20 = 0x61654C6E69676562;
          v19 = 0xED0000676E696873;
          break;
        case 9:
          v20 = 0x687361654C646E65;
LABEL_26:
          v19 = 0xEB00000000676E69;
          break;
        case 0xA:
          v20 = 0x4654426E69676562;
          v19 = 0xEE00676E69646E69;
          break;
        case 0xB:
          v20 = 0x6E69465442646E65;
          v21 = 1735289188;
          goto LABEL_37;
        case 0xC:
          v19 = 0xEC000000676E6967;
          v20 = 0x6E61526E69676562;
          break;
        case 0xD:
          v20 = 0x69676E6152646E65;
          v19 = 0xEA0000000000676ELL;
          break;
        case 0xE:
          v20 = 0x6F4C656C62616E65;
          v19 = 0xEE0065646F4D7473;
          break;
        case 0xF:
          v20 = 0x4C656C6261736964;
          v19 = 0xEF65646F4D74736FLL;
          break;
        case 0x10:
          v19 = 0xE600000000000000;
          v20 = 0x656D616E6572;
          break;
        case 0x11:
          v20 = 0x7463656E6E6F63;
          break;
        case 0x12:
          v19 = 0xEA00000000007463;
          v20 = 0x656E6E6F63736964;
          break;
        case 0x13:
          v20 = 0xD000000000000017;
          v19 = 0x80000001013480F0;
          break;
        case 0x14:
          v19 = 0xE600000000000000;
          v20 = 0x726961706E75;
          break;
        case 0x15:
          v20 = 0x65746167656C6564;
          v19 = 0xEE00657261685364;
          break;
        case 0x16:
          v20 = 0xD000000000000013;
          v19 = 0x8000000101348120;
          break;
        case 0x17:
          v20 = 0x6F69736963657270;
          v21 = 1481004654;
LABEL_37:
          v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v23 = 0xE700000000000000;
      v24 = 0x6E776F6E6B6E75;
      switch(v18)
      {
        case 1:
          v23 = 0x8000000101347FF0;
          if (v20 == 0xD000000000000015)
          {
            goto LABEL_81;
          }

          goto LABEL_82;
        case 2:
          v23 = 0x8000000101348010;
          if (v20 != 0xD000000000000016)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 3:
          v23 = 0xE600000000000000;
          if (v20 != 0x657461636F6CLL)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 4:
          v23 = 0xEC000000676E6972;
          if (v20 != 0x6168537472617473)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 5:
          v29 = 0x72616853706F7473;
          goto LABEL_62;
        case 6:
          v30 = 2036427888;
          goto LABEL_68;
        case 7:
          v30 = 1886352499;
LABEL_68:
          v23 = 0xE900000000000064;
          if (v20 != (v30 | 0x6E756F5300000000))
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 8:
          v23 = 0xED0000676E696873;
          if (v20 != 0x61654C6E69676562)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 9:
          v29 = 0x687361654C646E65;
LABEL_62:
          v23 = 0xEB00000000676E69;
          if (v20 != v29)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 10:
          v25 = 0x4654426E69676562;
          v26 = 0x676E69646E69;
          goto LABEL_73;
        case 11:
          v27 = 0x6E69465442646E65;
          v28 = 1735289188;
          goto LABEL_86;
        case 12:
          v23 = 0xEC000000676E6967;
          if (v20 != 0x6E61526E69676562)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 13:
          v23 = 0xEA0000000000676ELL;
          if (v20 != 0x69676E6152646E65)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 14:
          v25 = 0x6F4C656C62616E65;
          v26 = 0x65646F4D7473;
          goto LABEL_73;
        case 15:
          v23 = 0xEF65646F4D74736FLL;
          if (v20 != 0x4C656C6261736964)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 16:
          v23 = 0xE600000000000000;
          if (v20 != 0x656D616E6572)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 17:
          if (v20 != 0x7463656E6E6F63)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 18:
          v23 = 0xEA00000000007463;
          if (v20 != 0x656E6E6F63736964)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 19:
          v24 = 0xD000000000000017;
          v23 = 0x80000001013480F0;
          goto LABEL_80;
        case 20:
          v23 = 0xE600000000000000;
          if (v20 != 0x726961706E75)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 21:
          v25 = 0x65746167656C6564;
          v26 = 0x657261685364;
LABEL_73:
          v23 = v26 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v20 != v25)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 22:
          v23 = 0x8000000101348120;
          if (v20 != 0xD000000000000013)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        case 23:
          v27 = 0x6F69736963657270;
          v28 = 1481004654;
LABEL_86:
          v23 = v28 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v20 != v27)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        default:
LABEL_80:
          if (v20 != v24)
          {
            goto LABEL_82;
          }

LABEL_81:
          if (v19 != v23)
          {
LABEL_82:
            v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v31)
            {
              goto LABEL_89;
            }

            v14 = (v14 + 1) & v17;
            v15 = v14 >> 6;
            v16 = 1 << v14;
            if ((*(v38 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
            {
              continue;
            }

            goto LABEL_11;
          }

LABEL_89:
          v32 = v36[v15];
          v36[v15] = v32 & ~v16;
          if ((v32 & v16) == 0)
          {
            continue;
          }

          v6 = v35 - 1;
          if (__OFSUB__(v35, 1))
          {
LABEL_98:
            __break(1u);
            return result;
          }

          if (v35 == 1)
          {
            return &_swiftEmptySetSingleton;
          }

          break;
      }

      goto LABEL_2;
    }
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_98;
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (v10 <= v7 + 1)
  {
    v33 = v7 + 1;
  }

  else
  {
    v33 = (a5[2] + 64) >> 6;
  }

  a5[3] = v33 - 1;
  a5[4] = 0;

  return sub_10060BB4C(v36, a2, v35, a3);
}

void sub_100619494(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v107 = a2;
  v139 = type metadata accessor for UUID();
  v11 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v107 - v17;
  v125 = type metadata accessor for OwnerSharingCircle(0);
  v112 = *(v125 - 8);
  v19 = __chkstk_darwin(v125);
  v21 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v111 = &v107 - v23;
  __chkstk_darwin(v22);
  v127 = (&v107 - v24);
  v25 = a3[2];
  v26 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v27 = *(a1 + v26) & ((-1 << a4) - 1);
  v108 = a1;
  *(a1 + v26) = v27;
  v109 = v25 - 1;
  v28 = *a5;
  v29 = a5[1];
  v30 = *(*a5 + 16);
  if (v29 == v30)
  {
LABEL_2:

    sub_10060C04C(v108, v107, v109, a3);
    return;
  }

  v130 = v11 + 16;
  v137 = (v11 + 32);
  v135 = (v11 + 8);
  v129 = a3 + 7;
  v133 = v16;
  v131 = v18;
  v115 = a3;
  v110 = a5;
  v132 = v11;
  v114 = v21;
  while (1)
  {
    if (v29 >= v30)
    {
      goto LABEL_107;
    }

    v120 = v6;
    v31 = v28 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
    v128 = *(v112 + 72);
    v32 = v111;
    sub_10062CD24(v31 + v128 * v29, v111, type metadata accessor for OwnerSharingCircle);
    a5[1] = v29 + 1;
    v33 = v127;
    sub_10062CC64(v32, v127, type metadata accessor for OwnerSharingCircle);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    v34 = v125;
    v35 = *(v125 + 20);
    v36 = sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v124 = v35;
    dispatch thunk of Hashable.hash(into:)();
    v121 = v34[6];
    v136 = v36;
    dispatch thunk of Hashable.hash(into:)();
    v116 = *(v33 + v34[7]);
    Hasher._combine(_:)(v116);
    v37 = *(v33 + v34[8]);
    v38 = *(v37 + 64);
    v126 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & v38;
    v42 = (v39 + 63) >> 6;
    v134 = v37;

    v43 = 0;
    v140 = 0;
    if (!v41)
    {
LABEL_10:
      if (v42 <= v43 + 1)
      {
        v45 = v43 + 1;
      }

      else
      {
        v45 = v42;
      }

      v46 = v45 - 1;
      while (1)
      {
        v44 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v44 >= v42)
        {
          v62 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
          (*(*(v62 - 8) + 56))(v16, 1, 1, v62);
          v41 = 0;
          goto LABEL_18;
        }

        v41 = *(v126 + 8 * v44);
        ++v43;
        if (v41)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      return;
    }

    while (1)
    {
      v44 = v43;
LABEL_17:
      v47 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v48 = v47 | (v44 << 6);
      v49 = v134;
      v50 = v132;
      v51 = v138;
      v52 = v139;
      (*(v132 + 16))(v138, *(v134 + 48) + *(v132 + 72) * v48, v139);
      LOBYTE(v49) = *(*(v49 + 56) + v48);
      v53 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
      v54 = *(v53 + 48);
      v55 = *(v50 + 32);
      v16 = v133;
      v55(v133, v51, v52);
      v16[v54] = v49;
      (*(*(v53 - 8) + 56))(v16, 0, 1, v53);
      v46 = v44;
      v18 = v131;
LABEL_18:
      sub_1000D2AD8(v16, v18, &unk_1016BC360, &qword_10139CBE0);
      v56 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
      if ((*(*(v56 - 8) + 48))(v18, 1, v56) == 1)
      {
        break;
      }

      v57 = *(v56 + 48);
      v58 = v138;
      v59 = v139;
      (*v137)(v138, v18, v139);
      v60 = v18[v57];
      v141[2] = v143[2];
      v141[3] = v143[3];
      v142 = v144;
      v141[0] = v143[0];
      v141[1] = v143[1];
      dispatch thunk of Hashable.hash(into:)();
      (*v135)(v58, v59);
      Hasher._combine(_:)(v60);
      v61 = Hasher._finalize()();
      v43 = v46;
      v140 ^= v61;
      if (!v41)
      {
        goto LABEL_10;
      }
    }

    Hasher._combine(_:)(v140);
    v63 = v127;
    v64 = *(v127 + *(v125 + 36));
    v113 = v64;
    Hasher._combine(_:)(v64);
    v65 = Hasher._finalize()();
    a3 = v115;
    v66 = -1 << *(v115 + 32);
    v67 = v65 & ~v66;
    v68 = v67 >> 6;
    v69 = 1 << v67;
    if (((1 << v67) & v129[v67 >> 6]) != 0)
    {
      break;
    }

    v6 = v120;
LABEL_98:
    sub_10062CBB8(v127, type metadata accessor for OwnerSharingCircle);
LABEL_99:
    a5 = v110;
    v16 = v133;
LABEL_100:
    v28 = *a5;
    v29 = a5[1];
    v30 = *(*a5 + 16);
    if (v29 == v30)
    {
      goto LABEL_2;
    }
  }

  v140 = ~v66;
  v70 = *v63;
  v71 = v63[1];
  if (*v63)
  {
    v72 = 0;
  }

  else
  {
    v72 = v71 == 0xC000000000000000;
  }

  v73 = !v72;
  LODWORD(v126) = v73;
  v74 = v71 >> 62;
  v122 = v70;
  v75 = HIDWORD(v70) - v70;
  v76 = __OFSUB__(HIDWORD(v70), v70);
  v119 = v76;
  v118 = v75;
  v117 = v71;
  v123 = BYTE6(v71);
  v6 = v120;
  v77 = v114;
  v136 = v71 >> 62;
  while (1)
  {
    sub_10062CD24(a3[6] + v67 * v128, v77, type metadata accessor for OwnerSharingCircle);
    v78 = *v77;
    v79 = v77[1];
    v80 = v79 >> 62;
    if (v79 >> 62 == 3)
    {
      if (v78)
      {
        v81 = 0;
      }

      else
      {
        v81 = v79 == 0xC000000000000000;
      }

      v83 = !v81 || v74 < 3;
      if (((v83 | v126) & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_57:
      v84 = 0;
      if (v74 <= 1)
      {
        goto LABEL_54;
      }

      goto LABEL_58;
    }

    if (v80 > 1)
    {
      if (v80 != 2)
      {
        goto LABEL_57;
      }

      v86 = *(v78 + 16);
      v85 = *(v78 + 24);
      v87 = __OFSUB__(v85, v86);
      v84 = v85 - v86;
      if (v87)
      {
        goto LABEL_106;
      }

      if (v74 <= 1)
      {
        goto LABEL_54;
      }
    }

    else if (v80)
    {
      LODWORD(v84) = HIDWORD(v78) - v78;
      if (__OFSUB__(HIDWORD(v78), v78))
      {
        goto LABEL_105;
      }

      v84 = v84;
      if (v74 <= 1)
      {
LABEL_54:
        v88 = v123;
        if (v74)
        {
          v88 = v118;
          if (v119)
          {
            goto LABEL_104;
          }
        }

        goto LABEL_60;
      }
    }

    else
    {
      v84 = BYTE6(v79);
      if (v74 <= 1)
      {
        goto LABEL_54;
      }
    }

LABEL_58:
    if (v74 != 2)
    {
      if (v84)
      {
        goto LABEL_34;
      }

      goto LABEL_88;
    }

    v90 = *(v122 + 16);
    v89 = *(v122 + 24);
    v87 = __OFSUB__(v89, v90);
    v88 = v89 - v90;
    if (v87)
    {
      goto LABEL_103;
    }

LABEL_60:
    if (v84 != v88)
    {
      goto LABEL_34;
    }

    if (v84 >= 1)
    {
      if (v80 > 1)
      {
        if (v80 != 2)
        {
          *(v143 + 6) = 0;
          *&v143[0] = 0;
LABEL_81:
          sub_100771A28(v143, v122, v117, v141);
          if ((v141[0] & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_88;
        }

        v120 = v6;
        v91 = *(v78 + 16);
        v92 = *(v78 + 24);
        v93 = __DataStorage._bytes.getter();
        if (v93)
        {
          v94 = v93;
          v95 = __DataStorage._offset.getter();
          if (__OFSUB__(v91, v95))
          {
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
          }

          v96 = v91 - v95 + v94;
          if (__OFSUB__(v92, v91))
          {
            goto LABEL_109;
          }
        }

        else
        {
          v96 = 0;
          if (__OFSUB__(v92, v91))
          {
            goto LABEL_109;
          }
        }

        v102 = v96;
        __DataStorage._length.getter();
        v103 = v102;
      }

      else
      {
        if (!v80)
        {
          *&v143[0] = *v77;
          WORD4(v143[0]) = v79;
          BYTE10(v143[0]) = BYTE2(v79);
          BYTE11(v143[0]) = BYTE3(v79);
          BYTE12(v143[0]) = BYTE4(v79);
          BYTE13(v143[0]) = BYTE5(v79);
          goto LABEL_81;
        }

        v120 = v6;
        v97 = v78;
        if (v78 >> 32 < v78)
        {
          goto LABEL_108;
        }

        v98 = __DataStorage._bytes.getter();
        if (v98)
        {
          v99 = v98;
          v100 = __DataStorage._offset.getter();
          if (__OFSUB__(v97, v100))
          {
            goto LABEL_112;
          }

          v101 = v97 - v100 + v99;
        }

        else
        {
          v101 = 0;
        }

        __DataStorage._length.getter();
        v103 = v101;
      }

      v104 = v120;
      sub_100771A28(v103, v122, v117, v143);
      v6 = v104;
      a3 = v115;
      v77 = v114;
      v74 = v136;
      if ((v143[0] & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_88:
    v105 = v125;
    if (static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)())
    {
      break;
    }

    v74 = v136;
LABEL_34:
    sub_10062CBB8(v77, type metadata accessor for OwnerSharingCircle);
    v67 = (v67 + 1) & v140;
    v68 = v67 >> 6;
    v69 = 1 << v67;
    if ((v129[v67 >> 6] & (1 << v67)) == 0)
    {
      goto LABEL_98;
    }
  }

  v74 = v136;
  if (*(v77 + v105[7]) != v116 || (sub_100DE7CB4(*(v77 + v105[8]), v134) & 1) == 0 || *(v77 + v105[9]) != v113)
  {
    goto LABEL_34;
  }

  sub_10062CBB8(v77, type metadata accessor for OwnerSharingCircle);
  sub_10062CBB8(v127, type metadata accessor for OwnerSharingCircle);
  v106 = v108[v68];
  v108[v68] = v106 & ~v69;
  if ((v106 & v69) == 0)
  {
    goto LABEL_99;
  }

  a5 = v110;
  v16 = v133;
  if (__OFSUB__(v109, 1))
  {
    goto LABEL_113;
  }

  if (v109 != 1)
  {
    --v109;
    goto LABEL_100;
  }
}

void sub_10061A1FC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_10060D058(a1, a2, v30, a3, &unk_1016BBFF0, &unk_1013B35C0);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_10061A4A8(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v32 = a5;
  while (2)
  {
    v30 = v7;
    do
    {
      while (1)
      {
        v9 = a5[3];
        v10 = a5[4];
        if (!v10)
        {
          v12 = (a5[2] + 64) >> 6;
          v13 = a5[3];
          while (1)
          {
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
              goto LABEL_28;
            }

            if (v11 >= v12)
            {
              break;
            }

            v10 = *(a5[1] + 8 * v11);
            ++v13;
            if (v10)
            {
              goto LABEL_10;
            }
          }

          if (v12 <= v9 + 1)
          {
            v28 = v9 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_10060C86C(v31, a2, v30, v5);
        }

        v11 = a5[3];
LABEL_10:
        v14 = (*(*a5 + 48) + 24 * (__clz(__rbit64(v10)) | (v11 << 6)));
        v15 = *v14;
        v16 = *(v14 + 1);
        v17 = *(v14 + 2);
        a5[3] = v11;
        a5[4] = (v10 - 1) & v10;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v15);

        String.hash(into:)();
        v18 = Hasher._finalize()();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v8 + 8 * (v20 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a3;
        a5 = v32;
      }

      v23 = ~v19;
      v24 = *(v5 + 48);
      while (1)
      {
        v25 = (v24 + 24 * v20);
        if (*v25 == v15)
        {
          v26 = *(v25 + 1) == v16 && *(v25 + 2) == v17;
          if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v8 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }

      a5 = v32;
      v27 = v31[v21];
      v31[v21] = v27 & ~v22;
      v5 = a3;
    }

    while ((v27 & v22) == 0);
    v7 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_28:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

void *sub_10061A6EC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1000BC4D4(&qword_1016A5A40, &qword_1013B3568);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for CorrelationIdentifier();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10000B3A8(v11, &qword_1016A5A40, &qword_1013B3568);
          v45 = v61;

          return sub_10060CABC(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_100009774(&unk_1016C7F30, &type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_100009774(&qword_1016A5A48, &type metadata accessor for CorrelationIdentifier, &protocol conformance descriptor for CorrelationIdentifier);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void *sub_10061ABC0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v42 = &v35 - v15;
  result = __chkstk_darwin(v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_10060AF64(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_100009774(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return &_swiftEmptySetSingleton;
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_10061AFB4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v46 = a2;
  v9 = sub_1000BC4D4(&qword_1016A59B8, &qword_1013B34D8);
  __chkstk_darwin(v9 - 8);
  v50 = &v46 - v10;
  v55 = type metadata accessor for BeaconIdentifier(0);
  v11 = __chkstk_darwin(v55);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = &v46 - v15;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18) & ((-1 << a4) - 1);
  v48 = a1;
  v49 = a5;
  *(a1 + v18) = v19;
  v20 = v17 - 1;
  v52 = (v21 + 56);
  v53 = v21;
  v51 = (v21 + 48);
  v57 = a3;
  v56 = a3 + 56;
LABEL_2:
  v47 = v20;
LABEL_4:
  while (2)
  {
    v23 = *a5;
    v22 = a5[1];
    v25 = a5[2];
    v24 = a5[3];
    v26 = a5[4];
    v54 = v25;
    if (v26)
    {
      v27 = v24;
LABEL_13:
      v31 = (v26 - 1) & v26;
      v32 = v50;
      sub_10062CD24(*(v23 + 48) + *(v53 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v50, type metadata accessor for BeaconIdentifier);
      v33 = 0;
      v30 = v27;
LABEL_14:
      v34 = v55;
      (*v52)(v32, v33, 1, v55);
      *a5 = v23;
      a5[1] = v22;
      a5[2] = v54;
      a5[3] = v30;
      a5[4] = v31;
      if ((*v51)(v32, 1, v34) == 1)
      {
        sub_10000B3A8(v32, &qword_1016A59B8, &qword_1013B34D8);
        v45 = v57;

        return sub_10060D244(v48, v46, v47, v45);
      }

      sub_10062CC64(v32, v16, type metadata accessor for BeaconIdentifier);
      v35 = v57;
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      v36 = Hasher._finalize()();
      v37 = -1 << *(v35 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      v40 = 1 << v38;
      if (((1 << v38) & *(v56 + 8 * (v38 >> 6))) == 0)
      {
LABEL_3:
        result = sub_10062CBB8(v16, type metadata accessor for BeaconIdentifier);
        a5 = v49;
        continue;
      }

      v41 = ~v37;
      v42 = *(v53 + 72);
      while (1)
      {
        sub_10062CD24(*(v57 + 48) + v42 * v38, v13, type metadata accessor for BeaconIdentifier);
        if (static UUID.== infix(_:_:)())
        {
          v43 = static UUID.== infix(_:_:)();
          sub_10062CBB8(v13, type metadata accessor for BeaconIdentifier);
          if (v43)
          {
            result = sub_10062CBB8(v16, type metadata accessor for BeaconIdentifier);
            v44 = v48[v39];
            v48[v39] = v44 & ~v40;
            a5 = v49;
            if ((v44 & v40) != 0)
            {
              v20 = v47 - 1;
              if (__OFSUB__(v47, 1))
              {
                goto LABEL_30;
              }

              if (v47 == 1)
              {
                return &_swiftEmptySetSingleton;
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

        else
        {
          sub_10062CBB8(v13, type metadata accessor for BeaconIdentifier);
        }

        v38 = (v38 + 1) & v41;
        v39 = v38 >> 6;
        v40 = 1 << v38;
        if ((*(v56 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v28 = (v25 + 64) >> 6;
  if (v28 <= v24 + 1)
  {
    v29 = v24 + 1;
  }

  else
  {
    v29 = (v25 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 >= v28)
    {
      v31 = 0;
      v33 = 1;
      v32 = v50;
      goto LABEL_14;
    }

    v26 = *(v22 + 8 * v27);
    ++v24;
    if (v26)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

Swift::Int sub_10061B494(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = *a5;
  v12 = a5[1];
  v13 = *(*a5 + 16);
  if (v12 == v13)
  {
LABEL_2:

    return sub_10060D588(v8, a2, v10, a3, a6, a7);
  }

  else
  {
    v15 = a3 + 56;
    while ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v11 + v12 + 32);
      a5[1] = v12 + 1;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(a3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v15 + 8 * (v18 >> 6))) != 0)
      {
        v21 = *(a3 + 48);
        if (*(v21 + v18) == v16)
        {
LABEL_13:
          v23 = v8[v19];
          v8[v19] = v23 & ~v20;
          if ((v23 & v20) != 0)
          {
            if (__OFSUB__(v10--, 1))
            {
              goto LABEL_19;
            }

            if (!v10)
            {
              return &_swiftEmptySetSingleton;
            }
          }
        }

        else
        {
          v22 = ~v17;
          while (1)
          {
            v18 = (v18 + 1) & v22;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v15 + 8 * (v18 >> 6))) == 0)
            {
              break;
            }

            if (*(v21 + v18) == v16)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v11 = *a5;
      v12 = a5[1];
      v13 = *(*a5 + 16);
      if (v12 == v13)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t *sub_10061B638(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v27 = a3;
  v23 = 0;
  v22 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v27 + 48) + 24 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    LOBYTE(v15) = *(v15 + 16);
    v25[0] = v16;
    v25[1] = v17;
    v26 = v15;

    v18 = (a4)(v25);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:
        v20 = v27;

        return sub_10060B4EC(v22, a2, v23, v20);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10061B7B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = type metadata accessor for UUID();
  result = __chkstk_darwin(v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return sub_10060AF64(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_10061BA18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for RawSearchResult(0);
  v29 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_10062CD24(*(v31 + 48) + *(v29 + 72) * v21, v9, type metadata accessor for RawSearchResult);
    v22 = v30(v9);
    result = sub_10062CBB8(v9, type metadata accessor for RawSearchResult);
    if (v4)
    {
      return result;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        return sub_10060CDE4(v27, v26, v28, v24);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_10061BC30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_10060D058(a1, a2, v20, a3, &unk_1016C7F50, &unk_1013B3590);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_10061BDB0(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_10061BF10(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_10060AE5C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_10061BF10(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a1;
  v46 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v4 = __chkstk_darwin(v46);
  v45 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v33 - v6;
  v43 = type metadata accessor for UUID();
  result = __chkstk_darwin(v43);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v8;
  v10 = 0;
  v47 = a3;
  v11 = *(a3 + 64);
  v37 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v35 = 0;
  v36 = (v12 + 63) >> 6;
  v39 = v8 + 1;
  v40 = v8 + 2;
  v15 = v8;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v48 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v20 = v47;
    v21 = v15[2];
    v22 = v41;
    v23 = v43;
    v21(v41, v47[6] + v15[9] * v19, v43);
    v24 = v20[7];
    v38 = v19;
    v25 = *(v24 + 8 * v19);
    v26 = v44;
    v21(v44, v22, v23);
    v27 = v46;
    *&v26[*(v46 + 48)] = v25;
    v28 = v26;
    v29 = v45;
    sub_1000D2AD8(v28, v45, &qword_1016A5890, &qword_1013B3290);
    v30 = *(*(v29 + *(v27 + 48)) + 16);
    swift_bridgeObjectRetain_n();

    v31 = v15[1];
    v31(v29, v23);

    result = (v31)(v22, v23);
    v14 = v48;
    if (v30)
    {
      *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        return sub_10061C944(v34, v33, v35, v47);
      }
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v36)
    {
      return sub_10061C944(v34, v33, v35, v47);
    }

    v18 = *(v37 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v48 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10061C25C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v51 = type metadata accessor for UUID();
  v49 = *(v51 - 8);
  v12 = __chkstk_darwin(v51);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v45 = &v40 - v15;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1000BC4D4(a5, a6);
  result = static _DictionaryStorage.allocate(capacity:)();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v42 = v49 + 16;
  v43 = result;
  v50 = v49 + 32;
  v20 = result + 64;
  v44 = a1;
  v41 = a4;
  v21 = v51;
  while (v18)
  {
    v22 = v14;
    v23 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_16:
    v26 = v23 | (v19 << 6);
    v27 = a4[6];
    v28 = v49;
    v48 = *(v49 + 72);
    v29 = v45;
    (*(v49 + 16))(v45, v27 + v48 * v26, v21);
    v47 = *(a4[7] + v26);
    v30 = *(v28 + 32);
    v14 = v22;
    v30(v22, v29, v21);
    v17 = v43;
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v31 = -1 << *(v17 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      a1 = v44;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v20 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    a1 = v44;
LABEL_26:
    *(v20 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    result = (v30)(*(v17 + 48) + v34 * v48, v14, v51);
    *(*(v17 + 56) + v34) = v47;
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v41;
    v18 = v46;
    if (!a3)
    {
      return v17;
    }
  }

  v24 = v19;
  while (1)
  {
    v19 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v25 = a1[v19];
    ++v24;
    if (v25)
    {
      v22 = v14;
      v23 = __clz(__rbit64(v25));
      v46 = (v25 - 1) & v25;
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

Swift::Int sub_10061C5F4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v41 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  sub_1000BC4D4(&qword_1016A24B0, &qword_1013C5460);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_10062CD24(v22 + v43 * v21, v40, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_10062CC64(v26, v17, type metadata accessor for OwnedBeaconGroup.PairingState);
    Hasher.init(_seed:)();
    sub_100017D5C(v25, v24);
    Data.hash(into:)();
    result = Hasher._finalize()();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = sub_10062CC64(v17, *(v13 + 56) + v30 * v43, type metadata accessor for OwnedBeaconGroup.PairingState);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
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

uint64_t sub_10061C944(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = __chkstk_darwin(v46);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v39 = &v33 - v10;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1000BC4D4(&unk_1016C2C60, &qword_1013B3340);
  result = static _DictionaryStorage.allocate(capacity:)();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = v23;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
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

uint64_t sub_10061CCE4(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_10061CDE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9)
{
  v12 = a5;
  result = sub_10061CCE4(a1, a2, a3 & 1, a4, a5, a6 & 1, a7);
  if (a6 & 1) != 0 || (a3)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v12 != a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a4 >= a1)
  {
    result = a1;
  }

  else
  {
    result = a4;
  }

  if (a4 >= a1)
  {
    v18 = a2;
  }

  else
  {
    v18 = v12;
  }

  if (a4 >= a1)
  {
    v19 = a4;
  }

  else
  {
    v19 = a1;
  }

  if (a4 >= a1)
  {
    v20 = 1;
  }

  else
  {
    v20 = -1;
  }

  if (a4 < a1)
  {
    LODWORD(v12) = a2;
  }

  v23 = result;
  v24 = v18;
  v25 = 0;
  if (a1 != a4)
  {
    v22 = 0;
    while (1)
    {
      v21 = v22 + v20;
      if (__OFADD__(v22, v20))
      {
        break;
      }

      result = sub_10061CEFC(&v23, a7, a8);
      if (v25)
      {
        goto LABEL_29;
      }

      if (v24 != v12)
      {
        goto LABEL_27;
      }

      v22 += v20;
      if (v23 == v19)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1000BB408(result, v18, 0);
  return 0;
}

uint64_t sub_10061CEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for RawSearchResult(0);
  v31 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    goto LABEL_30;
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 36);
  if (v11 != v10)
  {
    goto LABEL_28;
  }

  v12 = *a1;
  if (*a1 != 1 << *(a2 + 32))
  {
    v13 = a2 + 56;
    v29 = a1;
    v30 = a2 + 64;
    v14 = v31;
    while ((v12 & 0x8000000000000000) == 0)
    {
      v15 = 1 << *(a2 + 32);
      if (v12 >= v15)
      {
        break;
      }

      v16 = v12 >> 6;
      v17 = *(v13 + 8 * (v12 >> 6));
      if (((v17 >> v12) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v11 != *(a2 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v12 & 0x3F));
      if (v18)
      {
        result = sub_1000BB408(v12, v10, 0);
        v12 = __clz(__rbit64(v18)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = a3;
        v20 = v16 << 6;
        v21 = v16 + 1;
        v22 = (v30 + 8 * v16);
        while (v21 < (v15 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1000BB408(v12, v10, 0);
            v12 = __clz(__rbit64(v23)) + v20;
            goto LABEL_16;
          }
        }

        result = sub_1000BB408(v12, v10, 0);
        v12 = v15;
LABEL_16:
        a3 = v19;
        v14 = v31;
      }

      v10 = *(a2 + 36);
      v25 = 1 << *(a2 + 32);
      if (v12 != v25)
      {
        if ((v12 & 0x8000000000000000) != 0 || v12 >= v25)
        {
          goto LABEL_26;
        }

        if (((*(v13 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_27;
        }

        sub_10062CD24(*(a2 + 48) + *(v14 + 72) * v12, v9, type metadata accessor for RawSearchResult);
        v26 = a3(v9);
        result = sub_10062CBB8(v9, type metadata accessor for RawSearchResult);
        v11 = v10;
        if ((v26 & 1) == 0)
        {
          continue;
        }
      }

      v27 = v29;
      *v29 = v12;
      v27[1] = v10;
      *(v27 + 16) = 0;
      return result;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10061D19C@<X0>(uint64_t a1@<X8>)
{
  v41 = sub_1000BC4D4(&qword_1016A5AA8, &qword_1013B35D0);
  v3 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v38 - v4;
  v5 = type metadata accessor for BookmarkMetaData(0);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A5AB0, &qword_1013B35D8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v18;
  v43 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = *(*(v16 + 48) + v25);
    sub_10062CD24(*(v16 + 56) + *(v40 + 72) * v25, v7, type metadata accessor for BookmarkMetaData);
    v27 = v41;
    v28 = *(v41 + 48);
    *v14 = v26;
    v29 = v7;
    v30 = v27;
    sub_10062CC64(v29, &v14[v28], type metadata accessor for BookmarkMetaData);
    (*(v3 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v42;
    v1[3] = v23;
    v1[4] = v24;
    v31 = v1[5];
    sub_1000D2AD8(v14, v11, &qword_1016A5AB0, &qword_1013B35D8);
    v32 = 1;
    v33 = (*(v3 + 48))(v11, 1, v30);
    v34 = v43;
    if (v33 != 1)
    {
      v35 = v11;
      v36 = v39;
      sub_1000D2AD8(v35, v39, &qword_1016A5AA8, &qword_1013B35D0);
      v31(v36);
      sub_10000B3A8(v36, &qword_1016A5AA8, &qword_1013B35D0);
      v32 = 0;
    }

    v37 = sub_1000BC4D4(&qword_1016A5AB8, &unk_1013B35E0);
    return (*(*(v37 - 8) + 56))(v34, v32, 1, v37);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v41;
        (*(v3 + 56))(&v38 - v13, 1, 1, v41);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061D55C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v5 = &v38 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v11 = __chkstk_darwin(v10 - 8);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v39 = v5;
  v44 = v19;
  if (v20)
  {
    v41 = a1;
    v21 = v18;
LABEL_11:
    v40 = (v20 - 1) & v20;
    v25 = __clz(__rbit64(v20)) | (v21 << 6);
    v26 = v16;
    (*(v7 + 16))(v9, *(v16 + 48) + *(v7 + 72) * v25, v6);
    LOBYTE(v25) = *(*(v26 + 56) + v25);
    v27 = *(v43 + 48);
    v28 = v9;
    v29 = v43;
    (*(v7 + 32))(v15, v28, v6);
    v15[v27] = v25;
    v30 = v42;
    (*(v42 + 56))(v15, 0, 1, v29);
    v31 = v40;
    a1 = v41;
    v24 = v21;
LABEL_12:
    *v1 = v26;
    v1[1] = v17;
    v32 = v45;
    v1[2] = v44;
    v1[3] = v24;
    v1[4] = v31;
    v33 = v1[5];
    sub_1000D2AD8(v15, v32, &unk_1016BC360, &qword_10139CBE0);
    v34 = 1;
    if ((*(v30 + 48))(v32, 1, v29) != 1)
    {
      v35 = v32;
      v36 = v39;
      sub_1000D2AD8(v35, v39, &qword_1016BBEE0, &unk_10139CBF0);
      v33(v36);
      sub_10000B3A8(v36, &qword_1016BBEE0, &unk_10139CBF0);
      v34 = 0;
    }

    v37 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
    return (*(*(v37 - 8) + 56))(a1, v34, 1, v37);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v30 = v42;
        v29 = v43;
        v26 = v16;
        (*(v42 + 56))(v15, 1, 1, v43);
        v31 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061D938@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016BBFA0, &unk_10140F6D0);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A5A20, &qword_1013B3550);
  v10 = __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_1000D2AD8(v14, v33, &qword_1016A5A20, &qword_1013B3550);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_1000D2AD8(v36, v39, &qword_1016BBFA0, &unk_10140F6D0);
      v34(v37);
      sub_10000B3A8(v37, &qword_1016BBFA0, &unk_10140F6D0);
      v35 = 0;
    }

    v38 = sub_1000BC4D4(&qword_1016A5A28, &qword_1013B3558);
    return (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v13, 1, 1, v44);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061DD1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A5840, &qword_1013B31C8);
  v10 = __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_1000D2AD8(v14, v33, &qword_1016A5840, &qword_1013B31C8);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_1000D2AD8(v36, v39, &qword_1016A2490, &unk_1013B3200);
      v34(v37);
      sub_10000B3A8(v37, &qword_1016A2490, &unk_1013B3200);
      v35 = 0;
    }

    v38 = sub_1000BC4D4(&qword_1016A5998, &unk_1013B34A0);
    return (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v13, 1, 1, v44);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10061E100@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v42 = type metadata accessor for UUID();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016A5918, &qword_1013B33B0);
  v10 = __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_1000D2AD8(v14, v33, &qword_1016A5918, &qword_1013B33B0);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_1000D2AD8(v36, v39, &qword_1016A5890, &qword_1013B3290);
      v34(v37);
      sub_10000B3A8(v37, &qword_1016A5890, &qword_1013B3290);
      v35 = 0;
    }

    v38 = sub_1000BC4D4(&qword_10169C9D8, &qword_1013B3280);
    return (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v13, 1, 1, v44);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10061E4E4(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100013894(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_1001E6224(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_10000B3A8(v20, &qword_1016A5B80, &qword_1013B3708);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10061E644@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Row();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v17 = *(v1 + 8);
  sub_1000D2AD8(v12, v10, &qword_101699D68, &unk_1013B6450);
  v13 = 1;
  if ((*(v4 + 48))(v10, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v10, v3);
    v17(v6);
    (*(v4 + 8))(v6, v3);
    v13 = 0;
  }

  v14 = type metadata accessor for StandaloneBeacon(0);
  return (*(*(v14 - 8) + 56))(a1, v13, 1, v14);
}

uint64_t sub_10061E864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A59D0, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint, "}_ ");
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_10061EC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AccessoryIdentityPairingLockAckEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A59C8, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint, &unk_1013E5918);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_10061F094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for OwnedDeviceFetchEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A5868, type metadata accessor for OwnedDeviceFetchEndpoint, &unk_1013AF9DC);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for OwnedDeviceFetchEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_10061F4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for OwnedDeviceSubmitEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A5B58, type metadata accessor for OwnedDeviceSubmitEndpoint, "\r=&");
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for OwnedDeviceSubmitEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_10061F8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AirPodsLEPairingLockCheckEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A5AD0, type metadata accessor for AirPodsLEPairingLockCheckEndPoint, &unk_1013D3DF4);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_10061FCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AirPodsLEPairingLockAckEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A5AD8, type metadata accessor for AirPodsLEPairingLockAckEndPoint, "yE$");
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_1006200F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for NFCTapEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A5A60, type metadata accessor for NFCTapEndPoint, &unk_1013C2034);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for NFCTapEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_10062050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for NotifyMeEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A5B78, type metadata accessor for NotifyMeEndpoint, &unk_1013A15F4);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for NotifyMeEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100620924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AccessoryInfoEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A59D8, type metadata accessor for AccessoryInfoEndPoint, &unk_101404788);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AccessoryInfoEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100620D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for UnpairEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A59F0, type metadata accessor for UnpairEndPoint, &unk_1013F1FC4);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for UnpairEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100621154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for PairingLockCheckEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A5AC8, type metadata accessor for PairingLockCheckEndPoint, &unk_1013A048C);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for PairingLockCheckEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_10062156C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AirPodsUnpairEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A59E8, type metadata accessor for AirPodsUnpairEndPoint, &unk_1013ABF28);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AirPodsUnpairEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100621984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AccessoryUnpairEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A5B68, type metadata accessor for AccessoryUnpairEndpoint, &unk_101393DF8);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AccessoryUnpairEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100621D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AccessoryPairingLockCheckEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A5B70, type metadata accessor for AccessoryPairingLockCheckEndPoint, &unk_10138B794);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AccessoryPairingLockCheckEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_1006221B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AccessoryPairingLockAckEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A5B60, type metadata accessor for AccessoryPairingLockAckEndpoint, &unk_1013E5B70);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AccessoryPairingLockAckEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_1006225CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for PairingLockAckEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A5A38, type metadata accessor for PairingLockAckEndPoint, &unk_1013ADF08);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for PairingLockAckEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_1006229E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for FetchEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A59A8, type metadata accessor for FetchEndpoint, &unk_1013EA86C);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for FetchEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100622DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for PencilUnpairEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A59C0, type metadata accessor for PencilUnpairEndPoint, &unk_10139BEA8);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for PencilUnpairEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100623214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for SubmitEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A5B50, type metadata accessor for SubmitEndpoint, &unk_10139D51C);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for SubmitEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_10062362C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AirPodsPairingLockCheckEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A5AA0, type metadata accessor for AirPodsPairingLockCheckEndPoint, "y|'");
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AirPodsPairingLockCheckEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100623A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AirPodsPairingLockAckEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A5A98, type metadata accessor for AirPodsPairingLockAckEndPoint, &unk_1013B69A0);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AirPodsPairingLockAckEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100623E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for RoleCategoriesEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A5B40, type metadata accessor for RoleCategoriesEndpoint, &unk_1013F6558);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for RoleCategoriesEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100624274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for ConfigurationEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A5B48, type metadata accessor for ConfigurationEndpoint, &unk_1013F8AE8);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for ConfigurationEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_10062468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for AccountCheckEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A59E0, type metadata accessor for AccountCheckEndpoint, &unk_1014100E8);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for AccountCheckEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100624AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for SubmitUTInfoEndpoint(0);
  v26[4] = sub_100009774(&qword_1016A5AE0, type metadata accessor for SubmitUTInfoEndpoint, &unk_1013BBDF0);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for SubmitUTInfoEndpoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_100624EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v25 - v13;
  v26[3] = type metadata accessor for PairingLockUpdateEndPoint(0);
  v26[4] = sub_100009774(&qword_1016A5A30, type metadata accessor for PairingLockUpdateEndPoint, &unk_1013E5BBC);
  v15 = sub_1000280DC(v26);
  sub_10062CC64(a1, v15, type metadata accessor for PairingLockUpdateEndPoint);
  v16 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v16) = FMNAuthenticationProvider.init()();
  v17 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v17) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v18 = qword_1016A2660;
  *(a3 + v18) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100009774(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v25[2] == v25[1])
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v26, a3 + qword_1016A2650);
  v22 = type metadata accessor for FMNMockingPreferences();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);

  v23 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v26);
  return v23;
}

uint64_t sub_1006252D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000280DC(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10000A748(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_10062536C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100DE8BCC(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1006254B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RawSearchResult(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v40 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v40 - v16;
  v41 = *(a1 + 16);
  if (v41)
  {
    v18 = 0;
    v40 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v19 = *(v15 + 72);
    v44 = v13;
    v45 = &v40 - v16;
    v42 = v2;
    while (1)
    {
      v43 = v18;
      sub_10062CD24(v40 + v19 * v18, v17, type metadata accessor for RawSearchResult);
      v20 = *v2;
      Hasher.init(_seed:)();
      sub_100D15128(v47);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v20 + 32);
      v23 = v21 & ~v22;
      if ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        v25 = *v17;
        do
        {
          sub_10062CD24(*(v20 + 48) + v23 * v19, v7, type metadata accessor for RawSearchResult);
          if (*v7 == v25 && (static Date.== infix(_:_:)() & 1) != 0 && *&v7[v4[6]] == *&v45[v4[6]] && *&v7[v4[7]] == *&v45[v4[7]] && *&v7[v4[8]] == *&v45[v4[8]])
          {
            v26 = static UUID.== infix(_:_:)();
            sub_10062CBB8(v7, type metadata accessor for RawSearchResult);
            if (v26)
            {
              v17 = v45;
              result = sub_10062CBB8(v45, type metadata accessor for RawSearchResult);
              v2 = v42;
              goto LABEL_35;
            }
          }

          else
          {
            sub_10062CBB8(v7, type metadata accessor for RawSearchResult);
          }

          v23 = (v23 + 1) & v24;
        }

        while (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
      }

      v2 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v44;
      v17 = v45;
      sub_10062CD24(v45, v44, type metadata accessor for RawSearchResult);
      v46 = *v2;
      v29 = v46;
      v30 = *(v46 + 16);
      if (*(v46 + 24) <= v30)
      {
        v31 = v30 + 1;
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_100DF50BC(v31);
        }

        else
        {
          sub_100E08824(v31);
        }

        v29 = v46;
        Hasher.init(_seed:)();
        sub_100D15128(v47);
        v32 = Hasher._finalize()();
        v33 = -1 << *(v29 + 32);
        v23 = v32 & ~v33;
        if ((*(v29 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v34 = ~v33;
          v35 = *v28;
          do
          {
            sub_10062CD24(*(v29 + 48) + v23 * v19, v10, type metadata accessor for RawSearchResult);
            if (*v10 == v35 && (static Date.== infix(_:_:)() & 1) != 0 && *&v10[v4[6]] == *&v44[v4[6]] && *&v10[v4[7]] == *&v44[v4[7]] && *&v10[v4[8]] == *&v44[v4[8]])
            {
              v36 = static UUID.== infix(_:_:)();
              sub_10062CBB8(v10, type metadata accessor for RawSearchResult);
              if (v36)
              {
                goto LABEL_38;
              }
            }

            else
            {
              sub_10062CBB8(v10, type metadata accessor for RawSearchResult);
            }

            v23 = (v23 + 1) & v34;
          }

          while (((*(v29 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
          v2 = v42;
          v28 = v44;
        }

        v17 = v45;
      }

      else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100E04FE0();
        v29 = v46;
      }

      *(v29 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v23;
      sub_10062CC64(v28, *(v29 + 48) + v23 * v19, type metadata accessor for RawSearchResult);
      result = sub_10062CBB8(v17, type metadata accessor for RawSearchResult);
      v37 = *(v29 + 16);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      *(v29 + 16) = v39;
      *v2 = v29;
LABEL_35:
      v18 = v43 + 1;
      if (v43 + 1 == v41)
      {
        return result;
      }
    }

    __break(1u);
LABEL_38:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100625A2C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        sub_100DF0E40(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = _CocoaArrayWrapper.endIndex.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

char *sub_100625B10(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = __DataStorage._length.getter();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_100625BC8(char *__src, char *a2, unint64_t a3, char *__dst, uint64_t a5)
{
  v61 = a5;
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 40;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 40;
  if (v10 >= v12)
  {
    if (__dst != a2 || &a2[40 * v12] <= __dst)
    {
      memmove(__dst, a2, 40 * v12);
    }

    v13 = &v5[40 * v12];
    if (v11 < 40 || v7 <= v8)
    {
      v51 = v7;
    }

    else
    {
      do
      {
        __dsta = v7;
        v29 = (v7 - 40);
        v30 = (v13 - 40);
        v6 -= 40;
        v31 = v61;
        while (1)
        {
          sub_10001F280(v30, v58);
          v7 = v29;
          sub_10001F280(v29, v55);
          v34 = v59;
          v35 = v60;
          sub_1000035D0(v58, v59);
          v36 = (*(v35 + 184))(v34, v35);
          v37 = sub_1005E47E8(v36, v31);
          LOBYTE(v35) = v38;

          if (v35)
          {
            v39 = 0;
          }

          else
          {
            v41 = v56;
            v40 = v57;
            sub_1000035D0(v55, v56);
            v42 = (*(v40 + 184))(v41, v40);
            v43 = sub_1005E47E8(v42, v61);
            v45 = v44;

            v33 = v37 < v43;
            v31 = v61;
            v46 = v33;
            v39 = (v45 & 1) == 0 && v46;
          }

          sub_100007BAC(v55);
          sub_100007BAC(v58);
          if (v39)
          {
            break;
          }

          if (v6 + 40 != v30 + 40)
          {
            v47 = *v30;
            v48 = *(v30 + 16);
            *(v6 + 32) = *(v30 + 32);
            *v6 = v47;
            *(v6 + 16) = v48;
          }

          v32 = v30 - 40;
          v6 -= 40;
          v33 = v30 > v5;
          v30 -= 40;
          v29 = v7;
          if (!v33)
          {
            v13 = (v32 + 40);
            v51 = __dsta;
            goto LABEL_45;
          }
        }

        v51 = v7;
        if ((v6 + 40) != __dsta)
        {
          v49 = *v7;
          v50 = *(v7 + 1);
          *(v6 + 32) = *(v7 + 4);
          *v6 = v49;
          *(v6 + 16) = v50;
        }

        v13 = (v30 + 40);
      }

      while (v30 + 40 > v5 && v7 > v8);
      v13 = (v30 + 40);
    }
  }

  else
  {
    if (__dst != __src || &__src[40 * v10] <= __dst)
    {
      memmove(__dst, __src, 40 * v10);
    }

    v13 = &v5[40 * v10];
    if (v9 >= 40 && v7 < v6)
    {
      while (1)
      {
        sub_10001F280(v7, v58);
        sub_10001F280(v5, v55);
        v14 = v59;
        v15 = v60;
        sub_1000035D0(v58, v59);
        v16 = (*(v15 + 184))(v14, v15);
        v17 = sub_1005E47E8(v16, v61);
        v19 = v18;

        if (v19)
        {
          break;
        }

        v20 = v56;
        v21 = v57;
        sub_1000035D0(v55, v56);
        v22 = (*(v21 + 184))(v20, v21);
        v23 = sub_1005E47E8(v22, v61);
        LOBYTE(v21) = v24;

        if (v21)
        {
          break;
        }

        sub_100007BAC(v55);
        sub_100007BAC(v58);
        if (v17 >= v23)
        {
          goto LABEL_10;
        }

        v25 = v7;
        v26 = v8 == v7;
        v7 += 40;
        if (!v26)
        {
          goto LABEL_11;
        }

LABEL_12:
        v8 += 40;
        if (v5 >= v13 || v7 >= v6)
        {
          goto LABEL_43;
        }
      }

      sub_100007BAC(v55);
      sub_100007BAC(v58);
LABEL_10:
      v25 = v5;
      v26 = v8 == v5;
      v5 += 40;
      if (v26)
      {
        goto LABEL_12;
      }

LABEL_11:
      v27 = *v25;
      v28 = *(v25 + 1);
      *(v8 + 4) = *(v25 + 4);
      *v8 = v27;
      *(v8 + 1) = v28;
      goto LABEL_12;
    }

LABEL_43:
    v51 = v8;
  }

LABEL_45:
  v52 = (v13 - v5) / 40;
  if (v51 != v5 || v51 >= &v5[40 * v52])
  {
    memmove(v51, v5, 40 * v52);
  }

  return 1;
}

uint64_t sub_100625FE0(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_100B31E68(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 40 * *v6);
      v15 = (v10 + 40 * *v13);
      v16 = v10 + 40 * v14;

      sub_100625BC8(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      v6[1] = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_10062618C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = a3[1];
  v145 = _swiftEmptyArrayStorage;
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v132 = _swiftEmptyArrayStorage;
    v138 = a5;
    v124 = a4;
    while (1)
    {
      v9 = v8;
      v10 = v8 + 1;
      v126 = v8;
      if (v8 + 1 < v6)
      {
        __dst = v6;
        v11 = *a3;
        sub_10001F280(*a3 + 40 * v10, &v142);
        sub_10001F280(v11 + 40 * v9, v139);
        v12 = v143;
        v13 = v144;
        sub_1000035D0(&v142, v143);
        v14 = (*(v13 + 184))(v12, v13);
        v15 = sub_1005E47E8(v14, a5);
        LOBYTE(v13) = v16;

        if (v13)
        {
          v133 = 0;
        }

        else
        {
          v17 = v140;
          v18 = v141;
          sub_1000035D0(v139, v140);
          v19 = (*(v18 + 184))(v17, v18);
          v20 = sub_1005E47E8(v19, a5);
          LOBYTE(v18) = v21;

          v22 = v15 < v20;
          if (v18)
          {
            v22 = 0;
          }

          v133 = v22;
        }

        sub_100007BAC(v139);
        sub_100007BAC(&v142);
        v23 = v126 + 2;
        v24 = v11 + 40 * v126 + 80;
        v25 = 40 * v126 + 40;
        v26 = v10;
        v27 = __dst;
        do
        {
          v10 = v23;
          v29 = v26;
          v30 = v25;
          if (v23 >= v27)
          {
            break;
          }

          sub_10001F280(v24, &v142);
          sub_10001F280(v24 - 40, v139);
          v31 = v143;
          v32 = v144;
          sub_1000035D0(&v142, v143);
          v33 = (*(v32 + 184))(v31, v32);
          v34 = sub_1005E47E8(v33, v138);
          LOBYTE(v32) = v35;

          if (v32)
          {
            v28 = 0;
          }

          else
          {
            v37 = v140;
            v36 = v141;
            sub_1000035D0(v139, v140);
            v38 = (*(v36 + 184))(v37, v36);
            v39 = sub_1005E47E8(v38, v138);
            LOBYTE(v37) = v40;

            v28 = (v37 & 1) == 0 && v34 < v39;
            v27 = __dst;
          }

          sub_100007BAC(v139);
          sub_100007BAC(&v142);
          v23 = v10 + 1;
          v24 += 40;
          v26 = v29 + 1;
          v25 = v30 + 40;
        }

        while (v133 == v28);
        if (v133)
        {
          v9 = v126;
          a4 = v124;
          if (v10 < v126)
          {
            goto LABEL_128;
          }

          if (v126 < v10)
          {
            v41 = v126;
            v42 = 40 * v126;
            do
            {
              if (v41 != v29)
              {
                v49 = *a3;
                if (!*a3)
                {
                  goto LABEL_133;
                }

                v43 = v49 + v42;
                v44 = v49 + v30;
                v45 = v42;
                sub_10000A748((v49 + v42), &v142);
                v46 = *(v44 + 32);
                v47 = *(v44 + 16);
                *v43 = *v44;
                *(v43 + 16) = v47;
                *(v43 + 32) = v46;
                sub_10000A748(&v142, v44);
                v42 = v45;
              }

              ++v41;
              v30 -= 40;
              v42 += 40;
            }

            while (v41 < v29--);
          }

          a5 = v138;
        }

        else
        {
          a5 = v138;
          a4 = v124;
          v9 = v126;
        }
      }

      v50 = a3[1];
      if (v10 < v50)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_127;
        }

        if (v10 - v9 < a4)
        {
          v51 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_129;
          }

          if (v51 >= v50)
          {
            v51 = a3[1];
          }

          if (v51 < v9)
          {
LABEL_130:
            __break(1u);
LABEL_131:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_132:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_133:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_134:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_135:
            result = swift_bridgeObjectRelease_n();
            __break(1u);
            return result;
          }

          if (v10 != v51)
          {
            v52 = *a3;
            v53 = *a3 + 40 * v10;
            v54 = v9 - v10;
            v127 = v51;
            do
            {
              v134 = v10;
              v128 = v54;
              __dsta = v53;
              v55 = v53;
              while (1)
              {
                sub_10001F280(v55, &v142);
                sub_10001F280(v55 - 40, v139);
                v56 = v143;
                v57 = v144;
                sub_1000035D0(&v142, v143);
                v58 = (*(v57 + 184))(v56, v57);
                v59 = sub_1005E47E8(v58, a5);
                LOBYTE(v56) = v60;

                v61 = a5;
                if (v56 & 1) != 0 || (v63 = v140, v62 = v141, sub_1000035D0(v139, v140), v64 = (*(v62 + 184))(v63, v62), v65 = sub_1005E47E8(v64, v61), LOBYTE(v63) = v66, v64, (v63))
                {
                  sub_100007BAC(v139);
                  sub_100007BAC(&v142);
                  a5 = v61;
                  goto LABEL_42;
                }

                sub_100007BAC(v139);
                sub_100007BAC(&v142);
                if (v59 >= v65)
                {
                  break;
                }

                a5 = v138;
                if (!v52)
                {
                  goto LABEL_131;
                }

                sub_10000A748(v55, &v142);
                v67 = *(v55 - 24);
                *v55 = *(v55 - 40);
                *(v55 + 16) = v67;
                *(v55 + 32) = *(v55 - 8);
                sub_10000A748(&v142, v55 - 40);
                v55 -= 40;
                if (__CFADD__(v54++, 1))
                {
                  goto LABEL_42;
                }
              }

              a5 = v138;
LABEL_42:
              v10 = v134 + 1;
              v53 = __dsta + 40;
              v54 = v128 - 1;
            }

            while (v134 + 1 != v127);
            v10 = v127;
            v9 = v126;
          }
        }
      }

      v69 = v132;
      if (v10 < v9)
      {
        goto LABEL_126;
      }

      v135 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_100A5B430(0, *(v132 + 2) + 1, 1, v132);
      }

      v71 = *(v69 + 2);
      v70 = *(v69 + 3);
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v69 = sub_100A5B430((v70 > 1), v71 + 1, 1, v69);
      }

      *(v69 + 2) = v72;
      v73 = v69 + 32;
      v74 = &v69[16 * v71 + 32];
      *v74 = v126;
      *(v74 + 1) = v10;
      v145 = v69;
      __dstb = *a1;
      if (!*a1)
      {
        goto LABEL_134;
      }

      v132 = v69;
      if (v71)
      {
        while (1)
        {
          v75 = v72 - 1;
          if (v72 >= 4)
          {
            break;
          }

          if (v72 == 3)
          {
            v76 = *(v69 + 4);
            v77 = *(v69 + 5);
            v86 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            v79 = v86;
LABEL_74:
            if (v79)
            {
              goto LABEL_117;
            }

            v92 = &v69[16 * v72];
            v94 = *v92;
            v93 = *(v92 + 1);
            v95 = __OFSUB__(v93, v94);
            v96 = v93 - v94;
            v97 = v95;
            if (v95)
            {
              goto LABEL_120;
            }

            v98 = &v73[16 * v75];
            v100 = *v98;
            v99 = *(v98 + 1);
            v86 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v86)
            {
              goto LABEL_123;
            }

            if (__OFADD__(v96, v101))
            {
              goto LABEL_124;
            }

            if (v96 + v101 >= v78)
            {
              if (v78 < v101)
              {
                v75 = v72 - 2;
              }

              goto LABEL_95;
            }

            goto LABEL_88;
          }

          v102 = &v69[16 * v72];
          v104 = *v102;
          v103 = *(v102 + 1);
          v86 = __OFSUB__(v103, v104);
          v96 = v103 - v104;
          v97 = v86;
LABEL_88:
          if (v97)
          {
            goto LABEL_119;
          }

          v105 = &v73[16 * v75];
          v107 = *v105;
          v106 = *(v105 + 1);
          v86 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v86)
          {
            goto LABEL_122;
          }

          if (v108 < v96)
          {
            goto LABEL_3;
          }

LABEL_95:
          if (v75 - 1 >= v72)
          {
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
            goto LABEL_130;
          }

          v113 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v114 = &v73[16 * v75 - 16];
          v115 = *v114;
          v116 = &v73[16 * v75];
          v117 = *(v116 + 1);
          v118 = (v113 + 40 * *v114);
          v119 = (v113 + 40 * *v116);
          v120 = v113 + 40 * v117;

          sub_100625BC8(v118, v119, v120, __dstb, v138);
          if (v137)
          {

            v145 = v132;
            goto LABEL_108;
          }

          if (v117 < v115)
          {
            goto LABEL_112;
          }

          v69 = v132;
          v121 = *(v132 + 2);
          if (v75 > v121)
          {
            goto LABEL_113;
          }

          *v114 = v115;
          *(v114 + 1) = v117;
          if (v75 >= v121)
          {
            goto LABEL_114;
          }

          v72 = v121 - 1;
          memmove(&v73[16 * v75], v116 + 16, 16 * (v121 - 1 - v75));
          *(v132 + 2) = v121 - 1;
          if (v121 <= 2)
          {
LABEL_3:
            v145 = v69;
            goto LABEL_4;
          }
        }

        v80 = &v73[16 * v72];
        v81 = *(v80 - 8);
        v82 = *(v80 - 7);
        v86 = __OFSUB__(v82, v81);
        v83 = v82 - v81;
        if (v86)
        {
          goto LABEL_115;
        }

        v85 = *(v80 - 6);
        v84 = *(v80 - 5);
        v86 = __OFSUB__(v84, v85);
        v78 = v84 - v85;
        v79 = v86;
        if (v86)
        {
          goto LABEL_116;
        }

        v87 = &v69[16 * v72];
        v89 = *v87;
        v88 = *(v87 + 1);
        v86 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v86)
        {
          goto LABEL_118;
        }

        v86 = __OFADD__(v78, v90);
        v91 = v78 + v90;
        if (v86)
        {
          goto LABEL_121;
        }

        if (v91 >= v83)
        {
          v109 = &v73[16 * v75];
          v111 = *v109;
          v110 = *(v109 + 1);
          v86 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v86)
          {
            goto LABEL_125;
          }

          if (v78 < v112)
          {
            v75 = v72 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

LABEL_4:
      v8 = v135;
      v6 = a3[1];
      a5 = v138;
      a4 = v124;
      if (v135 >= v6)
      {
        goto LABEL_105;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_105:
  v122 = *a1;
  if (!*a1)
  {
    goto LABEL_135;
  }

  sub_100625FE0(&v145, v122, a3, a5);
  if (v137)
  {

LABEL_108:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_100626A70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_6:
    v30 = a3;
    v22 = v8;
    v23 = v7;
    while (1)
    {
      sub_10001F280(v7, &v27);
      sub_10001F280(v7 - 40, v24);
      v9 = v28;
      v10 = v29;
      sub_1000035D0(&v27, v28);
      v11 = (*(v10 + 184))(v9, v10);
      v12 = sub_1005E47E8(v11, a5);
      LOBYTE(v10) = v13;

      if (v10 & 1) != 0 || (v15 = v25, v14 = v26, sub_1000035D0(v24, v25), v16 = (*(v14 + 184))(v15, v14), v17 = sub_1005E47E8(v16, a5), LOBYTE(v15) = v18, v16, (v15))
      {
        sub_100007BAC(v24);
        result = sub_100007BAC(&v27);
LABEL_5:
        a3 = v30 + 1;
        v7 = v23 + 40;
        v8 = v22 - 1;
        if (v30 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      sub_100007BAC(v24);
      result = sub_100007BAC(&v27);
      if (v12 >= v17)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      sub_10000A748(v7, &v27);
      v19 = *(v7 - 24);
      *v7 = *(v7 - 40);
      *(v7 + 16) = v19;
      *(v7 + 32) = *(v7 - 8);
      result = sub_10000A748(&v27, v7 - 40);
      v7 -= 40;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100626C20(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9[0] = (v8 + 4);
      v9[1] = v7;

      sub_10062618C(v9, v10, a1, v6, a2);

      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_100626A70(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100626D78(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100B32110(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  sub_100626C20(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_100626FD4(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationFetcher(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1005D346C(a1, v1 + v5, v6);
}

uint64_t sub_1006270E0()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_101168330(v3, v4, v6, v5, v2);
}

uint64_t sub_10062719C()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_101167E20(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10062728C()
{
  v2 = *(type metadata accessor for LocationFetcher(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1005DBBB8(v4, v5, v6, v0 + v3);
}

uint64_t sub_100627394@<X0>(char **a1@<X8>)
{
  v3 = *(type metadata accessor for LocationFetcher(0) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005DF498(v4, a1);
}

uint64_t sub_100627584(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5, NSObject *a6, int64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(__int128 *), char *a13, void (*a14)(void), void (*a15)(char *, __n128), void (*a16)(char *), uint64_t a17, char *a18, void (*a19)(__n128), char *a20, uint64_t a21, char *a22, uint64_t *a23)
{
  v452 = a8;
  v434 = a7;
  v420 = a6;
  v455 = a5;
  v437 = a2;
  v450 = a1;
  v419 = type metadata accessor for FMNAccountType();
  v418 = *(v419 - 8);
  __chkstk_darwin(v419);
  v410 = &v405 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  Endpoint = type metadata accessor for FetchEndpoint(0);
  v26 = __chkstk_darwin(Endpoint);
  v411 = &v405 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v412 = (&v405 - v28);
  v29 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v29 - 8);
  v427 = &v405 - v30;
  v406 = type metadata accessor for OwnedDeviceFetchEndpoint(0);
  v31 = __chkstk_darwin(v406);
  v407 = (&v405 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v408 = &v405 - v33;
  v34 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  __chkstk_darwin(v34 - 8);
  v36 = &v405 - v35;
  v37 = sub_1000BC4D4(&unk_101696940, &unk_10138B210);
  v38 = __chkstk_darwin(v37 - 8);
  v423 = &v405 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v432 = &v405 - v40;
  v41 = sub_1000BC4D4(&qword_1016A5840, &qword_1013B31C8);
  v42 = __chkstk_darwin(v41 - 8);
  v436 = &v405 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v435 = &v405 - v44;
  v454 = type metadata accessor for BeaconEstimatedLocation(0);
  v461 = *(v454 - 8);
  v45 = __chkstk_darwin(v454);
  v457 = &v405 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v446 = &v405 - v48;
  v49 = __chkstk_darwin(v47);
  v441 = &v405 - v50;
  v51 = __chkstk_darwin(v49);
  v422 = &v405 - v52;
  v53 = __chkstk_darwin(v51);
  v458 = &v405 - v54;
  v55 = __chkstk_darwin(v53);
  v433 = &v405 - v56;
  v57 = __chkstk_darwin(v55);
  v447 = &v405 - v58;
  __chkstk_darwin(v57);
  v440 = &v405 - v59;
  v463 = type metadata accessor for UUID();
  v456 = *(v463 - 8);
  v60 = __chkstk_darwin(v463);
  v413 = &v405 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v442 = &v405 - v63;
  v64 = __chkstk_darwin(v62);
  v451 = &v405 - v65;
  v66 = __chkstk_darwin(v64);
  v453 = &v405 - v67;
  v68 = __chkstk_darwin(v66);
  v445 = (&v405 - v69);
  __chkstk_darwin(v68);
  v462 = &v405 - v70;
  v71 = sub_1000BC4D4(&qword_1016A5848, &unk_1013B31D0);
  v72 = __chkstk_darwin(v71 - 8);
  v448 = &v405 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v444 = &v405 - v74;
  v460 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v75 = *(v460 - 1);
  v76 = __chkstk_darwin(v460);
  v459 = &v405 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v79 = &v405 - v78;
  v80 = type metadata accessor for LocationFetcher(0);
  v81 = v80 - 8;
  v439 = *(v80 - 8);
  v82 = __chkstk_darwin(v80);
  *&v443 = &v405 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = v83;
  __chkstk_darwin(v82);
  v85 = &v405 - v84;
  v426 = type metadata accessor for Date();
  v425 = *(v426 - 8);
  v86 = __chkstk_darwin(v426);
  v88 = &v405 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __chkstk_darwin(v86);
  v91 = &v405 - v90;
  __chkstk_darwin(v89);
  v93 = &v405 - v92;
  v94 = swift_allocObject();
  *(v94 + 16) = a3;
  *(v94 + 24) = a4;
  v421 = v94;
  v415 = a4;

  v428 = v93;
  static Date.trustedNow.getter(v93);
  v95 = swift_allocObject();
  v429 = v95;
  *(v95 + 16) = _swiftEmptyDictionarySingleton;
  v438 = v95 + 16;
  v96 = swift_allocObject();
  v431 = v96;
  *(v96 + 16) = _swiftEmptyDictionarySingleton;
  v417 = v96 + 16;
  v97 = *(v81 + 40);
  sub_10062CD24(v437, v85, type metadata accessor for LocationFetcher);
  v424 = v97;
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();
  v100 = os_log_type_enabled(v98, v99);
  v414 = a3;
  v416 = v91;
  v405 = v88;
  if (v100)
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&v471 = v102;
    *v101 = 136446210;
    v455 = v98;
    sub_1000035D0(v85 + 3, *(v85 + 6));
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v104;
    sub_10062CBB8(v85, type metadata accessor for LocationFetcher);
    v106 = sub_1000136BC(v103, v105, &v471);

    *(v101 + 4) = v106;
    v107 = v455;
    _os_log_impl(&_mh_execute_header, v455, v99, "Begin location fetch with policy: %{public}s.", v101, 0xCu);
    sub_100007BAC(v102);
  }

  else
  {

    sub_10062CBB8(v85, type metadata accessor for LocationFetcher);
  }

  v108 = swift_allocObject();
  *(v108 + 16) = _swiftEmptyDictionarySingleton;
  v109 = v108 + 16;
  v110 = v437;
  v111 = v437[6];
  v112 = v437[7];
  sub_1000035D0(v437 + 3, v111);
  v113 = (*(v112 + 24))(v111, v112);
  v430 = v108;
  if (v113)
  {
    v427 = 0;
  }

  else
  {
    v114 = v110[6];
    v115 = v110[7];
    sub_1000035D0(v110 + 3, v114);
    v116 = (*(v115 + 64))(v114, v115);
    v117 = *(v418 + 104);
    if (v116)
    {
      v118 = v408;
      v117(v408, enum case for FMNAccountType.ownedDeviceLocations(_:), v419);
      sub_10051482C(v118 + *(v406 + 20));
      type metadata accessor for FindMyAppURLSessionFactory(0);
      swift_allocObject();
      v119 = type metadata accessor for FMNMockingPreferences();
      (*(*(v119 - 8) + 56))(v427, 1, 1, v119);
      v120 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
      type metadata accessor for ServerInteractionController(0);
      v121 = swift_allocObject();
      v122 = v407;
      sub_10062CD24(v118, v407, type metadata accessor for OwnedDeviceFetchEndpoint);
      v427 = sub_10061F094(v122, v120, v121);
      v123 = type metadata accessor for OwnedDeviceFetchEndpoint;
      v124 = v118;
    }

    else
    {
      v125 = enum case for FMNAccountType.searchParty(_:);
      v126 = v410;
      v127 = v419;
      v117(v410, enum case for FMNAccountType.searchParty(_:), v419);
      type metadata accessor for AccountURLComponents();
      swift_allocObject();
      v128 = sub_1010B32C8(v126);
      v129 = v412;
      *v412 = v128;
      v117((v129 + *(Endpoint + 20)), v125, v127);
      type metadata accessor for FindMyAppURLSessionFactory(0);
      swift_allocObject();
      v130 = type metadata accessor for FMNMockingPreferences();
      (*(*(v130 - 8) + 56))(v427, 1, 1, v130);
      v131 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
      type metadata accessor for ServerInteractionController(0);
      v132 = swift_allocObject();
      v133 = v411;
      sub_10062CD24(v129, v411, type metadata accessor for FetchEndpoint);
      v427 = sub_1006229E4(v133, v131, v132);
      v123 = type metadata accessor for FetchEndpoint;
      v124 = v129;
    }

    sub_10062CBB8(v124, v123);
  }

  v134 = v437;
  v135 = v437[6];
  v136 = v437[7];
  sub_1000035D0(v437 + 3, v135);
  if ((*(v136 + 24))(v135, v136))
  {
    v137 = swift_allocObject();
    v138 = v421;
    *(v137 + 16) = v434;
    *(v137 + 24) = v138;
    type metadata accessor for Transaction();
    v139 = v134;
    v140 = v443;
    sub_10062CD24(v139, v443, type metadata accessor for LocationFetcher);
    v141 = (*(v439 + 80) + 40) & ~*(v439 + 80);
    v142 = swift_allocObject();
    v142[2] = a9;
    v142[3] = v137;
    v142[4] = v450;
    sub_10062CC64(v140, v142 + v141, type metadata accessor for LocationFetcher);

    static Transaction.asyncTask(name:block:)();

    (*(v425 + 8))(v428, v426);
  }

  v434 = v109;
  v143 = swift_allocObject();
  v420 = v143;
  v143[2].isa = _swiftEmptyDictionarySingleton;
  v455 = v143 + 2;
  v144 = swift_allocObject();
  *(v144 + 16) = _swiftEmptyArrayStorage;
  v452 = (v144 + 16);
  sub_10062CD24(v134, v443, type metadata accessor for LocationFetcher);
  v145 = *(v439 + 80);
  v146 = (v145 + 32) & ~v145;
  v410 = (v449 + 7);
  v147 = (v449 + 7 + v146) & 0xFFFFFFFFFFFFFFF8;
  v148 = (v147 + 15) & 0xFFFFFFFFFFFFFFF8;
  v439 = v145;
  v149 = swift_allocObject();
  v150 = v431;
  *(v149 + 16) = v430;
  *(v149 + 24) = v150;
  sub_10062CC64(v443, v149 + v146, type metadata accessor for LocationFetcher);
  *(v149 + v147) = v429;
  v419 = v144;
  *(v149 + v148) = v144;
  v418 = v149;
  *(v149 + ((v148 + 15) & 0xFFFFFFFFFFFFFFF8)) = v420;
  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;

    _os_log_impl(&_mh_execute_header, v151, v152, "Gathering beacon information for fetch.", v153, 2u);
  }

  else
  {
  }

  v155 = *(v450 + 16);
  if (v155)
  {
    v156 = v450 + 32;
    v157 = _swiftEmptyArrayStorage;
    v450 += 32;
    v449 = v155;
    do
    {
      sub_10001F280(v156, &v471);
      sub_10000A748(&v471, &v468);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v158 = v460;
      v159 = swift_dynamicCast();
      (*(v75 + 56))(v36, v159 ^ 1u, 1, v158);
      if ((*(v75 + 48))(v36, 1, v158) == 1)
      {
        sub_10000B3A8(v36, &qword_1016A9A30, &unk_1013BD120);
      }

      else
      {
        sub_10062CC64(v36, v459, type metadata accessor for LocalFindableAccessoryRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v157 = sub_100A5D050(0, v157[2] + 1, 1, v157);
        }

        v161 = v157[2];
        v160 = v157[3];
        if (v161 >= v160 >> 1)
        {
          v157 = sub_100A5D050((v160 > 1), v161 + 1, 1, v157);
        }

        v157[2] = v161 + 1;
        sub_10062CC64(v459, v157 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v161, type metadata accessor for LocalFindableAccessoryRecord);
      }

      v156 += 40;
      --v155;
    }

    while (v155);
    v162 = (v456 + 8);
    v460 = _swiftEmptyArrayStorage;
    do
    {
      v171 = v450 + 40 * v155++;
      sub_10001F280(v171, &v471);
      v172 = 0;
      v173 = v157[2];
      while (v173 != v172)
      {
        if (v172 >= v157[2])
        {
          __break(1u);
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        sub_10062CD24(v157 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v172++, v79, type metadata accessor for LocalFindableAccessoryRecord);
        v175 = v472;
        v174 = v473;
        sub_1000035D0(&v471, v472);
        v176 = v462;
        (*(*(*(v174 + 8) + 8) + 32))(v175);
        LOBYTE(v174) = static UUID.== infix(_:_:)();
        (*v162)(v176, v463);
        sub_10062CBB8(v79, type metadata accessor for LocalFindableAccessoryRecord);
        if (v174)
        {
          v154 = sub_100007BAC(&v471);
          goto LABEL_29;
        }
      }

      sub_10000A748(&v471, &v468);
      v177 = v460;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v466[0] = v177;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100025B1C(0, *(v177 + 2) + 1, 1);
        v177 = v466[0];
      }

      v164 = *(v177 + 2);
      v163 = *(v177 + 3);
      if (v164 >= v163 >> 1)
      {
        sub_100025B1C((v163 > 1), v164 + 1, 1);
      }

      v165 = v469;
      v166 = v470;
      v167 = sub_10015049C(&v468, v469);
      __chkstk_darwin(v167);
      v169 = &v405 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v170 + 16))(v169);
      sub_1006252D4(v164, v169, v466, v165, v166);
      v154 = sub_100007BAC(&v468);
      v460 = v466[0];
LABEL_29:
      ;
    }

    while (v155 != v449);
    v179 = v460;
  }

  else
  {
    v157 = _swiftEmptyArrayStorage;
    v179 = _swiftEmptyArrayStorage;
  }

  v412 = a23;
  v411 = a22;
  Endpoint = a21;
  v408 = a20;
  v407 = a19;
  v459 = a18;
  v450 = a17;
  v460 = a16;
  __chkstk_darwin(v154);
  v180 = v437;
  *(&v405 - 2) = v437;

  v181 = sub_10013D298(a12, (&v405 - 4), v179);
  v467 = _swiftEmptyDictionarySingleton;
  v182 = __chkstk_darwin(v181);
  *(&v405 - 8) = v452;
  *(&v405 - 7) = v180;
  v183 = v417;
  *(&v405 - 6) = v438;
  *(&v405 - 5) = v183;
  *(&v405 - 4) = &v467;
  *(&v405 - 3) = v427;
  *(&v405 - 2) = a13;
  *(&v405 - 1) = v418;
  sub_1005D2344(v182, a14, (&v405 - 10));

  swift_beginAccess();

  v185 = sub_10061BDB0(v184);

  __chkstk_darwin(v186);
  *(&v405 - 4) = v183;
  *(&v405 - 3) = v180;
  *(&v405 - 2) = v429;
  sub_1005C684C(a15, (&v405 - 6), v185);

  v187 = *(v179 + 2);
  if (v187)
  {
    v449 = 0;
    v188 = v179;
    v466[0] = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v187, 0);
    v189 = v466[0];
    v190 = v188 + 32;
    v191 = v413;
    do
    {
      sub_10001F280(v190, &v471);
      v193 = v472;
      v192 = v473;
      sub_1000035D0(&v471, v472);
      (*(*(*(v192 + 8) + 8) + 32))(v193);
      sub_100007BAC(&v471);
      v466[0] = v189;
      v195 = *(v189 + 2);
      v194 = *(v189 + 3);
      if (v195 >= v194 >> 1)
      {
        sub_101123D4C((v194 > 1), v195 + 1, 1);
        v189 = v466[0];
      }

      *(v189 + 2) = v195 + 1;
      (*(v456 + 32))(v189 + ((*(v456 + 80) + 32) & ~*(v456 + 80)) + *(v456 + 72) * v195, v191, v463);
      v190 += 40;
      --v187;
    }

    while (v187);
  }

  else
  {

    v189 = _swiftEmptyArrayStorage;
  }

  v449 = ~v439;
  v196 = sub_10000954C(v189);

  v197 = v437;
  v198 = v437[6];
  v199 = v437[7];
  sub_1000035D0(v437 + 3, v198);
  (*(v199 + 24))(v198, v199);
  v200 = *(v197 + 6);
  v201 = *(v197 + 7);
  sub_1000035D0(v197 + 3, v200);
  v202 = (*(v201 + 40))(v200, v201);
  __chkstk_darwin(v202);
  v203 = v428;
  *(&v405 - 4) = v197;
  *(&v405 - 3) = v203;
  *(&v405 - 16) = v204;
  sub_1005C6534(v460, (&v405 - 6), v196);

  v205 = v438;
  swift_beginAccess();
  v206 = v197;
  v207 = 0;
  v208 = 0;
  v209 = *v205;
  v210 = *v205;
  v211 = 1 << *(*v205 + 32);
  v212 = -1;
  if (v211 < 64)
  {
    v212 = ~(-1 << v211);
  }

  v214 = *(v210 + 64);
  v213 = v210 + 64;
  v215 = v212 & v214;
  v216 = (v211 + 63) >> 6;
  v217 = v463;
  v218 = v445;
  v219 = v448;
  while (v215)
  {
    v220 = v207;
LABEL_55:
    v221 = __clz(__rbit64(v215));
    v215 &= v215 - 1;
    v222 = *(*(v209 + 56) + ((v220 << 9) | (8 * v221)));
    v223 = __OFADD__(v208, v222);
    v208 += v222;
    if (v223)
    {
      __break(1u);
      goto LABEL_58;
    }
  }

  while (1)
  {
    v220 = v207 + 1;
    if (__OFADD__(v207, 1))
    {
      goto LABEL_201;
    }

    if (v220 >= v216)
    {
      break;
    }

    v215 = *(v213 + 8 * v220);
    ++v207;
    if (v215)
    {
      v207 = v220;
      goto LABEL_55;
    }
  }

LABEL_58:
  v413 = v208;
  v417 = v209;
  v224 = v443;
  sub_10062CD24(v206, v443, type metadata accessor for LocationFetcher);
  v225 = (v439 + 16) & v449;
  v226 = &v410[v225] & 0xFFFFFFFFFFFFFFF8;
  v227 = swift_allocObject();
  sub_10062CC64(v224, v227 + v225, type metadata accessor for LocationFetcher);
  *(v227 + v226) = v157;
  sub_1000BC4D4(&qword_1016A5850, &qword_1013B31F0);
  unsafeFromAsyncTask<A>(_:)();

  v229 = (v466[0] + 64);
  v228 = *(v466[0] + 8);
  v439 = v466[0];
  v230 = 1 << *(v466[0] + 32);
  v231 = -1;
  if (v230 < 64)
  {
    v231 = ~(-1 << v230);
  }

  v232 = v231 & v228;
  swift_beginAccess();
  v233 = 0;
  v434 = (v230 + 63) >> 6;
  v460 = (v456 + 16);
  v459 = (v456 + 32);
  v450 = v456 + 8;
  v443 = xmmword_101385D80;
  v438 = v229;
  if (!v232)
  {
LABEL_62:
    if (v434 <= v233 + 1)
    {
      v235 = v233 + 1;
    }

    else
    {
      v235 = v434;
    }

    v236 = v235 - 1;
    while (1)
    {
      v234 = v233 + 1;
      if (__OFADD__(v233, 1))
      {
        goto LABEL_196;
      }

      if (v234 >= v434)
      {
        v247 = v217;
        v284 = sub_1000BC4D4(&qword_1016A5858, &qword_1013B31F8);
        (*(*(v284 - 8) + 56))(v219, 1, 1, v284);
        v232 = 0;
        v233 = v236;
        goto LABEL_71;
      }

      v232 = v229[v234];
      ++v233;
      if (v232)
      {
        v233 = v234;
        goto LABEL_70;
      }
    }
  }

  while (1)
  {
    v234 = v233;
LABEL_70:
    v237 = __clz(__rbit64(v232));
    v232 &= v232 - 1;
    v238 = v237 | (v234 << 6);
    v239 = v439;
    v240 = v456;
    v241 = v462;
    (*(v456 + 16))(v462, *(v439 + 48) + *(v456 + 72) * v238, v217);
    v242 = v440;
    sub_10062CD24(*(v239 + 56) + *(v461 + 72) * v238, v440, type metadata accessor for BeaconEstimatedLocation);
    v243 = sub_1000BC4D4(&qword_1016A5858, &qword_1013B31F8);
    v244 = *(v243 + 48);
    v245 = *(v240 + 32);
    v219 = v448;
    v246 = v241;
    v247 = v217;
    v245(v448, v246, v217);
    sub_10062CC64(v242, v219 + v244, type metadata accessor for BeaconEstimatedLocation);
    (*(*(v243 - 8) + 56))(v219, 0, 1, v243);
    v218 = v445;
    v229 = v438;
LABEL_71:
    v248 = v444;
    sub_1000D2AD8(v219, v444, &qword_1016A5848, &unk_1013B31D0);
    v249 = sub_1000BC4D4(&qword_1016A5858, &qword_1013B31F8);
    if ((*(*(v249 - 8) + 48))(v248, 1, v249) == 1)
    {
      break;
    }

    v250 = *(v249 + 48);
    v217 = v247;
    v449 = *v459;
    (v449)(v218, v248, v247);
    v251 = v447;
    sub_10062CC64(v248 + v250, v447, type metadata accessor for BeaconEstimatedLocation);
    v252 = v455;
    swift_beginAccess();
    isa = v252->isa;
    if (*(isa + 2) && (v254 = sub_1000210EC(v218), (v255 & 1) != 0))
    {
      v256 = *(*(isa + 7) + 8 * v254);
      swift_endAccess();
      sub_1000BC4D4(&qword_1016A5860, &qword_1013B3220);
      v257 = (*(v461 + 80) + 32) & ~*(v461 + 80);
      v258 = swift_allocObject();
      *(v258 + 16) = v443;
      sub_10062CD24(v251, v258 + v257, type metadata accessor for BeaconEstimatedLocation);
      v465 = v256;

      sub_100399E1C(v258);
      v259 = v465;
      v260 = v455;
      swift_beginAccess();
      v261 = swift_isUniquelyReferenced_nonNull_native();
      v464 = *v260;
      sub_100FFDCB0(v259, v218, v261);
      *v260 = v464;
      swift_endAccess();
      (*v460)(v451, v218, v247);
    }

    else
    {
      swift_endAccess();
      v262 = *v460;
      v263 = v453;
      (*v460)(v453, v218, v247);
      sub_1000BC4D4(&qword_1016A5860, &qword_1013B3220);
      v264 = (*(v461 + 80) + 32) & ~*(v461 + 80);
      v265 = swift_allocObject();
      *(v265 + 16) = v443;
      sub_10062CD24(v251, v265 + v264, type metadata accessor for BeaconEstimatedLocation);
      v266 = v455;
      swift_beginAccess();
      v267 = swift_isUniquelyReferenced_nonNull_native();
      v268 = v266->isa;
      v464 = v268;
      v269 = sub_1000210EC(v263);
      v271 = *(v268 + 16);
      v272 = (v270 & 1) == 0;
      v223 = __OFADD__(v271, v272);
      v273 = v271 + v272;
      if (v223)
      {
        goto LABEL_202;
      }

      v274 = v270;
      if (*(v268 + 24) >= v273)
      {
        if ((v267 & 1) == 0)
        {
          v285 = v269;
          sub_101008794();
          v269 = v285;
        }
      }

      else
      {
        sub_100FED8A4(v273, v267);
        v269 = sub_1000210EC(v453);
        if ((v274 & 1) != (v275 & 1))
        {
          goto LABEL_205;
        }
      }

      v217 = v463;
      v276 = v464;
      if (v274)
      {
        *(*(v464 + 7) + 8 * v269) = v265;
      }

      else
      {
        *(v464 + (v269 >> 6) + 8) |= 1 << v269;
        v277 = v269;
        v262(*(v276 + 6) + *(v456 + 72) * v269, v453, v217);
        *(*(v276 + 7) + 8 * v277) = v265;
        v278 = *(v276 + 2);
        v223 = __OFADD__(v278, 1);
        v279 = v278 + 1;
        if (v223)
        {
          goto LABEL_204;
        }

        *(v276 + 2) = v279;
      }

      (*v450)(v453, v217);
      v455->isa = v276;
      swift_endAccess();
      v251 = v447;
      v218 = v445;
      v262(v451, v445, v217);
    }

    v280 = *v452;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v280 = sub_100A5BFE0(0, v280[2] + 1, 1, v280);
    }

    v282 = v280[2];
    v281 = v280[3];
    if (v282 >= v281 >> 1)
    {
      v280 = sub_100A5BFE0((v281 > 1), v282 + 1, 1, v280);
    }

    v280[2] = v282 + 1;
    v283 = v456;
    (v449)(v280 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v282, v451, v217);
    *v452 = v280;
    sub_10062CBB8(v251, type metadata accessor for BeaconEstimatedLocation);
    (*(v283 + 8))(v218, v217);
    v219 = v448;
    if (!v232)
    {
      goto LABEL_62;
    }
  }

  v286 = v425;
  v287 = v416;
  v288 = v426;
  (*(v425 + 16))(v416, v428, v426);
  v289 = Logger.logObject.getter();
  v290 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v289, v290))
  {
    v291 = swift_slowAlloc();
    *v291 = 134218240;
    v292 = v405;
    static Date.trustedNow.getter(v405);
    Date.timeIntervalSince(_:)();
    v294 = v293;
    v295 = *(v286 + 8);
    v295(v292, v288);
    v445 = v295;
    v295(v287, v288);
    *(v291 + 4) = fabs(v294);
    *(v291 + 12) = 2048;
    *(v291 + 14) = v413;
    _os_log_impl(&_mh_execute_header, v289, v290, "Overall fetch took %f seconds. %ld round trip(s).", v291, 0x16u);
  }

  else
  {

    v445 = *(v286 + 8);
    v445(v287, v288);
  }

  v296 = v458;
  v297 = v437[6];
  v298 = v437[7];
  sub_1000035D0(v437 + 3, v297);
  if ((*(v298 + 24))(v297, v298))
  {
LABEL_191:
    v392 = Logger.logObject.getter();
    v393 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v392, v393))
    {
      v394 = swift_slowAlloc();
      v395 = swift_slowAlloc();
      v464 = v395;
      *v394 = 136315138;
      swift_beginAccess();

      sub_1000BC4D4(&qword_101696970, &qword_10138C490);
      sub_100009774(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v396 = Dictionary.description.getter();
      v398 = v397;

      v399 = sub_1000136BC(v396, v398, &v464);

      *(v394 + 4) = v399;
      _os_log_impl(&_mh_execute_header, v392, v393, "TRACE: returning resultMap: %s", v394, 0xCu);
      sub_100007BAC(v395);
    }

    v400 = v415;
    v401 = v426;
    v402 = v445;
    swift_beginAccess();

    (v407)(v403, v414, v400);

    v402(v428, v401);
  }

  v299 = v455;
  swift_beginAccess();
  v300 = v299->isa;
  v301 = *(v299->isa + 8);
  v452 = (v299->isa + 64);
  v302 = 1 << *(v300 + 32);
  if (v302 < 64)
  {
    v303 = ~(-1 << v302);
  }

  else
  {
    v303 = -1;
  }

  v304 = v303 & v301;
  v447 = (v302 + 63) >> 6;
  v448 = (v461 + 48);
  v444 = 0x800000010135B500;
  v449 = v300;

  v305 = 0;
  while (1)
  {
    v306 = v436;
    if (v304)
    {
      v307 = v305;
LABEL_113:
      v453 = (v304 - 1) & v304;
      v310 = __clz(__rbit64(v304)) | (v307 << 6);
      v311 = v449;
      v312 = v456;
      v313 = v462;
      v314 = v463;
      (*(v456 + 16))(v462, *(v449 + 48) + *(v456 + 72) * v310, v463);
      v315 = *(*(v311 + 56) + 8 * v310);
      v316 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
      v317 = *(v316 + 48);
      v318 = *(v312 + 32);
      v306 = v436;
      v318(v436, v313, v314);
      *(v306 + v317) = v315;
      (*(*(v316 - 8) + 56))(v306, 0, 1, v316);
    }

    else
    {
      if (v447 <= v305 + 1)
      {
        v308 = v305 + 1;
      }

      else
      {
        v308 = v447;
      }

      v309 = v308 - 1;
      while (1)
      {
        v307 = v305 + 1;
        if (__OFADD__(v305, 1))
        {
          goto LABEL_199;
        }

        if (v307 >= v447)
        {
          break;
        }

        v304 = v452[v307];
        ++v305;
        if (v304)
        {
          v305 = v307;
          goto LABEL_113;
        }
      }

      v336 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
      (*(*(v336 - 8) + 56))(v306, 1, 1, v336);
      v453 = 0;
      v305 = v309;
    }

    v319 = v435;
    sub_1000D2AD8(v306, v435, &qword_1016A5840, &qword_1013B31C8);
    v320 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
    if ((*(*(v320 - 8) + 48))(v319, 1, v320) == 1)
    {

      goto LABEL_191;
    }

    v321 = *(v319 + *(v320 + 48));
    (*v459)(v442, v319, v463);
    v322 = objc_autoreleasePoolPush();
    v323 = v437[6];
    v324 = v437[7];
    sub_1000035D0(v437 + 3, v323);
    if (((*(v324 + 64))(v323, v324) & 1) == 0)
    {

      v334 = 0x61636F4C6E736361;
      v335 = 0xEC0000006E6F6974;
      goto LABEL_164;
    }

    v451 = v322;
    v325 = *(v321 + 16);
    v326 = v454;
    if (v325)
    {
      break;
    }

    v328 = _swiftEmptyArrayStorage;
LABEL_130:
    v337 = v432;
    sub_1012BAB18(v328, v432);

    v338 = *v448;
    if ((*v448)(v337, 1, v326) == 1)
    {

      v339 = v337;
LABEL_146:
      sub_10000B3A8(v339, &unk_101696940, &unk_10138B210);
      v334 = 0x61636F4C6E736361;
      v335 = 0xEC0000006E6F6974;
      v322 = v451;
      goto LABEL_164;
    }

    sub_10062CC64(v337, v433, type metadata accessor for BeaconEstimatedLocation);
    v340 = v441;
    if (v325)
    {
      v341 = 0;
      v342 = _swiftEmptyArrayStorage;
      while (v341 < *(v321 + 16))
      {
        v343 = (*(v461 + 80) + 32) & ~*(v461 + 80);
        v344 = *(v461 + 72);
        sub_10062CD24(v321 + v343 + v344 * v341, v340, type metadata accessor for BeaconEstimatedLocation);
        if (*(v340 + v326[11]) == 7)
        {
          sub_10062CC64(v340, v446, type metadata accessor for BeaconEstimatedLocation);
          v345 = swift_isUniquelyReferenced_nonNull_native();
          v464 = v342;
          if ((v345 & 1) == 0)
          {
            sub_101124A24(0, *(v342 + 2) + 1, 1);
            v342 = v464;
          }

          v347 = *(v342 + 2);
          v346 = *(v342 + 3);
          if (v347 >= v346 >> 1)
          {
            sub_101124A24((v346 > 1), v347 + 1, 1);
            v342 = v464;
          }

          *(v342 + 2) = v347 + 1;
          sub_10062CC64(v446, v342 + v343 + v347 * v344, type metadata accessor for BeaconEstimatedLocation);
          v326 = v454;
          v340 = v441;
        }

        else
        {
          sub_10062CBB8(v340, type metadata accessor for BeaconEstimatedLocation);
        }

        ++v341;
        v296 = v458;
        if (v325 == v341)
        {
          goto LABEL_144;
        }
      }

      goto LABEL_200;
    }

    v342 = _swiftEmptyArrayStorage;
LABEL_144:

    v348 = v423;
    sub_1012BAB18(v342, v423);

    if (v338(v348, 1, v326) == 1)
    {
      sub_10062CBB8(v433, type metadata accessor for BeaconEstimatedLocation);
      v339 = v348;
      goto LABEL_146;
    }

    v349 = v422;
    sub_10062CC64(v348, v422, type metadata accessor for BeaconEstimatedLocation);
    v350 = v433;
    v351 = static Date.> infix(_:_:)();
    if (v351)
    {
      v334 = 0xD000000000000013;
    }

    else
    {
      v334 = 0x61636F4C6E736361;
    }

    if (v351)
    {
      v335 = v444;
    }

    else
    {
      v335 = 0xEC0000006E6F6974;
    }

    v352 = v326[9];
    v353 = *(v350 + v352);
    v354 = *(v349 + v352);
    if (v354 >= v353)
    {
      v355 = 0x61636F4C6E736361;
    }

    else
    {
      v355 = 0xD000000000000013;
    }

    if (v354 >= v353)
    {
      v356 = 0xEC0000006E6F6974;
    }

    else
    {
      v356 = v444;
    }

    v357 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v350 + v326[7]) longitude:*(v350 + v326[8])];
    v358 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v349 + v326[7]) longitude:*(v349 + v326[8])];
    [v357 distanceFromLocation:v358];
    v360 = v359;
    type metadata accessor for Transaction();
    v361 = swift_allocObject();
    *(v361 + 16) = v334;
    *(v361 + 24) = v335;
    *(v361 + 32) = v355;
    *(v361 + 40) = v356;
    *(v361 + 48) = v360;
    *(v361 + 56) = vabdd_f64(v353, v354);

    static Transaction.asyncTask(name:block:)();

    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v362 = type metadata accessor for Logger();
    sub_1000076D4(v362, qword_10177CE28);
    v363 = Logger.logObject.getter();
    v364 = static os_log_type_t.debug.getter();
    v365 = os_log_type_enabled(v363, v364);
    v322 = v451;
    if (v365)
    {
      v366 = swift_slowAlloc();
      *v366 = 0;
      _os_log_impl(&_mh_execute_header, v363, v364, "analytics: logged accuracy difference event to CA", v366, 2u);
    }

    sub_10062CBB8(v422, type metadata accessor for BeaconEstimatedLocation);
    sub_10062CBB8(v433, type metadata accessor for BeaconEstimatedLocation);
LABEL_164:
    v367 = v467;
    if (v467[2])
    {
      v368 = sub_1000210EC(v442);
      if (v369)
      {
        v370 = 0;
        v371 = 0;
        v372 = *(v367[7] + 8 * v368);
        v373 = 1 << *(v372 + 32);
        if (v373 < 64)
        {
          v374 = ~(-1 << v373);
        }

        else
        {
          v374 = -1;
        }

        v375 = v374 & *(v372 + 64);
        v376 = (v373 + 63) >> 6;
        while (v375)
        {
          v377 = v370;
LABEL_176:
          v378 = __clz(__rbit64(v375));
          v375 &= v375 - 1;
          v379 = *(*(v372 + 56) + ((v377 << 9) | (8 * v378)));
          v223 = __OFADD__(v371, v379);
          v371 += v379;
          if (v223)
          {
            goto LABEL_203;
          }
        }

        while (1)
        {
          v377 = v370 + 1;
          if (__OFADD__(v370, 1))
          {
            goto LABEL_198;
          }

          if (v377 >= v376)
          {
            break;
          }

          v375 = *(v372 + 64 + 8 * v377);
          ++v370;
          if (v375)
          {
            v370 = v377;
            goto LABEL_176;
          }
        }

        v380 = *(v372 + 16) / v371;
        if (v380 <= 1.001)
        {
          goto LABEL_101;
        }

        v381 = v417;
        if (*(v417 + 16))
        {
          v382 = v322;
          v383 = sub_1000210EC(v442);
          if (v384)
          {
            v385 = *(*(v381 + 56) + 8 * v383);
LABEL_185:
            type metadata accessor for Transaction();
            v386 = swift_allocObject();
            *(v386 + 16) = v380;
            *(v386 + 24) = v334;
            *(v386 + 32) = v335;
            *(v386 + 40) = v385;
            *(v386 + 48) = v371;
            static Transaction.asyncTask(name:block:)();

            if (qword_1016954F0 != -1)
            {
              swift_once();
            }

            v387 = type metadata accessor for Logger();
            sub_1000076D4(v387, qword_10177CE28);
            v388 = Logger.logObject.getter();
            v389 = static os_log_type_t.debug.getter();
            v390 = os_log_type_enabled(v388, v389);
            v304 = v453;
            v322 = v382;
            if (v390)
            {
              v391 = swift_slowAlloc();
              *v391 = 0;
              _os_log_impl(&_mh_execute_header, v388, v389, "analytics: logged fetch stats to CA", v391, 2u);
            }

            goto LABEL_102;
          }
        }

        else
        {
          v382 = v322;
        }

        v385 = 0;
        goto LABEL_185;
      }
    }

LABEL_101:

    v304 = v453;
LABEL_102:
    objc_autoreleasePoolPop(v322);
    (*v450)(v442, v463);
  }

  v327 = 0;
  v328 = _swiftEmptyArrayStorage;
  while (v327 < *(v321 + 16))
  {
    v329 = (*(v461 + 80) + 32) & ~*(v461 + 80);
    v330 = *(v461 + 72);
    sub_10062CD24(v321 + v329 + v330 * v327, v296, type metadata accessor for BeaconEstimatedLocation);
    if (*(v296 + v326[11]) == 15)
    {
      sub_10062CC64(v296, v457, type metadata accessor for BeaconEstimatedLocation);
      v331 = swift_isUniquelyReferenced_nonNull_native();
      v464 = v328;
      if ((v331 & 1) == 0)
      {
        sub_101124A24(0, *(v328 + 2) + 1, 1);
        v328 = v464;
      }

      v333 = *(v328 + 2);
      v332 = *(v328 + 3);
      if (v333 >= v332 >> 1)
      {
        sub_101124A24((v332 > 1), v333 + 1, 1);
        v328 = v464;
      }

      *(v328 + 2) = v333 + 1;
      sub_10062CC64(v457, v328 + v329 + v333 * v330, type metadata accessor for BeaconEstimatedLocation);
      v326 = v454;
      v296 = v458;
    }

    else
    {
      sub_10062CBB8(v296, type metadata accessor for BeaconEstimatedLocation);
    }

    if (v325 == ++v327)
    {
      goto LABEL_130;
    }
  }

LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10062AAFC(uint64_t a1)
{
  v3 = *(type metadata accessor for LocationFetcher(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for BeaconEstimatedLocation(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));
  v12 = *(v11 + *(v9 + 64));

  sub_1005F3630(a1, v10, v1 + v4, (v1 + v7), v11, v12);
}

uint64_t sub_10062ACA4()
{
  v2 = *(type metadata accessor for LocationFetcher(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for BeaconKeyManager.IndexInformation(0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for RawSearchResult(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for Date() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v0 + v4;
  v17 = *(v0 + v4);
  v18 = *(v16 + 8);
  v19 = *(v0 + v7);
  v20 = swift_task_alloc();
  *(v1 + 16) = v20;
  *v20 = v1;
  v20[1] = sub_100014744;

  return sub_1005F7A88(v0 + v3, v17, v18, v0 + v6, v19, v0 + v9, v0 + v12, v0 + v15);
}

uint64_t sub_10062AF30(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_100029784(a1, a2);
  }

  return a1;
}