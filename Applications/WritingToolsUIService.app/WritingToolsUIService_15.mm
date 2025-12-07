uint64_t sub_1001AAF94(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 originalRange];
          v35 = [v33 originalRange];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 originalRange];
          v20 = [v18 originalRange];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_1001AB278(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100007120(&qword_100267318, &qword_100267310, &qword_1001E17F0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10000341C(&qword_100267310, &qword_1001E17F0);
            v9 = sub_1001AB42C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1001AB42C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1001AB4AC;
  }

  __break(1u);
  return result;
}

void sub_1001AB4B4(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for UUID();
  v53 = *(v58 - 8);
  v4 = __chkstk_darwin(v58);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v45 - v6;
  v7 = sub_10000341C(&qword_100267328, &qword_1001E1950);
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v50 = a2;
    v51 = v10;
    v12 = 0;
    v48 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v45 = (v16 + 63) >> 6;
    v46 = v14;
    v47 = v53 + 16;
    v55 = &v45 - v9;
    v56 = (v53 + 32);
    v49 = (v53 + 8);
    while (v18)
    {
      v57 = (v18 - 1) & v18;
      v19 = __clz(__rbit64(v18)) | (v12 << 6);
      v20 = v51;
LABEL_16:
      v25 = v48;
      v26 = v52;
      v27 = v53;
      v28 = v58;
      (*(v53 + 16))(v52, *(v48 + 48) + *(v53 + 72) * v19, v58);
      v29 = *(*(v25 + 56) + 8 * v19);
      v30 = sub_10000341C(&qword_100267330, &qword_1001E1958);
      v31 = *(v30 + 48);
      (*(v27 + 32))(v20, v26, v28);
      *(v20 + v31) = v29;
      (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
      v32 = v29;
      v11 = v55;
LABEL_17:
      sub_10002A894(v20, v11, &qword_100267328, &qword_1001E1950);
      v33 = sub_10000341C(&qword_100267330, &qword_1001E1958);
      if ((*(*(v33 - 8) + 48))(v11, 1, v33) == 1)
      {
        return;
      }

      v34 = *(v33 + 48);
      v35 = v54;
      v36 = v58;
      (*v56)(v54, v11, v58);
      v37 = *&v11[v34];
      v38 = v50;
      v39 = sub_100005044(v35);
      v41 = v40;
      (*v49)(v35, v36);
      if ((v41 & 1) == 0)
      {

        return;
      }

      sub_1000081B0(0, &unk_100262480, WTContext_ptr);
      v42 = *(*(v38 + 56) + 8 * v39);
      v43 = static NSObject.== infix(_:_:)();

      v11 = v55;
      v18 = v57;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v45 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v45;
    }

    v22 = v21 - 1;
    v20 = v51;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v45)
      {
        v44 = sub_10000341C(&qword_100267330, &qword_1001E1958);
        (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
        v57 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v46 + 8 * v23);
      ++v12;
      if (v24)
      {
        v57 = (v24 - 1) & v24;
        v19 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001AB954(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for UUID();
  v51 = *(v56 - 8);
  v4 = __chkstk_darwin(v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = v46 - v6;
  v7 = sub_10000341C(&qword_1002672D8, &qword_1001E1730);
  v8 = __chkstk_darwin(v7 - 8);
  result = __chkstk_darwin(v8);
  v12 = v46 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v11;
  v13 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46[0] = v15;
  v46[1] = v51 + 16;
  v53 = v46 - v10;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v19)
  {
    v55 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
    v26 = v47;
    v27 = v50;
    v28 = v51;
    v29 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v21, v56);
    v30 = *(*(v26 + 56) + 8 * v21);
    v31 = sub_10000341C(&qword_1002672E0, &qword_1001E1760);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v34 = v49;
    v33(v49, v27, v29);
    *(v34 + v32) = v30;
    (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
    v12 = v53;
LABEL_17:
    sub_10002A894(v34, v12, &qword_1002672D8, &qword_1001E1730);
    v35 = sub_10000341C(&qword_1002672E0, &qword_1001E1760);
    v36 = (*(*(v35 - 8) + 48))(v12, 1, v35);
    v37 = v36 == 1;
    if (v36 != 1)
    {
      v38 = *(v35 + 48);
      v39 = v52;
      v40 = v56;
      (*v54)(v52, v12, v56);
      v41 = *&v12[v38];
      v42 = sub_100005044(v39);
      LOBYTE(v38) = v43;
      result = (*v48)(v39, v40);
      if (v38)
      {
        v44 = *(*(a2 + 56) + 8 * v42) == v41;
        v12 = v53;
        v19 = v55;
        if (v44)
        {
          continue;
        }
      }
    }

    return v37;
  }

  if (v20 <= v13 + 1)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v45 = sub_10000341C(&qword_1002672E0, &qword_1001E1760);
      v34 = v49;
      (*(*(v45 - 8) + 56))(v49, 1, 1, v45);
      v55 = 0;
      v13 = v23;
      goto LABEL_17;
    }

    v25 = *(v46[0] + 8 * v24);
    ++v13;
    if (v25)
    {
      v55 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001ABDB4(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for UUID();
  v51 = *(v56 - 8);
  v4 = __chkstk_darwin(v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = v46 - v6;
  v7 = sub_10000341C(&qword_100267358, &qword_1001E19D0);
  v8 = __chkstk_darwin(v7 - 8);
  result = __chkstk_darwin(v8);
  v12 = v46 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v11;
  v13 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46[0] = v15;
  v46[1] = v51 + 16;
  v53 = v46 - v10;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v19)
  {
    v55 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
    v26 = v47;
    v27 = v50;
    v28 = v51;
    v29 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v21, v56);
    v30 = *(*(v26 + 56) + v21);
    v31 = sub_10000341C(&qword_100267360, &qword_1001E19D8);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v34 = v49;
    v33(v49, v27, v29);
    *(v34 + v32) = v30;
    (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
    v12 = v53;
LABEL_17:
    sub_10002A894(v34, v12, &qword_100267358, &qword_1001E19D0);
    v35 = sub_10000341C(&qword_100267360, &qword_1001E19D8);
    v36 = (*(*(v35 - 8) + 48))(v12, 1, v35);
    v37 = v36 == 1;
    if (v36 != 1)
    {
      v38 = *(v35 + 48);
      v39 = v52;
      v40 = v56;
      (*v54)(v52, v12, v56);
      v41 = v12[v38];
      v42 = sub_100005044(v39);
      LOBYTE(v38) = v43;
      result = (*v48)(v39, v40);
      if (v38)
      {
        v44 = v41 == *(*(a2 + 56) + v42);
        v12 = v53;
        v19 = v55;
        if (v44)
        {
          continue;
        }
      }
    }

    return v37;
  }

  if (v20 <= v13 + 1)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v45 = sub_10000341C(&qword_100267360, &qword_1001E19D8);
      v34 = v49;
      (*(*(v45 - 8) + 56))(v49, 1, 1, v45);
      v55 = 0;
      v13 = v23;
      goto LABEL_17;
    }

    v25 = *(v46[0] + 8 * v24);
    ++v13;
    if (v25)
    {
      v55 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1001AC214(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for UUID();
  v53 = *(v58 - 8);
  v4 = __chkstk_darwin(v58);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v45 - v6;
  v7 = sub_10000341C(&qword_100267348, &qword_1001E19C0);
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v50 = a2;
    v51 = v10;
    v12 = 0;
    v48 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v45 = (v16 + 63) >> 6;
    v46 = v14;
    v47 = v53 + 16;
    v55 = &v45 - v9;
    v56 = (v53 + 32);
    v49 = (v53 + 8);
    while (v18)
    {
      v57 = (v18 - 1) & v18;
      v19 = __clz(__rbit64(v18)) | (v12 << 6);
      v20 = v51;
LABEL_16:
      v25 = v48;
      v26 = v52;
      v27 = v53;
      v28 = v58;
      (*(v53 + 16))(v52, *(v48 + 48) + *(v53 + 72) * v19, v58);
      v29 = *(*(v25 + 56) + 8 * v19);
      v30 = sub_10000341C(&qword_100267350, &qword_1001E19C8);
      v31 = *(v30 + 48);
      (*(v27 + 32))(v20, v26, v28);
      *(v20 + v31) = v29;
      (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
      v32 = v29;
      v11 = v55;
LABEL_17:
      sub_10002A894(v20, v11, &qword_100267348, &qword_1001E19C0);
      v33 = sub_10000341C(&qword_100267350, &qword_1001E19C8);
      if ((*(*(v33 - 8) + 48))(v11, 1, v33) == 1)
      {
        return;
      }

      v34 = *(v33 + 48);
      v35 = v54;
      v36 = v58;
      (*v56)(v54, v11, v58);
      v37 = *&v11[v34];
      v38 = v50;
      v39 = sub_100005044(v35);
      v41 = v40;
      (*v49)(v35, v36);
      if ((v41 & 1) == 0)
      {

        return;
      }

      sub_1000081B0(0, &qword_10025F2D0, NSAttributedString_ptr);
      v42 = *(*(v38 + 56) + 8 * v39);
      v43 = static NSObject.== infix(_:_:)();

      v11 = v55;
      v18 = v57;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v45 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v45;
    }

    v22 = v21 - 1;
    v20 = v51;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v45)
      {
        v44 = sub_10000341C(&qword_100267350, &qword_1001E19C8);
        (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
        v57 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v46 + 8 * v23);
      ++v12;
      if (v24)
      {
        v57 = (v24 - 1) & v24;
        v19 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001AC6B4(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for UUID();
  v51 = *(v56 - 8);
  v4 = __chkstk_darwin(v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = v46 - v6;
  v7 = sub_10000341C(&qword_100267338, &qword_1001E19B0);
  v8 = __chkstk_darwin(v7 - 8);
  v53 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v46 - v11;
  v12 = 0;
  v47 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v46[0] = v14;
  v46[1] = v51 + 16;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v18)
  {
    v55 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
    v25 = v47;
    v26 = v50;
    v27 = v51;
    v28 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v20, v56);
    v29 = *(*(v25 + 56) + 8 * v20);
    v30 = sub_10000341C(&qword_100267340, &qword_1001E19B8);
    v31 = *(v30 + 48);
    v32 = *(v27 + 32);
    v33 = v53;
    v32(v53, v26, v28);
    *(v33 + v31) = v29;
    (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
    v34 = v49;
    sub_10002A894(v33, v49, &qword_100267338, &qword_1001E19B0);
    v35 = sub_10000341C(&qword_100267340, &qword_1001E19B8);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v52;
    v40 = v56;
    (*v54)(v52, v34, v56);
    v41 = *(v34 + v38);
    sub_100005044(v39);
    LOBYTE(v38) = v42;
    (*v48)(v39, v40);
    if ((v38 & 1) == 0)
    {

      return 0;
    }

    v44 = sub_10017BCDC(v43, v41);

    v18 = v55;
    if ((v44 & 1) == 0)
    {
      return v37;
    }
  }

  if (v19 <= v12 + 1)
  {
    v21 = v12 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      v45 = sub_10000341C(&qword_100267340, &qword_1001E19B8);
      v33 = v53;
      (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
      v55 = 0;
      v12 = v22;
      goto LABEL_17;
    }

    v24 = *(v46[0] + 8 * v23);
    ++v12;
    if (v24)
    {
      v55 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v12 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1001ACB40(uint64_t a1)
{
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v1[2];
  v8 = v4 - v7;
  if (__OFSUB__(v4, v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];
  if ((v9 + 8 * v7 + 8 * v8) != &v10[v11 + 4])
  {

    goto LABEL_9;
  }

  v12 = v10[3];

  v13 = (v12 >> 1) - v11;
  v14 = __OFADD__(v8, v13);
  v8 += v13;
  if (!v14)
  {
LABEL_9:
    if (v8 >= a1)
    {
LABEL_17:
      *v1 = v5;
      return;
    }

LABEL_10:
    v15 = v1[2];
    if (__OFSUB__(v4, v15))
    {
      __break(1u);
    }

    else
    {
      v16 = sub_10009E320(v4 - v15, a1);
      if (v4 >= v15)
      {
        v5 = v16;
        v17 = v16 + 4;
        sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
        swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v15))
        {
          v18 = v5[2];
          v14 = __OFADD__(v15, v18);
          v19 = v15 + v18;
          if (!v14)
          {
            if (v19 >= v15)
            {
              if ((v19 & 0x8000000000000000) == 0)
              {
                v20 = (2 * v19) | 1;
                swift_unknownObjectRelease();
                v1[1] = &v17[-v15];
                v1[2] = v15;
                v1[3] = v20;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

void sub_1001ACCD8(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v33 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 8 * a2;
  v31 = v13;
  v32 = (v18 + 8 * a3);
  sub_1001AD254(v7);
  v35 = v9 + 32;
  if (v19)
  {
    v20 = v19;
    v30 = v9;
    v21 = v4[2];
    v22 = (v4[1] + 8 * v21);
    v23 = &v22[8 * a2];
    sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
    swift_arrayDestroy();
    if (v17 != v22 || v17 >= v23)
    {
      memmove(v17, v22, 8 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v24 = &v23[8 * v33];
    if (v32 != v24 || v32 >= &v24[8 * v31])
    {
      memmove(v32, v24, 8 * v31);
    }

    swift_arrayDestroy();
    *(v20 + 16) = 0;

    v9 = v30;
  }

  else
  {
    v21 = v4[2];
    v25 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v25 < v21)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v25, v21))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
    swift_arrayInitWithCopy();
    a4(v35 + 8 * a2, a3);
    v26 = v25 + v33;
    if (__OFADD__(v25, v33))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27 = v4[3] >> 1;
    if (v27 < v26)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v26))
    {
LABEL_42:
      __break(1u);
      return;
    }

    swift_arrayInitWithCopy();
  }

  swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_33;
  }

  v28 = *(v9 + 16);
  v11 = __OFADD__(v21, v28);
  v29 = v21 + v28;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v29 < v21)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v29 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v35 - 8 * v21;
  v4[2] = v21;
  v4[3] = (2 * v29) | 1;
}

void sub_1001ACFC0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  v8[2] = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  *(v1 + 24) = v3 & 1 | (2 * v11);
}

void sub_1001AD078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = a1;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == &v11[v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  sub_10009E320(v6, v25);
}

void sub_1001AD254(uint64_t a1)
{
  if (swift_isUniquelyReferenced_nonNull())
  {
    v5 = v1[2];
    v4 = v1[3];
    v6 = (v4 >> 1) - v5;
    if (__OFSUB__(v4 >> 1, v5))
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = v1[1] + 8 * v5;
    if (v4)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        swift_unknownObjectRelease();
        v8 = _swiftEmptyArrayStorage;
      }

      v9 = v8[2];
      if ((v7 + 8 * v6) == &v8[v9 + 4])
      {
        v11 = v8[3];

        v12 = (v11 >> 1) - v9;
        v13 = __OFADD__(v6, v12);
        v10 = v6 + v12;
        if (v13)
        {
          __break(1u);
          return;
        }

LABEL_10:
        if (v10 < a1)
        {
          return;
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain();
        v14 = swift_dynamicCastClass();
        if (!v14)
        {
          swift_unknownObjectRelease();
          v14 = _swiftEmptyArrayStorage;
        }

        v15 = v7 - v14 - 25;
        if (v7 - v14 - 32 >= 0)
        {
          v15 = v7 - v14 - 32;
        }

        v13 = __OFADD__(v6, v15 >> 3);
        v4 = v6 + (v15 >> 3);
        if (!v13)
        {
          v3 = v14[2];
          if (v4 >= v3)
          {
            return;
          }

LABEL_21:
          sub_1001AD758(v4, v3, 0);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v10 = v6;
    goto LABEL_10;
  }
}

uint64_t sub_1001AD438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000081F8(a1, &v21 - v13, &unk_100262450, &qword_1001CFAA0);
  sub_1000081F8(a2, &v14[v15], &unk_100262450, &qword_1001CFAA0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1000081F8(v14, v10, &unk_100262450, &qword_1001CFAA0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1001A930C(&unk_10025F360, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10000F500(v14, &unk_100262450, &qword_1001CFAA0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_10000F500(v14, &qword_10025F358, &qword_1001D4140);
    v17 = 1;
    return v17 & 1;
  }

  sub_10000F500(v14, &unk_100262450, &qword_1001CFAA0);
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1001AD758(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
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

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
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

void sub_1001AD82C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_45;
  }

  v5 = a1[4];
  v6 = a1[3] >> 1;
  if (v5 != v6)
  {
    v39 = a1[2];
    if (v5 < v39 || v5 >= v6)
    {
      goto LABEL_46;
    }

    v8 = a1[1];
    v9 = v5 + 1;
    v10 = *(v8 + 8 * v5);
    v11 = v1[2];
    v12 = v1[3];
    v13 = v10;
    v14 = v12;
    v15 = v11;
    v16 = v10;
    v41 = v1;
    while (!__OFADD__(v4, 1))
    {
      v17 = v16;
      sub_1001AD078(v4, v4 + 1, *v1, v1[1], v15, v14);
      v44 = v18;
      v19 = sub_1001AD238();
      sub_1001ACCD8(&v44, v4, 0, v19);

      v20 = v1[2];
      v21 = v1[3];
      v22 = (v21 >> 1) - v20;
      if (__OFSUB__(v21 >> 1, v20))
      {
        goto LABEL_39;
      }

      v40 = v21 >> 1;
      v42 = v1[2];
      v23 = v1[1] + 8 * v20;
      v43 = v1[3];
      if (v21)
      {
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain();
        v24 = swift_dynamicCastClass();
        v25 = v39;
        if (!v24)
        {
          swift_unknownObjectRelease();
          v24 = _swiftEmptyArrayStorage;
        }

        v26 = v24[2];
        if ((v23 + 8 * v22) == &v24[v26 + 4])
        {
          v28 = v24[3];

          v29 = (v28 >> 1) - v26;
          v27 = v22 + v29;
          if (__OFADD__(v22, v29))
          {
            goto LABEL_44;
          }
        }

        else
        {

          v27 = v22;
        }
      }

      else
      {
        v27 = (v21 >> 1) - v20;
        v25 = v39;
      }

      v16 = v17;
      if (v4 < v27)
      {
        v30 = v9;
        while (1)
        {
          *(v23 + 8 * v4++) = v16;
          if (v6 == v30)
          {
            v16 = 0;
            v9 = v6;
            goto LABEL_28;
          }

          if (v9 < v25 || v30 >= v6)
          {
            break;
          }

          v31 = v30 + 1;
          v16 = *(v8 + 8 * v30);
          v30 = v31;
          if (v27 == v4)
          {
            v9 = v31;
            v4 = v27;
            goto LABEL_28;
          }
        }

        __break(1u);
        break;
      }

LABEL_28:
      v14 = v43;
      v32 = v4 - v22;
      if (__OFSUB__(v4, v22))
      {
        goto LABEL_40;
      }

      if (v32)
      {
        v33 = v16;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {
          swift_unknownObjectRelease();
          v34 = _swiftEmptyArrayStorage;
        }

        v35 = v34[2];
        v36 = __OFADD__(v35, v32);
        v37 = v35 + v32;
        if (v36)
        {
          goto LABEL_41;
        }

        v34[2] = v37;

        v38 = v40 + v32;
        if (__OFADD__(v40, v32))
        {
          goto LABEL_42;
        }

        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v14 = v43 & 1 | (2 * v38);
        v41[3] = v14;
        v16 = v33;
      }

      v1 = v41;
      v15 = v42;
      if (!v16)
      {
        return;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }
}

void sub_1001ADAE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = v13[2];
  if ((v12 + 8 * v8 + 8 * v9) != &v13[v14 + 4])
  {

    goto LABEL_8;
  }

  v16 = v13[3];

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  v19 = v9 + v6;
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < v19)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = 2 * v15;
    if (v20 > v19)
    {
      v19 = v20;
    }
  }

  sub_1001ACB40(v19);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_37;
  }

  v24 = v4[1] + 8 * v22 + 8 * v23;
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v27 = v23;
    goto LABEL_23;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = _swiftEmptyArrayStorage;
  }

  v26 = v25[2];
  if (v24 != &v25[v26 + 4])
  {

    goto LABEL_21;
  }

  v28 = v25[3];

  v29 = (v28 >> 1) - v26;
  v18 = __OFADD__(v23, v29);
  v27 = v23 + v29;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v30 = v27 - v23;
  if (__OFSUB__(v27, v23))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v30 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    if (__OFADD__(v23, v6))
    {
LABEL_44:
      __break(1u);
      return;
    }

    sub_1001ACFC0(v23 + v6);
  }

LABEL_31:
  if (v6 == v30)
  {
    v33[0] = a1;
    v33[1] = a2;
    v33[2] = a3;
    v33[3] = a4;
    v33[4] = v5;
    sub_1001AD82C(v33);
  }
}

uint64_t *sub_1001ADD40@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *result;
  if (*result >= v3[2] && v4 < v3[3] >> 1)
  {
    v6 = *(v3[1] + 8 * v4);
    *a2 = v6;
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001ADDD8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100035E70(v1);
}

unint64_t sub_1001ADE78()
{
  result = qword_100267320;
  if (!qword_100267320)
  {
    sub_1000081B0(255, &qword_10025B1A8, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267320);
  }

  return result;
}

uint64_t sub_1001ADF3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001ADF84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028688;

  return sub_1001A41D0(a1, v4, v5, v7, v6);
}

uint64_t sub_1001AE04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AE12C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1001A0A8C(v1, v2);
}

uint64_t sub_1001AE16C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1001AE258(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void sub_1001AE30C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001A002C(v1);
}

void sub_1001AE33C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion);
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion) = v2;
  v4 = v2;
}

void sub_1001AE3C4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task) = *(v0 + 24);
}

void sub_1001AE408()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session) = v1;
  v4 = v1;
  sub_10019ECB4(v3);
}

uint64_t sub_1001AE48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1000081B0(0, &unk_100262480, WTContext_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1001AE5CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_10025A8B0 != -1)
  {
    swift_once();
  }

  if (byte_1002773A8)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 8.0;
  }

  v5 = type metadata accessor for MultichoiceRow(0);
  *(a2 + *(v5 + 24)) = v4;
  type metadata accessor for QuestionnaireEntry(0);
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);

  Bindable<A>.init(wrappedValue:)();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
  {

    goto LABEL_11;
  }

  v6 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v7 = [v6 answerOptions];
  if (v7)
  {
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 containsObject:v9];

    if ((v10 & 1) == 0)
    {
      v11 = 1;
LABEL_12:
      v12 = a2 + *(v5 + 20);
      *v12 = v11;
      *(v12 + 8) = 0;
      return;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1001AE7BC()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277360 = result;
  *algn_100277368 = v1;
  byte_100277370 = v2 & 1;
  qword_100277378 = v3;
  return result;
}

uint64_t sub_1001AE7FC()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277380 = result;
  *algn_100277388 = v1;
  byte_100277390 = v2 & 1;
  qword_100277398 = v3;
  return result;
}

uint64_t sub_1001AE83C()
{
  if (qword_10025A8B0 != -1)
  {
    result = swift_once();
  }

  v0 = 15.0;
  if (byte_1002773A8)
  {
    v0 = 16.0;
  }

  qword_1002773A0 = *&v0;
  return result;
}

void sub_1001AE8A4()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_1002773A8 = v1 == 6;
}

uint64_t sub_1001AE908()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_1002773B0 = result;
  *algn_1002773B8 = v1;
  byte_1002773C0 = v2 & 1;
  qword_1002773C8 = v3;
  return result;
}

uint64_t sub_1001AE958()
{
  if (qword_10025A8B0 != -1)
  {
    result = swift_once();
  }

  v0 = 0.15;
  if (byte_1002773A8)
  {
    v0 = 1.0;
  }

  qword_1002773D0 = *&v0;
  return result;
}

uint64_t sub_1001AE9C8()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10002B2EC(v0, qword_1002773D8);
  sub_10000F34C(v0, qword_1002773D8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1001AEA2C()
{
  if (qword_10025A8B0 != -1)
  {
    result = swift_once();
  }

  v0 = 10.0;
  if (byte_1002773A8)
  {
    v0 = 16.0;
  }

  qword_1002773F0 = *&v0;
  return result;
}

uint64_t sub_1001AEA94()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v4, qword_1002773F8);
  v5 = sub_10000F34C(v4, qword_1002773F8);
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v3, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v5 = v6;
  *(v5 + 1) = v7;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  return (*(v1 + 32))(&v5[*(v4 + 20)], v3, v0);
}

uint64_t sub_1001AEC0C()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v4, qword_100277410);
  v5 = sub_10000F34C(v4, qword_100277410);
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v3, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v5 = v6;
  *(v5 + 1) = v7;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  return (*(v1 + 32))(&v5[*(v4 + 20)], v3, v0);
}

uint64_t sub_1001AED84()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v4, qword_100277428);
  v5 = sub_10000F34C(v4, qword_100277428);
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v3, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v5 = v6;
  *(v5 + 1) = v7;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  return (*(v1 + 32))(&v5[*(v4 + 20)], v3, v0);
}

uint64_t sub_1001AEEFC()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v4, qword_100277440);
  v5 = sub_10000F34C(v4, qword_100277440);
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v3, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v5 = v6;
  *(v5 + 1) = v7;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  return (*(v1 + 32))(&v5[*(v4 + 20)], v3, v0);
}

uint64_t sub_1001AF074()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v4, qword_100277458);
  v5 = sub_10000F34C(v4, qword_100277458);
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v3, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v5 = v6;
  *(v5 + 1) = v7;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  return (*(v1 + 32))(&v5[*(v4 + 20)], v3, v0);
}

uint64_t sub_1001AF1EC()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v4, qword_100277470);
  v5 = sub_10000F34C(v4, qword_100277470);
  (*(v1 + 104))(v3, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v5 = v6;
  *(v5 + 1) = v7;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  return (*(v1 + 32))(&v5[*(v4 + 20)], v3, v0);
}

uint64_t sub_1001AF324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100267F28, &qword_1001E28D8);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;
  v7 = sub_10000341C(&qword_100267F30, &qword_1001E28E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = sub_10000341C(&qword_100267F38, &qword_1001E28E8);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  KeyPath = swift_getKeyPath();
  v15 = sub_10000341C(&qword_100267F40, &qword_1001E2920);
  (*(*(v15 - 8) + 16))(v6, a1, v15);
  v16 = &v6[*(sub_10000341C(&qword_100267F48, &qword_1001E2928) + 36)];
  *v16 = KeyPath;
  *(v16 + 1) = 0;
  v16[16] = 1;
  *&v6[*(v4 + 36)] = 256;
  static Font.Weight.medium.getter();
  sub_1001C3A8C();
  View.fontWeight(_:)();
  sub_10000F500(v6, &qword_100267F28, &qword_1001E28D8);
  if (qword_10025A8B0 != -1)
  {
    swift_once();
  }

  if (byte_1002773A8 == 1)
  {
    v17 = static Font.title3.getter();
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_getKeyPath();
  (*(v8 + 32))(v13, v10, v7);
  v19 = &v13[*(v11 + 36)];
  *v19 = v18;
  v19[1] = v17;
  v20 = static Edge.Set.leading.getter();
  v21 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v21 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10002A894(v13, a2, &qword_100267F38, &qword_1001E28E8);
  result = sub_10000341C(&qword_100267F78, &qword_1001E2968);
  v31 = a2 + *(result + 36);
  *v31 = v21;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_1001AF6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  v4 = qword_1002773F0;
  v5 = (a2 + *(sub_10000341C(&qword_100267EC0, &qword_1001E2858) + 36));
  v6 = *(type metadata accessor for RoundedRectangle() + 20);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = v4;
  v5[1] = v4;
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  v9 = qword_100277188;
  v10 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *(v5 + *(v10 + 52)) = v9;
  *(v5 + *(v10 + 56)) = 256;

  v11 = static Alignment.center.getter();
  v13 = v12;
  v14 = (v5 + *(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36));
  *v14 = v11;
  v14[1] = v13;
  v15 = sub_10000341C(&qword_100267EC8, &qword_1001E2860);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  v16 = (a2 + *(sub_10000341C(&qword_100267ED0, &qword_1001E2868) + 36));
  *v16 = 0;
  v17 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v16[v17] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001AF8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v85 = a1;
  v74 = type metadata accessor for GlobalCoordinateSpace();
  __chkstk_darwin(v74);
  v71 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DragGesture();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_100267B18, &qword_1001E2518);
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v79 = &v63 - v6;
  v7 = sub_10000341C(&qword_100267B20, &unk_1001E2520);
  v83 = *(v7 - 8);
  v84 = v7;
  __chkstk_darwin(v7);
  v82 = &v63 - v8;
  v77 = type metadata accessor for AutomaticHoverEffect();
  v69 = *(v77 - 8);
  __chkstk_darwin(v77);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for UnevenRoundedRectangle();
  v10 = __chkstk_darwin(v86);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v63 - v12;
  v13 = sub_10000341C(&qword_1002634E0, &qword_1001DAE70);
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  v65 = sub_10000341C(&qword_100267B28, &qword_1001E2530);
  __chkstk_darwin(v65);
  v17 = &v63 - v16;
  v70 = sub_10000341C(&qword_100267B30, &qword_1001E2538);
  __chkstk_darwin(v70);
  v19 = &v63 - v18;
  v20 = sub_10000341C(&qword_100267B38, &qword_1001E2540);
  v72 = *(v20 - 8);
  v73 = v20;
  __chkstk_darwin(v20);
  v87 = &v63 - v21;
  v64 = static VerticalAlignment.center.getter();
  v96 = 1;
  sub_1001B051C(v1, &v89);
  v101 = v93;
  v102[0] = v94[0];
  *(v102 + 9) = *(v94 + 9);
  v97 = v89;
  v98 = v90;
  v99 = v91;
  v100 = v92;
  v103[0] = v89;
  v103[1] = v90;
  v103[2] = v91;
  v103[3] = v92;
  v103[4] = v93;
  v104[0] = v94[0];
  *(v104 + 9) = *(v94 + 9);
  sub_1000081F8(&v97, v88, &qword_100267B40, &qword_1001E2548);
  sub_10000F500(v103, &qword_100267B40, &qword_1001E2548);
  *(&v95[3] + 7) = v100;
  *(&v95[4] + 7) = v101;
  *(&v95[5] + 7) = v102[0];
  v95[6] = *(v102 + 9);
  *(v95 + 7) = v97;
  *(&v95[1] + 7) = v98;
  *(&v95[2] + 7) = v99;
  v22 = v96;
  v23 = *(v1 + 24);
  v24 = *(v1 + 32);
  sub_100027874(v2, v2[3]);
  if ((*(v24 + 24))(v23, v24))
  {
    if (qword_10025A8E0 != -1)
    {
      swift_once();
    }

    v25 = qword_100277410;
  }

  else
  {
    if (qword_10025A8F8 != -1)
    {
      swift_once();
    }

    v25 = qword_100277458;
  }

  v26 = sub_10000F34C(v86, v25);
  v27 = v66;
  sub_1001C0308(v26, v66, &type metadata accessor for UnevenRoundedRectangle);
  static Color.gray.getter();
  v28 = *(v1 + 64);
  LOBYTE(v89) = *(v1 + 56);
  *(&v89 + 1) = v28;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v29 = Color.opacity(_:)();

  sub_1001C0374(v27, v15, &type metadata accessor for UnevenRoundedRectangle);
  *&v15[*(v13 + 52)] = v29;
  *&v15[*(v13 + 56)] = 256;
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = &v17[*(v65 + 36)];
  sub_10002A894(v15, v33, &qword_1002634E0, &qword_1001DAE70);
  v34 = (v33 + *(sub_10000341C(&qword_100267B48, &qword_1001E2550) + 36));
  *v34 = v30;
  v34[1] = v32;
  v35 = v95[3];
  *(v17 + 49) = v95[2];
  v36 = v95[0];
  *(v17 + 33) = v95[1];
  *(v17 + 17) = v36;
  *(v17 + 113) = v95[6];
  v37 = v95[4];
  *(v17 + 97) = v95[5];
  *(v17 + 81) = v37;
  *v17 = v64;
  *(v17 + 1) = 0;
  v17[16] = v22;
  *(v17 + 65) = v35;
  v38 = v2[3];
  v39 = v2[4];
  sub_100027874(v2, v38);
  if ((*(v39 + 24))(v38, v39))
  {
    if (qword_10025A8E0 != -1)
    {
      swift_once();
    }

    v40 = qword_100277410;
  }

  else
  {
    if (qword_10025A8F8 != -1)
    {
      swift_once();
    }

    v40 = qword_100277458;
  }

  v41 = sub_10000F34C(v86, v40);
  v42 = v67;
  sub_1001C0308(v41, v67, &type metadata accessor for UnevenRoundedRectangle);
  v43 = v70;
  v44 = &v19[*(v70 + 36)];
  sub_1001C0374(v42, v44, &type metadata accessor for UnevenRoundedRectangle);
  *(v44 + *(sub_10000341C(&qword_100267AE8, &qword_1001E2510) + 36)) = 0;
  sub_10002A894(v17, v19, &qword_100267B28, &qword_1001E2530);
  v45 = v68;
  static CustomHoverEffect<>.automatic.getter();
  v86 = sub_1001C20DC();
  v46 = sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v47 = v77;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v69 + 8))(v45, v47);
  sub_10000F500(v19, &qword_100267B30, &qword_1001E2538);
  static CoordinateSpaceProtocol<>.global.getter();
  v48 = v75;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  sub_1001C2278(v2, &v89);
  v49 = swift_allocObject();
  v50 = v92;
  *(v49 + 48) = v91;
  *(v49 + 64) = v50;
  *(v49 + 80) = v93;
  v51 = v90;
  *(v49 + 16) = v89;
  *(v49 + 32) = v51;
  sub_1001C0124(&qword_100267B78, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_1001C0124(&qword_100267B80, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v52 = v78;
  v53 = v79;
  Gesture<>.onChanged(_:)();

  (*(v76 + 8))(v48, v52);
  sub_1001C2278(v2, &v89);
  v54 = swift_allocObject();
  v55 = v92;
  *(v54 + 48) = v91;
  *(v54 + 64) = v55;
  *(v54 + 80) = v93;
  v56 = v90;
  *(v54 + 16) = v89;
  *(v54 + 32) = v56;
  sub_100007120(&qword_100267B88, &qword_100267B18, &qword_1001E2518, &protocol conformance descriptor for _ChangedGesture<A>);
  v58 = v81;
  v57 = v82;
  Gesture.onEnded(_:)();

  (*(v80 + 8))(v53, v58);
  static GestureMask.all.getter();
  *&v89 = v43;
  *(&v89 + 1) = v47;
  *&v90 = v86;
  *(&v90 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_100267B90, &qword_100267B20, &unk_1001E2520, &protocol conformance descriptor for _EndedGesture<A>);
  v59 = v84;
  v60 = v73;
  v61 = v87;
  View.gesture<A>(_:including:)();
  (*(v83 + 8))(v57, v59);
  return (*(v72 + 8))(v61, v60);
}

uint64_t sub_1001B051C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  sub_1001B0664(a1, &v22);
  v5 = v22;
  v6 = v23;
  v7 = v24;
  v9 = v25;
  v8 = v26;
  v10 = v27;
  v15[0] = v27;
  v17 = 1;
  v18 = v4;
  LOBYTE(v19) = 1;
  *(&v19 + 1) = v22;
  LOBYTE(v20) = v23;
  *(&v20 + 1) = v24;
  *v21 = v25;
  *&v21[16] = v26;
  v21[24] = v27;
  *&v16[7] = v4;
  *&v16[64] = *&v21[9];
  *&v16[55] = v25;
  *&v16[39] = v20;
  *&v16[23] = v19;
  v15[80] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = *&v16[16];
  *(a2 + 9) = *v16;
  v12 = *&v16[32];
  v13 = *&v16[48];
  *(a2 + 73) = *&v16[64];
  *(a2 + 57) = v13;
  *(a2 + 41) = v12;
  *(a2 + 25) = v11;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v22 = v4;
  v23 = 0;
  LOBYTE(v24) = 1;
  *&v25 = v5;
  BYTE8(v25) = v6;
  v26 = v7;
  v27 = v9;
  v28 = v8;
  v29 = v10;
  sub_1000081F8(&v18, v15, &qword_100267B98, &unk_1001E2560);
  return sub_10000F500(&v22, &qword_100267B98, &unk_1001E2560);
}

uint64_t sub_1001B0664@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025DAA8, &qword_1001D2D08);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = a1[3];
  v8 = a1[4];
  sub_100027874(a1, v7);
  (*(v8 + 8))(v7, v8);
  Image.init(systemName:)();
  v9 = enum case for Image.TemplateRenderingMode.template(_:);
  v10 = type metadata accessor for Image.TemplateRenderingMode();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v6, v9, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = Image.renderingMode(_:)();

  sub_10000F500(v6, &qword_10025DAA8, &qword_1001D2D08);
  v13 = a1[3];
  v14 = a1[4];
  sub_100027874(a1, v13);
  v15 = (*(v14 + 16))(v13, v14);
  result = swift_getKeyPath();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v12;
  *(a2 + 24) = result;
  *(a2 + 32) = v15;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return result;
}

uint64_t sub_1001B0898(uint64_t a1, uint64_t a2)
{
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  v3 = State.wrappedValue.setter();
  return (*(a2 + 40))(v3);
}

uint64_t sub_1001B0918()
{
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();

  v0 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v0 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    State.wrappedValue.getter();
    sub_1001B0A20(v2, v3);
  }

  else
  {
    sub_1001B0A20(0, 0);
    sub_10000341C(&qword_100262800, &qword_1001D9490);
    return Binding.wrappedValue.setter();
  }
}

uint64_t sub_1001B0A20(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if (a2)
  {
    if (!a1 && a2 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v4 = 0;
      v3 = 0;
    }

    else
    {
    }
  }

  v6 = *(v2 + 48);
  v5 = *(v2 + 56);
  v15 = v6;
  v7 = *(v2 + 64);
  *&v12 = v6;
  *(&v12 + 1) = v5;
  v13 = *(v2 + 64);
  v14 = v7;

  sub_100063D8C(&v15, &v10);
  sub_1000081F8(&v14, &v10, &qword_1002654A8, &qword_1001DDEC8);
  sub_10000341C(&qword_100267AB0, &qword_1001E24D0);
  Binding.wrappedValue.getter();
  if (!v11)
  {
    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!v3)
  {

    goto LABEL_17;
  }

  if (v10 != v4 || v11 != v3)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_16;
    }

LABEL_17:
    *&v12 = v6;
    *(&v12 + 1) = v5;
    v13 = *(v2 + 64);
    v10 = v4;
    v11 = v3;
    Binding.wrappedValue.setter();
    goto LABEL_18;
  }

LABEL_16:

LABEL_18:
  sub_100063DE8(&v15);

  sub_10000F500(&v14, &qword_1002654A8, &qword_1001DDEC8);
  v12 = *(v2 + 104);
  LOBYTE(v13) = *(v2 + 120);
  LOBYTE(v10) = 0;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  return FocusState.wrappedValue.setter();
}

uint64_t sub_1001B0C0C()
{
  v1 = v0;
  v2 = *(v0 + 96);
  v12 = *(v0 + 80);
  v10 = v2;
  v11 = v2;
  v9 = *(v0 + 80);
  sub_10004CC28(&v12, &v7);
  sub_1000081F8(&v11, &v7, &qword_100267AB8, &unk_1001E24D8);
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  v4 = v7;
  v3 = v8;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = *(v1 + 80);
    v10 = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
    State.wrappedValue.setter();
  }

  sub_1001C1C90(&v12);
  sub_10000F500(&v11, &qword_100267AB8, &unk_1001E24D8);
  v9 = *(v1 + 24);
  LOBYTE(v10) = *(v1 + 40);
  LOBYTE(v7) = 0;
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1001B0D44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for Divider();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = __chkstk_darwin(v3);
  v70 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v68 = v57 - v6;
  v7 = type metadata accessor for AutomaticHoverEffect();
  v59 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000341C(&qword_100267A78, &qword_1001E2490);
  __chkstk_darwin(v58);
  v11 = (v57 - v10);
  v12 = sub_10000341C(&qword_100267A80, &qword_1001E2498);
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  __chkstk_darwin(v12);
  v57[0] = v57 - v14;
  v15 = sub_10000341C(&qword_100267A88, &qword_1001E24A0);
  v62 = *(v15 - 8);
  v63 = v15;
  v16 = __chkstk_darwin(v15);
  v69 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v67 = v57 - v18;
  *v11 = static Alignment.center.getter();
  v11[1] = v19;
  v20 = sub_10000341C(&qword_100267A90, &unk_1001E24A8);
  sub_1001B1690(a1, v11 + *(v20 + 44));
  static CustomHoverEffect<>.automatic.getter();
  v84 = *(a1 + 104);
  v85 = *(a1 + 120);
  v81 = *(a1 + 104);
  LOBYTE(v82) = *(a1 + 120);
  v57[1] = sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  v21 = sub_100007120(&qword_100267A98, &qword_100267A78, &qword_1001E2490, &protocol conformance descriptor for ZStack<A>);
  v22 = sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v23 = v58;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v59 + 8))(v9, v7);
  sub_10000F500(v11, &qword_100267A78, &qword_1001E2490);
  v24 = swift_allocObject();
  v25 = *(a1 + 80);
  v24[5] = *(a1 + 64);
  v24[6] = v25;
  v24[7] = *(a1 + 96);
  *(v24 + 121) = *(a1 + 105);
  v26 = *(a1 + 16);
  v24[1] = *a1;
  v24[2] = v26;
  v27 = *(a1 + 48);
  v24[3] = *(a1 + 32);
  v24[4] = v27;
  sub_1001C0AC8(a1, &v81);
  *&v81 = v23;
  *(&v81 + 1) = v7;
  v82 = v21;
  v83 = v22;
  swift_getOpaqueTypeConformance2();
  v28 = v67;
  v29 = v60;
  v30 = v57[0];
  View.onTapGesture(count:perform:)();

  (*(v61 + 8))(v30, v29);
  v31 = v68;
  Divider.init()();
  v81 = v84;
  LOBYTE(v82) = v85;
  FocusState.wrappedValue.getter();
  if (v71[0] == 1)
  {
    v32 = static Color.blue.getter();
    v74 = &type metadata for CustomEntryView.CheckmarkWidgetAppearance;
    v75 = &off_100253440;
    v33 = swift_allocObject();
    v73[0] = v33;
    *(v33 + 16) = 0x72616D6B63656863;
    *(v33 + 24) = 0xE90000000000006BLL;
    *(v33 + 32) = v32;
    *(v33 + 40) = 1;
    v34 = swift_allocObject();
    v35 = *(a1 + 80);
    v34[5] = *(a1 + 64);
    v34[6] = v35;
    v34[7] = *(a1 + 96);
    *(v34 + 121) = *(a1 + 105);
    v36 = *(a1 + 16);
    v34[1] = *a1;
    v34[2] = v36;
    v37 = *(a1 + 48);
    v34[3] = *(a1 + 32);
    v34[4] = v37;
    v71[0] = 0;
    sub_1001C0AC8(a1, &v81);
    State.init(wrappedValue:)();
    v78 = v81;
    v79 = *(&v81 + 1);
    v76 = sub_1001C1C6C;
    v77 = v34;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(v80);
    sub_1000081F8(v73, v71, &qword_100267768, &qword_1001E1EB0);
    v72 = 0;
  }

  else
  {
    v38 = static Color.gray.getter();
    v74 = &type metadata for CustomEntryView.XmarkWidgetAppearance;
    v75 = &off_100253460;
    v39 = swift_allocObject();
    v73[0] = v39;
    *(v39 + 16) = 0x6B72616D78;
    *(v39 + 24) = 0xE500000000000000;
    *(v39 + 32) = v38;
    *(v39 + 40) = 1;
    v40 = swift_allocObject();
    v41 = *(a1 + 80);
    v40[5] = *(a1 + 64);
    v40[6] = v41;
    v40[7] = *(a1 + 96);
    *(v40 + 121) = *(a1 + 105);
    v42 = *(a1 + 16);
    v40[1] = *a1;
    v40[2] = v42;
    v43 = *(a1 + 48);
    v40[3] = *(a1 + 32);
    v40[4] = v43;
    v71[0] = 0;
    sub_1001C0AC8(a1, &v81);
    State.init(wrappedValue:)();
    v78 = v81;
    v79 = *(&v81 + 1);
    v76 = sub_1001C1C08;
    v77 = v40;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(v80);
    sub_1000081F8(v73, v71, &qword_100267768, &qword_1001E1EB0);
    v72 = 1;
  }

  sub_10000341C(&qword_100267768, &qword_1001E1EB0);
  sub_1001C0580();
  _ConditionalContent<>.init(storage:)();
  sub_10000F500(v73, &qword_100267768, &qword_1001E1EB0);
  v45 = v62;
  v44 = v63;
  v46 = *(v62 + 16);
  v47 = v69;
  v46(v69, v28, v63);
  v48 = v65;
  v61 = *(v65 + 16);
  v49 = v31;
  v50 = v66;
  (v61)(v70, v49, v66);
  sub_1000081F8(&v81, v71, &qword_100267AA0, &qword_1001E24B8);
  v51 = v64;
  v46(v64, v47, v44);
  v52 = sub_10000341C(&qword_100267AA8, &unk_1001E24C0);
  v53 = v70;
  (v61)(&v51[*(v52 + 48)], v70, v50);
  sub_1000081F8(v71, &v51[*(v52 + 64)], &qword_100267AA0, &qword_1001E24B8);
  sub_10000F500(&v81, &qword_100267AA0, &qword_1001E24B8);
  v54 = *(v48 + 8);
  v54(v68, v50);
  v55 = *(v45 + 8);
  v55(v67, v44);
  sub_10000F500(v71, &qword_100267AA0, &qword_1001E24B8);
  v54(v53, v50);
  return (v55)(v69, v44);
}

uint64_t sub_1001B1690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v47 = sub_10000341C(&qword_10025CB20, &qword_1001D1E40);
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v45 - v4;
  v46 = sub_10000341C(&qword_100267AC0, &qword_1001E24E8);
  __chkstk_darwin(v46);
  v7 = &v45 - v6;
  v49 = sub_10000341C(&qword_100267AC8, &qword_1001E24F0);
  __chkstk_darwin(v49);
  v50 = &v45 - v8;
  v51 = sub_10000341C(&qword_100267AD0, &qword_1001E24F8);
  __chkstk_darwin(v51);
  v52 = &v45 - v9;
  v57 = sub_10000341C(&qword_100267AD8, &qword_1001E2500);
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v45 - v10;
  v56 = sub_10000341C(&qword_100267AE0, &qword_1001E2508);
  __chkstk_darwin(v56);
  v55 = &v45 - v11;
  if (qword_10025A898 != -1)
  {
    swift_once();
  }

  v64 = *(a1 + 80);
  v65 = *(a1 + 96);
  v61 = *(a1 + 80);
  *&v62 = *(a1 + 96);

  v48 = sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.projectedValue.getter();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  v59 = *(a1 + 104);
  LOBYTE(v60) = *(a1 + 120);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40, &protocol conformance descriptor for TextField<A>);
  v12 = v47;
  View.focused(_:)();

  (*(v3 + 8))(v5, v12);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v61);
  v13 = &v7[*(v46 + 36)];
  v14 = v62;
  *v13 = v61;
  *(v13 + 1) = v14;
  *(v13 + 2) = v63;
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  v16 = static Edge.Set.leading.getter();
  *(inited + 32) = v16;
  v17 = static Edge.Set.trailing.getter();
  *(inited + 33) = v17;
  v18 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  v19 = v50;
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10002A894(v7, v19, &qword_100267AC0, &qword_1001E24E8);
  v28 = v19 + *(v49 + 36);
  *v28 = v18;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  if (qword_10025A8D8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for UnevenRoundedRectangle();
  v30 = sub_10000F34C(v29, qword_1002773F8);
  v31 = v52;
  v32 = &v52[*(v51 + 36)];
  sub_1001C0308(v30, v32, &type metadata accessor for UnevenRoundedRectangle);
  *(v32 + *(sub_10000341C(&qword_100267AE8, &qword_1001E2510) + 36)) = 0;
  sub_10002A894(v19, v31, &qword_100267AC8, &qword_1001E24F0);
  v59 = v64;
  v60 = v65;
  State.wrappedValue.getter();
  v33 = swift_allocObject();
  v34 = *(a1 + 80);
  v33[5] = *(a1 + 64);
  v33[6] = v34;
  v33[7] = *(a1 + 96);
  *(v33 + 121) = *(a1 + 105);
  v35 = *(a1 + 16);
  v33[1] = *a1;
  v33[2] = v35;
  v36 = *(a1 + 48);
  v33[3] = *(a1 + 32);
  v33[4] = v36;
  sub_1001C0AC8(a1, &v59);
  sub_1001C1CEC();
  v37 = v53;
  View.onChange<A>(of:initial:_:)();

  sub_10000F500(v31, &qword_100267AD0, &qword_1001E24F8);
  v38 = swift_allocObject();
  v39 = *(a1 + 80);
  v38[5] = *(a1 + 64);
  v38[6] = v39;
  v38[7] = *(a1 + 96);
  *(v38 + 121) = *(a1 + 105);
  v40 = *(a1 + 16);
  v38[1] = *a1;
  v38[2] = v40;
  v41 = *(a1 + 48);
  v38[3] = *(a1 + 32);
  v38[4] = v41;
  v42 = v55;
  (*(v54 + 32))(v55, v37, v57);
  v43 = (v42 + *(v56 + 36));
  *v43 = sub_1001C1F9C;
  v43[1] = v38;
  v43[2] = 0;
  v43[3] = 0;
  sub_1001C0AC8(a1, &v59);
  sub_1001C2000();
  View.hoverEffectDisabled(_:)();
  return sub_10000F500(v42, &qword_100267AE0, &qword_1001E2508);
}

uint64_t sub_1001B1E78(uint64_t a1)
{
  v11 = *(a1 + 80);
  v2 = *(a1 + 96);
  v13 = v11;
  v12 = v2;
  v9 = *(a1 + 80);
  v10 = v2;
  sub_10004CC28(&v13, &v7);
  sub_1000081F8(&v12, &v7, &qword_100267AB8, &unk_1001E24D8);
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  sub_10009AFF4(*a1, v7, v8);

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  v9 = v11;
  v10 = v2;
  v7 = v3;
  v8 = v5;
  State.wrappedValue.setter();
  sub_1001C1C90(&v13);
  return sub_10000F500(&v12, &qword_100267AB8, &unk_1001E24D8);
}

uint64_t sub_1001B1FB8@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[5];
  v9[4] = v2[4];
  v9[5] = v4;
  v10[0] = v2[6];
  *(v10 + 9) = *(v2 + 105);
  v5 = v2[1];
  v9[0] = *v2;
  v9[1] = v5;
  v6 = v2[3];
  v9[2] = v2[2];
  v9[3] = v6;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = sub_10000341C(&qword_100267A70, &qword_1001E2488);
  return sub_1001B0D44(v9, (a2 + *(v7 + 44)));
}

uint64_t sub_1001B2038(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if (a2 && (!a1 && a2 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
  }

  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v15 = v6;
  v7 = *(v2 + 48);
  *&v12 = v6;
  *(&v12 + 1) = v5;
  v13 = *(v2 + 48);
  v14 = v7;

  sub_100063D8C(&v15, &v10);
  sub_1000081F8(&v14, &v10, &qword_1002654A8, &qword_1001DDEC8);
  sub_10000341C(&qword_100267AB0, &qword_1001E24D0);
  Binding.wrappedValue.getter();
  if (!v11)
  {
    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!v3)
  {

    goto LABEL_17;
  }

  if (v10 != v4 || v11 != v3)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_16;
    }

LABEL_17:
    *&v12 = v6;
    *(&v12 + 1) = v5;
    v13 = *(v2 + 48);
    v10 = v4;
    v11 = v3;
    Binding.wrappedValue.setter();
    goto LABEL_18;
  }

LABEL_16:

LABEL_18:
  sub_100063DE8(&v15);

  sub_10000F500(&v14, &qword_1002654A8, &qword_1001DDEC8);
  v12 = *(v2 + 8);
  LOBYTE(v13) = *(v2 + 24);
  LOBYTE(v10) = 0;
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1001B2224@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for SubmitTriggers();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for RoundedBorderTextFieldStyle();
  v49 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10000341C(&qword_10025CB20, &qword_1001D1E40);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v8 = &v47 - v7;
  v9 = sub_10000341C(&qword_100267ED8, &qword_1001E2870);
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v51 = sub_10000341C(&qword_100267EE0, &qword_1001E2878);
  __chkstk_darwin(v51);
  v55 = &v47 - v12;
  v54 = sub_10000341C(&qword_100267EE8, &qword_1001E2880);
  __chkstk_darwin(v54);
  v57 = &v47 - v13;
  v58 = sub_10000341C(&qword_100267EF0, &qword_1001E2888);
  __chkstk_darwin(v58);
  v61 = &v47 - v14;
  v15 = sub_10000341C(&qword_100267EF8, &qword_1001E2890);
  v63 = *(v15 - 8);
  v64 = v15;
  __chkstk_darwin(v15);
  v62 = &v47 - v16;
  v60 = sub_10000341C(&qword_100267F00, &qword_1001E2898);
  __chkstk_darwin(v60);
  v59 = &v47 - v17;
  if (qword_10025A898 != -1)
  {
    swift_once();
  }

  v69 = *(v1 + 64);
  v70 = *(v1 + 80);

  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.projectedValue.getter();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  RoundedBorderTextFieldStyle.init()();
  v18 = sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40, &protocol conformance descriptor for TextField<A>);
  v19 = sub_1001C0124(&qword_100267F08, &type metadata accessor for RoundedBorderTextFieldStyle, &protocol conformance descriptor for RoundedBorderTextFieldStyle);
  v20 = v50;
  v21 = v56;
  View.textFieldStyle<A>(_:)();
  (*(v49 + 8))(v6, v21);
  (*(v48 + 8))(v8, v20);
  v72 = *(v1 + 88);
  LOBYTE(v73) = *(v1 + 104);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  *&v72 = v20;
  *(&v72 + 1) = v21;
  *&v73 = v18;
  *(&v73 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v22 = v55;
  v23 = v53;
  View.focused(_:)();

  (*(v52 + 8))(v11, v23);
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)(v71);
  v24 = (v22 + *(v51 + 36));
  v25 = v71[1];
  *v24 = v71[0];
  v24[1] = v25;
  v24[2] = v71[2];
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = v57;
  sub_10002A894(v22, v57, &qword_100267EE0, &qword_1001E2878);
  v27 = (v26 + *(v54 + 36));
  v28 = v77;
  v27[4] = v76;
  v27[5] = v28;
  v27[6] = v78;
  v29 = v73;
  *v27 = v72;
  v27[1] = v29;
  v30 = v75;
  v27[2] = v74;
  v27[3] = v30;
  KeyPath = swift_getKeyPath();
  v32 = v61;
  sub_10002A894(v26, v61, &qword_100267EE8, &qword_1001E2880);
  v33 = v32 + *(v58 + 36);
  *v33 = KeyPath;
  *(v33 + 8) = 2;
  v34 = swift_allocObject();
  v35 = v2[5];
  v34[5] = v2[4];
  v34[6] = v35;
  *(v34 + 105) = *(v2 + 89);
  v36 = v2[1];
  v34[1] = *v2;
  v34[2] = v36;
  v37 = v2[3];
  v34[3] = v2[2];
  v34[4] = v37;
  sub_1001C36A8(v2, &v69);
  v38 = v65;
  static SubmitTriggers.text.getter();
  sub_1001C36E0();
  v39 = v62;
  View.onSubmit(of:_:)();

  (*(v66 + 8))(v38, v67);
  sub_10000F500(v32, &qword_100267EF0, &qword_1001E2888);
  v40 = swift_allocObject();
  v41 = v2[5];
  v40[5] = v2[4];
  v40[6] = v41;
  *(v40 + 105) = *(v2 + 89);
  v42 = v2[1];
  v40[1] = *v2;
  v40[2] = v42;
  v43 = v2[3];
  v40[3] = v2[2];
  v40[4] = v43;
  v44 = v59;
  (*(v63 + 32))(v59, v39, v64);
  v45 = (v44 + *(v60 + 36));
  *v45 = sub_1001C39AC;
  v45[1] = v40;
  v45[2] = 0;
  v45[3] = 0;
  sub_10002A894(v44, v68, &qword_100267F00, &qword_1001E2898);
  return sub_1001C36A8(v2, &v69);
}

uint64_t sub_1001B2B24(uint64_t a1)
{
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  sub_1001B2038(v2, v3);
}

uint64_t sub_1001B2B9C(_OWORD *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  v10 = a1[5];
  v9[5] = a1[4];
  v9[6] = v10;
  *(v9 + 105) = *(a1 + 89);
  v11 = a1[1];
  v9[1] = *a1;
  v9[2] = v11;
  v12 = a1[3];
  v9[3] = a1[2];
  v9[4] = v12;
  aBlock[4] = sub_1001C3A24;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001256BC;
  aBlock[3] = &unk_100253308;
  v13 = _Block_copy(aBlock);
  sub_1001C36A8(a1, &v18);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1001C0124(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
  sub_100007120(&qword_100262470, &unk_10025D5E0, &qword_1001DAE20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

double sub_1001B2F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v6 = *(v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

  if (!v6)
  {
    goto LABEL_7;
  }

  if (v7 == a1 && v6 == a2)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
LABEL_7:
      Bindable.wrappedValue.getter();

      sub_10019BEEC(a1, a2);

      Bindable.wrappedValue.getter();
      sub_10019C714(a3, 0);
LABEL_14:

      return result;
    }
  }

  Bindable.wrappedValue.getter();
  v10 = (v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  if (*(v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v10 = 0;
    v10[1] = 0;
  }

  Bindable.wrappedValue.getter();
  v12 = v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex;
  if (*(v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8))
  {
    *v12 = 0;
    *(v12 + 8) = 1;
    goto LABEL_14;
  }

  v14 = swift_getKeyPath();
  __chkstk_darwin(v14);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1001B323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_1002676E8, &qword_1001E1E18);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = static VerticalAlignment.center.getter();
  v29 = v10;
  LOBYTE(v31) = 1;
  sub_1001BDD40(&v36);
  v11 = v36;
  v28 = v36;
  v25 = v37;
  v24 = v38;
  v12 = v39;
  v13 = v40;
  v27 = v40;
  v14 = v41;
  LOBYTE(v36) = v38;
  v30 = v41;
  v15 = v31;
  v26 = v31;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = sub_10000341C(&qword_1002676F0, &qword_1001E1E20);
  sub_1001B34A8(a1, &v9[*(v16 + 44)]);
  sub_1000081F8(v9, v7, &qword_1002676E8, &qword_1001E1E18);
  v31 = v10;
  LOBYTE(v32) = v15;
  *(&v32 + 1) = v11;
  v17 = v25;
  *&v33 = v25;
  v18 = v24;
  BYTE8(v33) = v24;
  *&v34 = v12;
  *(&v34 + 1) = v13;
  v35 = v14;
  *(a2 + 64) = v14;
  v19 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v19;
  v20 = v32;
  *a2 = v31;
  *(a2 + 16) = v20;
  v21 = sub_10000341C(&qword_1002676F8, &qword_1001E1E28);
  sub_1000081F8(v7, a2 + *(v21 + 48), &qword_1002676E8, &qword_1001E1E18);
  sub_1000081F8(&v31, &v36, &qword_100267700, &qword_1001E1E30);
  sub_10000F500(v9, &qword_1002676E8, &qword_1001E1E18);
  sub_10000F500(v7, &qword_1002676E8, &qword_1001E1E18);
  v36 = v29;
  v37 = 0;
  v38 = v26;
  v39 = v28;
  v40 = v17;
  v41 = v18;
  v42 = v12;
  v43 = v27;
  v44 = v14;
  return sub_10000F500(&v36, &qword_100267700, &qword_1001E1E30);
}

void sub_1001B34A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v117 = sub_10000341C(&qword_100267708, &qword_1001E1E38);
  __chkstk_darwin(v117);
  v4 = v88 - v3;
  v5 = sub_10000341C(&qword_100267710, &qword_1001E1E40);
  v110 = *(v5 - 8);
  __chkstk_darwin(v5);
  v103 = v88 - v6;
  v100 = type metadata accessor for AutomaticHoverEffect();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10000341C(&qword_100267718, &qword_1001E1E48);
  v102 = *(v105 - 8);
  v8 = __chkstk_darwin(v105);
  v101 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = v88 - v10;
  v104 = type metadata accessor for Divider();
  v95 = *(v104 - 8);
  __chkstk_darwin(v104);
  v94 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10000341C(&qword_100267720, &qword_1001E1E50);
  v12 = __chkstk_darwin(v93);
  v96 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v92 = v88 - v15;
  __chkstk_darwin(v14);
  v112 = v88 - v16;
  v17 = sub_10000341C(&qword_100267728, &qword_1001E1E58);
  v18 = __chkstk_darwin(v17 - 8);
  v107 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v115 = v88 - v20;
  v21 = type metadata accessor for MultichoiceRow(0);
  v22 = v21 - 8;
  v111 = *(v21 - 8);
  __chkstk_darwin(v21);
  v113 = v23;
  v114 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10000341C(&qword_100267730, &qword_1001E1E60);
  v108 = *(v109 - 8);
  v24 = __chkstk_darwin(v109);
  v106 = v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v119 = v88 - v26;
  v116 = sub_10000341C(&qword_100267738, qword_1001E1E68);
  __chkstk_darwin(v116);
  v28 = (v88 - v27);
  v29 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  __chkstk_darwin(v29);
  v31 = v88 - v30;
  v32 = a1;
  v33 = (a1 + *(v22 + 28));
  v34 = *v33;
  v35 = *(v33 + 1);
  LOBYTE(v123) = *v33;
  *(&v123 + 1) = v35;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v121 == 1)
  {
    LOBYTE(v121) = v34;
    v122 = v35;
    State.projectedValue.getter();
    v36 = v123;
    v37 = v124;
    Bindable.projectedValue.getter();
    sub_1001C0660(v36, *(&v36 + 1), v37, v31, &v123);
    v38 = v127[1];
    v28[4] = v127[0];
    v28[5] = v38;
    v28[6] = *v128;
    *(v28 + 105) = *&v128[9];
    v39 = v124;
    *v28 = v123;
    v28[1] = v39;
    v40 = v126;
    v28[2] = v125;
    v28[3] = v40;
    swift_storeEnumTagMultiPayload();
    sub_1001C0408();
    sub_100007120(&qword_100267760, &qword_100267708, &qword_1001E1E38, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    return;
  }

  v89 = v28;
  v90 = v5;
  v91 = v4;
  v88[2] = v29;
  Bindable.wrappedValue.getter();
  v41 = *(v123 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v42 = [v41 answerOptions];

  if (v42)
  {
    v43 = [v42 array];

    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = *(v44 + 16);
    *&v123 = 0;
    *(&v123 + 1) = v45;
    swift_getKeyPath();
    v46 = v114;
    sub_1001C0308(v32, v114, type metadata accessor for MultichoiceRow);
    v47 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v88[1] = *(v111 + 80);
    v48 = swift_allocObject();
    v111 = v47;
    sub_1001C0374(v46, v48 + v47, type metadata accessor for MultichoiceRow);
    sub_10000341C(&qword_10025E290, &qword_1001D3B28);
    sub_10000341C(&qword_100267740, &qword_1001E1EA0);
    sub_10006FFA8();
    sub_100007120(&qword_100267748, &qword_100267740, &qword_1001E1EA0, &protocol conformance descriptor for TupleView<A>);
    ForEach<>.init(_:id:content:)();
    *(&v124 + 1) = &type metadata for WritingTools;
    *&v125 = sub_10002AC88();
    LOBYTE(v123) = 11;
    LOBYTE(v46) = isFeatureEnabled(_:)();
    sub_10000F4B4(&v123);
    if ((v46 & 1) == 0)
    {

      v51 = 1;
      v52 = v90;
      v53 = v115;
LABEL_27:
      v79 = v89;
      (*(v110 + 56))(v53, v51, 1, v52);
      v80 = v108;
      v81 = *(v108 + 16);
      v82 = v106;
      v83 = v109;
      v81(v106, v119, v109);
      v84 = v107;
      sub_1000081F8(v53, v107, &qword_100267728, &qword_1001E1E58);
      v85 = v91;
      v81(v91, v82, v83);
      v86 = sub_10000341C(&qword_100267750, &qword_1001E1EA8);
      sub_1000081F8(v84, v85 + *(v86 + 48), &qword_100267728, &qword_1001E1E58);
      sub_10000F500(v84, &qword_100267728, &qword_1001E1E58);
      v87 = *(v80 + 8);
      v87(v82, v83);
      sub_1000081F8(v85, v79, &qword_100267708, &qword_1001E1E38);
      swift_storeEnumTagMultiPayload();
      sub_1001C0408();
      sub_100007120(&qword_100267760, &qword_100267708, &qword_1001E1E38, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v85, &qword_100267708, &qword_1001E1E38);
      sub_10000F500(v115, &qword_100267728, &qword_1001E1E58);
      v87(v119, v83);
      return;
    }

    if (!v45)
    {

      goto LABEL_11;
    }

    if (v45 <= *(v44 + 16))
    {
      sub_10002B0D0(v44 + 32 * v45, &v123);

      if (swift_dynamicCast())
      {
        v49 = v121;
        v50 = v122;
LABEL_12:
        Bindable.wrappedValue.getter();
        v54 = v123;
        swift_getKeyPath();
        *&v123 = v54;
        sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v56 = *(v54 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
        v55 = *(v54 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

        if (v50)
        {
          v57 = v95;
          if (v55)
          {
            if (v49 == v56 && v50 == v55)
            {

              v58 = 0.0;
            }

            else
            {
              v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v60)
              {
                v58 = 0.0;
              }

              else
              {
                v58 = 1.0;
              }
            }
          }

          else
          {

            v58 = 1.0;
          }

          v61 = v105;
          v59 = v104;
        }

        else
        {
          v59 = v104;
          v57 = v95;
          if (v55)
          {

            v58 = 1.0;
          }

          else
          {
            v58 = 0.0;
          }

          v61 = v105;
        }

        v62 = v94;
        Divider.init()();
        v63 = v92;
        (*(v57 + 32))(v92, v62, v59);
        *(v63 + *(v93 + 36)) = v58;
        sub_10002A894(v63, v112, &qword_100267720, &qword_1001E1E50);
        v64 = static Color.gray.getter();
        *(&v124 + 1) = &type metadata for MultichoiceRow.MoreWidgetAppearance;
        *&v125 = &off_100252F50;
        v65 = swift_allocObject();
        *&v123 = v65;
        *(v65 + 16) = 0x73697370696C6C65;
        *(v65 + 24) = 0xEF656C637269632ELL;
        *(v65 + 32) = v64;
        *(v65 + 40) = 1;
        v66 = v114;
        sub_1001C0308(v32, v114, type metadata accessor for MultichoiceRow);
        v67 = v111;
        v68 = swift_allocObject();
        sub_1001C0374(v66, v68 + v67, type metadata accessor for MultichoiceRow);
        v120 = 0;
        State.init(wrappedValue:)();
        BYTE8(v126) = v121;
        *&v127[0] = v122;
        *(&v125 + 1) = sub_1001C0554;
        *&v126 = v68;
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)(v127 + 1);
        v69 = v97;
        static CustomHoverEffect<>.automatic.getter();
        sub_10000341C(&qword_100267768, &qword_1001E1EB0);
        sub_1001C0580();
        sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
        v70 = v99;
        v71 = v100;
        View.hoverEffect<A>(_:isEnabled:)();
        (*(v98 + 8))(v69, v71);
        sub_10000F500(&v123, &qword_100267768, &qword_1001E1EB0);
        v72 = v96;
        sub_1000081F8(v112, v96, &qword_100267720, &qword_1001E1E50);
        v73 = v102;
        v74 = *(v102 + 16);
        v75 = v101;
        v74(v101, v70, v61);
        v76 = v103;
        sub_1000081F8(v72, v103, &qword_100267720, &qword_1001E1E50);
        v77 = sub_10000341C(&qword_100267780, &qword_1001E1EB8);
        v74((v76 + *(v77 + 48)), v75, v61);
        v78 = *(v73 + 8);
        v78(v70, v61);
        sub_10000F500(v112, &qword_100267720, &qword_1001E1E50);
        v78(v75, v61);
        sub_10000F500(v72, &qword_100267720, &qword_1001E1E50);
        v53 = v115;
        sub_10002A894(v76, v115, &qword_100267710, &qword_1001E1E40);
        v51 = 0;
        v52 = v90;
        goto LABEL_27;
      }

LABEL_11:
      v49 = 0;
      v50 = 0;
      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1001B45B4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v109 = type metadata accessor for UnevenRoundedRectangle();
  __chkstk_darwin(v109);
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipleChoiceButtonStyle(0);
  __chkstk_darwin(v6);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for MultichoiceRow(0);
  v100 = *(v90 - 8);
  __chkstk_darwin(v90);
  v101 = v9;
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v105 = *(v97 - 8);
  __chkstk_darwin(v97);
  v104 = &v84 - v11;
  v108 = sub_10000341C(&qword_100267788, &unk_1001E1EC0);
  v107 = *(v108 - 8);
  v12 = __chkstk_darwin(v108);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v84 - v15;
  v88 = type metadata accessor for Divider();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  __chkstk_darwin(v86);
  v89 = &v84 - v18;
  v99 = sub_10000341C(&qword_100267790, &qword_1001E1ED0);
  v98 = *(v99 - 8);
  v19 = __chkstk_darwin(v99);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v85 = &v84 - v22;
  v23 = sub_10000341C(&qword_100267798, &qword_1001E1ED8);
  v24 = __chkstk_darwin(v23 - 8);
  v103 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v84 - v26;
  v28 = *a1;
  v112 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v113 = a2;
  Bindable.wrappedValue.getter();
  v29 = *(v116 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v30 = [v29 answerOptions];

  if (!v30)
  {
    goto LABEL_30;
  }

  v92 = v10;
  v94 = v14;
  v31 = [v30 objectAtIndexedSubscript:v28];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v32 = v115;
  v91 = v114;
  v110 = v28;
  v95 = v8;
  v111 = v27;
  v93 = v6;
  if (v28 >= 1)
  {
    Divider.init()();
    sub_10000341C(&unk_100263510, &qword_1001DAEA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9E0;
    v34 = static Edge.Set.top.getter();
    *(inited + 32) = v34;
    v35 = static Edge.Set.bottom.getter();
    *(inited + 33) = v35;
    v36 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v34)
    {
      v36 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v35)
    {
      v36 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v89;
    (*(v87 + 32))(v89, v17, v88);
    v46 = v45 + *(v86 + 36);
    *v46 = v36;
    *(v46 + 8) = v38;
    *(v46 + 16) = v40;
    *(v46 + 24) = v42;
    *(v46 + 32) = v44;
    *(v46 + 40) = 0;
    Bindable.wrappedValue.getter();
    v47 = v116;
    swift_getKeyPath();
    v116 = v47;
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v48 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex);
    v49 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8);

    v27 = v111;
    if (v49)
    {
LABEL_8:
      v50 = 1.0;
LABEL_13:
      sub_10002A894(v45, v21, &qword_10025B888, &qword_1001D0300);
      v52 = v99;
      *&v21[*(v99 + 36)] = v50;
      v53 = v21;
      v54 = v85;
      sub_10002A894(v53, v85, &qword_100267790, &qword_1001E1ED0);
      sub_10002A894(v54, v27, &qword_100267790, &qword_1001E1ED0);
      v51 = 0;
      goto LABEL_14;
    }

    v50 = 0.0;
    if (v48 == v110)
    {
      goto LABEL_13;
    }

    if (!__OFADD__(v48, 1))
    {
      if (v48 + 1 == v110)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v51 = 1;
  v52 = v99;
LABEL_14:
  (*(v98 + 56))(v27, v51, 1, v52);
  v55 = v91;
  v116 = v91;
  v117 = v32;
  v56 = v92;
  sub_1001C0308(v113, v92, type metadata accessor for MultichoiceRow);
  v57 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v58 = (v101 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  sub_1001C0374(v56, v59 + v57, type metadata accessor for MultichoiceRow);
  v60 = (v59 + v58);
  *v60 = v55;
  v60[1] = v32;
  v61 = v110;
  *(v59 + ((v58 + 23) & 0xFFFFFFFFFFFFFFF8)) = v110;
  v62 = v61;
  sub_10002AC34();
  swift_bridgeObjectRetain_n();
  v63 = v104;
  Button<>.init<A>(_:action:)();
  Bindable.wrappedValue.getter();
  v64 = v116;
  swift_getKeyPath();
  v116 = v64;
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = *(v64 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v66 = *(v64 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

  if (v66)
  {
    v67 = v97;
    if (v65 == v55 && v66 == v32)
    {
      v68 = 1;
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v69 = v95;
  }

  else
  {
    v68 = 0;
    v67 = v97;
    v69 = v95;
  }

  v70 = v93;

  if (v62)
  {
    v71 = v96;
    if (qword_10025A900 != -1)
    {
      swift_once();
    }

    v72 = qword_100277470;
  }

  else
  {
    v71 = v96;
    if (qword_10025A8D8 != -1)
    {
      swift_once();
    }

    v72 = qword_1002773F8;
  }

  v73 = sub_10000F34C(v109, v72);
  sub_1001C0308(v73, v71, &type metadata accessor for UnevenRoundedRectangle);
  *v69 = 0x4014000000000000;
  *(v69 + 8) = v68 & 1;
  sub_1001C0374(v71, v69 + *(v70 + 24), &type metadata accessor for UnevenRoundedRectangle);
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  sub_1001C0124(&qword_1002677A0, type metadata accessor for MultipleChoiceButtonStyle, &unk_1001E23A0);
  v74 = v106;
  View.buttonStyle<A>(_:)();
  sub_1001C0D68(v69, type metadata accessor for MultipleChoiceButtonStyle);
  (*(v105 + 8))(v63, v67);
  v75 = v27;
  v76 = v103;
  sub_1000081F8(v75, v103, &qword_100267798, &qword_1001E1ED8);
  v77 = v107;
  v78 = *(v107 + 16);
  v79 = v94;
  v80 = v108;
  v78(v94, v74, v108);
  v81 = v102;
  sub_1000081F8(v76, v102, &qword_100267798, &qword_1001E1ED8);
  v82 = sub_10000341C(&qword_1002677A8, &qword_1001E1EE0);
  v78((v81 + *(v82 + 48)), v79, v80);
  v83 = *(v77 + 8);
  v83(v74, v80);
  sub_10000F500(v111, &qword_100267798, &qword_1001E1ED8);
  v83(v79, v80);
  sub_10000F500(v76, &qword_100267798, &qword_1001E1ED8);
}

uint64_t sub_1001B52E4(uint64_t a1)
{
  type metadata accessor for MultichoiceRow(0);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  return State.wrappedValue.setter();
}

uint64_t sub_1001B5358@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10000341C(&qword_1002676E0, &qword_1001E1E10);
  return sub_1001B323C(v2, a2 + *(v4 + 44));
}

uint64_t sub_1001B53AC@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v93 = type metadata accessor for AutomaticHoverEffect();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for UnevenRoundedRectangle();
  __chkstk_darwin(v2 - 8);
  v89 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10000341C(&qword_1002634E0, &qword_1001DAE70);
  __chkstk_darwin(v87);
  v88 = &v76 - v4;
  v5 = type metadata accessor for ButtonStyleConfiguration.Label();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_1002634F0, &qword_1001DAE80);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v76 - v11;
  v13 = sub_10000341C(&qword_1002634F8, &qword_1001DAE88);
  __chkstk_darwin(v13);
  v15 = &v76 - v14;
  v77 = sub_10000341C(&qword_100267BA0, &qword_1001E25A0);
  __chkstk_darwin(v77);
  v17 = &v76 - v16;
  v83 = sub_10000341C(&qword_100267BA8, &qword_1001E25A8);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v76 - v18;
  v78 = sub_10000341C(&qword_100267BB0, &qword_1001E25B0);
  __chkstk_darwin(v78);
  v81 = &v76 - v19;
  v80 = sub_10000341C(&qword_100267BB8, &qword_1001E25B8);
  __chkstk_darwin(v80);
  v84 = &v76 - v20;
  v86 = sub_10000341C(&qword_100267BC0, &unk_1001E25C0);
  __chkstk_darwin(v86);
  v22 = &v76 - v21;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v6 + 32))(v12, v8, v5);
  v23 = &v12[*(v10 + 44)];
  v24 = v99;
  *(v23 + 4) = v98;
  *(v23 + 5) = v24;
  *(v23 + 6) = v100;
  v25 = v95;
  *v23 = v94;
  *(v23 + 1) = v25;
  v26 = v97;
  *(v23 + 2) = v96;
  *(v23 + 3) = v26;
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  inited = swift_initStackObject();
  v76 = xmmword_1001CF9E0;
  *(inited + 16) = xmmword_1001CF9E0;
  LOBYTE(v6) = static Edge.Set.leading.getter();
  *(inited + 32) = v6;
  v28 = static Edge.Set.trailing.getter();
  *(inited + 33) = v28;
  v29 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v6)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v28)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  v30 = v85;
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10002A894(v12, v15, &qword_1002634F0, &qword_1001DAE80);
  v39 = &v15[*(v13 + 36)];
  *v39 = v29;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = swift_initStackObject();
  *(v40 + 16) = v76;
  v41 = static Edge.Set.top.getter();
  *(v40 + 32) = v41;
  v42 = static Edge.Set.bottom.getter();
  *(v40 + 33) = v42;
  v43 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v41)
  {
    v43 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v42)
  {
    v43 = Edge.Set.init(rawValue:)();
  }

  v44 = v89;
  EdgeInsets.init(_all:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_10002A894(v15, v17, &qword_1002634F8, &qword_1001DAE88);
  v53 = &v17[*(v77 + 36)];
  *v53 = v43;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  v54 = *(v30 + 8);
  if (v54 == 1)
  {
    static Font.Weight.medium.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  v55 = v79;
  sub_1001C2314();
  View.fontWeight(_:)();
  sub_10000F500(v17, &qword_100267BA0, &qword_1001E25A0);
  v56 = type metadata accessor for MultipleChoiceButtonStyle(0);
  sub_1001C0308(v30 + *(v56 + 24), v44, &type metadata accessor for UnevenRoundedRectangle);
  if (qword_10025A8B0 != -1)
  {
    swift_once();
  }

  v57 = byte_1002773A8;
  v58 = v81;
  if (byte_1002773A8 == 1)
  {
    static Color.secondary.getter();
    if (!v54)
    {
      goto LABEL_20;
    }
  }

  else
  {
    static Color.gray.getter();
    if (!v54)
    {
      goto LABEL_20;
    }
  }

  if (qword_10025A8C0 != -1)
  {
    swift_once();
  }

LABEL_20:
  v59 = Color.opacity(_:)();

  v60 = v88;
  sub_1001C0374(v44, v88, &type metadata accessor for UnevenRoundedRectangle);
  v61 = v87;
  *(v60 + *(v87 + 52)) = v59;
  *(v60 + *(v61 + 56)) = 256;
  v62 = static Alignment.center.getter();
  v64 = v63;
  v65 = v58 + *(v78 + 36);
  sub_10002A894(v60, v65, &qword_1002634E0, &qword_1001DAE70);
  v66 = (v65 + *(sub_10000341C(&qword_100267B48, &qword_1001E2550) + 36));
  *v66 = v62;
  v66[1] = v64;
  (*(v82 + 32))(v58, v55, v83);
  if ((v54 & v57) == 1)
  {
    v67 = static Color.black.getter();
  }

  else
  {
    v67 = 0;
  }

  KeyPath = swift_getKeyPath();
  v69 = v84;
  sub_10002A894(v58, v84, &qword_100267BB0, &qword_1001E25B0);
  v70 = (v69 + *(v80 + 36));
  *v70 = KeyPath;
  v70[1] = v67;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v101);
  sub_10002A894(v69, v22, &qword_100267BB8, &qword_1001E25B8);
  v71 = &v22[*(v86 + 36)];
  v72 = v101[1];
  *v71 = v101[0];
  *(v71 + 1) = v72;
  *(v71 + 2) = v101[2];
  v73 = v90;
  static CustomHoverEffect<>.automatic.getter();
  sub_1001C23A0();
  sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v74 = v93;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v92 + 8))(v73, v74);
  return sub_10000F500(v22, &qword_100267BC0, &unk_1001E25C0);
}

void sub_1001B5E9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x6472616F6279656BLL;
  a2[1] = 0xE800000000000000;
  a2[2] = static Color.gray.getter();
  v4 = type metadata accessor for PickerRowCore(0);
  v5 = a2 + *(v4 + 28);
  State.init(wrappedValue:)();
  *v5 = v8;
  *(v5 + 1) = v9;
  v6 = (a2 + *(v4 + 32));
  State.init(wrappedValue:)();
  *v6 = v8;
  v6[1] = v9;
  type metadata accessor for QuestionnaireEntry(0);
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);

  Bindable<A>.init(wrappedValue:)();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex);
  LOBYTE(v4) = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8);

  if ((v4 & 1) == 0)
  {

    *v6 = v7;
    v6[1] = 0;
  }
}

uint64_t sub_1001B602C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10000341C(&qword_1002677E0, &qword_1001E1F30);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v29 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v23[-v7];
  v30 = static VerticalAlignment.center.getter();
  LOBYTE(v32) = 1;
  sub_1001BDD40(&v37);
  v9 = v37;
  v25 = v37;
  v28 = v38;
  v10 = v39;
  v11 = v41;
  v27 = v40;
  v12 = v42;
  LOBYTE(v37) = v39;
  v26 = v39;
  LOBYTE(v31[0]) = v42;
  v13 = v32;
  v24 = v32;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_10000341C(&qword_1002677E8, &qword_1001E1F38);
  sub_1001B630C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v31);
  v14 = &v8[*(v4 + 44)];
  v15 = v31[1];
  *v14 = v31[0];
  v14[1] = v15;
  v14[2] = v31[2];
  v16 = v29;
  sub_1000081F8(v8, v29, &qword_1002677E0, &qword_1001E1F30);
  v32 = v30;
  LOBYTE(v33) = v13;
  v17 = v28;
  *(&v33 + 1) = v9;
  *&v34 = v28;
  BYTE8(v34) = v10;
  v18 = v27;
  *&v35 = v27;
  *(&v35 + 1) = v11;
  v36 = v12;
  *(a2 + 64) = v12;
  v19 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v19;
  v20 = v33;
  *a2 = v32;
  *(a2 + 16) = v20;
  v21 = sub_10000341C(&qword_1002677F0, &qword_1001E1F40);
  sub_1000081F8(v16, a2 + *(v21 + 48), &qword_1002677E0, &qword_1001E1F30);
  sub_1000081F8(&v32, &v37, &qword_100267700, &qword_1001E1E30);
  sub_10000F500(v8, &qword_1002677E0, &qword_1001E1F30);
  sub_10000F500(v16, &qword_1002677E0, &qword_1001E1F30);
  v37 = v30;
  v38 = 0;
  v39 = v24;
  v40 = v25;
  v41 = v17;
  v42 = v26;
  v43 = v18;
  v44 = v11;
  v45 = v12;
  return sub_10000F500(&v37, &qword_100267700, &qword_1001E1E30);
}

uint64_t sub_1001B630C()
{
  v0 = type metadata accessor for PickerRowCore(0);
  __chkstk_darwin(v0);
  v2 = (&v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_10000341C(&qword_1002677F8, &qword_1001E1F48);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = type metadata accessor for PickerRowCoreInline(0);
  __chkstk_darwin(v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10025A8B0 != -1)
  {
    swift_once();
  }

  if (byte_1002773A8 == 1)
  {
    sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    Bindable.wrappedValue.getter();
    *v8 = 0x4049000000000000;
    type metadata accessor for QuestionnaireEntry(0);
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
    Bindable<A>.init(wrappedValue:)();
    v9 = v8 + v6[6];
    LOBYTE(v26) = 0;
    State.init(wrappedValue:)();
    v10 = *(&v28 + 1);
    *v9 = v28;
    *(v9 + 1) = v10;
    v11 = v8 + v6[7];
    LOBYTE(v26) = 0;
    State.init(wrappedValue:)();
    v12 = *(&v28 + 1);
    *v11 = v28;
    *(v11 + 1) = v12;
    v13 = v8 + v6[8];
    LOBYTE(v26) = 0;
    State.init(wrappedValue:)();
    v14 = *(&v28 + 1);
    *v13 = v28;
    *(v13 + 1) = v14;
    v15 = v8 + v6[9];
    v26 = 0;
    v27 = 0xE000000000000000;
    State.init(wrappedValue:)();
    v16 = v29;
    *v15 = v28;
    *(v15 + 2) = v16;
    v17 = v8 + v6[10];
    *v17 = FocusState.init<>()() & 1;
    *(v17 + 1) = v18;
    v17[16] = v19 & 1;
    v20 = v8 + v6[11];
    LOBYTE(v26) = 1;
    State.init(wrappedValue:)();
    v21 = *(&v28 + 1);
    *v20 = v28;
    *(v20 + 1) = v21;
    *(v8 + v6[12]) = 0x3FD3333333333333;
    sub_1001C0308(v8, v5, type metadata accessor for PickerRowCoreInline);
    swift_storeEnumTagMultiPayload();
    sub_1001C0124(&qword_100267800, type metadata accessor for PickerRowCoreInline, &unk_1001E2350);
    sub_1001C0124(&qword_100267808, type metadata accessor for PickerRowCore, &unk_1001E2300);
    _ConditionalContent<>.init(storage:)();
    v22 = type metadata accessor for PickerRowCoreInline;
    v23 = v8;
  }

  else
  {
    sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    Bindable.wrappedValue.getter();
    sub_1001B5E9C(v28, v2);
    sub_1001C0308(v2, v5, type metadata accessor for PickerRowCore);
    swift_storeEnumTagMultiPayload();
    sub_1001C0124(&qword_100267800, type metadata accessor for PickerRowCoreInline, &unk_1001E2350);
    sub_1001C0124(&qword_100267808, type metadata accessor for PickerRowCore, &unk_1001E2300);
    _ConditionalContent<>.init(storage:)();
    v22 = type metadata accessor for PickerRowCore;
    v23 = v2;
  }

  return sub_1001C0D68(v23, v22);
}

uint64_t sub_1001B67E4()
{
  v0 = sub_10000341C(&qword_1002677B0, &qword_1001E1F10);
  __chkstk_darwin(v0);
  v2 = &v8 - v1;
  v3 = sub_10000341C(&qword_1002677B8, &qword_1001E1F18);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_10000341C(&qword_1002677C0, &qword_1001E1F20);
  sub_1001B602C(&v5[*(v6 + 44)]);
  sub_1000081F8(v5, v2, &qword_1002677B8, &qword_1001E1F18);
  swift_storeEnumTagMultiPayload();
  sub_10000341C(&qword_1002677C8, &qword_1001E1F28);
  sub_100007120(&qword_1002677D0, &qword_1002677C8, &qword_1001E1F28, &protocol conformance descriptor for HStack<A>);
  sub_100007120(&qword_1002677D8, &qword_1002677B8, &qword_1001E1F18, &protocol conformance descriptor for VStack<A>);
  _ConditionalContent<>.init(storage:)();
  return sub_10000F500(v5, &qword_1002677B8, &qword_1001E1F18);
}

uint64_t sub_1001B69D4()
{
  v1 = v0;
  v2 = type metadata accessor for PickerRowCore(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_10000341C(&qword_100267DB8, &qword_1001E2768);
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_10000341C(&qword_100267DC0, &qword_1001E2770);
  sub_1001B6C4C(v1, &v8[*(v9 + 44)]);
  v10 = v1 + *(v3 + 36);
  v11 = *v10;
  v12 = *(v10 + 8);
  v17 = v11;
  v18 = v12;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v17 = v16[15];
  sub_1001C0308(v1, &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PickerRowCore);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1001C0374(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for PickerRowCore);
  sub_100007120(&qword_100267DC8, &qword_100267DB8, &qword_1001E2768, &protocol conformance descriptor for HStack<A>);
  View.onChange<A>(of:initial:_:)();

  return sub_10000F500(v8, &qword_100267DB8, &qword_1001E2768);
}

uint64_t sub_1001B6C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_10000341C(&qword_100267DD8, &qword_1001E2780);
  __chkstk_darwin(v23);
  v4 = &v21 - v3;
  v22 = sub_10000341C(&qword_100267DE0, &qword_1001E2788);
  __chkstk_darwin(v22);
  v6 = (&v21 - v5);
  v7 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = *(type metadata accessor for PickerRowCore(0) + 28);
  v21 = a1;
  v11 = (a1 + v10);
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v34) = *v11;
  *(&v34 + 1) = v13;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (LOBYTE(v32[0]) == 1)
  {
    LOBYTE(v32[0]) = v12;
    *(&v32[0] + 1) = v13;
    State.projectedValue.getter();
    v14 = v34;
    v15 = v35;
    Bindable.projectedValue.getter();
    sub_1001C0660(v14, *(&v14 + 1), v15, v9, v32);
    sub_1001C32E0(v32);
    v29 = v32[4];
    v30 = v32[5];
    v31[0] = v33[0];
    *(v31 + 10) = *(v33 + 10);
    v25 = v32[0];
    v26 = v32[1];
    v27 = v32[2];
    v28 = v32[3];
    sub_1001C328C();
    sub_1001C0408();
    _ConditionalContent<>.init(storage:)();
    v16 = v39;
    v6[4] = v38;
    v6[5] = v16;
    v6[6] = v40[0];
    *(v6 + 106) = *(v40 + 10);
    v17 = v35;
    *v6 = v34;
    v6[1] = v17;
    v18 = v37;
    v6[2] = v36;
    v6[3] = v18;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_100267DF0, &qword_1001E2798);
    sub_1001C3200();
    sub_100007120(&qword_100267E08, &qword_100267DD8, &qword_1001E2780, &protocol conformance descriptor for VStack<A>);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v20 = sub_10000341C(&qword_100267DE8, &qword_1001E2790);
    sub_1001B7020(v21, &v4[*(v20 + 44)]);
    sub_1000081F8(v4, v6, &qword_100267DD8, &qword_1001E2780);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_100267DF0, &qword_1001E2798);
    sub_1001C3200();
    sub_100007120(&qword_100267E08, &qword_100267DD8, &qword_1001E2780, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v4, &qword_100267DD8, &qword_1001E2780);
  }
}

uint64_t sub_1001B7020@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for PickerRowCore(0);
  v4 = v3 - 8;
  v59 = *(v3 - 8);
  v58 = *(v59 + 64);
  __chkstk_darwin(v3);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10000341C(&qword_100267E10, &qword_1001E27A0);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v45 - v6;
  v7 = sub_10000341C(&qword_100267E18, &qword_1001E27A8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v52 = sub_10000341C(&qword_100267E20, &qword_1001E27B0);
  __chkstk_darwin(v52);
  v12 = &v45 - v11;
  v56 = sub_10000341C(&qword_100267E28, &qword_1001E27B8);
  v55 = *(v56 - 8);
  v13 = __chkstk_darwin(v56);
  v54 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v53 = &v45 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  v16 = *(v4 + 40);
  v45 = a1;
  v17 = (a1 + v16);
  v19 = *v17;
  v18 = v17[1];
  v49 = v19;
  v48 = v18;
  v62 = v19;
  v63 = v18;
  v47 = sub_10000341C(&qword_100267DD0, &qword_1001E2778);
  State.projectedValue.getter();
  v61 = a1;
  sub_10000341C(&qword_100267E30, &qword_1001E27C0);
  sub_100007120(&qword_100267E38, &qword_100267E30, &qword_1001E27C0, &protocol conformance descriptor for TupleView<A>);
  v20 = v46;
  Picker<>.init(_:selection:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v50 + 32))(v10, v20, v51);
  v21 = &v10[*(v8 + 44)];
  v22 = v69;
  *(v21 + 4) = v68;
  *(v21 + 5) = v22;
  *(v21 + 6) = v70;
  v23 = v65;
  *v21 = v64;
  *(v21 + 1) = v23;
  v24 = v67;
  *(v21 + 2) = v66;
  *(v21 + 3) = v24;
  v25 = v45;
  v26 = *(v45 + 16);
  KeyPath = swift_getKeyPath();
  v62 = v26;

  v28 = AnyShapeStyle.init<A>(_:)();
  sub_10002A894(v10, v12, &qword_100267E18, &qword_1001E27A8);
  v29 = &v12[*(v52 + 36)];
  *v29 = KeyPath;
  v29[1] = v28;
  v62 = v49;
  v63 = v48;
  State.wrappedValue.getter();
  v30 = v57;
  sub_1001C0308(v25, v57, type metadata accessor for PickerRowCore);
  v31 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v32 = swift_allocObject();
  sub_1001C0374(v30, v32 + v31, type metadata accessor for PickerRowCore);
  sub_1001C34F0();
  v33 = v53;
  View.onChange<A>(of:initial:_:)();

  sub_10000F500(v12, &qword_100267E20, &qword_1001E27B0);
  v34 = v55;
  v35 = *(v55 + 16);
  v36 = v54;
  v37 = v33;
  v38 = v56;
  v35(v54, v33, v56);
  v39 = v60;
  *v60 = 0;
  *(v39 + 8) = 1;
  v40 = v39;
  v41 = sub_10000341C(&qword_100267E68, &qword_1001E2800);
  v35(&v40[*(v41 + 48)], v36, v38);
  v42 = &v40[*(v41 + 64)];
  *v42 = 0;
  v42[8] = 1;
  v43 = *(v34 + 8);
  v43(v37, v38);
  return (v43)(v36, v38);
}

uint64_t sub_1001B7704@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = sub_10000341C(&qword_100267E70, &qword_1001E2808);
  v4 = __chkstk_darwin(v3 - 8);
  v48 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v40 - v6;
  v8 = sub_10000341C(&qword_100267E78, &qword_1001E2810);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  v10 = __chkstk_darwin(v8);
  v50 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v40 - v12;
  v14 = sub_10000341C(&qword_100267E80, &qword_1001E2818);
  v46 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v49 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v40 - v17;
  v19 = sub_10000341C(&qword_100267E88, &qword_1001E2820);
  v52[0] = &type metadata for Text;
  v52[1] = &type metadata for Int;
  v52[2] = &protocol witness table for Text;
  v53 = &protocol witness table for Int;
  v20 = 1;
  swift_getOpaqueTypeConformance2();
  v47 = v18;
  v40[1] = v19;
  Section<>.init(content:)();
  v51 = a1;
  sub_10000341C(&qword_100267E90, &qword_1001E2828);
  sub_100007120(&qword_100267E98, &qword_100267E90, &qword_1001E2828, &protocol conformance descriptor for TupleView<A>);
  v21 = v13;
  Section<>.init(content:)();
  v53 = &type metadata for WritingTools;
  v54 = sub_10002AC88();
  LOBYTE(v52[0]) = 11;
  LOBYTE(v18) = isFeatureEnabled(_:)();
  sub_10000F4B4(v52);
  if (v18)
  {
    v22 = v49;
    Section<>.init(content:)();
    (*(v46 + 32))(v7, v22, v14);
    v20 = 0;
  }

  v23 = v46;
  v24 = *(v46 + 56);
  v41 = v7;
  v24(v7, v20, 1, v14);
  v25 = *(v23 + 16);
  v26 = v49;
  v25(v49, v47, v14);
  v27 = v44;
  v28 = *(v44 + 16);
  v42 = v21;
  v29 = v21;
  v30 = v43;
  v28(v50, v29, v43);
  sub_1000081F8(v7, v48, &qword_100267E70, &qword_1001E2808);
  v31 = v30;
  v32 = v45;
  v33 = v26;
  v34 = v14;
  v25(v45, v33, v14);
  v35 = sub_10000341C(&qword_100267EA0, &qword_1001E2830);
  v28(&v32[*(v35 + 48)], v50, v31);
  v36 = v48;
  sub_1000081F8(v48, &v32[*(v35 + 64)], &qword_100267E70, &qword_1001E2808);
  sub_10000F500(v41, &qword_100267E70, &qword_1001E2808);
  v37 = *(v27 + 8);
  v37(v42, v31);
  v38 = *(v23 + 8);
  v38(v47, v34);
  sub_10000F500(v36, &qword_100267E70, &qword_1001E2808);
  v37(v50, v31);
  return (v38)(v49, v34);
}

uint64_t sub_1001B7C3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10025A8B8 != -1)
  {
    swift_once();
  }

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = -1;
  *(a1 + 40) = 1;
  return result;
}

void sub_1001B7D14(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v46 = sub_10000341C(&qword_100267E88, &qword_1001E2820);
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = v45 - v3;
  v5 = sub_10000341C(&qword_100267EA8, &qword_1001E2838);
  v6 = __chkstk_darwin(v5 - 8);
  v52 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = v45 - v8;
  v9 = type metadata accessor for PickerRowCore(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v13 = sub_10000341C(&qword_100267EB0, &qword_1001E2840);
  v47 = *(v13 - 8);
  v48 = v13;
  v14 = __chkstk_darwin(v13);
  v49 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v45 - v16;
  v18 = *(v10 + 32);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v45[1] = v18;
  Bindable.wrappedValue.getter();
  v19 = *&v54[OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry];

  v20 = [v19 answerOptions];

  if (v20)
  {
    v21 = [v20 array];

    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = *(v22 + 16);

    v58 = 0;
    v59 = v23;
    swift_getKeyPath();
    sub_1001C0308(a1, v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PickerRowCore);
    v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v25 = swift_allocObject();
    sub_1001C0374(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PickerRowCore);
    sub_10000341C(&qword_10025E290, &qword_1001D3B28);
    sub_10006FFA8();
    v54 = &type metadata for Text;
    v55 = &type metadata for Int;
    v56 = &protocol witness table for Text;
    v57 = &protocol witness table for Int;
    v26 = 1;
    swift_getOpaqueTypeConformance2();
    v45[0] = v17;
    v27 = v46;
    ForEach<>.init(_:id:content:)();
    Bindable.wrappedValue.getter();
    v28 = v54;
    swift_getKeyPath();
    v54 = v28;
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *&v28[OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer];
    v29 = *&v28[OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8];

    if (v29)
    {
      v54 = v30;
      v55 = v29;
      sub_10002AC34();
      *v4 = Text.init<A>(_:)();
      *(v4 + 1) = v31;
      v4[16] = v32 & 1;
      *(v4 + 3) = v33;
      *(v4 + 4) = -3;
      v4[40] = 1;
      v34 = v50;
      v35 = v51;
      (*(v50 + 32))(v51, v4, v27);
      v26 = 0;
    }

    else
    {
      v34 = v50;
      v35 = v51;
    }

    (*(v34 + 56))(v35, v26, 1, v27);
    v36 = v47;
    v37 = v48;
    v38 = *(v47 + 16);
    v39 = v49;
    v40 = v45[0];
    v38(v49, v45[0], v48);
    v41 = v52;
    sub_1000081F8(v35, v52, &qword_100267EA8, &qword_1001E2838);
    v42 = v53;
    v38(v53, v39, v37);
    v43 = sub_10000341C(&qword_100267EB8, &unk_1001E2848);
    sub_1000081F8(v41, &v42[*(v43 + 48)], &qword_100267EA8, &qword_1001E2838);
    sub_10000F500(v35, &qword_100267EA8, &qword_1001E2838);
    v44 = *(v36 + 8);
    v44(v40, v37);
    sub_10000F500(v41, &qword_100267EA8, &qword_1001E2838);
    v44(v39, v37);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001B8378(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PickerRowCore(0);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v4 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v5 = [v4 answerOptions];

  if (v5)
  {
    v6 = [v5 objectAtIndexedSubscript:v3];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      sub_10002AC34();
      *a2 = Text.init<A>(_:)();
      *(a2 + 8) = v7;
      *(a2 + 16) = v8 & 1;
      *(a2 + 24) = v9;
      *(a2 + 32) = v3;
      *(a2 + 40) = 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001B84C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10025A898 != -1)
  {
    swift_once();
  }

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = -2;
  *(a1 + 40) = 1;
  return result;
}

void sub_1001B859C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = type metadata accessor for PickerRowCore(0);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v6 = *(a3 + *(v5 + 32));
  sub_10000341C(&qword_100267DD0, &qword_1001E2778);
  State.wrappedValue.getter();
  sub_10019C714(v17, 0);

  State.wrappedValue.getter();
  switch(v17)
  {
    case -3:
      Bindable.wrappedValue.getter();
      Bindable.wrappedValue.getter();
      swift_getKeyPath();
      sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v9 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
      v10 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);

      sub_10019BEEC(v9, v10);
      break;
    case -1:
      Bindable.wrappedValue.getter();
      v7 = (v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
      if (*(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return;
      }

      *v7 = 0;
      v7[1] = 0;
      break;
    case -2:
      sub_10000341C(&unk_1002640F0, &qword_1001D3490);
      State.wrappedValue.setter();
      Bindable.wrappedValue.getter();
      sub_10019C714(v4, 0);
      break;
    default:
      Bindable.wrappedValue.getter();
      v11 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

      v12 = [v11 answerOptions];

      if (!v12)
      {
        __break(1u);
        return;
      }

      State.wrappedValue.getter();
      v13 = [v12 objectAtIndexedSubscript:v17];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v14 = swift_dynamicCast();
      if (v14)
      {
        v15 = v17;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        v16 = v18;
      }

      else
      {
        v16 = 0;
      }

      Bindable.wrappedValue.getter();
      sub_10019BEEC(v15, v16);
      break;
  }
}

double sub_1001B89D4(uint64_t a1)
{
  LOBYTE(v6) = *(a1 + *(type metadata accessor for PickerRowCore(0) + 28));
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if ((v4 & 1) == 0)
  {
    sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    Bindable.wrappedValue.getter();
    swift_getKeyPath();
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);

    if (v2)
    {

      v3 = -3;
    }

    else
    {
      v3 = -1;
    }

    v5 = v3;
    sub_10000341C(&qword_100267DD0, &qword_1001E2778);
    State.wrappedValue.setter();
    Bindable.wrappedValue.getter();
    State.wrappedValue.getter();
    sub_10019C714(v5, 0);
  }

  return result;
}

void sub_1001B8BB0(void *a1@<X0>, char *a2@<X8>)
{
  v217 = a2;
  v3 = sub_10000341C(&qword_100267BF8, &qword_1001E25E0);
  v215 = *(v3 - 8);
  v216 = v3;
  __chkstk_darwin(v3);
  v199 = &v183 - v4;
  v5 = sub_10000341C(&qword_100267C00, &qword_1001E25E8);
  v197 = *(v5 - 8);
  v198 = v5;
  __chkstk_darwin(v5);
  v196 = &v183 - v6;
  v186 = sub_10000341C(&qword_100267C08, &qword_1001E25F0);
  __chkstk_darwin(v186);
  v184 = (&v183 - v7);
  v8 = sub_10000341C(&qword_100267C10, &qword_1001E25F8);
  v187 = *(v8 - 8);
  v188 = v8;
  __chkstk_darwin(v8);
  v185 = &v183 - v9;
  v10 = sub_10000341C(&qword_100267C18, &qword_1001E2600);
  v189 = *(v10 - 8);
  v190 = v10;
  __chkstk_darwin(v10);
  v194 = &v183 - v11;
  v12 = sub_10000341C(&qword_100267C20, &qword_1001E2608);
  v192 = *(v12 - 8);
  v193 = v12;
  v13 = __chkstk_darwin(v12);
  v191 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v205 = &v183 - v15;
  v16 = sub_10000341C(&qword_100267C28, &qword_1001E2610);
  v17 = __chkstk_darwin(v16 - 8);
  v210 = &v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v207 = &v183 - v19;
  v235 = sub_10000341C(&qword_100267C30, &qword_1001E2618);
  v195 = *(v235 - 8);
  v20 = __chkstk_darwin(v235);
  v234 = &v183 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v233 = &v183 - v22;
  v202 = sub_10000341C(&qword_100267C38, &qword_1001E2620);
  __chkstk_darwin(v202);
  v200 = (&v183 - v23);
  v24 = sub_10000341C(&qword_100267C40, &qword_1001E2628);
  v203 = *(v24 - 8);
  v204 = v24;
  __chkstk_darwin(v24);
  v201 = &v183 - v25;
  v232 = sub_10000341C(&qword_100267C48, &qword_1001E2630);
  v209 = *(v232 - 8);
  v26 = __chkstk_darwin(v232);
  v231 = &v183 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v237 = &v183 - v28;
  v208 = type metadata accessor for Divider();
  v230 = *(v208 - 8);
  v29 = __chkstk_darwin(v208);
  v183 = &v183 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v239 = &v183 - v32;
  __chkstk_darwin(v31);
  v236 = &v183 - v33;
  v34 = sub_10000341C(&qword_100267C50, &qword_1001E2638);
  v35 = __chkstk_darwin(v34 - 8);
  v214 = &v183 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v238 = &v183 - v37;
  v248 = type metadata accessor for PickerRowCoreInline(0);
  v229 = *(v248 - 8);
  __chkstk_darwin(v248);
  v245 = v38;
  v243 = &v183 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for AutomaticHoverEffect();
  v246 = *(v242 - 8);
  __chkstk_darwin(v242);
  v241 = (&v183 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v240 = type metadata accessor for UnevenRoundedRectangle();
  __chkstk_darwin(v240);
  v41 = &v183 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000341C(&qword_100267C58, &qword_1001E2640);
  __chkstk_darwin(v42);
  v44 = &v183 - v43;
  v45 = sub_10000341C(&qword_100267C60, &qword_1001E2648);
  v225 = *(v45 - 8);
  v226 = v45;
  __chkstk_darwin(v45);
  v220 = &v183 - v46;
  v47 = sub_10000341C(&qword_100267C68, &qword_1001E2650);
  v227 = *(v47 - 8);
  v228 = v47;
  __chkstk_darwin(v47);
  v224 = &v183 - v48;
  v49 = sub_10000341C(&qword_100267C70, &qword_1001E2658);
  v212 = *(v49 - 8);
  v213 = v49;
  v50 = __chkstk_darwin(v49);
  v211 = &v183 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v244 = &v183 - v52;
  v223 = static VerticalAlignment.center.getter();
  v262 = 1;
  v247 = a1;
  sub_1001BA8CC(&v255);
  v267 = v257;
  v268 = v258;
  v269 = v259;
  v270 = v260;
  v265 = v255;
  v266 = v256;
  v272 = v260;
  v271[2] = v257;
  v271[3] = v258;
  v271[4] = v259;
  v271[0] = v255;
  v271[1] = v256;
  sub_1000081F8(&v265, &v251, &qword_100267C78, &qword_1001E2660);
  sub_10000F500(v271, &qword_100267C78, &qword_1001E2660);
  *(&v261[2] + 7) = v267;
  *(&v261[3] + 7) = v268;
  *(&v261[4] + 7) = v269;
  *(&v261[5] + 7) = v270;
  *(v261 + 7) = v265;
  *(&v261[1] + 7) = v266;
  LODWORD(v219) = v262;
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1001CF9E0;
  v54 = static Edge.Set.leading.getter();
  *(v53 + 32) = v54;
  v55 = static Edge.Set.trailing.getter();
  *(v53 + 33) = v55;
  v56 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v54)
  {
    v56 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v55)
  {
    v56 = Edge.Set.init(rawValue:)();
  }

  if (qword_10025A8A8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v263 = 0;
  v65 = v247;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v255);
  *&v264[23] = v256;
  *&v264[39] = v257;
  *&v264[7] = v255;
  v66 = v65 + *(v248 + 32);
  v67 = *v66;
  v68 = *(v66 + 1);
  v221 = v67;
  LOBYTE(v251) = v67;
  v222 = v68;
  *(&v251 + 1) = v68;
  v218 = sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v249 == 1)
  {
    if (qword_10025A8E8 != -1)
    {
      swift_once();
    }

    v69 = qword_100277428;
  }

  else
  {
    if (qword_10025A8F8 != -1)
    {
      swift_once();
    }

    v69 = qword_100277458;
  }

  v70 = sub_10000F34C(v240, v69);
  sub_1001C0308(v70, v41, &type metadata accessor for UnevenRoundedRectangle);
  v71 = &v44[*(v42 + 36)];
  sub_1001C0374(v41, v71, &type metadata accessor for UnevenRoundedRectangle);
  v206 = sub_10000341C(&qword_100267AE8, &qword_1001E2510);
  *(v71 + *(v206 + 36)) = 0;
  v72 = v261[3];
  *(v44 + 49) = v261[2];
  *(v44 + 65) = v72;
  *(v44 + 81) = v261[4];
  *(v44 + 6) = *(&v261[4] + 15);
  v73 = v261[1];
  *(v44 + 17) = v261[0];
  *v44 = v223;
  *(v44 + 1) = 0;
  v44[16] = v219;
  *(v44 + 33) = v73;
  v44[112] = v56;
  *(v44 + 113) = *v250;
  *(v44 + 29) = *&v250[3];
  *(v44 + 15) = v58;
  *(v44 + 16) = v60;
  *(v44 + 17) = v62;
  *(v44 + 18) = v64;
  v44[152] = 0;
  v74 = *&v264[16];
  *(v44 + 153) = *v264;
  *(v44 + 169) = v74;
  *(v44 + 185) = *&v264[32];
  *(v44 + 25) = *&v264[47];
  v75 = v241;
  static CustomHoverEffect<>.automatic.getter();
  v76 = sub_1001C25D8();
  v77 = v42;
  v78 = sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v79 = v220;
  v80 = v242;
  View.hoverEffect<A>(_:isEnabled:)();
  v81 = *(v246 + 1);
  v246 = (v246 + 8);
  v219 = v81;
  v81(v75, v80);
  sub_10000F500(v44, &qword_100267C58, &qword_1001E2640);
  v82 = v247;
  v83 = v247 + *(v248 + 44);
  v84 = *v83;
  v85 = *(v83 + 1);
  LOBYTE(v251) = v84;
  *(&v251 + 1) = v85;
  State.wrappedValue.getter();
  *&v251 = v77;
  *(&v251 + 1) = v80;
  v252 = v76;
  v223 = v78;
  v253 = v78;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = v224;
  v88 = v226;
  View.hoverEffectDisabled(_:)();
  (*(v225 + 8))(v79, v88);
  v89 = v243;
  sub_1001C0308(v82, v243, type metadata accessor for PickerRowCoreInline);
  v90 = *(v229 + 80);
  v91 = swift_allocObject();
  sub_1001C0374(v89, v91 + ((v90 + 16) & ~v90), type metadata accessor for PickerRowCoreInline);
  *&v251 = v88;
  *(&v251 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v92 = v228;
  View.onTapGesture(count:perform:)();

  (*(v227 + 8))(v87, v92);
  LOBYTE(v251) = v221;
  *(&v251 + 1) = v222;
  State.wrappedValue.getter();
  v93 = 1;
  if (v249 != 1)
  {
    goto LABEL_24;
  }

  v228 = (v90 + 16) & ~v90;
  v229 = v90;
  Divider.init()();
  v94 = static VerticalAlignment.center.getter();
  v95 = v200;
  *v200 = v94;
  *(v95 + 8) = 0;
  *(v95 + 16) = 1;
  v96 = sub_10000341C(&qword_100267CC0, &qword_1001E2688);
  sub_1001BB27C(v82, (v95 + *(v96 + 44)));
  v97 = v82;
  if (qword_10025A900 != -1)
  {
    swift_once();
  }

  v98 = sub_10000F34C(v240, qword_100277470);
  v99 = v202;
  v100 = v95 + *(v202 + 36);
  sub_1001C0308(v98, v100, &type metadata accessor for UnevenRoundedRectangle);
  *(v100 + *(v206 + 36)) = 0;
  v101 = v241;
  static CustomHoverEffect<>.automatic.getter();
  v102 = sub_1001C2880();
  v103 = v201;
  v104 = v242;
  v105 = v223;
  View.hoverEffect<A>(_:isEnabled:)();
  v219(v101, v104);
  sub_10000F500(v95, &qword_100267C38, &qword_1001E2620);
  v106 = v97;
  v107 = v243;
  sub_1001C0308(v106, v243, type metadata accessor for PickerRowCoreInline);
  v108 = v228;
  v109 = swift_allocObject();
  sub_1001C0374(v107, v109 + v108, type metadata accessor for PickerRowCoreInline);
  *&v251 = v99;
  *(&v251 + 1) = v104;
  v252 = v102;
  v253 = v105;
  swift_getOpaqueTypeConformance2();
  v110 = v204;
  View.onTapGesture(count:perform:)();

  (*(v203 + 8))(v103, v110);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v111 = v247;
  Bindable.wrappedValue.getter();
  v112 = *(v251 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v113 = [v112 answerOptions];

  v114 = v207;
  if (v113)
  {
    v115 = [v113 array];

    v116 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = *(v116 + 16);

    *&v251 = 0;
    *(&v251 + 1) = v117;
    swift_getKeyPath();
    sub_1001C0308(v111, v107, type metadata accessor for PickerRowCoreInline);
    v118 = swift_allocObject();
    sub_1001C0374(v107, v118 + v108, type metadata accessor for PickerRowCoreInline);
    sub_10000341C(&qword_10025E290, &qword_1001D3B28);
    sub_10000341C(&qword_100267CE0, &qword_1001E2698);
    sub_10006FFA8();
    sub_100007120(&qword_100267CE8, &qword_100267CE0, &qword_1001E2698, &protocol conformance descriptor for TupleView<A>);
    ForEach<>.init(_:id:content:)();
    v253 = &type metadata for WritingTools;
    v254 = sub_10002AC88();
    LOBYTE(v251) = 11;
    LOBYTE(v116) = isFeatureEnabled(_:)();
    sub_10000F4B4(&v251);
    if (v116)
    {
      Divider.init()();
      v119 = static VerticalAlignment.center.getter();
      v120 = v184;
      *v184 = v119;
      *(v120 + 8) = 0;
      *(v120 + 16) = 1;
      v121 = sub_10000341C(&qword_100267CF8, &qword_1001E26A8);
      sub_1001BC9D4(v111, (v120 + *(v121 + 44)));
      if (qword_10025A8F0 != -1)
      {
        swift_once();
      }

      v122 = sub_10000F34C(v240, qword_100277440);
      v123 = v186;
      v124 = v120 + *(v186 + 36);
      sub_1001C0308(v122, v124, &type metadata accessor for UnevenRoundedRectangle);
      *(v124 + *(v206 + 36)) = 0;
      v125 = v241;
      static CustomHoverEffect<>.automatic.getter();
      v126 = v111 + *(v248 + 40);
      v127 = *v126;
      v128 = *(v126 + 1);
      LOBYTE(v126) = v126[16];
      LOBYTE(v251) = v127;
      *(&v251 + 1) = v128;
      LOBYTE(v252) = v126;
      sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
      FocusState.wrappedValue.getter();
      v129 = sub_1001C2BB0();
      v130 = v185;
      v131 = v242;
      v132 = v223;
      View.hoverEffect<A>(_:isEnabled:)();
      v219(v125, v131);
      sub_10000F500(v120, &qword_100267C08, &qword_1001E25F0);
      v246 = type metadata accessor for PickerRowCoreInline;
      v133 = v111;
      v134 = v243;
      sub_1001C0308(v133, v243, type metadata accessor for PickerRowCoreInline);
      v135 = v228;
      v136 = swift_allocObject();
      v241 = type metadata accessor for PickerRowCoreInline;
      sub_1001C0374(v134, v136 + v135, type metadata accessor for PickerRowCoreInline);
      *&v251 = v123;
      *(&v251 + 1) = v131;
      v252 = v129;
      v253 = v132;
      v137 = swift_getOpaqueTypeConformance2();
      v138 = v188;
      View.onTapGesture(count:perform:)();

      (*(v187 + 8))(v130, v138);
      v139 = v247;
      v140 = v247 + *(v248 + 36);
      v141 = *v140;
      v142 = *(v140 + 2);
      v251 = v141;
      v252 = v142;
      sub_10000341C(&qword_100260098, &unk_1001D56B0);
      State.wrappedValue.getter();
      v251 = v249;
      sub_1001C0308(v139, v134, v246);
      v143 = swift_allocObject();
      sub_1001C0374(v134, v143 + v135, v241);
      *&v249 = v138;
      *(&v249 + 1) = v137;
      swift_getOpaqueTypeConformance2();
      v144 = v190;
      v145 = v194;
      View.onChange<A>(of:initial:_:)();

      (*(v189 + 8))(v145, v144);
      v146 = *(v230 + 16);
      v247 = ((v230 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v147 = v183;
      v148 = v208;
      v146(v183, v239, v208);
      v150 = v191;
      v149 = v192;
      v151 = *(v192 + 16);
      v152 = v193;
      v151(v191, v205, v193);
      v248 = v146;
      v146(v196, v147, v148);
      v153 = sub_10000341C(&qword_100267D18, &qword_1001E26B8);
      v154 = v196;
      v151(&v196[*(v153 + 48)], v150, v152);
      v155 = *(v149 + 8);
      v155(v205, v152);
      v156 = *(v230 + 8);
      v156(v239, v148);
      v157 = v150;
      v158 = v239;
      v155(v157, v152);
      v156(v147, v148);
      v159 = v158;
      v160 = v154;
      v161 = v207;
      sub_10002A894(v160, v207, &qword_100267C00, &qword_1001E25E8);
      (*(v197 + 56))(v161, 0, 1, v198);
    }

    else
    {
      (*(v197 + 56))(v114, 1, 1, v198);
      v248 = *(v230 + 16);
      v247 = ((v230 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v148 = v208;
      v159 = v239;
      v161 = v114;
    }

    v162 = v248;
    (v248)(v159, v236, v148);
    v246 = *(v209 + 16);
    (v246)(v231, v237, v232);
    v163 = v195;
    v245 = *(v195 + 16);
    v245(v234, v233, v235);
    sub_1000081F8(v161, v210, &qword_100267C28, &qword_1001E2610);
    v164 = v199;
    v162(v199, v159, v148);
    v165 = sub_10000341C(&qword_100267CF0, &qword_1001E26A0);
    v166 = v232;
    (v246)(v164 + v165[12], v231, v232);
    v167 = v235;
    v245((v164 + v165[16]), v234, v235);
    v168 = v210;
    sub_1000081F8(v210, v164 + v165[20], &qword_100267C28, &qword_1001E2610);
    sub_10000F500(v161, &qword_100267C28, &qword_1001E2610);
    v169 = *(v163 + 8);
    v169(v233, v167);
    v170 = *(v209 + 8);
    v170(v237, v166);
    v171 = *(v230 + 8);
    v172 = v208;
    v171(v236, v208);
    sub_10000F500(v168, &qword_100267C28, &qword_1001E2610);
    v169(v234, v235);
    v170(v231, v232);
    v171(v239, v172);
    sub_10002A894(v164, v238, &qword_100267BF8, &qword_1001E25E0);
    v93 = 0;
LABEL_24:
    v173 = v238;
    (*(v215 + 56))(v238, v93, 1, v216);
    v174 = v211;
    v175 = v212;
    v176 = *(v212 + 16);
    v177 = v244;
    v178 = v213;
    v176(v211, v244, v213);
    v179 = v214;
    sub_1000081F8(v173, v214, &qword_100267C50, &qword_1001E2638);
    v180 = v217;
    v176(v217, v174, v178);
    v181 = sub_10000341C(&qword_100267CB8, &qword_1001E2680);
    sub_1000081F8(v179, &v180[*(v181 + 48)], &qword_100267C50, &qword_1001E2638);
    sub_10000F500(v173, &qword_100267C50, &qword_1001E2638);
    v182 = *(v175 + 8);
    v182(v177, v178);
    sub_10000F500(v179, &qword_100267C50, &qword_1001E2638);
    v182(v174, v178);
    return;
  }

  __break(1u);
}

uint64_t sub_1001BA8CC@<X0>(uint64_t a2@<X8>)
{
  if (qword_10025A8A0 != -1)
  {
    swift_once();
  }

  v3 = Text.init(_:tableName:bundle:comment:)();
  v22 = v4;
  v23 = v3;
  v21 = v5;
  v24 = v6;
  type metadata accessor for PickerRowCoreInline(0);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10002AC34();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Color.secondary.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v20 = v15;
  v17 = v16;

  sub_10002A984(v7, v9, v11 & 1);

  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v18 = Image.init(systemName:)();
  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v24;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v12;
  *(a2 + 56) = v14;
  *(a2 + 64) = v20 & 1;
  *(a2 + 72) = v17;
  *(a2 + 80) = v18;
  sub_100007D98(v23, v22, v21 & 1);

  sub_100007D98(v12, v14, v20 & 1);

  sub_10002A984(v12, v14, v20 & 1);

  sub_10002A984(v23, v22, v21 & 1);
}

void sub_1001BAC18(uint64_t a1)
{
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PickerRowCoreInline(0);
  v7 = v6 - 8;
  v26 = *(v6 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DispatchTime();
  v29 = v9;
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = (a1 + *(v7 + 52));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(aBlock) = v17;
  v37 = v18;
  v42[0] = 0;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v10 + 8);
  v28(v13, v9);
  sub_1001C0308(a1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PickerRowCoreInline);
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = swift_allocObject();
  sub_1001C0374(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for PickerRowCoreInline);
  v40 = sub_1001C3170;
  v41 = v20;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_1001256BC;
  v39 = &unk_1002531F0;
  v21 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1001C0124(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
  sub_100007120(&qword_100262470, &unk_10025D5E0, &qword_1001DAE20, &protocol conformance descriptor for [A]);
  v23 = v30;
  v22 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v34 + 8))(v23, v22);
  (*(v32 + 8))(v5, v33);
  v28(v15, v29);
  static Animation.easeInOut(duration:)();
  v35 = a1;
  withAnimation<A>(_:_:)();
}

uint64_t sub_1001BB14C(uint64_t a1)
{
  type metadata accessor for PickerRowCoreInline(0);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  return State.wrappedValue.setter();
}

double sub_1001BB1C0(uint64_t a1)
{
  type metadata accessor for PickerRowCoreInline(0);

  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  return result;
}

uint64_t sub_1001BB27C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v64 = a2;
  v3 = sub_10000341C(&qword_100267D88, &qword_1001E2740);
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = __chkstk_darwin(v3);
  v68 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v56[-v6];
  if (qword_10025A8B8 != -1)
  {
    swift_once();
  }

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v63 = a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v96);
  v15 = v12 & 1;
  v88 = v12 & 1;
  v16 = static Edge.Set.leading.getter();
  v17 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v17 = Edge.Set.init(rawValue:)();
  }

  if (qword_10025A8A8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v89 = 0;
  *&v79 = v8;
  *(&v79 + 1) = v10;
  LOBYTE(v80) = v15;
  *(&v80 + 1) = v14;
  v81 = v96[0];
  v82 = v96[1];
  v83 = v96[2];
  LOBYTE(v84) = v17;
  *(&v84 + 1) = v18;
  *&v85[0] = v19;
  *(&v85[0] + 1) = v20;
  *&v85[1] = v21;
  BYTE8(v85[1]) = 0;
  sub_10000341C(&qword_100267D90, &qword_1001E2748);
  sub_1001C3060();
  View.hoverEffectDisabled(_:)();
  v86[4] = v83;
  v86[5] = v84;
  v87[0] = v85[0];
  *(v87 + 9) = *(v85 + 9);
  v86[0] = v79;
  v86[1] = v80;
  v86[2] = v81;
  v86[3] = v82;
  sub_10000F500(v86, &qword_100267D90, &qword_1001E2748);
  v67 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v90);
  v22 = v91;
  v61 = v92;
  v62 = v90;
  v23 = v93;
  v59 = v95;
  v60 = v94;
  v24 = static Edge.Set.trailing.getter();
  v25 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v78 = v22;
  v77 = v23;
  v76 = 0;
  v34 = v63 + *(type metadata accessor for PickerRowCoreInline(0) + 28);
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v79) = v35;
  *(&v79 + 1) = v36;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v69)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  v38 = v65;
  v39 = *(v65 + 16);
  v40 = v68;
  v57 = v22;
  v58 = v7;
  v41 = v7;
  v42 = v66;
  v39(v68, v41, v66);
  v43 = v64;
  v39(v64, v40, v42);
  v44 = sub_10000341C(&qword_100267DB0, &unk_1001E2758);
  v45 = &v43[*(v44 + 48)];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v43[*(v44 + 64)];
  v48 = v61;
  v47 = v62;
  *&v69 = v67;
  *(&v69 + 1) = v62;
  LOBYTE(v70) = v22;
  *(&v70 + 1) = v61;
  LOBYTE(v71) = v23;
  v49 = v59;
  v50 = v60;
  *(&v71 + 1) = v60;
  *&v72 = v59;
  BYTE8(v72) = v25;
  *&v73 = v27;
  *(&v73 + 1) = v29;
  *&v74 = v31;
  *(&v74 + 1) = v33;
  LOBYTE(v75) = 0;
  *(&v75 + 1) = v37;
  v51 = v70;
  *v46 = v69;
  v46[1] = v51;
  v52 = v72;
  v46[2] = v71;
  v46[3] = v52;
  v53 = v74;
  v46[4] = v73;
  v46[5] = v53;
  v46[6] = v75;
  sub_1000081F8(&v69, &v79, &qword_100267D30, &qword_1001E26F8);
  v54 = *(v38 + 8);
  v54(v58, v42);
  *&v79 = v67;
  *(&v79 + 1) = v47;
  LOBYTE(v80) = v57;
  *(&v80 + 1) = v48;
  LOBYTE(v81) = v23;
  *(&v81 + 1) = v50;
  *&v82 = v49;
  BYTE8(v82) = v25;
  *&v83 = v27;
  *(&v83 + 1) = v29;
  *&v84 = v31;
  *(&v84 + 1) = v33;
  LOBYTE(v85[0]) = 0;
  *(v85 + 1) = v37;
  sub_10000F500(&v79, &qword_100267D30, &qword_1001E26F8);
  return (v54)(v68, v42);
}

uint64_t sub_1001BB800(uint64_t a1)
{
  type metadata accessor for PickerRowCoreInline(0);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v1 = (v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  if (*(v4 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v1 = 0;
    v1[1] = 0;
  }

  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.setter();
  return State.wrappedValue.setter();
}

void sub_1001BBA18(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v81 = a3;
  v5 = type metadata accessor for PickerRowCoreInline(0);
  v75 = *(v5 - 8);
  __chkstk_darwin(v5);
  v76 = v6;
  v79 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AutomaticHoverEffect();
  v8 = *(v7 - 8);
  v69 = v7;
  v70 = v8;
  __chkstk_darwin(v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&qword_100267D38, &qword_1001E2700);
  __chkstk_darwin(v11);
  v13 = &v67 - v12;
  v78 = sub_10000341C(&qword_100267D40, &qword_1001E2708);
  v74 = *(v78 - 8);
  __chkstk_darwin(v78);
  v15 = &v67 - v14;
  v80 = sub_10000341C(&qword_100267D48, &qword_1001E2710);
  v77 = *(v80 - 8);
  v16 = __chkstk_darwin(v80);
  v84 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v83 = &v67 - v18;
  v19 = type metadata accessor for Divider();
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = __chkstk_darwin(v19);
  v71 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = *a1;
  v82 = &v67 - v23;
  Divider.init()();
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v24 = *(*&v114[0] + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v25 = [v24 answerOptions];

  if (v25)
  {
    v26 = [v25 objectAtIndexedSubscript:v22];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v27 = swift_dynamicCast();
    if (v27)
    {
      v28 = v115;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v116;
    }

    else
    {
      v29 = 0;
    }

    v30 = static VerticalAlignment.center.getter();
    v100 = 1;
    v67 = v29;
    v68 = v28;
    sub_1001BC374(v28, v29, &v86);
    v111 = v96;
    v112 = v97;
    v113 = v98;
    v107 = v92;
    v108 = v93;
    v109 = v94;
    v110 = v95;
    v103 = v88;
    v104 = v89;
    v105 = v90;
    v106 = v91;
    v101 = v86;
    v102 = v87;
    v114[10] = v96;
    v114[11] = v97;
    v114[12] = v98;
    v114[6] = v92;
    v114[7] = v93;
    v114[9] = v95;
    v114[8] = v94;
    v114[1] = v87;
    v114[2] = v88;
    v114[3] = v89;
    v114[5] = v91;
    v114[4] = v90;
    v114[0] = v86;
    sub_1000081F8(&v101, v85, &qword_100267D50, &qword_1001E2718);
    sub_10000F500(v114, &qword_100267D50, &qword_1001E2718);
    *&v99[151] = v110;
    *&v99[167] = v111;
    *&v99[183] = v112;
    *&v99[199] = v113;
    *&v99[87] = v106;
    *&v99[103] = v107;
    *&v99[119] = v108;
    *&v99[135] = v109;
    *&v99[23] = v102;
    *&v99[39] = v103;
    *&v99[55] = v104;
    *&v99[71] = v105;
    *&v99[7] = v101;
    v31 = v100;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(&v86);
    if (qword_10025A900 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for UnevenRoundedRectangle();
    v33 = sub_10000F34C(v32, qword_100277470);
    v34 = &v13[*(v11 + 36)];
    sub_1001C0308(v33, v34, &type metadata accessor for UnevenRoundedRectangle);
    *(v34 + *(sub_10000341C(&qword_100267AE8, &qword_1001E2510) + 36)) = 0;
    v35 = *&v99[176];
    *(v13 + 177) = *&v99[160];
    *(v13 + 193) = v35;
    *(v13 + 209) = *&v99[192];
    v36 = *&v99[112];
    *(v13 + 113) = *&v99[96];
    *(v13 + 129) = v36;
    v37 = *&v99[144];
    *(v13 + 145) = *&v99[128];
    *(v13 + 161) = v37;
    v38 = *&v99[48];
    *(v13 + 49) = *&v99[32];
    *(v13 + 65) = v38;
    v39 = *&v99[80];
    *(v13 + 81) = *&v99[64];
    *(v13 + 97) = v39;
    v40 = *&v99[16];
    *(v13 + 17) = *v99;
    *(v13 + 33) = v40;
    v41 = v87;
    *(v13 + 232) = v86;
    *v13 = v30;
    *(v13 + 1) = 0;
    v13[16] = v31;
    *(v13 + 28) = *&v99[207];
    *(v13 + 248) = v41;
    *(v13 + 264) = v88;
    v42 = v10;
    static CustomHoverEffect<>.automatic.getter();
    v43 = sub_1001C2CF4();
    v44 = sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    v45 = v69;
    View.hoverEffect<A>(_:isEnabled:)();
    (*(v70 + 8))(v42, v45);
    sub_10000F500(v13, &qword_100267D38, &qword_1001E2700);
    v46 = a2;
    v47 = v79;
    sub_1001C0308(v46, v79, type metadata accessor for PickerRowCoreInline);
    v48 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v49 = (v76 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    sub_1001C0374(v47, v50 + v48, type metadata accessor for PickerRowCoreInline);
    v51 = (v50 + v49);
    v52 = v67;
    *v51 = v68;
    v51[1] = v52;
    v85[0] = v11;
    v85[1] = v45;
    v85[2] = v43;
    v85[3] = v44;
    swift_getOpaqueTypeConformance2();
    v53 = v83;
    v54 = v78;
    View.onTapGesture(count:perform:)();

    (*(v74 + 8))(v15, v54);
    v55 = v71;
    v56 = v72;
    v57 = *(v72 + 16);
    v58 = v73;
    v57(v71, v82, v73);
    v59 = v77;
    v79 = *(v77 + 16);
    v60 = v53;
    v61 = v80;
    (v79)(v84, v60, v80);
    v62 = v81;
    v57(v81, v55, v58);
    v63 = &v62[*(sub_10000341C(&qword_100267D80, &unk_1001E2730) + 48)];
    v64 = v84;
    (v79)(v63, v84, v61);
    v65 = *(v59 + 8);
    v65(v83, v61);
    v66 = *(v56 + 8);
    v66(v82, v58);
    v65(v64, v61);
    v66(v55, v58);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001BC374@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v37 = result;
    v72 = result;
    v73 = a2;
    sub_10002AC34();

    v6 = Text.init<A>(_:)();
    v8 = v7;
    v10 = v9;
    v45 = v11;
    v43 = v9 & 1;
    v44 = static Edge.Set.all.getter();
    v94 = v10 & 1;
    v93 = 1;
    v42 = Image.init(systemName:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)(&v95);
    v46 = v96;
    v41 = v97;
    v12 = v98;
    v40 = v99;
    v38 = v95;
    v39 = v100;
    v13 = static Edge.Set.trailing.getter();
    v14 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v13)
    {
      v14 = Edge.Set.init(rawValue:)();
    }

    if (qword_10025A8A8 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v89 = v46;
    v88 = v12;
    v87 = 0;
    type metadata accessor for PickerRowCoreInline(0);
    sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    Bindable.wrappedValue.getter();
    swift_getKeyPath();
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v72 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
    v24 = *(v72 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

    if (v24)
    {
      if (v23 == v37 && v24 == a2)
      {

        v25 = 1.0;
LABEL_12:
        *&v58 = v6;
        *(&v58 + 1) = v8;
        LOBYTE(v59) = v43;
        *(&v59 + 1) = *v92;
        DWORD1(v59) = *&v92[3];
        *(&v59 + 1) = v45;
        v60[0] = v44;
        *&v60[1] = *v91;
        *&v60[4] = *&v91[3];
        memset(&v60[8], 0, 32);
        v60[40] = 1;
        *&v71[9] = *&v60[25];
        v70 = *v60;
        *v71 = *&v60[16];
        v68 = v58;
        v69 = v59;
        v57 = 1;
        *&v61 = v42;
        *(&v61 + 1) = v38;
        LOBYTE(v62) = v46;
        DWORD1(v62) = *&v90[3];
        *(&v62 + 1) = *v90;
        *(&v62 + 1) = v41;
        LOBYTE(v63) = v12;
        *(&v63 + 1) = v40;
        *&v64 = v39;
        BYTE8(v64) = v14;
        *&v65 = v16;
        *(&v65 + 1) = v18;
        *&v66 = v20;
        *(&v66 + 1) = v22;
        LOBYTE(v67) = 0;
        *(&v67 + 1) = v25;
        *&v56[39] = v63;
        *&v56[23] = v62;
        *&v56[7] = v61;
        *&v56[103] = v67;
        *&v56[87] = v66;
        *&v56[71] = v65;
        *&v56[55] = v64;
        v27 = v58;
        v28 = v59;
        v29 = *&v71[16];
        *(a4 + 48) = *&v60[16];
        *(a4 + 64) = v29;
        v30 = v70;
        *(a4 + 16) = v28;
        *(a4 + 32) = v30;
        *a4 = v27;
        *(a4 + 80) = 0;
        *(a4 + 88) = 1;
        v31 = *v56;
        v32 = *&v56[16];
        v33 = *&v56[32];
        *(a4 + 137) = *&v56[48];
        *(a4 + 121) = v33;
        *(a4 + 105) = v32;
        *(a4 + 89) = v31;
        v34 = *&v56[64];
        v35 = *&v56[80];
        v36 = *&v56[96];
        *(a4 + 200) = *&v56[111];
        *(a4 + 185) = v36;
        *(a4 + 169) = v35;
        *(a4 + 153) = v34;
        v72 = v42;
        v73 = v38;
        v74 = v46;
        *&v75[3] = *&v90[3];
        *v75 = *v90;
        v76 = v41;
        v77 = v12;
        v78 = v40;
        v79 = v39;
        v80 = v14;
        v81 = v16;
        v82 = v18;
        v83 = v20;
        v84 = v22;
        v85 = 0;
        v86 = v25;
        sub_1000081F8(&v58, v47, &qword_10025C890, &qword_1001DEC00);
        sub_1000081F8(&v61, v47, &qword_100267D30, &qword_1001E26F8);
        sub_10000F500(&v72, &qword_100267D30, &qword_1001E26F8);
        v47[0] = v6;
        v47[1] = v8;
        v48 = v43;
        *v49 = *v92;
        *&v49[3] = *&v92[3];
        v50 = v45;
        v51 = v44;
        *v52 = *v91;
        *&v52[3] = *&v91[3];
        v53 = 0u;
        v54 = 0u;
        v55 = 1;
        return sub_10000F500(v47, &qword_10025C890, &qword_1001DEC00);
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v25 = 1.0;
      if (v26)
      {
        goto LABEL_12;
      }
    }

    v25 = 0.0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_1001BC884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PickerRowCoreInline(0);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  result = Bindable.wrappedValue.getter();
  if (a3)
  {

    sub_10019BEEC(a2, a3);

    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.setter();
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.wrappedValue.setter();
    return State.wrappedValue.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BC9D4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v3 = sub_10000341C(&qword_10025CB20, &qword_1001D1E40);
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v5 = &v69 - v4;
  v72 = sub_10000341C(&qword_100267AC0, &qword_1001E24E8);
  __chkstk_darwin(v72);
  v7 = &v69 - v6;
  v79 = sub_10000341C(&qword_100267AC8, &qword_1001E24F0);
  __chkstk_darwin(v79);
  v75 = &v69 - v8;
  v9 = sub_10000341C(&qword_100267D20, &qword_1001E26E8);
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = __chkstk_darwin(v9);
  v80 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v69 - v12;
  if (qword_10025A898 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for PickerRowCoreInline(0);
  v14 = a1 + v13[9];
  v15 = *v14;
  v16 = *(v14 + 2);
  v82 = v15;
  *&v83 = v16;

  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.projectedValue.getter();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  v17 = a1 + v13[10];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v17) = v17[16];
  LOBYTE(v89) = v18;
  v90 = v19;
  LOBYTE(v91) = v17;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40, &protocol conformance descriptor for TextField<A>);
  v20 = v74;
  View.focused(_:)();

  (*(v73 + 8))(v5, v20);
  v21 = a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v106);
  v22 = &v7[*(v72 + 36)];
  v23 = v106[1];
  *v22 = v106[0];
  *(v22 + 1) = v23;
  *(v22 + 2) = v106[2];
  v24 = static Edge.Set.leading.getter();
  v25 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  if (qword_10025A8A8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v75;
  sub_10002A894(v7, v75, &qword_100267AC0, &qword_1001E24E8);
  v35 = v34 + *(v79 + 36);
  *v35 = v25;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  sub_1001C1DA4();
  View.hoverEffectDisabled(_:)();
  sub_10000F500(v34, &qword_100267AC8, &qword_1001E24F0);
  v75 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v107);
  v36 = v108;
  v73 = v109;
  v74 = v107;
  v37 = v110;
  v71 = v112;
  v72 = v111;
  v38 = static Edge.Set.trailing.getter();
  LODWORD(v79) = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v38)
  {
    LODWORD(v79) = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v105 = v36;
  v104 = v37;
  v103 = 0;
  v47 = v21 + v13[6];
  v48 = *v47;
  v49 = *(v47 + 1);
  LOBYTE(v89) = v48;
  v90 = v49;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v82)
  {
    v50 = 1.0;
  }

  else
  {
    v50 = 0.0;
  }

  v52 = v76;
  v51 = v77;
  v53 = v37;
  v69 = v36;
  v70 = v37;
  v54 = *(v76 + 16);
  v55 = v80;
  v54(v80, v81, v77);
  v56 = v78;
  v54(v78, v55, v51);
  v57 = &v56[*(sub_10000341C(&qword_100267D28, &qword_1001E26F0) + 48)];
  v58 = v74;
  v59 = v75;
  *&v82 = v75;
  *(&v82 + 1) = v74;
  LOBYTE(v83) = v36;
  v61 = v72;
  v60 = v73;
  *(&v83 + 1) = v73;
  LOBYTE(v84) = v53;
  v62 = v79;
  v63 = v71;
  *(&v84 + 1) = v72;
  *&v85 = v71;
  BYTE8(v85) = v79;
  *&v86 = v40;
  *(&v86 + 1) = v42;
  *&v87 = v44;
  *(&v87 + 1) = v46;
  LOBYTE(v88) = 0;
  *(&v88 + 1) = v50;
  v64 = v83;
  *v57 = v82;
  *(v57 + 1) = v64;
  v65 = v85;
  *(v57 + 2) = v84;
  *(v57 + 3) = v65;
  v66 = v87;
  *(v57 + 4) = v86;
  *(v57 + 5) = v66;
  *(v57 + 6) = v88;
  sub_1000081F8(&v82, &v89, &qword_100267D30, &qword_1001E26F8);
  v67 = *(v52 + 8);
  v67(v81, v51);
  v89 = v59;
  v90 = v58;
  LOBYTE(v91) = v69;
  v92 = v60;
  v93 = v70;
  v94 = v61;
  v95 = v63;
  v96 = v62;
  v97 = v40;
  v98 = v42;
  v99 = v44;
  v100 = v46;
  v101 = 0;
  v102 = v50;
  sub_10000F500(&v89, &qword_100267D30, &qword_1001E26F8);
  return (v67)(v80, v51);
}

double sub_1001BD154(uint64_t a1)
{
  v2 = type metadata accessor for PickerRowCoreInline(0);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.setter();
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  LOBYTE(v6) = 0;
  State.wrappedValue.setter();
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v8 = *(a1 + *(v2 + 36));
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  sub_10019C2A8(v6, v7);

  Bindable.wrappedValue.getter();
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
  v4 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);

  sub_10019BEEC(v3, v4);

  return result;
}

double sub_1001BD398(uint64_t a1)
{
  v2 = type metadata accessor for PickerRowCoreInline(0);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v8 = *(a1 + *(v2 + 36));
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  sub_10019C2A8(v6, v7);

  Bindable.wrappedValue.getter();
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
  v4 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);

  sub_10019BEEC(v3, v4);

  return result;
}

double sub_1001BD520@<D0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10000341C(&qword_100267BE8, &qword_1001E25D0);
  sub_1001B8BB0(v2, (a2 + *(v4 + 44)));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v8);
  v5 = (a2 + *(sub_10000341C(&qword_100267BF0, &qword_1001E25D8) + 36));
  v6 = v8[1];
  *v5 = v8[0];
  v5[1] = v6;
  result = *&v9;
  v5[2] = v9;
  return result;
}

double sub_1001BD5C8@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = static HorizontalAlignment.center.getter();
  sub_1001BD90C(v3, &v46);
  v25 = v56;
  v26 = v57;
  v27[0] = v58[0];
  *(v27 + 9) = *(v58 + 9);
  v21 = v52;
  v22 = v53;
  v23 = v54;
  v24 = v55;
  v17 = v48;
  v18 = v49;
  v19 = v50;
  v20 = v51;
  v15 = v46;
  v16 = v47;
  v28[10] = v56;
  v28[11] = v57;
  v29[0] = v58[0];
  *(v29 + 9) = *(v58 + 9);
  v28[6] = v52;
  v28[7] = v53;
  v28[8] = v54;
  v28[9] = v55;
  v28[2] = v48;
  v28[3] = v49;
  v28[4] = v50;
  v28[5] = v51;
  v28[0] = v46;
  v28[1] = v47;
  sub_1000081F8(&v15, &v30, &qword_100267810, &qword_1001E1F50);
  sub_10000F500(v28, &qword_100267810, &qword_1001E1F50);
  *&v14[167] = v25;
  *&v14[183] = v26;
  *&v14[199] = v27[0];
  *&v14[103] = v21;
  *&v14[119] = v22;
  *&v14[135] = v23;
  *&v14[151] = v24;
  *&v14[39] = v17;
  *&v14[55] = v18;
  *&v14[71] = v19;
  *&v14[87] = v20;
  *&v14[7] = v15;
  *&v14[23] = v16;
  v42 = *&v14[160];
  v43 = *&v14[176];
  v44 = *&v14[192];
  v45 = *(v27 + 9);
  v38 = *&v14[96];
  v39 = *&v14[112];
  v40 = *&v14[128];
  v41 = *&v14[144];
  v34 = *&v14[32];
  v35 = *&v14[48];
  v36 = *&v14[64];
  v37 = *&v14[80];
  v32 = *v14;
  v30 = v5;
  v31 = 1;
  v33 = *&v14[16];
  sub_1001C0DC8(&v30);
  sub_10000341C(&qword_100267818, &qword_1001E1F58);
  sub_10000341C(&qword_100267820, &qword_1001E1F60);
  sub_100007120(&qword_100267828, &qword_100267818, &qword_1001E1F58, &protocol conformance descriptor for HStack<A>);
  sub_100007120(&qword_100267830, &qword_100267820, &qword_1001E1F60, &protocol conformance descriptor for VStack<A>);
  _ConditionalContent<>.init(storage:)();
  v6 = v58[1];
  *(a2 + 192) = v58[0];
  *(a2 + 208) = v6;
  *(a2 + 224) = v58[2];
  *(a2 + 240) = v59;
  v7 = v55;
  *(a2 + 128) = v54;
  *(a2 + 144) = v7;
  v8 = v57;
  *(a2 + 160) = v56;
  *(a2 + 176) = v8;
  v9 = v51;
  *(a2 + 64) = v50;
  *(a2 + 80) = v9;
  v10 = v53;
  *(a2 + 96) = v52;
  *(a2 + 112) = v10;
  v11 = v47;
  *a2 = v46;
  *(a2 + 16) = v11;
  result = *&v48;
  v13 = v49;
  *(a2 + 32) = v48;
  *(a2 + 48) = v13;
  return result;
}

uint64_t sub_1001BD90C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  __chkstk_darwin(v35);
  v5 = &v35 - v4;
  v41 = static VerticalAlignment.center.getter();
  LOBYTE(v66) = 1;
  sub_1001BDD40(&v69);
  v38 = v70;
  v39 = v69;
  v43 = v71;
  v37 = *&v72[7];
  v44 = *&v72[15];
  v36 = v72[23];
  LOBYTE(v69) = v71;
  LOBYTE(v45[0]) = v72[23];
  v42 = v66;
  v40 = static VerticalAlignment.center.getter();
  LOBYTE(v45[0]) = 1;
  v6 = (a1 + *(type metadata accessor for CustomRow(0) + 20));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v66) = v7;
  v67 = v8;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v9 = v69;
  v10 = v70;
  v11 = v71;
  Bindable.projectedValue.getter();
  sub_1001C0660(v9, v10, v11, v5, v59);
  *(&v58[4] + 7) = v59[4];
  *(&v58[5] + 7) = v59[5];
  *(&v58[6] + 7) = v60[0];
  v58[7] = *(v60 + 9);
  *(v58 + 7) = v59[0];
  *(&v58[1] + 7) = v59[1];
  *(&v58[2] + 7) = v59[2];
  *(&v58[3] + 7) = v59[3];
  v12 = v45[0];
  v13 = v41;
  v61[0] = v41;
  v61[1] = 0;
  LOBYTE(v62) = v42;
  v15 = v38;
  v14 = v39;
  *(&v62 + 1) = v39;
  *&v63 = v38;
  BYTE8(v63) = v43;
  v16 = v37;
  *&v64 = v37;
  *(&v64 + 1) = v44;
  v17 = v36;
  LOBYTE(v57[0]) = v36;
  v55 = v63;
  v56 = v64;
  v53 = v41;
  v54 = v62;
  v18 = v40;
  v66 = v40;
  v67 = 0;
  v68[0] = v45[0];
  v19 = v58[3];
  *&v68[49] = v58[3];
  v20 = v58[2];
  *&v68[33] = v58[2];
  v21 = v58[1];
  *&v68[17] = v58[1];
  v22 = v58[0];
  *&v68[1] = v58[0];
  v23 = *(v60 + 9);
  *&v68[113] = *(v60 + 9);
  v24 = v58[6];
  *&v68[97] = v58[6];
  v25 = v58[5];
  *&v68[81] = v58[5];
  v26 = v58[4];
  *&v68[65] = v58[4];
  *(&v57[1] + 8) = *v68;
  *(v57 + 8) = v40;
  *(&v57[5] + 8) = *&v68[64];
  *(&v57[4] + 8) = *&v68[48];
  *(&v57[3] + 8) = *&v68[32];
  *(&v57[2] + 8) = *&v68[16];
  *(&v57[8] + 8) = *&v68[112];
  BYTE8(v57[9]) = BYTE8(v60[1]);
  *(&v57[7] + 8) = *&v68[96];
  *(&v57[6] + 8) = *&v68[80];
  v27 = v57[7];
  a2[10] = v57[6];
  a2[11] = v27;
  a2[12] = v57[8];
  *(a2 + 201) = *(&v57[8] + 9);
  v28 = v57[3];
  a2[6] = v57[2];
  a2[7] = v28;
  v29 = v57[5];
  a2[8] = v57[4];
  a2[9] = v29;
  v30 = v56;
  a2[2] = v55;
  a2[3] = v30;
  v31 = v57[1];
  a2[4] = v57[0];
  a2[5] = v31;
  v32 = v54;
  *a2 = v53;
  a2[1] = v32;
  v75 = v26;
  v76 = v25;
  v77 = v24;
  v78 = v23;
  v33 = v17;
  v65 = v17;
  v69 = v18;
  v70 = 0;
  v71 = v12;
  *v72 = v22;
  *&v72[16] = v21;
  v73 = v20;
  v74 = v19;
  sub_1000081F8(v61, v45, &qword_100267700, &qword_1001E1E30);
  sub_1000081F8(&v66, v45, &qword_100267838, &qword_1001E1F68);
  sub_10000F500(&v69, &qword_100267838, &qword_1001E1F68);
  v45[0] = v13;
  v45[1] = 0;
  v46 = v42;
  v47 = v14;
  v48 = v15;
  v49 = v43;
  v50 = v16;
  v51 = v44;
  v52 = v33;
  return sub_10000F500(v45, &qword_100267700, &qword_1001E1E30);
}

void sub_1001BDD40(uint64_t a1@<X8>)
{
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v2 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v3 = [v2 question];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10002AC34();
    v4 = Text.init<A>(_:)();
    v6 = v5;
    *a1 = v4;
    *(a1 + 8) = v5;
    v8 = v7 & 1;
    *(a1 + 16) = v7 & 1;
    *(a1 + 24) = v9;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    sub_100007D98(v4, v5, v7 & 1);

    sub_10002A984(v4, v6, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001BDE64@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_10000341C(&qword_1002674A0, &unk_1001E1B70);
  __chkstk_darwin(v2);
  v4 = &v51 - v3;
  v5 = static VerticalAlignment.center.getter();
  v6 = v1[4];
  v55 = v1[3];
  v53 = v5;
  v54 = v6;
  sub_1001BF6D0(v1, v62);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v57[55] = v62[3];
  *&v57[71] = v62[4];
  *&v57[87] = v62[5];
  *&v57[103] = v62[6];
  *&v57[7] = v62[0];
  *&v57[23] = v62[1];
  v59 = 1;
  v58 = 1;
  *&v57[39] = v62[2];
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  v7 = swift_allocObject();
  v51 = xmmword_1001CF9E0;
  *(v7 + 16) = xmmword_1001CF9E0;
  v8 = static Edge.Set.leading.getter();
  *(v7 + 32) = v8;
  v9 = static Edge.Set.trailing.getter();
  *(v7 + 33) = v9;
  v10 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v8)
  {
    v10 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v9)
  {
    v10 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v52 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v60 = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = v51;
  v19 = static Edge.Set.top.getter();
  *(v18 + 32) = v19;
  v20 = static Edge.Set.bottom.getter();
  *(v18 + 33) = v20;
  v21 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v21 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v21 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v61 = 0;
  v30 = v1[2];
  v31 = &v4[*(v2 + 36)];
  v32 = *(type metadata accessor for RoundedRectangle() + 20);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  *v31 = v30;
  *(v31 + 1) = v30;
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  v35 = qword_100277188;
  v36 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v31[*(v36 + 52)] = v35;
  *&v31[*(v36 + 56)] = 256;

  v37 = static Alignment.center.getter();
  v39 = v38;
  v40 = &v31[*(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36)];
  *v40 = v37;
  v40[1] = v39;
  v41 = *&v57[32];
  *(v4 + 97) = *&v57[48];
  *(v4 + 81) = v41;
  v42 = *v57;
  *(v4 + 65) = *&v57[16];
  *(v4 + 49) = v42;
  *(v4 + 20) = *&v57[111];
  v43 = *&v57[80];
  *(v4 + 145) = *&v57[96];
  v44 = *&v57[64];
  *(v4 + 129) = v43;
  *v4 = v53;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v45 = v54;
  *(v4 + 3) = v55;
  *(v4 + 4) = v45;
  *(v4 + 5) = 0;
  v4[48] = 1;
  *(v4 + 113) = v44;
  v4[168] = v10;
  *(v4 + 22) = v52;
  *(v4 + 23) = v13;
  *(v4 + 24) = v15;
  *(v4 + 25) = v17;
  v4[208] = 0;
  v4[216] = v21;
  *(v4 + 28) = v23;
  *(v4 + 29) = v25;
  *(v4 + 30) = v27;
  *(v4 + 31) = v29;
  v4[256] = 0;
  v46 = sub_10000341C(&qword_1002674A8, &qword_1001E1B80);
  v47 = v56;
  v48 = (v56 + *(v46 + 36));
  *v48 = 0;
  v49 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v48[v49] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  return sub_10002A894(v4, v47, &qword_1002674A0, &unk_1001E1B70);
}

uint64_t sub_1001BE39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v23[2] = a1;
  v23[3] = a2;
  sub_10002AC34();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v15 = type metadata accessor for Font.Design();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  static Font.system(size:weight:design:)();
  sub_10000F500(v9, &qword_10025C5D0, &qword_1001D15A0);
  v16 = Text.font(_:)();
  v18 = v17;
  LOBYTE(v9) = v19;
  v21 = v20;

  sub_10002A984(v10, v12, v14 & 1);

  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v21;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  sub_100007D98(v16, v18, v9 & 1);

  sub_10002A984(v16, v18, v9 & 1);
}

__n128 sub_1001BE57C@<Q0>(uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v4 = *(v2 + 16);
  v6 = static VerticalAlignment.center.getter();
  sub_1001BE39C(v5, v4, &v12);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  result = v12;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  return result;
}

id sub_1001BE610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() pondering];
  v31 = [objc_allocWithZone(_UIDirectionalLightConfiguration) initWithPalette:v3];

  v4 = [objc_opt_self() directionalLightWithConfiguration:v31];
  v5 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v4];
  v6 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v5];
  v7 = objc_allocWithZone(sub_10000341C(&qword_100267840, &unk_1001E1F70));

  v8 = _UIHostingView.init(rootView:)();
  v9 = [v6 contentView];
  v10 = v8;
  [v9 addSubview:v10];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = objc_opt_self();
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001CE090;
  v12 = [v6 contentView];
  v13 = [v12 topAnchor];

  v14 = [v10 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v11 + 32) = v15;
  v16 = [v6 contentView];
  v17 = [v16 leadingAnchor];

  v18 = [v10 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v11 + 40) = v19;
  v20 = [v6 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v10 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v11 + 48) = v23;
  v24 = [v6 contentView];
  v25 = [v24 bottomAnchor];

  v26 = [v10 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v11 + 56) = v27;
  sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:isa];

  return v6;
}

uint64_t sub_1001BEA60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1001BEAA8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1001BEB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001BEBE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalizedStringResource();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1001BECBC(uint64_t a1)
{
  result = type metadata accessor for LocalizedStringResource();
  if (v2 <= 0x3F)
  {
    result = sub_1000596F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001BED64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LoadingBar.IntelligentLoadingLabel.Coordinator();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1001BED98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C0DD4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001BEDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C0DD4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001BEE60(uint64_t a1)
{
  sub_1001C0DD4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1001BEEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = sub_10000341C(&qword_100264FA8, &unk_1001DD840);
  __chkstk_darwin(v17[0]);
  v4 = v17 - v3;
  v5 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000341C(&unk_100264FB0, &unk_1001E1BE0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  static ToolbarItemPlacement.confirmationAction.getter();
  v17[8] = a1;
  sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.cancellationAction.getter();
  v17[4] = a1;
  ToolbarItem<>.init(placement:content:)();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v10, v6);
  TupleToolbarContent.init(_:)();
  v15 = *(v7 + 8);
  v15(v10, v6);
  return (v15)(v12, v6);
}

uint64_t sub_1001BF184(uint64_t a1)
{
  v2 = type metadata accessor for QuestionnaireSafetyUI(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  if (qword_10025A848 != -1)
  {
    swift_once();
  }

  sub_1001C0308(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuestionnaireSafetyUI);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1001C0374(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for QuestionnaireSafetyUI);

  return Button<>.init(_:action:)();
}

uint64_t sub_1001BF324(uint64_t a1)
{
  v2 = type metadata accessor for QuestionnaireSafetyUI(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  if (qword_10025A858 != -1)
  {
    swift_once();
  }

  sub_1001C0308(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuestionnaireSafetyUI);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1001C0374(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for QuestionnaireSafetyUI);

  return Button<>.init(_:action:)();
}

uint64_t sub_1001BF4C4()
{
  v1 = sub_10000341C(&qword_1002674B0, &qword_1001E1BC0);
  __chkstk_darwin(v1);
  v3 = &v7[-v2];
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = *(sub_10000341C(&qword_1002674B8, &qword_1001E1BC8) + 44);
  v5 = type metadata accessor for LocalizedStringResource();
  (*(*(v5 - 8) + 16))(&v3[v4], v0, v5);
  v8 = v0;
  sub_10000341C(&qword_100264F90, &unk_1001E1BD0);
  sub_100007120(&qword_1002674C0, &qword_1002674B0, &qword_1001E1BC0, &protocol conformance descriptor for VStack<A>);
  sub_100007120(&qword_100264FA0, &qword_100264F90, &unk_1001E1BD0, &protocol conformance descriptor for TupleToolbarContent<A>);
  View.toolbar<A>(content:)();
  return sub_10000F500(v3, &qword_1002674B0, &qword_1001E1BC0);
}

uint64_t sub_1001BF798()
{
  v1 = *(type metadata accessor for QuestionnaireSafetyUI(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for LocalizedStringResource();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1001BF950(uint64_t a1)
{
  sub_1001BF9E4(319);
  if (v1 <= 0x3F)
  {
    sub_1001C16C0(319, &qword_10025DE40, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001BF9E4(uint64_t a1)
{
  if (!qword_100265530)
  {
    type metadata accessor for QuestionnaireEntry(255);
    v1 = type metadata accessor for Bindable();
    if (!v2)
    {
      atomic_store(v1, &qword_100265530);
    }
  }
}

uint64_t sub_1001BFA50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001BFADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1001BFB78(uint64_t a1)
{
  sub_1001BF9E4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1001BFBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001BFCE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1001BFDAC(uint64_t a1)
{
  sub_1001BF9E4(319);
  if (v1 <= 0x3F)
  {
    sub_1001C16C0(319, &qword_10025DE40, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1001BFE9C()
{
  result = qword_100267688;
  if (!qword_100267688)
  {
    sub_100003E34(&qword_1002674A0, &unk_1001E1B70);
    sub_1001BFF54();
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267688);
  }

  return result;
}

unint64_t sub_1001BFF54()
{
  result = qword_100267690;
  if (!qword_100267690)
  {
    sub_100003E34(&qword_100267698, &qword_1001E1C20);
    sub_1001BFFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267690);
  }

  return result;
}

unint64_t sub_1001BFFE0()
{
  result = qword_1002676A0;
  if (!qword_1002676A0)
  {
    sub_100003E34(&qword_1002676A8, &qword_1001E1C28);
    sub_1001C006C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002676A0);
  }

  return result;
}

unint64_t sub_1001C006C()
{
  result = qword_1002676B0;
  if (!qword_1002676B0)
  {
    sub_100003E34(&qword_1002676B8, &qword_1001E1C30);
    sub_100007120(&qword_1002676C0, &qword_1002676C8, &qword_1001E1C38, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002676B0);
  }

  return result;
}

uint64_t sub_1001C0124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001C016C()
{
  sub_100003E34(&qword_1002674B0, &qword_1001E1BC0);
  sub_100003E34(&qword_100264F90, &unk_1001E1BD0);
  sub_100007120(&qword_1002674C0, &qword_1002674B0, &qword_1001E1BC0, &protocol conformance descriptor for VStack<A>);
  sub_100007120(&qword_100264FA0, &qword_100264F90, &unk_1001E1BD0, &protocol conformance descriptor for TupleToolbarContent<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1001C0260()
{
  result = qword_1002676D8;
  if (!qword_1002676D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002676D8);
  }

  return result;
}

uint64_t sub_1001C0308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C0374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001C0408()
{
  result = qword_100267758;
  if (!qword_100267758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267758);
  }

  return result;
}

uint64_t sub_1001C045C()
{
  v1 = *(type metadata accessor for MultichoiceRow(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1001C0580()
{
  result = qword_100267770;
  if (!qword_100267770)
  {
    sub_100003E34(&qword_100267768, &qword_1001E1EB0);
    sub_1001C060C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267770);
  }

  return result;
}

unint64_t sub_1001C060C()
{
  result = qword_100267778;
  if (!qword_100267778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267778);
  }

  return result;
}

id sub_1001C0660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (qword_10025A8B0 != -1)
  {
    swift_once();
  }

  v30 = byte_1002773A8;
  *(&v36 + 1) = 0xE000000000000000;
  State.init(wrappedValue:)();
  v29 = FocusState.init<>()();
  v31 = v7;
  v24 = v8;
  swift_getKeyPath();
  v9 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable<A>.subscript.getter();

  v27 = *(&v43 + 1);
  v28 = v43;
  v25 = *(&v44 + 1);
  v26 = v44;
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  *&v36 = v43;
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v43 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v11 = *(v43 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

  if (!v11)
  {
    goto LABEL_9;
  }

  v23 = v10;
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  *&v36 = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v43 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
  {

LABEL_9:
    (*(*(v9 - 8) + 8))(a4, v9);
    goto LABEL_10;
  }

  v12 = *(v43 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  result = [v12 answerOptions];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 containsObject:v15];

  (*(*(v9 - 8) + 8))(a4, v9);
  if ((v16 & 1) == 0)
  {

    v17 = 0;
    v18 = v23;
    goto LABEL_11;
  }

LABEL_10:
  v11 = *(&v43 + 1);
  v17 = v44;
  v18 = v43;
LABEL_11:
  *&v36 = 64;
  v19 = 10.0;
  if (v30)
  {
    v19 = 16.0;
  }

  *(&v36 + 1) = v19;
  *&v37 = 0x4049000000000000;
  *(&v37 + 1) = a1;
  *&v38 = a2;
  BYTE8(v38) = a3 & 1;
  *(&v38 + 9) = v60[0];
  HIDWORD(v38) = *(v60 + 3);
  v39 = v43;
  v40 = v44;
  *&v41 = v18;
  *(&v41 + 1) = v11;
  *v42 = v17;
  v42[8] = v29 & 1;
  *&v42[12] = *&v59[3];
  *&v42[9] = *v59;
  *&v42[16] = v31;
  v42[24] = v24 & 1;
  *&v43 = 64;
  *(&v43 + 1) = v19;
  *&v44 = 0x4049000000000000;
  *(&v44 + 1) = a1;
  v45 = a2;
  v46 = a3 & 1;
  *v47 = v60[0];
  *&v47[3] = *(v60 + 3);
  v48 = v28;
  v49 = v27;
  v50 = v26;
  v51 = v25;
  v52 = v18;
  v53 = v11;
  v54 = v17;
  v55 = v29 & 1;
  *&v56[3] = *&v59[3];
  *v56 = *v59;
  v57 = v31;
  v58 = v24 & 1;
  sub_1001C0AC8(&v36, v35);
  result = sub_1001C0B00(&v43);
  v20 = v41;
  a5[4] = v40;
  a5[5] = v20;
  a5[6] = *v42;
  *(a5 + 105) = *&v42[9];
  v21 = v37;
  *a5 = v36;
  a5[1] = v21;
  v22 = v39;
  a5[2] = v38;
  a5[3] = v22;
  return result;
}

uint64_t sub_1001C0B50()
{
  v1 = *(type metadata accessor for MultichoiceRow(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  (*(*(v6 - 8) + 8))(v5, v6);

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

double sub_1001C0C68()
{
  v1 = *(type metadata accessor for MultichoiceRow(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001B2F08(*(v0 + v2), *(v0 + v2 + 8), *(v0 + ((v2 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001C0D68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001C0DD4()
{
  result = qword_100267848;
  if (!qword_100267848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267848);
  }

  return result;
}

uint64_t sub_1001C0E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001C0E70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001C0ED0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001C0EF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C0F3C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1001C0FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnevenRoundedRectangle();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1001C1070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnevenRoundedRectangle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001C1110(uint64_t a1)
{
  result = type metadata accessor for UnevenRoundedRectangle();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001C11A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1001C128C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1001C1358(uint64_t a1)
{
  sub_1001BF9E4(319);
  if (v1 <= 0x3F)
  {
    sub_1001C16C0(319, &qword_10025DE40, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_1001C16C0(319, &qword_10025B4B0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1000275C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1001C146C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001C153C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001C15EC(uint64_t a1)
{
  sub_1001BF9E4(319);
  if (v1 <= 0x3F)
  {
    sub_1001C16C0(319, &qword_10025DE40, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_1001C16C0(319, &unk_100267A00, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C16C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1001C171C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1001C1748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_1001C1790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001C1800(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001C182C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1001C1874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001C1938()
{
  result = qword_100267A50;
  if (!qword_100267A50)
  {
    sub_100003E34(&qword_100267A58, &qword_1001E21B0);
    sub_100007120(&qword_1002677D0, &qword_1002677C8, &qword_1001E1F28, &protocol conformance descriptor for HStack<A>);
    sub_100007120(&qword_1002677D8, &qword_1002677B8, &qword_1001E1F18, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267A50);
  }

  return result;
}

unint64_t sub_1001C1A20()
{
  result = qword_100267A60;
  if (!qword_100267A60)
  {
    sub_100003E34(&qword_100267A68, qword_1001E21B8);
    sub_100007120(&qword_100267828, &qword_100267818, &qword_1001E1F58, &protocol conformance descriptor for HStack<A>);
    sub_100007120(&qword_100267830, &qword_100267820, &qword_1001E1F60, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267A60);
  }

  return result;
}

uint64_t sub_1001C1C2C()
{

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_1001C1CEC()
{
  result = qword_100267AF0;
  if (!qword_100267AF0)
  {
    sub_100003E34(&qword_100267AD0, &qword_1001E24F8);
    sub_1001C1DA4();
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267AF0);
  }

  return result;
}

unint64_t sub_1001C1DA4()
{
  result = qword_100267AF8;
  if (!qword_100267AF8)
  {
    sub_100003E34(&qword_100267AC8, &qword_1001E24F0);
    sub_1001C1E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267AF8);
  }

  return result;
}

unint64_t sub_1001C1E30()
{
  result = qword_100267B00;
  if (!qword_100267B00)
  {
    sub_100003E34(&qword_100267AC0, &qword_1001E24E8);
    sub_100003E34(&qword_10025CB20, &qword_1001D1E40);
    sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40, &protocol conformance descriptor for TextField<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267B00);
  }

  return result;
}

uint64_t sub_1001C1F2C(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 137, 7);
}

unint64_t sub_1001C2000()
{
  result = qword_100267B10;
  if (!qword_100267B10)
  {
    sub_100003E34(&qword_100267AE0, &qword_1001E2508);
    sub_100003E34(&qword_100267AD0, &qword_1001E24F8);
    sub_1001C1CEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267B10);
  }

  return result;
}

unint64_t sub_1001C20DC()
{
  result = qword_100267B50;
  if (!qword_100267B50)
  {
    sub_100003E34(&qword_100267B30, &qword_1001E2538);
    sub_1001C2194();
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267B50);
  }

  return result;
}

unint64_t sub_1001C2194()
{
  result = qword_100267B58;
  if (!qword_100267B58)
  {
    sub_100003E34(&qword_100267B28, &qword_1001E2530);
    sub_100007120(&qword_100267B60, &qword_100267B68, &qword_1001E2558, &protocol conformance descriptor for HStack<A>);
    sub_100007120(&qword_100267B70, &qword_100267B48, &qword_1001E2550, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267B58);
  }

  return result;
}

uint64_t sub_1001C22BC()
{
  sub_10000F4B4((v0 + 16));

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_1001C2314()
{
  result = qword_100267BC8;
  if (!qword_100267BC8)
  {
    sub_100003E34(&qword_100267BA0, &qword_1001E25A0);
    sub_10013183C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267BC8);
  }

  return result;
}

unint64_t sub_1001C23A0()
{
  result = qword_100267BD0;
  if (!qword_100267BD0)
  {
    sub_100003E34(&qword_100267BC0, &unk_1001E25C0);
    sub_1001C242C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267BD0);
  }

  return result;
}

unint64_t sub_1001C242C()
{
  result = qword_100267BD8;
  if (!qword_100267BD8)
  {
    sub_100003E34(&qword_100267BB8, &qword_1001E25B8);
    sub_1001C24E4();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267BD8);
  }

  return result;
}

unint64_t sub_1001C24E4()
{
  result = qword_100267BE0;
  if (!qword_100267BE0)
  {
    sub_100003E34(&qword_100267BB0, &qword_1001E25B0);
    sub_100003E34(&qword_100267BA0, &qword_1001E25A0);
    sub_1001C2314();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&qword_100267B70, &qword_100267B48, &qword_1001E2550, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267BE0);
  }

  return result;
}

unint64_t sub_1001C25D8()
{
  result = qword_100267C80;
  if (!qword_100267C80)
  {
    sub_100003E34(&qword_100267C58, &qword_1001E2640);
    sub_1001C2690();
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267C80);
  }

  return result;
}

unint64_t sub_1001C2690()
{
  result = qword_100267C88;
  if (!qword_100267C88)
  {
    sub_100003E34(&qword_100267C90, &qword_1001E2668);
    sub_1001C271C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267C88);
  }

  return result;
}

unint64_t sub_1001C271C()
{
  result = qword_100267C98;
  if (!qword_100267C98)
  {
    sub_100003E34(&qword_100267CA0, &qword_1001E2670);
    sub_100007120(&qword_100267CA8, &qword_100267CB0, &qword_1001E2678, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267C98);
  }

  return result;
}

uint64_t sub_1001C2804(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1001C2880()
{
  result = qword_100267CC8;
  if (!qword_100267CC8)
  {
    sub_100003E34(&qword_100267C38, &qword_1001E2620);
    sub_100007120(&qword_100267CD0, &qword_100267CD8, &qword_1001E2690, &protocol conformance descriptor for HStack<A>);
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267CC8);
  }

  return result;
}

uint64_t sub_1001C2964()
{
  v1 = type metadata accessor for PickerRowCoreInline(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001C2B18(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_1001C2BB0()
{
  result = qword_100267D00;
  if (!qword_100267D00)
  {
    sub_100003E34(&qword_100267C08, &qword_1001E25F0);
    sub_100007120(&qword_100267D08, &qword_100267D10, &qword_1001E26B0, &protocol conformance descriptor for HStack<A>);
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267D00);
  }

  return result;
}

unint64_t sub_1001C2CF4()
{
  result = qword_100267D58;
  if (!qword_100267D58)
  {
    sub_100003E34(&qword_100267D38, &qword_1001E2700);
    sub_1001C2DAC();
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267D58);
  }

  return result;
}

unint64_t sub_1001C2DAC()
{
  result = qword_100267D60;
  if (!qword_100267D60)
  {
    sub_100003E34(&qword_100267D68, &qword_1001E2720);
    sub_100007120(&qword_100267D70, &qword_100267D78, &qword_1001E2728, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267D60);
  }

  return result;
}

uint64_t sub_1001C2E64()
{
  v1 = type metadata accessor for PickerRowCoreInline(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v1 + 20);
  v7 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

void *sub_1001C2FD0()
{
  v1 = *(type metadata accessor for PickerRowCoreInline(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1001BC884(v0 + v2, v4, v5);
}

unint64_t sub_1001C3060()
{
  result = qword_100267D98;
  if (!qword_100267D98)
  {
    sub_100003E34(&qword_100267D90, &qword_1001E2748);
    sub_1001C30EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267D98);
  }

  return result;
}

unint64_t sub_1001C30EC()
{
  result = qword_100267DA0;
  if (!qword_100267DA0)
  {
    sub_100003E34(&qword_100267DA8, &qword_1001E2750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267DA0);
  }

  return result;
}

uint64_t sub_1001C319C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001C3200()
{
  result = qword_100267DF8;
  if (!qword_100267DF8)
  {
    sub_100003E34(&qword_100267DF0, &qword_1001E2798);
    sub_1001C328C();
    sub_1001C0408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267DF8);
  }

  return result;
}

unint64_t sub_1001C328C()
{
  result = qword_100267E00;
  if (!qword_100267E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267E00);
  }

  return result;
}

uint64_t sub_1001C32F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001C334C()
{
  v1 = (type metadata accessor for PickerRowCore(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1001C3470(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PickerRowCore(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1001B859C(a1, a2, v6);
}

unint64_t sub_1001C34F0()
{
  result = qword_100267E40;
  if (!qword_100267E40)
  {
    sub_100003E34(&qword_100267E20, &qword_1001E27B0);
    sub_1001C35A8();
    sub_100007120(&qword_100267E58, &qword_100267E60, &qword_1001E27F8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267E40);
  }

  return result;
}

unint64_t sub_1001C35A8()
{
  result = qword_100267E48;
  if (!qword_100267E48)
  {
    sub_100003E34(&qword_100267E18, &qword_1001E27A8);
    sub_100007120(&qword_100267E50, &qword_100267E10, &qword_1001E27A0, &protocol conformance descriptor for Picker<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267E48);
  }

  return result;
}

unint64_t sub_1001C36E0()
{
  result = qword_100267F10;
  if (!qword_100267F10)
  {
    sub_100003E34(&qword_100267EF0, &qword_1001E2888);
    sub_1001C3798();
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F10);
  }

  return result;
}

unint64_t sub_1001C3798()
{
  result = qword_100267F18;
  if (!qword_100267F18)
  {
    sub_100003E34(&qword_100267EE8, &qword_1001E2880);
    sub_1001C3824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F18);
  }

  return result;
}

unint64_t sub_1001C3824()
{
  result = qword_100267F20;
  if (!qword_100267F20)
  {
    sub_100003E34(&qword_100267EE0, &qword_1001E2878);
    sub_100003E34(&qword_100267ED8, &qword_1001E2870);
    sub_100003E34(&qword_10025CB20, &qword_1001D1E40);
    type metadata accessor for RoundedBorderTextFieldStyle();
    sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40, &protocol conformance descriptor for TextField<A>);
    sub_1001C0124(&qword_100267F08, &type metadata accessor for RoundedBorderTextFieldStyle, &protocol conformance descriptor for RoundedBorderTextFieldStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F20);
  }

  return result;
}

uint64_t sub_1001C39B4(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 121, 7);
}

unint64_t sub_1001C3A8C()
{
  result = qword_100267F50;
  if (!qword_100267F50)
  {
    sub_100003E34(&qword_100267F28, &qword_1001E28D8);
    sub_1001C3B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F50);
  }

  return result;
}

unint64_t sub_1001C3B18()
{
  result = qword_100267F58;
  if (!qword_100267F58)
  {
    sub_100003E34(&qword_100267F48, &qword_1001E2928);
    sub_100007120(&qword_100267F60, &qword_100267F40, &qword_1001E2920, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&qword_100267F68, &qword_100267F70, &qword_1001E2930, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F58);
  }

  return result;
}

uint64_t sub_1001C3C68()
{
  sub_100003E34(&qword_100267B38, &qword_1001E2540);
  sub_100003E34(&qword_100267B20, &unk_1001E2520);
  sub_100003E34(&qword_100267B30, &qword_1001E2538);
  type metadata accessor for AutomaticHoverEffect();
  sub_1001C20DC();
  sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_100267B90, &qword_100267B20, &unk_1001E2520, &protocol conformance descriptor for _EndedGesture<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001C3DB8()
{
  sub_100003E34(&qword_100267BC0, &unk_1001E25C0);
  type metadata accessor for AutomaticHoverEffect();
  sub_1001C23A0();
  sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1001C3E70()
{
  result = qword_100267F90;
  if (!qword_100267F90)
  {
    sub_100003E34(&qword_100267F98, &qword_1001E29B0);
    sub_1001C3EFC();
    sub_1001C3FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F90);
  }

  return result;
}

unint64_t sub_1001C3EFC()
{
  result = qword_100267FA0;
  if (!qword_100267FA0)
  {
    sub_100003E34(&qword_100267BF0, &qword_1001E25D8);
    sub_100007120(&qword_100267FA8, &qword_100267FB0, &qword_1001E29B8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FA0);
  }

  return result;
}

unint64_t sub_1001C3FB4()
{
  result = qword_100267FB8;
  if (!qword_100267FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FB8);
  }

  return result;
}

uint64_t sub_1001C4008()
{
  sub_100003E34(&qword_100267DB8, &qword_1001E2768);
  sub_100007120(&qword_100267DC8, &qword_100267DB8, &qword_1001E2768, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001C413C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_1001C0124(&qword_1002676D0, type metadata accessor for CommonUIBlendModifier, &unk_1001DB358);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001C41F0()
{
  result = qword_100267FD8;
  if (!qword_100267FD8)
  {
    sub_100003E34(&qword_100267EC0, &qword_1001E2858);
    sub_100007120(&qword_100267FE0, &qword_100267EC8, &qword_1001E2860, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FD8);
  }

  return result;
}

unint64_t sub_1001C42D8()
{
  result = qword_100267FE8;
  if (!qword_100267FE8)
  {
    sub_100003E34(&qword_100267F00, &qword_1001E2898);
    sub_100003E34(&qword_100267EF0, &qword_1001E2888);
    sub_1001C36E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FE8);
  }

  return result;
}

unint64_t sub_1001C43A4()
{
  result = qword_100267FF0;
  if (!qword_100267FF0)
  {
    sub_100003E34(&qword_100267F78, &qword_1001E2968);
    sub_1001C4430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FF0);
  }

  return result;
}

unint64_t sub_1001C4430()
{
  result = qword_100267FF8;
  if (!qword_100267FF8)
  {
    sub_100003E34(&qword_100267F38, &qword_1001E28E8);
    sub_100003E34(&qword_100267F28, &qword_1001E28D8);
    sub_1001C3A8C();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FF8);
  }

  return result;
}

__n128 sub_1001C45A4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1001C45E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C4630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C46D8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v10, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1001C4834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v59 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosPickerSelectionBehavior();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_100262F50, &qword_1001DA0D8);
  __chkstk_darwin(v7 - 8);
  v71 = &v51 - v8;
  v72 = sub_10000341C(&qword_100268000, &qword_1001E2B60);
  v57 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v51 - v9;
  v10 = sub_10000341C(&qword_100268008, &qword_1001E2B68);
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10);
  v73 = &v51 - v11;
  v12 = sub_10000341C(&qword_100268010, &qword_1001E2B70);
  v66 = *(v12 - 8);
  v67 = v12;
  __chkstk_darwin(v12);
  v74 = &v51 - v13;
  v14 = static Alignment.center.getter();
  v16 = v15;
  sub_1001C5384(v2, &v76);
  v110 = v84;
  v111 = v85;
  v106 = v80;
  v107 = v81;
  v108 = v82;
  v109 = v83;
  v102 = v76;
  v103 = v77;
  v104 = v78;
  v105 = v79;
  v113[8] = v84;
  v113[9] = v85;
  v113[4] = v80;
  v113[5] = v81;
  v113[6] = v82;
  v113[7] = v83;
  v113[0] = v76;
  v113[1] = v77;
  v112 = v86;
  v114 = v86;
  v113[2] = v78;
  v113[3] = v79;
  sub_1000081F8(&v102, v126, &qword_100268018, &unk_1001E2B78);
  sub_10000F500(v113, &qword_100268018, &unk_1001E2B78);
  v123 = v110;
  v124 = v111;
  v125 = v112;
  v119 = v106;
  v120 = v107;
  v122 = v109;
  v121 = v108;
  v115 = v102;
  v116 = v103;
  v118 = v105;
  v117 = v104;
  v17 = static Edge.Set.all.getter();
  LOBYTE(v75) = 1;
  *&v87 = v14;
  *(&v87 + 1) = v16;
  v96 = v123;
  v97 = v124;
  LOWORD(v98) = v125;
  v92 = v119;
  v93 = v120;
  v94 = v121;
  v95 = v122;
  v88 = v115;
  v89 = v116;
  v90 = v117;
  v91 = v118;
  BYTE8(v98) = v17;
  v99 = 0u;
  v100 = 0u;
  v101 = 1;
  v126[0] = *(v2 + 120);
  v69 = sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  if (qword_10025A758 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  v19 = v2[13];
  v18[13] = v2[12];
  v18[14] = v19;
  v18[15] = v2[14];
  v20 = v2[9];
  v18[9] = v2[8];
  v18[10] = v20;
  v21 = v2[11];
  v18[11] = v2[10];
  v18[12] = v21;
  v22 = v2[5];
  v18[5] = v2[4];
  v18[6] = v22;
  v23 = v2[7];
  v18[7] = v2[6];
  v18[8] = v23;
  v24 = v2[1];
  v18[1] = *v2;
  v18[2] = v24;
  v25 = v2[3];
  v18[3] = v2[2];
  v18[4] = v25;
  sub_1000700F8(v2, &v76);
  v54 = sub_10000341C(&qword_100268020, &qword_1001E2B88);
  OpaqueTypeConformance2 = sub_1001C69C4();
  View.fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)();

  v126[12] = v99;
  v126[13] = v100;
  v127 = v101;
  v126[8] = v95;
  v126[9] = v96;
  v126[11] = v98;
  v126[10] = v97;
  v126[4] = v91;
  v126[5] = v92;
  v126[7] = v94;
  v126[6] = v93;
  v126[0] = v87;
  v126[1] = v88;
  v126[3] = v90;
  v126[2] = v89;
  sub_10000F500(v126, &qword_100268020, &qword_1001E2B88);
  v87 = *(v2 + 136);
  State.projectedValue.getter();
  v52 = v77;
  v87 = *(v2 + 152);
  v75 = *(v2 + 152);
  v55 = sub_10000341C(&qword_100262FA0, &qword_1001DA120);
  State.projectedValue.getter();
  v53 = v77;
  v26 = v71;
  static PHPickerFilter.images.getter();
  v27 = type metadata accessor for PHPickerFilter();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  v51 = [objc_opt_self() sharedPhotoLibrary];
  v28 = v58;
  static PhotosPickerSelectionBehavior.default.getter();
  v29 = v59;
  static PhotosPickerItem.EncodingDisambiguationPolicy.automatic.getter();
  *&v76 = v54;
  *(&v76 + 1) = OpaqueTypeConformance2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v70;
  View.photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)();

  (*(v62 + 8))(v29, v63);
  (*(v60 + 8))(v28, v61);
  sub_10000F500(v71, &qword_100262F50, &qword_1001DA0D8);
  v31 = v72;
  (*(v57 + 8))(v30, v72);
  v76 = v87;
  State.wrappedValue.getter();
  v32 = swift_allocObject();
  v33 = v2[13];
  v32[13] = v2[12];
  v32[14] = v33;
  v32[15] = v2[14];
  v34 = v2[9];
  v32[9] = v2[8];
  v32[10] = v34;
  v35 = v2[11];
  v32[11] = v2[10];
  v32[12] = v35;
  v36 = v2[5];
  v32[5] = v2[4];
  v32[6] = v36;
  v37 = v2[7];
  v32[7] = v2[6];
  v32[8] = v37;
  v38 = v2[1];
  v32[1] = *v2;
  v32[2] = v38;
  v39 = v2[3];
  v32[3] = v2[2];
  v32[4] = v39;
  sub_1000700F8(v2, &v76);
  v63 = sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  *&v76 = v31;
  *(&v76 + 1) = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_100123FFC();
  v42 = v65;
  v43 = v73;
  View.onChange<A>(of:initial:_:)();

  (*(v64 + 8))(v43, v42);
  v44 = LocalizedStringKey.init(stringLiteral:)();
  v72 = v45;
  v73 = v44;
  LODWORD(v70) = v46;
  v71 = v47;
  v75 = *(v2 + 168);
  State.projectedValue.getter();
  v64 = v76;
  LODWORD(v69) = v77;
  v76 = *(v2 + 184);
  sub_10000341C(&qword_100268040, &qword_1001E2B98);
  State.wrappedValue.getter();
  sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  sub_10000341C(&qword_10025F410, &qword_1001D4370);
  *&v76 = v42;
  *(&v76 + 1) = v63;
  *&v77 = v40;
  *(&v77 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  v48 = v67;
  v49 = v74;
  View.alert<A, B, C>(_:isPresented:presenting:actions:message:)();

  return (*(v66 + 8))(v49, v48);
}

__n128 sub_1001C5384@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v75 = *(a1 + 48);
  v76 = v4;
  v77 = *(a1 + 80);
  v5 = *(a1 + 32);
  *v74 = *(a1 + 16);
  *&v74[16] = v5;
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v84[0] = *v68;
  v84[1] = *&v68[16];
  v85 = *&v68[32];
  v86 = *&v68[48];
  sub_10004C65C(v84);
  if (v85)
  {
    if (v85 != 1)
    {
      v16 = *(a1 + 64);
      v75 = *(a1 + 48);
      v76 = v16;
      v77 = *(a1 + 80);
      v17 = *(a1 + 32);
      *v74 = *(a1 + 16);
      *&v74[16] = v17;
      Binding.projectedValue.getter();
      sub_10000341C(&unk_1002640F0, &qword_1001D3490);
      State.projectedValue.getter();
      type metadata accessor for CompositionModel(0);
      sub_1001C6C0C(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
      v18 = Environment.init<A>(_:)();
      LOBYTE(v42) = v19 & 1;
      *(&v51[4] + 7) = v30;
      *(&v51[3] + 7) = v29;
      *(&v51[2] + 7) = v28;
      *(&v51[1] + 7) = v27;
      *(v51 + 7) = v26;
      *v68 = v18;
      v68[8] = v19 & 1;
      *&v68[25] = v51[1];
      *&v68[9] = v51[0];
      *&v68[88] = *(&v30 + 1);
      *&v68[73] = v51[4];
      *&v68[57] = v51[3];
      *&v68[41] = v51[2];
      v69 = *v74;
      LOBYTE(v70) = v74[16];
      sub_1001C6DE8(v68);
      v65 = v71;
      v66 = v72;
      v67 = v73;
      v61 = *&v68[64];
      v62 = *&v68[80];
      v63 = v69;
      v64 = v70;
      v57 = *v68;
      v58 = *&v68[16];
      v59 = *&v68[32];
      v60 = *&v68[48];
      sub_10000341C(&qword_100268048, &unk_1001E2BF0);
      sub_1001C6DF4();
      sub_1001C6F28();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_7;
    }

    v6 = *(a1 + 64);
    v75 = *(a1 + 48);
    v76 = v6;
    v77 = *(a1 + 80);
    v7 = *(a1 + 32);
    *v74 = *(a1 + 16);
    *&v74[16] = v7;
    Binding.projectedValue.getter();
    *v68 = *(a1 + 120);
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.projectedValue.getter();
    v25 = *v74;
    v8 = *&v74[8];
    v9 = v74[16];
    *v74 = *(a1 + 200);
    *&v74[9] = *(a1 + 209);
    sub_10000341C(&qword_10025CB48, &unk_1001DE2B0);
    FocusState.Binding.projectedValue.getter();
    v10 = *(a1 + 232);
    type metadata accessor for CompositionModel(0);
    sub_1001C6C0C(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    *&v42 = Environment.init<A>(_:)();
    BYTE8(v42) = v11 & 1;
    v45 = v39;
    v46 = v40;
    v47 = v41;
    v43 = v37;
    v44 = v38;
    v48 = __PAIR128__(v8, v25);
    v49[0] = v9;
    *&v49[8] = *v68;
    *&v49[24] = *&v68[16];
    v52 = __PAIR128__(v8, v25);
    v53 = *v49;
    v51[2] = v38;
    v51[3] = v39;
    v51[4] = v40;
    v51[5] = v41;
    LOBYTE(v50) = v68[24];
    *(&v50 + 1) = v10;
    v51[0] = v42;
    v51[1] = v37;
    v54 = *&v49[16];
    v55 = v50;
    sub_1001C6F7C(v51);
    v81 = v54;
    v82 = v55;
    LOBYTE(v83) = v56;
    v77 = v51[4];
    v78 = v51[5];
    v79 = v52;
    v80 = v53;
    *v74 = v51[0];
    *&v74[16] = v51[1];
    v75 = v51[2];
    v76 = v51[3];
    sub_100167A78(&v42, v68);
    sub_1001C6E80();
    sub_1001C6ED4();
    _ConditionalContent<>.init(storage:)();
    v71 = v34;
    v72 = v35;
    LOBYTE(v73) = v36;
    *&v68[64] = v30;
    *&v68[80] = v31;
    v69 = v32;
    v70 = v33;
    *v68 = v26;
    *&v68[16] = v27;
    *&v68[32] = v28;
    *&v68[48] = v29;
    sub_1001C6F88(v68);
    v81 = v71;
    v82 = v72;
    v83 = v73;
    v77 = *&v68[64];
    v78 = *&v68[80];
    v79 = v69;
    v80 = v70;
    *v74 = *v68;
    *&v74[16] = *&v68[16];
    v75 = *&v68[32];
    v76 = *&v68[48];
    sub_10000341C(&qword_100268048, &unk_1001E2BF0);
    sub_1001C6DF4();
    sub_1001C6F28();
    _ConditionalContent<>.init(storage:)();
    sub_1001C6F90(&v42);
  }

  else
  {
    v12 = *(a1 + 64);
    v75 = *(a1 + 48);
    v76 = v12;
    v77 = *(a1 + 80);
    v13 = *(a1 + 32);
    *v74 = *(a1 + 16);
    *&v74[16] = v13;
    Binding.projectedValue.getter();
    *v74 = *(a1 + 200);
    *&v74[9] = *(a1 + 209);
    sub_10000341C(&qword_10025CB48, &unk_1001DE2B0);
    FocusState.Binding.projectedValue.getter();
    v14 = *(a1 + 232);
    type metadata accessor for CompositionModel(0);
    sub_1001C6C0C(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    *&v42 = Environment.init<A>(_:)();
    BYTE8(v42) = v15 & 1;
    v45 = v39;
    v46 = v40;
    v43 = v37;
    v44 = v38;
    v47 = v41;
    v48 = *v68;
    *v49 = *&v68[16];
    v49[8] = v68[24];
    v52 = *v68;
    v53 = *v49;
    v51[2] = v38;
    v51[3] = v39;
    v51[4] = v40;
    v51[5] = v41;
    *&v49[16] = v14;
    *&v54 = v14;
    v51[0] = v42;
    v51[1] = v37;
    sub_1001C6FE4(v51);
    v81 = v54;
    v82 = v55;
    LOBYTE(v83) = v56;
    v77 = v51[4];
    v78 = v51[5];
    v79 = v52;
    v80 = v53;
    *v74 = v51[0];
    *&v74[16] = v51[1];
    v75 = v51[2];
    v76 = v51[3];
    sub_10004C740(&v42, v68);
    sub_1001C6E80();
    sub_1001C6ED4();
    _ConditionalContent<>.init(storage:)();
    v71 = v34;
    v72 = v35;
    LOBYTE(v73) = v36;
    *&v68[64] = v30;
    *&v68[80] = v31;
    v69 = v32;
    v70 = v33;
    *v68 = v26;
    *&v68[16] = v27;
    *&v68[32] = v28;
    *&v68[48] = v29;
    sub_1001C6F88(v68);
    v81 = v71;
    v82 = v72;
    v83 = v73;
    v77 = *&v68[64];
    v78 = *&v68[80];
    v79 = v69;
    v80 = v70;
    *v74 = *v68;
    *&v74[16] = *&v68[16];
    v75 = *&v68[32];
    v76 = *&v68[48];
    sub_10000341C(&qword_100268048, &unk_1001E2BF0);
    sub_1001C6DF4();
    sub_1001C6F28();
    _ConditionalContent<>.init(storage:)();
    sub_1001C6FEC(&v42);
  }

  v81 = v65;
  v82 = v66;
  v83 = v67;
  v77 = v61;
  v78 = v62;
  v79 = v63;
  v80 = v64;
  *v74 = v57;
  *&v74[16] = v58;
  v75 = v59;
  v76 = v60;
LABEL_7:
  v20 = v82;
  *(a2 + 128) = v81;
  *(a2 + 144) = v20;
  *(a2 + 160) = v83;
  v21 = v78;
  *(a2 + 64) = v77;
  *(a2 + 80) = v21;
  v22 = v80;
  *(a2 + 96) = v79;
  *(a2 + 112) = v22;
  v23 = *&v74[16];
  *a2 = *v74;
  *(a2 + 16) = v23;
  result = v76;
  *(a2 + 32) = v75;
  *(a2 + 48) = result;
  return result;
}

double sub_1001C5B28(uint64_t a1, char a2, _OWORD *a3)
{
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  if (a2)
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F34C(v9, qword_100276F08);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    sub_100124674(a1, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "failed to import files: %@", v12, 0xCu);
      sub_10000F500(v13, &unk_10025D580, &qword_1001CFA60);
    }

    v26[0] = *(a3 + 184);
    v27 = a1;
    swift_errorRetain();
    sub_10000341C(&qword_100268040, &qword_1001E2B98);
    State.wrappedValue.setter();
    v26[0] = *(a3 + 168);
    LOBYTE(v27) = 1;
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.wrappedValue.setter();
  }

  else
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    type metadata accessor for MainActor();
    sub_100124680(a1, 0);
    sub_1000700F8(a3, v26);
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    v19 = a3[13];
    *(v18 + 224) = a3[12];
    *(v18 + 240) = v19;
    *(v18 + 256) = a3[14];
    v20 = a3[9];
    *(v18 + 160) = a3[8];
    *(v18 + 176) = v20;
    v21 = a3[11];
    *(v18 + 192) = a3[10];
    *(v18 + 208) = v21;
    v22 = a3[5];
    *(v18 + 96) = a3[4];
    *(v18 + 112) = v22;
    v23 = a3[7];
    *(v18 + 128) = a3[6];
    *(v18 + 144) = v23;
    v24 = a3[1];
    *(v18 + 32) = *a3;
    *(v18 + 48) = v24;
    v25 = a3[3];
    *(v18 + 64) = a3[2];
    *(v18 + 80) = v25;
    *(v18 + 272) = a1;
    sub_10015D2D4(0, 0, v8, &unk_1001E2BE8, v18);
  }

  return result;
}

uint64_t sub_1001C5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[21] = a1;
  type metadata accessor for MainActor();
  v5[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[25] = v7;
  v5[26] = v6;

  return _swift_task_switch(sub_1001C5EF4, v7, v6);
}

uint64_t sub_1001C5EF4()
{
  v1 = *(v0 + 176);
  v2 = sub_1001C46D8();
  swift_getKeyPath();
  *(v0 + 160) = v2;
  sub_1001C6C0C(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 216) = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  *(v0 + 16) = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  *(v0 + 64) = v1[4];
  *(v0 + 80) = v5;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  *(v0 + 224) = v7;

  sub_10004C65C(v0 + 96);
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_1001C6094;
  v9 = *(v0 + 184);

  return sub_100174A44(v9, v6, v7);
}

uint64_t sub_1001C6094(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 240) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return _swift_task_switch(sub_1001C61FC, v4, v3);
}

uint64_t sub_1001C61FC(uint64_t a1, uint64_t a2)
{
  v3 = v2[30];
  v4 = v2[21];

  *v4 = v3;
  v5 = v2[1];

  return v5();
}

uint64_t sub_1001C6268(uint64_t a1)
{
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = *(a1 + 152);
  v6 = *(a1 + 160);
  v24 = v6;
  v25 = v5;
  v21 = v5;
  v22 = v6;
  sub_1000081F8(&v25, &v23, &qword_10025E2D0, &qword_1001D56C0);
  sub_1000081F8(&v24, &v23, &qword_100262FC8, &qword_1001DA138);
  sub_10000341C(&qword_100262FA0, &qword_1001DA120);
  State.wrappedValue.getter();
  v7 = v23[2];

  if (v7)
  {
    v21 = v5;
    v22 = v6;
    State.wrappedValue.getter();
    v8 = v23;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    type metadata accessor for MainActor();
    sub_1000700F8(a1, &v21);
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    v12 = *(a1 + 208);
    *(v11 + 224) = *(a1 + 192);
    *(v11 + 240) = v12;
    *(v11 + 256) = *(a1 + 224);
    v13 = *(a1 + 144);
    *(v11 + 160) = *(a1 + 128);
    *(v11 + 176) = v13;
    v14 = *(a1 + 176);
    *(v11 + 192) = *(a1 + 160);
    *(v11 + 208) = v14;
    v15 = *(a1 + 80);
    *(v11 + 96) = *(a1 + 64);
    *(v11 + 112) = v15;
    v16 = *(a1 + 112);
    *(v11 + 128) = *(a1 + 96);
    *(v11 + 144) = v16;
    v17 = *(a1 + 16);
    *(v11 + 32) = *a1;
    *(v11 + 48) = v17;
    v18 = *(a1 + 48);
    *(v11 + 64) = *(a1 + 32);
    *(v11 + 80) = v18;
    *(v11 + 272) = v8;
    sub_10015C9C8(0, 0, v4, &unk_1001E2BA8, v11);

    v21 = v5;
    v22 = v6;
    v23 = _swiftEmptyArrayStorage;
    State.wrappedValue.setter();
  }

  sub_10000F500(&v25, &qword_10025E2D0, &qword_1001D56C0);
  return sub_10000F500(&v24, &qword_100262FC8, &qword_1001DA138);
}

uint64_t sub_1001C64D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v7;
  v5[25] = v6;

  return _swift_task_switch(sub_1001C6568, v7, v6);
}

uint64_t sub_1001C6568()
{
  v1 = *(v0 + 168);
  v2 = sub_1001C46D8();
  swift_getKeyPath();
  *(v0 + 160) = v2;
  sub_1001C6C0C(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 208) = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  *(v0 + 16) = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  *(v0 + 64) = v1[4];
  *(v0 + 80) = v5;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  *(v0 + 216) = v7;

  sub_10004C65C(v0 + 96);
  v8 = swift_task_alloc();
  *(v0 + 224) = v8;
  *v8 = v0;
  v8[1] = sub_1001C671C;
  v9 = *(v0 + 176);

  return sub_10011B788(v9, v6, v7);
}

uint64_t sub_1001C671C()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_1000248C0, v3, v2);
}

uint64_t sub_1001C687C()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Button<>.init(_:action:)();
}

uint64_t sub_1001C68D8@<X0>(uint64_t a2@<X8>)
{
  swift_getErrorValue();
  Error.localizedDescription.getter();
  sub_10002AC34();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

unint64_t sub_1001C69C4()
{
  result = qword_100268028;
  if (!qword_100268028)
  {
    sub_100003E34(&qword_100268020, &qword_1001E2B88);
    sub_100007120(&qword_100268030, &qword_100268038, &qword_1001E2B90, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268028);
  }

  return result;
}

uint64_t sub_1001C6A7C(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 256, 7);
}

uint64_t sub_1001C6B44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[34];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_1001C64D0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1001C6C0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001C6C58()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_1001C6D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[34];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_1001C5E58(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_1001C6DF4()
{
  result = qword_100268050;
  if (!qword_100268050)
  {
    sub_100003E34(&qword_100268048, &unk_1001E2BF0);
    sub_1001C6E80();
    sub_1001C6ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268050);
  }

  return result;
}

unint64_t sub_1001C6E80()
{
  result = qword_100268058;
  if (!qword_100268058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268058);
  }

  return result;
}

unint64_t sub_1001C6ED4()
{
  result = qword_100268060;
  if (!qword_100268060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268060);
  }

  return result;
}

unint64_t sub_1001C6F28()
{
  result = qword_100268068;
  if (!qword_100268068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268068);
  }

  return result;
}

uint64_t sub_1001C7040()
{
  sub_100003E34(&qword_100268010, &qword_1001E2B70);
  sub_100003E34(&unk_10025DF60, &unk_1001D7CD0);
  sub_100003E34(&qword_10025F410, &qword_1001D4370);
  sub_100003E34(&qword_100268008, &qword_1001E2B68);
  sub_100003E34(&qword_10025E2D0, &qword_1001D56C0);
  sub_100003E34(&qword_100268000, &qword_1001E2B60);
  sub_100003E34(&qword_100268020, &qword_1001E2B88);
  sub_1001C69C4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100123FFC();
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001C7274(int a1, int a2, int a3, int a4)
{
  if (qword_100276CF0 == -1)
  {
    if (qword_100276CF8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1001C773C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100276CF8)
    {
      return _availability_version_check();
    }
  }

  if (qword_100276CE8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1001C7754();
    a3 = v10;
    a4 = v9;
    v8 = dword_100276CD8 < v11;
    if (dword_100276CD8 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100276CDC > a3)
      {
        return 1;
      }

      if (dword_100276CDC >= a3)
      {
        return dword_100276CE0 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100276CD8 < a2;
  if (dword_100276CD8 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1001C7408(uint64_t result)
{
  v1 = qword_100276CF8;
  if (qword_100276CF8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100276CF8 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100276CD8, &dword_100276CDC, &dword_100276CE0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t type metadata accessor for SessionConfiguration()
{
  return type metadata accessor for SessionConfiguration();
}

{
  return type metadata accessor for SessionConfiguration();
}

Swift::String __swiftcall GenerativeExperiencesSession.sessionIdentifier()()
{
  v0 = GenerativeExperiencesSession.sessionIdentifier()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Environment.init<A>(_:)()
{
  return Environment.init<A>(_:)();
}

{
  return Environment.init<A>(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.accessibilityLabel(_:)()
{
  return View.accessibilityLabel(_:)();
}

{
  return View.accessibilityLabel(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t static CustomPromptBuilder.buildExpression(_:)()
{
  return static CustomPromptBuilder.buildExpression(_:)();
}

{
  return static CustomPromptBuilder.buildExpression(_:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t _CocoaArrayWrapper.subscript.getter()
{
  return _CocoaArrayWrapper.subscript.getter();
}

{
  return _CocoaArrayWrapper.subscript.getter();
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}