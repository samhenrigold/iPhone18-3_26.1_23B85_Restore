uint64_t sub_10003C1BC()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AE738);
  sub_10000A480(v0, qword_1000AE738);
  return sub_1000806E8();
}

unint64_t sub_10003C23C()
{
  result = qword_1000AE810;
  if (!qword_1000AE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE810);
  }

  return result;
}

unint64_t sub_10003C290()
{
  result = qword_1000AE818;
  if (!qword_1000AE818)
  {
    sub_100080308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE818);
  }

  return result;
}

uint64_t sub_10003C2E8(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD570, &qword_10008A6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for WidgetRelevance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetRelevance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003C4A4()
{
  result = qword_1000AE820;
  if (!qword_1000AE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE820);
  }

  return result;
}

void sub_10003C4F8()
{
  v0 = sub_100080308();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v41 = [v4 bu_groupUserDefaults];
  v5 = sub_1000811D8();
  v6 = [v41 integerForKey:v5];

  if (!v6)
  {
    v7 = [v4 standardUserDefaults];
    v8 = sub_1000811D8();
    [v7 integerForKey:v8];

    isa = sub_100081418().super.super.isa;
    v10 = sub_1000811D8();
    [v41 setValue:isa forKey:v10];
  }

  v11 = sub_1000811D8();
  v12 = [v41 integerForKey:v11];

  if (v12 > 3)
  {
    v30 = v41;
  }

  else
  {
    if (qword_1000AC678 != -1)
    {
      swift_once();
    }

    v13 = sub_10000A480(v0, qword_1000AE718);
    (*(v1 + 16))(v3, v13, v0);
    v42 = 1;
    v14 = objc_opt_self();
    v15 = [v14 defaultManager];
    sub_1000802D8();
    v16 = sub_1000811D8();

    v17 = [v15 fileExistsAtPath:v16 isDirectory:&v42];

    if (v17)
    {
      v18 = [v14 defaultManager];
      sub_1000802A8(v19);
      v21 = v20;
      v43 = 0;
      v22 = [v18 removeItemAtURL:v20 error:&v43];

      if (v22)
      {
        v23 = v43;
        v24 = sub_100081418().super.super.isa;
        v25 = sub_1000811D8();
        [v41 setValue:v24 forKey:v25];

        if (qword_1000AC688 != -1)
        {
          swift_once();
        }

        v26 = sub_1000806F8();
        sub_10000A480(v26, qword_1000AE738);
        v27 = sub_1000806D8();
        v28 = sub_100081468();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134217984;
          *(v29 + 4) = 4;
          _os_log_impl(&_mh_execute_header, v27, v28, "Successfully deleted previous image cache folder. Updated current cache folder version to %ld.", v29, 0xCu);
        }

        else
        {
        }

        (*(v1 + 8))(v3, v0);
      }

      else
      {
        v31 = v43;
        sub_1000801C8();

        swift_willThrow();
        (*(v1 + 8))(v3, v0);
        if (qword_1000AC688 != -1)
        {
          swift_once();
        }

        v32 = sub_1000806F8();
        sub_10000A480(v32, qword_1000AE738);
        swift_errorRetain();
        v33 = sub_1000806D8();
        v34 = sub_100081448();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v43 = v36;
          *v35 = 136315138;
          swift_getErrorValue();
          v37 = sub_100081668();
          v39 = sub_10006150C(v37, v38, &v43);

          *(v35 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v33, v34, "Failed to delete previous image cache folder: %s", v35, 0xCu);
          sub_100019DF8(v36);
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v1 + 8))(v3, v0);
    }
  }
}

void *sub_10003CB64(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v8 = sub_100002840(&qword_1000AD610, &qword_1000887C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1000803D8();
  v26 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v25 = &v22 - v16;
  if (a3 == a4)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    if (a4 >= a3)
    {
      v27 = (v26 + 32);
      v28 = (v26 + 48);
      v17 = _swiftEmptyArrayStorage;
      v23 = a1;
      v24 = a4;
      v22 = v14;
      while (a4 != a3)
      {
        v30 = a3;
        a1(&v30);
        if (v4)
        {

          return v17;
        }

        if ((*v28)(v10, 1, v11) == 1)
        {
          result = sub_100005B2C(v10, &qword_1000AD610, &qword_1000887C0);
        }

        else
        {
          v18 = *v27;
          v19 = v25;
          (*v27)(v25);
          (v18)(v14, v19, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_10003F07C(0, v17[2] + 1, 1, v17, &qword_1000AE920, &qword_1000887E8, &type metadata accessor for Date);
          }

          v21 = v17[2];
          v20 = v17[3];
          if (v21 >= v20 >> 1)
          {
            v17 = sub_10003F07C((v20 > 1), v21 + 1, 1, v17, &qword_1000AE920, &qword_1000887E8, &type metadata accessor for Date);
          }

          v17[2] = v21 + 1;
          v14 = v22;
          result = (v18)(v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, v22, v11);
          a1 = v23;
          a4 = v24;
        }

        if (a4 == ++a3)
        {
          return v17;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10003CEA8()
{
  v0 = sub_1000803D8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002840(&qword_1000AE8E8, &unk_1000887B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_100080568();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100080548();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  sub_100080488();
  sub_100080558();
  sub_100080518();
  sub_100080438();
  v15 = sub_100080478();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  sub_1000804F8();
  sub_1000804D8();
  sub_1000804A8();
  v16 = *(v9 + 8);
  v16(v12, v8);
  sub_1000804B8();
  sub_1000803C8();
  sub_100080498();
  (*(v1 + 8))(v3, v0);
  return (v16)(v14, v8);
}

void *sub_10003D170()
{
  v24[0] = sub_1000803D8();
  v0 = *(v24[0] - 8);
  __chkstk_darwin(v24[0]);
  v2 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002840(&qword_1000AE8E8, &unk_1000887B0);
  __chkstk_darwin(v3 - 8);
  v5 = v24 - v4;
  v6 = sub_100080568();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100080548();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  sub_100080488();
  sub_100080558();
  sub_100080518();
  sub_100080438();
  v14 = sub_100080478();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  sub_1000804F8();
  sub_1000804D8();
  sub_1000804A8();
  v15 = *(v8 + 8);
  v15(v11, v7);
  sub_1000804B8();
  sub_100080498();
  v16 = sub_10003E50C();
  v17 = sub_1000804A8();
  if (__OFSUB__(v17, v16))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  __chkstk_darwin(v17);
  v24[-2] = v13;
  v24[-1] = v2;
  v16 = sub_10003CB64(sub_100043FF0, &v24[-4], v18, v18 + 7);
  if (*(v16 + 16) == 7)
  {
    goto LABEL_7;
  }

  if (qword_1000AC690 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v19 = sub_1000806F8();
  sub_10000A480(v19, qword_1000AE828);
  v20 = sub_1000806D8();
  v21 = sub_100081458();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Unexpected: a week should have 7 days", v22, 2u);
  }

LABEL_7:
  (*(v0 + 8))(v2, v24[0]);
  v15(v13, v7);
  return v16;
}

uint64_t sub_10003D574(uint64_t a1)
{
  v2 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v48 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100002840(&qword_1000AE900, &qword_1000887C8);
  v4 = __chkstk_darwin(v55);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v46 - v7;
  __chkstk_darwin(v6);
  v54 = &v46 - v9;
  v50 = &_swiftEmptyDictionarySingleton;
  v57 = &_swiftEmptyDictionarySingleton;
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v56 = a1;

  v16 = 0;
  v51 = v14;
  v52 = a1 + 64;
  v53 = v8;
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v16 = v17;
LABEL_10:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = v18 | (v16 << 6);
      v20 = v56;
      v21 = *(v56 + 48);
      v22 = sub_1000803D8();
      v23 = *(v22 - 8);
      v24 = v23;
      v25 = *(v23 + 72);
      v26 = v54;
      (*(v23 + 16))(v54, v21 + v25 * v19, v22);
      v27 = *(*(v20 + 56) + 8 * v19);
      v28 = v55;
      *(v26 + *(v55 + 48)) = v27;
      v29 = v53;
      sub_100043F80(v26, v53);
      v30 = *(v29 + *(v28 + 48));
      if (*(v30 + 16))
      {
        break;
      }

      result = sub_100005B2C(v29, &qword_1000AE900, &qword_1000887C8);
      v17 = v16;
      v14 = v51;
      v10 = v52;
      if (!v13)
      {
LABEL_7:
        while (1)
        {
          v16 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v16 >= v14)
          {

            return v50;
          }

          v13 = *(v10 + 8 * v16);
          ++v17;
          if (v13)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    v31 = v24;
    v32 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    sub_100043F80(v29, v49);
    sub_100043DFC(v30 + v32, v47);
    v33 = v50[2];
    if (v50[3] <= v33)
    {

      sub_1000403A0(v33 + 1, 1);
    }

    else
    {
    }

    v34 = v57;
    sub_100043F38(&qword_1000AE8F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = sub_100081118();
    v35 = (v34 + 8);
    v50 = v34;
    v36 = -1 << *(v34 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~v34[(v37 >> 6) + 8]) == 0)
    {
      break;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~v34[(v37 >> 6) + 8])) | v37 & 0x7FFFFFFFFFFFFFC0;
    v40 = v31;
LABEL_26:
    *&v35[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
    v45 = v50;
    (*(v40 + 32))(v50[6] + v39 * v25, v49, v22);
    sub_100043E60(v47, v45[7] + *(v48 + 72) * v39);
    ++v45[2];

    v14 = v51;
    v10 = v52;
  }

  v41 = 0;
  v42 = (63 - v36) >> 6;
  v40 = v31;
  while (++v38 != v42 || (v41 & 1) == 0)
  {
    v43 = v38 == v42;
    if (v38 == v42)
    {
      v38 = 0;
    }

    v41 |= v43;
    v44 = *&v35[8 * v38];
    if (v44 != -1)
    {
      v39 = __clz(__rbit64(~v44)) + (v38 << 6);
      goto LABEL_26;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10003DA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v7 = sub_100002840(&qword_1000AE8E0, &qword_1000887A8);
  __chkstk_darwin(v7 - 8);
  v42 = &v40[-v8];
  v44 = sub_1000803D8();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v40[-v17];
  v19 = *(a2 + 16);
  v43 = a1;
  if (v19 && (v20 = sub_10003F3B4(a1), a1 = v43, (v21 & 1) != 0))
  {
    sub_100043DFC(*(a2 + 56) + *(v13 + 72) * v20, v16);
    sub_100043E60(v16, v18);
  }

  else
  {
    (*(v9 + 16))(v18, a1, v44);
    v22 = &v18[*(v12 + 20)];
    *v22 = 0;
    *(v22 + 1) = 0;
    v22[16] = 0;
  }

  if (sub_100080378())
  {
    *&v23 = ~v18[*(v12 + 20) + 16] & 1;
  }

  else
  {
    if ((sub_100080398() & 1) == 0)
    {
      v41 = 1;
      *&v23 = 2;
      goto LABEL_14;
    }

    v24 = &v18[*(v12 + 20)];
    v26 = *v24;
    v25 = v24[1];
    if (v26 >= v25)
    {
      v26 = v25;
    }

    if (v26 / v25 < 1.0)
    {
      v41 = 0;
      v23 = v26 / v25;
      goto LABEL_14;
    }

    v23 = 0.0;
  }

  v41 = 1;
LABEL_14:
  sub_10003DE00(v11);
  if (*(a2 + 16) && (v27 = sub_10003F3B4(v11), (v28 & 1) != 0))
  {
    v29 = *(a2 + 56) + *(v13 + 72) * v27;
    v30 = v42;
    sub_100043DFC(v29, v42);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v42;
  }

  (*(v9 + 8))(v11, v44);
  (*(v13 + 56))(v30, v31, 1, v12);
  v32 = sub_10003E1C0(v45, v30);
  sub_100005B2C(v30, &qword_1000AE8E0, &qword_1000887A8);
  v33 = sub_10003E924(sub_1000419F8);
  v35 = v34;
  v36 = sub_10003E924(sub_100042194);
  v38 = v37;
  result = sub_100043DA0(v18);
  *a4 = v33;
  *(a4 + 8) = v35;
  *(a4 + 16) = v36;
  *(a4 + 24) = v38;
  *(a4 + 32) = v23;
  *(a4 + 40) = v41;
  *(a4 + 41) = v32;
  return result;
}

uint64_t sub_10003DE00@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_100080528();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002840(&qword_1000AE8E8, &unk_1000887B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_100080568();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100080548();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = sub_100002840(&qword_1000AD610, &qword_1000887C0);
  __chkstk_darwin(v16 - 8);
  v18 = &v24 - v17;
  sub_100080488();
  sub_100080558();
  sub_100080518();
  sub_100080438();
  v19 = sub_100080478();
  (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  sub_1000804F8();
  sub_1000804D8();
  sub_1000804A8();
  v20 = *(v10 + 8);
  v20(v13, v9);
  sub_1000804B8();
  (*(v2 + 104))(v4, enum case for Calendar.Component.day(_:), v1);
  sub_1000804E8();
  (*(v2 + 8))(v4, v1);
  v20(v15, v9);
  v21 = sub_1000803D8();
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v18, 1, v21);
  if (result != 1)
  {
    return (*(v22 + 32))(v24, v18, v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003E1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AE8E0, &qword_1000887A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  sub_100043EC8(a2, &v15 - v5);
  v7 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100005B2C(v6, &qword_1000AE8E0, &qword_1000887A8);
  }

  else
  {
    v8 = v6[*(v7 + 20) + 16];
    sub_100043DA0(v6);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  if ((sub_100080368() & 1) == 0)
  {
    return 4;
  }

LABEL_5:
  v9 = sub_10003E50C();
  v10 = sub_100080398();
  v11 = v2 + *(v7 + 20);
  if ((v10 & 1) == 0)
  {
    if (*(v11 + 16) == 1)
    {
      return 2 * (v9 == 1);
    }

    return 4;
  }

  v13 = *v11;
  v12 = *(v11 + 8);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  if (v13 / v12 >= 1.0)
  {
    return 2 * (v9 == 1);
  }

  if (v9 == 1)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void *sub_10003E350(void (*a1)(unint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v33 = _swiftEmptyArrayStorage;
  sub_100061AD4(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = *(sub_1000803D8() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v24 = *(v7 + 72);
  while (1)
  {
    a1(&v26, v8);
    if (v3)
    {
      break;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    v12 = v29;
    v13 = v30;
    v14 = v31;
    v15 = v32;
    v33 = v5;
    v17 = v5[2];
    v16 = v5[3];
    if (v17 >= v16 >> 1)
    {
      v23 = v30;
      v19 = v27;
      v21 = v32;
      v22 = v31;
      sub_100061AD4((v16 > 1), v17 + 1, 1);
      v15 = v21;
      v14 = v22;
      v13 = v23;
      v9 = v19;
      v5 = v33;
    }

    v5[2] = v17 + 1;
    v18 = &v5[6 * v17];
    v18[4] = v10;
    v18[5] = v9;
    v18[6] = v11;
    v18[7] = v12;
    v18[8] = v13;
    *(v18 + 72) = v14;
    *(v18 + 73) = v15;
    v8 += v24;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003E50C()
{
  v0 = sub_100080528();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002840(&qword_1000AE8E8, &unk_1000887B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_100080568();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100080548();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_100080488();
  sub_100080558();
  sub_100080518();
  sub_100080438();
  v15 = sub_100080478();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  sub_1000804F8();
  sub_1000804D8();
  sub_1000804A8();
  v16 = *(v9 + 8);
  v16(v12, v8);
  sub_1000804B8();
  (*(v1 + 104))(v3, enum case for Calendar.Component.weekday(_:), v0);
  v17 = sub_100080538();
  (*(v1 + 8))(v3, v0);
  v16(v14, v8);
  return v17;
}

uint64_t sub_10003E7FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100080528();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for Calendar.Component.day(_:), v3);
  sub_1000804E8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10003E924(uint64_t (*a1)(uint64_t))
{
  v2 = sub_100002840(&qword_1000AE8E8, &unk_1000887B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_100080568();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100080548();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = sub_10003E50C();
  sub_100080488();
  sub_100080558();
  sub_100080518();
  sub_100080438();
  v14 = sub_100080478();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  sub_1000804F8();
  sub_1000804D8();
  sub_1000804A8();
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_1000804B8();
  v16 = sub_1000804A8();
  result = (v15)(v12, v6);
  v18 = v13 - v16;
  if (__OFSUB__(v13, v16))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v18 >= 0)
  {
    v19 = v13 - v16;
  }

  else
  {
    v19 = v18 + 7;
  }

  result = a1(result);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (v19 < *(result + 16))
  {
    v20 = *(result + 16 * v19 + 32);

    return v20;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_10003EBB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_100061AB4(0, v6, 0);
  v26 = v5;
  v27 = v4;
  v28 = a1;
  v29 = a2;
  v25 = v6;
  if (v6)
  {
    v8 = (a2 + 40);
    v9 = (a1 + 40);
    v10 = v5;
    while (v4)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = *v9;
      v12 = *v8;
      v30 = *(v9 - 1);
      v32 = *(v8 - 1);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      v34 = v14 + 1;

      if (v14 >= v13 >> 1)
      {
        result = sub_100061AB4((v13 > 1), v34, 1);
      }

      _swiftEmptyArrayStorage[2] = v34;
      v15 = &_swiftEmptyArrayStorage[4 * v14];
      v15[4] = v30;
      v15[5] = v11;
      --v10;
      v15[6] = v32;
      v15[7] = v12;
      --v4;
      v8 += 2;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v17 = v26;
    v16 = v27;
    if (v27 <= v26)
    {
      return _swiftEmptyArrayStorage;
    }

    v18 = v25;
    v31 = 16 * v25;
    while (v18 < v16)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_24;
      }

      if (v17 != v18)
      {
        if (v18 >= v17)
        {
          goto LABEL_25;
        }

        v20 = *(v28 + v31 + 40);
        v21 = *(v29 + v31 + 40);
        v33 = *(v29 + v31 + 32);
        v35 = *(v28 + v31 + 32);
        v23 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];

        if (v23 >= v22 >> 1)
        {
          result = sub_100061AB4((v22 > 1), v23 + 1, 1);
        }

        ++v18;
        v28 += 16;
        v29 += 16;
        _swiftEmptyArrayStorage[2] = v23 + 1;
        v24 = &_swiftEmptyArrayStorage[4 * v23];
        v24[4] = v35;
        v24[5] = v20;
        v24[6] = v33;
        v24[7] = v21;
        v17 = v26;
        v16 = v27;
        if (v19 != v27)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10003EDCC()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AE828);
  sub_10000A480(v0, qword_1000AE828);
  return sub_1000806E8();
}

char *sub_10003EE4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000ACB30, &qword_100085BE0);
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

char *sub_10003EF58(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002840(&qword_1000ACD90, "na");
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

void *sub_10003F07C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100002840(a5, a6);
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

void *sub_10003F258(uint64_t a1, uint64_t a2)
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

  sub_100002840(&qword_1000ACB30, &qword_100085BE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_10003F2DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_100002840(&qword_1000ACB30, &qword_100085BE0);
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

unint64_t sub_10003F3B4(uint64_t a1)
{
  sub_1000803D8();
  sub_100043F38(&qword_1000AE8F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v2 = sub_100081118();

  return sub_10003F72C(a1, v2);
}

unint64_t sub_10003F450(char a1)
{
  sub_1000816B8();
  sub_100081298();

  v2 = sub_1000816F8();

  return sub_10003F8EC(a1 & 1, v2);
}

unint64_t sub_10003F4E8(char a1)
{
  sub_1000816B8();
  sub_100081298();

  v2 = sub_1000816F8();
  return sub_10003FA18(a1 & 1, v2);
}

unint64_t sub_10003F590(uint64_t a1)
{
  v1 = a1;
  sub_1000816B8();
  sub_100054574(v1);
  sub_100081298();

  v2 = sub_1000816F8();

  return sub_10003FB60(v1, v2);
}

unint64_t sub_10003F618(char a1)
{
  sub_1000816B8();
  sub_100081298();

  v2 = sub_1000816F8();

  return sub_1000401B4(a1 & 1, v2);
}

unint64_t sub_10003F6B4(uint64_t a1, uint64_t a2)
{
  sub_1000816B8();
  sub_100081298();
  v4 = sub_1000816F8();

  return sub_1000402E8(a1, a2, v4);
}

unint64_t sub_10003F72C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000803D8();
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
      sub_100043F38(&qword_1000AE8F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v15 = sub_100081148();
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

unint64_t sub_10003F8EC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 6710384;
    }

    else
    {
      v6 = 1802465122;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 6710384 : 1802465122;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100081618();

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

unint64_t sub_10003FA18(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6369666963657073;
    }

    else
    {
      v6 = 0x6563655274736F6DLL;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xEA0000000000746ELL;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6369666963657073 : 0x6563655274736F6DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xEA0000000000746ELL;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100081618();

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

unint64_t sub_10003FB60(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1953460082;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6D49747265766E69;
          v7 = 0xEC00000073656761;
          break;
        case 2:
          v7 = 0xEA00000000007466;
          v8 = 0x654C6E4F756E656DLL;
          break;
        case 3:
          v8 = 0x47676E6964616572;
          v7 = 0xEC000000736C616FLL;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100081EC0;
          break;
        case 5:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100081EE0;
          break;
        case 6:
          v7 = 0xE700000000000000;
          v8 = 0x676E69636E7973;
          break;
        case 7:
          v7 = 0xE900000000000067;
          v8 = 0x6E69686372616573;
          break;
        case 8:
          v8 = 0x6F6F626F69647561;
          v7 = 0xEA0000000000736BLL;
          break;
        case 9:
          v8 = 0x77726F4670696B73;
          v7 = 0xEB00000000647261;
          break;
        case 0xA:
          v8 = 0x6B63614270696B73;
          v7 = 0xEC00000064726177;
          break;
        case 0xB:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100081F30;
          break;
        case 0xC:
          v7 = 0xE700000000000000;
          v8 = 0x79636176697270;
          break;
        case 0xD:
          v8 = 1701670760;
          break;
        case 0xE:
          v8 = 0x74616E6568707968;
          v7 = 0xEB000000006E6F69;
          break;
        case 0xF:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100081F60;
          break;
        case 0x10:
          v8 = 0x726F74536B6F6F62;
          v7 = 0xE900000000000065;
          break;
        case 0x11:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100081F80;
          break;
        case 0x12:
          v8 = 0x6564497465736572;
          v7 = 0xEF7265696669746ELL;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1953460082;
      switch(a1)
      {
        case 1:
          v11 = 0x6D49747265766E69;
          v12 = 1936025441;
          goto LABEL_41;
        case 2:
          v9 = 0xEA00000000007466;
          if (v8 != 0x654C6E4F756E656DLL)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 3:
          v11 = 0x47676E6964616572;
          v12 = 1936482671;
LABEL_41:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v11)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 4:
          v9 = 0x8000000100081EC0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 5:
          v9 = 0x8000000100081EE0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 6:
          v9 = 0xE700000000000000;
          if (v8 != 0x676E69636E7973)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 7:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E69686372616573)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 8:
          v9 = 0xEA0000000000736BLL;
          if (v8 != 0x6F6F626F69647561)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 9:
          v13 = 0x77726F4670696B73;
          v14 = 6582881;
          goto LABEL_34;
        case 10:
          v10 = 0x6B63614270696B73;
          v9 = 0xEC00000064726177;
          goto LABEL_56;
        case 11:
          v9 = 0x8000000100081F30;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 12:
          v9 = 0xE700000000000000;
          if (v8 != 0x79636176697270)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 13:
          if (v8 != 1701670760)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 14:
          v13 = 0x74616E6568707968;
          v14 = 7237481;
LABEL_34:
          v9 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v13)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 15:
          v9 = 0x8000000100081F60;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 16:
          v9 = 0xE900000000000065;
          if (v8 != 0x726F74536B6F6F62)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 17:
          v9 = 0x8000000100081F80;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 18:
          v9 = 0xEF7265696669746ELL;
          if (v8 != 0x6564497465736572)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        default:
LABEL_56:
          if (v8 != v10)
          {
            goto LABEL_58;
          }

LABEL_57:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_58:
          v15 = sub_100081618();

          if (v15)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000401B4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7468676972;
    }

    else
    {
      v6 = 1952867692;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7468676972 : 1952867692;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100081618();

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

unint64_t sub_1000402E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100081618())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000403A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000803D8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100002840(&qword_1000AE908, &unk_1000887D0);
  v43 = v4;
  result = sub_1000815C8();
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
        sub_100043E60(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_100043DFC(v29 + v28 * v24, v47);
      }

      sub_100043F38(&qword_1000AE8F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      result = sub_100081118();
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
      result = sub_100043E60(v47, *(v12 + 56) + v28 * v20);
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

uint64_t sub_100040804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000803D8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100002840(&qword_1000AE918, &qword_1000887E0);
  v39 = v4;
  result = sub_1000815C8();
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

      sub_100043F38(&qword_1000AE8F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      result = sub_100081118();
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

uint64_t sub_100040BE0(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_100081628();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v6 + 16 * v7) != &v9[2 * v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_10003F258(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 16 * v14;
                v1[2] = v14;
                v1[3] = v18;
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
  return result;
}

uint64_t *sub_100040D60(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
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

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v31 = v14;
  v32 = v16;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  result = sub_1000412AC(v7);
  v34 = v9 + 32;
  if (result)
  {
    v19 = result;
    __dst = (v18 + 16 * a3);
    v30 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 16 * v20);
    v22 = &v21[16 * a2];
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 16 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[16 * v32];
    if (__dst != v23 || __dst >= &v23[16 * v31])
    {
      memmove(__dst, v23, 16 * v31);
    }

    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v30;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    swift_arrayInitWithCopy();
    result = a4(v34 + 16 * a2, a3);
    v25 = v24 + v32;
    if (__OFADD__(v24, v32))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v4[3] >> 1;
    if (v26 < v25)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v25))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v27 = *(v9 + 16);
  v11 = __OFADD__(v20, v27);
  v28 = v20 + v27;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v28 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v28 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v34 - 16 * v20;
  v4[2] = v20;
  v4[3] = (2 * v28) | 1;
}

void *sub_100041018(void *result)
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

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_100081628();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v8 = result[2];
  v5 = __OFADD__(v8, v7);
  v9 = &v7[v8];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v9;

  v10 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_1000410D0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_100081628();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == &v11[2 * v12 + 4])
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
    if (v13 == &v17[2 * v18 + 4])
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
  if (v13 == &v17[2 * v19 + 4])
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
    return result;
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

  return sub_10003F258(v6, v25);
}

void *sub_1000412AC(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 16 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_100081628();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v7) != &v9[2 * v10 + 4])
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = v9[3];

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_100081628();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v15 = v8 - result - 17;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 4);
  v5 = v7 + (v15 >> 4);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = result[2];
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_10004140C(v5, v4, 0);
    return v16;
  }

  return result;
}

unint64_t sub_10004140C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

void *sub_1000414CC(void *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_46;
  }

  v5 = result[4];
  v39 = result[3] >> 1;
  if (v5 == v39)
  {
    return result;
  }

  v38 = result[2];
  if (v5 < v38 || v5 >= v39)
  {
    goto LABEL_47;
  }

  v7 = result[1];
  v8 = v5 + 1;
  v9 = (v7 + 16 * v5);
  v10 = *v9;
  v11 = v9[1];

  v31 = v1;
  v32 = v7 + 8;
  while (!__OFADD__(v4, 1))
  {
    v40 = sub_1000410D0(v4, v4 + 1, *v1, v1[1], v2, v3);
    v12 = sub_100041290();
    sub_100040D60(&v40, v4, 0, v12);

    v2 = v1[2];
    v13 = v1[3];
    v14 = (v13 >> 1) - v2;
    if (__OFSUB__(v13 >> 1, v2))
    {
      goto LABEL_41;
    }

    v35 = v13 >> 1;
    v36 = v1[3];
    v37 = v1[1];
    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_100081628();
    swift_unknownObjectRetain();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = _swiftEmptyArrayStorage;
    }

    v16 = v15[2];
    if ((v37 + 16 * v2 + 16 * v14) != &v15[2 * v16 + 4])
    {

LABEL_19:
      v17 = v14;
      v18 = v4 - v14;
      if (v4 >= v14)
      {
        goto LABEL_31;
      }

LABEL_23:
      v22 = 0;
      v23 = v2;
      v24 = (v32 + 16 * v8);
      v33 = v4;
      v34 = v23;
      v25 = (v37 + 16 * v4 + 16 * v23 + 8);
      while (1)
      {
        *(v25 - 1) = v10;
        *v25 = v11;
        if (v39 - v8 == v22)
        {
          break;
        }

        if (v8 < v38 || v8 + v22 >= v39)
        {
          goto LABEL_39;
        }

        v10 = *(v24 - 1);
        v11 = *v24;

        ++v22;
        v24 += 2;
        v25 += 2;
        if (!(v18 + v22))
        {
          v8 += v22;
          v4 = v17;
          goto LABEL_30;
        }
      }

      v10 = 0;
      v11 = 0;
      v4 = v33 + v22 + 1;
      v8 = v39;
LABEL_30:
      v1 = v31;
      v2 = v34;
      goto LABEL_31;
    }

    v19 = v2;
    v20 = v15[3];

    v21 = (v20 >> 1) - v16;
    v17 = v14 + v21;
    if (__OFADD__(v14, v21))
    {
      goto LABEL_45;
    }

    v2 = v19;
    v18 = v4 - v17;
    if (v4 < v17)
    {
      goto LABEL_23;
    }

LABEL_31:
    v26 = __OFSUB__(v4, v14);
    v27 = v4 - v14;
    v3 = v36;
    if (v26)
    {
      goto LABEL_42;
    }

    if (v27)
    {
      sub_100081628();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = _swiftEmptyArrayStorage;
      }

      v28 = result[2];
      v26 = __OFADD__(v28, v27);
      v29 = v28 + v27;
      if (v26)
      {
        goto LABEL_43;
      }

      result[2] = v29;

      v30 = v35 + v27;
      if (__OFADD__(v35, v27))
      {
        goto LABEL_44;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

      v3 = v36 & 1 | (2 * v30);
      v1[3] = v3;
    }

    if (!v11)
    {
      return result;
    }
  }

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
LABEL_47:
  __break(1u);
  return result;
}

void *sub_1000417B4(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
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
  sub_100081628();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = v13[2];
  if ((v12 + 16 * v8 + 16 * v9) != &v13[2 * v14 + 4])
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
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = (2 * v15);
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_100040BE0(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = v4[1] + 16 * v21 + 16 * v22;
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_100081628();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = _swiftEmptyArrayStorage;
  }

  v25 = v24[2];
  if (v23 != &v24[2 * v25 + 4])
  {

    goto LABEL_21;
  }

  v27 = v24[3];

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
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

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_100041018(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_1000414CC(v32);
  }

  return result;
}

void *sub_1000419F8()
{
  v0 = sub_100080478();
  __chkstk_darwin(v0 - 8);
  v2 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000811C8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = sub_100080548();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000804D8();
  v14 = sub_1000804A8();
  (*(v11 + 8))(v13, v10);
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v56 = v14 - 1;
  sub_100002840(&qword_1000ACB30, &qword_100085BE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100088770;
  sub_100081158();
  v16 = *(v4 + 16);
  v16(v7, v9, v3);
  v54 = v2;
  sub_100080448();
  v17 = sub_100081258();
  v19 = v18;
  v58 = *(v4 + 8);
  v58(v9, v3);
  *(v15 + 32) = v17;
  v53 = v15 + 32;
  *(v15 + 40) = v19;
  sub_100081158();
  v16(v7, v9, v3);
  v57 = v4 + 16;
  sub_100080448();
  v20 = sub_100081258();
  v22 = v21;
  v58(v9, v3);
  *(v15 + 48) = v20;
  *(v15 + 56) = v22;
  sub_100081158();
  v16(v7, v9, v3);
  v23 = v16;
  sub_100080448();
  v24 = sub_100081258();
  v26 = v25;
  v27 = v58;
  v58(v9, v3);
  v55 = (v4 + 8);
  *(v15 + 64) = v24;
  *(v15 + 72) = v26;
  sub_100081158();
  v23(v7, v9, v3);
  sub_100080448();
  v28 = sub_100081258();
  v30 = v29;
  v27(v9, v3);
  *(v15 + 80) = v28;
  *(v15 + 88) = v30;
  sub_100081158();
  v23(v7, v9, v3);
  sub_100080448();
  v31 = sub_100081258();
  v33 = v32;
  v34 = v3;
  v35 = v3;
  v36 = v55;
  v37 = v58;
  v58(v9, v35);
  *(v15 + 96) = v31;
  *(v15 + 104) = v33;
  sub_100081158();
  v23(v7, v9, v34);
  sub_100080448();
  v38 = sub_100081258();
  v40 = v39;
  v37(v9, v34);
  v2 = v36;
  *(v15 + 112) = v38;
  *(v15 + 120) = v40;
  sub_100081158();
  v23(v7, v9, v34);
  sub_100080448();
  v3 = sub_100081258();
  v13 = v41;
  v58(v9, v34);
  v42 = v56;
  *(v15 + 128) = v3;
  *(v15 + 136) = v13;
  v43 = *(v15 + 16);
  if (v43 < v42)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v42 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v44 = v53;
  v59 = v15;
  v60 = v53;
  v45 = (2 * v42) | 1;
  v61 = v42;
  v62 = (2 * v43) | 1;

  sub_1000417B4(v46, v44, 0, v45);

  v3 = v59;
  v13 = v60;
  v2 = v61;
  v9 = v62;
  if ((v62 & 1) == 0)
  {
LABEL_5:
    sub_10003F2DC(v3, v13, v2, v9);
    v48 = v47;
LABEL_12:
    swift_unknownObjectRelease();
    return v48;
  }

  sub_100081628();
  swift_unknownObjectRetain_n();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    swift_unknownObjectRelease();
    v49 = _swiftEmptyArrayStorage;
  }

  v50 = v49[2];

  if (__OFSUB__(v9 >> 1, v2))
  {
    goto LABEL_17;
  }

  if (v50 != (v9 >> 1) - v2)
  {
LABEL_18:
    swift_unknownObjectRelease_n();
    goto LABEL_5;
  }

  v48 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v48)
  {
    v48 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  return v48;
}

void *sub_100042194()
{
  v0 = sub_100080478();
  v96 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v83 - v4;
  v6 = sub_1000811C8();
  v100 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v83 - v10;
  v12 = sub_100080548();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000804D8();
  v16 = sub_1000804A8();
  (*(v13 + 8))(v15, v12);
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v86 = v16 - 1;
  sub_100002840(&qword_1000ACB30, &qword_100085BE0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_100088770;
  sub_100081158();
  sub_100080448();
  v17 = *(v100 + 16);
  v90 = v100 + 16;
  v91 = v17;
  v17(v9, v11, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v93 = ObjCClassFromMetadata;
  v99 = objc_opt_self();
  v19 = [v99 bundleForClass:ObjCClassFromMetadata];
  v20 = v96;
  v21 = v9;
  v22 = *(v96 + 16);
  v97 = v96 + 16;
  v95 = v22;
  v22(v3, v5, v0);
  v23 = sub_100081268();
  v25 = v24;
  v26 = *(v20 + 8);
  v96 = v20 + 8;
  v98 = v26;
  v26(v5, v0);
  v94 = *(v100 + 8);
  v100 += 8;
  v89 = v6;
  v94(v11, v6);
  v27 = v92;
  v28 = v92;
  *(v92 + 32) = v23;
  v84 = v28 + 32;
  *(v27 + 40) = v25;
  sub_100081158();
  sub_100080448();
  v29 = v91;
  v91(v9, v11, v6);
  v30 = v93;
  v31 = [v99 bundleForClass:v93];
  v88 = v3;
  v95(v3, v5, v0);
  v32 = sub_100081268();
  v34 = v33;
  v35 = v0;
  v98(v5, v0);
  v36 = v89;
  v94(v11, v89);
  v37 = v92;
  *(v92 + 48) = v32;
  *(v37 + 56) = v34;
  sub_100081158();
  sub_100080448();
  v29(v9, v11, v36);
  v38 = [v99 bundleForClass:v30];
  v39 = v88;
  v40 = v35;
  v95(v88, v5, v35);
  v41 = sub_100081268();
  v43 = v42;
  v98(v5, v35);
  v44 = v89;
  v94(v11, v89);
  v45 = v92;
  *(v92 + 64) = v41;
  *(v45 + 72) = v43;
  sub_100081158();
  sub_100080448();
  v85 = v21;
  v46 = v44;
  v47 = v91;
  v91(v21, v11, v46);
  v48 = [v99 bundleForClass:v93];
  v87 = v40;
  v49 = v95;
  v95(v39, v5, v40);
  v50 = sub_100081268();
  v52 = v51;
  v98(v5, v40);
  v53 = v89;
  v94(v11, v89);
  v54 = v92;
  *(v92 + 80) = v50;
  *(v54 + 88) = v52;
  sub_100081158();
  sub_100080448();
  v55 = v85;
  v47(v85, v11, v53);
  v56 = [v99 bundleForClass:v93];
  v57 = v87;
  v49(v88, v5, v87);
  v58 = sub_100081268();
  v60 = v59;
  v98(v5, v57);
  v61 = v53;
  v62 = v94;
  v94(v11, v53);
  v63 = v92;
  *(v92 + 96) = v58;
  *(v63 + 13) = v60;
  sub_100081158();
  sub_100080448();
  v91(v55, v11, v61);
  v64 = [v99 bundleForClass:v93];
  v65 = v88;
  v95(v88, v5, v57);
  v66 = sub_100081268();
  v68 = v67;
  v98(v5, v57);
  v9 = v89;
  v62(v11, v89);
  *(v63 + 14) = v66;
  *(v63 + 15) = v68;
  sub_100081158();
  sub_100080448();
  v91(v55, v11, v9);
  v69 = [v99 bundleForClass:v93];
  v70 = v87;
  v95(v65, v5, v87);
  v15 = sub_100081268();
  v72 = v71;
  v98(v5, v70);
  v0 = v63;
  v94(v11, v9);
  v73 = v86;
  *(v63 + 16) = v15;
  *(v63 + 17) = v72;
  v74 = *(v63 + 2);
  if (v74 < v73)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v73 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v75 = v84;
  v101 = v63;
  v102 = v84;
  v76 = (2 * v73) | 1;
  v103 = v73;
  v104 = (2 * v74) | 1;

  sub_1000417B4(v77, v75, 0, v76);

  v9 = v101;
  v15 = v102;
  v5 = v103;
  v0 = v104;
  if ((v104 & 1) == 0)
  {
LABEL_5:
    sub_10003F2DC(v9, v15, v5, v0);
    v79 = v78;
LABEL_12:
    swift_unknownObjectRelease();
    return v79;
  }

  sub_100081628();
  swift_unknownObjectRetain_n();
  v80 = swift_dynamicCastClass();
  if (!v80)
  {
    swift_unknownObjectRelease();
    v80 = _swiftEmptyArrayStorage;
  }

  v81 = v80[2];

  if (__OFSUB__(v0 >> 1, v5))
  {
    goto LABEL_17;
  }

  if (v81 != (v0 >> 1) - v5)
  {
LABEL_18:
    swift_unknownObjectRelease_n();
    goto LABEL_5;
  }

  v79 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v79)
  {
    v79 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  return v79;
}

void *sub_100042C1C()
{
  result = sub_10003E50C();
  v1 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v2 = sub_1000419F8();
    v3 = sub_100042194();
    v4 = sub_10003EBB4(v2, v3);

    v5 = v4[2];
    if (!v5)
    {
LABEL_12:

      return _swiftEmptyArrayStorage;
    }

    result = sub_100061AD4(0, v5, 0);
    v6 = 0;
    v17 = v4;
    v18 = v4[2];
    v7 = v4 + 7;
    v16 = v5;
    while (v18 != v6)
    {
      if (v6 >= v4[2])
      {
        goto LABEL_14;
      }

      v8 = *(v7 - 2);
      v9 = *v7;
      v19 = *(v7 - 1);
      v20 = *(v7 - 3);
      if (v6 < v1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2 * (v1 != v6);
      }

      v11 = v1;
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];

      if (v13 >= v12 >> 1)
      {
        result = sub_100061AD4((v12 > 1), v13 + 1, 1);
      }

      v14 = v11 != v6++;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v15 = &_swiftEmptyArrayStorage[6 * v13];
      v15[4] = v20;
      v15[5] = v8;
      v15[6] = v19;
      v15[7] = v9;
      v15[8] = v10;
      *(v15 + 72) = v14;
      *(v15 + 73) = 4;
      v7 += 4;
      v1 = v11;
      v4 = v17;
      if (v16 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100042DE4()
{
  v0 = sub_1000419F8();
  v1 = sub_100042194();
  v2 = sub_10003EBB4(v0, v1);

  v3 = v2[2];
  if (v3)
  {
    result = sub_100061AD4(0, v3, 0);
    v5 = 0;
    v15 = v2;
    v16 = v2[2];
    v6 = v2 + 7;
    v14 = v3;
    while (v16 != v5)
    {
      if (v5 >= v2[2])
      {
        goto LABEL_10;
      }

      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];

      if (v11 >= v12 >> 1)
      {
        result = sub_100061AD4((v12 > 1), v11 + 1, 1);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v11 + 1;
      v13 = &_swiftEmptyArrayStorage[6 * v11];
      v13[4] = v8;
      v13[5] = v7;
      v13[6] = v9;
      v13[7] = v10;
      v13[8] = 1;
      *(v13 + 36) = 1025;
      v6 += 4;
      v2 = v15;
      if (v14 == v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_100042F68(uint64_t a1)
{
  v2 = sub_1000803D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetReadingHistory.DayEntry(0) - 8;
  v7 = __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v39 - v11;
  v12 = &_swiftEmptyDictionarySingleton;
  v51 = &_swiftEmptyDictionarySingleton;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v43 = *(v10 + 80);
  v14 = v3;
  v15 = *(v10 + 72);
  v16 = a1 + ((v43 + 32) & ~v43);
  v48 = (v43 + 32) & ~v43;
  v49 = (v14 + 16);
  v41 = (v14 + 8);
  v42 = v14 + 32;
  v40 = xmmword_100085C00;
  v44 = v9;
  v45 = v14;
  v46 = v2;
  v47 = v15;
  while (1)
  {
    v19 = v50;
    sub_100043DFC(v16, v50);
    (*v49)(v5, v19, v2);
    v21 = sub_10003F3B4(v5);
    v22 = v12[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v12[3] < v24)
    {
      sub_100040804(v24, 1);
      v12 = v51;
      v26 = sub_10003F3B4(v5);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_19;
      }

      v21 = v26;
    }

    if (v25)
    {
      (*v41)(v5, v2);
      v28 = v12[7];
      sub_100043E60(v50, v9);
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_10003F07C(0, v29[2] + 1, 1, v29, &qword_1000AE910, &unk_10008A6C0, type metadata accessor for WidgetReadingHistory.DayEntry);
        *(v28 + 8 * v21) = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v29 = sub_10003F07C((v31 > 1), v32 + 1, 1, v29, &qword_1000AE910, &unk_10008A6C0, type metadata accessor for WidgetReadingHistory.DayEntry);
        *(v28 + 8 * v21) = v29;
      }

      v29[2] = v32 + 1;
      v2 = v46;
      v17 = v47;
      v18 = v29 + v48 + v32 * v47;
      v9 = v44;
      sub_100043E60(v44, v18);
    }

    else
    {
      sub_100002840(&qword_1000AE910, &unk_10008A6C0);
      v33 = v48;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      sub_100043E60(v50, v34 + v33);
      v12[(v21 >> 6) + 8] |= 1 << v21;
      (*(v45 + 32))(v12[6] + *(v45 + 72) * v21, v5, v2);
      *(v12[7] + 8 * v21) = v34;
      v35 = v12[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v12[2] = v37;
      v17 = v47;
    }

    v16 += v17;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_100081658();
  __break(1u);
  return result;
}

__n128 sub_100043380@<Q0>(NSObject *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v82 = a1;
  v11 = *(a2 + 1);
  v84 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 4);
  v14 = sub_1000803D8();
  v76 = *(v14 - 8);
  v77 = v14;
  __chkstk_darwin(v14);
  v74 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100081038();
  v81 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v75 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v73 - v20;
  v83 = v13;
  *&v80 = a4;
  *(&v80 + 1) = a5;
  if (v13)
  {
    if (v11 >= v12)
    {
      v22 = v12;
    }

    else
    {
      v22 = v11;
    }

    if (__OFSUB__(v12, v11))
    {
      __break(1u);
    }

    else
    {
      v23 = ceil((v12 - v11) / 60.0);
      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v23 > -9.22337204e18)
        {
          if (v23 < 9.22337204e18)
          {
            v24 = v22 / v12;
            v79 = v23 & ~(v23 >> 63);
            goto LABEL_11;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          swift_once();
          goto LABEL_36;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v84 = 0;
  v79 = 0;
  v24 = 0.0;
LABEL_11:
  v11 = &v94;
  v13 = v19;
  if (*(a3 + 16))
  {
  }

  else
  {
    sub_100002840(&qword_1000ACD90, "na");
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_100085C00;
    v25 = BDSCloudAssetTypeStoreEbook;
    v26 = BDSLibraryContentAssetTypeUnknown;
    LOBYTE(v103) = 1;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    *(a3 + 56) = 1;
    *(a3 + 64) = 0xD000000000000023;
    *(a3 + 72) = 0x8000000100082090;
    *(a3 + 80) = v25;
    *(a3 + 88) = v26;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
    v27 = v25;
    v28 = v26;
  }

  v29 = *(a3 + 80);
  v105 = *(a3 + 64);
  v106 = v29;
  v107 = *(a3 + 96);
  LOBYTE(v108) = *(a3 + 112);
  v30 = *(a3 + 48);
  v103 = *(a3 + 32);
  v104 = v30;
  sub_10000C328(&v103, &v94);
  v114 = v105;
  v115 = v106;
  v116 = v107;
  v117 = v108;
  v112 = v103;
  v113 = v104;
  if (__PAIR128__(0x8000000100082090, 0xD000000000000023) == v105)
  {
    goto LABEL_15;
  }

  v32 = sub_100081618();
  v31 = 0;
  if ((v32 & 1) == 0 && ((*&v113 == 1.0) & ~BYTE8(v113)) == 0 && v83)
  {
    v37 = a2[1];
    v118 = *a2;
    v119 = v37;
    v120 = v83;
    v38 = COERCE_DOUBLE(WidgetReadingHistory.State.daysSinceLastReadDate.getter());
    if (v39)
    {
LABEL_15:
      v31 = 0;
      goto LABEL_17;
    }

    if (v38 < 0.0 || v38 >= 4.0)
    {
      if (v38 < 4.0 || v38 >= 7.0)
      {
        v31 = v38 < 14.0 && v38 >= 7.0;
      }

      else
      {
        v31 = 2;
      }
    }

    else
    {
      v31 = 3;
    }
  }

LABEL_17:
  v78 = v31;
  v33 = v81;
  v12 = *(v81 + 16);
  (v12)(v21, v82, v13);
  v34 = (*(v33 + 88))(v21, v13);
  if (v34 == enum case for WidgetFamily.systemSmall(_:))
  {
    v35 = v83 == 0;

    v85 = v35;
    v90 = v114;
    v91 = v115;
    v92 = v116;
    v93[0] = v117;
    v88 = v112;
    v89 = v113;
    *&v86 = v24;
    *(&v86 + 1) = v79;
    LOBYTE(v87) = v35;
    *(&v87 + 1) = v84;
    v93[1] = v78;
    *&v93[8] = v80;
    sub_10000AAA4(&v86);
LABEL_41:
    v100 = v92;
    v101 = *v93;
    v102 = *&v93[16];
    v96 = v88;
    v97 = v89;
    v98 = v90;
    v99 = v91;
    v94 = v86;
    v95 = v87;
    WidgetReadingHistory.Day.readingTime.getter();
    v109 = v100;
    v110 = v101;
    v111 = v102;
    v105 = v96;
    v106 = v97;
    v107 = v98;
    v108 = v99;
    v103 = v94;
    v104 = v95;

    goto LABEL_42;
  }

  if (v34 == enum case for WidgetFamily.systemMedium(_:))
  {
    v36 = v83 == 0;
    sub_10002B884(&v112);
    v85 = v36;
    *&v86 = v24;
    *(&v86 + 1) = v79;
    LOBYTE(v87) = v36;
    *(&v87 + 1) = v84;
    *&v88 = a3;
    BYTE8(v88) = v78;
    v89 = v80;
    sub_10000AA80(&v86);
    goto LABEL_41;
  }

  if (v34 == enum case for WidgetFamily.systemLarge(_:))
  {
    if (sub_100062184())
    {
      v40 = v74;
      sub_10003CEA8();
      v41 = *(a2 + 4);
      if (v41 && *(v41 + 16))
      {
        v42 = *a2;
        v43 = sub_10003D170();

        v44 = sub_100042F68(v41);
        sub_100005B2C(a2, &qword_1000AE8D8, "ĵ");
        v45 = sub_10003D574(v44);

        __chkstk_darwin(v46);
        *(&v73 - 2) = v45;
        *(&v73 - 1) = v40;
        v47 = sub_10003E350(sub_100043D60, (&v73 - 4), v43);
      }

      else
      {
        v47 = sub_100042C1C();
        v42 = v62;
      }

      (*(v76 + 8))(v40, v77);
    }

    else
    {
      v47 = sub_100042DE4();
      v42 = v49;
    }

    v63 = v83 == 0;
    sub_10002B884(&v112);
    v85 = v63;
    *&v86 = v24;
    *(&v86 + 1) = v79;
    LOBYTE(v87) = v63;
    *(&v87 + 1) = v84;
    *&v88 = v47;
    *(&v88 + 1) = v42;
    *&v89 = a3;
    BYTE8(v89) = v78;
    v90 = v80;
    sub_10000AA5C(&v86);
    goto LABEL_41;
  }

  if (v34 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v48 = v83 == 0;

    v85 = v48;
    v90 = v114;
    v91 = v115;
    v92 = v116;
    v93[0] = v117;
    v88 = v112;
    v89 = v113;
    *&v86 = v24;
    *(&v86 + 1) = v79;
    LOBYTE(v87) = v48;
    *(&v87 + 1) = v84;
    v93[1] = v78;
    *&v93[8] = v80;
    sub_100043D80(&v86);
    goto LABEL_41;
  }

  if (qword_1000AC690 != -1)
  {
    goto LABEL_55;
  }

LABEL_36:
  v50 = sub_1000806F8();
  sub_10000A480(v50, qword_1000AE828);
  v51 = v75;
  (v12)(v75, v82, v13);
  v52 = sub_1000806D8();
  v53 = sub_100081458();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v83 = v54;
    v84 = swift_slowAlloc();
    *&v103 = v84;
    *v54 = 136315138;
    sub_100043F38(&qword_1000ADB10, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v82 = v52;
    v55 = sub_100081608();
    v57 = v56;
    DWORD2(v80) = v53;
    v58 = *(v81 + 8);
    v58(v51, v13);
    v59 = sub_10006150C(v55, v57, &v103);

    v61 = v82;
    v60 = v83;
    *(v83 + 1) = v59;
    _os_log_impl(&_mh_execute_header, v61, BYTE8(v80), "Widget family '%s' is not supported", v60, 0xCu);
    sub_100019DF8(v84);

    sub_10002B884(&v112);
  }

  else
  {
    sub_10002B884(&v112);

    v58 = *(v81 + 8);
    v58(v51, v13);
  }

  v68 = sub_10000AA2C(&v94);
  (v58)(v21, v13, v68);
  v69 = v11[7];
  v11[15] = v11[6];
  v11[16] = v69;
  v111 = v102;
  v70 = v11[3];
  v11[11] = v11[2];
  v11[12] = v70;
  v71 = v11[5];
  v11[13] = v11[4];
  v11[14] = v71;
  v72 = v11[1];
  v11[9] = *v11;
  v11[10] = v72;
LABEL_42:
  v64 = v11[16];
  a6[6] = v11[15];
  a6[7] = v64;
  a6[8].n128_u64[0] = v111;
  v65 = v11[12];
  a6[2] = v11[11];
  a6[3] = v65;
  v66 = v11[14];
  a6[4] = v11[13];
  a6[5] = v66;
  result = v11[10];
  *a6 = v11[9];
  a6[1] = result;
  return result;
}

uint64_t sub_100043D80(uint64_t result)
{
  v1 = *(result + 112) & 0x301;
  *(result + 16) &= 1uLL;
  *(result + 112) = v1;
  return result;
}

uint64_t sub_100043DA0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100043DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetReadingHistory.DayEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AE8E0, &qword_1000887A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100043F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002840(&qword_1000AE900, &qword_1000887C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044010@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_72;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v32 = result;
    v33 = a2;
    v34 = a3;

    v10 = sub_100044444(v32, v33, 10);
    v36 = v35;

    a3 = v34;
    result = v32;
    a2 = v33;
    if (v36)
    {
      goto LABEL_72;
    }

    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v43 = result;
    v44 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v5)
      {
        v6 = v5 - 1;
        if (v5 != 1)
        {
          v10 = 0;
          v20 = &v43 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_77:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v5)
      {
        v10 = 0;
        v25 = &v43;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          v25 = (v25 + 1);
          if (!--v5)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      v6 = v5 - 1;
      if (v5 != 1)
      {
        v10 = 0;
        v14 = &v43 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_75;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v38 = result;
    v39 = a2;
    v40 = a3;
    v41 = sub_1000815A8();
    a3 = v40;
    v8 = v41;
    result = v38;
    v6 = v42;
    a2 = v39;
  }

  v9 = *v8;
  if (v9 == 43)
  {
    if (v6 >= 1)
    {
      if (--v6)
      {
        v10 = 0;
        if (v8)
        {
          v17 = v8 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            v19 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              goto LABEL_61;
            }

            ++v17;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_61;
    }

    goto LABEL_76;
  }

  if (v9 == 45)
  {
    if (v6 >= 1)
    {
      if (--v6)
      {
        v10 = 0;
        if (v8)
        {
          v11 = v8 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v6) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v6)
  {
    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v23 = *v8 - 48;
        if (v23 > 9)
        {
          goto LABEL_61;
        }

        v24 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          goto LABEL_61;
        }

        v10 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          goto LABEL_61;
        }

        ++v8;
        if (!--v6)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_61:
  v10 = 0;
  LOBYTE(v6) = 1;
LABEL_62:
  v45 = v6;
  if (v6)
  {
LABEL_72:
    v37 = sub_100080308();
    return (*(*(v37 - 8) + 56))(a4, 1, 1, v37);
  }

LABEL_63:
  if (v10 < 1)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    v28 = 0x6F6F626F69647561;
  }

  else
  {
    v28 = 1802465122;
  }

  if (a3)
  {
    v29 = 0xE90000000000006BLL;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  v30 = result;
  v31 = a2;
  sub_100081588(31);

  v43 = 0xD000000000000018;
  v44 = 0x80000001000833A0;
  v46._countAndFlagsBits = v28;
  v46._object = v29;
  sub_1000812A8(v46);

  v47._countAndFlagsBits = 6580527;
  v47._object = 0xE300000000000000;
  sub_1000812A8(v47);
  v48._countAndFlagsBits = v30;
  v48._object = v31;
  sub_1000812A8(v48);
  sub_1000802E8();
}

unsigned __int8 *sub_100044444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100081328();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000449D0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000815A8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
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

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000449D0(uint64_t a1, unint64_t a2)
{
  v2 = sub_100081338();
  v6 = sub_100044A50(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100044A50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100081528();
    if (!v9 || (v10 = v9, v11 = sub_10006194C(v9, 0), v12 = sub_100044BA8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100081288();

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
      return sub_100081288();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000815A8();
LABEL_4:

  return sub_100081288();
}

unint64_t sub_100044BA8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100044DC8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000812E8();
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
          result = sub_1000815A8();
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

    result = sub_100044DC8(v12, a6, a7);
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

    result = sub_1000812C8();
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

unint64_t sub_100044DC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000812F8();
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
    v5 = sub_1000812D8();
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

uint64_t sub_100044E44(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_100080308();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_11;
  }

  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
LABEL_11:
    v18 = _swiftEmptyArrayStorage;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v47 = a3;
  v48 = a5;

  v18 = sub_10003EE4C(0, 1, 1, _swiftEmptyArrayStorage);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    v18 = sub_10003EE4C((v19 > 1), v20 + 1, 1, v18);
    v19 = *(v18 + 3);
    v21 = v19 >> 1;
  }

  *(v18 + 2) = v22;
  v23 = &v18[16 * v20];
  *(v23 + 4) = a1;
  *(v23 + 5) = a2;
  if (v21 < (v20 + 2))
  {
    v18 = sub_10003EE4C((v19 > 1), v20 + 2, 1, v18);
  }

  *(v18 + 2) = v20 + 2;
  v24 = &v18[16 * v22];
  *(v24 + 4) = 10;
  *(v24 + 5) = 0xE100000000000000;
  a3 = v47;
  a5 = v48;
  if (a4)
  {
LABEL_12:
    v25 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v25 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      v26 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10003EE4C(0, *(v18 + 2) + 1, 1, v18);
      }

      v28 = *(v18 + 2);
      v27 = *(v18 + 3);
      v29 = v27 >> 1;
      v30 = v28 + 1;
      if (v27 >> 1 <= v28)
      {
        v18 = sub_10003EE4C((v27 > 1), v28 + 1, 1, v18);
        v27 = *(v18 + 3);
        v29 = v27 >> 1;
      }

      *(v18 + 2) = v30;
      v31 = &v18[16 * v28];
      *(v31 + 4) = v26;
      *(v31 + 5) = a4;
      if (v29 < (v28 + 2))
      {
        v18 = sub_10003EE4C((v27 > 1), v28 + 2, 1, v18);
      }

      *(v18 + 2) = v28 + 2;
      v32 = &v18[16 * v30];
      *(v32 + 4) = 10;
      *(v32 + 5) = 0xE100000000000000;
    }
  }

LABEL_22:
  sub_100024570(a5, v12);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    v34 = sub_100080278();
    v36 = v35;
    v37 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v37 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v38 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10003EE4C(0, *(v18 + 2) + 1, 1, v18);
      }

      v40 = *(v18 + 2);
      v39 = *(v18 + 3);
      v41 = v39 >> 1;
      v42 = v40 + 1;
      if (v39 >> 1 <= v40)
      {
        v18 = sub_10003EE4C((v39 > 1), v40 + 1, 1, v18);
        v39 = *(v18 + 3);
        v41 = v39 >> 1;
      }

      *(v18 + 2) = v42;
      v43 = &v18[16 * v40];
      *(v43 + 4) = v38;
      *(v43 + 5) = v36;
      if (v41 < (v40 + 2))
      {
        v18 = sub_10003EE4C((v39 > 1), v40 + 2, 1, v18);
      }

      (*(v14 + 8))(v16, v13);
      *(v18 + 2) = v40 + 2;
      v44 = &v18[16 * v42];
      *(v44 + 4) = 10;
      *(v44 + 5) = 0xE100000000000000;
      if (*(v18 + 2))
      {
        goto LABEL_24;
      }
    }

    else
    {
      (*(v14 + 8))(v16, v13);

      if (*(v18 + 2))
      {
        goto LABEL_24;
      }
    }

LABEL_35:

    return 0;
  }

  sub_1000452FC(v12);
  if (!*(v18 + 2))
  {
    goto LABEL_35;
  }

LABEL_24:
  v49 = v18;
  sub_100002840(&qword_1000ACE50, &qword_1000881F0);
  sub_100045364();
  v33 = sub_100081128();

  return v33;
}

uint64_t sub_1000452FC(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100045364()
{
  result = qword_1000ACE58;
  if (!qword_1000ACE58)
  {
    sub_100004FC8(&qword_1000ACE50, &qword_1000881F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACE58);
  }

  return result;
}

uint64_t sub_1000453C8()
{
  v0 = sub_1000806F8();
  sub_10000A794(v0, qword_1000AE928);
  sub_10000A480(v0, qword_1000AE928);
  sub_100019DAC();
  sub_1000814E8();
  return sub_100080708();
}

uint64_t sub_100045460()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1000801E8();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100080478();
  v5 = *(v25 - 8);
  v6 = __chkstk_darwin(v25);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = sub_1000811C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v17 = sub_1000801F8();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_1000800F8();
  sub_10000A794(v18, qword_1000B7F40);
  v21[1] = sub_10000A480(v18, qword_1000B7F40);
  sub_100081158();
  sub_100080448();
  (*(v11 + 16))(v14, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100080208();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_1000800E8();
}

uint64_t sub_100045874()
{
  v0 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  __chkstk_darwin(v0 - 8);
  v66 = &v41 - v1;
  v2 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v2 - 8);
  v63 = &v41 - v3;
  v65 = sub_1000801E8();
  v70 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_100080478();
  v69 = *(v61 - 8);
  v5 = __chkstk_darwin(v61);
  v60 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v9 = sub_1000811C8();
  v67 = *(v9 - 8);
  v10 = v67;
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v64 = sub_1000801F8();
  v68 = *(v64 - 8);
  __chkstk_darwin(v64);
  v49 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002840(&qword_1000AEB08, &qword_1000891B8);
  v17 = sub_100002840(&qword_1000AEB10, &qword_1000891C0);
  v62 = v17;
  v18 = *(v17 - 8);
  v56 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100085A40;
  v57 = v20;
  v58 = v20 + v19;
  v54 = *(v17 + 48);
  *(v20 + v19) = 0;
  v41 = v15;
  sub_100081158();
  sub_100080448();
  v55 = *(v10 + 16);
  v43 = v13;
  v21 = v9;
  v42 = v9;
  v55(v13, v15, v9);
  v22 = v69;
  v53 = *(v69 + 16);
  v23 = v61;
  v53(v60, v8, v61);
  v52 = type metadata accessor for BundleFinder();
  v24 = v59;
  *v59 = v52;
  v50 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v70 + 104);
  v70 += 104;
  v51 = v25;
  v25(v24);
  sub_100080208();
  v26 = *(v22 + 8);
  v69 = v22 + 8;
  v48 = v26;
  v27 = v8;
  v26(v8, v23);
  v28 = *(v67 + 8);
  v67 += 8;
  v47 = v28;
  v29 = v41;
  v28(v41, v21);
  v30 = *(v68 + 56);
  v68 += 56;
  v46 = v30;
  v30(v63, 1, 1, v64);
  v31 = sub_10007FF18();
  v32 = *(v31 - 8);
  v44 = *(v32 + 56);
  v45 = v32 + 56;
  v44(v66, 1, 1, v31);
  v33 = v58;
  sub_10007FF48();
  v54 = (v33 + v56);
  v56 = *(v62 + 48);
  *v54 = 1;
  v34 = v29;
  sub_100081158();
  v35 = v27;
  sub_100080448();
  v36 = v42;
  v55(v43, v29, v42);
  v37 = v61;
  v53(v60, v35, v61);
  v38 = v59;
  *v59 = v52;
  v51(v38, v50, v65);
  sub_100080208();
  v48(v35, v37);
  v47(v34, v36);
  v46(v63, 1, 1, v64);
  v44(v66, 1, 1, v31);
  sub_10007FF48();
  v39 = sub_100067B7C(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000B7F58 = v39;
  return result;
}

unint64_t sub_100046050()
{
  result = qword_1000AE940;
  if (!qword_1000AE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE940);
  }

  return result;
}

uint64_t sub_1000460A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000A6AB8;
  v8._object = v3;
  v5 = sub_1000815F8(v4, v8);

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

unint64_t sub_100046108()
{
  result = qword_1000AE948;
  if (!qword_1000AE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE948);
  }

  return result;
}

unint64_t sub_100046160()
{
  result = qword_1000AE950;
  if (!qword_1000AE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE950);
  }

  return result;
}

unint64_t sub_1000461B8()
{
  result = qword_1000AE958;
  if (!qword_1000AE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE958);
  }

  return result;
}

unint64_t sub_100046210()
{
  result = qword_1000AE960;
  if (!qword_1000AE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE960);
  }

  return result;
}

unint64_t sub_100046268()
{
  result = qword_1000AE968;
  if (!qword_1000AE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE968);
  }

  return result;
}

unint64_t sub_1000462BC()
{
  result = qword_1000AE970;
  if (!qword_1000AE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE970);
  }

  return result;
}

unint64_t sub_100046314()
{
  result = qword_1000AE978;
  if (!qword_1000AE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE978);
  }

  return result;
}

unint64_t sub_1000463F0()
{
  result = qword_1000AE980;
  if (!qword_1000AE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE980);
  }

  return result;
}

uint64_t sub_100046448(uint64_t a1)
{
  v2 = sub_1000463F0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100046498()
{
  result = qword_1000AE988;
  if (!qword_1000AE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE988);
  }

  return result;
}

unint64_t sub_1000464F0()
{
  result = qword_1000AE990;
  if (!qword_1000AE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE990);
  }

  return result;
}

unint64_t sub_100046548()
{
  result = qword_1000AE998;
  if (!qword_1000AE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE998);
  }

  return result;
}

uint64_t sub_10004659C()
{
  if (qword_1000AC6A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000465F8(uint64_t a1)
{
  v2 = sub_100046314();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10004669C()
{
  result = qword_1000AE9B0;
  if (!qword_1000AE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9B0);
  }

  return result;
}

unint64_t sub_1000466F4()
{
  result = qword_1000AE9B8;
  if (!qword_1000AE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9B8);
  }

  return result;
}

uint64_t sub_100046780()
{
  v0 = sub_1000801E8();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1000801F8();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100080478();
  v5 = *(v23 - 8);
  v6 = __chkstk_darwin(v23);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000811C8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v22 = v3;
  sub_10000A794(v3, qword_1000B7F60);
  v21 = sub_10000A480(v3, qword_1000B7F60);
  sub_100081158();
  sub_100080448();
  (*(v12 + 16))(v15, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v8, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100080208();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_100046B2C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100002840(&qword_1000AEAB8, &qword_100089158);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = __chkstk_darwin(v1);
  v30 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = v25 - v5;
  v6 = sub_100002840(&qword_1000AEAC0, &qword_100089160);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v28 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - v11;
  __chkstk_darwin(v10);
  v29 = v25 - v13;
  v38 = 0;
  v35 = sub_100002840(&qword_1000AEAC8, &qword_100089168);
  v25[3] = sub_100021864();
  v14 = sub_1000462BC();
  v25[2] = sub_100005C98(&qword_1000AEAD0, &qword_1000AEAC8, &qword_100089168, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_100080158();
  v25[1] = sub_100005C98(&qword_1000AEAD8, &qword_1000AEAC0, &qword_100089160, &protocol conformance descriptor for ParameterSummaryCaseCondition<A, B, C>);
  sub_100080128();
  v36 = *(v7 + 8);
  v26 = v12;
  v36(v12, v6);
  v27 = v7 + 8;
  v37 = 1;
  v15 = v28;
  v25[0] = v14;
  sub_100080158();
  sub_100080128();
  v36(v15, v6);
  v16 = v30;
  sub_1000801A8();
  sub_100005C98(&qword_1000AEAE0, &qword_1000AEAB8, &qword_100089158, &protocol conformance descriptor for ParameterSummaryDefaultCaseCondition<A, B, C>);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  sub_100080128();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  sub_100080118();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_100046FF8@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_100002840(&qword_1000AEAE8, &qword_100089170);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100002840(&qword_1000AEAF0, &qword_100089178);
  __chkstk_darwin(v2);
  v3 = sub_100002840(&qword_1000AEAC8, &qword_100089168);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_100021864();
  sub_10007FFE8();
  v13._countAndFlagsBits = 0x2079616C50;
  v13._object = 0xE500000000000000;
  sub_10007FFD8(v13);
  swift_getKeyPath();
  sub_100002840(&qword_1000AEAF8, &qword_100089180);
  sub_10007FFC8();

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  sub_10007FFD8(v14);
  swift_getKeyPath();
  sub_100002840(&qword_1000AEB00, &qword_1000891B0);
  sub_10007FFC8();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10007FFD8(v15);
  sub_10007FFF8();
  sub_10007FFB8();
  sub_100005C98(&qword_1000AEAD0, &qword_1000AEAC8, &qword_100089168, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_100080098();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_100080088();
  return (v10)(v9, v3);
}

uint64_t sub_100047330@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_100002840(&qword_1000AEAE8, &qword_100089170);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100002840(&qword_1000AEAF0, &qword_100089178);
  __chkstk_darwin(v2);
  v3 = sub_100002840(&qword_1000AEAC8, &qword_100089168);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_100021864();
  sub_10007FFE8();
  v13._countAndFlagsBits = 0x2079616C50;
  v13._object = 0xE500000000000000;
  sub_10007FFD8(v13);
  swift_getKeyPath();
  sub_100002840(&qword_1000AEAF8, &qword_100089180);
  sub_10007FFC8();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_10007FFD8(v14);
  sub_10007FFF8();
  sub_10007FFB8();
  sub_100005C98(&qword_1000AEAD0, &qword_1000AEAC8, &qword_100089168, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_100080098();
  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_100080088();
  return (v10)(v9, v3);
}

uint64_t sub_100047650(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_100002840(&qword_1000AEAA8, &qword_100089150);
  v5 = sub_100005C98(&qword_1000AEAB0, &qword_1000AEAA8, &qword_100089150, &protocol conformance descriptor for ParameterSummaryTupleCaseCondition<A, B, C>);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_100046B2C, 0, v4, a2, v5);
}

uint64_t sub_100047738(uint64_t a1)
{
  sub_10007FC28();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10004779C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004A9E0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_1000477CC()
{
  result = qword_1000AE9C0;
  if (!qword_1000AE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9C0);
  }

  return result;
}

uint64_t sub_100047820(uint64_t a1)
{
  v2 = sub_100021864();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100047864()
{
  result = qword_1000AE9C8;
  if (!qword_1000AE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9C8);
  }

  return result;
}

unint64_t sub_1000478BC()
{
  result = qword_1000AE9D0;
  if (!qword_1000AE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9D0);
  }

  return result;
}

unint64_t sub_100047914()
{
  result = qword_1000AE9D8;
  if (!qword_1000AE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9D8);
  }

  return result;
}

unint64_t sub_10004796C()
{
  result = qword_1000AE9E0;
  if (!qword_1000AE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9E0);
  }

  return result;
}

uint64_t sub_1000479C0()
{
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  sub_10007FAE8();
  result = sub_10007FAB8();
  qword_1000B7F78 = result;
  return result;
}

uint64_t sub_100047A30()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1000801E8();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100080478();
  v5 = *(v25 - 8);
  v6 = __chkstk_darwin(v25);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v21 - v8;
  v10 = sub_1000811C8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v17 = sub_1000801F8();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_1000800F8();
  sub_10000A794(v18, qword_1000B7F80);
  v21[1] = sub_10000A480(v18, qword_1000B7F80);
  sub_100081158();
  sub_100080448();
  (*(v11 + 16))(v14, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100080208();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_1000800E8();
}

uint64_t sub_100047E44@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  __chkstk_darwin(v1 - 8);
  v19[0] = v19 - v2;
  v3 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v19 - v7;
  v9 = sub_1000801F8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  sub_10007FC58();
  if (!v20)
  {
  }

  sub_1000801D8();
  v16 = *(v10 + 56);
  v16(v8, 1, 1, v9);
  sub_10007FC58();
  if (v20)
  {
    sub_1000801D8();
    sub_100005B2C(v8, &qword_1000AD3C8, &qword_100087330);
    v16(v6, 0, 1, v9);
    sub_10000C1E0(v6, v8, &qword_1000AD3C8, &qword_100087330);
  }

  (*(v10 + 16))(v13, v15, v9);
  sub_1000055FC(v8, v6, &qword_1000AD3C8, &qword_100087330);
  v17 = sub_10007FF18();
  (*(*(v17 - 8) + 56))(v19[0], 1, 1, v17);
  sub_10007FF48();
  sub_100005B2C(v8, &qword_1000AD3C8, &qword_100087330);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_100048178@<X0>(void *a1@<X8>)
{
  if (qword_1000AC6B8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000B7F78;
}

unint64_t sub_1000481EC()
{
  result = qword_1000AE9E8;
  if (!qword_1000AE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9E8);
  }

  return result;
}

unint64_t sub_100048244()
{
  result = qword_1000AE9F0;
  if (!qword_1000AE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9F0);
  }

  return result;
}

unint64_t sub_10004829C()
{
  result = qword_1000AE9F8;
  if (!qword_1000AE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9F8);
  }

  return result;
}

unint64_t sub_1000482F4()
{
  result = qword_1000AEA00;
  if (!qword_1000AEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA00);
  }

  return result;
}

uint64_t sub_100048380@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_10000A480(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10004846C(uint64_t a1)
{
  v2 = sub_100048564();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000484BC()
{
  result = qword_1000AEA18;
  if (!qword_1000AEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA18);
  }

  return result;
}

uint64_t sub_100048514(uint64_t a1)
{
  v2 = sub_1000482F4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100048564()
{
  result = qword_1000AEA20;
  if (!qword_1000AEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA20);
  }

  return result;
}

unint64_t sub_1000485BC()
{
  result = qword_1000AEA28;
  if (!qword_1000AEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA28);
  }

  return result;
}

unint64_t sub_100048614()
{
  result = qword_1000AEA30;
  if (!qword_1000AEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA30);
  }

  return result;
}

unint64_t sub_10004866C()
{
  result = qword_1000AEA38;
  if (!qword_1000AEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA38);
  }

  return result;
}

unint64_t sub_1000486C4()
{
  result = qword_1000AEA40;
  if (!qword_1000AEA40)
  {
    sub_100004FC8(&qword_1000AEA48, qword_100088EB8);
    sub_10004829C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA40);
  }

  return result;
}

uint64_t sub_100048748(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10004796C();
  *v5 = v2;
  v5[1] = sub_1000074F4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100048818@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - v8;
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(v1 + 64);
  v13 = *(v1 + 72);
  v14 = sub_100080308();
  v15 = *(*(v14 - 8) + 56);
  if (v13)
  {
    v16 = *(v14 - 8);
    v15(v11, 1, 1, v14);
    sub_1000055FC(v11, v9, &qword_1000AD3B0, &unk_100087320);
    if ((*(v16 + 48))(v9, 1, v14) == 1)
    {
      sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
      sub_100044010(v12, v13, 1, v6);
      sub_100005B2C(v11, &qword_1000AD3B0, &unk_100087320);
      sub_10000C1E0(v6, v11, &qword_1000AD3B0, &unk_100087320);
    }

    else
    {
      sub_100005B2C(v9, &qword_1000AD3B0, &unk_100087320);
    }

    return sub_10000C1E0(v11, a1, &qword_1000AD3B0, &unk_100087320);
  }

  else
  {

    return (v15)(a1, 1, 1, v14);
  }
}

uint64_t sub_100048A58@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_100002840(&qword_1000AEA70, &qword_1000890D8);
  __chkstk_darwin(v19);
  v2 = &v16 - v1;
  v3 = sub_100080608();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100002840(&qword_1000AEA78, &qword_1000890E0);
  v18 = *(v4 - 8);
  v5 = v18;
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v20 = sub_100002840(&qword_1000AEA80, &qword_1000890E8);
  v17 = *(v20 - 8);
  v8 = v17;
  __chkstk_darwin(v20);
  v10 = &v16 - v9;
  sub_1000805E8();
  sub_100049AF4();
  sub_100080588();
  sub_100005C98(&qword_1000AEA90, &qword_1000AEA78, &qword_1000890E0, &protocol conformance descriptor for DataRepresentation<A>);
  sub_100080598();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_1000805F8();
  sub_100080588();
  v12 = *(v19 + 48);
  v13 = *(v8 + 16);
  v14 = v20;
  v13(v2, v10, v20);
  (*(v18 + 16))(&v2[v12], v7, v4);
  sub_1000805A8();
  v11(v7, v4);
  return (*(v17 + 8))(v10, v14);
}

uint64_t sub_100048DC8(uint64_t a1)
{
  sub_100002840(&qword_1000AD3B0, &unk_100087320);
  *(v1 + 104) = swift_task_alloc();
  v3 = sub_100080308();
  *(v1 + 112) = v3;
  *(v1 + 120) = *(v3 - 8);
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  v4 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;

  return _swift_task_switch(sub_100048EEC, 0, 0);
}

uint64_t sub_100048EEC()
{
  v35 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_100048818(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100005B2C(v0[13], &qword_1000AD3B0, &unk_100087320);
    if (qword_1000AC698 != -1)
    {
      swift_once();
    }

    v4 = sub_1000806F8();
    sub_10000A480(v4, qword_1000AE928);
    v5 = sub_1000806D8();
    v6 = sub_100081438();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v34);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s -- .url: nil", v7, 0xCu);
      sub_100019DF8(v8);
    }

    v9 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    (*(v0[15] + 32))(v0[17], v0[13], v0[14]);
    if (qword_1000AC698 != -1)
    {
      swift_once();
    }

    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[14];
    v14 = v0[15];
    v15 = sub_1000806F8();
    sub_10000A480(v15, qword_1000AE928);
    (*(v14 + 16))(v11, v12, v13);
    v16 = sub_1000806D8();
    v17 = sub_100081438();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[14];
    if (v18)
    {
      v33 = v0[14];
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v34);
      *(v22 + 12) = 2080;
      v23 = sub_100080278();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v19, v33);
      v27 = sub_10006150C(v23, v25, &v34);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s -- .url: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v26 = *(v20 + 8);
      v26(v19, v21);
    }

    v28 = v0[17];
    v29 = v0[14];
    v9 = sub_100080298();
    v10 = v30;
    v26(v28, v29);
  }

  v31 = v0[1];

  return v31(v9, v10);
}

uint64_t sub_100049300(uint64_t a1)
{
  v2 = sub_100002840(&qword_1000AD3B0, &unk_100087320);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - v10;
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = sub_100080308();
  v17 = *(*(v16 - 8) + 56);
  if (!v15)
  {
    v17(v13, 1, 1, v16);
LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v18 = *(v16 - 8);
  v17(v11, 1, 1, v16);
  sub_1000055FC(v11, v8, &qword_1000AD3B0, &unk_100087320);
  v19 = *(v18 + 48);
  if (v19(v8, 1, v16) == 1)
  {
    sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
    sub_100044010(v14, v15, 1, v5);
    sub_100005B2C(v11, &qword_1000AD3B0, &unk_100087320);
    sub_10000C1E0(v5, v11, &qword_1000AD3B0, &unk_100087320);
  }

  else
  {
    sub_100005B2C(v8, &qword_1000AD3B0, &unk_100087320);
  }

  sub_10000C1E0(v11, v13, &qword_1000AD3B0, &unk_100087320);
  v20 = 1;
  if (v19(v13, 1, v16) == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_100005B2C(v13, &qword_1000AD3B0, &unk_100087320);
  return v20;
}

uint64_t sub_100049580(uint64_t a1)
{
  v3 = sub_100081248();
  *(v1 + 136) = v3;
  *(v1 + 144) = *(v3 - 8);
  *(v1 + 152) = swift_task_alloc();
  sub_100002840(&qword_1000AD3B0, &unk_100087320);
  *(v1 + 160) = swift_task_alloc();
  v4 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;

  return _swift_task_switch(sub_100049698, 0, 0);
}

uint64_t sub_100049698(uint64_t a1)
{
  v25 = v1;
  v2 = v1[20];
  sub_10007FC58();
  v3 = v1[13];
  v4 = v1[14];
  sub_10007FC58();
  v5 = v1[15];
  v6 = v1[16];
  sub_100048818(v2);
  v7 = sub_100044E44(v3, v4, v5, v6, v2);
  v9 = v8;

  sub_100005B2C(v2, &qword_1000AD3B0, &unk_100087320);
  if (qword_1000AC698 != -1)
  {
    swift_once();
  }

  v10 = sub_1000806F8();
  sub_10000A480(v10, qword_1000AE928);

  v11 = sub_1000806D8();
  v12 = sub_100081438();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10006150C(0xD000000000000016, 0x8000000100082260, &v24);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10006150C(v7, v9, &v24);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s -- .text: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v14 = v1[19];
  v15 = v1[17];
  v16 = v1[18];
  sub_100081238();
  v17 = sub_100081228();
  v19 = v18;

  (*(v16 + 8))(v14, v15);
  if (v19 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  if (v19 >> 60 == 15)
  {
    v21 = 0xC000000000000000;
  }

  else
  {
    v21 = v19;
  }

  v22 = v1[1];

  return v22(v20, v21);
}

uint64_t sub_100049958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1000499A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100049AF4()
{
  result = qword_1000AEA88;
  if (!qword_1000AEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEA88);
  }

  return result;
}

uint64_t sub_100049B48(int a1, __int128 *a2)
{
  v83 = a2;
  v82 = a1;
  v92 = sub_100080078();
  v103 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v4 = __chkstk_darwin(v3 - 8);
  v89 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v88 = &v72 - v6;
  v7 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v7 - 8);
  v102 = &v72 - v8;
  v96 = sub_1000801E8();
  v110 = *(v96 - 8);
  __chkstk_darwin(v96);
  v10 = (&v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100080478();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v72 - v16;
  v18 = sub_1000811C8();
  v84 = v18;
  v106 = *(v18 - 8);
  v19 = v106;
  v20 = __chkstk_darwin(v18);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v72 - v23;
  v91 = sub_1000801F8();
  v97 = *(v91 - 8);
  v25 = __chkstk_darwin(v91);
  v81 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v87 = &v72 - v27;
  v80 = sub_100002840(&qword_1000AEA98, &qword_100089118);
  sub_100081158();
  sub_100080448();
  v104 = *(v19 + 16);
  v101 = v19 + 16;
  v104(v22, v24, v18);
  v28 = *(v12 + 16);
  v100 = v12 + 16;
  v109 = v28;
  v28(v15, v17, v11);
  v105 = type metadata accessor for BundleFinder();
  *v10 = v105;
  v108 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v29 = *(v110 + 104);
  v110 += 104;
  v107 = v29;
  v30 = v10;
  v94 = v10;
  v31 = v96;
  v29(v30);
  sub_100080208();
  v98 = *(v12 + 8);
  v99 = v12 + 8;
  v98(v17, v11);
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v84;
  v33(v24, v84);
  v95 = v33;
  v106 = v32;
  v93 = v24;
  sub_100081158();
  sub_100080448();
  v72 = v22;
  v35 = v24;
  v36 = v34;
  v104(v22, v35, v34);
  v86 = v15;
  v37 = v11;
  v85 = v11;
  v109(v15, v17, v11);
  v38 = v94;
  *v94 = v105;
  v107(v38, v108, v31);
  v39 = v102;
  sub_100080208();
  v98(v17, v37);
  v40 = v93;
  v41 = v36;
  v33(v93, v36);
  v42 = *(v97 + 56);
  v97 += 56;
  v73 = v42;
  v42(v39, 0, 1, v91);
  LOBYTE(v112) = 0;
  v43 = sub_10007FBF8();
  v75 = v43;
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v76 = v45;
  v77 = v44 + 56;
  v45(v88, 1, 1, v43);
  v45(v89, 1, 1, v43);
  v78 = enum case for InputConnectionBehavior.default(_:);
  v46 = *(v103 + 104);
  v103 += 104;
  v79 = v46;
  v46(v90);
  sub_1000463F0();
  v80 = sub_10007FD18();
  v74 = sub_100002840(&qword_1000AEAA0, &qword_100089120);

  sub_100081158();
  v47 = v17;
  sub_100080448();
  v48 = v72;
  v104(v72, v40, v41);
  v49 = v85;
  v109(v86, v17, v85);
  v50 = v94;
  *v94 = v105;
  v51 = v96;
  v107(v50, v108, v96);
  v52 = v50;
  sub_100080208();
  v53 = v98;
  v98(v47, v49);
  v54 = v93;
  v55 = v84;
  v95(v93, v84);
  sub_100081158();
  sub_100080448();
  v104(v48, v54, v55);
  v56 = v86;
  v57 = v85;
  v109(v86, v47, v85);
  *v52 = v105;
  v107(v52, v108, v51);
  v58 = v102;
  v59 = v56;
  sub_100080208();
  v60 = v47;
  v53(v47, v57);
  v61 = v93;
  v95(v93, v55);
  v73(v58, 0, 1, v91);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v112 = 0u;
  sub_100081158();
  sub_100080448();
  v104(v48, v61, v55);
  v109(v59, v47, v57);
  v62 = v94;
  *v94 = v105;
  v107(v62, v108, v96);
  sub_100080208();
  v98(v60, v57);
  v95(v61, v55);
  v63 = v88;
  sub_10007FC08();
  v64 = v75;
  v65 = v76;
  v76(v63, 0, 1, v75);
  v65(v89, 1, 1, v64);
  v79(v90, v78, v92);
  sub_100048564();
  sub_10007FD28();
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  v112 = 0u;
  v113 = 0u;
  *&v114 = 0;

  sub_10007FAE8();
  sub_10007FAB8();
  LOBYTE(v112) = v82 & 1;

  v66 = v80;
  sub_10007FCF8();
  v67 = v83;
  v68 = v83[2];
  v69 = v83[4];
  v115 = v83[3];
  v116 = v69;
  v117 = *(v83 + 80);
  v70 = v83[1];
  v112 = *v83;
  v113 = v70;
  v114 = v68;
  sub_1000055FC(v83, v111, &qword_1000AEB18, &unk_1000891D0);
  sub_10007FCF8();
  sub_100005B2C(v67, &qword_1000AEB18, &unk_1000891D0);

  return v66;
}

uint64_t sub_10004A9E0()
{
  v89 = sub_100080078();
  v99 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v70 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100002840(&qword_1000AD410, &qword_100089110);
  v2 = __chkstk_darwin(v1 - 8);
  v86 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v85 = &v70 - v4;
  v5 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v5 - 8);
  v98 = &v70 - v6;
  v7 = sub_1000801E8();
  v8 = *(v7 - 8);
  v105 = v7;
  v106 = v8;
  __chkstk_darwin(v7);
  v10 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_100080478();
  v11 = *(v91 - 8);
  v12 = __chkstk_darwin(v91);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v70 - v15;
  v17 = sub_1000811C8();
  v81 = v17;
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v70 - v22;
  v88 = sub_1000801F8();
  v93 = *(v88 - 8);
  v24 = __chkstk_darwin(v88);
  v80 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v84 = &v70 - v26;
  v79 = sub_100002840(&qword_1000AEA98, &qword_100089118);
  sub_100081158();
  sub_100080448();
  v27 = v18;
  v100 = *(v18 + 16);
  v97 = v18 + 16;
  v100(v21, v23, v17);
  v28 = *(v11 + 16);
  v96 = v11 + 16;
  v104 = v28;
  v82 = v14;
  v29 = v91;
  v28(v14, v16, v91);
  v101 = type metadata accessor for BundleFinder();
  *v10 = v101;
  v103 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v30 = *(v106 + 104);
  v106 += 104;
  v102 = v30;
  v90 = v10;
  v30(v10);
  sub_100080208();
  v94 = *(v11 + 8);
  v95 = v11 + 8;
  v31 = v16;
  v94(v16, v29);
  v32 = v27 + 8;
  v33 = *(v27 + 8);
  v34 = v81;
  v33(v23, v81);
  v83 = v33;
  v92 = v32;
  sub_100081158();
  sub_100080448();
  v71 = v21;
  v35 = v34;
  v100(v21, v23, v34);
  v36 = v29;
  v104(v82, v31, v29);
  v37 = v90;
  v38 = v102;
  *v90 = v101;
  v38(v37, v103, v105);
  v39 = v98;
  sub_100080208();
  v94(v31, v36);
  v33(v23, v35);
  v40 = *(v93 + 56);
  v93 += 56;
  v72 = v40;
  v40(v39, 0, 1, v88);
  LOBYTE(v107) = 0;
  v41 = sub_10007FBF8();
  v74 = v41;
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v75 = v43;
  v76 = v42 + 56;
  v43(v85, 1, 1, v41);
  v43(v86, 1, 1, v41);
  v77 = enum case for InputConnectionBehavior.default(_:);
  v44 = *(v99 + 104);
  v99 += 104;
  v78 = v44;
  v44(v87);
  sub_1000463F0();
  v79 = sub_10007FD18();
  v73 = sub_100002840(&qword_1000AEAA0, &qword_100089120);
  v70 = v23;
  sub_100081158();
  sub_100080448();
  v45 = v71;
  v46 = v23;
  v47 = v35;
  v100(v71, v46, v35);
  v48 = v82;
  v49 = v31;
  v50 = v31;
  v51 = v91;
  v104(v82, v49, v91);
  v52 = v90;
  v53 = v102;
  *v90 = v101;
  v53(v52, v103, v105);
  sub_100080208();
  v54 = v94;
  v94(v50, v51);
  v55 = v70;
  v56 = v83;
  v83(v70, v47);
  sub_100081158();
  sub_100080448();
  v100(v45, v55, v47);
  v57 = v48;
  v58 = v50;
  v59 = v50;
  v60 = v91;
  v104(v48, v58, v91);
  v61 = v90;
  v62 = v102;
  *v90 = v101;
  v62(v61, v103, v105);
  v63 = v98;
  sub_100080208();
  v54(v59, v60);
  v64 = v81;
  v56(v55, v81);
  v72(v63, 0, 1, v88);
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v107 = 0u;
  sub_100081158();
  sub_100080448();
  v100(v45, v55, v64);
  v104(v57, v59, v60);
  v65 = v102;
  *v61 = v101;
  v65(v61, v103, v105);
  sub_100080208();
  v94(v59, v60);
  v83(v55, v64);
  v66 = v85;
  sub_10007FC08();
  v67 = v74;
  v68 = v75;
  v75(v66, 0, 1, v74);
  v68(v86, 1, 1, v67);
  v78(v87, v77, v89);
  sub_100048564();
  sub_10007FD28();
  sub_100002840(&qword_1000AD3E0, &qword_100087348);
  sub_10007FAF8();
  v107 = 0u;
  v108 = 0u;
  *&v109 = 0;
  sub_10007FAE8();
  sub_10007FAB8();
  return v79;
}

uint64_t sub_10004B6A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007FD08();
  *a1 = result;
  return result;
}

uint64_t sub_10004B6D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007FD08();
  *a1 = result;
  return result;
}

uint64_t sub_10004B730(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100080F68();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100002840(&qword_1000AEB20, &unk_1000891E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_100080CD8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = sub_100080C58();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

char *sub_10004B904(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100080F68();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100002840(&qword_1000AEB20, &unk_1000891E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_100080CD8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = sub_100080C58();
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[12]];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for FilledCircleWithLabel(uint64_t a1)
{
  result = qword_1000AEB80;
  if (!qword_1000AEB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004BB10(uint64_t a1)
{
  sub_100080F68();
  if (v1 <= 0x3F)
  {
    sub_10004BC00(319);
    if (v2 <= 0x3F)
    {
      sub_100080CD8();
      if (v3 <= 0x3F)
      {
        sub_100080C58();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004BC00(uint64_t a1)
{
  if (!qword_1000AEB90)
  {
    sub_1000807B8();
    v1 = sub_100081518();
    if (!v2)
    {
      atomic_store(v1, &qword_1000AEB90);
    }
  }
}

uint64_t sub_10004BC74@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v115 = sub_100002840(&qword_1000AEBF0, &unk_10008B6B0);
  __chkstk_darwin(v115);
  v103 = &v97 - v3;
  v113 = sub_100002840(&qword_1000AEBF8, &unk_100089270);
  __chkstk_darwin(v113);
  v114 = &v97 - v4;
  v5 = sub_100002840(&qword_1000AE358, &qword_100088360);
  __chkstk_darwin(v5 - 8);
  v104 = &v97 - v6;
  v117 = sub_100002840(&qword_1000AEC00, &qword_100089280);
  __chkstk_darwin(v117);
  v102 = &v97 - v7;
  v8 = sub_100002840(&qword_1000AEB20, &unk_1000891E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v97 - v9;
  v11 = sub_1000807B8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v105 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002840(&qword_1000AEC08, &qword_100089288);
  v15 = __chkstk_darwin(v14 - 8);
  v112 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v111 = &v97 - v17;
  v18 = sub_100002840(&qword_1000AEC10, &unk_100089290);
  v19 = v18 - 8;
  v20 = __chkstk_darwin(v18);
  v110 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v97 - v22;
  v24 = *a1;
  v25 = type metadata accessor for FilledCircleWithLabel(0);
  v26 = v25[5];
  v27 = *(v19 + 44);
  v28 = sub_100080F68();
  v29 = *(v28 - 8);
  v107 = *(v29 + 16);
  v108 = v28;
  v106 = v29 + 16;
  v107(&v23[v27], &a1[v26]);
  *v23 = v24;
  v109 = v23;
  *(v23 + 4) = 256;
  sub_1000055FC(&a1[v25[10]], v10, &qword_1000AEB20, &unk_1000891E0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_100005B2C(v10, &qword_1000AEB20, &unk_1000891E0);
    v30 = &a1[v25[7]];
    v31 = *(v30 + 1);
    v118 = *v30;
    v119 = v31;
    sub_1000057D0();

    v32 = sub_100080D28();
    v105 = v33;
    v35 = v34;
    v36 = v25[12];
    v37 = sub_100080C58();
    v38 = *(v37 - 8);
    v39 = &a1[v36];
    v40 = v104;
    (*(v38 + 16))(v104, v39, v37);
    (*(v38 + 56))(v40, 0, 1, v37);
    sub_100080C98();
    sub_100005B2C(v40, &qword_1000AE358, &qword_100088360);
    sub_100080CA8();

    LOBYTE(v38) = v35;
    v41 = v105;
    v42 = sub_100080D18();
    v44 = v43;
    LOBYTE(v31) = v45;
    v104 = v46;

    sub_10000EF24(v32, v41, v38 & 1);

    LODWORD(v118) = *&a1[v25[8]];
    v47 = sub_100080D08();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_10000EF24(v42, v44, v31 & 1);

    v54 = v102;
    (v107)(&v102[*(v117 + 36)], &a1[v25[9]], v108);
    *v54 = v47;
    *(v54 + 8) = v49;
    *(v54 + 16) = v51 & 1;
    *(v54 + 24) = v53;
    sub_1000055FC(v54, v114, &qword_1000AEC00, &qword_100089280);
    swift_storeEnumTagMultiPayload();
    sub_10004C818();
    sub_10004C8D0();
    v55 = v111;
    sub_100080AD8();
    sub_100005B2C(v54, &qword_1000AEC00, &qword_100089280);
  }

  else
  {
    v101 = v12;
    v56 = *(v12 + 32);
    v100 = v11;
    v56(v105, v10, v11);
    v57 = a1;
    v58 = &a1[v25[7]];
    v59 = *(v58 + 1);
    v118 = *v58;
    v119 = v59;
    sub_1000057D0();

    v60 = sub_100080D28();
    v102 = v61;
    v63 = v62;
    v99 = v64;
    v65 = v25[12];
    v66 = sub_100080C58();
    v67 = *(v66 - 8);
    v68 = &a1[v65];
    v70 = v103;
    v69 = v104;
    (*(v67 + 16))(v104, v68, v66);
    (*(v67 + 56))(v69, 0, 1, v66);
    v98 = v57;
    sub_100080C98();
    sub_100005B2C(v69, &qword_1000AE358, &qword_100088360);
    sub_100080CA8();

    v71 = v102;
    v72 = sub_100080D18();
    v74 = v73;
    v76 = v75;
    v104 = v77;

    sub_10000EF24(v60, v71, v63 & 1);

    v78 = v98;
    LODWORD(v118) = *&v98[v25[8]];
    v79 = sub_100080D08();
    v81 = v80;
    v83 = v82;
    v102 = v84;
    sub_10000EF24(v72, v74, v76 & 1);

    (v107)(v70 + *(v117 + 36), &v78[v25[9]], v108);
    *v70 = v79;
    *(v70 + 8) = v81;
    *(v70 + 16) = v83 & 1;
    *(v70 + 24) = v102;
    KeyPath = swift_getKeyPath();
    v86 = (v70 + *(v115 + 36));
    v87 = sub_100002840(&qword_1000ACA80, &qword_100085B40);
    v88 = v101;
    v89 = v105;
    v90 = v100;
    (*(v101 + 16))(v86 + *(v87 + 28), v105, v100);
    *v86 = KeyPath;
    sub_1000055FC(v70, v114, &qword_1000AEBF0, &unk_10008B6B0);
    swift_storeEnumTagMultiPayload();
    sub_10004C818();
    sub_10004C8D0();
    v55 = v111;
    sub_100080AD8();
    sub_100005B2C(v70, &qword_1000AEBF0, &unk_10008B6B0);
    (*(v88 + 8))(v89, v90);
  }

  v92 = v109;
  v91 = v110;
  sub_1000055FC(v109, v110, &qword_1000AEC10, &unk_100089290);
  v93 = v112;
  sub_1000055FC(v55, v112, &qword_1000AEC08, &qword_100089288);
  v94 = v116;
  sub_1000055FC(v91, v116, &qword_1000AEC10, &unk_100089290);
  v95 = sub_100002840(&qword_1000AEC28, &qword_1000892A0);
  sub_1000055FC(v93, v94 + *(v95 + 48), &qword_1000AEC08, &qword_100089288);
  sub_100005B2C(v55, &qword_1000AEC08, &qword_100089288);
  sub_100005B2C(v92, &qword_1000AEC10, &unk_100089290);
  sub_100005B2C(v93, &qword_1000AEC08, &qword_100089288);
  return sub_100005B2C(v91, &qword_1000AEC10, &unk_100089290);
}

double sub_10004C760@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_100080F48();
  a2[1] = v4;
  v5 = sub_100002840(&qword_1000AEBE0, &qword_100089258);
  sub_10004BC74(v2, a2 + *(v5 + 44));
  sub_100080F48();
  sub_1000807E8();
  v6 = (a2 + *(sub_100002840(&qword_1000AEBE8, &unk_100089260) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

unint64_t sub_10004C818()
{
  result = qword_1000AEC18;
  if (!qword_1000AEC18)
  {
    sub_100004FC8(&qword_1000AEBF0, &unk_10008B6B0);
    sub_10004C8D0();
    sub_100005C98(&qword_1000ADC50, &qword_1000ACA80, &qword_100085B40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC18);
  }

  return result;
}

unint64_t sub_10004C8D0()
{
  result = qword_1000AEC20;
  if (!qword_1000AEC20)
  {
    sub_100004FC8(&qword_1000AEC00, &qword_100089280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC20);
  }

  return result;
}

unint64_t sub_10004C960()
{
  result = qword_1000AEC30;
  if (!qword_1000AEC30)
  {
    sub_100004FC8(&qword_1000AEBE8, &unk_100089260);
    sub_100005C98(&qword_1000AEC38, &qword_1000AEC40, &qword_1000892D8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC30);
  }

  return result;
}

uint64_t sub_10004CA2C()
{
  v21 = sub_100002840(&qword_1000AECC0, &qword_100089410);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10007FD58();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002840(&qword_1000AECC8, &qword_100089418);
  __chkstk_darwin(v6);
  sub_10004E7FC();
  sub_10007FE18();
  v22._countAndFlagsBits = 0x206E65704FLL;
  v22._object = 0xE500000000000000;
  sub_10007FE08(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v15 = v2;
  v17(v5);
  sub_10007FDE8();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v23._countAndFlagsBits = 0x676E697474655320;
  v23._object = 0xE900000000000073;
  sub_10007FE08(v23);
  sub_10007FE28();
  v7 = sub_10007FD78();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10007FE18();
  v24._countAndFlagsBits = 0x206F74206F47;
  v24._object = 0xE600000000000000;
  sub_10007FE08(v24);
  v9 = v15;
  (v17)(v5, v18, v15);
  sub_10007FDE8();
  v16(v5, v9);
  v25._countAndFlagsBits = 0x676E697474655320;
  v25._object = 0xE900000000000073;
  sub_10007FE08(v25);
  sub_10007FE28();
  v10 = sub_10007FD78();
  (v19)(v1, v8);
  sub_100002840(&qword_1000AECD0, &unk_100089420);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100085A40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10007FD68();

  return v12;
}

uint64_t sub_10004CE4C()
{
  v21 = sub_100002840(&qword_1000AECC0, &qword_100089410);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v14 - v0;
  v2 = sub_10007FD58();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002840(&qword_1000AECC8, &qword_100089418);
  __chkstk_darwin(v6);
  sub_10004E7FC();
  sub_10007FE18();
  v22._countAndFlagsBits = 0x206E65704FLL;
  v22._object = 0xE500000000000000;
  sub_10007FE08(v22);
  v18 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v17 = *(v3 + 104);
  v14 = v2;
  v17(v5);
  sub_10007FDE8();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v15 = " set reading menu position to ";
  v23._object = 0x80000001000838C0;
  v23._countAndFlagsBits = 0xD000000000000017;
  sub_10007FE08(v23);
  sub_10007FE28();
  v7 = sub_10007FD78();
  v19 = *(v19 + 8);
  v20 = v7;
  v8 = v21;
  (v19)(v1, v21);
  sub_10007FE18();
  v24._countAndFlagsBits = 0x206F74206F47;
  v24._object = 0xE600000000000000;
  sub_10007FE08(v24);
  v9 = v14;
  (v17)(v5, v18, v14);
  sub_10007FDE8();
  v16(v5, v9);
  v25._object = (v15 | 0x8000000000000000);
  v25._countAndFlagsBits = 0xD000000000000017;
  sub_10007FE08(v25);
  sub_10007FE28();
  v10 = sub_10007FD78();
  (v19)(v1, v8);
  sub_100002840(&qword_1000AECD0, &unk_100089420);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100085A40;
  *(v11 + 32) = v20;
  *(v11 + 40) = v10;
  v12 = sub_10007FD68();

  return v12;
}

uint64_t sub_10004D27C(uint64_t a1)
{
  v24 = a1;
  v1 = sub_100002840(&qword_1000AECA0, &qword_1000893D0);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  __chkstk_darwin(v1);
  v4 = &v19 - v3;
  v5 = sub_10007FD58();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AECA8, &qword_1000893D8);
  __chkstk_darwin(v9);
  sub_10004E850();
  sub_10007FE18();
  v31._countAndFlagsBits = 2125385;
  v31._object = 0xE300000000000000;
  sub_10007FE08(v31);
  v28 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v27 = *(v6 + 104);
  v27(v8);
  sub_10007FDE8();
  v10 = *(v6 + 8);
  v25 = v6 + 8;
  v26 = v10;
  v10(v8, v5);
  v32._object = 0x80000001000838A0;
  v32._countAndFlagsBits = 0xD00000000000001ELL;
  sub_10007FE08(v32);
  swift_getKeyPath();
  v23 = sub_10004E9C8();
  sub_10007FD48();

  sub_10007FDF8();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10007FE08(v33);
  sub_10007FE28();
  v11 = sub_10007FD78();
  v12 = *(v30 + 8);
  v30 += 8;
  v21 = v11;
  v22 = v12;
  v12(v4, v29);
  sub_10007FE18();
  v34._countAndFlagsBits = 544503120;
  v34._object = 0xE400000000000000;
  sub_10007FE08(v34);
  (v27)(v8, v28, v5);
  sub_10007FDE8();
  v26(v8, v5);
  v35._object = 0xED00002065687420;
  v35._countAndFlagsBits = 0x6E6F20756E656D20;
  sub_10007FE08(v35);
  swift_getKeyPath();
  sub_10007FD48();

  sub_10007FDF8();

  v36._countAndFlagsBits = 0x6564697320;
  v36._object = 0xE500000000000000;
  sub_10007FE08(v36);
  sub_10007FE28();
  v20 = sub_10007FD78();
  v13 = v29;
  v22(v4, v29);
  sub_10007FE18();
  v37._countAndFlagsBits = 544499027;
  v37._object = 0xE400000000000000;
  sub_10007FE08(v37);
  (v27)(v8, v28, v5);
  sub_10007FDE8();
  v26(v8, v5);
  v38._countAndFlagsBits = 0x6E6F20756E654D20;
  v38._object = 0xED00002065687420;
  sub_10007FE08(v38);
  swift_getKeyPath();
  sub_10007FD48();

  sub_10007FDF8();

  v39._countAndFlagsBits = 0x6564697320;
  v39._object = 0xE500000000000000;
  sub_10007FE08(v39);
  sub_10007FE28();
  v14 = sub_10007FD78();
  v22(v4, v13);
  sub_100002840(&qword_1000AECB0, &qword_1000893E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100085C10;
  v16 = v20;
  *(v15 + 32) = v21;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = sub_10007FD68();

  return v17;
}

uint64_t sub_10004D8A4(uint64_t a1)
{
  v24 = a1;
  v1 = sub_100002840(&qword_1000AEC80, &qword_100089390);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  __chkstk_darwin(v1);
  v4 = &v19 - v3;
  v5 = sub_10007FD58();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002840(&qword_1000AEC88, &qword_100089398);
  __chkstk_darwin(v9);
  sub_10004E8A4();
  sub_10007FE18();
  v31._countAndFlagsBits = 2125385;
  v31._object = 0xE300000000000000;
  sub_10007FE08(v31);
  v28 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v27 = *(v6 + 104);
  v27(v8);
  sub_10007FDE8();
  v10 = *(v6 + 8);
  v25 = v6 + 8;
  v26 = v10;
  v10(v8, v5);
  v32._object = 0x8000000100083830;
  v32._countAndFlagsBits = 0xD000000000000013;
  sub_10007FE08(v32);
  swift_getKeyPath();
  v23 = sub_10004E900();
  sub_10007FD48();

  sub_10007FDF8();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10007FE08(v33);
  sub_10007FE28();
  v11 = sub_10007FD78();
  v12 = *(v30 + 8);
  v30 += 8;
  v21 = v11;
  v22 = v12;
  v12(v4, v29);
  sub_10007FE18();
  v34._countAndFlagsBits = 2125385;
  v34._object = 0xE300000000000000;
  sub_10007FE08(v34);
  (v27)(v8, v28, v5);
  sub_10007FDE8();
  v26(v8, v5);
  v35._countAndFlagsBits = 0xD000000000000014;
  v35._object = 0x8000000100083850;
  sub_10007FE08(v35);
  swift_getKeyPath();
  sub_10007FD48();

  sub_10007FDF8();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10007FE08(v36);
  sub_10007FE28();
  v20 = sub_10007FD78();
  v13 = v29;
  v22(v4, v29);
  sub_10007FE18();
  v37._countAndFlagsBits = 2125385;
  v37._object = 0xE300000000000000;
  sub_10007FE08(v37);
  (v27)(v8, v28, v5);
  sub_10007FDE8();
  v26(v8, v5);
  v38._countAndFlagsBits = 0xD00000000000002ELL;
  v38._object = 0x8000000100083870;
  sub_10007FE08(v38);
  swift_getKeyPath();
  sub_10007FD48();

  sub_10007FDF8();

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10007FE08(v39);
  sub_10007FE28();
  v14 = sub_10007FD78();
  v22(v4, v13);
  sub_100002840(&qword_1000AEC90, &qword_1000893A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100085C10;
  v16 = v20;
  *(v15 + 32) = v21;
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  v17 = sub_10007FD68();

  return v17;
}

uint64_t sub_10004DEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10007FD98();
  v5 = sub_10007FD98();
  sub_100002840(&qword_1000AEC78, &qword_100089388);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100085A40;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  v7 = sub_10007FD88();

  return v7;
}

uint64_t sub_10004DF30()
{
  v0 = sub_100002840(&qword_1000AEC80, &qword_100089390);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - v2;
  v4 = sub_10007FD58();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002840(&qword_1000AEC88, &qword_100089398);
  __chkstk_darwin(v8);
  sub_10004E8A4();
  sub_10007FE18();
  v14._object = 0x8000000100083810;
  v14._countAndFlagsBits = 0xD000000000000019;
  sub_10007FE08(v14);
  (*(v5 + 104))(v7, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v4);
  sub_10007FDE8();
  (*(v5 + 8))(v7, v4);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10007FE08(v15);
  sub_10007FE28();
  v9 = sub_10007FD78();
  (*(v1 + 8))(v3, v0);
  sub_100002840(&qword_1000AEC90, &qword_1000893A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100085C00;
  *(v10 + 32) = v9;
  v11 = sub_10007FD68();

  return v11;
}

uint64_t sub_10004E238(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_10007FDD8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_10007FD48();

  a4(v11);
  sub_10007FDC8();
  v12 = sub_10007FDB8();
  (*(v8 + 8))(v10, v7);
  sub_100002840(&qword_1000AEC70, &qword_100089380);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100085C00;
  *(v13 + 32) = v12;
  v14 = sub_10007FDA8();

  return v14;
}

uint64_t sub_10004E3C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10007FD98();
  sub_100002840(&qword_1000AEC78, &qword_100089388);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100085C00;
  *(v3 + 32) = v2;
  v4 = sub_10007FD88();

  return v4;
}

uint64_t sub_10004E43C()
{
  if (qword_1000AC6C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10004E4A8()
{
  v0 = sub_10007FE58();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100055990();
  sub_10004E7FC();
  sub_10007FE68();
  v4 = sub_10007FE48();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v16 = sub_100055990();
  sub_10007FE68();
  v6 = sub_10007FE48();
  v5(v3, v0);
  v16 = sub_100068540();
  v17 = v7;
  sub_10004E850();
  sub_10007FE68();
  v8 = sub_10007FE48();
  v5(v3, v0);
  v16 = sub_10007E85C();
  v17 = v9;
  sub_10004E8A4();
  sub_10007FE68();
  v10 = sub_10007FE48();
  v5(v3, v0);
  v16 = sub_10007E85C();
  v17 = v11;
  sub_10007FE68();
  v12 = sub_10007FE48();
  v5(v3, v0);
  sub_100002840(&qword_1000AEC60, &qword_100089350);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000892E0;
  *(v13 + 32) = v4;
  *(v13 + 40) = v6;
  *(v13 + 48) = v8;
  *(v13 + 56) = v10;
  *(v13 + 64) = v12;
  v14 = sub_10007FE38();

  return v14;
}

unint64_t sub_10004E7FC()
{
  result = qword_1000AEC48;
  if (!qword_1000AEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC48);
  }

  return result;
}

unint64_t sub_10004E850()
{
  result = qword_1000AEC50;
  if (!qword_1000AEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC50);
  }

  return result;
}

unint64_t sub_10004E8A4()
{
  result = qword_1000AEC58;
  if (!qword_1000AEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC58);
  }

  return result;
}

unint64_t sub_10004E900()
{
  result = qword_1000AEC68;
  if (!qword_1000AEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC68);
  }

  return result;
}

void *sub_10004E954@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007FCE8();
  *a1 = v3;
  return result;
}

unint64_t sub_10004E9C8()
{
  result = qword_1000AEC98;
  if (!qword_1000AEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEC98);
  }

  return result;
}

void *sub_10004EA1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007FCE8();
  *a1 = v3;
  return result;
}

unint64_t sub_10004EA90()
{
  result = qword_1000AECB8;
  if (!qword_1000AECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AECB8);
  }

  return result;
}

uint64_t sub_10004EB20()
{
  v0 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000801F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1000800F8();
  sub_10000A794(v5, qword_1000B7FA0);
  sub_10000A480(v5, qword_1000B7FA0);
  sub_1000801D8();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000800E8();
}

uint64_t sub_10004EC88()
{
  v0 = sub_100002840(&qword_1000AD3C0, &unk_100089100);
  __chkstk_darwin(v0 - 8);
  v495 = &v464 - v1;
  v2 = sub_100002840(&qword_1000AD3C8, &qword_100087330);
  __chkstk_darwin(v2 - 8);
  v494 = &v464 - v3;
  v507 = sub_1000801E8();
  v505 = *(v507 - 8);
  __chkstk_darwin(v507);
  v5 = (&v464 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v491 = sub_100080478();
  v512 = *(v491 - 8);
  v6 = __chkstk_darwin(v491);
  v511 = &v464 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v464 - v8;
  v10 = sub_1000811C8();
  v497 = v10;
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v464 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v464 - v15;
  v493 = sub_1000801F8();
  v477 = *(v493 - 8);
  v478 = v493 - 8;
  v480 = v477;
  v17 = __chkstk_darwin(v493 - 8);
  v479 = &v464 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v488 = &v464 - v19;
  sub_100002840(&unk_1000AED98, &unk_100089978);
  v20 = sub_100002840(&qword_1000AEDA0, &unk_100089980);
  v490 = v20;
  v21 = *(v20 - 8);
  v482 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v468 = v23;
  *(v23 + 16) = xmmword_100089430;
  v489 = v23 + v22;
  v469 = *(v20 + 48);
  *(v23 + v22) = 0;
  sub_100081158();
  v24 = v9;
  sub_100080448();
  v25 = v11;
  v26 = *(v11 + 16);
  v503 = v11 + 16;
  v508 = v26;
  v27 = v16;
  v26(v14, v16, v10);
  v28 = v512;
  v501 = *(v512 + 16);
  v499 = v512 + 16;
  v29 = v491;
  v501(v511, v24, v491);
  v506 = type metadata accessor for BundleFinder();
  *v5 = v506;
  v504 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v30 = *(v505 + 104);
  v505 += 104;
  v502 = v30;
  v510 = v5;
  (v30)(v5);
  sub_100080208();
  v509 = *(v28 + 8);
  v31 = v29;
  v509(v24, v29);
  v512 = v28 + 8;
  v32 = *(v25 + 8);
  v33 = v497;
  v32(v27, v497);
  v500 = v32;
  v498 = v25 + 8;
  v496 = v27;
  sub_100081158();
  sub_100080448();
  v34 = v14;
  v35 = v14;
  v36 = v33;
  v508(v35, v27, v33);
  v501(v511, v24, v31);
  v37 = v510;
  v38 = v507;
  *v510 = v506;
  (v502)(v37, v504, v38);
  v39 = v494;
  sub_100080208();
  v509(v24, v31);
  v40 = v496;
  v32(v496, v36);
  v41 = v480;
  v42 = *(v480 + 56);
  v487 = v480 + 56;
  v486 = v42;
  v42(v39, 0, 1, v493);
  v481 = "Add widget view subtitle";
  v43 = v495;
  sub_10007FF08();
  v483 = sub_10007FF18();
  v44 = *(v483 - 8);
  v485 = *(v44 + 56);
  v484 = v44 + 56;
  v485(v43, 0, 1, v483);
  v473 = sub_100002840(&qword_1000AEDA8, &qword_10008B1F0);
  v478 = v477[9];
  v474 = *(v41 + 80);
  v471 = ((v474 + 32) & ~v474) + 2 * v478;
  v45 = (v474 + 32) & ~v474;
  v476 = v45;
  v46 = swift_allocObject();
  v470 = xmmword_100085A40;
  v467 = v46;
  *(v46 + 16) = xmmword_100085A40;
  *&v472 = v46 + v45;
  sub_100081158();
  sub_100080448();
  v492 = v34;
  v47 = v508;
  v508(v34, v40, v36);
  v48 = v491;
  v501(v511, v24, v491);
  v49 = v510;
  v50 = v507;
  *v510 = v506;
  (v502)(v49, v504, v50);
  v51 = v479;
  sub_100080208();
  v52 = v24;
  v509(v24, v48);
  v53 = v496;
  v54 = v500;
  v500(v496, v36);
  v55 = *(v480 + 32);
  v480 += 32;
  v477 = v55;
  v56 = v493;
  (v55)(v472, v51, v493);
  v57 = v53;
  sub_100081158();
  sub_100080448();
  v58 = v492;
  v59 = v57;
  v60 = v497;
  v47(v492, v59, v497);
  v61 = v491;
  v501(v511, v52, v491);
  v62 = v510;
  v63 = v507;
  *v510 = v506;
  (v502)(v62, v504, v63);
  v64 = v479;
  sub_100080208();
  v509(v52, v61);
  v65 = v496;
  v54(v496, v60);
  (v477)(v472 + v478, v64, v56);
  v66 = v489;
  sub_10007FF38();
  v467 = v66 + v482;
  v469 = *(v490 + 48);
  *v467 = 5;
  sub_100081158();
  v475 = v52;
  sub_100080448();
  v67 = v58;
  v508(v58, v65, v60);
  v68 = v52;
  v69 = v61;
  v70 = v501;
  v501(v511, v68, v61);
  v71 = v510;
  v73 = v506;
  v72 = v507;
  *v510 = v506;
  v74 = v502;
  (v502)(v71, v504, v72);
  sub_100080208();
  v75 = v475;
  v509(v475, v69);
  v76 = v496;
  v77 = v497;
  v500(v496, v497);
  sub_100081158();
  v78 = v75;
  sub_100080448();
  v79 = v77;
  v508(v67, v76, v77);
  v80 = v78;
  v70(v511, v78, v69);
  *v510 = v73;
  v74();
  v81 = v494;
  v82 = v492;
  sub_100080208();
  v509(v80, v69);
  v500(v76, v77);
  v486(v81, 0, 1, v493);
  v83 = v495;
  sub_10007FF08();
  v485(v83, 0, 1, v483);
  v84 = v476;
  v85 = swift_allocObject();
  v472 = xmmword_100085C00;
  *(v85 + 16) = xmmword_100085C00;
  sub_100081158();
  sub_100080448();
  v86 = v82;
  v87 = v79;
  v88 = v508;
  v508(v82, v76, v87);
  v89 = v69;
  v501(v511, v80, v69);
  v90 = v510;
  v91 = v507;
  *v510 = v506;
  v92 = v504;
  (v502)(v90, v504, v91);
  v93 = v479;
  sub_100080208();
  v94 = v80;
  v95 = v80;
  v96 = v89;
  v509(v95, v89);
  v97 = v496;
  v98 = v497;
  v500(v496, v497);
  (v477)(v85 + v84, v93, v493);
  sub_10007FF38();
  v467 = 2 * v482;
  v465 = (v489 + 2 * v482);
  v466 = *(v490 + 48);
  *v465 = 6;
  sub_100081158();
  sub_100080448();
  v99 = v86;
  v88(v86, v97, v98);
  v100 = v96;
  v101 = v96;
  v102 = v501;
  v501(v511, v94, v101);
  v103 = v510;
  v104 = v507;
  *v510 = v506;
  v105 = v92;
  v106 = v502;
  (v502)(v103, v105, v104);
  v107 = v99;
  sub_100080208();
  v509(v94, v100);
  v108 = v496;
  v109 = v497;
  v500(v496, v497);
  sub_100081158();
  sub_100080448();
  v508(v107, v108, v109);
  v110 = v100;
  v102(v511, v94, v100);
  v111 = v506;
  v112 = v507;
  v113 = v510;
  *v510 = v506;
  (v106)(v113, v504, v112);
  v114 = v494;
  sub_100080208();
  v509(v94, v110);
  v115 = v496;
  v116 = v497;
  v500(v496, v497);
  v117 = v493;
  v486(v114, 0, 1, v493);
  v118 = v495;
  sub_10007FF08();
  v485(v118, 0, 1, v483);
  v119 = swift_allocObject();
  v464 = v119;
  *(v119 + 16) = v470;
  v469 = v119 + v476;
  sub_100081158();
  sub_100080448();
  v120 = v115;
  v121 = v116;
  v122 = v116;
  v123 = v508;
  v508(v492, v120, v121);
  v124 = v491;
  v501(v511, v94, v491);
  v125 = v510;
  *v510 = v111;
  v126 = v112;
  v127 = v502;
  (v502)(v125, v504, v126);
  v128 = v479;
  sub_100080208();
  v509(v94, v124);
  v129 = v496;
  v130 = v500;
  v500(v496, v122);
  v131 = v117;
  v132 = v477;
  (v477)(v469, v128, v131);
  v133 = v129;
  sub_100081158();
  v134 = v94;
  sub_100080448();
  v135 = v492;
  v123(v492, v133, v122);
  v501(v511, v134, v124);
  v136 = v510;
  v137 = v507;
  *v510 = v506;
  (v127)(v136, v504, v137);
  v138 = v479;
  sub_100080208();
  v509(v134, v124);
  v139 = v496;
  v130(v496, v122);
  v132(v469 + v478, v138, v493);
  sub_10007FF38();
  v467 += v489 + v482;
  v469 = *(v490 + 48);
  *v467 = 7;
  sub_100081158();
  sub_100080448();
  v140 = v122;
  v141 = v508;
  v508(v135, v139, v122);
  v142 = v124;
  v143 = v124;
  v144 = v501;
  v501(v511, v134, v142);
  v145 = v510;
  v147 = v506;
  v146 = v507;
  *v510 = v506;
  (v502)(v145, v504, v146);
  sub_100080208();
  v148 = v475;
  v509(v475, v143);
  v149 = v496;
  v150 = v140;
  v500(v496, v140);
  sub_100081158();
  sub_100080448();
  v151 = v492;
  v141(v492, v149, v150);
  v152 = v511;
  v153 = v148;
  v154 = v491;
  v144(v511, v153, v491);
  *v145 = v147;
  v155 = v504;
  (v502)(v145, v504, v146);
  v156 = v494;
  v157 = v151;
  v158 = v152;
  sub_100080208();
  v159 = v475;
  v509(v475, v154);
  v160 = v497;
  v500(v149, v497);
  v486(v156, 0, 1, v493);
  v161 = v495;
  sub_10007FF08();
  v485(v161, 0, 1, v483);
  sub_10007FF48();
  v469 = 4 * v482;
  v466 = v489 + 4 * v482;
  v467 = *(v490 + 48);
  *v466 = 8;
  sub_100081158();
  sub_100080448();
  v508(v157, v149, v160);
  v162 = v491;
  v501(v158, v159, v491);
  v163 = v510;
  v164 = v507;
  *v510 = v506;
  v165 = v502;
  (v502)(v163, v155, v164);
  sub_100080208();
  v509(v159, v162);
  v166 = v496;
  v167 = v497;
  v168 = v500;
  v500(v496, v497);
  sub_100081158();
  sub_100080448();
  v508(v492, v166, v167);
  v169 = v491;
  v501(v511, v159, v491);
  v170 = v507;
  *v163 = v506;
  (v165)(v163, v504, v170);
  v171 = v494;
  sub_100080208();
  v172 = v159;
  v509(v159, v169);
  v173 = v496;
  v174 = v497;
  v168(v496, v497);
  v486(v171, 0, 1, v493);
  v175 = v495;
  sub_10007FF08();
  v485(v175, 0, 1, v483);
  sub_10007FF48();
  v467 = v489 + v469 + v482;
  v469 = *(v490 + 48);
  *v467 = 9;
  sub_100081158();
  sub_100080448();
  v508(v492, v173, v174);
  v176 = v501;
  v501(v511, v172, v169);
  v177 = v510;
  v178 = v507;
  *v510 = v506;
  v179 = v504;
  (v502)(v177, v504, v178);
  sub_100080208();
  v180 = v509;
  v509(v172, v169);
  v181 = v496;
  v182 = v497;
  v183 = v500;
  v500(v496, v497);
  sub_100081158();
  sub_100080448();
  v184 = v492;
  v508(v492, v181, v182);
  v185 = v491;
  v176(v511, v172, v491);
  v186 = v510;
  v187 = v507;
  *v510 = v506;
  (v502)(v186, v179, v187);
  v188 = v494;
  v189 = v184;
  sub_100080208();
  v180(v172, v185);
  v190 = v496;
  v191 = v497;
  v183(v496, v497);
  v486(v188, 0, 1, v493);
  v192 = v495;
  sub_10007FF08();
  v485(v192, 0, 1, v483);
  sub_10007FF48();
  v467 = v489 + 6 * v482;
  v469 = *(v490 + 48);
  *v467 = 10;
  sub_100081158();
  sub_100080448();
  v193 = v189;
  v508(v189, v190, v191);
  v501(v511, v172, v185);
  v194 = v510;
  v195 = v507;
  *v510 = v506;
  v196 = v504;
  (v502)(v194, v504, v195);
  v197 = v193;
  sub_100080208();
  v198 = v491;
  v509(v172, v491);
  v199 = v496;
  v200 = v191;
  v201 = v500;
  v500(v496, v191);
  sub_100081158();
  v202 = v475;
  sub_100080448();
  v508(v197, v199, v200);
  v203 = v511;
  v204 = v202;
  v205 = v198;
  v501(v511, v204, v198);
  v206 = v510;
  *v510 = v506;
  (v502)(v206, v196, v195);
  v207 = v494;
  v208 = v197;
  v209 = v203;
  sub_100080208();
  v210 = v475;
  v509(v475, v205);
  v211 = v496;
  v201(v496, v200);
  v486(v207, 0, 1, v493);
  v212 = v495;
  sub_10007FF08();
  v485(v212, 0, 1, v483);
  sub_10007FF48();
  v469 = 8 * v482;
  v466 = v489 + 7 * v482;
  v467 = *(v490 + 48);
  *v466 = 11;
  sub_100081158();
  sub_100080448();
  v508(v208, v211, v200);
  v213 = v210;
  v214 = v491;
  v501(v209, v210, v491);
  v216 = v506;
  v215 = v507;
  v217 = v510;
  *v510 = v506;
  (v502)(v217, v504, v215);
  sub_100080208();
  v218 = v509;
  v509(v213, v214);
  v219 = v497;
  v220 = v500;
  v500(v211, v497);
  sub_100081158();
  sub_100080448();
  v508(v208, v211, v219);
  v221 = v491;
  v501(v511, v213, v491);
  *v510 = v216;
  v222 = v502;
  v502();
  v223 = v494;
  v224 = v492;
  sub_100080208();
  v225 = v213;
  v226 = v213;
  v227 = v221;
  v218(v226, v221);
  v228 = v496;
  v229 = v497;
  v220(v496, v497);
  v486(v223, 0, 1, v493);
  v230 = v495;
  sub_10007FF08();
  v485(v230, 0, 1, v483);
  v231 = v476;
  v232 = swift_allocObject();
  *(v232 + 16) = v472;
  sub_100081158();
  sub_100080448();
  v508(v224, v228, v229);
  v233 = v225;
  v501(v511, v225, v227);
  v234 = v510;
  v235 = v507;
  *v510 = v506;
  (v222)(v234, v504, v235);
  v236 = v479;
  sub_100080208();
  v237 = v233;
  v509(v233, v227);
  v238 = v496;
  v239 = v497;
  v500(v496, v497);
  (v477)(v232 + v231, v236, v493);
  sub_10007FF38();
  v466 = v489 + v469;
  v467 = *(v490 + 48);
  *v466 = 12;
  sub_100081158();
  sub_100080448();
  v508(v224, v238, v239);
  v240 = v491;
  v501(v511, v237, v491);
  v241 = v510;
  v242 = v507;
  *v510 = v506;
  v243 = v504;
  (v502)(v241, v504, v242);
  sub_100080208();
  v509(v237, v240);
  v244 = v496;
  v245 = v497;
  v500(v496, v497);
  sub_100081158();
  sub_100080448();
  v246 = v492;
  v508(v492, v244, v245);
  v247 = v491;
  v501(v511, v237, v491);
  v248 = v510;
  *v510 = v506;
  (v502)(v248, v243, v242);
  v249 = v494;
  sub_100080208();
  v250 = v475;
  v509(v475, v247);
  v251 = v497;
  v500(v244, v497);
  v486(v249, 0, 1, v493);
  v252 = v495;
  sub_10007FF08();
  v485(v252, 0, 1, v483);
  sub_10007FF48();
  v467 = v489 + v469 + v482;
  v469 = *(v490 + 48);
  *v467 = 13;
  sub_100081158();
  sub_100080448();
  v253 = v244;
  v508(v246, v244, v251);
  v254 = v491;
  v501(v511, v250, v491);
  v255 = v510;
  v256 = v507;
  *v510 = v506;
  (v502)(v255, v504, v256);
  sub_100080208();
  v257 = v509;
  v509(v250, v254);
  v258 = v500;
  v500(v253, v251);
  sub_100081158();
  sub_100080448();
  v508(v492, v253, v251);
  v501(v511, v250, v254);
  v259 = v510;
  v260 = v507;
  *v510 = v506;
  (v502)(v259, v504, v260);
  v261 = v494;
  sub_100080208();
  v257(v250, v254);
  v262 = v496;
  v263 = v497;
  v258(v496, v497);
  v486(v261, 0, 1, v493);
  v264 = v495;
  sub_10007FF08();
  v485(v264, 0, 1, v483);
  v265 = swift_allocObject();
  v471 = v265;
  *(v265 + 16) = v470;
  v266 = v265 + v476;
  *&v470 = v265 + v476;
  sub_100081158();
  sub_100080448();
  v508(v492, v262, v263);
  v267 = v491;
  v501(v511, v250, v491);
  v268 = v510;
  v269 = v507;
  *v510 = v506;
  (v502)(v268, v504, v269);
  v270 = v479;
  sub_100080208();
  v509(v250, v267);
  v271 = v497;
  v500(v262, v497);
  v272 = v266;
  v273 = v270;
  v274 = v493;
  v275 = v477;
  (v477)(v272, v273, v493);
  sub_100081158();
  sub_100080448();
  v508(v492, v262, v271);
  v276 = v491;
  v501(v511, v250, v491);
  v277 = v510;
  v278 = v507;
  *v510 = v506;
  (v502)(v277, v504, v278);
  v279 = v479;
  sub_100080208();
  v280 = v475;
  v509(v475, v276);
  v281 = v496;
  v282 = v497;
  v500(v496, v497);
  v275(v470 + v478, v279, v274);
  sub_10007FF38();
  *&v470 = v489 + 10 * v482;
  v471 = *(v490 + 48);
  *v470 = 14;
  sub_100081158();
  v283 = v280;
  sub_100080448();
  v284 = v282;
  v508(v492, v281, v282);
  v285 = v511;
  v286 = v501;
  v501(v511, v280, v276);
  v287 = v510;
  v288 = v507;
  *v510 = v506;
  (v502)(v287, v504, v288);
  sub_100080208();
  v509(v280, v276);
  v289 = v496;
  v500(v496, v284);
  sub_100081158();
  sub_100080448();
  v508(v492, v289, v284);
  v290 = v491;
  v286(v285, v280, v491);
  *v287 = v506;
  (v502)(v287, v504, v288);
  v291 = v494;
  sub_100080208();
  v292 = v290;
  v509(v280, v290);
  v293 = v289;
  v294 = v289;
  v295 = v497;
  v500(v294, v497);
  v296 = v493;
  v486(v291, 0, 1, v493);
  v297 = v495;
  sub_10007FF08();
  v485(v297, 0, 1, v483);
  v298 = v476;
  v299 = swift_allocObject();
  *(v299 + 16) = v472;
  sub_100081158();
  sub_100080448();
  v508(v492, v293, v295);
  v300 = v501;
  v501(v511, v280, v292);
  v301 = v510;
  v302 = v507;
  *v510 = v506;
  (v502)(v301, v504, v302);
  v303 = v479;
  sub_100080208();
  v304 = v292;
  v509(v283, v292);
  v305 = v496;
  v306 = v497;
  v500(v496, v497);
  (v477)(v299 + v298, v303, v296);
  sub_10007FF38();
  *&v470 = v489 + 11 * v482;
  v471 = *(v490 + 48);
  *v470 = 15;
  sub_100081158();
  sub_100080448();
  v508(v492, v305, v306);
  v300(v511, v283, v292);
  v307 = v510;
  v308 = v507;
  *v510 = v506;
  v309 = v502;
  (v502)(v307, v504, v308);
  sub_100080208();
  v310 = v283;
  v311 = v509;
  v509(v283, v304);
  v312 = v496;
  v313 = v497;
  v500(v496, v497);
  sub_100081158();
  sub_100080448();
  v314 = v492;
  v508(v492, v312, v313);
  v315 = v491;
  v501(v511, v283, v491);
  v316 = v510;
  v317 = v507;
  *v510 = v506;
  (v309)(v316, v504, v317);
  v318 = v494;
  v319 = v316;
  sub_100080208();
  v320 = v310;
  v321 = v310;
  v322 = v315;
  v311(v320, v315);
  v323 = v497;
  v500(v312, v497);
  v486(v318, 0, 1, v493);
  v324 = v495;
  sub_10007FF08();
  v485(v324, 0, 1, v483);
  sub_10007FF48();
  *&v470 = v489 + 12 * v482;
  v471 = *(v490 + 48);
  *v470 = 16;
  sub_100081158();
  sub_100080448();
  v508(v314, v312, v323);
  v325 = v321;
  v326 = v501;
  v501(v511, v321, v322);
  v328 = v506;
  v327 = v507;
  *v319 = v506;
  v329 = v502;
  (v502)(v319, v504, v327);
  sub_100080208();
  v330 = v509;
  v509(v325, v322);
  v331 = v496;
  v332 = v497;
  v500(v496, v497);
  sub_100081158();
  sub_100080448();
  v508(v492, v331, v332);
  v333 = v491;
  v326(v511, v325, v491);
  v334 = v510;
  *v510 = v328;
  (v329)(v334, v504, v507);
  v335 = v494;
  sub_100080208();
  v330(v325, v333);
  v336 = v496;
  v337 = v497;
  v500(v496, v497);
  v486(v335, 0, 1, v493);
  v338 = v495;
  sub_10007FF08();
  v485(v338, 0, 1, v483);
  sub_10007FF48();
  *&v470 = v489 + 13 * v482;
  v471 = *(v490 + 48);
  *v470 = 1;
  sub_100081158();
  sub_100080448();
  v339 = v508;
  v508(v492, v336, v337);
  v340 = v511;
  v341 = v325;
  v501(v511, v325, v333);
  v342 = v510;
  v343 = v507;
  *v510 = v506;
  (v502)(v342, v504, v343);
  sub_100080208();
  v344 = v509;
  v509(v341, v333);
  v345 = v497;
  v500(v336, v497);
  sub_100081158();
  sub_100080448();
  v339(v492, v336, v345);
  v346 = v491;
  v501(v340, v341, v491);
  v347 = v510;
  v348 = v507;
  *v510 = v506;
  v349 = v504;
  (v502)(v347, v504, v348);
  v350 = v494;
  sub_100080208();
  v344(v341, v346);
  v351 = v496;
  v352 = v497;
  v500(v496, v497);
  v486(v350, 0, 1, v493);
  v353 = v495;
  sub_10007FEF8();
  v485(v353, 0, 1, v483);
  v354 = v476;
  v355 = swift_allocObject();
  *(v355 + 16) = v472;
  sub_100081158();
  sub_100080448();
  v356 = v492;
  v357 = v351;
  v358 = v352;
  v339(v492, v357, v352);
  v359 = v491;
  v501(v511, v341, v491);
  v360 = v510;
  *v510 = v506;
  v361 = v349;
  v362 = v507;
  (v502)(v360, v361, v507);
  v363 = v479;
  sub_100080208();
  v364 = v359;
  v509(v341, v359);
  v365 = v496;
  v500(v496, v358);
  (v477)(v355 + v354, v363, v493);
  sub_10007FF38();
  *&v470 = v489 + 14 * v482;
  v471 = *(v490 + 48);
  *v470 = 2;
  v366 = v365;
  sub_100081158();
  sub_100080448();
  v508(v356, v365, v358);
  v367 = v341;
  v501(v511, v341, v364);
  v368 = v510;
  *v510 = v506;
  v369 = v502;
  (v502)(v368, v504, v362);
  sub_100080208();
  v509(v367, v364);
  v370 = v497;
  v371 = v500;
  v500(v365, v497);
  sub_100081158();
  sub_100080448();
  v372 = v492;
  v508(v492, v366, v370);
  v373 = v367;
  v374 = v364;
  v501(v511, v373, v364);
  v375 = v510;
  v376 = v507;
  *v510 = v506;
  (v369)(v375, v504, v376);
  v377 = v494;
  sub_100080208();
  v378 = v475;
  v379 = v374;
  v509(v475, v374);
  v380 = v496;
  v381 = v497;
  v371(v496, v497);
  v486(v377, 0, 1, v493);
  v382 = v495;
  sub_10007FEF8();
  v485(v382, 0, 1, v483);
  v383 = v476;
  v384 = swift_allocObject();
  *(v384 + 16) = v472;
  sub_100081158();
  sub_100080448();
  v508(v372, v380, v381);
  v385 = v501;
  v501(v511, v378, v379);
  v387 = v506;
  v386 = v507;
  *v375 = v506;
  (v502)(v375, v504, v386);
  v388 = v479;
  sub_100080208();
  v509(v378, v379);
  v389 = v496;
  v390 = v497;
  v500(v496, v497);
  (v477)(v384 + v383, v388, v493);
  sub_10007FF38();
  v471 = 16 * v482;
  v469 = v489 + 15 * v482;
  *&v470 = *(v490 + 48);
  *v469 = 3;
  sub_100081158();
  sub_100080448();
  v508(v372, v389, v390);
  v391 = v491;
  v385(v511, v378, v491);
  v392 = v510;
  *v510 = v387;
  v393 = v504;
  (v502)(v392, v504, v507);
  sub_100080208();
  v509(v378, v391);
  v394 = v496;
  v395 = v497;
  v396 = v500;
  v500(v496, v497);
  sub_100081158();
  sub_100080448();
  v397 = v492;
  v508(v492, v394, v395);
  v398 = v511;
  v399 = v491;
  v501(v511, v378, v491);
  v400 = v510;
  v401 = v507;
  *v510 = v506;
  (v502)(v400, v393, v401);
  v402 = v494;
  sub_100080208();
  v403 = v475;
  v509(v475, v399);
  v404 = v497;
  v396(v394, v497);
  v486(v402, 0, 1, v493);
  v405 = v495;
  sub_10007FEF8();
  v485(v405, 0, 1, v483);
  v406 = swift_allocObject();
  *(v406 + 16) = v472;
  sub_100081158();
  sub_100080448();
  v508(v397, v394, v404);
  v407 = v398;
  v408 = v403;
  v409 = v491;
  v501(v407, v403, v491);
  v410 = v510;
  v411 = v507;
  *v510 = v506;
  (v502)(v410, v504, v411);
  v412 = v479;
  sub_100080208();
  v509(v408, v409);
  v500(v394, v404);
  (v477)(v406 + v476, v412, v493);
  sub_10007FF38();
  v479 = (v489 + v471);
  v480 = *(v490 + 48);
  *v479 = 4;
  sub_100081158();
  sub_100080448();
  v413 = v508;
  v508(v492, v394, v404);
  v414 = v501;
  v501(v511, v408, v409);
  v415 = v510;
  v416 = v507;
  *v510 = v506;
  (v502)(v415, v504, v416);
  sub_100080208();
  v417 = v509;
  v509(v408, v409);
  v418 = v496;
  v419 = v497;
  v500(v496, v497);
  sub_100081158();
  v420 = v408;
  sub_100080448();
  v421 = v419;
  v413(v492, v418, v419);
  v422 = v420;
  v423 = v491;
  v414(v511, v420, v491);
  v425 = v506;
  v424 = v507;
  v426 = v510;
  *v510 = v506;
  (v502)(v426, v504, v424);
  v427 = v494;
  sub_100080208();
  v428 = v422;
  v429 = v423;
  v417(v422, v423);
  v430 = v496;
  v500(v496, v421);
  v486(v427, 0, 1, v493);
  v431 = v495;
  sub_10007FF08();
  v485(v431, 0, 1, v483);
  sub_10007FF48();
  v479 = (v489 + v471 + v482);
  v480 = *(v490 + 48);
  *v479 = 17;
  sub_100081158();
  v432 = v428;
  sub_100080448();
  v433 = v492;
  v508(v492, v430, v421);
  v434 = v428;
  v435 = v501;
  v501(v511, v434, v429);
  v436 = v510;
  *v510 = v425;
  v437 = v502;
  (v502)(v436, v504, v507);
  v438 = v433;
  sub_100080208();
  v509(v432, v429);
  v439 = v496;
  v440 = v497;
  v500(v496, v497);
  sub_100081158();
  sub_100080448();
  v508(v433, v439, v440);
  v441 = v432;
  v435(v511, v432, v429);
  v442 = v510;
  v443 = v507;
  *v510 = v506;
  (v437)(v442, v504, v443);
  v444 = v494;
  sub_100080208();
  v445 = v429;
  v509(v441, v429);
  v446 = v496;
  v447 = v497;
  v500(v496, v497);
  v486(v444, 0, 1, v493);
  v448 = v495;
  sub_10007FF08();
  v485(v448, 0, 1, v483);
  sub_10007FF48();
  v480 = v489 + 18 * v482;
  v482 = *(v490 + 48);
  *v480 = 18;
  v449 = v446;
  sub_100081158();
  sub_100080448();
  v450 = v447;
  v508(v433, v446, v447);
  v451 = v511;
  v452 = v441;
  v453 = v441;
  v454 = v445;
  v501(v511, v452, v445);
  v455 = v510;
  v456 = v507;
  *v510 = v506;
  v457 = v504;
  v458 = v502;
  (v502)(v455, v504, v456);
  sub_100080208();
  v509(v453, v454);
  v500(v449, v450);
  sub_100081158();
  sub_100080448();
  v508(v438, v449, v450);
  v501(v451, v453, v454);
  v459 = v507;
  *v455 = v506;
  (v458)(v455, v457, v459);
  v460 = v494;
  sub_100080208();
  v509(v453, v454);
  v500(v449, v497);
  v486(v460, 0, 1, v493);
  v461 = v495;
  sub_10007FF08();
  v485(v461, 0, 1, v483);
  sub_10007FF48();
  v462 = sub_100067D64(v468);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1000B7FB8 = v462;
  return result;
}

uint64_t sub_100053FF0()
{
  v0 = sub_100002840(&qword_1000AEDB0, &qword_100089990);
  sub_10000A794(v0, qword_1000B7FC0);
  sub_10000A480(v0, qword_1000B7FC0);
  sub_100002840(&qword_1000AEDB8, &qword_100089998);
  v1 = *(sub_100002840(&qword_1000AEDC0, qword_1000899A0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100089430;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_100054A44();
  sub_10007FF68();
  *(v5 + v2) = 1;
  sub_10007FF68();
  *(v5 + 2 * v2) = 2;
  sub_10007FF68();
  *(v5 + 3 * v2) = 3;
  sub_10007FF68();
  *(v5 + 4 * v2) = 4;
  sub_10007FF68();
  *(v5 + 5 * v2) = 5;
  sub_10007FF68();
  *(v5 + 6 * v2) = 6;
  sub_10007FF68();
  *(v5 + 7 * v2) = 7;
  sub_10007FF68();
  *(v5 + 8 * v2) = 8;
  sub_10007FF68();
  *(v5 + 9 * v2) = 11;
  sub_10007FF68();
  *(v5 + 10 * v2) = 12;
  sub_10007FF68();
  *(v5 + 11 * v2) = 13;
  sub_10007FF68();
  *(v5 + 12 * v2) = 14;
  sub_10007FF68();
  *(v5 + 13 * v2) = 15;
  sub_10007FF68();
  *(v5 + 14 * v2) = 16;
  sub_10007FF68();
  *(v5 + 15 * v2) = 9;
  sub_10007FF68();
  *(v5 + 16 * v2) = 10;
  sub_10007FF68();
  *(v5 + 17 * v2) = 17;
  sub_10007FF68();
  *(v5 + 18 * v2) = 18;
  sub_10007FF68();
  sub_100067F4C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_10007FF78();
}

unint64_t sub_100054574(char a1)
{
  result = 1953460082;
  switch(a1)
  {
    case 1:
      result = 0x6D49747265766E69;
      break;
    case 2:
      result = 0x654C6E4F756E656DLL;
      break;
    case 3:
      result = 0x47676E6964616572;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 15:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x676E69636E7973;
      break;
    case 7:
      result = 0x6E69686372616573;
      break;
    case 8:
      result = 0x6F6F626F69647561;
      break;
    case 9:
      result = 0x77726F4670696B73;
      break;
    case 10:
      result = 0x6B63614270696B73;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x79636176697270;
      break;
    case 13:
      result = 1701670760;
      break;
    case 14:
      result = 0x74616E6568707968;
      break;
    case 16:
      result = 0x726F74536B6F6F62;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x6564497465736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000547EC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100054574(*a1);
  v5 = v4;
  if (v3 == sub_100054574(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100081618();
  }

  return v8 & 1;
}

unint64_t sub_100054878()
{
  result = qword_1000AECE8;
  if (!qword_1000AECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AECE8);
  }

  return result;
}

Swift::Int sub_1000548CC()
{
  v1 = *v0;
  sub_1000816B8();
  sub_100054574(v1);
  sub_100081298();

  return sub_1000816F8();
}

uint64_t sub_100054930(uint64_t a1)
{
  sub_100054574(*v1);
  sub_100081298();
}