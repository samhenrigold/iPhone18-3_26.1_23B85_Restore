uint64_t sub_100398A38(int64_t a1)
{
  v3 = v1;
  v48 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v47 = v44 - v13;
  __chkstk_darwin(v12);
  v49 = v44 - v14;
  inited = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v16 = *v1;
  v17 = *(*v1 + 16);
  v18 = v17 + inited;
  if (__OFADD__(v17, inited))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = inited;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v7;
  v51 = v11;
  if (!isUniquelyReferenced_nonNull_native || (v21 = v16[3] >> 1, v21 < v18))
  {
    if (v17 <= v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = v17;
    }

    v16 = sub_100A5C8CC(isUniquelyReferenced_nonNull_native, v22, 1, v16);
    v21 = v16[3] >> 1;
  }

  v11 = ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v2 = *(v5 + 72);
  v23 = v21 - v16[2];
  v24 = dispatch thunk of _AnySequenceBox.__copyContents(initializing:)();
  v26 = v25;

  sub_1000BC4D4(&qword_10169EFA0, &qword_10139FD10);
  inited = swift_initStackObject();
  *(inited + 16) = v24;
  if (v26 < v19)
  {
    goto LABEL_16;
  }

  if (v26 >= 1)
  {
    v27 = v16[2];
    v28 = __OFADD__(v27, v26);
    v29 = v27 + v26;
    if (v28)
    {
      __break(1u);
      goto LABEL_23;
    }

    v16[2] = v29;
  }

  if (v26 == v23)
  {
LABEL_17:
    v44[1] = inited;
    a1 = v16[2];
    v31 = v49;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v32 = v31;
    v26 = v47;
    sub_1000D2A70(v32, v47, &qword_10169EF98, &unk_1013D66D0);
    v46 = *(v5 + 48);
    if (v46(v26, 1, v48) == 1)
    {
LABEL_18:
      sub_10000B3A8(v49, &qword_10169EF98, &unk_1013D66D0);

      result = sub_10000B3A8(v26, &qword_10169EF98, &unk_1013D66D0);
      goto LABEL_14;
    }

    do
    {
LABEL_23:
      sub_10000B3A8(v26, &qword_10169EF98, &unk_1013D66D0);
      v33 = v16[3];
      v34 = v33 >> 1;
      v35 = a1;
      if ((v33 >> 1) < a1 + 1)
      {
        v16 = sub_100A5C8CC((v33 > 1), a1 + 1, 1, v16);
        v34 = v16[3] >> 1;
      }

      v36 = v51;
      sub_1000D2A70(v49, v51, &qword_10169EF98, &unk_1013D66D0);
      if (v46(v36, 1, v48) == 1)
      {
        a1 = v35;
LABEL_32:
        sub_10000B3A8(v51, &qword_10169EF98, &unk_1013D66D0);
        v34 = a1;
      }

      else
      {
        a1 = v35;
        if (v35 > v34)
        {
          v34 = v35;
        }

        v37 = &v11[v16 + v2 * v35];
        v45 = v34;
        while (1)
        {
          sub_1003CBBBC(v51, v50, type metadata accessor for OwnedDeviceKeyRecord);
          if (v34 == a1)
          {
            break;
          }

          v38 = a1;
          v39 = v49;
          sub_10000B3A8(v49, &qword_10169EF98, &unk_1013D66D0);
          sub_1003CBBBC(v50, v37, type metadata accessor for OwnedDeviceKeyRecord);
          v40 = v38 + 1;
          dispatch thunk of _AnyIteratorBoxBase.next()();
          v41 = v39;
          v34 = v45;
          v42 = v51;
          sub_1000D2A70(v41, v51, &qword_10169EF98, &unk_1013D66D0);
          v43 = v42;
          a1 = v40;
          v37 += v2;
          if (v46(v43, 1, v48) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_10002FE88(v50, type metadata accessor for OwnedDeviceKeyRecord);
        a1 = v34;
      }

      v16[2] = v34;
      v26 = v47;
      sub_1000D2A70(v49, v47, &qword_10169EF98, &unk_1013D66D0);
    }

    while (v46(v26, 1, v48) != 1);
    goto LABEL_18;
  }

LABEL_14:
  *v3 = v16;
  return result;
}

uint64_t sub_100398F60(uint64_t a1)
{
  v77 = type metadata accessor for UUID();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = __chkstk_darwin(v6 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v59 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1003AB114(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_1000128F8(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_1000D2A70(v14, v75, &qword_1016980D0, &unk_10138F3B0);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_100A5BFE0((v39 > 1), v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_1000D2A70(v14, v76, &qword_1016980D0, &unk_10138F3B0);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_10000B3A8(v43, &qword_1016980D0, &unk_10138F3B0);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_1000D2A70(v14, v75, &qword_1016980D0, &unk_10138F3B0);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_1000D2A70(v14, v76, &qword_1016980D0, &unk_10138F3B0);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    sub_1000128F8(v65);
    result = sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003996FC(uint64_t a1)
{
  v77 = type metadata accessor for UUID();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = __chkstk_darwin(v6 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v59 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1003A9D58(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_1000128F8(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_1000D2A70(v14, v75, &qword_1016980D0, &unk_10138F3B0);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_100A5BFE0((v39 > 1), v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_1000D2A70(v14, v76, &qword_1016980D0, &unk_10138F3B0);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_10000B3A8(v43, &qword_1016980D0, &unk_10138F3B0);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_1000D2A70(v14, v75, &qword_1016980D0, &unk_10138F3B0);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_1000D2A70(v14, v76, &qword_1016980D0, &unk_10138F3B0);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    sub_1000128F8(v65);
    result = sub_10000B3A8(v37, &qword_1016980D0, &unk_10138F3B0);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_100399E48(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100A5D350(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100399F4C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100A5D670(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000BC4D4(&unk_1016A60A0, &unk_10139FD40);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10039A158(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100A5CBA0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10039A2A8(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100A5DE40(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  result = sub_1000364B4(&v38, &v4[v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = v4[2];
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v41 = v23;
          v42 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v36 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    v4[2] = v18;
  }

  result = v38;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = v4[2];
  v13 = v39;
  v14 = v40;
  v2 = v41;
  v37 = v39;
  if (!v42)
  {
    goto LABEL_19;
  }

  v19 = (v42 - 1) & v42;
  v20 = __clz(__rbit64(v42)) | (v41 << 6);
  v36 = v40;
  v21 = (v40 + 64) >> 6;
LABEL_27:
  v26 = result;
  v27 = *(result[7] + 8 * v20);

  v28 = v37;
LABEL_29:
  while (1)
  {
    v29 = v4[3];
    v30 = v29 >> 1;
    if ((v29 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v30)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v12;
  }

  v34 = sub_100A5DE40((v29 > 1), v12 + 1, 1, v4);
  v28 = v37;
  v4 = v34;
  v30 = v34[3] >> 1;
  if (v12 >= v30)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v4[v12++ + 4] = v27;
    if (!v19)
    {
      break;
    }

    result = v26;
LABEL_38:
    v33 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = *(result[7] + ((v2 << 9) | (8 * v33)));

    v28 = v37;
    if (v12 == v30)
    {
      v12 = v30;
      v4[2] = v30;
      goto LABEL_29;
    }
  }

  v31 = v2;
  result = v26;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v32 >= v21)
    {
      break;
    }

    v19 = *(v28 + 8 * v32);
    ++v31;
    if (v19)
    {
      v2 = v32;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v35 = v2 + 1;
  }

  else
  {
    v35 = v21;
  }

  v40 = v36;
  v41 = v35 - 1;
  v42 = 0;
  v4[2] = v12;
LABEL_13:
  result = sub_1000128F8(result);
  *v1 = v4;
  return result;
}

uint64_t sub_10039A5A8(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v12 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1000BC4D4(a3, a4);
  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10039A6F8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100A5DF68(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10039A7F0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100A5E090(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000BC4D4(&qword_10169F020, &qword_10139FE08);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10039A94C(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v67 = a2;
  v8 = type metadata accessor for Bit();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000BC4D4(&qword_10169F068, &unk_1013A00E0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v65 = &v51 - v17;
  __chkstk_darwin(v16);
  v18 = &v51;
  v20 = &v51 - v19;
  v21 = a4 >> 1;
  v22 = __OFSUB__(a4 >> 1, a3);
  v23 = (a4 >> 1) - a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  v66 = v11;
  v68 = v9;
  v69 = a1;
  v11 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = (v11[3] >> 1), v18 < v25))
  {
    if (v24 <= v25)
    {
      v27 = v24 + v23;
    }

    else
    {
      v27 = v24;
    }

    v11 = sub_100A5E6F8(isUniquelyReferenced_nonNull_native, v27, 1, v11);
    v18 = (v11[3] >> 1);
  }

  v28 = &v18[-v11[2]];
  if (v21 == a3)
  {
    if (v23 <= 0)
    {
      v23 = 0;
      v18 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v28 < v23)
  {
    __break(1u);
    goto LABEL_27;
  }

  result = swift_arrayInitWithCopy();
  if (v23 <= 0)
  {
LABEL_16:
    v18 = v21;
LABEL_17:
    if (v23 != v28)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v11;
      return result;
    }

LABEL_23:
    v64 = v18;
    v23 = v11[2];
    v25 = v68;
    v53 = *(v68 + 56);
    v54 = v68 + 56;
    v53(v20, 1, 1, v8);
    v32 = v65;
    sub_1000D2A70(v20, v65, &qword_10169F068, &unk_1013A00E0);
    v61 = *(v25 + 48);
    v62 = v25 + 48;
    if (v61(v32, 1, v8) == 1)
    {
      v33 = v65;
LABEL_25:
      sub_10000B3A8(v20, &qword_10169F068, &unk_1013A00E0);
      swift_unknownObjectRelease();
      result = sub_10000B3A8(v33, &qword_10169F068, &unk_1013A00E0);
      goto LABEL_19;
    }

LABEL_27:
    v57 = (v25 + 32);
    v51 = (v25 + 8);
    v52 = (v25 + 16);
    v34 = v23;
    v33 = v65;
    v59 = v20;
    v60 = v15;
    do
    {
      sub_10000B3A8(v33, &qword_10169F068, &unk_1013A00E0);
      v36 = v11[3];
      v37 = v36 >> 1;
      v38 = v34;
      if ((v36 >> 1) < v34 + 1)
      {
        v11 = sub_100A5E6F8((v36 > 1), v34 + 1, 1, v11);
        v37 = v11[3] >> 1;
      }

      v39 = *(v68 + 80);
      sub_1000D2A70(v20, v15, &qword_10169F068, &unk_1013A00E0);
      if (v61(v15, 1, v8) == 1)
      {
        v34 = v38;
        v40 = v60;
LABEL_34:
        sub_10000B3A8(v40, &qword_10169F068, &unk_1013A00E0);
        v35 = v34;
        v33 = v65;
        v15 = v40;
      }

      else
      {
        v56 = v11 + ((v39 + 32) & ~v39);
        v41 = *v57;
        v34 = v38;
        if (v38 <= v37)
        {
          v42 = v37;
        }

        else
        {
          v42 = v38;
        }

        v58 = v42;
        v40 = v60;
        v55 = v41;
        while (1)
        {
          v46 = v66;
          v41(v66, v40, v8);
          if (v58 == v34)
          {
            break;
          }

          v47 = v59;
          sub_10000B3A8(v59, &qword_10169F068, &unk_1013A00E0);
          v48 = v34;
          v49 = *(v68 + 72);
          v63 = v48;
          result = (v41)(&v56[v49 * v48], v46, v8);
          if (v64 == v21)
          {
            v43 = 1;
            v64 = v21;
            v44 = v60;
          }

          else
          {
            v44 = v60;
            if (v64 < a3 || v64 >= v21)
            {
              goto LABEL_47;
            }

            v50 = v64;
            (*v52)(v47, v67 + v49 * v64, v8);
            v43 = 0;
            v64 = v50 + 1;
          }

          v53(v47, v43, 1, v8);
          sub_1000D2A70(v47, v44, &qword_10169F068, &unk_1013A00E0);
          v45 = v61(v44, 1, v8);
          v34 = v63 + 1;
          v40 = v44;
          v41 = v55;
          if (v45 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v51)(v46, v8);
        v35 = v58;
        v34 = v58;
        v33 = v65;
        v15 = v60;
      }

      v20 = v59;
      v11[2] = v35;
      sub_1000D2A70(v20, v33, &qword_10169F068, &unk_1013A00E0);
    }

    while (v61(v33, 1, v8) != 1);
    goto LABEL_25;
  }

  v30 = v11[2];
  v22 = __OFADD__(v30, v23);
  v31 = v30 + v23;
  if (!v22)
  {
    v11[2] = v31;
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_10039AF9C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v52 = a2;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v50 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v51 = v44 - v16;
  __chkstk_darwin(v15);
  v17 = v44;
  v19 = v44 - v18;
  v20 = a4 >> 1;
  v21 = __OFSUB__(a4 >> 1, a3);
  v22 = (a4 >> 1) - a3;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

  v54 = a1;
  v5 = *v4;
  v23 = *(*v4 + 16);
  v24 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v17 = (v5[3] >> 1), v17 < v24))
  {
    if (v23 <= v24)
    {
      v26 = v23 + v22;
    }

    else
    {
      v26 = v23;
    }

    v5 = sub_100A5C050(isUniquelyReferenced_nonNull_native, v26, 1, v5);
    v17 = (v5[3] >> 1);
  }

  v27 = v17 - v5[2];
  if (v20 == a3)
  {
    if (v22 <= 0)
    {
      v22 = 0;
      v17 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v27 < v22)
  {
    __break(1u);
    goto LABEL_29;
  }

  result = swift_arrayInitWithCopy();
  if (v22 <= 0)
  {
LABEL_16:
    v17 = v20;
LABEL_17:
    if (v22 != v27)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v49 = v17;
    v22 = v5[2];
    v31 = v53;
    v44[0] = *(v53 + 56);
    v44[1] = v53 + 56;
    (v44[0])(v19, 1, 1, v9);
    v32 = v51;
    sub_1000D2A70(v19, v51, &unk_1016A9A20, &qword_10138B280);
    v33 = v31;
    v24 = v32;
    v47 = *(v33 + 48);
    v48 = v33 + 48;
    if (v47(v32, 1, v9) == 1)
    {
LABEL_24:
      sub_10000B3A8(v19, &unk_1016A9A20, &qword_10138B280);
      swift_unknownObjectRelease();
      result = sub_10000B3A8(v24, &unk_1016A9A20, &qword_10138B280);
      goto LABEL_19;
    }

    do
    {
LABEL_29:
      sub_10000B3A8(v24, &unk_1016A9A20, &qword_10138B280);
      v35 = v5[3];
      v36 = v35 >> 1;
      if ((v35 >> 1) < v22 + 1)
      {
        v5 = sub_100A5C050((v35 > 1), v22 + 1, 1, v5);
        v36 = v5[3] >> 1;
      }

      v37 = *(v53 + 80);
      sub_1000D2A70(v19, v14, &unk_1016A9A20, &qword_10138B280);
      if (v47(v14, 1, v9) == 1)
      {
LABEL_32:
        sub_10000B3A8(v14, &unk_1016A9A20, &qword_10138B280);
        v34 = v22;
      }

      else
      {
        v45 = v5 + ((v37 + 32) & ~v37);
        if (v22 <= v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = v22;
        }

        v46 = v38;
        v39 = v50;
        while (1)
        {
          sub_1003CBBBC(v14, v39, type metadata accessor for OwnedBeaconRecord);
          if (v46 == v22)
          {
            break;
          }

          sub_10000B3A8(v19, &unk_1016A9A20, &qword_10138B280);
          v41 = *(v53 + 72);
          result = sub_1003CBBBC(v39, &v45[v41 * v22], type metadata accessor for OwnedBeaconRecord);
          if (v49 == v20)
          {
            v40 = 1;
            v49 = v20;
          }

          else
          {
            if (v49 < a3 || v49 >= v20)
            {
              goto LABEL_45;
            }

            v42 = v52 + v41 * v49;
            v43 = v49;
            sub_10002FDC4(v42, v19, type metadata accessor for OwnedBeaconRecord);
            v40 = 0;
            v49 = v43 + 1;
          }

          (v44[0])(v19, v40, 1, v9);
          sub_1000D2A70(v19, v14, &unk_1016A9A20, &qword_10138B280);
          ++v22;
          if (v47(v14, 1, v9) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_10002FE88(v39, type metadata accessor for OwnedBeaconRecord);
        v34 = v46;
        v22 = v46;
      }

      v5[2] = v34;
      v24 = v51;
      sub_1000D2A70(v19, v51, &unk_1016A9A20, &qword_10138B280);
    }

    while (v47(v24, 1, v9) != 1);
    goto LABEL_24;
  }

  v29 = v5[2];
  v21 = __OFADD__(v29, v22);
  v30 = v29 + v22;
  if (!v21)
  {
    v5[2] = v30;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_10039B5D0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10039B714(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100A5F0A0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10039B818(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100A5D2EC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10039B904(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_101123F20(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v7 = v2[2];
      v8 = v2[3];

      if (v7 >= v8 >> 1)
      {
        sub_101123F20((v8 > 1), v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = sub_100008C00();
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v7 + 1;
      sub_10000A748(&v10, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10039BA14(uint64_t a1)
{
  v2 = type metadata accessor for OwnerPeerTrust(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_101124434(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v8, v5, type metadata accessor for OwnerPeerTrust);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_101124434((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_100019420(&qword_10169EEF8, type metadata accessor for OwnerPeerTrust, &unk_10139C574);
      v12 = sub_1000280DC(&v14);
      sub_10002FDC4(v5, v12, type metadata accessor for OwnerPeerTrust);
      v7[2] = v11 + 1;
      sub_10000A748(&v14, &v7[5 * v11 + 4]);
      sub_10002FE88(v5, type metadata accessor for OwnerPeerTrust);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10039BC18(uint64_t a1)
{
  v2 = type metadata accessor for MemberPeerTrust(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_101124434(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v8, v5, type metadata accessor for MemberPeerTrust);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_101124434((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_100019420(&qword_10169EEF0, type metadata accessor for MemberPeerTrust, &unk_1013EC1A4);
      v12 = sub_1000280DC(&v14);
      sub_10002FDC4(v5, v12, type metadata accessor for MemberPeerTrust);
      v7[2] = v11 + 1;
      sub_10000A748(&v14, &v7[5 * v11 + 4]);
      sub_10002FE88(v5, type metadata accessor for MemberPeerTrust);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10039BE1C(uint64_t a1)
{
  v2 = type metadata accessor for SharingCircleSecret(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_101124434(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v8, v5, type metadata accessor for SharingCircleSecret);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_101124434((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_100019420(&qword_10169EEE8, type metadata accessor for SharingCircleSecret, &unk_1013E816C);
      v12 = sub_1000280DC(&v14);
      sub_10002FDC4(v5, v12, type metadata accessor for SharingCircleSecret);
      v7[2] = v11 + 1;
      sub_10000A748(&v14, &v7[5 * v11 + 4]);
      sub_10002FE88(v5, type metadata accessor for SharingCircleSecret);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10039C020(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_101124434(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v8, v5, type metadata accessor for SharedBeaconRecord);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_101124434((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_100019420(&unk_1016CAC90, type metadata accessor for SharedBeaconRecord, &unk_10140BAE0);
      v12 = sub_1000280DC(&v14);
      sub_10002FDC4(v5, v12, type metadata accessor for SharedBeaconRecord);
      v7[2] = v11 + 1;
      sub_10000A748(&v14, &v7[5 * v11 + 4]);
      sub_10002FE88(v5, type metadata accessor for SharedBeaconRecord);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10039C224(uint64_t a1)
{
  v2 = type metadata accessor for BeaconNamingRecord(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_101124434(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v8, v5, type metadata accessor for BeaconNamingRecord);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_101124434((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_100019420(&qword_10169EEE0, type metadata accessor for BeaconNamingRecord, &unk_1013E8F18);
      v12 = sub_1000280DC(&v14);
      sub_10002FDC4(v5, v12, type metadata accessor for BeaconNamingRecord);
      v7[2] = v11 + 1;
      sub_10000A748(&v14, &v7[5 * v11 + 4]);
      sub_10002FE88(v5, type metadata accessor for BeaconNamingRecord);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10039C43C(uint64_t a1)
{
  v2 = type metadata accessor for SPCachedAdvertisement(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1011246DC(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v8, v5, type metadata accessor for SPCachedAdvertisement);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_1011246DC((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_10161A368;
      v12 = sub_1000280DC(&v14);
      sub_10002FDC4(v5, v12, type metadata accessor for SPCachedAdvertisement);
      v7[2] = v11 + 1;
      sub_10000A748(&v14, &v7[5 * v11 + 4]);
      sub_10002FE88(v5, type metadata accessor for SPCachedAdvertisement);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10039C60C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1011248C0(0, v1, 0);
    v3 = (a1 + 32);
    type metadata accessor for SPPairingSessionError(0);
    sub_100019420(&qword_101695F60, type metadata accessor for SPPairingSessionError, &unk_101389E60);
    do
    {
      v4 = *v3;
      v5 = swift_allocError();
      *v6 = v4;
      v7 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      v9 = v4;
      if (v7 >= v8 >> 1)
      {
        sub_1011248C0((v8 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      _swiftEmptyArrayStorage[v7 + 4] = v5;
      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10039C740(uint64_t a1)
{
  v2 = type metadata accessor for BeaconEstimatedLocation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1011249E4(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v8, v5, type metadata accessor for BeaconEstimatedLocation);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_1011249E4((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_10161A418;
      v12 = sub_1000280DC(&v14);
      sub_10002FDC4(v5, v12, type metadata accessor for BeaconEstimatedLocation);
      v7[2] = v11 + 1;
      sub_10000A748(&v14, &v7[5 * v11 + 4]);
      sub_10002FE88(v5, type metadata accessor for BeaconEstimatedLocation);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10039C910(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1011242E8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      ++v4;
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1011242E8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1001E6224(&v8, &v2[4 * v6 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10039CA08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_101124D64(0, v1, 0);
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_10002E98C(v4, v5);
      sub_1000BC4D4(&qword_10169EFD8, &qword_10139FD88);
      sub_1000BC4D4(&qword_10169EFE0, &qword_10139FD90);
      swift_dynamicCast();
      v6 = v14;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_101124D64((v7 > 1), v8 + 1, 1);
        v6 = v14;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[5 * v8];
      *(v9 + 32) = v11;
      v3 += 5;
      v9[5] = v12;
      v9[6] = v13;
      *(v9 + 7) = v6;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10039CB64(uint64_t a1)
{
  v16 = sub_1000BC4D4(&qword_10169EF20, &qword_10139FC08);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - v3;
  v5 = sub_1000BC4D4(&qword_10169EF28, &unk_10139FC10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_101124DE4(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1000D2A70(v11, v4, &qword_10169EF20, &qword_10139FC08);
      swift_dynamicCast();
      v17 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_101124DE4((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      v10[2] = v14 + 1;
      sub_1000D2AD8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_10169EF28, &unk_10139FC10);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_10039CD9C(uint64_t a1)
{
  v2 = type metadata accessor for RawSearchResult(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1011249E4(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002FDC4(v8, v5, type metadata accessor for RawSearchResult);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_1011249E4((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_10161A440;
      v12 = sub_1000280DC(&v14);
      sub_10002FDC4(v5, v12, type metadata accessor for RawSearchResult);
      v7[2] = v11 + 1;
      sub_10000A748(&v14, &v7[5 * v11 + 4]);
      sub_10002FE88(v5, type metadata accessor for RawSearchResult);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10039CF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1011244F8(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v8 = (a1 + 32);
    do
    {
      v10 = *v8++;
      v9 = v10;
      v17 = v4;
      v12 = v4[2];
      v11 = v4[3];
      if (v12 >= v11 >> 1)
      {
        sub_1011244F8((v11 > 1), v12 + 1, 1);
        v4 = v17;
      }

      v15 = a2;
      v16 = a3;
      LOBYTE(v14) = v9;
      v4[2] = v12 + 1;
      sub_10000A748(&v14, &v4[5 * v12 + 4]);
      --v3;
    }

    while (v3);
  }

  return v4;
}

void *sub_10039D068(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_101125290(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v14 = *v4;
      v15 = v5;
      v16 = v4[2];
      v17 = *(v4 + 6);
      sub_1003CA224(&v14, &v11);
      v18 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_101125290((v6 > 1), v7 + 1, 1);
        v2 = v18;
      }

      v12 = &type metadata for OwnSubmitPayload;
      v13 = sub_1000D271C();
      v8 = swift_allocObject();
      *&v11 = v8;
      v9 = v15;
      *(v8 + 16) = v14;
      *(v8 + 32) = v9;
      *(v8 + 48) = v16;
      *(v8 + 64) = v17;
      v2[2] = v7 + 1;
      sub_10000A748(&v11, &v2[5 * v7 + 4]);
      v4 = (v4 + 56);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10039D1A4(uint64_t a1)
{
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_1011256C4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_1011256C4((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_100019420(&qword_10169EF58, &type metadata accessor for Device, &protocol conformance descriptor for Device);
      v14 = sub_1000280DC(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_10000A748(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_10039D3B0(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1011242E8(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100008BB8(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_1011242E8((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_1001E6224(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_100008BB8(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_1011242E8((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_1001E6224(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_10039D59C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1011257A8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1011257A8((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100008BB8(0, &qword_10169F050, RTLocationOfInterest_ptr);
        v16 = &off_101658B68;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_10000A748(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1011257A8((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100008BB8(0, &qword_10169F050, RTLocationOfInterest_ptr);
        v16 = &off_101658B68;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_10000A748(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10039D77C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1011242E8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1011242E8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1001E6224(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10039D87C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v2 + 48) + 24 * (v11 | (v10 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);

      sub_100DEA8E0(&v16, v13, v14, v15);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10039D990(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_100DEB5CC(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10039DA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - v10;
  result = __chkstk_darwin(v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_100DE8BCC(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10039DC8C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 24 * (v11 | (v10 << 6)));
      v13 = *(v12 + 1);
      v14 = *(v12 + 2);
      v15 = *v12;

      sub_100DEB438(&v16, v15, v13, v14);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10039DDA0(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_100DEF808(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10039DE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v25 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v24 - v9;
  result = __chkstk_darwin(v8);
  v13 = &v24 - v12;
  v14 = 0;
  v26 = a1;
  v27 = a2;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      sub_1000D2A70(*(v26 + 48) + *(v25 + 72) * (v23 | (v22 << 6)), v13, &qword_1016980D0, &unk_10138F3B0);
      sub_1000D2AD8(v13, v7, &qword_1016980D0, &unk_10138F3B0);
      sub_100DF0448(v10, v7);
      result = sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
    }

    while (v20);
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

      return v27;
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10039E0E8(uint64_t a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v24[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, a3, a4);
    sub_100009CC8(a5, a3, a4);
    Set.Iterator.init(_cocoa:)();
    v8 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
    v14 = v24[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_1000128F8(v8);
      return;
    }

    while (1)
    {
      a6(v24);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008BB8(0, a3, a4);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10039E2E4(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10039E400, 0, 0);
}

uint64_t sub_10039E400()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10039E4A4;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_10039E4A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    sub_10000B3A8((v3 + 2), &unk_101698E08, &qword_101390A08);

    return _swift_task_switch(sub_10039E75C, 0, 0);
  }

  else
  {
    sub_10000B3A8((v3 + 2), &unk_101698E08, &qword_101390A08);
    v5 = swift_task_alloc();
    v3[18] = v5;
    *v5 = v4;
    v5[1] = sub_10039E648;
    v6 = v3[7];
    v7 = v3[8];

    return sub_1005AEC0C(v6, v7);
  }
}

uint64_t sub_10039E648()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10039EAF4;
  }

  else
  {
    v2 = sub_10039E7CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039E75C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10039E7CC()
{
  v33 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177A560);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[13];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v18 = v0[9];
  v17 = v0[10];
  if (v12)
  {
    v31 = v11;
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v19 = 136315651;
    log = v10;
    v20 = URL.absoluteString.getter();
    v22 = v21;
    (*(v13 + 8))(v14, v16);
    v23 = sub_1000136BC(v20, v22, &v32);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    sub_100019420(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v17 + 8))(v15, v18);
    v27 = sub_1000136BC(v24, v26, &v32);

    *(v19 + 24) = v27;
    _os_log_impl(&_mh_execute_header, log, v31, "URL is: %s for beacon ID %{private,mask.hash}s", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v15, v18);
    (*(v13 + 8))(v14, v16);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_10039EAF4()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "checkDelegatedShare error: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10039ECAC(uint64_t a1)
{
  *(v1 + 424) = a1;
  v2 = swift_task_alloc();
  *(v1 + 432) = v2;
  *v2 = v1;
  v2[1] = sub_10039ED40;

  return daemon.getter();
}

uint64_t sub_10039ED40(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[55] = a1;

  v3 = swift_task_alloc();
  v2[56] = v3;
  v4 = type metadata accessor for Daemon();
  v2[57] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[58] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10039EF20;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10039EF20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v4 = sub_10039F41C;
  }

  else
  {

    v4 = sub_10039F03C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10039F03C()
{
  v1 = v0[59];
  v0[61] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[62] = v2;

  swift_defaultActor_initialize();
  v0[63] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = swift_task_alloc();
  v0[64] = v4;
  *v4 = v0;
  v4[1] = sub_10039F130;

  return daemon.getter();
}

uint64_t sub_10039F130(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[65] = a1;

  v4 = swift_task_alloc();
  v2[66] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[67] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  v2[68] = v6;
  *v4 = v3;
  v4[1] = sub_10039F2EC;
  v7 = v2[58];
  v8 = v2[57];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_10039F2EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 552) = v1;

  if (v1)
  {
    v5 = sub_10039F814;
  }

  else
  {

    *(v4 + 560) = a1;
    v5 = sub_10039F480;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10039F41C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10039F480()
{
  v1 = v0[70];
  v0[11] = v0[67];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[71] = v2;
  *v2 = v0;
  v2[1] = sub_10039F528;

  return daemon.getter();
}

uint64_t sub_10039F528(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[72] = a1;

  v4 = swift_task_alloc();
  v2[73] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[74] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  v2[75] = v6;
  *v4 = v3;
  v4[1] = sub_10039F6E4;
  v7 = v2[58];
  v8 = v2[57];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_10039F6E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 608) = v1;

  if (v1)
  {
    v5 = sub_10039FF60;
  }

  else
  {

    *(v4 + 616) = a1;
    v5 = sub_10039F890;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10039F814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10039F890()
{
  v1 = *(v0 + 592);
  v24 = *(v0 + 616);
  v2 = *(v0 + 536);
  v3 = *(v0 + 504);
  v27 = *(v0 + 488);
  v28 = *(v0 + 496);
  v25 = *(v0 + 472);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v26 = swift_task_alloc();
  v6 = *(v5 + 16);
  v6();
  v7 = *v26;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v7;
  *(v0 + 144) = v24;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v27;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v28;
  type metadata accessor for ShareStopUseCase();
  v8 = swift_allocObject();
  *(v0 + 624) = v8;
  v9 = sub_10015049C(v0 + 104, v2);
  v23 = swift_task_alloc();
  (v6)(v23, v9, v2);
  v10 = *(v0 + 168);
  v11 = sub_10015049C(v0 + 144, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  v14 = *(v0 + 208);
  v15 = sub_10015049C(v0 + 184, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);
  v18 = *v23;
  v19 = *v13;
  v20 = *v17;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 224) = v18;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v19;
  *(v0 + 328) = v27;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v20;

  swift_defaultActor_initialize();
  *(v8 + 112) = v25;
  sub_10000A748((v0 + 224), v8 + 120);
  sub_10000A748((v0 + 264), v8 + 160);
  sub_1000BB3F0((v0 + 16), (v8 + 200));
  sub_10000A748((v0 + 304), v8 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  v21 = swift_task_alloc();
  *(v0 + 632) = v21;
  *v21 = v0;
  v21[1] = sub_10039FCA4;

  return daemon.getter();
}

uint64_t sub_10039FCA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[80] = a1;

  v4 = swift_task_alloc();
  v2[81] = v4;
  *v4 = v3;
  v4[1] = sub_10039FE30;
  v5 = v2[68];
  v6 = v2[67];
  v7 = v2[58];
  v8 = v2[57];

  return ActorServiceDaemon.getService<A>()(v8, v6, v7, v5);
}

uint64_t sub_10039FE30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 656) = v1;

  if (v1)
  {
    v5 = sub_1003A0348;
  }

  else
  {

    *(v4 + 664) = a1;
    v5 = sub_10039FFE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10039FF60()
{

  sub_100007BAC((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10039FFE4()
{
  v1 = v0[83];
  v0[46] = v0[67];
  v0[47] = &off_10164F068;
  v0[43] = v1;
  v2 = swift_task_alloc();
  v0[84] = v2;
  *v2 = v0;
  v2[1] = sub_1003A008C;

  return daemon.getter();
}

uint64_t sub_1003A008C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[85] = a1;

  v4 = swift_task_alloc();
  v2[86] = v4;
  *v4 = v3;
  v4[1] = sub_1003A0218;
  v5 = v2[75];
  v6 = v2[74];
  v7 = v2[58];
  v8 = v2[57];

  return ActorServiceDaemon.getService<A>()(v8, v6, v7, v5);
}

uint64_t sub_1003A0218(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 696) = v1;

  if (v1)
  {
    v5 = sub_1003A0718;
  }

  else
  {

    *(v4 + 704) = a1;
    v5 = sub_1003A03D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A0348()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A03D8()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 368);
  v3 = sub_10015049C(v0 + 344, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v6 = *v5;

  v8 = sub_1003AB5DC(v7, v6, v1);
  *(v0 + 712) = v8;
  sub_100007BAC((v0 + 344));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 624);
  sub_10001F280(*(v0 + 424), v0 + 384);
  v10 = swift_allocObject();
  *(v0 + 720) = v10;
  *(v10 + 16) = v9;
  sub_10000A748((v0 + 384), v10 + 24);
  *(v10 + 64) = v8;
  v13 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v11 = swift_task_alloc();
  *(v0 + 728) = v11;
  *v11 = v0;
  v11[1] = sub_1003A05E8;

  return v13(&unk_10139FEF8, v10);
}

uint64_t sub_1003A05E8()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_1003A0840;
  }

  else
  {
    v2 = sub_1003A07B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A0718()
{

  sub_100007BAC((v0 + 344));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A07B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A0840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A08D0()
{
  v0 = type metadata accessor for UUID();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  type metadata accessor for WorkItemQueue();
  v4 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  UUID.init()();
  result = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  qword_10169EED8 = result;
  return result;
}

uint64_t sub_1003A0A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100014744;

  return sub_100F5A858(a2, a3, v5);
}

uint64_t sub_1003A0AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100014744;

  return sub_1012AEE88(a2, a3, a4);
}

uint64_t sub_1003A0B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v11;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 196) = a5;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 80) = sub_1000BC4D4(&qword_10169EF88, &unk_1013E4B70);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0);
  *(v8 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1003A0C68, 0, 0);
}

uint64_t sub_1003A0C68()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 32);
  sub_1000D2A70(*(v0 + 24), v2, &qword_10169EF90, &unk_10139FCF0);
  v6 = v2 + v1[16];
  v19 = *(v2 + v1[12]);
  v16 = *(v6 + 16);
  v17 = *(v6 + 8);
  v15 = *v6;
  *(v0 + 112) = v16;
  v7 = (v2 + v1[20]);
  v13 = v7[1];
  v14 = *v7;
  *(v0 + 120) = v13;
  v12 = *(v2 + v1[24]);
  *(v0 + 128) = v12;
  v8 = (v2 + v1[28]);
  *(v0 + 136) = *v8;
  *(v0 + 144) = v8[1];
  sub_1000D2A70(v5, v4, &qword_10169EF88, &unk_1013E4B70);
  *(v0 + 192) = v3[12];
  *(v0 + 152) = *(v4 + v3[16] + 8);
  *(v0 + 160) = *(v4 + v3[20] + 8);
  *(v0 + 168) = *(v4 + v3[24] + 8);
  *(v0 + 176) = *(v4 + v3[40] + 8);
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *v9 = v0;
  v9[1] = sub_1003A0ED8;
  v10 = *(v0 + 104);

  return sub_100F67848(v10, v19, v15, v17, v16, v14, v13, v12);
}

uint64_t sub_1003A0ED8()
{
  v9 = *(*v0 + 192);
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 88);
  v10 = *v0;

  sub_100016590(v2, v1);

  sub_10000B3A8(v4 + v9, &qword_1016980D0, &unk_10138F3B0);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v3, v5);

  v7 = *(v10 + 8);

  return v7();
}

uint64_t sub_1003A1198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1003A1238;

  return sub_1001EF36C(a3);
}

uint64_t sub_1003A1238(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_1003A1388, 0, 0);
  }
}

uint64_t sub_1003A13AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1003A1450;

  return sub_1001EF968(a2);
}

uint64_t sub_1003A1450(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_1003A19DC;
  }

  else
  {
    v4 = sub_1003A1564;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A1564()
{
  v41 = v0;
  v1 = [*(v0 + 48) share];
  if (v1)
  {

    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 16);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AE40);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 16);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v40 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      v10 = [v7 inputUrl];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_1000136BC(v11, v13, &v40);

      *(v8 + 14) = v14;
      v15 = "Sending imported share for url %{private,mask.hash}s to the app.";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v5, v6, v15, v8, 0x16u);
      sub_100007BAC(v9);
    }
  }

  else
  {
    v16 = [*(v0 + 48) authUrl];
    if (v16)
    {

      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 16);
      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10177AE40);
      v19 = v17;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v20 = *(v0 + 16);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v40 = v9;
        *v8 = 141558275;
        *(v8 + 4) = 1752392040;
        *(v8 + 12) = 2081;
        v21 = [v20 inputUrl];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = sub_1000136BC(v22, v24, &v40);

        *(v8 + 14) = v25;
        v15 = " Sending auth url for importing url %{private,mask.hash}s to the app.";
        goto LABEL_15;
      }
    }

    else
    {
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 16);
      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_10177AE40);
      v28 = v26;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v29 = *(v0 + 16);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v40 = v9;
        *v8 = 141558275;
        *(v8 + 4) = 1752392040;
        *(v8 + 12) = 2081;
        v30 = [v29 inputUrl];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_1000136BC(v31, v33, &v40);

        *(v8 + 14) = v34;
        v15 = "Importing url %{private,mask.hash}s didnt result in a share or authUrl";
        goto LABEL_15;
      }
    }
  }

  v35 = *(v0 + 48);
  v36 = *(v0 + 24);
  v37 = v35;
  v36(v35, 0);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1003A19DC()
{
  v21 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AE40);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v10 = [v6 inputUrl];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_1000136BC(v11, v13, &v20);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not import share for url %{private,mask.hash}s, %{public}@", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  v16 = v0[7];
  v17 = v0[3];
  swift_errorRetain();
  v17(0, v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003A1C54(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_1001FB974(a2, a3);
}

uint64_t sub_1003A1D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v4[4] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[7] = v7;
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_1003A1E44;

  return sub_1005A8170(v7, a2);
}

uint64_t sub_1003A1E44()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1003A2068;
  }

  else
  {
    v2 = sub_1003A1F58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A1F58()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v5(v4, 0);
  sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A2068()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];
  (*(v0[6] + 56))(v2, 1, 1, v0[5]);
  swift_errorRetain();
  v3(v2, v1);

  sub_10000B3A8(v2, &unk_101696AC0, &qword_101390A60);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A2168()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1003A220C;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003A220C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    sub_10000B3A8((v3 + 2), &unk_101698E08, &qword_101390A08);

    return _swift_task_switch(sub_1003A24C0, 0, 0);
  }

  else
  {
    sub_10000B3A8((v3 + 2), &unk_101698E08, &qword_101390A08);
    v5 = swift_task_alloc();
    v3[10] = v5;
    *v5 = v4;
    v5[1] = sub_1003A23AC;

    return sub_1005B2F84();
  }
}

uint64_t sub_1003A23AC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1003A253C;
  }

  else
  {
    v2 = sub_1003A24D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A24D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A253C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A25A0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[7] = v4;
  *v4 = v2;
  v4[1] = sub_1003A2684;

  return sub_1005B39DC(a2, 0, 0, 0);
}

uint64_t sub_1003A2684()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_1003A27D0, 0, 0);
  }
}

uint64_t sub_1003A27D0()
{
  if (qword_1016954D8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  swift_beginAccess();
  sub_1010F6584(v2, v1);
  swift_endAccess();
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A28BC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1005B0CD4(a2);
}

uint64_t sub_1003A2958(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1005AFF60(a2);
}

uint64_t sub_1003A29F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1003A2A94;

  return sub_1005C0C5C(a3);
}

uint64_t sub_1003A2A94(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1003CC2E0, 0, 0);
}

uint64_t sub_1003A2B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003A2C38, 0, 0);
}

uint64_t sub_1003A2C38()
{
  if (v0[5])
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_1003A2DAC;
    v2 = v0[8];
    v3 = v0[9];
    v5 = v0[6];
    v4 = v0[7];

    return sub_1005C10E4(v5, v4, v2, v3);
  }

  else
  {
    v7 = *(type metadata accessor for OwnerSharingCircle(0) + 24);
    if (qword_1016954D8 != -1)
    {
      swift_once();
    }

    v8 = v0[10];
    v9 = v0[6];
    swift_beginAccess();
    sub_1010F6584(v9 + v7, v8);
    swift_endAccess();
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1003A2DAC()
{

  return _swift_task_switch(sub_1003A2EA8, 0, 0);
}

uint64_t sub_1003A2EA8()
{
  v1 = *(type metadata accessor for OwnerSharingCircle(0) + 24);
  if (qword_1016954D8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = v0[6];
  swift_beginAccess();
  sub_1010F6584(v3 + v1, v2);
  swift_endAccess();
  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A2FA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1003A3040;

  return sub_1005C02F4(a2);
}

uint64_t sub_1003A3040()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 40) = v6;
    *v6 = v3;
    v6[1] = sub_1000D2464;
    v7 = *(v2 + 24);

    return sub_1005C07B4(v7);
  }
}

uint64_t sub_1003A31B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1005BBAF4();
}

uint64_t sub_1003A3244(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for UUID();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v1[12] = *(v3 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v1[16] = swift_task_alloc();
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169F040, &qword_10139FE30);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[22] = v5;
  *v5 = v1;
  v5[1] = sub_1003A3424;

  return daemon.getter();
}

uint64_t sub_1003A3424(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[23] = a1;

  v3 = swift_task_alloc();
  v2[24] = v3;
  v4 = type metadata accessor for Daemon();
  v2[25] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[26] = v5;
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[27] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[28] = v7;
  *v3 = v9;
  v3[1] = sub_1003A3618;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003A3618(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_1003A3B80;
    v6 = 0;
  }

  else
  {

    *(v4 + 240) = a1;
    v5 = sub_1003A3754;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003A3754()
{

  v1 = swift_task_alloc();
  v0[31] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[32] = v2;
  *v1 = v0;
  v1[1] = sub_1003A3838;
  v3 = v0[30];

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_1003A3838()
{
  v1 = *(*v0 + 240);

  return _swift_task_switch(sub_1003A3950, v1, 0);
}

uint64_t sub_1003A3950()
{

  *(v0 + 264) = *(v0 + 56);

  return _swift_task_switch(sub_1003A39C0, 0, 0);
}

uint64_t sub_1003A39C0()
{
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_1003A3A6C;
  v2 = v0[21];
  v3 = v0[9];

  return sub_10068F740(v2, v3);
}

uint64_t sub_1003A3A6C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1003A3DFC;
  }

  else
  {
    v2 = sub_1003A3C30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A3B80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A3C30()
{
  v1 = v0[20];
  v2 = v0[21];

  sub_1000D2AD8(v2, v1, &qword_10169F040, &qword_10139FE30);
  v3 = type metadata accessor for DelegatedBeaconMetadata(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = v0[20];
  if (v4 == 1)
  {
    sub_10000B3A8(v5, &qword_10169F040, &qword_10139FE30);
LABEL_4:

    v7 = v0[1];

    return v7();
  }

  v6 = *(v5 + *(v3 + 32));
  sub_10002FE88(v5, type metadata accessor for DelegatedBeaconMetadata);
  if (v6)
  {
    goto LABEL_4;
  }

  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_1003A3EAC;

  return daemon.getter();
}

uint64_t sub_1003A3DFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A3EAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 296) = a1;

  v5 = swift_task_alloc();
  *(v3 + 304) = v5;
  v6 = type metadata accessor for ItemSharingNotificationsService();
  v7 = sub_100019420(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  *v5 = v4;
  v5[1] = sub_1003A4060;
  v8 = *(v2 + 216);
  v9 = *(v2 + 200);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003A4060(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 312) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1003A4224, 0, 0);
  }
}

uint64_t sub_1003A4224()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *v1 = v0;
  v1[1] = sub_1003A42C8;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003A42C8(uint64_t a1)
{
  v3 = *v2;
  v3[41] = a1;
  v3[42] = v1;

  if (v1)
  {
    sub_10000B3A8((v3 + 2), &unk_101698E08, &qword_101390A08);

    return _swift_task_switch(sub_1003A471C, 0, 0);
  }

  else
  {
    sub_10000B3A8((v3 + 2), &unk_101698E08, &qword_101390A08);
    v4 = swift_task_alloc();
    v3[43] = v4;
    *v4 = v3;
    v4[1] = sub_1003A4454;

    return daemon.getter();
  }
}

uint64_t sub_1003A4454(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[44] = a1;

  v4 = swift_task_alloc();
  v2[45] = v4;
  *v4 = v3;
  v4[1] = sub_1003A45E0;
  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[25];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_1003A45E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_1003A4DF0;
    v6 = 0;
  }

  else
  {

    *(v4 + 376) = a1;
    v5 = sub_1003A47CC;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003A471C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A47CC()
{
  v1 = v0[47];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[48] = v6;
  v0[49] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v4, v5);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[50] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v5);

  v9 = swift_task_alloc();
  v0[51] = v9;
  *v9 = v0;
  v9[1] = sub_1003A4930;
  v11 = v0[15];
  v10 = v0[16];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1003CA280, v8, v11);
}

uint64_t sub_1003A4930()
{

  return _swift_task_switch(sub_1003A4A64, 0, 0);
}

uint64_t sub_1003A4A64()
{
  v24 = v0;
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v2 = v0[48];
    v3 = v0[13];
    v5 = v0[9];
    v4 = v0[10];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177A560);
    v2(v3, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[13];
    v12 = v0[10];
    v11 = v0[11];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_100019420(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_1000136BC(v15, v17, &v23);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "    HandleMaxViewsNotification - delegated circle not found withshareIdentifier %{private,mask.hash}s.", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v22 = v0[1];

    return v22();
  }

  else
  {
    sub_1003CBBBC(v1, v0[19], type metadata accessor for OwnerSharingCircle);
    v19 = swift_task_alloc();
    v0[52] = v19;
    *v19 = v0;
    v19[1] = sub_1003A4EB8;
    v20 = v0[19];

    return sub_100B56A3C(v20);
  }
}

uint64_t sub_1003A4DF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A4EB8()
{
  v2 = *v1;
  *(v2 + 424) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003A5878, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 432) = v3;
    *v3 = v2;
    v3[1] = sub_1003A5024;

    return daemon.getter();
  }
}

uint64_t sub_1003A5024(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[55] = a1;

  v4 = swift_task_alloc();
  v2[56] = v4;
  *v4 = v3;
  v4[1] = sub_1003A51B0;
  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[25];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_1003A51B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = sub_1003A56B4;
    v6 = 0;
  }

  else
  {

    *(v4 + 464) = a1;
    v5 = sub_1003A52EC;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003A52EC()
{

  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_1003A53C4;
  v2 = v0[58];
  v3 = v0[32];

  return unsafeBlocking<A>(context:_:)(v0 + 8, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v2, v3);
}

uint64_t sub_1003A53C4()
{
  v1 = *(*v0 + 464);

  return _swift_task_switch(sub_1003A54DC, v1, 0);
}

uint64_t sub_1003A54DC()
{

  v0[60] = v0[8];
  v1 = swift_task_alloc();
  v0[61] = v1;
  *v1 = v0;
  v1[1] = sub_1003A5584;
  v2 = v0[9];

  return sub_1012DC548(v2, 1);
}

uint64_t sub_1003A5584()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1003A5954;
  }

  else
  {
    v2 = sub_1003A579C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A56B4()
{
  v1 = *(v0 + 152);

  sub_10002FE88(v1, type metadata accessor for OwnerSharingCircle);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003A579C()
{
  v1 = *(v0 + 152);

  sub_10002FE88(v1, type metadata accessor for OwnerSharingCircle);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003A5878()
{
  v1 = *(v0 + 152);

  sub_10002FE88(v1, type metadata accessor for OwnerSharingCircle);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003A5954()
{
  v1 = *(v0 + 152);

  sub_10002FE88(v1, type metadata accessor for OwnerSharingCircle);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003A5A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100014744;

  return sub_1005BF8E8(a2, v8, a4, a5);
}

uint64_t sub_1003A5AF4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1005ABDC8(a2);
}

uint64_t sub_1003A5B90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A5C00(char a1)
{
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_1003A5D00, 0, 0);
}

uint64_t sub_1003A5D00()
{
  if (*(v0 + 224) == 1)
  {
    sub_10001F280(*(v0 + 112), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_1003A5DF0;

    return sub_1003AC554(v0 + 16);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1003A5DF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {

    sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);

    return _swift_task_switch(sub_1003A6134, 0, 0);
  }

  else
  {
    sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
    v5 = swift_task_alloc();
    *(v3 + 200) = v5;
    *v5 = v4;
    v5[1] = sub_1003A5FBC;
    v6 = *(v3 + 104);

    return sub_1005B39DC(v6, 0, 0, 1);
  }
}

uint64_t sub_1003A5FBC()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003A643C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[27] = v3;
    *v3 = v2;
    v3[1] = sub_1003A6260;
    v4 = v2[24];
    v5 = v2[19];
    v6 = v2[13];

    return sub_1003CA2F4(v6, v4, v5);
  }
}

uint64_t sub_1003A6134()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DelegatedShareUseCase not available", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003A6260()
{

  return _swift_task_switch(sub_1003A635C, 0, 0);
}

uint64_t sub_1003A635C()
{
  v1 = v0[15];
  v2 = v0[13];
  swift_beginAccess();
  sub_1010F6584(v2, v1);
  swift_endAccess();

  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A643C()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to stop delegation ", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_1003A6260;
  v6 = v0[24];
  v7 = v0[19];
  v8 = v0[13];

  return sub_1003CA2F4(v8, v6, v7);
}

uint64_t sub_1003A659C(uint64_t a1)
{
  v1[6] = a1;
  v2 = type metadata accessor for UUID();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[11] = v3;
  v1[12] = *(v3 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[15] = v4;
  *v4 = v1;
  v4[1] = sub_1003A6710;

  return daemon.getter();
}

uint64_t sub_1003A6710(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003A68EC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003A68EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1003A7100;
  }

  else
  {

    v4 = sub_1003A6A08;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A6A08()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = *(v4 + 16);
  v0[20] = v6;
  v0[21] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  (*(v4 + 56))(v2, 0, 1, v3);

  return _swift_task_switch(sub_1003A6AC8, v1, 0);
}

uint64_t sub_1003A6AC8()
{
  v1 = v0[18];
  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  sub_1000D2A70(v0[14], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[22] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;

  v8 = swift_task_alloc();
  v0[23] = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v8 = v0;
  v8[1] = sub_1003A6C44;

  return unsafeBlocking<A>(context:_:)(v0 + 5, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2D0C, v7, v9);
}

uint64_t sub_1003A6C44()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_1003A6D70, v1, 0);
}

uint64_t sub_1003A6D70()
{
  sub_10000B3A8(v0[14], &qword_1016980D0, &unk_10138F3B0);
  v0[24] = v0[5];

  return _swift_task_switch(sub_1003A6DF0, 0, 0);
}

uint64_t sub_1003A6DF0()
{
  v0[25] = *(v0[24] + 16);

  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1003A6EAC;
  v2 = v0[18];
  v3 = v0[6];

  return sub_101296F78(v3, v2);
}

uint64_t sub_1003A6EAC(char a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1003A6FAC, 0, 0);
}

uint64_t sub_1003A6FAC()
{
  if (*(v0 + 200))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 216) == 0;
  }

  if (v1)
  {
  }

  else
  {
    if (qword_1016954D8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    (*(v0 + 160))(v2, *(v0 + 48), v4);
    swift_beginAccess();
    sub_100DE8BCC(v3, v2);
    swift_endAccess();

    (*(v5 + 8))(v3, v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003A7100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A7194(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100F66694(a2);
}

uint64_t sub_1003A7230(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100102B40(a2);
}

uint64_t sub_1003A72CC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100237320(a2, a3);
}

uint64_t sub_1003A7378(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_10023D968(a2);
}

uint64_t sub_1003A7414(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 68) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1003A743C, 0, 0);
}

uint64_t sub_1003A743C()
{
  v1 = *(v0 + 24);
  sub_1000BC4D4(&qword_10169EF80, &qword_10139FCC0);
  v2 = *(*(type metadata accessor for OwnerPeerTrust(0) - 8) + 80);
  *(v0 + 64) = v2;
  v3 = (v2 + 32) & ~v2;
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = xmmword_101385D80;
  sub_10002FDC4(v1, v4 + v3, type metadata accessor for OwnerPeerTrust);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1003A759C;
  v6 = *(v0 + 68);
  v7 = *(v0 + 32);

  return sub_10126DA14(v4, v7, v6);
}

uint64_t sub_1003A759C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003A7718, 0, 0);
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = (*(v2 + 64) + 32) & ~*(v2 + 64);
    swift_setDeallocating();
    sub_10002FE88(v3 + v4, type metadata accessor for OwnerPeerTrust);
    swift_deallocClassInstance();
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1003A7718()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 64) + 32) & ~*(v0 + 64);
  swift_setDeallocating();
  sub_10002FE88(v1 + v2, type metadata accessor for OwnerPeerTrust);
  swift_deallocClassInstance();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003A77B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_101282F9C(a2, a3);
}

uint64_t sub_1003A7864(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_10127256C(a2);
}

uint64_t sub_1003A7900(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_101277214(a2);
}

uint64_t sub_1003A799C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1012776E0(a2);
}

uint64_t sub_1003A7A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_1008424C4(a2, a3);
}

uint64_t sub_1003A7AE4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100843F5C(a2);
}

uint64_t sub_1003A7B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_1003A7C18;

  return sub_10128A078();
}

uint64_t sub_1003A7C18()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1003A7D5C;
  v4 = *(v1 + 24);

  return sub_1003AE100(v4);
}

uint64_t sub_1003A7D5C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1003A80F0;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1003A7E88;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A7E88()
{

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1003A7F40;
  v2 = v0[7];
  v3 = v0[2];

  return sub_1003AB7F8(v2, v3);
}

uint64_t sub_1003A7F40()
{

  return _swift_task_switch(sub_1003A8058, 0, 0);
}

uint64_t sub_1003A8058()
{

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1003A823C;

  return sub_100240044();
}

uint64_t sub_1003A80F0()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't create shareCreateUseCase!", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1003A823C;

  return sub_100240044();
}

uint64_t sub_1003A823C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_1003A837C;

  return sub_100241254();
}

uint64_t sub_1003A837C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1003A8474()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      sub_10001F280(v4, v6);
      sub_1000BC4D4(&qword_10169EF08, &qword_10139FBE8);
      type metadata accessor for OwnerCommandManager();
      if (swift_dynamicCast())
      {
        return;
      }

      ++v3;
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_1003BE54C();
    swift_allocError();
    *v5 = 0xD000000000000013;
    v5[1] = 0x8000000101351DF0;
    swift_willThrow();
  }
}

void *sub_1003A86D8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1003A886C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_1003A88EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1003A89B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003A8AC8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1003A8B54(unint64_t a1, __n128 a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = __CocoaDictionary.count.getter();
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v4 = sub_1003A8AC8(v3, 0);

    v2 = sub_1003A95D8(&v6, v4 + 4, v3, v2);
    sub_1000128F8(v6);
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = *(v2 + 16);
    if (!v3)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

void sub_1003A8C20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1003A8CF8(void *result, unint64_t a2)
{
  v3 = result;
  v4 = a2 - result;
  if (a2 < result)
  {
    if ((result - a2) < 0)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v4 = a2 - result;
LABEL_5:
    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      if (v4 != -1)
      {
        v6 = sub_100036438(v4 + 1, 0, &qword_10169EF40, &qword_10139FC28);
        if (sub_1011B8814(&v7, (v6 + 4), v5, v3, a2) == v5)
        {
          return v6;
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }

    __break(1u);
    goto LABEL_12;
  }

  if ((a2 - result) >= 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t **sub_1003A8DCC(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v9 = sub_1003A8AC8(v8, 0);

    a4 = sub_1003AAD90(&v11, v9 + 4, v8, a1, a2, a3, a4);
    sub_1000128F8(v11);
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v9;
}

void *sub_1003A8EB8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      v16 = *(v14 + 8);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1003A8FC4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_10169BAA8, &unk_10139FDB0);
  v9 = __chkstk_darwin(v8 - 8);
  v43 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v34 - v11;
  v12 = sub_1000BC4D4(&qword_10169BAB8, &qword_1013956D8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v34 - v14;
  v45 = a4;
  *v15 = a4;
  *(v15 + 1) = 0;
  v16 = *(v13 + 52);
  v17 = type metadata accessor for Data.Iterator();
  v18 = *(v17 - 8);
  v41 = *(v18 + 56);
  v42 = v18 + 56;
  result = v41(&v15[v16], 1, 1, v17);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_24;
  }

  if (a3 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v38 = a2;
  v39 = a1;
  v20 = 0;
  v21 = 0;
  v46 = (v18 + 48);
  v22 = v45 + 40;
  v23 = 1;
  v35 = v45 + 40;
  v36 = a3;
  while (2)
  {
    v40 = v20;
    v37 = v23;
    for (i = (v22 + 16 * v21); ; i += 2)
    {
      v26 = v44;
      sub_1000D2A70(&v15[v16], v44, &qword_10169BAA8, &unk_10139FDB0);
      v27 = *v46;
      v28 = (*v46)(v26, 1, v17);
      result = sub_10000B3A8(v26, &qword_10169BAA8, &unk_10139FDB0);
      if (v28 != 1)
      {
        result = v27(&v15[v16], 1, v17);
        if (result == 1)
        {
          goto LABEL_28;
        }

        sub_100019420(&qword_10169BAC8, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
        result = dispatch thunk of IteratorProtocol.next()();
        if (v48 != 1)
        {
          break;
        }
      }

      v29 = *(v45 + 16);
      if (v21 == v29)
      {
        goto LABEL_22;
      }

      if (v21 >= v29)
      {
        __break(1u);
        goto LABEL_27;
      }

      v30 = *(i - 1);
      v31 = *i;
      *(v15 + 1) = v21 + 1;
      v32 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v32 == 2)
        {
LABEL_6:
          sub_100017D5C(v30, v31);
        }
      }

      else if (v32)
      {
        goto LABEL_6;
      }

      v25 = v43;
      Data.Iterator.init(_:at:)();
      v41(v25, 0, 1, v17);
      sub_1002696E4(v25, &v15[v16]);
      ++v21;
    }

    v20 = v37;
    v33 = v38;
    *v38 = v47;
    a3 = v36;
    if (v20 != v36)
    {
      v38 = v33 + 1;
      v23 = v20 + 1;
      v22 = v35;
      if (!__OFADD__(v20, 1))
      {
        continue;
      }

      __break(1u);
LABEL_22:
      a1 = v39;
      a3 = v40;
      goto LABEL_24;
    }

    break;
  }

  a1 = v39;
LABEL_24:
  sub_1000D2AD8(v15, a1, &qword_10169BAB8, &qword_1013956D8);
  return a3;
}

uint64_t sub_1003A9374(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_10002FDC4(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for OwnedBeaconGroup.PairingState);
      v24 = v23;
      v25 = v31;
      sub_1003CBBBC(v24, v31, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_1003CBBBC(v25, a2, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
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
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1003A95D8(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

void *sub_1003A97DC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003A99B0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v40 = a6;
  v41 = a7;
  v11 = a5(0);
  v39 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v17 = a4 + 7;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[7];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    result = 0;
    v21 = 0;
    v35 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[6];
      v28 = v38;
      v29 = *(v39 + 72);
      sub_10002FDC4(v27 + v29 * (v26 | (v21 << 6)), v38, v40);
      v30 = v28;
      v31 = v41;
      sub_1003CBBBC(v30, v16, v41);
      sub_1003CBBBC(v16, a2, v31);
      if (v23 == v37)
      {
        a4 = a1;
        a1 = v36;
        a3 = v37;
        goto LABEL_23;
      }

      a2 += v29;
      result = v23;
      v32 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v33 = v21 + 1;
    }

    else
    {
      v33 = v22;
    }

    v21 = v33 - 1;
    a3 = result;
    a1 = v36;
LABEL_23:
    v18 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1003A9BF4(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_100017D5C(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_100017D5C(v18, *(&v18 + 1));
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

uint64_t sub_1003A9D58(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1003AA0FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v19;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1003AA29C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1003AA39C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1003AA498(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1003AA5EC(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1003AA6E8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = *(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      v19 = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1003AA840(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003AA994(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for Device();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1003AAC38(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t *sub_1003AAD90(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_100008BB8(0, a5, a6);
  sub_100009CC8(a7, a5, a6);
  result = Set.Iterator.init(_cocoa:)();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_100008BB8(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_1003AAFC0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003AB114(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1003AB3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for SharingCircleKeyManager();
  v31[3] = v8;
  v31[4] = &off_10164E4F0;
  v31[0] = a1;
  v9 = type metadata accessor for MemberCircleRevokeManager();
  v29 = v9;
  v30 = &off_1016634E8;
  v28[0] = a3;
  a4(0);
  v10 = swift_allocObject();
  v11 = sub_10015049C(v31, v8);
  __chkstk_darwin(v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_10015049C(v28, v29);
  __chkstk_darwin(v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v26 = v8;
  v27 = &off_10164E4F0;
  v24 = &off_1016634E8;
  *&v25 = v19;
  v23 = v9;
  *&v22 = v20;
  swift_defaultActor_initialize();
  sub_10000A748(&v25, v10 + 112);
  *(v10 + 152) = a2;
  sub_10000A748(&v22, v10 + 160);
  sub_100007BAC(v28);
  sub_100007BAC(v31);
  return v10;
}

uint64_t sub_1003AB5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v29[3] = v6;
  v29[4] = &off_10164F068;
  v29[0] = a2;
  v7 = type metadata accessor for FamilyCircleService();
  v27 = v7;
  v28 = &off_10164F7C0;
  v26[0] = a3;
  type metadata accessor for ShareDeclineUseCase();
  v8 = swift_allocObject();
  v9 = sub_10015049C(v29, v6);
  __chkstk_darwin(v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10015049C(v26, v27);
  __chkstk_darwin(v13);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  v24 = v6;
  v25 = &off_10164F068;
  v22 = &off_10164F7C0;
  *&v23 = v17;
  v21 = v7;
  *&v20 = v18;
  swift_defaultActor_initialize();
  *(v8 + 112) = a1;
  sub_10000A748(&v23, v8 + 120);
  sub_10000A748(&v20, v8 + 160);
  sub_100007BAC(v26);
  sub_100007BAC(v29);
  return v8;
}

uint64_t sub_1003AB7F8(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[5] = type metadata accessor for ShareCreateUseCase();
  v2[6] = &off_10165C8E0;
  v2[2] = a1;

  return _swift_task_switch(sub_1003AB910, a2, 0);
}

uint64_t sub_1003AB910()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_1003AB934, v1, 0);
}

uint64_t sub_1003AB934()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_1003ABA20;
  v3 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_1003ABA20()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_1003ABB38, v1, 0);
}

uint64_t sub_1003ABB38()
{
  v1 = v0[8];
  v0[17] = v0[7];
  return _swift_task_switch(sub_1003ABB58, v1, 0);
}

uint64_t sub_1003ABB58()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v26 = *(v1 + 16);
    v27 = *(v0 + 136);
    while (v3 < *(v1 + 16))
    {
      v6 = *(v0 + 112);
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_10002FDC4(*(v0 + 136) + v7 + v8 * v3, v6, type metadata accessor for OwnerSharingCircle);
      v9 = *(v0 + 112);
      if (*(v6 + *(v5 + 28)) == 3 || *(v9 + *(v5 + 36)) != 4)
      {
        sub_10002FE88(v9, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        sub_1003CBBBC(v9, *(v0 + 88), type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_101123FE4((v10 > 1), v11 + 1, 1);
        }

        v12 = *(v0 + 88);
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_1003CBBBC(v12, _swiftEmptyArrayStorage + v7 + v11 * v8, type metadata accessor for OwnerSharingCircle);
        v2 = v26;
        v1 = v27;
      }

      if (v2 == ++v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *(v0 + 144) = _swiftEmptyArrayStorage;

    if (qword_101694480 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v13 = type metadata accessor for Logger();
  *(v0 + 152) = sub_1000076D4(v13, qword_10177A560);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = _swiftEmptyArrayStorage[2];

    _os_log_impl(&_mh_execute_header, v14, v15, "Found %ld of expired tentatively revoked owner circles.", v16, 0xCu);
  }

  else
  {
  }

  v17 = _swiftEmptyArrayStorage[2];
  *(v0 + 160) = v17;
  if (v17)
  {
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v18 + 80);
    *(v0 + 200) = v20;
    *(v0 + 168) = *(v18 + 72);
    *(v0 + 176) = 0;
    v21 = *(v0 + 104);
    sub_10002FDC4(*(v0 + 144) + ((v20 + 32) & ~v20), v21, type metadata accessor for OwnerSharingCircle);
    sub_1000035D0((v0 + 16), *(v0 + 40));
    v22 = *(v19 + 20);
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_1003ABF4C;

    return sub_100F66694(v21 + v22);
  }

  else
  {

    sub_100007BAC((v0 + 16));

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1003ABF4C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1003AC208;
  }

  else
  {
    v4 = sub_1003AC078;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003AC078()
{
  sub_10002FE88(*(v0 + 104), type metadata accessor for OwnerSharingCircle);
  v1 = *(v0 + 176) + 1;
  if (v1 == *(v0 + 160))
  {

    sub_100007BAC((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 176) = v1;
    v4 = *(v0 + 104);
    v5 = *(v0 + 72);
    sub_10002FDC4(*(v0 + 144) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 168) * v1, v4, type metadata accessor for OwnerSharingCircle);
    sub_1000035D0((v0 + 16), *(v0 + 40));
    v6 = *(v5 + 20);
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_1003ABF4C;

    return sub_100F66694(v4 + v6);
  }
}

uint64_t sub_1003AC208()
{
  v22 = v0;
  sub_10002FDC4(*(v0 + 104), *(v0 + 96), type metadata accessor for OwnerSharingCircle);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    type metadata accessor for UUID();
    sub_100019420(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v4;
    v10 = v9;
    sub_10002FE88(v5, type metadata accessor for OwnerSharingCircle);
    v11 = sub_1000136BC(v8, v10, &v21);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to re-create owned tentatively revoked share with identifier: %s", v6, 0xCu);
    sub_100007BAC(v7);

    v12 = v20;
  }

  else
  {

    sub_10002FE88(v5, type metadata accessor for OwnerSharingCircle);
    v12 = v4;
  }

  sub_10002FE88(v12, type metadata accessor for OwnerSharingCircle);
  v13 = *(v0 + 176) + 1;
  if (v13 == *(v0 + 160))
  {

    sub_100007BAC((v0 + 16));

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    *(v0 + 176) = v13;
    v16 = *(v0 + 104);
    v17 = *(v0 + 72);
    sub_10002FDC4(*(v0 + 144) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 168) * v13, v16, type metadata accessor for OwnerSharingCircle);
    sub_1000035D0((v0 + 16), *(v0 + 40));
    v18 = *(v17 + 20);
    v19 = swift_task_alloc();
    *(v0 + 184) = v19;
    *v19 = v0;
    v19[1] = sub_1003ABF4C;

    return sub_100F66694(v16 + v18);
  }
}

uint64_t sub_1003AC554(uint64_t a1)
{
  *(v1 + 536) = a1;
  v2 = swift_task_alloc();
  *(v1 + 544) = v2;
  *v2 = v1;
  v2[1] = sub_1003AC5E8;

  return daemon.getter();
}

uint64_t sub_1003AC5E8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[69] = a1;

  v3 = swift_task_alloc();
  v2[70] = v3;
  v4 = type metadata accessor for Daemon();
  v2[71] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[72] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003AC7C8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003AC7C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 584) = a1;
  *(v3 + 592) = v1;

  if (v1)
  {
    v4 = sub_1003ACC1C;
  }

  else
  {

    v4 = sub_1003AC8E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003AC8E8()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 536);
  v3 = type metadata accessor for SharingCircleKeyManager();
  *(v0 + 600) = v3;
  v4 = swift_allocObject();

  swift_defaultActor_initialize();
  v5 = type metadata accessor for KeyDropInterface();
  *(v0 + 608) = v5;
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v4 + 112) = v6;
  *(v4 + 120) = v1;
  sub_1000D2A70(v2, v0 + 216, &unk_101698E08, &qword_101390A08);
  if (*(v0 + 240))
  {
    sub_10000A748((v0 + 216), v0 + 176);
  }

  else
  {
    v7 = qword_101694920;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_10177B2E8;
    *(v0 + 152) = type metadata accessor for BeaconObservationStore(0);
    *(v0 + 160) = &off_101632E88;
    *(v0 + 168) = &off_101613BE0;
    *(v0 + 128) = v8;
    v9 = type metadata accessor for MemberCircleRevokeManager();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_1000BB3F0((v0 + 128), (v10 + 32));
    *(v0 + 200) = v9;
    *(v0 + 208) = &off_1016634E8;
    *(v0 + 176) = v10;
    v11 = *(v0 + 240);

    if (v11)
    {
      sub_10000B3A8(v0 + 216, &unk_101698E08, &qword_101390A08);
    }
  }

  v12 = *(v0 + 584);
  v13 = *(v0 + 200);
  v14 = sub_10015049C(v0 + 176, v13);
  v15 = *(v13 - 8);
  v16 = swift_task_alloc();
  (*(v15 + 16))(v16, v14, v13);
  v17 = *v16;

  *(v0 + 616) = sub_1003AB3B8(v4, v12, v17, type metadata accessor for ShareKeysUploadUseCase);
  sub_100007BAC((v0 + 176));

  *(v0 + 280) = v3;
  *(v0 + 288) = &off_10164E4F0;
  *(v0 + 256) = v4;
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v18 + 112) = 0;
  *(v18 + 120) = 0;
  *(v0 + 40) = v5;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 64) = &off_101613330;
  *(v0 + 16) = v18;
  v19 = swift_task_alloc();
  *(v0 + 624) = v19;
  *v19 = v0;
  v19[1] = sub_1003ACC80;

  return daemon.getter();
}

uint64_t sub_1003ACC1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003ACC80(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 632) = a1;

  v5 = swift_task_alloc();
  *(v3 + 640) = v5;
  v6 = type metadata accessor for PeerTrustService();
  v7 = sub_100019420(&qword_1016B1190, type metadata accessor for PeerTrustService, &unk_1013EBD00);
  *v5 = v4;
  v5[1] = sub_1003ACE34;
  v8 = *(v2 + 576);
  v9 = *(v2 + 568);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1003ACE34(uint64_t a1)
{
  v3 = *v2;
  v3[81] = a1;
  v3[82] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003AD294, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[83] = v4;
    *v4 = v3;
    v4[1] = sub_1003ACFAC;

    return daemon.getter();
  }
}

uint64_t sub_1003ACFAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[84] = a1;

  v4 = swift_task_alloc();
  v2[85] = v4;
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v2[86] = v5;
  v6 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v4 = v3;
  v4[1] = sub_1003AD164;
  v7 = v2[72];
  v8 = v2[71];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003AD164(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 696) = v1;

  if (v1)
  {
    v5 = sub_1003AD7F8;
  }

  else
  {

    *(v4 + 704) = a1;
    v5 = sub_1003AD320;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003AD294()
{

  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 32);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003AD320()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v29 = v2;
  v27 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v33 = *(v0 + 584);
  v34 = *(v0 + 648);
  v5 = *(v0 + 280);
  sub_10015049C(v0 + 256, v5);
  v6 = *(v5 - 8);
  v32 = swift_task_alloc();
  (*(v6 + 16))();
  v7 = *(v0 + 40);
  sub_10015049C(v0 + 16, v7);
  v8 = *(v7 - 8);
  v31 = swift_task_alloc();
  (*(v8 + 16))();
  v9 = *v31;
  *(v0 + 296) = *v32;
  *(v0 + 96) = v3;
  *(v0 + 104) = &off_101660C48;
  *(v0 + 320) = v4;
  *(v0 + 328) = &off_10164E4F0;
  *(v0 + 112) = &off_10162BCD8;
  *(v0 + 120) = &off_101613330;
  *(v0 + 72) = v9;
  v30 = sub_100019420(&qword_10169EF00, type metadata accessor for PeerTrustService, &unk_1013EBCB8);
  *(v0 + 360) = v2;
  *(v0 + 368) = &off_10164F068;
  *(v0 + 336) = v1;
  v28 = type metadata accessor for ShareKeysUploadUseCase();
  *(v0 + 400) = v28;
  *(v0 + 408) = &off_10162F848;
  *(v0 + 376) = v27;
  type metadata accessor for DelegatedShareUseCase();
  v10 = swift_allocObject();
  v11 = sub_10015049C(v0 + 296, v4);
  v12 = *(v4 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v4);
  v14 = *(v0 + 360);
  v15 = sub_10015049C(v0 + 336, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);
  v18 = *(v0 + 400);
  v19 = sub_10015049C(v0 + 376, v18);
  v20 = *(v18 - 8);
  v21 = swift_task_alloc();
  (*(v20 + 16))(v21, v19, v18);
  v22 = *v13;
  v23 = *v17;
  v24 = *v21;
  *(v0 + 440) = v4;
  *(v0 + 448) = &off_10164E4F0;
  *(v0 + 416) = v22;
  *(v0 + 480) = v29;
  *(v0 + 488) = &off_10164F068;
  *(v0 + 456) = v23;
  *(v0 + 520) = v28;
  *(v0 + 528) = &off_10162F848;
  *(v0 + 496) = v24;
  swift_defaultActor_initialize();
  v10[21] = v33;
  sub_1003BE5A0((v0 + 72), (v10 + 14));
  sub_10000A748((v0 + 416), (v10 + 22));
  v10[27] = v34;
  v10[28] = v30;
  sub_10000A748((v0 + 456), (v10 + 29));
  sub_10000A748((v0 + 496), (v10 + 34));
  sub_100007BAC((v0 + 376));

  sub_100007BAC((v0 + 336));

  sub_100007BAC((v0 + 296));

  sub_100007BAC((v0 + 16));

  sub_100007BAC((v0 + 256));

  v25 = *(v0 + 8);

  return v25(v10);
}

uint64_t sub_1003AD7F8()
{

  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 32);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1003AD898(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003AD960, 0, 0);
}

uint64_t sub_1003AD960()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1003ADA04;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003ADA04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v4 = sub_1003CC2E4;
  }

  else
  {
    v4 = sub_1003ADB30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003ADB30()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  (*(v4 + 16))(v2, v0[7], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v9 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1003ADCB8;

  return v9(&unk_1013A0010, v6);
}

uint64_t sub_1003ADCB8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1003CC2F8;
  }

  else
  {
    v2 = sub_1003CC2B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003ADDE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v19 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v8, v15, v4);
      sub_100DE8BCC(v10, v8);
      (*(v12 - 8))(v10, v4);
      v15 += v16;
      --v11;
    }

    while (v11);
    return v19;
  }

  return a2;
}

uint64_t sub_1003ADF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = &v15 - v9;
  v16 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    do
    {
      sub_10002FDC4(v12, v7, type metadata accessor for OwnerSharingCircle);
      sub_100DEC12C(v10, v7);
      sub_10002FE88(v10, type metadata accessor for OwnerSharingCircle);
      v12 += v13;
      --v11;
    }

    while (v11);
    return v16;
  }

  return a2;
}

uint64_t sub_1003AE094(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_100DEE55C(&v6, v4);

      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1003AE100(uint64_t a1)
{
  *(v1 + 1472) = a1;
  v2 = swift_task_alloc();
  *(v1 + 1480) = v2;
  *v2 = v1;
  v2[1] = sub_1003AE194;

  return daemon.getter();
}

uint64_t sub_1003AE194(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[186] = a1;

  v3 = swift_task_alloc();
  v2[187] = v3;
  v4 = type metadata accessor for Daemon();
  v2[188] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[189] = v6;
  v7 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1003AE374;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003AE374(uint64_t a1)
{
  v3 = *v2;
  v3[190] = a1;
  v3[191] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003AE7C4, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[192] = v4;
    *v4 = v3;
    v4[1] = sub_1003AE4EC;

    return daemon.getter();
  }
}

uint64_t sub_1003AE4EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[193] = a1;

  v4 = swift_task_alloc();
  v2[194] = v4;
  v5 = type metadata accessor for FamilyCircleService();
  v2[195] = v5;
  v6 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService, &unk_1013E4DC8);
  *v4 = v3;
  v4[1] = sub_1003AE6A4;
  v7 = v2[189];
  v8 = v2[188];

  return ActorServiceDaemon.getService<A>()(v8, v5, v7, v6);
}

uint64_t sub_1003AE6A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1568) = a1;
  *(v3 + 1576) = v1;

  if (v1)
  {
    v4 = sub_1003AED54;
  }

  else
  {

    v4 = sub_1003AE828;
  }

  return _swift_task_switch(v4, 0, 0);
}