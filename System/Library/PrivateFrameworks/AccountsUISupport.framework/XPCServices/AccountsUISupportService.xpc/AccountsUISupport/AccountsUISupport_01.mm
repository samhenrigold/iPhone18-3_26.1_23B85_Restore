uint64_t sub_1000123AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v77 = sub_100003288(&qword_100054DD8, "Z&");
  v8 = __chkstk_darwin(v77);
  v71 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v63 - v11;
  v13 = __chkstk_darwin(v10);
  v72 = &v63 - v14;
  v15 = __chkstk_darwin(v13);
  v73 = &v63 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v63 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_69;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_70;
  }

  v23 = (a2 - a1) / v21;
  v80 = a1;
  v79 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v25 < 1)
    {
      v46 = a4 + v25;
    }

    else
    {
      v44 = -v21;
      v45 = a4 + v25;
      v46 = a4 + v25;
      v74 = a4;
      v75 = a1;
      v66 = v44;
      v67 = v12;
      while (2)
      {
        while (1)
        {
          v64 = v46;
          v47 = a2;
          a2 += v44;
          v76 = a2;
          v68 = v47;
          while (1)
          {
            if (v47 <= a1)
            {
              v80 = v47;
              v78 = v64;
              goto LABEL_67;
            }

            v48 = a3;
            v65 = v46;
            v70 = v45;
            v73 = v45 + v44;
            sub_100012D80(v45 + v44, v12);
            v49 = v71;
            sub_100012D80(a2, v71);
            v50 = v72;
            sub_100012D80(v12, v72);
            v51 = v77;
            v52 = *(v77 + 48);
            v69 = sub_100042564();
            v54 = v53;
            v55 = sub_1000423E4();
            v56 = *(*(v55 - 8) + 8);
            v56(v50 + v52, v55);
            sub_100012D80(v49, v50);
            v57 = *(v51 + 48);
            v58 = sub_100042564();
            v60 = v59;
            v56(v50 + v57, v55);
            if (v69 == v58 && v54 == v60)
            {
              v61 = 0;
            }

            else
            {
              v61 = sub_100042BD4();
            }

            v44 = v66;
            a3 += v66;
            sub_10000A800(v71, &qword_100054DD8, "Z&");
            v12 = v67;
            sub_10000A800(v67, &qword_100054DD8, "Z&");
            a1 = v75;
            a2 = v76;
            v62 = v74;
            v45 = v70;
            if (v61)
            {
              break;
            }

            v46 = v73;
            if (v48 < v70 || a3 >= v70)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v70)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v45 = v46;
            v47 = v68;
            if (v73 <= v62)
            {
              a2 = v68;
              goto LABEL_66;
            }
          }

          if (v48 < v68 || a3 >= v68)
          {
            break;
          }

          v46 = v65;
          if (v48 != v68)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v45 <= v62)
          {
            goto LABEL_66;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v46 = v65;
        if (v45 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v80 = a2;
    v78 = v46;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v24;
    v78 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v69 = v21;
      v70 = a3;
      v68 = v19;
      do
      {
        v75 = a1;
        v76 = a2;
        sub_100012D80(a2, v19);
        v74 = a4;
        v27 = v73;
        sub_100012D80(a4, v73);
        v28 = v72;
        sub_100012D80(v19, v72);
        v29 = v77;
        v30 = *(v77 + 48);
        v31 = sub_100042564();
        v33 = v32;
        v34 = sub_1000423E4();
        v35 = *(*(v34 - 8) + 8);
        v35(v28 + v30, v34);
        sub_100012D80(v27, v28);
        v36 = *(v29 + 48);
        v37 = sub_100042564();
        v39 = v38;
        v35(v28 + v36, v34);
        if (v31 == v37 && v33 == v39)
        {

          sub_10000A800(v73, &qword_100054DD8, "Z&");
          v19 = v68;
          sub_10000A800(v68, &qword_100054DD8, "Z&");
          v40 = v75;
        }

        else
        {
          v41 = sub_100042BD4();

          sub_10000A800(v73, &qword_100054DD8, "Z&");
          v19 = v68;
          sub_10000A800(v68, &qword_100054DD8, "Z&");
          v40 = v75;
          if (v41)
          {
            v43 = v69;
            v42 = v70;
            a2 = v76 + v69;
            a4 = v74;
            if (v75 < v76 || v75 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v75 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_35;
          }
        }

        v43 = v69;
        v42 = v70;
        a4 = v74 + v69;
        a2 = v76;
        if (v40 < v74 || v40 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v40 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v79 = a4;
LABEL_35:
        a1 = v40 + v43;
        v80 = a1;
      }

      while (a4 < v71 && a2 < v42);
    }
  }

LABEL_67:
  sub_100012B78(&v80, &v79, &v78);
  return 1;
}

uint64_t sub_100012AD8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100012B64(v3);
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

uint64_t sub_100012B78(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100003288(&qword_100054DD8, "Z&");
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

char *sub_100012C68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054DE8, &qword_100044780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100012D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054DD8, "Z&");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012DF0(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v24 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  __chkstk_darwin(v24);
  v8 = &v23 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v27 = v4;
LABEL_10:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = v26;
    v19 = *(v26 + 48);
    v20 = sub_1000423E4();
    (*(*(v20 - 8) + 16))(v8, v19 + *(*(v20 - 8) + 72) * v17, v20);
    *&v8[*(v24 + 48)] = *(*(v18 + 56) + 8 * v17);

    v21 = v27;
    v22 = v25(v8);
    v4 = v21;
    result = sub_10000A800(v8, &qword_100054DD0, &unk_1000452F0);
    if (v21)
    {
      goto LABEL_14;
    }

    v12 &= v12 - 1;
    if (v22)
    {
      a2 = 1;
LABEL_14:

      return a2 & 1;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      a2 = 0;
      goto LABEL_14;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v27 = v4;
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

char *sub_100012FE4(char *a1, int64_t a2, char a3)
{
  result = sub_1000109C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100013004(void *a1, int64_t a2, char a3)
{
  result = sub_100010AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100013024(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100010CC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100013044(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100010CE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100013064(char *a1, int64_t a2, char a3)
{
  result = sub_100010EEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100013084(char *a1, int64_t a2, char a3)
{
  result = sub_100010FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000130A4(char *a1, int64_t a2, char a3)
{
  result = sub_1000110EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000130C4(uint64_t a1, void *a2, uint64_t a3)
{
  v88 = a3;
  v93 = a2;
  v3 = sub_100041C94();
  __chkstk_darwin(v3 - 8);
  v107 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100041C64();
  __chkstk_darwin(v5 - 8);
  v106 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003288(&qword_100054BD0, &qword_100044388);
  __chkstk_darwin(v7 - 8);
  v105 = v79 - v8;
  v104 = sub_100042184();
  v111 = *(v104 - 8);
  v9 = __chkstk_darwin(v104);
  v103 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = v79 - v11;
  v119 = sub_1000423E4();
  v110 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100003288(&qword_100054DD8, "Z&");
  v109 = *(v101 - 8);
  __chkstk_darwin(v101);
  v116 = v79 - v13;
  v100 = sub_1000422C4();
  v108 = *(v100 - 8);
  __chkstk_darwin(v100);
  v15 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100042114();
  v120 = *(v118 - 8);
  v16 = __chkstk_darwin(v118);
  v99 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v114 = v79 - v19;
  __chkstk_darwin(v18);
  v21 = v79 - v20;
  v22 = sub_100042164();
  v112 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v98 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v113 = v79 - v26;
  __chkstk_darwin(v25);
  v28 = v79 - v27;
  v29 = sub_100003288(&qword_100054E28, &unk_1000447B0);
  __chkstk_darwin(v29 - 8);
  v31 = v79 - v30;
  v32 = sub_100003288(&qword_100054E30, &qword_1000447E0);
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v36 = v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = v79 - v37;
  sub_1000420F4();
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_10000A800(v31, &qword_100054E28, &unk_1000447B0);
    return _swiftEmptyArrayStorage;
  }

  sub_100013DDC(v31, v38);
  v39 = v36;
  sub_10000A744(v38, v36, &qword_100054E30, &qword_1000447E0);
  v40 = *(v32 + 48);
  v41 = v112;
  v42 = *(v112 + 32);
  v115 = v22;
  v42(v28, v39, v22);
  v43 = v120;
  v44 = v120[1];
  v45 = v39 + v40;
  v46 = v118;
  v95 = v120 + 1;
  v94 = v44;
  v44(v45, v118);
  sub_10000A744(v38, v39, &qword_100054E30, &qword_1000447E0);
  (v43[4])(v21, v39 + *(v32 + 48), v46);
  v47 = *(v41 + 8);
  v97 = v41 + 8;
  v96 = v47;
  v47(v39, v115);
  sub_100042104();
  v48 = sub_1000425A4();

  v49 = _swiftEmptyArrayStorage;
  v50 = v43;
  v51 = v111;
  if (v48 >= 3)
  {
    __chkstk_darwin(_swiftEmptyArrayStorage);
    v79[-2] = v21;
    v52 = v93;
    if (sub_100012DF0(sub_1000109A0, &v79[-4], v93))
    {
      v49 = _swiftEmptyArrayStorage;
    }

    else
    {
      v49 = sub_10000FA40(v52);
      if (!v49[2])
      {

        v49 = sub_100010230(v52, v88);
      }
    }

    v50 = v120;
  }

  v53 = v49[2];
  if (!v53)
  {

    v94(v21, v118);
    sub_10000A800(v38, &qword_100054E30, &qword_1000447E0);
    v120 = _swiftEmptyArrayStorage;
LABEL_17:
    v96(v28, v22);
    return v120;
  }

  v121 = _swiftEmptyArrayStorage;
  v93 = v49;
  sub_100013044(0, v53, 0);
  result = v93;
  v87 = v93 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v120 = v121;
  v86 = (v112 + 16);
  v85 = (v50 + 2);
  v84 = (v110 + 16);
  v83 = (v110 + 56);
  v82 = (v51 + 16);
  v81 = (v51 + 8);
  v55 = 0;
  v80 = (v110 + 8);
  v79[1] = v108 + 32;
  v92 = v15;
  v91 = v21;
  v90 = v28;
  v89 = v38;
  v88 = v53;
  while (v55 < result[2])
  {
    v56 = v116;
    sub_10000A744(&v87[*(v109 + 72) * v55], v116, &qword_100054DD8, "Z&");
    v110 = *(v101 + 48);
    v111 = *v86;
    v57 = v113;
    (v111)(v113, v28, v22);
    v112 = v55;
    v58 = *v85;
    v59 = v114;
    v60 = v118;
    (*v85)(v114, v56, v118);
    v61 = *v84;
    v62 = v56 + v110;
    v63 = v117;
    (*v84)(v117, v62, v119);
    (v111)(v98, v57, v115);
    v58(v99, v59, v60);
    v64 = v102;
    sub_100042174();
    v65 = v105;
    v66 = v119;
    v61(v105, v63, v119);
    (*v83)(v65, 0, 1, v66);
    v67 = *v82;
    v69 = v103;
    v68 = v104;
    (*v82)(v103, v64, v104);
    sub_100042584();
    sub_100041C84();
    v70 = v92;
    sub_100041C74();
    v67(v69, v64, v68);
    sub_1000422B4();
    v71 = v64;
    v72 = v120;
    (*v81)(v71, v68);
    v73 = v115;
    (*v80)(v117, v119);
    v94(v114, v118);
    v22 = v73;
    v96(v113, v73);
    sub_10000A800(v116, &qword_100054DD8, "Z&");
    v121 = v72;
    v75 = v72[2];
    v74 = v72[3];
    v120 = v72;
    if (v75 >= v74 >> 1)
    {
      sub_100013044((v74 > 1), v75 + 1, 1);
      v120 = v121;
    }

    v55 = v112 + 1;
    v76 = v120;
    v120[2] = v75 + 1;
    (*(v108 + 32))(v76 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v75, v70, v100);
    v77 = v91;
    v28 = v90;
    v78 = v89;
    result = v93;
    if (v88 == v55)
    {

      v94(v77, v118);
      sub_10000A800(v78, &qword_100054E30, &qword_1000447E0);
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100013DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054E30, &qword_1000447E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s22OnlineValidationActionOMa(uint64_t a1)
{
  result = qword_100054EA8;
  if (!qword_100054EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013EE8(uint64_t a1)
{
  sub_100042384();
  if (v1 <= 0x3F)
  {
    sub_100013F5C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100013F5C()
{
  if (!qword_100054EB8)
  {
    v0 = sub_100042394();
    if (!v1)
    {
      atomic_store(v0, &qword_100054EB8);
    }
  }
}

uint64_t sub_100013FA4(char *a1, uint64_t a2)
{
  v5 = sub_100042334();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v82 = v65 - v10;
  __chkstk_darwin(v9);
  v79 = v65 - v11;
  v80 = sub_100042114();
  v77 = *(v80 - 8);
  v12 = __chkstk_darwin(v80);
  v75 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v78 = v65 - v14;
  v81 = sub_100042164();
  v76 = *(v81 - 8);
  v15 = __chkstk_darwin(v81);
  v74 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v65 - v17;
  v19 = sub_100003288(&qword_100054E28, &unk_1000447B0);
  __chkstk_darwin(v19 - 8);
  v21 = v65 - v20;
  v22 = sub_100003288(&qword_100054E30, &qword_1000447E0);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v65 - v27;
  sub_1000420F4();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000A800(v21, &qword_100054E28, &unk_1000447B0);
    (*(v83 + 104))(a1, enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:), v84);
    v29 = sub_100042184();
    return (*(*(v29 - 8) + 16))(a2, v2, v29);
  }

  else
  {
    v70 = a1;
    v71 = a2;
    v67 = v2;
    sub_100013DDC(v21, v28);
    sub_1000153FC(v28, v26);
    v31 = *(v22 + 48);
    v32 = v76;
    v33 = v81;
    (*(v76 + 32))(v18, v26, v81);
    v34 = v77;
    v35 = v18;
    v36 = v77 + 8;
    v37 = &v26[v31];
    v38 = v80;
    v69 = *(v77 + 8);
    v69(v37, v80);
    sub_1000153FC(v28, v26);
    (*(v34 + 32))(v78, &v26[*(v22 + 48)], v38);
    v68 = *(v32 + 8);
    v68(v26, v33);
    v72 = v35;
    sub_1000147DC(v79);
    sub_100014AF8(v82);
    v39 = enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:);
    v41 = v83;
    v40 = v84;
    v42 = *(v83 + 104);
    v42(v8, enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:), v84);
    LOBYTE(v33) = sub_100042324();
    v73 = *(v41 + 8);
    v73(v8, v40);
    if (v33)
    {
      v65[1] = v36;
      v66 = v28;
      v43 = v72;
      v45 = v83;
      v44 = v84;
      v42(v8, v39, v84);
      v46 = sub_100042324();
      v73(v8, v44);
      if (v46)
      {
        v47 = v84;
        v48 = v73;
        v73(v82, v84);
        v48(v79, v47);
        v69(v78, v80);
        v68(v43, v81);
        sub_10000A800(v66, &qword_100054E30, &qword_1000447E0);
        v42(v70, v39, v47);
        v49 = sub_100042184();
        return (*(*(v49 - 8) + 16))(v71, v67, v49);
      }

      v56 = v82;
      v57 = v84;
      (*(v45 + 16))(v70, v82, v84);
      v58 = v43;
      v59 = v43;
      v60 = v81;
      (*(v76 + 16))(v74, v59, v81);
      v61 = v78;
      v62 = v80;
      (*(v77 + 16))(v75, v78, v80);
      sub_100042174();
      v63 = v56;
      v64 = v73;
      v73(v63, v57);
      v64(v79, v57);
      v69(v61, v62);
      v68(v58, v60);
      v55 = v66;
    }

    else
    {
      v50 = v84;
      v51 = v79;
      (*(v83 + 16))(v70, v79, v84);
      (*(v76 + 16))(v74, v72, v81);
      v52 = v78;
      v53 = v80;
      (*(v77 + 16))(v75, v78, v80);
      sub_100042174();
      v54 = v73;
      v73(v82, v50);
      v54(v51, v50);
      v69(v52, v53);
      v68(v72, v81);
      v55 = v28;
    }

    return sub_10000A800(v55, &qword_100054E30, &qword_1000447E0);
  }
}

unint64_t sub_1000147DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100042164();
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v6 = sub_100042574();
  v8 = v7;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v23 = &enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButSuspicious(_:);
LABEL_36:

    v24 = *v23;
    v25 = sub_100042334();
    return (*(*(v25 - 8) + 104))(a1, v24, v25);
  }

  v10 = v6;
  v27 = a1;
  v11 = 4 * v9;
  v12 = (v6 >> 59) & 1;
  if ((v7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  result = 15;
  v15 = 1;
  while (1)
  {
    v16 = v15;
    v17 = result & 0xC;
    v18 = result;
    if (v17 == v13)
    {
      v22 = result;
      v18 = sub_100008F78(result, v10, v8);
      result = v22;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v9)
    {
      break;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {
      v26 = result;
      v21 = sub_100042604();
      result = v26;
      if (v17 != v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
        v28[0] = v10;
        v28[1] = v8 & 0xFFFFFFFFFFFFFFLL;
        v20 = v28;
      }

      else
      {
        v20 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v10 & 0x1000000000000000) == 0)
        {
          v26 = result;
          v20 = sub_1000429A4();
          result = v26;
        }
      }

      v21 = *(v20 + v19);
      if (v17 != v13)
      {
LABEL_18:
        if ((v8 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_100008F78(result, v10, v8);
    if ((v8 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v9 <= result >> 16)
    {
      goto LABEL_38;
    }

    result = sub_1000425E4();
LABEL_24:
    v15 = v21 == 46;
    if (v21 == 46)
    {
      if (v16 || v11 == result >> 14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if ((v21 - 58) <= 0xF5u && (v21 - 123) <= 0xE5u && (v21 - 91) <= 0xE5u && (v21 - 33 > 0x3F || ((1 << (v21 - 33)) & 0xE00000005000567DLL) == 0) && v21 - 123 >= 4 && (v21 & 0x80) == 0)
      {
LABEL_34:
        v23 = &enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButSuspicious(_:);
        a1 = v27;
        goto LABEL_36;
      }

      if (v11 == result >> 14)
      {
        a1 = v27;
        v23 = &enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:);
        goto LABEL_36;
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100014AF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100042114();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v38 - v10;
  __chkstk_darwin(v9);
  v13 = v38 - v12;
  v14 = sub_100042104();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = *(v5 + 16);
    v18(v13, v2, v4);
    v18(v11, v13, v4);
    v38[0] = sub_100042564();
    v38[1] = v19;
    sub_100009BAC();
    v20 = sub_100042894();
    v22 = v21;

    v23 = sub_1000183A8(v20, v22);
    v25 = v24;

    v26 = *(v5 + 8);
    v26(v13, v4);
    if (sub_10001546C(v23, v25))
    {
      sub_100017DB4(v23, v25);
      v28 = v27;

      if (v28)
      {
        sub_100042124();
        v26(v2, v4);
        (*(v5 + 32))(v2, v8, v4);
        v29 = &enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:);
      }

      else
      {
        v29 = &enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:);
      }

      v36 = *v29;
      v37 = sub_100042334();
      return (*(*(v37 - 8) + 104))(a1, v36, v37);
    }

    else
    {
      v34 = enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:);
      v35 = sub_100042334();
      (*(*(v35 - 8) + 104))(a1, v34, v35);
    }
  }

  else
  {
    v30 = enum case for PreliminaryInformation.Validated.EmailAddressStatus.empty(_:);
    v31 = sub_100042334();
    v32 = *(*(v31 - 8) + 104);

    return v32(a1, v30, v31);
  }
}

uint64_t sub_100014E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100042394();
  __chkstk_darwin(v3 - 8);
  v32 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100042184();
  v5 = *(v31 - 8);
  v6 = __chkstk_darwin(v31);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v30 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v30 - v13;
  __chkstk_darwin(v12);
  v16 = v30 - v15;
  v34 = sub_100042334();
  v17 = *(v34 - 8);
  v18 = __chkstk_darwin(v34);
  v30[0] = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v30 - v20;
  v30[1] = a1;
  sub_1000422E4();
  sub_100042154();
  if (sub_100042144())
  {
    v22 = *(v5 + 8);
    v23 = v14;
    v24 = v31;
    v22(v23, v31);
    (*(v17 + 104))(v21, enum case for PreliminaryInformation.Validated.EmailAddressStatus.empty(_:), v34);
    (*(v5 + 32))(v16, v11, v24);
  }

  else
  {
    sub_100013FA4(v21, v16);
    v22 = *(v5 + 8);
    v25 = v11;
    v26 = v31;
    v22(v25, v31);
    v27 = v14;
    v24 = v26;
    v22(v27, v26);
  }

  (*(v5 + 16))(v8, v16, v24);
  sub_1000422F4();
  sub_1000422D4();
  v28 = v34;
  (*(v17 + 16))(v30[0], v21, v34);
  sub_100042364();
  v22(v16, v24);
  return (*(v17 + 8))(v21, v28);
}

uint64_t sub_1000151F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100042334();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100042344();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButDomainNotFound(_:))
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (v7 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.empty(_:))
    {
      _s22OnlineValidationActionOMa(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v7 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:))
    {
      v8 = sub_100042384();
      (*(*(v8 - 8) + 16))(a1, v1, v8);
      _s22OnlineValidationActionOMa(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v7 != enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButSuspicious(_:) && v7 != enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:))
    {
      _s22OnlineValidationActionOMa(0);
      swift_storeEnumTagMultiPayload();
      return (*(v4 + 8))(v6, v3);
    }
  }

  sub_100042374();
  _s22OnlineValidationActionOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000153FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054E30, &qword_1000447E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001546C(uint64_t a1, unint64_t a2)
{
  if (sub_1000425A4() > 253)
  {
    return 0;
  }

  result = sub_100017650(0x7FFFFFFFFFFFFFFFLL, 0, a1, a2, v4);
  v6 = result;
  v7 = *(result + 16);
  if (v7 < 2)
  {
LABEL_3:

    return 0;
  }

  v8 = 0;
  v9 = (result + 56);
  while (v8 < *(v6 + 16))
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *(v9 - 3);
    v13 = v11;
    v14 = v10;
    result = sub_100015544(&v12);
    if ((result & 1) == 0)
    {
      goto LABEL_3;
    }

    ++v8;
    v9 += 4;
    if (v7 == v8)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100015544(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_100042854() < 1 || sub_100042854() > 63)
  {
    return 0;
  }

  if (v2 >> 14 == v1 >> 14)
  {
    return 1;
  }

  if (sub_100042864() != 45 || v4 != 0xE100000000000000)
  {
    v5 = sub_100042BD4();

    if (v5)
    {
      return 0;
    }

    sub_100042834();
    if (sub_100042864() != 45 || v6 != 0xE100000000000000)
    {
      v7 = sub_100042BD4();

      if (v7)
      {
        return 0;
      }

      while (1)
      {
        v8 = sub_100042864();
        v10 = v9;
        v11 = sub_100042824();
        if (v8 == 2573 && v10 == 0xE200000000000000)
        {
          break;
        }

        v12 = v11;
        result = sub_100042BD4();
        if (result)
        {
          break;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v13 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v13 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (!v13)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          return result;
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v18 = sub_100042534();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v15 = v8;
          }

          else
          {
            if ((v8 & 0x1000000000000000) != 0)
            {
              v14 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v14 = sub_1000429A4();
            }

            v15 = *v14;
          }

          v16 = v15;
          v17 = (__clz(~v15) - 24) << 16;
          if (v16 < 0)
          {
            v18 = v17;
          }

          else
          {
            v18 = 65541;
          }
        }

        if (v18 >> 14 != 4 * v13)
        {
          break;
        }

        result = sub_10000CD9C(v8, v10);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_47;
        }

        if ((result & 0xFFFFFF80) != 0)
        {
          break;
        }

        result = sub_10000CD9C(v8, v10);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v19 = result;

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_46;
        }

        if (v19 - 123 <= 0xFFFFFFE5)
        {
          if (v19 <= 0x2Fu)
          {
            if (v19 != 45)
            {
              return 0;
            }
          }

          else if (v19 >= 0x3Au)
          {
            return 0;
          }
        }

        result = 1;
        if (v2 >> 14 == v12 >> 14)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100015850(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_1000420C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_10000A744(v1, &v11 - v8, &qword_100054A68, &qword_100043BB0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v13, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v13;
  }

  return result;
}

uint64_t NSHTTPURLResponse.subscript.getter(unsigned __int8 a1)
{
  Request.HeaderField.rawValue.getter(a1);
  v2 = sub_100042504();
  v4 = v3;

  v5 = [v1 allHeaderFields];
  v6 = sub_100042474();

  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v14 = &qword_100054EE8;
  v25 = v6;
  while (v10)
  {
LABEL_11:
    v16 = __clz(__rbit64(v10)) | (v13 << 6);
    sub_100004780(*(v6 + 48) + 40 * v16, &v33);
    sub_100015DA4(*(v6 + 56) + 32 * v16, v35 + 8);
    v31 = v35[1];
    v32 = v36;
    v29 = v34;
    v30 = v35[0];
    v28 = v33;
    v17 = v14;
    sub_10000A744(&v28, v26, v14, &qword_1000447E8);
    if (swift_dynamicCast())
    {
      sub_100004BD8(v27);
      v18 = v2;
      v19 = v4;
      v20 = sub_100042504();
      v22 = v21;

      v23 = v20;
      v4 = v19;
      v2 = v18;
      if (v23 == v18 && v22 == v4)
      {

LABEL_21:

        v39 = v30;
        v40 = v31;
        v41 = v32;
        v37 = v28;
        v38 = v29;

        if (*(&v38 + 1))
        {
          sub_100003278((&v39 + 8), &v33);
          sub_10000472C(&v37);
          if (*(&v34 + 1))
          {
            if (swift_dynamicCast())
            {
              return v37;
            }

            else
            {
              return 0;
            }
          }
        }

        else
        {
LABEL_17:
          sub_10000A800(&v37, &qword_100054EF0, &qword_1000447F0);
          v33 = 0u;
          v34 = 0u;
        }

        sub_10000A800(&v33, &qword_100054EF8, &qword_1000447F8);
        return 0;
      }

      v24 = sub_100042BD4();

      if (v24)
      {

        goto LABEL_21;
      }
    }

    else
    {
      sub_100004BD8(v27);
    }

    v10 &= v10 - 1;
    v14 = v17;
    result = sub_10000A800(&v28, v17, &qword_1000447E8);
    v6 = v25;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0;

      goto LABEL_17;
    }

    v10 = *(v7 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100015DA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100015E00@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31 = a1;
  v29 = a3;
  v32 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  v28 = *(v32 - 8);
  v6 = __chkstk_darwin(v32);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v30 = &v28 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v33 = a2;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v34 = v4;
      v17 = v16;
LABEL_9:
      v18 = __clz(__rbit64(v13)) | (v17 << 6);
      v19 = v33;
      v20 = *(v33 + 48);
      v21 = sub_1000423E4();
      v22 = *(v21 - 8);
      v23 = v20 + *(v22 + 72) * v18;
      v24 = v30;
      (*(v22 + 16))(v30, v23, v21);
      *(v24 + *(v32 + 48)) = *(*(v19 + 56) + 8 * v18);
      sub_1000174A8(v24, v8);

      v25 = v34;
      v26 = v31(v8);
      v4 = v25;
      if (v25)
      {
        sub_10000A800(v8, &qword_100054DD0, &unk_1000452F0);
      }

      if (v26)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_10000A800(v8, &qword_100054DD0, &unk_1000452F0);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v29;
    sub_1000174A8(v8, v29);
    return (*(v28 + 56))(v27, 0, 1, v32);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return (*(v28 + 56))(v29, 1, 1, v32);
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v34 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void *NSHTTPURLResponse.cookies.getter()
{
  v1 = v0;
  v2 = sub_100041D04();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = [v1 URL];
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = v9;
  sub_100041CD4();

  (*(v3 + 32))(v8, v6, v2);
  v11 = [v1 allHeaderFields];
  v12 = sub_100042474();

  v13 = sub_1000162EC(v12);

  if (v13)
  {
    v14 = objc_opt_self();
    isa = sub_100042464().super.isa;

    sub_100041CB4(v16);
    v18 = v17;
    v19 = [v14 cookiesWithResponseHeaderFields:isa forURL:v17];

    sub_1000165CC();
    v20 = sub_1000426F4();
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  (*(v3 + 8))(v8, v2);
  return v20;
}

unint64_t sub_1000162EC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100003288(&qword_100054F08, &qword_100044808);
    v2 = sub_100042A84();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_100004780(*(v1 + 48) + 40 * v15, v28);
    sub_100015DA4(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_100004780(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_10000A800(v25, &qword_100054EE8, &qword_1000447E8);

      goto LABEL_22;
    }

    sub_100015DA4(v26 + 8, v24);
    sub_10000A800(v25, &qword_100054EE8, &qword_1000447E8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_10001F844(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

unint64_t sub_1000165CC()
{
  result = qword_100054F00;
  if (!qword_100054F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100054F00);
  }

  return result;
}

NSHTTPCookie_optional __swiftcall NSHTTPURLResponse.cookie(named:)(Swift::String named)
{
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v3 = NSHTTPURLResponse.cookies.getter();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100042A54())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_100042974();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 name];
      v11 = sub_1000424F4();
      v13 = v12;

      if (v11 == countAndFlagsBits && v13 == object)
      {

        goto LABEL_22;
      }

      v15 = sub_100042BD4();

      if (v15)
      {

        goto LABEL_22;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v8 = 0;
LABEL_22:
  v18 = v8;
  result.value._cookiePrivate = v16;
  result.value.super.isa = v18;
  result.is_nil = v17;
  return result;
}

uint64_t NSHTTPURLResponse.parsedContentType.getter()
{
  v1 = v0;
  v2 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-v3];
  v5 = sub_1000420C4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v9 = &v18[-v8];
  v10 = [v1 MIMEType];
  if (!v10)
  {
    return 6;
  }

  v11 = v10;
  sub_1000424F4();

  sub_100042084();
  sub_100042054();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000A800(v4, &qword_100054A68, &qword_100043BB0);
    return 6;
  }

  v13 = (*(v6 + 32))(v9, v4, v5);
  __chkstk_darwin(v13);
  *&v18[-16] = v9;
  v14 = 5;
  v15 = &byte_100051860;
  while (1)
  {
    v16 = *v15++;
    v12 = v16;
    v19 = v16;
    if (sub_100016AE8(&v19))
    {
      break;
    }

    if (!--v14)
    {
      v12 = 6;
      break;
    }
  }

  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_100016A00(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_10000DE14(*a1, &v9[-v5]);
  v10 = a2;
  v7 = sub_100015850(sub_100017518);
  sub_10000A800(v6, &qword_100054A68, &qword_100043BB0);
  return v7 & 1;
}

uint64_t NSHTTPURLResponse.contentTypeConformsTo(uti:)(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_1000420C4();
  v36 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v35 = &v33 - v7;
  v8 = sub_100041BA4();
  v34 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003288(&qword_100054A70, &qword_100043BB8);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = NSHTTPURLResponse.subscript.getter(3u);
  if (v15)
  {
    v33 = a1;
    v37 = v14;
    v38 = v15;
    v41 = 59;
    v42 = 0xE100000000000000;
    v16 = sub_100041D24();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_100009BAC();
    sub_1000428A4();
    v18 = v17;
    sub_10000A800(v13, &qword_100054A70, &qword_100043BB8);
    if ((v18 & 1) == 0)
    {
      v19 = sub_100042684();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v37 = v19;
      v38 = v21;
      v39 = v23;
      v40 = v25;
      sub_100041B94();
      sub_100009C84();
      v26 = sub_100042884();
      v28 = v27;
      (*(v34 + 8))(v10, v8);

      v37 = v26;
      v38 = v28;
      sub_100042674();
    }

    v29 = v36;
    sub_100042084();
    sub_100042054();
    if ((*(v29 + 48))(v4, 1, v5) != 1)
    {
      v31 = v35;
      (*(v29 + 32))(v35, v4, v5);
      v30 = sub_1000420A4();
      (*(v29 + 8))(v31, v5);
      return v30 & 1;
    }

    sub_10000A800(v4, &qword_100054A68, &qword_100043BB0);
  }

  v30 = 0;
  return v30 & 1;
}

Swift::Bool __swiftcall NSHTTPURLResponse.contentTypeConformsTo(_:)(AccountsUISupportServiceLib::ContentType a1)
{
  v2 = sub_100041BA4();
  v47 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003288(&qword_100054A70, &qword_100043BB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_100003288(&qword_100054A68, &qword_100043BB0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = sub_1000420C4();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  if (a1 > AccountsUISupportServiceLib_ContentType_portableDocumentFormat)
  {
    if (a1 - 3 < 2)
    {
      (*(v14 + 56))(v12, 1, 1, v13);
      v20 = v12;
      goto LABEL_15;
    }

    v44 = v17;
    v45 = v2;
    sub_100042074();
  }

  else
  {
    v44 = v17;
    v45 = v2;
    if (a1)
    {
      if (a1 == AccountsUISupportServiceLib_ContentType_text)
      {
        sub_1000420B4();
      }

      else
      {
        sub_100042064();
      }
    }

    else
    {
      sub_100042094();
    }
  }

  (*(v14 + 56))(v12, 0, 1, v13);
  v43 = *(v14 + 32);
  v43(v19, v12, v13);
  v21 = NSHTTPURLResponse.subscript.getter(3u);
  if (!v22)
  {
    (*(v14 + 8))(v19, v13);
    goto LABEL_17;
  }

  v42 = v10;
  v48 = v21;
  v49 = v22;
  v52 = 59;
  v53 = 0xE100000000000000;
  v23 = sub_100041D24();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  sub_100009BAC();
  sub_1000428A4();
  v25 = v24;
  sub_10000A800(v6, &qword_100054A70, &qword_100043BB8);
  if ((v25 & 1) == 0)
  {
    v26 = sub_100042684();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v48 = v26;
    v49 = v28;
    v50 = v30;
    v51 = v32;
    v33 = v46;
    sub_100041B94();
    sub_100009C84();
    v34 = sub_100042884();
    v36 = v35;
    (*(v47 + 8))(v33, v45);

    v48 = v34;
    v49 = v36;
    sub_100042674();
  }

  v37 = v42;
  sub_100042084();
  sub_100042054();
  if ((*(v14 + 48))(v37, 1, v13) != 1)
  {
    v39 = v44;
    v43(v44, v37, v13);
    v38 = sub_1000420A4();
    v40 = *(v14 + 8);
    v40(v39, v13);
    v40(v19, v13);
    return v38 & 1;
  }

  (*(v14 + 8))(v19, v13);
  v20 = v37;
LABEL_15:
  sub_10000A800(v20, &qword_100054A68, &qword_100043BB0);
LABEL_17:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_1000174A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017518@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1000420A4();
  *a2 = result & 1;
  return result;
}

uint64_t EmailAddress.Domain.IDNAEncoded.init(validating:)(uint64_t a1, unint64_t a2)
{
  if (sub_1000425A4() > 253)
  {
LABEL_4:

    return 0;
  }

  result = sub_100017650(0x7FFFFFFFFFFFFFFFLL, 0, a1, a2, v4);
  v6 = result;
  v7 = *(result + 16);
  if (v7 < 2)
  {
LABEL_3:

    goto LABEL_4;
  }

  v8 = 0;
  v9 = (result + 56);
  while (v8 < *(v6 + 16))
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *(v9 - 3);
    v13 = v11;
    v14 = v10;
    result = sub_100015544(&v12);
    if ((result & 1) == 0)
    {
      goto LABEL_3;
    }

    ++v8;
    v9 += 4;
    if (v7 == v8)
    {

      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017650@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_44:
    result = sub_10001BD68((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v30 = (result + 32 * v5);
    v30[4] = v7;
    v30[5] = v8;
    v30[6] = v9;
    v30[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_100042684();
    v8 = v27;
    v9 = v28;
    v10 = v29;

    result = sub_10001BD68(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v41 = _swiftEmptyArrayStorage;
  v15 = 15;
  v16 = 0xE100000000000000;
  v40 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (1)
    {
      v10 = v15;
      while (sub_100042664() != 46 || v18 != 0xE100000000000000)
      {
        v9 = sub_100042BD4();

        if (v9)
        {
          goto LABEL_16;
        }

        v10 = sub_1000425B4();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

LABEL_16:
      if (v15 >> 14 != v17 || (a2 & 1) == 0)
      {
        break;
      }

      v15 = sub_1000425B4();
      v17 = v15 >> 14;
      if (v15 >> 14 == v14)
      {
        goto LABEL_32;
      }
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
      return result;
    }

    v19 = sub_100042684();
    v37 = v21;
    v38 = v20;
    v22 = v41;
    v39 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_10001BD68(0, *(v41 + 2) + 1, 1, v41);
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v41 = v22;
    if (v25 >= v24 >> 1)
    {
      v41 = sub_10001BD68((v24 > 1), v25 + 1, 1, v22);
    }

    v9 = v41;
    *(v41 + 2) = v25 + 1;
    v26 = &v41[32 * v25];
    *(v26 + 4) = v19;
    *(v26 + 5) = v39;
    *(v26 + 6) = v38;
    *(v26 + 7) = v37;
    v15 = sub_1000425B4();
  }

  while (*(v41 + 2) != v40);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v41;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = sub_100042684();
  v16 = v31;
  v9 = v32;
  v10 = v33;

  v14 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_10001BD68(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v41;
LABEL_40:
  v35 = *(result + 16);
  v34 = *(result + 24);
  if (v35 >= v34 >> 1)
  {
    result = sub_10001BD68((v34 > 1), v35 + 1, 1, result);
  }

  *(result + 16) = v35 + 1;
  v36 = (result + 32 * v35);
  v36[4] = v11;
  v36[5] = v16;
  v36[6] = v9;
  v36[7] = v10;
  return result;
}

uint64_t static EmailAddress.Domain.IDNAEncoded.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100042BD4();
  }
}

Swift::Int EmailAddress.Domain.IDNAEncoded.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  return sub_100042C94();
}

Swift::Int sub_100017AE0()
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  return sub_100042C94();
}

Swift::Int sub_100017B34(uint64_t a1)
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  return sub_100042C94();
}

uint64_t sub_100017B7C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100042BD4();
  }
}

void *sub_100017BAC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_100017BBC()
{
  result = qword_100054F18;
  if (!qword_100054F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F18);
  }

  return result;
}

unint64_t sub_100017C14()
{
  result = qword_100054F20;
  if (!qword_100054F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F20);
  }

  return result;
}

unint64_t sub_100017C78()
{
  result = qword_100054F28;
  if (!qword_100054F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F28);
  }

  return result;
}

uint64_t sub_100017CE4()
{
  v1 = *v0;

  return v1;
}

__n128 sub_100017D14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100017D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100017D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100017DB4(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v19[0] = a1;
  v19[1] = a2;
  v18[2] = 757952120;
  v18[3] = 0xE400000000000000;
  sub_100009D2C();
  sub_100009D80();
  isStackAllocationSafe = sub_1000424B4();
  if (v21)
  {

    return v3;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

LABEL_7:
    if (v5 <= 1024)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  isStackAllocationSafe = sub_1000425D4();
  v5 = isStackAllocationSafe;
  if ((isStackAllocationSafe & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_19:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v15 = swift_slowAlloc();
    sub_100018140(v15, v5, &v20);

    return v20;
  }

LABEL_8:
  __chkstk_darwin(isStackAllocationSafe);
  v7 = v18 - v6;
  result = sub_100042954();
  if ((v9 & 1) == 0)
  {
    if (qword_100054908 != -1)
    {
      swift_once();
    }

    v10 = qword_100054F10;
    *(swift_allocObject() + 16) = v10;
    v11 = sub_100018C94(v7, v5, 0, 0, 1);
    if ((v11 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v11 >= 1025)
      {
        v16 = v11;
        v11 = swift_stdlib_isStackAllocationSafe();
        if ((v11 & 1) == 0)
        {
          v17 = swift_slowAlloc();
          sub_100018B64(v17, v16, sub_100018C94, v7, v5, sub_100018D20, v19);

          return v19[0];
        }
      }

      __chkstk_darwin(v11);
      v14 = sub_100018C94(v7, v5, v18 - v12, v13, 0);
      if ((v14 & 0x80000000) == 0)
      {
        v3 = sub_100042544();

        return v3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100018140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  sub_100042954();
  if (v9)
  {
    goto LABEL_18;
  }

  if (qword_100054908 != -1)
  {
    swift_once();
  }

  v10 = qword_100054F10;
  *(swift_allocObject() + 16) = v10;
  isStackAllocationSafe = sub_100018CF4(a1, a2, 0, 0, 1);
  if (v5)
  {
  }

  if ((isStackAllocationSafe & 0x80000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (isStackAllocationSafe >= 1025)
  {
    v19 = isStackAllocationSafe;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v20 = swift_slowAlloc();
      sub_100018B64(v20, v19, sub_100018CF4, a1, a2, sub_100018D20, v22);

      v16 = v22[0];
      v18 = v22[1];
      goto LABEL_12;
    }
  }

  __chkstk_darwin(isStackAllocationSafe);
  v14 = sub_100018CF4(a1, a2, &v22[-1] - v12, v13, 0);
  if (v14 < 0)
  {
    goto LABEL_16;
  }

  v16 = sub_100042544();
  v18 = v17;

LABEL_12:
  *a5 = v16;
  a5[1] = v18;
  return result;
}

uint64_t sub_1000183A8(Swift::Int isStackAllocationSafe, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v2 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v2 = isStackAllocationSafe & 0xFFFFFFFFFFFFLL;
    }

LABEL_5:
    if (v2 <= 1024)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  isStackAllocationSafe = sub_1000425D4();
  v2 = isStackAllocationSafe;
  if ((isStackAllocationSafe & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_17:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v13 = swift_slowAlloc();
    sub_10001871C(v13, v2, &v18);

    return v18;
  }

LABEL_6:
  __chkstk_darwin(isStackAllocationSafe);
  v4 = &v16 - v3;
  result = sub_100042954();
  if ((v6 & 1) == 0)
  {
    if (qword_100054908 != -1)
    {
      swift_once();
    }

    v7 = qword_100054F10;
    *(swift_allocObject() + 16) = v7;
    v8 = sub_100018C0C(v4, v2, 0, 0, 1);
    if ((v8 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v8 >= 1025)
      {
        v14 = v8;
        v8 = swift_stdlib_isStackAllocationSafe();
        if ((v8 & 1) == 0)
        {
          v15 = swift_slowAlloc();
          sub_100018B64(v15, v14, sub_100018C0C, v4, v2, sub_100018D20, &v17);

          return v17;
        }
      }

      __chkstk_darwin(v8);
      v11 = sub_100018C0C(v4, v2, &v16 - v9, v10, 0);
      if ((v11 & 0x80000000) == 0)
      {
        v12 = sub_100042544();

        return v12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  sub_100042954();
  if (v9)
  {
    goto LABEL_18;
  }

  if (qword_100054908 != -1)
  {
    swift_once();
  }

  v10 = qword_100054F10;
  *(swift_allocObject() + 16) = v10;
  isStackAllocationSafe = sub_100018CDC(a1, a2, 0, 0, 1);
  if (v5)
  {
  }

  if ((isStackAllocationSafe & 0x80000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (isStackAllocationSafe >= 1025)
  {
    v19 = isStackAllocationSafe;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v20 = swift_slowAlloc();
      sub_100018B64(v20, v19, sub_100018CDC, a1, a2, sub_100018D20, v22);

      v16 = v22[0];
      v18 = v22[1];
      goto LABEL_12;
    }
  }

  __chkstk_darwin(isStackAllocationSafe);
  v14 = sub_100018CDC(a1, a2, &v22[-1] - v12, v13, 0);
  if (v14 < 0)
  {
    goto LABEL_16;
  }

  v16 = sub_100042544();
  v18 = v17;

LABEL_12:
  *a5 = v16;
  a5[1] = v18;
  return result;
}

uint64_t sub_100018984@<X0>(uint64_t *a3@<X8>)
{
  result = sub_100042544();
  *a3 = result;
  a3[1] = v5;
  return result;
}

UIDNA *sub_1000189BC()
{
  pErrorCode = U_ZERO_ERROR;
  result = uidna_openUTS46(0x3Cu, &pErrorCode);
  qword_100054F10 = result;
  return result;
}

uint64_t sub_100018A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, _DWORD *, int *))
{
  v15 = 0;
  LOWORD(v14[0]) = 16;
  memset(v14 + 2, 0, 14);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a5 & 1) == 0)
  {
    if (a4 >= 0xFFFFFFFF80000000)
    {
      if (a4 <= 0x7FFFFFFF)
      {
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  a4 = 0;
  a3 = 0;
LABEL_7:
  result = a7(a6, a1, a2, a3, a4, v14, &v15);
  v11 = v15;
  if (((a5 & 1) == 0 || v15 != 15) && (v15 > 0 || v14[1]))
  {
    v12 = result;
    sub_100018C40();
    swift_allocError();
    *v13 = v11;
    swift_willThrow();
    return v12;
  }

  return result;
}

uint64_t sub_100018B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *(*a6)(void *__return_ptr, uint64_t, void)@<X6>, void *a7@<X8>)
{
  result = a3(a4, a5, a1, a2, 0);
  if (!v7)
  {
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = a6(v13, a1, result);
      v12 = v13[1];
      *a7 = v13[0];
      a7[1] = v12;
    }
  }

  return result;
}

unint64_t sub_100018C40()
{
  result = qword_100054F30;
  if (!qword_100054F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F30);
  }

  return result;
}

uint64_t Suggester.makeSuggestions(input:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a2;
  v5 = result;
  v6 = 0;
  v32 = a3 + 32;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  v33 = v7;
  v27 = _swiftEmptyArrayStorage;
  v28 = result;
  v31 = *(a3 + 16);
  while (v6 < v3)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_47;
    }

    v9 = (v32 + 56 * v6);
    v10 = *v9;
    v11 = v9[2];
    v34 = v9[4];
    v35 = v6 + 1;
    v30 = v9[5];
    v12 = v9[6];

    v13 = sub_100042634();
    v14 = 0;
    if ((v13 & 0x10000) != 0)
    {
LABEL_23:

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v11 > v14)
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v34 > v14)
        {
          if (sub_100042034())
          {
            v21 = 0;
            if (!v33)
            {
              goto LABEL_38;
            }

            goto LABEL_35;
          }

          if (sub_100042034())
          {
            v21 = 2;
            if (!v33)
            {
LABEL_38:

LABEL_39:
              result = swift_isUniquelyReferenced_nonNull_native();
              v23 = v5;
              if ((result & 1) == 0)
              {
                result = sub_10001C268(0, *(v27 + 2) + 1, 1, v27);
                v27 = result;
              }

              v25 = *(v27 + 2);
              v24 = *(v27 + 3);
              if (v25 >= v24 >> 1)
              {
                result = sub_10001C268((v24 > 1), v25 + 1, 1, v27);
                v27 = result;
              }

              *(v27 + 2) = v25 + 1;
              v26 = &v27[24 * v25];
              v3 = v31;
              *(v26 + 4) = v30;
              *(v26 + 5) = v12;
              v26[48] = v21;
              v20 = v8 == v31;
              v5 = v23;
              goto LABEL_31;
            }

LABEL_35:

            v36._countAndFlagsBits = v5;
            v36._object = v4;
            v22 = sub_100042644(v36);

            if (v22)
            {
              v21 = 1;
            }

            goto LABEL_39;
          }
        }
      }
    }

    else
    {
      LODWORD(v14) = 0;
      while (1)
      {
        v15 = *(v10 + 16);
        if (!v15)
        {
          break;
        }

        v16 = 0;
        v17 = (v10 + 36);
        while (*(v17 - 2) != v14 || *v17 != v13)
        {
          v17 += 3;
          if (v15 == ++v16)
          {
            v16 = 0;
            v18 = (v10 + 36);
            while (*(v18 - 2) != v14 || *v18 != 0)
            {
              v18 += 3;
              if (v15 == ++v16)
              {
                goto LABEL_22;
              }
            }

            break;
          }
        }

        v14 = *(v10 + 32 + 6 * v16 + 2);
        v13 = sub_100042634();
        if ((v13 & 0x10000) != 0)
        {
          v5 = v28;
          v4 = a2;
          goto LABEL_23;
        }
      }

LABEL_22:

      v5 = v28;
      v4 = a2;
    }

    v3 = v31;
    v20 = v8 == v31;
LABEL_31:
    v6 = v35;
    if (v20)
    {
      return v27;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1000190B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  sub_100042C64(v3);
  if (v3)
  {
    v4 = (v2 + 36);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 3;
      sub_100042C84(v5);
      sub_100042C84(v6);
      sub_100042C84(v7);
      --v3;
    }

    while (v3);
  }

  sub_100042004();
  sub_100042004();

  return _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100019178()
{
  v1 = *v0;
  sub_100042C54();
  v2 = *(v1 + 16);
  sub_100042C64(v2);
  if (v2)
  {
    v3 = (v1 + 36);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;
      v3 += 3;
      sub_100042C84(v4);
      sub_100042C84(v5);
      sub_100042C84(v6);
      --v2;
    }

    while (v2);
  }

  sub_100042004();
  sub_100042004();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  return sub_100042C94();
}

Swift::Int sub_1000192E8(uint64_t a1)
{
  v2 = *v1;
  sub_100042C54();
  sub_100042C64(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 36);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 3;
      sub_100042C84(v5);
      sub_100042C84(v6);
      sub_100042C84(v7);
      --v3;
    }

    while (v3);
  }

  sub_100042004();
  sub_100042004();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  return sub_100042C94();
}

uint64_t sub_1000193CC(uint64_t *a1, uint64_t *a2)
{
  v5 = a1[5];
  v6 = a1[6];
  v2 = a2[5];
  v3 = a2[6];
  if ((sub_1000194D4(*a1, *a2) & 1) == 0 || (sub_100041FF4() & 1) == 0 || (sub_100041FF4() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v2 && v6 == v3)
  {
    return 1;
  }

  return sub_100042BD4();
}

uint64_t sub_1000194D4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 36);
  v4 = (result + 36);
  while (v2)
  {
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;
    v3 += 3;
    v8 = v7;
    result = *(v4 - 2) == v5 && *(v4 - 1) == v6 && *v4 == v8;
    v11 = result != 1 || v2-- == 1;
    v4 += 3;
    if (v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100019560(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041BD4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_10001D204();
    v21 = sub_1000424D4();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100019744(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1000165CC();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_100042974();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_100042974();
LABEL_26:
        v17 = v16;
        v18 = sub_1000427E4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1000427E4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_100042A54();
  }

  result = sub_100042A54();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_100019984(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000199E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s27AccountsUISupportServiceLib9SuggesterV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v18 = a2 + 32;
  v19 = result + 32;
  v17 = *(result + 16);
  while (v3 != v2)
  {
    v5 = (v19 + 56 * v3);
    result = *v5;
    v6 = (v18 + 56 * v3);
    v7 = *v6;
    v8 = *(*v5 + 16);
    if (v8 != *(*v6 + 16))
    {
      return 0;
    }

    v9 = v5[5];
    v10 = v5[6];
    if (v8)
    {
      v11 = result == v7;
    }

    else
    {
      v11 = 1;
    }

    v12 = v6[5];
    v21 = v6[6];
    if (!v11)
    {
      v13 = (result + 36);
      v14 = (v7 + 36);
      while (v8)
      {
        if (*(v13 - 2) != *(v14 - 2) || *(v13 - 1) != *(v14 - 1) || *v13 != *v14)
        {
          return 0;
        }

        v13 += 3;
        v14 += 3;
        if (!--v8)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      break;
    }

LABEL_25:
    v20 = v3;

    if ((sub_100041FF4() & 1) == 0 || (sub_100041FF4() & 1) == 0)
    {

      return 0;
    }

    if (v9 == v12 && v10 == v21)
    {
    }

    else
    {
      v4 = sub_100042BD4();

      if ((v4 & 1) == 0)
      {
        return 0;
      }
    }

    v3 = v20 + 1;
    result = 1;
    v2 = v17;
    if (v20 + 1 == v17)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Int Suggester.hashValue.getter(uint64_t a1)
{
  sub_100042C54();
  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(v3, a1);
  return sub_100042C94();
}

Swift::Int sub_100019D50()
{
  v1 = *v0;
  sub_100042C54();
  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(v3, v1);
  return sub_100042C94();
}

Swift::Int sub_100019DA0(uint64_t a1)
{
  v2 = *v1;
  sub_100042C54();
  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(v4, v2);
  return sub_100042C94();
}

uint64_t Suggester.init<A>(texts:maximumEdits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100042964();
  __chkstk_darwin(v7);
  v8 = sub_100042A44();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v16[-v10];
  sub_1000426B4();
  swift_getWitnessTable();
  sub_100042A94();
  v17 = a2;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_10001A138(sub_10001C874, v16, v8, &type metadata for Suggester.Element, &type metadata for Never, WitnessTable, &protocol witness table for Never, v13);
  (*(*(a3 - 8) + 8))(a1, a3);
  (*(v9 + 8))(v11, v8);
  return v14;
}

BOOL sub_10001A020(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_10001A040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];

  v7 = sub_100042614();
  if (!v7)
  {

    v9 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v8 = v7;
  v9 = sub_10002FC54(v7, 0);

  v10 = sub_10002F980(v14, (v9 + 4), v8, v6, v5);

  if (v10 == v8)
  {

LABEL_5:
    sub_10001CF9C(v9, a2, v14);
    v12 = v15;
    v13 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v13;
    *(a3 + 32) = v12;
    *(a3 + 40) = v6;
    *(a3 + 48) = v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A138(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = __chkstk_darwin(v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v42 - v18;
  v19 = sub_100042814();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = __chkstk_darwin(v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v25 = __chkstk_darwin(v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v55 = *(a3 - 1);
  __chkstk_darwin(v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  __chkstk_darwin(v62);
  v31 = &v42 - v30;
  v32 = sub_1000426A4();
  v63 = sub_100042A14();
  v58 = sub_100042A24();
  sub_1000429D4(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_100042694();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_100042874();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_100042A04();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_100042874();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_100042A04();
      sub_100042874();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

AccountsUISupportServiceLib::Suggestion __swiftcall Suggestion.init(text:input:kind:)(Swift::String text, Swift::String input, AccountsUISupportServiceLib::Suggestion::Kind kind)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v6 = HIBYTE(input._object) & 0xF;
  if ((input._object & 0x2000000000000000) == 0)
  {
    v6 = input._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_100042644(input);

    if (v7)
    {
      kind = AccountsUISupportServiceLib_Suggestion_Kind_prefix;
    }
  }

  else
  {
  }

  v8 = countAndFlagsBits;
  v9 = object;
  v10 = kind;
  result.text._object = v9;
  result.text._countAndFlagsBits = v8;
  result.kind = v10;
  return result;
}

uint64_t Suggestion.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

BOOL static Suggestion.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = sub_100042BD4();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

Swift::Int Suggestion.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042C64(a3);
  return sub_100042C94();
}

Swift::Int sub_10001AA38()
{
  v1 = *(v0 + 16);
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042C64(v1);
  return sub_100042C94();
}

void sub_10001AA9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042C64(v2);
}

Swift::Int sub_10001AAD4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042C64(v2);
  return sub_100042C94();
}

BOOL sub_10001AB34(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_100042BD4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

Swift::Int sub_10001AB94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_100042C54();
  sub_100042C84(v1);
  sub_100042C84(v2);
  sub_100042C84(v3);
  return sub_100042C94();
}

void sub_10001AC04()
{
  v1 = v0[1];
  v2 = v0[2];
  sub_100042C84(*v0);
  sub_100042C84(v1);
  sub_100042C84(v2);
}

Swift::Int sub_10001AC50(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_100042C54();
  sub_100042C84(v2);
  sub_100042C84(v3);
  sub_100042C84(v4);
  return sub_100042C94();
}

Swift::Int sub_10001ACF4()
{
  v1 = *v0;
  sub_100042C54();
  v2 = *(v1 + 16);
  sub_100042C64(v2);
  if (v2)
  {
    v3 = (v1 + 36);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;
      v3 += 3;
      sub_100042C84(v4);
      sub_100042C84(v5);
      sub_100042C84(v6);
      --v2;
    }

    while (v2);
  }

  sub_100042004();
  sub_100042004();
  return sub_100042C94();
}

uint64_t sub_10001ADB4(uint64_t a1)
{
  v2 = *v1;
  sub_100042C64(*(*v1 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 36);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 3;
      sub_100042C84(v5);
      sub_100042C84(v6);
      sub_100042C84(v7);
      --v3;
    }

    while (v3);
  }

  sub_100042004();

  return sub_100042004();
}

Swift::Int sub_10001AE6C(uint64_t a1)
{
  v2 = *v1;
  sub_100042C54();
  sub_100042C64(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 36);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 3;
      sub_100042C84(v5);
      sub_100042C84(v6);
      sub_100042C84(v7);
      --v3;
    }

    while (v3);
  }

  sub_100042004();
  sub_100042004();
  return sub_100042C94();
}

uint64_t sub_10001AF38(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1000194D4(*a1, *a2) & 1) == 0 || (sub_100041FF4() & 1) == 0)
  {
    return 0;
  }

  return sub_100041FF4();
}

uint64_t sub_10001AFE8(uint64_t a1, void *a2, uint64_t a3, Swift::UInt a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  v54 = a5;
  v15 = *(a5 + 16);
  if (*(v15 + 2))
  {
    v16 = sub_10001F8BC(a1, a2, a3, a4);
    if (v17)
    {
      v18 = *(*(v15 + 7) + 2 * v16);
      swift_endAccess();
      return v18;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v18 = *(a6 + 16);
  swift_beginAccess();
  if (((v18 + 1) & 0x10000) != 0)
  {
    __break(1u);
LABEL_27:
    v15 = sub_10001C5A0(0, *(v15 + 2) + 1, 1, v15);
    *(a8 + 16) = v15;
    goto LABEL_13;
  }

  *(a6 + 16) = v18 + 1;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(a5 + 16);
  *(a5 + 16) = 0x8000000000000000;
  sub_100020D48(v18, a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  *(a5 + 16) = v56;
  swift_endAccess();
  v20 = a3;
  v21 = *(a1 + 16);
  if (!v21)
  {
    goto LABEL_16;
  }

  if (*(a1 + 8 * v21 + 24) == *(a3 + 16))
  {
    swift_beginAccess();
    v22 = *(a7 + 16);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *(a7 + 16) = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_10001C5A0(0, *(v22 + 2) + 1, 1, v22);
      *(a7 + 16) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_10001C5A0((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    *&v22[2 * v25 + 32] = v18;
    *(a7 + 16) = v22;
  }

  swift_beginAccess();
  v15 = *(a8 + 16);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v15;
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  v28 = *(v15 + 2);
  v27 = *(v15 + 3);
  if (v28 >= v27 >> 1)
  {
    v49 = sub_10001C5A0((v27 > 1), v28 + 1, 1, v15);
    v20 = a3;
    v15 = v49;
  }

  else
  {
    v20 = a3;
  }

  *(v15 + 2) = v28 + 1;
  *&v15[2 * v28 + 32] = v18;
  *(a8 + 16) = v15;
LABEL_16:
  v57 = sub_10001CC5C(a1, v20);
  sub_100031A8C(&off_100051868);
  v29 = v57;
  v30 = *(v57 + 2);
  if (v30)
  {
    v52 = v18;
    swift_beginAccess();
    v31 = 32;
    v32 = a4;
    v33 = a3;
    v34 = a2;
    v50 = a2;
    v51 = a3;
    do
    {
      v35 = *&v29[v31];
      v36 = v32;
      v37 = sub_10001B414(v35, a1, v34, v33, v32);
      v38 = a6;
      v42 = sub_10001AFE8(v37, v39, v40, v41, v54, a6, a7, a8, a9);

      v43 = *(a9 + 16);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *(a9 + 16) = v43;
      if ((v44 & 1) == 0)
      {
        v43 = sub_10001C488(0, *(v43 + 2) + 1, 1, v43);
        *(a9 + 16) = v43;
      }

      v46 = *(v43 + 2);
      v45 = *(v43 + 3);
      if (v46 >= v45 >> 1)
      {
        v43 = sub_10001C488((v45 > 1), v46 + 1, 1, v43);
      }

      *(v43 + 2) = v46 + 1;
      v47 = &v43[6 * v46];
      *(v47 + 16) = v52;
      *(v47 + 17) = v42;
      *(v47 + 18) = v35;
      *(a9 + 16) = v43;
      v31 += 2;
      --v30;
      a6 = v38;
      v32 = v36;
      v34 = v50;
      v33 = v51;
      v29 = v57;
    }

    while (v30);

    return v52;
  }

  else
  {
  }

  return v18;
}

char *sub_10001B414(unsigned __int16 a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{

  v46 = a3;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = *(a2 + 2);
    v9 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10001C384(0, v8, 1, a2);
    }

    sub_10001CE00(0, v8, 0);
  }

  else
  {
    v9 = sub_10001C69C(0, *(a2 + 3) >> 1);
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = a3[2];
    v11 = a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10001C384(0, v10, 1, a3);
    }

    sub_10001CE00(0, v10, 0);
  }

  else
  {
    v11 = sub_10001C69C(0, a3[3] >> 1);
  }

  v12 = *(a2 + 2);
  v14 = a4;
  v13 = a5;
  v15 = v11;
  if (v12)
  {
    v16 = a3;
    if (!*(a2 + 4))
    {
      if (a3[2])
      {
        a3 = a3[4];
        if (a3 < a5)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_68:
            v9 = sub_10001C384(0, *(v9 + 2) + 1, 1, v9);
          }

          v18 = *(v9 + 2);
          v17 = *(v9 + 3);
          if (v18 >= v17 >> 1)
          {
            v9 = sub_10001C384((v17 > 1), v18 + 1, 1, v9);
          }

          *(v9 + 2) = v18 + 1;
          *&v9[8 * v18 + 32] = 0;
          a3 = (a3 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_10001C384(0, *(v11 + 2) + 1, 1, v11);
          }

          v14 = a4;
          v13 = a5;
          v15 = v11;
          v20 = *(v11 + 2);
          v19 = *(v11 + 3);
          v16 = v46;
          if (v20 >= v19 >> 1)
          {
            v41 = sub_10001C384((v19 > 1), v20 + 1, 1, v11);
            v14 = a4;
            v13 = a5;
            v15 = v41;
            v16 = v46;
          }

          *(v15 + 2) = v20 + 1;
          *&v15[8 * v20 + 32] = a3;
        }
      }
    }
  }

  else
  {
    v16 = a3;
  }

  v21 = 0;
  a2 += 32;
  v22 = v14 + 32;
  v23 = v16 + 4;
LABEL_25:
  v24 = v21;
  while (v12 != v24)
  {
    if (v24 >= v12)
    {
      __break(1u);
LABEL_60:
      __break(1u);
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
      __break(1u);
      goto LABEL_68;
    }

    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_60;
    }

    v25 = *&a2[8 * v24];
    if (v25 >= *(v14 + 16))
    {
      break;
    }

    if (v25 < 0)
    {
      goto LABEL_61;
    }

    v26 = v16[2];
    if (v24 >= v26)
    {
      goto LABEL_62;
    }

    v27 = *(v22 + 2 * v25) != a1;
    v28 = v23[v24];
    a3 = (v28 + v27);
    if (__OFADD__(v28, v27))
    {
      goto LABEL_63;
    }

    v11 = *(v9 + 2);
    if (v11)
    {
      if (*&v9[8 * v11 + 24] == v25)
      {
        v29 = *(v15 + 2);
        if (v29)
        {
          v30 = *&v15[8 * v29 + 24];
          v31 = __OFADD__(v30, 1);
          v32 = (v30 + 1);
          if (v31)
          {
            goto LABEL_67;
          }

          if (v32 < a3)
          {
            a3 = v32;
          }
        }
      }
    }

    if (v21 < v12)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      if (*&a2[8 * v21] == v25 + 1)
      {
        if (v21 >= v26)
        {
          goto LABEL_65;
        }

        v33 = v23[v21];
        v31 = __OFADD__(v33, 1);
        v34 = (v33 + 1);
        if (v31)
        {
          goto LABEL_66;
        }

        if (v34 < a3)
        {
          a3 = v34;
        }
      }
    }

    ++v24;
    if (a3 <= v13)
    {
      v43 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10001C384(0, (v11 + 1), 1, v9);
      }

      v36 = *(v9 + 2);
      v35 = *(v9 + 3);
      v42 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v9 = sub_10001C384((v35 > 1), v42, 1, v9);
      }

      *(v9 + 2) = v42;
      *&v9[8 * v36 + 32] = v25 + 1;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = v43;
      }

      else
      {
        v15 = sub_10001C384(0, *(v43 + 2) + 1, 1, v43);
      }

      v38 = *(v15 + 2);
      v37 = *(v15 + 3);
      v11 = (v38 + 1);
      v14 = a4;
      v13 = a5;
      v16 = v46;
      if (v38 >= v37 >> 1)
      {
        v39 = sub_10001C384((v37 > 1), v38 + 1, 1, v15);
        v14 = a4;
        v13 = a5;
        v15 = v39;
        v16 = v46;
      }

      *(v15 + 2) = v11;
      *&v15[8 * v38 + 32] = a3;
      goto LABEL_25;
    }
  }

  return v9;
}

void *sub_10001B8B0(void *result, uint64_t a2)
{
  v2 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 < 0)
  {
LABEL_10:
    __break(1u);
    return v6;
  }

  if (a2 != -1)
  {
    sub_100013064(0, a2 + 1, 0);
    v3 = 0;
    v4 = _swiftEmptyArrayStorage[2];
    do
    {
      v5 = _swiftEmptyArrayStorage[3];
      if (v4 >= v5 >> 1)
      {
        sub_100013064((v5 > 1), v4 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      _swiftEmptyArrayStorage[v4++ + 4] = v3++;
    }

    while (v2 != v3);
  }

  return _swiftEmptyArrayStorage;
}

Swift::Int sub_10001B9B0(uint64_t a1, Swift::UInt a2)
{
  sub_100042C54();
  v4 = *(a1 + 16);
  sub_100042C64(v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_100042C84(v6);
      --v4;
    }

    while (v4);
  }

  sub_100042C64(a2);
  return sub_100042C94();
}

void sub_10001BA38()
{
  v2 = *v0;
  v1 = v0[1];
  sub_100042C64(*(*v0 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_100042C84(v5);
      --v3;
    }

    while (v3);
  }

  sub_100042C64(v1);
}

Swift::Int sub_10001BA94(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_100042C54();
  sub_100042C64(*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      sub_100042C84(v6);
      --v4;
    }

    while (v4);
  }

  sub_100042C64(v2);
  return sub_100042C94();
}

uint64_t sub_10001BB0C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_100019984(*a1, *a2) & (v2 == v3);
}

void sub_10001BB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::UInt a5)
{
  v9 = *(a2 + 16);
  sub_100042C64(v9);
  if (v9)
  {
    v10 = (a2 + 32);
    do
    {
      v11 = *v10++;
      sub_100042C64(v11);
      --v9;
    }

    while (v9);
  }

  v12 = *(a3 + 16);
  sub_100042C64(v12);
  if (v12)
  {
    v13 = (a3 + 32);
    do
    {
      v14 = *v13++;
      sub_100042C64(v14);
      --v12;
    }

    while (v12);
  }

  v15 = *(a4 + 16);
  sub_100042C64(v15);
  if (v15)
  {
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      sub_100042C84(v17);
      --v15;
    }

    while (v15);
  }

  sub_100042C64(a5);
}

Swift::Int sub_10001BBFC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_100042C54();
  sub_10001BB48(v6, v1, v2, v4, v3);
  return sub_100042C94();
}

Swift::Int sub_10001BC68(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_100042C54();
  sub_10001BB48(v7, v2, v3, v5, v4);
  return sub_100042C94();
}

uint64_t sub_10001BCC4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if (sub_1000199E0(*a1, *a2) & 1) != 0 && (sub_1000199E0(v2, v5))
  {
    return sub_100019984(v3, v6) & (v4 == v7);
  }

  else
  {
    return 0;
  }
}

char *sub_10001BD68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054F60, &qword_100044CA0);
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

void *sub_10001BE9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100003288(a5, a6);
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

void *sub_10001C078(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003288(&qword_100054DF0, &unk_100044C70);
  v10 = *(sub_100003288(&qword_100054DD8, "Z&") - 8);
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
  v15 = *(sub_100003288(&qword_100054DD8, "Z&") - 8);
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

char *sub_10001C268(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054F70, &qword_100044CA8);
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

char *sub_10001C384(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054E08, &qword_100044798);
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

char *sub_10001C488(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054F58, &unk_100044C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_10001C5A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003288(&qword_100054E10, &unk_100044C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_10001C69C(uint64_t a1, uint64_t a2)
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

  sub_100003288(&qword_100054E08, &qword_100044798);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_100042C64(v3);
  if (v3)
  {
    v4 = 0;
    v12 = a2 + 32;
    do
    {
      v5 = (v12 + 56 * v4);
      v6 = *v5;
      sub_100042C64(*(*v5 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = (v6 + 36);
        do
        {
          v9 = *(v8 - 2);
          v10 = *(v8 - 1);
          v11 = *v8;
          v8 += 3;
          sub_100042C84(v9);
          sub_100042C84(v10);
          sub_100042C84(v11);
          --v7;
        }

        while (v7);
      }

      ++v4;

      sub_100042004();
      sub_100042004();
      _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
    }

    while (v4 != v3);
  }
}

unint64_t sub_10001C898()
{
  result = qword_100054F38;
  if (!qword_100054F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F38);
  }

  return result;
}

unint64_t sub_10001C8F0()
{
  result = qword_100054F40;
  if (!qword_100054F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F40);
  }

  return result;
}

unint64_t sub_10001C948()
{
  result = qword_100054F48;
  if (!qword_100054F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F48);
  }

  return result;
}

uint64_t sub_10001C9AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10001C9F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10001CA54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10001CA70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10001CAB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001CB18()
{
  result = qword_100054F50;
  if (!qword_100054F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F50);
  }

  return result;
}

void sub_10001CB6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_100042A54();
    sub_100042C64(v8);
    v3 = sub_100042A54();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    sub_100042C64(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      sub_100042974();
      sub_1000427F4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1000427F4();

      --v3;
    }

    while (v3);
  }
}

char *sub_10001CC5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a2 + 16);
    v5 = (a1 + 32);
    do
    {
      v9 = *v5++;
      v8 = v9;
      if (v9 < v4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100013064(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          sub_100013064((v6 > 1), v7 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v7 + 1;
        _swiftEmptyArrayStorage[v7 + 4] = v8;
      }

      --v3;
    }

    while (v3);
  }

  v10 = _swiftEmptyArrayStorage[2];
  if (v10)
  {
    result = sub_100013084(0, v10, 0);
    v12 = *(a2 + 16);
    v13 = 4;
    while (1)
    {
      v14 = _swiftEmptyArrayStorage[v13];
      if (v14 >= v12)
      {
        break;
      }

      v15 = *(a2 + 32 + 2 * v14);
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_100013084((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      *(&_swiftEmptyArrayStorage[4] + v17) = v15;
      ++v13;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_10001CE00(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001CEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_100042024();

  sub_100042024();

  v18 = sub_100042014();
  v19 = v8;
  v9 = sub_100042014();
  v11 = v10;
  v17 = v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = a2 + 32;
    do
    {
      v13 += 2;
      sub_100042044();
      --v12;
    }

    while (v12);
  }

  v15 = *(a3 + 16);
  if (v15)
  {
    v16 = a3 + 32;
    do
    {
      v16 += 2;
      result = sub_100042044();
      --v15;
    }

    while (v15);
    v11 = v17;
  }

  *a4 = a1;
  a4[1] = v18;
  a4[2] = v19;
  a4[3] = v9;
  a4[4] = v11;
  return result;
}

double sub_10001CF9C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1000090EC(_swiftEmptyArrayStorage);
  v21 = swift_allocObject();
  *(v21 + 16) = _swiftEmptyArrayStorage;
  v5 = swift_allocObject();
  *(v5 + 16) = _swiftEmptyArrayStorage;
  v6 = swift_allocObject();
  *(v6 + 16) = _swiftEmptyArrayStorage;
  v7 = sub_10001B8B0(a1, a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10001AFE8(v7, v9, v11, v13, v22, v19, v5, v6, v21);

  swift_beginAccess();
  v14 = *(v21 + 16);
  swift_beginAccess();
  v15 = *(v5 + 16);
  swift_beginAccess();
  v16 = *(v6 + 16);

  sub_10001CEA8(v14, v15, v16, v23);

  result = *v23;
  v18 = v23[1];
  *a3 = v23[0];
  *(a3 + 16) = v18;
  *(a3 + 32) = v24;
  return result;
}

uint64_t sub_10001D1CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001D204()
{
  result = qword_100054F68;
  if (!qword_100054F68)
  {
    sub_100041BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F68);
  }

  return result;
}

uint64_t sub_10001D25C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001D2A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001D2F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001D338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DeterministicFiniteAutomaton.Transition(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DeterministicFiniteAutomaton.Transition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeterministicFiniteAutomaton.Transition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 6) = v3;
  return result;
}

__n128 sub_10001D3F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001D40C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10001D454(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10001D4B0()
{
  result = qword_100054F78;
  if (!qword_100054F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F78);
  }

  return result;
}

unint64_t sub_10001D508()
{
  result = qword_100054F80;
  if (!qword_100054F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F80);
  }

  return result;
}

unint64_t sub_10001D560()
{
  result = qword_100054F88;
  if (!qword_100054F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F88);
  }

  return result;
}

unint64_t sub_10001D5B8()
{
  result = qword_100054F90;
  if (!qword_100054F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054F90);
  }

  return result;
}

__n128 Request.init(method:path:queryItems:headers:cookies:requestBody:followRedirects:authenticator:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v22.n128_u64[0] = a7;
  v22.n128_u64[1] = a8;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  sub_100004F3C(0, 0xF000000000000000);
  LOBYTE(v24) = a1;
  *(&v24 + 1) = a2;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  v26 = v21;
  v27 = v22;
  LOBYTE(v28) = a10;
  *(&v28 + 1) = a11;
  v29 = a12;
  v30 = a13;
  v31[0] = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = v21;
  v36 = v22;
  v37 = a10;
  v38 = a11;
  v39 = a12;
  v40 = a13;
  sub_100004FA4(&v24, v23);
  sub_100005000(v31);
  v18 = v29;
  *(a9 + 64) = v28;
  *(a9 + 80) = v18;
  *(a9 + 96) = v30;
  v19 = v25;
  *a9 = v24;
  *(a9 + 16) = v19;
  result = v27;
  *(a9 + 32) = v26;
  *(a9 + 48) = result;
  return result;
}

uint64_t sub_10001D720(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x4843544150;
  v6 = 0xE400000000000000;
  v7 = 1414745936;
  if (a1 != 4)
  {
    v7 = 5526864;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 5522759;
  if (a1 != 1)
  {
    v9 = 1145128264;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x4554454C4544;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x4843544150)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1414745936)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v12 = 0xE300000000000000;
    v13 = 21840;
  }

  else
  {
    if (!a2)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x4554454C4544)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 != 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1145128264)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v12 = 0xE300000000000000;
    v13 = 17735;
  }

  if (v10 != (v13 | 0x540000))
  {
LABEL_34:
    v14 = sub_100042BD4();
    goto LABEL_35;
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

uint64_t sub_10001D8B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x7470697263736564;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 28265;
    }

    else
    {
      v5 = 7632239;
    }

    if (v4 == 2)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1684957547;
    }

    else
    {
      v5 = 0x7470697263736564;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB000000006E6F69;
    }
  }

  v7 = 0xE200000000000000;
  v8 = 28265;
  if (a2 != 2)
  {
    v8 = 7632239;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v3 = 1684957547;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100042BD4();
  }

  return v11 & 1;
}

Swift::Int sub_10001D9C0(unsigned __int8 a1)
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  return sub_100042C94();
}

Swift::Int sub_10001DAA0(uint64_t a1, unsigned __int8 a2)
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  return sub_100042C94();
}

uint64_t Request.HeaderField.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x616D67617250;
    v6 = 0x65676E6152;
    if (a1 != 8)
    {
      v6 = 0x6B6F6F432D746553;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1734431813;
    if (a1 != 5)
    {
      v7 = 0x6E6F697461636F4CLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x747065636341;
    v2 = 0x2D746E65746E6F43;
    v3 = 0x2D746E65746E6F43;
    if (a1 != 3)
    {
      v3 = 0x65696B6F6F43;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7A69726F68747541;
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
}

uint64_t Request.path.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Request.path.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Request.queryItems.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Request.headers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Request.cookies.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Request.requestBody.getter()
{
  v1 = *(v0 + 48);
  sub_10001DE88(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_10001DE88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001DE9C(a1, a2);
  }

  return a1;
}

uint64_t sub_10001DE9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t Request.requestBody.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100004F3C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Request.authenticator.getter()
{
  v1 = *(v0 + 72);
  sub_10001DFC8(v1, *(v0 + 80), *(v0 + 88), *(v0 + 96));
  return v1;
}

void sub_10001DFC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = a4;
  }
}

void Request.authenticator.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000F728(*(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96));
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
}

void Request.hash(into:)(uint64_t a1)
{
  v2 = v1;
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  sub_100042C64(v5);
  if (v5)
  {
    v6 = *(sub_100041BD4() - 8);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    sub_100022C9C(&qword_100054FC0, &type metadata accessor for URLQueryItem, &protocol conformance descriptor for URLQueryItem);
    do
    {
      sub_1000424A4();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  sub_10002166C(a1, *(v2 + 32));
  sub_10001CB6C(a1, *(v2 + 40));
  if (*(v2 + 56) >> 60 == 15)
  {
    sub_100042C74(0);
  }

  else
  {
    sub_100042C74(1u);
    sub_100041D14();
  }

  sub_100042C74(*(v2 + 64) & 1);
  if (*(v2 + 88))
  {
    v9 = *(v2 + 96);
    v10 = *(v2 + 72);
    sub_100042C74(1u);
    sub_100042C64(v10);
    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
    if (v9)
    {
      sub_100042C64(1uLL);
      sub_1000427F4();
    }

    else
    {
      sub_100042C64(0);
    }
  }

  else
  {
    sub_100042C74(0);
  }
}

Swift::Int Request.hashValue.getter()
{
  sub_100042C54();
  Request.hash(into:)(v1);
  return sub_100042C94();
}

Swift::Int sub_10001E350(uint64_t a1)
{
  sub_100042C54();
  Request.hash(into:)(v2);
  return sub_100042C94();
}

uint64_t sub_10001E38C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s27AccountsUISupportServiceLib7RequestV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t Request.Method.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x4554454C4544;
  v2 = 0x4843544150;
  v3 = 1414745936;
  if (a1 != 4)
  {
    v3 = 5526864;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 5522759;
  if (a1 != 1)
  {
    v4 = 1145128264;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10001E49C@<X0>(Swift::String *a1@<X0>, AccountsUISupportServiceLib::Request::Method_optional *a2@<X8>)
{
  result = _s27AccountsUISupportServiceLib7RequestV6MethodO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_10001E4CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x4554454C4544;
  v5 = 0xE500000000000000;
  v6 = 0x4843544150;
  v7 = 0xE400000000000000;
  v8 = 1414745936;
  if (v2 != 4)
  {
    v8 = 5526864;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5522759;
  if (v2 != 1)
  {
    v10 = 1145128264;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10001E61C(uint64_t a1)
{
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_10001E6F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Request.HeaderField.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Request.HeaderField.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100042BD4();
  }

  return v8 & 1;
}

unint64_t sub_10001E778@<X0>(Swift::String *a1@<X0>, AccountsUISupportServiceLib::Request::HeaderField_optional *a2@<X8>)
{
  result = _s27AccountsUISupportServiceLib7RequestV11HeaderFieldO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_10001E7A8@<X0>(uint64_t *a1@<X8>)
{
  result = Request.HeaderField.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_10001E884()
{
  v1 = *v0;
  sub_100042C54();
  Request.HeaderField.rawValue.getter(v1);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  return sub_100042C94();
}

uint64_t sub_10001E8E8(uint64_t a1)
{
  Request.HeaderField.rawValue.getter(*v1);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10001E93C(uint64_t a1)
{
  v2 = *v1;
  sub_100042C54();
  Request.HeaderField.rawValue.getter(v2);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  return sub_100042C94();
}

uint64_t Request.subscript.getter(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_10001F724(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 16 * v3);

  return v5;
}

uint64_t Request.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100041BD4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 24);
  v12 = *(v11 + 16);
  if (v12)
  {
    v20 = v8;
    v21 = a3;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v22 = *(v13 + 56);
    v23 = v14;
    while (1)
    {
      v23(v10, v15, v7);
      if (sub_100041BC4() == a1 && v16 == a2)
      {
        break;
      }

      v17 = sub_100042BD4();

      if (v17)
      {
        goto LABEL_10;
      }

      (*(v13 - 8))(v10, v7);
      v15 += v22;
      if (!--v12)
      {
        v18 = 1;
        v8 = v20;
        a3 = v21;
        return (*(v8 + 56))(a3, v18, 1, v7);
      }
    }

LABEL_10:
    v8 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a3, v18, 1, v7);
}

unint64_t Request.setByteRange(_:)()
{
  v4._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v4);

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  sub_1000425C4(v5);
  v6._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 32);
  result = sub_100020EE4(0x3D7365747962, 0xE600000000000000, 8, isUniquelyReferenced_nonNull_native);
  *(v0 + 32) = v3;
  return result;
}

{
  v4._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v4);

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  sub_1000425C4(v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 32);
  result = sub_100020EE4(0x3D7365747962, 0xE600000000000000, 8, isUniquelyReferenced_nonNull_native);
  *(v0 + 32) = v3;
  return result;
}

void Request.setByteRange(_:)(uint64_t a1, uint64_t a2)
{
  v6._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v6);

  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  sub_1000425C4(v7);
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v8._countAndFlagsBits = sub_100042BA4();
    sub_1000425C4(v8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v2 + 32);
    sub_100020EE4(0x3D7365747962, 0xE600000000000000, 8, isUniquelyReferenced_nonNull_native);
    *(v2 + 32) = v5;
  }
}

__n128 Request.init<A>(logger:method:path:queryItems:headers:json:encoder:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *&v39 = a4;
  *(&v39 + 1) = a5;
  v16 = sub_100041B44();
  __chkstk_darwin(v16 - 8);
  v37 = a2;
  if (a2 == 1)
  {
  }

  else
  {
    v17 = sub_100042BD4();

    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v18 = sub_1000423F4();
  v19 = sub_1000427C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "GET method should not have any payload.", v20, 2u);
  }

LABEL_7:
  if (!a8)
  {
    sub_100041B84();
    swift_allocObject();
    sub_100041B74();
    sub_100041B34();
    sub_100041B54();
  }

  v36 = a7;
  v21 = sub_100041B64();
  v23 = v22;

  v46[0] = &off_100051A50;
  sub_100003288(&qword_100054C00, &qword_100044510);
  sub_10000DC08();
  v24 = sub_1000424C4();
  v26 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = a6;
  sub_100020EE4(v24, v26, 3, isUniquelyReferenced_nonNull_native);
  v28 = v46[0];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v28;
  sub_100020EE4(0xD000000000000010, 0x8000000100046F50, 0, v29);
  v30 = v46[0];

  (*(*(a10 - 8) + 8))(v36);
  v31 = sub_100042414();
  (*(*(v31 - 8) + 8))(a1, v31);
  sub_100004F3C(0, 0xF000000000000000);
  LOBYTE(v41) = v37;
  *(&v41 + 1) = a3;
  v42 = v39;
  *&v43 = v30;
  *(&v43 + 1) = _swiftEmptyArrayStorage;
  v44.n128_u64[0] = v21;
  v44.n128_u64[1] = v23;
  v45[0] = 1;
  memset(&v45[8], 0, 32);
  LOBYTE(v46[0]) = v37;
  v46[1] = a3;
  v47 = v39;
  v48 = v30;
  v49 = _swiftEmptyArrayStorage;
  v50 = v21;
  v51 = v23;
  v52 = 1;
  v53 = 0u;
  v54 = 0u;
  sub_100004FA4(&v41, &v40);
  sub_100005000(v46);
  v32 = *&v45[16];
  *(a9 + 64) = *v45;
  *(a9 + 80) = v32;
  *(a9 + 96) = *&v45[32];
  v33 = v42;
  *a9 = v41;
  *(a9 + 16) = v33;
  result = v44;
  *(a9 + 32) = v43;
  *(a9 + 48) = result;
  return result;
}

uint64_t sub_10001F364@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_100041C34();
    if (v10)
    {
      v11 = sub_100041C54();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_100041C44();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_100041C34();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_100041C54();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_100041C44();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10001F594(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000220C0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100004F50(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10001F364(v13, a3, a4, &v12);
  v10 = v4;
  sub_100004F50(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_10001F724(uint64_t a1)
{
  v1 = a1;
  sub_100042C54();
  Request.HeaderField.rawValue.getter(v1);
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

  v2 = sub_100042C94();

  return sub_10001F954(v1, v2);
}

unint64_t sub_10001F7AC(uint64_t a1)
{
  sub_1000423E4();
  sub_100022C9C(&qword_100054BC8, &type metadata accessor for Provider, &protocol conformance descriptor for Provider);
  v2 = sub_100042494();

  return sub_10001FC64(a1, v2);
}

unint64_t sub_10001F844(uint64_t a1, uint64_t a2)
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  v4 = sub_100042C94();

  return sub_10001FE24(a1, a2, v4);
}

unint64_t sub_10001F8BC(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  sub_100042C54();
  sub_10001BB48(v10, a1, a2, a3, a4);
  v8 = sub_100042C94();

  return sub_10001FEDC(a1, a2, a3, a4, v8);
}

unint64_t sub_10001F954(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = 0xE600000000000000;
    v25 = a1;
    while (1)
    {
      v6 = *(*(v26 + 48) + v4);
      v27 = v4;
      if (v6 > 4)
      {
        if (*(*(v26 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v12 = 0xE400000000000000;
            v11 = 1734431813;
          }

          else
          {
            v12 = 0xE800000000000000;
            v11 = 0x6E6F697461636F4CLL;
          }
        }

        else if (v6 == 7)
        {
          v12 = 0xE600000000000000;
          v11 = 0x616D67617250;
        }

        else if (v6 == 8)
        {
          v12 = 0xE500000000000000;
          v11 = 0x65676E6152;
        }

        else
        {
          v11 = 0x6B6F6F432D746553;
          v12 = 0xEA00000000006569;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x2D746E65746E6F43;
        }

        else
        {
          v7 = 0x65696B6F6F43;
        }

        if (v6 == 3)
        {
          v8 = 0xEC00000065707954;
        }

        else
        {
          v8 = 0xE600000000000000;
        }

        if (v6 == 2)
        {
          v7 = 0x2D746E65746E6F43;
          v8 = 0xEE006874676E654CLL;
        }

        v9 = *(*(v26 + 48) + v4) ? 0x7A69726F68747541 : 0x747065636341;
        v10 = v6 ? 0xED00006E6F697461 : 0xE600000000000000;
        v11 = v6 <= 1 ? v9 : v7;
        v12 = v6 <= 1 ? v10 : v8;
      }

      v13 = 0x6B6F6F432D746553;
      if (v25 == 8)
      {
        v13 = 0x65676E6152;
      }

      v14 = 0xEA00000000006569;
      if (v25 == 8)
      {
        v14 = 0xE500000000000000;
      }

      if (v25 == 7)
      {
        v13 = 0x616D67617250;
        v14 = 0xE600000000000000;
      }

      v15 = 0x6E6F697461636F4CLL;
      if (v25 == 5)
      {
        v15 = 1734431813;
      }

      v16 = 0xE400000000000000;
      if (v25 != 5)
      {
        v16 = 0xE800000000000000;
      }

      if (v25 <= 6)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v25 == 3)
      {
        v17 = 0x2D746E65746E6F43;
      }

      else
      {
        v17 = 0x65696B6F6F43;
      }

      if (v25 == 3)
      {
        v18 = 0xEC00000065707954;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      if (v25 == 2)
      {
        v17 = 0x2D746E65746E6F43;
        v18 = 0xEE006874676E654CLL;
      }

      if (v25)
      {
        v19 = 0x7A69726F68747541;
      }

      else
      {
        v19 = 0x747065636341;
      }

      if (v25)
      {
        v5 = 0xED00006E6F697461;
      }

      if (v25 <= 1)
      {
        v17 = v19;
        v18 = v5;
      }

      v20 = v25 <= 4 ? v17 : v13;
      v21 = v25 <= 4 ? v18 : v14;
      if (v11 == v20 && v12 == v21)
      {
        break;
      }

      v22 = sub_100042BD4();

      if (v22)
      {
        return v27;
      }

      v4 = (v27 + 1) & v24;
      v5 = 0xE600000000000000;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v27;
  }

  return v4;
}

unint64_t sub_10001FC64(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000423E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
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
      sub_100022C9C(&qword_100054FF0, &type metadata accessor for Provider, &protocol conformance descriptor for Provider);
      v15 = sub_1000424D4();
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

unint64_t sub_10001FE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100042BD4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001FEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v9 = ~v7;
  v10 = *(a1 + 16);
  while (1)
  {
    v11 = (*(v5 + 48) + 32 * result);
    v12 = *v11;
    if (*(*v11 + 16) == v10)
    {
      break;
    }

LABEL_4:
    result = (result + 1) & v9;
    if (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      return result;
    }
  }

  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  if (!v10 || v12 == a1)
  {
LABEL_12:
    v19 = *(v13 + 16);
    if (v19 == *(a2 + 16))
    {
      if (!v19 || v13 == a2)
      {
LABEL_18:
        v22 = *(v14 + 16);
        if (v22 == *(a3 + 16))
        {
          if (!v22 || v14 == a3)
          {
LABEL_3:
            if (v15 == a4)
            {
              return result;
            }
          }

          else
          {
            v23 = (v14 + 32);
            v24 = (a3 + 32);
            while (*v23 == *v24)
            {
              ++v23;
              ++v24;
              if (!--v22)
              {
                goto LABEL_3;
              }
            }
          }
        }
      }

      else
      {
        v20 = (v13 + 32);
        v21 = (a2 + 32);
        while (*v20 == *v21)
        {
          ++v20;
          ++v21;
          if (!--v19)
          {
            goto LABEL_18;
          }
        }
      }
    }

    goto LABEL_4;
  }

  v16 = (v12 + 32);
  v17 = (a1 + 32);
  v18 = *(a1 + 16);
  while (v18)
  {
    if (*v16 != *v17)
    {
      goto LABEL_4;
    }

    ++v16;
    ++v17;
    if (!--v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_10002005C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000423E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100003288(&qword_100054AD0, &qword_100043BE0);
  v39 = v4;
  result = sub_100042A74();
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

      sub_100022C9C(&qword_100054BC8, &type metadata accessor for Provider, &protocol conformance descriptor for Provider);
      result = sub_100042494();
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

uint64_t sub_100020438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003288(&qword_100054AC0, &qword_100043BD0);
  v44 = v4;
  result = sub_100042A74();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v5;
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
      v46 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 32 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v47 = v22[3];
      v45 = *(*(v5 + 56) + 2 * v21);
      if ((v44 & 1) == 0)
      {
      }

      sub_100042C54();
      v48 = v23;
      v26 = *(v23 + 16);
      sub_100042C64(v26);
      if (v26)
      {
        v27 = (v48 + 32);
        do
        {
          v28 = *v27++;
          sub_100042C64(v28);
          --v26;
        }

        while (v26);
      }

      v29 = *(v24 + 16);
      sub_100042C64(v29);
      if (v29)
      {
        v30 = (v24 + 32);
        do
        {
          v31 = *v30++;
          sub_100042C64(v31);
          --v29;
        }

        while (v29);
      }

      v32 = *(v25 + 16);
      sub_100042C64(v32);
      if (v32)
      {
        v33 = (v25 + 32);
        do
        {
          v34 = *v33++;
          sub_100042C84(v34);
          --v32;
        }

        while (v32);
      }

      sub_100042C64(v47);
      result = sub_100042C94();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v16 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v7 + 48) + 32 * v15);
      *v17 = v16;
      v17[1] = v24;
      v17[2] = v25;
      v17[3] = v47;
      *(*(v7 + 56) + 2 * v15) = v45;
      ++*(v7 + 16);
      v5 = v43;
      v12 = v46;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_44;
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
        v46 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_42;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_42:
  *v3 = v7;
  return result;
}

uint64_t sub_100020798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003288(&qword_100054AB8, &qword_100043BC8);
  v32 = v4;
  result = sub_100042A74();
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
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_100042C54();
      _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

      result = sub_100042C94();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
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
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100020B7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000423E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10001F7AC(a2);
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
      sub_1000210FC();
      goto LABEL_7;
    }

    sub_10002005C(v17, a3 & 1);
    v22 = sub_10001F7AC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100021044(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_100042C04();
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
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_100020D48(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::UInt a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_10001F8BC(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_100020438(v20, a6 & 1);
      result = sub_10001F8BC(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_100042C04();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_10002137C();
      result = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 2 * result) = a1;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  v26 = (v25[6] + 32 * result);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  *(v25[7] + 2 * result) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v28;
}

unint64_t sub_100020EE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10001F724(a3);
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
      sub_100020798(v16, a4 & 1);
      result = sub_10001F724(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_100042C04();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100021504();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_100021044(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000423E4();
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

char *sub_1000210FC()
{
  v1 = v0;
  v33 = sub_1000423E4();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003288(&qword_100054AD0, &qword_100043BE0);
  v3 = *v0;
  v4 = sub_100042A64();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
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

  return result;
}

void *sub_10002137C()
{
  v1 = v0;
  sub_100003288(&qword_100054AC0, &qword_100043BD0);
  v2 = *v0;
  v3 = sub_100042A64();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = *v18;
        v20 = v18[1];
        v22 = v18[2];
        v21 = v18[3];
        v23 = *(*(v2 + 56) + 2 * v17);
        v24 = (*(v4 + 48) + 32 * v17);
        *v24 = v19;
        v24[1] = v20;
        v24[2] = v22;
        v24[3] = v21;
        *(*(v4 + 56) + 2 * v17) = v23;
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

void *sub_100021504()
{
  v1 = v0;
  sub_100003288(&qword_100054AB8, &qword_100043BC8);
  v2 = *v0;
  v3 = sub_100042A64();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void sub_10002166C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_9:
    v5 &= v5 - 1;

    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

    v7 ^= sub_100042C94();
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_100042C64(v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1000218E0(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v52 = sub_100042114();
  v3 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000423E4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v50 - v9;
  v10 = sub_100003288(&qword_100054DE0, &qword_100045C40);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v16 = *(a2 + 64);
  v62 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v50 = (v17 + 63) >> 6;
  v55 = v6 + 16;
  v68 = (v6 + 32);
  v57 = v6;
  v59 = (v6 + 8);
  v53 = v3 + 16;
  v54 = v3;
  v20 = (v3 + 8);
  v58 = a2;

  v21 = 0;
  v22 = 0;
  v65 = v15;
  v66 = v13;
  v67 = v5;
  while (v19)
  {
    v23 = v22;
LABEL_16:
    v69 = (v19 - 1) & v19;
    v26 = __clz(__rbit64(v19)) | (v23 << 6);
    v27 = v58;
    v28 = v57;
    v29 = v56;
    (*(v57 + 16))(v56, *(v58 + 48) + *(v57 + 72) * v26, v5);
    v30 = *(*(v27 + 56) + 8 * v26);
    v31 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
    v32 = v5;
    v33 = v31;
    v34 = *(v31 + 48);
    v35 = *(v28 + 32);
    v13 = v66;
    v35(v66, v29, v32);
    *&v13[v34] = v30;
    (*(*(v33 - 8) + 56))(v13, 0, 1, v33);

    v15 = v65;
LABEL_17:
    sub_100022C2C(v13, v15);
    v36 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
    if ((*(*(v36 - 8) + 48))(v15, 1, v36) == 1)
    {

      sub_100042C64(v21);
      return;
    }

    v37 = *(v36 + 48);
    v5 = v67;
    v38 = v60;
    (*v68)(v60, v15, v67);
    v39 = *&v15[v37];
    v40 = *(v61 + 48);
    v72 = *(v61 + 32);
    v73 = v40;
    v74 = *(v61 + 64);
    v41 = *(v61 + 16);
    v70 = *v61;
    v71 = v41;
    sub_100022C9C(&qword_100054BC8, &type metadata accessor for Provider, &protocol conformance descriptor for Provider);
    sub_1000424A4();
    (*v59)(v38, v5);
    sub_100042C64(*(v39 + 16));
    v42 = *(v39 + 16);
    if (v42)
    {
      v64 = v21;
      v43 = *(v54 + 80);
      v63 = v39;
      v44 = v39 + ((v43 + 32) & ~v43);
      v45 = *(v54 + 72);
      v46 = *(v54 + 16);
      v47 = v52;
      v48 = v51;
      do
      {
        v46(v48, v44, v47);
        sub_100022C9C(&qword_100054FE8, &type metadata accessor for EmailAddress.Domain, &protocol conformance descriptor for EmailAddress.Domain);
        sub_1000424A4();
        (*v20)(v48, v47);
        v44 += v45;
        --v42;
      }

      while (v42);

      v13 = v66;
      v5 = v67;
      v21 = v64;
      v15 = v65;
    }

    else
    {
    }

    v21 ^= sub_100042C94();
    v19 = v69;
  }

  if (v50 <= v22 + 1)
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = v50;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v50)
    {
      v49 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
      (*(*(v49 - 8) + 56))(v13, 1, 1, v49);
      v69 = 0;
      v22 = v25;
      goto LABEL_17;
    }

    v19 = *(v62 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_100021F1C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
    v14 = v7;
LABEL_11:
    v10 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v8 << 6)));

    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

    sub_100042C64(*(v10 + 16));
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 40;
      do
      {

        _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();

        v12 += 16;
        --v11;
      }

      while (v11);
    }

    v5 &= v5 - 1;

    v7 = sub_100042C94() ^ v14;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_100042C64(v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v14 = v7;
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1000220C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_100041C34();
  v11 = result;
  if (result)
  {
    result = sub_100041C54();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_100041C44();
  sub_10001F364(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100022178(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10001DE9C(a3, a4);
          return sub_10001F594(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s27AccountsUISupportServiceLib7RequestV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = 0x4554454C4544;
  v5 = *a1;
  if (v5 > 2)
  {
    v10 = 0xE400000000000000;
    v11 = 1414745936;
    if (v5 != 4)
    {
      v11 = 5526864;
      v10 = 0xE300000000000000;
    }

    if (v5 == 3)
    {
      v8 = 0x4843544150;
    }

    else
    {
      v8 = v11;
    }

    if (v5 == 3)
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v7 = 5522759;
    if (v5 != 1)
    {
      v7 = 1145128264;
      v6 = 0xE400000000000000;
    }

    if (*a1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x4554454C4544;
    }

    if (v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  v12 = 0xE600000000000000;
  v13 = 0xE500000000000000;
  v14 = *a2;
  v15 = 0x4843544150;
  v16 = 0xE400000000000000;
  v17 = 1414745936;
  if (v14 != 4)
  {
    v17 = 5526864;
    v16 = 0xE300000000000000;
  }

  if (v14 != 3)
  {
    v15 = v17;
    v13 = v16;
  }

  v18 = 0xE300000000000000;
  v19 = 5522759;
  if (v14 != 1)
  {
    v19 = 1145128264;
    v18 = 0xE400000000000000;
  }

  if (*a2)
  {
    v4 = v19;
    v12 = v18;
  }

  if (*a2 <= 2u)
  {
    v20 = v4;
  }

  else
  {
    v20 = v15;
  }

  if (*a2 <= 2u)
  {
    v21 = v12;
  }

  else
  {
    v21 = v13;
  }

  if (v8 == v20 && v9 == v21)
  {
  }

  else
  {
    v22 = sub_100042BD4();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_100042BD4() & 1) == 0 || (sub_100019560(*(a1 + 3), *(a2 + 3)) & 1) == 0 || (sub_100034150(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (sub_100019744(*(a1 + 5), *(a2 + 5)) & 1) == 0)
  {
    return 0;
  }

  v23 = *(a1 + 3);
  v42 = *(a2 + 3);
  v43 = v23;
  v24 = v23;
  v25 = v42;
  if (*(&v23 + 1) >> 60 == 15)
  {
    if (*(&v42 + 1) >> 60 == 15)
    {
      sub_100022D8C(&v43, v41);
      sub_100022D8C(&v42, v41);
      sub_100004F3C(v24, *(&v24 + 1));
      goto LABEL_48;
    }

LABEL_46:
    sub_100022D8C(&v43, v41);
    sub_100022D8C(&v42, v41);
    sub_100004F3C(v24, *(&v24 + 1));
    sub_100004F3C(v25, *(&v25 + 1));
    return 0;
  }

  if (*(&v42 + 1) >> 60 == 15)
  {
    goto LABEL_46;
  }

  sub_100022D8C(&v43, v41);
  sub_100022D8C(&v42, v41);
  v26 = sub_100022178(v24, *(&v24 + 1), v25, *(&v25 + 1));
  sub_100004F3C(v25, *(&v25 + 1));
  sub_100004F3C(v24, *(&v24 + 1));
  if (!v26)
  {
    return 0;
  }

LABEL_48:
  if ((a1[64] ^ a2[64]))
  {
    return 0;
  }

  v28 = *(a1 + 9);
  v27 = *(a1 + 10);
  v29 = *(a1 + 11);
  v30 = *(a1 + 12);
  v32 = *(a2 + 9);
  v31 = *(a2 + 10);
  v34 = *(a2 + 11);
  v33 = *(a2 + 12);
  if (!v29)
  {
    if (!v34)
    {
      return 1;
    }

    goto LABEL_54;
  }

  if (!v34)
  {
LABEL_54:
    sub_10001DFC8(v32, v31, v34, v33);
    sub_10001DFC8(v28, v27, v29, v30);
    sub_10000F728(v28, v27, v29, v30);
    v35 = v32;
    v36 = v31;
    v37 = v34;
    v38 = v33;
    goto LABEL_55;
  }

  if (v32 != v28 || (v27 != v31 || v29 != v34) && (sub_100042BD4() & 1) == 0)
  {
    sub_10001DFC8(v32, v31, v34, v33);
    sub_10001DFC8(v28, v27, v29, v30);

    v35 = v28;
    v36 = v27;
    v37 = v29;
    v38 = v30;
LABEL_55:
    sub_10000F728(v35, v36, v37, v38);
    return 0;
  }

  if (v30)
  {
    if (v33)
    {
      sub_100003084();
      sub_10001DFC8(v32, v31, v34, v33);
      sub_10001DFC8(v28, v27, v29, v30);
      v40 = sub_1000427E4();

      sub_10000F728(v28, v27, v29, v30);
      if (v40)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v33)
  {
    sub_10001DFC8(v32, v31, v34, v33);
    sub_10001DFC8(v28, v27, v29, 0);

    v35 = v28;
    v36 = v27;
    v37 = v29;
    v38 = 0;
    goto LABEL_55;
  }

  return 1;
}

unint64_t _s27AccountsUISupportServiceLib7RequestV6MethodO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100051890;
  v6._object = a2;
  v4 = sub_100042AA4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t _s27AccountsUISupportServiceLib7RequestV11HeaderFieldO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100051940;
  v6._object = a2;
  v4 = sub_100042AA4(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100022824(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054FC8, &qword_100045EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100022890()
{
  result = qword_100054FD0;
  if (!qword_100054FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FD0);
  }

  return result;
}

unint64_t sub_1000228E8()
{
  result = qword_100054FD8;
  if (!qword_100054FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FD8);
  }

  return result;
}

unint64_t sub_100022940()
{
  result = qword_100054FE0;
  if (!qword_100054FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FE0);
  }

  return result;
}

uint64_t sub_100022994(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000229B0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000229D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000229F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100022A1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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