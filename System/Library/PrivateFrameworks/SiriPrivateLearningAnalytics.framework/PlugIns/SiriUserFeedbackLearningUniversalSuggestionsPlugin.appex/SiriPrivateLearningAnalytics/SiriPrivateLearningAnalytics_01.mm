id *sub_10001B4D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v102 = a1;
  v100 = a3;
  v101 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  __chkstk_darwin(v101);
  v98 = &v94 - v4;
  v5 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v94 - v10;
  __chkstk_darwin(v9);
  v13 = &v94 - v12;
  v14 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v97 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v96 = &v94 - v19;
  __chkstk_darwin(v18);
  v21 = &v94 - v20;
  sub_10000ED84(a2, v13, &qword_100034E28, &qword_100029570);
  v22 = *(v15 + 48);
  v99 = v14;
  if ((v22)(v13, 1, v14) == 1)
  {
    sub_10000EDEC(v13, &qword_100034E28, &qword_100029570);
    goto LABEL_18;
  }

  sub_10001FB2C(v13, v21, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  if ((sub_100020BA0(v102, v21) & 1) == 0)
  {
    sub_10001FAA8(v21, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
LABEL_18:
    if (qword_100034AF8 != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_19;
  }

  v23 = *(v99 + 36);
  v98 = v21;
  v22 = *&v21[v23];
  v95 = v22 >> 62;
  v101 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    a2 = sub_1000288CC();
  }

  else
  {
    a2 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v102 = v22 & 0xC000000000000001;
  v8 = &off_100031168;
  while (1)
  {
    if (a2 == v11)
    {
      if (qword_100034AF8 != -1)
      {
        swift_once();
      }

      v51 = sub_10002858C();
      sub_10000AEF4(v51, qword_100035430);
      v53 = v97;
      v52 = v98;
      sub_10001FA40(v98, v97, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v54 = sub_10002856C();
      v55 = sub_10002875C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v103[0] = v57;
        *v56 = 136315138;
        sub_100027DAC();
        sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = sub_1000288EC();
        v60 = v59;
        sub_10001FAA8(v53, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v61 = sub_100027364(v58, v60, v103);

        *(v56 + 4) = v61;
        v62 = "The next turn does not match a ControlHome task for a disambiguation cancel; requestId=%s";
LABEL_51:
        _os_log_impl(&_mh_execute_header, v54, v55, v62, v56, 0xCu);
        sub_100001EB8(v57);

        v92 = v52;
LABEL_54:
        sub_10001FAA8(v92, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v93 = v100;
        v48 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
        v49 = *(*(v48 - 8) + 56);
        v50 = v93;
        return v49(v50, 1, 1, v48);
      }

      v64 = v53;
LABEL_53:
      sub_10001FAA8(v64, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v92 = v52;
      goto LABEL_54;
    }

    if (v102)
    {
      v30 = sub_10002883C();
    }

    else
    {
      if (v11 >= *(v101 + 16))
      {
        goto LABEL_57;
      }

      v30 = *(v22 + 8 * v11 + 32);
    }

    v31 = v30;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v28 = [v30 currentTaskName];
    if (v28)
    {
      v24 = v28;
      v25 = sub_10002860C();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v103[0] = v25;
    v103[1] = v27;
    __chkstk_darwin(v28);
    *(&v94 - 2) = v103;
    v29 = sub_100016080(sub_1000226EC, (&v94 - 4), &off_100031168);

    sub_100001DBC(&qword_100035520, &qword_100029A88);
    swift_arrayDestroy();

    ++v11;
    if (v29)
    {
      if (v95)
      {
        v63 = sub_1000288CC();
      }

      else
      {
        v63 = *(v101 + 16);
      }

      v65 = v96;
      v66 = _swiftEmptyArrayStorage;
      if (v63)
      {
        v103[0] = _swiftEmptyArrayStorage;
        result = sub_10001EA0C(0, v63 & ~(v63 >> 63), 0);
        if (v63 < 0)
        {
          __break(1u);
          return result;
        }

        v68 = 0;
        v66 = v103[0];
        do
        {
          if (v102)
          {
            v69 = sub_10002883C();
          }

          else
          {
            v69 = *(v22 + 8 * v68 + 32);
          }

          v70 = v69;
          v71 = [v69 flowStateType];

          v103[0] = v66;
          v73 = v66[2];
          v72 = v66[3];
          if (v73 >= v72 >> 1)
          {
            sub_10001EA0C((v72 > 1), (v73 + 1), 1);
            v66 = v103[0];
          }

          ++v68;
          v66[2] = v73 + 1;
          *(v66 + v73 + 8) = v71;
        }

        while (v63 != v68);
      }

      v74 = sub_10001FC2C(v66);

      v75 = sub_10001FC2C(&off_1000311A8);
      v76 = sub_10001FC2C(&off_1000311D0);
      v77 = sub_1000206D8(v76);

      v78 = sub_10001FC2C(&off_1000311F8);
      v79 = sub_10001C854(v78, v77);
      LOBYTE(v77) = sub_1000189B0(v74, v75);

      v52 = v98;
      if (v77)
      {
        v80 = sub_100018B24(v74, v79);

        if (v80)
        {
          v81 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
          v82 = *(v81 + 20);
          v83 = *(v99 + 20);
          v84 = sub_100027DAC();
          v85 = *(v84 - 8);
          v86 = v100;
          (*(v85 + 16))(&v100[v82], v52 + v83, v84);
          sub_10001FAA8(v52, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
          (*(v85 + 56))(&v86[v82], 0, 1, v84);
          *v86 = 1;
          return (*(*(v81 - 8) + 56))(v86, 0, 1, v81);
        }
      }

      else
      {
      }

      if (qword_100034AF8 != -1)
      {
        swift_once();
      }

      v87 = sub_10002858C();
      sub_10000AEF4(v87, qword_100035430);
      sub_10001FA40(v52, v65, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v54 = sub_10002856C();
      v55 = sub_10002875C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v103[0] = v57;
        *v56 = 136315138;
        sub_100027DAC();
        sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v88 = sub_1000288EC();
        v90 = v89;
        sub_10001FAA8(v65, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
        v91 = sub_100027364(v88, v90, v103);

        *(v56 + 4) = v91;
        v62 = "The next turn flow states do not match flow states for a disambiguation cancel; requestId=%s)";
        goto LABEL_51;
      }

      v64 = v65;
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  swift_once();
LABEL_19:
  v32 = sub_10002858C();
  sub_10000AEF4(v32, qword_100035430);
  sub_10000ED84(a2, v11, &qword_100034E28, &qword_100029570);
  v33 = sub_10002856C();
  v34 = sub_10002875C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v103[0] = v36;
    *v35 = 136315138;
    sub_10000ED84(v11, v8, &qword_100034E28, &qword_100029570);
    v37 = v99;
    if ((v22)(v8, 1, v99) == 1)
    {
      sub_10000EDEC(v8, &qword_100034E28, &qword_100029570);
      v38 = sub_100027DAC();
      (*(*(v38 - 8) + 56))(v98, 1, 1, v38);
    }

    else
    {
      v39 = *(v37 + 20);
      v40 = sub_100027DAC();
      v41 = *(v40 - 8);
      v42 = &v8[v39];
      v43 = v98;
      (*(v41 + 16))(v98, v42, v40);
      sub_10001FAA8(v8, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      (*(v41 + 56))(v43, 0, 1, v40);
    }

    v44 = sub_10002861C();
    v46 = v45;
    sub_10000EDEC(v11, &qword_100034E28, &qword_100029570);
    v47 = sub_100027364(v44, v46, v103);

    *(v35 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v33, v34, "The next turn is outside the response window for a disambiguation cancel; requestId=%s", v35, 0xCu);
    sub_100001EB8(v36);
  }

  else
  {

    sub_10000EDEC(v11, &qword_100034E28, &qword_100029570);
  }

  v48 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
  v49 = *(*(v48 - 8) + 56);
  v50 = v100;
  return v49(v50, 1, 1, v48);
}

uint64_t sub_10001C21C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - v9;
  v11 = (a1 + *(v8 + 44));
  if ((v11[1] & 1) == 0)
  {
    v21 = *v11;
    sub_1000281CC();
    v22 = sub_10002819C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v50 = a2;
      v51 = v22;
      v52 = _swiftEmptyArrayStorage;
      sub_10001EA2C(0, v23, 0);
      v24 = v51;
      v25 = v52;
      v26 = v52[2];
      v27 = 32;
      do
      {
        v28 = *(v24 + v27);
        v52 = v25;
        v29 = v25[3];
        if (v26 >= v29 >> 1)
        {
          sub_10001EA2C((v29 > 1), (v26 + 1), 1);
          v24 = v51;
          v25 = v52;
        }

        v25[2] = v26 + 1;
        *(v25 + v26 + 8) = v28;
        v27 += 4;
        ++v26;
        --v23;
      }

      while (v23);

      a2 = v50;
    }

    else
    {

      v25 = _swiftEmptyArrayStorage;
    }

    v31 = v25[2];
    v32 = 32;
    while (v31)
    {
      v33 = *(v25 + v32);
      v32 += 4;
      --v31;
      if (v33 == v21)
      {

        v34 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
        v35 = *(v34 + 20);
        v36 = sub_100027DAC();
        (*(*(v36 - 8) + 56))(&a2[v35], 1, 1, v36);
        *a2 = 2;
        v37 = *(*(v34 - 8) + 56);

        return v37(a2, 0, 1, v34);
      }
    }

    if (qword_100034AF8 != -1)
    {
      swift_once();
    }

    v39 = sub_10002858C();
    sub_10000AEF4(v39, qword_100035430);
    sub_10001FA40(a1, v10, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v40 = sub_10002856C();
    v41 = sub_10002875C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52 = v43;
      *v42 = 136315138;
      sub_100027DAC();
      sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = sub_1000288EC();
      v46 = v45;
      sub_10001FAA8(v10, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      v47 = sub_100027364(v44, v46, &v52);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "The dismissal reason does not match user dismissal reasons; requestId=%s", v42, 0xCu);
      sub_100001EB8(v43);

      goto LABEL_26;
    }

    v30 = v10;
    goto LABEL_25;
  }

  if (qword_100034AF8 != -1)
  {
    swift_once();
  }

  v12 = sub_10002858C();
  sub_10000AEF4(v12, qword_100035430);
  sub_10001FA40(a1, v7, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v13 = sub_10002856C();
  v14 = sub_10002875C();
  if (!os_log_type_enabled(v13, v14))
  {

    v30 = v7;
LABEL_25:
    sub_10001FAA8(v30, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    goto LABEL_26;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v52 = v16;
  *v15 = 136315138;
  sub_100027DAC();
  sub_100020F24(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17 = sub_1000288EC();
  v19 = v18;
  sub_10001FAA8(v7, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v20 = sub_100027364(v17, v19, &v52);

  *(v15 + 4) = v20;
  _os_log_impl(&_mh_execute_header, v13, v14, "The dismissal reason could not be extracted for a disambguation abandonment; requestId=%s", v15, 0xCu);
  sub_100001EB8(v16);

LABEL_26:
  v48 = type metadata accessor for UniversalSuggestionsDisambiguationResponseExtractor.DisambiguationResponse(0);
  return (*(*(v48 - 8) + 56))(a2, 1, 1, v48);
}

uint64_t sub_10001C854(uint64_t result, uint64_t a2)
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
  for (i = (v5 + 63) >> 6; v7; result = sub_10001CC60(v11, *(*(v2 + 48) + ((v9 << 8) | (4 * v10)))))
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

uint64_t sub_10001C934()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100035430);
  v1 = sub_10000AEF4(v0, qword_100035430);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10001CA3C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10001CAB0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10001CAE0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10001CB10(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10002894C();
  sub_10002862C();
  v8 = sub_10002897C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10002890C() & 1) != 0)
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

    sub_10001D844(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10001CC60(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_10002894C();
  sub_10002896C(a2);
  v6 = sub_10002897C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10001D9C4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10001CD58(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100020F24(&qword_100035578, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = sub_1000285CC();
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
      sub_100020F24(&qword_100035580, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_1000285EC();
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
    sub_10001DB20(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10001D038(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001DBC(&qword_100035568, &qword_100029AE8);
  result = sub_1000287FC();
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
      sub_10002894C();
      sub_10002862C();
      result = sub_10002897C();
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

uint64_t sub_10001D298(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001DBC(&qword_100035538, &qword_100029AA8);
  result = sub_1000287FC();
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_10002894C();
      sub_10002896C(v17);
      result = sub_10002897C();
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
      *(*(v5 + 48) + 4 * v13) = v17;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10001D4E8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_100027DAC();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100001DBC(&qword_100035588, &qword_100029B08);
  result = sub_1000287FC();
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
      sub_100020F24(&qword_100035578, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_1000285CC();
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

uint64_t sub_10001D844(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10001D038(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10001DDC4();
      goto LABEL_16;
    }

    sub_10001E298(v8 + 1);
  }

  v10 = *v4;
  sub_10002894C();
  sub_10002862C();
  result = sub_10002897C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10002890C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10002892C();
  __break(1u);
  return result;
}

void sub_10001D9C4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001D298(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_10001DF20();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10001E4D0(v5 + 1);
  }

  v8 = *v3;
  sub_10002894C();
  sub_10002896C(v4);
  v9 = sub_10002897C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for FLOWSchemaFLOWStateType();
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 4 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_10002892C();
  __break(1u);
}

uint64_t sub_10001DB20(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_100027DAC();
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
    sub_10001D4E8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10001E060();
      goto LABEL_12;
    }

    sub_10001E6F0(v10 + 1);
  }

  v12 = *v3;
  sub_100020F24(&qword_100035578, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = sub_1000285CC();
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
      sub_100020F24(&qword_100035580, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_1000285EC();
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
  result = sub_10002892C();
  __break(1u);
  return result;
}

void *sub_10001DDC4()
{
  v1 = v0;
  sub_100001DBC(&qword_100035568, &qword_100029AE8);
  v2 = *v0;
  v3 = sub_1000287EC();
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

  return result;
}

void *sub_10001DF20()
{
  v1 = v0;
  sub_100001DBC(&qword_100035538, &qword_100029AA8);
  v2 = *v0;
  v3 = sub_1000287EC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10001E060()
{
  v1 = v0;
  v2 = sub_100027DAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001DBC(&qword_100035588, &qword_100029B08);
  v6 = *v0;
  v7 = sub_1000287EC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
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
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

uint64_t sub_10001E298(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001DBC(&qword_100035568, &qword_100029AE8);
  result = sub_1000287FC();
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
      sub_10002894C();

      sub_10002862C();
      result = sub_10002897C();
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

uint64_t sub_10001E4D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001DBC(&qword_100035538, &qword_100029AA8);
  result = sub_1000287FC();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_10002894C();
      sub_10002896C(v16);
      result = sub_10002897C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
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

        v2 = v1;
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

uint64_t sub_10001E6F0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_100027DAC();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100001DBC(&qword_100035588, &qword_100029B08);
  v7 = sub_1000287FC();
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
      sub_100020F24(&qword_100035578, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_1000285CC();
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

id *sub_10001EA0C(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001EA4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10001EA2C(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001EB50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10001EA4C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DBC(&qword_100035550, &qword_100029AB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 2));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

id *sub_10001EB50(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DBC(&qword_100035530, &qword_100029AA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 2));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_10001EC54(uint64_t a1, uint64_t a2)
{
  sub_10002894C();
  sub_10002862C();
  v4 = sub_10002897C();

  return sub_10001ECCC(a1, a2, v4);
}

unint64_t sub_10001ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10002890C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10001ED84(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_10001F304(*(*(v2 + 48) + ((v9 << 8) | (4 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10001EE7C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v48 << 8) | (4 * v18)));
        sub_10002894C();
        sub_10002896C(v5);
        v19 = sub_10002897C();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & v13[v2 >> 6]) == 0);
      v21 = v6[6];
      if (*(v21 + 4 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & v13[v2 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + 4 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v46;
    v52 = v48;
    v53 = v11;
    v50[0] = v47;
    v50[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, v6 + 7, v5);
      v41 = sub_10001F418(v40, v14, v6, v2, v50);

      v4 = v50[0];
      v46 = v51;
      v48 = v52;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v14;
    v44 = &v42;
    __chkstk_darwin(v22);
    v14 = &v42 - v23;
    memcpy(&v42 - v23, v6 + 7, v5);
    v24 = v6[2];
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v48 << 8) | (4 * v29)));
      sub_10002894C();
      v2 = v49;
      sub_10002896C(v5);
      v30 = sub_10002897C();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = v6[6];
        if (*(v35 + 4 * v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = _swiftEmptySetSingleton;
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + 4 * v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_10001F5F0(v14, v43, v45, v6);
LABEL_41:
    v38 = v4;
LABEL_43:
    sub_100020E5C(v38);
  }

  else
  {

    return _swiftEmptySetSingleton;
  }

  return v6;
}

unint64_t sub_10001F304(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  sub_10002894C();
  sub_10002896C(v2);
  v4 = sub_10002897C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (*(*(v3 + 48) + 4 * v6) != v2)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10001DF20();
      v11 = v13;
    }

    v8 = *(*(v11 + 48) + 4 * v6);
    sub_10001F7F8(v6);
    v9 = 0;
    *v1 = v13;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

Swift::Int sub_10001F418(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 8) | (4 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_10002894C();
    sub_10002896C(v17);
    result = sub_10002897C();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 4 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return _swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 4 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_10001F5F0(v7, a2, v9, a3);
}

uint64_t sub_10001F5F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100001DBC(&qword_100035538, &qword_100029AA8);
  result = sub_10002880C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    sub_10002894C();
    sub_10002896C(v16);
    result = sub_10002897C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(v9[6] + 4 * v20) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10001F7F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1000287DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 4 * v6);
        sub_10002894C();
        sub_10002896C(v10);
        v11 = sub_10002897C() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 4 * v2);
          v14 = (v12 + 4 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

BOOL sub_10001F9A0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_10002890C() & 1;
    }
  }

  return result;
}

uint64_t sub_10001FA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FAA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001FB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FB94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10002873C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10001CB10(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001FC2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for FLOWSchemaFLOWStateType();
  sub_100020F24(&qword_100035548, type metadata accessor for FLOWSchemaFLOWStateType, &unk_10002933C);
  result = sub_10002873C();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10001CC60(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10001FCD8(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_10002890C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  type metadata accessor for UniversalSuggestionItem(0);
  if ((sub_100027D9C() & 1) == 0)
  {
    return 0;
  }

  return sub_1000282AC();
}

uint64_t sub_10001FDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000280AC();
  v40 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v37 - v9;
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100001DBC(&qword_100035570, &unk_100029AF8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v37 - v18;
  v20 = &v37 + *(v17 + 56) - v18;
  sub_10001FA40(a1, &v37 - v18, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  sub_10001FA40(a2, v20, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  v21 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v19, 2, v21);
  if (!v23)
  {
    v38 = v12;
    v39 = v10;
    v24 = v40;
    sub_10001FA40(v19, v15, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
    v25 = *(v21 + 48);
    if (!v22(v20, 2, v21))
    {
      v29 = v24;
      v30 = *(v24 + 32);
      v31 = v38;
      v30(v38, v20, v4);
      v30(v39, &v15[v25], v4);
      v32 = &v20[v25];
      v33 = v31;
      v30(v7, v32, v4);
      v34 = sub_10002808C();
      v35 = *(v29 + 8);
      v35(v15, v4);
      if (v34)
      {
        v36 = v39;
        v27 = sub_10002808C();
        v35(v7, v4);
        v35(v36, v4);
        v35(v33, v4);
        sub_10001FAA8(v19, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
        return v27 & 1;
      }

      v35(v7, v4);
      v35(v39, v4);
      v35(v31, v4);
      sub_10001FAA8(v19, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
      goto LABEL_10;
    }

    v26 = *(v24 + 8);
    v26(&v15[v25], v4);
    v26(v15, v4);
    goto LABEL_9;
  }

  if (v23 != 1)
  {
    if (v22(v20, 2, v21) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_10000EDEC(v19, &qword_100035570, &unk_100029AF8);
LABEL_10:
    v27 = 0;
    return v27 & 1;
  }

  if (v22(v20, 2, v21) != 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  sub_10001FAA8(v19, type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_100020220(uint64_t a1)
{
  v2 = sub_100027DAC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100020F24(&qword_100035578, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = sub_10002873C();
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
      sub_10001CD58(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1000203BC()
{
  v0 = sub_100027E4C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  sub_100027E0C();
  v7 = sub_100027EBC();

  if (*(v7 + 16))
  {
    v8 = sub_10001EC54(0x73656D616ELL, 0xE500000000000000);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      if (v10 >> 62)
      {
        goto LABEL_21;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v12 = sub_10002883C();
          }

          else
          {
            if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v12 = *(v10 + 32);
          }

          v10 = v12;
          v13 = sub_100027EAC();

          v23 = *(v13 + 16);
          if (v23)
          {
            v21 = v6;
            v6 = 0;
            v14 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
            v22 = 0x800000010002A630;
            while (v6 < *(v13 + 16))
            {
              (*(v1 + 16))(v4, v14 + *(v1 + 72) * v6, v0);
              v10 = v4;
              v16 = sub_100027E3C();
              if (v17)
              {
                if (v16 == 0xD000000000000012 && v17 == v22)
                {

LABEL_17:

                  v18 = v21;
                  (*(v1 + 32))(v21, v4, v0);
                  v19 = sub_100027E2C();
                  (*(v1 + 8))(v18, v0);
                  return v19;
                }

                v10 = v17;
                v15 = sub_10002890C();

                if (v15)
                {
                  goto LABEL_17;
                }
              }

              ++v6;
              (*(v1 + 8))(v4, v0);
              if (v23 == v6)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_21:
            result = sub_1000288CC();
            if (result)
            {
              continue;
            }
          }

          break;
        }
      }
    }
  }

LABEL_18:

  return 0;
}

void *sub_1000206D8(uint64_t a1)
{
  if (qword_100034AE8 != -1)
  {
    swift_once();
  }

  v2 = qword_100034AF0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_100034AD8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100034AE0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_10001A2B8(v5);

  sub_10001A2B8(v6);

  sub_10001A2B8(v7);

  sub_10001A2B8(v8);
  sub_100001DBC(&qword_100035540, &qword_100029AB0);
  swift_arrayDestroy();
  if (*(a1 + 16) > _swiftEmptySetSingleton[2] >> 3)
  {
    return sub_10001EE7C(a1, _swiftEmptySetSingleton);
  }

  sub_10001ED84(a1);
  return _swiftEmptySetSingleton;
}

uint64_t sub_1000208D0(unint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v4 = *(a1 + *(v3 + 36));
  if (v4 >> 62)
  {
    v5 = sub_1000288CC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v29 = _swiftEmptyArrayStorage;
    v7 = &v29;
    sub_10001EA0C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
LABEL_29:
      result = sub_1000288CC();
      if (!result)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v8 = 0;
    v6 = v29;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = sub_10002883C();
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 flowStateType];

      v29 = v6;
      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        sub_10001EA0C((v12 > 1), (v13 + 1), 1);
        v6 = v29;
      }

      ++v8;
      v6[2] = v13 + 1;
      *(v6 + v13 + 8) = v11;
    }

    while (v5 != v8);
  }

  v14 = sub_10001FC2C(v6);

  v15 = sub_10001FC2C(&off_1000310B8);
  v16 = sub_1000206D8(_swiftEmptySetSingleton);
  v17 = sub_1000189B0(v14, v15);

  if ((v17 & 1) == 0)
  {

    v26 = 0;
LABEL_25:

    return v26 & 1;
  }

  v18 = sub_100018B24(v14, v16);

  if ((v18 & 1) == 0 || (v19 = (a1 + *(v3 + 32)), !*v19))
  {
LABEL_30:
    v26 = 0;
    return v26 & 1;
  }

  v7 = v19[1];
  a1 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v7 & 0xC000000000000001) != 0)
  {

    v21 = sub_10002883C();

LABEL_20:
    v22 = [v21 entityIdentifier];

    if (v22)
    {
      v23 = sub_10002860C();
      v25 = v24;

      if (v23 == *v28 && v25 == v28[1])
      {
        v26 = 1;
      }

      else
      {
        v26 = sub_10002890C();
      }

      goto LABEL_25;
    }

    goto LABEL_30;
  }

  if (*(a1 + 16))
  {
    v21 = v7[4];
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020BA0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = type metadata accessor for UniversalSuggestionsPromptState(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v16 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  sub_10000ED84(a1 + *(v16 + 40), v8, &qword_100034EC8, &unk_100029AC0);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    v18 = v8;
  }

  else
  {
    sub_10001FB2C(v8, v15, type metadata accessor for UniversalSuggestionsPromptState);
    sub_10000ED84(v22 + *(v16 + 40), v6, &qword_100034EC8, &unk_100029AC0);
    if (v17(v6, 1, v9) != 1)
    {
      sub_10001FB2C(v6, v13, type metadata accessor for UniversalSuggestionsPromptState);
      v19 = sub_100027D9C();
      sub_10001FAA8(v13, type metadata accessor for UniversalSuggestionsPromptState);
      sub_10001FAA8(v15, type metadata accessor for UniversalSuggestionsPromptState);
      return v19 & 1;
    }

    sub_10001FAA8(v15, type metadata accessor for UniversalSuggestionsPromptState);
    v18 = v6;
  }

  sub_10000EDEC(v18, &qword_100034EC8, &unk_100029AC0);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_100020F24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100020F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000210E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100027DAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_100021238(uint64_t a1)
{
  sub_100027DAC();
  if (v1 <= 0x3F)
  {
    sub_100021B00(319, &unk_1000355F8, &type metadata accessor for UUID);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UniversalSuggestionCorrectionDiscovered.CorrectionState(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000213B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002143C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100001DBC(&qword_100034E08, &unk_100029550);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100021528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100021664(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1000217A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100021848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001DBC(&qword_100034E10, &qword_100029AF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100021958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100027DAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001DBC(&qword_100034E10, &qword_100029AF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100021A60(uint64_t a1)
{
  sub_100027DAC();
  if (v1 <= 0x3F)
  {
    sub_100021B00(319, &unk_100035858, type metadata accessor for UniversalSuggestionRequestTaskState.SurfacedSuggestionState);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100021B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000287BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100021B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100034E18, &qword_100029560);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100021BF4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100001DBC(&qword_100034E18, &qword_100029560);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100021CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v5 = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v5;
}

void sub_100021D00()
{
  if (!qword_100035908)
  {
    v0 = type metadata accessor for UniversalSuggestionDisambiguationOffered(0);
    if (!v1)
    {
      atomic_store(v0, &qword_100035908);
    }
  }
}

uint64_t sub_100021D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100021E34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

void sub_100021EF8(uint64_t a1)
{
  sub_100021B00(319, &unk_1000355F8, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for UniversalSuggestionDisambiguationOffered.DisambiguationOfferedState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UniversalSuggestionDisambiguationOffered.DisambiguationOfferedState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002210C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100027DAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000282BC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100022244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100027DAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000282BC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100022368(uint64_t a1)
{
  sub_100022414();
  if (v1 <= 0x3F)
  {
    sub_100027DAC();
    if (v2 <= 0x3F)
    {
      sub_1000282BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100022414()
{
  if (!qword_100035A28)
  {
    v0 = sub_1000287BC();
    if (!v1)
    {
      atomic_store(v0, &qword_100035A28);
    }
  }
}

uint64_t sub_100022488(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100022550(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = sub_100001DBC(&qword_100034EB8, &qword_1000295F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000225FC(uint64_t a1)
{
  sub_100021B00(319, &unk_1000355F8, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_100022698()
{
  result = qword_100035AF0;
  if (!qword_100035AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035AF0);
  }

  return result;
}

void sub_100022708(const char *a1, uint64_t a2, char a3)
{
  if (qword_100034B00 != -1)
  {
    swift_once();
  }

  v5 = byte_1000367E0;
  log = sub_1000284FC();
  v6 = sub_10002879C();
  v7 = sub_1000287AC();
  if (v5 == 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (a3)
    {
      if (a1 >> 32)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (a1 >> 16 > 0x10)
      {
        goto LABEL_28;
      }

      a1 = &v12;
    }

    else if (!a1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1000284CC();
    v10 = "";
LABEL_25:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, v6, v9, a1, v10, v8, 2u);

    return;
  }

LABEL_8:
  if (v7)
  {
    if ((a3 & 1) == 0)
    {
      if (!a1)
      {
        __break(1u);
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_31:
        __break(1u);
        return;
      }

      if (a1 >> 16 <= 0x10)
      {
        a1 = &v13;
LABEL_24:
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_1000284CC();
        v10 = "enableTelemetry=YES";
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_12:
}

uint64_t sub_1000228E8(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_1000284DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100034B00 != -1)
  {
    swift_once();
  }

  v11 = byte_1000367E0;
  v12 = sub_1000284FC();
  v13 = sub_10002878C();
  result = sub_1000287AC();
  if (v11 == 1)
  {
    if ((result & 1) == 0)
    {
LABEL_23:

      (*(v8 + 16))(v10, a4, v7);
      sub_10002854C();
      swift_allocObject();
      return sub_10002853C();
    }

    if (a3)
    {
LABEL_12:
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (a1 >> 16 <= 0x10)
        {
          a1 = v18;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (a1)
    {
LABEL_16:
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_1000284CC();
      v17 = "";
LABEL_22:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v16, a1, v17, v15, 2u);

      goto LABEL_23;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_12;
    }

LABEL_21:
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1000284CC();
    v17 = "enableTelemetry=YES";
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    a1 = &v19;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_100022B60()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1000285FC();
  v2 = [v0 BOOLForKey:v1];

  byte_1000367E0 = v2;
}

uint64_t sub_100022BF0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100022CC8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100022D38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100022E78(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1000230B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v19 = a1;
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UniversalSuggestionsPromptCoalescedAsyncSequence.UniversalSuggestionsPromptCoalescedFeaturisedTurnAsyncIterator(0, v9, v10, v11);
  v13 = v12[9];
  v14 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a4 + v13, 1, 1, v14);
  v15(a4 + v12[10], 1, 1, v14);
  *(a4 + v12[11]) = 0;
  v16 = v19;
  (*(v6 + 16))(v8, v19, a2);
  sub_1000286FC();
  return (*(v6 + 8))(v16, a2);
}

uint64_t sub_100023240(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_100001DBC(&qword_100034E28, &qword_100029570);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000233B4, 0, 0);
}

uint64_t sub_1000233B4()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 44);
  *(v0 + 216) = v2;
  if (*(v1 + v2))
  {
    (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));

    v3 = *(v0 + 8);
LABEL_5:

    return v3();
  }

  if (sub_1000286EC())
  {
    *(v1 + v2) = 1;
    sub_1000286BC();
    sub_1000259FC(qword_100035B90, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    sub_10002859C();
    swift_willThrow();

    v3 = *(v0 + 8);
    goto LABEL_5;
  }

  v5 = *(v0 + 24);
  *(v0 + 152) = *(v5 + 24);
  *(v0 + 160) = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_1000236C4;
  v9 = *(v0 + 144);

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1000236C4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100024308;
  }

  else
  {
    v2 = sub_1000237D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000237D8()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 48) + 48);
  if (v2(*(v0 + 144), 1, v1) == 1)
  {
    *(*(v0 + 32) + *(v0 + 216)) = 1;
    v1 = *(v0 + 40);
  }

  v3 = *(v0 + 136);
  v4 = *(v0 + 32);
  v5 = *(*(v0 + 24) + 36);
  sub_10000ED84(v4 + v5, v3, &qword_100034E28, &qword_100029570);
  if (v2(v3, 1, v1) == 1)
  {
    sub_10000EDEC(*(v0 + 136), &qword_100034E28, &qword_100029570);
  }

  else
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 128);
    v8 = *(v0 + 40);
    sub_100025934(*(v0 + 136), *(v0 + 80), type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10000ED84(v6, v7, &qword_100034E28, &qword_100029570);
    if (v2(v7, 1, v8) == 1)
    {
      v9 = *(v0 + 128);
      sub_10002599C(*(v0 + 80), type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      sub_10000EDEC(v9, &qword_100034E28, &qword_100029570);
    }

    else
    {
      v11 = *(v0 + 72);
      v10 = *(v0 + 80);
      sub_100025934(*(v0 + 128), v11, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      if (sub_10002501C(v10, v11))
      {
        sub_100024E80(*(v0 + 144), *(v0 + 32) + *(*(v0 + 24) + 40));
        v12 = swift_task_alloc();
        *(v0 + 184) = v12;
        *v12 = v0;
        v13 = sub_100023E98;
LABEL_12:
        v12[1] = v13;
        v18 = *(v0 + 24);
        v19 = *(v0 + 16);

        return sub_100023240(v19, v18);
      }

      v14 = *(v0 + 80);
      sub_10002599C(*(v0 + 72), type metadata accessor for UniversalSuggestionsFeaturisedTurn);
      sub_10002599C(v14, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    }
  }

  v15 = *(v0 + 120);
  v16 = *(v0 + 40);
  sub_10000ED84(v4 + v5, v15, &qword_100034E28, &qword_100029570);
  if (v2(v15, 1, v16) == 1)
  {
    v17 = *(v0 + 144);
    sub_10000EDEC(*(v0 + 120), &qword_100034E28, &qword_100029570);
    sub_100024E80(v17, v4 + v5);
    v12 = swift_task_alloc();
    *(v0 + 200) = v12;
    *v12 = v0;
    v13 = sub_1000240E8;
    goto LABEL_12;
  }

  v50 = v5;
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);
  v24 = *(v0 + 32);
  v23 = *(v0 + 40);
  v25 = *(v0 + 24);
  sub_100025934(*(v0 + 120), *(v0 + 64), type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  v48 = *(v25 + 40);
  v49 = v24;
  sub_10000ED84(v24 + v48, v22, &qword_100034E28, &qword_100029570);
  sub_10000ED84(v22, v21, &qword_100034E28, &qword_100029570);
  if (v2(v21, 1, v23) == 1)
  {
    v26 = *(v0 + 112);
    v27 = *(v0 + 40);
    v28 = *(v0 + 48);
    sub_10000EDEC(*(v0 + 104), &qword_100034E28, &qword_100029570);
    (*(v28 + 56))(v26, 1, 1, v27);
  }

  else
  {
    v47 = *(v0 + 176);
    v29 = *(v0 + 152);
    v30 = *(v0 + 160);
    v31 = *(v0 + 112);
    v33 = *(v0 + 56);
    v32 = *(v0 + 64);
    v34 = *(v0 + 32);
    sub_100025934(*(v0 + 96), v33, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10002465C(v33, v34, v32, v31, v30, v29);
    result = sub_10002599C(v33, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    if (v47)
    {
      return result;
    }

    sub_10000EDEC(*(v0 + 104), &qword_100034E28, &qword_100029570);
  }

  v35 = *(v0 + 112);
  v36 = *(v0 + 88);
  v37 = *(v0 + 40);
  v38 = *(v0 + 48);
  sub_100024E80(*(v0 + 144), v4 + v50);
  sub_10000EDEC(v49 + v48, &qword_100034E28, &qword_100029570);
  v39 = *(v38 + 56);
  v39(v49 + v48, 1, 1, v37);
  sub_100010250(v35, v36, &qword_100034E28, &qword_100029570);
  v40 = v2(v36, 1, v37);
  v41 = *(v0 + 88);
  if (v40 == 1)
  {
    v42 = *(v0 + 40);
    sub_100024EF0(*(v0 + 64), *(v0 + 16));
    if (v2(v41, 1, v42) != 1)
    {
      sub_10000EDEC(*(v0 + 88), &qword_100034E28, &qword_100029570);
    }
  }

  else
  {
    sub_100025934(*(v0 + 88), *(v0 + 16), type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  }

  v43 = *(v0 + 64);
  v44 = *(v0 + 40);
  v45 = *(v0 + 16);
  sub_10000EDEC(*(v0 + 144), &qword_100034E28, &qword_100029570);
  v39(v45, 0, 1, v44);
  sub_10002599C(v43, type metadata accessor for UniversalSuggestionsFeaturisedTurn);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_100023E98()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100024404;
  }

  else
  {
    v2 = sub_100023FAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100023FAC()
{
  v1 = v0[18];
  v2 = v0[10];
  sub_10002599C(v0[9], type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10002599C(v2, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10000EDEC(v1, &qword_100034E28, &qword_100029570);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000240E8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100024548;
  }

  else
  {
    v2 = sub_1000241FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000241FC()
{
  sub_10000EDEC(*(v0 + 144), &qword_100034E28, &qword_100029570);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100024308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100024404()
{
  v1 = v0[18];
  v2 = v0[10];
  sub_10002599C(v0[9], type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10002599C(v2, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
  sub_10000EDEC(v1, &qword_100034E28, &qword_100029570);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100024548()
{
  sub_10000EDEC(*(v0 + 144), &qword_100034E28, &qword_100029570);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002465C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  v10 = type metadata accessor for UniversalSuggestionsPromptCoalescedAsyncSequence.UniversalSuggestionsPromptCoalescedFeaturisedTurnAsyncIterator(0, a5, a6, a5);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  (*(v11 + 16))(&v16 - v12, a2, v10);
  sub_1000247B8(a3, a1, a4);
  (*(v11 + 8))(v13, v10);
  v14 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  return (*(*(v14 - 8) + 56))(a4, 0, 1, v14);
}

uint64_t sub_1000247B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_100027DAC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100001DBC(&qword_100034ED0, &qword_100029610);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  sub_10000ED84(a1, &v31 - v13, &qword_100034ED0, &qword_100029610);
  v15 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v16 = *(v9 + 16);
  v17 = a1 + v15[5];
  v35 = v8;
  v16(v11, v17, v8);
  v18 = *(a1 + v15[7]);
  v32 = *(a1 + v15[6]);
  v33 = v18;
  v19 = (a1 + v15[8]);
  v21 = *v19;
  v20 = v19[1];
  v34 = *(a1 + v15[9]);
  v22 = a1 + v15[10];
  v36 = v7;
  sub_10000ED84(v22, v7, &qword_100034EC8, &unk_100029AC0);
  v23 = v15[11];
  v24 = (a1 + v23);
  if (*(a1 + v23 + 4) == 1)
  {
    v24 = (v31 + v23);
    LODWORD(v31) = *(v31 + v23 + 4);
  }

  else
  {
    LODWORD(v31) = 0;
  }

  v25 = *v24;
  v26 = *(a1 + v15[12]);
  sub_100010250(v14, a3, &qword_100034ED0, &qword_100029610);
  (*(v9 + 32))(a3 + v15[5], v11, v35);
  v27 = v33;
  *(a3 + v15[6]) = v32;
  *(a3 + v15[7]) = v27;
  v28 = (a3 + v15[8]);
  *v28 = v21;
  v28[1] = v20;
  *(a3 + v15[9]) = v34;
  sub_100010250(v36, a3 + v15[10], &qword_100034EC8, &unk_100029AC0);
  v29 = a3 + v15[11];
  *v29 = v25;
  *(v29 + 4) = v31;
  *(a3 + v15[12]) = v26;

  sub_100025A5C(v21, v20);
}

uint64_t sub_100024AB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E984;

  return sub_100023240(a1, a2);
}

uint64_t sub_100024B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_100024C34;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_100024C34()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_100024D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return sub_1000230B4(v5, v3, a2);
}

uint64_t sub_100024E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100024D44(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_100024E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100034E28, &qword_100029570);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024F54()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100035AF8);
  v1 = sub_10000AEF4(v0, qword_100035AF8);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10002501C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniversalSuggestionsFeaturisedTurn(0);
  v5 = __chkstk_darwin(v4);
  v91 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v90 = &v85 - v7;
  v8 = sub_10002807C();
  v93 = *(v8 - 8);
  v94 = v8;
  __chkstk_darwin(v8);
  v92 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001DBC(&qword_100034EC8, &unk_100029AC0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v85 - v14;
  v16 = type metadata accessor for UniversalSuggestionsPromptState(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v95 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v85 - v20;
  v22 = *(v4 + 40);
  v89 = a1;
  sub_10000ED84(a1 + v22, v15, &qword_100034EC8, &unk_100029AC0);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    sub_10000EDEC(v15, &qword_100034EC8, &unk_100029AC0);
    return 0;
  }

  sub_100025934(v15, v21, type metadata accessor for UniversalSuggestionsPromptState);
  sub_10000ED84(a2 + *(v4 + 40), v13, &qword_100034EC8, &unk_100029AC0);
  if (v23(v13, 1, v16) == 1)
  {
    sub_10002599C(v21, type metadata accessor for UniversalSuggestionsPromptState);
    sub_10000EDEC(v13, &qword_100034EC8, &unk_100029AC0);
    return 0;
  }

  v24 = v4;
  v25 = a2;
  v26 = v95;
  sub_100025934(v13, v95, type metadata accessor for UniversalSuggestionsPromptState);
  if ((sub_100027D9C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v27 = *&v21[*(v16 + 20)];
  v28 = sub_100008790(v27);
  if (!v29)
  {
    goto LABEL_20;
  }

  v30 = v28;
  v31 = v29;
  v32 = *(v26 + *(v16 + 20));
  v33 = sub_100008790(v32);
  if (!v34)
  {
    goto LABEL_19;
  }

  if (v30 == v33 && v31 == v34)
  {
  }

  else
  {
    v35 = sub_10002890C();

    if ((v35 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v87 = v24;
  v88 = v27;
  v86 = v32;
  v36 = v92;
  v37 = v93;
  v38 = v94;
  (*(v93 + 104))(v92, enum case for PromptEventType.Beginning.disambiguation(_:), v94);
  v39 = sub_10002806C();
  v41 = v40;
  (*(v37 + 8))(v36, v38);
  if (v30 == v39 && v31 == v41)
  {

    v42 = v88;
  }

  else
  {
    v43 = sub_10002890C();

    v42 = v88;
    if ((v43 & 1) == 0)
    {
LABEL_20:
      v47 = v26;
LABEL_21:
      sub_10002599C(v47, type metadata accessor for UniversalSuggestionsPromptState);
      sub_10002599C(v21, type metadata accessor for UniversalSuggestionsPromptState);
      return 0;
    }
  }

  v44 = v86;
  sub_1000087A8(v86);
  if (v45)
  {
    goto LABEL_19;
  }

  sub_100008990(v44);
  if (v46)
  {
    goto LABEL_19;
  }

  v49 = sub_1000089A8(v42);
  if (!v50)
  {
    goto LABEL_20;
  }

  v51 = v50;
  v52 = v49;
  v53 = sub_1000089C0(v42);
  if (!v54)
  {
LABEL_19:

    goto LABEL_20;
  }

  v55 = v54;
  v94 = v25;
  v56 = v53;
  v57 = v86;
  v58 = sub_1000089A8(v86);
  if (!v59)
  {
LABEL_32:

    v47 = v95;
    goto LABEL_21;
  }

  v60 = v58;
  v61 = v59;
  v62 = sub_1000089C0(v57);
  if (!v63)
  {

    goto LABEL_32;
  }

  v64 = v62;
  v65 = v63;
  if (v52 == v60 && v51 == v61)
  {
  }

  else
  {
    v66 = sub_10002890C();

    if ((v66 & 1) == 0)
    {

      v68 = v95;
      goto LABEL_45;
    }
  }

  if (v56 != v64 || v55 != v65)
  {
    v69 = sub_10002890C();

    v67 = v94;
    v68 = v95;
    if (v69)
    {
      goto LABEL_38;
    }

LABEL_45:
    v47 = v68;
    goto LABEL_21;
  }

  v67 = v94;
  v68 = v95;
LABEL_38:
  v70 = v90;
  if (qword_100034B08 != -1)
  {
    swift_once();
  }

  v71 = sub_10002858C();
  sub_10000AEF4(v71, qword_100035AF8);
  sub_100024EF0(v67, v70);
  v72 = v91;
  sub_100024EF0(v89, v91);
  v73 = sub_10002856C();
  v74 = sub_10002875C();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v96 = v94;
    *v75 = 136315394;
    LODWORD(v93) = v74;
    sub_100027DAC();
    sub_1000259FC(&qword_100034E20, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v76 = sub_1000288EC();
    v78 = v77;
    sub_10002599C(v70, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v79 = sub_100027364(v76, v78, &v96);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2080;
    v80 = sub_1000288EC();
    v82 = v81;
    sub_10002599C(v72, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v83 = sub_100027364(v80, v82, &v96);

    *(v75 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v73, v93, "Coalescing a featurised turn with request id %s into turn with request id %s due to a reprompt", v75, 0x16u);
    swift_arrayDestroy();

    v84 = v95;
  }

  else
  {

    sub_10002599C(v72, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    sub_10002599C(v70, type metadata accessor for UniversalSuggestionsFeaturisedTurn);
    v84 = v68;
  }

  sub_10002599C(v84, type metadata accessor for UniversalSuggestionsPromptState);
  sub_10002599C(v21, type metadata accessor for UniversalSuggestionsPromptState);
  return 1;
}

uint64_t sub_100025934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002599C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000259FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100025A5C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_100025AD4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_10002651C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100025B7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v50 = AssociatedTypeWitness;
  v7 = *(v6 + 84);
  v49 = sub_100027D7C();
  v8 = *(v49 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(sub_100027DAC() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = v15 - 1;
  if (v14 > v16)
  {
    v16 = v14;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v17 - 1 <= v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = v17 - 1;
  }

  v19 = *(v11 + 80);
  v20 = *(v8 + 64);
  if (!v9)
  {
    ++v20;
  }

  v21 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  v22 = v19;
  v23 = *(v8 + 80) & 0xF8 | v19 | 7u;
  v24 = *(v6 + 64) + v23;
  v25 = v19 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v26 = v21 + 7;
  v27 = v20 + v19;
  v28 = v19 + 8;
  if (a2 > v18)
  {
    v29 = (((v26 & 0xFFFFFFFFFFFFFFF8) + ((v28 + ((((((((v26 + (v27 & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v25) + 20) & 0xFFFFFFFFFFFFFFF8) + 8;
    v30 = ((((v24 | v23) + v29) & ~v23) + v29) | 1;
    v31 = 8 * v30;
    if (v30 > 3)
    {
      goto LABEL_23;
    }

    v33 = (a2 - v18 + ~(-1 << v31)) >> v31;
    if (v33 > 0xFFFE)
    {
      v32 = *(a1 + v30);
      if (!v32)
      {
        goto LABEL_42;
      }

      goto LABEL_30;
    }

    if (v33 > 0xFE)
    {
      v32 = *(a1 + v30);
      if (!*(a1 + v30))
      {
        goto LABEL_42;
      }

      goto LABEL_30;
    }

    if (v33)
    {
LABEL_23:
      v32 = *(a1 + v30);
      if (!*(a1 + v30))
      {
        goto LABEL_42;
      }

LABEL_30:
      v34 = (v32 - 1) << v31;
      if (v30 <= 3)
      {
        v35 = v30;
      }

      else
      {
        v34 = 0;
        v35 = 4;
      }

      if (v35 > 2)
      {
        if (v35 == 3)
        {
          v36 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v36 = *a1;
        }
      }

      else if (v35 == 1)
      {
        v36 = *a1;
      }

      else
      {
        v36 = *a1;
      }

      return v18 + (v36 | v34) + 1;
    }
  }

LABEL_42:
  if (v7 >= v17 - 1)
  {
    v42 = *(v6 + 48);

    return v42(a1, v7, v50);
  }

  v38 = (a1 + v24) & ~v23;
  if (v10 == v17)
  {
    if (v9 < 2)
    {
      return 0;
    }

    v39 = (*(v8 + 48))(v38, v9, v49);
  }

  else
  {
    v43 = (v27 + v38) & ~v22;
    if (v13 == v17)
    {
      v44 = (*(v12 + 48))(v43);
      v41 = v44 != 0;
      result = (v44 - 1);
      if (result != 0 && v41)
      {
        return result;
      }

      return 0;
    }

    v45 = ((v26 + v43) & 0xFFFFFFFFFFFFFFF8);
    if ((v16 & 0x80000000) == 0)
    {
      v46 = *v45;
      if (*v45 >= 0xFFFFFFFF)
      {
        LODWORD(v46) = -1;
      }

      result = v46;
      if (v46 == 0 || v46 == -1)
      {
        return 0;
      }

      return result;
    }

    v47 = (v28 + ((((((v45 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v25;
    if (v13 < 0x7FFFFFFF)
    {
      v48 = *((v26 + v47) & 0xFFFFFFFFFFFFFFF8);
      if (v48 >= 0xFFFFFFFF)
      {
        LODWORD(v48) = -1;
      }

      v39 = v48 + 1;
    }

    else
    {
      v39 = (*(v12 + 48))(v47);
    }
  }

  if (v39 < 2)
  {
    return 0;
  }

  v40 = v39 - 1;
  v41 = v40 != 0;
  result = v40 - 1;
  if (result == 0 || !v41)
  {
    return 0;
  }

  return result;
}

void sub_100025FBC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v55 = v7;
  v56 = AssociatedTypeWitness;
  v8 = *(v7 + 84);
  v54 = sub_100027D7C();
  v9 = *(v54 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  v13 = *(sub_100027DAC() - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 64);
  if (v14 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = v17 - 1;
  if (v16 > v17 - 1)
  {
    v18 = v16;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 - 1;
  if (v19 - 1 <= v8)
  {
    v21 = v8;
  }

  else
  {
    v21 = v19 - 1;
  }

  v22 = *(v13 + 80);
  v23 = *(v9 + 80) & 0xF8 | *(v13 + 80) | 7u;
  v24 = *(v7 + 64) + v23;
  if (v10)
  {
    v25 = *(v9 + 64);
  }

  else
  {
    v25 = *(v9 + 64) + 1;
  }

  v26 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v27 = v15 + 7;
  v28 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = v25 + v22;
  v30 = v15 + 7 + (v29 & ~v22);
  v31 = v22 + 8;
  v32 = ((v28 + ((v22 + 8 + (((((((v30 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v26) + 20) & 0xFFFFFFFFFFFFFFF8) + 8;
  v33 = ((((v24 | v23) + v32) & ~v23) + v32) | 1;
  if (a3 > v21)
  {
    if (v33 <= 3)
    {
      v34 = (a3 - v21 + ~(-1 << (8 * v33))) >> (8 * v33);
      if (v34 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        if (v34 < 0xFF)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34)
        {
          v12 = v35;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v21 >= a2)
  {
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v33] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_47;
      }

      *&a1[v33] = 0;
    }

    else if (v12)
    {
      a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    if (!a2)
    {
      return;
    }

LABEL_47:
    if (v8 >= v20)
    {
      v42 = v56;
      v43 = *(v55 + 56);
      v44 = a1;
      v45 = a2;
      v46 = v8;
    }

    else
    {
      v38 = v28 + 8;
      v39 = (&a1[v24] & ~v23);
      if (v20 < a2)
      {
        if (((((v31 + (((((((v30 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v26) + v38 + 12) & 0xFFFFFFF8) == 0xFFFFFFF8)
        {
          return;
        }

        v40 = a2 - v19;
        v41 = v39;
        v38 = ((((v31 + (((((((v30 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v26) + v38 + 12) & 0xFFFFFFF8) + 8;
        goto LABEL_51;
      }

      v48 = a2 - v19;
      if (a2 >= v19)
      {
        if (((((v31 + (((((((v30 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v26) + v38 + 12) & 0xFFFFFFF8) != 0xFFFFFFF8)
        {
          bzero(v39, ((((v31 + (((((((v30 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v26) + v38 + 12) & 0xFFFFFFF8) + 8);
          *v39 = v48;
        }

        return;
      }

      if (v11 != v19)
      {
        v49 = a2 + 1;
        v50 = (v39 + v29) & ~v22;
        if (v14 == v19)
        {
          v51 = *(v13 + 56);
          v52 = a2 + 1;
        }

        else
        {
          v53 = ((v27 + v50) & 0xFFFFFFFFFFFFFFF8);
          if ((v18 & 0x80000000) == 0)
          {
            if ((v49 & 0x80000000) != 0)
            {
              *v53 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v53 = a2;
            }

            return;
          }

          v39 = ((v31 + ((((((v53 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v26);
          if (a2 + 2 > v17)
          {
            if (!v38)
            {
              return;
            }

            v40 = v49 - v17;
            v41 = ((v31 + ((((((v53 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v26);
LABEL_51:
            bzero(v41, v38);
            *v39 = v40;
            return;
          }

          if (v14 < 0x7FFFFFFF)
          {
            if (((a2 + 2) & 0x80000000) != 0)
            {
              v49 = a2 - 2147483646;
            }

            *((v39 + v27) & 0xFFFFFFFFFFFFFFF8) = v49;
            return;
          }

          v51 = *(v13 + 56);
          v50 = (v31 + ((((((v53 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v26;
          v52 = a2 + 2;
        }

        v51(v50, v52);
        return;
      }

      v43 = *(v9 + 56);
      v45 = a2 + 2;
      v44 = v39;
      v46 = v10;
      v42 = v54;
    }

    v43(v44, v45, v46, v42);
    return;
  }

  v36 = ~v21 + a2;
  if (v33 < 4)
  {
    v37 = (v36 >> (8 * v33)) + 1;
    bzero(a1, v33);
    if (v33 == 1)
    {
      *a1 = v36;
      if (v12 <= 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v47 = v36 & ~(-1 << (8 * v33));
      *a1 = v47;
      a1[2] = BYTE2(v47);
      if (v12 <= 1)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    bzero(a1, v33);
    *a1 = v36;
    v37 = 1;
    if (v12 <= 1)
    {
LABEL_57:
      if (v12)
      {
        a1[v33] = v37;
      }

      return;
    }
  }

  if (v12 == 2)
  {
    *&a1[v33] = v37;
  }

  else
  {
    *&a1[v33] = v37;
  }
}

void sub_10002651C(uint64_t a1)
{
  if (!qword_100035C18)
  {
    type metadata accessor for UniversalSuggestionsFeaturisedTurn(255);
    v1 = sub_1000287BC();
    if (!v2)
    {
      atomic_store(v1, &qword_100035C18);
    }
  }
}

id *sub_100026594()
{
  v1 = [*(v0 + OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin14HomeKitManager_homeManager) homes];
  sub_100026A24();
  v2 = sub_10002866C();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000288CC())
  {
    v4 = 0;
    v18 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v17 = v2 & 0xFFFFFFFFFFFFFF8;
    v6 = v2;
    while (v18)
    {
      v7 = sub_10002883C();
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v23 = &type metadata for HomeKitHome;
      v24 = &off_1000315A8;
      v22[0] = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100026EF4(0, v5[2] + 1, 1, v5, &qword_100035CD8, &qword_10002A1F0, &unk_100035CE0, &qword_10002A1F8);
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        v5 = sub_100026EF4((v9 > 1), v10 + 1, 1, v5, &qword_100035CD8, &qword_10002A1F0, &unk_100035CE0, &qword_10002A1F8);
      }

      v11 = sub_100014554(v22, v23);
      __chkstk_darwin(v11);
      v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = *v13;
      v21 = &off_1000315A8;
      v20 = &type metadata for HomeKitHome;
      *&v19 = v15;
      v5[2] = (v10 + 1);
      sub_10000EB50(&v19, &v5[5 * v10 + 4]);
      sub_100001EB8(v22);
      ++v4;
      v2 = v6;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    if (v4 >= *(v17 + 16))
    {
      goto LABEL_16;
    }

    v7 = *(v2 + 8 * v4 + 32);
    v8 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_19:

  return v5;
}

id sub_100026980(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeKitManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100026A24()
{
  result = qword_100035CD0;
  if (!qword_100035CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035CD0);
  }

  return result;
}

uint64_t sub_100026A70()
{
  v0 = sub_10002858C();
  sub_10000AF2C(v0, qword_100035C20);
  v1 = sub_10000AEF4(v0, qword_100035C20);
  if (qword_100034AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEF4(v0, qword_100036760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100026B38(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

id *sub_100026B48(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DBC(&qword_100035420, &qword_10002A210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100026CC4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100027268();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_100026DC4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DBC(&qword_100035D40, &qword_10002A248);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100026EF4(id *result, int64_t a2, char a3, id *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100001DBC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = (2 * ((v17 - 32) / 40));
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001DBC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

id *sub_10002708C(id *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
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

  sub_100001DBC(a5, a6);
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
  v17[3] = (2 * ((result - v16) / v15));
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100027268()
{
  v0 = sub_100001DBC(&qword_100035D58, &qword_10002A260);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_100035D60;
    v3 = &unk_10002A268;
  }

  else
  {
    v2 = &unk_100035D68;
    v3 = &unk_10002A270;
  }

  return sub_100001DBC(v2, v3);
}

uint64_t sub_100027308(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100027364(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100027364(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100027430(v11, 0, 0, 1, a1, a2);
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
    sub_100027C78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100001EB8(v11);
  return v7;
}

unint64_t sub_100027430(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002753C(a5, a6);
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
    result = sub_10002884C();
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

id *sub_10002753C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100027588(a1, a2);
  sub_1000276B8(&off_100030F88);
  return v3;
}

id *sub_100027588(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000277A4(v5, 0);
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

  result = sub_10002884C();
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
        v10 = sub_10002864C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000277A4(v10, 0);
        result = sub_10002881C();
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

uint64_t sub_1000276B8(uint64_t result)
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

  result = sub_100027818(result, v11, 1, v3);
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

id *sub_1000277A4(uint64_t a1, uint64_t a2)
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

  sub_100001DBC(&qword_100035CF8, &qword_10002A200);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id *sub_100027818(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001DBC(&qword_100035CF8, &qword_10002A200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_10002790C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10002791C()
{
  v0 = sub_100001DBC(&unk_100034B68, qword_1000298D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-1] - v2;
  v4 = sub_100001DBC(&qword_100035CF0, &qword_100029288);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-1] - v5;
  if (qword_100034B10 != -1)
  {
    swift_once();
  }

  v7 = sub_10002858C();
  sub_10000AEF4(v7, qword_100035C20);
  v8 = sub_10002856C();
  v9 = sub_10002875C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100027364(0xD00000000000001DLL, 0x800000010002AE10, v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "HomeKitManager.%s", v10, 0xCu);
    sub_100001EB8(v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC50SiriUserFeedbackLearningUniversalSuggestionsPlugin9HomeStore_homeManagerDidUpdateHomesContinuation;
    swift_beginAccess();
    sub_100027C08(v13 + v14, v6);
    if ((*(v1 + 48))(v6, 1, v0))
    {
      swift_unknownObjectRelease();
      return sub_100001F04(v6);
    }

    else
    {
      (*(v1 + 16))(v3, v6, v0);
      sub_100001F04(v6);
      sub_1000286AC();
      swift_unknownObjectRelease();
      return (*(v1 + 8))(v3, v0);
    }
  }

  return result;
}

uint64_t sub_100027C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DBC(&qword_100035CF0, &qword_100029288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027C78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}