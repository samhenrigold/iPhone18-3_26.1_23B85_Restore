void sub_100014844(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

        sub_100013C2C(a1, a2, v20, a3);
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

void *sub_1000149B0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_100014844(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_100014A40(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_10009EA34();
      sub_100007330(0, &qword_1000C0C48, HMService_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    if (sub_10009E9F4() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_10009EA04();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_10009E8D4(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_10009E8E4();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_100014C64()
{
  result = qword_1000C0C58;
  if (!qword_1000C0C58)
  {
    sub_10000375C(&qword_1000C0C50, &qword_10009F9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0C58);
  }

  return result;
}

uint64_t sub_100014CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100014D38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v82 = a8;
  v85 = a6;
  v84 = a5;
  v89 = a4;
  v88 = a3;
  v100 = a2;
  v10 = type metadata accessor for WidgetTileInfo(0);
  v11 = __chkstk_darwin(v10 - 8);
  v81 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v80 = &v77[-v14];
  __chkstk_darwin(v13);
  v79 = &v77[-v15];
  v101 = sub_10009D1C4();
  v16 = *(v101 - 8);
  v17 = __chkstk_darwin(v101);
  v87 = &v77[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v86 = &v77[-v20];
  v21 = __chkstk_darwin(v19);
  v110 = &v77[-v22];
  v23 = __chkstk_darwin(v21);
  v109 = &v77[-v24];
  v25 = __chkstk_darwin(v23);
  v108 = &v77[-v26];
  __chkstk_darwin(v25);
  v107 = &v77[-v27];
  v120 = sub_10009CF14();
  v28 = *(v120 - 8);
  v29 = __chkstk_darwin(v120);
  v113 = &v77[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v119 = &v77[-v31];
  if (a1 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v33 = 0;
    v99 = a1 & 0xC000000000000001;
    v98 = a1 & 0xFFFFFFFFFFFFFF8;
    v94 = a1 + 32;
    v118 = (v28 + 8);
    v97 = enum case for ServiceKind.valve(_:);
    v111 = (v16 + 8);
    v112 = (v16 + 104);
    v96 = enum case for ServiceKind.lockMechanism(_:);
    v78 = enum case for ServiceKind.lockManagement(_:);
    v95 = v84 & 0xC000000000000001;
    v34 = v84 & 0xFFFFFFFFFFFFFF8;
    if (v84 < 0)
    {
      v34 = v84;
    }

    v90 = v34;
    v83 = v84 + 56;
    v91 = a7;
    v93 = a1;
    v92 = i;
    while (1)
    {
      if (v99)
      {
        v35 = sub_10009EAE4();
      }

      else
      {
        if (v33 >= *(v98 + 16))
        {
          goto LABEL_59;
        }

        v35 = *(v94 + 8 * v33);
      }

      v130 = v35;
      v36 = __OFADD__(v33, 1);
      v37 = v33 + 1;
      a1 = v101;
      if (v36)
      {
        break;
      }

      v106 = v37;
      v38 = [v130 uniqueIdentifier];
      v39 = v119;
      sub_10009CF04();

      v103 = sub_100024418(v39, v100);
      v117 = *v118;
      v117(v39, v120);
      sub_10009E904();
      v40 = *v112;
      (*v112)(v108, v97, a1);
      sub_100015FA4(&qword_1000C0CB0, &type metadata accessor for ServiceKind, &protocol conformance descriptor for ServiceKind);
      sub_10009E654();
      sub_10009E654();
      if (v123 == v121 && v124 == v122)
      {
        v41 = 1;
      }

      else
      {
        v41 = sub_10009ED34();
      }

      v42 = *v111;
      (*v111)(v108, a1);
      v42(v107, a1);

      if (v41)
      {
        v43 = [v89 uniqueIdentifier];
        v44 = v119;
        sub_10009CF04();

        v102 = sub_100024418(v44, v88);
        v117(v44, v120);
      }

      else
      {
        v102 = 0;
      }

      sub_10009E904();
      v40(v110, v96, a1);
      sub_10009E654();
      sub_10009E654();
      v28 = v124;
      v16 = v122;
      if (v123 == v121 && v124 == v122)
      {
        v42(v110, a1);
        v42(v109, a1);
      }

      else
      {
        v45 = sub_10009ED34();
        v42(v110, a1);
        v42(v109, a1);

        if ((v45 & 1) == 0)
        {
          sub_10009E904();
          v40(v87, v78, a1);
          sub_10009E654();
          sub_10009E654();
          v28 = v124;
          v16 = v122;
          if (v123 == v121 && v124 == v122)
          {
            v105 = 1;
          }

          else
          {
            v105 = sub_10009ED34();
          }

          v42(v87, a1);
          v42(v86, a1);

          goto LABEL_28;
        }
      }

      v105 = 1;
LABEL_28:
      if (v95)
      {
        swift_unknownObjectRetain();
        v16 = sub_10009E9D4();
        v28 = sub_100007330(0, &qword_1000C0C48, HMService_ptr);
        sub_10001607C(&qword_1000C0C88, &qword_1000C0C48, HMService_ptr);
        sub_10009E794();
        v46 = v125;
        v47 = v126;
        v48 = v127;
        v49 = v128;
        a1 = v129;
      }

      else
      {
        v46 = v84;
        v50 = -1 << *(v84 + 32);
        v48 = ~v50;
        v51 = -v50;
        if (v51 < 64)
        {
          v52 = ~(-1 << v51);
        }

        else
        {
          v52 = -1;
        }

        a1 = v52 & *(v84 + 56);

        v49 = 0;
        v47 = v83;
      }

      v104 = v48;
      v53 = (v48 + 64) >> 6;
      v115 = v53;
      v116 = v47;
      while (1)
      {
        a7 = v49;
        if ((v46 & 0x8000000000000000) == 0)
        {
          break;
        }

        v28 = v46 & 0x7FFFFFFFFFFFFFFFLL;
        v57 = sub_10009EA44();
        if (!v57)
        {
          goto LABEL_47;
        }

        v121 = v57;
        sub_100007330(0, &qword_1000C0C48, HMService_ptr);
        swift_dynamicCast();
        v28 = v123;
        v56 = a1;
        if (!v123)
        {
          goto LABEL_47;
        }

LABEL_44:
        v114 = a1;
        v16 = a7;
        v58 = [v28 uniqueIdentifier];
        v59 = v119;
        sub_10009CF04();

        v60 = [v130 uniqueIdentifier];
        v61 = v113;
        sub_10009CF04();

        LOBYTE(v60) = sub_10009CEF4();
        v28 = v120;
        a1 = v56;
        v62 = v46;
        v63 = v117;
        v117(v61, v120);
        v64 = v59;
        v47 = v116;
        v63(v64, v28);
        v53 = v115;
        v46 = v62;
        if (v60)
        {
          sub_100015F9C(v62);
          a7 = 1;
          if (v105)
          {
            v16 = 0;
            v65 = v91;
            v33 = v106;
            goto LABEL_49;
          }

          v65 = v91;
          v33 = v106;
          goto LABEL_48;
        }
      }

      v54 = v49;
      v55 = a1;
      if (!a1)
      {
        while (1)
        {
          v49 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          if (v49 >= v53)
          {
            goto LABEL_47;
          }

          v55 = *(v47 + 8 * v49);
          ++v54;
          if (v55)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
        break;
      }

LABEL_40:
      v56 = (v55 - 1) & v55;
      v28 = *(*(v46 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v55)))));
      if (v28)
      {
        goto LABEL_44;
      }

LABEL_47:
      sub_100015F9C(v46);
      v16 = 0;
      a7 = 0;
      v65 = v91;
      v33 = v106;
      if (v105)
      {
        goto LABEL_49;
      }

LABEL_48:
      v66 = [v130 uniqueIdentifier];
      v28 = v119;
      sub_10009CF04();

      v16 = sub_100024418(v28, v85);
      v117(v28, v120);
LABEL_49:
      if (v65)
      {
        v67 = [v130 uniqueIdentifier];
        v68 = v119;
        sub_10009CF04();

        v28 = sub_100024418(v68, v65);
        v117(v68, v120);
        a1 = v93;
        if (v28 & a7)
        {
          goto LABEL_53;
        }
      }

      else
      {
        a1 = v93;
        if (a7)
        {
LABEL_53:
          if (((v16 | v103 | v102) & 1) == 0)
          {
            v69 = v130;
            v70 = [v130 uniqueIdentifier];
            v71 = v119;
            sub_10009CF04();

            v72 = [v69 name];
            v73 = sub_10009E5C4();
            v75 = v74;

            v76 = v79;
            sub_10000F8B0(v69, v71, v73, v75, 0, 255, v79);

            v117(v71, v120);
            v16 = v81;
            sub_100006850(v76, v81);
            a7 = v80;
            v28 = v82;
            sub_100003C48(v80, v16);
            sub_100006918(a7);
            sub_100006918(v76);
          }
        }
      }

      if (v33 == v92)
      {
        return;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }
}

uint64_t sub_100015A5C(uint64_t a1)
{
  v2 = type metadata accessor for WidgetTileInfo(0) - 8;
  v3 = __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_100006850(v11, v5);
      sub_100003C48(v9, v5);
      result = sub_100006918(v9);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_100015B68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_100015BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTileInfo(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - v12;
  __chkstk_darwin(v11);
  v16 = &v28 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = *(v14 + 80);
  v32 = *(v14 + 72);
  v29 = (v18 + 32) & ~v18;
  v19 = a1 + v29;
  v20 = _swiftEmptyArrayStorage;
  v30 = v7;
  v31 = a2;
  do
  {
    sub_100006850(v19, v16);
    sub_100006850(v16, v10);
    v22 = sub_100003C48(v13, v10);
    sub_100006918(v13);
    if (v22)
    {
      sub_1000068B4(v16, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001BBBC(0, v20[2] + 1, 1);
        v20 = v33;
      }

      v25 = v20[2];
      v24 = v20[3];
      if (v25 >= v24 >> 1)
      {
        sub_10001BBBC((v24 > 1), v25 + 1, 1);
        v20 = v33;
      }

      v20[2] = v25 + 1;
      v21 = v32;
      v26 = v20 + v29 + v25 * v32;
      v7 = v30;
      sub_1000068B4(v30, v26);
    }

    else
    {
      sub_100006918(v16);
      v21 = v32;
    }

    v19 += v21;
    --v17;
  }

  while (v17);
  return v20;
}

uint64_t sub_100015DDC(uint64_t a1)
{
  v2 = type metadata accessor for WidgetTileInfo(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100015FA4(&qword_1000C0C68, type metadata accessor for WidgetTileInfo, &unk_10009FB94);
  result = sub_10009E774();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_100006850(v11, v6);
      sub_100003C48(v8, v6);
      sub_100006918(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100015F44(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100015F90(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100015FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001600C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001607C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007330(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000160CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003714(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_10001612C(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100016140(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
    sub_10001607C(&qword_1000C0CC8, &qword_1000C0BF0, HMAccessory_ptr);
    result = sub_10009E774();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10009EAE4();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100003FF0(&v9, v7);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_10009EBA4();
  }

  v5 = result;
  v4 = sub_10009EBA4();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100016298(uint64_t a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100015FA4(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = sub_10009E774();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1000042AC(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10001644C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_10009D5A4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[10];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100003714(&qword_1000C0CD0, &qword_10009FA30);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[18];
    goto LABEL_11;
  }

  v17 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[19];

  return v18(v19, a2, v17);
}

uint64_t sub_100016638(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10009CF14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_10009D5A4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[10];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100003714(&qword_1000C0CD0, &qword_10009FA30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[18];
    goto LABEL_9;
  }

  v17 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[19];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for WidgetTileInfo(uint64_t a1)
{
  result = qword_1000C0D30;
  if (!qword_1000C0D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001685C(uint64_t a1)
{
  sub_10009CF14();
  if (v1 <= 0x3F)
  {
    sub_100016B20(319, &qword_1000C0D40, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10009D5A4();
      if (v3 <= 0x3F)
      {
        sub_100016A2C(319);
        if (v4 <= 0x3F)
        {
          sub_100016ACC(319, &qword_1000C0D50, &type metadata accessor for AnyTileInfoBearer);
          if (v5 <= 0x3F)
          {
            sub_100016ACC(319, &qword_1000C0D58, type metadata accessor for WidgetPredictionAnalyticsInfo);
            if (v6 <= 0x3F)
            {
              sub_100016B20(319, &qword_1000C0D60, &type metadata for Bool);
              if (v7 <= 0x3F)
              {
                sub_100016B20(319, &unk_1000C0D68, &type metadata for Double);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100016A2C(uint64_t a1)
{
  if (!qword_1000C0D48)
  {
    sub_10009CF14();
    sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = sub_10009E4E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1000C0D48);
    }
  }
}

void sub_100016ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009E944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100016B20(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10009E944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100016B6C(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_100016B88(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100016B9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100016BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100016C2C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100016C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10009CF14();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (a2 && (v11 = sub_10009E914()) != 0)
  {
    v12 = v11;
    v13 = [v11 uniqueIdentifier];

    sub_10009CF04();
    (*(v5 + 32))(v10, v8, v4);
    if (*(a2 + 16))
    {
      v14 = sub_10001B5D0(v10);
      if (v15)
      {
        sub_10001B668(*(a2 + 56) + 32 * v14, &v22);
        (*(v5 + 8))(v10, v4);
        goto LABEL_13;
      }
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    v16 = sub_10009E914();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 value];

      if (v18)
      {
        sub_10009E974();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      goto LABEL_13;
    }
  }

  v22 = 0u;
  v23 = 0u;
LABEL_13:
  sub_100003714(&qword_1000C0DF8, &qword_10009FC60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v20 = 0;
  }

  return v20;
}

uint64_t sub_100016EAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10009CF14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  if (a2 && (v10 = sub_10009E914()) != 0)
  {
    v11 = v10;
    v12 = [v10 uniqueIdentifier];

    sub_10009CF04();
    (*(v4 + 32))(v9, v7, v3);
    if (*(a2 + 16))
    {
      v13 = sub_10001B5D0(v9);
      if (v14)
      {
        sub_10001B668(*(a2 + 56) + 32 * v13, &v21);
        (*(v4 + 8))(v9, v3);
        goto LABEL_13;
      }
    }

    (*(v4 + 8))(v9, v3);
  }

  else
  {
    v15 = sub_10009E914();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 value];

      if (v17)
      {
        sub_10009E974();
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      v21 = v19;
      v22 = v20;
      goto LABEL_13;
    }
  }

  v21 = 0u;
  v22 = 0u;
LABEL_13:
  sub_100003714(&qword_1000C0DF8, &qword_10009FC60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v19) = 2;
  }

  return v19;
}

void sub_1000170E8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10009E9D4();
    sub_100007330(0, &qword_1000C0CB8, HMAction_ptr);
    sub_10001CD60();
    sub_10009E794();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_10009EA44() || (sub_100007330(0, &qword_1000C0CB8, HMAction_ptr), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        sub_100015F9C(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 hf_affectedCharacteristic];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      sub_10009E684();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10009E6C4();
      }

      sub_10009E6E4();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_100017354(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v27)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v30 = i;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10009EAE4();
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v38 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_10001A80C(&v38, &v37);
      if (v2)
      {
        goto LABEL_40;
      }

      v9 = v37;
      v6 = (v37 >> 62);
      if (v37 >> 62)
      {
        v10 = sub_10009EBA4();
      }

      else
      {
        v10 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_10009EBA4();
        v13 = v26 + v10;
        if (__OFADD__(v26, v10))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v14 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_10009EBA4();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_10009EAF4();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v6)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_10009EBA4();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        if (((v16 >> 1) - v15) < v35)
        {
          goto LABEL_44;
        }

        v34 = v5;
        v19 = v14 + 8 * v15 + 32;
        v29 = v14;
        if (v6)
        {
          if (v17 < 1)
          {
            goto LABEL_46;
          }

          sub_10001CDC8(&qword_1000C0E68, &qword_1000C0E60, &unk_1000A1E40, &protocol conformance descriptor for [A]);
          for (j = 0; j != v17; ++j)
          {
            sub_100003714(&qword_1000C0E60, &unk_1000A1E40);
            v21 = sub_10001C624(v36, j, v9);
            v23 = *v22;
            (v21)(v36, 0);
            *(v19 + 8 * j) = v23;
          }
        }

        else
        {
          sub_100007330(0, &qword_1000C0C00, HMCharacteristic_ptr);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v34;
        if (v35 >= 1)
        {
          v24 = *(v29 + 16);
          v7 = __OFADD__(v24, v35);
          v25 = v24 + v35;
          if (v7)
          {
            goto LABEL_45;
          }

          *(v29 + 16) = v25;
        }
      }

      else
      {

        if (v35 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v4 == v30)
      {
        return v5;
      }
    }

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
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_10009EBA4();
  }

  return _swiftEmptyArrayStorage;
}

Swift::Int sub_1000176E4()
{
  v1 = *(v0 + 8);
  sub_10009EDD4();
  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    goto LABEL_10;
  }

  if (v1 == 2)
  {
    v2 = 3;
    goto LABEL_10;
  }

  if (v1 == 3)
  {
    v2 = 4;
LABEL_10:
    sub_10009EDE4(v2);
    sub_10009E8F4();
    return sub_10009EE04();
  }

  sub_10009EDE4(0);
  return sub_10009EE04();
}

void sub_10001778C(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 <= 1)
  {
    if (*(v1 + 8))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else if (v2 == 2)
  {
    v3 = 3;
  }

  else
  {
    if (v2 != 3)
    {
      sub_10009EDE4(0);
      return;
    }

    v3 = 4;
  }

  sub_10009EDE4(v3);
  sub_10009E8F4();
}

Swift::Int sub_100017818(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_10009EDD4();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = 3;
    goto LABEL_10;
  }

  if (v2 == 3)
  {
    v3 = 4;
LABEL_10:
    sub_10009EDE4(v3);
    sub_10009E8F4();
    return sub_10009EE04();
  }

  sub_10009EDE4(0);
  return sub_10009EE04();
}

unint64_t sub_1000178D8()
{
  result = qword_1000C0DE0;
  if (!qword_1000C0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0DE0);
  }

  return result;
}

uint64_t sub_10001792C(void *a1, unsigned __int8 a2)
{
  v4 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_10009D4F4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 1u)
  {
    if (a2)
    {
      v16 = [a1 services];
      sub_100007330(0, &qword_1000C0C48, HMService_ptr);
      v17 = sub_10009E6A4();

      v21 = v17;
    }

    else
    {
      sub_100003714(&qword_1000C0E20, &unk_1000A0940);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10009FA10;
      *(v14 + 32) = a1;
      v21 = v14;
      v15 = a1;
    }

    sub_100003714(&qword_1000C0C50, &qword_10009F9F8);
    sub_10001CDC8(&qword_1000C0C58, &qword_1000C0C50, &qword_10009F9F8, &protocol conformance descriptor for [A]);
    sub_10009E7C4();

    v13 = sub_10009D244();
  }

  else if (a2 == 2)
  {
    v13 = 1;
  }

  else
  {
    if (a2 == 3)
    {
      v12 = v9;
      sub_10009E7D4();
      if ((*(v8 + 48))(v6, 1, v12) != 1)
      {
        (*(v8 + 32))(v11, v6, v12);
        v19 = sub_10009D4B4();
        (*(v8 + 8))(v11, v12);
        v13 = v19;
        return v13 & 1;
      }

      sub_1000160CC(v6, &qword_1000C0C80, &qword_1000A1E10);
    }

    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_100017C60()
{
  v1 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_10009D4F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009CF14();
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTileInfo(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + *(v12 + 80));
  if (v15 != 2)
  {
    return v15 & 1;
  }

  sub_100006850(v0, v14);
  v16 = v0 + *(v11 + 60);
  v17 = *v16;
  v18 = *(v16 + 8);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v21 = v17;
      sub_100006918(v14);
      v22 = *(v0 + *(v11 + 64));
      v23 = [v21 uniqueIdentifier];
      sub_10009CF04();

      if (!*(v22 + 16) || (v24 = sub_10001B5D0(v10), (v25 & 1) == 0))
      {

        (*(v32 + 8))(v10, v8);
        goto LABEL_25;
      }

      sub_10001B668(*(v22 + 56) + 32 * v24, v34);

      (*(v32 + 8))(v10, v8);
      if (!swift_dynamicCast())
      {
LABEL_25:
        LOBYTE(v15) = 0;
        return v15 & 1;
      }

      LOBYTE(v15) = v33;
    }

    else
    {
      if (v18 != 3)
      {
        sub_100006918(v14);
        goto LABEL_25;
      }

      v19 = v17;
      sub_100006918(v14);
      sub_10009E7D4();
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {

        sub_1000160CC(v3, &qword_1000C0C80, &qword_1000A1E10);
        goto LABEL_25;
      }

      (*(v5 + 32))(v7, v3, v4);
      LOBYTE(v15) = sub_10009D4A4();

      (*(v5 + 8))(v7, v4);
    }

    return v15 & 1;
  }

  if (!v18)
  {
    v20 = v17;
    LOBYTE(v15) = sub_100018114(v20, v14);

LABEL_20:
    sub_100006918(v14);
    return v15 & 1;
  }

  v26 = v17;
  v27 = [v26 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v28 = sub_10009E6A4();

  if (!(v28 >> 62))
  {
    result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_24:
    sub_100006918(v14);

    goto LABEL_25;
  }

  result = sub_10009EBA4();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v30 = sub_10009EAE4();
    goto LABEL_19;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v28 + 32);
LABEL_19:
    v31 = v30;

    LOBYTE(v15) = sub_100018114(v31, v14);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018114(uint64_t a1, uint64_t a2)
{
  v3 = sub_10009D464();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009D1C4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E904();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for ServiceKind.door(_:))
  {
    goto LABEL_2;
  }

  if (v11 == enum case for ServiceKind.garageDoorOpener(_:))
  {
    v17 = &enum case for CharacteristicKind.currentDoorState(_:);
LABEL_8:
    (*(v4 + 104))(v6, *v17, v3);
    v18 = type metadata accessor for WidgetTileInfo(0);
    v19 = sub_100016C6C(v6, *(a2 + *(v18 + 64)), &type metadata for Int);
    v21 = v20;
    (*(v4 + 8))(v6, v3);
    if (v21)
    {
      goto LABEL_9;
    }

    v22 = v19 == 1;
    goto LABEL_11;
  }

  if (v11 == enum case for ServiceKind.lockMechanism(_:))
  {
    v17 = &enum case for CharacteristicKind.currentLockMechanismState(_:);
    goto LABEL_8;
  }

  if (v11 == enum case for ServiceKind.securitySystem(_:))
  {
    (*(v4 + 104))(v6, enum case for CharacteristicKind.currentSecuritySystemState(_:), v3);
    v24 = type metadata accessor for WidgetTileInfo(0);
    v25 = sub_100016C6C(v6, *(a2 + *(v24 + 64)), &type metadata for Int);
    v27 = v26;
    (*(v4 + 8))(v6, v3);
    if (v27)
    {
      goto LABEL_9;
    }

    v22 = v25 == 3;
    goto LABEL_11;
  }

  if (v11 == enum case for ServiceKind.thermostat(_:))
  {
    v28 = *(v4 + 104);
    v28(v6, enum case for CharacteristicKind.targetHeatingCoolingMode(_:), v3);
    v29 = *(a2 + *(type metadata accessor for WidgetTileInfo(0) + 64));
    v30 = sub_100016C6C(v6, v29, &type metadata for Int);
    v32 = v31;
    v33 = *(v4 + 8);
    v33(v6, v3);
    if (v32)
    {
      goto LABEL_9;
    }

    v28(v6, enum case for CharacteristicKind.currentHeatingCooling(_:), v3);
    v34 = sub_100016C6C(v6, v29, &type metadata for Int);
    v36 = v35;
    v33(v6, v3);
    if (v36)
    {
      goto LABEL_9;
    }

    v22 = (v30 | v34) == 0;
LABEL_11:
    v16 = !v22;
    return v16 & 1;
  }

  if (v11 == enum case for ServiceKind.window(_:) || v11 == enum case for ServiceKind.windowCovering(_:))
  {
LABEL_2:
    (*(v4 + 104))(v6, enum case for CharacteristicKind.currentPosition(_:), v3);
    v12 = type metadata accessor for WidgetTileInfo(0);
    v13 = sub_100016C6C(v6, *(a2 + *(v12 + 64)), &type metadata for Int);
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    if ((v15 & 1) == 0)
    {
      v16 = v13 > 0;
      return v16 & 1;
    }

LABEL_9:
    v16 = 0;
    return v16 & 1;
  }

  v38 = *(a2 + *(type metadata accessor for WidgetTileInfo(0) + 64));
  v41 = *(v4 + 104);
  v41(v6, enum case for CharacteristicKind.powerState(_:), v3);
  v42 = v38;
  v16 = sub_100016EAC(v6, v38);
  v40 = *(v4 + 8);
  v40(v6, v3);
  if (v16 == 2)
  {
    v41(v6, enum case for CharacteristicKind.active(_:), v3);
    v16 = sub_100016EAC(v6, v42);
    v40(v6, v3);
    if (v16 == 2)
    {
      v16 = 0;
    }
  }

  (*(v8 + 8))(v10, v7);
  return v16 & 1;
}

uint64_t sub_100018634()
{
  v1 = type metadata accessor for WidgetTileInfo(0);
  v2 = *(v0 + v1[23]);
  if (v2 != 2)
  {
    return v2 & 1;
  }

  v3 = v0 + v1[15];
  v4 = *(v3 + 8);
  if ((v4 - 2) < 3)
  {
LABEL_3:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v6 = *v3;
  if (!v4)
  {
    v7 = *(v0 + v1[16]);
    v8 = v6;
    LOBYTE(v7) = sub_1000075D4(v7);

    return v7 & 1;
  }

  v9 = v1;
  v10 = v6;
  v11 = [v10 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v12 = sub_10009E6A4();

  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_14:

    goto LABEL_3;
  }

  result = sub_10009EBA4();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_10009EAE4();
    goto LABEL_12;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_12:
    v14 = v13;

    v15 = sub_1000075D4(*(v0 + v9[16]));

    return v15 & 1;
  }

  __break(1u);
  return result;
}

id sub_1000187B0()
{
  v1 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v3 = v0 + *(v1 + 60);
  v4 = *(v3 + 8);
  if ((v4 - 2) < 3)
  {
    return result;
  }

  v5 = *v3;
  if (!v4)
  {
    v6 = v5;
    v7 = v5;
    return v6;
  }

  v8 = v5;
  v9 = [v8 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v10 = sub_10009E6A4();

  if (v10 >> 62)
  {
    result = sub_10009EBA4();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_11:

    return 0;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_10009EAE4();
    goto LABEL_9;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
LABEL_9:
    v12 = v11;

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018900()
{
  type metadata accessor for HomeWidget();
  v0[8] = static HomeWidget.shared.getter();
  v1 = sub_10009D224();
  v0[9] = v2;
  v0[10] = v3;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1000189D4;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)((v0 + 2), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_1000189D4(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100018B34, 0, 0);
}

uint64_t sub_100018B34()
{
  v15 = v0;
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[7];
    v3 = swift_task_alloc();
    v0[13] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    v0[14] = v4;
    v5 = sub_100003714(&qword_1000C0E00, &qword_10009FC70);
    *v4 = v0;
    v4[1] = sub_100018DA4;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0x6174536863746566, 0xEC00000029286574, sub_10001CB54, v3, v5);
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v6 = sub_10009D924();
    sub_100015B68(v6, qword_1000C8278);
    v7 = sub_10009D904();
    v8 = sub_10009E824();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10002AD68(0x6174536863746566, 0xEC00000029286574, &v14);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s unable to get shared HMHomeManager instance", v9, 0xCu);
      sub_100015F44(v10);
    }

    v11 = sub_10001C968(_swiftEmptyArrayStorage);
    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_100018DA4()
{

  return _swift_task_switch(sub_100018EBC, 0, 0);
}

uint64_t sub_100018EBC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_100018F20(uint64_t a1, uint64_t a2, void *a3)
{
  v83 = sub_10009D464();
  v79 = *(v83 - 1);
  __chkstk_darwin(v83);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WidgetTileInfo(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003714(&qword_1000C0E08, &qword_10009FC78);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v68 - v15;
  v17 = a2 + *(v9 + 68);
  if (*(v17 + 8) == 2)
  {
    v80 = v12;
    v18 = *v17;
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v19 = sub_10009D924();
    sub_100015B68(v19, qword_1000C8278);
    v20 = v18;
    v21 = sub_10009D904();
    v22 = sub_10009E844();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock = v83;
      *v23 = 136315394;
      *(v23 + 4) = sub_10002AD68(0x6174536863746566, 0xEC00000029286574, &aBlock);
      *(v23 + 12) = 2080;
      v24 = [v20 name];
      v77 = a3;
      v78 = v14;
      v25 = v13;
      v26 = v24;
      v27 = sub_10009E5C4();
      v28 = a1;
      v29 = v16;
      v31 = v30;

      v32 = sub_10002AD68(v27, v31, &aBlock);
      v16 = v29;
      a1 = v28;

      *(v23 + 14) = v32;
      v13 = v25;
      a3 = v77;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s fetching state for action set %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    v33 = [a3 widgetManager];
    sub_100003714(&qword_1000C0E20, &unk_1000A0940);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10009FA10;
    *(v34 + 32) = v20;
    sub_100007330(0, &qword_1000C0C60, HMActionSet_ptr);
    v35 = v20;
    v36.super.isa = sub_10009E694().super.isa;

    v37 = v80;
    (*(v13 + 16))(v16, a1, v80);
    v38 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v39 = swift_allocObject();
    (*(v13 + 32))(v39 + v38, v16, v37);
    v89 = sub_10001CC24;
    v90 = v39;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_10001E120;
    v88 = &unk_1000BB488;
    v40 = _Block_copy(&aBlock);

    [v33 fetchStateForActionSets:v36.super.isa completion:v40];
    goto LABEL_26;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v41 = sub_10009D924();
  sub_100015B68(v41, qword_1000C8278);
  sub_100006850(a2, v11);
  v42 = sub_10009D904();
  v76 = sub_10009E844();
  if (!os_log_type_enabled(v42, v76))
  {

    sub_100006918(v11);
LABEL_25:
    v33 = [a3 widgetManager];
    sub_10001A0E8();
    sub_100007330(0, &qword_1000C0C00, HMCharacteristic_ptr);
    v36.super.isa = sub_10009E694().super.isa;

    (*(v13 + 16))(v16, a1, v12);
    v66 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v67 = swift_allocObject();
    (*(v13 + 32))(v67 + v66, v16, v12);
    v89 = sub_10001CB60;
    v90 = v67;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_10001E120;
    v88 = &unk_1000BB438;
    v40 = _Block_copy(&aBlock);

    [v33 fetchStateForCharacteristics:v36.super.isa completion:v40];
LABEL_26:
    _Block_release(v40);

    return;
  }

  v73 = v42;
  v43 = swift_slowAlloc();
  v71 = swift_slowAlloc();
  aBlock = v71;
  *v43 = 136315394;
  *(v43 + 4) = sub_10002AD68(0x6174536863746566, 0xEC00000029286574, &aBlock);
  v72 = v43;
  *(v43 + 12) = 2080;
  v44 = sub_10001A0E8();
  if (!(v44 >> 62))
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v74 = v11;
    v75 = a2;
    if (v45)
    {
      goto LABEL_12;
    }

LABEL_23:

    v47 = _swiftEmptyArrayStorage;
LABEL_24:
    v84 = v47;
    sub_100003714(&qword_1000C0E10, &qword_10009FC80);
    sub_10001CDC8(&qword_1000C0E18, &qword_1000C0E10, &qword_10009FC80, &protocol conformance descriptor for [A]);
    v60 = sub_10009E514();
    v62 = v61;

    sub_100006918(v74);
    v63 = sub_10002AD68(v60, v62, &aBlock);

    v64 = v72;
    *(v72 + 14) = v63;
    v65 = v73;
    _os_log_impl(&_mh_execute_header, v73, v76, "%s fetching characteristics %s", v64, 0x16u);
    swift_arrayDestroy();

    goto LABEL_25;
  }

  v59 = v44;
  v45 = sub_10009EBA4();
  v44 = v59;
  v74 = v11;
  v75 = a2;
  if (!v45)
  {
    goto LABEL_23;
  }

LABEL_12:
  v81 = v44;
  v77 = a3;
  v78 = v14;
  v68 = v16;
  v69 = v13;
  v80 = v12;
  v70 = a1;
  v84 = _swiftEmptyArrayStorage;
  v82 = v45;
  sub_10001BC44(0, v45 & ~(v45 >> 63), 0);
  if ((v82 & 0x8000000000000000) == 0)
  {
    v46 = 0;
    v47 = v84;
    v48 = v81;
    v49 = v81 & 0xC000000000000001;
    v50 = (v79 + 8);
    do
    {
      if (v49)
      {
        v51 = sub_10009EAE4();
      }

      else
      {
        v51 = *(v48 + 8 * v46 + 32);
      }

      v52 = v51;
      sub_10009E874();
      v53 = sub_10009D454();
      v55 = v54;

      (*v50)(v7, v83);
      v84 = v47;
      v57 = v47[2];
      v56 = v47[3];
      if (v57 >= v56 >> 1)
      {
        sub_10001BC44((v56 > 1), v57 + 1, 1);
        v47 = v84;
      }

      ++v46;
      v47[2] = v57 + 1;
      v58 = &v47[2 * v57];
      v58[4] = v53;
      v58[5] = v55;
      v48 = v81;
    }

    while (v82 != v46);

    a1 = v70;
    v12 = v80;
    v13 = v69;
    v16 = v68;
    a3 = v77;
    goto LABEL_24;
  }

  __break(1u);
}

void sub_1000198AC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 isOnByActionSetUniqueIdentifier];
    sub_10009CF14();
    sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
    sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v4 = sub_10009E4C4();

    v5 = sub_100019B90(v4);

    v15 = v5;
    sub_100003714(&qword_1000C0E08, &qword_10009FC78);
    sub_10009E724();
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v7 = sub_10009D924();
    sub_100015B68(v7, qword_1000C8278);
    swift_errorRetain();
    v8 = sub_10009D904();
    v9 = sub_10009E844();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v10 = 136315394;
      *(v10 + 4) = sub_10002AD68(0x6174536863746566, 0xEC00000029286574, &v15);
      *(v10 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        v14 = v13;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      *(v10 + 14) = v13;
      *v11 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s Failed to get current action set state with error: %@", v10, 0x16u);
      sub_1000160CC(v11, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v12);
    }

    v15 = sub_10001C968(_swiftEmptyArrayStorage);
    sub_100003714(&qword_1000C0E08, &qword_10009FC78);
    sub_10009E724();
  }
}

uint64_t sub_100019B90(uint64_t a1)
{
  v56 = sub_100003714(&qword_1000C0E38, &qword_10009FC88);
  __chkstk_darwin(v56);
  v55 = &v45 - v2;
  v54 = sub_100003714(&qword_1000C0E40, &qword_10009FC90);
  __chkstk_darwin(v54);
  v53 = &v45 - v3;
  v4 = sub_10009CF14();
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100003714(&qword_1000C0E48, &qword_10009FC98);
  v7 = __chkstk_darwin(v51);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v45 - v9;
  v58 = a1;
  if (*(a1 + 16))
  {
    sub_100003714(&qword_1000C0E50, &qword_10009FCA0);
    v10 = sub_10009EBD4();
  }

  else
  {
    v10 = &_swiftEmptyDictionarySingleton;
  }

  v11 = v58 + 64;
  v12 = 1 << *(v58 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v58 + 64);
  v15 = (v12 + 63) >> 6;
  v47 = v57 + 16;
  v61 = v57 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v45 = v15;
  v46 = v11;
  v52 = v6;
  v48 = v10;
  while (v14)
  {
LABEL_15:
    v21 = __clz(__rbit64(v14)) | (v18 << 6);
    v23 = v57;
    v22 = v58;
    v24 = *(v58 + 48);
    v59 = *(v57 + 72);
    v25 = v49;
    (*(v57 + 16))(v49, v24 + v59 * v21, v4);
    v26 = *(*(v22 + 56) + 8 * v21);
    v27 = v51;
    *&v25[*(v51 + 48)] = v26;
    v28 = v25;
    v29 = v50;
    sub_10001CCDC(v28, v50);
    v30 = *(v27 + 48);
    v31 = v55;
    v60 = *(v56 + 48);
    v32 = *(v23 + 32);
    v32(v55, v29, v4);
    *&v62[0] = *(v29 + v30);
    sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
    v33 = v26;
    v34 = v60;
    swift_dynamicCast();
    v35 = v53;
    v36 = *(v54 + 48);
    v32(v53, v31, v4);
    sub_10001CD4C(&v31[v34], &v35[v36]);
    v37 = v52;
    v32(v52, v35, v4);
    sub_10001CD4C(&v35[v36], v62);
    v10 = v48;
    sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = sub_10009E4F4();
    v38 = -1 << v10[32];
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*&v16[8 * (v39 >> 6)]) == 0)
    {
      v41 = 0;
      v42 = (63 - v38) >> 6;
      while (++v40 != v42 || (v41 & 1) == 0)
      {
        v43 = v40 == v42;
        if (v40 == v42)
        {
          v40 = 0;
        }

        v41 |= v43;
        v44 = *&v16[8 * v40];
        if (v44 != -1)
        {
          v19 = __clz(__rbit64(~v44)) + (v40 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v39) & ~*&v16[8 * (v39 >> 6)])) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v14 &= v14 - 1;
    *&v16[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
    v32((*(v10 + 6) + v19 * v59), v37, v4);
    result = sub_10001CD4C(v62, (*(v10 + 7) + 32 * v19));
    ++*(v10 + 2);
    v15 = v45;
    v11 = v46;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_10001A0E8()
{
  v1 = sub_10009D464();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D1C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + *(type metadata accessor for WidgetTileInfo(0) + 60);
  v10 = *(v9 + 8);
  v11 = _swiftEmptyArrayStorage;
  if (v10 > 2)
  {
    return v11;
  }

  v12 = *v9;
  if (v10)
  {
    if (v10 == 1)
    {
      v13 = v12;
      v14 = [v13 services];
      sub_100007330(0, &qword_1000C0C48, HMService_ptr);
      v15 = sub_10009E6A4();

      v16 = sub_100017354(v15);
    }

    else
    {
      v13 = v12;
      v27 = [v13 actions];
      sub_100007330(0, &qword_1000C0CB8, HMAction_ptr);
      sub_10001CD60();
      v28 = sub_10009E754();

      sub_1000170E8(v28);
    }

    v11 = v16;

    return v11;
  }

  v31 = v12;
  sub_10009E904();
  v17 = sub_1000031AC();
  (*(v6 + 8))(v8, v5);
  v32 = _swiftEmptyArrayStorage;
  v18 = 1 << v17[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 7);
  v21 = (v18 + 63) >> 6;
  v29[0] = v2 + 8;
  v29[1] = v2 + 16;
  v30 = v17;

  v23 = 0;
  if (!v20)
  {
    goto LABEL_10;
  }

  do
  {
LABEL_8:
    while (1)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v2 + 16))(v4, *(v30 + 6) + *(v2 + 72) * (v24 | (v23 << 6)), v1);
      v25 = sub_10009E914();
      result = (*(v2 + 8))(v4, v1);
      if (v25)
      {
        break;
      }

      if (!v20)
      {
        goto LABEL_10;
      }
    }

    sub_10009E684();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10009E6C4();
    }

    result = sub_10009E6E4();
    v11 = v32;
  }

  while (v20);
LABEL_10:
  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v21)
    {

      return v11;
    }

    v20 = *&v17[8 * v26 + 56];
    ++v23;
    if (v20)
    {
      v23 = v26;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_10001A4C0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 valueByCharacteristicUniqueIdentifier];
    sub_10009CF14();
    sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v4 = sub_10009E4C4();

    v14 = v4;
    sub_100003714(&qword_1000C0E08, &qword_10009FC78);
    sub_10009E724();
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v6 = sub_10009D924();
    sub_100015B68(v6, qword_1000C8278);
    swift_errorRetain();
    v7 = sub_10009D904();
    v8 = sub_10009E844();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_10002AD68(0x6174536863746566, 0xEC00000029286574, &v14);
      *(v9 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v9 + 14) = v12;
      *v10 = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Failed to get current characteristic values with error: %@", v9, 0x16u);
      sub_1000160CC(v10, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v11);
    }

    v14 = sub_10001C968(_swiftEmptyArrayStorage);
    sub_100003714(&qword_1000C0E08, &qword_10009FC78);
    sub_10009E724();
  }
}

void sub_10001A780(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10001A80C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v26 = sub_10009D464();
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009D1C4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  sub_10009E904();
  v10 = sub_1000031AC();
  (*(v7 + 8))(v9, v6);
  v22 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage;
  v11 = 1 << v10[32];
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 7);
  v14 = (v11 + 63) >> 6;
  v23 = v3 + 8;
  v24 = v3 + 16;
  v27 = v10;

  v16 = 0;
  if (!v13)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = v26;
      (*(v3 + 16))(v5, *(v27 + 6) + *(v3 + 72) * (v17 | (v16 << 6)), v26);
      v19 = sub_10009E914();
      result = (*(v3 + 8))(v5, v18);
      if (v19)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_6;
      }
    }

    sub_10009E684();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10009E6C4();
    }

    result = sub_10009E6E4();
    v22 = v28;
  }

  while (v13);
LABEL_6:
  while (1)
  {
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v20 >= v14)
    {

      *v21 = v22;
      return result;
    }

    v13 = *&v10[8 * v20 + 56];
    ++v16;
    if (v13)
    {
      v16 = v20;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void *sub_10001AAEC()
{
  v1 = v0 + *(type metadata accessor for WidgetTileInfo(0) + 60);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2 || v3 != 3)
    {
      return &_swiftEmptySetSingleton;
    }

    sub_100003714(&qword_1000C0E20, &unk_1000A0940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FA10;
    *(inited + 32) = v2;
    v12 = v2;
    v13 = sub_100016140(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    return v13;
  }

  if (v3)
  {
    v22 = v2;
    v14 = [v22 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v15 = sub_10009E6A4();

    if (v15 >> 62)
    {
LABEL_29:
      v16 = sub_10009EBA4();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    while (v16 != v17)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = sub_10009EAE4();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = [v18 accessory];

      ++v17;
      if (v21)
      {
        sub_10009E684();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10009E6C4();
        }

        sub_10009E6E4();
        v17 = v20;
      }
    }

    v13 = sub_100016140(_swiftEmptyArrayStorage);

    return v13;
  }

  v6 = v2;
  v7 = [v6 accessory];
  if (!v7)
  {

    return &_swiftEmptySetSingleton;
  }

  v8 = v7;
  sub_100003714(&qword_1000C0E20, &unk_1000A0940);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10009FA10;
  *(v9 + 32) = v8;
  v10 = sub_100016140(v9);

  return v10;
}

void sub_10001ADCC(uint64_t a1)
{
  sub_10009CF14();
  sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_10009E504();
  v2 = type metadata accessor for WidgetTileInfo(0);
  sub_10009E624();
  if (*(v1 + v2[7] + 8))
  {
    sub_10009EDF4(1u);
    sub_10009E624();
  }

  else
  {
    sub_10009EDF4(0);
  }

  sub_10009E624();
  sub_10009E624();
  sub_10009E144();
  sub_10009EDF4(*(v1 + v2[13]));
  v3 = *(v1 + v2[15] + 8);
  if (v3 <= 1)
  {
    if (*(v1 + v2[15] + 8))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else if (v3 == 2)
  {
    v4 = 3;
  }

  else
  {
    if (v3 != 3)
    {
      sub_10009EDE4(0);
      return;
    }

    v4 = 4;
  }

  sub_10009EDE4(v4);
  sub_10009E8F4();
}

uint64_t sub_10001AF64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10009CF14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_10001AFCC()
{
  sub_10009EDD4();
  sub_10001ADCC(v1);
  return sub_10009EE04();
}

Swift::Int sub_10001B010(uint64_t a1)
{
  sub_10009EDD4();
  sub_10001ADCC(v2);
  return sub_10009EE04();
}

uint64_t sub_10001B098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001B128()
{
  v1 = sub_10009D494();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_10009EAC4(174);
  v27._countAndFlagsBits = 0xD000000000000014;
  v27._object = 0x80000001000A4120;
  sub_10009E634(v27);
  sub_10009CF14();
  sub_10001B098(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v28._countAndFlagsBits = sub_10009ED04();
  sub_10009E634(v28);

  v29._countAndFlagsBits = 0x203A656D616E202CLL;
  v29._object = 0xE800000000000000;
  sub_10009E634(v29);
  v5 = type metadata accessor for WidgetTileInfo(0);
  sub_10009E634(*(v0 + v5[6]));
  v30._countAndFlagsBits = 0x616C70736964202CLL;
  v30._object = 0xEF203A656D614E79;
  sub_10009E634(v30);
  v6 = (v0 + v5[7]);
  v7 = *v6;
  v8 = v6[1];
  swift_bridgeObjectRetain_n();

  sub_10009D484();
  v9 = sub_10009D474();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  v31._countAndFlagsBits = v9;
  v31._object = v11;
  sub_10009E634(v31);

  v32._countAndFlagsBits = 0x614E6D6F6F72202CLL;
  v32._object = 0xEC000000203A656DLL;
  sub_10009E634(v32);
  if (v8)
  {
    v12._countAndFlagsBits = v7;
  }

  else
  {
    v12._countAndFlagsBits = 0;
  }

  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v12._object = v13;
  sub_10009E634(v12);

  v33._object = 0x80000001000A4140;
  v33._countAndFlagsBits = 0xD000000000000010;
  sub_10009E634(v33);
  v24[0] = sub_10008CA68();
  v24[1] = v14;
  sub_100003714(&qword_1000C0DF0, &qword_1000A1DE0);
  v34._countAndFlagsBits = sub_10009E5F4();
  sub_10009E634(v34);

  v35._countAndFlagsBits = 0x79536E6F6369202CLL;
  v35._object = 0xEE00203A6C6F626DLL;
  sub_10009E634(v35);
  sub_10009E634(*(v0 + v5[8]));
  v36._countAndFlagsBits = 0xD000000000000017;
  v36._object = 0x80000001000A4160;
  sub_10009E634(v36);
  sub_10009E634(*(v0 + v5[9]));
  v37._countAndFlagsBits = 0x636165527369202CLL;
  v37._object = 0xEF203A656C626168;
  sub_10009E634(v37);
  if (*(v0 + v5[13]))
  {
    v15._countAndFlagsBits = 1702195828;
  }

  else
  {
    v15._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v5[13]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v15._object = v16;
  sub_10009E634(v15);

  v38._countAndFlagsBits = 0x697463417369202CLL;
  v38._object = 0xEF203A6465746176;
  sub_10009E634(v38);
  v17 = sub_100017C60();
  v18 = (v17 & 1) == 0;
  if (v17)
  {
    v19._countAndFlagsBits = 1702195828;
  }

  else
  {
    v19._countAndFlagsBits = 0x65736C6166;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  v19._object = v20;
  sub_10009E634(v19);

  v39._object = 0x80000001000A4180;
  v39._countAndFlagsBits = 0xD000000000000010;
  sub_10009E634(v39);
  if (*(v0 + v5[14]))
  {
    v21._countAndFlagsBits = 1702195828;
  }

  else
  {
    v21._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v5[14]))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v21._object = v22;
  sub_10009E634(v21);

  return v25;
}

unint64_t sub_10001B558(uint64_t a1, uint64_t a2)
{
  sub_10009EDD4();
  sub_10009E624();
  v4 = sub_10009EE04();

  return sub_10001B7A4(a1, a2, v4);
}

unint64_t sub_10001B5D0(uint64_t a1)
{
  sub_10009CF14();
  sub_10001B098(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_10009E4F4();

  return sub_10001B85C(a1, v2);
}

uint64_t sub_10001B668(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10001B6C4(char a1)
{
  sub_10009EDD4();
  sub_10009E624();

  v2 = sub_10009EE04();

  return sub_10001BA1C(a1 & 1, v2);
}

unint64_t sub_10001B760(uint64_t a1)
{
  v2 = sub_10009EDC4();

  return sub_10001BB50(a1, v2);
}

unint64_t sub_10001B7A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10009ED34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001B85C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10009CF14();
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
      sub_10001B098(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_10009E534();
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

unint64_t sub_10001BA1C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x656C67676F74;
    }

    else
    {
      v6 = 1852141679;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x656C67676F74 : 1852141679;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_10009ED34();

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

unint64_t sub_10001BB50(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_10001BBBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C448(a1, a2, a3, *v3, &qword_1000C0EB8, &qword_10009FCE0, type metadata accessor for WidgetTileInfo);
  *v3 = result;
  return result;
}

void *sub_10001BC00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C448(a1, a2, a3, *v3, &qword_1000C0E88, &unk_1000A08E0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

char *sub_10001BC44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001BD90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001BC64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001BE9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001BC84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C448(a1, a2, a3, *v3, &qword_1000C0EC0, &qword_10009FCE8, type metadata accessor for AccessoryAndSceneEntity);
  *v3 = result;
  return result;
}

void *sub_10001BCC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C00C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001BCE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C1FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001BD08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C448(a1, a2, a3, *v3, &qword_1000C0E70, &qword_10009FCB0, type metadata accessor for HomeEntity);
  *v3 = result;
  return result;
}

void *sub_10001BD4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001C448(a1, a2, a3, *v3, &qword_1000C0F08, qword_10009FD30, &type metadata accessor for EndpointPath);
  *v3 = result;
  return result;
}

char *sub_10001BD90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C0E58, &qword_10009FCA8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001BE9C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003714(&qword_1000C0E78, &qword_10009FCB8);
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
    sub_100003714(&qword_1000C0E80, &qword_10009FCC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001C00C(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003714(&qword_1000C0EA8, &qword_10009FCD0);
  v10 = *(sub_100003714(&qword_1000C0EB0, &qword_10009FCD8) - 8);
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
  v15 = *(sub_100003714(&qword_1000C0EB0, &qword_10009FCD8) - 8);
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

char *sub_10001C1FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C0E90, &qword_10009FCC8);
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

void *sub_10001C300(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003714(&qword_1000C0E98, &qword_1000A08C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003714(&qword_1000C0EA0, &qword_1000A08B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001C448(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100003714(a5, a6);
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

void (*sub_10001C624(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10009EAE4();
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
    return sub_10001C6A4;
  }

  __break(1u);
  return result;
}

void (*sub_10001C6AC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10009EAE4();
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
    return sub_10001E118;
  }

  __break(1u);
  return result;
}

BOOL sub_10001C72C(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a4 != 1)
      {
        return 0;
      }
    }

    else if (a4)
    {
      return 0;
    }

LABEL_15:
    sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
    return sub_10009E8E4() & 1;
  }

  if (a2 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (a2 != 3)
  {
    return a4 == 4 && !a3;
  }

  if (a4 == 3)
  {
    goto LABEL_15;
  }

  return 0;
}

BOOL sub_10001C7F8(uint64_t a1, uint64_t a2)
{
  if ((sub_10009CEF4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WidgetTileInfo(0);
  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_10009ED34() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_10009ED34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_10009ED34() & 1) == 0)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v22 == *v24 && v23 == v24[1];
  if (!v25 && (sub_10009ED34() & 1) == 0 || (sub_10009E134() & 1) == 0 || *(a1 + v4[13]) != *(a2 + v4[13]))
  {
    return 0;
  }

  v27 = v4[15];
  v28 = a1 + v27;
  v29 = *(a1 + v27);
  v30 = a2 + v27;
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v28 + 8);

  return sub_10001C72C(v29, v33, v31, v32);
}

unint64_t sub_10001C968(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0E40, &qword_10009FC90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003714(&qword_1000C0E50, &qword_10009FCA0);
    v7 = sub_10009EBD4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001E0A8(v9, v5, &qword_1000C0E40, &qword_10009FC90);
      result = sub_10001B5D0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10009CF14();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10001CD4C(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001CB78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001CB90()
{
  v1 = sub_100003714(&qword_1000C0E08, &qword_10009FC78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001CC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100003714(&qword_1000C0E08, &qword_10009FC78) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_10001CCDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0E48, &qword_10009FC98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10001CD4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10001CD60()
{
  result = qword_1000C0CC0;
  if (!qword_1000C0CC0)
  {
    sub_100007330(255, &qword_1000C0CB8, HMAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0CC0);
  }

  return result;
}

uint64_t sub_10001CDC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001CE10(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0EC8, &qword_10009FCF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003714(&qword_1000C0ED0, &qword_10009FCF8);
    v7 = sub_10009EBD4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001E0A8(v9, v5, &qword_1000C0EC8, &qword_10009FCF0);
      v11 = *v5;
      result = sub_10001B6C4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10009CAD4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001D01C(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0EF8, &qword_10009FD20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003714(&qword_1000C0F00, &qword_10009FD28);
    v7 = sub_10009EBD4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001E0A8(v9, v5, &qword_1000C0EF8, &qword_10009FD20);
      result = sub_10001B5D0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10009CF14();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001D23C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003714(&qword_1000C0F10, &qword_1000A39D0);
    v3 = sub_10009EBD4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001B558(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001D35C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_100003714(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_100003714(a4, a5);
    v14 = sub_10009EBD4();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_10001E0A8(v16, v12, a2, v27);
      result = sub_10001B5D0(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_10009CF14();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001D53C(uint64_t a1)
{
  v2 = v1;
  v88 = a1;
  v3 = sub_10009E3A4();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D464();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009D1C4();
  v94 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v80 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v80 - v16;
  __chkstk_darwin(v15);
  v19 = &v80 - v18;
  v20 = sub_10009E1B4();
  v21 = type metadata accessor for WidgetTileInfo(0);
  if ((v1[v21[21] + 8] & 1) == 0 && (sub_100017C60() & 1) == 0)
  {
    v26 = sub_10009E174();
LABEL_8:

    return v26;
  }

  v22 = &v1[v21[15]];
  v23 = v22[8];
  if ((v23 - 2) < 3)
  {
    return v20;
  }

  v25 = *v22;
  v86 = v20;
  if (!v23)
  {
    v87 = v25;
    goto LABEL_15;
  }

  v85 = v25;
  v27 = [v85 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v28 = sub_10009E6A4();

  if (v28 >> 62)
  {
    v79 = sub_10009EBA4();
    v29 = v86;
    if (v79)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v29 = v86;
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = sub_10009EAE4();
      }

      else
      {
        if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_68:
          swift_once();
LABEL_37:
          v56 = sub_10009D924();
          sub_100015B68(v56, qword_1000C8278);
          v57 = sub_10009D904();
          v58 = sub_10009E844();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 134218240;
            *(v59 + 4) = v11;
            *(v59 + 12) = 2048;
            *(v59 + 14) = v21;
            _os_log_impl(&_mh_execute_header, v57, v58, "thermostat: targetHeatingCoolingMode: %ld currentHeatingCooling: %ld", v59, 0x16u);
          }

          if (v11)
          {
            if (v21 != 1)
            {
              if (v21 != 2)
              {
                goto LABEL_25;
              }

              v60 = v89;
              sub_10009E384();
              v61 = sub_10009E374();
              (*(v90 + 8))(v60, v91);
              if ((v61 & 1) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_60;
            }

            v74 = v89;
            sub_10009E384();
            v75 = sub_10009E374();
            (*(v90 + 8))(v74, v91);
            if ((v75 & 1) == 0)
            {
LABEL_61:
              v62 = [objc_opt_self() systemOrangeColor];
              goto LABEL_62;
            }

LABEL_60:
            v65 = sub_10009E1B4();
            goto LABEL_63;
          }

          if (v21)
          {
            v63 = v89;
            sub_10009E384();
            v64 = sub_10009E374();
            (*(v90 + 8))(v63, v91);
            if ((v64 & 1) == 0)
            {
              v65 = sub_10009E1C4();
LABEL_63:
              v26 = v65;

              goto LABEL_8;
            }

            goto LABEL_60;
          }

          goto LABEL_56;
        }

        v30 = *(v28 + 32);
      }

      v87 = v30;

LABEL_15:
      if ((v2[v21[13]] & 1) == 0)
      {
        v26 = sub_10009E1C4();

        return v26;
      }

      sub_10009E904();
      v81 = *(v94 + 104);
      v82 = v94 + 104;
      v81(v17, enum case for ServiceKind.thermostat(_:), v8);
      v31 = sub_10001B098(&qword_1000C0CB0, &type metadata accessor for ServiceKind, &protocol conformance descriptor for ServiceKind);
      sub_10009E654();
      v80 = v31;
      sub_10009E654();
      v83 = v7;
      v84 = v98;
      if (v97 == v95 && v98 == v96)
      {
        LODWORD(v85) = 1;
      }

      else
      {
        LODWORD(v85) = sub_10009ED34();
      }

      v32 = *(v94 + 8);
      v32(v17, v8);
      v32(v19, v8);

      if (v85)
      {
        v34 = v92;
        v33 = v93;
        v35 = *(v92 + 104);
        v36 = v83;
        v35(v83, enum case for CharacteristicKind.targetHeatingCoolingMode(_:), v93);
        v37 = *&v2[v21[16]];
        v2 = v87;
        v11 = sub_100016C6C(v36, v37, &type metadata for Int);
        v39 = v38;
        v40 = *(v34 + 8);
        v40(v36, v33);
        if ((v39 & 1) == 0)
        {
          v35(v36, enum case for CharacteristicKind.currentHeatingCooling(_:), v33);
          v21 = sub_100016C6C(v36, v37, &type metadata for Int);
          v42 = v41;
          v40(v36, v33);
          v29 = v86;
          if (v42)
          {
LABEL_25:

            return v29;
          }

          if (qword_1000C0A90 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_68;
        }
      }

      else
      {
        sub_10009E904();
        v81(v11, enum case for ServiceKind.heaterCooler(_:), v8);
        sub_10009E654();
        sub_10009E654();
        if (v97 == v95 && v98 == v96)
        {
          v32(v11, v8);
          v32(v14, v8);
        }

        else
        {
          v43 = sub_10009ED34();
          v32(v11, v8);
          v32(v14, v8);

          if ((v43 & 1) == 0)
          {

            return v86;
          }
        }

        v44 = v92;
        v45 = v93;
        v46 = *(v92 + 104);
        v47 = v83;
        v46(v83, enum case for CharacteristicKind.targetHeaterCoolerState(_:), v93);
        v48 = *&v2[v21[16]];
        v2 = v87;
        v49 = sub_100016C6C(v47, v48, &type metadata for Int);
        v51 = v50;
        v52 = *(v44 + 8);
        v52(v47, v45);
        if ((v51 & 1) == 0)
        {
          v46(v47, enum case for CharacteristicKind.currentHeaterCoolerState(_:), v45);
          v94 = sub_100016C6C(v47, v48, &type metadata for Int);
          v54 = v53;
          v52(v47, v45);
          if ((v54 & 1) == 0)
          {
            v46(v47, enum case for CharacteristicKind.active(_:), v45);
            v55 = sub_100016EAC(v47, v48);
            v52(v47, v45);
            if (v55 != 2)
            {
              v29 = v86;
              if (v55)
              {
                if (qword_1000C0A90 != -1)
                {
                  swift_once();
                }

                v66 = sub_10009D924();
                sub_100015B68(v66, qword_1000C8278);
                v67 = sub_10009D904();
                v68 = sub_10009E844();
                v69 = os_log_type_enabled(v67, v68);
                v70 = v94;
                if (v69)
                {
                  v71 = swift_slowAlloc();
                  *v71 = 134218240;
                  *(v71 + 4) = v49;
                  *(v71 + 12) = 2048;
                  *(v71 + 14) = v70;
                  _os_log_impl(&_mh_execute_header, v67, v68, "heaterCooler: targetHeaterCoolerState: %ld currentHeaterCoolerState: %ld", v71, 0x16u);
                }

                if (v70 != 2)
                {
                  if (v70 != 3)
                  {
                    goto LABEL_25;
                  }

                  v72 = v89;
                  sub_10009E384();
                  v73 = sub_10009E374();
                  (*(v90 + 8))(v72, v91);
                  if ((v73 & 1) == 0)
                  {
LABEL_43:
                    v62 = [objc_opt_self() systemCyanColor];
LABEL_62:
                    v78 = v62;
                    v65 = sub_10009E1F4();
                    goto LABEL_63;
                  }

                  goto LABEL_60;
                }

                v76 = v89;
                sub_10009E384();
                v77 = sub_10009E374();
                (*(v90 + 8))(v76, v91);
                if ((v77 & 1) == 0)
                {
                  goto LABEL_61;
                }

                goto LABEL_60;
              }

LABEL_56:
              v26 = sub_10009E174();

              return v26;
            }
          }
        }
      }

      return v86;
    }
  }

  return v29;
}

uint64_t sub_10001E0A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003714(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001E12C()
{
  result = qword_1000C0F18;
  if (!qword_1000C0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0F18);
  }

  return result;
}

unint64_t sub_10001E184()
{
  result = qword_1000C0F20;
  if (!qword_1000C0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0F20);
  }

  return result;
}

unint64_t sub_10001E244()
{
  result = qword_1000C0F28;
  if (!qword_1000C0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0F28);
  }

  return result;
}

uint64_t sub_10001E2A8()
{
  v0 = sub_10009CD54();
  sub_10001F4BC(v0, qword_1000C8168);
  sub_100015B68(v0, qword_1000C8168);
  return sub_10009CD14();
}

uint64_t sub_10001E30C()
{
  v0 = sub_100003714(&qword_1000C1000, qword_10009FEB8);
  sub_10001F4BC(v0, qword_1000C8180);
  v1 = sub_100015B68(v0, qword_1000C8180);
  sub_10009C9F4();
  v2 = sub_10009CA04();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001E3CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10009CE24();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10001E48C, 0, 0);
}

uint64_t sub_10001E48C()
{
  v37 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);

  v2 = sub_10009D904();
  v3 = sub_10009E844();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v36);
    *(v7 + 12) = 2080;
    sub_10009C954();
    sub_10001F3F4();
    v8 = sub_10009ED04();
    v10 = v9;
    (*(v4 + 8))(v5, v6);
    v11 = sub_10002AD68(v8, v10, &v36);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "OpenURLInHomeIntent %s - url is %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  sub_10009C954();
  v15 = sub_10009CE04();
  v17 = v16;
  v18 = *(v13 + 8);
  v18(v12, v14);
  v19 = sub_10009E5C4();
  if (v17)
  {
    if (v15 == v19 && v17 == v20)
    {
      goto LABEL_13;
    }

    v22 = sub_10009ED34();

    if (v22)
    {
LABEL_14:

LABEL_15:
      v24 = v0[6];
      v25 = v0[4];
      v26 = [objc_opt_self() sharedInstance];
      sub_10009C954();
      sub_10009CDC4(v27);
      v29 = v28;
      v18(v24, v25);
      v30 = [v26 openURL:v29];

      goto LABEL_19;
    }

    if (v15 == sub_10009E5C4() && v17 == v23)
    {
LABEL_13:

      goto LABEL_14;
    }

    v35 = sub_10009ED34();

    if (v35)
    {
      goto LABEL_15;
    }
  }

  else
  {

    sub_10009E5C4();
  }

  v29 = sub_10009D904();
  v31 = sub_10009E824();
  if (os_log_type_enabled(v29, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v29, v31, "OpenURLInHomeIntent - URL does not appear to be a Home app URL", v32, 2u);
  }

LABEL_19:

  sub_10009C934();

  v33 = v0[1];

  return v33();
}

uint64_t sub_10001E8C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000C0A20 != -1)
  {
    swift_once();
  }

  v2 = sub_10009CD54();
  v3 = sub_100015B68(v2, qword_1000C8168);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001E988@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000C0A28 != -1)
  {
    swift_once();
  }

  v2 = sub_100003714(&qword_1000C1000, qword_10009FEB8);
  v3 = sub_100015B68(v2, qword_1000C8180);

  return sub_10001F44C(v3, a1);
}

uint64_t sub_10001EA0C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001EAAC;

  return sub_10001E3CC(a1, v4);
}

uint64_t sub_10001EAAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001EBA0@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = sub_10009CB44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_10009CD54();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_100003714(&qword_1000C0FF0, &qword_10009FEA8);
  sub_10009CD14();
  (*(v15 + 56))(v13, 1, 1, v14);
  v16 = sub_10009CE24();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_10009C914();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v2 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10009C9B4();
  *v20 = result;
  return result;
}

uint64_t sub_10001EEDC(uint64_t a1)
{
  v2 = sub_10001E244();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001EF50()
{
  result = qword_1000C0FC8;
  if (!qword_1000C0FC8)
  {
    sub_10000375C(&qword_1000C0FD0, "&y");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0FC8);
  }

  return result;
}

uint64_t sub_10001EFB4(uint64_t a1)
{
  v32 = a1;
  v1 = sub_10009CE24();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v30 = &v27 - v5;
  v6 = sub_10009CB44();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = sub_10009CD54();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  sub_100003714(&qword_1000C0FF0, &qword_10009FEA8);
  sub_10009CD14();
  (*(v19 + 56))(v17, 1, 1, v18);
  (*(v2 + 56))(v14, 1, 1, v1);
  v20 = sub_10009C914();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  (*(v28 + 104))(v8, enum case for InputConnectionBehavior.default(_:), v29);
  v21 = sub_10009C9B4();
  v22 = *(v2 + 16);
  v23 = v30;
  v24 = v32;
  v22(v30, v32, v1);
  v22(v31, v23, v1);

  sub_10009C964();

  v25 = *(v2 + 8);
  v25(v24, v1);
  v25(v23, v1);
  return v21;
}

unint64_t sub_10001F3F4()
{
  result = qword_1000C0FF8;
  if (!qword_1000C0FF8)
  {
    sub_10009CE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0FF8);
  }

  return result;
}

uint64_t sub_10001F44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C1000, qword_10009FEB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10001F4BC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10001F520()
{
  v0 = sub_10009CD34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10009CF54();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10009E5A4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10009CD54();
  sub_10001F4BC(v6, qword_1000C8198);
  sub_100015B68(v6, qword_1000C8198);
  sub_10009E554();
  sub_10009CF44();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10009CD64();
}

uint64_t sub_10001F710()
{
  v0 = sub_10009CBC4();
  sub_10001F4BC(v0, qword_1000C81B0);
  sub_100015B68(v0, qword_1000C81B0);
  return sub_10009CBB4();
}

uint64_t sub_10001F770()
{
  sub_100003714(&qword_1000C10E0, &unk_1000A03E0);
  v0 = *(sub_100003714(&qword_1000C0EC8, &qword_10009FCF0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10009F8F0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_10009CA84();
  v4[v1] = 1;
  sub_10009CA84();
  v5 = sub_10001CE10(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000C81C8 = v5;
  return result;
}

uint64_t sub_10001F8B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C67676F74;
  }

  else
  {
    v3 = 1852141679;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C67676F74;
  }

  else
  {
    v5 = 1852141679;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10009ED34();
  }

  return v8 & 1;
}

unint64_t sub_10001F958()
{
  result = qword_1000C1008;
  if (!qword_1000C1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1008);
  }

  return result;
}

Swift::Int sub_10001F9AC()
{
  sub_10009EDD4();
  sub_10009E624();

  return sub_10009EE04();
}

uint64_t sub_10001FA24(uint64_t a1)
{
  sub_10009E624();
}

Swift::Int sub_10001FA88(uint64_t a1)
{
  sub_10009EDD4();
  sub_10009E624();

  return sub_10009EE04();
}

uint64_t sub_10001FAFC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000BB0E0;
  v8._object = v3;
  v5 = sub_10009EBE4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10001FB5C(uint64_t *a1@<X8>)
{
  v2 = 1852141679;
  if (*v1)
  {
    v2 = 0x656C67676F74;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10001FB94()
{
  result = qword_1000C1010;
  if (!qword_1000C1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1010);
  }

  return result;
}

unint64_t sub_10001FBEC()
{
  result = qword_1000C1018;
  if (!qword_1000C1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1018);
  }

  return result;
}

unint64_t sub_10001FC44()
{
  result = qword_1000C1020;
  if (!qword_1000C1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1020);
  }

  return result;
}

unint64_t sub_10001FDAC()
{
  result = qword_1000C1038;
  if (!qword_1000C1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1038);
  }

  return result;
}

unint64_t sub_10001FE04()
{
  result = qword_1000C1040;
  if (!qword_1000C1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1040);
  }

  return result;
}

unint64_t sub_10001FE5C()
{
  result = qword_1000C1048;
  if (!qword_1000C1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1048);
  }

  return result;
}

unint64_t sub_10001FEB4()
{
  result = qword_1000C1050;
  if (!qword_1000C1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1050);
  }

  return result;
}

unint64_t sub_10001FF70()
{
  result = qword_1000C1058;
  if (!qword_1000C1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1058);
  }

  return result;
}

uint64_t sub_10001FFC4(uint64_t a1)
{
  v2 = sub_10001FF70();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100020014()
{
  result = qword_1000C1060;
  if (!qword_1000C1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1060);
  }

  return result;
}

unint64_t sub_10002006C()
{
  result = qword_1000C1068;
  if (!qword_1000C1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1068);
  }

  return result;
}

unint64_t sub_1000200C4()
{
  result = qword_1000C1070;
  if (!qword_1000C1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1070);
  }

  return result;
}

uint64_t sub_100020118()
{
  if (qword_1000C0A40 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100020174(uint64_t a1)
{
  v2 = sub_10001FEB4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000201C4()
{
  result = qword_1000C1078;
  if (!qword_1000C1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1078);
  }

  return result;
}

unint64_t sub_10002021C()
{
  result = qword_1000C1080;
  if (!qword_1000C1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1080);
  }

  return result;
}

uint64_t sub_100020270(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_10009D924();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_10009CE24();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000203A4, 0, 0);
}

uint64_t sub_1000203A4()
{
  v37 = v0;
  sub_10009C954();
  if (*(v0 + 128))
  {
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = sub_100020814;

    return sub_100020FBC();
  }

  else
  {
    v3 = *(v0 + 112);
    sub_10009C954();
    sub_100020A0C(*(v0 + 16), *(v0 + 24), v3);

    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = qword_1000C8318;
    sub_10009D934();
    v9 = *(v7 + 16);
    v9(v4, v5, v6);
    v10 = sub_10009D904();
    v11 = sub_10009E844();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 104);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v35 = *(v0 + 56);
    if (v12)
    {
      v18 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, v36);
      *(v18 + 12) = 2080;
      sub_1000243C8(&qword_1000C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v19 = sub_10009ED04();
      log = v10;
      v20 = v9;
      v21 = v14;
      v22 = v19;
      v34 = v16;
      v24 = v23;
      v25 = *(v15 + 8);
      v25(v13, v21);
      v26 = v25;
      v9 = v20;
      v27 = sub_10002AD68(v22, v24, v36);

      *(v18 + 14) = v27;
      _os_log_impl(&_mh_execute_header, log, v11, "%s Opening %s", v18, 0x16u);
      swift_arrayDestroy();

      (*(v17 + 8))(v34, v35);
    }

    else
    {

      v28 = *(v15 + 8);
      v28(v13, v14);
      v26 = v28;
      (*(v17 + 8))(v16, v35);
    }

    v29 = *(v0 + 112);
    v30 = *(v0 + 96);
    v31 = *(v0 + 80);
    v9(v30, v29, v31);
    *(v0 + 32) = sub_10001EFB4(v30);
    sub_10001E244();
    sub_10009C924();

    v26(v29, v31);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_100020814()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100020978, 0, 0);
  }
}

uint64_t sub_100020978()
{
  sub_10009C934();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020A0C@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v45 = a3;
  v4 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  __chkstk_darwin(v4 - 8);
  v37 = &v36 - v5;
  v6 = sub_10009D924();
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009D564();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10009D5D4();
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009D544();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    v46._countAndFlagsBits = 47;
    v46._object = 0xE100000000000000;
    sub_10009E634(v46);
    (*(v16 + 104))(v18, enum case for DeepLinkDestination.SecondaryDestination.control(_:), v15);
    sub_10009EB84();
    (*(v16 + 8))(v18, v15);
    v20 = v43;
    v19 = v44;
    v43 = v42;
    v44 = a2;

    v47._countAndFlagsBits = v20;
    v47._object = v19;
    sub_10009E634(v47);

    v22 = v38;
    v21 = v39;
    (*(v38 + 104))(v11, enum case for DeepLinkDestination.accessory(_:), v39);
    sub_10009D554();
    (*(v22 + 8))(v11, v21);
    sub_10009D5C4();
    sub_10009D5B4();
    return (*(v40 + 8))(v14, v41);
  }

  else
  {
    v24 = v8;
    v26 = v36;
    v25 = v37;
    v27 = v45;
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v28 = qword_1000C8318;
    sub_10009D934();
    v29 = sub_10009D904();
    v30 = sub_10009E824();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = v24;
      v33 = swift_slowAlloc();
      v43 = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_10002AD68(0x3A726F66286C7275, 0xE900000000000029, &v43);
      _os_log_impl(&_mh_execute_header, v29, v30, "%s Missing target ID for URL", v31, 0xCu);
      sub_100015F44(v33);

      (*(v26 + 8))(v32, v6);
    }

    else
    {

      (*(v26 + 8))(v24, v6);
    }

    sub_10009CE14();
    v34 = sub_10009CE24();
    v35 = *(v34 - 8);
    result = (*(v35 + 48))(v25, 1, v34);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v35 + 32))(v27, v25, v34);
    }
  }

  return result;
}

uint64_t sub_100020FBC()
{
  v1[18] = v0;
  v2 = sub_10009D924();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = sub_10009CF14();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_10002117C, 0, 0);
}

uint64_t sub_10002117C(uint64_t a1)
{
  v66 = v1;
  v1[35] = *(v1[18] + 8);
  sub_10009C954();
  v2 = v1[15];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v1[14];
  v1[36] = *(v1[18] + 16);
  sub_10009C954();
  if (!v1[17])
  {

LABEL_6:
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v9 = qword_1000C8318;
    sub_10009D934();
    v10 = sub_10009D904();
    v11 = sub_10009E824();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v1[20];
    v13 = v1[21];
    v15 = v1[19];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v65 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10002AD68(0x2928656C67676F74, 0xE800000000000000, &v65);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s Missing target ID", v16, 0xCu);
      sub_100015F44(v17);
    }

    (*(v14 + 8))(v13, v15);
    goto LABEL_19;
  }

  v5 = v1 + 27;
  v4 = v1[27];
  v6 = v1[28];
  v7 = v1[29];
  v63 = v3;
  sub_10009CED4();
  v8 = *(v7 + 48);
  if (v8(v4, 1, v6) == 1)
  {

LABEL_13:
    sub_1000242C8(*v5);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v22 = qword_1000C8318;
    sub_10009D934();

    v23 = sub_10009D904();
    v24 = sub_10009E824();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v1[22];
    v27 = v1[19];
    v28 = v1[20];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_10002AD68(0x2928656C67676F74, 0xE800000000000000, &v65);
      *(v29 + 12) = 2080;
      v30 = sub_10002AD68(v63, v2, &v65);

      *(v29 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s Failed to unwrap target ID for %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v28 + 8))(v26, v27);
LABEL_19:

    v31 = v1[1];

    return v31();
  }

  v5 = v1 + 26;
  v18 = v1[26];
  v19 = v1[28];
  v62 = *(v1[29] + 32);
  v62(v1[34], v1[27], v19);
  sub_10009CED4();

  v20 = v8(v18, 1, v19);
  v21 = v1[28];
  if (v20 == 1)
  {
    (*(v1[29] + 8))(v1[34], v1[28]);
    goto LABEL_13;
  }

  v33 = v1[33];
  v34 = v1[26];

  v62(v33, v34, v21);
  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v35 = v1[34];
  v36 = v1[32];
  v37 = v1[28];
  v38 = v1[29];
  v39 = qword_1000C8318;
  v1[37] = qword_1000C8318;
  v40 = v39;
  sub_10009D934();
  v41 = *(v38 + 16);
  v1[38] = v41;
  v1[39] = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v36, v35, v37);
  v42 = sub_10009D904();
  v43 = sub_10009E844();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v1[32];
  v47 = v1[28];
  v46 = v1[29];
  v48 = v1[25];
  v50 = v1[19];
  v49 = v1[20];
  if (v44)
  {
    v64 = v1[19];
    v51 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = sub_10002AD68(0x2928656C67676F74, 0xE800000000000000, &v65);
    *(v51 + 12) = 2080;
    sub_1000243C8(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v52 = sub_10009ED04();
    v61 = v48;
    v54 = v53;
    v60 = v43;
    v55 = *(v46 + 8);
    v55(v45, v47);
    v56 = sub_10002AD68(v52, v54, &v65);

    *(v51 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v42, v60, "%s Toggling target %s", v51, 0x16u);
    swift_arrayDestroy();

    v57 = *(v49 + 8);
    v57(v61, v64);
  }

  else
  {

    v55 = *(v46 + 8);
    v55(v45, v47);
    v57 = *(v49 + 8);
    v57(v48, v50);
  }

  v1[40] = v57;
  v1[41] = v55;
  v1[42] = sub_10009D024();
  v1[43] = sub_10009D1E4();
  v1[44] = sub_10009D1D4();
  v1[45] = sub_1000243C8(&qword_1000C10D0, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v59 = sub_10009E714();

  return _swift_task_switch(sub_100021978, v59, v58);
}

uint64_t sub_100021978()
{
  v1 = *(v0 + 144);

  *(v0 + 368) = sub_10009D004();
  v3 = v1[1];
  v2 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = swift_task_alloc();
  *(v0 + 376) = v4;
  v5 = sub_100024374();
  *(v0 + 384) = v5;
  *v4 = v0;
  v4[1] = sub_100021A54;
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);

  return WidgetDataModel.toggle<A>(configuration:homeID:targetID:)(v0 + 16, v6, v7, &_s17TileControlActionVN, v5);
}

uint64_t sub_100021A54(char a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = sub_1000224D4;
  }

  else
  {
    *(v4 + 432) = a1 & 1;
    v5 = sub_100021BA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100021BA4()
{
  v51 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 272);
  v5 = *(v0 + 224);
  if (v1 == 1)
  {
    v6 = *(v0 + 248);
    sub_10009D934();
    v3(v6, v4, v5);
    v7 = sub_10009D904();
    v8 = sub_10009E844();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 320);
    v10 = *(v0 + 328);
    v13 = *(v0 + 264);
    v12 = *(v0 + 272);
    v14 = *(v0 + 248);
    v15 = *(v0 + 224);
    v46 = *(v0 + 152);
    v48 = *(v0 + 192);
    if (v9)
    {
      v44 = *(v0 + 320);
      v16 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_10002AD68(0x2928656C67676F74, 0xE800000000000000, &v50);
      *(v16 + 12) = 2080;
      sub_1000243C8(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = v13;
      v43 = v12;
      v17 = sub_10009ED04();
      v19 = v18;
      v10(v14, v15);
      v20 = sub_10002AD68(v17, v19, &v50);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Toggled target %s", v16, 0x16u);
      swift_arrayDestroy();

      v44(v48, v46);
      v10(v42, v15);
      v21 = v43;
    }

    else
    {

      v10(v14, v15);
      v11(v48, v46);
      v10(v13, v15);
      v21 = v12;
    }

    v10(v21, v15);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v22 = *(v0 + 240);
    sub_10009D934();
    v3(v22, v4, v5);
    v23 = sub_10009D904();
    v24 = sub_10009E824();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 320);
    v49 = *(v0 + 328);
    v28 = *(v0 + 232);
    v27 = *(v0 + 240);
    v29 = *(v0 + 224);
    v30 = *(v0 + 184);
    v31 = *(v0 + 152);
    if (v25)
    {
      v47 = *(v0 + 184);
      v32 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_10002AD68(0x2928656C67676F74, 0xE800000000000000, &v50);
      *(v32 + 12) = 2080;
      sub_1000243C8(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = v26;
      v33 = sub_10009ED04();
      v35 = v34;
      v36 = v28 + 8;
      v49(v27, v29);
      v37 = sub_10002AD68(v33, v35, &v50);

      *(v32 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s Failed to toggle target %s", v32, 0x16u);
      swift_arrayDestroy();

      v45(v47, v31);
    }

    else
    {

      v36 = v28 + 8;
      v49(v27, v29);
      v26(v30, v31);
    }

    *(v0 + 400) = v36;
    *(v0 + 408) = sub_10009D1D4();
    v41 = sub_10009E714();

    return _swift_task_switch(sub_100022168, v41, v40);
  }
}

uint64_t sub_100022168()
{
  v1 = *(v0 + 144);

  *(v0 + 416) = sub_10009D004();
  v2 = *v1;
  v3 = v1[2];
  *(v0 + 80) = v1[1];
  *(v0 + 96) = v3;
  *(v0 + 64) = v2;

  v4 = swift_task_alloc();
  *(v0 + 424) = v4;
  *v4 = v0;
  v4[1] = sub_100022290;
  v5 = *(v0 + 384);

  return WidgetDataModel.queueForNextUpdate<A>(configuration:)(v0 + 64, &_s17TileControlActionVN, v5);
}

uint64_t sub_100022290()
{

  return _swift_task_switch(sub_1000223A8, 0, 0);
}

uint64_t sub_1000223A8()
{
  v1 = v0[41];
  v2 = v0[34];
  v3 = v0[28];
  v1(v0[33], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000224D4()
{
  v1 = v0[41];
  v2 = v0[34];
  v3 = v0[28];
  v1(v0[33], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100022608@<X0>(_BYTE *a2@<X8>)
{
  result = sub_10009C954();
  *a2 = v4;
  return result;
}

uint64_t (*sub_10002267C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10009C944();
  return sub_1000226F0;
}

void sub_1000226F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000227A8()
{
  result = qword_1000C1088;
  if (!qword_1000C1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1088);
  }

  return result;
}

unint64_t sub_100022800()
{
  result = qword_1000C1090;
  if (!qword_1000C1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1090);
  }

  return result;
}

uint64_t sub_100022934@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100015B68(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000229E4(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_100022A90;

  return sub_100020270(a1);
}

uint64_t sub_100022A90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_100022B84@<D0>(_OWORD *a1@<X8>)
{
  sub_100022E6C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_100022BC4(uint64_t a1)
{
  v2 = sub_1000201C4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100022C00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100022C14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100022C5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s17TileControlActionV6ActionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17TileControlActionV6ActionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100022E6C@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v1 = sub_100003714(&qword_1000C10A0, "&H");
  __chkstk_darwin(v1 - 8);
  v66 = &v55 - v2;
  v76 = sub_10009CB44();
  v3 = *(v76 - 8);
  __chkstk_darwin(v76);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v7 = __chkstk_darwin(v6 - 8);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v55 - v9;
  v11 = sub_100003714(&qword_1000C10A8, &unk_1000A0398);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v55 - v15;
  v17 = sub_10009CD54();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v70 = sub_100003714(&qword_1000C10B0, &qword_1000A03A8);
  sub_10009CD14();
  v19 = *(v18 + 56);
  v74 = v18 + 56;
  v71 = v19;
  v72 = v17;
  v19(v16, 1, 1, v17);
  LOBYTE(v78) = 2;
  v20 = sub_10009E6F4();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = sub_10009C914();
  v22 = *(v21 - 8);
  v73 = *(v22 + 56);
  v77 = v22 + 56;
  v73(v10, 1, 1, v21);
  v75 = enum case for InputConnectionBehavior.default(_:);
  v68 = *(v3 + 104);
  v63 = v3 + 104;
  v23 = v76;
  v68(v5);
  v59 = sub_10009C9D4();
  v64 = sub_100003714(&qword_1000C10B8, &qword_1000A03B0);
  sub_10009CD14();
  v71(v16, 1, 1, v17);
  v69 = sub_10009E544();
  v78 = 0;
  v79 = 0;
  v24 = *(v69 - 8);
  v65 = *(v24 + 56);
  v70 = v24 + 56;
  v25 = v66;
  v65(v66, 1, 1, v69);
  v62 = v10;
  v26 = v10;
  v27 = v21;
  v67 = v21;
  v28 = v73;
  v73(v26, 1, 1, v21);
  v55 = v5;
  v29 = v5;
  v30 = v75;
  v31 = v68;
  (v68)(v29, v75, v23);
  v58 = sub_10009C9C4();
  sub_10009CD14();
  v71(v16, 1, 1, v72);
  v78 = 0;
  v79 = 0;
  v65(v25, 1, 1, v69);
  v32 = v62;
  v28(v62, 1, 1, v27);
  v33 = v55;
  v31(v55, v30, v76);
  v56 = v16;
  v34 = v33;
  v64 = sub_10009C9C4();
  v57 = sub_100003714(&qword_1000C10C0, &qword_1000A03B8);
  sub_10009CD14();
  v35 = v16;
  v36 = v71;
  v71(v35, 1, 1, v72);
  LOBYTE(v78) = 2;
  v37 = v67;
  v38 = v73;
  v73(v32, 1, 1, v67);
  v38(v60, 1, 1, v37);
  v39 = v76;
  (v68)(v33, v75, v76);
  sub_10001FF70();
  v40 = v56;
  v60 = sub_10009C984();
  v57 = sub_100003714(&qword_1000C10C8, &qword_1000A03C0);
  sub_10009CD14();
  v36(v40, 1, 1, v72);
  v78 = 0;
  v79 = 0;
  v42 = v65;
  v41 = v66;
  v65(v66, 1, 1, v69);
  v43 = v62;
  v73(v62, 1, 1, v67);
  v44 = v34;
  v45 = v39;
  v46 = v68;
  (v68)(v34, v75, v45);
  v47 = v40;
  v48 = v41;
  v49 = v43;
  v50 = sub_10009C9C4();
  sub_10009CD14();
  v71(v47, 1, 1, v72);
  v78 = 0;
  v79 = 0;
  v42(v48, 1, 1, v69);
  v73(v49, 1, 1, v67);
  (v46)(v44, v75, v76);
  result = sub_10009C9C4();
  v52 = v61;
  v53 = v58;
  *v61 = v59;
  v52[1] = v53;
  v54 = v60;
  v52[2] = v64;
  v52[3] = v54;
  v52[4] = v50;
  v52[5] = result;
  return result;
}

uint64_t sub_100023744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v88 = a4;
  v86 = a3;
  v87 = a2;
  v84 = a1;
  v89 = a5;
  v5 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v6 = __chkstk_darwin(v5 - 8);
  v85 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v79 - v8;
  v9 = sub_100003714(&qword_1000C10A0, "&H");
  __chkstk_darwin(v9 - 8);
  v93 = &v79 - v10;
  v96 = sub_10009CB44();
  v11 = *(v96 - 8);
  __chkstk_darwin(v96);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v15 = __chkstk_darwin(v14 - 8);
  v80 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v79 - v17;
  v19 = sub_100003714(&qword_1000C10A8, &unk_1000A0398);
  __chkstk_darwin(v19 - 8);
  v21 = &v79 - v20;
  v22 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v22 - 8);
  v24 = &v79 - v23;
  v25 = sub_10009CD54();
  v99 = v25;
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  sub_100003714(&qword_1000C10B0, &qword_1000A03A8);
  sub_10009CD14();
  v100 = *(v26 + 56);
  v103 = v26 + 56;
  v100(v24, 1, 1, v25);
  LOBYTE(v106) = 2;
  v27 = sub_10009E6F4();
  (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  v101 = sub_10009C914();
  v28 = *(v101 - 8);
  v102 = *(v28 + 56);
  v105 = v28 + 56;
  v102(v18, 1, 1, v101);
  v104 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v11 + 104);
  v95 = v11 + 104;
  v90 = v13;
  v91 = v29;
  v30 = v96;
  v29(v13);
  v31 = sub_10009C9D4();
  v94 = sub_100003714(&qword_1000C10B8, &qword_1000A03B0);
  v83 = v31;

  sub_10009CD14();
  v100(v24, 1, 1, v99);
  v97 = sub_10009E544();
  v106 = 0;
  v107 = 0;
  v32 = *(v97 - 8);
  v92 = *(v32 + 56);
  v98 = v32 + 56;
  v33 = v93;
  v92(v93, 1, 1, v97);
  v34 = v101;
  v35 = v102;
  v102(v18, 1, 1, v101);
  v36 = v90;
  v37 = v91;
  v91(v90, v104, v30);
  v81 = sub_10009C9C4();

  sub_10009CD14();
  v100(v24, 1, 1, v99);
  v106 = 0;
  v107 = 0;
  v92(v33, 1, 1, v97);
  v35(v18, 1, 1, v34);
  v38 = v96;
  v37(v36, v104, v96);
  v39 = v18;
  v40 = sub_10009C9C4();
  v79 = sub_100003714(&qword_1000C10C0, &qword_1000A03B8);
  v94 = v40;

  sub_10009CD14();
  v41 = v24;
  v42 = v99;
  v43 = v100;
  v100(v24, 1, 1, v99);
  LOBYTE(v106) = 2;
  v44 = v101;
  v45 = v102;
  v102(v39, 1, 1, v101);
  v45(v80, 1, 1, v44);
  v46 = v90;
  v47 = v38;
  v48 = v91;
  v91(v90, v104, v47);
  sub_10001FF70();
  v49 = sub_10009C984();
  sub_100003714(&qword_1000C10C8, &qword_1000A03C0);
  v80 = v49;

  sub_10009CD14();
  v50 = v41;
  v43(v41, 1, 1, v42);
  v106 = 0;
  v107 = 0;
  v51 = v92;
  v52 = v93;
  v92(v93, 1, 1, v97);
  v53 = v39;
  v102(v39, 1, 1, v101);
  v54 = v96;
  v48(v46, v104, v96);
  v79 = sub_10009C9C4();

  sub_10009CD14();
  v100(v50, 1, 1, v99);
  v106 = 0;
  v107 = 0;
  v51(v52, 1, 1, v97);
  v102(v53, 1, 1, v101);
  v48(v46, v104, v54);
  v55 = v84;
  v56 = v82;
  v57 = sub_10009C9C4();
  sub_10001600C(v55, v56);
  v58 = sub_10009CF14();
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  LODWORD(v21) = v60(v56, 1, v58);

  if (v21 == 1)
  {
    sub_1000242C8(v56);
    v61 = 0;
    v62 = 0;
  }

  else
  {
    v61 = sub_10009CEE4();
    v62 = v63;
    (*(v59 + 8))(v56, v58);
  }

  v106 = v61;
  v107 = v62;
  sub_10009C964();
  v64 = v87;
  v65 = v85;
  sub_10001600C(v87, v85);
  if (v60(v65, 1, v58) == 1)
  {
    sub_1000242C8(v65);
    v66 = 0;
    v67 = 0;
  }

  else
  {
    v66 = sub_10009CEE4();
    v67 = v68;
    (*(v59 + 8))(v65, v58);
  }

  v106 = v66;
  v107 = v67;
  v69 = v81;
  sub_10009C964();
  LOBYTE(v106) = v86 & 1;
  v70 = v80;
  sub_10009C964();
  v71 = v88;
  sub_100024330(v88, v88[3]);
  v106 = sub_10009D0D4();
  v107 = v72;
  v73 = v79;
  sub_10009C964();
  sub_100024330(v71, v71[3]);
  v106 = sub_10009D0C4();
  v107 = v74;
  sub_10009C964();
  sub_1000242C8(v64);
  sub_1000242C8(v55);
  sub_100015F44(v71);

  v75 = v94;

  v76 = v83;

  v78 = v89;
  *v89 = v76;
  v78[1] = v69;
  v78[2] = v75;
  v78[3] = v70;
  v78[4] = v73;
  v78[5] = v57;
  return result;
}

uint64_t sub_1000242C8(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100024330(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100024374()
{
  result = qword_1000C10D8;
  if (!qword_1000C10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C10D8);
  }

  return result;
}

uint64_t sub_1000243C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_100024418(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_10009CF14();
    ++v2;
    sub_10002EEE0(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  }

  while ((sub_10009E534() & 1) == 0);
  return v3 != v4;
}

void *sub_100024524(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AccessoryAndSceneEntity(0);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_10002ED9C(a3 + v15 + v16 * v13, v12, type metadata accessor for AccessoryAndSceneEntity);
      v17 = a1(v12);
      if (v3)
      {
        sub_10002EE04(v12, type metadata accessor for AccessoryAndSceneEntity);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_10002EE74(v12, v24, type metadata accessor for AccessoryAndSceneEntity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10001BC84(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_10001BC84((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_10002EE74(v24, v14 + v15 + v20 * v16, type metadata accessor for AccessoryAndSceneEntity);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_10002EE04(v12, type metadata accessor for AccessoryAndSceneEntity);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t type metadata accessor for AccessoryAndSceneEntity(uint64_t a1)
{
  result = qword_1000C11D8;
  if (!qword_1000C11D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000248DC()
{
  result = qword_1000C1108;
  if (!qword_1000C1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1108);
  }

  return result;
}

uint64_t sub_10002493C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_10009E5B4();
  [v0 initWithSuiteName:v1];

  result = sub_10009D9C4();
  qword_1000C10E8 = result;
  return result;
}

uint64_t sub_1000249E0@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_10009CE24();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = [v10 URLsForDirectory:13 inDomains:1];

  v12 = sub_10009E6A4();
  if (*(v12 + 16))
  {
    v1 = *(v4 + 16);
    v1(v9, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    sub_10009CDD4();
    if (qword_1000C0AA0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_10009D924();
  sub_100015B68(v13, qword_1000C82A8);
  v1(v7, a1, v3);
  v14 = sub_10009D904();
  v15 = sub_10009E844();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10002AD68(0x617461446F6D6564, 0xED000029284C5255, &v25);
    *(v16 + 12) = 2080;
    sub_10002EEE0(&qword_1000C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = sub_10009ED04();
    v19 = v18;
    v24 = v9;
    v20 = *(v4 + 8);
    v20(v7, v3);
    v21 = sub_10002AD68(v17, v19, &v25);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s demoDataURL: (%s)", v16, 0x16u);
    swift_arrayDestroy();

    return (v20)(v24, v3);
  }

  else
  {

    v23 = *(v4 + 8);
    v23(v7, v3);
    return (v23)(v9, v3);
  }
}

uint64_t sub_100024D94()
{
  sub_100003714(&qword_1000C1268, &qword_1000A0C70);
  swift_getKeyPath();
  result = sub_10009CBA4();
  qword_1000C81D0 = result;
  return result;
}

uint64_t sub_100024DE0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_100003714(&qword_1000C1250, &qword_1000A08C8);
  __chkstk_darwin(v1 - 8);
  v22 = &v18 - v2;
  v3 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v3 - 8);
  v21 = &v18 - v4;
  v5 = sub_10009CD54();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v18 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009D494();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009E594();
  __chkstk_darwin(v11 - 8);
  sub_10009E584();
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_10009E574(v24);
  type metadata accessor for AccessoryAndSceneEntity(0);
  type metadata accessor for WidgetTileInfo(0);

  sub_10009D484();
  v12 = sub_10009D474();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v25._countAndFlagsBits = v12;
  v25._object = v14;
  sub_10009E564(v25);

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_10009E574(v26);
  sub_10009CD44();
  (*(v19 + 56))(v21, 1, 1, v20);

  v15 = v22;
  sub_10009CA94();
  v16 = sub_10009CAA4();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_10009CAC4();
}

uint64_t sub_100025178()
{
  v0 = sub_10009CBC4();
  sub_10001F4BC(v0, qword_1000C81D8);
  sub_100015B68(v0, qword_1000C81D8);
  return sub_10009CBB4();
}

uint64_t sub_1000251DC@<X0>(void *a1@<X8>)
{
  if (qword_1000C0A50 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000C81D0;
}

Swift::Int sub_1000252DC()
{
  sub_10009EDD4();
  sub_10009CF14();
  sub_10002EEE0(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_10009E504();
  sub_10009E504();
  sub_10001ADCC(v1);
  return sub_10009EE04();
}

void sub_1000253A8(uint64_t a1)
{
  sub_10009CF14();
  sub_10002EEE0(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_10009E504();
  sub_10009E504();
  sub_10001ADCC(a1);
}

Swift::Int sub_10002545C(uint64_t a1)
{
  sub_10009EDD4();
  sub_10009CF14();
  sub_10002EEE0(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_10009E504();
  sub_10009E504();
  sub_10001ADCC(v2);
  return sub_10009EE04();
}

BOOL sub_100025524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10009CEF4() & 1) == 0 || (sub_10009CEF4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_10001C7F8(a1 + v6, a2 + v6);
}

uint64_t sub_1000256C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000C0A58 != -1)
  {
    swift_once();
  }

  v2 = sub_10009CBC4();
  v3 = sub_100015B68(v2, qword_1000C81D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000257AC(uint64_t a1)
{
  v2 = sub_10002EEE0(&qword_1000C1160, type metadata accessor for AccessoryAndSceneEntity, &unk_1000A03F0);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100025874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002EF28;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100025938(uint64_t a1)
{
  v2 = sub_10002EEE0(&qword_1000C1130, type metadata accessor for AccessoryAndSceneEntity, &unk_1000A0608);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000259B8()
{
  sub_10009EAC4(65);
  v2._object = 0x80000001000A43C0;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10009E634(v2);
  type metadata accessor for AccessoryAndSceneEntity(0);
  type metadata accessor for WidgetTileInfo(0);
  v3._countAndFlagsBits = sub_10009CEE4();
  sub_10009E634(v3);

  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001000A43E0;
  sub_10009E634(v4);
  v5._countAndFlagsBits = sub_10009CEE4();
  sub_10009E634(v5);

  sub_10009CE14();
}

uint64_t sub_100025AD4()
{
  v1 = sub_10009D1C4();
  v2 = *(v1 - 8);
  v3 = v2;
  __chkstk_darwin(v1);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000C1270, &qword_1000A0930);
  v5 = *(v2 + 72);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10009F8E0;
  v8 = v7 + v6;
  v9 = *(v3 + 104);
  v9(v8, enum case for ServiceKind.garageDoorOpener(_:), v1);
  v9(v8 + v5, enum case for ServiceKind.door(_:), v1);
  v9(v8 + 2 * v5, enum case for ServiceKind.window(_:), v1);
  v9(v8 + 3 * v5, enum case for ServiceKind.windowCovering(_:), v1);
  v9(v8 + 4 * v5, enum case for ServiceKind.lockMechanism(_:), v1);
  v10 = sub_10002CDDC(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v11 = v0 + *(type metadata accessor for AccessoryAndSceneEntity(0) + 24);
  v12 = v11 + *(type metadata accessor for WidgetTileInfo(0) + 60);
  if (*(v12 + 8))
  {

    v13 = 0;
  }

  else
  {
    v14 = *v12;
    v15 = v18;
    sub_10009E904();
    v13 = sub_100025D60(v15, v10);

    (*(v3 + 8))(v15, v1);
  }

  return v13 & 1;
}

uint64_t sub_100025D60(uint64_t a1, uint64_t a2)
{
  v3 = sub_10009D1C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10002EEE0(&qword_1000C1278, &type metadata accessor for ServiceKind, &protocol conformance descriptor for ServiceKind), v7 = sub_10009E4F4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10002EEE0(&qword_1000C1280, &type metadata accessor for ServiceKind, &protocol conformance descriptor for ServiceKind);
      v15 = sub_10009E534();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100025F78(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10001E0A8(a1, &v9 - v6, &qword_1000C1228, &unk_1000A0880);
  sub_10001E0A8(v7, v5, &qword_1000C1228, &unk_1000A0880);
  sub_10009C964();
  return sub_1000160CC(v7, &qword_1000C1228, &unk_1000A0880);
}

uint64_t sub_10002606C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *(type metadata accessor for AccessoryAndSceneEntity(0) - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  type metadata accessor for HomeEntity(0);
  v2[7] = swift_task_alloc();
  v2[8] = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000261B4, 0, 0);
}

uint64_t sub_1000261B4()
{
  v52 = v0;
  if (qword_1000C0A90 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = sub_10009D924();
    sub_100015B68(v1, qword_1000C8278);

    v2 = sub_10009D904();
    v3 = sub_10009E844();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v4 = 136315650;
      *(v4 + 4) = sub_10002AD68(0x7365697469746E65, 0xEE00293A726F6628, &v51);
      *(v4 + 12) = 2080;
      v5 = sub_10009CB94();
      v6 = *(v0 + 88);
      if (v5)
      {
        v7 = *(v0 + 56);
        swift_getKeyPath();
        sub_10002B338();
        sub_10009C9E4();

        v8 = sub_10009CF14();
        v9 = *(v8 - 8);
        (*(v9 + 16))(v6, v7, v8);
        sub_10002EE04(v7, type metadata accessor for HomeEntity);
        (*(v9 + 56))(v6, 0, 1, v8);
      }

      else
      {
        v10 = sub_10009CF14();
        (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      }

      v11 = sub_10009E5F4();
      v13 = sub_10002AD68(v11, v12, &v51);

      *(v4 + 14) = v13;
      *(v4 + 22) = 2080;
      sub_10009CF14();
      v14 = sub_10009E6B4();
      v16 = sub_10002AD68(v14, v15, &v51);

      *(v4 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s HomeID:%s identifiers:%s", v4, 0x20u);
      swift_arrayDestroy();
    }

    if (qword_1000C0A48 != -1)
    {
      swift_once();
    }

    sub_10009D9D4();

    if (*(v0 + 104) != 1)
    {
      v28 = sub_10009CB94();
      v29 = *(v0 + 80);
      if (v28)
      {
        v30 = *(v0 + 56);
        swift_getKeyPath();
        sub_10002B338();
        sub_10009C9E4();

        v31 = sub_10009CF14();
        v32 = *(v31 - 8);
        (*(v32 + 16))(v29, v30, v31);
        sub_10002EE04(v30, type metadata accessor for HomeEntity);
        (*(v32 + 56))(v29, 0, 1, v31);
        sub_1000160CC(v29, &qword_1000C0C78, &qword_1000A0390);
        v33 = 0;
      }

      else
      {
        v36 = *(v0 + 16);
        v37 = sub_10009CF14();
        (*(*(v37 - 8) + 56))(v29, 1, 1, v37);
        sub_1000160CC(v29, &qword_1000C0C78, &qword_1000A0390);
        v33 = *(v36 + 16) != 0;
      }

      if (sub_10009CB94())
      {
        v38 = *(v0 + 72);
        v39 = *(v0 + 56);
        swift_getKeyPath();
        sub_10002B338();
        sub_10009C9E4();

        v40 = sub_10009CF14();
        v41 = *(v40 - 8);
        (*(v41 + 16))(v38, v39, v40);
        sub_10002EE04(v39, type metadata accessor for HomeEntity);
        v42 = 0;
      }

      else
      {
        v40 = sub_10009CF14();
        v41 = *(v40 - 8);
        v42 = 1;
      }

      v43 = *(v0 + 16);
      (*(v41 + 56))(*(v0 + 72), v42, 1, v40);
      v44 = swift_task_alloc();
      *(v0 + 96) = v44;
      *v44 = v0;
      v44[1] = sub_100026B24;
      v45 = *(v0 + 72);

      return sub_10002D41C(v33, v45, v43);
    }

    if (qword_1000C0A80 != -1)
    {
      swift_once();
    }

    v17 = *(qword_1000C8258 + 16);

    if (!v17)
    {
      break;
    }

    v19 = 0;
    v46 = *(v0 + 16);
    v47 = *(v0 + 32);
    v20 = _swiftEmptyArrayStorage;
    v48 = v18;
    while (v19 < *(v18 + 16))
    {
      v21 = v19 + 1;
      v49 = *(v47 + 72);
      v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      sub_10002ED9C(v18 + v50 + v49 * v19, *(v0 + 48), type metadata accessor for AccessoryAndSceneEntity);
      v22 = 0;
      v23 = *(v46 + 16);
      do
      {
        if (v23 == v22)
        {
          sub_10002EE04(*(v0 + 48), type metadata accessor for AccessoryAndSceneEntity);
          goto LABEL_15;
        }

        sub_10009CF14();
        sub_10002EEE0(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        ++v22;
      }

      while ((sub_10009E534() & 1) == 0);
      sub_10002EE74(*(v0 + 48), *(v0 + 40), type metadata accessor for AccessoryAndSceneEntity);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001BC84(0, v20[2] + 1, 1);
        v20 = v51;
      }

      v26 = v20[2];
      v25 = v20[3];
      if (v26 >= v25 >> 1)
      {
        sub_10001BC84((v25 > 1), v26 + 1, 1);
        v20 = v51;
      }

      v27 = *(v0 + 40);
      v20[2] = v26 + 1;
      sub_10002EE74(v27, v20 + v50 + v26 * v49, type metadata accessor for AccessoryAndSceneEntity);
LABEL_15:
      v19 = v21;
      v18 = v48;
      if (v21 == v17)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_28:

  v34 = *(v0 + 8);

  return v34(v20);
}

uint64_t sub_100026B24(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *v1;

  sub_1000160CC(v3, &qword_1000C0C78, &qword_1000A0390);

  v5 = *(v4 + 8);

  return v5(a1);
}

uint64_t sub_100026CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for HomeEntity(0);
  v4[6] = swift_task_alloc();
  v4[7] = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100026DD8, 0, 0);
}

uint64_t sub_100026DD8()
{
  v28 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);

  v2 = sub_10009D904();
  v3 = sub_10009E844();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v4 = 136315650;
    *(v4 + 4) = sub_10002AD68(0xD000000000000013, 0x80000001000A44C0, &v27);
    *(v4 + 12) = 2080;
    v5 = sub_10009CB94();
    v6 = v0[9];
    if (v5)
    {
      v7 = v0[6];
      swift_getKeyPath();
      sub_10002B338();
      sub_10009C9E4();

      v8 = sub_10009CF14();
      v9 = *(v8 - 8);
      (*(v9 + 16))(v6, v7, v8);
      sub_10002EE04(v7, type metadata accessor for HomeEntity);
      (*(v9 + 56))(v6, 0, 1, v8);
    }

    else
    {
      v10 = sub_10009CF14();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    }

    v12 = v0[3];
    v11 = v0[4];
    v13 = sub_10009E5F4();
    v15 = sub_10002AD68(v13, v14, &v27);

    *(v4 + 14) = v15;
    *(v4 + 22) = 2080;
    *(v4 + 24) = sub_10002AD68(v12, v11, &v27);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Generating suggested entities in home %s matching with string %s", v4, 0x20u);
    swift_arrayDestroy();
  }

  if (sub_10009CB94())
  {
    v16 = v0[8];
    v17 = v0[6];
    swift_getKeyPath();
    sub_10002B338();
    sub_10009C9E4();

    v18 = sub_10009CF14();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v16, v17, v18);
    sub_10002EE04(v17, type metadata accessor for HomeEntity);
    v20 = 0;
  }

  else
  {
    v18 = sub_10009CF14();
    v19 = *(v18 - 8);
    v20 = 1;
  }

  v21 = v0[4];
  (*(v19 + 56))(v0[8], v20, 1, v18);
  v22 = swift_task_alloc();
  v0[10] = v22;
  *v22 = v0;
  v22[1] = sub_100027258;
  v23 = v0[8];
  v24 = v0[2];
  v25 = v0[3];

  return sub_1000273C4(v24, v23, v25, v21);
}

uint64_t sub_100027258()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  sub_1000160CC(v1, &qword_1000C0C78, &qword_1000A0390);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000273C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_100003714(&qword_1000C0EB0, &qword_10009FCD8);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_100003714(&qword_1000C1238, &qword_1000A0890);
  v4[18] = swift_task_alloc();
  sub_10009CF54();
  v4[19] = swift_task_alloc();
  sub_10009CD34();
  v4[20] = swift_task_alloc();
  sub_10009E5A4();
  v4[21] = swift_task_alloc();
  v6 = sub_10009CD54();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = sub_100003714(&qword_1000C1240, &unk_1000A0898);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v8 = sub_10009D494();
  v4[34] = v8;
  v4[35] = *(v8 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = type metadata accessor for WidgetTileInfo(0);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v9 = type metadata accessor for AccessoryAndSceneEntity(0);
  v4[40] = v9;
  v4[41] = *(v9 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v10 = sub_10009CF14();
  v4[48] = v10;
  v4[49] = *(v10 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v11 = sub_100003714(&qword_1000C1178, qword_1000A0718);
  v4[55] = v11;
  v4[56] = *(v11 - 8);
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_1000278A4, 0, 0);
}

uint64_t sub_1000278A4()
{
  v1 = v0[54];
  v2 = v0[22];
  v3 = v0[23];
  v4 = *(v3 + 56);
  v0[58] = v4;
  v0[59] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v0[60] = sub_10002EEE0(&qword_1000C1128, type metadata accessor for AccessoryAndSceneEntity, &unk_1000A05A8);
  sub_10009CA54();
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_1000279F8;
  v6 = v0[12];

  return sub_10002D41C(0, v6, 0);
}

uint64_t sub_1000279F8(uint64_t a1)
{
  *(*v1 + 496) = a1;

  return _swift_task_switch(sub_100027AF8, 0, 0);
}

uint64_t sub_100027AF8()
{
  v250 = v0;
  if (qword_1000C0A90 != -1)
  {
    goto LABEL_175;
  }

  while (1)
  {
    v1 = sub_10009D924();
    sub_100015B68(v1, qword_1000C8278);

    v2 = sub_10009D904();
    v3 = sub_10009E844();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 496);
    if (v4)
    {
      v6 = swift_slowAlloc();
      v249[0] = swift_slowAlloc();
      *v6 = 136315650;
      *(v6 + 4) = sub_10002AD68(0xD00000000000002ELL, 0x80000001000A4450, v249);
      *(v6 + 12) = 2048;
      *(v6 + 14) = *(v5 + 16);

      *(v6 + 22) = 2080;
      v7 = *(v5 + 16);
      if (v7)
      {
        v223 = v3;
        v226 = v6;
        v230 = v2;
        v8 = *(v0 + 496);
        v9 = *(v0 + 392);
        v10 = *(v0 + 328);
        v239 = *(v0 + 320);
        v246 = _swiftEmptyArrayStorage;
        sub_10001BC00(0, v7, 0);
        v11 = v246;
        v12 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v236 = *(v10 + 72);
        do
        {
          v13 = *(v0 + 408);
          v14 = *(v0 + 376);
          v15 = *(v0 + 384);
          sub_10002ED9C(v12, v14, type metadata accessor for AccessoryAndSceneEntity);
          (*(v9 + 16))(v13, v14 + *(v239 + 24), v15);
          sub_10002EE04(v14, type metadata accessor for AccessoryAndSceneEntity);
          v246 = v11;
          v17 = v11[2];
          v16 = v11[3];
          if (v17 >= v16 >> 1)
          {
            sub_10001BC00((v16 > 1), v17 + 1, 1);
            v11 = v246;
          }

          v18 = *(v0 + 408);
          v19 = *(v0 + 384);
          v11[2] = v17 + 1;
          (*(v9 + 32))(v11 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v18, v19);
          v12 += v236;
          --v7;
        }

        while (v7);
        v2 = v230;
        v6 = v226;
        v3 = v223;
      }

      v20 = sub_10009E6B4();
      v22 = v21;

      v23 = sub_10002AD68(v20, v22, v249);

      *(v6 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v2, v3, "%s Starting with %ld entities: %s", v6, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v24 = *(v0 + 496);
    v215 = *(v24 + 16);
    if (!v215)
    {
      v28 = &_swiftEmptyDictionarySingleton;
      v237 = _swiftEmptyArrayStorage;
LABEL_101:
      v96 = *(v0 + 264);
      v241 = *(v0 + 256);
      v97 = *(v0 + 208);
      v232 = *(v0 + 200);
      sub_10009E554();
      sub_10009CD24();
      sub_10009CF44();
      sub_10009CD64();
      sub_100029D98(v237);
      sub_10009CA44();
      v214 = *(v97 + 16);
      v214(v241, v96, v232);
      v98 = sub_1000651A0(0, 1, 1, _swiftEmptyArrayStorage);
      v100 = *(v98 + 2);
      v99 = *(v98 + 3);
      if (v100 >= v99 >> 1)
      {
        v98 = sub_1000651A0((v99 > 1), v100 + 1, 1, v98);
      }

      v101 = *(v0 + 256);
      v102 = *(v0 + 200);
      v103 = *(v0 + 208);
      *(v98 + 2) = v100 + 1;
      v225 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v212 = *(v103 + 72);
      v219 = *(v103 + 32);
      v219(&v98[v225 + v212 * v100], v101, v102);
      v104 = v28[2];
      v105 = _swiftEmptyArrayStorage;
      if (v104)
      {
        v105 = sub_10002ACD8(v28[2], 0);
        v242 = sub_10002C2A8(&v246, v105 + 4, v104, v28);
        v106 = v246;

        result = sub_100015F9C(v106);
        if (v242 != v104)
        {
          __break(1u);
          return result;
        }
      }

      v246 = v105;
      sub_10002B3EC(&v246);

      v108 = v246[2];
      if (v108)
      {
        v217 = (*(v0 + 208) + 8);
        v109 = v246 + 6;
        do
        {
          v110 = *(v0 + 248);
          v233 = *(v0 + 240);
          v243 = *(v0 + 200);
          v111 = v98;
          v112 = *v109;

          sub_10009CD14();
          sub_100029D98(v112);
          v98 = v111;

          sub_10009CA44();
          v214(v233, v110, v243);
          v114 = *(v111 + 2);
          v113 = *(v111 + 3);
          if (v114 >= v113 >> 1)
          {
            v98 = sub_1000651A0((v113 > 1), v114 + 1, 1, v111);
          }

          v115 = *(v0 + 240);
          v116 = *(v0 + 200);
          (*v217)(*(v0 + 248), v116);
          *(v98 + 2) = v114 + 1;
          v219(&v98[v225 + v114 * v212], v115, v116);
          v109 += 3;
          --v108;
        }

        while (v108);
      }

      swift_bridgeObjectRetain_n();
      v117 = sub_10009D904();
      v118 = sub_10009E844();
      v208 = v98;
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v248 = swift_slowAlloc();
        *v119 = 136315650;
        *(v119 + 4) = sub_10002AD68(0xD00000000000002ELL, 0x80000001000A4450, &v248);
        *(v119 + 12) = 2048;
        *(v119 + 14) = *(v98 + 2);

        *(v119 + 22) = 2080;
        v120 = *(v98 + 2);
        if (v120)
        {
          v222 = v118;
          v228 = v119;
          v234 = v117;
          v121 = *(v0 + 208);
          v249[0] = _swiftEmptyArrayStorage;
          sub_10001BC44(0, v120, 0);
          v122 = 0;
          v123 = v249[0];
          v124 = &v98[v225];
          v125 = (v121 + 8);
          v244 = v120;
          do
          {
            if (v122 >= *(v208 + 2))
            {
              goto LABEL_169;
            }

            v126 = *(v0 + 144);
            v214(*(v0 + 232), v124, *(v0 + 200));
            v246 = 0;
            v247 = 0xE000000000000000;
            sub_10009CA14();
            v127 = sub_10009CAD4();
            v128 = *(v127 - 8);
            if ((*(v128 + 48))(v126, 1, v127) == 1)
            {
              sub_1000160CC(*(v0 + 144), &qword_1000C1238, &qword_1000A0890);
              v129 = 1;
            }

            else
            {
              v130 = *(v0 + 144);
              sub_10009CAB4();
              (*(v128 + 8))(v130, v127);
              v129 = 0;
            }

            v131 = *(v0 + 232);
            v132 = *(v0 + 200);
            (*(v0 + 464))(*(v0 + 424), v129, 1, *(v0 + 176));
            v252._countAndFlagsBits = sub_10009E5F4();
            sub_10009E634(v252);

            v253._countAndFlagsBits = 5972026;
            v253._object = 0xE300000000000000;
            sub_10009E634(v253);
            v133 = *(sub_10009CA24() + 16);

            *(v0 + 80) = v133;
            v254._countAndFlagsBits = sub_10009ED04();
            sub_10009E634(v254);

            v255._countAndFlagsBits = 0x736D657469205DLL;
            v255._object = 0xE700000000000000;
            sub_10009E634(v255);
            v134 = v246;
            v135 = v247;
            (*v125)(v131, v132);
            v249[0] = v123;
            v137 = *(v123 + 16);
            v136 = *(v123 + 24);
            if (v137 >= v136 >> 1)
            {
              sub_10001BC44((v136 > 1), v137 + 1, 1);
              v123 = v249[0];
            }

            ++v122;
            *(v123 + 16) = v137 + 1;
            v138 = v123 + 16 * v137;
            *(v138 + 32) = v134;
            *(v138 + 40) = v135;
            v124 += v212;
          }

          while (v244 != v122);
          v98 = v208;
          v117 = v234;
          v119 = v228;
          v118 = v222;
        }

        v139 = sub_10009E6B4();
        v141 = v140;

        v142 = sub_10002AD68(v139, v141, &v248);

        *(v119 + 24) = v142;
        _os_log_impl(&_mh_execute_header, v117, v118, "%s Returning ItemCollection with allSections (%ld) items = %s", v119, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v143 = *(v98 + 2);
      v144 = _swiftEmptyArrayStorage;
      if (v143)
      {
        v145 = *(v0 + 208);
        v246 = _swiftEmptyArrayStorage;
        sub_10001BCE8(0, v143, 0);
        v144 = v246;
        v146 = &v98[v225];
        v147 = (v145 + 8);
        do
        {
          v148 = *(v0 + 224);
          v149 = *(v0 + 200);
          v214(v148, v146, v149);
          v150 = sub_10009CA24();
          (*v147)(v148, v149);
          v151 = *(v150 + 16);

          v246 = v144;
          v153 = v144[2];
          v152 = v144[3];
          v154 = v153 + 1;
          if (v153 >= v152 >> 1)
          {
            sub_10001BCE8((v152 > 1), v153 + 1, 1);
            v144 = v246;
          }

          v144[2] = v154;
          v144[v153 + 4] = v151;
          v146 += v212;
          --v143;
        }

        while (v143);
LABEL_130:
        v155 = 0;
        v156 = 4;
        while (1)
        {
          v157 = v144[v156];
          v158 = __OFADD__(v155, v157);
          v155 += v157;
          if (v158)
          {
            goto LABEL_168;
          }

          ++v156;
          if (!--v154)
          {
            goto LABEL_133;
          }
        }
      }

      v154 = _swiftEmptyArrayStorage[2];
      if (v154)
      {
        goto LABEL_130;
      }

      v155 = 0;
LABEL_133:

      v61 = sub_10009D904();
      v159 = sub_10009E844();

      if (!os_log_type_enabled(v61, v159))
      {

        goto LABEL_162;
      }

      v197 = v159;
      v160 = swift_slowAlloc();
      v249[0] = swift_slowAlloc();
      *v160 = 136315650;
      *(v160 + 4) = sub_10002AD68(0xD00000000000002ELL, 0x80000001000A4450, v249);
      *(v160 + 12) = 2048;
      *(v160 + 14) = v155;
      v198 = v160;
      *(v160 + 22) = 2080;
      v203 = *(v98 + 2);
      if (!v203)
      {
        goto LABEL_161;
      }

      v161 = 0;
      v202 = &v98[v225];
      v229 = *(v0 + 320);
      v199 = *(v0 + 128);
      v220 = (*(v0 + 392) + 16);
      v245 = *(v0 + 392);
      v200 = v61;
      v201 = (*(v0 + 208) + 8);
      v162 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v161 >= *(v98 + 2))
        {
          goto LABEL_170;
        }

        v210 = v162;
        v214(*(v0 + 216), &v202[v161 * v212], *(v0 + 200));
        v163 = sub_10009CA24();
        v164 = *(v163 + 16);
        if (v164)
        {
          v206 = v161;
          v246 = _swiftEmptyArrayStorage;
          sub_10001BC00(0, v164, 0);
          v165 = v246;
          v166 = v163 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
          v235 = *(v199 + 16);
          v238 = *(v199 + 72);
          do
          {
            v167 = *(v0 + 400);
            v169 = *(v0 + 376);
            v168 = *(v0 + 384);
            v170 = *(v0 + 304);
            v171 = *(v0 + 136);
            v172 = *(v0 + 120);
            v235(v171, v166, v172);
            sub_10009C8D4();
            (*(v199 + 8))(v171, v172);
            sub_10002ED9C(v169 + *(v229 + 24), v170, type metadata accessor for WidgetTileInfo);
            sub_10002EE04(v169, type metadata accessor for AccessoryAndSceneEntity);
            (*v220)(v167, v170, v168);
            sub_10002EE04(v170, type metadata accessor for WidgetTileInfo);
            v246 = v165;
            v174 = v165[2];
            v173 = v165[3];
            if (v174 >= v173 >> 1)
            {
              sub_10001BC00((v173 > 1), v174 + 1, 1);
              v165 = v246;
            }

            v175 = *(v0 + 400);
            v176 = *(v0 + 384);
            v165[2] = v174 + 1;
            (*(v245 + 32))(v165 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v174, v175, v176);
            v166 += v238;
            --v164;
          }

          while (v164);
          (*v201)(*(v0 + 216), *(v0 + 200));

          v161 = v206;
          v98 = v208;
          v61 = v200;
        }

        else
        {
          v177 = *(v0 + 216);
          v178 = *(v0 + 200);

          (*v201)(v177, v178);
          v165 = _swiftEmptyArrayStorage;
        }

        v179 = v165[2];
        v162 = v210;
        v180 = v210[2];
        v181 = v180 + v179;
        if (__OFADD__(v180, v179))
        {
          goto LABEL_171;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v181 <= v210[3] >> 1)
        {
          if (!v165[2])
          {
            goto LABEL_136;
          }
        }

        else
        {
          if (v180 <= v181)
          {
            v183 = v180 + v179;
          }

          else
          {
            v183 = v180;
          }

          v162 = sub_100064F74(isUniquelyReferenced_nonNull_native, v183, 1, v210);
          if (!v165[2])
          {
LABEL_136:

            if (v179)
            {
              goto LABEL_172;
            }

            goto LABEL_137;
          }
        }

        if ((v162[3] >> 1) - v162[2] < v179)
        {
          goto LABEL_173;
        }

        swift_arrayInitWithCopy();

        if (v179)
        {
          v184 = v162[2];
          v158 = __OFADD__(v184, v179);
          v185 = v184 + v179;
          if (v158)
          {
            goto LABEL_174;
          }

          v162[2] = v185;
        }

LABEL_137:
        if (++v161 == v203)
        {
          goto LABEL_161;
        }
      }
    }

    v25 = 0;
    v26 = *(v0 + 320);
    v27 = *(v0 + 296);
    v218 = *(v0 + 112);
    v213 = *(v0 + 328);
    v216 = (*(v213 + 80) + 32) & ~*(v213 + 80);
    v211 = v24 + v216;
    v204 = (*(v0 + 280) + 8);
    v205 = *(v0 + 312) + 8;
    v28 = &_swiftEmptyDictionarySingleton;
    v231 = v27;
    v237 = _swiftEmptyArrayStorage;
    v207 = *(v0 + 496);
    v209 = v26;
LABEL_15:
    if (v25 >= *(v24 + 16))
    {
      goto LABEL_167;
    }

    v30 = *(v0 + 368);
    v31 = *(v0 + 312);
    v32 = *(v213 + 72);
    v221 = v25;
    sub_10002ED9C(v211 + v32 * v25, v30, type metadata accessor for AccessoryAndSceneEntity);
    v240 = v30 + *(v26 + 24);
    sub_10002ED9C(v240, v31, type metadata accessor for WidgetTileInfo);
    v33 = (v31 + v27[7]);
    v34 = v33[1];
    v35 = v34 ? *v33 : 0;
    v36 = v34 ? v33[1] : 0xE000000000000000;
    v224 = v35;
    v227 = v36;
    if (v218)
    {
      v37 = *(v0 + 288);
      v38 = *(v0 + 272);
      v39 = v28;
      v40 = *(v0 + 104);
      swift_bridgeObjectRetain_n();

      v27 = v231;
      sub_10009D484();
      v41 = sub_10009D474();
      v43 = v42;
      (*v204)(v37, v38);
      *(v0 + 16) = v41;
      *(v0 + 24) = v43;
      *(v0 + 32) = v40;
      v28 = v39;
      *(v0 + 40) = v218;
      sub_1000037A4();
      LOBYTE(v41) = sub_10009E964();
      v36 = v227;

      if ((v41 & 1) == 0)
      {
        v44 = *(v0 + 104);
        *(v0 + 48) = v224;
        *(v0 + 56) = v227;
        *(v0 + 64) = v44;
        *(v0 + 72) = v218;
        if ((sub_10009E964() & 1) == 0)
        {
          sub_10002EE04(*(v0 + 368), type metadata accessor for AccessoryAndSceneEntity);

          v24 = v207;
          v26 = v209;
          v29 = v221;
          goto LABEL_14;
        }
      }
    }

    else
    {
    }

    if (*(v205 + v27[15]) != 2)
    {
      break;
    }

    v45 = v237 + v216;
    v46 = -v237[2];
    v47 = -1;
    while (2)
    {
      if (v46 + v47 == -1)
      {
        sub_10002ED9C(*(v0 + 368), *(v0 + 352), type metadata accessor for AccessoryAndSceneEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v237 = sub_100064F9C(0, v237[2] + 1, 1, v237);
        }

        v24 = v207;
        v29 = v221;
        v27 = v231;
        v93 = v237[2];
        v92 = v237[3];
        if (v93 >= v92 >> 1)
        {
          v237 = sub_100064F9C((v92 > 1), v93 + 1, 1, v237);
        }

        v94 = *(v0 + 368);
        v95 = *(v0 + 352);
        v237[2] = v93 + 1;
        sub_10002EE74(v95, v237 + v216 + v93 * v32, type metadata accessor for AccessoryAndSceneEntity);
        sub_10002EE04(v94, type metadata accessor for AccessoryAndSceneEntity);
        v26 = v209;
        goto LABEL_14;
      }

      if (++v47 < v237[2])
      {
        sub_10002ED9C(v45, *(v0 + 360), type metadata accessor for AccessoryAndSceneEntity);
        v48 = sub_10009CEE4();
        v50 = v49;
        v51 = sub_10009CEE4();
        v53 = *(v0 + 360);
        if (v48 != v51 || v50 != v52)
        {
          v45 += v32;
          v55 = sub_10009ED34();

          sub_10002EE04(v53, type metadata accessor for AccessoryAndSceneEntity);
          if (v55)
          {
            goto LABEL_99;
          }

          continue;
        }

        sub_10002EE04(v53, type metadata accessor for AccessoryAndSceneEntity);
LABEL_99:
        sub_10002EE04(*(v0 + 368), type metadata accessor for AccessoryAndSceneEntity);
        v24 = v207;
        v26 = v209;
        v29 = v221;
        v27 = v231;
LABEL_14:
        v25 = v29 + 1;
        sub_10002EE04(*(v0 + 312), type metadata accessor for WidgetTileInfo);
        if (v25 == v215)
        {
          goto LABEL_101;
        }

        goto LABEL_15;
      }

      break;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    swift_once();
  }

  v26 = v209;
  if (v28[2] && (sub_10001B558(v224, v36), (v56 & 1) != 0))
  {

    v58 = _swiftEmptyArrayStorage;
    v249[0] = _swiftEmptyArrayStorage;
    if (v57)
    {
      sub_1000615E8(v57);
      v58 = v249[0];
    }

    v59 = v58[2];
    if (!v59)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v58 = _swiftEmptyArrayStorage;
    v249[0] = _swiftEmptyArrayStorage;
    v59 = _swiftEmptyArrayStorage[2];
    if (!v59)
    {
LABEL_87:
      sub_10002ED9C(*(v0 + 368), *(v0 + 336), type metadata accessor for AccessoryAndSceneEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_100064F9C(0, v58[2] + 1, 1, v58);
      }

      v24 = v207;
      v29 = v221;
      v88 = v58[2];
      v87 = v58[3];
      v27 = v231;
      if (v88 >= v87 >> 1)
      {
        v58 = sub_100064F9C((v87 > 1), v88 + 1, 1, v58);
      }

      v89 = *(v0 + 336);
      v58[2] = v88 + 1;
      sub_10002EE74(v89, v58 + v216 + v88 * v32, type metadata accessor for AccessoryAndSceneEntity);
      goto LABEL_92;
    }
  }

  v60 = 0;
  v61 = (v58 + v216);
  while (2)
  {
    if (v60 < v58[2])
    {
      sub_10002ED9C(v61, *(v0 + 344), type metadata accessor for AccessoryAndSceneEntity);
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_46;
      }

      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_46;
      }

      v62 = *(v0 + 344) + *(v209 + 24);
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_46;
      }

      v63 = v231[6];
      v64 = *(v62 + v63);
      v65 = *(v62 + v63 + 8);
      v66 = (v240 + v63);
      v67 = v64 == *v66 && v65 == v66[1];
      if (!v67 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_46;
      }

      v68 = v231[7];
      v69 = (v62 + v68);
      v70 = *(v62 + v68 + 8);
      v71 = (v240 + v68);
      v72 = v71[1];
      if (v70)
      {
        if (v72)
        {
          v73 = *v69 == *v71 && v70 == v72;
          if (v73 || (sub_10009ED34() & 1) != 0)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_46;
      }

      if (v72)
      {
        goto LABEL_46;
      }

LABEL_63:
      v74 = v231[8];
      v75 = *(v62 + v74);
      v76 = *(v62 + v74 + 8);
      v77 = (v240 + v74);
      if ((v75 != *v77 || v76 != v77[1]) && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_46;
      }

      v78 = v231[9];
      v79 = *(v62 + v78);
      v80 = *(v62 + v78 + 8);
      v81 = (v240 + v78);
      if ((v79 != *v81 || v80 != v81[1]) && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_46;
      }

      if ((sub_10009E134() & 1) == 0 || *(v62 + v231[13]) != *(v240 + v231[13]))
      {
        goto LABEL_46;
      }

      v82 = v231[15];
      v83 = *(v62 + v82 + 8);
      v84 = (v240 + v82);
      v85 = *v84;
      v86 = *(v84 + 8);
      if (v83 <= 1)
      {
        if (v83)
        {
          if (v86 != 1)
          {
            goto LABEL_46;
          }
        }

        else if (v86)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v83 != 2)
        {
          if (v83 != 3)
          {
            if (v86 == 4 && !v85)
            {
LABEL_86:
              sub_10002EE04(*(v0 + 344), type metadata accessor for AccessoryAndSceneEntity);
              v24 = v207;
              v29 = v221;
              v27 = v231;
LABEL_92:
              v90 = *(v0 + 368);
              v91 = swift_isUniquelyReferenced_nonNull_native();
              v246 = v28;
              sub_10008BF90(v58, v224, v227, v91);

              v28 = v246;
              sub_10002EE04(v90, type metadata accessor for AccessoryAndSceneEntity);
              goto LABEL_14;
            }

            goto LABEL_46;
          }

          if (v86 == 3)
          {
            goto LABEL_85;
          }

LABEL_46:
          ++v60;
          sub_10002EE04(*(v0 + 344), type metadata accessor for AccessoryAndSceneEntity);
          v61 = (v61 + v32);
          if (v59 == v60)
          {
            goto LABEL_87;
          }

          continue;
        }

        if (v86 != 2)
        {
          goto LABEL_46;
        }
      }

LABEL_85:
      sub_100007330(0, &qword_1000C0B60, NSObject_ptr);
      if (sub_10009E8E4())
      {
        goto LABEL_86;
      }

      goto LABEL_46;
    }

    break;
  }

  __break(1u);
LABEL_161:
  v186 = sub_10009E6B4();
  v188 = v187;

  v189 = sub_10002AD68(v186, v188, v249);

  *(v198 + 24) = v189;

  _os_log_impl(&_mh_execute_header, v61, v197, "%s Returning %ld entities: %s", v198, 0x20u);
  swift_arrayDestroy();

LABEL_162:
  v190 = *(v0 + 456);
  v191 = *(v0 + 448);
  v196 = *(v0 + 440);
  v192 = *(v0 + 264);
  v193 = *(v0 + 200);
  v194 = *(v0 + 208);
  (*(v0 + 464))(*(v0 + 432), 1, 1, *(v0 + 176));
  sub_10009CA74();
  (*(v194 + 8))(v192, v193);
  (*(v191 + 8))(v190, v196);

  v195 = *(v0 + 8);

  return v195();
}

uint64_t sub_100029690(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for HomeEntity(0);
  v2[4] = swift_task_alloc();
  v2[5] = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100029768, 0, 0);
}

uint64_t sub_100029768()
{
  v24 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);

  v2 = sub_10009D904();
  v3 = sub_10009E844();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_10002AD68(0xD000000000000013, 0x80000001000A4410, &v23);
    *(v4 + 12) = 2080;
    v5 = sub_10009CB94();
    v6 = v0[7];
    if (v5)
    {
      v7 = v0[4];
      swift_getKeyPath();
      sub_10002B338();
      sub_10009C9E4();

      v8 = sub_10009CF14();
      v9 = *(v8 - 8);
      (*(v9 + 16))(v6, v7, v8);
      sub_10002EE04(v7, type metadata accessor for HomeEntity);
      (*(v9 + 56))(v6, 0, 1, v8);
    }

    else
    {
      v10 = sub_10009CF14();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    }

    v11 = sub_10009E5F4();
    v13 = sub_10002AD68(v11, v12, &v23);

    *(v4 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Generating suggested entities for all accessories and scenes in home %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  if (sub_10009CB94())
  {
    v14 = v0[6];
    v15 = v0[4];
    swift_getKeyPath();
    sub_10002B338();
    sub_10009C9E4();

    v16 = sub_10009CF14();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v14, v15, v16);
    sub_10002EE04(v15, type metadata accessor for HomeEntity);
    v18 = 0;
  }

  else
  {
    v16 = sub_10009CF14();
    v17 = *(v16 - 8);
    v18 = 1;
  }

  (*(v17 + 56))(v0[6], v18, 1, v16);
  v19 = swift_task_alloc();
  v0[8] = v19;
  *v19 = v0;
  v19[1] = sub_100029BB8;
  v20 = v0[6];
  v21 = v0[2];

  return sub_1000273C4(v21, v20, 0, 0);
}

uint64_t sub_100029BB8()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  sub_1000160CC(v1, &qword_1000C0C78, &qword_1000A0390);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100029D24()
{
  v0 = type metadata accessor for AccessoryAndSceneEntity(0);
  v1 = sub_10002EEE0(&qword_1000C1128, type metadata accessor for AccessoryAndSceneEntity, &unk_1000A05A8);

  return static IntentItemSection.Builder.buildBlock()(v0, v1);
}

void *sub_100029D98(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C1250, &qword_1000A08C8);
  __chkstk_darwin(v2 - 8);
  v42 = &v28 - v3;
  v4 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v4 - 8);
  v41 = &v28 - v5;
  v40 = sub_10009D494();
  v6 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10009CD54();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AccessoryAndSceneEntity(0);
  v10 = *(v36 - 8);
  v11 = __chkstk_darwin(v36);
  v35 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v34 = &v28 - v13;
  v33 = sub_100003714(&qword_1000C0EB0, &qword_10009FCD8);
  v14 = *(v33 - 8);
  __chkstk_darwin(v33);
  v16 = &v28 - v15;
  v17 = *(a1 + 16);
  v18 = _swiftEmptyArrayStorage;
  if (v17)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_10001BCC8(0, v17, 0);
    v18 = v45;
    v19 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v10 + 72);
    v30 = (v6 + 8);
    v31 = v20;
    v28 = v14 + 32;
    v29 = (v8 + 56);
    v32 = v14;
    v21 = v35;
    do
    {
      v43 = v18;
      v44 = v17;
      v22 = v34;
      sub_10002ED9C(v19, v34, type metadata accessor for AccessoryAndSceneEntity);
      sub_10002ED9C(v22, v21, type metadata accessor for AccessoryAndSceneEntity);
      type metadata accessor for WidgetTileInfo(0);

      v23 = v39;
      sub_10009D484();
      sub_10009D474();
      (*v30)(v23, v40);
      sub_10009CD14();
      (*v29)(v41, 1, 1, v38);
      v24 = sub_10009CAA4();
      (*(*(v24 - 8) + 56))(v42, 1, 1, v24);
      sub_10002EEE0(&qword_1000C1128, type metadata accessor for AccessoryAndSceneEntity, &unk_1000A05A8);
      v18 = v43;
      sub_10009C8E4();
      sub_10002EE04(v22, type metadata accessor for AccessoryAndSceneEntity);
      v45 = v18;
      v26 = v18[2];
      v25 = v18[3];
      if (v26 >= v25 >> 1)
      {
        sub_10001BCC8((v25 > 1), v26 + 1, 1);
        v18 = v45;
      }

      v18[2] = v26 + 1;
      (*(v32 + 32))(v18 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, v16, v33);
      v19 += v31;
      v17 = v44 - 1;
    }

    while (v44 != 1);
  }

  return v18;
}

uint64_t sub_10002A330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001EAAC;

  return sub_100026CFC(a1, a2, a3, v8);
}

unint64_t sub_10002A3EC()
{
  result = qword_1000C1150;
  if (!qword_1000C1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1150);
  }

  return result;
}

unint64_t sub_10002A444()
{
  result = qword_1000C1158;
  if (!qword_1000C1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1158);
  }

  return result;
}

uint64_t sub_10002A4E0@<X0>(uint64_t *a1@<X8>)
{
  sub_100003714(&qword_1000C1268, &qword_1000A0C70);
  swift_getKeyPath();
  result = sub_10009CBA4();
  *a1 = result;
  return result;
}

uint64_t sub_10002A52C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002EF3C;

  return sub_10002606C(a1, v4);
}

uint64_t sub_10002A5C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002EF28;

  return sub_100029690(a1, v4);
}

uint64_t sub_10002A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002A728;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10002A728(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_10002A82C()
{
  result = qword_1000C1168;
  if (!qword_1000C1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1168);
  }

  return result;
}

uint64_t sub_10002A8C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000248DC();
  *v5 = v2;
  v5[1] = sub_10002EF28;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10002A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001EAAC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10002AA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for WidgetTileInfo(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002AB58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10009CF14();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for WidgetTileInfo(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002AC54(uint64_t a1)
{
  result = sub_10009CF14();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WidgetTileInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_10002ACD8(uint64_t a1, uint64_t a2)
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

  sub_100003714(&qword_1000C0E98, &qword_1000A08C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

unint64_t sub_10002AD68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002AE34(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001B668(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100015F44(v11);
  return v7;
}

unint64_t sub_10002AE34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10002AF40(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10009EB24();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10002AF40(uint64_t a1, unint64_t a2)
{
  v3 = sub_10002AF8C(a1, a2);
  sub_10002B0BC(&off_1000BB0B8);
  return v3;
}

void *sub_10002AF8C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10002B1A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10009EB24();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10009E644();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002B1A8(v10, 0);
        result = sub_10009EAB4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10002B0BC(uint64_t result)
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

  result = sub_10002B21C(result, v11, 1, v3);
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

void *sub_10002B1A8(uint64_t a1, uint64_t a2)
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

  sub_100003714(&qword_1000C1218, &qword_1000A0838);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002B21C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C1218, &qword_1000A0838);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}