uint64_t sub_10001D088(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v5 = type metadata accessor for SimulationReason(0);
  v6 = sub_100005A50(v5);
  __chkstk_darwin(v6);
  sub_100005A34();
  v70 = v7 - v8;
  sub_100013EFC();
  v10 = __chkstk_darwin(v9);
  v12 = &v68 - v11;
  __chkstk_darwin(v10);
  v14 = &v68 - v13;
  sub_100049FCC();
  sub_1000059BC();
  v72 = v16;
  v73 = v15;
  __chkstk_darwin(v15);
  sub_100005A34();
  v71 = v17 - v18;
  sub_100013EFC();
  __chkstk_darwin(v19);
  sub_100020A9C();
  __chkstk_darwin(v20);
  v22 = &v68 - v21;
  v23 = sub_100002D54(&qword_100063C20, &qword_10004D2C0);
  v24 = sub_100005A50(v23);
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  swift_beginAccess();
  sub_1000200E8(a1, v26);
  swift_endAccess();
  sub_10000591C(v26, &qword_100063C20, &qword_10004D2C0);
  if (*(*(v2 + 16) + 16))
  {

    sub_10001DBAC(v27);

    v28 = v71;
    sub_100049F9C();
    v29 = a1;
    v30 = v70;
    sub_1000202A8(v29, v70);

    v31 = sub_100049FAC();
    v32 = sub_10004AB9C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v74 = v34;
      *v33 = 136446466;
      sub_10001D970();
      v36 = v35;
      sub_10002030C(v30);
      v37 = sub_100020A90();
      v39 = sub_1000230EC(v37, v36, v38);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2082;
      sub_10004AA6C();
      v41 = v40;

      v42 = sub_100020A90();
      v44 = sub_1000230EC(v42, v41, v43);

      *(v33 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v31, v32, "VFX simulation for '%{public}s' ended; Remaining simulations = %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      sub_100013F58(v34);
      sub_100013F58(v33);
    }

    else
    {

      sub_10002030C(v30);
    }

    return (*(v72 + 8))(v28, v73);
  }

  else
  {
    v71 = v2;
    if (v69)
    {

      v45 = v22;
      sub_100049F9C();
      sub_1000202A8(a1, v14);
      v46 = sub_100049FAC();
      v47 = sub_10004AB9C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = sub_100014030();
        v49 = sub_10001A07C();
        v74 = v49;
        *v48 = 136446210;
        sub_10001D970();
        v51 = v50;
        sub_10002030C(v14);
        v52 = sub_100020A90();
        v54 = sub_1000230EC(v52, v51, v53);

        *(v48 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v46, v47, "VFX simulation for '%{public}s' ended; Freezing scene as no simulations remain.", v48, 0xCu);
        sub_100008FC8(v49);
        sub_100013F58(v49);
        sub_100013F58(v48);
      }

      else
      {

        sub_10002030C(v14);
      }

      (*(v72 + 8))(v45, v73);
      *(v71 + 24) = 0;
      v67 = sub_10004A42C();
      sub_10004A08C();

      sub_10004A3BC();
    }

    else
    {
      v56 = v3;
      sub_100049F9C();
      v57 = v12;
      sub_1000202A8(a1, v12);
      v58 = sub_100049FAC();
      v59 = sub_10004AB7C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = sub_100014030();
        v61 = sub_10001A07C();
        v74 = v61;
        *v60 = 136446210;
        sub_10001D970();
        v63 = v62;
        sub_10002030C(v57);
        v64 = sub_100020A90();
        v66 = sub_1000230EC(v64, v63, v65);

        *(v60 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v58, v59, "VFX simulation for '%{public}s' ended; Failed to freeze scene because manager was nil.", v60, 0xCu);
        sub_100008FC8(v61);
        sub_100013F58(v61);
        sub_100013F58(v60);
      }

      else
      {

        sub_10002030C(v12);
      }

      return (*(v72 + 8))(v56, v73);
    }
  }
}

uint64_t sub_10001D648()
{
  *(v0 + 24) = 0;
  swift_beginAccess();
  *(v0 + 16) = &_swiftEmptySetSingleton;
}

uint64_t sub_10001D690(uint64_t a1)
{
  type metadata accessor for SimulationReason(0);
  sub_100005A24();
  __chkstk_darwin(v5);
  sub_100005A34();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  sub_100020A60();
  __chkstk_darwin(v10);
  sub_100020A80();
  v11 = sub_100002D54(&qword_100064198, &unk_10004D2D8);
  v12 = sub_100005A50(v11);
  v13 = __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v16 = *(v13 + 56);
  sub_1000202A8(v1, &v33 - v14);
  sub_1000202A8(a1, &v15[v16]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000202A8(v15, v2);
      sub_100020A74();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v22 = sub_100049BAC();
      sub_100005A24();
      v24 = *(v28 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        v29 = sub_100020A74();
        v24(v29);
        v26 = v2;
        goto LABEL_10;
      }

      v30 = v2;
      goto LABEL_13;
    case 2u:
      sub_1000202A8(v15, v8);
      sub_100020A74();
      v21 = swift_getEnumCaseMultiPayload();
      v22 = sub_100049BAC();
      sub_100005A24();
      v24 = *(v23 + 8);
      if (v21 == 2)
      {
        v25 = sub_100020A74();
        v24(v25);
        v26 = v8;
LABEL_10:
        (v24)(v26, v22);
        goto LABEL_16;
      }

      v30 = v8;
LABEL_13:
      (v24)(v30, v22);
      goto LABEL_14;
    case 3u:
      sub_100020A74();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    default:
      sub_1000202A8(v15, v3);
      sub_100020A74();
      v17 = swift_getEnumCaseMultiPayload();
      v18 = sub_100049BAC();
      sub_100005A24();
      v20 = *(v19 + 8);
      if (v17)
      {
        v20(v3, v18);
LABEL_14:
        sub_10000591C(v15, &qword_100064198, &unk_10004D2D8);
        return 0;
      }

      else
      {
        v32 = sub_100020A74();
        (v20)(v32);
        v20(v3, v18);
LABEL_16:
        sub_10002030C(v15);
        return 1;
      }
  }
}

uint64_t sub_10001D970()
{
  v1 = sub_100049BAC();
  sub_1000059BC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000059D0();
  v7 = v6 - v5;
  type metadata accessor for SimulationReason(0);
  sub_100005A24();
  __chkstk_darwin(v8);
  sub_1000059D0();
  sub_1000202A8(v0, v10 - v9);
  v11 = 0x6F6974616D696E61;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v15 = sub_100020A34();
      v16(v15);
      v14 = 0x6B636F6C6E75;
      goto LABEL_4;
    case 2u:
      v17 = sub_100020A34();
      v18(v17);
      v22 = 0x6E6F697461746F72;
      goto LABEL_6;
    case 3u:
      return v11;
    default:
      v12 = sub_100020A34();
      v13(v12);
      v14 = 0x7265646E6572;
LABEL_4:
      v22 = v14 & 0xFFFFFFFFFFFFLL | 0x28000000000000;
LABEL_6:
      sub_100020A48();
      sub_1000209B0(v19, v20, &protocol conformance descriptor for UUID);
      v23._countAndFlagsBits = sub_10004AF1C();
      sub_10004A9DC(v23);

      v24._countAndFlagsBits = 41;
      v24._object = 0xE100000000000000;
      sub_10004A9DC(v24);
      v11 = v22;
      (*(v3 + 8))(v7, v1);
      return v11;
  }
}

void *sub_10001DBAC(uint64_t a1)
{
  v2 = type metadata accessor for SimulationReason(0);
  v34 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  sub_1000059D0();
  v33 = v4 - v3;
  v5 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v5)
  {
    sub_1000207D4(0, v5, 0);
    v9 = sub_1000208FC(a1);
    result = &_swiftEmptyArrayStorage;
    v10 = 0;
    v37 = a1 + 56;
    v30 = a1 + 64;
    v31 = v5;
    v32 = a1;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(a1 + 32))
      {
        v11 = v9 >> 6;
        if ((*(v37 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v7)
        {
          goto LABEL_25;
        }

        v36 = v8;
        v35 = v7;
        v12 = result;
        sub_1000202A8(*(a1 + 48) + *(v34 + 72) * v9, v33);
        v13 = sub_10001D970();
        v15 = v14;
        sub_10002030C(v33);
        result = v12;
        v38 = v12;
        v16 = v12[2];
        v17 = result[3];
        if (v16 >= v17 >> 1)
        {
          sub_1000207D4((v17 > 1), v16 + 1, 1);
          result = v38;
        }

        result[2] = v16 + 1;
        v18 = &result[2 * v16];
        v18[4] = v13;
        v18[5] = v15;
        if (v36)
        {
          goto LABEL_29;
        }

        a1 = v32;
        v19 = 1 << *(v32 + 32);
        if (v9 >= v19)
        {
          goto LABEL_26;
        }

        v20 = *(v37 + 8 * v11);
        if ((v20 & (1 << v9)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v32 + 36) != v35)
        {
          goto LABEL_28;
        }

        v21 = v20 & (-2 << (v9 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v22 = v31;
        }

        else
        {
          v23 = v11 << 6;
          v24 = v11 + 1;
          v22 = v31;
          v25 = (v30 + 8 * v11);
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              v28 = result;
              sub_10002093C(v9, v35, 0);
              result = v28;
              v19 = __clz(__rbit64(v26)) + v23;
              goto LABEL_19;
            }
          }

          v29 = result;
          sub_10002093C(v9, v35, 0);
          result = v29;
        }

LABEL_19:
        if (++v10 == v22)
        {
          return result;
        }

        v8 = 0;
        v7 = *(v32 + 36);
        v9 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
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
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001DE98()
{

  return _swift_deallocClassInstance(v0, 25, 7);
}

uint64_t type metadata accessor for SimulationReason(uint64_t a1)
{
  result = qword_100064130;
  if (!qword_100064130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001DF48(uint64_t a1)
{
  sub_10001DFAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_10001DFAC()
{
  if (!qword_100064140)
  {
    v0 = sub_100049BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_100064140);
    }
  }
}

uint64_t sub_10001E03C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  sub_100049BAC();
  sub_1000059BC();
  v40 = v6;
  v41 = v5;
  __chkstk_darwin(v5);
  sub_100005A34();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_100020A60();
  __chkstk_darwin(v11);
  sub_100020A80();
  type metadata accessor for SimulationReason(0);
  sub_100005A24();
  __chkstk_darwin(v12);
  sub_100005A34();
  v15 = v13 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v39 - v18;
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  v22 = sub_100002D54(&qword_100064198, &unk_10004D2D8);
  v23 = sub_100005A50(v22);
  v24 = __chkstk_darwin(v23);
  v26 = &v39 - v25;
  v27 = *(v24 + 56);
  sub_1000202A8(a1, &v39 - v25);
  sub_1000202A8(v42, &v26[v27]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000202A8(v26, v19);
      if (sub_100020AD0() == 1)
      {
        v33 = v40;
        v32 = v41;
        (*(v40 + 32))(v2, &v26[v27], v41);
        v30 = sub_100049B8C();
        v34 = *(v33 + 8);
        v34(v2, v32);
        v34(v19, v32);
        goto LABEL_14;
      }

      v15 = v19;
      goto LABEL_11;
    case 2u:
      sub_1000202A8(v26, v15);
      if (sub_100020AD0() != 2)
      {
        goto LABEL_11;
      }

      v29 = v40;
      v28 = v41;
      (*(v40 + 32))(v9, &v26[v27], v41);
      v30 = sub_100049B8C();
      v31 = *(v29 + 8);
      v31(v9, v28);
      v31(v15, v28);
      goto LABEL_14;
    case 3u:
      if (sub_100020AD0() != 3)
      {
        goto LABEL_12;
      }

      sub_10002030C(v26);
      v30 = 1;
      return v30 & 1;
    default:
      sub_1000202A8(v26, v21);
      if (sub_100020AD0())
      {
        v15 = v21;
LABEL_11:
        (*(v40 + 8))(v15, v41);
LABEL_12:
        sub_10000591C(v26, &qword_100064198, &unk_10004D2D8);
        v30 = 0;
      }

      else
      {
        v36 = v40;
        v35 = v41;
        (*(v40 + 32))(v3, &v26[v27], v41);
        v30 = sub_100049B8C();
        v37 = *(v36 + 8);
        v37(v3, v35);
        v37(v21, v35);
LABEL_14:
        sub_10002030C(v26);
      }

      return v30 & 1;
  }
}

void sub_10001E40C(uint64_t a1)
{
  v2 = sub_100049BAC();
  sub_1000059BC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000059D0();
  v8 = v7 - v6;
  type metadata accessor for SimulationReason(0);
  sub_100005A24();
  __chkstk_darwin(v9);
  sub_1000059D0();
  sub_1000202A8(v1, v11 - v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v17 = sub_100020A34();
      v18(v17);
      v14 = 2;
      goto LABEL_6;
    case 2u:
      v15 = sub_100020A34();
      v16(v15);
      v14 = 3;
      goto LABEL_6;
    case 3u:
      sub_10004AFFC(0);
      return;
    default:
      v12 = sub_100020A34();
      v13(v12);
      v14 = 1;
LABEL_6:
      sub_10004AFFC(v14);
      sub_100020A48();
      sub_1000209B0(v19, v20, &protocol conformance descriptor for UUID);
      sub_10004A93C();
      (*(v4 + 8))(v8, v2);
      return;
  }
}

Swift::Int sub_10001E5E8()
{
  sub_10004AFEC();
  sub_10001E40C(v1);
  return sub_10004B00C();
}

Swift::Int sub_10001E634(uint64_t a1)
{
  sub_10004AFEC();
  sub_10001E40C(v2);
  return sub_10004B00C();
}

void sub_10001E670(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (type metadata accessor for PosterDataModel.DataPoint(0), sub_100005A24(), a1 + *(v6 + 72) * a2 <= a3))
  {
    type metadata accessor for PosterDataModel.DataPoint(0);
    sub_100020AB0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100020AB0();

    swift_arrayInitWithTakeBackToFront();
  }
}

BOOL sub_10001E724(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for SimulationReason(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_10004AFEC();
  v9 = a2;
  sub_10001E40C(v23);
  v10 = sub_10004B00C();
  v11 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v12 = v10 & v11;
    v13 = (1 << (v10 & v11)) & *(v8 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      v16 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1000202A8(v9, v7);
      v23[0] = *v16;
      sub_10001EDC4(v7, v12, isUniquelyReferenced_nonNull_native);
      v18 = v22;
      *v16 = v23[0];
      sub_10002094C(v9, v18);
      return v13 == 0;
    }

    v14 = *(v5 + 72) * v12;
    sub_1000202A8(*(v8 + 48) + v14, v7);
    v15 = sub_10001E03C(v7, v9);
    sub_10002030C(v7);
    if (v15)
    {
      break;
    }

    v10 = v12 + 1;
  }

  sub_10002030C(v9);
  sub_1000202A8(*(v8 + 48) + v14, v22);
  return v13 == 0;
}

uint64_t sub_10001E8E8(uint64_t a1)
{
  v2 = v1;
  v46 = sub_100049BAC();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SimulationReason(0);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = __chkstk_darwin(v5);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v40 - v8;
  v10 = *v1;
  sub_100002D54(&qword_100064190, &qword_10004D2D0);
  v11 = sub_10004AD3C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v42 = (v3 + 32);
    v43 = v9;
    v40 = v1;
    v41 = (v3 + 8);
    v19 = v11 + 56;
    v44 = v10;
    if (v17)
    {
LABEL_6:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        JUMPOUT(0x10001EDB4);
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
LABEL_12:
        v23 = *(v47 + 72);
        sub_10002094C(*(v10 + 48) + v23 * (v20 | (v13 << 6)), v9);
        sub_10004AFEC();
        sub_1000202A8(v9, v49);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v25 = v45;
            v24 = v46;
            (*v42)(v45, v49, v46);
            v26 = 2;
            goto LABEL_17;
          case 2u:
            v25 = v45;
            v24 = v46;
            (*v42)(v45, v49, v46);
            v26 = 3;
            goto LABEL_17;
          case 3u:
            sub_10004AFFC(0);
            goto LABEL_18;
          default:
            v25 = v45;
            v24 = v46;
            (*v42)(v45, v49, v46);
            v26 = 1;
LABEL_17:
            sub_10004AFFC(v26);
            sub_1000209B0(&qword_100064188, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            sub_10004A93C();
            v27 = v25;
            v28 = v24;
            v9 = v43;
            v10 = v44;
            (*v41)(v27, v28);
LABEL_18:
            v29 = sub_10004B00C();
            v30 = -1 << *(v12 + 32);
            v31 = v29 & ~v30;
            v32 = v31 >> 6;
            if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) != 0)
            {
              v33 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v34 = 0;
              v35 = (63 - v30) >> 6;
              do
              {
                if (++v32 == v35 && (v34 & 1) != 0)
                {
                  goto LABEL_35;
                }

                v36 = v32 == v35;
                if (v32 == v35)
                {
                  v32 = 0;
                }

                v34 |= v36;
                v37 = *(v19 + 8 * v32);
              }

              while (v37 == -1);
              v33 = __clz(__rbit64(~v37)) + (v32 << 6);
            }

            *(v19 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
            sub_10002094C(v9, *(v12 + 48) + v33 * v23);
            ++*(v12 + 16);
            if (!v17)
            {
              goto LABEL_7;
            }

            goto LABEL_6;
        }
      }
    }

    v38 = 1 << *(v10 + 32);
    if (v38 >= 64)
    {
      sub_10001EFB0(0, (v38 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v38;
    }

    v2 = v40;
    *(v10 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_10001EDC4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SimulationReason(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10001E8E8(v12 + 1);
      goto LABEL_10;
    }

    if (v13 <= v12)
    {
      sub_10001F1F4(v12 + 1);
LABEL_10:
      v19 = *v4;
      sub_10004AFEC();
      sub_10001E40C(v24);
      v20 = sub_10004B00C();
      v21 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a2 = v20 & v21;
        if (((*(v19 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1000202A8(*(v19 + 48) + *(v9 + 72) * a2, v11);
        v22 = sub_10001E03C(v11, a1);
        sub_10002030C(v11);
        if (v22)
        {
          goto LABEL_15;
        }

        v20 = a2 + 1;
      }
    }

    sub_10001F014();
  }

LABEL_7:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10002094C(a1, *(v14 + 48) + *(v9 + 72) * a2);
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_15:
    result = sub_10004AF7C();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

uint64_t sub_10001EFB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10004D200;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_10001F014()
{
  v1 = v0;
  v2 = type metadata accessor for SimulationReason(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002D54(&qword_100064190, &qword_10004D2D0);
  v6 = *v0;
  v7 = sub_10004AD2C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
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
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1000202A8(*(v6 + 48) + v21, v5);
        result = sub_10002094C(v5, *(v8 + 48) + v21);
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
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
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
LABEL_19:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_10001F1F4(uint64_t a1)
{
  v2 = v1;
  v49 = sub_100049BAC();
  v3 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SimulationReason(0);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v43 - v9;
  v10 = *v1;
  sub_100002D54(&qword_100064190, &qword_10004D2D0);
  v11 = sub_10004AD3C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v43 = v1;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v44 = (v3 + 8);
    v45 = (v3 + 32);
    v19 = v11 + 56;
    v46 = v10;
    v47 = v8;
    if (v17)
    {
LABEL_6:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        JUMPOUT(0x10001F69CLL);
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
LABEL_12:
        v23 = *(v50 + 72);
        v24 = v52;
        sub_1000202A8(*(v10 + 48) + v23 * (v20 | (v13 << 6)), v52);
        sub_10004AFEC();
        sub_1000202A8(v24, v8);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v25 = v48;
            v30 = v8;
            v27 = v49;
            (*v45)(v48, v30, v49);
            v28 = 2;
            goto LABEL_17;
          case 2u:
            v25 = v48;
            v29 = v8;
            v27 = v49;
            (*v45)(v48, v29, v49);
            v28 = 3;
            goto LABEL_17;
          case 3u:
            sub_10004AFFC(0);
            goto LABEL_18;
          default:
            v25 = v48;
            v26 = v8;
            v27 = v49;
            (*v45)(v48, v26, v49);
            v28 = 1;
LABEL_17:
            sub_10004AFFC(v28);
            sub_1000209B0(&qword_100064188, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            sub_10004A93C();
            v31 = v25;
            v32 = v27;
            v10 = v46;
            v8 = v47;
            (*v44)(v31, v32);
LABEL_18:
            v33 = sub_10004B00C();
            v34 = -1 << *(v12 + 32);
            v35 = v33 & ~v34;
            v36 = v35 >> 6;
            if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) != 0)
            {
              v37 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v38 = 0;
              v39 = (63 - v34) >> 6;
              do
              {
                if (++v36 == v39 && (v38 & 1) != 0)
                {
                  goto LABEL_33;
                }

                v40 = v36 == v39;
                if (v36 == v39)
                {
                  v36 = 0;
                }

                v38 |= v40;
                v41 = *(v19 + 8 * v36);
              }

              while (v41 == -1);
              v37 = __clz(__rbit64(~v41)) + (v36 << 6);
            }

            *(v19 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
            sub_10002094C(v52, *(v12 + 48) + v37 * v23);
            ++*(v12 + 16);
            if (!v17)
            {
              goto LABEL_7;
            }

            goto LABEL_6;
        }
      }
    }

    v2 = v43;
  }

  else
  {
  }

  *v2 = v12;
  return result;
}

unint64_t *sub_10001F6AC(uint64_t (*a1)(char *), unint64_t *a2, uint64_t a3)
{
  v30 = a1;
  v6 = type metadata accessor for SimulationReason(0);
  v29 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a3 + 32);
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v27 = &v25;
    __chkstk_darwin(v7);
    v25 = v10;
    v26 = (&v25 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_10001EFB0(0, v10, v26);
    v28 = 0;
    v10 = 0;
    v31 = a3;
    v13 = *(a3 + 56);
    a3 += 56;
    v12 = v13;
    v14 = 1 << *(a3 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v11 = v15 & v12;
    v16 = (v14 + 63) >> 6;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v20 = v17 | (v10 << 6);
      sub_1000202A8(*(v31 + 48) + *(v29 + 72) * v20, v9);
      v21 = v30(v9);
      sub_10002030C(v9);
      if (v3)
      {

        swift_willThrow();
        return a2;
      }

      if (v21)
      {
        *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_10001FC38(v26, v25, v28, v31);
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        return sub_10001FC38(v26, v25, v28, v31);
      }

      v19 = *(a3 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  a2 = sub_10001FBA8(v24, v10, a3, v30);

  return a2;
}

void *sub_10001F9B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for SimulationReason(0);
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
    sub_1000202A8(*(v31 + 48) + *(v29 + 72) * v21, v9);
    v22 = v30(v9);
    result = sub_10002030C(v9);
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

        return sub_10001FC38(v27, v26, v28, v24);
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

unint64_t *sub_10001FBA8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_10001F9B8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_10001FC38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = sub_100049BAC();
  v8 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SimulationReason(0);
  v46 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v48 = &v39 - v13;
  if (a3)
  {
    if (*(a4 + 16) == a3)
    {
      return a4;
    }

    else
    {
      v43 = v12;
      sub_100002D54(&qword_100064190, &qword_10004D2D0);
      v15 = sub_10004AD4C();
      v14 = v15;
      if (a2 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *a1;
      }

      v17 = 0;
      v39 = (v8 + 8);
      v40 = (v8 + 32);
      v18 = v15 + 56;
      v41 = v10;
      v42 = a4;
      v19 = v43;
      while (2)
      {
        if (v16)
        {
          v20 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
LABEL_16:
          v23 = *(a4 + 48);
          v47 = *(v46 + 72);
          v24 = v48;
          sub_1000202A8(v23 + v47 * (v20 | (v17 << 6)), v48);
          sub_10004AFEC();
          sub_1000202A8(v24, v19);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v25 = v44;
              v26 = v45;
              (*v40)(v44, v19, v45);
              v27 = 2;
              goto LABEL_21;
            case 2u:
              v25 = v44;
              v26 = v45;
              (*v40)(v44, v19, v45);
              v27 = 3;
              goto LABEL_21;
            case 3u:
              sub_10004AFFC(0);
              goto LABEL_22;
            default:
              v25 = v44;
              v26 = v45;
              (*v40)(v44, v19, v45);
              v27 = 1;
LABEL_21:
              sub_10004AFFC(v27);
              sub_1000209B0(&qword_100064188, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              sub_10004A93C();
              (*v39)(v25, v26);
LABEL_22:
              v28 = sub_10004B00C();
              v29 = -1 << *(v14 + 32);
              v30 = v28 & ~v29;
              v31 = v30 >> 6;
              if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) != 0)
              {
                v32 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
                v19 = v43;
              }

              else
              {
                v33 = 0;
                v34 = (63 - v29) >> 6;
                v19 = v43;
                do
                {
                  if (++v31 == v34 && (v33 & 1) != 0)
                  {
                    goto LABEL_36;
                  }

                  v35 = v31 == v34;
                  if (v31 == v34)
                  {
                    v31 = 0;
                  }

                  v33 |= v35;
                  v36 = *(v18 + 8 * v31);
                }

                while (v36 == -1);
                v32 = __clz(__rbit64(~v36)) + (v31 << 6);
              }

              *(v18 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
              sub_10002094C(v48, *(v14 + 48) + v32 * v47);
              ++*(v14 + 16);
              if (__OFSUB__(a3--, 1))
              {
                goto LABEL_37;
              }

              a4 = v42;
              if (!a3)
              {
                goto LABEL_33;
              }

              continue;
          }
        }

        break;
      }

      v21 = v17;
      while (1)
      {
        v17 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          JUMPOUT(0x1000200D8);
        }

        if (v17 >= a2)
        {
          break;
        }

        v22 = a1[v17];
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v16 = (v22 - 1) & v22;
          goto LABEL_16;
        }
      }

LABEL_33:
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v14;
}

uint64_t sub_1000200E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a2;
  v20 = type metadata accessor for SimulationReason(0);
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10004AFEC();
  sub_10001E40C(v22);
  v9 = sub_10004B00C();
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v21;
      return sub_100004544(v15, v14, 1, v20);
    }

    v12 = *(v5 + 72) * v11;
    sub_1000202A8(*(v8 + 48) + v12, v7);
    v13 = sub_10001E03C(v7, a1);
    sub_10002030C(v7);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  v22[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10001F014();
    v17 = v22[0];
  }

  v15 = v21;
  sub_10002094C(*(v17 + 48) + v12, v21);
  sub_100020368(v11);
  v14 = 0;
  *v3 = v22[0];
  return sub_100004544(v15, v14, 1, v20);
}

uint64_t sub_1000202A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulationReason(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002030C(uint64_t a1)
{
  v2 = type metadata accessor for SimulationReason(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020368(int64_t a1)
{
  v44 = sub_100049BAC();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SimulationReason(0);
  v5 = __chkstk_darwin(v45);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v11 = &v38 - v10;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v42 = v3;
    v16 = v9;
    v17 = ~v14;

    v18 = sub_10004AD1C();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v19 = (v18 + 1) & v17;
      v46 = *(v16 + 72);
      v39 = (v42 + 8);
      v40 = (v42 + 32);
      v41 = v17;
      v42 = v13;
      while (2)
      {
        v20 = v46 * v15;
        sub_1000202A8(*(v12 + 48) + v46 * v15, v11);
        sub_10004AFEC();
        sub_1000202A8(v11, v7);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v21 = v43;
            v22 = v44;
            (*v40)(v43, v7, v44);
            v23 = 2;
            goto LABEL_9;
          case 2u:
            v21 = v43;
            v22 = v44;
            (*v40)(v43, v7, v44);
            v23 = 3;
            goto LABEL_9;
          case 3u:
            sub_10004AFFC(0);
            goto LABEL_10;
          default:
            v21 = v43;
            v22 = v44;
            (*v40)(v43, v7, v44);
            v23 = 1;
LABEL_9:
            sub_10004AFFC(v23);
            sub_1000209B0(&qword_100064188, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            sub_10004A93C();
            v24 = v21;
            v25 = v22;
            v17 = v41;
            v13 = v42;
            (*v39)(v24, v25);
LABEL_10:
            v26 = sub_10004B00C();
            sub_10002030C(v11);
            v27 = v26 & v17;
            if (a1 >= v19)
            {
              if (v27 < v19 || a1 < v27)
              {
                goto LABEL_30;
              }
            }

            else if (v27 < v19 && a1 < v27)
            {
              goto LABEL_30;
            }

            v30 = *(v12 + 48);
            v31 = v46 * a1;
            v32 = v30 + v46 * a1;
            v33 = v30 + v20 + v46;
            if (v46 * a1 < v20 || v32 >= v33)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              a1 = v15;
              if (v31 == v20)
              {
                goto LABEL_30;
              }

              swift_arrayInitWithTakeBackToFront();
            }

            a1 = v15;
LABEL_30:
            v15 = (v15 + 1) & v17;
            if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v35 = *(v12 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
    JUMPOUT(0x1000207C4);
  }

  *(v12 + 16) = v37;
  ++*(v12 + 36);
  return result;
}

char *sub_1000207D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000207F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000207F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D54(&qword_100064180, &qword_10004D2C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10002093C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10002094C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimulationReason(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000209B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100020AD0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100020AE8(uint64_t a1, uint64_t a2)
{
  sub_100030C88(a2);
  sub_10004A9CC();
}

uint64_t sub_100020B3C(uint64_t a1, char a2)
{
  sub_10004A9CC();
}

uint64_t sub_100020BAC(uint64_t a1, char a2)
{
  sub_10004A9CC();
}

uint64_t sub_100020CD8(uint64_t a1, char a2)
{
  sub_10004A9CC();
}

uint64_t sub_100020E2C(uint64_t a1, char a2)
{
  sub_10004A9CC();
}

uint64_t sub_100020EFC(uint64_t a1, char a2)
{
  sub_10004A9CC();
}

uint64_t sub_100020F5C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    sub_1000241C0();
  }

  sub_10004A9CC();
}

Swift::Int sub_100021000(uint64_t a1, uint64_t a2)
{
  sub_100024234(a1, a2);
  if (!v2)
  {
    sub_1000241C0();
  }

  sub_10004A9CC();

  return sub_10004B00C();
}

Swift::Int sub_100021084(uint64_t a1, uint64_t a2)
{
  sub_100024234(a1, a2);
  sub_10004A9CC();

  return sub_10004B00C();
}

Swift::Int sub_1000210F0(uint64_t a1, uint64_t a2)
{
  sub_100024234(a1, a2);
  sub_100020E2C(v4, v2);
  return sub_10004B00C();
}

Swift::Int sub_10002115C(uint64_t a1, uint64_t a2)
{
  sub_100024234(a1, a2);
  sub_10004A9CC();

  return sub_10004B00C();
}

Swift::Int sub_1000211F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_10004AFEC();
  a3(a2);
  sub_10004A9CC();

  return sub_10004B00C();
}

Swift::Int sub_100021258(uint64_t a1, Swift::UInt a2)
{
  sub_10004AFEC();
  sub_10004AFFC(a2);
  return sub_10004B00C();
}

id PosterUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PosterUpdater.updateDescriptors(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10002415C();
}

uint64_t sub_1000212E4()
{
  v65 = v0;
  if (qword_1000634A0 != -1)
  {
    sub_10002413C(&qword_1000634A0);
  }

  v1 = sub_100049FCC();
  sub_100008F90(v1, qword_100068390);
  v2 = sub_100049FAC();
  v3 = sub_10004AB9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received request to update descriptors", v4, 2u);
    sub_100013F58(v4);
  }

  v5 = v0[2];

  v6 = 0;
  v7 = 0;
  v63 = v5;
  do
  {
    v8 = v6;
    v9 = &off_10005DD58 + 2 * v7;
    v11 = v9[4];
    v10 = v9[5];
    v12 = *(v5 + 16);

    if (v12)
    {
      v13 = sub_1000241A8();
      v15 = sub_1000236E4(v13, v14);
      if (v16)
      {
        v17 = *(*(v5 + 56) + 8 * v15);
        v18 = sub_100021800();
        if ((v19 & 1) == 0 && v18 == 3)
        {
          v20 = v0[3];

          v21 = v20;
          v22 = sub_100049FAC();
          v23 = sub_10004AB9C();

          v24 = os_log_type_enabled(v22, v23);
          v25 = v0[3];
          if (v24)
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v64 = v27;
            *v26 = 136446466;
            v28 = sub_1000241A8();
            v31 = sub_1000230EC(v28, v29, v30);

            *(v26 + 4) = v31;
            *(v26 + 12) = 2050;
            *(v26 + 14) = 3;

            _os_log_impl(&_mh_execute_header, v22, v23, "Reusing current descriptor with identifier=%{public}s version=%{public}ld", v26, 0x16u);
            sub_100008FC8(v27);
            v32 = v27;
            v5 = v63;
            sub_100013F58(v32);
            sub_100013F58(v26);
          }

          else
          {
          }

          v51 = v17;
          sub_10004AA3C();
          sub_1000241FC();
          if (v50)
          {
            sub_1000241D8(v52);
          }

          sub_10004AA8C();

          goto LABEL_24;
        }
      }
    }

    v33 = v0[3];

    v34 = v33;
    v35 = sub_100049FAC();
    v36 = sub_10004AB9C();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[3];
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v64 = v40;
      *v39 = 136446466;
      v41 = sub_1000241A8();
      *(v39 + 4) = sub_1000230EC(v41, v42, v43);
      *(v39 + 12) = 2050;
      *(v39 + 14) = 3;

      _os_log_impl(&_mh_execute_header, v35, v36, "Creating new descriptor with identifier=%{public}s version=%{public}ld", v39, 0x16u);
      sub_100008FC8(v40);
      sub_100013F58(v40);
      v44 = v39;
      v5 = v63;
      sub_100013F58(v44);
    }

    else
    {
    }

    if (v11 != 0xD000000000000014 || 0x800000010004E720 != v10)
    {
      sub_1000241A8();
      sub_10004AF3C();
    }

    v46 = sub_1000241A8();
    sub_1000220E4(v46, v47, v48);

    sub_10004AA3C();
    sub_1000241FC();
    if (v50)
    {
      sub_1000241D8(v49);
    }

    sub_10004AA8C();
LABEL_24:
    v6 = 1;
    v7 = 1;
  }

  while ((v8 & 1) == 0);
  v53 = sub_100049FAC();
  v54 = sub_10004AB9C();
  if (os_log_type_enabled(v53, v54))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v64 = v57;
    *v56 = 136446210;
    v58 = sub_10004AA6C();
    v60 = sub_1000230EC(v58, v59, &v64);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "Returning descriptors for %{public}s", v56, 0xCu);
    sub_100008FC8(v57);
    sub_100013F58(v57);
    sub_100013F58(v56);
  }

  v61 = v0[1];

  return v61(&_swiftEmptyArrayStorage);
}

uint64_t sub_100021800()
{
  v1 = sub_10004A95C();
  v2 = [v0 objectForUserInfoKey:v1];

  if (v2)
  {
    sub_10004ACEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100023F18(v7, &qword_100064240, &qword_10004D0B8);
  }

  return 0;
}

uint64_t sub_100021914(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_100013820(0, &qword_100064238, PRPosterDescriptor_ptr);
  v5 = sub_10004A8FC();
  v3[5] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_100021A10;

  return PosterUpdater.updateDescriptors(_:)(v5);
}

uint64_t sub_100021A10()
{
  sub_1000241B4();
  v2 = v0;
  sub_1000097FC();
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *v1;
  sub_100009570();
  *v7 = v6;

  if (v2)
  {
    v8 = sub_1000499FC();

    isa = 0;
    v10 = v8;
  }

  else
  {
    isa = sub_10004AA4C().super.isa;

    v8 = 0;
    v10 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, isa, v8);

  _Block_release(v11);
  sub_100009748();

  return v12();
}

uint64_t sub_100021BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100064230, &qword_10004CC28);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_10004AB0C();
  sub_100004544(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_10004D340;
  v9[5] = v8;
  sub_100022E20(0, 0, v6, &unk_10004D350, v9);
}

uint64_t sub_100021CCC()
{
  sub_1000241B4();
  if (qword_1000634A0 != -1)
  {
    sub_10002413C(&qword_1000634A0);
  }

  v1 = sub_100049FCC();
  sub_100008F90(v1, qword_100068390);
  v2 = sub_100049FAC();
  v3 = sub_10004AB9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received request to update configuration", v4, 2u);
    sub_100013F58(v4);
  }

  v5 = *(v0 + 16);

  sub_100009748();
  v10 = v6;
  v7 = v5;
  v8 = *(v0 + 16);

  return v10(v8);
}

uint64_t sub_100021DF8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  sub_100024210();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_100021BA8(a6, v10);
}

uint64_t sub_100021E78(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100021F38;

  return PosterUpdater.updateConfiguration(_:)(v6);
}

uint64_t sub_100021F38()
{
  sub_1000241B4();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;
  sub_100009570();
  *v9 = v8;

  v10 = *(v5 + 32);
  if (v2)
  {
    v11 = sub_1000499FC();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), v4, 0);
    _Block_release(v10);
  }

  v12 = *(v8 + 8);

  return v12();
}

id sub_1000220E4(uint64_t a1, unint64_t a2, char a3)
{
  sub_100013820(0, &unk_100064250, PRMutablePosterDescriptor_ptr);

  v103 = a1;
  v5 = sub_10002295C(a1, a2);
  sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
  sub_100024210();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10004D2F0;
  *(v6 + 32) = [objc_opt_self() vibrantMaterialColor];
  sub_100013820(0, &qword_100064260, PRPosterColor_ptr);
  isa = sub_10004AA4C().super.isa;

  v8 = sub_100024228();
  [v8 v9];

  sub_100024210();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10004D2F0;
  *(v10 + 32) = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:PRTimeFontIdentifierSoft];
  sub_100013820(0, &qword_100064268, PRTimeFontConfiguration_ptr);
  v11 = sub_10004AA4C().super.isa;

  v12 = sub_100024228();
  [v12 v13];

  v14 = sub_10004AB5C().super.super.isa;
  v15 = sub_10004A95C();
  [v5 setObject:v14 forUserInfoKey:v15];

  if (sub_10004A1CC())
  {
    sub_100013820(0, &qword_100064278, PRPosterDescriptorGalleryAssetLookupInfo_ptr);
    v16 = sub_1000229C0(0x4F72656874616557, 0xEA00000000006272);
    v17 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v16];
    v18 = sub_100024228();
    [v18 v19];
  }

  v105 = v5;
  v20 = [objc_allocWithZone(type metadata accessor for WeatherIntent()) init];
  type metadata accessor for WeatherLocation();
  if (qword_100063468 != -1)
  {
    swift_once();
  }

  v106 = v20;
  v21 = static WeatherLocation.currentLocationID;
  v22 = *algn_1000682E8;
  v23 = qword_100063460;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_1000682D0;
  *v98 = 0x800000010004F110;
  v108._countAndFlagsBits = 0x7461636F4C20794DLL;
  v108._object = 0xEB000000006E6F69;
  v109.value._countAndFlagsBits = 0;
  v109.value._object = 0;
  v25.super.isa = v24;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v26 = sub_10004990C(v108, v109, v25, v110, 0xD000000000000049, *v98);
  v28 = v27;

  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = sub_100022AD0(v21, v22, v26, v28);
  [v106 setLocation:v30];

  v31 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
  [v31 setHero:a3 & 1];
  [v31 setAllowsSystemSuggestedComplications:0];
  [v31 setFeaturedConfidenceLevel:1];
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10004C280;
  v33 = INIntentWithTypedIntent();
  v34 = objc_allocWithZone(ATXComplication);
  *(v32 + 32) = sub_100022B64(0xD000000000000018, 0x800000010004F160, 0xD000000000000011, 0x800000010004F180, 0xD000000000000011, 0x800000010004F180, 1, v33, 5u);
  v35 = objc_allocWithZone(ATXComplication);
  sub_100024128();
  *(v32 + 40) = sub_100022B64(v36, v37, v38, v39, v40, v41, 10, v42, 5u);
  v43 = objc_allocWithZone(ATXComplication);
  sub_100024128();
  *(v32 + 48) = sub_100022B64(v44, v45, v46, v47, v48, v49, 10, v50, 5u);
  sub_100024088(v32, v31, &selRef_setModularLandscapeComplications_);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10004C280;
  v52 = objc_allocWithZone(ATXComplication);
  sub_10002416C();
  sub_100024128();
  *(v51 + 32) = sub_100022B64(v53, v54, v55, v56, v57, v58, 11, v59, v99);
  v60 = objc_allocWithZone(ATXComplication);
  sub_10002416C();
  sub_100024128();
  *(v51 + 40) = sub_100022B64(v61, v62, v63, v64, v65, v66, 10, v67, v100);
  v68 = objc_allocWithZone(ATXComplication);
  sub_10002416C();
  sub_100024128();
  *(v51 + 48) = sub_100022B64(v69, v70, v71, v72, v73, v74, 10, v75, v101);
  sub_100024088(v51, v31, &selRef_setModularComplications_);
  v76 = objc_allocWithZone(ATXComplication);
  sub_10002416C();
  sub_100024128();
  v84 = sub_100022B64(v77, v78, v79, v80, v81, v82, 12, v83, v102);
  [v31 setInlineComplication:v84];

  v107 = 0;
  v85 = sub_100024228();
  if ([v85 v86])
  {
    v87 = v107;
  }

  else
  {
    v88 = v107;
    sub_100049A0C();

    swift_willThrow();
    if (qword_1000634A0 != -1)
    {
      sub_10002413C(&qword_1000634A0);
    }

    v89 = sub_100049FCC();
    sub_100008F90(v89, qword_100068390);

    swift_errorRetain();
    v90 = sub_100049FAC();
    v91 = sub_10004AB7C();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v107 = v93;
      *v92 = 136315394;
      *(v92 + 4) = sub_1000230EC(v103, a2, &v107);
      *(v92 + 12) = 2082;
      swift_errorRetain();
      sub_100002D54(&qword_100064270, &unk_10004E090);
      v94 = sub_10004A9AC();
      v96 = sub_1000230EC(v94, v95, &v107);

      *(v92 + 14) = v96;
      _os_log_impl(&_mh_execute_header, v90, v91, "Failed to store gallery options when updating descriptor; identifier=%s, error=%{public}s", v92, 0x16u);
      swift_arrayDestroy();
      sub_100013F58(v93);
      sub_100013F58(v92);
    }

    else
    {
    }
  }

  return v105;
}

id sub_10002295C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004A95C();

  v3 = [swift_getObjCClassFromMetadata() mutableDescriptorWithIdentifier:v2];

  return v3;
}

id sub_1000229C0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_10004A95C();

  v4 = [v2 initWithMicaAssetIdentifier:v3];

  return v4;
}

id PosterUpdater.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13WeatherPoster13PosterUpdater_descriptorVersion] = 3;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PosterUpdater();
  return objc_msgSendSuper2(&v3, "init");
}

id PosterUpdater.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PosterUpdater();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100022AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_10004A95C();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10004A95C();

  v7 = [v4 initWithIdentifier:v5 displayString:v6];

  return v7;
}

id sub_100022B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, unsigned int a9)
{
  v10 = v9;
  v14 = sub_10004A95C();

  v15 = sub_10004A95C();

  if (a6)
  {
    v16 = sub_10004A95C();
  }

  else
  {
    v16 = 0;
  }

  v17 = [v10 initWithExtensionBundleIdentifier:v14 kind:v15 containerBundleIdentifier:v16 widgetFamily:a7 intent:a8 source:a9];

  return v17;
}

uint64_t sub_100022C50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100009474;

  return v6();
}

uint64_t sub_100022D38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100008B6C;

  return v7();
}

uint64_t sub_100022E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002D54(&qword_100064230, &qword_10004CC28);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_100023C68(a3, v22 - v10);
  v12 = sub_10004AB0C();
  if (sub_100004288(v11, 1, v12) == 1)
  {
    sub_100023F18(v11, &qword_100064230, &qword_10004CC28);
  }

  else
  {
    sub_10004AAFC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_10004AAAC();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_10004A9BC() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_100023F18(a3, &qword_100064230, &qword_10004CC28);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100023F18(a3, &qword_100064230, &qword_10004CC28);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

unint64_t sub_1000230EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000231B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100023F78(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100008FC8(v11);
  return v7;
}

unint64_t sub_1000231B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000232B0(a5, a6);
    *a1 = v9;
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
    result = sub_10004ADAC();
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

char *sub_1000232B0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000232FC(a1, a2);
  sub_100023414(&off_10005DC88);
  return v3;
}

char *sub_1000232FC(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10004A9EC())
  {
    result = sub_1000234F8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10004AD5C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_10004ADAC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100023414(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100023568(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000234F8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002D54(&qword_100064248, &qword_10004D380);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100023568(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D54(&qword_100064248, &qword_10004D380);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_10002365C(uint64_t a1)
{
  v1 = a1;
  sub_10004AFEC();
  sub_100030C88(v1);
  sub_10004A9CC();

  v2 = sub_10004B00C();

  return sub_100023780(v1, v2);
}

unint64_t sub_1000236E4(uint64_t a1, uint64_t a2)
{
  sub_10004AFEC();
  sub_10004A9CC();
  v4 = sub_10004B00C();

  return sub_100023FD4(a1, a2, v4);
}

unint64_t sub_100023780(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD000000000000010;
      v8 = "t";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000010;
          v8 = "weatherAnimation";
          break;
        case 2:
          v7 = 0xD000000000000016;
          v8 = "weatherRendering";
          break;
        case 3:
          v7 = 0xD000000000000016;
          v8 = "weatherUnloadingMemory";
          break;
        case 4:
          v7 = 0xD000000000000015;
          v8 = "weatherUnlockAnimation";
          break;
        case 5:
          v7 = 0xD000000000000016;
          v8 = "weatherDeviceRotation";
          break;
        case 6:
          v7 = 0xD000000000000012;
          v8 = "weatherLocationRequest";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000010;
      v11 = "t";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000010;
          v11 = "weatherAnimation";
          break;
        case 2:
          v10 = 0xD000000000000016;
          v11 = "weatherRendering";
          break;
        case 3:
          v10 = 0xD000000000000016;
          v11 = "weatherUnloadingMemory";
          break;
        case 4:
          v10 = 0xD000000000000015;
          v11 = "weatherUnlockAnimation";
          break;
        case 5:
          v10 = 0xD000000000000016;
          v11 = "weatherDeviceRotation";
          break;
        case 6:
          v10 = 0xD000000000000012;
          v11 = "weatherLocationRequest";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_10004AF3C();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

uint64_t sub_100023A14()
{
  sub_10002421C();
  v0 = swift_task_alloc();
  v1 = sub_10002419C(v0);
  *v1 = v2;
  v3 = sub_10002417C(v1);

  return v4(v3);
}

uint64_t sub_100023AAC()
{
  sub_1000241B4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10002419C(v4);
  *v5 = v6;
  v5[1] = sub_100009474;

  return sub_100022C50(v1, v2, v3);
}

uint64_t sub_100023B64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100023BA4()
{
  sub_1000241B4();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_10002419C(v6);
  *v7 = v8;
  v7[1] = sub_100009474;

  return sub_100022D38(v2, v3, v4, v5);
}

uint64_t sub_100023C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100064230, &qword_10004CC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023CD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023D10()
{
  sub_10002421C();
  v0 = swift_task_alloc();
  v1 = sub_10002419C(v0);
  *v1 = v2;
  v3 = sub_1000097A4(v1);

  return v4(v3);
}

uint64_t sub_100023DA8()
{
  sub_10002421C();
  v0 = swift_task_alloc();
  v1 = sub_10002419C(v0);
  *v1 = v2;
  v3 = sub_1000097A4(v1);

  return v4(v3);
}

uint64_t sub_100023E40()
{
  _Block_release(*(v0 + 24));

  sub_100024210();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100023E84()
{
  sub_10002421C();
  v0 = swift_task_alloc();
  v1 = sub_10002419C(v0);
  *v1 = v2;
  v3 = sub_10002417C(v1);

  return v4(v3);
}

uint64_t sub_100023F18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D54(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100023F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100023FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10004AF3C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_100024088(uint64_t a1, void *a2, SEL *a3)
{
  sub_100013820(0, &unk_100064280, ATXComplication_ptr);
  isa = sub_10004AA4C().super.isa;

  [a2 *a3];
}

uint64_t sub_10002413C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000241D8@<X0>(unint64_t a1@<X8>)
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v1 + 1, 1);
}

void *sub_100024234(uint64_t a1, uint64_t a2, ...)
{

  return sub_10004AFEC();
}

id sub_10002424C(uint64_t a1)
{
  v3 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  sub_100024F18(a1, &v12 - v4);
  v6 = type metadata accessor for DynamicRotationState(0);
  sub_100004544(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC13WeatherPoster12GradientView_rotationState;
  swift_beginAccess();
  sub_100024F7C(v5, v1 + v7);
  swift_endAccess();
  sub_100024BD0(&v13, *(a1 + *(v6 + 20)));
  v8 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer);
  v14.x = sub_100025268();
  v14.y = 0.0;
  v9 = CGPointApplyAffineTransform(v14, &v12);
  [v8 setStartPoint:{v9.x, v9.y}];
  v15.x = sub_100025268();
  v15.y = 1.0;
  v10 = CGPointApplyAffineTransform(v15, &v12);
  return [v8 setEndPoint:{v10.x, v10.y}];
}

uint64_t sub_1000243AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13WeatherPoster12GradientView_skyBackgroundGradient;
  swift_beginAccess();
  v4 = sub_10004A71C();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_100024478();
  return (*(v5 + 8))(a1, v4);
}

void sub_100024478()
{
  v1 = v0;
  v2 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for DynamicRotationState(0);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004A71C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_opt_self();
  [v23 begin];
  v12 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer);
  v13 = [v12 colors];
  if (v13)
  {
    v22 = sub_10004AA5C();
  }

  else
  {
    v22 = 0;
  }

  v14 = OBJC_IVAR____TtC13WeatherPoster12GradientView_skyBackgroundGradient;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v14, v8);
  v15.super.super.isa = v12;
  sub_10004A6FC(v15);
  (*(v9 + 8))(v11, v8);
  v16 = OBJC_IVAR____TtC13WeatherPoster12GradientView_rotationState;
  swift_beginAccess();
  sub_100024FEC(v1 + v16, v4);
  if (sub_100004288(v4, 1, v5) == 1)
  {
    sub_10002505C(v4);
  }

  else
  {
    sub_100025184(v4, v7);
    v17 = [objc_opt_self() currentDevice];
    v18 = [v17 userInterfaceIdiom];

    if (v18 == 1)
    {
      sub_10002424C(v7);
    }

    sub_1000251E8(v7);
  }

  sub_1000250C4();
  v19 = sub_10002485C(0x73726F6C6F63, 0xE600000000000000);
  if (v22)
  {
  }

  else
  {

    v13 = 0;
  }

  [v19 setFromValue:{v13, v22}];
  swift_unknownObjectRelease();
  v20 = [v12 colors];
  [v19 setToValue:v20];

  v21 = v19;
  [v21 setDuration:0.25];
  if (qword_100063470 != -1)
  {
    swift_once();
  }

  [v21 setTimingFunction:qword_100068300];

  sub_100025108(v21, 0x73726F6C6F63, 0xE600000000000000, v12);
  [v23 commit];
}

id sub_10002485C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_10004A95C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath:v2];

  return v3;
}

char *sub_1000248CC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer;
  *&v2[v5] = [objc_allocWithZone(CAGradientLayer) init];
  v6 = OBJC_IVAR____TtC13WeatherPoster12GradientView_rotationState;
  v7 = type metadata accessor for DynamicRotationState(0);
  sub_100004544(&v2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC13WeatherPoster12GradientView_skyBackgroundGradient;
  v9 = sub_10004A71C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v2[v8], a1, v9);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer;
  v13 = *&v11[OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer];
  v14 = v11;
  v15.super.super.isa = v13;
  isa = v15.super.super.isa;
  sub_10004A6FC(v15);

  v17 = [v14 layer];
  [v17 addSublayer:*&v11[v12]];

  (*(v10 + 8))(a1, v9);
  return v14;
}

void sub_100024A58()
{
  v1 = OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer;
  *(v0 + v1) = [objc_allocWithZone(CAGradientLayer) init];
  v2 = OBJC_IVAR____TtC13WeatherPoster12GradientView_rotationState;
  v3 = type metadata accessor for DynamicRotationState(0);
  sub_100004544(v0 + v2, 1, 1, v3);
  sub_10004AE3C();
  __break(1u);
}

id sub_100024B1C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC13WeatherPoster12GradientView_gradientLayer];
  [v0 bounds];
  return [v1 setFrame:?];
}

__n128 sub_100024BD0@<Q0>(__n128 *a1@<X8>, float a2@<S0>)
{
  CGAffineTransformMakeTranslation(&v53, -0.5, -0.5);
  a = v53.a;
  b = v53.b;
  c = v53.c;
  d = v53.d;
  tx = v53.tx;
  ty = v53.ty;
  Rotation = CGAffineTransformMakeRotation(&v53, ((a2 * 3.1416) / 180.0));
  v11 = *&v53.a;
  v12 = *&v53.c;
  v13 = *&v53.tx;
  v53.a = a;
  v53.b = b;
  v53.c = c;
  v53.d = d;
  v53.tx = tx;
  v53.ty = ty;
  sub_100025244(Rotation, v14, v15, v16, v17, v18, v19, v11, v12, v13, v20, v21, v22, v23, v38, v39, v40, v41, v42, v45, v46, v48, v49, v51, v24, v25, *&v52.a, *&v52.c);
  v53.a = a;
  v53.b = b;
  v53.c = c;
  v53.d = d;
  v53.tx = tx;
  v53.ty = ty;
  v26 = CGAffineTransformInvert(&v52, &v53);
  v53 = v43;
  sub_100025244(v26, v27, v28, v29, v30, v31, v32, *&v52.a, *&v52.c, *&v52.tx, v33, *&v43.a, *&v43.c, v34, *&v43.c, *&v43.d, *&v43.a, *&v43.b, *&v43.a, *&v43.b, *&v43.c, *&v43.d, *&v43.tx, *&v43.ty, v35, v36, *&v52.a, *&v52.c);
  result = v44;
  *a1 = v44;
  a1[1] = v47;
  a1[2] = v50;
  return result;
}

uint64_t type metadata accessor for GradientView(uint64_t a1)
{
  result = qword_1000642C8;
  if (!qword_1000642C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024DE0(uint64_t a1)
{
  sub_100024EBC(319);
  if (v1 <= 0x3F)
  {
    sub_10004A71C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100024EBC(uint64_t a1)
{
  if (!qword_100063AE8)
  {
    type metadata accessor for DynamicRotationState(255);
    v1 = sub_10004ACDC();
    if (!v2)
    {
      atomic_store(v1, &qword_100063AE8);
    }
  }
}

uint64_t sub_100024F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicRotationState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002505C(uint64_t a1)
{
  v2 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000250C4()
{
  result = qword_1000642D8;
  if (!qword_1000642D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000642D8);
  }

  return result;
}

void sub_100025108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10004A95C();

  [a4 addAnimation:a1 forKey:v6];
}

uint64_t sub_100025184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicRotationState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000251E8(uint64_t a1)
{
  v2 = type metadata accessor for DynamicRotationState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGAffineTransform *sub_100025244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGAffineTransform *a5, CGAffineTransform *t2, CGAffineTransform *t1, __n128 a8, __n128 a9, __n128 a10, uint64_t a11, __n128 t2a, __n128 t2_16, __n128 t2_32, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __n128 t1a, __n128 t2_16a, __n128 t2_32a, uint64_t t1b)
{
  t1a = a8;
  t2_16a = a9;
  t2_32a = a10;

  return CGAffineTransformConcat(&a16, &t1b, &t1a);
}

double sub_100025268()
{
  *(v0 - 192) = v1;
  *(v0 - 184) = v2;
  *(v0 - 176) = v3;
  *(v0 - 168) = v4;
  *(v0 - 160) = v5;
  *(v0 - 152) = v6;
  return 0.0;
}

uint64_t sub_10002527C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DD98;
  v7._object = a2;
  v4 = sub_10004AE7C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000252D0(char a1)
{
  if (a1)
  {
    return 0x656E696C66666FLL;
  }

  else
  {
    return 0x6C62616863616572;
  }
}

uint64_t sub_100025330@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002527C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100025360@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000252D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_10002538C()
{
  if (!*(v0 + 16))
  {
    v1 = v0;
    sub_10004A16C();
    swift_allocObject();
    v2 = sub_10004A15C();
    v3 = swift_allocObject();
    swift_weakInit();

    sub_100013364(sub_100025F9C, v3);
    sub_10004A12C();

    sub_10004A13C();
    *(v1 + 16) = v2;
  }
}

uint64_t sub_100025470(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000254D0(a1);
  }

  return result;
}

uint64_t sub_1000254D0(uint64_t a1)
{
  v2 = sub_10004A1DC();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004A1FC();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004A1AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100008994();
  v17 = sub_10004ABFC();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v9 + 32))(v13 + v12, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_10002605C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012500;
  aBlock[3] = &unk_10005ED40;
  v14 = _Block_copy(aBlock);

  sub_10004A1EC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000260D8(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002D54(&qword_100063C58, &unk_10004DE10);
  sub_100026120(&qword_100063C60, &qword_100063C58, &unk_10004DE10);
  sub_10004ACFC();
  v15 = v17;
  sub_10004AC0C();
  _Block_release(v14);

  (*(v20 + 8))(v4, v2);
  return (*(v18 + 8))(v7, v19);
}

uint64_t sub_100025880()
{
  if (*(v0 + 16))
  {

    sub_100013364(0, 0);
    sub_10004A12C();

    if (*(v0 + 16))
    {

      sub_10004A14C();
    }
  }

  *(v0 + 16) = 0;
}

uint64_t sub_10002590C(uint64_t a1)
{
  v1 = sub_10004A18C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_10004A19C();
      (*(v2 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v1);
      v10 = sub_10004A17C();
      v11 = *(v2 + 8);
      v11(v5, v1);
      v11(v7, v1);
      sub_10004343C((v10 & 1) == 0);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100025AA8()
{

  sub_100013DE4(v0 + 32);
  return v0;
}

uint64_t sub_100025AD8()
{
  sub_100025AA8();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for LabelViewModel.Placement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100025C84);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100025CCC()
{
  result = qword_100064390;
  if (!qword_100064390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064390);
  }

  return result;
}

void *sub_100025D20()
{
  v10 = sub_10004ABEC();
  sub_1000059BC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000059D0();
  v6 = v5 - v4;
  v7 = sub_10004ABCC();
  __chkstk_darwin(v7);
  sub_1000059D0();
  v8 = sub_10004A1FC();
  __chkstk_darwin(v8 - 8);
  sub_1000059D0();
  v0[2] = 0;
  sub_100008994();
  sub_10004A1EC();
  sub_1000260D8(&qword_100064398, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100002D54(&qword_1000643A0, &qword_10004D4A0);
  sub_100026120(&qword_1000643A8, &qword_1000643A0, &qword_10004D4A0);
  sub_10004ACFC();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  v0[3] = sub_10004AC1C();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_100025F64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025FA4()
{
  v1 = sub_10004A1AC();
  sub_1000059BC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10002605C()
{
  sub_10004A1AC();
  v1 = *(v0 + 16);

  return sub_10002590C(v1);
}

double sub_1000260C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000260D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100026120(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009240(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100026194(uint64_t a1)
{
  result = type metadata accessor for PosterDataModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100026234(uint64_t a1, uint64_t a2, int *a3)
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
    sub_100049E9C();
    sub_100005A00();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      sub_100049C2C();
      sub_100005A00();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        sub_100002D54(&unk_100063DE0, "4E");
        sub_100005A00();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[7];
        }

        else
        {
          v10 = sub_100002D54(&qword_1000637A8, "4E");
          v11 = a3[9];
        }
      }
    }

    return sub_100004288(a1 + v11, a2, v10);
  }
}

uint64_t sub_1000263A8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_100049E9C();
    sub_100005A00();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_100049C2C();
      sub_100005A00();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        sub_100002D54(&unk_100063DE0, "4E");
        sub_100005A00();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[7];
        }

        else
        {
          v10 = sub_100002D54(&qword_1000637A8, "4E");
          v11 = a4[9];
        }
      }
    }

    return sub_100004544(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_100026504(uint64_t a1)
{
  sub_100049E9C();
  if (v1 <= 0x3F)
  {
    sub_100049C2C();
    if (v2 <= 0x3F)
    {
      sub_100026670(319, &qword_100063818, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100026670(319, &qword_100063820, &type metadata accessor for BackgroundMoonData, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100026670(319, &unk_1000644C0, type metadata accessor for PosterDataModel.DataPoint, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100026670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000266F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026740(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10002CAC4();
  sub_100049B7C();
  sub_100005A00();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_100049D9C();
    sub_100005A00();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_10004A69C();
      sub_100005A00();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[8];
      }

      else
      {
        sub_10004A8AC();
        sub_100005A00();
        if (*(v16 + 84) != a2)
        {
          v18 = *(v3 + a3[10]);
          if (v18 >= 2)
          {
            return ((v18 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = a3[9];
      }
    }

    v9 = v3 + v12;
  }

  return sub_100004288(v9, a2, v8);
}

void sub_1000268CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_10002CAC4();
  sub_100049B7C();
  sub_100005A00();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_100049D9C();
    sub_100005A00();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_10004A69C();
      sub_100005A00();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[8];
      }

      else
      {
        sub_10004A8AC();
        sub_100005A00();
        if (*(v18 + 84) != a3)
        {
          *(v4 + a4[10]) = a2 + 1;
          return;
        }

        v10 = v17;
        v14 = a4[9];
      }
    }

    v11 = v4 + v14;
  }

  sub_100004544(v11, a2, a2, v10);
}

uint64_t sub_100026A30(uint64_t a1)
{
  result = sub_100049B7C();
  if (v2 <= 0x3F)
  {
    result = sub_100049D9C();
    if (v3 <= 0x3F)
    {
      result = sub_10004A69C();
      if (v4 <= 0x3F)
      {
        result = sub_10004A8AC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterDataError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PosterDataError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100026C50);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100026C88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for PosterData(0);
  sub_100005A24();
  __chkstk_darwin(v4);
  sub_1000059D0();
  v7 = v6 - v5;
  sub_10002C940();
  sub_10002B3AC(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002B5B0(v7, a1);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for PosterDataModel(0);
  return sub_100004544(a1, v8, 1, v9);
}

uint64_t sub_100026D60()
{
  v1 = type metadata accessor for PosterDataModel(0);
  v2 = sub_100005A50(v1);
  __chkstk_darwin(v2);
  sub_1000059D0();
  v3 = sub_10002CAD0();
  v4 = type metadata accessor for PosterData(v3);
  sub_100005A24();
  __chkstk_darwin(v5);
  sub_1000059D0();
  v8 = (v7 - v6);
  sub_10002C940();
  v9 = sub_10002CB3C();
  sub_10002B3AC(v9, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002C99C();
    sub_10002B5B0(v8, v0);
    v11 = sub_10002A190();
    sub_10002AFE4(v0, v4);
  }

  else
  {
    v12 = *v8;
    v11 = 0x4F6B726F7774656ELL;
    switch(v12)
    {
      case 1:
        return v11;
      case 2:
        v11 = 0x617461446F6ELL;
        break;
      case 3:
        v11 = 0xD000000000000014;
        break;
      default:
        v11 = 0xD000000000000014;
        break;
    }
  }

  return v11;
}

unint64_t sub_100026EE4(char a1)
{
  result = 0x4F6B726F7774656ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x617461446F6ELL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_100026F80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DDE8;
  v6._object = a2;
  v4 = sub_10004AE7C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100026FE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100026F80(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100027014()
{
  v1 = sub_10002CB60();
  result = sub_100026EE4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1000270FC()
{
  result = qword_1000645B0;
  if (!qword_1000645B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000645B0);
  }

  return result;
}

uint64_t sub_100027150(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_100049E9C();
  sub_1000059BC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000059D0();
  v9 = v8 - v7;
  sub_10004A8AC();
  sub_1000059BC();
  v53 = v11;
  v54 = v10;
  __chkstk_darwin(v10);
  sub_1000059D0();
  v52 = v13 - v12;
  v14 = sub_100005A44();
  v15 = type metadata accessor for PosterDataModel.DataPoint(v14);
  sub_1000059BC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100005A34();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  v24 = &v47 - v23;
  v25 = type metadata accessor for PosterDataModel(0);
  v26 = *(a1 + *(v25 + 40));
  if (*(v26 + 16))
  {
    v27 = v25;
    v28 = *(v17 + 80);
    v48 = v17;
    v49 = v28;
    v50 = type metadata accessor for PosterDataModel.DataPoint;
    v29 = v26 + ((v28 + 32) & ~v28);
    v30 = (v28 + 32) & ~v28;
    sub_10002B3AC(v29, v24);
    (*(v5 + 16))(v9, a1 + *(v27 + 20), v3);
    sub_10004AC9C();
    v31 = v52;
    sub_10004A52C();
    sub_100049B7C();
    sub_100005A24();
    v32 = sub_10002CB30();
    v33(v32);
    v34 = v15[5];
    sub_100049D9C();
    sub_100005A24();
    (*(v35 + 16))(v21 + v34, &v24[v34]);
    v36 = *&v24[v15[6]];
    v37 = *&v24[v15[7]];
    v38 = v15[8];
    sub_10004A69C();
    sub_100005A24();
    (*(v39 + 16))(v21 + v38, &v24[v38]);
    v41 = v53;
    v40 = v54;
    (*(v53 + 16))(v21 + v15[9], v31, v54);
    sub_10004A89C();
    *(v21 + v15[6]) = v36;
    *(v21 + v15[7]) = v37;
    *(v21 + v15[10]) = v42 > 0.0;
    sub_100002D54(&qword_1000639B0, &qword_10004D820);
    v43 = *(v48 + 72);
    v44 = v30;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10004CFA0;
    v45 = v26 + v44;
    sub_10002B3AC(v24, v45);
    sub_10002B5B0(v21, v45 + v43);
    (*(v41 + 8))(v31, v40);
    sub_10002AFE4(v24, type metadata accessor for PosterDataModel.DataPoint);
  }

  else
  {
  }

  return v26;
}

uint64_t sub_100027520(double a1)
{
  v3 = sub_100002D54(&unk_100065230, &qword_10004D7F8);
  sub_100005A50(v3);
  sub_100013ED4();
  __chkstk_darwin(v4);
  sub_10002CAD0();
  v5 = sub_100049B7C();
  sub_1000059BC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005A34();
  v10 = __chkstk_darwin(v9);
  v12 = &v39 - v11;
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  sub_10002BD10(v1, v1, &unk_100065230, &qword_10004D7F8);
  v15 = type metadata accessor for PosterDataModel.DataPoint(0);
  if (sub_100004288(v1, 1, v15) == 1)
  {
    sub_10000591C(v1, &unk_100065230, &qword_10004D7F8);
    return 1;
  }

  (*(v7 + 16))(v12, v1, v5);
  sub_10002AFE4(v1, type metadata accessor for PosterDataModel.DataPoint);
  (*(v7 + 32))(v14, v12, v5);
  sub_100049B6C();
  sub_100049AFC();
  v18 = v17;
  v19 = *(v7 + 8);
  v20 = sub_10002CB30();
  (v19)(v20);
  if (v18 >= a1)
  {
    if (qword_100063488 != -1)
    {
      sub_100009728(&qword_100063488);
    }

    v29 = sub_100049FCC();
    sub_100008F90(v29, qword_100068348);
    v30 = sub_100049FAC();
    v31 = sub_10004AB9C();
    if (os_log_type_enabled(v30, v31))
    {
      swift_slowAlloc();
      v32 = sub_10002CBD8();
      sub_10002CA88(v32, 4.8752e-34);
      sub_10004AB4C();
      sub_10002CA44();
      sub_10002CAA8();

      sub_10002CA64();
      sub_10004AB4C();
      sub_10002CA44();
      v33 = sub_10002CAA8();

      *(v19 + 14) = v33;
      sub_10002CC68(&_mh_execute_header, v34, v35, "Data point requires update; age=%{public}s, maxAge=%{public}s");
      swift_arrayDestroy();
      sub_100013F58(v32);
      sub_100013F58(v19);

      v36 = sub_10002CB3C();
      v39(v36);
    }

    else
    {

      v38 = sub_10002CB3C();
      (v19)(v38);
    }

    return 1;
  }

  if (qword_100063488 != -1)
  {
    sub_100009728(&qword_100063488);
  }

  v21 = sub_100049FCC();
  sub_100008F90(v21, qword_100068348);
  v22 = sub_100049FAC();
  v23 = sub_10004AB9C();
  if (os_log_type_enabled(v22, v23))
  {
    swift_slowAlloc();
    v24 = sub_10002CBD8();
    sub_10002CA88(v24, 4.8752e-34);
    sub_10004AB4C();
    sub_10002CA44();
    sub_10002CAA8();

    sub_10002CA64();
    sub_10004AB4C();
    sub_10002CA44();
    v25 = sub_10002CAA8();

    *(v19 + 14) = v25;
    sub_10002CC68(&_mh_execute_header, v26, v27, "Data point does not require update; age=%{public}s, maxAge=%{public}s");
    swift_arrayDestroy();
    sub_100013F58(v24);
    sub_100013F58(v19);

    v28 = sub_10002CB3C();
    v39(v28);
  }

  else
  {

    v37 = sub_10002CB3C();
    (v19)(v37);
  }

  return 0;
}

void sub_1000279C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10002CC50();
  v26 = sub_10002CAC4();
  type metadata accessor for PosterDataModel(v26);
  sub_100005A24();
  __chkstk_darwin(v27);
  sub_1000059D0();
  v30 = v29 - v28;
  type metadata accessor for PosterData(0);
  sub_100005A24();
  __chkstk_darwin(v31);
  sub_1000059D0();
  v34 = v33 - v32;
  v35 = sub_100002D54(&qword_1000645E0, &qword_10004D7D8);
  sub_1000059BC();
  v37 = v36;
  sub_100013ED4();
  __chkstk_darwin(v38);
  sub_10002CAE0();
  sub_10002CC88(v24, v24[3]);
  sub_10002B508();
  sub_10004B04C();
  sub_10002C940();
  sub_10002B3AC(v24, v34);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002C984();
    sub_10002B5B0(v34, v30);
    sub_10002C9FC();
    sub_10002B364(v39, v40, &unk_10004D6CC);
    sub_10004AF0C();
    v41 = sub_10002CB84();
    sub_10002AFE4(v41, v42);
  }

  else
  {
    sub_10002B608();
    sub_10004AF0C();
  }

  (*(v37 + 8))(v25, v35);
  sub_10002CBF8();
}

void sub_100027BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10002CC50();
  v26 = v25;
  v27 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v27);
  sub_100013ED4();
  __chkstk_darwin(v28);
  sub_100013F88();
  v46 = v29;
  v30 = sub_100005A44();
  v44 = type metadata accessor for PosterDataModel(v30);
  sub_100005A24();
  __chkstk_darwin(v31);
  sub_1000059D0();
  sub_10002CB54();
  sub_100002D54(&qword_1000645C0, &qword_10004D7D0);
  sub_1000059BC();
  v45 = v32;
  sub_100013ED4();
  __chkstk_darwin(v33);
  sub_10002CAE0();
  type metadata accessor for PosterData(0);
  sub_100005A24();
  __chkstk_darwin(v34);
  sub_1000059D0();
  v37 = v36 - v35;
  sub_10002CC88(v26, v26[3]);
  sub_10002B508();
  sub_10004B03C();
  if (!v23)
  {
    sub_10002C9FC();
    sub_10002B364(v38, v39, &unk_10004D6F4);
    sub_10004AECC();
    sub_100004544(v46, 0, 1, v44);
    v40 = sub_10002CB10();
    v41(v40, v45);
    sub_10002C99C();
    sub_10002B5B0(v46, v24);
    sub_10002B5B0(v24, v37);
    swift_storeEnumTagMultiPayload();
    v42 = sub_10002CB84();
    sub_10002B5B0(v42, v43);
  }

  sub_100008FC8(v26);
  sub_10002CBF8();
}

uint64_t sub_100028008(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DE68;
  v7._object = a2;
  v4 = sub_10004AE7C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100028070(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1000280C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100028008(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000280F0()
{
  v1 = sub_10002CB60();
  result = sub_100028070(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100028120@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100028008(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100028168@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002805C();
  *a1 = result;
  return result;
}

uint64_t sub_100028190(uint64_t a1)
{
  v2 = sub_10002B508();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000281CC(uint64_t a1)
{
  v2 = sub_10002B508();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100028238(void *a1)
{
  v3 = v1;
  sub_100002D54(&qword_100064630, &qword_10004D7F0);
  sub_1000059BC();
  sub_100013ED4();
  __chkstk_darwin(v5);
  sub_10002CB54();
  sub_10002CC88(a1, a1[3]);
  v6 = sub_10002B65C();
  sub_10002CC10(&type metadata for PosterDataModel.DataPoint.CodingKeys, v7, v6);
  LOBYTE(v29) = 0;
  sub_100049B7C();
  sub_10002C928();
  v10 = sub_10002B364(v8, v9, &protocol conformance descriptor for Date);
  sub_10002C958(v3, &v29, v11, v12, v10);
  if (!v2)
  {
    type metadata accessor for PosterDataModel.DataPoint(0);
    LOBYTE(v29) = 1;
    sub_100049D9C();
    sub_10002C9E4();
    sub_10002B364(v13, v14, &protocol conformance descriptor for WeatherCondition);
    v15 = sub_10002CB78();
    sub_10002C958(v15, &v29, v16, v17, v18);
    LOBYTE(v29) = 2;
    sub_10002C978();
    sub_10004AEFC();
    LOBYTE(v29) = 3;
    sub_10002C978();
    sub_10004AEFC();
    LOBYTE(v29) = 4;
    sub_10004A69C();
    sub_10002C9CC();
    sub_10002B364(v19, v20, &protocol conformance descriptor for CloudAltitudeKind);
    v21 = sub_10002CB78();
    sub_10002C958(v21, &v29, v22, v23, v24);
    sub_10004A89C();
    v29 = v25;
    sub_10002B704();
    sub_10002C978();
    sub_10004AF0C();
    sub_10004A88C();
    LOBYTE(v29) = 6;
    sub_10002C978();
    sub_10004AEEC();
    LOBYTE(v29) = 7;
    sub_10002C978();
    sub_10004AEEC();
  }

  v26 = sub_10002CB30();
  return v27(v26);
}

uint64_t sub_100028504@<X0>(uint64_t a2@<X8>)
{
  sub_10002CAC4();
  v59 = sub_10004A8AC();
  sub_1000059BC();
  v50 = v5;
  __chkstk_darwin(v6);
  sub_1000059D0();
  v51 = v8 - v7;
  v9 = sub_100002D54(&qword_1000645F8, &qword_10004D7E0);
  sub_100005A50(v9);
  sub_100013ED4();
  __chkstk_darwin(v10);
  sub_100013F88();
  v54 = v11;
  sub_100005A44();
  v55 = sub_10004A69C();
  sub_1000059BC();
  v53 = v12;
  __chkstk_darwin(v13);
  sub_1000059D0();
  v52 = v15 - v14;
  sub_100005A44();
  v58 = sub_100049D9C();
  sub_1000059BC();
  v56 = v16;
  __chkstk_darwin(v17);
  sub_1000059D0();
  v20 = v19 - v18;
  v21 = sub_100049B7C();
  sub_1000059BC();
  v57 = v22;
  __chkstk_darwin(v23);
  sub_1000059D0();
  sub_10002CB54();
  v24 = sub_100002D54(&qword_100064600, &qword_10004D7E8);
  sub_1000059BC();
  v26 = v25;
  sub_100013ED4();
  __chkstk_darwin(v27);
  sub_10002CAE0();
  v63 = v2;
  sub_10002CC88(v2, v2[3]);
  sub_10002B65C();
  sub_10004B03C();
  if (!v62)
  {
    v28 = v26;
    sub_10002C928();
    sub_10002B364(v29, v30, &protocol conformance descriptor for Date);
    sub_10004AECC();
    v49 = v3;
    sub_10002C9E4();
    sub_10002B364(v31, v32, &protocol conformance descriptor for WeatherCondition);
    sub_10004AECC();
    sub_10002CB20(2);
    v34 = v4;
    sub_10004AEBC();
    v36 = v35;
    sub_10002CB20(3);
    sub_10004AEBC();
    v38 = v37;
    sub_10002C9CC();
    sub_10002B364(v39, v40, &protocol conformance descriptor for CloudAltitudeKind);
    sub_10004AE8C();
    v41 = sub_10002CB48();
    if (sub_100004288(v41, v42, v55) == 1)
    {
      (*(v53 + 104))(v52, enum case for CloudAltitudeKind.low(_:), v55);
      v43 = sub_10002CB48();
      v45 = a2;
      v47 = v50;
      v46 = v51;
      if (sub_100004288(v43, v44, v55) != 1)
      {
        sub_10000591C(v54, &qword_1000645F8, &qword_10004D7E0);
      }
    }

    else
    {
      (*(v53 + 32))(v52, v54, v55);
      v45 = a2;
      v47 = v50;
      v46 = v51;
    }

    sub_10002B6B0();
    sub_10004AECC();
    sub_10004AEAC();
    sub_10004A8BC();
    sub_10002CB20(7);
    v61 = sub_10004AEAC();
    (*(v28 + 8))(v34, v24);
    (*(v57 + 32))(v45, v49, v21);
    v48 = type metadata accessor for PosterDataModel.DataPoint(0);
    (*(v56 + 32))(v45 + v48[5], v20, v58);
    *(v45 + v48[6]) = v36;
    *(v45 + v48[7]) = v38;
    (*(v53 + 32))(v45 + v48[8], v52, v55);
    (*(v47 + 32))(v45 + v48[9], v46, v59);
    *(v45 + v48[10]) = v61 & 1;
  }

  return sub_100008FC8(v63);
}

unint64_t sub_100028BE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DEB8;
  v6._object = a2;
  v4 = sub_10004AE7C(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100028C44(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      v3 = 0x7469646E6F63;
      goto LABEL_10;
    case 2:
      result = 0x65657053646E6977;
      break;
    case 3:
      result = 0x766F4364756F6C63;
      break;
    case 4:
      result = 0x6E694B64756F6C63;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      v3 = 0x746176656C65;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
      break;
    case 7:
      result = 0x67696C7961447369;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100028D88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100028BE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100028DB8()
{
  v1 = sub_10002CB60();
  result = sub_100028C44(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100028DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100028C34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100028E24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100028C38();
  *a1 = result;
  return result;
}

uint64_t sub_100028E4C(uint64_t a1)
{
  v2 = sub_10002B65C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100028E88(uint64_t a1)
{
  v2 = sub_10002B65C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100028EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10002CC50();
  a26 = v29;
  a27 = v30;
  v31 = v27;
  v33 = v32;
  sub_100002D54(&qword_1000646A0, &qword_10004D828);
  sub_1000059BC();
  sub_100013ED4();
  __chkstk_darwin(v34);
  sub_10002CB54();
  sub_10002CC88(v33, v33[3]);
  v35 = sub_10002B758();
  sub_10002CC10(&type metadata for PosterDataModel.CodingKeys, v36, v35);
  a17 = 0;
  sub_10002C978();
  sub_10004AEDC();
  if (!v28)
  {
    v37 = type metadata accessor for PosterDataModel(0);
    a16 = 1;
    sub_100049E9C();
    sub_10002CA2C();
    sub_10002B364(v38, v39, &protocol conformance descriptor for LocationCoordinate);
    v40 = sub_10002CB78();
    sub_10002C958(v40, &a16, v41, v42, v43);
    sub_100049BEC();
    a15 = 2;
    sub_10002C978();
    sub_10004AEDC();

    a14 = 3;
    sub_100002D54(&unk_100063DE0, "4E");
    sub_10002BAC8(&qword_1000646B0, &qword_100064638, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
    sub_10002C978();
    sub_10004AF0C();
    a13 = 4;
    sub_10002C978();
    sub_10004AF0C();
    a12 = 5;
    sub_100002D54(&qword_1000637A8, "4E");
    sub_10002BB54();
    v46 = sub_10002CB78();
    sub_10002C958(v46, &a12, v47, v48, v49);
    v53 = *(v31 + *(v37 + 40));
    a11 = 6;
    sub_100002D54(&qword_1000646C8, &qword_10004D830);
    v50 = sub_10002BC08();
    sub_10002C958(&v53, &a11, v51, v52, v50);
  }

  v44 = sub_10002CB30();
  v45(v44);
  sub_10002CBF8();
}

void sub_1000291EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10002CC50();
  v121 = v27;
  v29 = v28;
  v110 = v30;
  v31 = sub_100002D54(&unk_100065230, &qword_10004D7F8);
  sub_100005A50(v31);
  sub_100013ED4();
  __chkstk_darwin(v32);
  sub_100013F88();
  v109 = v33;
  v34 = sub_100005A44();
  v112 = type metadata accessor for PosterDataModel.DataPoint(v34);
  sub_1000059BC();
  v108 = v35;
  __chkstk_darwin(v36);
  sub_1000059D0();
  v111 = v38 - v37;
  v106 = *(sub_100002D54(&qword_100064658, &unk_10004D800) - 8);
  sub_100013ED4();
  __chkstk_darwin(v39);
  sub_100013F88();
  v113 = v40;
  v41 = sub_100002D54(&qword_1000637A8, "4E");
  sub_100005A50(v41);
  sub_100013ED4();
  __chkstk_darwin(v42);
  sub_100013F88();
  v107 = v43;
  v115 = sub_100002D54(&unk_100063DE0, "4E");
  sub_100005A24();
  __chkstk_darwin(v44);
  sub_100005A34();
  v114 = v45 - v46;
  __chkstk_darwin(v47);
  v116 = v100 - v48;
  v49 = sub_100002D54(&qword_1000639A8, &unk_10004CCA0);
  sub_100005A50(v49);
  sub_100013ED4();
  __chkstk_darwin(v50);
  sub_100013F88();
  v120 = v51;
  sub_100005A44();
  sub_100049C2C();
  sub_1000059BC();
  v117 = v53;
  v118 = v52;
  __chkstk_darwin(v52);
  sub_1000059D0();
  v56 = v55 - v54;
  v57 = sub_100049E9C();
  sub_1000059BC();
  v119 = v58;
  __chkstk_darwin(v59);
  sub_1000059D0();
  v62 = v61 - v60;
  v63 = sub_100002D54(&qword_100064660, &qword_10004D810);
  sub_1000059BC();
  v65 = v64;
  sub_100013ED4();
  __chkstk_darwin(v66);
  v68 = v100 - v67;
  v69 = v29[3];
  v122 = v29;
  sub_10002CC88(v29, v69);
  sub_10002B758();
  v70 = v121;
  sub_10004B03C();
  if (!v70)
  {
    v71 = v120;
    v105 = v56;
    v121 = v62;
    v72 = v57;
    v73 = v65;
    sub_10002CB6C();
    v103 = sub_10004AE9C();
    v104 = v74;
    sub_10002CA2C();
    sub_10002B364(v75, v76, &protocol conformance descriptor for LocationCoordinate);
    sub_10002CB6C();
    sub_10004AECC();
    sub_10002CB6C();
    sub_10004AE9C();
    sub_100049BDC();

    v77 = sub_10002CB48();
    v78 = v118;
    v80 = sub_100004288(v77, v79, v118);
    v102 = v68;
    if (v80 == 1)
    {
      sub_100049C1C();
      v81 = sub_10002CB48();
      if (sub_100004288(v81, v82, v78) != 1)
      {
        sub_10000591C(v71, &qword_1000639A8, &unk_10004CCA0);
      }
    }

    else
    {
      (*(v117 + 32))(v105, v71, v78);
    }

    sub_10002BAC8(&qword_100064678, &qword_100064610, &protocol conformance descriptor for Date, &protocol conformance descriptor for <A> A?);
    sub_10002CB90();
    sub_10004AECC();
    sub_10002CB90();
    sub_10004AECC();
    sub_10004A6DC();
    sub_10002C9B4();
    sub_10002B364(v83, v84, &protocol conformance descriptor for BackgroundMoonData);
    v85 = v107;
    sub_10002CB6C();
    sub_10004AE8C();
    v86 = v65;
    sub_100002D54(&qword_100064688, &qword_10004D818);
    sub_10002B7AC();
    sub_10004AECC();
    v101 = v63;
    v87 = *(v123 + 16);
    if (v87)
    {
      v88 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v100[1] = v123;
      v89 = v123 + v88;
      v120 = &_swiftEmptyArrayStorage;
      v115 = *(v106 + 72);
      v90 = v109;
      v91 = v110;
      v92 = v113;
      do
      {
        sub_10002BD10(v89, v92, &qword_100064658, &unk_10004D800);
        sub_10002B894(v92, v90, &unk_100065230, &qword_10004D7F8);
        if (sub_100004288(v90, 1, v112) == 1)
        {
          sub_10000591C(v90, &unk_100065230, &qword_10004D7F8);
        }

        else
        {
          sub_10002CA14();
          sub_10002B5B0(v90, v111);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v120 = sub_10002B8E0(0, *(v120 + 2) + 1, 1, v120);
          }

          v94 = *(v120 + 2);
          v93 = *(v120 + 3);
          if (v94 >= v93 >> 1)
          {
            v120 = sub_10002B8E0((v93 > 1), v94 + 1, 1, v120);
          }

          *(v120 + 2) = v94 + 1;
          sub_10002CA14();
          sub_10002B5B0(v111, v95);
          v90 = v109;
          v91 = v110;
        }

        v89 += v115;
        --v87;
        v92 = v113;
      }

      while (v87);

      v86 = v73;
      v96 = v107;
      v97 = v91;
    }

    else
    {

      v120 = &_swiftEmptyArrayStorage;
      v97 = v110;
      v96 = v85;
    }

    (*(v86 + 8))(v102, v101);
    v98 = v104;
    *v97 = v103;
    v97[1] = v98;
    v99 = type metadata accessor for PosterDataModel(0);
    (*(v119 + 32))(v97 + v99[5], v121, v72);
    (*(v117 + 32))(v97 + v99[6], v105, v118);
    sub_10002B894(v116, v97 + v99[7], &unk_100063DE0, "4E");
    sub_10002B894(v114, v97 + v99[8], &unk_100063DE0, "4E");
    sub_10002B894(v96, v97 + v99[9], &qword_1000637A8, "4E");
    *(v97 + v99[10]) = v120;
  }

  sub_100008FC8(v122);
  sub_10002CBF8();
}

unint64_t sub_100029C44(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DF98;
  v6._object = a2;
  v4 = sub_10004AE7C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100029CA0(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x616E6964726F6F63;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x657369726E7573;
      break;
    case 4:
      result = 0x7465736E7573;
      break;
    case 5:
      result = 0x617461446E6F6F6DLL;
      break;
    case 6:
      result = 0x4472656874616577;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100029DBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029C44(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100029DEC()
{
  v1 = sub_10002CB60();
  result = sub_100029CA0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100029E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100029C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100029E58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100029C94();
  *a1 = result;
  return result;
}

uint64_t sub_100029E80(uint64_t a1)
{
  v2 = sub_10002B758();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100029EBC(uint64_t a1)
{
  v2 = sub_10002B758();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100029F28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v25 = sub_10004ACDC();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v22 - v8;
  v26 = a3;
  v11 = type metadata accessor for SingleValueDecodable(0, a2, a3, v10);
  v27 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  sub_10002B4C4(a1, a1[3]);
  sub_10004B02C();
  if (!v4)
  {
    v23 = v13;
    v24 = v11;
    v14 = v25;
    sub_10002B4C4(v29, v29[3]);
    sub_10004AF4C();
    v15 = v9;
    v16 = v30;
    v17 = v14;
    v19 = v27;
    v18 = v28;
    sub_100004544(v15, 0, 1, a2);
    v20 = v23;
    (*(v18 + 32))(v23, v15, v17);
    sub_100008FC8(v29);
    (*(v19 + 32))(v16, v20, v24);
  }

  return sub_100008FC8(a1);
}

uint64_t sub_10002A190()
{
  sub_100002D54(&unk_100063DE0, "4E");
  sub_100005A24();
  sub_100013ED4();
  __chkstk_darwin(v0);
  sub_10004AD6C(39);

  strcpy(v3, "[weatherData:");
  HIWORD(v3[1]) = -4864;
  v1 = type metadata accessor for PosterDataModel(0);
  type metadata accessor for PosterDataModel.DataPoint(0);
  v4._countAndFlagsBits = sub_10004AA6C();
  sub_10004A9DC(v4);

  v5._countAndFlagsBits = 0x7369726E7573202CLL;
  v5._object = 0xEA00000000003A65;
  sub_10004A9DC(v5);
  sub_10002CBB8(*(v1 + 28));
  sub_10002CB84();
  v6._countAndFlagsBits = sub_10004A9AC();
  sub_10004A9DC(v6);

  v7._countAndFlagsBits = 0x7465736E7573202CLL;
  v7._object = 0xE90000000000003ALL;
  sub_10004A9DC(v7);
  sub_10002CBB8(*(v1 + 32));
  sub_10002CB84();
  v8._countAndFlagsBits = sub_10004A9AC();
  sub_10004A9DC(v8);

  v9._countAndFlagsBits = 93;
  v9._object = 0xE100000000000000;
  sub_10004A9DC(v9);
  return v3[0];
}

uint64_t sub_10002A32C()
{
  sub_10004AD6C(53);
  v7._countAndFlagsBits = 0x697469646E6F635BLL;
  v7._object = 0xEB000000003A6E6FLL;
  sub_10004A9DC(v7);
  v1 = type metadata accessor for PosterDataModel.DataPoint(0);
  v8._countAndFlagsBits = sub_100049D8C();
  sub_10004A9DC(v8);

  v9._countAndFlagsBits = 0x3A65746164202CLL;
  v9._object = 0xE700000000000000;
  sub_10004A9DC(v9);
  sub_100049B7C();
  sub_10002C928();
  sub_10002B364(v2, v3, &protocol conformance descriptor for Date);
  v10._countAndFlagsBits = sub_10004AF1C();
  sub_10004A9DC(v10);

  v11._countAndFlagsBits = 0x746176656C65202CLL;
  v11._object = 0xEC0000003A6E6F69;
  sub_10004A9DC(v11);
  sub_10004A89C();
  v12._countAndFlagsBits = sub_10004AB3C();
  sub_10004A9DC(v12);

  v13._countAndFlagsBits = 0x6C7961447369202CLL;
  v13._object = 0xEE00203A74686769;
  sub_10004A9DC(v13);
  if (*(v0 + *(v1 + 40)))
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 40)))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_10004A9DC(v4);

  v14._countAndFlagsBits = 93;
  v14._object = 0xE100000000000000;
  sub_10004A9DC(v14);
  return 0;
}

uint64_t sub_10002A500(uint64_t a1, void (*a2)(void))
{
  v5 = type metadata accessor for PosterDataModel(0);
  v6 = sub_100005A50(v5);
  __chkstk_darwin(v6);
  sub_1000059D0();
  v7 = sub_10002CAD0();
  type metadata accessor for PosterData(v7);
  sub_100005A24();
  __chkstk_darwin(v8);
  sub_100005A34();
  v11 = (v9 - v10);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = sub_100002D54(&qword_1000645B8, &unk_10004D7C0);
  sub_100005A50(v15);
  sub_100013ED4();
  v17 = __chkstk_darwin(v16);
  v19 = &v23 - v18;
  v20 = *(v17 + 56);
  sub_10002B3AC(a1, &v23 - v18);
  sub_10002B3AC(a2, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10002C940();
    sub_10002B3AC(v19, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = sub_10000A770(*v14, v19[v20]);
      goto LABEL_6;
    }

LABEL_8:
    sub_10000591C(v19, &qword_1000645B8, &unk_10004D7C0);
    v21 = 0;
    return v21 & 1;
  }

  sub_10002C940();
  sub_10002B3AC(v19, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10002AFE4(v11, type metadata accessor for PosterDataModel);
    goto LABEL_8;
  }

  sub_10002C984();
  sub_10002B5B0(&v19[v20], v2);
  v21 = sub_10002A758(v11, v2);
  sub_10002AFE4(v2, a2);
  sub_10002AFE4(v11, a2);
LABEL_6:
  sub_10002AFE4(v19, type metadata accessor for PosterData);
  return v21 & 1;
}

uint64_t sub_10002A758(void *a1, void *a2)
{
  v4 = sub_10004A6DC();
  sub_1000059BC();
  v84 = v5;
  __chkstk_darwin(v6);
  sub_1000059D0();
  v9 = v8 - v7;
  v10 = sub_100002D54(&qword_1000637A8, "4E");
  sub_100005A50(v10);
  sub_100013ED4();
  __chkstk_darwin(v11);
  sub_100013F88();
  v83 = v12;
  v13 = sub_100002D54(&qword_100063898, &qword_10004CBB8);
  sub_100005A24();
  sub_100013ED4();
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  v17 = sub_100049B7C();
  sub_1000059BC();
  v88 = v18;
  __chkstk_darwin(v19);
  sub_1000059D0();
  v86 = v21 - v20;
  v22 = sub_100002D54(&unk_100063DE0, "4E");
  v23 = sub_100005A50(v22);
  __chkstk_darwin(v23);
  sub_100005A34();
  v85 = v24 - v25;
  __chkstk_darwin(v26);
  v28 = &v77 - v27;
  v29 = sub_100002D54(&qword_1000638A0, &qword_10004CBC0);
  sub_100005A24();
  __chkstk_darwin(v30);
  sub_100005A34();
  v87 = v31 - v32;
  __chkstk_darwin(v33);
  v35 = &v77 - v34;
  v36 = *a1 == *a2 && a1[1] == a2[1];
  if (!v36 && (sub_10004AF3C() & 1) == 0)
  {
    goto LABEL_35;
  }

  v82 = v13;
  v37 = type metadata accessor for PosterDataModel(0);
  if ((sub_100049E6C() & 1) == 0 || (sub_100049C0C() & 1) == 0)
  {
    goto LABEL_35;
  }

  v79 = v4;
  v80 = v16;
  v78 = v9;
  v81 = v37;
  v38 = *(v37 + 28);
  v39 = *(v29 + 48);
  sub_10002BD10(a1 + v38, v35, &unk_100063DE0, "4E");
  sub_10002BD10(a2 + v38, &v35[v39], &unk_100063DE0, "4E");
  sub_1000059E0(v35);
  if (v36)
  {
    sub_1000059E0(&v35[v39]);
    if (v36)
    {
      sub_10000591C(v35, &unk_100063DE0, "4E");
      goto LABEL_18;
    }

LABEL_16:
    v41 = &qword_1000638A0;
    v42 = &qword_10004CBC0;
    v43 = v35;
LABEL_34:
    sub_10000591C(v43, v41, v42);
    goto LABEL_35;
  }

  sub_10002BD10(v35, v28, &unk_100063DE0, "4E");
  sub_1000059E0(&v35[v39]);
  if (v40)
  {
    (*(v88 + 8))(v28, v17);
    goto LABEL_16;
  }

  v44 = v88;
  v45 = &v35[v39];
  v46 = v86;
  (*(v88 + 32))(v86, v45, v17);
  sub_10002C928();
  sub_10002B364(v47, v48, &protocol conformance descriptor for Date);
  v49 = sub_10004A94C();
  v50 = *(v44 + 8);
  v50(v46, v17);
  v50(v28, v17);
  sub_10000591C(v35, &unk_100063DE0, "4E");
  if ((v49 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  v51 = *(v81 + 32);
  v52 = *(v29 + 48);
  v53 = v87;
  sub_10002BD10(a1 + v51, v87, &unk_100063DE0, "4E");
  sub_10002BD10(a2 + v51, v53 + v52, &unk_100063DE0, "4E");
  sub_1000059E0(v53);
  if (v36)
  {
    sub_1000059E0(v53 + v52);
    v54 = v80;
    if (v36)
    {
      sub_10000591C(v53, &unk_100063DE0, "4E");
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v55 = v85;
  sub_10002BD10(v53, v85, &unk_100063DE0, "4E");
  sub_1000059E0(v53 + v52);
  v54 = v80;
  if (v56)
  {
    (*(v88 + 8))(v55, v17);
LABEL_26:
    v41 = &qword_1000638A0;
    v42 = &qword_10004CBC0;
    v43 = v53;
    goto LABEL_34;
  }

  v57 = v88;
  v58 = v53 + v52;
  v59 = v86;
  (*(v88 + 32))(v86, v58, v17);
  sub_10002C928();
  sub_10002B364(v60, v61, &protocol conformance descriptor for Date);
  v62 = sub_10004A94C();
  v63 = *(v57 + 8);
  v63(v59, v17);
  v63(v55, v17);
  sub_10000591C(v53, &unk_100063DE0, "4E");
  if ((v62 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  v64 = v81;
  v65 = *(v81 + 36);
  v66 = *(v82 + 48);
  sub_10002BD10(a1 + v65, v54, &qword_1000637A8, "4E");
  sub_10002BD10(a2 + v65, v54 + v66, &qword_1000637A8, "4E");
  v67 = v79;
  if (sub_100004288(v54, 1, v79) == 1)
  {
    if (sub_100004288(v54 + v66, 1, v67) == 1)
    {
      sub_10000591C(v54, &qword_1000637A8, "4E");
LABEL_38:
      v69 = sub_10002B03C(*(a1 + *(v64 + 40)), *(a2 + *(v64 + 40)));
      return v69 & 1;
    }

    goto LABEL_33;
  }

  v68 = v83;
  sub_10002BD10(v54, v83, &qword_1000637A8, "4E");
  if (sub_100004288(v54 + v66, 1, v67) == 1)
  {
    (*(v84 + 8))(v68, v67);
LABEL_33:
    v41 = &qword_100063898;
    v42 = &qword_10004CBB8;
    v43 = v54;
    goto LABEL_34;
  }

  v71 = v84;
  v72 = v78;
  (*(v84 + 32))(v78, v54 + v66, v67);
  sub_10002C9B4();
  sub_10002B364(v73, v74, &protocol conformance descriptor for BackgroundMoonData);
  v75 = sub_10004A94C();
  v76 = *(v71 + 8);
  v76(v72, v67);
  v76(v68, v67);
  sub_10000591C(v54, &qword_1000637A8, "4E");
  if (v75)
  {
    goto LABEL_38;
  }

LABEL_35:
  v69 = 0;
  return v69 & 1;
}

uint64_t sub_10002AF10(uint64_t a1, uint64_t a2)
{
  if (sub_100049B2C() & 1) != 0 && (v4 = type metadata accessor for PosterDataModel.DataPoint(0), (sub_10000A4A4(a1 + v4[5], a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && (sub_10004A68C() & 1) != 0 && (sub_10004A87C())
  {
    v5 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10002AFE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100005A24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10002B03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterDataModel.DataPoint(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_22:
    v19 = 0;
    return v19 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v22 = *(v8 + 72);
    while (1)
    {
      sub_10002B3AC(v13, v10);
      sub_10002B3AC(v14, v7);
      if ((sub_100049B2C() & 1) == 0)
      {
        break;
      }

      sub_100049D9C();
      sub_10002B364(&qword_100063C70, &type metadata accessor for WeatherCondition, &protocol conformance descriptor for WeatherCondition);
      sub_10004AA0C();
      sub_10004AA0C();
      if (v25 == v23 && v26 == v24)
      {
      }

      else
      {
        v16 = sub_10004AF3C();

        if ((v16 & 1) == 0)
        {
          break;
        }
      }

      if (*&v10[v4[6]] != *&v7[v4[6]] || *&v10[v4[7]] != *&v7[v4[7]] || (sub_10004A68C() & 1) == 0 || (sub_10004A87C() & 1) == 0)
      {
        break;
      }

      v17 = v10[v4[10]];
      sub_10002AFE4(v10, type metadata accessor for PosterDataModel.DataPoint);
      v18 = v7[v4[10]];
      sub_10002AFE4(v7, type metadata accessor for PosterDataModel.DataPoint);
      if (((v17 ^ v18) & 1) == 0)
      {
        v14 += v22;
        v13 += v22;
        if (--v11)
        {
          continue;
        }
      }

      v19 = v17 ^ v18 ^ 1;
      return v19 & 1;
    }

    sub_10002AFE4(v7, type metadata accessor for PosterDataModel.DataPoint);
    sub_10002AFE4(v10, type metadata accessor for PosterDataModel.DataPoint);
    goto LABEL_22;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_10002B364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002B3AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002CAC4();
  v4(v3);
  sub_100005A24();
  v5 = sub_100013F94();
  v6(v5);
  return a2;
}

void sub_10002B404(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6)
      {
        if (!v7)
        {
          return;
        }

        sub_1000047A4();
        v8 = v5;
        v9 = v7;
        v10 = sub_10004ACBC();

        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      else if (v7)
      {
        return;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }
}

void *sub_10002B4C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10002B508()
{
  result = qword_1000645C8;
  if (!qword_1000645C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000645C8);
  }

  return result;
}

unint64_t sub_10002B55C()
{
  result = qword_1000645D8;
  if (!qword_1000645D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000645D8);
  }

  return result;
}

uint64_t sub_10002B5B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002CAC4();
  v4(v3);
  sub_100005A24();
  v5 = sub_100013F94();
  v6(v5);
  return a2;
}

unint64_t sub_10002B608()
{
  result = qword_1000645F0;
  if (!qword_1000645F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000645F0);
  }

  return result;
}

unint64_t sub_10002B65C()
{
  result = qword_100064608;
  if (!qword_100064608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064608);
  }

  return result;
}

unint64_t sub_10002B6B0()
{
  result = qword_100064628;
  if (!qword_100064628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064628);
  }

  return result;
}

unint64_t sub_10002B704()
{
  result = qword_100064650;
  if (!qword_100064650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064650);
  }

  return result;
}

unint64_t sub_10002B758()
{
  result = qword_100064668;
  if (!qword_100064668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064668);
  }

  return result;
}

unint64_t sub_10002B7AC()
{
  result = qword_100064690;
  if (!qword_100064690)
  {
    sub_100009240(&qword_100064688, &qword_10004D818);
    sub_10002B830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064690);
  }

  return result;
}

unint64_t sub_10002B830()
{
  result = qword_100064698;
  if (!qword_100064698)
  {
    sub_100009240(&qword_100064658, &unk_10004D800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064698);
  }

  return result;
}

uint64_t sub_10002B894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10002CC30(a1, a2, a3, a4);
  sub_100005A24();
  v5 = sub_100013F94();
  v6(v5);
  return v4;
}

char *sub_10002B8E0(char *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_10002B9CC(v8, v7);
  v10 = *(type metadata accessor for PosterDataModel.DataPoint(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_10001E670(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_10002B9CC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002D54(&qword_1000639B0, &qword_10004D820);
  v4 = *(type metadata accessor for PosterDataModel.DataPoint(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002BAC8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100009240(&unk_100063DE0, "4E");
    sub_10002C928();
    sub_10002B364(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002BB54()
{
  result = qword_1000646B8;
  if (!qword_1000646B8)
  {
    sub_100009240(&qword_1000637A8, "4E");
    sub_10002B364(&qword_1000646C0, &type metadata accessor for BackgroundMoonData, &protocol conformance descriptor for BackgroundMoonData);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000646B8);
  }

  return result;
}

unint64_t sub_10002BC08()
{
  result = qword_1000646D0;
  if (!qword_1000646D0)
  {
    sub_100009240(&qword_1000646C8, &qword_10004D830);
    sub_10002B364(&qword_1000646D8, type metadata accessor for PosterDataModel.DataPoint, &unk_10004D71C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000646D0);
  }

  return result;
}

unint64_t sub_10002BCBC()
{
  result = qword_1000646E0[0];
  if (!qword_1000646E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000646E0);
  }

  return result;
}

uint64_t sub_10002BD10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10002CC30(a1, a2, a3, a4);
  sub_100005A24();
  v5 = sub_100013F94();
  v6(v5);
  return v4;
}

uint64_t getEnumTagSinglePayload for RenderingSessionManager.ExtensionReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PosterDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002BEB0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10002BEF0(uint64_t a1)
{
  result = sub_10004ACDC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002BF60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_100004288(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_10002C0E8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x10002C308);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          sub_100004544(a1, v20, v9, v7);
        }
      }

      return;
  }
}

uint64_t getEnumTagSinglePayload for PosterDataModel.DataPoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PosterDataModel.DataPoint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002C49CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PosterData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002C5A0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002C5DC()
{
  result = qword_100064768;
  if (!qword_100064768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064768);
  }

  return result;
}

unint64_t sub_10002C634()
{
  result = qword_100064770;
  if (!qword_100064770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064770);
  }

  return result;
}

unint64_t sub_10002C68C()
{
  result = qword_100064778;
  if (!qword_100064778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064778);
  }

  return result;
}

unint64_t sub_10002C6E4()
{
  result = qword_100064780;
  if (!qword_100064780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064780);
  }

  return result;
}

unint64_t sub_10002C73C()
{
  result = qword_100064788;
  if (!qword_100064788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064788);
  }

  return result;
}

unint64_t sub_10002C794()
{
  result = qword_100064790;
  if (!qword_100064790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064790);
  }

  return result;
}

unint64_t sub_10002C7EC()
{
  result = qword_100064798;
  if (!qword_100064798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064798);
  }

  return result;
}

unint64_t sub_10002C844()
{
  result = qword_1000647A0;
  if (!qword_1000647A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000647A0);
  }

  return result;
}

unint64_t sub_10002C89C()
{
  result = qword_1000647A8;
  if (!qword_1000647A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000647A8);
  }

  return result;
}

uint64_t sub_10002C958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_10004AF0C();
}

void sub_10002CA44()
{
  v1._countAndFlagsBits = 1852402976;
  v1._object = 0xE400000000000000;

  sub_10004A9DC(v1);
}

uint64_t sub_10002CA64()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;
  *(v2 - 136) = 0;
  *(v2 - 128) = 0xE000000000000000;
  return v2 - 136;
}

double sub_10002CA88(uint64_t a1, float a2)
{
  *v2 = a2;
  *(v3 - 136) = 0;
  *(v3 - 128) = 0xE000000000000000;
  *(v3 - 120) = a1;
  return v4 / 60.0;
}

unint64_t sub_10002CAA8()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);

  return sub_1000230EC(v2, v3, (v0 - 120));
}

uint64_t sub_10002CBB8@<X0>(uint64_t a1@<X8>)
{

  return sub_10002BD10(v1 + a1, v4, v2, v3);
}

uint64_t sub_10002CBD8()
{
  *(v1 - 144) = v0;

  return swift_slowAlloc();
}

uint64_t sub_10002CC10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10004B04C();
}

uint64_t sub_10002CC30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100002D54(a3, a4);
}

void sub_10002CC68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_10002CCA0()
{
  v0 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - v1;
  v3 = sub_100049DBC();
  __chkstk_darwin(v3 - 8);
  sub_100049A5C();
  v4 = sub_100049A6C();
  result = sub_100004288(v2, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100049DAC();
    sub_100049E1C();
    swift_allocObject();
    sub_100049E0C();
    sub_100049DFC();
    swift_allocObject();
    sub_100049DEC();
    v6 = sub_100049D0C();
    swift_allocObject();
    v7 = sub_100049CFC();
    v8[4] = v6;
    v8[5] = &protocol witness table for WeatherServiceFetchOptionsProvider;
    v8[1] = v7;
    return sub_100049D5C();
  }

  return result;
}

uint64_t sub_10002CE58()
{
  sub_100049DDC();
  swift_allocObject();
  return sub_100049DCC();
}

__n128 sub_10002CE90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002CEA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002CEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10002CF38(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      if (qword_100063460 != -1)
      {
        sub_10002D61C(&qword_100063460);
      }

      v10 = qword_1000682D0;
      v23._countAndFlagsBits = 0x800000010004F430;
      v25._countAndFlagsBits = 0xD000000000000016;
      v25._object = 0x800000010004F410;
      v4 = sub_10002D63C(v25, v17, v18, v19, v20, v21, 0xD000000000000032, v23);
      v5 = v22;
      v7 = 0xEA00000000006873;
      v6 = 0x616C732E69666977;
    }

    else
    {
      v7 = 0x800000010004F470;
      if (qword_100063460 != -1)
      {
        sub_10002D61C(&qword_100063460);
      }

      v6 = 0xD000000000000013;
      v10 = qword_1000682D0;
      v23._countAndFlagsBits = 0x800000010004F4B0;
      v24._countAndFlagsBits = 0xD000000000000018;
      v24._object = 0x800000010004F490;
      v4 = sub_10002D63C(v24, v11, v12, v13, v14, v15, 0xD00000000000002CLL, v23);
      v5 = v16;
    }

    v8 = a2 & 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
}

Swift::Int sub_10002D100(char a1)
{
  sub_10004AFEC();
  sub_10004AFFC(a1 & 1);
  return sub_10004B00C();
}

id sub_10002D164()
{
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  v3 = &UIFontTextStyleFootnote;
  if (v1)
  {
    v4 = &UIFontWeightSemibold;
  }

  else
  {
    v3 = &UIFontTextStyleSubheadline;
    v4 = &UIFontWeightMedium;
  }

  v5 = [v2 preferredFontDescriptorWithTextStyle:*v3];
  sub_100002D54(&qword_1000647B0, &qword_10004DCC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004CBE0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100002D54(&qword_1000647B8, &qword_10004DCD0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10004CBE0;
  *(v7 + 32) = UIFontWeightTrait;
  *(v7 + 40) = *v4;
  type metadata accessor for TraitKey(0);
  sub_10002D478(&qword_1000635F0, type metadata accessor for TraitKey, &unk_10004C950);
  v8 = UIFontDescriptorTraitsAttribute;
  v9 = UIFontWeightTrait;
  v10 = sub_10004A90C();
  *(inited + 64) = sub_100002D54(&qword_1000647C0, &qword_10004DCD8);
  *(inited + 40) = v10;
  type metadata accessor for AttributeName(0);
  sub_10002D478(&qword_100063600, type metadata accessor for AttributeName, &unk_10004C90C);
  sub_10004A90C();
  isa = sub_10004A8EC().super.isa;

  v12 = [v5 fontDescriptorByAddingAttributes:isa];

  v13 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  return v13;
}

uint64_t sub_10002D3F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_10004AF3C()) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), v5 || (sub_10004AF3C()))
  {
    v6 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10002D478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for LabelViewModel.Placement(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10002D58CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002D5C8()
{
  result = qword_1000647C8;
  if (!qword_1000647C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000647C8);
  }

  return result;
}

uint64_t sub_10002D61C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10002D63C(Swift::String a1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::String a9)
{
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v11.super.isa = v8;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;

  return sub_10004990C(a1, v10, v11, v12, a8, a9);
}

uint64_t sub_10002D660()
{
  v0 = sub_10004A71C();
  sub_10002D6B8(v0, qword_1000682B8);
  sub_100008F90(v0, qword_1000682B8);
  return sub_10004A70C();
}

uint64_t *sub_10002D6B8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_10002D750()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000682D0 = result;
  return result;
}

void sub_10002D7A8(uint64_t a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    *(v1 + 16) = a1;
  }
}

void sub_10002D844(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100049BAC();
  sub_1000059BC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000059D0();
  v10 = v9 - v8;
  v11 = type metadata accessor for DynamicRotationState(0);
  sub_100005A24();
  __chkstk_darwin(v12);
  sub_1000059D0();
  v15 = v14 - v13;
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 1)
  {
    if (qword_1000634B0 != -1)
    {
      sub_10002FD40(&qword_1000634B0);
    }

    v18 = sub_100049FCC();
    sub_100008F90(v18, qword_1000683C0);
    v19 = sub_100049FAC();
    v20 = sub_10004AB9C();
    if (sub_10001A094(v20))
    {
      v33 = v6;
      v34 = v4;
      v35 = v2;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136446466;
      v23 = sub_10001A1C4();
      v25 = sub_1000230EC(v23, v24, v36);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2050;
      v26 = 0;
      if ((a1 - 2) <= 2)
      {
        v26 = qword_10004DE20[a1 - 2];
      }

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Initial orientation of poster is %{public}s (%{public}f degrees)", v21, 0x16u);
      sub_100008FC8(v22);
      sub_100013F58(v22);
      sub_100013F58(v21);

      v4 = v34;
      v2 = v35;
      v6 = v33;
    }

    else
    {
    }

    sub_100049B9C();
    v27 = 0;
    if ((a1 - 2) <= 2)
    {
      v27 = dword_10004DE38[a1 - 2];
    }

    (*(v6 + 32))(v15, v10, v4);
    *(v15 + v11[5]) = v27;
    *(v15 + v11[6]) = 1065353216;
    *(v15 + v11[7]) = a1;
    *(v15 + v11[8]) = a1;
    v28 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_rotationState;
    swift_beginAccess();
    sub_10002F8D8(v15, v2 + v28);
    v29 = swift_endAccess();
    v30 = *(v2 + 16);
    __chkstk_darwin(v29);
    *(&v32 - 2) = v15;

    sub_10002E570(sub_10002FC6C, (&v32 - 4), v30);

    sub_10002FD60();
    sub_10002FCE8(v15, v31);
  }
}

uint64_t sub_10002DBA0()
{
  v1 = v0;
  v2 = type metadata accessor for DynamicRotationState(0);
  sub_100005A24();
  __chkstk_darwin(v3);
  sub_1000059D0();
  v6 = v5 - v4;
  if (qword_1000634B0 != -1)
  {
    sub_10002FD40(&qword_1000634B0);
  }

  v7 = sub_100049FCC();
  sub_100008F90(v7, qword_1000683C0);
  v8 = sub_100049FAC();
  v9 = sub_10004AB9C();
  if (sub_10001A094(v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Rotation manager was invalidated", v10, 2u);
    sub_100013F58(v10);
  }

  sub_10002EB74();
  *(v1 + 16) = &_swiftEmptyArrayStorage;

  *(v1 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_100049B9C();
  *(v6 + v2[5]) = 0;
  *(v6 + v2[6]) = 1065353216;
  *(v6 + v2[7]) = 0;
  *(v6 + v2[8]) = 0;
  v11 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_rotationState;
  swift_beginAccess();
  sub_10002F7E8(v6, v1 + v11);
  return swift_endAccess();
}

void sub_10002DD38(unint64_t a1, void *a2)
{
  v3 = v2;
  v84 = *v2;
  sub_100049BAC();
  sub_1000059BC();
  v82 = v7;
  v83 = v6;
  __chkstk_darwin(v6);
  sub_1000059D0();
  v10 = v9 - v8;
  v11 = type metadata accessor for DynamicRotationState(0);
  sub_100005A24();
  __chkstk_darwin(v12);
  sub_1000059D0();
  v15 = v14 - v13;
  v16 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  __chkstk_darwin(v16 - 8);
  v18 = &v80 - v17;
  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 1)
  {
    v21 = v3 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_rotationState;
    swift_beginAccess();
    if (*&v21[v11[8]] != a1)
    {
      v80 = *&v21[v11[8]];
      v81 = a1;
      v22 = v3 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate;
      if (swift_unknownObjectWeakLoadStrong() && (v23 = v3, v24 = *(v22 + 1), ObjectType = swift_getObjectType(), LOBYTE(v24) = (*(v24 + 8))(ObjectType, v24), swift_unknownObjectRelease(), (v24 & 1) != 0))
      {
        if (a2)
        {
          v26 = qword_1000634B0;
          v27 = a2;
          if (v26 != -1)
          {
            sub_10002FD40(&qword_1000634B0);
          }

          v28 = sub_100049FCC();
          sub_100008F90(v28, qword_1000683C0);
          v29 = sub_100049FAC();
          v30 = sub_10004AB9C();
          if (sub_10001A094(v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v83 = v27;
            v33 = v32;
            v85[0] = v32;
            *v31 = 136446466;
            v34 = sub_10001A1C4();
            v36 = sub_10002FD78(v34, v35);

            *(v31 + 4) = v36;
            *(v31 + 12) = 2082;
            v37 = sub_10001A1C4();
            v39 = sub_10002FD78(v37, v38);

            *(v31 + 14) = v39;
            _os_log_impl(&_mh_execute_header, v29, v30, "Starting animation of device orientation; currentOrientation=%{public}s, toOrientation=%{public}s", v31, 0x16u);
            swift_arrayDestroy();
            v40 = v33;
            v27 = v83;
            sub_100013F58(v40);
            sub_100013F58(v31);
          }

          v41 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_displayLink;
          v42 = v23;
          v43 = *(v23 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_displayLink);
          if (v43)
          {
            [v43 invalidate];
          }

          v44 = *&v21[v11[5]];
          v45 = type metadata accessor for DynamicRotationAnimationState(0);
          *&v18[v45[7]] = v27;
          v46 = v80;
          v47 = v81;
          *&v18[v45[5]] = v80;
          *&v18[v45[6]] = v47;
          v48 = v27;
          sub_100049B9C();
          *&v18[v45[8]] = CFAbsoluteTimeGetCurrent();
          *&v18[v45[9]] = sub_10001A110(v46, v47, v44);
          *&v18[v45[10]] = v49;
          sub_100004544(v18, 0, 1, v45);
          v50 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState;
          v51 = v42;
          swift_beginAccess();
          sub_10002F84C(v18, v42 + v50);
          swift_endAccess();
          sub_100013820(0, &qword_100064960, CADisplayLink_ptr);
          v85[3] = v84;
          v85[0] = v42;

          v52 = sub_10002EAF4(v85, "displayLinkFired:");
          v53 = [objc_opt_self() mainScreen];
          v54 = [v53 maximumFramesPerSecond];

          if (v54 >= 60)
          {
            v55 = 60;
          }

          else
          {
            v55 = v54;
          }

          [v52 setPreferredFramesPerSecond:v55];
          v56 = [objc_opt_self() currentRunLoop];
          [v52 addToRunLoop:v56 forMode:NSRunLoopCommonModes];

          v57 = *(v51 + v41);
          *(v51 + v41) = v52;
        }

        else
        {
          if (qword_1000634B0 != -1)
          {
            sub_10002FD40(&qword_1000634B0);
          }

          v84 = v3;
          v66 = sub_100049FCC();
          sub_100008F90(v66, qword_1000683C0);
          v67 = sub_100049FAC();
          v68 = sub_10004AB9C();
          if (sub_10001A094(v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v85[0] = v70;
            *v69 = 136446466;
            v71 = sub_10001A1C4();
            v73 = sub_10002FD78(v71, v72);

            *(v69 + 4) = v73;
            *(v69 + 12) = 2082;
            v74 = v81;
            v75 = sub_10001A1C4();
            v77 = sub_10002FD78(v75, v76);

            *(v69 + 14) = v77;
            _os_log_impl(&_mh_execute_header, v67, v68, "Updating orientation change without animating because animation settings were missing; orientation=%{public}s, newOrientation=%{public}s", v69, 0x16u);
            swift_arrayDestroy();
            sub_100013F58(v70);
            sub_100013F58(v69);
          }

          else
          {

            v74 = v81;
          }

          sub_100049B9C();
          v78 = 0;
          if (v74 - 2 <= 2)
          {
            v78 = dword_10004DE38[v74 - 2];
          }

          (*(v82 + 32))(v15, v10, v83);
          *(v15 + v11[5]) = v78;
          *(v15 + v11[6]) = 1065353216;
          *(v15 + v11[7]) = v80;
          *(v15 + v11[8]) = v74;
          sub_10002E608(v15);
          sub_10002FD60();
          sub_10002FCE8(v15, v79);
        }
      }

      else
      {
        if (qword_1000634B0 != -1)
        {
          sub_10002FD40(&qword_1000634B0);
        }

        v58 = sub_100049FCC();
        sub_100008F90(v58, qword_1000683C0);
        v59 = sub_100049FAC();
        v60 = sub_10004AB9C();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v85[0] = v62;
          *v61 = 136446210;
          v63 = sub_10001A1C4();
          v65 = sub_1000230EC(v63, v64, v85);

          *(v61 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v59, v60, "Rotation manager was not granted a rendering session; Skipping rotation to %{public}s", v61, 0xCu);
          sub_100008FC8(v62);
          sub_100013F58(v62);
          sub_100013F58(v61);
        }
      }
    }
  }
}

uint64_t sub_10002E4E8(void *a1, uint64_t a2)
{
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  (*(v3 + 8))(a2, ObjectType, v3);
  return (*(v3 + 16))(a2, ObjectType, v3);
}

void (*sub_10002E570(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      swift_unknownObjectRetain();
      v4(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      ++v6;
      if (!--v5)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10002E608(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004A1DC();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10004A1FC();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicRotationState(0);
  v9 = v8 - 8;
  v27 = *(v8 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10004A21C();
  v28 = *(v34 - 8);
  v12 = __chkstk_darwin(v34);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = *(v2 + 16);
  v36 = a1;

  sub_10002E570(sub_10002F8BC, v35, v17);

  v18 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_rotationState;
  swift_beginAccess();
  sub_10002F8D8(a1, v2 + v18);
  result = swift_endAccess();
  if (*(a1 + *(v9 + 32)) >= 1.0)
  {
    sub_10002EB74();
    sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
    v20 = sub_10004ABFC();
    sub_10004A20C();
    sub_10004A23C();
    v28 = *(v28 + 8);
    (v28)(v14, v34);
    v21 = swift_allocObject();
    swift_weakInit();
    sub_100024F18(a1, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    sub_10002FC88(v11, v23 + v22, type metadata accessor for DynamicRotationState);
    aBlock[4] = sub_10002FA40;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012500;
    aBlock[3] = &unk_10005F168;
    v24 = _Block_copy(aBlock);

    sub_10004A1EC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10002FABC();
    sub_100002D54(&qword_100063C58, &unk_10004DE10);
    sub_10002FB14();
    v25 = v30;
    v26 = v33;
    sub_10004ACFC();
    sub_10004ABDC();
    _Block_release(v24);

    (*(v32 + 8))(v25, v26);
    (*(v29 + 8))(v7, v31);
    return (v28)(v16, v34);
  }

  return result;
}

id sub_10002EAF4(void *a1, uint64_t a2)
{
  sub_10002B4C4(a1, a1[3]);
  v4 = sub_10004AF2C();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  sub_100008FC8(a1);
  return v5;
}

uint64_t sub_10002EB74()
{
  v1 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_displayLink;
  v5 = *(v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_displayLink);
  if (v5)
  {
    [v5 invalidate];
    v6 = *(v0 + v4);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + v4) = 0;

  v7 = type metadata accessor for DynamicRotationAnimationState(0);
  sub_100004544(v3, 1, 1, v7);
  v8 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState;
  swift_beginAccess();
  sub_10002F84C(v3, v0 + v8);
  return swift_endAccess();
}

id sub_10002EC68(void *a1)
{
  v3 = type metadata accessor for DynamicRotationState(0);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for DynamicRotationAnimationState(0);
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState;
  swift_beginAccess();
  sub_10002FB78(v1 + v12, v8);
  if (sub_100004288(v8, 1, v9) == 1)
  {
    sub_10002FBE8(v8);
    if (qword_1000634B0 != -1)
    {
      swift_once();
    }

    v13 = sub_100049FCC();
    sub_100008F90(v13, qword_1000683C0);
    v14 = sub_100049FAC();
    v15 = sub_10004AB7C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Display link fired with no animation state", v16, 2u);
    }

    return [a1 invalidate];
  }

  else
  {
    sub_10002FC88(v8, v11, type metadata accessor for DynamicRotationAnimationState);
    [*&v11[v9[7]] progressAtTime:CFAbsoluteTimeGetCurrent() - *&v11[v9[8]]];
    v18 = *&v11[v9[9]];
    v20 = v19;
    v21 = fmodf(v18 + ((*&v11[v9[10]] - v18) * v20), 360.0);
    v22 = v9[6];
    v23 = *&v11[v9[5]];
    v24 = *&v11[v22];
    v25 = sub_100049BAC();
    (*(*(v25 - 8) + 16))(v5, v11, v25);
    *&v5[v3[5]] = v21;
    *&v5[v3[6]] = v20;
    *&v5[v3[7]] = v23;
    *&v5[v3[8]] = v24;
    sub_10002E608(v5);
    sub_10002FCE8(v5, type metadata accessor for DynamicRotationState);
    return sub_10002FCE8(v11, type metadata accessor for DynamicRotationAnimationState);
  }
}

uint64_t sub_10002EFFC(void *a1, uint64_t a2)
{
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v3 + 8))(a2, ObjectType, v3);
}

uint64_t sub_10002F05C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DynamicRotationState(0);
  __chkstk_darwin(v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState;
    swift_beginAccess();
    sub_10002FB78(v10 + v11, v8);
    v12 = type metadata accessor for DynamicRotationAnimationState(0);
    if (sub_100004288(v8, 1, v12) == 1)
    {
      sub_10002FBE8(v8);
      if (qword_1000634B0 != -1)
      {
        swift_once();
      }

      v13 = sub_100049FCC();
      sub_100008F90(v13, qword_1000683C0);
      sub_100024F18(a2, v5);
      v14 = sub_100049FAC();
      v15 = sub_10004AB9C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27[0] = v17;
        *v16 = 136446210;
        v18 = sub_10001A1C4();
        v20 = v19;
        sub_10002FCE8(v5, type metadata accessor for DynamicRotationState);
        v21 = sub_1000230EC(v18, v20, v27);

        *(v16 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v14, v15, "Completed animation of device orientation to %{public}s", v16, 0xCu);
        sub_100008FC8(v17);
      }

      else
      {

        v22 = sub_10002FCE8(v5, type metadata accessor for DynamicRotationState);
      }

      v23 = *(v10 + 16);
      __chkstk_darwin(v22);
      v27[-2] = a2;

      sub_10002E570(sub_10002FC50, &v27[-4], v23);

      v24 = v10 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = *(v24 + 8);
        ObjectType = swift_getObjectType();
        (*(v25 + 16))(ObjectType, v25);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      return sub_10002FBE8(v8);
    }
  }

  return result;
}

uint64_t sub_10002F3EC(void *a1, uint64_t a2)
{
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(a2, ObjectType, v3);
}

uint64_t sub_10002F44C()
{

  sub_10002FD60();
  sub_10002FCE8(v0 + v1, v2);

  sub_10002FBE8(v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState);
  sub_100013DE4(v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate);
  return v0;
}

uint64_t sub_10002F4B0()
{
  sub_10002F44C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DynamicRotationManager(uint64_t a1)
{
  result = qword_1000648A8;
  if (!qword_1000648A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002F55C(uint64_t a1)
{
  type metadata accessor for DynamicRotationState(319);
  if (v1 <= 0x3F)
  {
    sub_10002F648(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002F648(uint64_t a1)
{
  if (!qword_1000648B8)
  {
    type metadata accessor for DynamicRotationAnimationState(255);
    v1 = sub_10004ACDC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000648B8);
    }
  }
}

uint64_t sub_10002F6A0()
{
  v1 = sub_100049BAC();
  sub_1000059BC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000059D0();
  v7 = v6 - v5;
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  v8 = v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_rotationState;
  sub_100049B9C();
  (*(v3 + 32))(v8, v7, v1);
  v9 = type metadata accessor for DynamicRotationState(0);
  *(v8 + v9[5]) = 0;
  *(v8 + v9[6]) = 1065353216;
  *(v8 + v9[7]) = 0;
  *(v8 + v9[8]) = 0;
  *(v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_displayLink) = 0;
  v10 = OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_animationState;
  v11 = type metadata accessor for DynamicRotationAnimationState(0);
  sub_100004544(v0 + v10, 1, 1, v11);
  *(v0 + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_10002F7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicRotationState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F8D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicRotationState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F93C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F974()
{
  v1 = *(type metadata accessor for DynamicRotationState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  sub_100049BAC();
  sub_100005A24();
  (*(v5 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002FA40()
{
  v1 = *(type metadata accessor for DynamicRotationState(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10002F05C(v2, v3);
}

double sub_10002FAA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10002FABC()
{
  result = qword_100063C50;
  if (!qword_100063C50)
  {
    sub_10004A1DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C50);
  }

  return result;
}

unint64_t sub_10002FB14()
{
  result = qword_100063C60;
  if (!qword_100063C60)
  {
    sub_100009240(&qword_100063C58, &unk_10004DE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C60);
  }

  return result;
}

uint64_t sub_10002FB78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FBE8(uint64_t a1)
{
  v2 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002FC88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100005A24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10002FCE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100005A24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10002FD40(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_10002FD78(uint64_t a1, unint64_t a2)
{

  return sub_1000230EC(a1, a2, (v2 - 152));
}

uint64_t sub_10002FD90()
{
  v1 = sub_100002D54(&unk_100063DE0, "4E");
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-v2 - 8];
  sub_100049B4C();
  v4 = sub_100049B7C();
  sub_100004544(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt;
  sub_100013F40(v0 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt, v8);
  sub_100031B94(v3, v0 + v5);
  return swift_endAccess();
}

uint64_t sub_10002FE54()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DE0, "4E");
  __chkstk_darwin(v2 - 8);
  v4 = &v23[-v3];
  if (qword_1000634B8 != -1)
  {
LABEL_19:
    sub_100031C5C(&qword_1000634B8);
  }

  v5 = sub_100049FCC();
  sub_10001A018(v5, qword_1000683D8);
  v6 = sub_100049FAC();
  v7 = sub_10004AB9C();
  if (sub_10001A094(v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Invalidating all extended sessions", v8, 2u);
    sub_100009830();
  }

  v9 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer;
  v10 = *(v1 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer);
  if (v10)
  {
    [v10 invalidate];
    v11 = *(v1 + v9);
  }

  else
  {
    v11 = 0;
  }

  *(v1 + v9) = 0;

  v12 = sub_100049B7C();
  sub_100004544(v4, 1, 1, v12);
  v13 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt;
  sub_100013F40(v1 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt, v24);
  sub_100031B94(v4, v1 + v13);
  swift_endAccess();
  swift_beginAccess();
  v14 = *(v1 + 16);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_15:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v4 = *(*(v14 + 56) + ((v20 << 10) | (16 * v21)));
      [objc_msgSend(v4 "assertion")];

      swift_unknownObjectRelease();
      if (!v17)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 64 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_15;
    }
  }

  sub_100013F40(v1 + 16, v23);
  sub_100002D54(&qword_100064A60, &qword_10004DFC8);
  sub_10004A91C(0);
  return swift_endAccess();
}

uint64_t sub_100030114(char *a1)
{
  sub_100030E8C(3);
  if (v3 < 2.0 && (sub_10003026C(3, a1) & 1) == 0)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer;
  v5 = *(v1 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer);
  if (v5)
  {
    [v5 invalidate];
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_100031C3C;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100011A98;
  v12[3] = &unk_10005F2C8;
  v8 = _Block_copy(v12);

  v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:2.0];
  _Block_release(v8);
  v10 = *(v1 + v4);
  *(v1 + v4) = v9;

  return 1;
}

uint64_t sub_10003026C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100002D54(&unk_100063DE0, "4E");
  __chkstk_darwin(v6 - 8);
  v8 = &v72 - v7;
  v9 = sub_100049B7C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v72 - v15;
  __chkstk_darwin(v14);
  v18 = &v72 - v17;
  sub_100030A2C(a1);
  v19 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt;
  swift_beginAccess();
  v20 = v3 + v19;
  v21 = v9;
  sub_1000318D8(v20, v8);
  if (sub_100004288(v8, 1, v9) == 1)
  {
    v22 = v10;
    sub_100049AEC();
    if (sub_100004288(v8, 1, v21) != 1)
    {
      sub_100031948(v8);
    }
  }

  else
  {
    v22 = v10;
    (*(v10 + 32))(v18, v8, v21);
  }

  v74 = v21;
  if (a1 < 5u)
  {
    sub_100049B4C();
    sub_100049AFC();
    v24 = v23;
    v25 = *(v22 + 8);
    (v25)(v16, v74);
    if (v24 >= 7.0)
    {
      if (qword_1000634B8 != -1)
      {
        sub_100031C5C(&qword_1000634B8);
      }

      v45 = sub_100049FCC();
      sub_10001A018(v45, qword_1000683D8);
      v46 = v74;
      (*(v22 + 16))(v13, v18, v74);
      v47 = sub_100049FAC();
      v48 = sub_10004AB9C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v73 = v25;
        v50 = v49;
        v51 = swift_slowAlloc();
        v76[0] = v51;
        *v50 = 136446466;
        v52 = sub_100030C88(a1);
        v54 = v18;
        v55 = sub_1000230EC(v52, v53, v76);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2082;
        sub_100031AF0();
        v56 = sub_10004AF1C();
        v58 = v57;
        v59 = v13;
        v60 = v73;
        (v73)(v59, v46);
        v61 = sub_1000230EC(v56, v58, v76);

        *(v50 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v47, v48, "Not enough time to extend session before unlimited assertion is dropped; reason=%{public}s, lastUnlimitedAssertionTakenAt=%{public}s", v50, 0x16u);
        swift_arrayDestroy();
        sub_100013F58(v51);
        sub_100013F58(v50);

        (v60)(v54, v46);
      }

      else
      {

        (v25)(v13, v46);
        (v25)(v18, v46);
      }

      return 0;
    }
  }

  sub_100030C88(a1);
  v26 = sub_10004A95C();

  v27 = [a2 extendRenderingSessionForReason:v26];

  v28 = sub_100030E2C(v27);
  if (!v28)
  {
    if (qword_1000634B8 != -1)
    {
      sub_100031C5C(&qword_1000634B8);
    }

    v40 = sub_100049FCC();
    sub_10001A018(v40, qword_1000683D8);
    v41 = sub_100049FAC();
    v42 = sub_10004AB9C();
    if (sub_10001A094(v42))
    {
      swift_slowAlloc();
      v43 = sub_100031C98();
      v76[0] = v43;
      *v18 = 136446210;
      v44 = sub_100031C7C();

      *(v18 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v41, v42, "Not granted an extented session for reason=%{public}s", v18, 0xCu);
      sub_100008FC8(v43);
      sub_100009830();
      sub_100013F58(v18);

      (*(v22 + 8))(a2, v74);
      return 0;
    }

LABEL_28:
    (*(v22 + 8))(v18, v74);
    return 0;
  }

  v30 = v28;
  v31 = v29;
  [v28 timeRemaining];
  v33 = v32;
  if (v32 < 5.0)
  {
    if (qword_1000634B8 != -1)
    {
      sub_100031C5C(&qword_1000634B8);
    }

    v34 = sub_100049FCC();
    sub_10001A018(v34, qword_1000683D8);
    v35 = sub_100049FAC();
    v36 = sub_10004AB9C();
    if (sub_10001A094(v36))
    {
      swift_slowAlloc();
      v37 = sub_100031C98();
      v76[0] = v37;
      *v18 = 136446466;
      v38 = sub_100031C7C();

      *(v18 + 4) = v38;
      *(v18 + 6) = 2050;
      *(v18 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v35, v36, "Granted extended session, but not enough time remaining to do work; reason=%{public}s, timeGranted=%{public}f seconds", v18, 0x16u);
      sub_100008FC8(v37);
      sub_100009830();
      v39 = v18;
      v18 = a2;
      sub_100013F58(v39);
    }

    [objc_msgSend(v30 "assertion")];
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v62 = v31;
  if (qword_1000634B8 != -1)
  {
    sub_100031C5C(&qword_1000634B8);
  }

  v73 = v18;
  v63 = sub_100049FCC();
  sub_10001A018(v63, qword_1000683D8);
  v64 = sub_100049FAC();
  v65 = sub_10004AB9C();
  if (sub_10001A094(v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v76[0] = v67;
    *v66 = 136446466;
    v68 = sub_100031C7C();

    *(v66 + 4) = v68;
    *(v66 + 12) = 2050;
    *(v66 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v64, v65, "Granted extended session for reason=%{public}s and timeGranted=%{public}f seconds", v66, 0x16u);
    sub_100008FC8(v67);
    sub_100013F58(v67);
    sub_100013F58(v66);
  }

  sub_100013F40(v3 + 16, v76);
  v69 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = *(v3 + 16);
  sub_1000319B0(v69, a1, isUniquelyReferenced_nonNull_native, v62);
  *(v3 + 16) = v75;
  swift_endAccess();

  (*(v22 + 8))(v73, v74);
  return 1;
}

void sub_100030A2C(uint64_t a1)
{
  v2 = v1;
  sub_100031CB8(a1);
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_10002365C(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
    swift_endAccess();
    v8 = qword_1000634B8;
    v9 = v7;
    if (v8 != -1)
    {
      sub_100031C5C(&qword_1000634B8);
    }

    v10 = sub_100049FCC();
    sub_10001A018(v10, qword_1000683D8);
    v11 = sub_100049FAC();
    v12 = sub_10004AB9C();
    if (sub_10001A094(v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136446210;
      v15 = sub_100030C88(a1);
      v17 = sub_1000230EC(v15, v16, v26);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Invalidating extended session; reason=%{public}s", v13, 0xCu);
      sub_100008FC8(v14);
      sub_100013F58(v14);
      sub_100009830();
    }

    [objc_msgSend(v9 "assertion")];
    swift_unknownObjectRelease();
    sub_100013F40(v2 + 16, v26);
    v18 = sub_1000317B0(a1);
    swift_endAccess();

    if (sub_100030C88(a1) == 0xD000000000000016 && 0x800000010004E8D0 == v19)
    {
    }

    else
    {
      v21 = sub_10004AF3C();

      if ((v21 & 1) == 0)
      {

        return;
      }
    }

    v22 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer;
    v23 = *(v2 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer);
    if (v23)
    {
      v24 = v23;
      [v24 invalidate];
    }

    v25 = *(v2 + v22);
    *(v2 + v22) = 0;
  }

  else
  {
    swift_endAccess();
  }
}

unint64_t sub_100030C88(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 2:
    case 3:
    case 5:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100030D50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005E060;
  v6._object = a2;
  v4 = sub_10004AE7C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100030DC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100030D50(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100030DF0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100030C88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_100030E2C(id a1)
{
  v1 = a1;
  if (a1)
  {
    if ([a1 assertion])
    {
      swift_unknownObjectRelease();
      CFAbsoluteTimeGetCurrent();
    }

    else
    {

      return 0;
    }
  }

  return v1;
}

void sub_100030E8C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_10002365C(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 16 * v4);
    swift_endAccess();
    v7 = v6;
    CFAbsoluteTimeGetCurrent();
    [v7 timeRemaining];
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100030F48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100030A2C(3);
  }

  return result;
}

uint64_t sub_100030FA4(uint64_t a1)
{
  sub_100031CB8(a1);
  if (*(*(v1 + 16) + 16))
  {
    sub_10002365C(a1);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_100030FFC()
{
  v1 = v0;
  if (qword_1000634B8 != -1)
  {
    sub_100031C5C(&qword_1000634B8);
  }

  v2 = sub_100049FCC();
  sub_10001A018(v2, qword_1000683D8);
  v3 = sub_100049FAC();
  v4 = sub_10004AB9C();
  if (sub_10001A094(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating all extended sessions that require rendering", v5, 2u);
    sub_100013F58(v5);
  }

  v6 = 0;
  v7 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer;
  while (2)
  {
    v8 = *(&off_10005DD30 + v6 + 32);
    result = 0xD000000000000010;
    v10 = "weatherRendering";
    switch(*(&off_10005DD30 + v6 + 32))
    {
      case 0:
      case 1:
      case 4:
        goto LABEL_10;
      case 2:
        goto LABEL_8;
      case 3:
        v10 = "weatherUnloadingMemory";
LABEL_8:
        if ((v10 | 0x8000000000000000) == 0x800000010004E8D0)
        {
        }

        else
        {
LABEL_10:
          v11 = sub_10004AF3C();

          if ((v11 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v12 = *(v1 + v7);
        if (v12)
        {
          [v12 invalidate];
          v13 = *(v1 + v7);
        }

        else
        {
          v13 = 0;
        }

        *(v1 + v7) = 0;

LABEL_15:
        sub_100013F40(v1 + 16, v21);
        v14 = sub_10002365C(v8);
        if (v15)
        {
          v16 = v14;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = *(v1 + 16);
          *(v1 + 16) = 0x8000000000000000;
          v18 = *(v20 + 24);
          sub_100002D54(&qword_100064A50, &unk_10004DFB8);
          sub_10004AE1C(isUniquelyReferenced_nonNull_native, v18);
          v19 = *(*(v20 + 56) + 16 * v16);
          sub_100031884();
          sub_10004AE2C();
          *(v1 + 16) = v20;
          swift_endAccess();
          [objc_msgSend(v19 "assertion")];

          result = swift_unknownObjectRelease();
        }

        else
        {
          result = swift_endAccess();
        }

LABEL_18:
        if (++v6 != 7)
        {
          continue;
        }

        return result;
      default:
        goto LABEL_18;
    }
  }
}

uint64_t sub_100031318()
{

  sub_100031948(v0 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt);

  return v0;
}

uint64_t sub_100031358()
{
  sub_100031318();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for RenderingSessionManager(uint64_t a1)
{
  result = qword_1000649A0;
  if (!qword_1000649A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031404(uint64_t a1)
{
  sub_1000314AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000314AC(uint64_t a1)
{
  if (!qword_100063818)
  {
    sub_100049B7C();
    v1 = sub_10004ACDC();
    if (!v2)
    {
      atomic_store(v1, &qword_100063818);
    }
  }
}

uint64_t sub_100031504(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100031544(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for RenderingSessionManager.ExtensionReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10003165CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100031698()
{
  result = qword_100064A38;
  if (!qword_100064A38)
  {
    sub_100009240(&qword_100064A40, qword_10004DED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A38);
  }

  return result;
}